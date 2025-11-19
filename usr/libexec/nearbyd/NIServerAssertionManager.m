@interface NIServerAssertionManager
- (NIServerAssertionManager)initWithClientPid:(int)a3 signingIdentity:(id)a4 sessionIdentifier:(id)a5;
- (void)acquireClientMessageHandlingRuntimeAssertion;
- (void)acquireMemoryAssertion;
- (void)acquirePowerAssertion;
- (void)invalidate;
- (void)releaseMemoryAssertion;
- (void)releasePowerAssertion;
@end

@implementation NIServerAssertionManager

- (NIServerAssertionManager)initWithClientPid:(int)a3 signingIdentity:(id)a4 sessionIdentifier:(id)a5
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"NIServerAssertionManager.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"signingIdentity"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"NIServerAssertionManager.mm" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = NIServerAssertionManager;
  v13 = [(NIServerAssertionManager *)&v21 init];
  v14 = v13;
  if (v13)
  {
    runningBoardAssertion_HandleMessage = v13->_runningBoardAssertion_HandleMessage;
    v13->_runningBoardAssertion_HandleMessage = 0;

    osTransaction = v14->_osTransaction;
    v14->_lastRunningBoardAssertionTime_HandleMessage = 0.0;
    v14->_osTransaction = 0;

    v14->_powerAssertion = 0;
    v14->_clientPid = a3;
    objc_storeStrong(&v14->_clientSigningIdentity, a4);
    objc_storeStrong(&v14->_sessionIdentifier, a5);
    v17 = v14;
  }

  return v14;
}

- (void)invalidate
{
  [(RBSAssertion *)self->_runningBoardAssertion_HandleMessage invalidate];
  runningBoardAssertion_HandleMessage = self->_runningBoardAssertion_HandleMessage;
  self->_runningBoardAssertion_HandleMessage = 0;

  [(NIServerAssertionManager *)self releasePowerAssertion];

  [(NIServerAssertionManager *)self releaseMemoryAssertion];
}

- (void)acquireClientMessageHandlingRuntimeAssertion
{
  v3 = [NSString stringWithFormat:@"NI assertion - send message to client (signing identity: %@, pid: %d, session identifier: %@)", self->_clientSigningIdentity, self->_clientPid, self->_sessionIdentifier];
  v4 = [RBSDomainAttribute attributeWithDomain:@"com.apple.NearbyInteraction" name:@"HandleMessage"];
  v25 = v4;
  v5 = [NSArray arrayWithObjects:&v25 count:1];

  v6 = sub_100005288();
  if (v6 >= self->_lastRunningBoardAssertionTime_HandleMessage + 1.0)
  {
    [(RBSAssertion *)self->_runningBoardAssertion_HandleMessage invalidate];
    runningBoardAssertion_HandleMessage = self->_runningBoardAssertion_HandleMessage;
    self->_runningBoardAssertion_HandleMessage = 0;

    v10 = [RBSAssertion alloc];
    v11 = [RBSTarget targetWithPid:self->_clientPid];
    v12 = [v10 initWithExplanation:v3 target:v11 attributes:v5];
    v13 = self->_runningBoardAssertion_HandleMessage;
    self->_runningBoardAssertion_HandleMessage = v12;

    v14 = self->_runningBoardAssertion_HandleMessage;
    v18 = 0;
    v15 = [(RBSAssertion *)v14 acquireWithError:&v18];
    v16 = v18;
    v17 = qword_1009F9820;
    if (v15)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v3;
        v21 = 2048;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#ni-assertion,Acquired %@ at time %.3f", buf, 0x16u);
      }

      self->_lastRunningBoardAssertionTime_HandleMessage = v6;
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A9970(v3, v16, v17);
    }
  }

  else
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      lastRunningBoardAssertionTime_HandleMessage = self->_lastRunningBoardAssertionTime_HandleMessage;
      *buf = 138412802;
      v20 = v3;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = lastRunningBoardAssertionTime_HandleMessage;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#ni-assertion,Skip acquiring %@. Time now %.3f [s] too close to time of last assertion %.3f [s]", buf, 0x20u);
    }
  }
}

- (void)acquirePowerAssertion
{
  p_powerAssertion = &self->_powerAssertion;
  if (!self->_powerAssertion)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      clientPid = self->_clientPid;
      clientSigningIdentity = self->_clientSigningIdentity;
      sessionIdentifier = self->_sessionIdentifier;
      v10 = 138412802;
      v11 = clientSigningIdentity;
      v12 = 1024;
      v13 = clientPid;
      v14 = 2112;
      v15 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ni-assertion,Acquire power assertion (signing identity: %@, pid: %d, session identifier: %@)", &v10, 0x1Cu);
    }

    v8 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.nearbyd.ni-assertion", p_powerAssertion);
    if (v8 || !*p_powerAssertion)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A99F8(v8, v9);
      }

      *p_powerAssertion = 0;
    }
  }
}

- (void)releasePowerAssertion
{
  if (self->_powerAssertion)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      clientPid = self->_clientPid;
      clientSigningIdentity = self->_clientSigningIdentity;
      sessionIdentifier = self->_sessionIdentifier;
      v10 = 138412802;
      v11 = clientSigningIdentity;
      v12 = 1024;
      v13 = clientPid;
      v14 = 2112;
      v15 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-assertion,Release power assertion (signing identity: %@, pid: %d, session identifier: %@)", &v10, 0x1Cu);
    }

    v7 = IOPMAssertionRelease(self->_powerAssertion);
    self->_powerAssertion = 0;
    if (v7)
    {
      v8 = v7;
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A9A70(v8, v9);
      }
    }
  }
}

- (void)acquireMemoryAssertion
{
  if (!self->_osTransaction)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      clientPid = self->_clientPid;
      clientSigningIdentity = self->_clientSigningIdentity;
      sessionIdentifier = self->_sessionIdentifier;
      v9 = 138412802;
      v10 = clientSigningIdentity;
      v11 = 1024;
      v12 = clientPid;
      v13 = 2112;
      v14 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-assertion,Acquire OS transaction (signing identity: %@, pid: %d, session identifier: %@)", &v9, 0x1Cu);
    }

    v7 = os_transaction_create();
    osTransaction = self->_osTransaction;
    self->_osTransaction = v7;
  }
}

- (void)releaseMemoryAssertion
{
  if (self->_osTransaction)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      clientPid = self->_clientPid;
      clientSigningIdentity = self->_clientSigningIdentity;
      sessionIdentifier = self->_sessionIdentifier;
      v8 = 138412802;
      v9 = clientSigningIdentity;
      v10 = 1024;
      v11 = clientPid;
      v12 = 2112;
      v13 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-assertion,Release OS transaction (signing identity: %@, pid: %d, session identifier: %@)", &v8, 0x1Cu);
    }

    osTransaction = self->_osTransaction;
    self->_osTransaction = 0;
  }
}

@end
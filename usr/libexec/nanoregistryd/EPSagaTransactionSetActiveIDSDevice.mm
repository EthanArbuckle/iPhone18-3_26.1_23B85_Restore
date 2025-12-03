@interface EPSagaTransactionSetActiveIDSDevice
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)cancelWithError:(id)error;
- (void)checkIfIDSSwitched;
- (void)idsTimerTimedOut;
- (void)rollback;
- (void)switchTo:(id)to completion:(id)completion;
- (void)transactionDidComplete;
@end

@implementation EPSagaTransactionSetActiveIDSDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v9 = [entryCopy objectForKeyedSubscript:@"idsDeviceIdentifier"];
  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  self->_idsDeviceIdentifier = v9;

  objc_storeStrong(&self->_routingSlipEntry, entry);
  objc_storeStrong(&self->_serviceRegistry, registry);
  v11 = [entryCopy objectForKeyedSubscript:@"shouldWaitForConnectivity"];
  v12 = v11;
  if (self->_idsDeviceIdentifier)
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  self->_waitForConnectivity = bOOLValue;
  v14 = [registryCopy serviceFromClass:objc_opt_class()];
  defaultPairedDevice = [v14 defaultPairedDevice];
  nsuuid = [defaultPairedDevice nsuuid];

  if (nsuuid)
  {
    v17 = [EPSagaOperandUUID alloc];
    defaultPairedDevice2 = [v14 defaultPairedDevice];
    nsuuid2 = [defaultPairedDevice2 nsuuid];
    v20 = [(EPSagaOperandUUID *)v17 initWithUUID:nsuuid2];

    operands = [entryCopy operands];
    [operands setObject:v20 forKeyedSubscript:@"coreBluetoothSwitchBackID"];
  }

  if (self->_waitForConnectivity)
  {
    queue = [entryCopy queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100052F44;
    v27[3] = &unk_100175660;
    v27[4] = self;
    v23 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.ep.idsswitchtimeout" delay:1 gracePeriod:queue waking:v27 handlerQueue:15.0 handlerBlock:0.0];
    idsTimer = self->_idsTimer;
    self->_idsTimer = v23;

    [v14 addConnectivityObserver:self];
  }

  if (self->_idsDeviceIdentifier)
  {
    [(EPSagaTransactionSetActiveIDSDevice *)self checkIfIDSSwitched];
  }

  if (!self->_success)
  {
    v25 = self->_idsDeviceIdentifier;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100052F4C;
    v26[3] = &unk_100175A10;
    v26[4] = self;
    [(EPSagaTransactionSetActiveIDSDevice *)self switchTo:v25 completion:v26];
  }
}

- (void)switchTo:(id)to completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053098;
  v8[3] = &unk_100175FA0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

- (void)idsTimerTimedOut
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(EPRoutingSlipEntry *)self->_routingSlipEntry shortDescription];
      *buf = 138412290;
      v14 = shortDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ idsTimerTimedOut", buf, 0xCu);
    }
  }

  idsTimer = self->_idsTimer;
  self->_idsTimer = 0;

  errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
  v11 = NSLocalizedDescriptionKey;
  v12 = @"IDS IDSLocalPairingSetActiveIDSDevice pairing timed out";
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionSetActiveIDSDevice" code:1 userInfo:v9];
  [errors addObject:v10];

  [(EPSagaTransactionSetActiveIDSDevice *)self transactionDidComplete];
}

- (void)cancelWithError:(id)error
{
  if (error)
  {
    routingSlipEntry = self->_routingSlipEntry;
    errorCopy = error;
    errors = [(EPRoutingSlipEntry *)routingSlipEntry errors];
    [errors addObject:errorCopy];
  }

  [(EPSagaTransactionSetActiveIDSDevice *)self transactionDidComplete];
}

- (void)checkIfIDSSwitched
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v7 = v3;
  defaultPairedDevice = [v3 defaultPairedDevice];
  nsuuid = [defaultPairedDevice nsuuid];
  LODWORD(idsDeviceIdentifier) = [(NSUUID *)idsDeviceIdentifier isEqual:nsuuid];

  if (idsDeviceIdentifier)
  {
    self->_success = 1;
    [(EPSagaTransactionSetActiveIDSDevice *)self transactionDidComplete];
  }
}

- (void)transactionDidComplete
{
  if (self->_waitForConnectivity)
  {
    [(AbstractTimer *)self->_idsTimer invalidate];
    idsTimer = self->_idsTimer;
    self->_idsTimer = 0;

    v4 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v4 removeConnectivityObserver:self];
  }

  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    delegate = [(EPSagaTransactionSetActiveIDSDevice *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"shouldRollBack"];
  if ([v8 BOOLValue])
  {
    v9 = [entryCopy objectForKeyedSubscript:@"coreBluetoothSwitchBackID"];
    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    self->_idsDeviceIdentifier = v9;

    objc_storeStrong(&self->_routingSlipEntry, entry);
    objc_storeStrong(&self->_serviceRegistry, registry);
    self->_success = 0;
    self->_transactionComplete = 0;
    [(EPSagaTransactionSetActiveIDSDevice *)self rollback];
  }

  else
  {
    delegate = [(EPSagaTransactionSetActiveIDSDevice *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)rollback
{
  if (self->_idsDeviceIdentifier && self->_waitForConnectivity)
  {
    [(AbstractTimer *)self->_idsTimer invalidate];
    queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100053DC8;
    v8[3] = &unk_100175660;
    v8[4] = self;
    v4 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.ep.idsswitchtimeout" delay:1 gracePeriod:queue waking:v8 handlerQueue:15.0 handlerBlock:0.0];
    idsTimer = self->_idsTimer;
    self->_idsTimer = v4;
  }

  [(EPSagaTransactionSetActiveIDSDevice *)self checkIfIDSSwitched];
  if (self->_success)
  {
    [(EPSagaTransactionSetActiveIDSDevice *)self transactionDidComplete];
  }

  else
  {
    v6 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"coreBluetoothSwitchBackID"];
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100053DD0;
      v7[3] = &unk_100175A10;
      v7[4] = self;
      [(EPSagaTransactionSetActiveIDSDevice *)self switchTo:v6 completion:v7];
    }

    else
    {
      [(EPSagaTransactionSetActiveIDSDevice *)self transactionDidComplete];
    }
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
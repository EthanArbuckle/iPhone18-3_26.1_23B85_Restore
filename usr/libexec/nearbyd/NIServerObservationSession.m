@interface NIServerObservationSession
- (BOOL)validateClientPermissions;
- (NIServerObservationSession)initWithClientInfo:(const NIServerClientInfo *)a3 connection:(id)a4;
- (id)signingIdentity;
- (int)pid;
- (void)activate:(id)a3;
- (void)dealloc;
- (void)didDiscoverNearbyObject:(id)a3;
- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4;
- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4;
- (void)didUpdateMotionState:(int64_t)a3;
- (void)didUpdateNearbyObjects:(id)a3;
- (void)invalidate;
- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5;
- (void)pause:(id)a3;
- (void)runWithConfiguration:(id)a3 reply:(id)a4;
- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4;
@end

@implementation NIServerObservationSession

- (NIServerObservationSession)initWithClientInfo:(const NIServerClientInfo *)a3 connection:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NIServerObservationSession.mm" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v15.receiver = self;
  v15.super_class = NIServerObservationSession;
  v7 = [(NIServerObservationSession *)&v15 init];
  v8 = v7;
  if (v7)
  {
    atomic_store(0, &v7->_shouldDeliverUpdates);
    atomic_store(0, &v7->_activated);
    atomic_store(0, &v7->_runOnce);
    v9 = [NIServerClient delegateProxyWithConnection:v6];
    remote = v8->_remote;
    v8->_remote = v9;

    operator new();
  }

  if ([0 validateClientPermissions])
  {
    v11 = 0;
  }

  else
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A9CA0(v12);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)validateClientPermissions
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"NIObservationSessionPrototyping"];

    if (v4)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v6 = "#obsrvr, Observation session prototyping enabled";
        v7 = &v24;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  v8 = [(PRAppStateMonitor *)self->_appStateMonitor isDaemon];
  v9 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v10 = [v9 isEqualToString:@"com.apple.locationd"];

  v11 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v12 = [v11 isEqualToString:@"com.apple.intelligentroutingd"];

  v13 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v14 = [v13 isEqualToString:@"com.apple.milod"];

  v15 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
  v16 = [v15 isEqualToString:@"proxtool"];

  v17 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
  v18 = [v17 isEqualToString:@"Hello UWB"];

  v19 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v20 = [v19 isEqualToString:@"com.apple.WirelessStress"];

  if (+[NIPlatformInfo isInternalBuild]&& ((v16 | v18 | v20) & 1) != 0)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v6 = "#obsrvr, Internal tool permitted to be an obervation client.";
      v7 = &v23;
      goto LABEL_9;
    }

LABEL_10:
    v21 = 1;
    return v21 & 1;
  }

  if (v10 & 1 | ((v8 & 1) == 0))
  {
    v21 = v8;
  }

  else
  {
    v21 = v12 | v14;
  }

  return v21 & 1;
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138478083;
    v9 = v4;
    v10 = 2113;
    v11 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#obsrvr, Invalidate: %{private}@ [%{private}@]", &v8, 0x16u);
  }

  v6 = +[NIServerHomeDeviceService sharedInstance];
  [v6 removeServiceClientWithIdentifier:self->_sessionIdentifier];

  atomic_store(0, &self->_shouldDeliverUpdates);
  remote = self->_remote;
  self->_remote = 0;
}

- (void)dealloc
{
  v3 = +[NIServerHomeDeviceService sharedInstance];
  [v3 removeServiceClientWithIdentifier:self->_sessionIdentifier];

  v4.receiver = self;
  v4.super_class = NIServerObservationSession;
  [(NIServerObservationSession *)&v4 dealloc];
}

- (int)pid
{
  ptr = self->_clientInfo.__ptr_;
  if (ptr)
  {
    return ptr->var1;
  }

  else
  {
    return 0;
  }
}

- (id)signingIdentity
{
  ptr = self->_clientInfo.__ptr_;
  if (ptr)
  {
    v4 = ptr->var0;
  }

  else
  {
    v4 = @"(null)";
  }

  return v4;
}

- (void)activate:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138478083;
    v9 = v6;
    v10 = 2113;
    v11 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#obsrvr, Activate: %{private}@ [%{private}@]", &v8, 0x16u);
  }

  v4[2](v4, &__NSDictionary0__struct, 0);
  atomic_store(1u, &self->_activated);
}

- (void)runWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138478339;
    v19 = v9;
    v20 = 2113;
    v21 = sessionIdentifier;
    v22 = 2113;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#obsrvr, Run: %{private}@ [%{private}@]. Config: %{private}@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[NIServerHomeDeviceService sharedInstance];
    v12 = self->_sessionIdentifier;
    v13 = [v6 copy];
    [v11 addServiceClient:self identifier:v12 configuration:v13];

    atomic_store(1u, &self->_shouldDeliverUpdates);
    atomic_store(1u, &self->_runOnce);
    v7[2](v7, 0);
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"This NIConfiguration subclass does not support observation.";
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v14];

    (v7)[2](v7, v15);
  }
}

- (void)pause:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138478083;
    v9 = v6;
    v10 = 2113;
    v11 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#obsrvr, Pause: %{private}@ [%{private}@]", &v8, 0x16u);
  }

  atomic_store(0, &self->_shouldDeliverUpdates);
  v4[2](v4, 0);
}

- (void)didDiscoverNearbyObject:(id)a3
{
  v5 = a3;
  v4 = atomic_load(&self->_shouldDeliverUpdates);
  if (v4)
  {
    [(NIServerClient *)self->_remote didDiscoverNearbyObject:v5];
  }
}

- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4
{
  v7 = a3;
  v6 = atomic_load(&self->_shouldDeliverUpdates);
  if (v6)
  {
    [(NIServerClient *)self->_remote didRemoveNearbyObjects:v7 withReason:a4];
  }
}

- (void)didUpdateNearbyObjects:(id)a3
{
  v5 = a3;
  v4 = atomic_load(&self->_shouldDeliverUpdates);
  if (v4)
  {
    [(NIServerClient *)self->_remote didUpdateNearbyObjects:v5];
  }
}

- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = atomic_load(&self->_shouldDeliverUpdates);
  if (v10)
  {
    [(NIServerClient *)self->_remote object:v11 didUpdateRegion:v8 previousRegion:v9];
  }
}

- (void)didUpdateMotionState:(int64_t)a3
{
  v3 = atomic_load(&self->_shouldDeliverUpdates);
  if (v3)
  {
    [(NIServerClient *)self->_remote didUpdateMotionState:a3];
  }
}

- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4
{
  v4 = atomic_load(&self->_activated);
  if (v4)
  {
    v5 = atomic_load(&self->_runOnce);
    if (v5)
    {
      [(NIServerClient *)self->_remote uwbSessionInterruptedWithReason:a3 timestamp:a4];
    }
  }
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4
{
  v4 = atomic_load(&self->_activated);
  if (v4)
  {
    v5 = atomic_load(&self->_runOnce);
    if (v5)
    {
      [(NIServerClient *)self->_remote uwbSessionInterruptionReasonEnded:a3 timestamp:a4];
    }
  }
}

- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = atomic_load(&self->_shouldDeliverUpdates);
  if (v7)
  {
    [(NIServerClient *)self->_remote didUpdateAlgorithmState:v8 forObject:v6];
  }
}

@end
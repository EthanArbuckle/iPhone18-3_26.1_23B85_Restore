@interface NIServerObservationSession
- (BOOL)validateClientPermissions;
- (NIServerObservationSession)initWithClientInfo:(const NIServerClientInfo *)info connection:(id)connection;
- (id)signingIdentity;
- (int)pid;
- (void)activate:(id)activate;
- (void)dealloc;
- (void)didDiscoverNearbyObject:(id)object;
- (void)didRemoveNearbyObjects:(id)objects withReason:(unint64_t)reason;
- (void)didUpdateAlgorithmState:(id)state forObject:(id)object;
- (void)didUpdateMotionState:(int64_t)state;
- (void)didUpdateNearbyObjects:(id)objects;
- (void)invalidate;
- (void)object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)pause:(id)pause;
- (void)runWithConfiguration:(id)configuration reply:(id)reply;
- (void)uwbSessionInterruptedWithReason:(int64_t)reason timestamp:(double)timestamp;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)ended timestamp:(double)timestamp;
@end

@implementation NIServerObservationSession

- (NIServerObservationSession)initWithClientInfo:(const NIServerClientInfo *)info connection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
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
    v9 = [NIServerClient delegateProxyWithConnection:connectionCopy];
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

  isDaemon = [(PRAppStateMonitor *)self->_appStateMonitor isDaemon];
  launchdJobLabel = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v10 = [launchdJobLabel isEqualToString:@"com.apple.locationd"];

  launchdJobLabel2 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v12 = [launchdJobLabel2 isEqualToString:@"com.apple.intelligentroutingd"];

  launchdJobLabel3 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v14 = [launchdJobLabel3 isEqualToString:@"com.apple.milod"];

  monitoredProcessName = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
  v16 = [monitoredProcessName isEqualToString:@"proxtool"];

  monitoredProcessName2 = [(PRAppStateMonitor *)self->_appStateMonitor monitoredProcessName];
  v18 = [monitoredProcessName2 isEqualToString:@"Hello UWB"];

  launchdJobLabel4 = [(PRAppStateMonitor *)self->_appStateMonitor launchdJobLabel];
  v20 = [launchdJobLabel4 isEqualToString:@"com.apple.WirelessStress"];

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

  if (v10 & 1 | ((isDaemon & 1) == 0))
  {
    v21 = isDaemon;
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
    signingIdentity = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138478083;
    v9 = signingIdentity;
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

- (void)activate:(id)activate
{
  activateCopy = activate;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138478083;
    v9 = signingIdentity;
    v10 = 2113;
    v11 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#obsrvr, Activate: %{private}@ [%{private}@]", &v8, 0x16u);
  }

  activateCopy[2](activateCopy, &__NSDictionary0__struct, 0);
  atomic_store(1u, &self->_activated);
}

- (void)runWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138478339;
    v19 = signingIdentity;
    v20 = 2113;
    v21 = sessionIdentifier;
    v22 = 2113;
    v23 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#obsrvr, Run: %{private}@ [%{private}@]. Config: %{private}@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[NIServerHomeDeviceService sharedInstance];
    v12 = self->_sessionIdentifier;
    v13 = [configurationCopy copy];
    [v11 addServiceClient:self identifier:v12 configuration:v13];

    atomic_store(1u, &self->_shouldDeliverUpdates);
    atomic_store(1u, &self->_runOnce);
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"This NIConfiguration subclass does not support observation.";
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v14];

    (replyCopy)[2](replyCopy, v15);
  }
}

- (void)pause:(id)pause
{
  pauseCopy = pause;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    signingIdentity = [(NIServerObservationSession *)self signingIdentity];
    sessionIdentifier = self->_sessionIdentifier;
    v8 = 138478083;
    v9 = signingIdentity;
    v10 = 2113;
    v11 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#obsrvr, Pause: %{private}@ [%{private}@]", &v8, 0x16u);
  }

  atomic_store(0, &self->_shouldDeliverUpdates);
  pauseCopy[2](pauseCopy, 0);
}

- (void)didDiscoverNearbyObject:(id)object
{
  objectCopy = object;
  v4 = atomic_load(&self->_shouldDeliverUpdates);
  if (v4)
  {
    [(NIServerClient *)self->_remote didDiscoverNearbyObject:objectCopy];
  }
}

- (void)didRemoveNearbyObjects:(id)objects withReason:(unint64_t)reason
{
  objectsCopy = objects;
  v6 = atomic_load(&self->_shouldDeliverUpdates);
  if (v6)
  {
    [(NIServerClient *)self->_remote didRemoveNearbyObjects:objectsCopy withReason:reason];
  }
}

- (void)didUpdateNearbyObjects:(id)objects
{
  objectsCopy = objects;
  v4 = atomic_load(&self->_shouldDeliverUpdates);
  if (v4)
  {
    [(NIServerClient *)self->_remote didUpdateNearbyObjects:objectsCopy];
  }
}

- (void)object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  v10 = atomic_load(&self->_shouldDeliverUpdates);
  if (v10)
  {
    [(NIServerClient *)self->_remote object:objectCopy didUpdateRegion:regionCopy previousRegion:previousRegionCopy];
  }
}

- (void)didUpdateMotionState:(int64_t)state
{
  v3 = atomic_load(&self->_shouldDeliverUpdates);
  if (v3)
  {
    [(NIServerClient *)self->_remote didUpdateMotionState:state];
  }
}

- (void)uwbSessionInterruptedWithReason:(int64_t)reason timestamp:(double)timestamp
{
  v4 = atomic_load(&self->_activated);
  if (v4)
  {
    v5 = atomic_load(&self->_runOnce);
    if (v5)
    {
      [(NIServerClient *)self->_remote uwbSessionInterruptedWithReason:reason timestamp:timestamp];
    }
  }
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)ended timestamp:(double)timestamp
{
  v4 = atomic_load(&self->_activated);
  if (v4)
  {
    v5 = atomic_load(&self->_runOnce);
    if (v5)
    {
      [(NIServerClient *)self->_remote uwbSessionInterruptionReasonEnded:ended timestamp:timestamp];
    }
  }
}

- (void)didUpdateAlgorithmState:(id)state forObject:(id)object
{
  stateCopy = state;
  objectCopy = object;
  v7 = atomic_load(&self->_shouldDeliverUpdates);
  if (v7)
  {
    [(NIServerClient *)self->_remote didUpdateAlgorithmState:stateCopy forObject:objectCopy];
  }
}

@end
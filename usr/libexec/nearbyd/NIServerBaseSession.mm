@interface NIServerBaseSession
- (NIServerBaseSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (NIServerDataResponse)processDCKMessage:(id)message;
- (NIServerNumberResponse)isRangingLimitExceeded;
- (NIServerSessionResourceManager)resourcesManager;
- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr;
- (duration<long)nominalCycleRate;
- (id)_processCarKeyEvent:(id)event;
- (id)_processFindingEvent:(id)event;
- (id)_processSystemEvent:(id)event;
- (id)_setDebugURSK:(id)k transactionIdentifier:(unsigned int)identifier;
- (id)addObject:(id)object;
- (id)configure;
- (id)deleteURSKs;
- (id)disableAllServices;
- (id)discoveryTokenFromIdentifier:(unint64_t)identifier;
- (id)getQueueForInputingData;
- (id)lastConfiguration;
- (id)objectFromIdentifier:(unint64_t)identifier;
- (id)pauseWithSource:(int64_t)source;
- (id)printableState;
- (id)removeObject:(id)object;
- (id)run;
- (optional<unsigned)identifierFromDiscoveryToken:(id)token;
- (void)invalidate;
- (void)peerInactivityPeriodExceeded:(id)exceeded;
- (void)prefetchAcwgUrsk:(unsigned int)ursk;
- (void)processAcwgM1Msg:(id)msg withSessionTriggerReason:(int64_t)reason;
- (void)processAcwgM3Msg:(id)msg;
- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)msg withResumeTriggerReason:(int64_t)reason;
- (void)processUpdatedLockState:(unsigned __int16)state;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status;
- (void)suspendAcwgRanging:(unsigned int)ranging withSuspendTriggerReason:(int64_t)reason;
@end

@implementation NIServerBaseSession

- (NIServerSessionResourceManager)resourcesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);

  return WeakRetained;
}

- (NIServerBaseSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = configurationCopy;
  if (managerCopy)
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NIServerBaseSession.mm" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

    if (error)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"NIServerBaseSession.mm" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (error)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"NIServerBaseSession.mm" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_4:
  v18.receiver = self;
  v18.super_class = NIServerBaseSession;
  v12 = [(NIServerBaseSession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_isVoucherSet = 0;
    objc_storeWeak(&v12->_resourcesManager, managerCopy);
  }

  return v13;
}

- (duration<long)nominalCycleRate
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v4) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v4, 2u);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v6 = 1024;
    v7 = 60;
    v8 = 2080;
    v9 = "[NIServerBaseSession nominalCycleRate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v4, 0x1Cu);
  }

  abort();
}

- (id)lastConfiguration
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v4) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v4, 2u);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v6 = 1024;
    v7 = 65;
    v8 = 2080;
    v9 = "[NIServerBaseSession lastConfiguration]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v4, 0x1Cu);
  }

  abort();
}

- (id)configure
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v4) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v4, 2u);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v6 = 1024;
    v7 = 70;
    v8 = 2080;
    v9 = "[NIServerBaseSession configure]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v4, 0x1Cu);
  }

  abort();
}

- (id)run
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v4) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v4, 2u);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v6 = 1024;
    v7 = 75;
    v8 = 2080;
    v9 = "[NIServerBaseSession run]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v4, 0x1Cu);
  }

  abort();
}

- (id)pauseWithSource:(int64_t)source
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v5) = 0;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v5, 2u);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v7 = 1024;
    v8 = 80;
    v9 = 2080;
    v10 = "[NIServerBaseSession pauseWithSource:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v5, 0x1Cu);
  }

  abort();
}

- (id)disableAllServices
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  btResource = [WeakRetained btResource];
  [btResource stopAndClearState];

  lifecycleSupervisor = [WeakRetained lifecycleSupervisor];
  [lifecycleSupervisor stoppedDiscoveringAllPeers];

  return 0;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serverSessionIdentifier = [WeakRetained serverSessionIdentifier];
    v10 = 138412290;
    v11 = serverSessionIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-base,Terminating NIServerBaseSession. Session identifier: %@", &v10, 0xCu);
  }

  disableAllServices = [(NIServerBaseSession *)self disableAllServices];
  if (disableAllServices)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      serverSessionIdentifier2 = [WeakRetained serverSessionIdentifier];
      sub_1004BCA8C(serverSessionIdentifier2, disableAllServices, &v10, v7);
    }
  }

  lifecycleSupervisor = [WeakRetained lifecycleSupervisor];
  [lifecycleSupervisor invalidateCalled];
}

- (id)addObject:(id)object
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (id)deleteURSKs
{
  v3 = NSLocalizedDescriptionKey;
  v4 = @"This function is not supported for this configuration.";
  v0 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v1 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:v0];

  return v1;
}

- (id)removeObject:(id)object
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (NIServerDataResponse)processDCKMessage:(id)message
{
  v3 = [NIServerBaseSession deleteURSKs]_0();
  v4 = 0;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- (NIServerNumberResponse)isRangingLimitExceeded
{
  v2 = [NIServerBaseSession deleteURSKs]_0();
  v3 = 0;
  result.var1 = v2;
  result.var0 = v3;
  return result;
}

- (id)_setDebugURSK:(id)k transactionIdentifier:(unsigned int)identifier
{
  v4 = [NIServerBaseSession deleteURSKs]_0();

  return v4;
}

- (id)_processCarKeyEvent:(id)event
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (id)_processFindingEvent:(id)event
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (id)_processSystemEvent:(id)event
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (void)processAcwgM1Msg:(id)msg withSessionTriggerReason:(int64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  remote = [WeakRetained remote];
  v6 = sub_1002FF95C(a2);
  [remote uwbSessionDidFailWithError:v6];
}

- (void)processAcwgM3Msg:(id)msg
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  remote = [WeakRetained remote];
  v5 = sub_1002FF95C(a2);
  [remote uwbSessionDidFailWithError:v5];
}

- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)msg withResumeTriggerReason:(int64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  remote = [WeakRetained remote];
  v6 = sub_1002FF95C(a2);
  [remote uwbSessionDidFailWithError:v6];
}

- (void)suspendAcwgRanging:(unsigned int)ranging withSuspendTriggerReason:(int64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  remote = [WeakRetained remote];
  v6 = sub_1002FF95C(a2);
  [remote uwbSessionDidFailWithError:v6];
}

- (void)prefetchAcwgUrsk:(unsigned int)ursk
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  remote = [WeakRetained remote];
  v5 = sub_1002FF95C(a2);
  [remote uwbSessionDidFailWithError:v5];
}

- (void)processUpdatedLockState:(unsigned __int16)state
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  remote = [WeakRetained remote];
  v5 = sub_1002FF95C(a2);
  [remote uwbSessionDidFailWithError:v5];
}

- (id)getQueueForInputingData
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v4) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v4, 2u);
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v6 = 1024;
    v7 = 281;
    v8 = 2080;
    v9 = "[NIServerBaseSession getQueueForInputingData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v4, 0x1Cu);
  }

  abort();
}

- (id)printableState
{
  v2 = objc_opt_new();

  return v2;
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status
{
  v3 = *&status.var0;
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  lifecycleSupervisor = [WeakRetained lifecycleSupervisor];
  v5 = HIDWORD(v3);

  if (v5 == 3)
  {
    [lifecycleSupervisor positioningSensorSessionStopped];
    v6 = lifecycleSupervisor;
  }

  else if (v5 == 5)
  {
    [lifecycleSupervisor positioningSensorSessionStarted];
    v6 = lifecycleSupervisor;
  }

  else
  {
    v6 = lifecycleSupervisor;
    if (v5 == 6)
    {
      [lifecycleSupervisor stoppedDiscoveringAllPeers];
      v6 = lifecycleSupervisor;
    }
  }
}

- (id)discoveryTokenFromIdentifier:(unint64_t)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  btResource = [WeakRetained btResource];
  deviceCache = [btResource deviceCache];
  v7 = [deviceCache deviceForIdentifier:identifier];

  if (v7)
  {
    v8 = [NIDiscoveryToken alloc];
    discoveryTokenData = [v7 discoveryTokenData];
    v10 = [(NIDiscoveryToken *)v8 initWithBytes:discoveryTokenData];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCAF4();
    }

    v10 = 0;
  }

  return v10;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  btResource = [WeakRetained btResource];
  deviceCache = [btResource deviceCache];
  rawToken = [tokenCopy rawToken];
  v9 = [deviceCache deviceForTokenData:rawToken];

  if (v9)
  {
    u64Identifier = [v9 u64Identifier];
    v11 = u64Identifier & 0xFFFFFFFFFFFFFF00;
    v12 = u64Identifier;
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14.__val_ = v11 | v12;
  v15 = v13;
  result.__engaged_ = v15;
  result.var0 = v14;
  return result;
}

- (id)objectFromIdentifier:(unint64_t)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  btResource = [WeakRetained btResource];
  deviceCache = [btResource deviceCache];
  v7 = [deviceCache deviceForIdentifier:identifier];

  if (v7)
  {
    v8 = [NINearbyObject objectFromBluetoothDevice:v7];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCAF4();
    }

    v8 = 0;
  }

  return v8;
}

- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v9 = v2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  serverSessionIdentifier = [WeakRetained serverSessionIdentifier];

  if (!serverSessionIdentifier)
  {
    __assert_rtn("[NIServerBaseSession uniqueIdentifierForEngine:]", "NIServerBaseSession.mm", 367, "identifier != nil");
  }

  uUIDString = [serverSessionIdentifier UUIDString];
  sub_100004A08(retstr, [uUIDString UTF8String]);

  return result;
}

- (void)peerInactivityPeriodExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v6) = 0;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "#ses-base,Must be implemented in the subclass", &v6, 2u);
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerBaseSession.mm";
    v8 = 1024;
    v9 = 378;
    v10 = 2080;
    v11 = "[NIServerBaseSession peerInactivityPeriodExceeded:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ses-base,%s:%d: assertion failure in %s", &v6, 0x1Cu);
  }

  abort();
}

@end
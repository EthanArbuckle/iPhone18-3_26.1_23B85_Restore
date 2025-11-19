@interface NIServerBaseSession
- (NIServerBaseSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (NIServerDataResponse)processDCKMessage:(id)a3;
- (NIServerNumberResponse)isRangingLimitExceeded;
- (NIServerSessionResourceManager)resourcesManager;
- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr;
- (duration<long)nominalCycleRate;
- (id)_processCarKeyEvent:(id)a3;
- (id)_processFindingEvent:(id)a3;
- (id)_processSystemEvent:(id)a3;
- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4;
- (id)addObject:(id)a3;
- (id)configure;
- (id)deleteURSKs;
- (id)disableAllServices;
- (id)discoveryTokenFromIdentifier:(unint64_t)a3;
- (id)getQueueForInputingData;
- (id)lastConfiguration;
- (id)objectFromIdentifier:(unint64_t)a3;
- (id)pauseWithSource:(int64_t)a3;
- (id)printableState;
- (id)removeObject:(id)a3;
- (id)run;
- (optional<unsigned)identifierFromDiscoveryToken:(id)a3;
- (void)invalidate;
- (void)peerInactivityPeriodExceeded:(id)a3;
- (void)prefetchAcwgUrsk:(unsigned int)a3;
- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4;
- (void)processAcwgM3Msg:(id)a3;
- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4;
- (void)processUpdatedLockState:(unsigned __int16)a3;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)a3;
- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
@end

@implementation NIServerBaseSession

- (NIServerSessionResourceManager)resourcesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);

  return WeakRetained;
}

- (NIServerBaseSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NIServerBaseSession.mm" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

    if (a5)
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
  if (a5)
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
    objc_storeWeak(&v12->_resourcesManager, v9);
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

- (id)pauseWithSource:(int64_t)a3
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
  v3 = [WeakRetained btResource];
  [v3 stopAndClearState];

  v4 = [WeakRetained lifecycleSupervisor];
  [v4 stoppedDiscoveringAllPeers];

  return 0;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained serverSessionIdentifier];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-base,Terminating NIServerBaseSession. Session identifier: %@", &v10, 0xCu);
  }

  v6 = [(NIServerBaseSession *)self disableAllServices];
  if (v6)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [WeakRetained serverSessionIdentifier];
      sub_1004BCA8C(v8, v6, &v10, v7);
    }
  }

  v9 = [WeakRetained lifecycleSupervisor];
  [v9 invalidateCalled];
}

- (id)addObject:(id)a3
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

- (id)removeObject:(id)a3
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (NIServerDataResponse)processDCKMessage:(id)a3
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

- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4
{
  v4 = [NIServerBaseSession deleteURSKs]_0();

  return v4;
}

- (id)_processCarKeyEvent:(id)a3
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (id)_processFindingEvent:(id)a3
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (id)_processSystemEvent:(id)a3
{
  v3 = [NIServerBaseSession deleteURSKs]_0();

  return v3;
}

- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v5 = [WeakRetained remote];
  v6 = sub_1002FF95C(a2);
  [v5 uwbSessionDidFailWithError:v6];
}

- (void)processAcwgM3Msg:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v4 = [WeakRetained remote];
  v5 = sub_1002FF95C(a2);
  [v4 uwbSessionDidFailWithError:v5];
}

- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v5 = [WeakRetained remote];
  v6 = sub_1002FF95C(a2);
  [v5 uwbSessionDidFailWithError:v6];
}

- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v5 = [WeakRetained remote];
  v6 = sub_1002FF95C(a2);
  [v5 uwbSessionDidFailWithError:v6];
}

- (void)prefetchAcwgUrsk:(unsigned int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v4 = [WeakRetained remote];
  v5 = sub_1002FF95C(a2);
  [v4 uwbSessionDidFailWithError:v5];
}

- (void)processUpdatedLockState:(unsigned __int16)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v4 = [WeakRetained remote];
  v5 = sub_1002FF95C(a2);
  [v4 uwbSessionDidFailWithError:v5];
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

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)a3
{
  v3 = *&a3.var0;
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v7 = [WeakRetained lifecycleSupervisor];
  v5 = HIDWORD(v3);

  if (v5 == 3)
  {
    [v7 positioningSensorSessionStopped];
    v6 = v7;
  }

  else if (v5 == 5)
  {
    [v7 positioningSensorSessionStarted];
    v6 = v7;
  }

  else
  {
    v6 = v7;
    if (v5 == 6)
    {
      [v7 stoppedDiscoveringAllPeers];
      v6 = v7;
    }
  }
}

- (id)discoveryTokenFromIdentifier:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v5 = [WeakRetained btResource];
  v6 = [v5 deviceCache];
  v7 = [v6 deviceForIdentifier:a3];

  if (v7)
  {
    v8 = [NIDiscoveryToken alloc];
    v9 = [v7 discoveryTokenData];
    v10 = [(NIDiscoveryToken *)v8 initWithBytes:v9];
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

- (optional<unsigned)identifierFromDiscoveryToken:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v6 = [WeakRetained btResource];
  v7 = [v6 deviceCache];
  v8 = [v4 rawToken];
  v9 = [v7 deviceForTokenData:v8];

  if (v9)
  {
    v10 = [v9 u64Identifier];
    v11 = v10 & 0xFFFFFFFFFFFFFF00;
    v12 = v10;
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

- (id)objectFromIdentifier:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_resourcesManager);
  v5 = [WeakRetained btResource];
  v6 = [v5 deviceCache];
  v7 = [v6 deviceForIdentifier:a3];

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
  v6 = [WeakRetained serverSessionIdentifier];

  if (!v6)
  {
    __assert_rtn("[NIServerBaseSession uniqueIdentifierForEngine:]", "NIServerBaseSession.mm", 367, "identifier != nil");
  }

  v7 = [v6 UUIDString];
  sub_100004A08(retstr, [v7 UTF8String]);

  return result;
}

- (void)peerInactivityPeriodExceeded:(id)a3
{
  v3 = a3;
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
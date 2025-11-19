@interface NISession
+ (BOOL)_supportedPlatform:(id)a3;
+ (BOOL)isSupported;
+ (NIInternalDeviceCapability)internalDeviceCapabilities;
+ (NSArray)activelyInteractingDiscoveryTokens;
+ (NSArray)interactableDiscoveryTokens;
+ (id)_localDeviceLogger;
+ (id)deviceCapabilities;
+ (id)generateBluetoothDeviceTokenWithPublicAddress:(id)a3 IRK:(id)a4;
+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)a3;
+ (id)generateFindingDiscoveryToken;
+ (id)generateFindingDiscoveryTokenWithIdentityResolvingKey:(id)a3;
+ (id)generateFindingDiscoveryTokenWithSharedSecret:(id)a3;
+ (id)localDevicePrintableState;
+ (id)observerSession;
+ (id)setLocalDeviceDebugParameters:(id)a3;
+ (id)setLocalDeviceInteractableDiscoveryTokens:(id)a3;
+ (void)_queryAndCacheCapabilities;
+ (void)getAsyncActivelyInteractingDiscoveryTokens:(id)a3;
+ (void)getAsyncInteractableDiscoveryTokens:(id)a3;
+ (void)setAsyncLocalDeviceInteractableDiscoveryTokens:(id)a3 completion:(id)a4;
- (BOOL)_configurationSupportsRetry;
- (BOOL)_isInternalClient;
- (BOOL)_isValidARSession:(id)a3 andConfiguration:(id)a4;
- (BOOL)_shouldReConnectToDaemonAfterCrash;
- (BOOL)_shouldReRunSessionAfterSessionInterruptionEnded;
- (BOOL)_tryToRecoverFromFailure:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExtendedDistanceMeasurementAllowed;
- (BOOL)isPreciseRangingAllowed;
- (BOOL)isRangingLimitExceeded;
- (NIAcwgEventNotifier)acwgEventNotifier;
- (NICarKeyEventNotifier)carKeyEventNotifier;
- (NIConfiguration)configuration;
- (NIDevicePresenceNotifier)devicePresenceNotifier;
- (NIDiscoveryToken)discoveryToken;
- (NIFindingNotifier)findingNotifier;
- (NIInternalSessionDelegate)internalDelegate;
- (NISystemEventNotifier)systemEventNotifier;
- (NSString)description;
- (double)lightEstimateFromARLightEstimate:(id)a3;
- (id).cxx_construct;
- (id)_getSessionFailureError;
- (id)_initAndConnectToServerWithOptions:(unint64_t)a3;
- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4;
- (id)_setURSKTTL:(unint64_t)a3;
- (id)_verifyError:(id)a3;
- (id)delegate;
- (id)deleteURSKs;
- (int64_t)motionState;
- (int64_t)niVisionInputTrackingStateFromARTRackingState:(int64_t)a3;
- (simd_float4x4)worldTransformForObject:(NINearbyObject *)object;
- (void)_addObject:(id)a3;
- (void)_addRegionPredicate:(id)a3;
- (void)_configureAndRunInternalARSession;
- (void)_handleARSession:(id)a3 willRunWithConfiguration:(id)a4;
- (void)_handleARSessionDidChangeState:(unint64_t)a3;
- (void)_handleARSessionDidFailWithError:(id)a3;
- (void)_handleARSessionDidUpdateFrame:(id)a3;
- (void)_handleARSessionInterruptionEnded;
- (void)_handleARSessionWasInterrupted;
- (void)_handleActivationError:(id)a3;
- (void)_handleActivationSuccess:(id)a3;
- (void)_handlePauseSessionError:(id)a3;
- (void)_handlePauseSessionSuccess;
- (void)_handleRunSessionError:(id)a3;
- (void)_handleRunSessionSuccess;
- (void)_internalRunWithConfiguration:(id)a3;
- (void)_interruptSessionWithInternalReason:(int64_t)a3 cachedInterruption:(BOOL)a4 nearbydReSuspension:(BOOL)a5;
- (void)_invalidateInternal;
- (void)_invalidateInternalARSessionIfNeeded;
- (void)_invalidateSessionAndNotifyError:(id)a3;
- (void)_logDurationAndSubmit:(BOOL)a3;
- (void)_logTime;
- (void)_notifyDidInvalidateWithError:(id)a3;
- (void)_osLogNearbyObjectUpdate:(id)a3;
- (void)_pauseInternalARSessionIfNeeded;
- (void)_performBlockOnDelegateQueue:(id)a3 ifRespondsToSelector:(SEL)a4 evenIfNotRunning:(BOOL)a5;
- (void)_processUpdatedLockState:(unsigned __int16)a3;
- (void)_provideTruthTag:(id)a3;
- (void)_reinterruptSessionWithCachedInterruption;
- (void)_removeObject:(id)a3;
- (void)_removeRegionPredicate:(id)a3;
- (void)_sendRemoteDevice:(id)a3 changedState:(int64_t)a4;
- (void)_serverConnectionInterrupted;
- (void)_serverConnectionInvalidated;
- (void)_setARSessionInternal:(id)a3;
- (void)_submitErrorMetric:(id)a3;
- (void)dealloc;
- (void)didDiscoverNearbyObject:(id)a3;
- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4;
- (void)didPrefetchAcwgUrsk:(unsigned int)a3 error:(id)a4;
- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4;
- (void)didReceiveAopSFZoneUpdate:(id)a3;
- (void)didReceiveRangingAuthRecommendation:(BOOL)a3 forObject:(id)a4;
- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4;
- (void)didStartAcwgRanging:(int64_t)a3;
- (void)didSuspendAcwgRanging:(int64_t)a3;
- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4;
- (void)didUpdateDLTDOAMeasurements:(id)a3;
- (void)didUpdateHealthStatus:(int64_t)a3;
- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a3;
- (void)didUpdateLocalDiscoveryToken:(id)a3;
- (void)didUpdateMotionState:(int64_t)a3;
- (void)didUpdateNICoordinates:(id)a3;
- (void)didUpdateNearbyObjects:(id)a3;
- (void)didUpdateState:(int64_t)a3 forItem:(id)a4;
- (void)invalidate;
- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5;
- (void)pause;
- (void)prefetchAcwgUrsk:(unsigned int)a3;
- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4;
- (void)processAcwgM3Msg:(id)a3;
- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4;
- (void)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5;
- (void)processDCKMessage:(id)a3 responseCallback:(id)a4;
- (void)processVisionInput:(id)a3;
- (void)relayDCKMessage:(id)a3;
- (void)requestAcwgRangingSessionSuspend:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
- (void)runWithConfiguration:(NIConfiguration *)configuration;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4;
- (void)sessionWasInterrupted:(id)a3;
- (void)setARSession:(ARSession *)session;
- (void)setConfigurationForTesting:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)setDelegateQueue:(dispatch_queue_t)delegateQueue;
- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationTypeWithName:(id)a4;
- (void)systemDidUpdateState:(id)a3;
- (void)updateResponderDeviceIdentifier:(id)a3 completionHandler:(id)a4;
- (void)uwbSessionDidFailWithError:(id)a3;
- (void)uwbSessionDidInvalidateWithError:(id)a3;
- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4;
@end

@implementation NISession

+ (id)_localDeviceLogger
{
  if (qword_1009F4128 != -1)
  {
    sub_1004BA52C();
  }

  v3 = qword_1009F4120;

  return v3;
}

+ (void)setAsyncLocalDeviceInteractableDiscoveryTokens:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 copy];
  v8 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = [v7 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setAsyncLocalDeviceInteractableDiscoveryTokens:completion: with %d tokens", buf, 8u);
    }
  }

  v10 = [NIServerConnection createOneShotConnectionAndResume:1];
  v11 = [v10 remoteObjectProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002D6DE4;
  v15[3] = &unk_1009A36C0;
  v12 = v8;
  v16 = v12;
  v13 = v6;
  v18 = v13;
  v14 = v10;
  v17 = v14;
  [v11 setLocalDeviceInteractableDiscoveryTokens:v7 reply:v15];
}

+ (void)getAsyncInteractableDiscoveryTokens:(id)a3
{
  v3 = a3;
  v4 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getAsyncInteractableDiscoveryTokens:", buf, 2u);
  }

  v5 = [NIServerConnection createOneShotConnectionAndResume:1];
  v6 = [v5 remoteObjectProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D708C;
  v10[3] = &unk_1009A36E8;
  v7 = v4;
  v11 = v7;
  v8 = v3;
  v13 = v8;
  v9 = v5;
  v12 = v9;
  [v6 getInteractableDiscoveryTokens:v10];
}

+ (void)getAsyncActivelyInteractingDiscoveryTokens:(id)a3
{
  v3 = a3;
  v4 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getAsyncActivelyInteractingDiscoveryTokens:", buf, 2u);
  }

  v5 = [NIServerConnection createOneShotConnectionAndResume:1];
  v6 = [v5 remoteObjectProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D7374;
  v10[3] = &unk_1009A36E8;
  v7 = v4;
  v11 = v7;
  v8 = v3;
  v13 = v8;
  v9 = v5;
  v12 = v9;
  [v6 getActivelyInteractingDiscoveryTokens:v10];
}

+ (id)setLocalDeviceDebugParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 copy];
  v5 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setLocalDeviceDebugParameters:%@", &buf, 0xCu);
  }

  v6 = [NIServerConnection createOneShotConnectionAndResume:1];
  v7 = [v6 remoteObjectProxy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_1002D78C0;
  v31 = sub_1002D78D0;
  v32 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002D7D04;
  v16[3] = &unk_1009A3710;
  v18 = &v20;
  p_buf = &buf;
  v8 = dispatch_semaphore_create(0);
  v17 = v8;
  [v7 setLocalDeviceDebugParameters:v4 reply:v16];
  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  [v6 invalidate];
  if ((v21[3] & 1) == 0)
  {
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Server did not reply.";
    v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v11;
  }

  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(&buf + 1) + 40);
    *v24 = 138412290;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setLocalDeviceDebugParameters return error: %@", v24, 0xCu);
  }

  v14 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v20, 8);

  return v14;
}

+ (id)setLocalDeviceInteractableDiscoveryTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 copy];
  v5 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = [v4 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setLocalDeviceInteractableDiscoveryTokens with %d tokens", buf, 8u);
    }
  }

  v7 = [NIServerConnection createOneShotConnectionAndResume:1];
  v8 = [v7 remoteObjectProxy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = sub_1002D78C0;
  v33 = sub_1002D78D0;
  v34 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002D814C;
  v17[3] = &unk_1009A3710;
  v19 = &v21;
  v20 = buf;
  v9 = dispatch_semaphore_create(0);
  v18 = v9;
  [v8 setLocalDeviceInteractableDiscoveryTokens:v4 reply:v17];
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v9, v10);
  [v7 invalidate];
  if ((v22[3] & 1) == 0)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"Server did not reply.";
    v11 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v11];
    v13 = *(v30 + 5);
    *(v30 + 5) = v12;
  }

  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v30 + 5);
    *v25 = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setLocalDeviceInteractableDiscoveryTokens return error: %@", v25, 0xCu);
  }

  v15 = *(v30 + 5);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v21, 8);

  return v15;
}

+ (NSArray)interactableDiscoveryTokens
{
  v2 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "interactableDiscoveryTokens", buf, 2u);
  }

  v3 = [NIServerConnection createOneShotConnectionAndResume:1];
  v4 = [v3 remoteObjectProxy];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = sub_1002D78C0;
  v34 = sub_1002D78D0;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1002D78C0;
  v28 = sub_1002D78D0;
  v29 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1002D85D0;
  v19 = &unk_1009A3738;
  v21 = &v36;
  v22 = buf;
  v23 = &v24;
  v5 = dispatch_semaphore_create(0);
  v20 = v5;
  [v4 getInteractableDiscoveryTokens:&v16];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  [v3 invalidate];
  if ((v37[3] & 1) == 0)
  {
    v7 = *(v31 + 5);
    *(v31 + 5) = 0;

    v44 = NSLocalizedDescriptionKey;
    v45 = @"Server did not reply.";
    v8 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v8];
    v10 = v25[5];
    v25[5] = v9;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v11 = v2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(v31 + 5) count];
      v13 = v25[5];
      *v40 = 67109378;
      v41 = v12;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "interactableDiscoveryTokens return %d tokens. Server error: %@", v40, 0x12u);
    }
  }

  v14 = *(v31 + 5);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v36, 8);

  return v14;
}

+ (NSArray)activelyInteractingDiscoveryTokens
{
  v2 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "activelyInteractingDiscoveryTokens", buf, 2u);
  }

  v3 = [NIServerConnection createOneShotConnectionAndResume:1];
  v4 = [v3 remoteObjectProxy];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = sub_1002D78C0;
  v34 = sub_1002D78D0;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1002D78C0;
  v28 = sub_1002D78D0;
  v29 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1002D8A90;
  v19 = &unk_1009A3738;
  v21 = &v36;
  v22 = buf;
  v23 = &v24;
  v5 = dispatch_semaphore_create(0);
  v20 = v5;
  [v4 getActivelyInteractingDiscoveryTokens:&v16];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  [v3 invalidate];
  if ((v37[3] & 1) == 0)
  {
    v7 = *(v31 + 5);
    *(v31 + 5) = 0;

    v44 = NSLocalizedDescriptionKey;
    v45 = @"Server did not reply.";
    v8 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v8];
    v10 = v25[5];
    v25[5] = v9;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v11 = v2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(v31 + 5) count];
      v13 = v25[5];
      *v40 = 67109378;
      v41 = v12;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "activelyInteractingDiscoveryTokens return %d tokens. Server error: %@", v40, 0x12u);
    }
  }

  v14 = *(v31 + 5);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v36, 8);

  return v14;
}

+ (id)localDevicePrintableState
{
  v2 = +[NISession _localDeviceLogger];
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "localDevicePrintableState", buf, 2u);
  }

  v3 = [NIServerConnection createOneShotConnectionAndResume:1];
  v4 = [v3 remoteObjectProxy];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_1002D78C0;
  v32 = sub_1002D78D0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1002D78C0;
  v26 = sub_1002D78D0;
  v27 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1002D8F20;
  v17 = &unk_1009A3760;
  v19 = &v34;
  v20 = buf;
  v21 = &v22;
  v5 = dispatch_semaphore_create(0);
  v18 = v5;
  [v4 getLocalDevicePrintableState:&v14];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  [v3 invalidate];
  if ((v35[3] & 1) == 0)
  {
    v7 = *(v29 + 5);
    *(v29 + 5) = 0;

    v40 = NSLocalizedDescriptionKey;
    v41 = @"Server did not reply.";
    v8 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v8];
    v10 = v23[5];
    v23[5] = v9;
  }

  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v23[5];
    *v38 = 138412290;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "localDevicePrintableState error: %@", v38, 0xCu);
  }

  v12 = *(v29 + 5);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v34, 8);

  return v12;
}

- (int64_t)motionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003483E0;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_initAndConnectToServerWithOptions:(unint64_t)a3
{
  v34.receiver = self;
  v34.super_class = NISession;
  v4 = [(NISession *)&v34 init];
  v5 = v4;
  if (v4)
  {
    v4->_connectionOptions = a3;
    v6 = +[NSUUID UUID];
    internalID = v5->_internalID;
    v5->_internalID = v6;

    atomic_store(0, &v5->_readyForCallbacks);
    v5->_startTime = 0.0;
    v5->_duration = 0.0;
    v5->_updatedNearbyObjects = 0;
    v8 = os_log_create("com.apple.NearbyInteraction", "NISession");
    log = v5->_log;
    v5->_log = v8;

    v10 = objc_alloc_init(NISessionVisionContext);
    visionContext = v5->_visionContext;
    v5->_visionContext = v10;

    [(NISession *)v5 setInternalState:0];
    [(NISession *)v5 setInvalidationError:0];
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("com.apple.NearbyInteraction", v12);
    queue = v5->_queue;
    v5->_queue = v13;

    objc_storeStrong(&v5->_delegateQueue, &_dispatch_main_q);
    v15 = [[NIExportedObjectForwarder alloc] initWithExportedObject:v5];
    exportedObjectForwarder = v5->_exportedObjectForwarder;
    v5->_exportedObjectForwarder = v15;

    v17 = [[NIServerConnection alloc] initWithSessionID:v5->_internalID queue:v5->_queue exportedObject:v5->_exportedObjectForwarder options:a3];
    connection = v5->_connection;
    v5->_connection = v17;

    v19 = dispatch_semaphore_create(0);
    discoveryTokenSemaphore = v5->_discoveryTokenSemaphore;
    v5->_discoveryTokenSemaphore = v19;

    v5->_itemLocalizerDidPrewarmRanging = 0;
    objc_initWeak(&location, v5);
    v21 = v5->_connection;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1003487DC;
    v31[3] = &unk_10098AB18;
    objc_copyWeak(&v32, &location);
    [(NIServerConnection *)v21 setInterruptionHandler:v31];
    v22 = v5->_connection;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100348838;
    v29[3] = &unk_10098AB18;
    objc_copyWeak(&v30, &location);
    [(NIServerConnection *)v22 setInvalidationHandler:v29];
    [(NIServerConnection *)v5->_connection resume];
    if (+[NIPlatformInfo isInternalBuild])
    {
      v23 = v5->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v5->_internalID;
        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NISession init [%@]", buf, 0xCu);
      }
    }

    v25 = [(NISession *)v5 _remoteObject];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100348894;
    v27[3] = &unk_1009A66B0;
    v28 = v5;
    [v25 activate:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v5;
}

+ (BOOL)_supportedPlatform:(id)a3
{
  v3 = [a3 objectForKey:@"SupportedPlatform"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (void)_queryAndCacheCapabilities
{
  v2 = [NIServerConnection createOneShotConnectionAndResume:1];
  v3 = [v2 remoteObjectProxy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100348B08;
  v16 = sub_100348B18;
  v17 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100348B20;
  v9 = &unk_1009A66D8;
  v11 = &v12;
  v4 = dispatch_semaphore_create(0);
  v10 = v4;
  [v3 queryDeviceCapabilities:&v6];
  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v4, v5);
  [v2 invalidate];
  [NISession setCachedPlatformCapabilities:v13[5]];

  _Block_object_dispose(&v12, 8);
}

- (void)_osLogNearbyObjectUpdate:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  ++self->_objectUpdateLogging.totalUpdates;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100348E0C;
  v14[3] = &unk_1009A0418;
  v14[4] = self;
  [v4 enumerateObjectsUsingBlock:v14];
  if (self->_lastObjectUpdateLogTime)
  {
    [v5 timeIntervalSinceDate:?];
    v7 = v6;
    if (v6 < 5.0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0.0;
  }

  objc_storeStrong(&self->_lastObjectUpdateLogTime, v5);
  v8 = [[NSMutableString alloc] initWithFormat:@"DelegateProxy: nearbyObjectUpdates [last %0.1f s]. Updates %d, objects %d, w/dist %d, w/HA %d.", *&v7, self->_objectUpdateLogging.totalUpdates, self->_objectUpdateLogging.totalObjects, self->_objectUpdateLogging.objectsWithDistance, self->_objectUpdateLogging.objectsWithHorizontalAngle];
  v9 = v8;
  if (self->_objectUpdateLogging.objectsWithDistance >= 1)
  {
    [v8 appendFormat:@" Distance: first %0.2f m, last %0.2f m, min %0.2f m, max %0.2f m.", self->_objectUpdateLogging.firstDistance, self->_objectUpdateLogging.lastDistance, self->_objectUpdateLogging.minDistance, self->_objectUpdateLogging.maxDistance];
  }

  if (self->_objectUpdateLogging.objectsWithHorizontalAngle >= 1)
  {
    [v9 appendFormat:@" HA: first %0.1f deg, last %0.1f deg.", self->_objectUpdateLogging.firstHorizontalAngleRad * 57.2957795, self->_objectUpdateLogging.lastHorizontalAngleRad * 57.2957795];
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
    }
  }

  v11 = &NINearbyObjectDistanceNotAvailable;
  v12 = NINearbyObjectAngleNotAvailable;
  *&self->_objectUpdateLogging.totalUpdates = 0;
  *&self->_objectUpdateLogging.objectsWithDistance = 0;
  v13 = vld1q_dup_f32(v11);
  *&self->_objectUpdateLogging.firstDistance = v13;
  self->_objectUpdateLogging.firstHorizontalAngleRad = v12;
  self->_objectUpdateLogging.lastHorizontalAngleRad = v12;

LABEL_13:
}

- (void)_logTime
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    self->_duration = v4 - startTime + self->_duration;
    AnalyticsSendEventLazy();
  }

  self->_startTime = v4;
}

- (void)_logDurationAndSubmit:(BOOL)a3
{
  v3 = a3;
  if (self->_startTime != 0.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_duration = self->_duration + v5 - self->_startTime;
    self->_startTime = 0.0;
  }

  if (v3)
  {
    AnalyticsSendEventLazy();
  }
}

- (void)_submitErrorMetric:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userInfo];

    if (v5)
    {
      v6 = [v4 userInfo];
      v7 = [v6 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

      if (!v7)
      {
        v8 = [v4 userInfo];
        v7 = [v8 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        if (!v7)
        {
          v7 = &stru_1009B1428;
        }
      }
    }

    else
    {
      v7 = &stru_1009B1428;
    }

    v10 = v4;
    v11 = v7;
    v9 = v7;
    AnalyticsSendEventLazy();
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003495C0;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)setDelegateQueue:(dispatch_queue_t)delegateQueue
{
  v5 = delegateQueue;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:518 description:{@"Invalid parameter not satisfying: %@", @"delegateQueue"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100349784;
  block[3] = &unk_10098A2E8;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

+ (BOOL)isSupported
{
  if (+[NIPlatformInfo supportsUWB])
  {
    return 1;
  }

  v3 = +[NISession cachedPlatformCapabilities];

  if (!v3)
  {
    +[NISession _queryAndCacheCapabilities];
  }

  v4 = +[NISession cachedPlatformCapabilities];
  v2 = [NISession _supportedPlatform:v4];

  return v2;
}

+ (id)deviceCapabilities
{
  v2 = [[NIDeviceCapabilities alloc] initWithFineRangingSupport:+[NIPlatformInfo supportsUWB](NIPlatformInfo aoaSupport:"supportsUWB") extendedDistanceMeasurementSupport:+[NIPlatformInfo supportsAoA](NIPlatformInfo syntheticApertureSupport:"supportsAoA"), +[NIPlatformInfo supportsNBAMMS](NIPlatformInfo, "supportsNBAMMS"), +[NIPlatformInfo supportsSyntheticAperture]];

  return v2;
}

- (NIConfiguration)configuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100348B08;
  v10 = sub_100348B18;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100349A5C;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NIDiscoveryToken)discoveryToken
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100348B08;
  v18 = sub_100348B18;
  v19 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100349CCC;
  block[3] = &unk_10098A310;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(queue, block);
  v4 = v15[5];
  if (!v4)
  {
    v5 = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100349D18;
    v12[3] = &unk_10098BD28;
    v12[4] = self;
    dispatch_sync(v5, v12);
    discoveryTokenSemaphore = self->_discoveryTokenSemaphore;
    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(discoveryTokenSemaphore, v7);
    v8 = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100349D78;
    v11[3] = &unk_10098A310;
    v11[4] = self;
    v11[5] = &v14;
    dispatch_sync(v8, v11);
    if (!v15[5] && +[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2224();
    }

    v4 = v15[5];
  }

  v9 = v4;
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)_isInternalClient
{
  v2 = [(NISession *)self activationResponse];
  v3 = [v2 objectForKey:@"InternalClient"];

  v4 = 0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)runWithConfiguration:(NIConfiguration *)configuration
{
  v5 = configuration;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100349F74;
  block[3] = &unk_10098A2E8;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

- (void)pause
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034A738;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034AA40;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      *buf = 138412290;
      v7 = internalID;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Client: dealloc [%@]", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = NISession;
  [(NISession *)&v5 dealloc];
}

- (void)setARSession:(ARSession *)session
{
  v4 = session;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "setARSession", buf, 2u);
    }
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10034AD58;
  v8[3] = &unk_10098A2E8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(queue, v8);
}

- (void)_setARSessionInternal:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([v4 state] == 1)
  {
    v5 = [v4 configuration];
    [(NISession *)self _handleARSession:v4 willRunWithConfiguration:v5];
  }

  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NISessionVisionContext *)self->_visionContext arSession];
    if ([v7 state] == 2)
    {
      v8 = [v4 state];

      if (v8 != 2)
      {
        if (+[NIPlatformInfo isInternalBuild])
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "_setARSessionInternal: ARSession was interrupted, new ARSession created in uninterrupted state.", v11, 2u);
          }
        }

        [(NISession *)self _handleARSessionInterruptionEnded];
      }
    }

    else
    {
    }
  }

  [(NISessionVisionContext *)self->_visionContext setArSession:v4];
  v10 = [(NISessionVisionContext *)self->_visionContext arSession];
  [v10 _addObserver:self];
}

- (simd_float4x4)worldTransformForObject:(NINearbyObject *)object
{
  v4 = object;
  v18 = 0;
  v19 = &v18;
  v20 = 0x7012000000;
  v21 = sub_10034B000;
  v22 = nullsub_131;
  v23 = &unk_1009499EA;
  v24 = NINearbyObjectWorldTransformNotAvailable;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034B018;
  block[3] = &unk_10099ED58;
  block[4] = self;
  v16 = v4;
  v17 = &v18;
  v6 = v4;
  dispatch_sync(queue, block);
  v13 = v19[5];
  v14 = v19[6];
  v11 = v19[3];
  v12 = v19[4];

  _Block_object_dispose(&v18, 8);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  result.columns[3] = v10;
  result.columns[2] = v9;
  result.columns[1] = v8;
  result.columns[0] = v7;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(NSUUID *)self->_internalID isEqual:v4->_internalID];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100348B08;
  v21 = sub_100348B18;
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v22 = [v3 initWithFormat:@"<%@: %@", v5, self->_internalID];

  v6 = +[NISession deviceCapabilities];
  v7 = v18[5];
  if ([v6 supportsPreciseDistanceMeasurement])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v7 appendFormat:@", preciseDistance: %@", v8];
  v9 = v18[5];
  if ([v6 supportsDirectionMeasurement])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v9 appendFormat:@", direction: %@", v10];
  v11 = v18[5];
  if ([v6 supportsCameraAssistance])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v11 appendFormat:@", cameraAssistance: %@", v12];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034B3D8;
  block[3] = &unk_10098A310;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(queue, block);
  [v18[5] appendString:@">"];
  v14 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v14;
}

- (void)setConfigurationForTesting:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034B524;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_serverConnectionInvalidated
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NISession *)self internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v6 = log;
      v7 = sub_10034A49C(v3);
      v9 = 138412546;
      v10 = internalID;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Server connection invalidated [%@]. State: %@.", &v9, 0x16u);
    }
  }

  [(NISession *)self setInternalState:8];
  if (v3 != 7)
  {
    v8 = [(NISession *)self _getSessionFailureError];
    [(NISession *)self _notifyDidInvalidateWithError:v8];
  }

  dispatch_semaphore_signal(self->_discoveryTokenSemaphore);
}

- (void)_serverConnectionInterrupted
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v5 = sub_10034A49C([(NISession *)self internalState]);
      *buf = 138412546;
      v19 = internalID;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Server connection interrupted [%@]. State: %@.", buf, 0x16u);
    }
  }

  if ([(NISession *)self _shouldReConnectToDaemonAfterCrash])
  {
    objc_initWeak(buf, self);
    v6 = dispatch_time(0, 1000000 * qword_1009EC050);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10034B9B4;
    block[3] = &unk_10098AB18;
    objc_copyWeak(&v15, buf);
    dispatch_after(v6, queue, block);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    currentConfiguration = self->_currentConfiguration;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOWORD(v19) = 1026;
      *buf = 33558787;
      [NSData dataWithBytes:buf length:6];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10034BB9C;
      v12[3] = &unk_10098A2E8;
      v13 = v12[4] = self;
      v9 = v13;
      [(NISession *)self _performBlockOnDelegateQueue:v12 ifRespondsToSelector:"session:relayDCKMessage:"];
    }

    v16[0] = NSLocalizedFailureReasonErrorKey;
    v16[1] = NSLocalizedRecoverySuggestionErrorKey;
    v17[0] = @"The session token has been invalidated. This session cannot be restarted.";
    v17[1] = @"Create a new session and exchange token again.";
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v11 = sub_1002069FC(-5887, v10);

    [(NISession *)self _invalidateSessionAndNotifyError:v11];
  }
}

- (BOOL)_shouldReConnectToDaemonAfterCrash
{
  v3 = [(NISession *)self _configurationSupportsRetry];
  v4 = ([(NISession *)self internalState]== 3) & v3;
  if (v4)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Configuration supports nearbyd relaunch after crash", v7, 2u);
      }
    }
  }

  return v4;
}

- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109379;
      v14 = a4;
      v15 = 2113;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: removed objects with reason: %d. Objects: %{private}@", buf, 0x12u);
    }
  }

  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v9 = self->_currentConfiguration, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(NISession *)self _pauseInternalARSessionIfNeeded];
    [(NISession *)self setInternalState:5];
  }

  if (a4 == 1)
  {
    v10 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10034BFBC;
    v11[3] = &unk_10098A2E8;
    v11[4] = self;
    v11[5] = v6;
    [(NISession *)self _performBlockOnDelegateQueue:v11 ifRespondsToSelector:"session:didRemoveNearbyObjects:withReason:"];
    goto LABEL_11;
  }

  if (!a4)
  {
    v10 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10034BF50;
    v12[3] = &unk_10098A2E8;
    v12[4] = self;
    v12[5] = v6;
    [(NISession *)self _performBlockOnDelegateQueue:v12 ifRespondsToSelector:"session:didRemoveNearbyObjects:withReason:"];
LABEL_11:
  }

  AnalyticsSendEventLazy();
}

- (void)didUpdateNearbyObjects:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10034C380;
  v18 = &unk_10098A2E8;
  v19 = self;
  v5 = v4;
  v20 = v5;
  [(NISession *)self _performBlockOnDelegateQueue:&v15 ifRespondsToSelector:"session:didUpdateNearbyObjects:"];
  self->_updatedNearbyObjects = 1;
  [(NISession *)self _osLogNearbyObjectUpdate:v5, v15, v16, v17, v18, v19];
  v6 = [v5 firstObject];
  v7 = [v6 resetARSession];

  if (v7)
  {
    v8 = [(NISessionVisionContext *)self->_visionContext arSession];

    v9 = [(NISessionVisionContext *)self->_visionContext arSession];
    v10 = [v9 state];

    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v22 = v8 != 0;
        v23 = 1024;
        v24 = v10 == 1;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: reset ARSession (Exists: %d. Running: %d)", buf, 0xEu);
      }
    }

    if (v8 && v10 == 1)
    {
      v12 = [(NISessionVisionContext *)self->_visionContext arSession];
      v13 = [(NISessionVisionContext *)self->_visionContext arSession];
      v14 = [v13 configuration];
      [v12 runWithConfiguration:v14 options:15];
    }
  }
}

- (void)uwbSessionDidFailWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1004C2260();
  }

  if (![(NISession *)self _tryToRecoverFromFailure:v4])
  {
    [(NISession *)self _invalidateSessionAndNotifyError:v4];
  }
}

- (void)uwbSessionDidInvalidateWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1004C22D0();
  }

  [(NISession *)self _invalidateSessionAndNotifyError:v4];
}

- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_10034A49C([(NISession *)self internalState]);
      v9 = sub_10036B2EC(a3);
      *buf = 138478339;
      v28 = v8;
      v29 = 2113;
      v30 = v9;
      v31 = 2048;
      v32 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DelegateProxy: suspension reason started. State: %{private}@. Reason: %{private}@. Timestamp: %f", buf, 0x20u);
    }
  }

  begin = self->_interruptions.__begin_;
  p_interruptions = &self->_interruptions;
  if (begin == self->_interruptions.__end_)
  {
    v14 = 0;
    v13 = &stru_1009B1428;
  }

  else
  {
    v12 = *begin;
    v13 = sub_10036B2EC(*begin);
    v14 = v12 == a3;
  }

  end = self->_interruptions.__end_;
  cap = self->_interruptions.__cap_;
  if (end >= cap)
  {
    v18 = p_interruptions->__begin_;
    v19 = end - p_interruptions->__begin_;
    v20 = v19 >> 4;
    v21 = (v19 >> 4) + 1;
    if (v21 >> 60)
    {
      sub_100019B38();
    }

    v22 = cap - v18;
    if (v22 >> 3 > v21)
    {
      v21 = v22 >> 3;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_10004EF68(&self->_interruptions, v21);
    }

    v23 = 16 * v20;
    *v23 = a3;
    *(v23 + 8) = a4;
    v17 = (16 * v20 + 16);
    v24 = (v23 - 16 * (v19 >> 4));
    memcpy(v24, v18, v19);
    v25 = self->_interruptions.__begin_;
    self->_interruptions.__begin_ = v24;
    self->_interruptions.__end_ = v17;
    self->_interruptions.__cap_ = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *end = a3;
    *(end + 1) = a4;
    v17 = (end + 16);
  }

  self->_interruptions.__end_ = v17;
  v26 = v13;
  AnalyticsSendEventLazy();
  [(NISession *)self _interruptSessionWithInternalReason:a3 cachedInterruption:0 nearbydReSuspension:v14];
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_10034A49C([(NISession *)self internalState]);
      v9 = sub_10036B2EC(a3);
      *buf = 138478339;
      *&buf[4] = v8;
      *&buf[12] = 2113;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      v30 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DelegateProxy: suspension reason ended. State: %{private}@. Reason: %{private}@. Timestamp: %f", buf, 0x20u);
    }
  }

  memset(buf, 0, sizeof(buf));
  begin = self->_interruptions.__begin_;
  end = self->_interruptions.__end_;
  if (end == begin)
  {
    v13 = 0;
    v15 = 0;
    begin = self->_interruptions.__end_;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (*(begin + v12) == a3)
      {
        v15 = 1;
      }

      else
      {
        if (v13 >= *&buf[16])
        {
          v16 = &v13[-*buf] >> 4;
          if ((v16 + 1) >> 60)
          {
            sub_100019B38();
          }

          v17 = (*&buf[16] - *buf) >> 3;
          if (v17 <= v16 + 1)
          {
            v17 = v16 + 1;
          }

          if (*&buf[16] - *buf >= 0x7FFFFFFFFFFFFFF0uLL)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_10004EF68(buf, v18);
          }

          v19 = (16 * v16);
          *v19 = *(begin + v12);
          v13 = (16 * v16 + 16);
          v20 = v19 - (*&buf[8] - *buf);
          memcpy(v20, *buf, *&buf[8] - *buf);
          v21 = *buf;
          *buf = v20;
          *&buf[8] = v13;
          *&buf[16] = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v13 = *(begin + v12);
          v13 += 16;
        }

        *&buf[8] = v13;
        begin = self->_interruptions.__begin_;
        end = self->_interruptions.__end_;
      }

      ++v14;
      v12 += 16;
    }

    while (v14 < (end - begin) >> 4);
  }

  if (&self->_interruptions != buf)
  {
    sub_100357D3C(&self->_interruptions.__begin_, *buf, v13, &v13[-*buf] >> 4);
    begin = self->_interruptions.__begin_;
    end = self->_interruptions.__end_;
  }

  if (v15)
  {
    v26[5] = _NSConcreteStackBlock;
    v26[6] = 3221225472;
    v26[7] = sub_10034CDFC;
    v26[8] = &unk_10098AFF0;
    v26[9] = a3;
    *&v26[10] = a4;
    v26[11] = 0;
    AnalyticsSendEventLazy();
    if (begin == end)
    {
      [(NISession *)self setInternalState:5];
      if (+[NIPlatformInfo isInternalBuild])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          internalID = self->_internalID;
          *v27 = 138412290;
          v28 = internalID;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Delegate: notify suspension ended [%@]", v27, 0xCu);
        }
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10034CF00;
      v26[3] = &unk_10098BD28;
      v26[4] = self;
      [(NISession *)self _performBlockOnDelegateQueue:v26 ifRespondsToSelector:"sessionSuspensionEnded:"];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10034CF78;
    v24[3] = &unk_1009A33D8;
    v24[4] = self;
    v24[5] = sub_10034CF68(a3);
    v25 = begin == end;
    [(NISession *)self _performBlockOnDelegateQueue:v24 ifRespondsToSelector:"session:suspensionReasonEnded:isNoLongerSuspended:"];
    if (begin == end && [(NISession *)self _shouldReRunSessionAfterSessionInterruptionEnded])
    {
      [(NISession *)self _internalRunWithConfiguration:self->_currentConfiguration];
    }
  }

  else if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1004C2340();
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

- (void)didUpdateLocalDiscoveryToken:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: updated token %{private}@", buf, 0xCu);
    }
  }

  objc_storeStrong(&self->_discoveryToken, a3);
  dispatch_semaphore_signal(self->_discoveryTokenSemaphore);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034D13C;
  v7[3] = &unk_10098BD28;
  v7[4] = self;
  [(NISession *)self _performBlockOnDelegateQueue:v7 ifRespondsToSelector:"sessionDidUpdateDiscoveryToken:"];
}

- (void)didReceiveRangingAuthRecommendation:(BOOL)a3 forObject:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10034D280;
  v8[3] = &unk_10099BAD8;
  v8[4] = self;
  v10 = a3;
  v7 = v6;
  v9 = v7;
  [(NISession *)self _performBlockOnDelegateQueue:v8 ifRespondsToSelector:"session:didReceiveRangingAuthRecommendation:forObject:"];
}

- (void)didDiscoverNearbyObject:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: discovered object: %{private}@", buf, 0xCu);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034D44C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v7 ifRespondsToSelector:"session:didDiscoverNearbyObject:"];
}

- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v20 = v9;
      v21 = 2113;
      v22 = v10;
      v23 = 2113;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: updated region %{private}@ (previous: %{private}@). Object: %{private}@", buf, 0x20u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10034D698;
  v15[3] = &unk_10099C2A0;
  v15[4] = self;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [(NISession *)self _performBlockOnDelegateQueue:v15 ifRespondsToSelector:"session:object:didUpdateRegion:previousRegion:"];
}

- (void)didUpdateMotionState:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  self->_motionState = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10034D79C;
  v5[3] = &unk_10098A450;
  v5[4] = self;
  v5[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v5 ifRespondsToSelector:"session:didUpdateLocalMotionState:"];
}

- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10034D89C;
  v5[3] = &unk_1009A6778;
  v5[4] = self;
  v6 = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v5 ifRespondsToSelector:"session:didUpdateHomeDeviceUWBRangingAvailability:"];
}

- (void)relayDCKMessage:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10034D9C8;
  v4[3] = &unk_10098A2E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NISession *)v5 _performBlockOnDelegateQueue:v4 ifRespondsToSelector:"session:relayDCKMessage:"];
}

- (void)didUpdateHealthStatus:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10034DAA8;
  v3[3] = &unk_10098A450;
  v3[4] = self;
  v3[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v3 ifRespondsToSelector:"session:didUpdateHealthStatus:"];
}

- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034DC08;
  v7[3] = &unk_10099BB28;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NISession *)v8 _performBlockOnDelegateQueue:v7 ifRespondsToSelector:"session:didProcessAcwgM1MsgWithResponse:error:"];
}

- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034DD6C;
  v7[3] = &unk_10099BB28;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NISession *)v8 _performBlockOnDelegateQueue:v7 ifRespondsToSelector:"session:didProcessAcwgM3MsgWithResponse:error:"];
}

- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034DED0;
  v7[3] = &unk_10099BB28;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NISession *)v8 _performBlockOnDelegateQueue:v7 ifRespondsToSelector:"session:didProcessAcwgRangingSessionResumeRequestMsgWithResponse:error:"];
}

- (void)requestAcwgRangingSessionSuspend:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10034DFB8;
  v4[3] = &unk_10098A408;
  v5 = a3;
  v4[4] = self;
  v4[5] = a4;
  [(NISession *)self _performBlockOnDelegateQueue:v4 ifRespondsToSelector:"session:requestAcwgRangingSessionSuspend:withSuspendTriggerReason:"];
}

- (void)didStartAcwgRanging:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10034E09C;
  v3[3] = &unk_10098A450;
  v3[4] = self;
  v3[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v3 ifRespondsToSelector:"session:didStartAcwgRanging:"];
}

- (void)didSuspendAcwgRanging:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10034E17C;
  v3[3] = &unk_10098A450;
  v3[4] = self;
  v3[5] = a3;
  [(NISession *)self _performBlockOnDelegateQueue:v3 ifRespondsToSelector:"session:didSuspendAcwgRanging:"];
}

- (void)didPrefetchAcwgUrsk:(unsigned int)a3 error:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10034E2AC;
  v5[3] = &unk_1009A1A18;
  v8 = a3;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(NISession *)v6 _performBlockOnDelegateQueue:v5 ifRespondsToSelector:"session:didPrefetchAcwgUrsk:error:"];
}

- (void)didReceiveAopSFZoneUpdate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10034E3D8;
  v4[3] = &unk_10098A2E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NISession *)v5 _performBlockOnDelegateQueue:v4 ifRespondsToSelector:"session:didReceiveAopSFZoneUpdate:"];
}

- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v15 = v6;
      v16 = 2113;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: generated shareable config: %{private}@. Object: %{private}@", buf, 0x16u);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10034E5DC;
  v11[3] = &unk_10099BB28;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(NISession *)self _performBlockOnDelegateQueue:v11 ifRespondsToSelector:"session:didGenerateShareableConfigurationData:forObject:"];
}

- (void)systemDidUpdateState:(id)a3
{
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: system updated state: %{private}@", buf, 0xCu);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034E7A0;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(NISession *)self _performBlockOnDelegateQueue:v7 ifRespondsToSelector:"systemConfigurator:didUpdateState:"];
}

- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationTypeWithName:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67174915;
      v12 = v4;
      v13 = 2113;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: system updated resource usage limit exceeded: %{private}d. Configuration type: %{private}@", buf, 0x12u);
    }
  }

  v8 = NSClassFromString(v6);
  if (v8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10034E964;
    v9[3] = &unk_10099E558;
    v10 = v4;
    v9[4] = self;
    v9[5] = v8;
    [(NISession *)self _performBlockOnDelegateQueue:v9 ifRespondsToSelector:"systemConfigurator:didUpdateResourceUsageLimitExceeded:forSessionConfigurationType:"];
  }
}

- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 convergence];
  v9 = objc_opt_new();
  if ([v6 insufficientSignalStrength])
  {
    [v9 addObject:@"insufficientSignalStrength"];
  }

  if ([v6 insufficientHorizontalSweep])
  {
    [v9 addObject:@"insufficientHorizontalSweep"];
  }

  if ([v6 insufficientVerticalSweep])
  {
    [v9 addObject:@"insufficientVerticalSweep"];
  }

  if ([v6 insufficientMovement])
  {
    [v9 addObject:@"insufficientMovement"];
  }

  if ([v6 insufficientLighting])
  {
    [v9 addObject:@"insufficientLighting"];
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109635;
      v23 = v8;
      v24 = 2113;
      v25 = v7;
      v26 = 2113;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "DelegateProxy: algorithm convergence status: %d. Object: %{private}@. Reasons: %{private}@", buf, 0x1Cu);
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10034ECEC;
  v18[3] = &unk_1009A67A0;
  v18[4] = self;
  v21 = v8;
  v11 = v9;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  [(NISession *)self _performBlockOnDelegateQueue:v18 ifRespondsToSelector:"session:didUpdateAlgorithmConvergence:forObject:"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10034ED98;
  v15[3] = &unk_10099BB28;
  v15[4] = self;
  v13 = v6;
  v16 = v13;
  v14 = v12;
  v17 = v14;
  [(NISession *)self _performBlockOnDelegateQueue:v15 ifRespondsToSelector:"session:didUpdateAlgorithmState:forObject:"];
}

- (void)didUpdateState:(int64_t)a3 forItem:(id)a4
{
  v6 = a4;
  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#item-loc, didUpdateState:forItem: Configuration not of item localizer type", v17, 2u);
      }
    }

    goto LABEL_30;
  }

  switch(a3)
  {
    case 0:
LABEL_13:
      [(NISession *)self _sendRemoteDevice:v6 changedState:a3];
      break;
    case 2:
      a3 = 4;
      goto LABEL_13;
    case 1:
      v8 = [(NIConfiguration *)self->_currentConfiguration copy];
      if ([v8 preferredUpdateRate] == 3)
      {
        [(NISession *)self _sendRemoteDevice:v6 changedState:1];
        if (+[NIPlatformInfo isInternalBuild])
        {
          v9 = self->_log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#item-loc, Remote device findable", buf, 2u);
          }
        }
      }

      else
      {
        if ([v8 preferredUpdateRate] != 2)
        {
          if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1004C237C();
          }

          goto LABEL_29;
        }

        if (self->_itemLocalizerDidPrewarmRanging)
        {
          if (+[NIPlatformInfo isInternalBuild])
          {
            v11 = self->_log;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#item-loc, Remote device Reconnected", v14, 2u);
            }
          }

          v12 = 3;
        }

        else
        {
          if (+[NIPlatformInfo isInternalBuild])
          {
            v13 = self->_log;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v15 = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#item-loc, Remote device findable", v15, 2u);
            }
          }

          v12 = 1;
        }

        [(NISession *)self _sendRemoteDevice:v6 changedState:v12];
      }

      self->_itemLocalizerDidPrewarmRanging = 1;
LABEL_29:

      break;
  }

LABEL_30:
}

- (void)didUpdateNICoordinates:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10034F148;
  v6[3] = &unk_10098A2E8;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:"session:didUpdateNICoordinates:"];
}

- (void)didUpdateDLTDOAMeasurements:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10034F284;
  v6[3] = &unk_10098A2E8;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:"session:didUpdateDLTDOAMeasurements:"];
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10034F384;
  v8[3] = &unk_10098A2E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10034F428;
  v8[3] = &unk_10098A2E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)sessionWasInterrupted:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034F4A8;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sessionInterruptionEnded:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034F524;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10034F5A0;
  v5[3] = &unk_10098A450;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034F674;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:1664 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034F788;
  block[3] = &unk_1009A67C8;
  block[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_handleARSessionDidUpdateFrame:(id)a3
{
  v26 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 3)
  {
    [(NISessionVisionContext *)self->_visionContext setLatestARFrame:v26];
    v4 = [v26 camera];
    v5 = -[NISession niVisionInputTrackingStateFromARTRackingState:](self, "niVisionInputTrackingStateFromARTRackingState:", [v4 trackingState]);

    v6 = [v26 worldTrackingState];

    if (v6)
    {
      v7 = [v26 worldTrackingState];
      v6 = [v7 majorRelocalization];

      v8 = [v26 worldTrackingState];
      v9 = [v8 minorRelocalization];
    }

    else
    {
      v9 = 0;
    }

    v10 = [NIVisionInput alloc];
    [v26 timestamp];
    v12 = v11;
    v13 = [v26 camera];
    [v13 transform];
    v24 = v15;
    v25 = v14;
    v22 = v17;
    v23 = v16;
    v18 = [v26 lightEstimate];
    [(NISession *)self lightEstimateFromARLightEstimate:v18];
    v20 = [(NIVisionInput *)v10 initWithTimestamp:v5 devicePose:v6 trackingState:v9 lightEstimate:v12 majorRelocalization:v25 minorRelocalization:v24, v23, v22, v19];

    v21 = [(NISession *)self _remoteObject];
    [v21 processVisionInput:v20];
  }
}

- (void)_handleARSessionDidFailWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1004C23B8();
  }

  v5 = [(NISession *)self _remoteObject];
  [v5 arSessionDidFailWithError:v4];
}

- (void)_handleARSessionWasInterrupted
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "ARSession: interrupted", v5, 2u);
    }
  }

  v4 = [(NISession *)self _remoteObject];
  [v4 arSessionWasInterrupted];
}

- (void)_handleARSessionInterruptionEnded
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "ARSession: interruption ended", v5, 2u);
    }
  }

  v4 = [(NISession *)self _remoteObject];
  [v4 arSessionInterruptionEnded];
}

- (void)_handleARSessionDidChangeState:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "ARSession: changed state: %d", v6, 8u);
    }
  }

  [(NISessionVisionContext *)self->_visionContext setArSessionState:a3];
}

- (void)_handleARSession:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (![(NISession *)self _isValidARSession:v6 andConfiguration:v7])
  {
    if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2428();
    }

    v8 = [(NISession *)self _remoteObject];
    [v8 arSessionWillRunWithInvalidConfiguration];
  }
}

- (void)_configureAndRunInternalARSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NISessionVisionContext *)self->_visionContext arSession];

  v4 = [(NIConfiguration *)self->_currentConfiguration _internalIsCameraAssistanceInClientProcess];
  v5 = +[NIPlatformInfo isInternalBuild];
  if (!v3)
  {
    if (v4)
    {
      if (v5)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Created new internal ARSession in client process", buf, 2u);
        }
      }

      v9 = objc_alloc_init(ARSession);
      [(NISession *)self _setARSessionInternal:v9];

      queue = self->_queue;
      v11 = [(NISessionVisionContext *)self->_visionContext arSession];
      [v11 setDelegateQueue:queue];

      v7 = 1;
      [(NISessionVisionContext *)self->_visionContext setCameraAssistanceEnabled:1];
      [(NISessionVisionContext *)self->_visionContext setArSessionInternal:1];
    }

    else
    {
      if (v5)
      {
        v13 = self->_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Internal ARSession will be created in server process", buf, 2u);
        }
      }

      [(NISessionVisionContext *)self->_visionContext setCameraAssistanceEnabled:1];
      [(NISessionVisionContext *)self->_visionContext setArSessionInternal:1];
      v7 = 0;
    }

    goto LABEL_20;
  }

  if (v4)
  {
    if (v5)
    {
      v6 = self->_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using external ARSession", buf, 2u);
      }
    }

    v7 = 1;
LABEL_20:
    [(NISessionVisionContext *)self->_visionContext setArSessionInClientProcess:v7];
    if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal]&& [(NISessionVisionContext *)self->_visionContext isARSessionInClientProcess]&& ([(NISessionVisionContext *)self->_visionContext arSessionState]& 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        v14 = self->_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Run internal ARSession", buf, 2u);
        }
      }

      v15 = objc_alloc_init(ARWorldTrackingConfiguration);
      v16 = [(NISessionVisionContext *)self->_visionContext arSession];
      [v16 runWithConfiguration:v15 options:1];
    }

    return;
  }

  if (v5 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1004C2498();
  }

  v12 = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003500C0;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(v12, block);
}

- (BOOL)_isValidARSession:(id)a3 andConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!v6)
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_33;
    }

    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v14 = "_isValidARSession returning NO: session is nil";
    goto LABEL_32;
  }

  visionContext = self->_visionContext;
  if (!visionContext || ![(NISessionVisionContext *)visionContext isARSessionInClientProcess])
  {
    __assert_rtn("[NISession _isValidARSession:andConfiguration:]", "NISession.mm", 1798, "_visionContext && _visionContext.isARSessionInClientProcess");
  }

  if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal])
  {
    v9 = [(NISessionVisionContext *)self->_visionContext arSession];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100350690;
    v25[3] = &unk_1009A67F0;
    v25[4] = self;
    [(NISession *)self sessionShouldAttemptRelocalization:v9 completion:v25];

    goto LABEL_6;
  }

  v15 = [v6 delegate];
  if (!v15)
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_28;
    }

    v16 = self->_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "_isValidARSession returning NO: session.delegate is nil";
    goto LABEL_27;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [v15 sessionShouldAttemptRelocalization:v6])
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_28;
    }

    v16 = self->_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "_isValidARSession returning NO: attempting relocalization is not disabled";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
LABEL_28:

    goto LABEL_33;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v15 sessionShouldAttemptRelocalization:v6];
      v22 = "NO";
      if (v21)
      {
        v22 = "YES";
      }

      *buf = 136315138;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_isValidARSession got %s from sessionShouldAttemptRelocalization", buf, 0xCu);
    }
  }

LABEL_6:
  if (!v7)
  {
    if (!+[NIPlatformInfo isInternalBuild])
    {
      goto LABEL_33;
    }

    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v14 = "_isValidARSession returning NO: configuration is nil";
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    if ([v10 worldAlignment])
    {
      if (!+[NIPlatformInfo isInternalBuild])
      {
        goto LABEL_51;
      }

      v11 = self->_log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v12 = "_isValidARSession returning NO: world alignment is not gravity";
    }

    else
    {
      v23 = [v10 initialWorldMap];
      v24 = v23 == 0;

      if (v24)
      {
        if (![v10 isCollaborationEnabled])
        {
          v18 = 1;
          goto LABEL_52;
        }

        if (!+[NIPlatformInfo isInternalBuild]|| (v11 = self->_log, !os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_51:
          v18 = 0;
LABEL_52:

          goto LABEL_34;
        }

        *buf = 0;
        v12 = "_isValidARSession returning NO: collaboration is not disabled";
      }

      else
      {
        if (!+[NIPlatformInfo isInternalBuild])
        {
          goto LABEL_51;
        }

        v11 = self->_log;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        *buf = 0;
        v12 = "_isValidARSession returning NO: initial world map is non-nil";
      }
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    goto LABEL_51;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "_isValidARSession returning NO: configuration is not ARWorldTrackingConfiguration";
LABEL_32:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

LABEL_33:
  v18 = 0;
LABEL_34:

  return v18;
}

- (void)_pauseInternalARSessionIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal]&& [(NISessionVisionContext *)self->_visionContext isARSessionInClientProcess])
  {
    v3 = [(NISessionVisionContext *)self->_visionContext arSession];
    [v3 pause];
  }
}

- (void)_invalidateInternalARSessionIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISessionVisionContext *)self->_visionContext isARSessionInternal]&& [(NISessionVisionContext *)self->_visionContext isARSessionInClientProcess])
  {
    v3 = [(NISessionVisionContext *)self->_visionContext arSession];
    [v3 pause];

    v4 = [(NISessionVisionContext *)self->_visionContext arSession];
    [v4 _removeObserver:self];

    visionContext = self->_visionContext;
    self->_visionContext = 0;
  }
}

- (int64_t)niVisionInputTrackingStateFromARTRackingState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (double)lightEstimateFromARLightEstimate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 ambientIntensity];
    v6 = v5;
  }

  else
  {
    v6 = *&NIARLightEstimateNotAvailable;
  }

  return v6;
}

- (void)_invalidateSessionAndNotifyError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(NISession *)self _notifyDidInvalidateWithError:v4];
  [(NISession *)self _invalidateInternal];
}

- (void)_interruptSessionWithInternalReason:(int64_t)a3 cachedInterruption:(BOOL)a4 nearbydReSuspension:(BOOL)a5
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]!= 6 || v6)
  {
    [(NISession *)self setInternalState:6];
    if (a5)
    {
      return;
    }

    if (+[NIPlatformInfo isInternalBuild])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        internalID = self->_internalID;
        *buf = 138412290;
        v14 = internalID;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Delegate: notify suspension started [%@]", buf, 0xCu);
      }
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100350B1C;
    v12[3] = &unk_10098BD28;
    v12[4] = self;
    [(NISession *)self _performBlockOnDelegateQueue:v12 ifRespondsToSelector:"sessionWasSuspended:"];
    goto LABEL_10;
  }

  if (!a5)
  {
LABEL_10:
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100350B84;
    v11[3] = &unk_10098A450;
    v11[4] = self;
    v11[5] = sub_10034CF68(a3);
    [(NISession *)self _performBlockOnDelegateQueue:v11 ifRespondsToSelector:"session:suspendedWithReason:"];
  }
}

- (void)_reinterruptSessionWithCachedInterruption
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v6 = 138412290;
      v7 = internalID;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reinterrupting session [%@]", &v6, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  begin = self->_interruptions.__begin_;
  if (begin == self->_interruptions.__end_)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_1004C24D4();
      }
    }
  }

  else
  {
    [(NISession *)self _interruptSessionWithInternalReason:*begin cachedInterruption:1 nearbydReSuspension:0];
  }
}

- (void)_invalidateInternal
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NISession *)self internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v6 = log;
      v7 = sub_10034A49C(v3);
      v9 = 138412546;
      v10 = internalID;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invalidateInternal [%@]. State: %@.", &v9, 0x16u);
    }
  }

  if (v3 <= 6)
  {
    [(NISession *)self _logDurationAndSubmit:self->_updatedNearbyObjects];
    [(NISession *)self setInternalState:7];
    [(NIServerConnection *)self->_connection invalidate];
    currentConfiguration = self->_currentConfiguration;
    self->_currentConfiguration = 0;

    self->_itemLocalizerDidPrewarmRanging = 0;
    [(NISession *)self _invalidateInternalARSessionIfNeeded];
  }
}

- (void)_handleActivationError:(id)a3
{
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = sub_10034A49C([(NISession *)self internalState]);
      v8 = 138412802;
      v9 = internalID;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activation error [%@]. State: %@. Error: %@", &v8, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NISession *)self _invalidateSessionAndNotifyError:v4];
}

- (void)_handleActivationSuccess:(id)a3
{
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = sub_10034A49C([(NISession *)self internalState]);
      v8 = 138412802;
      v9 = internalID;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activation success [%@]. State: %@. Response: %@", &v8, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 6)
  {
    [(NISession *)self setInternalState:1];
    [(NISession *)self uwbSessionInterruptionReasonEnded:7 timestamp:sub_100005288()];
  }

  else if (![(NISession *)self internalState])
  {
    [(NISession *)self setInternalState:1];
  }

  if (!v4)
  {
    __assert_rtn("[NISession _handleActivationSuccess:]", "NISession.mm", 2015, "activationResponse != nil");
  }

  [(NISession *)self setActivationResponse:v4];
}

- (void)_handleRunSessionError:(id)a3
{
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = sub_10034A49C([(NISession *)self internalState]);
      v8 = 138412802;
      v9 = internalID;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Run session error [%@]. State: %@. Error: %@", &v8, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if (![(NISession *)self _tryToRecoverFromFailure:v4])
  {
    [(NISession *)self _invalidateSessionAndNotifyError:v4];
  }
}

- (void)_handleRunSessionSuccess
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v5 = sub_10034A49C([(NISession *)self internalState]);
      *buf = 138412546;
      v8 = internalID;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Run session succeeded [%@]. State: %@", buf, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 2)
  {
    [(NISession *)self setInternalState:3];
    if ([(NIConfiguration *)self->_currentConfiguration _internalIsCameraAssistanceEnabled])
    {
      [(NISession *)self _configureAndRunInternalARSession];
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003513FC;
    v6[3] = &unk_10098BD28;
    v6[4] = self;
    [(NISession *)self _performBlockOnDelegateQueue:v6 ifRespondsToSelector:"sessionDidStartRunning:"];
  }
}

- (void)_handlePauseSessionError:(id)a3
{
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v7 = sub_10034A49C([(NISession *)self internalState]);
      v8 = 138412802;
      v9 = internalID;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pause session error [%@]. State: %@. Error: %@", &v8, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NISession *)self _invalidateSessionAndNotifyError:v4];
}

- (void)_handlePauseSessionSuccess
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      internalID = self->_internalID;
      v5 = sub_10034A49C([(NISession *)self internalState]);
      v6 = 138412546;
      v7 = internalID;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pause session success [%@]. State: %@", &v6, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(NISession *)self internalState]== 4)
  {
    [(NISession *)self setInternalState:5];
    [(NISession *)self _logDurationAndSubmit:0];
  }
}

- (void)_performBlockOnDelegateQueue:(id)a3 ifRespondsToSelector:(SEL)a4 evenIfNotRunning:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  v10 = atomic_load(&self->_readyForCallbacks);
  if ((v10 & 1) != 0 || v5)
  {
    block = v8;
    if (a4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        goto LABEL_10;
      }

      delegateQueue = self->_delegateQueue;

      v9 = block;
      if (!delegateQueue)
      {
        goto LABEL_11;
      }

      v13 = self->_delegateQueue;
    }

    else
    {
      v13 = self->_delegateQueue;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    dispatch_async(v13, block);
LABEL_10:
    v9 = block;
  }

LABEL_11:
}

- (id)_verifyError:(id)a3
{
  v4 = a3;
  v5 = [v4 code];
  if (v5 + 5889 < 8)
  {
    v6 = [v4 code];
    v7 = [v4 userInfo];
    v8 = sub_1002069FC(v6, v7);
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  if (v5 + 10017 < 2)
  {
    v7 = [v4 userInfo];
    v8 = sub_1002069FC(-5887, v7);
    goto LABEL_5;
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [NSString stringWithFormat:@"Invalid error code blocked from being sent to NISessionDelegate.  Error: %@", v4];
      sub_1004C2510(v12, buf, v11);
    }
  }

  v9 = sub_1002069FC(-5887, 0);
LABEL_6:

  return v9;
}

- (void)_notifyDidInvalidateWithError:(id)a3
{
  v4 = a3;
  if ([(NISession *)self _isInternalClient])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(NISession *)self _verifyError:v4];
  }

  v6 = v5;
  if (+[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1004C2568();
  }

  [(NISession *)self setInvalidationError:v6];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100351A84;
  v11 = &unk_10098A2E8;
  v12 = self;
  v7 = v6;
  v13 = v7;
  [(NISession *)self _performBlockOnDelegateQueue:&v8 ifRespondsToSelector:"session:didInvalidateWithError:"];
  [(NISession *)self _submitErrorMetric:v4, v8, v9, v10, v11, v12];
}

- (id)_getSessionFailureError
{
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = @"This session object is invalidated. Dispose of it and create a new one instead.";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = sub_1002069FC(-5887, v2);

  return v3;
}

- (BOOL)_shouldReRunSessionAfterSessionInterruptionEnded
{
  v3 = [(NISession *)self _configurationSupportsRetry];
  if (+[NIPlatformInfo isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "_shouldReRunSessionAfterSessionInterruptionEnded %d", v6, 8u);
    }
  }

  return v3;
}

- (void)_internalRunWithConfiguration:(id)a3
{
  v4 = a3;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_10034A49C([(NISession *)self internalState]);
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling _internalRunWithConfiguration with Config: %@, internal state: %@", buf, 0x16u);
    }
  }

  [(NISession *)self setInternalState:2];
  v7 = [(NISession *)self _remoteObject];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100351E00;
  v8[3] = &unk_1009A6728;
  v8[4] = self;
  [v7 runWithConfiguration:v4 reply:v8];
}

- (void)_sendRemoteDevice:(id)a3 changedState:(int64_t)a4
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [NIDiscoveryToken generateTokenWithUUID:v9];
  if (!v7)
  {
    __assert_rtn("[NISession _sendRemoteDevice:changedState:]", "NISession.mm", 2162, "dicoveryTokenFromUUID != nil");
  }

  v8 = [[NINearbyObject alloc] initWithToken:v7];
  [(NINearbyObject *)v8 setItemState:a4];
  [v6 addObject:v8];
  [(NISession *)self didUpdateNearbyObjects:v6];
}

- (BOOL)_tryToRecoverFromFailure:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!-[NISession _configurationSupportsRetry](self, "_configurationSupportsRetry") || [v4 code] == -5889 || objc_msgSend(v4, "code") == -5888 || objc_msgSend(v4, "code") == 304 || objc_msgSend(v4, "code") == 300)
  {
    v5 = 0;
  }

  else
  {
    if ([(NISession *)self internalState]== 6)
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#item-loc, _tryToRecoverFromFailure: Waiting for interruption to end", buf, 2u);
        }
      }
    }

    else
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        v8 = self->_log;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#item-loc, _tryToRecoverFromFailure: UWB session not interrupted (xpc connection intact), trying to run session again", buf, 2u);
        }
      }

      v9 = qword_1009EC050;
      objc_initWeak(buf, self);
      v10 = dispatch_time(0, 1000000 * v9);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003521A8;
      block[3] = &unk_10098AB18;
      objc_copyWeak(&v13, buf);
      dispatch_after(v10, queue, block);
      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    v5 = 1;
  }

  return v5;
}

- (BOOL)_configurationSupportsRetry
{
  currentConfiguration = self->_currentConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v5 = self->_currentConfiguration;
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [(NIConfiguration *)self->_currentConfiguration discoveryTokenVariant]== 2;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NIInternalSessionDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  v2 = &NINearbyObjectDistanceNotAvailable;
  v3 = vld1q_dup_f32(v2);
  *(self + 216) = v3;
  v3.f32[0] = NINearbyObjectAngleNotAvailable;
  *(self + 58) = NINearbyObjectAngleNotAvailable;
  *(self + 59) = v3.i32[0];
  return self;
}

+ (NIInternalDeviceCapability)internalDeviceCapabilities
{
  v2 = +[NISession cachedPlatformCapabilities];

  if (!v2)
  {
    +[NISession _queryAndCacheCapabilities];
  }

  v3 = +[NISession cachedPlatformCapabilities];
  v4 = [v3 objectForKey:@"UWBSupportedPlatform"];
  v5 = [v4 BOOLValue];

  v6 = +[NISession cachedPlatformCapabilities];
  v7 = [v6 objectForKey:@"WifiSupportedPlatform"];
  v8 = [v7 BOOLValue];

  v9 = +[NISession cachedPlatformCapabilities];
  v10 = [v9 objectForKey:@"UWBSupportedPlatformPDOA"];
  v11 = [v10 BOOLValue];

  v12 = +[NISession cachedPlatformCapabilities];
  v13 = [v12 objectForKey:@"UWBSupportedPlatformSyntheticAperture"];
  v14 = [v13 BOOLValue];

  v15 = +[NISession cachedPlatformCapabilities];
  v16 = [v15 objectForKey:@"UWBSupportedPlatformExtendedDistance"];
  v17 = [v16 BOOLValue];

  v18 = [[NIDeviceCapabilities alloc] initWithFineRangingSupport:v5 coarseRangingSupport:v8 aoaSupport:v11 extendedDistanceMeasurementSupport:v17 syntheticApertureSupport:v14];

  return v18;
}

- (void)_addObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2343 description:{@"Invalid parameter not satisfying: %@", @"discoveryToken"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100352C6C;
  block[3] = &unk_10098A2E8;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

- (void)_removeObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2357 description:{@"Invalid parameter not satisfying: %@", @"discoveryToken"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100352F44;
  block[3] = &unk_10098A2E8;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

- (void)_addRegionPredicate:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2371 description:@"_addRegionPredicate is deprecated"];
}

- (void)_removeRegionPredicate:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2375 description:@"_removeRegionPredicate is deprecated"];
}

+ (id)observerSession
{
  v2 = [[NISession alloc] _initAndConnectToServerWithOptions:1];

  return v2;
}

- (BOOL)isPreciseRangingAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10035330C;
  v5[3] = &unk_1009A6840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isExtendedDistanceMeasurementAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003534D8;
  v5[3] = &unk_1009A6840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100353670;
  v6[3] = &unk_1009A6890;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_sync(queue, v6);
}

- (void)processDCKMessage:(id)a3 responseCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2543 description:{@"Invalid parameter not satisfying: %@", @"dckMessage"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = +[NSAssertionHandler currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2544 description:{@"Invalid parameter not satisfying: %@", @"responseCallback"}];

LABEL_3:
  if ([v7 length])
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100354984;
    block[3] = &unk_1009A69C8;
    block[4] = self;
    v18 = v7;
    v19 = v9;
    v11 = v9;
    dispatch_sync(queue, block);

    v12 = v18;
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100354880;
    v20[3] = &unk_10099CF08;
    v21 = v9;
    v14 = v9;
    dispatch_async(delegateQueue, v20);
    v12 = v21;
  }
}

- (id)deleteURSKs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100348B08;
  v10 = sub_100348B18;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100354C44;
  v5[3] = &unk_1009A6840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100348B08;
    v20 = sub_100348B18;
    v21 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100354ED0;
    block[3] = &unk_1009A69F0;
    block[4] = self;
    v15 = a4;
    v13 = v6;
    v14 = &v16;
    dispatch_sync(queue, block);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Given nil URSK.";
    v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19886 userInfo:v10];
  }

  return v9;
}

- (BOOL)isRangingLimitExceeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100355030;
  v5[3] = &unk_1009A6840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NICarKeyEventNotifier)carKeyEventNotifier
{
  carKeyEventNotifier = self->_carKeyEventNotifier;
  if (!carKeyEventNotifier)
  {
    v4 = [[NICarKeyEventNotifier alloc] initWithParentSession:self];
    v5 = self->_carKeyEventNotifier;
    self->_carKeyEventNotifier = v4;

    carKeyEventNotifier = self->_carKeyEventNotifier;
  }

  return carKeyEventNotifier;
}

- (id)_setURSKTTL:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100348B08;
  v11 = sub_100348B18;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003552A0;
  block[3] = &unk_1009A6A18;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NIAcwgEventNotifier)acwgEventNotifier
{
  acwgEventNotifier = self->_acwgEventNotifier;
  if (!acwgEventNotifier)
  {
    v4 = [[NIAcwgEventNotifier alloc] initWithParentSession:self];
    v5 = self->_acwgEventNotifier;
    self->_acwgEventNotifier = v4;

    acwgEventNotifier = self->_acwgEventNotifier;
  }

  return acwgEventNotifier;
}

- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2716 description:{@"Invalid parameter not satisfying: %@", @"m1Msg"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003556C0;
  block[3] = &unk_1009A1358;
  block[4] = self;
  v12 = v7;
  v13 = a4;
  v9 = v7;
  dispatch_sync(queue, block);
}

- (void)processAcwgM3Msg:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2726 description:{@"Invalid parameter not satisfying: %@", @"m3Msg"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035582C;
  block[3] = &unk_10098A2E8;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035590C;
  block[3] = &unk_10098A408;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(queue, block);
}

- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003559F0;
  block[3] = &unk_10098A408;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(queue, block);
}

- (void)prefetchAcwgUrsk:(unsigned int)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100355AD4;
  v4[3] = &unk_10099E718;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (void)_processUpdatedLockState:(unsigned __int16)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100355BB4;
  v4[3] = &unk_1009A6A40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (void)updateResponderDeviceIdentifier:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2771 description:{@"Invalid parameter not satisfying: %@", @"deviceIdentifier"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2772 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v7[2](v7, 1, 0);
}

- (void)processVisionInput:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100355DF0;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (NIDevicePresenceNotifier)devicePresenceNotifier
{
  devicePresenceNotifier = self->_devicePresenceNotifier;
  if (!devicePresenceNotifier)
  {
    v4 = [[NIDevicePresenceNotifier alloc] initWithParentSession:self];
    v5 = self->_devicePresenceNotifier;
    self->_devicePresenceNotifier = v4;

    devicePresenceNotifier = self->_devicePresenceNotifier;
  }

  return devicePresenceNotifier;
}

+ (id)generateBluetoothDeviceTokenWithPublicAddress:(id)a3 IRK:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"NISession.mm" lineNumber:2832 description:{@"Invalid parameter not satisfying: %@", @"IRK"}];
  }

  if ([v8 length] != 16)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"NISession.mm" lineNumber:2833 description:{@"Invalid parameter not satisfying: %@", @"[IRK length] == NIDiscoveryTokenIRKLengthBytes"}];
  }

  v16[0] = &off_1009C41D8;
  v16[1] = &off_1009C41F0;
  v17[0] = v8;
  v17[1] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"NISession.mm" lineNumber:2839 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v11 = [[NIDiscoveryToken alloc] initWithBytes:Data];

  return v11;
}

+ (id)generateFindingDiscoveryToken
{
  v2 = NSRandomData();
  v3 = [NIDiscoveryToken generateFindingTokenWithIRK:v2];

  return v3;
}

+ (id)generateFindingDiscoveryTokenWithSharedSecret:(id)a3
{
  v3 = a3;
  if ([v3 length] == 16)
  {
    v4 = [NIDiscoveryToken generateFindingTokenWithIRK:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)generateFindingDiscoveryTokenWithIdentityResolvingKey:(id)a3
{
  v3 = [NISession generateFindingDiscoveryTokenWithSharedSecret:a3];

  return v3;
}

+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)a3
{
  v3 = [NIDiscoveryToken generateDiscoveryTokenFromBeaconIdentifier:a3];

  return v3;
}

- (NIFindingNotifier)findingNotifier
{
  findingNotifier = self->_findingNotifier;
  if (!findingNotifier)
  {
    v4 = [[NIFindingNotifier alloc] initWithParentSession:self];
    v5 = self->_findingNotifier;
    self->_findingNotifier = v4;

    findingNotifier = self->_findingNotifier;
  }

  return findingNotifier;
}

- (void)_provideTruthTag:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100357710;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (NISystemEventNotifier)systemEventNotifier
{
  systemEventNotifier = self->_systemEventNotifier;
  if (!systemEventNotifier)
  {
    v4 = [[NISystemEventNotifier alloc] initWithParentSession:self];
    v5 = self->_systemEventNotifier;
    self->_systemEventNotifier = v4;

    systemEventNotifier = self->_systemEventNotifier;
  }

  return systemEventNotifier;
}

@end
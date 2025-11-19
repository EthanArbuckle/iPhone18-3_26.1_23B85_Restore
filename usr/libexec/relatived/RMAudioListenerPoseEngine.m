@interface RMAudioListenerPoseEngine
+ (id)sharedInstance;
- (RMAudioListenerPoseEngine)init;
- (id)startProducingDataForObject:(id)a3 tempestOptions:(id)a4 forceSessionRestart:(BOOL)a5 callback:(id)a6;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)externalDisplayDidConnect:(uint64_t)a1;
- (void)facePoseCaptureSessionDidConfigure:(id)a3;
- (void)onActiveAudioRouteChanged:(id)a3;
- (void)stopProducingDataForObject:(id)a3;
@end

@implementation RMAudioListenerPoseEngine

+ (id)sharedInstance
{
  if (qword_10002C510 != -1)
  {
    sub_100011D60();
  }

  v3 = qword_10002C508;

  return v3;
}

- (RMAudioListenerPoseEngine)init
{
  v31.receiver = self;
  v31.super_class = RMAudioListenerPoseEngine;
  v2 = [(RMAudioListenerPoseEngine *)&v31 init];
  if (v2)
  {
    v4 = [NSMapTable mapTableWithKeyOptions:5 valueOptions:0];
    sub_10000FA2C(v2, v4);

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("RMAudioListenerPoseEngineQueue", v5);
    sub_10000FA3C(v2, v6);

    v7 = objc_opt_new();
    sub_10000FA14(v2, v7);

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.RelativeMotion"];
    sub_10000FA48(v2, v8);

    defaults = v2->_defaults;
    v38[0] = @"TempestKeepAliveDuration";
    v38[1] = @"TempestOpportunisticAnchoredKeepAliveDuration";
    v39[0] = &off_100025E70;
    v39[1] = &off_100025E80;
    v38[2] = @"OasisKeepAliveDuration";
    v39[2] = &off_100025E80;
    v10 = defaults;
    v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
    [(NSUserDefaults *)v10 registerDefaults:v11];

    v12 = 0;
    if (+[RMPlatformInfo isInternalBuild])
    {
      v12 = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"TempestEnableFacePose"];
    }

    v2->_faceKitEnabled = (+[RMPlatformInfo supportsOpportunisticAnchoredTracking]| v12) & 1;
    v13 = v2->_defaults;
    v2->_facePoseVerboseLoggingEnabled = [(NSUserDefaults *)v13 BOOLForKey:@"TempestEnableFacePoseVerboseLogging"];

    if (qword_10002C0C8 != -1)
    {
      sub_100011D74();
    }

    v14 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = +[RMPlatformInfo supportsOpportunisticAnchoredTracking];
      faceKitEnabled = v2->_faceKitEnabled;
      facePoseVerboseLoggingEnabled = v2->_facePoseVerboseLoggingEnabled;
      *buf = 67240704;
      v33 = v16;
      v34 = 1026;
      v35 = faceKitEnabled;
      v36 = 1026;
      v37 = facePoseVerboseLoggingEnabled;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Face pose supported: %{public}d, face pose enabled: %{public}d, verbose logging: %{public}d", buf, 0x14u);
    }

    if (v2->_faceKitEnabled && (v19 = objc_opt_new(), sub_10000FA58(v2, v19), v19, [(RMFacePoseCaptureSession *)v2->_facePoseCaptureSession setDelegate:v2], v20 = objc_opt_new(), [(RMAudioListenerPoseEngine *)v2 setExternalDisplayService:v20], v20, v2->_faceKitEnabled))
    {
      v21 = v2->_defaults;
      v22 = v21;
      v23 = @"TempestOpportunisticAnchoredKeepAliveDuration";
    }

    else
    {
      v21 = v2->_defaults;
      v22 = v21;
      v23 = @"TempestKeepAliveDuration";
    }

    [(NSUserDefaults *)v21 doubleForKey:v23];
    session = v2->_session;
    if (session)
    {
      session->_keepAliveDurationVideo = v24;
    }

    v26 = v2->_defaults;
    [(NSUserDefaults *)v26 doubleForKey:@"OasisKeepAliveDuration"];
    v28 = v2->_session;
    if (v28)
    {
      v28->_keepAliveDurationMusic = v27;
    }

    if (qword_10002C0C8 != -1)
    {
      dispatch_once(&qword_10002C0C8, &stru_1000249E0);
    }

    v29 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100011D9C(&v2->_session, v29);
    }

    v2->_userInteractionMonitorClientCount = 0;
    v30 = +[RMUserInteractionMonitor userInteractionMonitor];
    sub_10000FA68(v2, v30);
  }

  return v2;
}

- (id)startProducingDataForObject:(id)a3 tempestOptions:(id)a4 forceSessionRestart:(BOOL)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10000200C;
  v30 = sub_10000201C;
  v31 = 0;
  if (self)
  {
    producerQueue = self->_producerQueue;
  }

  else
  {
    producerQueue = 0;
  }

  sub_100002788();
  v20[1] = 3221225472;
  v20[2] = sub_10000FBDC;
  v20[3] = &unk_100024858;
  v20[4] = self;
  v21 = v11;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = a5;
  v15 = v10;
  v16 = v12;
  v17 = v11;
  dispatch_sync(producerQueue, v20);
  v18 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v18;
}

- (void)stopProducingDataForObject:(id)a3
{
  v4 = a3;
  if (self)
  {
    producerQueue = self->_producerQueue;
  }

  sub_100002728();
  sub_1000027C0();
  v10 = v6;
  v7 = v6;
  v8 = sub_1000027CC();
  dispatch_sync(v8, v9);
}

- (void)externalDisplayDidConnect:(uint64_t)a1
{
  if (a1)
  {
    sub_1000027DC(a1);
    v2 = [v1 externalDisplayService];
    sub_100002748();
    sub_10000287C();
    v5 = sub_100011AE8;
    v6 = &unk_1000249C0;
    v7 = v1;
    [v3 getConnectedDisplayInfoWithCompletionHandler:v4];
  }
}

- (void)facePoseCaptureSessionDidConfigure:(id)a3
{
  v4 = a3;
  if (self)
  {
    producerQueue = self->_producerQueue;
  }

  sub_100002728();
  sub_1000027C0();
  v10 = v6;
  v7 = v6;
  v8 = sub_1000027CC();
  dispatch_async(v8, v9);
}

- (void)onActiveAudioRouteChanged:(id)a3
{
  if (self)
  {
    producerQueue = self->_producerQueue;
  }

  sub_100002768();
  v7 = 3221225472;
  v8 = sub_100011A28;
  v9 = &unk_100024948;
  v10 = v4;
  dispatch_async(v5, block);
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  if (self)
  {
    producerQueue = self->_producerQueue;
  }

  sub_100002788();
  v9[1] = 3221225472;
  v9[2] = sub_100011C24;
  v9[3] = &unk_100024970;
  v9[4] = v6;
  v9[5] = v7;
  dispatch_async(v8, v9);
}

@end
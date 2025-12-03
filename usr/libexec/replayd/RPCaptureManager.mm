@interface RPCaptureManager
+ (id)sharedInstance;
- (CGAffineTransform)cameraTransformForHQLR;
- (RPCaptureManager)init;
- (unsigned)getActiveCallSessionID;
- (void)dealloc;
- (void)deregisterForProxySessionNotifications;
- (void)enableMicrophone;
- (void)processCameraSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)registerForProxySessionNotifications;
- (void)restartAppAudioCaptureForProcessID:(int)d;
- (void)screenCaptureDidFailWithError:(id)error;
- (void)setAVAudioSessionCategory;
- (void)setAVAudioSessionCategoryForHQLR;
- (void)setSystemBroadcastHostBundleId:(id)id;
- (void)startCaptureForDelegate:(id)delegate forProcessID:(int)d shouldStartMicrophoneCapture:(BOOL)capture windowSize:(CGSize)size captureType:(int)type contextIDs:(id)ds mixedRealityCamera:(BOOL)camera systemCapture:(BOOL)self0 didStartHandler:(id)self1;
- (void)startHQLRCaptureForDelegate:(id)delegate micDeviceID:(id)d cameraDeviceID:(id)iD windowSize:(CGSize)size audioOnly:(BOOL)only didStartHandler:(id)handler;
- (void)startHQLRMicrophoneCaptureWithDispatchGroup:(id)group;
- (void)startMicrophoneCaptureWithDispatchGroup:(id)group;
- (void)stopAllCapture;
- (void)stopCaptureForDelegate:(id)delegate;
- (void)updateContextIDs:(id)ds forProcessID:(int)d systemRecording:(BOOL)recording;
@end

@implementation RPCaptureManager

+ (id)sharedInstance
{
  if (qword_1000B6A60 != -1)
  {
    sub_10006775C();
  }

  v3 = qword_1000B6A58;

  return v3;
}

- (RPCaptureManager)init
{
  v15.receiver = self;
  v15.super_class = RPCaptureManager;
  v2 = [(RPDelegateBase *)&v15 init];
  if (v2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "[RPCaptureManager init]";
      v18 = 1024;
      v19 = 71;
      v20 = 2048;
      v21 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v3 = [[RPScreenCaptureManager alloc] initWithDelegate:v2];
    screenCaptureManager = v2->_screenCaptureManager;
    v2->_screenCaptureManager = v3;

    v5 = objc_alloc_init(RPMicAudioCaptureManager);
    micAudioCaptureManager = v2->_micAudioCaptureManager;
    v2->_micAudioCaptureManager = v5;

    v7 = objc_alloc_init(RPAppAudioCaptureManager);
    appAudioCaptureManager = v2->_appAudioCaptureManager;
    v2->_appAudioCaptureManager = v7;

    v2->_captureState = 0;
    v9 = dispatch_queue_create("com.apple.ReplayKit.CaptureProcessQueue", 0);
    captureProcessQueue = v2->_captureProcessQueue;
    v2->_captureProcessQueue = v9;

    v11 = dispatch_queue_create("com.apple.ReplayKit.CaptureErrorQueue", 0);
    captureErrorQueue = v2->_captureErrorQueue;
    v2->_captureErrorQueue = v11;

    v2->_currentProcessID = 0;
    currentContextID = v2->_currentContextID;
    v2->_currentContextID = 0;

    v2->_isSystemRecording = 0;
    [(RPDelegateBase *)v2 setProtocol:&OBJC_PROTOCOL___RPCaptureManagerProtocol];
  }

  return v2;
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPCaptureManager dealloc]";
    v6 = 1024;
    v7 = 89;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPCaptureManager;
  [(RPDelegateBase *)&v3 dealloc];
}

- (void)setSystemBroadcastHostBundleId:(id)id
{
  objc_storeStrong(&self->_systemBroadcastHostBundleId, id);
  idCopy = id;
  [(RPScreenCaptureManager *)self->_screenCaptureManager setSystemBroadcastHostBundleId:idCopy];
}

- (void)startMicrophoneCaptureWithDispatchGroup:(id)group
{
  groupCopy = group;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPCaptureManager startMicrophoneCaptureWithDispatchGroup:]";
    v12 = 1024;
    v13 = 99;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  dispatch_group_enter(groupCopy);
  micAudioCaptureManager = self->_micAudioCaptureManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059614;
  v9[3] = &unk_1000A2880;
  v9[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000596AC;
  v7[3] = &unk_1000A1088;
  v8 = groupCopy;
  v6 = groupCopy;
  [(RPMicAudioCaptureManager *)micAudioCaptureManager startMicrophoneCaptureWithOutput:v9 didStartHandler:v7];
}

- (void)startHQLRMicrophoneCaptureWithDispatchGroup:(id)group
{
  groupCopy = group;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPCaptureManager startHQLRMicrophoneCaptureWithDispatchGroup:]";
    v12 = 1024;
    v13 = 116;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  dispatch_group_enter(groupCopy);
  micAudioCaptureManager = self->_micAudioCaptureManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005991C;
  v9[3] = &unk_1000A2880;
  v9[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000599B4;
  v7[3] = &unk_1000A1088;
  v8 = groupCopy;
  v6 = groupCopy;
  [(RPMicAudioCaptureManager *)micAudioCaptureManager startHQLRMicrophoneCaptureWithOutput:v9 didStartHandler:v7];
}

- (void)restartAppAudioCaptureForProcessID:(int)d
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "[RPCaptureManager restartAppAudioCaptureForProcessID:]";
    v10 = 1024;
    v11 = 147;
    v12 = 1024;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pid %d", buf, 0x18u);
  }

  captureProcessQueue = self->_captureProcessQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100059D6C;
  v6[3] = &unk_1000A1F50;
  v6[4] = self;
  dCopy2 = d;
  dispatch_async(captureProcessQueue, v6);
}

- (void)stopAllCapture
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPCaptureManager stopAllCapture]";
    v7 = 1024;
    v8 = 192;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPCaptureManager *)self deregisterForProxySessionNotifications];
  transaction = self->_transaction;
  self->_transaction = 0;

  self->_captureState = 0;
  self->_currentProcessID = 0;
  currentContextID = self->_currentContextID;
  self->_currentContextID = 0;

  self->_isSystemRecording = 0;
  [(RPScreenCaptureManager *)self->_screenCaptureManager stop];
  [(RPMicAudioCaptureManager *)self->_micAudioCaptureManager stopAllCapture];
  [(RPCameraCaptureManager *)self->_cameraCaptureManager stop];
  [(RPCaptureManager *)self stopAppAudioCapture];
  [(RPDelegateBase *)self removeAllDelegates];
}

- (void)stopCaptureForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPCaptureManager stopCaptureForDelegate:]";
    v12 = 1024;
    v13 = 209;
    v14 = 2048;
    v15 = delegateCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate %p", buf, 0x1Cu);
  }

  systemBroadcastHostBundleId = self->_systemBroadcastHostBundleId;
  self->_systemBroadcastHostBundleId = 0;

  captureProcessQueue = self->_captureProcessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A128;
  v8[3] = &unk_1000A1128;
  v8[4] = self;
  v9 = delegateCopy;
  v7 = delegateCopy;
  dispatch_sync(captureProcessQueue, v8);
}

- (void)startCaptureForDelegate:(id)delegate forProcessID:(int)d shouldStartMicrophoneCapture:(BOOL)capture windowSize:(CGSize)size captureType:(int)type contextIDs:(id)ds mixedRealityCamera:(BOOL)camera systemCapture:(BOOL)self0 didStartHandler:(id)self1
{
  height = size.height;
  width = size.width;
  delegateCopy = delegate;
  dsCopy = ds;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[RPCaptureManager startCaptureForDelegate:forProcessID:shouldStartMicrophoneCapture:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:didStartHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 234;
    *&buf[18] = 2048;
    *&buf[20] = delegateCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate %p", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  failedToStartError = self->_failedToStartError;
  self->_failedToStartError = 0;

  captureProcessQueue = self->_captureProcessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A5B4;
  block[3] = &unk_1000A28A8;
  block[4] = self;
  v22 = dsCopy;
  v28 = v22;
  dCopy = d;
  systemCaptureCopy = systemCapture;
  v23 = delegateCopy;
  v31 = width;
  v32 = height;
  typeCopy = type;
  cameraCopy = camera;
  captureCopy = capture;
  v29 = v23;
  v30 = buf;
  dispatch_sync(captureProcessQueue, block);
  if (handlerCopy)
  {
    if (*(*&buf[8] + 24) == 1)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else if (self->_failedToStartError)
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v24 = [NSError _rpUserErrorForCode:-5833 userInfo:0];
      (handlerCopy)[2](handlerCopy, v24);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)updateContextIDs:(id)ds forProcessID:(int)d systemRecording:(BOOL)recording
{
  dsCopy = ds;
  v9 = dsCopy;
  if (dsCopy)
  {
    firstObject = [dsCopy firstObject];
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100067770();
    }

    firstObject = 0;
  }

  currentProcessID = self->_currentProcessID;
  if (currentProcessID)
  {
    v12 = currentProcessID == d;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 || self->_currentContextID && ([firstObject isEqualToString:?] & 1) == 0)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_currentProcessID;
      currentContextID = self->_currentContextID;
      *buf = 136447490;
      v18 = "[RPCaptureManager updateContextIDs:forProcessID:systemRecording:]";
      v19 = 1024;
      v20 = 359;
      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      dCopy = d;
      v25 = 2112;
      v26 = currentContextID;
      v27 = 2112;
      v28 = firstObject;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d current capture stopped by interruption process changed %d to %d context changed %@ to %@", buf, 0x32u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005B040;
    v16[3] = &unk_1000A2918;
    v16[4] = self;
    [(RPDelegateBase *)self callDelegate:v16];
    [(RPCaptureManager *)self stopAllCapture];
  }

  self->_currentProcessID = d;
  v15 = self->_currentContextID;
  self->_currentContextID = firstObject;

  self->_isSystemRecording = recording;
}

- (void)enableMicrophone
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[RPCaptureManager enableMicrophone]";
    v7 = 1024;
    v8 = 375;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  captureProcessQueue = self->_captureProcessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B270;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(captureProcessQueue, block);
}

- (void)setAVAudioSessionCategory
{
  v2 = +[AVAudioSession sharedInstance];
  v8 = 0;
  [v2 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:5 error:&v8];
  v3 = v8;

  if (v3)
  {
    v4 = dword_1000B6840 > 2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100067800(v3);
  }

  v5 = +[AVAudioSession sharedInstance];
  v7 = 0;
  [v5 setPreferredRouteControlConfig:0 error:&v7];
  v6 = v7;

  if (v6 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000678A4(v6);
  }
}

- (void)setAVAudioSessionCategoryForHQLR
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPCaptureManager setAVAudioSessionCategoryForHQLR]";
    v22 = 1024;
    v23 = 403;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v3 = +[AVAudioSession sharedInstance];
  v17 = 0;
  [v3 setCategory:AVAudioSessionCategoryRecord mode:AVAudioSessionModeDefault routeSharingPolicy:0 options:131077 error:&v17];
  v4 = v17;

  if (v4 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100067948(v4);
  }

  v5 = objc_alloc_init(AVAudioSessionRouteControl);
  [v5 setRouteControlOptions:1];
  v6 = +[AVAudioSession sharedInstance];
  v16 = 0;
  v7 = [v6 setPreferredRouteControlConfig:v5 error:&v16];
  v8 = v16;

  if (((v8 == 0) & v7) == 0 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000679EC(v8);
  }

  v18[0] = AVAudioSessionConformSessionAudioSessionIDKey;
  v9 = [NSNumber numberWithUnsignedInt:[(RPCaptureManager *)self getActiveCallSessionID]];
  v18[1] = AVAudioSessionConformSessionShadowingOptionsKey;
  v19[0] = v9;
  v19[1] = &off_1000A6DE8;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  v11 = +[AVAudioSession sharedInstance];
  v15 = 0;
  v12 = [v11 setConformsToSessionBehavior:v10 error:&v15];
  v13 = v15;

  if (v13)
  {
    if (dword_1000B6840 > 2)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (dword_1000B6840 > 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  if ((v14 & 1) == 0)
  {
LABEL_19:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100067A90(v13);
    }
  }

LABEL_21:
  [(RPCaptureManager *)self registerForProxySessionNotifications];
}

- (unsigned)getActiveCallSessionID
{
  v2 = +[AVSystemController sharedInstance];
  v3 = [v2 attributeForKey:AVSystemController_ActiveCallInfo];

  if (v3)
  {
    v4 = [v3 objectForKey:AVSystemController_ActiveCallInfo_AudioSessionID];
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)registerForProxySessionNotifications
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[RPCaptureManager registerForProxySessionNotifications]";
    v13 = 1024;
    v14 = 461;
    v15 = 1024;
    getActiveCallSessionID = [(RPCaptureManager *)self getActiveCallSessionID];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d registering for mute notifications on proxy session with id: %d", buf, 0x18u);
  }

  v3 = [[AVAudioSession alloc] initProxySession:-[RPCaptureManager getActiveCallSessionID](self autoReconnect:{"getActiveCallSessionID"), 0}];
  proxySession = self->_proxySession;
  self->_proxySession = v3;

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = AVAudioSessionInputMuteChangeNotification;
  v7 = self->_proxySession;
  v8 = +[NSOperationQueue mainQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005B948;
  v10[3] = &unk_1000A2940;
  v10[4] = self;
  v9 = [v5 addObserverForName:v6 object:v7 queue:v8 usingBlock:v10];
  [(RPCaptureManager *)self setObserver:v9];

  [(RPCaptureManager *)self updateAVAudioSessionMuteState:[(AVAudioSession *)self->_proxySession isSessionInputMuted]];
}

- (void)deregisterForProxySessionNotifications
{
  observer = [(RPCaptureManager *)self observer];

  if (observer)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    observer2 = [(RPCaptureManager *)self observer];
    [v5 removeObserver:observer2];
  }
}

- (void)processCameraSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (self->_captureState)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005BEEC;
    v3[3] = &unk_1000A2858;
    v3[4] = buffer;
    [(RPDelegateBase *)self callDelegate:v3];
  }
}

- (void)startHQLRCaptureForDelegate:(id)delegate micDeviceID:(id)d cameraDeviceID:(id)iD windowSize:(CGSize)size audioOnly:(BOOL)only didStartHandler:(id)handler
{
  onlyCopy = only;
  delegateCopy = delegate;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "[RPCaptureManager startHQLRCaptureForDelegate:micDeviceID:cameraDeviceID:windowSize:audioOnly:didStartHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 526;
    *&buf[18] = 2112;
    *&buf[20] = delegateCopy;
    v28 = 2112;
    v29 = dCopy;
    v30 = 2112;
    v31 = iDCopy;
    v32 = 1024;
    v33 = onlyCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate=%@, micDeviceID=%@, cameraDeviceID=%@, audioOnly=%d", buf, 0x36u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  failedToStartError = self->_failedToStartError;
  self->_failedToStartError = 0;

  captureProcessQueue = self->_captureProcessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C1BC;
  block[3] = &unk_1000A2968;
  block[4] = self;
  v19 = delegateCopy;
  v24 = onlyCopy;
  v25 = iDCopy != 0;
  v26 = dCopy != 0;
  v22 = v19;
  v23 = buf;
  dispatch_sync(captureProcessQueue, block);
  if (handlerCopy)
  {
    if (*(*&buf[8] + 24) == 1)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else if (self->_failedToStartError)
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v20 = [NSError _rpUserErrorForCode:-5833 userInfo:0];
      (handlerCopy)[2](handlerCopy, v20);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (CGAffineTransform)cameraTransformForHQLR
{
  result = self->_cameraCaptureManager;
  if (result)
  {
    return [(CGAffineTransform *)result cameraTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)screenCaptureDidFailWithError:(id)error
{
  errorCopy = error;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[RPCaptureManager screenCaptureDidFailWithError:]";
    v12 = 1024;
    v13 = 592;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d error %@", buf, 0x1Cu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005C74C;
  v8[3] = &unk_1000A2918;
  v9 = errorCopy;
  v5 = errorCopy;
  [(RPDelegateBase *)self callDelegate:v8];
  captureProcessQueue = self->_captureProcessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005C758;
  v7[3] = &unk_1000A1088;
  v7[4] = self;
  dispatch_async(captureProcessQueue, v7);
}

@end
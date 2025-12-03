@interface RPCaptureSession
- (id)dispatchCaptureQueue;
- (void)captureDidFailWithError:(id)error;
- (void)handleClientApplicationDidEnterBackground;
- (void)handleClientApplicationDidEnterForeground;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleDisplayWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)handler;
- (void)handleResumeContextIDFailure;
- (void)packageAudioSampleBufferForCapture:(opaqueCMSampleBuffer *)capture withType:(int64_t)type;
- (void)pauseSession;
- (void)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)stopCaptureWithHandler:(id)handler;
@end

@implementation RPCaptureSession

- (void)stopCaptureWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446978;
    v8 = "[RPCaptureSession stopCaptureWithHandler:]";
    v9 = 1024;
    v10 = 108;
    v11 = 2048;
    selfCopy = self;
    v13 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", &v7, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 3 || ![(RPSession *)self sessionState]|| [(RPSession *)self sessionState]== 2)
  {
    v5 = [NSError _rpUserErrorForCode:-5829 userInfo:0];
    [(RPSession *)self reportSessionEndReason:v5];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v5);
    }
  }

  else
  {
    [(RPSession *)self setSessionState:2];
    v6 = +[RPCaptureManager sharedInstance];
    [v6 stopCaptureForDelegate:self];

    [(RPSession *)self setSessionState:3];
    [(RPSession *)self reportSummaryEvent:0 recordedFileSize:0];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v6 = "[RPCaptureSession pauseSession]";
    v7 = 1024;
    v8 = 136;
    v9 = 2048;
    selfCopy = self;
    v11 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p pausing in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 1)
  {
    v3 = +[RPCaptureManager sharedInstance];
    [v3 stopCaptureForDelegate:self];

    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    v4.receiver = self;
    v4.super_class = RPCaptureSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6A38 != -1)
  {
    sub_100066B20();
  }

  v3 = qword_1000B6A30;

  return v3;
}

- (void)captureDidFailWithError:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100055F6C;
  v5[3] = &unk_1000A1348;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  [(RPCaptureSession *)self stopCaptureWithHandler:v5];
}

- (void)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if ([(RPSession *)self sessionState]== 4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9.duration.value) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "session is paused discard sample", &v9, 2u);
    }
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    CFRetain(ImageBuffer);
    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
    v7 = objc_alloc_init(RPIOSurfaceObject);
    [(RPIOSurfaceObject *)v7 setIOSurface:IOSurface];
    memset(&v9, 0, sizeof(v9));
    CMSampleBufferGetSampleTimingInfo(buffer, 0, &v9);
    v8 = [NSData dataWithBytes:&v9 length:72];
    [(RPClientProtocol *)self->super._clientProxy captureHandlerWithSample:v7 timingData:v8];
    CFRelease(ImageBuffer);
  }
}

- (void)packageAudioSampleBufferForCapture:(opaqueCMSampleBuffer *)capture withType:(int64_t)type
{
  v6 = sub_1000575D0(capture, type);
  [(RPClientProtocol *)self->super._clientProxy captureHandlerWithAudioSample:v6 bufferType:type];
}

- (void)handleDisplayWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPCaptureSession handleDisplayWarning]";
    v6 = 1024;
    v7 = 246;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000562DC;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPCaptureSession *)self stopCaptureWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPCaptureSession handleDeviceLockedWarning]";
    v5 = 1024;
    v6 = 257;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }
}

- (void)handleDeviceRestrictionWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPCaptureSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 275;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000565DC;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPCaptureSession *)self stopCaptureWithHandler:v3];
  }
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPCaptureSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 287;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100056800;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPCaptureSession *)self stopCaptureWithHandler:v3];
  }
}

- (void)handleResumeCaptureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "[RPCaptureSession handleResumeCaptureWithCompletionHandler:]";
    v19 = 1024;
    v20 = 297;
    v21 = 2048;
    selfCopy = self;
    v23 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  self->super._sessionIsResuming = 1;
  v5 = +[RPCaptureManager sharedInstance];
  callingPID = self->super._callingPID;
  microphoneEnabled = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v9 = v8;
  v11 = v10;
  contextID = [(RPSession *)self contextID];
  v13 = [NSArray arrayWithObject:contextID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100056AF4;
  v15[3] = &unk_1000A1840;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v5 startCaptureForDelegate:self forProcessID:callingPID shouldStartMicrophoneCapture:microphoneEnabled windowSize:0 captureType:v13 contextIDs:v15 didStartHandler:{v9, v11}];
}

- (void)handleClientApplicationDidEnterBackground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPCaptureSession handleClientApplicationDidEnterBackground]";
    v5 = 1024;
    v6 = 318;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  [(RPCaptureSession *)self pauseSession];
}

- (void)handleClientApplicationDidEnterForeground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPCaptureSession handleClientApplicationDidEnterForeground]";
    v5 = 1024;
    v6 = 325;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    [(RPClientProtocol *)self->super._clientProxy shouldResumeSessionType:@"RPInAppCapture"];
  }
}

@end
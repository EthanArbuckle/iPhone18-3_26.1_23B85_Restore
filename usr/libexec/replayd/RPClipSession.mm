@interface RPClipSession
- (id)dispatchCaptureQueue;
- (void)captureDidFailWithError:(id)error;
- (void)createEncodingSessionWithWidth:(int)width withHeight:(int)height;
- (void)encodeBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)handleClientApplicationDidEnterBackground;
- (void)handleClientApplicationDidEnterForeground;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleDisplayWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)handler;
- (void)handleResumeContextIDFailure;
- (void)pauseSession;
- (void)stopClipWithHandler:(id)handler;
@end

@implementation RPClipSession

- (void)stopClipWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136446978;
    *&v9[4] = "[RPClipSession stopClipWithHandler:]";
    *&v9[12] = 1024;
    *&v9[14] = 91;
    *&v9[18] = 2048;
    *&v9[20] = self;
    v10 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", v9, 0x22u);
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

    encodeSession = self->_encodeSession;
    *v9 = *&kCMTimeInvalid.value;
    *&v9[16] = kCMTimeInvalid.epoch;
    VTCompressionSessionCompleteFrames(encodeSession, v9);
    VTCompressionSessionInvalidate(self->_encodeSession);
    v8 = self->_encodeSession;
    if (v8)
    {
      CFRelease(v8);
    }

    self->_encodeSession = 0;
    [(RPClipWriter *)self->_clipWriter flushClipBuffer];
    [(RPSession *)self reportSummaryEvent:0 recordedFileSize:0];
    [(RPSession *)self setSessionState:3];
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
    v6 = "[RPClipSession pauseSession]";
    v7 = 1024;
    v8 = 125;
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

    [(RPClipWriter *)self->_clipWriter flushClipBuffer];
    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    v4.receiver = self;
    v4.super_class = RPClipSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[RPClipSession exportClipToURL:duration:completionHandler:]";
    v20 = 1024;
    v21 = 136;
    v22 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  durationCopy = 15.0;
  if (duration <= 15.0)
  {
    if (duration > 0.0)
    {
LABEL_13:
      durationCopy = duration;
      goto LABEL_14;
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000616A8();
      if (handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else if (handlerCopy)
    {
LABEL_12:
      v11 = [NSError _rpUserErrorForCode:-5834 userInfo:0];
      handlerCopy[2](handlerCopy, v11);

      goto LABEL_13;
    }

    if ([(RPSession *)self sessionState]!= 1)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[RPClipSession exportClipToURL:duration:completionHandler:]";
    v20 = 1024;
    v21 = 138;
    v22 = 2048;
    selfCopy = 0x402E000000000000;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d clipping to maximum length %f seconds", buf, 0x1Cu);
  }

LABEL_14:
  duration = durationCopy;
  if ([(RPSession *)self sessionState]== 1)
  {
LABEL_15:
    dispatchCaptureQueue = [(RPClipSession *)self dispatchCaptureQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100020CF4;
    v14[3] = &unk_1000A1B78;
    v14[4] = self;
    v15 = lCopy;
    durationCopy2 = duration;
    v16 = handlerCopy;
    dispatch_async(dispatchCaptureQueue, v14);

    goto LABEL_18;
  }

  if (handlerCopy)
  {
    v13 = [NSError _rpUserErrorForCode:-5829 userInfo:0];
    handlerCopy[2](handlerCopy, v13);
  }

LABEL_18:
}

- (void)encodeBuffer:(opaqueCMSampleBuffer *)buffer
{
  CFRetain(buffer);
  dispatchCaptureQueue = [(RPClipSession *)self dispatchCaptureQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020FA4;
  v6[3] = &unk_1000A1230;
  v6[4] = self;
  v6[5] = buffer;
  dispatch_async(dispatchCaptureQueue, v6);
}

- (void)createEncodingSessionWithWidth:(int)width withHeight:(int)height
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v11 = "[RPClipSession createEncodingSessionWithWidth:withHeight:]";
    v12 = 1024;
    v13 = 202;
    v14 = 1024;
    widthCopy = width;
    v16 = 1024;
    heightCopy = height;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d VTCompressionSessionCreate w:%d h:%d", buf, 0x1Eu);
  }

  outputCallbackRefCon = self->_clipWriter;
  p_encodeSession = &self->_encodeSession;
  if (VTCompressionSessionCreate(kCFAllocatorDefault, width, height, 0x61766331u, 0, 0, kCFAllocatorDefault, sub_1000212EC, outputCallbackRefCon, p_encodeSession))
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061858();
    }
  }

  else
  {
    VTSessionSetProperty(*p_encodeSession, kVTCompressionPropertyKey_RealTime, kCFBooleanTrue);
    *buf = 1056964608;
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, buf);
    VTSessionSetProperty(*p_encodeSession, kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration, v9);
    CFRelease(v9);
  }
}

- (void)captureDidFailWithError:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021898;
  v5[3] = &unk_1000A1348;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  [(RPClipSession *)self stopClipWithHandler:v5];
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B68B0 != -1)
  {
    sub_100061BC0();
  }

  v3 = qword_1000B68A8;

  return v3;
}

- (void)handleResumeCaptureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "[RPClipSession handleResumeCaptureWithCompletionHandler:]";
    v19 = 1024;
    v20 = 342;
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
  v15[2] = sub_100021BC4;
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
    v4 = "[RPClipSession handleClientApplicationDidEnterBackground]";
    v5 = 1024;
    v6 = 364;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  [(RPClipSession *)self pauseSession];
}

- (void)handleClientApplicationDidEnterForeground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPClipSession handleClientApplicationDidEnterForeground]";
    v5 = 1024;
    v6 = 371;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    [(RPClientProtocol *)self->super._clientProxy shouldResumeSessionType:@"RPInAppClip"];
  }
}

- (void)handleDisplayWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPClipSession handleDisplayWarning]";
    v6 = 1024;
    v7 = 381;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100022010;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPClipSession *)self stopClipWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPClipSession handleDeviceLockedWarning]";
    v5 = 1024;
    v6 = 392;
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
    v5 = "[RPClipSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 410;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100022310;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPClipSession *)self stopClipWithHandler:v3];
  }
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPClipSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 422;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100022534;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPClipSession *)self stopClipWithHandler:v3];
  }
}

@end
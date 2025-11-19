@interface RPRecordSession
- (id)dispatchCaptureQueue;
- (id)outputPath;
- (void)captureDidFailWithError:(id)a3;
- (void)discardInAppRecordingWithHandler:(id)a3;
- (void)handleClientApplicationDidEnterBackground;
- (void)handleClientApplicationDidEnterForeground;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleDisplayWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)a3;
- (void)handleResumeContextIDFailure;
- (void)pauseSession;
- (void)stopRecordingWithHandler:(id)a3;
@end

@implementation RPRecordSession

- (id)outputPath
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(RPSession *)self bundleID];
  v5 = [v3 outputPath:0 bundleID:v4];

  return v5;
}

- (void)stopRecordingWithHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v11 = "[RPRecordSession stopRecordingWithHandler:]";
    v12 = 1024;
    v13 = 85;
    v14 = 2048;
    v15 = self;
    v16 = 1024;
    v17 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 3 || ![(RPSession *)self sessionState]|| [(RPSession *)self sessionState]== 2)
  {
    v5 = [NSError _rpUserErrorForCode:-5829 userInfo:0];
    [(RPSession *)self reportSessionEndReason:v5];
    if (v4)
    {
      v4[2](v4, 0, v5);
    }
  }

  else
  {
    [(RPSession *)self setSessionState:2];
    v6 = +[RPCaptureManager sharedInstance];
    [v6 stopCaptureForDelegate:self];

    movieWriter = self->_movieWriter;
    if (movieWriter)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10005CE70;
      v8[3] = &unk_1000A1868;
      v8[4] = self;
      v9 = v4;
      [(RPMovieWriter *)movieWriter finishWritingWithHandler:v8];
    }

    else
    {
      [(RPSession *)self setSessionState:3];
      [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v11 = "[RPRecordSession stopRecordingWithHandler:]";
        v12 = 1024;
        v13 = 122;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no movie writer instance when attempting to stop", buf, 0x12u);
      }

      if (v4)
      {
        v4[2](v4, 0, 0);
      }
    }
  }
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v6 = "[RPRecordSession pauseSession]";
    v7 = 1024;
    v8 = 131;
    v9 = 2048;
    v10 = self;
    v11 = 1024;
    v12 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p pausing in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 1)
  {
    v3 = +[RPCaptureManager sharedInstance];
    [v3 stopCaptureForDelegate:self];

    [(RPMovieWriter *)self->_movieWriter notifyRecordingMayBeStopped];
    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    v4.receiver = self;
    v4.super_class = RPRecordSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)discardInAppRecordingWithHandler:(id)a3
{
  v4 = a3;
  if ([(RPSession *)self sessionState]== 3 && self->_currentRecordingURL)
  {
    v5 = +[NSFileManager defaultManager];
    currentRecordingURL = self->_currentRecordingURL;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005D254;
    v7[3] = &unk_1000A1840;
    v7[4] = self;
    v8 = v4;
    [v5 _srRemoveFile:currentRecordingURL completion:v7];
  }
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6A70 != -1)
  {
    sub_100067C70();
  }

  v3 = qword_1000B6A68;

  return v3;
}

- (void)captureDidFailWithError:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DA60;
  v5[3] = &unk_1000A29B0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(RPRecordSession *)self stopRecordingWithHandler:v5];
}

- (void)handleResumeCaptureWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "[RPRecordSession handleResumeCaptureWithCompletionHandler:]";
    v19 = 1024;
    v20 = 277;
    v21 = 2048;
    v22 = self;
    v23 = 1024;
    v24 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  self->super._sessionIsResuming = 1;
  [(RPMovieWriter *)self->_movieWriter notifyRecordingResumed];
  v5 = +[RPCaptureManager sharedInstance];
  callingPID = self->super._callingPID;
  v7 = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v9 = v8;
  v11 = v10;
  v12 = [(RPSession *)self contextID];
  v13 = [NSArray arrayWithObject:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005DD28;
  v15[3] = &unk_1000A1840;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  [v5 startCaptureForDelegate:self forProcessID:callingPID shouldStartMicrophoneCapture:v7 windowSize:0 captureType:v13 contextIDs:v15 didStartHandler:{v9, v11}];
}

- (void)handleClientApplicationDidEnterBackground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPRecordSession handleClientApplicationDidEnterBackground]";
    v5 = 1024;
    v6 = 300;
    v7 = 1024;
    v8 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  [(RPRecordSession *)self pauseSession];
}

- (void)handleClientApplicationDidEnterForeground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPRecordSession handleClientApplicationDidEnterForeground]";
    v5 = 1024;
    v6 = 307;
    v7 = 1024;
    v8 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    [(RPClientProtocol *)self->super._clientProxy shouldResumeSessionType:@"RPInAppRecording"];
  }
}

- (void)handleDisplayWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPRecordSession handleDisplayWarning]";
    v6 = 1024;
    v7 = 317;
    v8 = 1024;
    v9 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E174;
    v3[3] = &unk_1000A29D8;
    v3[4] = self;
    [(RPRecordSession *)self stopRecordingWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPRecordSession handleDeviceLockedWarning]";
    v5 = 1024;
    v6 = 328;
    v7 = 1024;
    v8 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }
}

- (void)handleDeviceRestrictionWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPRecordSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 346;
    v8 = 1024;
    v9 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E474;
    v3[3] = &unk_1000A29D8;
    v3[4] = self;
    [(RPRecordSession *)self stopRecordingWithHandler:v3];
  }
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPRecordSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 358;
    v8 = 1024;
    v9 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E698;
    v3[3] = &unk_1000A29D8;
    v3[4] = self;
    [(RPRecordSession *)self stopRecordingWithHandler:v3];
  }
}

@end
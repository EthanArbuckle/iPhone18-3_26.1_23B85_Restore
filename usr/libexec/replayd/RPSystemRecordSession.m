@interface RPSystemRecordSession
- (CGSize)adjustedWindowSizeForSystemRecording;
- (id)dispatchCaptureQueue;
- (id)outputPath;
- (void)captureDidFailWithError:(id)a3;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleIncomingCallWarning;
- (void)handleMemoryWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)a3;
- (void)handleResumeContextIDFailure;
- (void)handleSystemAlertStop;
- (void)handleTimerDidUpdate:(id)a3;
- (void)pauseSession;
- (void)setCaptureMicrophoneEnabled:(BOOL)a3;
- (void)stopSystemRecordingWithHandler:(id)a3;
- (void)stopSystemRecordingWithURLHandler:(id)a3;
@end

@implementation RPSystemRecordSession

- (id)outputPath
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(RPSession *)self bundleID];
  v5 = [v3 outputPath:2 bundleID:v4];

  return v5;
}

- (void)stopSystemRecordingWithHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v17 = "[RPSystemRecordSession stopSystemRecordingWithHandler:]";
    v18 = 1024;
    v19 = 193;
    v20 = 2048;
    v21 = self;
    v22 = 1024;
    v23 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  v5 = +[RPCaptureManager sharedInstance];
  [v5 stopCaptureForDelegate:self];

  if ([(RPSession *)self cameraEnabled])
  {
    v6 = +[RPAngelProxy sharedInstance];
    [v6 disableCameraPip];
  }

  movieWriter = self->_movieWriter;
  if (movieWriter)
  {
    sessionID = self->_sessionID;
    mixAudioTracks = self->_mixAudioTracks;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000506D4;
    v13 = &unk_1000A1840;
    v14 = self;
    v15 = v4;
    [(RPMovieWriter *)movieWriter finishWritingAndSaveToCameraRollWithSessionID:sessionID mixAudioTracks:mixAudioTracks handler:&v10];
  }

  else
  {
    [(RPSession *)self setSessionState:3];
    [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[RPSystemRecordSession stopSystemRecordingWithHandler:]";
      v18 = 1024;
      v19 = 229;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no movie writer instance when attempting to stop", buf, 0x12u);
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }

  [(RPSession *)self clearSystemRecordingUI:v10];
  [(RPSession *)self checkAndPlaySystemSessionSound:0];
}

- (void)stopSystemRecordingWithURLHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[RPSystemRecordSession stopSystemRecordingWithURLHandler:]";
    v15 = 1024;
    v16 = 245;
    v17 = 2048;
    v18 = self;
    v19 = 1024;
    v20 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  v5 = +[RPCaptureManager sharedInstance];
  [v5 stopCaptureForDelegate:self];

  movieWriter = self->_movieWriter;
  if (movieWriter)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100050A90;
    v10 = &unk_1000A1868;
    v11 = self;
    v12 = v4;
    [(RPMovieWriter *)movieWriter finishWritingWithHandler:&v7];
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000664A4();
    }

    [(RPSession *)self setSessionState:3];
    [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  [(RPSession *)self clearSystemRecordingUI:v7];
  [(RPSession *)self checkAndPlaySystemSessionSound:0];
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v6 = "[RPSystemRecordSession pauseSession]";
    v7 = 1024;
    v8 = 287;
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

    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    [(RPMovieWriter *)self->_movieWriter notifyRecordingMayBeStopped];
    v4.receiver = self;
    v4.super_class = RPSystemRecordSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)setCaptureMicrophoneEnabled:(BOOL)a3
{
  v3 = a3;
  [(RPSession *)self setMicrophoneEnabled:?];
  if (v3)
  {
    self->_mixAudioTracks = 1;
    if ([(RPSession *)self sessionState]== 1 && v3)
    {
      v5 = +[RPCaptureManager sharedInstance];
      [v5 enableMicrophone];
    }
  }

  else
  {

    [(RPSession *)self sessionState];
  }
}

- (CGSize)adjustedWindowSizeForSystemRecording
{
  [(RPSession *)self windowSize];
  v3 = v2;
  v5 = v4;
  if (((v2 > v4) ^ +[RPHardwareUtility isNativeScreenOrientationPortrait]))
  {
    v6 = v5;
    v5 = v3;
    v3 = v6;
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "[RPSystemRecordSession adjustedWindowSizeForSystemRecording]";
    v11 = 1024;
    v12 = 314;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d rotating to window size width %.1f x height:%.1f", &v9, 0x26u);
  }

  v7 = v5;
  v8 = v3;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)captureDidFailWithError:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000511F0;
  v5[3] = &unk_1000A1348;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v5];
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6A18 != -1)
  {
    sub_100066668();
  }

  v3 = qword_1000B6A10;

  return v3;
}

- (void)handleSystemAlertStop
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleSystemAlertStop]";
    v6 = 1024;
    v7 = 371;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005143C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleMemoryWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleMemoryWarning]";
    v6 = 1024;
    v7 = 383;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100051650;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleIncomingCallWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleIncomingCallWarning]";
    v6 = 1024;
    v7 = 397;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005189C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleDeviceLockedWarning]";
    v6 = 1024;
    v7 = 409;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100051AB0;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleDeviceRestrictionWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 421;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100051CC4;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleTimerDidUpdate:(id)a3
{
  v7 = a3;
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v4 = +[RPFeatureFlagUtility sharedInstance];
    v5 = [v4 systemBannerEnabled];

    if (v5)
    {
      v6 = +[RPAngelProxy sharedInstance];
      [v6 updateTimer:v7];
    }

    [(RPClientProtocol *)self->super._clientProxy recordingTimerDidUpdate:v7];
  }
}

- (void)handleResumeCaptureWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v22 = "[RPSystemRecordSession handleResumeCaptureWithCompletionHandler:]";
    v23 = 1024;
    v24 = 446;
    v25 = 2048;
    v26 = self;
    v27 = 1024;
    v28 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  v5 = +[RPFeatureFlagUtility sharedInstance];
  v6 = [v5 screenRecordingPassthroughCamera];

  if (v6)
  {
    v7 = [(RPSession *)self mixedRealityCameraEnabled];
  }

  else
  {
    v7 = 1;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "[RPSystemRecordSession handleResumeCaptureWithCompletionHandler:]";
    v23 = 1024;
    v24 = 453;
    v25 = 1024;
    LODWORD(v26) = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableMixedRealityCamera=%d", buf, 0x18u);
  }

  self->super._sessionIsResuming = 1;
  [(RPMovieWriter *)self->_movieWriter notifyRecordingResumed];
  v8 = +[RPCaptureManager sharedInstance];
  v9 = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v11 = v10;
  v13 = v12;
  captureType = self->_captureType;
  v15 = [(RPSession *)self contextID];
  v16 = [NSArray arrayWithObject:v15];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005214C;
  v19[3] = &unk_1000A1840;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  LOBYTE(v18) = 1;
  [v8 startCaptureForDelegate:self forProcessID:0xFFFFFFFFLL shouldStartMicrophoneCapture:v9 windowSize:captureType captureType:v16 contextIDs:v7 mixedRealityCamera:v11 systemCapture:v13 didStartHandler:{v18, v19}];
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 474;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005239C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

@end
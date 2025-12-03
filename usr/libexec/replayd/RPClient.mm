@interface RPClient
- ($115C4C562B26FF47E01F9F4EA65B5887)attributedAuditToken;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientConnectionAuditToken;
- (RPClient)initWithConnection:(id)connection clientProxy:(id)proxy bundleIdentifier:(id)identifier;
- (unint64_t)getSaveToDestination:(id)destination;
- (void)beginPrivacyAccountingIntervalwithSource:(id)source withDestination:(id)destination;
- (void)dealloc;
- (void)discardInAppRecordingWithHandler:(id)handler;
- (void)endPrivacyAccountingInterval;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)handleMemoryWarningForCurrentActiveSession;
- (void)invalidate;
- (void)notifyClientWithOutputURL:(id)l error:(id)error withHandler:(id)handler;
- (void)pauseCurrentActiveSession;
- (void)pauseHQLRRecording;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppClip;
- (void)pauseInAppRecording;
- (void)reportCameraUsage:(int64_t)usage;
- (void)resumeCurrentActiveSessionWithContextID:(id)d completionHandler:(id)handler;
- (void)resumeHQLRSessionWithCompletionHandler:(id)handler;
- (void)resumeInAppBroadcastWithContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppCaptureWithContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppClipWithContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppRecordingWithContextID:(id)d completionHandler:(id)handler;
- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler;
- (void)resumeSystemRecordingWithCompletionHandler:(id)handler;
- (void)setAttributedAuditToken:(id *)token;
- (void)setClientConnectionAuditToken:(id *)token;
- (void)setClientPID:(int)d;
- (void)setupInAppBroadcastExtensionBundleID:(id)d broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)startHQLRWithSessionInfo:(id)info windowSize:(CGSize)size handler:(id)handler;
- (void)stopCurrentActiveSessionWithHandler:(id)handler;
- (void)stopHQLRSessionWithHandler:(id)handler;
- (void)stopInAppBroadcastSessionWithHandler:(id)handler;
- (void)stopInAppCaptureSessionWithHandler:(id)handler;
- (void)stopInAppClipSessionWithHandler:(id)handler;
- (void)stopInAppRecordingSessionWithHandler:(id)handler;
- (void)stopSystemBroadcastSessionWithHandler:(id)handler;
- (void)stopSystemRecordingSessionWithHandler:(id)handler;
- (void)stopSystemRecordingSessionWithURLHandler:(id)handler;
- (void)updateBroadcastURL:(id)l;
@end

@implementation RPClient

- (RPClient)initWithConnection:(id)connection clientProxy:(id)proxy bundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  proxyCopy = proxy;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = RPClient;
  v11 = [(RPClient *)&v26 init];
  if (v11)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "[RPClient initWithConnection:clientProxy:bundleIdentifier:]";
      *&buf[12] = 1024;
      *&buf[14] = 125;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    [v11 setClientProxy:proxyCopy];
    [v11 setClientBundleID:identifierCopy];
    [v11 setClientPID:{objc_msgSend(connectionCopy, "processIdentifier")}];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v12 = [SCProcessUtility hostApplicationWithAuditToken:buf bundleID:identifierCopy];
    [v11 setClientMainBundleID:v12];

    v13 = *(v11 + 1);
    *(v11 + 1) = 0;

    v14 = *(v11 + 2);
    *(v11 + 2) = 0;

    v15 = *(v11 + 3);
    *(v11 + 3) = 0;

    v16 = *(v11 + 4);
    *(v11 + 4) = 0;

    v17 = *(v11 + 5);
    *(v11 + 5) = 0;

    v18 = *(v11 + 6);
    *(v11 + 6) = 0;

    v19 = *(v11 + 7);
    *(v11 + 7) = 0;

    *(v11 + 16) = 0;
    if (connectionCopy)
    {
      [connectionCopy auditToken];
      v20 = *&buf[16];
      *(v11 + 120) = *buf;
      *(v11 + 136) = v20;
      [connectionCopy auditToken];
    }

    else
    {
      *(v11 + 136) = 0u;
      *(v11 + 120) = 0u;
      memset(buf, 0, 32);
    }

    v21 = *&buf[16];
    *(v11 + 152) = *buf;
    *(v11 + 168) = v21;
    v22 = *(v11 + 9);
    *(v11 + 9) = 0;

    v23 = dispatch_queue_create("com.apple.replaykit.AlertDispatchQueue", 0);
    v24 = *(v11 + 10);
    *(v11 + 10) = v23;
  }

  return v11;
}

- (void)invalidate
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPClient invalidate]";
    v5 = 1024;
    v6 = 167;
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v3, 0x1Cu);
  }

  [(RPSession *)self->_recordSession invalidate];
  [(RPSession *)self->_captureSession invalidate];
  [(RPSession *)self->_broadcastSession invalidate];
  [(RPSession *)self->_clipSession invalidate];
  [(RPSession *)self->_systemRecordSession invalidate];
  [(RPSession *)self->_systemBroadcastSession invalidate];
  [(RPSession *)self->_hqlrRecordingSession invalidate];
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPClient dealloc]";
    v6 = 1024;
    v7 = 188;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPClient;
  [(RPClient *)&v3 dealloc];
}

- (void)setClientPID:(int)d
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClient setClientPID:]";
    v7 = 1024;
    v8 = 192;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  self->_clientPID = d;
}

- (void)pauseCurrentActiveSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    currentActiveSession = self->_currentActiveSession;
    v7 = 136446722;
    v8 = "[RPClient pauseCurrentActiveSession]";
    v9 = 1024;
    v10 = 216;
    v11 = 1024;
    v12 = currentActiveSession;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pausing session type %d", &v7, 0x18u);
  }

  v4 = self->_currentActiveSession;
  if (v4 > 2)
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v5 = 24;
      }

      else
      {
        v5 = 32;
      }

      goto LABEL_24;
    }

    if (v4 == 5)
    {
      v5 = 40;
      goto LABEL_24;
    }

    if (v4 == 8)
    {
      v5 = 56;
      goto LABEL_24;
    }

LABEL_18:
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063C98(&self->_currentActiveSession);
    }

    return;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 16;
      goto LABEL_24;
    }

    if (v4 == 2)
    {
      v5 = 8;
LABEL_24:
      [*(&self->super.isa + v5) pauseSession];
      clientProxy = [(RPClient *)self clientProxy];
      [clientProxy recordingDidPause];

      return;
    }

    goto LABEL_18;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPClient pauseCurrentActiveSession]";
    v9 = 1024;
    v10 = 250;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d We don't have a current active session to pause, returning", &v7, 0x12u);
  }
}

- (void)reportCameraUsage:(int64_t)usage
{
  currentActiveSession = self->_currentActiveSession;
  if (currentActiveSession > 3)
  {
    if (currentActiveSession > 5)
    {
      if (currentActiveSession == 6)
      {
        systemBroadcastSession = self->_systemBroadcastSession;
      }

      else
      {
        if (currentActiveSession != 8)
        {
          return;
        }

        systemBroadcastSession = self->_hqlrRecordingSession;
      }
    }

    else if (currentActiveSession == 4)
    {
      systemBroadcastSession = self->_clipSession;
    }

    else
    {
      systemBroadcastSession = self->_systemRecordSession;
    }

    goto LABEL_21;
  }

  if (currentActiveSession > 1)
  {
    if (currentActiveSession == 2)
    {
      systemBroadcastSession = self->_recordSession;
    }

    else
    {
      systemBroadcastSession = self->_broadcastSession;
    }

LABEL_21:

    [systemBroadcastSession sessionReportCameraUsage:usage];
    return;
  }

  if (currentActiveSession)
  {
    if (currentActiveSession != 1)
    {
      return;
    }

    systemBroadcastSession = self->_captureSession;
    goto LABEL_21;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClient reportCameraUsage:]";
    v7 = 1024;
    v8 = 283;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d We don't have a current active session to report camera usage, returning", &v5, 0x12u);
  }
}

- (void)resumeCurrentActiveSessionWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    currentActiveSession = self->_currentActiveSession;
    v11 = 136446722;
    v12 = "[RPClient resumeCurrentActiveSessionWithContextID:completionHandler:]";
    v13 = 1024;
    v14 = 321;
    v15 = 1024;
    v16 = currentActiveSession;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resuming session type %d", &v11, 0x18u);
  }

  v9 = self->_currentActiveSession;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        [(RPClient *)self resumeInAppCaptureWithContextID:dCopy completionHandler:handlerCopy];
      }
    }

    else
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136446466;
        v12 = "[RPClient resumeCurrentActiveSessionWithContextID:completionHandler:]";
        v13 = 1024;
        v14 = 341;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d We don't have a current active session to resume, returning", &v11, 0x12u);
      }

      if (handlerCopy)
      {
        v10 = [NSError _rpUserErrorForCode:-5832 userInfo:0];
        (*(handlerCopy + 2))(handlerCopy, v10, 0, 0);
      }
    }
  }

  else
  {
    switch(v9)
    {
      case 4:
        [(RPClient *)self resumeInAppClipWithContextID:dCopy completionHandler:handlerCopy];
        break;
      case 3:
        [(RPClient *)self resumeInAppBroadcastWithContextID:dCopy completionHandler:handlerCopy];
        break;
      case 2:
        [(RPClient *)self resumeInAppRecordingWithContextID:dCopy completionHandler:handlerCopy];
        break;
    }
  }
}

- (void)notifyClientWithOutputURL:(id)l error:(id)error withHandler:(id)handler
{
  lCopy = l;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063D38();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446466;
      v14 = "[RPClient notifyClientWithOutputURL:error:withHandler:]";
      v15 = 1024;
      v16 = 358;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop session success, notifying client of session stoppped", &v13, 0x12u);
    }

    clientProxy = [(RPClient *)self clientProxy];
    v12 = [NSError _rpUserErrorForCode:-5806 userInfo:0];
    [clientProxy recordingDidStopWithError:v12 movieURL:lCopy];

    self->_currentActiveSession = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, errorCopy == 0);
  }
}

- (void)stopCurrentActiveSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "[RPClient stopCurrentActiveSessionWithHandler:]";
    v23 = 1024;
    v24 = 372;
    v25 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  currentActiveSession = self->_currentActiveSession;
  if (currentActiveSession > 3)
  {
    if (currentActiveSession <= 5)
    {
      if (currentActiveSession == 4)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10003A03C;
        v13[3] = &unk_1000A1840;
        v13[4] = self;
        v14 = handlerCopy;
        [(RPClient *)self stopInAppClipSessionWithHandler:v13];
        v6 = v14;
      }

      else
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10003A050;
        v11[3] = &unk_1000A1840;
        v11[4] = self;
        v12 = handlerCopy;
        [(RPClient *)self stopSystemRecordingSessionWithHandler:v11];
        v6 = v12;
      }

      goto LABEL_25;
    }

    if (currentActiveSession == 6)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10003A064;
      v9[3] = &unk_1000A1840;
      v9[4] = self;
      v10 = handlerCopy;
      [(RPClient *)self stopSystemBroadcastSessionWithHandler:v9];
      v6 = v10;
      goto LABEL_25;
    }

    if (currentActiveSession == 8)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10003A078;
      v7[3] = &unk_1000A1840;
      v7[4] = self;
      v8 = handlerCopy;
      [(RPClient *)self stopHQLRSessionWithHandler:v7];
      v6 = v8;
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (currentActiveSession > 1)
  {
    if (currentActiveSession == 2)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10003A000;
      v19[3] = &unk_1000A1868;
      v19[4] = self;
      v20 = handlerCopy;
      [(RPClient *)self stopInAppRecordingSessionWithHandler:v19];
      v6 = v20;
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10003A028;
      v15[3] = &unk_1000A1840;
      v15[4] = self;
      v16 = handlerCopy;
      [(RPClient *)self stopInAppBroadcastSessionWithHandler:v15];
      v6 = v16;
    }

    goto LABEL_25;
  }

  if (currentActiveSession)
  {
    if (currentActiveSession == 1)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10003A014;
      v17[3] = &unk_1000A1840;
      v17[4] = self;
      v18 = handlerCopy;
      [(RPClient *)self stopInAppCaptureSessionWithHandler:v17];
      v6 = v18;
LABEL_25:

      goto LABEL_26;
    }

LABEL_27:
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063DBC();
    }

    goto LABEL_26;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[RPClient stopCurrentActiveSessionWithHandler:]";
    v23 = 1024;
    v24 = 432;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d We don't have a current active session to stop", buf, 0x12u);
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }

LABEL_26:
}

- (void)stopInAppRecordingSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopInAppRecordingSessionWithHandler:]";
    v11 = 1024;
    v12 = 493;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping in-app recording", buf, 0x12u);
  }

  recordSession = self->_recordSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003A664;
  v7[3] = &unk_1000A1868;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPRecordSession *)recordSession stopRecordingWithHandler:v7];
}

- (void)pauseInAppRecording
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPClient pauseInAppRecording]";
    v5 = 1024;
    v6 = 509;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Pausing in-app recording", &v3, 0x12u);
  }

  [(RPRecordSession *)self->_recordSession pauseSession];
}

- (void)resumeInAppRecordingWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPClient resumeInAppRecordingWithContextID:completionHandler:]";
    v14 = 1024;
    v15 = 514;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Resuming in-app recording", buf, 0x12u);
  }

  recordSession = self->_recordSession;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A93C;
  v10[3] = &unk_1000A1840;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(RPSession *)recordSession resumeSessionWithWindowLayerContextID:dCopy completionHandler:v10];
}

- (void)discardInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient discardInAppRecordingWithHandler:]";
    v11 = 1024;
    v12 = 532;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Disarding in-app recording", buf, 0x12u);
  }

  recordSession = self->_recordSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AC3C;
  v7[3] = &unk_1000A1F28;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPRecordSession *)recordSession discardInAppRecordingWithHandler:v7];
}

- (void)stopInAppCaptureSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopInAppCaptureSessionWithHandler:]";
    v11 = 1024;
    v12 = 573;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping in-app capture", buf, 0x12u);
  }

  captureSession = self->_captureSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B1F8;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPCaptureSession *)captureSession stopCaptureWithHandler:v7];
}

- (void)pauseInAppCapture
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPClient pauseInAppCapture]";
    v5 = 1024;
    v6 = 589;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Pausing in-app capture", &v3, 0x12u);
  }

  [(RPCaptureSession *)self->_captureSession pauseSession];
}

- (void)resumeInAppCaptureWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPClient resumeInAppCaptureWithContextID:completionHandler:]";
    v14 = 1024;
    v15 = 594;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Resuming in-app capture", buf, 0x12u);
  }

  captureSession = self->_captureSession;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B4B4;
  v10[3] = &unk_1000A1840;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(RPSession *)captureSession resumeSessionWithWindowLayerContextID:dCopy completionHandler:v10];
}

- (void)setupInAppBroadcastExtensionBundleID:(id)d broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136446466;
    v25 = "[RPClient setupInAppBroadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v26 = 1024;
    v27 = 613;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v24, 0x12u);
  }

  broadcastSession = self->_broadcastSession;
  if (broadcastSession)
  {
    clientProxy = [(RPClient *)self clientProxy];
    clientPID = self->_clientPID;
    clientBundleID = [(RPClient *)self clientBundleID];
    [(RPSession *)broadcastSession updateClientProxy:clientProxy callingPID:clientPID bundleID:clientBundleID];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136446466;
      v25 = "[RPClient setupInAppBroadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
      v26 = 1024;
      v27 = 616;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d we dont have a broadcast session, creating a new one", &v24, 0x12u);
    }

    v18 = [RPBroadcastSession alloc];
    clientProxy = [(RPClient *)self clientProxy];
    v19 = self->_clientPID;
    clientBundleID = [(RPClient *)self clientBundleID];
    v20 = [(RPBroadcastSession *)v18 initWithClientProxy:clientProxy callingPID:v19 bundleID:clientBundleID delegate:self];
    v21 = self->_broadcastSession;
    self->_broadcastSession = v20;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136446466;
    v25 = "[RPClient setupInAppBroadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v26 = 1024;
    v27 = 623;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting up broadcast session", &v24, 0x12u);
  }

  v22 = self->_broadcastSession;
  clientBundleID2 = [(RPClient *)self clientBundleID];
  [(RPBroadcastSession *)v22 setupBroadcastWithHostBundleID:clientBundleID2 broadcastExtensionBundleID:dCopy broadcastConfigurationData:dataCopy userInfo:infoCopy handler:handlerCopy];
}

- (void)stopInAppBroadcastSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopInAppBroadcastSessionWithHandler:]";
    v11 = 1024;
    v12 = 656;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping in-app broadcast", buf, 0x12u);
  }

  broadcastSession = self->_broadcastSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003BDBC;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPBroadcastSession *)broadcastSession stopBroadcastWithHandler:v7];
}

- (void)pauseInAppBroadcast
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPClient pauseInAppBroadcast]";
    v5 = 1024;
    v6 = 672;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Pausing in-app broadcast", &v3, 0x12u);
  }

  [(RPBroadcastSession *)self->_broadcastSession pauseSession];
}

- (void)updateBroadcastURL:(id)l
{
  lCopy = l;
  broadcastSession = self->_broadcastSession;
  if (broadcastSession || (broadcastSession = self->_systemBroadcastSession) != 0)
  {
    [broadcastSession updateBroadcastURL:lCopy];
  }

  _objc_release_x1();
}

- (void)resumeInAppBroadcastWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPClient resumeInAppBroadcastWithContextID:completionHandler:]";
    v14 = 1024;
    v15 = 687;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Resuming in-app broadcast", buf, 0x12u);
  }

  broadcastSession = self->_broadcastSession;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003C0D8;
  v10[3] = &unk_1000A1840;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(RPBroadcastSession *)broadcastSession resumeSessionWithWindowLayerContextID:dCopy completionHandler:v10];
}

- (void)stopInAppClipSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopInAppClipSessionWithHandler:]";
    v11 = 1024;
    v12 = 735;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping in-app clip buffering", buf, 0x12u);
  }

  clipSession = self->_clipSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003C774;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPClipSession *)clipSession stopClipWithHandler:v7];
}

- (void)pauseInAppClip
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPClient pauseInAppClip]";
    v5 = 1024;
    v6 = 751;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Pausing in-app clip buffering", &v3, 0x12u);
  }

  [(RPClipSession *)self->_clipSession pauseSession];
}

- (void)resumeInAppClipWithContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPClient resumeInAppClipWithContextID:completionHandler:]";
    v14 = 1024;
    v15 = 756;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Resuming in-app clip buffering", buf, 0x12u);
  }

  clipSession = self->_clipSession;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003CA30;
  v10[3] = &unk_1000A1840;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(RPSession *)clipSession resumeSessionWithWindowLayerContextID:dCopy completionHandler:v10];
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[RPClient exportClipToURL:duration:completionHandler:]";
    v16 = 1024;
    v17 = 774;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  clipSession = self->_clipSession;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003CD5C;
  v12[3] = &unk_1000A11B8;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(RPClipSession *)clipSession exportClipToURL:lCopy duration:v12 completionHandler:duration];
}

- (void)stopSystemRecordingSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopSystemRecordingSessionWithHandler:]";
    v11 = 1024;
    v12 = 829;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping System Recording", buf, 0x12u);
  }

  systemRecordSession = self->_systemRecordSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D3A0;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPSystemRecordSession *)systemRecordSession stopSystemRecordingWithHandler:v7];
}

- (void)stopSystemRecordingSessionWithURLHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopSystemRecordingSessionWithURLHandler:]";
    v11 = 1024;
    v12 = 845;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping System Recording with URL handler", buf, 0x12u);
  }

  systemRecordSession = self->_systemRecordSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D574;
  v7[3] = &unk_1000A1868;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPSystemRecordSession *)systemRecordSession stopSystemRecordingWithURLHandler:v7];
}

- (void)resumeSystemRecordingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient resumeSystemRecordingWithCompletionHandler:]";
    v11 = 1024;
    v12 = 863;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  systemRecordSession = self->_systemRecordSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D76C;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPSession *)systemRecordSession resumeSessionWithWindowLayerContextID:@"-1" completionHandler:v7];
}

- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "[RPClient setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v29 = 1024;
    v30 = 880;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  systemBroadcastSession = self->_systemBroadcastSession;
  if (systemBroadcastSession)
  {
    clientProxy = [(RPClient *)self clientProxy];
    clientPID = self->_clientPID;
    clientBundleID = [(RPClient *)self clientBundleID];
    [(RPSession *)systemBroadcastSession updateClientProxy:clientProxy callingPID:clientPID bundleID:clientBundleID];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v28 = "[RPClient setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
      v29 = 1024;
      v30 = 883;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d we dont have a system broadcast session, creating a new one", buf, 0x12u);
    }

    v20 = [RPSystemBroadcastSession alloc];
    clientProxy = [(RPClient *)self clientProxy];
    v21 = self->_clientPID;
    clientBundleID = [(RPClient *)self clientBundleID];
    v22 = [(RPSystemBroadcastSession *)v20 initWithClientProxy:clientProxy callingPID:v21 bundleID:clientBundleID delegate:self];
    v23 = self->_systemBroadcastSession;
    self->_systemBroadcastSession = v22;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "[RPClient setupSystemBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v29 = 1024;
    v30 = 890;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting up system broadcast session", buf, 0x12u);
  }

  v24 = self->_systemBroadcastSession;
  clientBundleID2 = [(RPClient *)self clientBundleID];
  [(RPSystemBroadcastSession *)v24 setupSystemBroadcastWithHostBundleID:clientBundleID2 broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy handler:handlerCopy];
}

- (void)stopSystemBroadcastSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopSystemBroadcastSessionWithHandler:]";
    v11 = 1024;
    v12 = 921;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping system broadcast", buf, 0x12u);
  }

  systemBroadcastSession = self->_systemBroadcastSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003DFBC;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPSystemBroadcastSession *)systemBroadcastSession stopSystemBroadcastWithHandler:v7];
}

- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient resumeSystemBroadcastWithCompletionHandler:]";
    v11 = 1024;
    v12 = 937;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  systemBroadcastSession = self->_systemBroadcastSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E198;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPSystemBroadcastSession *)systemBroadcastSession resumeSessionWithWindowLayerContextID:@"-1" completionHandler:v7];
}

- (unint64_t)getSaveToDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy isEqualToString:@"com.apple.replaykit.photos"])
  {
    v4 = 0;
  }

  else if ([destinationCopy isEqualToString:@"com.apple.replaykit.saveToFiles"])
  {
    v4 = 1;
  }

  else if ([destinationCopy isEqualToString:@"com.apple.replaykit.saveToVoiceMemos"])
  {
    v4 = 3;
  }

  else if ([destinationCopy isEqualToString:@"com.apple.replaykit.saveToNotes"])
  {
    v4 = 2;
  }

  else if ([destinationCopy isEqualToString:@"com.apple.replaykit.saveToURL"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)startHQLRWithSessionInfo:(id)info windowSize:(CGSize)size handler:(id)handler
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[RPClient startHQLRWithSessionInfo:windowSize:handler:]";
    v35 = 1024;
    v36 = 972;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Starting HQLR recording session", buf, 0x12u);
  }

  hqlrRecordingSession = self->_hqlrRecordingSession;
  if (hqlrRecordingSession)
  {
    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v34 = "[RPClient startHQLRWithSessionInfo:windowSize:handler:]";
        v35 = 1024;
        v36 = 977;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d updating existing HQLR session", buf, 0x12u);
      }

      hqlrRecordingSession = self->_hqlrRecordingSession;
    }

    clientProxy = [(RPClient *)self clientProxy];
    clientPID = self->_clientPID;
    clientBundleID = [(RPClient *)self clientBundleID];
    [(RPSession *)hqlrRecordingSession updateClientProxy:clientProxy callingPID:clientPID bundleID:clientBundleID];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v34 = "[RPClient startHQLRWithSessionInfo:windowSize:handler:]";
      v35 = 1024;
      v36 = 974;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no HQLR session, will create a new one", buf, 0x12u);
    }

    v14 = [RPHighQualityLocalRecordingSession alloc];
    clientProxy = [(RPClient *)self clientProxy];
    v15 = self->_clientPID;
    clientBundleID = [(RPClient *)self clientBundleID];
    v16 = [(RPSession *)v14 initWithClientProxy:clientProxy sessionType:8 callingPID:v15 bundleID:clientBundleID delegate:self];
    v17 = self->_hqlrRecordingSession;
    self->_hqlrRecordingSession = v16;
  }

  v18 = [infoCopy objectForKeyedSubscript:@"saveToDestination"];
  v19 = [(RPClient *)self getSaveToDestination:v18];

  v20 = [infoCopy objectForKeyedSubscript:@"cameraDeviceID"];
  v21 = [infoCopy objectForKeyedSubscript:@"microphoneDeviceID"];
  v22 = [infoCopy objectForKeyedSubscript:@"audioOnly"];
  bOOLValue = [v22 BOOLValue];

  if (v19 == 4)
  {
    v24 = [NSURL alloc];
    v25 = [infoCopy objectForKeyedSubscript:@"fileURL"];
    v26 = [v24 initWithString:v25];

    v27 = [infoCopy objectForKeyedSubscript:@"hqlrSandboxTokenForFileURL"];
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v28 = self->_hqlrRecordingSession;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10003E798;
  v31[3] = &unk_1000A1840;
  v31[4] = self;
  v32 = handlerCopy;
  v29 = handlerCopy;
  [(RPHighQualityLocalRecordingSession *)v28 startHQLRRecordingWithMicrophoneID:v21 cameraDeviceID:v20 destination:v19 fileURL:v26 sandboxExtensionTokenForFileURL:v27 audioOnly:bOOLValue windowSize:width handler:height, v31];
}

- (void)stopHQLRSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient stopHQLRSessionWithHandler:]";
    v11 = 1024;
    v12 = 1008;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stopping HQLR session", buf, 0x12u);
  }

  hqlrRecordingSession = self->_hqlrRecordingSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E994;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPHighQualityLocalRecordingSession *)hqlrRecordingSession stopHQLRRecordingWithHandler:v7];
}

- (void)pauseHQLRRecording
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPClient pauseHQLRRecording]";
    v5 = 1024;
    v6 = 1024;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Pausing HQLR recording", &v3, 0x12u);
  }

  [(RPHighQualityLocalRecordingSession *)self->_hqlrRecordingSession pauseSession];
}

- (void)resumeHQLRSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPClient resumeHQLRSessionWithCompletionHandler:]";
    v11 = 1024;
    v12 = 1029;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  hqlrRecordingSession = self->_hqlrRecordingSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EC38;
  v7[3] = &unk_1000A1840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(RPSession *)hqlrRecordingSession resumeSessionWithWindowLayerContextID:@"-1" completionHandler:v7];
}

- (void)handleMemoryWarningForCurrentActiveSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClient handleMemoryWarningForCurrentActiveSession]";
    v7 = 1024;
    v8 = 1045;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  currentActiveSession = self->_currentActiveSession;
  if (currentActiveSession > 2)
  {
    if (currentActiveSession > 5)
    {
      if (currentActiveSession == 6)
      {
        systemBroadcastSession = self->_systemBroadcastSession;
      }

      else
      {
        if (currentActiveSession != 8)
        {
          return;
        }

        systemBroadcastSession = self->_hqlrRecordingSession;
      }
    }

    else if (currentActiveSession == 3)
    {
      systemBroadcastSession = self->_broadcastSession;
    }

    else
    {
      if (currentActiveSession != 5)
      {
        return;
      }

      systemBroadcastSession = self->_systemRecordSession;
    }

    goto LABEL_22;
  }

  if (currentActiveSession)
  {
    if (currentActiveSession == 1)
    {
      systemBroadcastSession = self->_captureSession;
    }

    else
    {
      if (currentActiveSession != 2)
      {
        return;
      }

      systemBroadcastSession = self->_recordSession;
    }

LABEL_22:
    [systemBroadcastSession handleMemoryWarning];
    return;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClient handleMemoryWarningForCurrentActiveSession]";
    v7 = 1024;
    v8 = 1073;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d We don't have a current active session.", &v5, 0x12u);
  }
}

- (void)beginPrivacyAccountingIntervalwithSource:(id)source withDestination:(id)destination
{
  sourceCopy = source;
  destinationCopy = destination;
  if (destinationCopy)
  {
    v8 = [PAApplication applicationWithType:0 identifier:destinationCopy];
    if (sourceCopy)
    {
LABEL_3:
      v9 = [PAApplication applicationWithType:0 identifier:sourceCopy];
      v10 = +[PAAccessLogger sharedInstance];
      v11 = [PAReplayKitAccess accessWithAccessor:v9 fromBroadcaster:v8];
      v12 = [v10 beginIntervalForAccess:v11];
      accessInterval = self->_accessInterval;
      self->_accessInterval = v12;

      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000648B0();
  }

LABEL_8:
}

- (void)endPrivacyAccountingInterval
{
  accessInterval = self->_accessInterval;
  if (accessInterval)
  {
    [(PAAccessInterval *)accessInterval end];
    v4 = self->_accessInterval;
    self->_accessInterval = 0;
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientConnectionAuditToken
{
  v3 = *&self[4].var0[2];
  *retstr->var0 = *&self[3].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setClientConnectionAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_clientConnectionAuditToken.val[4] = *&token->var0[4];
  *self->_clientConnectionAuditToken.val = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)attributedAuditToken
{
  v3 = *&self[5].var0[2];
  *retstr->var0 = *&self[4].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAttributedAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_attributedAuditToken.val[4] = *&token->var0[4];
  *self->_attributedAuditToken.val = v3;
}

@end
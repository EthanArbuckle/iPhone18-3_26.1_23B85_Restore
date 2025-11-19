@interface RPHighQualityLocalRecordingSession
- (BOOL)hasSufficientFreeSpaceForRecording;
- (BOOL)hasSufficientSpaceForCurrentRecording;
- (BOOL)isCallActive;
- (id)dispatchCaptureQueue;
- (id)getSharedAVSystemController;
- (id)outputPath;
- (id)saveDestinationString;
- (id)stringWithTimeInterval:(double)a3;
- (void)addCallStatusObservers;
- (void)addMediaServicesResetObserver;
- (void)captureDidFailWithError:(id)a3;
- (void)clearBackgroundActivityUI;
- (void)clearFrontmostAudioOrVideoCall;
- (void)clearSystemRecordingUI;
- (void)executeOnMainQueue:(id)a3;
- (void)handleDeviceLockedWarning;
- (void)handleMediaServicesReset:(id)a3;
- (void)handleMemoryWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)a3;
- (void)handleResumeContextIDFailure;
- (void)handleSystemAlertStop;
- (void)handleTUCallCenterNotification:(id)a3;
- (void)handleTimerDidUpdate:(id)a3;
- (void)pauseRecordingTimer;
- (void)pauseSession;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3 transform:(CGAffineTransform *)a4;
- (void)removeCallStatusObservers;
- (void)resumeRecordingTimer;
- (void)setupBackgroundActivityUI;
- (void)startHQLRRecordingWithMicrophoneID:(id)a3 cameraDeviceID:(id)a4 destination:(unint64_t)a5 fileURL:(id)a6 sandboxExtensionTokenForFileURL:(id)a7 audioOnly:(BOOL)a8 windowSize:(CGSize)a9 handler:(id)a10;
- (void)startRecordingTimer;
- (void)stopHQLRRecordingWithHandler:(id)a3;
- (void)stopRecordingTimer;
- (void)updateCallActive:(id)a3;
- (void)updateFrontmostAudioOrVideoCall;
- (void)updateRecordingTimer:(id)a3;
@end

@implementation RPHighQualityLocalRecordingSession

- (id)outputPath
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 outputPath:3 bundleID:0];

  return v3;
}

- (void)startHQLRRecordingWithMicrophoneID:(id)a3 cameraDeviceID:(id)a4 destination:(unint64_t)a5 fileURL:(id)a6 sandboxExtensionTokenForFileURL:(id)a7 audioOnly:(BOOL)a8 windowSize:(CGSize)a9 handler:(id)a10
{
  height = a9.height;
  width = a9.width;
  v18 = a4;
  v19 = a6;
  v55 = a7;
  v20 = a10;
  v21 = a3;
  [(RPSession *)self setWindowSize:width, height];
  v22 = [v21 copy];

  microphoneDeviceID = self->_microphoneDeviceID;
  self->_microphoneDeviceID = v22;

  v24 = [v18 copy];
  cameraDeviceID = self->_cameraDeviceID;
  self->_cameraDeviceID = v24;

  self->_saveDestination = a5;
  objc_storeStrong(&self->_fileURL, a6);
  objc_storeStrong(&self->_sandboxExtensionTokenForFileURL, a7);
  self->_audioOnly = a8;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [NSNumber numberWithUnsignedInt:[(RPSession *)self sessionState]];
    v27 = [(RPHighQualityLocalRecordingSession *)self saveDestinationString];
    *buf = 136447234;
    v62 = "[RPHighQualityLocalRecordingSession startHQLRRecordingWithMicrophoneID:cameraDeviceID:destination:fileURL:sandboxExtensionTokenForFileURL:audioOnly:windowSize:handler:]";
    v63 = 1024;
    v64 = 84;
    v65 = 2112;
    v66 = self;
    v67 = 2112;
    v68 = v26;
    v69 = 2112;
    v70 = v27;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@ starting in session state=%@ saveDestination=%@", buf, 0x30u);
  }

  [(RPSession *)self setMicrophoneEnabled:v21 != 0];
  self->_waitingForFirstVideoSample = v18 != 0;
  v28 = [(RPSession *)self checkCaptureRequirementsWithMicrophoneEnabled:v21 != 0 cameraEnabled:width windowSize:height];
  if (v28)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000649E0();
    }

    if ([v28 code] == -5805)
    {
      v29 = [NSError _rpUserErrorForCode:-5805 userInfo:0];
      [(RPSession *)self showAlertRecordingCaptureSessionWithError:v29];
    }

    [(RPSession *)self reportSessionEndReason:v28];
    v20[2](v20, v28);
  }

  else
  {
    v30 = [(RPSession *)self contextID];
    [(RPSession *)self windowSize];
    v59.receiver = self;
    v59.super_class = RPHighQualityLocalRecordingSession;
    [(RPSession *)&v59 startWithContextID:v30 windowSize:?];

    v31 = +[AVSystemController sharedInstance];
    systemController = self->_systemController;
    self->_systemController = v31;

    v60 = AVSystemController_CallIsActiveDidChangeNotification;
    v54 = [NSArray arrayWithObjects:&v60 count:1];
    [AVSystemController setAttribute:"setAttribute:forKey:error:" forKey:? error:?];
    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:self selector:"updateCallActive:" name:AVSystemController_CallIsActiveDidChangeNotification object:self->_systemController];

    v34 = [(AVSystemController *)self->_systemController attributeForKey:AVSystemController_CallIsActive];
    self->_callActive = [v34 BOOLValue];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      callActive = self->_callActive;
      *buf = 136446722;
      v62 = "[RPHighQualityLocalRecordingSession startHQLRRecordingWithMicrophoneID:cameraDeviceID:destination:fileURL:sandboxExtensionTokenForFileURL:audioOnly:windowSize:handler:]";
      v63 = 1024;
      v64 = 112;
      v65 = 1024;
      LODWORD(v66) = callActive;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d initializing call active to %d", buf, 0x18u);
    }

    if ([(RPSession *)self getAcknowledgementAlertResultsWithMicrophone:v21 != 0 cameraEnabled:v18 != 0])
    {
      v36 = +[RPFeatureFlagUtility sharedInstance];
      v37 = [v36 systemBannerEnabled];

      if (v37)
      {
        v38 = +[RPAngelProxy sharedInstance];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100041074;
        v58[3] = &unk_1000A2330;
        v58[4] = self;
        [v38 connectToAngelWithCompletionHandler:v58];
      }

      v39 = +[RPFeatureFlagUtility sharedInstance];
      v40 = [v39 replayKitScreenRecordingHEVC];
      v41 = &AVVideoCodecTypeHEVC;
      if (!v40)
      {
        v41 = &AVVideoCodecTypeH264;
      }

      v42 = *v41;

      v43 = [RPMovieWriter alloc];
      [(RPSession *)self windowSize];
      v45 = v44;
      v47 = v46;
      v48 = [(RPHighQualityLocalRecordingSession *)self outputPath];
      v49 = [(RPMovieWriter *)v43 initWithWindowSize:v48 outputPath:v42 videoCodecType:1718378851 audioCodecType:0 assetWriterSetting:v45, v47];
      movieWriter = self->_movieWriter;
      self->_movieWriter = v49;

      [(RPMovieWriter *)self->_movieWriter setIsSparselyInterleaved:1];
      v51 = self->_movieWriter;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000411D8;
      v56[3] = &unk_1000A1840;
      v56[4] = self;
      v52 = v20;

      v57 = v52;
      [(RPMovieWriter *)v51 startWritingHandler:v56];
    }

    else
    {
      [(RPSession *)self setSessionState:3];
      v53 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      v20[2](v20, v53);
    }
  }
}

- (id)saveDestinationString
{
  saveDestination = self->_saveDestination;
  if (saveDestination == 4)
  {
    v5 = [(NSURL *)self->_fileURL absoluteString];
  }

  else if (saveDestination == 1)
  {
    v5 = @"Files";
  }

  else
  {
    v5 = @"Photos";
  }

  return v5;
}

- (void)stopHQLRRecordingWithHandler:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v16 = "[RPHighQualityLocalRecordingSession stopHQLRRecordingWithHandler:]";
    v17 = 1024;
    v18 = 224;
    v19 = 2048;
    v20 = self;
    v21 = 1024;
    v22 = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  [(RPSession *)self setSessionState:2];
  v5 = +[RPCaptureManager sharedInstance];
  [v5 stopCaptureForDelegate:self];

  if (self->_movieWriter)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000418EC;
    v13[3] = &unk_1000A1840;
    v13[4] = self;
    v14 = v4;
    v6 = objc_retainBlock(v13);
    v7 = v6;
    saveDestination = self->_saveDestination;
    if (saveDestination <= 1)
    {
      if (saveDestination)
      {
        if (saveDestination == 1)
        {
          movieWriter = self->_movieWriter;
          sessionID = self->_sessionID;
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100041A70;
          v11[3] = &unk_1000A1818;
          v12 = v6;
          [(RPMovieWriter *)movieWriter finishWritingAndSaveToDownloadsWithSessionID:sessionID mixAudioTracks:0 handler:v11];
        }
      }

      else
      {
        [(RPMovieWriter *)self->_movieWriter finishWritingAndSaveToCameraRollWithSessionID:self->_sessionID mixAudioTracks:0 handler:v6];
      }
    }

    else
    {
      switch(saveDestination)
      {
        case 2:
          if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100064C94();
          }

          break;
        case 3:
          if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100064C0C();
          }

          break;
        case 4:
          [(RPMovieWriter *)self->_movieWriter finishWritingAndSaveToURL:self->_fileURL sandboxExtensionTokenForFileURL:self->_sandboxExtensionTokenForFileURL withHandler:v6];
          break;
      }
    }
  }

  else
  {
    [(RPSession *)self setSessionState:3];
    [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064D1C();
    }

    (*(v4 + 2))(v4, 0);
  }

  [(RPHighQualityLocalRecordingSession *)self clearSystemRecordingUI];
  [(RPHighQualityLocalRecordingSession *)self removeCallStatusObservers];
  [(RPHighQualityLocalRecordingSession *)self clearFrontmostAudioOrVideoCall];
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6970 != -1)
  {
    sub_100064DA4();
  }

  v3 = qword_1000B6968;

  return v3;
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3 transform:(CGAffineTransform *)a4
{
  if ([(RPSession *)self sessionState]== 4)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 136446466;
      *&v9[4] = "[RPHighQualityLocalRecordingSession processSampleBuffer:transform:]";
      *&v9[12] = 1024;
      *&v9[14] = 326;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session is paused discard sample", v9, 0x12u);
    }
  }

  else
  {
    movieWriter = self->_movieWriter;
    v8 = *&a4->c;
    *v9 = *&a4->a;
    *&v9[16] = v8;
    v10 = *&a4->tx;
    [(RPMovieWriter *)movieWriter appendVideoSampleBuffer:a3 withWindowTransform:v9];
  }
}

- (void)captureDidFailWithError:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100041ED0;
  v5[3] = &unk_1000A1348;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(RPHighQualityLocalRecordingSession *)self stopHQLRRecordingWithHandler:v5];
}

- (void)addMediaServicesResetObserver
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = +[AVAudioSession sharedInstance];
  [v4 addObserver:self selector:"handleMediaServicesReset:" name:AVAudioSessionMediaServicesWereResetNotification object:v3];
}

- (void)handleMediaServicesReset:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064E64();
  }

  v5 = +[AVSystemController sharedInstance];
  systemController = self->_systemController;
  self->_systemController = v5;

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000420F0;
    v7[3] = &unk_1000A1BC0;
    v7[4] = self;
    [(RPHighQualityLocalRecordingSession *)self stopHQLRRecordingWithHandler:v7];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession handleDeviceLockedWarning]";
    v6 = 1024;
    v7 = 382;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004233C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPHighQualityLocalRecordingSession *)self stopHQLRRecordingWithHandler:v3];
  }
}

- (void)handleMemoryWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession handleMemoryWarning]";
    v6 = 1024;
    v7 = 394;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100042550;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPHighQualityLocalRecordingSession *)self stopHQLRRecordingWithHandler:v3];
  }
}

- (BOOL)hasSufficientFreeSpaceForRecording
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 _srDeviceHasSufficientFreeSpaceForRecording];

  return v3;
}

- (BOOL)hasSufficientSpaceForCurrentRecording
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 _srDeviceHasSufficientSpaceForCurrentRecording];

  return v3;
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSNumber numberWithUnsignedInt:[(RPSession *)self sessionState]];
    *buf = 136446978;
    v7 = "[RPHighQualityLocalRecordingSession pauseSession]";
    v8 = 1024;
    v9 = 416;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p pausing in session state %@", buf, 0x26u);
  }

  if ([(RPSession *)self sessionState]== 1)
  {
    v4 = +[RPCaptureManager sharedInstance];
    [v4 stopCaptureForDelegate:self];

    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    [(RPMovieWriter *)self->_movieWriter notifyRecordingMayBeStopped];
    v5.receiver = self;
    v5.super_class = RPHighQualityLocalRecordingSession;
    [(RPSession *)&v5 pauseSession];
    [(RPHighQualityLocalRecordingSession *)self pauseRecordingTimer];
  }
}

- (void)handleSystemAlertStop
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession handleSystemAlertStop]";
    v6 = 1024;
    v7 = 430;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000429A0;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPHighQualityLocalRecordingSession *)self stopHQLRRecordingWithHandler:v3];
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
    v5 = [NSNumber numberWithUnsignedInt:[(RPSession *)self sessionState]];
    *buf = 136446978;
    v18 = "[RPHighQualityLocalRecordingSession handleResumeCaptureWithCompletionHandler:]";
    v19 = 1024;
    v20 = 457;
    v21 = 2048;
    v22 = self;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %@", buf, 0x26u);
  }

  self->super._sessionIsResuming = 1;
  [(RPMovieWriter *)self->_movieWriter notifyRecordingResumed];
  v6 = +[RPCaptureManager sharedInstance];
  microphoneDeviceID = self->_microphoneDeviceID;
  cameraDeviceID = self->_cameraDeviceID;
  [(RPSession *)self windowSize];
  v10 = v9;
  v12 = v11;
  audioOnly = self->_audioOnly;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100042D78;
  v15[3] = &unk_1000A1840;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  [v6 startHQLRCaptureForDelegate:self micDeviceID:microphoneDeviceID cameraDeviceID:cameraDeviceID windowSize:audioOnly audioOnly:v15 didStartHandler:{v10, v12}];
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 487;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100042FE4;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPHighQualityLocalRecordingSession *)self stopHQLRRecordingWithHandler:v3];
  }
}

- (void)executeOnMainQueue:(id)a3
{
  v3 = a3;
  if (+[NSThread isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043170;
    block[3] = &unk_1000A1F28;
    v5 = v3;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)updateFrontmostAudioOrVideoCall
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000431EC;
  v2[3] = &unk_1000A1088;
  v2[4] = self;
  [(RPHighQualityLocalRecordingSession *)self executeOnMainQueue:v2];
}

- (void)clearFrontmostAudioOrVideoCall
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100043378;
  v2[3] = &unk_1000A1088;
  v2[4] = self;
  [(RPHighQualityLocalRecordingSession *)self executeOnMainQueue:v2];
}

- (void)addCallStatusObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleTUCallCenterNotification:" name:TUCallCenterCallConnectedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleTUCallCenterNotification:" name:TUCallUpgradedToVideoNotification object:0];
}

- (void)removeCallStatusObservers
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPHighQualityLocalRecordingSession removeCallStatusObservers]";
    v7 = 1024;
    v8 = 543;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:TUCallCenterCallConnectedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:TUCallUpgradedToVideoNotification object:0];
}

- (void)handleTUCallCenterNotification:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043660;
  v5[3] = &unk_1000A23A0;
  v4 = a3;
  v6 = v4;
  v7 = self;
  v8 = &v9;
  [(RPHighQualityLocalRecordingSession *)self executeOnMainQueue:v5];
  if (*(v10 + 24) == 1)
  {
    [(RPHighQualityLocalRecordingSession *)self handleSystemAlertStop];
  }

  _Block_object_dispose(&v9, 8);
}

- (id)getSharedAVSystemController
{
  systemController = self->_systemController;
  if (!systemController)
  {
    v4 = +[AVSystemController sharedAVSystemController];
    v5 = self->_systemController;
    self->_systemController = v4;

    systemController = self->_systemController;
  }

  return systemController;
}

- (void)updateCallActive:(id)a3
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPHighQualityLocalRecordingSession updateCallActive:]";
    v7 = 1024;
    v8 = 601;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPHighQualityLocalRecordingSession *)self isCallActive];
}

- (BOOL)isCallActive
{
  v3 = +[AVSystemController sharedInstance];
  v4 = [v3 attributeForKey:AVSystemController_CallIsActive];

  callActive = self->_callActive;
  v6 = [v4 BOOLValue];
  self->_callActive = v6;
  if (dword_1000B6840 <= 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_callActive;
      v9 = 136446978;
      v10 = "[RPHighQualityLocalRecordingSession isCallActive]";
      v11 = 1024;
      v12 = 610;
      v13 = 1024;
      v14 = callActive;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Updating callIsActive from %d to %d", &v9, 0x1Eu);
    }

    v6 = self->_callActive;
  }

  if (callActive != v6)
  {
    LOBYTE(callActive) = v6;
    if ((v6 & 1) == 0)
    {
      [(RPHighQualityLocalRecordingSession *)self handleSystemAlertStop];
      LOBYTE(callActive) = self->_callActive;
    }
  }

  return callActive & 1;
}

- (void)clearSystemRecordingUI
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession clearSystemRecordingUI]";
    v6 = 1024;
    v7 = 631;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPHighQualityLocalRecordingSession overriding clearSystemRecordingUI to clear background activity", buf, 0x12u);
  }

  v3.receiver = self;
  v3.super_class = RPHighQualityLocalRecordingSession;
  [(RPSession *)&v3 clearSystemRecordingUI];
  [(RPHighQualityLocalRecordingSession *)self clearBackgroundActivityUI];
}

- (void)setupBackgroundActivityUI
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPHighQualityLocalRecordingSession setupBackgroundActivityUI]";
    v14 = 1024;
    v15 = 637;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting up purple background activity for HQLR recording", buf, 0x12u);
  }

  v3 = [[RPBackgroundActivity alloc] initWithBackgroundActivityIdentifier:@"com.apple.systemstatus.background-activity.replaykit.callrecording.recording"];
  [(RPSession *)self setBackgroundActivity:v3];

  objc_initWeak(&location, self);
  v4 = [(RPSession *)self backgroundActivity];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100044164;
  v9 = &unk_1000A15E8;
  objc_copyWeak(&v10, &location);
  [v4 activateWithUserInteractionHandler:&v6];

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPHighQualityLocalRecordingSession setupBackgroundActivityUI]";
    v14 = 1024;
    v15 = 651;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity activated successfully", buf, 0x12u);
  }

  v5 = [NSDate date:v6];
  [v5 timeIntervalSinceReferenceDate];
  [(RPSession *)self setRecordingStartTime:?];

  self->_totalPausedTime = 0.0;
  [(RPHighQualityLocalRecordingSession *)self startRecordingTimer];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)clearBackgroundActivityUI
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession clearBackgroundActivityUI]";
    v6 = 1024;
    v7 = 660;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clearing background activity UI", buf, 0x12u);
  }

  [(RPHighQualityLocalRecordingSession *)self stopRecordingTimer];
  v3.receiver = self;
  v3.super_class = RPHighQualityLocalRecordingSession;
  [(RPSession *)&v3 clearBackgroundActivityUI];
}

- (void)startRecordingTimer
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession startRecordingTimer]";
    v6 = 1024;
    v7 = 668;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Starting recording timer for Dynamic Island", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004445C;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stopRecordingTimer
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPHighQualityLocalRecordingSession stopRecordingTimer]";
    v6 = 1024;
    v7 = 681;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Stopping recording timer", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044634;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateRecordingTimer:(id)a3
{
  if (self->_timerStartDate)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:self->_timerStartDate];
    v6 = v5 - self->_totalPausedTime;

    v7 = [(RPHighQualityLocalRecordingSession *)self stringWithTimeInterval:v6];
    [(RPHighQualityLocalRecordingSession *)self handleTimerDidUpdate:v7];
  }
}

- (id)stringWithTimeInterval:(double)a3
{
  v4 = objc_alloc_init(NSDateComponentsFormatter);
  [v4 setUnitsStyle:0];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  [v4 setMaximumUnitCount:2];
  if (a3 >= 60.0)
  {
    v5 = 240;
  }

  else
  {
    [v4 setZeroFormattingBehavior:0x10000];
    v5 = 192;
  }

  [v4 setAllowedUnits:v5];
  v6 = [v4 stringFromTimeInterval:a3];

  return v6;
}

- (void)pauseRecordingTimer
{
  v3 = [(RPSession *)self elapsedTimeTimer];
  if (v3)
  {
    timerStartDate = self->_timerStartDate;

    if (timerStartDate)
    {
      v5 = +[NSDate date];
      timerPauseDate = self->_timerPauseDate;
      self->_timerPauseDate = v5;

      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136446466;
        v8 = "[RPHighQualityLocalRecordingSession pauseRecordingTimer]";
        v9 = 1024;
        v10 = 718;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Pausing recording timer", &v7, 0x12u);
      }
    }
  }
}

- (void)resumeRecordingTimer
{
  v3 = [(RPSession *)self elapsedTimeTimer];
  if (v3)
  {
    timerPauseDate = self->_timerPauseDate;

    if (timerPauseDate)
    {
      totalPausedTime = self->_totalPausedTime;
      v6 = +[NSDate date];
      [v6 timeIntervalSinceDate:self->_timerPauseDate];
      self->_totalPausedTime = totalPausedTime + v7;

      v8 = self->_timerPauseDate;
      self->_timerPauseDate = 0;

      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_totalPausedTime;
        v10 = 136446722;
        v11 = "[RPHighQualityLocalRecordingSession resumeRecordingTimer]";
        v12 = 1024;
        v13 = 726;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Resuming recording timer, total paused time: %.1f seconds", &v10, 0x1Cu);
      }
    }
  }
}

@end
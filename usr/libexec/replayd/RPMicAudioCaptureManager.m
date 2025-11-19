@interface RPMicAudioCaptureManager
+ (AudioStreamBasicDescription)audioStreamBasicDescriptionWithStereo:(SEL)a3;
+ (AudioStreamBasicDescription)descriptionForHQLR;
- (RPMicAudioCaptureManager)init;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)checkAndHandleMicInterruption;
- (void)dealloc;
- (void)dispatchedDidStartHandler;
- (void)handleAudioSessionInterruption:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCaptureSession:(id)a3;
- (void)startCaptureSession;
- (void)startMicrophoneCaptureWithOutput:(id)a3 didStartHandler:(id)a4 useRemoteIOFormat:(BOOL)a5;
- (void)stopAllCapture;
- (void)stopCaptureSession;
- (void)stopMicrophoneCapture;
@end

@implementation RPMicAudioCaptureManager

+ (AudioStreamBasicDescription)audioStreamBasicDescriptionWithStereo:(SEL)a3
{
  retstr->mSampleRate = 44100.0;
  *&retstr->mFormatID = 0xE6C70636DLL;
  if (a4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  retstr->mBytesPerFrame = v4;
  retstr->mChannelsPerFrame = v5;
  retstr->mBytesPerPacket = v4;
  retstr->mFramesPerPacket = 1;
  *&retstr->mBitsPerChannel = 16;
  return result;
}

+ (AudioStreamBasicDescription)descriptionForHQLR
{
  v7 = [[AVAudioFormat alloc] initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:48000.0];
  v4 = [v7 streamDescription];
  v5 = v4[1];
  *&retstr->mSampleRate = *v4;
  *&retstr->mBytesPerPacket = v5;
  *&retstr->mBitsPerChannel = *(v4 + 4);

  return result;
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:AVAudioSessionInterruptionTypeKey];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    if (v6 == 1)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136446466;
        v8 = "[RPMicAudioCaptureManager handleAudioSessionInterruption:]";
        v9 = 1024;
        v10 = 89;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAudioSessionInterruptionTypeBegan", &v7, 0x12u);
      }

      self->_micInterrupted = 1;
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPMicAudioCaptureManager handleAudioSessionInterruption:]";
    v9 = 1024;
    v10 = 93;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAudioSessionInterruptionTypeEnded", &v7, 0x12u);
  }
}

- (RPMicAudioCaptureManager)init
{
  v13.receiver = self;
  v13.super_class = RPMicAudioCaptureManager;
  v2 = [(RPMicAudioCaptureManager *)&v13 init];
  if (v2)
  {
    [RPMicAudioCaptureManager audioStreamBasicDescriptionWithStereo:0];
    v3 = v12;
    v4 = v11;
    *(v2 + 24) = v10;
    *(v2 + 40) = v4;
    *(v2 + 7) = v3;
    v5 = dispatch_queue_create("com.apple.ReplayKit.MicAudioCaptureQueue", 0);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = *(v2 + 12);
    *(v2 + 12) = 0;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

  v4.receiver = self;
  v4.super_class = RPMicAudioCaptureManager;
  [(RPMicAudioCaptureManager *)&v4 dealloc];
}

- (void)startCaptureSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPMicAudioCaptureManager startCaptureSession]";
    v7 = 1024;
    v8 = 115;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  if (!self->_sessionInProgress)
  {
    self->_sessionInProgress = 1;
    v3 = objc_alloc_init(AVCaptureSession);
    captureSession = self->_captureSession;
    self->_captureSession = v3;
  }
}

- (void)stopCaptureSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPMicAudioCaptureManager stopCaptureSession]";
    v5 = 1024;
    v6 = 125;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  if (self->_sessionInProgress)
  {
    self->_sessionInProgress = 0;
    [(AVCaptureSession *)self->_captureSession removeObserver:self forKeyPath:@"running"];
    [(AVCaptureSession *)self->_captureSession stopRunning];
  }
}

- (void)stopAllCapture
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPMicAudioCaptureManager stopAllCapture]";
    v7 = 1024;
    v8 = 140;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPMicAudioCaptureManager *)self stopCaptureSession];
  [(RPMicAudioCaptureManager *)self stopMicrophoneCapture];
  microphoneOutputHandler = self->_microphoneOutputHandler;
  self->_microphoneOutputHandler = 0;

  lastMicAudioDate = self->_lastMicAudioDate;
  self->_lastMicAudioDate = 0;
}

- (void)startMicrophoneCaptureWithOutput:(id)a3 didStartHandler:(id)a4 useRemoteIOFormat:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[RPMicAudioCaptureManager startMicrophoneCaptureWithOutput:didStartHandler:useRemoteIOFormat:]";
    v19 = 1024;
    v20 = 156;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  audioDispatchQueue = self->_audioDispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006904;
  v13[3] = &unk_1000A1150;
  v13[4] = self;
  v14 = v8;
  v16 = a5;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(audioDispatchQueue, v13);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"running"])
  {
    [(RPMicAudioCaptureManager *)self dispatchedDidStartHandler];
    [v10 removeObserver:self forKeyPath:@"running"];
  }
}

- (void)stopMicrophoneCapture
{
  audioDispatchQueue = self->_audioDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006CB0;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(audioDispatchQueue, block);
}

- (void)setCaptureSession:(id)a3
{
  v5 = a3;
  captureSession = self->_captureSession;
  if (captureSession != v5)
  {
    [(AVCaptureSession *)captureSession removeObserver:self forKeyPath:@"running"];
    objc_storeStrong(&self->_captureSession, a3);
  }
}

- (void)checkAndHandleMicInterruption
{
  if (self->_micInterrupted)
  {
    if (self->_microphoneOutputHandler)
    {
      self->_micInterrupted = 0;
      if (self->_lastMicAudioDate)
      {
        v3 = +[NSDate date];
        [v3 timeIntervalSinceDate:self->_lastMicAudioDate];
        if (v4 > 0.0)
        {
          v5 = v4;
          if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "[RPMicAudioCaptureManager checkAndHandleMicInterruption]";
            *&buf[12] = 1024;
            *&buf[14] = 266;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d gap since last mic tap, filling with empty sample buffer", buf, 0x12u);
          }

          micInterruptionPresentationTimeStamp = self->_micInterruptionPresentationTimeStamp;
          v6 = *&self->_audioBasicDescription.mBytesPerPacket;
          *buf = *&self->_audioBasicDescription.mSampleRate;
          *&buf[16] = v6;
          v10 = *&self->_audioBasicDescription.mBitsPerChannel;
          v7 = sub_100057AD4(&micInterruptionPresentationTimeStamp, buf, v5);
          (*(self->_microphoneOutputHandler + 2))();
          if (v7)
          {
            CFRelease(v7);
          }
        }
      }
    }
  }
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_captureSessionAudioDataOutput == v8 && self->_microphoneOutputHandler)
  {
    [(RPMicAudioCaptureManager *)self checkAndHandleMicInterruption];
    if (!self->_lastMicAudioDate)
    {
      v10 = sub_100057EA8(a4);
      if (dword_1000B6840 <= 1)
      {
        v11 = *&v10;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "[RPMicAudioCaptureManager captureOutput:didOutputSampleBuffer:fromConnection:]";
          *&buf[12] = 1024;
          *&buf[14] = 283;
          *&buf[18] = 2048;
          *&buf[20] = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d first sample received at time %.3f", buf, 0x1Cu);
        }
      }
    }

    v12 = +[NSDate date];
    CMSampleBufferGetDuration(buf, a4);
    v13 = [v12 dateByAddingTimeInterval:CMTimeGetSeconds(buf)];
    lastMicAudioDate = self->_lastMicAudioDate;
    self->_lastMicAudioDate = v13;

    CMSampleBufferGetPresentationTimeStamp(&lhs, a4);
    CMSampleBufferGetDuration(&v15, a4);
    CMTimeAdd(buf, &lhs, &v15);
    *&self->_micInterruptionPresentationTimeStamp.value = *buf;
    self->_micInterruptionPresentationTimeStamp.epoch = *&buf[16];
    (*(self->_microphoneOutputHandler + 2))();
  }
}

- (void)dispatchedDidStartHandler
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[RPMicAudioCaptureManager dispatchedDidStartHandler]";
    v7 = 1024;
    v8 = 295;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  audioDispatchQueue = self->_audioDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000072A0;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(audioDispatchQueue, block);
}

@end
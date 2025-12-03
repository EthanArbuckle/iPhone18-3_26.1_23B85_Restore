@interface RPScreenCaptureManagerIOS
- (RPScreenCaptureManagerIOS)init;
- (id)setupFigCaptureForIOSWithCaptureType:(int)type windowSize:(CGSize)size contextIDs:(id)ds systemCapture:(BOOL)capture;
- (id)setupFigCaptureForVisionWithWindowSize:(CGSize)size contextIDs:(id)ds systemCapture:(BOOL)capture;
- (void)handleScreenCaptureFailureWithError:(id)error;
- (void)screenCaptureController:(id)controller didFailWithStatus:(int)status;
- (void)screenCaptureController:(id)controller didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags;
- (void)screenCaptureControllerDidReceiveClearScreen:(id)screen;
- (void)screenCaptureControllerMediaServicesWereReset:(id)reset;
- (void)screenCaptureControllerWasPreempted:(id)preempted;
- (void)stop;
@end

@implementation RPScreenCaptureManagerIOS

- (RPScreenCaptureManagerIOS)init
{
  v6.receiver = self;
  v6.super_class = RPScreenCaptureManagerIOS;
  v2 = [(RPScreenCaptureManagerIOS *)&v6 init];
  v3 = v2;
  if (v2)
  {
    screenCaptureController = v2->_screenCaptureController;
    v2->_screenCaptureController = 0;
  }

  return v3;
}

- (id)setupFigCaptureForIOSWithCaptureType:(int)type windowSize:(CGSize)size contextIDs:(id)ds systemCapture:(BOOL)capture
{
  captureCopy = capture;
  height = size.height;
  width = size.width;
  dsCopy = ds;
  v11 = objc_alloc_init(FigScreenCaptureConfiguration);
  [v11 setSize:{width, height}];
  CMTimeMake(&v31, 1, 60);
  *buf = v31;
  [v11 setMinFrameInterval:buf];
  if (captureCopy)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPScreenCaptureManagerIOS setupFigCaptureForIOSWithCaptureType:windowSize:contextIDs:systemCapture:]";
      *&buf[12] = 1024;
      *&buf[14] = 79;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d mirror mode", buf, 0x12u);
    }

    if (type == 2)
    {
      [v11 setPreset:7];
      v12 = 1;
    }

    else
    {
      [v11 setPreset:0];
      if (type == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    [v11 setToneMappingMode:v12];
    [@"com.apple.replayd" UTF8String];
    if (!os_variant_allows_internal_security_policies())
    {
      goto LABEL_32;
    }

    v21 = CFPreferencesCopyAppValue(@"RPHDRMode", @"com.apple.replayd");
    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = v21;
    if ([v22 isEqualToString:@"canonical"])
    {
      v23 = 1;
    }

    else
    {
      if (![v22 isEqualToString:@"local"])
      {
        goto LABEL_28;
      }

      v23 = 2;
    }

    [v11 setToneMappingMode:v23];
LABEL_28:
    CFRelease(v22);
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPScreenCaptureManagerIOS setupFigCaptureForIOSWithCaptureType:windowSize:contextIDs:systemCapture:]";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d default write set for RPHDRMode", buf, 0x12u);
    }

LABEL_32:
    BKSDisplayServicesSetCloneMirroringMode();
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      preset = [v11 preset];
      toneMappingMode = [v11 toneMappingMode];
      *buf = 136446978;
      *&buf[4] = "[RPScreenCaptureManagerIOS setupFigCaptureForIOSWithCaptureType:windowSize:contextIDs:systemCapture:]";
      *&buf[12] = 1024;
      *&buf[14] = 106;
      *&buf[18] = 2048;
      *&buf[20] = preset;
      v34 = 2048;
      v35 = toneMappingMode;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d screenCaptureConfig.preset=%lu screenCaptureConfig.toneMappingMode=%lu", buf, 0x26u);
    }

    goto LABEL_35;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPScreenCaptureManagerIOS setupFigCaptureForIOSWithCaptureType:windowSize:contextIDs:systemCapture:]";
    *&buf[12] = 1024;
    *&buf[14] = 109;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d replay mode", buf, 0x12u);
  }

  v13 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = dsCopy;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [RPStringUtility numberFromString:*(*(&v27 + 1) + 8 * i), v27];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v16);
  }

  allObjects = [v13 allObjects];
  [v11 setContentIDs:allObjects];

  BKSDisplayServicesSetCloneMirroringMode();
LABEL_35:

  return v11;
}

- (id)setupFigCaptureForVisionWithWindowSize:(CGSize)size contextIDs:(id)ds systemCapture:(BOOL)capture
{
  captureCopy = capture;
  height = size.height;
  width = size.width;
  dsCopy = ds;
  v9 = objc_alloc_init(FigScreenCaptureConfiguration);
  [v9 setSize:{width, height}];
  CMTimeMake(&v23, 1, 60);
  buf = v23;
  [v9 setMinFrameInterval:&buf];
  if (captureCopy)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = "[RPScreenCaptureManagerIOS setupFigCaptureForVisionWithWindowSize:contextIDs:systemCapture:]";
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = 130;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d mirror mode", &buf, 0x12u);
    }

    [v9 setPreset:0];
    BKSDisplayServicesSetCloneMirroringMode();
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = "[RPScreenCaptureManagerIOS setupFigCaptureForVisionWithWindowSize:contextIDs:systemCapture:]";
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = 134;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d replay mode", &buf, 0x12u);
    }

    v10 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = dsCopy;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [RPStringUtility numberFromString:*(*(&v19 + 1) + 8 * i), v19];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    allObjects = [v10 allObjects];
    [v9 setContentIDs:allObjects];

    BKSDisplayServicesSetCloneMirroringMode();
  }

  return v9;
}

- (void)stop
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    screenCaptureController = self->_screenCaptureController;
    v8 = 136446722;
    v9 = "[RPScreenCaptureManagerIOS stop]";
    v10 = 1024;
    v11 = 204;
    v12 = 2048;
    v13 = screenCaptureController;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop capture with FigCaptureController: %p", &v8, 0x1Cu);
  }

  v4 = self->_screenCaptureController;
  if (v4)
  {
    [(FigScreenCaptureController *)v4 stopCapture];
    [(FigScreenCaptureController *)self->_screenCaptureController setDelegate:0];
    v5 = self->_screenCaptureController;
    self->_screenCaptureController = 0;
  }

  BKSDisplayServicesSetCloneMirroringMode();
  screenCaptureOutputHandler = self->super._screenCaptureOutputHandler;
  self->super._screenCaptureOutputHandler = 0;

  didStartScreenCaptureHandler = self->super._didStartScreenCaptureHandler;
  self->super._didStartScreenCaptureHandler = 0;

  self->super._screenCaptureDidStart = 0;
  [(RPScreenCaptureManager *)self setSystemBroadcastHostBundleId:0];
}

- (void)screenCaptureController:(id)controller didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags
{
  controllerCopy = controller;
  if (buffer)
  {
    if (!self->super._screenCaptureDidStart)
    {
      if (self->super._didStartScreenCaptureHandler)
      {
        self->super._screenCaptureDidStart = 1;
        (*(self->super._didStartScreenCaptureHandler + 2))();
        v9 = sub_100057EA8(buffer);
        if (dword_1000B6840 <= 1)
        {
          v10 = *&v9;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136446722;
            v17 = "[RPScreenCaptureManagerIOS screenCaptureController:didReceiveSampleBuffer:transformFlags:]";
            v18 = 1024;
            v19 = 244;
            v20 = 2048;
            v21 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d first sample received at time %.3f", &v16, 0x1Cu);
          }
        }
      }
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(ImageBuffer);
    if (!dword_1000B6840)
    {
      v14 = Height;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136447234;
        v17 = "[RPScreenCaptureManagerIOS screenCaptureController:didReceiveSampleBuffer:transformFlags:]";
        v18 = 1024;
        v19 = 250;
        v20 = 2048;
        v21 = *&Width;
        v22 = 2048;
        v23 = v14;
        v24 = 1024;
        flagsCopy = flags;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d screen sampled at window size width:%zu heigth:%zu transformFlags %d", &v16, 0x2Cu);
      }
    }

    screenCaptureOutputHandler = self->super._screenCaptureOutputHandler;
    if (screenCaptureOutputHandler)
    {
      screenCaptureOutputHandler[2](screenCaptureOutputHandler, buffer, flags);
    }
  }
}

- (void)handleScreenCaptureFailureWithError:(id)error
{
  errorCopy = error;
  [(RPScreenCaptureManagerIOS *)self stop];
  [(RPScreenCaptureManagerProtocol *)self->super._delegate screenCaptureDidFailWithError:errorCopy];
}

- (void)screenCaptureController:(id)controller didFailWithStatus:(int)status
{
  controllerCopy = controller;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061458();
  }

  if (status == -12073)
  {
    v10 = -5803;
LABEL_9:
    v9 = [NSError _rpUserErrorForCode:v10 userInfo:0];
    [(RPScreenCaptureManagerIOS *)self handleScreenCaptureFailureWithError:v9];
    goto LABEL_10;
  }

  if (status != -1030)
  {
    v10 = -5817;
    goto LABEL_9;
  }

  v11 = NSLocalizedDescriptionKey;
  v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_ERROR_FAILED_TO_START_LIGHTING"];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [NSError errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5803 userInfo:v8];
  (*(self->super._didStartScreenCaptureHandler + 2))();

LABEL_10:
}

- (void)screenCaptureControllerWasPreempted:(id)preempted
{
  preemptedCopy = preempted;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000614F0();
  }

  v5 = [NSError _rpUserErrorForCode:-5806 userInfo:0];
  [(RPScreenCaptureManagerIOS *)self handleScreenCaptureFailureWithError:v5];
}

- (void)screenCaptureControllerMediaServicesWereReset:(id)reset
{
  resetCopy = reset;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061580();
  }

  v5 = [NSError _rpUserErrorForCode:-5817 userInfo:0];
  [(RPScreenCaptureManagerIOS *)self handleScreenCaptureFailureWithError:v5];
}

- (void)screenCaptureControllerDidReceiveClearScreen:(id)screen
{
  screenCopy = screen;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPScreenCaptureManagerIOS screenCaptureControllerDidReceiveClearScreen:]";
    v6 = 1024;
    v7 = 301;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d repeated clear screen likely DRM playback", &v4, 0x12u);
  }
}

@end
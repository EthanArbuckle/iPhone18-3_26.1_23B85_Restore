@interface RPCameraCaptureManager
- (CGAffineTransform)cameraTransform;
- (RPCameraCaptureManager)init;
- (int64_t)currentInterfaceOrientation;
- (void)applyTransformForExternalCamera;
- (void)applyTransformForPortrait;
- (void)applyTransformWithOrientation;
- (void)applyTransformationForLandscapeLeft;
- (void)applyTransformationForLandscapeRight;
- (void)applyTransformationForPortraitUpsideDown;
- (void)handleCameraSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)printTransform:(CGAffineTransform *)a3;
- (void)setUpFrameReceiver;
- (void)startWithAppUsingCamera:(BOOL)a3 startHandler:(id)a4 outputHandler:(id)a5;
- (void)stop;
- (void)updateTransformForSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation RPCameraCaptureManager

- (RPCameraCaptureManager)init
{
  v7.receiver = self;
  v7.super_class = RPCameraCaptureManager;
  v2 = [(RPCameraCaptureManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.replayd.cameraCaptureManagerQueue", 0);
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    v5 = *&CGAffineTransformIdentity.c;
    *(v2 + 56) = *&CGAffineTransformIdentity.a;
    *(v2 + 72) = v5;
    *(v2 + 88) = *&CGAffineTransformIdentity.tx;
    v2[104] = 0;
    *(v2 + 6) = sub_100057468(4uLL, 4uLL);
  }

  return v2;
}

- (CGAffineTransform)cameraTransform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)startWithAppUsingCamera:(BOOL)a3 startHandler:(id)a4 outputHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100048048;
  v13[3] = &unk_1000A1150;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(queue, v13);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048278;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v15 = "[RPCameraCaptureManager observeValueForKeyPath:ofObject:change:context:]";
    v16 = 1024;
    v17 = 116;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d keyPath=%@, change=%@", buf, 0x26u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048564;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleCameraSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (self->_needTransformUpdate)
  {
    [(RPCameraCaptureManager *)self updateTransformForSampleBuffer:a3];
    self->_needTransformUpdate = 0;
  }

  startHandler = self->_startHandler;
  if (startHandler)
  {
    startHandler[2]();
    v5 = self->_startHandler;
    self->_startHandler = 0;

    self->_isAppUsingCameraWhenStarting = 0;
  }

  outputHandler = self->_outputHandler;
  if (outputHandler)
  {
    v7 = *(outputHandler + 2);

    v7();
  }
}

- (void)setUpFrameReceiver
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136446466;
    *(&buf.value + 4) = "[RPCameraCaptureManager setUpFrameReceiver]";
    LOWORD(buf.flags) = 1024;
    *(&buf.flags + 2) = 142;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &buf, 0x12u);
  }

  v3 = +[CMCaptureFrameReceiver availableFrameSenderEndpointsByPID];
  memset(v18, 0, sizeof(v18));
  v4 = [v3 allKeys];
  if ([v4 countByEnumeratingWithState:v18 objects:v20 count:16])
  {
    v5 = [v3 objectForKeyedSubscript:**(&v18[0] + 1)];
    v6 = [v5 firstObject];

    if (v6)
    {
      objc_initWeak(&buf, self);
      v7 = [CMCaptureFrameReceiver alloc];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100048930;
      v16[3] = &unk_1000A2558;
      objc_copyWeak(&v17, &buf);
      v8 = [v7 initWithFrameSenderServerEndpoint:v6 frameReceiverHandler:v16];
      frameReceiver = self->_frameReceiver;
      self->_frameReceiver = v8;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&buf);

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (!self->_isAppUsingCameraWhenStarting)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = "[RPCameraCaptureManager setUpFrameReceiver]";
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = 167;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No endpoints available, sending blank video frame", &buf, 0x12u);
    }

    memset(&buf, 0, sizeof(buf));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&buf, HostTimeClock);
    blankPixelBuf = self->_blankPixelBuf;
    v15 = buf;
    v12 = sub_10005724C(blankPixelBuf, &v15);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100048A2C;
    v14[3] = &unk_1000A1230;
    v14[4] = self;
    v14[5] = v12;
    dispatch_async(queue, v14);
  }

LABEL_13:
}

- (int64_t)currentInterfaceOrientation
{
  v2 = objc_alloc_init(FBSOrientationObserver);
  v3 = [v2 activeInterfaceOrientation];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = BSInterfaceOrientationDescription();
    v6 = 136446722;
    v7 = "[RPCameraCaptureManager currentInterfaceOrientation]";
    v8 = 1024;
    v9 = 185;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d interface orientation %@", &v6, 0x1Cu);
  }

  if ((BSInterfaceOrientationIsValid() & 1) == 0)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000658E4();
    }

    v3 = 1;
  }

  return v3;
}

- (void)updateTransformForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = CMCopyDictionaryOfAttachments(kCFAllocatorDefault, a3, 1u);
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 136446722;
    *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
    WORD2(buf.b) = 1024;
    *(&buf.b + 6) = 197;
    WORD1(buf.c) = 2112;
    *(&buf.c + 4) = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Sample buffer attachments=%@", &buf, 0x1Cu);
  }

  if (v4)
  {
    v5 = CFDictionaryGetValue(v4, @"MetadataDictionary");
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"RotationDegrees"];

      if (v7)
      {
        v8 = [v6 objectForKeyedSubscript:@"RotationDegrees"];
      }

      else
      {
        v8 = &off_1000A6D28;
      }

      v12 = [v6 objectForKeyedSubscript:@"MirroredVertical"];

      if (v12)
      {
        v9 = 1;
      }

      else
      {
        v13 = [v6 objectForKeyedSubscript:@"MirroredHorizontal"];
        v14 = v13 != 0;

        v9 = 2 * v14;
      }

      v15 = [v6 objectForKeyedSubscript:@"PortType"];

      if (v15)
      {
        v10 = [v6 objectForKeyedSubscript:@"PortType"];
      }

      else
      {
        v10 = &stru_1000A2FB8;
      }

      v16 = [v6 objectForKeyedSubscript:@"DeviceType"];

      if (v16)
      {
        v11 = [v6 objectForKeyedSubscript:@"DeviceType"];
      }

      else
      {
        v11 = &off_1000A6D28;
      }
    }

    else
    {
      v9 = 0;
      v10 = &stru_1000A2FB8;
      v11 = &off_1000A6D28;
      v8 = &off_1000A6D28;
    }
  }

  else
  {
    v9 = 0;
    v10 = &stru_1000A2FB8;
    v11 = &off_1000A6D28;
    v8 = &off_1000A6D28;
  }

  v17 = [(RPCameraCaptureManager *)self currentInterfaceOrientation];
  if (dword_1000B6840 <= 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      currentRotation = self->_currentRotation;
      LODWORD(buf.a) = 136446978;
      *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = 224;
      WORD1(buf.c) = 2112;
      *(&buf.c + 4) = currentRotation;
      WORD2(buf.d) = 2112;
      *(&buf.d + 6) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d rotation: current= %@, new=%@", &buf, 0x26u);
    }

    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [NSNumber numberWithInteger:self->_mirrorType];
        v20 = [NSNumber numberWithInteger:v9];
        LODWORD(buf.a) = 136446978;
        *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
        WORD2(buf.b) = 1024;
        *(&buf.b + 6) = 225;
        WORD1(buf.c) = 2112;
        *(&buf.c + 4) = v19;
        WORD2(buf.d) = 2112;
        *(&buf.d + 6) = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d mirrorType: current= %@, new=%@", &buf, 0x26u);
      }

      if (dword_1000B6840 <= 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [NSNumber numberWithInteger:self->_orientation];
          v22 = [NSNumber numberWithInteger:v17];
          LODWORD(buf.a) = 136446978;
          *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
          WORD2(buf.b) = 1024;
          *(&buf.b + 6) = 226;
          WORD1(buf.c) = 2112;
          *(&buf.c + 4) = v21;
          WORD2(buf.d) = 2112;
          *(&buf.d + 6) = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d orientation: current= %@, new=%@", &buf, 0x26u);
        }

        if (dword_1000B6840 <= 1)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            portType = self->_portType;
            LODWORD(buf.a) = 136446978;
            *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
            WORD2(buf.b) = 1024;
            *(&buf.b + 6) = 227;
            WORD1(buf.c) = 2112;
            *(&buf.c + 4) = portType;
            WORD2(buf.d) = 2112;
            *(&buf.d + 6) = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d portType: current= %@, new=%@", &buf, 0x26u);
          }

          if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            deviceType = self->_deviceType;
            LODWORD(buf.a) = 136446978;
            *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
            WORD2(buf.b) = 1024;
            *(&buf.b + 6) = 228;
            WORD1(buf.c) = 2112;
            *(&buf.c + 4) = deviceType;
            WORD2(buf.d) = 2112;
            *(&buf.d + 6) = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d deviceType: current= %@, new=%@", &buf, 0x26u);
          }
        }
      }
    }
  }

  if ((!v8 || [(NSNumber *)self->_currentRotation isEqualToNumber:v8]) && v9 == self->_mirrorType && self->_orientation == v17 && [(__CFString *)v10 isEqualToString:self->_portType]&& v11 == self->_deviceType)
  {
LABEL_63:
    if (!v4)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 136446466;
    *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
    WORD2(buf.b) = 1024;
    *(&buf.b + 6) = 231;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Will update transform", &buf, 0x12u);
  }

  objc_storeStrong(&self->_currentRotation, v8);
  self->_mirrorType = v9;
  self->_orientation = v17;
  objc_storeStrong(&self->_portType, v10);
  objc_storeStrong(&self->_deviceType, v11);
  if ([(NSNumber *)v11 intValue]== 15 && [(__CFString *)v10 isEqualToString:@"PortTypeFront"])
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 136446466;
      *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = 240;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Transform for external camera", &buf, 0x12u);
    }

    [(RPCameraCaptureManager *)self applyTransformForExternalCamera];
    if (!v4)
    {
      goto LABEL_65;
    }

LABEL_64:
    CFRelease(v4);
    goto LABEL_65;
  }

  if (![(__CFString *)v10 containsString:@"PortTypeBack"])
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 136446466;
      *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = 251;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Transform for front camera", &buf, 0x12u);
    }

    [(RPCameraCaptureManager *)self applyTransformWithOrientation];
    goto LABEL_63;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 136446466;
    *(&buf.a + 4) = "[RPCameraCaptureManager updateTransformForSampleBuffer:]";
    WORD2(buf.b) = 1024;
    *(&buf.b + 6) = 243;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Transform for back camera", &buf, 0x12u);
  }

  [(RPCameraCaptureManager *)self applyTransformWithOrientation];
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D40]|| [(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D58])
  {
    v25 = *&self->_cameraTransform.c;
    *&v31.a = *&self->_cameraTransform.a;
    *&v31.c = v25;
    *&v31.tx = *&self->_cameraTransform.tx;
    v26 = -1.0;
    v27 = 1.0;
  }

  else
  {
    v29 = *&self->_cameraTransform.c;
    *&v31.a = *&self->_cameraTransform.a;
    *&v31.c = v29;
    *&v31.tx = *&self->_cameraTransform.tx;
    v26 = 1.0;
    v27 = -1.0;
  }

  CGAffineTransformScale(&buf, &v31, v26, v27);
  v30 = *&buf.c;
  *&self->_cameraTransform.a = *&buf.a;
  *&self->_cameraTransform.c = v30;
  *&self->_cameraTransform.tx = *&buf.tx;
  if (v4)
  {
    goto LABEL_64;
  }

LABEL_65:
  v28 = *&self->_cameraTransform.c;
  *&buf.a = *&self->_cameraTransform.a;
  *&buf.c = v28;
  *&buf.tx = *&self->_cameraTransform.tx;
  [(RPCameraCaptureManager *)self printTransform:&buf, *&v31.a, *&v31.c, *&v31.tx];
}

- (void)applyTransformForExternalCamera
{
  memset(&v17, 0, sizeof(v17));
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D40])
  {
    v3 = *&CGAffineTransformIdentity.c;
    *&v16.a = *&CGAffineTransformIdentity.a;
    *&v16.c = v3;
    *&v16.tx = *&CGAffineTransformIdentity.tx;
    v4 = -1.57079633;
    goto LABEL_3;
  }

  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D70])
  {
    v6 = *&CGAffineTransformIdentity.c;
    *&v16.a = *&CGAffineTransformIdentity.a;
    *&v16.c = v6;
    *&v16.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v17, &v16, 3.14159265);
    mirrorType = self->_mirrorType;
    if (mirrorType)
    {
      if (mirrorType != 2)
      {
        return;
      }

      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v9 = [(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D58];
  v10 = *&CGAffineTransformIdentity.a;
  v11 = *&CGAffineTransformIdentity.c;
  if (!v9)
  {
    *&v16.a = *&CGAffineTransformIdentity.a;
    *&v16.c = v11;
    *&v16.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v17, &v16, 0.0);
    v12 = self->_mirrorType;
    if (v12)
    {
      if (v12 != 1)
      {
        return;
      }

      goto LABEL_14;
    }

LABEL_15:
    v15 = v17;
    v8 = -1.0;
    goto LABEL_16;
  }

  *&v16.a = *&CGAffineTransformIdentity.a;
  *&v16.c = v11;
  *&v16.tx = *&CGAffineTransformIdentity.tx;
  v4 = 1.57079633;
LABEL_3:
  CGAffineTransformRotate(&v17, &v16, v4);
  v5 = self->_mirrorType;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      goto LABEL_15;
    }

LABEL_9:
    v15 = v17;
    v8 = 1.0;
LABEL_16:
    v13 = 1.0;
    goto LABEL_17;
  }

LABEL_14:
  v15 = v17;
  v8 = -1.0;
  v13 = -1.0;
LABEL_17:
  CGAffineTransformScale(&v16, &v15, v8, v13);
  v14 = *&v16.c;
  *&self->_cameraTransform.a = *&v16.a;
  *&self->_cameraTransform.c = v14;
  *&self->_cameraTransform.tx = *&v16.tx;
}

- (void)applyTransformWithOrientation
{
  orientation = self->_orientation;
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      [(RPCameraCaptureManager *)self applyTransformationForLandscapeLeft];
    }

    else if (orientation == 4)
    {
      [(RPCameraCaptureManager *)self applyTransformationForLandscapeRight];
    }
  }

  else if (orientation == 1)
  {
    [(RPCameraCaptureManager *)self applyTransformForPortrait];
  }

  else if (orientation == 2)
  {
    [(RPCameraCaptureManager *)self applyTransformationForPortraitUpsideDown];
  }
}

- (void)applyTransformForPortrait
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D40])
  {
    memset(&v16, 0, sizeof(v16));
    v3 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v3;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v16, &v15, 0.0);
    mirrorType = self->_mirrorType;
    if (mirrorType)
    {
      if (mirrorType != 1)
      {
        return;
      }

      goto LABEL_17;
    }

    v14 = v16;
    v9 = -1.0;
LABEL_16:
    v12 = 1.0;
LABEL_20:
    CGAffineTransformScale(&v15, &v14, v9, v12);
    v13 = *&v15.c;
    *&self->_cameraTransform.a = *&v15.a;
    *&self->_cameraTransform.c = v13;
    *&self->_cameraTransform.tx = *&v15.tx;
    return;
  }

  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D70])
  {
    memset(&v16, 0, sizeof(v16));
    v5 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v5;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    v6 = -1.57079633;
    goto LABEL_13;
  }

  if (![(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D58])
  {
    memset(&v16, 0, sizeof(v16));
    v10 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v10;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    v6 = 1.57079633;
LABEL_13:
    CGAffineTransformRotate(&v16, &v15, v6);
    v11 = self->_mirrorType;
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v14 = v16;
        v9 = 1.0;
        goto LABEL_16;
      }

LABEL_18:
      v14 = v16;
      v9 = 1.0;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  memset(&v16, 0, sizeof(v16));
  v7 = *&CGAffineTransformIdentity.c;
  *&v15.a = *&CGAffineTransformIdentity.a;
  *&v15.c = v7;
  *&v15.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v16, &v15, 0.0);
  v8 = self->_mirrorType;
  if (!v8)
  {
    goto LABEL_18;
  }

  if (v8 == 2)
  {
LABEL_17:
    v14 = v16;
    v9 = -1.0;
LABEL_19:
    v12 = -1.0;
    goto LABEL_20;
  }
}

- (void)applyTransformationForLandscapeRight
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D40])
  {
    memset(&v15, 0, sizeof(v15));
    v3 = *&CGAffineTransformIdentity.c;
    *&v14.a = *&CGAffineTransformIdentity.a;
    *&v14.c = v3;
    *&v14.tx = *&CGAffineTransformIdentity.tx;
    v4 = -1.57079633;
    goto LABEL_3;
  }

  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D70])
  {
    memset(&v15, 0, sizeof(v15));
    v7 = *&CGAffineTransformIdentity.c;
    *&v14.a = *&CGAffineTransformIdentity.a;
    *&v14.c = v7;
    *&v14.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v15, &v14, -3.14159265);
    if (self->_mirrorType)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (![(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D58])
  {
    memset(&v15, 0, sizeof(v15));
    v9 = *&CGAffineTransformIdentity.c;
    *&v14.a = *&CGAffineTransformIdentity.a;
    *&v14.c = v9;
    *&v14.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v15, &v14, 0.0);
    mirrorType = self->_mirrorType;
    if (mirrorType)
    {
      if (mirrorType != 1)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_15:
    v13 = v15;
    v6 = -1.0;
    goto LABEL_16;
  }

  memset(&v15, 0, sizeof(v15));
  v8 = *&CGAffineTransformIdentity.c;
  *&v14.a = *&CGAffineTransformIdentity.a;
  *&v14.c = v8;
  *&v14.tx = *&CGAffineTransformIdentity.tx;
  v4 = 1.57079633;
LABEL_3:
  CGAffineTransformRotate(&v15, &v14, v4);
  v5 = self->_mirrorType;
  if (v5 == 2)
  {
LABEL_13:
    v13 = v15;
    v6 = -1.0;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
LABEL_8:
    v13 = v15;
    v6 = 1.0;
LABEL_16:
    v11 = 1.0;
    goto LABEL_17;
  }

  v13 = v15;
  v6 = 1.0;
LABEL_14:
  v11 = -1.0;
LABEL_17:
  CGAffineTransformScale(&v14, &v13, v6, v11);
  v12 = *&v14.c;
  *&self->_cameraTransform.a = *&v14.a;
  *&self->_cameraTransform.c = v12;
  *&self->_cameraTransform.tx = *&v14.tx;
}

- (void)applyTransformationForPortraitUpsideDown
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D40])
  {
    memset(&v16, 0, sizeof(v16));
    v3 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v3;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v16, &v15, -3.14159265);
    mirrorType = self->_mirrorType;
    if (mirrorType)
    {
      if (mirrorType != 2)
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_11:
    v14 = v16;
    v9 = -1.0;
LABEL_16:
    v12 = 1.0;
LABEL_20:
    CGAffineTransformScale(&v15, &v14, v9, v12);
    v13 = *&v15.c;
    *&self->_cameraTransform.a = *&v15.a;
    *&self->_cameraTransform.c = v13;
    *&self->_cameraTransform.tx = *&v15.tx;
    return;
  }

  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D70])
  {
    memset(&v16, 0, sizeof(v16));
    v5 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v5;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    v6 = 1.57079633;
    goto LABEL_13;
  }

  if (![(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D58])
  {
    memset(&v16, 0, sizeof(v16));
    v10 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v10;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    v6 = -1.57079633;
LABEL_13:
    CGAffineTransformRotate(&v16, &v15, v6);
    v11 = self->_mirrorType;
    if (v11 != 2)
    {
      if (v11 == 1)
      {
LABEL_15:
        v14 = v16;
        v9 = 1.0;
        goto LABEL_16;
      }

      v14 = v16;
      v9 = 1.0;
LABEL_19:
      v12 = -1.0;
      goto LABEL_20;
    }

LABEL_17:
    v14 = v16;
    v9 = -1.0;
    goto LABEL_19;
  }

  memset(&v16, 0, sizeof(v16));
  v7 = *&CGAffineTransformIdentity.c;
  *&v15.a = *&CGAffineTransformIdentity.a;
  *&v15.c = v7;
  *&v15.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v16, &v15, 0.0);
  v8 = self->_mirrorType;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (v8 == 1)
  {
    goto LABEL_17;
  }
}

- (void)applyTransformationForLandscapeLeft
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D40])
  {
    memset(&v16, 0, sizeof(v16));
    v3 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v3;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    v4 = 1.57079633;
LABEL_3:
    CGAffineTransformRotate(&v16, &v15, v4);
    mirrorType = self->_mirrorType;
    if (mirrorType != 2)
    {
      if (mirrorType != 1)
      {
LABEL_5:
        v14 = v16;
        v6 = 1.0;
LABEL_17:
        v9 = -1.0;
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (![(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D70])
  {
    if (![(NSNumber *)self->_currentRotation isEqualToNumber:&off_1000A6D58])
    {
      memset(&v16, 0, sizeof(v16));
      v11 = *&CGAffineTransformIdentity.c;
      *&v15.a = *&CGAffineTransformIdentity.a;
      *&v15.c = v11;
      *&v15.tx = *&CGAffineTransformIdentity.tx;
      CGAffineTransformRotate(&v16, &v15, 0.0);
      v12 = self->_mirrorType;
      if (!v12)
      {
        goto LABEL_5;
      }

      if (v12 != 2)
      {
        return;
      }

      goto LABEL_16;
    }

    memset(&v16, 0, sizeof(v16));
    v10 = *&CGAffineTransformIdentity.c;
    *&v15.a = *&CGAffineTransformIdentity.a;
    *&v15.c = v10;
    *&v15.tx = *&CGAffineTransformIdentity.tx;
    v4 = -1.57079633;
    goto LABEL_3;
  }

  memset(&v16, 0, sizeof(v16));
  v7 = *&CGAffineTransformIdentity.c;
  *&v15.a = *&CGAffineTransformIdentity.a;
  *&v15.c = v7;
  *&v15.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v16, &v15, 0.0);
  v8 = self->_mirrorType;
  if (v8 == 2)
  {
LABEL_10:
    v14 = v16;
    v6 = 1.0;
    goto LABEL_11;
  }

  if (v8 == 1)
  {
LABEL_16:
    v14 = v16;
    v6 = -1.0;
    goto LABEL_17;
  }

  v14 = v16;
  v6 = -1.0;
LABEL_11:
  v9 = 1.0;
LABEL_18:
  CGAffineTransformScale(&v15, &v14, v6, v9);
  v13 = *&v15.c;
  *&self->_cameraTransform.a = *&v15.a;
  *&self->_cameraTransform.c = v13;
  *&self->_cameraTransform.tx = *&v15.tx;
}

- (void)printTransform:(CGAffineTransform *)a3
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithDouble:a3->a];
    v5 = [NSNumber numberWithDouble:a3->b];
    v6 = [NSNumber numberWithDouble:a3->c];
    v7 = [NSNumber numberWithDouble:a3->d];
    v8 = 136447490;
    v9 = "[RPCameraCaptureManager printTransform:]";
    v10 = 1024;
    v11 = 468;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d transform matrix\n| %@ %@ |\n| %@ %@ |", &v8, 0x3Au);
  }
}

@end
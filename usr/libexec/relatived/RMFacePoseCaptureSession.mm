@interface RMFacePoseCaptureSession
- (BOOL)configureCaptureSession;
- (RMFacePoseCaptureSession)init;
- (RMFacePoseCaptureSessionDelegate)delegate;
- (id)chooseBestFormatForFaceKit:(id)kit forCameraID:(unint64_t)d;
- (id)computeCameraParametersFromDimensions:(id)dimensions;
- (unint64_t)numberOfCameras;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)setCameraPaused:(BOOL)paused;
- (void)startCaptureSessionWithHandler:(id)handler;
- (void)startFaceKitForContext:(id)context;
- (void)stopCaptureSession;
- (void)stopFaceKitForContext:(id)context;
@end

@implementation RMFacePoseCaptureSession

- (RMFacePoseCaptureSession)init
{
  v22.receiver = self;
  v22.super_class = RMFacePoseCaptureSession;
  v2 = [(RMFacePoseCaptureSession *)&v22 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.RelativeMotion"];
    v37[0] = @"TempestFacePoseDefaultFOV";
    v37[1] = @"TempestFacePoseFrameRate";
    v38[0] = &off_100025E90;
    v38[1] = &off_100025ED0;
    v37[2] = @"TempestFacePoseMaxNumberOfCameras";
    v37[3] = @"TempestFacePoseAllowBuiltInMetadataCameras";
    v38[2] = &off_100025EE8;
    v38[3] = &__kCFBooleanTrue;
    v37[4] = @"TempestFacePoseAllowBuiltInVideoCameras";
    v37[5] = @"TempestFacePoseAllowExternalVideoCameras";
    v38[4] = &__kCFBooleanFalse;
    v38[5] = &__kCFBooleanFalse;
    v37[6] = @"TempestFacePoseNetworkFailureThresholdMultiplier";
    v37[7] = @"TempestFacePoseTrackingFailureFieldOfViewModifier";
    v38[6] = &off_100025EA0;
    v38[7] = &off_100025EB0;
    v4 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:8];
    [v3 registerDefaults:v4];

    [v3 doubleForKey:@"TempestFacePoseDefaultFOV"];
    v2->_defaultFieldOfView = v5;
    v2->_frameRate = [v3 integerForKey:@"TempestFacePoseFrameRate"];
    v2->_maxNumberOfCameras = [v3 integerForKey:@"TempestFacePoseMaxNumberOfCameras"];
    v2->_allowBuiltInMetadataCameras = [v3 integerForKey:@"TempestFacePoseAllowBuiltInMetadataCameras"] != 0;
    v2->_allowBuiltInVideoCameras = [v3 integerForKey:@"TempestFacePoseAllowBuiltInVideoCameras"] != 0;
    v2->_allowExternalVideoCameras = [v3 integerForKey:@"TempestFacePoseAllowExternalVideoCameras"] != 0;
    [v3 doubleForKey:@"TempestFacePoseNetworkFailureThresholdMultiplier"];
    v2->_networkFailureThresholdMultiplier = v6;
    [v3 doubleForKey:@"TempestFacePoseTrackingFailureFieldOfViewModifier"];
    v2->_trackingFailureFieldOfViewModifier = v7;
    if (qword_10002C0C8 != -1)
    {
      sub_10001490C();
    }

    v8 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      defaultFieldOfView = v2->_defaultFieldOfView;
      maxNumberOfCameras = v2->_maxNumberOfCameras;
      allowBuiltInMetadataCameras = v2->_allowBuiltInMetadataCameras;
      allowBuiltInVideoCameras = v2->_allowBuiltInVideoCameras;
      allowExternalVideoCameras = v2->_allowExternalVideoCameras;
      networkFailureThresholdMultiplier = v2->_networkFailureThresholdMultiplier;
      trackingFailureFieldOfViewModifier = v2->_trackingFailureFieldOfViewModifier;
      *buf = 134350592;
      v24 = defaultFieldOfView;
      v25 = 2050;
      v26 = maxNumberOfCameras;
      v27 = 1026;
      v28 = allowBuiltInMetadataCameras;
      v29 = 1026;
      v30 = allowBuiltInVideoCameras;
      v31 = 1026;
      v32 = allowExternalVideoCameras;
      v33 = 2050;
      v34 = networkFailureThresholdMultiplier;
      v35 = 2050;
      v36 = trackingFailureFieldOfViewModifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "defaultFieldOfView: %{public}f, maxNumberOfCameras: %{public}ld, allowBuiltInMetadataCameras: %{public}d, allowBuiltInCameras: %{public}d, allowExternalCameras: %{public}d, networkFailureThresholdMultiplier: %{public}f, trackingFailureFieldOfViewModifier: %{public}f", buf, 0x3Cu);
    }

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v17 = dispatch_queue_create("RMFacePoseCaptureSessionCaptureQueue", v16);
    captureQueue = v2->_captureQueue;
    v2->_captureQueue = v17;

    v19 = objc_opt_new();
    captureContext = v2->_captureContext;
    v2->_captureContext = v19;
  }

  return v2;
}

- (void)startCaptureSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  captureQueue = [(RMFacePoseCaptureSession *)self captureQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A134;
  v7[3] = &unk_100024D78;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(captureQueue, v7);
}

- (void)stopCaptureSession
{
  captureQueue = [(RMFacePoseCaptureSession *)self captureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A598;
  block[3] = &unk_100024948;
  block[4] = self;
  dispatch_sync(captureQueue, block);

  if (qword_10002C0C8 != -1)
  {
    sub_10001490C();
  }

  v4 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stopped capture session", v5, 2u);
  }
}

- (void)setCameraPaused:(BOOL)paused
{
  captureQueue = [(RMFacePoseCaptureSession *)self captureQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AA14;
  v6[3] = &unk_100024F68;
  v6[4] = self;
  pausedCopy = paused;
  dispatch_async(captureQueue, v6);
}

- (unint64_t)numberOfCameras
{
  captureContext = [(RMFacePoseCaptureSession *)self captureContext];
  v3 = [captureContext count];

  return v3;
}

- (BOOL)configureCaptureSession
{
  v211.value = 0;
  *&v211.timescale = &v211;
  v211.epoch = 0x2020000000;
  v212 = 0;
  v210[0] = _NSConcreteStackBlock;
  v210[1] = 3221225472;
  v210[2] = sub_10000C444;
  v210[3] = &unk_100024F90;
  v210[4] = self;
  v210[5] = &v211;
  v160 = objc_retainBlock(v210);
  if ([(RMFacePoseCaptureSession *)self allowBuiltInMetadataCameras])
  {
    v237 = AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera;
    v2 = [NSArray arrayWithObjects:&v237 count:1];
    (v160[2])(v160, v2, AVMediaTypeMetadataObject);

    v236 = AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera;
    v3 = [NSArray arrayWithObjects:&v236 count:1];
    (v160[2])(v160, v3, AVMediaTypeMetadataObject);
  }

  if ([(RMFacePoseCaptureSession *)self allowBuiltInVideoCameras])
  {
    v235 = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
    v4 = [NSArray arrayWithObjects:&v235 count:1];
    (v160[2])(v160, v4, AVMediaTypeVideo);

    v234 = AVCaptureDeviceTypeBuiltInUltraWideCamera;
    v5 = [NSArray arrayWithObjects:&v234 count:1];
    (v160[2])(v160, v5, AVMediaTypeVideo);

    v233 = AVCaptureDeviceTypeBuiltInWideAngleCamera;
    v6 = [NSArray arrayWithObjects:&v233 count:1];
    (v160[2])(v160, v6, AVMediaTypeVideo);
  }

  if ([(RMFacePoseCaptureSession *)self allowExternalVideoCameras])
  {
    v232 = AVCaptureDeviceTypeExternal;
    v7 = [NSArray arrayWithObjects:&v232 count:1];
    (v160[2])(v160, v7, AVMediaTypeVideo);
  }

  captureContext = [(RMFacePoseCaptureSession *)self captureContext];
  v9 = [captureContext count] == 0;

  if (v9)
  {
    if (qword_10002C0C8 != -1)
    {
      sub_10001490C();
    }

    v150 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "Failed to find a capture device", &buf, 2u);
    }

LABEL_156:
    _Block_object_dispose(&v211, 8);
    return 0;
  }

  if (qword_10002C0C8 != -1)
  {
    sub_10001490C();
  }

  v10 = qword_10002C0D0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    captureContext2 = [(RMFacePoseCaptureSession *)self captureContext];
    v12 = [captureContext2 count];
    LODWORD(buf.value) = 134349056;
    *(&buf.value + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Number of face tracking cameras: %{public}lu", &buf, 0xCu);
  }

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  captureContext3 = [(RMFacePoseCaptureSession *)self captureContext];
  v14 = [captureContext3 countByEnumeratingWithState:&v206 objects:v231 count:16];
  if (v14)
  {
    v15 = *v207;
    v163 = captureContext3;
    v162 = *v207;
    do
    {
      v16 = 0;
      obj = v14;
      do
      {
        if (*v207 != v15)
        {
          objc_enumerationMutation(captureContext3);
        }

        v17 = *(*(&v206 + 1) + 8 * v16);
        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v18 = qword_10002C0D0;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          cameraID = [v17 cameraID];
          captureDevice = [v17 captureDevice];
          uniqueID = [captureDevice uniqueID];
          captureDevice2 = [v17 captureDevice];
          localizedName = [captureDevice2 localizedName];
          captureDevice3 = [v17 captureDevice];
          if ([captureDevice3 isContinuityCamera])
          {
            v24 = " (Continuity Camera)";
          }

          else
          {
            v24 = &unk_10001E8F6;
          }

          captureDevice4 = [v17 captureDevice];
          deviceType = [captureDevice4 deviceType];
          LODWORD(buf.value) = 134350082;
          *(&buf.value + 4) = cameraID;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = uniqueID;
          HIWORD(buf.epoch) = 2114;
          v226 = localizedName;
          v227 = 2082;
          v228 = v24;
          v229 = 2114;
          v230 = deviceType;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Found camera: %{public}@ %{public}@%{public}s, type: %{public}@", &buf, 0x34u);

          captureContext3 = v163;
          v15 = v162;
          v14 = obj;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [captureContext3 countByEnumeratingWithState:&v206 objects:v231 count:16];
    }

    while (v14);
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  captureContext4 = [(RMFacePoseCaptureSession *)self captureContext];
  v28 = [captureContext4 countByEnumeratingWithState:&v202 objects:v224 count:16];
  if (!v28)
  {
    goto LABEL_35;
  }

  v29 = *v203;
  while (2)
  {
    for (i = 0; i != v28; i = i + 1)
    {
      if (*v203 != v29)
      {
        objc_enumerationMutation(captureContext4);
      }

      v31 = *(*(&v202 + 1) + 8 * i);
      captureDevice5 = [v31 captureDevice];
      v201 = 0;
      v33 = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice5 error:&v201];
      v34 = v201;
      [v31 setCaptureDeviceInput:v33];

      if (v34)
      {
        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v151 = qword_10002C0D0;
        if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_155;
        }

        cameraID2 = [v31 cameraID];
        LODWORD(buf.value) = 134349314;
        *(&buf.value + 4) = cameraID2;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v34;
        v153 = "[Cam %{public}lu] Capture device error: %{public}@";
        v154 = v151;
        v155 = 22;
        goto LABEL_154;
      }

      captureDeviceInput = [v31 captureDeviceInput];
      v36 = captureDeviceInput == 0;

      if (v36)
      {
        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v151 = qword_10002C0D0;
        if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_155;
        }

        cameraID3 = [v31 cameraID];
        LODWORD(buf.value) = 134349056;
        *(&buf.value + 4) = cameraID3;
        v153 = "[Cam %{public}lu] Failed to create capture input";
        v154 = v151;
        v155 = 12;
LABEL_154:
        _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, v153, &buf, v155);
LABEL_155:

        goto LABEL_156;
      }
    }

    v28 = [captureContext4 countByEnumeratingWithState:&v202 objects:v224 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_35:

  _Block_object_dispose(&v211, 8);
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  captureContext5 = [(RMFacePoseCaptureSession *)self captureContext];
  v38 = [captureContext5 countByEnumeratingWithState:&v197 objects:v223 count:16];
  if (v38)
  {
    v39 = *v198;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v198 != v39)
        {
          objc_enumerationMutation(captureContext5);
        }

        v41 = *(*(&v197 + 1) + 8 * j);
        mediaType = [v41 mediaType];
        v43 = mediaType == AVMediaTypeVideo;

        if (v43)
        {
          v44 = objc_opt_new();
          [v41 setVideoDataOutput:v44];
        }
      }

      v38 = [captureContext5 countByEnumeratingWithState:&v197 objects:v223 count:16];
    }

    while (v38);
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  captureContext6 = [(RMFacePoseCaptureSession *)self captureContext];
  v46 = [captureContext6 countByEnumeratingWithState:&v193 objects:v222 count:16];
  if (v46)
  {
    v47 = *v194;
    do
    {
      for (k = 0; k != v46; k = k + 1)
      {
        if (*v194 != v47)
        {
          objc_enumerationMutation(captureContext6);
        }

        v49 = *(*(&v193 + 1) + 8 * k);
        v50 = objc_opt_new();
        [v49 setMetadataOutput:v50];

        metadataOutput = [v49 metadataOutput];
        captureQueue = [(RMFacePoseCaptureSession *)self captureQueue];
        [metadataOutput setMetadataObjectsDelegate:self queue:captureQueue];
      }

      v46 = [captureContext6 countByEnumeratingWithState:&v193 objects:v222 count:16];
    }

    while (v46);
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  captureContext7 = [(RMFacePoseCaptureSession *)self captureContext];
  v54 = [captureContext7 countByEnumeratingWithState:&v189 objects:v221 count:16];
  if (v54)
  {
    v55 = *v190;
    do
    {
      for (m = 0; m != v54; m = m + 1)
      {
        if (*v190 != v55)
        {
          objc_enumerationMutation(captureContext7);
        }

        v57 = *(*(&v189 + 1) + 8 * m);
        v58 = objc_opt_new();
        [v57 setCaptureSession:v58];

        captureSession = [v57 captureSession];
        [captureSession beginConfiguration];

        captureSession2 = [v57 captureSession];
        captureDeviceInput2 = [v57 captureDeviceInput];
        [captureSession2 addInput:captureDeviceInput2];

        metadataOutput2 = [v57 metadataOutput];
        LODWORD(captureDeviceInput2) = metadataOutput2 == 0;

        captureSession3 = [v57 captureSession];
        if (captureDeviceInput2)
        {
          [v57 videoDataOutput];
        }

        else
        {
          [v57 metadataOutput];
        }
        v64 = ;
        [captureSession3 addOutput:v64];

        captureSession4 = [v57 captureSession];
        [captureSession4 commitConfiguration];
      }

      v54 = [captureContext7 countByEnumeratingWithState:&v189 objects:v221 count:16];
    }

    while (v54);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  captureContext8 = [(RMFacePoseCaptureSession *)self captureContext];
  v67 = [captureContext8 countByEnumeratingWithState:&v185 objects:v220 count:16];
  if (v67)
  {
    v68 = *v186;
    v69 = AVMetadataObjectTypeTrackedFaces;
    do
    {
      for (n = 0; n != v67; n = n + 1)
      {
        if (*v186 != v68)
        {
          objc_enumerationMutation(captureContext8);
        }

        v71 = *(*(&v185 + 1) + 8 * n);
        metadataOutput3 = [v71 metadataOutput];
        v73 = metadataOutput3 == 0;

        if (!v73)
        {
          metadataOutput4 = [v71 metadataOutput];
          isFaceTrackingSupported = [metadataOutput4 isFaceTrackingSupported];

          if (isFaceTrackingSupported)
          {
            metadataOutput5 = [v71 metadataOutput];
            [metadataOutput5 setFaceTrackingMetadataObjectTypesAvailable:1];

            metadataOutput6 = [v71 metadataOutput];
            [metadataOutput6 setFaceTrackingMaxFaces:1];

            metadataOutput7 = [v71 metadataOutput];
            [metadataOutput7 setFaceTrackingUsesFaceRecognition:0];

            v219[0] = v69;
            v219[1] = AVMetadataObjectTypeFace;
            v79 = [NSArray arrayWithObjects:v219 count:2];
            metadataOutput8 = [v71 metadataOutput];
            [metadataOutput8 setMetadataObjectTypes:v79];

            [(RMFacePoseCaptureSession *)self networkFailureThresholdMultiplier];
            v82 = v81;
            metadataOutput9 = [v71 metadataOutput];
            *&v84 = v82;
            [metadataOutput9 setFaceTrackingNetworkFailureThresholdMultiplier:v84];

            [(RMFacePoseCaptureSession *)self trackingFailureFieldOfViewModifier];
            v86 = v85;
            metadataOutput10 = [v71 metadataOutput];
            *&v88 = v86;
            [metadataOutput10 setFaceTrackingFailureFieldOfViewModifier:v88];

            [v71 setSupportsFaceKitMetadata:1];
          }
        }
      }

      v67 = [captureContext8 countByEnumeratingWithState:&v185 objects:v220 count:16];
    }

    while (v67);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  captureContext9 = [(RMFacePoseCaptureSession *)self captureContext];
  v90 = [captureContext9 countByEnumeratingWithState:&v181 objects:v218 count:16];
  if (v90)
  {
    v91 = *v182;
    v92 = kCVPixelBufferPixelFormatTypeKey;
    do
    {
      for (ii = 0; ii != v90; ii = ii + 1)
      {
        if (*v182 != v91)
        {
          objc_enumerationMutation(captureContext9);
        }

        v94 = *(*(&v181 + 1) + 8 * ii);
        if (([v94 supportsFaceKitMetadata] & 1) == 0)
        {
          captureSession5 = [v94 captureSession];
          [captureSession5 beginConfiguration];

          v216 = v92;
          v217 = &off_100025F00;
          v96 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
          videoDataOutput = [v94 videoDataOutput];
          [videoDataOutput setVideoSettings:v96];

          videoDataOutput2 = [v94 videoDataOutput];
          [videoDataOutput2 setAlwaysDiscardsLateVideoFrames:1];

          videoDataOutput3 = [v94 videoDataOutput];
          captureQueue2 = [(RMFacePoseCaptureSession *)self captureQueue];
          [videoDataOutput3 setSampleBufferDelegate:self queue:captureQueue2];

          captureSession6 = [v94 captureSession];
          [captureSession6 commitConfiguration];
        }
      }

      v90 = [captureContext9 countByEnumeratingWithState:&v181 objects:v218 count:16];
    }

    while (v90);
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  obja = [(RMFacePoseCaptureSession *)self captureContext];
  v102 = [obja countByEnumeratingWithState:&v177 objects:v215 count:16];
  if (v102)
  {
    v167 = *v178;
    v161 = 134349568;
    while (2)
    {
      v103 = 0;
      do
      {
        if (*v178 != v167)
        {
          objc_enumerationMutation(obja);
        }

        v104 = *(*(&v177 + 1) + 8 * v103);
        captureDeviceInput3 = [v104 captureDeviceInput];
        device = [captureDeviceInput3 device];

        if (([device lockForConfiguration:0] & 1) == 0)
        {
          if (qword_10002C0C8 != -1)
          {
            sub_10001490C();
          }

          v157 = qword_10002C0D0;
          if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
          {
            v158 = v157;
            cameraID4 = [v104 cameraID];
            LODWORD(buf.value) = 134349056;
            *(&buf.value + 4) = cameraID4;
            _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_ERROR, "[Cam %{public}lu] Failed to acquire the lock for device configuration", &buf, 0xCu);
          }

          return 0;
        }

        captureSession7 = [v104 captureSession];
        [captureSession7 beginConfiguration];

        if (([v104 supportsFaceKitMetadata] & 1) != 0 || (objc_msgSend(device, "activeFormat"), v108 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v108, "supportedDepthDataFormats"), v109 = objc_claimAutoreleasedReturnValue(), v110 = objc_msgSend(v109, "count") == 0, v109, v108, v110))
        {
          formats = [device formats];
          v113 = -[RMFacePoseCaptureSession chooseBestFormatForFaceKit:forCameraID:](self, "chooseBestFormatForFaceKit:forCameraID:", formats, [v104 cameraID]);

          if (v113)
          {
            [device setActiveFormat:v113];
          }
        }

        else
        {
          activeFormat = [device activeFormat];
          supportedDepthDataFormats = [activeFormat supportedDepthDataFormats];
          v113 = -[RMFacePoseCaptureSession chooseBestFormatForFaceKit:forCameraID:](self, "chooseBestFormatForFaceKit:forCameraID:", supportedDepthDataFormats, [v104 cameraID]);

          if (v113)
          {
            [device setActiveDepthDataFormat:v113];
          }
        }

        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v115 = qword_10002C0D0;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          cameraID5 = [v104 cameraID];
          activeFormat2 = [device activeFormat];
          v118 = [activeFormat2 description];
          activeDepthDataFormat = [device activeDepthDataFormat];
          v120 = [activeDepthDataFormat description];
          LODWORD(buf.value) = 134349570;
          *(&buf.value + 4) = cameraID5;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v118;
          HIWORD(buf.epoch) = 2114;
          v226 = v120;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] activeFormat: %{public}@, activeDepthDataFormat: %{public}@", &buf, 0x20u);
        }

        if ([(RMFacePoseCaptureSession *)self frameRate]>= 1)
        {
          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          activeFormat3 = [device activeFormat];
          videoSupportedFrameRateRanges = [activeFormat3 videoSupportedFrameRateRanges];

          v123 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v173 objects:v214 count:16];
          if (v123)
          {
            v124 = *v174;
            while (2)
            {
              for (jj = 0; jj != v123; jj = jj + 1)
              {
                if (*v174 != v124)
                {
                  objc_enumerationMutation(videoSupportedFrameRateRanges);
                }

                v126 = *(*(&v173 + 1) + 8 * jj);
                frameRate = [(RMFacePoseCaptureSession *)self frameRate];
                [v126 minFrameRate];
                if (v128 <= frameRate)
                {
                  frameRate2 = [(RMFacePoseCaptureSession *)self frameRate];
                  [v126 maxFrameRate];
                  if (v130 >= frameRate2)
                  {

                    if (qword_10002C0C8 != -1)
                    {
                      sub_10001490C();
                    }

                    v134 = qword_10002C0D0;
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                    {
                      cameraID6 = [v104 cameraID];
                      frameRate3 = [(RMFacePoseCaptureSession *)self frameRate];
                      LODWORD(buf.value) = 134349312;
                      *(&buf.value + 4) = cameraID6;
                      LOWORD(buf.flags) = 1026;
                      *(&buf.flags + 2) = frameRate3;
                      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Setting frame rate to %{public}d fps", &buf, 0x12u);
                    }

                    memset(&buf, 0, sizeof(buf));
                    CMTimeMake(&buf, 1, [(RMFacePoseCaptureSession *)self frameRate]);
                    v211 = buf;
                    [device setActiveVideoMaxFrameDuration:&v211];
                    v211 = buf;
                    [device setActiveVideoMinFrameDuration:&v211];
                    goto LABEL_116;
                  }
                }
              }

              v123 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v173 objects:v214 count:16];
              if (v123)
              {
                continue;
              }

              break;
            }
          }

          if (qword_10002C0C8 != -1)
          {
            sub_10001490C();
          }

          v131 = qword_10002C0D0;
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            cameraID7 = [v104 cameraID];
            frameRate4 = [(RMFacePoseCaptureSession *)self frameRate];
            LODWORD(buf.value) = 134349312;
            *(&buf.value + 4) = cameraID7;
            LOWORD(buf.flags) = 1026;
            *(&buf.flags + 2) = frameRate4;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Frame rate of %{public}d fps is not supported", &buf, 0x12u);
          }
        }

LABEL_116:
        if ([device isExposureModeSupported:3])
        {
          memset(&v211, 0, sizeof(v211));
          CMTimeMake(&v211, 1, 60);
          if (qword_10002C0C8 != -1)
          {
            sub_10001490C();
          }

          v137 = qword_10002C0D0;
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            cameraID8 = [v104 cameraID];
            LODWORD(buf.value) = v161;
            *(&buf.value + 4) = cameraID8;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = v211.value;
            HIWORD(buf.epoch) = 1026;
            LODWORD(v226) = v211.timescale;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Setting max exposure duration to %lld/%{public}d sec", &buf, 0x1Cu);
          }

          buf = v211;
          [device setActiveMaxExposureDuration:&buf];
        }

        else
        {
          if (qword_10002C0C8 != -1)
          {
            sub_10001490C();
          }

          v139 = qword_10002C0D0;
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
          {
            cameraID9 = [v104 cameraID];
            LODWORD(buf.value) = 134349056;
            *(&buf.value + 4) = cameraID9;
            _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Max exposure duration setting is not supported", &buf, 0xCu);
          }
        }

        [device setGeometricDistortionCorrectionEnabled:0];
        captureSession8 = [v104 captureSession];
        [captureSession8 commitConfiguration];

        [device unlockForConfiguration];
        v103 = v103 + 1;
      }

      while (v103 != v102);
      v102 = [obja countByEnumeratingWithState:&v177 objects:v215 count:16];
      if (v102)
      {
        continue;
      }

      break;
    }
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  captureContext10 = [(RMFacePoseCaptureSession *)self captureContext];
  v143 = [captureContext10 countByEnumeratingWithState:&v169 objects:v213 count:16];
  if (v143)
  {
    v144 = *v170;
    do
    {
      for (kk = 0; kk != v143; kk = kk + 1)
      {
        if (*v170 != v144)
        {
          objc_enumerationMutation(captureContext10);
        }

        videoDataOutput4 = [*(*(&v169 + 1) + 8 * kk) videoDataOutput];
        v147 = [videoDataOutput4 connectionWithMediaType:AVMediaTypeVideo];

        [v147 setVideoMirrored:0];
      }

      v143 = [captureContext10 countByEnumeratingWithState:&v169 objects:v213 count:16];
    }

    while (v143);
  }

  if (qword_10002C0C8 != -1)
  {
    sub_10001490C();
  }

  v148 = qword_10002C0D0;
  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Capture session configuration finished", &buf, 2u);
  }

  return 1;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  connectionCopy = connection;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  selfCopy = self;
  captureContext = [(RMFacePoseCaptureSession *)self captureContext];
  v9 = [captureContext countByEnumeratingWithState:&v76 objects:v93 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v77;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(captureContext);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        videoDataOutput = [v13 videoDataOutput];
        v15 = [videoDataOutput connectionWithMediaType:AVMediaTypeVideo];
        v16 = v15 == connectionCopy;

        if (v16)
        {
          v17 = v13;

          v10 = v17;
        }
      }

      v9 = [captureContext countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v9);

    if (v10)
    {
      memset(&v75, 0, sizeof(v75));
      CMSampleBufferGetPresentationTimeStamp(&v75, buffer);
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      if (ImageBuffer)
      {
        buf.value = 0;
        *&buf.timescale = &buf;
        buf.epoch = 0x3032000000;
        v90 = sub_10000D0C0;
        v91 = sub_10000D0D0;
        v92 = 0;
        v19 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:ImageBuffer orientation:1 options:&__NSDictionary0__struct];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10000D0D8;
        v74[3] = &unk_100024FB8;
        v74[4] = &buf;
        firstObject2 = [[VNDetectFaceRectanglesRequest alloc] initWithCompletionHandler:v74];
        v88 = firstObject2;
        v21 = [NSArray arrayWithObjects:&v88 count:1];
        v73 = 0;
        v22 = [v19 performRequests:v21 error:&v73];
        v23 = v73;

        if (v22 && [*(*&buf.timescale + 40) count])
        {

          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_10000D124;
          v72[3] = &unk_100024FB8;
          v72[4] = &buf;
          firstObject2 = [[VNDetectFacePoseRequest alloc] initWithCompletionHandler:v72];
          firstObject = [*(*&buf.timescale + 40) firstObject];
          v87 = firstObject;
          v25 = [NSArray arrayWithObjects:&v87 count:1];
          [firstObject2 setInputFaceObservations:v25];

          v86 = firstObject2;
          v26 = [NSArray arrayWithObjects:&v86 count:1];
          v71 = v23;
          LODWORD(v25) = [v19 performRequests:v26 error:&v71];
          v27 = v71;

          if (v25 && [*(*&buf.timescale + 40) count])
          {

            firstObject2 = [*(*&buf.timescale + 40) firstObject];
            [firstObject2 boundingBox];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v84[0] = kCVAFaceTracking_DetectedFaceFaceID;
            v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [firstObject2 faceId]);
            v94.origin.y = 1.0 - v35 - v31;
            v85[0] = v36;
            v84[1] = kCVAFaceTracking_DetectedFaceRect;
            v94.origin.x = v29;
            v94.size.width = v33;
            v94.size.height = v35;
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v94);
            v85[1] = DictionaryRepresentation;
            v84[2] = kCVAFaceTracking_DetectedFaceAngleInfoRoll;
            roll = [firstObject2 roll];
            v85[2] = roll;
            v84[3] = @"AngleInfoPitch";
            pitch = [firstObject2 pitch];
            v85[3] = pitch;
            v84[4] = @"AngleInfoYaw";
            v38 = [firstObject2 yaw];
            v85[4] = v38;
            v84[5] = kCVAFaceTracking_Timestamp;
            time = v75;
            v39 = CMTimeCopyAsDictionary(&time, 0);
            v85[5] = v39;
            sbufa = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:6];

            [v10 setNumberOfDetectedFaces:{objc_msgSend(*(*&buf.timescale + 40), "count")}];
            if (qword_10002C0C8 != -1)
            {
              sub_10001490C();
            }

            v40 = qword_10002C0D0;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              cameraID = [v10 cameraID];
              LODWORD(time.value) = 134349315;
              *(&time.value + 4) = cameraID;
              LOWORD(time.flags) = 2113;
              *(&time.flags + 2) = sbufa;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[Cam %{public}ld] Face detected: %{private}@", &time, 0x16u);
            }

            v42 = 1;
          }

          else
          {
            sbufa = 0;
            v42 = 0;
          }

          v23 = v27;
        }

        else
        {
          sbufa = 0;
          v42 = 0;
        }

        _Block_object_dispose(&buf, 8);
        if (v42)
        {
          captureDeviceInput = [v10 captureDeviceInput];
          device = [captureDeviceInput device];
          activeFormat = [device activeFormat];

          v49 = -[RMFacePoseCaptureSession computeCameraParametersFromDimensions:](selfCopy, "computeCameraParametersFromDimensions:", CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]));
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_10000D170;
          v67[3] = &unk_100025008;
          v50 = v10;
          v68 = v50;
          v69 = selfCopy;
          v70 = v75;
          v51 = objc_retainBlock(v67);
          v81[0] = kCVAFaceTracking_Timestamp;
          buf = v75;
          v52 = CMTimeCopyAsDictionary(&buf, 0);
          v82[0] = v52;
          v81[1] = kCVAFaceTracking_DetectedFacesArray;
          v80 = sbufa;
          v53 = [NSArray arrayWithObjects:&v80 count:1];
          v82[1] = v53;
          v81[2] = kCVAFaceTracking_Color;
          v81[3] = kCVAFaceTracking_CameraColor;
          v82[2] = ImageBuffer;
          v82[3] = v49;
          v81[4] = kCVAFaceTracking_Callback;
          v54 = objc_retainBlock(v51);
          v82[4] = v54;
          v55 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:5];

          [v50 faceKit];
          v56 = CVAFaceTrackingProcess();
          if (v56)
          {
            if (qword_10002C0C8 != -1)
            {
              sub_10001490C();
            }

            v57 = qword_10002C0D0;
            if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
            {
              v58 = v57;
              cameraID2 = [v50 cameraID];
              LODWORD(buf.value) = 134349312;
              *(&buf.value + 4) = cameraID2;
              LOWORD(buf.flags) = 1026;
              *(&buf.flags + 2) = v56;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[Cam %{public}ld] FaceKit failed %{public}d", &buf, 0x12u);
            }
          }
        }
      }

      else
      {
        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v44 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
        {
          v45 = v44;
          cameraID3 = [v10 cameraID];
          LODWORD(buf.value) = 134349056;
          *(&buf.value + 4) = cameraID3;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[Cam %{public}lu] Failed to obtain the RGB buffer", &buf, 0xCu);
        }
      }

      goto LABEL_42;
    }
  }

  else
  {
  }

  if (qword_10002C0C8 != -1)
  {
    sub_10001490C();
  }

  v43 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Received sample buffer call back for unknown connection", &buf, 2u);
  }

LABEL_42:
}

- (id)chooseBestFormatForFaceKit:(id)kit forCameraID:(unint64_t)d
{
  kitCopy = kit;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [kitCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v24;
    v10 = 1.79769313e308;
    *&v6 = 134349570;
    v21 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(kitCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        height = CMVideoFormatDescriptionGetDimensions([v12 formatDescription]).height;
        if ([v12 isVideoBinned])
        {
          v14 = 0.0;
        }

        else
        {
          v14 = 1000.0;
        }

        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v15 = v14 + fabs(1080.0 / height + -1.0) * 100.0 + 0.0;
        v16 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          v18 = [v12 description];
          *buf = v21;
          dCopy = d;
          v29 = 2114;
          v30 = v18;
          v31 = 2050;
          v32 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[Cam %{public}lu] Format candidate: %{public}@, cost: %{public}.0f", buf, 0x20u);
        }

        if (v10 > v15)
        {
          v19 = v12;

          v10 = v15;
          v8 = v19;
        }

        v11 = v11 + 1;
      }

      while (v7 != v11);
      v7 = [kitCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  outputCopy = output;
  objectsCopy = objects;
  connectionCopy = connection;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  captureContext = [(RMFacePoseCaptureSession *)self captureContext];
  v11 = [captureContext countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (!v11)
  {

LABEL_35:
    if (qword_10002C0C8 != -1)
    {
      sub_10001490C();
    }

    v33 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(time1.value) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Received sample buffer call back for unknown connection", &time1, 2u);
    }

    v13 = 0;
    goto LABEL_50;
  }

  v12 = v11;
  selfCopy = self;
  v54 = objectsCopy;
  v13 = 0;
  v14 = *v67;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v67 != v14)
      {
        objc_enumerationMutation(captureContext);
      }

      v16 = *(*(&v66 + 1) + 8 * i);
      metadataOutput = [v16 metadataOutput];
      v18 = [metadataOutput connectionWithMediaType:AVMediaTypeMetadataObject];

      if (v18 == connectionCopy)
      {
        v19 = v16;

        v13 = v19;
      }
    }

    v12 = [captureContext countByEnumeratingWithState:&v66 objects:v71 count:16];
  }

  while (v12);

  objectsCopy = v54;
  if (!v13)
  {
    goto LABEL_35;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v54;
  v20 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v63;
    v23 = AVMetadataObjectTypeTrackedFaces;
    v57 = kCVAFaceTrackingLiteFilter_SharedData;
    v56 = kCVAFaceTracking_TrackedFacesArray;
    while (2)
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v63 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v62 + 1) + 8 * j);
        type = [v25 type];
        v27 = [type isEqualToString:v23];

        if (v27)
        {
          [v13 detectedFacesTimestamp];
          if (v25)
          {
            [v25 time];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          if (CMTimeCompare(&time1, &time2) == 1)
          {
            if (qword_10002C0C8 != -1)
            {
              sub_10001490C();
            }

            v34 = qword_10002C0D0;
            if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(time1.value) = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Discarding tracked faces, already have detected faces with newer timestamp", &time1, 2u);
            }

            goto LABEL_44;
          }

          payload = [v25 payload];
          v31 = [payload objectForKeyedSubscript:v57];
          if (!v31)
          {
            v31 = payload;
          }

          v32 = [v31 objectForKeyedSubscript:v56];
          [v13 setTrackedFaces:v32];
        }

        else
        {
          type2 = [v25 type];
          v29 = [type2 isEqualToString:AVMetadataObjectTypeFace];

          if (v29)
          {
            if (v25)
            {
              [v25 time];
            }

            else
            {
              memset(&v59, 0, sizeof(v59));
            }

            time1 = v59;
            [v13 setDetectedFacesTimestamp:&time1];
            if (([v13 numberOfDetectedFaces] & 0x8000000000000000) != 0)
            {
              [v13 setNumberOfDetectedFaces:0];
            }

            [v13 setNumberOfDetectedFaces:{objc_msgSend(v13, "numberOfDetectedFaces") + 1}];
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:

  if (([v13 numberOfDetectedFaces] & 0x8000000000000000) != 0 || (objc_msgSend(v13, "trackedFaces"), v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
  {
    objectsCopy = v54;
  }

  else
  {
    v36 = objc_opt_new();
    v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 cameraID]);
    [v36 setObject:v37 forKeyedSubscript:@"rm_camera_id"];

    captureDevice = [v13 captureDevice];
    localizedName = [captureDevice localizedName];
    [v36 setObject:localizedName forKeyedSubscript:@"rm_camera_device_name"];

    captureDevice2 = [v13 captureDevice];
    modelID = [captureDevice2 modelID];
    [v36 setObject:modelID forKeyedSubscript:@"rm_camera_device_model_id"];

    captureDevice3 = [v13 captureDevice];
    uniqueID = [captureDevice3 uniqueID];
    [v36 setObject:uniqueID forKeyedSubscript:@"rm_camera_device_id"];

    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isBuiltInCamera]);
    [v36 setObject:v44 forKeyedSubscript:@"rm_built_in"];

    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 numberOfDetectedFaces]);
    [v36 setObject:v45 forKeyedSubscript:@"rm_number_of_detected_faces"];

    trackedFaces = [v13 trackedFaces];
    [v36 setObject:trackedFaces forKeyedSubscript:@"rm_tracked_faces"];

    videoDataOutput = [v13 videoDataOutput];
    v48 = [NSNumber numberWithInt:videoDataOutput != 0];
    [v36 setObject:v48 forKeyedSubscript:@"rm_has_video_data_output"];

    metadataOutput2 = [v13 metadataOutput];
    v50 = [NSNumber numberWithInt:metadataOutput2 != 0];
    [v36 setObject:v50 forKeyedSubscript:@"rm_has_metadata_output"];

    handler = [(RMFacePoseCaptureSession *)selfCopy handler];

    objectsCopy = v54;
    if (handler)
    {
      handler2 = [(RMFacePoseCaptureSession *)selfCopy handler];
      [v13 detectedFacesTimestamp];
      (handler2)[2](handler2, v36, &time1);
    }

    [v13 setNumberOfDetectedFaces:-1];
    [v13 setTrackedFaces:0];
  }

LABEL_50:
}

- (void)startFaceKitForContext:(id)context
{
  contextCopy = context;
  if (![contextCopy faceKit])
  {
    if (qword_10002C0C8 != -1)
    {
      sub_100014934();
    }

    v5 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting FaceKit", buf, 2u);
    }

    v17[0] = kCVAFaceTracking_ColorOnly;
    v17[1] = kCVAFaceTracking_RobustTongue;
    v18[0] = &__kCFBooleanTrue;
    v18[1] = &__kCFBooleanFalse;
    v18[2] = &off_100025EE8;
    v17[2] = kCVAFaceTracking_NumTrackedFaces;
    v17[3] = kCVAFaceTracking_NetworkFailureThresholdMultiplier;
    [(RMFacePoseCaptureSession *)self networkFailureThresholdMultiplier];
    v6 = [NSNumber numberWithDouble:?];
    v18[3] = v6;
    v17[4] = kCVAFaceTracking_TrackingFailureFieldOfViewModifier;
    [(RMFacePoseCaptureSession *)self trackingFailureFieldOfViewModifier];
    v7 = [NSNumber numberWithDouble:?];
    v17[5] = kCVAFaceTracking_UseRecognition;
    v18[4] = v7;
    v18[5] = &__kCFBooleanFalse;
    v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:6];

    v9 = CVAFaceTrackingCreate();
    [contextCopy setFaceKit:0];
    if (v9)
    {
      if (qword_10002C0C8 != -1)
      {
        sub_10001490C();
      }

      v10 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        cameraID = [contextCopy cameraID];
        *buf = 134349312;
        v14 = cameraID;
        v15 = 1026;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Cam %{public}lu] Failed to create FaceKit instance: error: %{public}d", buf, 0x12u);
      }

      [contextCopy setFaceKit:0];
    }
  }
}

- (void)stopFaceKitForContext:(id)context
{
  contextCopy = context;
  if ([contextCopy faceKit])
  {
    if (qword_10002C0C8 != -1)
    {
      sub_100014934();
    }

    v4 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = 134349056;
      cameraID = [contextCopy cameraID];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Stopping FaceKit", &v6, 0xCu);
    }

    CFRelease([contextCopy faceKit]);
    [contextCopy setFaceKit:0];
  }
}

- (id)computeCameraParametersFromDimensions:(id)dimensions
{
  var0 = dimensions.var0;
  var1 = dimensions.var1;
  v5 = sqrt(dimensions.var1 * dimensions.var1 + dimensions.var0 * dimensions.var0);
  [(RMFacePoseCaptureSession *)self defaultFieldOfView];
  v7 = tan(v6 * 3.14159265 / 180.0 * 0.5);
  v8 = v5 / (v7 + v7);
  v9 = vcvtd_n_f64_s32(var1, 1uLL) + -0.5;
  v10 = [NSNumber numberWithDouble:v8];
  v47[0] = v10;
  v47[1] = &off_100025EC0;
  v11 = [NSNumber numberWithDouble:vcvtd_n_f64_s32(var0, 1uLL) + -0.5];
  v47[2] = v11;
  v12 = [NSArray arrayWithObjects:v47 count:3];
  v48[0] = v12;
  v46[0] = &off_100025EC0;
  v13 = [NSNumber numberWithDouble:v8];
  v46[1] = v13;
  v14 = [NSNumber numberWithDouble:v9];
  v46[2] = v14;
  v15 = [NSArray arrayWithObjects:v46 count:3];
  v48[1] = v15;
  v48[2] = &off_100025F48;
  v37 = [NSArray arrayWithObjects:v48 count:3];

  LODWORD(v16) = 844757668;
  v36 = [NSNumber numberWithFloat:v16];
  v44[0] = v36;
  LODWORD(v17) = -1082130433;
  v35 = [NSNumber numberWithFloat:v17];
  v44[1] = v35;
  v34 = [NSNumber numberWithFloat:0.0];
  v44[2] = v34;
  v33 = [NSArray arrayWithObjects:v44 count:3];
  v45[0] = v33;
  LODWORD(v18) = 1065353215;
  v19 = [NSNumber numberWithFloat:v18];
  v43[0] = v19;
  LODWORD(v20) = 844757668;
  v21 = [NSNumber numberWithFloat:v20];
  v43[1] = v21;
  v22 = [NSNumber numberWithFloat:0.0];
  v43[2] = v22;
  v23 = [NSArray arrayWithObjects:v43 count:3];
  v45[1] = v23;
  v24 = [NSNumber numberWithFloat:0.0];
  v42[0] = v24;
  v25 = [NSNumber numberWithFloat:0.0];
  v42[1] = v25;
  LODWORD(v26) = 1065353215;
  v27 = [NSNumber numberWithFloat:v26];
  v42[2] = v27;
  v28 = [NSArray arrayWithObjects:v42 count:3];
  v45[2] = v28;
  v29 = [NSArray arrayWithObjects:v45 count:3];

  v40[0] = kCVAFaceTracking_Rotation;
  v40[1] = kCVAFaceTracking_Translation;
  v41[0] = v29;
  v41[1] = &off_100025F60;
  v30 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  v38[0] = kCVAFaceTracking_Intrinsics;
  v38[1] = kCVAFaceTracking_Extrinsics;
  v39[0] = v37;
  v39[1] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

  return v31;
}

- (RMFacePoseCaptureSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
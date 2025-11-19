@interface RMFacePoseCaptureSession
- (BOOL)configureCaptureSession;
- (RMFacePoseCaptureSession)init;
- (RMFacePoseCaptureSessionDelegate)delegate;
- (id)chooseBestFormatForFaceKit:(id)a3 forCameraID:(unint64_t)a4;
- (id)computeCameraParametersFromDimensions:(id)a3;
- (unint64_t)numberOfCameras;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)setCameraPaused:(BOOL)a3;
- (void)startCaptureSessionWithHandler:(id)a3;
- (void)startFaceKitForContext:(id)a3;
- (void)stopCaptureSession;
- (void)stopFaceKitForContext:(id)a3;
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

- (void)startCaptureSessionWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMFacePoseCaptureSession *)self captureQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A134;
  v7[3] = &unk_100024D78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopCaptureSession
{
  v3 = [(RMFacePoseCaptureSession *)self captureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A598;
  block[3] = &unk_100024948;
  block[4] = self;
  dispatch_sync(v3, block);

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

- (void)setCameraPaused:(BOOL)a3
{
  v5 = [(RMFacePoseCaptureSession *)self captureQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AA14;
  v6[3] = &unk_100024F68;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (unint64_t)numberOfCameras
{
  v2 = [(RMFacePoseCaptureSession *)self captureContext];
  v3 = [v2 count];

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

  v8 = [(RMFacePoseCaptureSession *)self captureContext];
  v9 = [v8 count] == 0;

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
    v11 = [(RMFacePoseCaptureSession *)self captureContext];
    v12 = [v11 count];
    LODWORD(buf.value) = 134349056;
    *(&buf.value + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Number of face tracking cameras: %{public}lu", &buf, 0xCu);
  }

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v13 = [(RMFacePoseCaptureSession *)self captureContext];
  v14 = [v13 countByEnumeratingWithState:&v206 objects:v231 count:16];
  if (v14)
  {
    v15 = *v207;
    v163 = v13;
    v162 = *v207;
    do
    {
      v16 = 0;
      obj = v14;
      do
      {
        if (*v207 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v206 + 1) + 8 * v16);
        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v18 = qword_10002C0D0;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v17 cameraID];
          v166 = [v17 captureDevice];
          v20 = [v166 uniqueID];
          v21 = [v17 captureDevice];
          v22 = [v21 localizedName];
          v23 = [v17 captureDevice];
          if ([v23 isContinuityCamera])
          {
            v24 = " (Continuity Camera)";
          }

          else
          {
            v24 = &unk_10001E8F6;
          }

          v25 = [v17 captureDevice];
          v26 = [v25 deviceType];
          LODWORD(buf.value) = 134350082;
          *(&buf.value + 4) = v19;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v20;
          HIWORD(buf.epoch) = 2114;
          v226 = v22;
          v227 = 2082;
          v228 = v24;
          v229 = 2114;
          v230 = v26;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Found camera: %{public}@ %{public}@%{public}s, type: %{public}@", &buf, 0x34u);

          v13 = v163;
          v15 = v162;
          v14 = obj;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v206 objects:v231 count:16];
    }

    while (v14);
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v27 = [(RMFacePoseCaptureSession *)self captureContext];
  v28 = [v27 countByEnumeratingWithState:&v202 objects:v224 count:16];
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
        objc_enumerationMutation(v27);
      }

      v31 = *(*(&v202 + 1) + 8 * i);
      v32 = [v31 captureDevice];
      v201 = 0;
      v33 = [AVCaptureDeviceInput deviceInputWithDevice:v32 error:&v201];
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

        v152 = [v31 cameraID];
        LODWORD(buf.value) = 134349314;
        *(&buf.value + 4) = v152;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v34;
        v153 = "[Cam %{public}lu] Capture device error: %{public}@";
        v154 = v151;
        v155 = 22;
        goto LABEL_154;
      }

      v35 = [v31 captureDeviceInput];
      v36 = v35 == 0;

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

        v156 = [v31 cameraID];
        LODWORD(buf.value) = 134349056;
        *(&buf.value + 4) = v156;
        v153 = "[Cam %{public}lu] Failed to create capture input";
        v154 = v151;
        v155 = 12;
LABEL_154:
        _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, v153, &buf, v155);
LABEL_155:

        goto LABEL_156;
      }
    }

    v28 = [v27 countByEnumeratingWithState:&v202 objects:v224 count:16];
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
  v37 = [(RMFacePoseCaptureSession *)self captureContext];
  v38 = [v37 countByEnumeratingWithState:&v197 objects:v223 count:16];
  if (v38)
  {
    v39 = *v198;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v198 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v197 + 1) + 8 * j);
        v42 = [v41 mediaType];
        v43 = v42 == AVMediaTypeVideo;

        if (v43)
        {
          v44 = objc_opt_new();
          [v41 setVideoDataOutput:v44];
        }
      }

      v38 = [v37 countByEnumeratingWithState:&v197 objects:v223 count:16];
    }

    while (v38);
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v45 = [(RMFacePoseCaptureSession *)self captureContext];
  v46 = [v45 countByEnumeratingWithState:&v193 objects:v222 count:16];
  if (v46)
  {
    v47 = *v194;
    do
    {
      for (k = 0; k != v46; k = k + 1)
      {
        if (*v194 != v47)
        {
          objc_enumerationMutation(v45);
        }

        v49 = *(*(&v193 + 1) + 8 * k);
        v50 = objc_opt_new();
        [v49 setMetadataOutput:v50];

        v51 = [v49 metadataOutput];
        v52 = [(RMFacePoseCaptureSession *)self captureQueue];
        [v51 setMetadataObjectsDelegate:self queue:v52];
      }

      v46 = [v45 countByEnumeratingWithState:&v193 objects:v222 count:16];
    }

    while (v46);
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v53 = [(RMFacePoseCaptureSession *)self captureContext];
  v54 = [v53 countByEnumeratingWithState:&v189 objects:v221 count:16];
  if (v54)
  {
    v55 = *v190;
    do
    {
      for (m = 0; m != v54; m = m + 1)
      {
        if (*v190 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v189 + 1) + 8 * m);
        v58 = objc_opt_new();
        [v57 setCaptureSession:v58];

        v59 = [v57 captureSession];
        [v59 beginConfiguration];

        v60 = [v57 captureSession];
        v61 = [v57 captureDeviceInput];
        [v60 addInput:v61];

        v62 = [v57 metadataOutput];
        LODWORD(v61) = v62 == 0;

        v63 = [v57 captureSession];
        if (v61)
        {
          [v57 videoDataOutput];
        }

        else
        {
          [v57 metadataOutput];
        }
        v64 = ;
        [v63 addOutput:v64];

        v65 = [v57 captureSession];
        [v65 commitConfiguration];
      }

      v54 = [v53 countByEnumeratingWithState:&v189 objects:v221 count:16];
    }

    while (v54);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v66 = [(RMFacePoseCaptureSession *)self captureContext];
  v67 = [v66 countByEnumeratingWithState:&v185 objects:v220 count:16];
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
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v185 + 1) + 8 * n);
        v72 = [v71 metadataOutput];
        v73 = v72 == 0;

        if (!v73)
        {
          v74 = [v71 metadataOutput];
          v75 = [v74 isFaceTrackingSupported];

          if (v75)
          {
            v76 = [v71 metadataOutput];
            [v76 setFaceTrackingMetadataObjectTypesAvailable:1];

            v77 = [v71 metadataOutput];
            [v77 setFaceTrackingMaxFaces:1];

            v78 = [v71 metadataOutput];
            [v78 setFaceTrackingUsesFaceRecognition:0];

            v219[0] = v69;
            v219[1] = AVMetadataObjectTypeFace;
            v79 = [NSArray arrayWithObjects:v219 count:2];
            v80 = [v71 metadataOutput];
            [v80 setMetadataObjectTypes:v79];

            [(RMFacePoseCaptureSession *)self networkFailureThresholdMultiplier];
            v82 = v81;
            v83 = [v71 metadataOutput];
            *&v84 = v82;
            [v83 setFaceTrackingNetworkFailureThresholdMultiplier:v84];

            [(RMFacePoseCaptureSession *)self trackingFailureFieldOfViewModifier];
            v86 = v85;
            v87 = [v71 metadataOutput];
            *&v88 = v86;
            [v87 setFaceTrackingFailureFieldOfViewModifier:v88];

            [v71 setSupportsFaceKitMetadata:1];
          }
        }
      }

      v67 = [v66 countByEnumeratingWithState:&v185 objects:v220 count:16];
    }

    while (v67);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v89 = [(RMFacePoseCaptureSession *)self captureContext];
  v90 = [v89 countByEnumeratingWithState:&v181 objects:v218 count:16];
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
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v181 + 1) + 8 * ii);
        if (([v94 supportsFaceKitMetadata] & 1) == 0)
        {
          v95 = [v94 captureSession];
          [v95 beginConfiguration];

          v216 = v92;
          v217 = &off_100025F00;
          v96 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
          v97 = [v94 videoDataOutput];
          [v97 setVideoSettings:v96];

          v98 = [v94 videoDataOutput];
          [v98 setAlwaysDiscardsLateVideoFrames:1];

          v99 = [v94 videoDataOutput];
          v100 = [(RMFacePoseCaptureSession *)self captureQueue];
          [v99 setSampleBufferDelegate:self queue:v100];

          v101 = [v94 captureSession];
          [v101 commitConfiguration];
        }
      }

      v90 = [v89 countByEnumeratingWithState:&v181 objects:v218 count:16];
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
        v105 = [v104 captureDeviceInput];
        v106 = [v105 device];

        if (([v106 lockForConfiguration:0] & 1) == 0)
        {
          if (qword_10002C0C8 != -1)
          {
            sub_10001490C();
          }

          v157 = qword_10002C0D0;
          if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
          {
            v158 = v157;
            v159 = [v104 cameraID];
            LODWORD(buf.value) = 134349056;
            *(&buf.value + 4) = v159;
            _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_ERROR, "[Cam %{public}lu] Failed to acquire the lock for device configuration", &buf, 0xCu);
          }

          return 0;
        }

        v107 = [v104 captureSession];
        [v107 beginConfiguration];

        if (([v104 supportsFaceKitMetadata] & 1) != 0 || (objc_msgSend(v106, "activeFormat"), v108 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v108, "supportedDepthDataFormats"), v109 = objc_claimAutoreleasedReturnValue(), v110 = objc_msgSend(v109, "count") == 0, v109, v108, v110))
        {
          v114 = [v106 formats];
          v113 = -[RMFacePoseCaptureSession chooseBestFormatForFaceKit:forCameraID:](self, "chooseBestFormatForFaceKit:forCameraID:", v114, [v104 cameraID]);

          if (v113)
          {
            [v106 setActiveFormat:v113];
          }
        }

        else
        {
          v111 = [v106 activeFormat];
          v112 = [v111 supportedDepthDataFormats];
          v113 = -[RMFacePoseCaptureSession chooseBestFormatForFaceKit:forCameraID:](self, "chooseBestFormatForFaceKit:forCameraID:", v112, [v104 cameraID]);

          if (v113)
          {
            [v106 setActiveDepthDataFormat:v113];
          }
        }

        if (qword_10002C0C8 != -1)
        {
          sub_10001490C();
        }

        v115 = qword_10002C0D0;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v116 = [v104 cameraID];
          v117 = [v106 activeFormat];
          v118 = [v117 description];
          v119 = [v106 activeDepthDataFormat];
          v120 = [v119 description];
          LODWORD(buf.value) = 134349570;
          *(&buf.value + 4) = v116;
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
          v121 = [v106 activeFormat];
          v122 = [v121 videoSupportedFrameRateRanges];

          v123 = [v122 countByEnumeratingWithState:&v173 objects:v214 count:16];
          if (v123)
          {
            v124 = *v174;
            while (2)
            {
              for (jj = 0; jj != v123; jj = jj + 1)
              {
                if (*v174 != v124)
                {
                  objc_enumerationMutation(v122);
                }

                v126 = *(*(&v173 + 1) + 8 * jj);
                v127 = [(RMFacePoseCaptureSession *)self frameRate];
                [v126 minFrameRate];
                if (v128 <= v127)
                {
                  v129 = [(RMFacePoseCaptureSession *)self frameRate];
                  [v126 maxFrameRate];
                  if (v130 >= v129)
                  {

                    if (qword_10002C0C8 != -1)
                    {
                      sub_10001490C();
                    }

                    v134 = qword_10002C0D0;
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                    {
                      v135 = [v104 cameraID];
                      v136 = [(RMFacePoseCaptureSession *)self frameRate];
                      LODWORD(buf.value) = 134349312;
                      *(&buf.value + 4) = v135;
                      LOWORD(buf.flags) = 1026;
                      *(&buf.flags + 2) = v136;
                      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Setting frame rate to %{public}d fps", &buf, 0x12u);
                    }

                    memset(&buf, 0, sizeof(buf));
                    CMTimeMake(&buf, 1, [(RMFacePoseCaptureSession *)self frameRate]);
                    v211 = buf;
                    [v106 setActiveVideoMaxFrameDuration:&v211];
                    v211 = buf;
                    [v106 setActiveVideoMinFrameDuration:&v211];
                    goto LABEL_116;
                  }
                }
              }

              v123 = [v122 countByEnumeratingWithState:&v173 objects:v214 count:16];
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
            v132 = [v104 cameraID];
            v133 = [(RMFacePoseCaptureSession *)self frameRate];
            LODWORD(buf.value) = 134349312;
            *(&buf.value + 4) = v132;
            LOWORD(buf.flags) = 1026;
            *(&buf.flags + 2) = v133;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Frame rate of %{public}d fps is not supported", &buf, 0x12u);
          }
        }

LABEL_116:
        if ([v106 isExposureModeSupported:3])
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
            v138 = [v104 cameraID];
            LODWORD(buf.value) = v161;
            *(&buf.value + 4) = v138;
            LOWORD(buf.flags) = 2048;
            *(&buf.flags + 2) = v211.value;
            HIWORD(buf.epoch) = 1026;
            LODWORD(v226) = v211.timescale;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Setting max exposure duration to %lld/%{public}d sec", &buf, 0x1Cu);
          }

          buf = v211;
          [v106 setActiveMaxExposureDuration:&buf];
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
            v140 = [v104 cameraID];
            LODWORD(buf.value) = 134349056;
            *(&buf.value + 4) = v140;
            _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Max exposure duration setting is not supported", &buf, 0xCu);
          }
        }

        [v106 setGeometricDistortionCorrectionEnabled:0];
        v141 = [v104 captureSession];
        [v141 commitConfiguration];

        [v106 unlockForConfiguration];
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
  v142 = [(RMFacePoseCaptureSession *)self captureContext];
  v143 = [v142 countByEnumeratingWithState:&v169 objects:v213 count:16];
  if (v143)
  {
    v144 = *v170;
    do
    {
      for (kk = 0; kk != v143; kk = kk + 1)
      {
        if (*v170 != v144)
        {
          objc_enumerationMutation(v142);
        }

        v146 = [*(*(&v169 + 1) + 8 * kk) videoDataOutput];
        v147 = [v146 connectionWithMediaType:AVMediaTypeVideo];

        [v147 setVideoMirrored:0];
      }

      v143 = [v142 countByEnumeratingWithState:&v169 objects:v213 count:16];
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

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v66 = a3;
  v7 = a5;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v63 = self;
  v8 = [(RMFacePoseCaptureSession *)self captureContext];
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v93 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        v14 = [v13 videoDataOutput];
        v15 = [v14 connectionWithMediaType:AVMediaTypeVideo];
        v16 = v15 == v7;

        if (v16)
        {
          v17 = v13;

          v10 = v17;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v9);

    if (v10)
    {
      memset(&v75, 0, sizeof(v75));
      CMSampleBufferGetPresentationTimeStamp(&v75, a4);
      ImageBuffer = CMSampleBufferGetImageBuffer(a4);
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
        v20 = [[VNDetectFaceRectanglesRequest alloc] initWithCompletionHandler:v74];
        v88 = v20;
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
          v20 = [[VNDetectFacePoseRequest alloc] initWithCompletionHandler:v72];
          v24 = [*(*&buf.timescale + 40) firstObject];
          v87 = v24;
          v25 = [NSArray arrayWithObjects:&v87 count:1];
          [v20 setInputFaceObservations:v25];

          v86 = v20;
          v26 = [NSArray arrayWithObjects:&v86 count:1];
          v71 = v23;
          LODWORD(v25) = [v19 performRequests:v26 error:&v71];
          v27 = v71;

          if (v25 && [*(*&buf.timescale + 40) count])
          {

            v20 = [*(*&buf.timescale + 40) firstObject];
            [v20 boundingBox];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v84[0] = kCVAFaceTracking_DetectedFaceFaceID;
            v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 faceId]);
            v94.origin.y = 1.0 - v35 - v31;
            v85[0] = v36;
            v84[1] = kCVAFaceTracking_DetectedFaceRect;
            v94.origin.x = v29;
            v94.size.width = v33;
            v94.size.height = v35;
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v94);
            v85[1] = DictionaryRepresentation;
            v84[2] = kCVAFaceTracking_DetectedFaceAngleInfoRoll;
            v60 = [v20 roll];
            v85[2] = v60;
            v84[3] = @"AngleInfoPitch";
            v37 = [v20 pitch];
            v85[3] = v37;
            v84[4] = @"AngleInfoYaw";
            v38 = [v20 yaw];
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
              v41 = [v10 cameraID];
              LODWORD(time.value) = 134349315;
              *(&time.value + 4) = v41;
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
          v47 = [v10 captureDeviceInput];
          v48 = [v47 device];
          v62 = [v48 activeFormat];

          v49 = -[RMFacePoseCaptureSession computeCameraParametersFromDimensions:](v63, "computeCameraParametersFromDimensions:", CMVideoFormatDescriptionGetDimensions([v62 formatDescription]));
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_10000D170;
          v67[3] = &unk_100025008;
          v50 = v10;
          v68 = v50;
          v69 = v63;
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
              v59 = [v50 cameraID];
              LODWORD(buf.value) = 134349312;
              *(&buf.value + 4) = v59;
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
          v46 = [v10 cameraID];
          LODWORD(buf.value) = 134349056;
          *(&buf.value + 4) = v46;
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

- (id)chooseBestFormatForFaceKit:(id)a3 forCameraID:(unint64_t)a4
{
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
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
          objc_enumerationMutation(v4);
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
          v28 = a4;
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
      v7 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v55 = a3;
  v8 = a4;
  v9 = a5;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v10 = [(RMFacePoseCaptureSession *)self captureContext];
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v71 count:16];
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
  v53 = self;
  v54 = v8;
  v13 = 0;
  v14 = *v67;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v67 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v66 + 1) + 8 * i);
      v17 = [v16 metadataOutput];
      v18 = [v17 connectionWithMediaType:AVMediaTypeMetadataObject];

      if (v18 == v9)
      {
        v19 = v16;

        v13 = v19;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v66 objects:v71 count:16];
  }

  while (v12);

  v8 = v54;
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
        v26 = [v25 type];
        v27 = [v26 isEqualToString:v23];

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

          v30 = [v25 payload];
          v31 = [v30 objectForKeyedSubscript:v57];
          if (!v31)
          {
            v31 = v30;
          }

          v32 = [v31 objectForKeyedSubscript:v56];
          [v13 setTrackedFaces:v32];
        }

        else
        {
          v28 = [v25 type];
          v29 = [v28 isEqualToString:AVMetadataObjectTypeFace];

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
    v8 = v54;
  }

  else
  {
    v36 = objc_opt_new();
    v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 cameraID]);
    [v36 setObject:v37 forKeyedSubscript:@"rm_camera_id"];

    v38 = [v13 captureDevice];
    v39 = [v38 localizedName];
    [v36 setObject:v39 forKeyedSubscript:@"rm_camera_device_name"];

    v40 = [v13 captureDevice];
    v41 = [v40 modelID];
    [v36 setObject:v41 forKeyedSubscript:@"rm_camera_device_model_id"];

    v42 = [v13 captureDevice];
    v43 = [v42 uniqueID];
    [v36 setObject:v43 forKeyedSubscript:@"rm_camera_device_id"];

    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isBuiltInCamera]);
    [v36 setObject:v44 forKeyedSubscript:@"rm_built_in"];

    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 numberOfDetectedFaces]);
    [v36 setObject:v45 forKeyedSubscript:@"rm_number_of_detected_faces"];

    v46 = [v13 trackedFaces];
    [v36 setObject:v46 forKeyedSubscript:@"rm_tracked_faces"];

    v47 = [v13 videoDataOutput];
    v48 = [NSNumber numberWithInt:v47 != 0];
    [v36 setObject:v48 forKeyedSubscript:@"rm_has_video_data_output"];

    v49 = [v13 metadataOutput];
    v50 = [NSNumber numberWithInt:v49 != 0];
    [v36 setObject:v50 forKeyedSubscript:@"rm_has_metadata_output"];

    v51 = [(RMFacePoseCaptureSession *)v53 handler];

    v8 = v54;
    if (v51)
    {
      v52 = [(RMFacePoseCaptureSession *)v53 handler];
      [v13 detectedFacesTimestamp];
      (v52)[2](v52, v36, &time1);
    }

    [v13 setNumberOfDetectedFaces:-1];
    [v13 setTrackedFaces:0];
  }

LABEL_50:
}

- (void)startFaceKitForContext:(id)a3
{
  v4 = a3;
  if (![v4 faceKit])
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
    [v4 setFaceKit:0];
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
        v12 = [v4 cameraID];
        *buf = 134349312;
        v14 = v12;
        v15 = 1026;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Cam %{public}lu] Failed to create FaceKit instance: error: %{public}d", buf, 0x12u);
      }

      [v4 setFaceKit:0];
    }
  }
}

- (void)stopFaceKitForContext:(id)a3
{
  v3 = a3;
  if ([v3 faceKit])
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
      v7 = [v3 cameraID];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Cam %{public}lu] Stopping FaceKit", &v6, 0xCu);
    }

    CFRelease([v3 faceKit]);
    [v3 setFaceKit:0];
  }
}

- (id)computeCameraParametersFromDimensions:(id)a3
{
  var0 = a3.var0;
  var1 = a3.var1;
  v5 = sqrt(a3.var1 * a3.var1 + a3.var0 * a3.var0);
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
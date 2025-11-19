void sub_100003C60(uint64_t a1)
{
  v1 = [*(a1 + 32) table];
  [v1 reloadData];
}

id sub_100003F64(uint64_t a1)
{
  v2 = [*(a1 + 32) table];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 setIsHandlingNotification:0];
}

id sub_100004110(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 getStateWithToken:v1[2]];

  return [v1 thermalPressureDidChangeWithThermalLevel:v2];
}

void sub_100004B08(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E808(v2);
    }

    NSLog(@"error = %@", v2);
  }
}

void sub_100004C48(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  if ([*(a1 + 40) fileExistsAtPath:v2])
  {
    v3 = *(a1 + 40);
    v7 = 0;
    v4 = [v3 removeItemAtPath:v2 error:&v7];
    v5 = v7;
    if ((v4 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E880(v5);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_100004E08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) path];
  LODWORD(v2) = [v2 fileExistsAtPath:v3];

  if (v2)
  {
    [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v16 = 0;
  [v6 moveItemAtURL:v4 toURL:v5 error:&v16];
  v7 = v16;
  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005E8F8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, v7);
  }
}

void sub_100004F84(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) _srTempPath];
  v24 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v24];
  v5 = v24;

  v6 = [NSPredicate predicateWithFormat:@"self BEGINSWITH[cd] %@", *(a1 + 40)];
  v17 = v4;
  v7 = [v4 filteredArrayUsingPredicate:v6];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        v12 = v5;
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005E96C(buf, v5, v26);
        }

        v14 = *(a1 + 32);
        v15 = [v14 _srTempPath];
        v16 = [NSString stringWithFormat:@"%@/%@", v15, v13];
        v19 = v12;
        [v14 removeItemAtPath:v16 error:&v19];
        v5 = v19;
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v9);
  }
}

void sub_100005378(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100006904(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[88] & 1) == 0)
  {
    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136446466;
        v20 = "[RPMicAudioCaptureManager startMicrophoneCaptureWithOutput:didStartHandler:useRemoteIOFormat:]_block_invoke";
        v21 = 1024;
        v22 = 160;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v19, 0x12u);
      }

      v2 = *(a1 + 32);
    }

    [v2 startCaptureSession];
    [*(*(a1 + 32) + 64) setUsesApplicationAudioSession:1];
    [*(*(a1 + 32) + 64) setAutomaticallyConfiguresApplicationAudioSession:0];
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = objc_retainBlock(v3);
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;
    }

    *(*(a1 + 32) + 88) = 1;
    v7 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeAudio];
    v8 = [AVCaptureDeviceInput deviceInputWithDevice:v7 error:0];
    v9 = *(a1 + 32);
    v10 = *(v9 + 72);
    *(v9 + 72) = v8;

    if (*(a1 + 56) == 1)
    {
      v11 = [AVAudioChannelLayout layoutWithLayoutTag:9633793];
      v12 = [[AVAudioFormat alloc] initWithCommonFormat:1 sampleRate:0 interleaved:v11 channelLayout:48000.0];
      [*(*(a1 + 32) + 72) setRemoteIOOutputFormat:v12];
    }

    if ([*(*(a1 + 32) + 64) canAddInput:*(*(a1 + 32) + 72)])
    {
      [*(*(a1 + 32) + 64) addInput:*(*(a1 + 32) + 72)];
    }

    v13 = objc_alloc_init(AVCaptureAudioDataOutput);
    v14 = *(a1 + 32);
    v15 = *(v14 + 80);
    *(v14 + 80) = v13;

    [*(*(a1 + 32) + 80) setSampleBufferDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
    if ([*(*(a1 + 32) + 64) canAddOutput:*(*(a1 + 32) + 80)])
    {
      [*(*(a1 + 32) + 64) addOutput:*(*(a1 + 32) + 80)];
    }

    v16 = objc_retainBlock(*(a1 + 48));
    v17 = *(a1 + 32);
    v18 = *(v17 + 136);
    *(v17 + 136) = v16;

    if ([*(*(a1 + 32) + 64) isRunning])
    {
      [*(a1 + 32) dispatchedDidStartHandler];
    }

    else
    {
      [*(*(a1 + 32) + 64) addObserver:*(a1 + 32) forKeyPath:@"running" options:0 context:0];
      [*(*(a1 + 32) + 64) startRunning];
    }
  }
}

void *sub_100006CB0(void *result)
{
  v1 = result[4];
  if (*(v1 + 88) == 1)
  {
    v2 = result;
    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136446466;
        v6 = "[RPMicAudioCaptureManager stopMicrophoneCapture]_block_invoke";
        v7 = 1024;
        v8 = 229;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
      }

      v1 = v2[4];
    }

    *(v1 + 88) = 0;
    v3 = v2[4];
    v4 = *(v3 + 136);
    *(v3 + 136) = 0;

    [*(v2[4] + 64) removeInput:*(v2[4] + 72)];
    return [*(v2[4] + 64) removeOutput:*(v2[4] + 80)];
  }

  return result;
}

void sub_1000072A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 136);
    *(v3 + 136) = 0;
  }
}

void sub_100007394(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_1000077A8(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[RPMovieWriter startWritingHandler:]_block_invoke";
    v9 = 1024;
    v10 = 196;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) outputURL];
  [v2 _srRemoveFile:v3 completion:&stru_1000A1190];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000797C;
  v5[3] = &unk_1000A11B8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 setUpAssetWriterWithHandler:v5];
}

void sub_100007920(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005ECC0();
  }
}

uint64_t sub_10000797C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100007A94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v4;
  v6[2] = *(a1 + 88);
  result = [v2 dispatchedAppendVideoSampleBuffer:v3 withWindowTransform:v6];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000082E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 64) + 8) + 24) != -1 && ([*(a1 + 32) releaseSandboxExtensionHandle:?] & 1) == 0 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005EEF4();
  }

  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005EF7C();
    }

    v4 = *(a1 + 40);
    v5 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v8 = 136446722;
      v9 = "[RPMovieWriter moveToCustomSaveLocation:handler:]_block_invoke";
      v10 = 1024;
      v11 = 320;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully moved recording to custom location: %@", &v8, 0x1Cu);
    }

    v7 = *(a1 + 48);
    v5 = *(*(a1 + 56) + 16);
  }

  v5();
}

void sub_1000085F0(uint64_t a1)
{
  if ([*(a1 + 32) isFinishingWriting])
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = "[RPMovieWriter finishWritingWithHandler:]_block_invoke";
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = 397;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer finished nothing to do", &buf, 0x12u);
    }

    v2 = *(a1 + 40);
    if (v2)
    {
      (*(v2 + 16))(v2, 0, 0);
    }

    return;
  }

  CMBufferQueueReset(*(*(a1 + 32) + 144));
  CMBufferQueueReset(*(*(a1 + 32) + 128));
  CMBufferQueueReset(*(*(a1 + 32) + 136));
  v3 = [*(a1 + 32) assetWriter];

  if (v3)
  {
    if ([*(a1 + 32) didProcessFirstSample])
    {
      v4 = [*(a1 + 32) assetWriter];
      v5 = [v4 status];

      if (v5 == 1)
      {
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136446466;
          *(&buf.value + 4) = "[RPMovieWriter finishWritingWithHandler:]_block_invoke";
          LOWORD(buf.flags) = 1024;
          *(&buf.flags + 2) = 355;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer in correct state, attempting to finish writing", &buf, 0x12u);
        }

        v6 = [*(a1 + 32) assetWriter];
        v7 = *(a1 + 32);
        if (v7)
        {
          [v7 trimVideoPresentationTime];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v19 = *&kCMTimeInvalid.value;
        *&time2.value = *&kCMTimeInvalid.value;
        epoch = kCMTimeInvalid.epoch;
        time2.epoch = epoch;
        if (CMTimeCompare(&buf, &time2))
        {
          v14 = *(a1 + 32);
          if (v14)
          {
            [v14 trimVideoPresentationTime];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          [v6 endSessionAtSourceTime:{&buf, v19}];
          v16 = *(a1 + 32);
          *&buf.value = v19;
          buf.epoch = epoch;
          [v16 setTrimVideoPresentationTime:&buf];
        }

        else
        {
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&buf, HostTimeClock);
          [v6 endSessionAtSourceTime:&buf];
        }

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100008A88;
        v20[3] = &unk_1000A1280;
        v21 = v6;
        v17 = *(a1 + 40);
        v22 = *(a1 + 32);
        v23 = v17;
        v18 = v6;
        [v18 finishWritingWithCompletionHandler:v20];
      }

      else
      {
        if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005F090();
        }

        v11 = *(a1 + 40);
        if (v11)
        {
          v12 = [NSError _rpUserErrorForCode:-5825 userInfo:0];
          (*(v11 + 16))(v11, 0, v12);
        }

        [*(a1 + 32) setDidProcessFirstSample:0];
      }

      [*(a1 + 32) setIsFinishingWriting:{1, v19}];
      return;
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F008();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = -5822;
      goto LABEL_25;
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = "[RPMovieWriter finishWritingWithHandler:]_block_invoke";
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = 338;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no asset writer object", &buf, 0x12u);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = -5824;
LABEL_25:
      v10 = [NSError _rpUserErrorForCode:v9 userInfo:0];
      (*(v8 + 16))(v8, 0, v10);
    }
  }
}

void sub_100008A88(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) status];
    *v6 = 136446722;
    *&v6[4] = "[RPMovieWriter finishWritingWithHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 370;
    v7 = 1024;
    v8 = v2 == 3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer state: %i", v6, 0x18u);
  }

  if ([*(a1 + 32) status] == 3)
  {
    v3 = [NSError _rpUserErrorForCode:-5823 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 32) status] == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) outputURL];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v3);
  }

  [*(a1 + 40) setDidProcessFirstSample:0];
}

void sub_100008D70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F118();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_13:
      v8();
    }
  }

  else
  {
    if (!v5)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v15 = "[RPMovieWriter finishWritingAndSaveToCameraRollWithSessionID:mixAudioTracks:handler:]_block_invoke";
        v16 = 1024;
        v17 = 432;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer finished nothing to do", buf, 0x12u);
      }

      v8 = *(*(a1 + 48) + 16);
      goto LABEL_13;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100008F4C;
    v12[3] = &unk_1000A11B8;
    v13 = *(a1 + 48);
    [v9 saveVideoToCameraRoll:v5 sessionID:v10 mixAudioTracks:v11 handler:v12];
  }
}

void sub_100008F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F1A4();
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_12:
      v5();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[RPMovieWriter finishWritingAndSaveToCameraRollWithSessionID:mixAudioTracks:handler:]_block_invoke";
      v9 = 1024;
      v10 = 424;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v5 = *(v6 + 16);
      goto LABEL_12;
    }
  }
}

void sub_1000091E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F230();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_13:
      v8();
    }
  }

  else
  {
    if (!v5)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v19 = "[RPMovieWriter finishWritingAndSaveToDownloadsWithSessionID:mixAudioTracks:handler:]_block_invoke";
        v20 = 1024;
        v21 = 480;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer finished nothing to do", buf, 0x12u);
      }

      v8 = *(*(a1 + 48) + 16);
      goto LABEL_13;
    }

    v9 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000093E8;
    v13[3] = &unk_1000A12F8;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = *(a1 + 48);
    [v9 moveToCustomSaveLocation:v10 handler:v13];
  }
}

void sub_1000093E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6 || ([v5 isEqual:*(a1 + 32)] & 1) != 0)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[RPMovieWriter finishWritingAndSaveToDownloadsWithSessionID:mixAudioTracks:handler:]_block_invoke";
      v17 = 1024;
      v18 = 461;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Falling back to Downloads save location", buf, 0x12u);
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100009620;
    v12[3] = &unk_1000A12D0;
    v10 = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = *(a1 + 32);
    [v8 saveVideoToDownloads:v9 sessionID:v10 handler:v12];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[RPMovieWriter finishWritingAndSaveToDownloadsWithSessionID:mixAudioTracks:handler:]_block_invoke";
      v17 = 1024;
      v18 = 454;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully saved HQLR recording to custom location", buf, 0x12u);
    }

    [*(a1 + 40) showHQLRNotificationForCustomLocation:v5 sessionID:*(a1 + 48)];
    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, v5, 0);
    }
  }
}

void sub_100009620(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F2BC();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = *(v7 + 16);
LABEL_12:
      v9();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[RPMovieWriter finishWritingAndSaveToDownloadsWithSessionID:mixAudioTracks:handler:]_block_invoke";
      v13 = 1024;
      v14 = 470;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v11, 0x12u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_12;
    }
  }
}

void sub_100009934(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPMovieWriter showHQLRNotificationForCustomLocation:sessionID:]_block_invoke";
      v6 = 1024;
      v7 = 495;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Could not show Saved to Custom Location Banner, show screen notification", &v4, 0x12u);
    }

    [*(a1 + 32) displayHQLRNotificationWithURL:*(a1 + 40)];
  }
}

void sub_100009BA0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F348();
    }

    v7 = a1[7];
    if (v7)
    {
      v7[2](v7, v6);
    }
  }

  else if (v5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = -1;
    if (a1[4])
    {
      v8 = [a1[5] consumeSandboxExtensionToken:?];
      *(*&buf[8] + 24) = v8;
      if (v8 == -1 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F3D4();
      }
    }

    else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F45C();
    }

    v9 = +[NSFileManager defaultManager];
    v10 = a1[6];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100009EC0;
    v17[3] = &unk_1000A1370;
    v18 = v5;
    v11 = a1[6];
    v12 = a1[4];
    v21 = buf;
    v16 = a1[5];
    v13 = a1[7];
    *&v14 = v16;
    *(&v14 + 1) = v13;
    *&v15 = v11;
    *(&v15 + 1) = v12;
    v19 = v15;
    v20 = v14;
    [v9 _srMoveFileFromURL:v18 toURL:v10 completion:v17];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPMovieWriter finishWritingAndSaveToURL:sandboxExtensionTokenForFileURL:withHandler:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 538;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d asset writer finished nothing to do", buf, 0x12u);
    }

    (*(a1[7] + 2))();
  }
}

void sub_100009EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005F4E4(a1);
  }

  if (*(a1 + 48) && ([*(a1 + 56) releaseSandboxExtensionHandle:*(*(*(a1 + 72) + 8) + 24)] & 1) == 0 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005F598();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10000A09C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A180;
  v4[3] = &unk_1000A13C0;
  v7 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  [v2 _srRemoveFile:v3 completion:v4];
}

void sub_10000A180(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v7 = [NSError _rpUserErrorForCode:-5827 userInfo:0];
    (*(v3 + 16))(v3, 0, v7);
  }

  else
  {
    v4 = [AVAsset assetWithURL:*(a1 + 32)];
    v5 = [[AVAssetExportSession alloc] initWithAsset:v4 presetName:AVAssetExportPresetPassthrough];
    [v5 setOutputURL:*(a1 + 40)];
    [v5 setOutputFileType:AVFileTypeMPEG4];
    memset(&v16, 0, sizeof(v16));
    CMTimeMakeWithSeconds(&v16, *(a1 + 56), 1);
    memset(&v15, 0, sizeof(v15));
    if (v4)
    {
      [v4 duration];
    }

    else
    {
      memset(&lhs, 0, 24);
    }

    CMTimeMakeWithSeconds(&rhs.start, *(a1 + 64), 1);
    CMTimeSubtract(&v15, &lhs.start, &rhs.start);
    memset(&v14, 0, sizeof(v14));
    lhs.start = v15;
    rhs.start = v16;
    CMTimeSubtract(&v14, &lhs.start, &rhs.start);
    memset(&lhs, 0, sizeof(lhs));
    rhs.start = v16;
    duration = v14;
    CMTimeRangeMake(&lhs, &rhs.start, &duration);
    rhs = lhs;
    [v5 setTimeRange:&rhs];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000A3E4;
    v8[3] = &unk_1000A11E0;
    v9 = v5;
    v10 = *(a1 + 48);
    v6 = v5;
    [v6 exportAsynchronouslyWithCompletionHandler:v8];
  }
}

void sub_10000A3E4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) status];
  if (v3 == 5)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "[RPMovieWriter trimMovieWithURL:startClipDuration:endClipDuration:outputFileURL:handler:]_block_invoke";
      v10 = 1024;
      v11 = 576;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Export Trim Video Cancelled", &v8, 0x12u);
    }

    v4 = *(a1 + 40);
    v5 = -5828;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F620(v2);
    }

    v4 = *(a1 + 40);
    v5 = -5826;
LABEL_11:
    v6 = [NSError _rpUserErrorForCode:v5 userInfo:0];
    (*(v4 + 16))(v4, 0, v6);
    goto LABEL_16;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPMovieWriter trimMovieWithURL:startClipDuration:endClipDuration:outputFileURL:handler:]_block_invoke";
    v10 = 1024;
    v11 = 581;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Export Trim succeeded", &v8, 0x12u);
  }

  v7 = *(a1 + 40);
  v6 = [*(a1 + 32) outputURL];
  (*(v7 + 16))(v7, v6, 0);
LABEL_16:
}

void sub_10000C56C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F86C(v2);
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPMovieWriter dispatchedAppendVideoSampleBuffer:withWindowTransform:]_block_invoke";
    v5 = 1024;
    v6 = 936;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Asset writer output file removed", &v3, 0x12u);
  }
}

void sub_10000C66C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F8FC(v3);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = [v4 videoInput];
    v7 = *(a1 + 72);
    v8[0] = *(a1 + 56);
    v8[1] = v7;
    v8[2] = *(a1 + 88);
    *(*(*(a1 + 40) + 8) + 24) = [v4 appendInitialSampleBuffer:v5 withTransform:v8 input:v6];
  }
}

void sub_10000DACC(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 64);
    *buf = 136446722;
    v9 = "[RPMovieWriter saveVideoToCameraRoll:sessionID:mixAudioTracks:handler:]_block_invoke";
    v10 = 1024;
    v11 = 1178;
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Start Save to Photos, mixAudioTracks=%d", buf, 0x18u);
  }

  *(*(a1 + 32) + 152) = 0;
  v3 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DC4C;
  v6[3] = &unk_1000A1458;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [RPPhotosUtility exportVideoToPhotosAsynchronously:v4 mixAudioTracks:v3 completionHandler:v6];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void sub_10000DC4C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FFF0();
    }

    v9 = +[RPFeatureFlagUtility sharedInstance];
    v10 = [v9 systemBannerEnabled];

    if (v10)
    {
      v11 = +[RPAngelProxy sharedInstance];
      [v11 hideAndStopRecordingBanner];
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v24 = "[RPMovieWriter saveVideoToCameraRoll:sessionID:mixAudioTracks:handler:]_block_invoke";
      v25 = 1024;
      v26 = 1192;
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Save to Photos Video saved to camera roll successfully. Video duration: %.2f seconds", buf, 0x1Cu);
    }

    v12 = +[RPFeatureFlagUtility sharedInstance];
    v13 = [v12 systemBannerEnabled];

    if (v13)
    {
      v14 = +[RPAngelProxy sharedInstance];
      v15 = [*(a1 + 32) createAssetURLFromPhotosIdentifier:v8];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10000DEB0;
      v20 = &unk_1000A1348;
      v16 = *(a1 + 40);
      v21 = *(a1 + 32);
      v22 = v8;
      [v14 showBannerWithURL:v15 identifier:v22 sessionID:v16 completionHandler:&v17];
    }

    else
    {
      [*(a1 + 32) displayScreenRecorderNotificationWithPhotoAsset:v8];
    }
  }

  [*(a1 + 32) setDurationInSeconds:{a4, v17, v18, v19, v20, v21}];
}

void sub_10000DEB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPMovieWriter saveVideoToCameraRoll:sessionID:mixAudioTracks:handler:]_block_invoke";
      v6 = 1024;
      v7 = 1202;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Could not show Saved to Photos Banner, show screen notification", &v4, 0x12u);
    }

    [*(a1 + 32) displayScreenRecorderNotificationWithPhotoAsset:*(a1 + 40)];
  }
}

void sub_10000E114(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPMovieWriter saveVideoToDownloads:sessionID:handler:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 1239;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Start Save to Downloads", buf, 0x12u);
  }

  *(*(a1 + 32) + 152) = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = [v2 _doc_importItemAtURL:v3 toDestination:1 error:&v21];
  v5 = v21;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = [[AVURLAsset alloc] initWithURL:v4 options:0];
    v9 = v10;
    if (v10)
    {
      [v10 duration];
    }

    else
    {
      memset(buf, 0, 24);
    }

    *(*(a1 + 32) + 152) = CMTimeGetSeconds(buf);
    v11 = [*(a1 + 32) createDownloadsURLFromDestURL:v4];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 152);
      *buf = 136446722;
      *&buf[4] = "[RPMovieWriter saveVideoToDownloads:sessionID:handler:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1256;
      *&buf[18] = 2048;
      *&buf[20] = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Save to Downloads successfully. Video duration: %.2f seconds", buf, 0x1Cu);
    }

    v13 = +[RPFeatureFlagUtility sharedInstance];
    v14 = [v13 systemBannerEnabled];

    if (v14)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "[RPMovieWriter saveVideoToDownloads:sessionID:handler:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 1261;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Show Angel Proxy UI for saving to downloads", buf, 0x12u);
      }

      v15 = +[RPAngelProxy sharedInstance];
      v16 = *(a1 + 48);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000E534;
      v19[3] = &unk_1000A1348;
      v19[4] = *(a1 + 32);
      v20 = v11;
      [v15 showBannerWithURL:v20 identifier:0 sessionID:v16 completionHandler:v19];
    }

    else
    {
      [*(a1 + 32) displayHQLRNotificationWithURL:v11];
    }

    goto LABEL_26;
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006007C();
  }

  v7 = +[RPFeatureFlagUtility sharedInstance];
  v8 = [v7 systemBannerEnabled];

  if (v8)
  {
    v9 = +[RPAngelProxy sharedInstance];
    [v9 hideAndStopRecordingBanner];
LABEL_26:
  }

  [*(a1 + 32) setDownloadsURL:v4];
  v17 = +[NSFileManager defaultManager];
  [v17 _srRemoveFile:*(a1 + 40) completion:&stru_1000A14A0];

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v4, 0);
  }
}

void sub_10000E534(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPMovieWriter saveVideoToDownloads:sessionID:handler:]_block_invoke";
      v6 = 1024;
      v7 = 1264;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Could not show Saved to Photos Banner, show screen notification", &v4, 0x12u);
    }

    [*(a1 + 32) displayHQLRNotificationWithURL:*(a1 + 40)];
  }
}

void sub_10000E618(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060110();
  }
}

void sub_10000F390(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = [NSArray arrayWithObjects:&v2 count:1];
  [PHAssetChangeRequest deleteAssets:v1];
}

void sub_100010164(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060338(v6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[RPBroadcastExtensionProxy establishConnectionWithHandler:]_block_invoke";
      v17 = 1024;
      v18 = 78;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d beginExtensionRequestWithInputItems returned", buf, 0x12u);
    }

    v7 = dispatch_semaphore_create(0);
    v8 = [*(*(a1 + 32) + 48) _extensionContextForUUID:v5];
    v9 = [v8 _auxiliaryConnection];
    v10 = [v9 remoteObjectProxy];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 72);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000103B4;
      v13[3] = &unk_1000A1088;
      v12 = v7;
      v14 = v12;
      [v10 setEndpoint:v11 completionHandler:v13];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000603D0();
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

intptr_t sub_1000103B4(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPBroadcastExtensionProxy establishConnectionWithHandler:]_block_invoke";
    v5 = 1024;
    v6 = 87;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Remote endpoint set.", &v3, 0x12u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001073C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001075C(uint64_t a1)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006045C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained errorHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 errorHandler];
    v6 = [NSError _rpUserErrorForCode:-5808 userInfo:&__NSDictionary0__struct];
    (v5)[2](v5, v6);
  }
}

void sub_100010830(id a1)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000604E8();
  }
}

void sub_100010EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060574(v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained errorHandler];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 errorHandler];
    v8 = [NSError _rpUserErrorForCode:-5808 userInfo:&__NSDictionary0__struct];
    (v7)[2](v7, v8);
  }
}

uint64_t sub_100013788(uint64_t result, int a2, CFDictionaryRef theDict)
{
  if (a2 == 1)
  {
    v3 = result;
    v5 = 0;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, kAKSInfoExtendedLockState, &value);
    if (result)
    {
      v4 = CFGetTypeID(value);
      result = CFNumberGetTypeID();
      if (v4 == result)
      {
        result = CFNumberGetValue(value, kCFNumberLongLongType, &v5);
        if (result)
        {
          if (v5 == 2)
          {
            if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v8 = "[RPSession setUpDeviceLockNotifications]_block_invoke";
              v9 = 1024;
              v10 = 693;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d device locking", buf, 0x12u);
            }

            return [*(v3 + 32) handleDeviceLockedWarning];
          }
        }
      }
    }
  }

  return result;
}

id sub_1000138C0(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 144), &state64);
  [*(a1 + 32) setDeviceLocked:state64 != 0];
  result = [*(a1 + 32) deviceLocked];
  if (result)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v5 = "[RPSession setUpDeviceLockNotifications]_block_invoke";
      v6 = 1024;
      v7 = 712;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d device locking", buf, 0x12u);
    }

    return [*(a1 + 32) handleDeviceLockedWarning];
  }

  return result;
}

intptr_t sub_100013AC4(uint64_t a1)
{
  [*(a1 + 32) handleUpdateDisplayLayout:?];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_100017228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) purgeable:a3 urgency:a2];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPRecordingManager setUpMemoryPressureNotification]_block_invoke";
    v7 = 1024;
    v8 = 219;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d purgeable=%@", &v5, 0x1Cu);
  }

  return v3;
}

uint64_t sub_100017314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) purge:a3 urgency:a2];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPRecordingManager setUpMemoryPressureNotification]_block_invoke";
    v7 = 1024;
    v8 = 224;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d purge=%@", &v5, 0x1Cu);
  }

  return v3;
}

void sub_100017400(id a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPRecordingManager setUpMemoryPressureNotification]_block_invoke";
    v3 = 1024;
    v4 = 228;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d cancelling my purge!", &v1, 0x12u);
  }
}

uint64_t sub_1000174C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) periodic:a3 urgency:a2];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPRecordingManager setUpMemoryPressureNotification]_block_invoke";
    v7 = 1024;
    v8 = 232;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d periodic=%@", &v5, 0x1Cu);
  }

  return v3;
}

void sub_100017DAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "[RPRecordingManager applicationDisconnectedWithBundleID:withProcessIdentifier:]_block_invoke";
      v6 = 1024;
      v7 = 344;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d client disconnected, successfully stopped active session", &v4, 0x12u);
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060BD4();
  }

  v3 = +[RPClientManager sharedInstance];
  [v3 removeClient:*(a1 + 32)];
}

void sub_100017FCC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) getCallingConnectionClient];
    v4 = *(a1 + 72);
    v5 = *(a1 + 73);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100018108;
    v9[3] = &unk_1000A17C8;
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 startInAppRecordingSessionWithContextID:v6 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v9 withHandler:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      (*(v7 + 16))(v7, v8, 0, 0);
    }
  }
}

uint64_t sub_100018108(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000181CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001835C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001845C;
    v8[3] = &unk_1000A1840;
    v9 = v5;
    v10 = *(a1 + 40);
    [RPAudioMixUtility mixAudioForMovie:v9 finalMovieURL:v7 outputFileType:AVFileTypeMPEG4 withCompletionHandler:v8];
  }
}

void sub_10001845C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060C5C();
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136446722;
    v6 = "[RPRecordingManager stopInAppRecordingWithUrl:handler:]_block_invoke";
    v7 = 1024;
    v8 = 531;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Success Mixed Audio to %@", &v5, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100018688(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100018808(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) getCallingConnectionClient];
    v4 = *(a1 + 72);
    v5 = *(a1 + 73);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100018944;
    v9[3] = &unk_1000A17C8;
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 startInAppCaptureSessionWithContextID:v6 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v9 withHandler:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      (*(v7 + 16))(v7, v8, 0, 0);
    }
  }
}

uint64_t sub_100018944(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100018A08(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100018B28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100018FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060D6C();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100019034(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060DF8();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100019480(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) getCallingConnectionClient];
    v4 = *(a1 + 80);
    v5 = *(a1 + 81);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000195C4;
    v10[3] = &unk_1000A17C8;
    v11 = *(a1 + 56);
    [v3 startInAppBroadcastSessionWithContextID:v6 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v7 listenerEndpoint:v10 withHandler:{*(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      (*(v8 + 16))(v8, v9, 0, 0);
    }
  }
}

void sub_1000195C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060E84();
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPRecordingManager startInAppBroadcastWithContextID:windowSize:microphoneEnabled:cameraEnabled:listenerEndpoint:withHandler:]_block_invoke";
    v11 = 1024;
    v12 = 722;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start broadcast successfull", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_1000197A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060F10();
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPRecordingManager stopInAppBroadcastWithHandler:]_block_invoke";
    v7 = 1024;
    v8 = 748;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop broadcast successfull", &v5, 0x12u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t sub_1000199C8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100019BFC(uint64_t a1, int a2)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPRecordingManager startSystemRecordingWithContextID:windowSize:microphoneEnabled:cameraEnabled:mixedRealityCameraEnabled:withHandler:]_block_invoke";
    v14 = 1024;
    v15 = 791;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (a2)
  {
    v4 = [*(a1 + 32) getCallingConnectionClient];
    v5 = *(a1 + 72);
    v6 = *(a1 + 73);
    v7 = *(a1 + 74);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100019DB4;
    v10[3] = &unk_1000A11B8;
    v8 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v4 startSystemRecordingSessionWithContextID:v8 windowSize:v5 microphoneEnabled:v6 cameraEnabled:v7 mixedRealityCameraEnabled:v10 withHandler:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v9 = *(a1 + 48);
    if (!v9)
    {
      return;
    }

    v4 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
    (*(v9 + 16))(v9, v4);
  }
}

uint64_t sub_100019DB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100019E78(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100019F3C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001A000(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001A3F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) getCallingConnectionClient];
    v4 = *(a1 + 80);
    v5 = *(a1 + 81);
    v6 = *(a1 + 82);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001A540;
    v11[3] = &unk_1000A11B8;
    v12 = *(a1 + 56);
    [v3 startSystemBroadcastSessionWithContextID:v7 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 mixedRealityCameraEnabled:v8 listenerEndpoint:v11 withHandler:{*(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      (*(v9 + 16))(v9, v10);
    }
  }
}

uint64_t sub_10001A540(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001A604(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001A6C8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001A874(uint64_t a1, int a2)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPRecordingManager startHQLRWithSessionInfo:windowSize:handler:]_block_invoke";
    v11 = 1024;
    v12 = 937;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (a2)
  {
    v4 = [*(a1 + 32) getCallingConnectionClient];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001AA0C;
    v7[3] = &unk_1000A11B8;
    v5 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v4 startHQLRWithSessionInfo:v5 windowSize:v7 handler:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      return;
    }

    v4 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
    (*(v6 + 16))(v6, v4);
  }
}

uint64_t sub_10001AA0C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001AAD0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001AB94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001AD58(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) getCallingConnectionClient];
    v4 = *(a1 + 72);
    v5 = *(a1 + 73);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001AE94;
    v9[3] = &unk_1000A17C8;
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 startInAppClipSessionWithContextID:v6 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v9 withHandler:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
      (*(v7 + 16))(v7, v8, 0, 0);
    }
  }
}

uint64_t sub_10001AE94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001AFFC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001B190(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001B270(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001B644(id a1, BOOL a2)
{
  if (a2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136446466;
      v3 = "[RPRecordingManager stopAllActiveClients]_block_invoke";
      v4 = 1024;
      v5 = 1099;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop all clients success", &v2, 0x12u);
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061024();
  }
}

void sub_10001BD7C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[RPConnectionManager sharedInstance];
  v10 = [v9 currentConnection];

  v11 = +[RPConnectionManager uniqueClientIdentifierWithPID:](RPConnectionManager, "uniqueClientIdentifierWithPID:", [v10 processIdentifier]);
  if (v7)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061134();
    }

    v12 = &__NSDictionary0__struct;
    v13 = -5831;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446722;
      v16 = "[RPRecordingManager processSaveToPhotos:mixAudioTracks:ignoreDoNotDisturb:isClip:]_block_invoke";
      v17 = 1024;
      v18 = 1146;
      v19 = 2048;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Save to Photos Video saved to camera roll successfully. Video duration: %.2f seconds", &v15, 0x1Cu);
    }

    [*(a1 + 32) displayScreenRecorderNotificationWithURL:v8 ignoreDoNotDisturb:*(a1 + 40) isClip:*(a1 + 41)];
    v13 = 0;
    v12 = 0;
  }

  v14 = [NSError _rpUserErrorForCode:v13 userInfo:v12];
  [RPReportingAgent reportSessionEnded:2 endReason:v14 withServiceName:@"InAppRecording" clientBundleId:v11];
}

void sub_10001C810(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = [NSArray arrayWithObjects:&v2 count:1];
  [PHAssetChangeRequest deleteAssets:v1];
}

void sub_10001C93C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v8 = v7;
  if (!v6)
  {
    v27 = v7;
    v25 = a1;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    v11 = *v30;
    v12 = _kCFBundleDisplayNameKey;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v14 _plugIn];
        v16 = [v15 containingUrl];
        v17 = [RPImageUtility getImageDataFromExtensionContainingAppBundleUrl:v16];

        v18 = [v14 infoDictionary];
        v19 = [v18 objectForKey:v12];

        v20 = [v14 identifier];
        if (v20)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
        }

        else
        {

          if (v17)
          {
            v22 = objc_alloc_init(NSMutableDictionary);
            v23 = [v14 identifier];
            [v22 setObject:v23 forKey:@"extBundleID"];

            [v22 setObject:v19 forKey:@"displayName"];
            [v22 setObject:v17 forKey:@"extAppImgData"];
            [v27 addObject:v22];

            goto LABEL_18;
          }
        }

        if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v34 = "[RPRecordingManager getSystemBroadcastExtensionInfo:]_block_invoke";
          v35 = 1024;
          v36 = 1347;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Error getting broadcast extension info", buf, 0x12u);
        }

LABEL_18:
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (!v10)
      {
LABEL_20:

        v6 = 0;
        v5 = v26;
        a1 = v25;
        v8 = v27;
        break;
      }
    }
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    (*(v24 + 16))(v24, v8, v6);
  }
}

void sub_10001D018(id a1)
{
  v2 = +[CCSControlCenterService sharedInstance];
  v1 = +[CCSModulePresentationOptions defaultOptions];
  [v2 presentModuleWithIdentifier:@"com.apple.replaykit.controlcenter.screencapture" options:v1 completionHandler:&stru_1000A1A40];
}

void sub_10001D098(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (a2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[RPRecordingManager openControlCenterSystemRecordingView]_block_invoke";
      v7 = 1024;
      v8 = 1396;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Control center screen capture module presented", &v5, 0x12u);
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000612D0(v4);
  }
}

void sub_10001D448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D478(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v3[5];
    v5 = [v3 rpLocalizedStatusStringForPaused:0];
    [v4 setStatusString:v5];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: failed to acquire assertion", v6, 2u);
    }

    [*(*(*(a1 + 40) + 8) + 40) invalidateStatusBar];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001D634(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = [(NSError *)a2 code];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: registered. If there was an error it was: %li", &v3, 0xCu);
  }
}

uint64_t sub_10001D754(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(*(a1 + 32) + 56) invalidate];
  v5 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"updateDelegateRecordingTimer:" selector:0 userInfo:1 repeats:0.5];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  return _objc_release_x1();
}

void sub_10001D8A0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000613B4(v2);
  }
}

void sub_10001F254(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v29 = a3;
  obj = v5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    v6 = *v33;
    v7 = &_AXSVoiceOverTouchEnabled_ptr;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v9 extensionPointIdentifier];
        v11 = [v9 _extensionBundle];
        NSLog(@"NSExtensionPointIdentifier %@ _extensionBundle %@", v10, v11);

        if (*(a1 + 32))
        {
          v12 = [v9 identifier];
          v13 = [v12 hasPrefix:*(a1 + 32)];

          if (!v13)
          {
            continue;
          }
        }

        v14 = [v9 attributes];
        v15 = [v14 objectForKeyedSubscript:@"NSExtensionActivationRule"];
        v16 = v7[468];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v6;
          v18 = v15;
          v19 = v18;
          if (*(a1 + 40))
          {
            v20 = [v18 objectForKeyedSubscript:?];
            if (!v20)
            {
              goto LABEL_15;
            }

            v21 = v20;
            v22 = [v19 objectForKeyedSubscript:*(a1 + 40)];
            v23 = [v22 BOOLValue];

            if (!v23)
            {
              goto LABEL_15;
            }
          }

          if (*(a1 + 48))
          {
            v24 = [v19 objectForKeyedSubscript:?];
            if (v24)
            {
              v25 = v24;
              v26 = [v19 objectForKeyedSubscript:*(a1 + 48)];
              v27 = [v26 BOOLValue];

              if (v27)
              {
LABEL_15:

                v6 = v17;
                v7 = &_AXSVoiceOverTouchEnabled_ptr;
LABEL_20:

                continue;
              }
            }
          }

          v6 = v17;
          v7 = &_AXSVoiceOverTouchEnabled_ptr;
        }

        else if (*(a1 + 40))
        {
          goto LABEL_20;
        }

        [*(a1 + 56) addObject:v9];
        goto LABEL_20;
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v31);
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    (*(v28 + 16))(v28, *(a1 + 56), v29);
  }
}

void sub_10001FC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FC64(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationStateDidChange:v3];
}

void sub_100020CF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 424))
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061740();
    }

    v3 = [NSError _rpUserErrorForCode:-5836 userInfo:0];
    [*(a1 + 32) reportSummaryEvent:objc_msgSend(v3 recordedFileSize:{"code"), 0}];
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    *(v2 + 424) = 1;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v5 + 408);
    v8 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100020E64;
    v9[3] = &unk_1000A1B50;
    v9[4] = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    [v7 exportClipToURL:v10 duration:v9 completionHandler:v8];
  }
}

void sub_100020E64(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 424) = 0;
  v5 = v3;
  [*(a1 + 32) reportSummaryEvent:objc_msgSend(v3 recordedFileSize:{"code"), +[RPSession getFileSizeForURL:](RPSession, "getFileSizeForURL:", *(a1 + 40))}];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_100020FA4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionState];
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(v3);
    v5 = ImageBuffer;
    v6 = *(a1 + 32);
    if (v6[52] || (Width = CVPixelBufferGetWidth(ImageBuffer), [v6 createEncodingSessionWithWidth:Width withHeight:CVPixelBufferGetHeight(v5)], *(*(a1 + 32) + 416)))
    {
      memset(&v12, 0, sizeof(v12));
      CMSampleBufferGetPresentationTimeStamp(&v12, *(a1 + 40));
      v8 = *(*(a1 + 32) + 416);
      presentationTimeStamp = v12;
      v10 = kCMTimeInvalid;
      if (VTCompressionSessionEncodeFrame(v8, v5, &presentationTimeStamp, &v10, 0, 0, 0))
      {
        v9 = dword_1000B6840 > 2;
      }

      else
      {
        v9 = 1;
      }

      if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000617CC();
      }
    }

    CFRelease(*(a1 + 40));
  }

  else
  {

    CFRelease(v3);
  }
}

void sub_1000212EC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = v7;
  if (a3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000618E4();
    }
  }

  else if (v7)
  {
    [v7 appendVideoSampleBuffer:a5];
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061970();
  }
}

void sub_100021550(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClipSession: startCapture has failed. Error: %@", &v11, 0xCu);
    }

    [*(a1 + 32) setSessionState:3];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_10:
      v5();
    }
  }

  else
  {
    *(*(a1 + 32) + 416) = 0;
    v6 = [RPClipWriter alloc];
    [*(a1 + 32) windowSize];
    v7 = [(RPClipWriter *)v6 initWithWindowSize:?];
    v8 = *(a1 + 32);
    v9 = *(v8 + 408);
    *(v8 + 408) = v7;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClipSession: startCapture has started successfully", &v11, 2u);
    }

    [*(a1 + 32) setSessionState:1];
    v10 = *(a1 + 40);
    if (v10)
    {
      v5 = *(v10 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100021898(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061B14(a1);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{0, 1}];
}

void sub_100021964(id a1)
{
  qword_1000B68A8 = dispatch_queue_create("com.apple.replaykit.ClipSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_100021BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPClipSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 350;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume capture completed with Error: %@", &v6, 0x1Cu);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setSessionState:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100022010(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5807 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPClipSession handleDisplayWarning]_block_invoke";
    v3 = 1024;
    v4 = 385;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100022310(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5802 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPClipSession handleDeviceRestrictionWarning]_block_invoke";
    v3 = 1024;
    v4 = 414;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100022534(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPClipSession handleResumeContextIDFailure]_block_invoke";
    v3 = 1024;
    v4 = 426;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

double sub_100022688()
{
  if ((byte_1000B68B8 & 1) == 0)
  {
    sub_100061BD4();
  }

  v0 = *&qword_1000B68C0;
  return v0 * mach_absolute_time();
}

unint64_t sub_1000226CC(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    return (round(result / a2) * a2);
  }

  return result;
}

unint64_t sub_1000226EC(unint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = log10(result);
    v5 = __exp10(v2 - ceil(v4));
    return (round(v5 * v3) / v5);
  }

  return result;
}

double sub_100022784(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, long double a9)
{
  if (a9 >= 0.5)
  {
    v16 = pow(a9 * -2.0 + 2.0, 3.0) * -0.5 + 1.0;
  }

  else
  {
    v16 = pow(a9, 3.0) * 4.0;
  }

  return a1 + v16 * (a5 - a1);
}

void sub_100025B34(id a1)
{
  v1 = +[NSUUID UUID];
  [v1 getUUIDBytes:&unk_1000B68C8];
}

uint64_t sub_1000267D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_100026CA8(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  if (v2 == 5)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v6 = 136446466;
    *&v6[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 72;
    v3 = " [INFO] %{public}s:%d AVAssetExportSessionStatusCancelled";
    goto LABEL_9;
  }

  if (v2 == 4)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v6 = 136446466;
    *&v6[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 67;
    v3 = " [INFO] %{public}s:%d AVAssetExportSessionFailed";
LABEL_9:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, v6, 0x12u);
LABEL_10:
    v4 = *(a1 + 40);
    v5 = [NSError _rpUserErrorForCode:-5818 userInfo:0, *v6, *&v6[16]];
    (*(v4 + 16))(v4, v5);

    return;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 136446466;
    *&v6[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 77;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportSession returned with no errors", v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002876C(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061FD8(a2);
  }
}

void sub_100028860(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006204C(a2);
  }
}

void sub_100028938(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000620C0(a2);
  }
}

void sub_100028A10(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062134(a2);
  }
}

void sub_100028B70(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000621A8(a2);
  }
}

void sub_100028CD0(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006221C(a2);
  }
}

void sub_100028DA8(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062290(a2);
  }
}

void sub_100028E80(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062304(a2);
  }
}

void sub_100028F48(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062378(a2);
  }
}

void sub_100029020(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000623EC(a2);
  }
}

void sub_1000290C4(id a1)
{
  qword_1000B68E0 = objc_alloc_init(RPMultipleClientProxy);

  _objc_release_x1();
}

void sub_1000295A0(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062474(a2);
  }
}

void sub_1000297A4(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000624E8(a2);
  }
}

void sub_100029998(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006255C(a2);
  }
}

void sub_100029B90(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000625D0(a2);
  }
}

void sub_100029D80(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062644(a2);
  }
}

void sub_100029F54(id a1)
{
  qword_1000B68F0 = objc_alloc_init(RPClientManager);

  _objc_release_x1();
}

void sub_10002A304(id a1, BOOL a2)
{
  if (dword_1000B6840 <= 1)
  {
    v2 = a2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136446722;
      v4 = "[RPClientManager removeClient:]_block_invoke";
      v5 = 1024;
      v6 = 57;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop current active session ended with success:%d", &v3, 0x18u);
    }
  }
}

void sub_10002AC28(uint64_t a1, char a2)
{
  v3 = dword_1000B6840;
  if ((a2 & 1) == 0)
  {
    if (dword_1000B6840 <= 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10006275C();
      }

      v3 = dword_1000B6840;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (v3 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPClientManager stopAllClientsWithHandler:]_block_invoke";
    v6 = 1024;
    v7 = 127;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d leave stop group", &v4, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10002AD34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136446466;
        v4 = "[RPClientManager stopAllClientsWithHandler:]_block_invoke";
        v5 = 1024;
        v6 = 136;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d all clients stopped", &v3, 0x12u);
      }

      result = *(a1 + 32);
    }

    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

id sub_10002AE80()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: RPDaemonRun:", v3, 2u);
  }

  v0 = +[RPConnectionManager sharedInstance];
  v1 = qword_1000B6900;
  qword_1000B6900 = v0;

  return [qword_1000B6900 finishStartup];
}

void sub_10002AF58(id a1)
{
  qword_1000B6908 = objc_alloc_init(RPConnectionManager);

  _objc_release_x1();
}

void sub_10002B518(id a1)
{
  qword_1000B6918 = dispatch_queue_create("com.replaykit.connectionManagerQueue", 0);

  _objc_release_x1();
}

void sub_10002B9A8(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[RPConnectionManager processNewConnection:]_block_invoke";
    v9 = 1024;
    v10 = 203;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d connection INTERRUPTED", buf, 0x12u);
  }

  v2 = [*(a1 + 32) connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BAF8;
  block[3] = &unk_1000A1ED8;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_sync(v2, block);
}

void sub_10002BB0C(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[RPConnectionManager processNewConnection:]_block_invoke_2";
    v9 = 1024;
    v10 = 209;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d connection INVALID", buf, 0x12u);
  }

  v2 = [*(a1 + 32) connectionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BC5C;
  block[3] = &unk_1000A1ED8;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_sync(v2, block);
}

void sub_10002BEBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPConnectionManager stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:]_block_invoke";
    v12 = 1024;
    v13 = 238;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stopped recording from file permissions error", buf, 0x12u);
  }

  v7 = *(*(a1 + 32) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C018;
  v8[3] = &unk_1000A1F28;
  v9 = *(a1 + 40);
  [v7 discardInAppRecordingWithHandler:v8];
}

void sub_10002C018(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPConnectionManager stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:]_block_invoke";
    v6 = 1024;
    v7 = 240;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d discarded recording from file permissions error", &v4, 0x12u);
  }

  v2 = *(a1 + 32);
  v3 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
  (*(v2 + 16))(v2, v3);
}

void sub_10002C234(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stopCurrentActiveSessionWithHandler:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopCurrentActiveSessionWithHandler completed", v1, 2u);
  }
}

void sub_10002C38C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stopAllActiveClients];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopAllActiveClients completed", v1, 2u);
  }
}

void sub_10002C50C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) getSystemBroadcastExtensionInfo:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: getSystemBroadcastExtensionInfo completed", v1, 2u);
  }
}

void sub_10002C68C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setBroadcastURL:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setBroadcastURL completed", v1, 2u);
  }
}

void sub_10002C858(uint64_t a1)
{
  [*(*(a1 + 32) + 16) updateProcessIDForAudioCaptureWithPID:*(a1 + 40)];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPConnectionManager updateProcessIDForAudioCaptureWithPID:]_block_invoke";
    v3 = 1024;
    v4 = 290;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v1, 0x12u);
  }
}

void sub_10002CA94(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CB50;
  v6[3] = &unk_1000A17C8;
  v7 = *(a1 + 48);
  [v3 startInAppRecordingWithContextID:v2 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 withHandler:{*(a1 + 56), *(a1 + 64)}];
}

void sub_10002CB50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppRecordingWithContextID completed", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_10002CD94(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002CE28;
  v3[3] = &unk_1000A17C8;
  v4 = *(a1 + 48);
  [v2 resumeInAppRecordingWithWindowLayerContextID:v1 completionHandler:v3];
}

void sub_10002CE28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPConnectionManager resumeInAppRecordingWithWindowLayerContextID:completionHandler:]_block_invoke_2";
    v11 = 1024;
    v12 = 313;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_10002D048(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002D0D8;
  v2[3] = &unk_1000A1818;
  v3 = *(a1 + 40);
  [v1 stopInAppRecordingWithHandler:v2];
}

void sub_10002D0D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppRecordingWithHandler completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10002D46C(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = [*(a1 + 32) consumeSandboxExtensionToken:*(a1 + 40)];
  if (v9[3] == -1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006289C();
    }

    [*(a1 + 32) stopAndDiscardInAppRecordingFromFilePermissionErrorWithHandler:*(a1 + 56)];
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002D5AC;
    v5[3] = &unk_1000A1FA0;
    v5[4] = v2;
    v7 = &v8;
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    [v3 stopInAppRecordingWithUrl:v4 handler:v5];
  }

  _Block_object_dispose(&v8, 8);
}

void sub_10002D594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002D5AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) releaseSandboxExtensionHandle:*(*(*(a1 + 48) + 8) + 24)];
  v5 = dword_1000B6840;
  if ((v4 & 1) == 0 && dword_1000B6840 <= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006291C();
    }

    v5 = dword_1000B6840;
  }

  if (v5 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPConnectionManager stopInAppRecordingWithUrl:extensionToken:handler:]_block_invoke";
    v8 = 1024;
    v9 = 356;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002D7F8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) discardInAppRecordingWithHandler:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: discardInAppRecordingWithHandler completed", v1, 2u);
  }
}

void sub_10002D950(uint64_t a1)
{
  [*(*(a1 + 32) + 16) pauseInAppRecording];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: pauseInAppRecording completed", v1, 2u);
  }
}

void sub_10002DB20(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002DBDC;
  v6[3] = &unk_1000A17C8;
  v7 = *(a1 + 48);
  [v3 startInAppCaptureWithContextID:v2 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 withHandler:{*(a1 + 56), *(a1 + 64)}];
}

void sub_10002DBDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppCaptureWithContextID completed", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_10002DD98(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002DE28;
  v2[3] = &unk_1000A11B8;
  v3 = *(a1 + 40);
  [v1 stopInAppCaptureWithHandler:v2];
}

void sub_10002DE28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppCaptureWithHandler completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10002DFA4(uint64_t a1)
{
  [*(*(a1 + 32) + 16) pauseInAppCapture];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: pauseInAppCapture completed", v1, 2u);
  }
}

void sub_10002E1AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002E240;
  v3[3] = &unk_1000A17C8;
  v4 = *(a1 + 48);
  [v2 resumeInAppCaptureWithWindowLayerContextID:v1 completionHandler:v3];
}

void sub_10002E240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPConnectionManager resumeInAppCaptureWithWindowLayerContextID:completionHandler:]_block_invoke_2";
    v11 = 1024;
    v12 = 422;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_10002E5AC(void *a1)
{
  [*(a1[4] + 16) setupBroadcastWithHostBundleID:a1[5] broadcastExtensionBundleID:a1[6] broadcastConfigurationData:a1[7] userInfo:a1[8] handler:a1[9]];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPConnectionManager setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]_block_invoke";
    v3 = 1024;
    v4 = 437;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v1, 0x12u);
  }
}

void sub_10002E814(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 80);
  v5 = *(a1 + 81);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E8D4;
  v7[3] = &unk_1000A17C8;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 startInAppBroadcastWithContextID:v2 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 listenerEndpoint:v7 withHandler:{*(a1 + 64), *(a1 + 72)}];
}

void sub_10002E8D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startInAppBroadcastWithContextID completed", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_10002EA90(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002EB20;
  v2[3] = &unk_1000A11B8;
  v3 = *(a1 + 40);
  [v1 stopInAppBroadcastWithHandler:v2];
}

void sub_10002EB20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopInAppBroadcastWithHandler completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10002EC9C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) pauseInAppBroadcast];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: pauseInAppBroadcast completed", v1, 2u);
  }
}

void sub_10002EEA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002EF38;
  v3[3] = &unk_1000A17C8;
  v4 = *(a1 + 48);
  [v2 resumeInAppBroadcastWithWindowLayerContextID:v1 completionHandler:v3];
}

void sub_10002EF38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPConnectionManager resumeInAppBroadcastWithWindowLayerContextID:completionHandler:]_block_invoke_2";
    v11 = 1024;
    v12 = 487;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_10002F294(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  v6 = *(a1 + 74);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F358;
  v7[3] = &unk_1000A11B8;
  v8 = *(a1 + 48);
  [v3 startSystemRecordingWithContextID:v2 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 mixedRealityCameraEnabled:v7 withHandler:{*(a1 + 56), *(a1 + 64)}];
}

void sub_10002F358(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startSystemRecordingWithContextID completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10002F5DC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002F66C;
  v2[3] = &unk_1000A11B8;
  v3 = *(a1 + 40);
  [v1 stopSystemRecordingWithHandler:v2];
}

void sub_10002F66C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopSystemRecordingWithHandler completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10002F8F4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002F984;
  v2[3] = &unk_1000A1818;
  v3 = *(a1 + 40);
  [v1 stopSystemRecordingWithURLHandler:v2];
}

void sub_10002F984(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopSystemRecordingWithURLHandler completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10002FBFC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002FC8C;
  v2[3] = &unk_1000A18E0;
  v3 = *(a1 + 40);
  [v1 resumeSystemRecordingWithCompletionHandler:v2];
}

uint64_t sub_10002FC8C(uint64_t a1, uint64_t a2)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPConnectionManager resumeSystemRecordingWithCompletionHandler:]_block_invoke_2";
    v7 = 1024;
    v8 = 565;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed with success:%d", &v5, 0x18u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10002FFF4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000300A8;
  v6[3] = &unk_1000A11B8;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v2 setupSystemBroadcastWithHostBundleID:v1 broadcastExtensionBundleID:v3 broadcastConfigurationData:v4 userInfo:v5 handler:v6];
}

void sub_1000300A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: setupSystemBroadcastWithHostBundleID completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_1000302CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 80);
  v5 = *(a1 + 81);
  v6 = *(a1 + 82);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003039C;
  v8[3] = &unk_1000A11B8;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v3 startSystemBroadcastWithContextID:v2 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 mixedRealityCameraEnabled:v7 listenerEndpoint:v8 withHandler:{*(a1 + 64), *(a1 + 72)}];
}

void sub_10003039C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startSystemBroadcastWithContextID completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100030540(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000305D0;
  v2[3] = &unk_1000A11B8;
  v3 = *(a1 + 40);
  [v1 stopSystemBroadcastWithHandler:v2];
}

void sub_1000305D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopSystemBroadcastWithHandler completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10003082C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000308BC;
  v2[3] = &unk_1000A18E0;
  v3 = *(a1 + 40);
  [v1 resumeSystemBroadcastWithCompletionHandler:v2];
}

uint64_t sub_1000308BC(uint64_t a1, uint64_t a2)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPConnectionManager resumeSystemBroadcastWithCompletionHandler:]_block_invoke_2";
    v7 = 1024;
    v8 = 634;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed with success:%d", &v5, 0x18u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100030BD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030C7C;
  v4[3] = &unk_1000A11B8;
  v5 = *(a1 + 48);
  [v3 startHQLRWithSessionInfo:v2 windowSize:v4 handler:{*(a1 + 56), *(a1 + 64)}];
}

void sub_100030C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: startHQLRWithContextID completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100030F00(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100030F90;
  v2[3] = &unk_1000A11B8;
  v3 = *(a1 + 40);
  [v1 stopHQLRWithHandler:v2];
}

void sub_100030F90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: stopHQLRWithHandler completed", v5, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_1000311EC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003127C;
  v2[3] = &unk_1000A18E0;
  v3 = *(a1 + 40);
  [v1 resumeHQLRWithCompletionHandler:v2];
}

uint64_t sub_10003127C(uint64_t a1, uint64_t a2)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPConnectionManager resumeHQLRWithCompletionHandler:]_block_invoke_2";
    v7 = 1024;
    v8 = 696;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed with success:%d", &v5, 0x18u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100031538(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000315F4;
  v6[3] = &unk_1000A17C8;
  v7 = *(a1 + 48);
  [v3 startClipBufferingWithContextID:v2 windowSize:v4 microphoneEnabled:v5 cameraEnabled:v6 withCompletionHandler:{*(a1 + 56), *(a1 + 64)}];
}

void sub_1000315F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPConnectionManager startClipBufferingWithContextID:windowSize:microphoneEnabled:cameraEnabled:withCompletionHandler:]_block_invoke_2";
    v11 = 1024;
    v12 = 716;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_100031878(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100031908;
  v2[3] = &unk_1000A11B8;
  v3 = *(a1 + 40);
  [v1 stopClipBufferingWithCompletionHandler:v2];
}

void sub_100031908(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPConnectionManager stopClipBufferingWithCompletionHandler:]_block_invoke_2";
    v7 = 1024;
    v8 = 729;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v5, 0x12u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100031C7C(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = [*(a1 + 32) consumeSandboxExtensionToken:*(a1 + 40)];
  if (v12[3] == -1)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062E9C();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = [NSError _rpUserErrorForCode:-5835 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v4 = *(a1 + 64);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100031DFC;
    v8[3] = &unk_1000A1FA0;
    v8[4] = v2;
    v10 = &v11;
    v5 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v3 exportClipToURL:v5 duration:v8 completionHandler:v4];
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100031DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031DFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) releaseSandboxExtensionHandle:*(*(*(a1 + 48) + 8) + 24)];
  v5 = dword_1000B6840;
  if ((v4 & 1) == 0 && dword_1000B6840 <= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062F1C();
    }

    v5 = dword_1000B6840;
  }

  if (v5 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPConnectionManager exportClipToURL:duration:extensionToken:completionHandler:]_block_invoke";
    v9 = 1024;
    v10 = 760;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v7, 0x12u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1000320D4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100032168;
  v3[3] = &unk_1000A17C8;
  v4 = *(a1 + 48);
  [v2 resumeInAppClipWithWindowLayerContextID:v1 completionHandler:v3];
}

void sub_100032168(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPConnectionManager resumeInAppClipWithWindowLayerContextID:completionHandler:]_block_invoke_2";
    v11 = 1024;
    v12 = 774;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, a3, a4);
  }
}

void sub_100032360(uint64_t a1)
{
  [*(*(a1 + 32) + 16) macApplicationDidResignActive];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: macApplicationDidResignActive", v1, 2u);
  }
}

void sub_100032568(void *a1)
{
  [*(a1[4] + 16) macApplicationDidBecomeActiveWithContextID:a1[5] completionHandler:a1[6]];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPConnectionManager macApplicationDidBecomeActiveWithContextID:completionHandler:]_block_invoke";
    v3 = 1024;
    v4 = 797;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v1, 0x12u);
  }
}

void sub_100032938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100032958(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000329FC;
  v6[3] = &unk_1000A1FA0;
  v6[4] = v1;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v3 saveVideo:v2 handler:v6];
}

void sub_1000329FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) releaseSandboxExtensionHandle:*(*(*(a1 + 48) + 8) + 24)];
  v5 = dword_1000B6840;
  if ((v4 & 1) == 0 && dword_1000B6840 <= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006309C();
    }

    v5 = dword_1000B6840;
  }

  if (v5 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPConnectionManager saveVideo:extensionToken:handler:]_block_invoke";
    v8 = 1024;
    v9 = 822;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100032C6C(void *a1)
{
  [*(a1[4] + 16) saveVideoToCameraRoll:a1[5] handler:a1[6]];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: saveVideoToCameraRoll completed", v1, 2u);
  }
}

void sub_100032E18(void *a1)
{
  [*(a1[4] + 16) saveClipToCameraRoll:a1[5] handler:a1[6]];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: saveClipToCameraRoll completed", v1, 2u);
  }
}

void sub_1000330E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100033100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000331A4;
  v6[3] = &unk_1000A1FA0;
  v6[4] = v1;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v3 saveClipToCameraRoll:v2 handler:v6];
}

void sub_1000331A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) releaseSandboxExtensionHandle:*(*(*(a1 + 48) + 8) + 24)];
  v5 = dword_1000B6840;
  if ((v4 & 1) == 0 && dword_1000B6840 <= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006319C();
    }

    v5 = dword_1000B6840;
  }

  if (v5 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPConnectionManager saveClipToCameraRoll:extensionToken:handler:]_block_invoke";
    v8 = 1024;
    v9 = 861;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d completed", &v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000333D4(uint64_t a1)
{
  [*(*(a1 + 32) + 16) reportCameraUsage:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPConnectionManager: reportCameraUsage completed", v1, 2u);
  }
}

void sub_100033974(uint64_t a1)
{
  [*(*(a1 + 32) + 16) getSystemBroadcastPickerInfo:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[RPConnectionManager getSystemBroadcastPickerInfo:]_block_invoke";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s complete", &v1, 0xCu);
  }
}

void sub_100033BB4(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setBroadcastPickerPreferredExt:*(a1 + 40) showsMicButton:*(a1 + 48)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[RPConnectionManager setBroadcastPickerPreferredExt:showsMicButton:]_block_invoke";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s complete", &v1, 0xCu);
  }
}

void sub_100033DB8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) openControlCenterSystemRecordingView];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[RPConnectionManager openControlCenterSystemRecordingView]_block_invoke";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s complete", &v1, 0xCu);
  }
}

void sub_100033F1C(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/Frameworks/ReplayKit.framework"];
  v1 = [NSBundle bundleWithURL:v3];
  v2 = qword_1000B6928;
  qword_1000B6928 = v1;
}

uint64_t sub_100034CD0(uint64_t a1)
{
  v2 = +[RPCaptureManager sharedInstance];
  [v2 stopCaptureForDelegate:*(a1 + 32)];

  [*(a1 + 32) setSessionState:3];
  [*(a1 + 32) reportSummaryEvent:0 recordedFileSize:0];
  [*(*(a1 + 32) + 464) invalidateConnection];
  v3 = *(a1 + 32);
  v4 = *(v3 + 464);
  *(v3 + 464) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1000350D4(id a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemBroadcastSession resumeSessionWithWindowLayerContextID:completionHandler:]_block_invoke_2";
    v3 = 1024;
    v4 = 170;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying extension of resume", &v1, 0x12u);
  }
}

void sub_100035D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006361C();
    }

    [*(a1 + 32) setSessionState:3];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_12:
      v5();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[RPSystemBroadcastSession startCaptureWithHandler:]_block_invoke";
      v12 = 1024;
      v13 = 359;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d startCapture has started successfully", &v10, 0x12u);
    }

    [*(a1 + 32) setSessionState:1];
    v6 = *(a1 + 32);
    v7 = [v6[52] infoDictionary];
    v8 = [v7 objectForKey:_kCFBundleDisplayNameKey];
    [v6 setUpStatusBarAssertionWithServiceName:v8];

    [*(a1 + 32) checkAndPlaySystemSessionSound:1];
    v9 = *(a1 + 40);
    if (v9)
    {
      v5 = *(v9 + 16);
      goto LABEL_12;
    }
  }
}

void sub_1000362F4(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  if (v3)
  {
    [*(a1 + 40) disableBroadcast];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPSystemBroadcastSession enableBroadcastWithListenerEndpoint:]_block_invoke";
    v6 = 1024;
    v7 = 410;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d connection to extensions ready", &v4, 0x12u);
  }
}

void sub_1000363E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBroadcastServiceInfo:v3];
}

void sub_100036440(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBroadcastURL:v3];
}

void sub_10003649C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBroadcastError:v3];
}

id sub_100036688(uint64_t a1)
{
  [*(a1 + 32) showAlertForBroadcastSessionWithError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:0];
}

void sub_1000368BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSKeyedUnarchiver alloc];
  v5 = *(a1 + 32);
  v17 = 0;
  v6 = [v4 initForReadingFromData:v5 error:&v17];
  v7 = v17;
  [v6 setClass:objc_opt_class() forClassName:@"RPBroadcastConfiguration"];
  v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  if (!v8)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000636A8();
    }

    v9 = [v6 error];

    if (v9 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063730(v6);
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 416);
  *(v10 + 416) = v3;
  v12 = v3;

  objc_storeStrong((*(a1 + 40) + 424), *(a1 + 48));
  v13 = *(a1 + 40);
  v14 = *(v13 + 480);
  *(v13 + 480) = v8;
  v15 = v8;

  *(*(a1 + 40) + 456) = 1;
  v16 = *(a1 + 40) + 432;
  *(v16 + 16) = kCMTimeZero.epoch;
  *v16 = *&kCMTimeZero.value;
  [*(a1 + 40) setupDispatchLimits];
  (*(*(a1 + 56) + 16))();
}

void sub_100036C44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && [v5 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [v13 identifier];
        v15 = [v14 isEqualToString:*(a1 + 32)];

        if (v15)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v26 = "[RPSystemBroadcastSession loadBroadcastUploadExtensionWithBaseIdentifier:broadcastExtensionBundleID:withHandler:]_block_invoke";
        v27 = 1024;
        v28 = 505;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d found matching broadcastExtension", buf, 0x12u);
      }

      v17 = v13;

      if (v17)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_12:
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000637D4();
    }

    v17 = [v8 firstObject];
LABEL_22:
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100036F08;
    v18[3] = &unk_1000A21E8;
    v16 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services" baseIdentifier:v16 unwantedActivationRule:@"NSExtensionActivationSupportsReplayKitStreaming" completion:v18];

    v17 = v19;
  }
}

void sub_100036F08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && !a3 && [v5 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v21 = "[RPSystemBroadcastSession loadBroadcastUploadExtensionWithBaseIdentifier:broadcastExtensionBundleID:withHandler:]_block_invoke";
        v22 = 1024;
        v23 = 525;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d found matching broadcastExtension", buf, 0x12u);
      }

      v15 = v12;

      if (v15)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_12:
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006385C();
    }

    v15 = [v7 firstObject];
LABEL_21:
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100037168(id a1)
{
  qword_1000B6938 = dispatch_queue_create("com.apple.replaykit.SystemBroadcastSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_100037334(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000638F8(a1);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{0, 1}];
}

id sub_1000376B4(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 464);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003773C;
  v6[3] = &unk_1000A2258;
  v4 = a1[7];
  v6[5] = a1[6];
  v6[6] = v4;
  v6[4] = v2;
  return [v3 processPayload:v1 completion:v6];
}

id sub_10003773C(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v5 = 136446722;
    v6 = "[RPSystemBroadcastSession notifyExtensionOfAudioSampleBuffer:withType:]_block_invoke_2";
    v7 = 1024;
    v8 = 652;
    v9 = 2048;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Sending %ld audio payload to broadcast extension...", &v5, 0x1Cu);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  return [*(a1 + 32) dispatchCompleted:*(a1 + 40)];
}

id sub_100037B60(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 464);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100037BE8;
  v7[3] = &unk_1000A2258;
  v4 = a1[6];
  v5 = a1[7];
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v5;
  return [v3 processPayload:v1 completion:v7];
}

id sub_100037BE8(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPSystemBroadcastSession notifyExtensionOfVideoSampleBuffer:withType:sampleOrientation:]_block_invoke_2";
    v6 = 1024;
    v7 = 702;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Sending video payload to broadcast extension...", &v4, 0x12u);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  return [*(a1 + 32) dispatchCompleted:*(a1 + 48)];
}

void sub_100038064(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.replaykit.broadcastSession.AudioSampleQueue", v3);
  v2 = qword_1000B6948;
  qword_1000B6948 = v1;
}

void sub_100038110(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.replaykit.broadcastSession.VideoSampleQueue", v3);
  v2 = qword_1000B6958;
  qword_1000B6958 = v1;
}

void sub_1000382B0(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5806 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemBroadcastSession handleSystemAlertStop]_block_invoke";
    v3 = 1024;
    v4 = 824;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_10003841C(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5806 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemBroadcastSession handleDeviceLockedWarning]_block_invoke";
    v3 = 1024;
    v4 = 835;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100038588(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5802 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemBroadcastSession handleDeviceRestrictionWarning]_block_invoke";
    v3 = 1024;
    v4 = 846;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100038938(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPSystemBroadcastSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 867;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume capture completed with Error: %@", &v6, 0x1Cu);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setSessionState:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100038AE0(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemBroadcastSession handleResumeContextIDFailure]_block_invoke";
    v3 = 1024;
    v4 = 884;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100038CA8(id a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemBroadcastSession handleFrontmostApplicationDidChange:]_block_invoke";
    v3 = 1024;
    v4 = 905;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d replayd sending frontmost app bundleID to broadcast extension...", &v1, 0x12u);
  }
}

void sub_10003A43C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063E48();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 2;
    v4 = *(a1 + 32);
    v5 = [v4 clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, [*(*(a1 + 32) + 8) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 8), "microphoneEnabled"));
  }
}

void sub_10003A664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063ECC();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10003A93C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "[RPClient resumeInAppRecordingWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 517;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Not resuming with error %@", &v6, 0x1Cu);
    }

    *(*(a1 + 32) + 64) = 0;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3, 0, 0);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPClient resumeInAppRecordingWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 523;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed", &v6, 0x12u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, [*(*(a1 + 32) + 8) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 8), "microphoneEnabled"));
    }
  }
}

uint64_t sub_10003AC3C(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPClient discardInAppRecordingWithHandler:]_block_invoke";
    v5 = 1024;
    v6 = 534;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d In app recording has been discared", &v3, 0x12u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003AFD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063F50();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 1;
    v4 = *(a1 + 32);
    v5 = [v4 clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, [*(*(a1 + 32) + 16) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 16), "microphoneEnabled"));
  }
}

void sub_10003B1F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063FD4();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10003B4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "[RPClient resumeInAppCaptureWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 597;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Not resuming with error %@", &v6, 0x1Cu);
    }

    *(*(a1 + 32) + 64) = 0;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3, 0, 0);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPClient resumeInAppCaptureWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 603;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed", &v6, 0x12u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, [*(*(a1 + 32) + 16) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 16), "microphoneEnabled"));
    }
  }
}

void sub_10003BB78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000640E4();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 3;
    v4 = *(a1 + 32);
    v5 = [v4[3] broadcastHostBundleId];
    v6 = [*(a1 + 32) clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:v6];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, [*(*(a1 + 32) + 24) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 24), "microphoneEnabled"));
  }
}

void sub_10003BDBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064168();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10003C0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "[RPClient resumeInAppBroadcastWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 690;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Not resuming with error %@", &v6, 0x1Cu);
    }

    *(*(a1 + 32) + 64) = 0;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3, 0, 0);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPClient resumeInAppBroadcastWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 696;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed", &v6, 0x12u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, [*(*(a1 + 32) + 24) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 24), "microphoneEnabled"));
    }
  }
}

void sub_10003C54C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000641EC();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 4;
    v4 = *(a1 + 32);
    v5 = [v4 clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, [*(*(a1 + 32) + 32) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 32), "microphoneEnabled"));
  }
}

void sub_10003C774(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064270();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10003CA30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "[RPClient resumeInAppClipWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 759;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Not resuming with error %@", &v6, 0x1Cu);
    }

    *(*(a1 + 32) + 64) = 0;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3, 0, 0);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPClient resumeInAppClipWithContextID:completionHandler:]_block_invoke";
      v8 = 1024;
      v9 = 765;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed", &v6, 0x12u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, [*(*(a1 + 32) + 32) cameraEnabled], objc_msgSend(*(*(a1 + 32) + 32), "microphoneEnabled"));
    }
  }
}

void sub_10003CD5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446722;
      v8 = "[RPClient exportClipToURL:duration:completionHandler:]_block_invoke";
      v9 = 1024;
      v10 = 777;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clip not exported with error %@", &v7, 0x1Cu);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_12:
      v5();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[RPClient exportClipToURL:duration:completionHandler:]_block_invoke";
      v9 = 1024;
      v10 = 782;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully clipped", &v7, 0x12u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v5 = *(v6 + 16);
      goto LABEL_12;
    }
  }
}

void sub_10003D1A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000642F4();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 5;
    v4 = *(a1 + 32);
    v5 = [v4 clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_10003D3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064378();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10003D574(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000643FC();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_10003D76C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064480();
    }

    *(*(a1 + 32) + 64) = 0;
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClient resumeSystemRecordingWithCompletionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 869;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed system recording", &v5, 0x12u);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 == 0);
  }
}

void sub_10003DDA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064504();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 6;
    v4 = *(a1 + 32);
    v5 = [v4[6] broadcastHostBundleId];
    v6 = [*(a1 + 32) clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:v6];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_10003DFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064588();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10003E198(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006460C();
    }

    *(*(a1 + 32) + 64) = 0;
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClient resumeSystemBroadcastWithCompletionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 943;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed system broadcast", &v5, 0x12u);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 == 0);
  }
}

void sub_10003E798(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064690();
    }
  }

  else
  {
    *(*(a1 + 32) + 64) = 8;
    v4 = *(a1 + 32);
    v5 = [v4 clientBundleID];
    [v4 beginPrivacyAccountingIntervalwithSource:v5 withDestination:0];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003E994(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064714();
    }
  }

  else
  {
    [*(a1 + 32) endPrivacyAccountingInterval];
  }

  *(*(a1 + 32) + 64) = 0;
  (*(*(a1 + 40) + 16))();
}

void sub_10003EC38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000647A0();
    }

    *(*(a1 + 32) + 64) = 0;
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPClient resumeHQLRSessionWithCompletionHandler:]_block_invoke";
    v6 = 1024;
    v7 = 1035;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully resumed HQLR recording session", &v4, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003F324(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_100041074(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064A6C();
    }
  }

  else
  {
    v8 = [NSString stringWithString:v5];
    v9 = *(a1 + 32);
    v10 = *(v9 + 416);
    *(v9 + 416) = v8;

    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446722;
      v12 = "[RPHighQualityLocalRecordingSession startHQLRRecordingWithMicrophoneID:cameraDeviceID:destination:fileURL:sandboxExtensionTokenForFileURL:audioOnly:windowSize:handler:]_block_invoke";
      v13 = 1024;
      v14 = 124;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d connect to angel, sessionID=%@", &v11, 0x1Cu);
    }
  }
}

void sub_1000411D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064AF4();
    }

    [*(a1 + 32) setSessionState:3];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = +[RPCaptureManager sharedInstance];
    v5 = *(a1 + 32);
    v6 = v5[54];
    v7 = v5[55];
    [v5 windowSize];
    v9 = v8;
    v11 = v10;
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(v13 + 513);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100041358;
    v15[3] = &unk_1000A1840;
    v15[4] = v13;
    v16 = v12;
    [v4 startHQLRCaptureForDelegate:v5 micDeviceID:v6 cameraDeviceID:v7 windowSize:v14 audioOnly:v15 didStartHandler:{v9, v11}];
  }
}

void sub_100041358(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064B80();
    }

    [*(a1 + 32) setSessionState:3];
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "[RPHighQualityLocalRecordingSession startHQLRRecordingWithMicrophoneID:cameraDeviceID:destination:fileURL:sandboxExtensionTokenForFileURL:audioOnly:windowSize:handler:]_block_invoke";
      v10 = 1024;
      v11 = 170;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPHighQualityLocalRecordingSession: startCapture has started successfully", &v8, 0x12u);
    }

    [*(a1 + 32) setSessionState:1];
    [*(a1 + 32) updateFrontmostAudioOrVideoCall];
    [*(a1 + 32) addCallStatusObservers];
    [*(a1 + 32) addMediaServicesResetObserver];
    v5 = *(a1 + 32);
    v6 = +[RPFeatureFlagUtility sharedInstance];
    LODWORD(v5) = [v5 shouldSetupBackgroundActivityUIForSystemBannerEnabled:{objc_msgSend(v6, "systemBannerEnabled")}];

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 setupBackgroundActivityUI];
    }

    else
    {
      [v7 setUpStatusBarAssertionWithServiceName:0];
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
}

void sub_1000418EC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setSessionState:3];
  v4 = *(a1 + 32);
  v5 = [v3 code];
  v6 = [*(*(a1 + 32) + 408) outputURL];
  [v4 reportSummaryEvent:v5 recordedFileSize:{+[RPSession getFileSizeForURL:](RPSession, "getFileSizeForURL:", v6)}];

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) saveDestinationString];
    v8 = 136446978;
    v9 = "[RPHighQualityLocalRecordingSession stopHQLRRecordingWithHandler:]_block_invoke";
    v10 = 1024;
    v11 = 238;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movie writer finished writing to %@, error: %@", &v8, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100041AC8(id a1)
{
  qword_1000B6968 = dispatch_queue_create("com.apple.replaykit.SystemRecordSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_100041BE0(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v4 = *(a1 + 40);
  switch(v4)
  {
    case 2:
      if (([*(a1 + 32) microphoneEnabled] & 1) == 0)
      {
        DataBuffer = CMSampleBufferGetDataBuffer(a2);
        DataLength = CMBlockBufferGetDataLength(DataBuffer);
        CMBlockBufferFillDataBytes(0, DataBuffer, 0, DataLength);
      }

      v11 = *(*(a1 + 32) + 408);

      [v11 appendHQLRAudioSampleBuffer:a2];
      break;
    case 1:
      v8 = *(*(a1 + 32) + 408);

      [v8 appendAudio1SampleBuffer:a2];
      break;
    case 0:
      v5 = *(a1 + 32);
      v6 = +[RPCaptureManager sharedInstance];
      v7 = v6;
      if (v6)
      {
        [v6 cameraTransformForHQLR];
      }

      else
      {
        memset(v12, 0, sizeof(v12));
      }

      [v5 processSampleBuffer:a2 transform:v12];

      *(*(a1 + 32) + 512) = 0;
      break;
  }
}

void sub_100041ED0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064DB8(a1);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{0, 1}];
}

void sub_1000420F0(uint64_t a1)
{
  v2 = [NSError _rpUserErrorForCode:-5817 userInfo:0];
  [*(a1 + 32) reportSessionEndReason:v2];
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5817 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPHighQualityLocalRecordingSession handleMediaServicesReset:]_block_invoke";
    v5 = 1024;
    v6 = 375;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Notifying client, stopped due to media services reset", &v3, 0x12u);
  }
}

void sub_10004233C(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5806 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPHighQualityLocalRecordingSession handleDeviceLockedWarning]_block_invoke";
    v3 = 1024;
    v4 = 388;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100042550(uint64_t a1)
{
  v2 = [NSError _rpUserErrorForCode:-5805 userInfo:0];
  [*(a1 + 32) reportSessionEndReason:v2];
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5805 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPHighQualityLocalRecordingSession handleMemoryWarning]_block_invoke";
    v5 = 1024;
    v6 = 402;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Notifying client, stopped due to insufficient storage", &v3, 0x12u);
  }
}

void sub_1000429A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = -5806;
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) notifyClientSessionDidStopWithError:v4 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPHighQualityLocalRecordingSession handleSystemAlertStop]_block_invoke";
    v7 = 1024;
    v8 = 440;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v5, 0x12u);
  }
}

void sub_100042D78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPHighQualityLocalRecordingSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 471;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume HQLR capture completed with error=%@", &v5, 0x1Cu);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setSessionState:v4];
  if (!v3)
  {
    *(*(a1 + 32) + 80) = 0;
    [*(a1 + 32) resumeRecordingTimer];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100042FE4(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPHighQualityLocalRecordingSession handleResumeContextIDFailure]_block_invoke";
    v3 = 1024;
    v4 = 493;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_1000431EC(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];
  v4 = *(a1 + 32);
  v5 = *(v4 + 480);
  *(v4 + 480) = v3;

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 480);
    v7 = 136446722;
    v8 = "[RPHighQualityLocalRecordingSession updateFrontmostAudioOrVideoCall]_block_invoke";
    v9 = 1024;
    v10 = 514;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d active call: %p", &v7, 0x1Cu);
  }
}

void sub_100043378(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 480);
  *(v1 + 480) = 0;
}

void sub_100043648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043660(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446466;
      v21 = "[RPHighQualityLocalRecordingSession handleTUCallCenterNotification:]_block_invoke";
      v22 = 1024;
      v23 = 567;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using call from notification object", &v20, 0x12u);
    }

    v4 = [*(a1 + 32) object];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446466;
      v21 = "[RPHighQualityLocalRecordingSession handleTUCallCenterNotification:]_block_invoke";
      v22 = 1024;
      v23 = 564;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using frontmost call", &v20, 0x12u);
    }

    v5 = +[TUCallCenter sharedInstance];
    v4 = [v5 frontmostAudioOrVideoCall];
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) name];
    v7 = [v4 callUUID];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isVideo]);
    v9 = [*(*(a1 + 40) + 480) callUUID];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(*(a1 + 40) + 480) isVideo]);
    v20 = 136447746;
    v21 = "[RPHighQualityLocalRecordingSession handleTUCallCenterNotification:]_block_invoke";
    v22 = 1024;
    v23 = 571;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Received a TUCallCenter notification [%@], new call=%@ (isVideo=%@), previous call=%@ (isVideo=%@)", &v20, 0x44u);
  }

  v11 = [*(a1 + 32) name];
  v12 = [v11 isEqualToString:TUCallCenterCallConnectedNotification];

  if (v12)
  {
    if (!*(*(a1 + 40) + 480))
    {
      goto LABEL_29;
    }

    v13 = [v4 callUUID];
    v14 = [*(*(a1 + 40) + 480) callUUID];
    if (![v13 isEqualToString:v14])
    {
      v15 = *(*(a1 + 40) + 448);

      if (v15 == 1)
      {
        if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v20 = 136446466;
        v21 = "[RPHighQualityLocalRecordingSession handleTUCallCenterNotification:]_block_invoke";
        v22 = 1024;
        v23 = 574;
        v16 = " [INFO] %{public}s:%d Will stop HQLR session due to incoming call connected";
LABEL_26:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x12u);
LABEL_27:
        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_28:

    goto LABEL_29;
  }

  v17 = [*(a1 + 32) name];
  v18 = [v17 isEqualToString:TUCallUpgradedToVideoNotification];

  if (!v18)
  {
    goto LABEL_29;
  }

  v13 = [v4 callUUID];
  v14 = [*(*(a1 + 40) + 480) callUUID];
  if (![v13 isEqualToString:v14])
  {
    goto LABEL_28;
  }

  v19 = *(*(a1 + 40) + 448);

  if (v19 == 1)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v20 = 136446466;
    v21 = "[RPHighQualityLocalRecordingSession handleTUCallCenterNotification:]_block_invoke";
    v22 = 1024;
    v23 = 579;
    v16 = " [INFO] %{public}s:%d Will stop HQLR session due to current call upgrading to video call";
    goto LABEL_26;
  }

LABEL_29:
}

void sub_100044128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100044164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136446466;
      v3 = "[RPHighQualityLocalRecordingSession setupBackgroundActivityUI]_block_invoke";
      v4 = 1024;
      v5 = 646;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity tapped by user", &v2, 0x12u);
    }

    [WeakRetained handleSystemAlertStop];
  }
}

void sub_10004445C(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 488);
  *(v3 + 488) = v2;

  v5 = [*(a1 + 32) elapsedTimeTimer];
  [v5 invalidate];

  v6 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"updateRecordingTimer:" selector:0 userInfo:1 repeats:0.5];
  [*(a1 + 32) setElapsedTimeTimer:v6];
}

void sub_100044634(uint64_t a1)
{
  v2 = [*(a1 + 32) elapsedTimeTimer];
  [v2 invalidate];

  [*(a1 + 32) setElapsedTimeTimer:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 488);
  *(v3 + 488) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 504);
  *(v5 + 504) = 0;

  *(*(a1 + 32) + 496) = 0;
}

void sub_100044BD0(id a1)
{
  qword_1000B6978 = objc_alloc_init(RPAngelProxy);

  _objc_release_x1();
}

void sub_100044C50(id a1)
{
  qword_1000B6988 = dispatch_queue_create("com.replaykitangel.angelProxyConnectionQueue", 0);

  _objc_release_x1();
}

void sub_100044CD4(id a1)
{
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.ReplayKitAngel.session"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___RPAngelServerProtocol];
  [v5 setServer:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___RPAngelClientProtocol];
  [v5 setClient:v2];

  [v5 setClientMessagingExpectation:0];
  v3 = [v5 copy];
  v4 = qword_1000B6998;
  qword_1000B6998 = v3;
}

void sub_100044F70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 connectionManagerQueue];
  [v4 setTargetQueue:v5];

  v6 = +[BSServiceQuality userInitiated];
  [v4 setServiceQuality:v6];

  v7 = [*(a1 + 32) getBSServiceInterface];
  [v4 setInterface:v7];

  [v4 setInterfaceTarget:*(a1 + 32)];
  [v4 setActivationHandler:&stru_1000A2440];
  [v4 setInterruptionHandler:&stru_1000A2460];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045248;
  v8[3] = &unk_1000A2488;
  v8[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v8];
}

void sub_100045098(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelProxy setupConnection]_block_invoke_2";
    v5 = 1024;
    v6 = 86;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activation handler", &v3, 0x12u);
  }
}

void sub_10004516C(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelProxy setupConnection]_block_invoke";
    v5 = 1024;
    v6 = 89;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Interruption handler", &v3, 0x12u);
  }

  [(BSServiceConnectionContext *)v2 activate];
}

void sub_100045248(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPAngelProxy setupConnection]_block_invoke";
    v8 = 1024;
    v9 = 93;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Invalidation handler", &v6, 0x12u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void sub_100046114(uint64_t a1, char a2)
{
  if (a2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136446466;
      v4 = "[RPAngelProxy resumeCurrentSystemSession]_block_invoke";
      v5 = 1024;
      v6 = 198;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel resume recording success", &v3, 0x12u);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136446466;
      v4 = "[RPAngelProxy resumeCurrentSystemSession]_block_invoke";
      v5 = 1024;
      v6 = 195;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel failed to resume recording", &v3, 0x12u);
    }

    [*(a1 + 32) hideAndStopRecordingBanner];
  }
}

void sub_10004679C(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v29 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
    v30 = 1024;
    v31 = 292;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = objc_retainBlock(*(a1 + 40));
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = *(v3 + 16);
  *(v3 + 16) = v2;

  *(*(a1 + 32) + 32) = malloc_type_malloc(0xA0uLL, 0x1020040115CD000uLL);
  v6 = *(*(a1 + 32) + 32);
  v7 = 56;
  if (*(a1 + 56) == 3)
  {
    v7 = 96;
  }

  v8 = *v4 + v7;
  v9 = *(v8 + 4);
  v10 = *(v8 + 1);
  *(v6 + 8) = *v8;
  *(v6 + 40) = v9;
  *(v6 + 24) = v10;
  v11 = *v4;
  *(v11 + 136) = *&kCMTimeInvalid.value;
  *(v11 + 19) = kCMTimeInvalid.epoch;
  LODWORD(v11) = *(a1 + 56);
  v12 = v11 == 3;
  v13 = v11 != 3;
  v14 = v12;
  *(*v4 + 160) = v14;
  if (([*v4 handleStartAudioQueueFailed:AudioQueueNewInput((*(*v4 + 4) + 8) didFailHandler:{sub_100046D54, *v4, 0, 0, v13 << 11, *(*v4 + 4)), *(a1 + 48)}] & 1) == 0)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
      v30 = 1024;
      v31 = 314;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created Audio Queue Input", buf, 0x12u);
    }

    if (*(a1 + 56) == 3)
    {
      goto LABEL_14;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    if (v20)
    {
      v23 = [v20 newAudioTapForAudioCaptureConfig:{v21, v22}];
      if (v23)
      {
        v24 = v23;
        if (([*(a1 + 32) handleStartAudioQueueFailed:AudioQueueSetProperty(**(*(a1 + 32) + 32) didFailHandler:{0x71746F62u, v23, 8u), *(a1 + 48)}] & 1) == 0)
        {
          if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v29 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
            v30 = 1024;
            v31 = 327;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully set Audio Queue Process Tap", buf, 0x12u);
          }

LABEL_14:
          ioDataSize = 40;
          if (([*(a1 + 32) handleStartAudioQueueFailed:AudioQueueGetProperty(**(*(a1 + 32) + 32) didFailHandler:{0x61716674u, (*(*(a1 + 32) + 32) + 8), &ioDataSize), *(a1 + 48)}] & 1) == 0)
          {
            *(*(*v4 + 4) + 136) = 4096;
            for (i = 48; i != 128; i += 8)
            {
              AudioQueueAllocateBuffer(**(*v4 + 4), *(*(*v4 + 4) + 136), (*(*v4 + 4) + i));
              AudioQueueEnqueueBuffer(**(*v4 + 4), *(*(*v4 + 4) + i), 0, 0);
            }

            *(*(*(a1 + 32) + 32) + 144) = 0;
            *(*(*(a1 + 32) + 32) + 152) = 1;
            if (([*(a1 + 32) handleStartAudioQueueFailed:AudioQueueAddPropertyListener(**(*(a1 + 32) + 32) didFailHandler:{0x6171726Eu, sub_100046F28, *(a1 + 32)), *(a1 + 48)}] & 1) == 0)
            {
              v16 = AudioQueueStart(**(*v4 + 4), 0);
              if (v16 == -66665)
              {
                if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v29 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
                  v30 = 1024;
                  v31 = 359;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AudioQueueStart retry after can not start yet error", buf, 0x12u);
                }

                sleep(1u);
                v16 = AudioQueueStart(**(*v4 + 4), 0);
              }

              if (([*(a1 + 32) handleStartAudioQueueFailed:v16 didFailHandler:*(a1 + 48)] & 1) == 0)
              {
                if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v29 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
                  v30 = 1024;
                  v31 = 367;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully started Audio Queue Recording", buf, 0x12u);
                }

                v17 = objc_retainBlock(*(a1 + 48));
                v18 = *(a1 + 32);
                v19 = *(v18 + 24);
                *(v18 + 24) = v17;
              }
            }
          }

          return;
        }

LABEL_40:

        return;
      }
    }

    else
    {
    }

    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006504C((a1 + 32));
    }

    v25 = *(a1 + 48);
    v26 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
    (*(v25 + 16))(v25, v26);

    v24 = 0;
    goto LABEL_40;
  }
}

void sub_100046D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = a1;
  memset(&v25, 0, sizeof(v25));
  CMClockMakeHostTimeFromSystemUnits(&v25, *(a4 + 8));
  if (v10[160] == 1)
  {
    LOBYTE(keyExistsAndHasValidFormat.value) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"RPHideStatusBar", @"com.apple.replayd", &keyExistsAndHasValidFormat);
    if (!LOBYTE(keyExistsAndHasValidFormat.value) || AppBooleanValue)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time1, HostTimeClock);
      v25 = time1;
    }
  }

  value = v25.value;
  timescale = v25.timescale;
  time1 = *(v10 + 136);
  keyExistsAndHasValidFormat = kCMTimeInvalid;
  if (CMTimeCompare(&time1, &keyExistsAndHasValidFormat) && value && *(v10 + 17) >= value && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000650F0(value, timescale);
  }

  v15 = *(v10 + 1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047894;
  block[3] = &unk_1000A2530;
  v21 = v25;
  v18 = v10;
  v19 = a3;
  v22 = a5;
  v20 = a6;
  v16 = v10;
  dispatch_async(v15, block);
}

void sub_100046F28(void *a1, OpaqueAudioQueue *a2, int a3)
{
  v5 = a1;
  ioDataSize = 4;
  outData = 0;
  if (a3 == 1634824814)
  {
    if (AudioQueueGetProperty(a2, 0x6171726Eu, &outData, &ioDataSize))
    {
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10006520C();
      }
    }

    else
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v14 = "isRunningListenerCallback";
        v15 = 1024;
        v16 = 263;
        v17 = 1024;
        v18 = outData;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: isRunningListenerCallback with isRunning %d", buf, 0x18u);
      }

      v6 = v5[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100047E18;
      block[3] = &unk_1000A1F50;
      v7 = v5;
      v9 = v7;
      v10 = outData;
      dispatch_async(v6, block);
      AudioQueueRemovePropertyListener(*v7[4], 0x6171726Eu, sub_100046F28, v7);
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065180();
  }
}

id sub_10004713C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void sub_100047190(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSError _rpUserErrorForCode:-5833 userInfo:0];
    v4 = 136446722;
    v5 = "[RPAppAudioCaptureManager resumeWithConfig:]_block_invoke";
    v6 = 1024;
    v7 = 385;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Error: %@", &v4, 0x1Cu);
  }
}

void sub_100047308(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPAppAudioCaptureManager stop]_block_invoke";
    v13 = 1024;
    v14 = 392;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (v5)
  {
    if (*(v5 + 152))
    {
      *(v5 + 152) = 0;
      if (AudioQueueStop(**(*(a1 + 32) + 32), 1u))
      {
        if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100065294();
        }
      }

      else
      {
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v12 = "[RPAppAudioCaptureManager stop]_block_invoke";
          v13 = 1024;
          v14 = 407;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Audio Queue successfully stopped", buf, 0x12u);
        }

        for (i = 48; i != 128; i += 8)
        {
          v7 = AudioQueueFreeBuffer(**(*(a1 + 32) + 32), *(*(*(a1 + 32) + 32) + i));
          if (v7)
          {
            v8 = dword_1000B6840 > 2;
          }

          else
          {
            v8 = 1;
          }

          if (!v8)
          {
            v9 = v7;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v12 = "[RPAppAudioCaptureManager stop]_block_invoke";
              v13 = 1024;
              v14 = 414;
              v15 = 1024;
              v16 = v9;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d AudioQueueFreeBuffer error: %i", buf, 0x18u);
            }
          }
        }

        if (AudioQueueDispose(**(*(a1 + 32) + 32), 1u))
        {
          if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100065320();
          }
        }

        else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v12 = "[RPAppAudioCaptureManager stop]_block_invoke";
          v13 = 1024;
          v14 = 420;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Audio Queue has been disposed", buf, 0x12u);
        }
      }
    }

    AudioQueueRemovePropertyListener(**(*(a1 + 32) + 32), 0x6171726Eu, sub_100046F28, *(a1 + 32));
    free(*(*(a1 + 32) + 32));
    *(*(a1 + 32) + 32) = 0;
    v4 = *(a1 + 32);
  }

  v10 = *(v4 + 48);
  *(v4 + 48) = 0;
}

void sub_100047894(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 32))
  {
    return;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  *time1 = *(v1 + 136);
  *&time1[16] = *(v1 + 152);
  time2 = kCMTimeInvalid;
  if (CMTimeCompare(time1, &time2))
  {
    v6 = *(a1 + 32);
    if (*(v6 + 136) >= v3)
    {
      if (dword_1000B6840 <= 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100065744(v3, v5);
        }

        v6 = *(a1 + 32);
      }

      if (AudioQueueEnqueueBuffer(**(v6 + 32), *(a1 + 40), 0, 0))
      {
        v7 = dword_1000B6840 > 2;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000657D4();
      }

      return;
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *time1 = 136446722;
    *&time1[4] = "handleInputBuffer_block_invoke";
    *&time1[12] = 1024;
    *&time1[14] = 172;
    *&time1[18] = 2048;
    *&time1[20] = (v3 / v5);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: first sample received at time %.3f", time1, 0x1Cu);
  }

  v8 = *(a1 + 32);
  v9 = *v4;
  *(v8 + 152) = *(v4 + 2);
  *(v8 + 136) = v9;
  v10 = *(a1 + 32);
  if (*(v10 + 40) == 1)
  {
    *(v10 + 40) = 0;
    v10 = *(a1 + 32);
    if (*(v10 + 48))
    {
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(*(a1 + 32) + 48)];
      if (v12 > 0.0)
      {
        v13 = v12;
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *time1 = 136446466;
          *&time1[4] = "handleInputBuffer_block_invoke";
          *&time1[12] = 1024;
          *&time1[14] = 184;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: gap since last audio tap, filling with empty sample buffer", time1, 0x12u);
        }

        v14 = *(*(a1 + 32) + 32);
        time2 = kCMTimeZero;
        v15 = *(v14 + 8);
        v16 = *(v14 + 24);
        v33 = *(v14 + 40);
        *time1 = v15;
        *&time1[16] = v16;
        v17 = sub_100057AD4(&time2, time1, v13);
        (*(*(*(a1 + 32) + 16) + 16))();
        if (v17)
        {
          CFRelease(v17);
        }
      }

      v10 = *(a1 + 32);
    }
  }

  v18 = *(v10 + 32);
  if (*(v18 + 152) == 2)
  {
    v19 = *(a1 + 80);
    if (!v19)
    {
      v20 = *(v18 + 24);
      if (v20)
      {
        v19 = *(*(a1 + 40) + 16) / v20;
      }

      else
      {
        v19 = 0;
      }
    }

    formatDescriptionOut = 0;
    time2.value = 0;
    destinationBuffer = 0;
    if (!CMAudioFormatDescriptionCreate(kCFAllocatorDefault, (v18 + 8), 0, 0, 0, 0, 0, &formatDescriptionOut))
    {
      v21 = *(*(a1 + 40) + 16);
      if (!CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, 0, v21, kCFAllocatorDefault, 0, 0, v21, 1u, &destinationBuffer) && !CMBlockBufferReplaceDataBytes(*(*(a1 + 40) + 8), destinationBuffer, 0, *(*(a1 + 40) + 16)))
      {
        v22 = *(a1 + 80);
        v23 = *(a1 + 48);
        *time1 = *v4;
        *&time1[16] = *(v4 + 2);
        if (!CMAudioSampleBufferCreateReadyWithPacketDescriptions(kCFAllocatorDefault, destinationBuffer, formatDescriptionOut, v22, time1, v23, &time2))
        {
          v24 = +[NSDate date];
          CMSampleBufferGetDuration(time1, time2.value);
          v25 = [v24 dateByAddingTimeInterval:CMTimeGetSeconds(time1)];
          v26 = *(a1 + 32);
          v27 = *(v26 + 48);
          *(v26 + 48) = v25;

          v28 = *(*(a1 + 32) + 16);
          if (v28)
          {
            (*(v28 + 16))(v28, time2.value);
          }
        }
      }
    }

    if (time2.value)
    {
      CFRelease(time2.value);
    }

    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    *(*(*(a1 + 32) + 32) + 144) += v19;
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *time1 = 136446466;
    *&time1[4] = "handleInputBuffer_block_invoke";
    *&time1[12] = 1024;
    *&time1[14] = 193;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAppAudioCaptureManager: recorder is not running, ignoring audio data", time1, 0x12u);
  }

  if (AudioQueueEnqueueBuffer(**(*(a1 + 32) + 32), *(a1 + 40), 0, 0) && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006585C();
  }
}

uint64_t sub_100047E18(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    if (*(v2 + 152) == 1)
    {
      v3 = result;
      if (*(result + 40))
      {
        result = *(v1 + 24);
        if (result)
        {
          result = (*(result + 16))(result, 0);
          v2 = *(*(v3 + 32) + 32);
        }

        *(v2 + 152) = 2;
      }
    }
  }

  return result;
}

id sub_100048048(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [NSNumber numberWithBool:*(a1 + 56)];
    v18 = 136446722;
    v19 = "[RPCameraCaptureManager startWithAppUsingCamera:startHandler:outputHandler:]_block_invoke";
    v20 = 1024;
    v21 = 71;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d usingCamera=%@", &v18, 0x1Cu);
  }

  v3 = objc_retainBlock(*(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = objc_retainBlock(*(a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  *(*(a1 + 32) + 32) = *(a1 + 56);
  *(*(a1 + 32) + 33) = 0;
  v9 = *(a1 + 32);
  v10 = *&CGAffineTransformIdentity.c;
  *(v9 + 56) = *&CGAffineTransformIdentity.a;
  *(v9 + 72) = v10;
  *(v9 + 88) = *&CGAffineTransformIdentity.tx;
  *(*(a1 + 32) + 104) = 1;
  v11 = *(a1 + 32);
  v12 = *(v11 + 112);
  *(v11 + 112) = &off_1000A6D28;

  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 128) = 0;
  v13 = *(a1 + 32);
  v14 = *(v13 + 136);
  *(v13 + 136) = &stru_1000A2FB8;

  v15 = *(a1 + 32);
  v16 = *(v15 + 144);
  *(v15 + 144) = &off_1000A6D28;

  return [*(a1 + 32) startObservingFrameReceiver];
}

void sub_100048278(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPCameraCaptureManager stop]_block_invoke";
    v8 = 1024;
    v9 = 91;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  v2 = *(a1 + 32);
  if (*(v2 + 33) == 1)
  {
    [v2 stopObservingFrameReceiver];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

void sub_100048904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100048930(uint64_t a1, const void *a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2 && WeakRetained && a3)
  {
    CFRetain(a2);
    v7 = v6[5];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000489EC;
    v8[3] = &unk_1000A1230;
    v9 = v6;
    v10 = a2;
    dispatch_async(v7, v8);
  }
}

void sub_1000489EC(uint64_t a1)
{
  [*(a1 + 32) handleCameraSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_100048A2C(uint64_t a1)
{
  [*(a1 + 32) handleCameraSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

char *sub_10004A308(int a1)
{
  v1 = dword_1000B69DC++;
  v2 = &unk_1000B69A8 + 5 * (v1 % 0xA);
  *v2 = HIBYTE(a1);
  v2[1] = BYTE2(a1);
  v2[2] = BYTE1(a1);
  v2[3] = a1;
  v2[4] = 0;
  return v2;
}

uint64_t sub_10004B2AC(uint64_t a1)
{
  v2 = +[RPCaptureManager sharedInstance];
  [v2 stopCaptureForDelegate:*(a1 + 32)];

  [*(a1 + 32) setSessionState:3];
  [*(a1 + 32) reportSummaryEvent:0 recordedFileSize:0];
  [*(*(a1 + 32) + 464) invalidateConnection];
  v3 = *(a1 + 32);
  v4 = *(v3 + 464);
  *(v3 + 464) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10004BBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065C30();
    }

    [*(a1 + 32) setSessionState:3];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_12:
      v5();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[RPBroadcastSession startCaptureWithHandler:]_block_invoke";
      v9 = 1024;
      v10 = 244;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d startCapture has started successfully", &v7, 0x12u);
    }

    [*(a1 + 32) setSessionState:1];
    v6 = *(a1 + 40);
    if (v6)
    {
      v5 = *(v6 + 16);
      goto LABEL_12;
    }
  }
}

void sub_10004C098(id a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPBroadcastSession resumeSessionWithWindowLayerContextID:completionHandler:]_block_invoke_2";
    v3 = 1024;
    v4 = 275;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying extension of resume", &v1, 0x12u);
  }
}

void sub_10004C520(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  if (v3)
  {
    [*(a1 + 40) disableBroadcast];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBroadcastSession enableBroadcastWithListenerEndpoint:]_block_invoke";
    v6 = 1024;
    v7 = 299;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d connection to extensions ready", &v4, 0x12u);
  }
}

void sub_10004C610(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBroadcastServiceInfo:v3];
}

void sub_10004C66C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBroadcastURL:v3];
}

void sub_10004C6C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBroadcastError:v3];
}

id sub_10004C8B4(uint64_t a1)
{
  [*(a1 + 32) showAlertForBroadcastSessionWithError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:0];
}

void sub_10004CAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSKeyedUnarchiver alloc];
  v5 = *(a1 + 32);
  v16 = 0;
  v6 = [v4 initForReadingFromData:v5 error:&v16];
  v7 = v16;
  v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  v9 = *(a1 + 40);
  v10 = *(v9 + 416);
  *(v9 + 416) = v3;
  v11 = v3;

  objc_storeStrong((*(a1 + 40) + 424), *(a1 + 48));
  v12 = *(a1 + 40);
  v13 = *(v12 + 480);
  *(v12 + 480) = v8;
  v14 = v8;

  *(*(a1 + 40) + 456) = 1;
  v15 = *(a1 + 40) + 432;
  *(v15 + 16) = kCMTimeZero.epoch;
  *v15 = *&kCMTimeZero.value;
  [*(a1 + 40) setupDispatchLimits];
  (*(*(a1 + 56) + 16))();
}

void sub_10004CDAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && [v5 count])
  {
    v8 = [v5 firstObject];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004CEC0;
    v10[3] = &unk_1000A19E0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services" baseIdentifier:v9 unwantedActivationRule:@"NSExtensionActivationSupportsReplayKitStreaming" completion:v10];
  }
}

uint64_t sub_10004CEC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!a3)
    {
      v8 = v5;
      if ([v5 count])
      {
        v6 = [v8 firstObject];
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  return _objc_release_x1();
}

void sub_10004CF90(id a1)
{
  qword_1000B69E0 = dispatch_queue_create("com.apple.replaykit.BroadcastSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_10004D15C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065CD0(a1);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{0, 1}];
}

id sub_10004DC90(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 464);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004DD18;
  v6[3] = &unk_1000A2258;
  v4 = a1[7];
  v6[5] = a1[6];
  v6[6] = v4;
  v6[4] = v2;
  return [v3 processPayload:v1 completion:v6];
}

id sub_10004DD18(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v5 = 136446722;
    v6 = "[RPBroadcastSession notifyExtensionOfAudioSampleBuffer:withType:]_block_invoke_2";
    v7 = 1024;
    v8 = 629;
    v9 = 2048;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Sending %ld audio payload to broadcast extension...", &v5, 0x1Cu);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  return [*(a1 + 32) dispatchCompleted:*(a1 + 40)];
}

id sub_10004E13C(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 464);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E1C4;
  v7[3] = &unk_1000A2258;
  v4 = a1[6];
  v5 = a1[7];
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v5;
  return [v3 processPayload:v1 completion:v7];
}

id sub_10004E1C4(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBroadcastSession notifyExtensionOfVideoSampleBuffer:withType:sampleOrientation:]_block_invoke_2";
    v6 = 1024;
    v7 = 679;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Sending video payload to broadcast extension...", &v4, 0x12u);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  return [*(a1 + 32) dispatchCompleted:*(a1 + 48)];
}

void sub_10004E640(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.replaykit.broadcastSession.AudioSampleQueue", v3);
  v2 = qword_1000B69F0;
  qword_1000B69F0 = v1;
}

void sub_10004E6EC(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.replaykit.broadcastSession.VideoSampleQueue", v3);
  v2 = qword_1000B6A00;
  qword_1000B6A00 = v1;
}

void sub_10004E998(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPBroadcastSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 810;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume capture completed with Error: %@", &v6, 0x1Cu);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setSessionState:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_10004EDD0(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5801 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPBroadcastSession handleClientApplicationDidEnterForeground]_block_invoke";
    v3 = 1024;
    v4 = 841;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_10004EFF4(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5807 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPBroadcastSession handleDisplayWarning]_block_invoke";
    v3 = 1024;
    v4 = 854;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_10004F2F4(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5802 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPBroadcastSession handleDeviceRestrictionWarning]_block_invoke";
    v3 = 1024;
    v4 = 883;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_10004F518(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPBroadcastSession handleResumeContextIDFailure]_block_invoke";
    v3 = 1024;
    v4 = 895;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

__CFData *sub_10004F710(CGImage *a1, void *a2, void *a3, BOOL *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[NSMutableData data];
  *a4 = 0;
  v10 = CGImageDestinationCreateWithData(v9, v8, 1uLL, 0);

  if (v10)
  {
    CGImageDestinationAddImage(v10, a1, v7);
    *a4 = CGImageDestinationFinalize(v10);
    CFRelease(v10);
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066180();
  }

  return v9;
}

void sub_10004FF04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006638C();
    }
  }

  else
  {
    v8 = [NSString stringWithString:v5];
    v9 = *(a1 + 32);
    v10 = *(v9 + 416);
    *(v9 + 416) = v8;

    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446722;
      v12 = "[RPSystemRecordSession startSystemRecordingWithMicrophoneEnabled:cameraEnabled:mixedRealityCameraEnabled:contextID:windowSize:handler:]_block_invoke";
      v13 = 1024;
      v14 = 68;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d connect to angel, sessionID=%@", &v11, 0x1Cu);
    }
  }
}

void sub_100050068(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPSystemRecordSession: startWriting for movie writer has failed. Error: %@", buf, 0xCu);
    }

    [*(a1 + 32) setSessionState:3];
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = +[RPFeatureFlagUtility sharedInstance];
    v6 = [v5 screenRecordingPassthroughCamera];

    v7 = 1;
    if (v6)
    {
      v7 = *(a1 + 48);
      [*(a1 + 32) setMixedRealityCameraEnabled:v7];
    }

    v8 = +[RPCaptureManager sharedInstance];
    v9 = *(a1 + 32);
    v10 = [v9 microphoneEnabled];
    [*(a1 + 32) windowSize];
    v12 = v11;
    v14 = v13;
    v15 = *(a1 + 32);
    v16 = v15[107];
    v17 = [v15 contextID];
    v18 = [NSArray arrayWithObject:v17];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000502A8;
    v21[3] = &unk_1000A1840;
    v19 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v19;
    LOBYTE(v20) = 1;
    [v8 startCaptureForDelegate:v9 forProcessID:0xFFFFFFFFLL shouldStartMicrophoneCapture:v10 windowSize:v16 captureType:v18 contextIDs:v7 mixedRealityCamera:v12 systemCapture:v14 didStartHandler:{v20, v21}];
  }
}

void sub_1000502A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPSystemRecordSession: startCapture has failed. Error: %@", &v9, 0xCu);
    }

    [*(a1 + 32) setSessionState:3];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);
LABEL_14:
      v6();
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPSystemRecordSession: startCapture has started successfully", &v9, 2u);
    }

    [*(a1 + 32) setSessionState:1];
    [*(a1 + 32) setUpStatusBarAssertionWithServiceName:0];
    [*(a1 + 32) checkAndPlaySystemSessionSound:1];
    if ([*(a1 + 32) cameraEnabled])
    {
      v7 = +[RPAngelProxy sharedInstance];
      [v7 enableCameraPip];
    }

    if ([*(a1 + 32) microphoneEnabled])
    {
      *(*(a1 + 32) + 424) = 1;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v6 = *(v8 + 16);
      goto LABEL_14;
    }
  }
}

void sub_1000506D4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setSessionState:3];
  v4 = *(a1 + 32);
  v5 = [v3 code];
  v6 = [*(*(a1 + 32) + 408) outputURL];
  [v4 reportSummaryEvent:v5 recordedFileSize:{+[RPSession getFileSizeForURL:](RPSession, "getFileSizeForURL:", v6)}];

  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100066418();
    }

    [RPPhotosUtility showAlertFailedSaveToPhotosWithError:v3];
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_12:
      v8();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[RPSystemRecordSession stopSystemRecordingWithHandler:]_block_invoke";
      v12 = 1024;
      v13 = 219;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finishWritingAndSaveToCameraRoll encountered no error", &v10, 0x12u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v8 = *(v9 + 16);
      goto LABEL_12;
    }
  }
}

void sub_100050A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setSessionState:3];
  v7 = *(a1 + 32);
  v8 = [v6 code];
  v9 = [*(*(a1 + 32) + 408) outputURL];
  [v7 reportSummaryEvent:v8 recordedFileSize:{+[RPSession getFileSizeForURL:](RPSession, "getFileSizeForURL:", v9)}];

  if (v6)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100066530();
    }

    [RPPhotosUtility showAlertFailedSaveToPhotosWithError:v6];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_12:
      v11();
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446466;
      v14 = "[RPSystemRecordSession stopSystemRecordingWithURLHandler:]_block_invoke";
      v15 = 1024;
      v16 = 261;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d writing movie finished", &v13, 0x12u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_12;
    }
  }
}

id *sub_10005104C(id *result, opaqueCMSampleBuffer *a2)
{
  v3 = result;
  v4 = *(result + 12);
  switch(v4)
  {
    case 2:
      if (([result[4] microphoneEnabled] & 1) == 0)
      {
        DataBuffer = CMSampleBufferGetDataBuffer(a2);
        DataLength = CMBlockBufferGetDataLength(DataBuffer);
        CMBlockBufferFillDataBytes(0, DataBuffer, 0, DataLength);
      }

      v11 = *(v3[4] + 51);

      return [v11 appendAudio2SampleBuffer:a2];
    case 1:
      v8 = *(result[4] + 51);

      return [v8 appendAudio1SampleBuffer:a2];
    case 0:
      v5 = result[4];
      v6 = v3[5];
      v7 = v5[51];

      return [v5 processSampleBuffer:a2 transformFlags:v6 movieWriter:v7];
  }

  return result;
}

void sub_1000511F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000665BC(a1);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{0, 1}];
}

void sub_1000512BC(id a1)
{
  qword_1000B6A10 = dispatch_queue_create("com.apple.replaykit.SystemRecordSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_10005143C(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5806 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemRecordSession handleSystemAlertStop]_block_invoke";
    v3 = 1024;
    v4 = 377;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100051650(uint64_t a1)
{
  v2 = [NSError _rpUserErrorForCode:-5805 userInfo:0];
  [*(a1 + 32) reportSessionEndReason:v2];
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5805 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPSystemRecordSession handleMemoryWarning]_block_invoke";
    v5 = 1024;
    v6 = 391;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Notifying client, stopped due to insufficient storage", &v3, 0x12u);
  }
}

void sub_10005189C(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5811 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemRecordSession handleIncomingCallWarning]_block_invoke";
    v3 = 1024;
    v4 = 403;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100051AB0(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5806 movieURL:0 showAlert:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemRecordSession handleDeviceLockedWarning]_block_invoke";
    v3 = 1024;
    v4 = 415;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100051CC4(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5802 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemRecordSession handleDeviceRestrictionWarning]_block_invoke";
    v3 = 1024;
    v4 = 427;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_10005214C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPSystemRecordSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 462;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume capture completed with Error: %@", &v6, 0x1Cu);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setSessionState:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_10005239C(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPSystemRecordSession handleResumeContextIDFailure]_block_invoke";
    v3 = 1024;
    v4 = 480;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100052A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100052A64(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100052DEC;
  v19 = sub_100052DFC;
  v20 = 0;
  v2 = +[PHPhotoLibrary sharedPhotoLibrary];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "+[RPPhotosUtility exportVideoToPhotosLibrary:completionHandler:]_block_invoke";
    v23 = 1024;
    v24 = 45;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Start Save to Photos", buf, 0x12u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052E04;
  v12[3] = &unk_1000A2698;
  v13 = *(a1 + 32);
  v14 = &v15;
  v11 = 0;
  v3 = [v2 performChangesAndWait:v12 error:&v11];
  v4 = v11;
  if (v3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136446722;
      v22 = "+[RPPhotosUtility exportVideoToPhotosLibrary:completionHandler:]_block_invoke_2";
      v23 = 1024;
      v24 = 59;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Save to Photos Video saved to camera roll successfully. Video duration: %.2f seconds", buf, 0x1Cu);
    }

    ct_green_tea_logger_create_static();
    v6 = getCTGreenTeaOsLogHandle();
    v7 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "<Photos>[Photos][com.apple.ReplayKit]: Saved screen recording.", buf, 2u);
    }
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006667C(v4);
    }

    v8 = [NSError _rpUserErrorForCode:-5831 userInfo:&__NSDictionary0__struct];

    [RPPhotosUtility showAlertFailedSaveToPhotosWithError:v8];
    v4 = v8;
  }

  v9 = +[NSFileManager defaultManager];
  [v9 _srRemoveFile:*(a1 + 32) completion:&stru_1000A26B8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v4, v16[5], *(*(*(a1 + 48) + 8) + 24));
  }

  _Block_object_dispose(&v15, 8);
}

void sub_100052DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100052DEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100052E04(uint64_t a1)
{
  v7 = +[PHAssetCreationRequest creationRequestForAsset];
  v2 = objc_alloc_init(PHAssetResourceCreationOptions);
  [v2 setShouldMoveFile:1];
  [v7 addResourceWithType:2 fileURL:*(a1 + 32) options:v2];
  v3 = [v7 placeholderForCreatedAsset];
  v4 = [v3 localIdentifier];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100052EBC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066720();
  }
}

void sub_100053000(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_1000B6840 > 2 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

    sub_1000667A0();
    if (!v5)
    {
LABEL_5:
      v5 = *(a1 + 32);
    }
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "+[RPPhotosUtility exportVideoToPhotosAsynchronously:mixAudioTracks:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 98;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Mixing video audio tracks completed", &v8, 0x12u);
  }

LABEL_9:
  if (*(a1 + 32) != v5)
  {
    v7 = +[NSFileManager defaultManager];
    [v7 _srRemoveFile:*(a1 + 32) completion:&stru_1000A2700];
  }

  [RPPhotosUtility exportVideoToPhotosLibrary:v5 completionHandler:*(a1 + 40)];
}

void sub_100053178(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066820();
  }
}

const __CFString *sub_100053614(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Invalid type";
  }

  else
  {
    return *(&off_1000A27E0 + a1);
  }
}

void sub_100053BE4(uint64_t a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(*(a1 + 40), 1u);
  if (CFArrayGetCount(SampleAttachmentsArray))
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, kCMSampleAttachmentKey_NotSync, &value))
    {
      v4 = CFBooleanGetValue(value) == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) updateLatestSampleTime:*(a1 + 40)];
  [*(*(a1 + 32) + 8) addFrameToBuffer:*(a1 + 40) isKeyFrame:v4];
  CFRelease(*(a1 + 40));
}

void sub_100053DD8(uint64_t a1)
{
  [*(a1 + 32) updateLatestSampleTime:*(a1 + 40)];
  [*(*(a1 + 32) + 16) addFrameToBuffer:*(a1 + 40) isKeyFrame:1];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_100053F74(uint64_t a1)
{
  [*(a1 + 32) updateLatestSampleTime:*(a1 + 40)];
  [*(*(a1 + 32) + 24) addFrameToBuffer:*(a1 + 40) isKeyFrame:1];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_10005426C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000542A4(uint64_t a1)
{
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 80);
    if (v2 > 2)
    {
      v3 = @"Invalid type";
    }

    else
    {
      v3 = *(&off_1000A27E0 + v2);
    }

    v4 = *(*(*(a1 + 56) + 8) + 24) + 1;
    v5 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 136447234;
    v29 = "[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:]_block_invoke";
    v30 = 1024;
    v31 = 170;
    v32 = 2112;
    *v33 = v3;
    *&v33[8] = 2048;
    *&v33[10] = v4;
    *&v33[18] = 2048;
    *&v33[20] = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %@ block start, sample %lu out of %lu", buf, 0x30u);
  }

  if ([*(a1 + 32) isReadyForMoreMediaData])
  {
    *&v6 = 136446722;
    v27 = v6;
    v7 = @"Invalid type";
    do
    {
      v8 = *(*(a1 + 72) + 8);
      if (*(v8 + 24))
      {
        break;
      }

      if (*(*(*(a1 + 56) + 8) + 24) >= *(*(*(a1 + 64) + 8) + 24))
      {
        *(v8 + 24) = 1;
      }

      else
      {
        v9 = [*(a1 + 40) objectAtIndex:?];
        v10 = v9;
        v11 = *(a1 + 48);
        if ((*(v11 + 112) & 1) == 0)
        {
          v12 = *(v11 + 80);
          CMSampleBufferGetPresentationTimeStamp(buf, v9);
          [v12 startSessionAtSourceTime:buf];
          v13 = sub_100057EA8(v10);
          *(*(a1 + 48) + 116) = LODWORD(v13);
          *(*(a1 + 48) + 112) = 1;
        }

        v14 = sub_100057EA8(v10);
        if (*&v14 >= *(*(a1 + 48) + 116))
        {
          *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) appendSampleBuffer:v10] ^ 1;
          if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 80);
            v16 = v7;
            v17 = v7;
            if (v15 <= 2)
            {
              v17 = *(&off_1000A27E0 + v15);
            }

            v18 = *(*(*(a1 + 72) + 8) + 24) ^ 1;
            v19 = sub_100057EA8(v10);
            *buf = 136447234;
            v29 = "[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:]_block_invoke";
            v30 = 1024;
            v31 = 187;
            v32 = 1024;
            *v33 = v18;
            *&v33[4] = 2112;
            *&v33[6] = v17;
            *&v33[14] = 2048;
            *&v33[16] = *&v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d did complete:%d append %@ sample with timestamp:%lf", buf, 0x2Cu);
            v7 = v16;
          }
        }

        v20 = *(a1 + 56);
        if (*(a1 + 84) == 1 && !*(*(v20 + 8) + 24))
        {
          if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v29 = "[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:]_block_invoke";
            v30 = 1024;
            v31 = 192;
            v32 = 2048;
            *v33 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d releasing idle video sample %p", buf, 0x1Cu);
          }

          CFRelease(v10);
          v20 = *(a1 + 56);
        }

        ++*(*(v20 + 8) + 24);
      }
    }

    while (([*(a1 + 32) isReadyForMoreMediaData] & 1) != 0);
  }

  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 80);
    if (v21 > 2)
    {
      v22 = @"Invalid type";
    }

    else
    {
      v22 = *(&off_1000A27E0 + v21);
    }

    v23 = [*(a1 + 32) isReadyForMoreMediaData];
    v24 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 136447234;
    v29 = "[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:]_block_invoke";
    v30 = 1024;
    v31 = 201;
    v32 = 2112;
    *v33 = v22;
    *&v33[8] = 1024;
    *&v33[10] = v23;
    *&v33[14] = 1024;
    *&v33[16] = v24;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %@ block isReady: %d, completedOrFailed: %d", buf, 0x28u);
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 32) markAsFinished];
    dispatch_group_leave(*(*(a1 + 48) + 32));
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 80);
      if (v25 > 2)
      {
        v26 = @"Invalid type";
      }

      else
      {
        v26 = *(&off_1000A27E0 + v25);
      }

      *buf = 136446722;
      v29 = "[RPClipWriter queueAndWaitForSample:withAssetInput:withBuffer:didAppendIdleFrame:]_block_invoke";
      v30 = 1024;
      v31 = 206;
      v32 = 2112;
      *v33 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finished appending %@ samples", buf, 0x1Cu);
    }
  }
}

void sub_100054930(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136446466;
    *&v5[4] = "[RPClipWriter waitForCompletionAndFinishWriting:withHandler:]_block_invoke";
    *&v5[12] = 1024;
    *&v5[14] = 214;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finish asset writing", v5, 0x12u);
  }

  v2 = *(*(a1 + 32) + 80);
  *v5 = *(a1 + 48);
  *&v5[16] = *(a1 + 64);
  [v2 endSessionAtSourceTime:v5];
  if ([*(*(a1 + 32) + 80) finishWriting])
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 80) error];
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000669C4(v4);
    }

    v3 = [NSError _rpUserErrorForCode:-5823 userInfo:0];
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100054BF0(uint64_t a1)
{
  [*(*(a1 + 32) + 8) flushBuffer];
  [*(*(a1 + 32) + 16) flushBuffer];
  v2 = *(*(a1 + 32) + 24);

  return [v2 flushBuffer];
}

void sub_1000551C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005521C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100055234(void *a1)
{
  v2 = [*(a1[4] + 8) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 16) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1[4] + 24) copy];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return _objc_release_x1();
}

void sub_1000552C0(void *a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPClipWriter exportClipToURL:duration:completionHandler:]_block_invoke_2";
    v7 = 1024;
    v8 = 262;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d flushing copied buffers and calling completion handler", &v5, 0x12u);
  }

  [*(*(a1[5] + 8) + 40) flushBuffer];
  [*(*(a1[6] + 8) + 40) flushBuffer];
  [*(*(a1[7] + 8) + 40) flushBuffer];
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100055424(id a1)
{
  qword_1000B6A20 = dispatch_queue_create("com.apple.replaykit.ClipWriterDispatchQueue", 0);

  _objc_release_x1();
}

void sub_100055924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordSession: startCapture has failed. Error: %@", &v8, 0xCu);
    }

    [*(a1 + 32) setSessionState:3];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);
LABEL_10:
      v6();
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordSession: startCapture has started successfully", &v8, 2u);
    }

    [*(a1 + 32) setSessionState:1];
    v7 = *(a1 + 40);
    if (v7)
    {
      v6 = *(v7 + 16);
      goto LABEL_10;
    }
  }
}

void sub_100055DA8(id a1)
{
  qword_1000B6A30 = dispatch_queue_create("com.apple.replaykit.CaptureSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_100055F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066B34(a1, v3);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{0, 1}];
}

void sub_1000562DC(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5807 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPCaptureSession handleDisplayWarning]_block_invoke";
    v3 = 1024;
    v4 = 250;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_1000565DC(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5802 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPCaptureSession handleDeviceRestrictionWarning]_block_invoke";
    v3 = 1024;
    v4 = 279;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100056800(uint64_t a1)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:0 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPCaptureSession handleResumeContextIDFailure]_block_invoke";
    v3 = 1024;
    v4 = 291;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v1, 0x12u);
  }
}

void sub_100056AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPCaptureSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 304;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume capture completed with Error: %@", &v6, 0x1Cu);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setSessionState:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t start()
{
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066BE4();
  }

  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "replayd Starting!", v3, 2u);
  }

  sub_10002AE80();
  objc_autoreleasePoolPop(v0);
  v1 = +[NSRunLoop mainRunLoop];
  [v1 run];

  return 0xFFFFFFFFLL;
}

uint64_t sub_100056EB4(uint64_t result)
{
  if (result <= 3)
  {
    dword_1000B6840 = result;
  }

  return result;
}

void sub_100056F0C(id a1)
{
  qword_1000B6A40 = objc_alloc_init(RPFeatureFlagUtility);

  _objc_release_x1();
}

CMSampleBufferRef sub_1000571B0(IOSurfaceRef surface, const CMSampleTimingInfo *a2)
{
  pixelBufferOut = 0;
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, surface, 0, &pixelBufferOut);
  CMVideoFormatDescriptionCreateForImageBuffer(0, pixelBufferOut, &formatDescriptionOut);
  CMSampleBufferCreateForImageBuffer(kCFAllocatorDefault, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, a2, &sampleBufferOut);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return sampleBufferOut;
}

CMSampleBufferRef sub_10005724C(CVImageBufferRef imageBuffer, uint64_t a2)
{
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  v3 = *&kCMTimingInfoInvalid.decodeTimeStamp.value;
  *&v9.presentationTimeStamp.timescale = *&kCMTimingInfoInvalid.presentationTimeStamp.timescale;
  *&v9.decodeTimeStamp.value = v3;
  epoch = kCMTimingInfoInvalid.decodeTimeStamp.epoch;
  v5 = *&kCMTimingInfoInvalid.duration.epoch;
  *&v9.duration.value = *&kCMTimingInfoInvalid.duration.value;
  *&v9.duration.epoch = v5;
  *&v9.presentationTimeStamp.value = *a2;
  v6 = *(a2 + 16);
  v9.decodeTimeStamp.epoch = epoch;
  v9.presentationTimeStamp.epoch = v6;
  if (!CMVideoFormatDescriptionCreateForImageBuffer(kCFAllocatorDefault, imageBuffer, &formatDescriptionOut))
  {
    v7 = CMSampleBufferCreateReadyWithImageBuffer(kCFAllocatorDefault, imageBuffer, formatDescriptionOut, &v9, &sampleBufferOut);
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (!v7)
    {
      return sampleBufferOut;
    }
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066C80();
  }

  result = sampleBufferOut;
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
    return 0;
  }

  return result;
}

CMSampleBufferRef sub_100057350(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  timingArrayEntriesNeededOut = 0;
  sampleBufferOut[0] = 0;
  CMSampleBufferGetSampleTimingInfoArray(a1, 0, 0, &timingArrayEntriesNeededOut);
  if (timingArrayEntriesNeededOut >= 0x38E38E38E38E38FLL)
  {
    sub_100066D10();
    return sampleBufferOut[1];
  }

  else
  {
    v4 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    CMSampleBufferGetSampleTimingInfoArray(a1, timingArrayEntriesNeededOut, v4, &timingArrayEntriesNeededOut);
    v5 = timingArrayEntriesNeededOut;
    if (timingArrayEntriesNeededOut >= 1)
    {
      p_presentationTimeStamp = &v4->presentationTimeStamp;
      v7 = *&kCMTimeInvalid.value;
      epoch = kCMTimeInvalid.epoch;
      v9 = timingArrayEntriesNeededOut;
      do
      {
        *&p_presentationTimeStamp[1].value = v7;
        p_presentationTimeStamp[1].epoch = epoch;
        v10 = *(a2 + 16);
        *&p_presentationTimeStamp->value = *a2;
        p_presentationTimeStamp->epoch = v10;
        p_presentationTimeStamp += 3;
        --v9;
      }

      while (v9);
    }

    CMSampleBufferCreateCopyWithNewTiming(kCFAllocatorDefault, a1, v5, v4, sampleBufferOut);
    free(v4);
    return sampleBufferOut[0];
  }
}

CVPixelBufferRef sub_100057468(size_t a1, size_t a2)
{
  pixelBuffer = 0;
  v7 = kCVPixelBufferIOSurfacePropertiesKey;
  v8 = &__NSDictionary0__struct;
  if (CVPixelBufferCreate(kCFAllocatorDefault, a1, a2, 0x42475241u, [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1], &pixelBuffer))
  {
    sub_100066DD4();
  }

  else
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (BaseAddress)
    {
      bzero(BaseAddress, BytesPerRow * a2);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  return pixelBuffer;
}

float sub_100057578(opaqueCMSampleBuffer *a1)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  v3 = IOSurfaceCopyValue(IOSurface, kIOSurfaceContentHeadroom);
  [v3 floatValue];
  v5 = v4;
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

id sub_1000575D0(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSNumber numberWithInteger:a2];
  [v4 setObject:v5 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeySampleType"];

  blockBufferOut = 0;
  bufferListSizeNeededOut = 0;
  CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, &bufferListSizeNeededOut, 0, 0, 0, 0, 0, &blockBufferOut);
  v6 = malloc_type_malloc(bufferListSizeNeededOut, 0x6986356EuLL);
  CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, 0, v6, bufferListSizeNeededOut, 0, 0, 0, &blockBufferOut);
  v7 = objc_alloc_init(NSMutableData);
  if (v6->mNumberBuffers)
  {
    v8 = 0;
    p_mData = &v6->mBuffers[0].mData;
    do
    {
      v10 = *(p_mData - 1);
      v11 = *p_mData;
      p_mData += 2;
      [v7 appendBytes:v11 length:v10];
      ++v8;
    }

    while (v8 < v6->mNumberBuffers);
  }

  free(v6);
  [v4 setObject:v7 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioBufferList"];
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  v13 = [NSData dataWithBytes:CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription) length:40];
  [v4 setObject:v13 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioFormatDescription"];
  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetSampleTimingInfo(a1, 0, &v17);
  v14 = [NSData dataWithBytes:&v17 length:72];
  [v4 setObject:v14 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyTimingInfo"];
  v15 = [NSNumber numberWithLong:CMSampleBufferGetNumSamples(a1)];
  [v4 setObject:v15 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyNumSamples"];

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v4;
}

CMSampleBufferRef sub_100057804(void *a1)
{
  formatDescriptionOut = 0;
  v17 = 0;
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyNumSamples"];
  v3 = [v2 integerValue];

  v4 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyTimingInfo"];
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  [v4 getBytes:&sampleTimingArray length:72];
  v5 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioFormatDescription"];
  memset(&asbd, 0, sizeof(asbd));
  [v5 getBytes:&asbd length:40];
  CMAudioFormatDescriptionCreate(kCFAllocatorDefault, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(formatDescriptionOut);
  v7 = [v1 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyAudioBufferList"];

  if ([v7 length])
  {
    v8 = [v7 length];
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    memcpy(v9, [v7 bytes], v8);
    if (v9)
    {
      mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
      if (mChannelsPerFrame == 1 || (StreamBasicDescription->mFormatFlags & 0x20) == 0)
      {
        v11 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
        *v11 = 1;
        *(v11 + 2) = StreamBasicDescription->mChannelsPerFrame;
        *(v11 + 3) = v8;
        *(v11 + 2) = v9;
        goto LABEL_13;
      }

      if (mChannelsPerFrame == 2)
      {
        v11 = malloc_type_malloc(0x28uLL, 0x10800404ACF7207uLL);
        *v11 = 2;
        *(v11 + 2) = 1;
        *(v11 + 3) = v8 >> 1;
        *(v11 + 2) = v9;
        *(v11 + 6) = 1;
        *(v11 + 7) = v8 >> 1;
        *(v11 + 4) = &v9[v8 >> 1];
        goto LABEL_13;
      }

      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100066E8C();
      }

      free(v9);
    }
  }

  v11 = 0;
LABEL_13:
  CMSampleBufferCreate(kCFAllocatorDefault, 0, 0, 0, 0, formatDescriptionOut, v3, 1, &sampleTimingArray, 0, 0, &v17);
  CMSampleBufferSetDataBufferFromAudioBufferList(v17, kCFAllocatorDefault, kCFAllocatorDefault, 0, v11);
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v11)
  {
    free(*(v11 + 2));
    free(v11);
  }

  v12 = v17;

  return v12;
}

CMSampleBufferRef sub_100057AD4(CMTime *a1, uint64_t a2, Float64 a3)
{
  v19 = 0;
  formatDescriptionOut = 0;
  v5 = *(a2 + 16);
  *&asbd.mSampleRate = *a2;
  *&asbd.mBytesPerPacket = v5;
  *&asbd.mBitsPerChannel = *(a2 + 32);
  v6 = CMAudioFormatDescriptionCreate(kCFAllocatorDefault, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  if (v6)
  {
    sub_100066F1C(v6, &formatDescriptionOut);
    v7 = sampleSizeArray;
  }

  else
  {
    v7 = formatDescriptionOut;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v7);
  sampleSizeArray = 0;
  mFramesPerPacket = StreamBasicDescription->mFramesPerPacket;
  if (!mFramesPerPacket)
  {
    sub_100067328();
    goto LABEL_20;
  }

  p_mSampleRate = &StreamBasicDescription->mSampleRate;
  mBytesPerPacket = StreamBasicDescription->mBytesPerPacket;
  sampleSizeArray = mBytesPerPacket;
  if (mBytesPerPacket != StreamBasicDescription->mBytesPerFrame * mFramesPerPacket)
  {
    sub_100067000();
    goto LABEL_20;
  }

  v12 = (StreamBasicDescription->mSampleRate * a3 / mFramesPerPacket);
  asbd.mSampleRate = 0.0;
  if (CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, 0, v12 * mBytesPerPacket, kCFAllocatorDefault, 0, 0, v12 * mBytesPerPacket, 0, &asbd))
  {
    sub_1000670C4();
LABEL_27:
    if (*&asbd.mSampleRate)
    {
      CFRelease(*&asbd.mSampleRate);
    }

    v13 = 0;
    goto LABEL_8;
  }

  if (CMBlockBufferAssureBlockMemory(*&asbd.mSampleRate))
  {
    sub_100067188();
    goto LABEL_27;
  }

  v13 = *&asbd.mSampleRate;
LABEL_8:
  memset(&v17, 0, sizeof(v17));
  CMTimeMakeWithSeconds(&v17.duration, a3, *p_mSampleRate);
  v17.presentationTimeStamp = *a1;
  v17.decodeTimeStamp = kCMTimeInvalid;
  v14 = CMSampleBufferCreate(kCFAllocatorDefault, v13, 1u, 0, 0, v7, v12, 1, &v17, 1, &sampleSizeArray, &v19);
  if (!v14)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    return v19;
  }

  sub_10006724C(v14, v13, &asbd);
LABEL_20:
  mSampleRate = asbd.mSampleRate;
  if (v7)
  {
    CFRelease(v7);
  }

  if (mSampleRate != 0.0)
  {
    CFRelease(*&mSampleRate);
  }

  result = v19;
  if (v19)
  {
    CFRelease(v19);
    return 0;
  }

  return result;
}

CMSampleBufferRef sub_100057D24(uint64_t a1, const AudioStreamBasicDescription *a2, CMTime *a3)
{
  formatDescriptionOut = 0;
  sbuf = 0;
  v5 = *(a1 + 12);
  mBytesPerPacket = a2->mBytesPerPacket;
  if (CMAudioFormatDescriptionCreate(kCFAllocatorDefault, a2, 0, 0, 0, 0, 0, &formatDescriptionOut))
  {
    sub_1000673EC();
  }

  else
  {
    presentationTimeStamp = *a3;
    v7 = CMAudioSampleBufferCreateWithPacketDescriptions(kCFAllocatorDefault, 0, 0, 0, 0, formatDescriptionOut, v5 / mBytesPerPacket, &presentationTimeStamp, 0, &sbuf);
    CFRelease(formatDescriptionOut);
    if (v7)
    {
      sub_1000674A4();
    }

    else
    {
      if (!CMSampleBufferSetDataBufferFromAudioBufferList(sbuf, kCFAllocatorDefault, kCFAllocatorDefault, 0, a1))
      {
        v8 = sbuf;
        presentationTimeStamp = *a3;
        CMSampleBufferSetOutputPresentationTimeStamp(sbuf, &presentationTimeStamp);
        return v8;
      }

      sub_100067568();
    }
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return 0;
}

void sub_100057E54(const void *a1, void **a2)
{
  if (a1)
  {
    CFRelease(a1);
  }

  if (a2)
  {
    free(a2[2]);

    free(a2);
  }
}

double sub_100057EA8(opaqueCMSampleBuffer *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  memset(&v2, 0, sizeof(v2));
  CMSampleBufferGetPresentationTimeStamp(&v2, a1);
  *&result = v2.value / v2.timescale;
  return result;
}

uint64_t sub_100057EF8(__IOSurface *a1)
{
  if (IOSurfaceGetPixelFormat(a1) == 1380411457)
  {
    v13 = kCGImageComponentTypeRequest;
    v14 = &off_1000A6DD0;
    v2 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v3 = CGImageCreateFromIOSurface();
  }

  else
  {
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    AllocSize = IOSurfaceGetAllocSize(a1);
    v9 = IOSurfaceCopyValue(a1, kIOSurfaceColorSpace);
    DeviceRGB = CGColorSpaceCreateWithPropertyList(v9);
    CFRelease(v9);
    CFRetain(a1);
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    v11 = CGDataProviderCreateWithData(a1, BaseAddress, AllocSize, sub_1000580C0);
    v3 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, DeviceRGB, 0x2002u, v11, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v11);
    CGColorSpaceRelease(DeviceRGB);
  }

  return v3;
}

void sub_1000580C0(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 0, 0);

  CFRelease(a1);
}

__SecTask *sub_100058EB0(_OWORD *a1, const __CFString *a2)
{
  error = 0;
  v3 = a1[1];
  *v10.val = *a1;
  *&v10.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v10);
  Value = v4;
  if (v4)
  {
    v6 = SecTaskCopyValueForEntitlement(v4, a2, &error);
    CFRelease(Value);
    if (v6)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        Value = CFBooleanGetValue(v6);
      }

      else
      {
        Value = 0;
      }

      CFRelease(v6);
    }

    else
    {
      if (error)
      {
        v8 = CFErrorCopyDescription(error);
        if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006762C();
        }
      }

      return 0;
    }
  }

  return Value;
}

id sub_100058FA0(_OWORD *a1, const __CFString *a2, id a3)
{
  error = 0;
  v5 = a1[1];
  *v12.val = *a1;
  *&v12.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v12);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = SecTaskCopyValueForEntitlement(v6, a2, &error);
  CFRelease(v7);
  if (!v8)
  {
    if (error)
    {
      v10 = CFErrorCopyDescription(error);
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000676C4();
      }
    }

    return 0;
  }

  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      a3 = [v8 containsObject:a3];
    }

    else
    {
      a3 = 0;
    }
  }

  CFRelease(v8);
  return a3;
}

void sub_1000590E4(id a1)
{
  qword_1000B6A58 = objc_alloc_init(RPCaptureManager);

  _objc_release_x1();
}

_DWORD *sub_100059614(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[20])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100059698;
    v3[3] = &unk_1000A2858;
    v3[4] = a2;
    return [result callDelegate:v3];
  }

  return result;
}

void sub_1000596AC(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPCaptureManager startMicrophoneCaptureWithDispatchGroup:]_block_invoke_3";
    v4 = 1024;
    v5 = 109;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d mic capture started", &v2, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

_DWORD *sub_10005991C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[20])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000599A0;
    v3[3] = &unk_1000A2858;
    v3[4] = a2;
    return [result callDelegate:v3];
  }

  return result;
}

void sub_1000599B4(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPCaptureManager startHQLRMicrophoneCaptureWithDispatchGroup:]_block_invoke_3";
    v4 = 1024;
    v5 = 126;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d HQLR mic audio started ", &v2, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100059D6C(uint64_t a1)
{
  [*(a1 + 32) stopAppAudioCapture];
  *(*(a1 + 32) + 104) = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v4 = [RPAppAudioCaptureManager audioCaptureConfigForSystemRecording:"audioCaptureConfigForSystemRecording:processID:contextID:" processID:*(v2 + 120) contextID:?];
  v6 = v5;
  v7 = *(*(a1 + 32) + 64);
  v8 = v5;
  if (v7)
  {
    [v7 resumeWithConfig:{v4, v6}];
  }

  else
  {
  }
}

id sub_10005A128(uint64_t a1)
{
  v2 = [*(a1 + 32) hasDelegate:*(a1 + 40)];
  v3 = [*(a1 + 32) delegateCount];
  if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    [*(a1 + 32) stopAllCapture];
  }

  else if (dword_1000B6840 <= 1)
  {
    v5 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 80);
      v9 = 136446978;
      v10 = "[RPCaptureManager stopCaptureForDelegate:]_block_invoke";
      v11 = 1024;
      v12 = 219;
      v13 = 1024;
      v14 = v6;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d continue capture state %d with delegate count %d", &v9, 0x1Eu);
    }
  }

  if (dword_1000B6840 > 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v2;
  }

  if ((v7 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPCaptureManager stopCaptureForDelegate:]_block_invoke";
    v11 = 1024;
    v12 = 222;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ignore stopping delegate that is not capturing", &v9, 0x12u);
  }

  return [*(a1 + 32) removeDelegate:*(a1 + 40)];
}

void sub_10005A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}
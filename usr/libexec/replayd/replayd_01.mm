void sub_10005A5B4(uint64_t a1)
{
  [*(a1 + 32) updateContextIDs:*(a1 + 40) forProcessID:*(a1 + 80) systemRecording:*(a1 + 88)];
  [*(a1 + 32) addDelegate:*(a1 + 48)];
  v2 = dispatch_group_create();
  v3 = *(a1 + 32);
  if (v3[20])
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v11 = 136446722;
      v12 = "[RPCaptureManager startCaptureForDelegate:forProcessID:shouldStartMicrophoneCapture:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:didStartHandler:]_block_invoke";
      v13 = 1024;
      v14 = 251;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d added capture delegate %p", &v11, 0x1Cu);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v11 = 136446722;
        v12 = "[RPCaptureManager startCaptureForDelegate:forProcessID:shouldStartMicrophoneCapture:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:didStartHandler:]_block_invoke";
        v13 = 1024;
        v14 = 247;
        v15 = 2048;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting capture for delegate %p", &v11, 0x1Cu);
      }

      v3 = *(a1 + 32);
    }

    [v3 startCaptureManagersForProcessID:*(a1 + 80) windowSize:*(a1 + 84) captureType:*(a1 + 40) contextIDs:*(a1 + 89) mixedRealityCamera:*(a1 + 88) systemCapture:v2 dispatchGroup:{*(a1 + 64), *(a1 + 72)}];
  }

  if (*(a1 + 90) == 1)
  {
    [*(a1 + 32) startMicrophoneCaptureWithDispatchGroup:v2];
  }

  v6 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v2, v6))
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[RPCaptureManager startCaptureForDelegate:forProcessID:shouldStartMicrophoneCapture:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:didStartHandler:]_block_invoke";
      v13 = 1024;
      v14 = 276;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start timeout", &v11, 0x12u);
    }

    [*(a1 + 32) stopAllCapture];
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[RPCaptureManager startCaptureForDelegate:forProcessID:shouldStartMicrophoneCapture:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:didStartHandler:]_block_invoke";
      v13 = 1024;
      v14 = 259;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start success", &v11, 0x12u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v7 = os_transaction_create();
    v8 = *(a1 + 32);
    v9 = *(v8 + 128);
    *(v8 + 128) = v7;

    if (*(a1 + 90))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *(*(a1 + 32) + 80) = v10;
    if (*(*(a1 + 32) + 136))
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      [*(a1 + 32) stopAllCapture];
    }
  }
}

_DWORD *sub_10005AB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result[20])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10005ABB4;
    v4[3] = &unk_1000A28C8;
    v4[4] = a2;
    v4[5] = a3;
    return [result callDelegate:v4];
  }

  return result;
}

void sub_10005ABC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPCaptureManager startCaptureManagersForProcessID:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:dispatchGroup:]_block_invoke_3";
    v6 = 1024;
    v7 = 321;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d screen capture started ", &v4, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

_DWORD *sub_10005ACA4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[20])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005AD28;
    v3[3] = &unk_1000A2858;
    v3[4] = a2;
    return [result callDelegate:v3];
  }

  return result;
}

void sub_10005AD3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPCaptureManager startCaptureManagersForProcessID:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:dispatchGroup:]_block_invoke_3";
    v6 = 1024;
    v7 = 342;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d app audio started ", &v4, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10005B040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B0E4;
  block[3] = &unk_1000A1088;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_10005B0E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError _rpUserErrorForCode:-5806 userInfo:0];
  [v1 captureDidFailWithError:v2];
}

void sub_10005B270(uint64_t a1)
{
  v2 = dispatch_group_create();
  [*(a1 + 32) startMicrophoneCaptureWithDispatchGroup:v2];
}

void sub_10005B948(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = AVAudioSessionInputMuteKey;
  v6 = [v4 objectForKeyedSubscript:AVAudioSessionInputMuteKey];

  if (v6)
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [v8 BOOLValue];

    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "[RPCaptureManager registerForProxySessionNotifications]_block_invoke";
      v12 = 1024;
      v13 = 466;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d proxy session AVAudioSessionInputMuteKey state changed: %i", &v10, 0x18u);
    }

    [*(a1 + 32) updateAVAudioSessionMuteState:v9];
  }
}

void sub_10005BD8C(uint64_t a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPCaptureManager startCameraCaptureWithDispatchGroup:usingCamera:]_block_invoke";
    v4 = 1024;
    v5 = 498;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d HQLR camera capture manager did start", &v2, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10005C19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005C1BC(uint64_t a1)
{
  [*(a1 + 32) addDelegate:*(a1 + 40)];
  v2 = dispatch_group_create();
  if (*(a1 + 56) == 1)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *v13 = 136446722;
      *&v13[4] = "[RPCaptureManager startHQLRCaptureForDelegate:micDeviceID:cameraDeviceID:windowSize:audioOnly:didStartHandler:]_block_invoke";
      *&v13[12] = 1024;
      *&v13[14] = 537;
      *&v13[18] = 2112;
      *&v13[20] = v3;
      v4 = " [INFO] %{public}s:%d audio only - skipping camera capture for delegate %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, v13, 0x1Cu);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5[20])
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        *v13 = 136446722;
        *&v13[4] = "[RPCaptureManager startHQLRCaptureForDelegate:micDeviceID:cameraDeviceID:windowSize:audioOnly:didStartHandler:]_block_invoke";
        *&v13[12] = 1024;
        *&v13[14] = 543;
        *&v13[18] = 2112;
        *&v13[20] = v6;
        v4 = " [INFO] %{public}s:%d already running, added capture delegate %@";
        goto LABEL_9;
      }
    }

    else
    {
      if (dword_1000B6840 <= 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          *v13 = 136446722;
          *&v13[4] = "[RPCaptureManager startHQLRCaptureForDelegate:micDeviceID:cameraDeviceID:windowSize:audioOnly:didStartHandler:]_block_invoke";
          *&v13[12] = 1024;
          *&v13[14] = 539;
          *&v13[18] = 2112;
          *&v13[20] = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting camera capture for delegate %@", v13, 0x1Cu);
        }

        v5 = *(a1 + 32);
      }

      [v5 startCameraCaptureWithDispatchGroup:v2 usingCamera:*(a1 + 57)];
    }
  }

  if (*(a1 + 58) == 1)
  {
    [*(a1 + 32) setAVAudioSessionCategoryForHQLR];
    [*(a1 + 32) startHQLRMicrophoneCaptureWithDispatchGroup:v2];
  }

  v8 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v2, v8))
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136446466;
      *&v13[4] = "[RPCaptureManager startHQLRCaptureForDelegate:micDeviceID:cameraDeviceID:windowSize:audioOnly:didStartHandler:]_block_invoke";
      *&v13[12] = 1024;
      *&v13[14] = 566;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start timeout", v13, 0x12u);
    }

    [*(a1 + 32) stopAllCapture];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136446466;
      *&v13[4] = "[RPCaptureManager startHQLRCaptureForDelegate:micDeviceID:cameraDeviceID:windowSize:audioOnly:didStartHandler:]_block_invoke";
      *&v13[12] = 1024;
      *&v13[14] = 553;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d start success", v13, 0x12u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v9 = os_transaction_create();
    v10 = *(a1 + 32);
    v11 = *(v10 + 128);
    *(v10 + 128) = v9;

    if (*(a1 + 58))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    *(*(a1 + 32) + 80) = v12;
    if (*(*(a1 + 32) + 136))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      [*(a1 + 32) stopAllCapture];
    }
  }
}

void sub_10005CE70(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  [*(a1 + 32) setSessionState:3];
  v8 = *(a1 + 32);
  v9 = [v7 code];
  v10 = [*(*(a1 + 32) + 408) outputURL];
  [v8 reportSummaryEvent:v9 recordedFileSize:{+[RPSession getFileSizeForURL:](RPSession, "getFileSizeForURL:", v10)}];

  objc_storeStrong((*(a1 + 32) + 416), a2);
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446978;
    v13 = "[RPRecordSession stopRecordingWithHandler:]_block_invoke";
    v14 = 1024;
    v15 = 111;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movie writer finished writing with output: %@ and error: %@", &v12, 0x26u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v6, v7);
  }
}

void sub_10005D254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100067BD8();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 416);
    *(v4 + 416) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_10005D324(id a1)
{
  qword_1000B6A68 = dispatch_queue_create("com.apple.replaykit.RecordSessionDispatchQueue", 0);

  _objc_release_x1();
}

void sub_10005D4D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordSession: startWriting for movie writer has failed. Error: %@", buf, 0xCu);
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
    v5 = +[RPCaptureManager sharedInstance];
    v6 = *(a1 + 32);
    v7 = v6[2];
    v8 = [v6 microphoneEnabled];
    [*(a1 + 32) windowSize];
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 32) contextID];
    v14 = [NSArray arrayWithObject:v13];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005D6C8;
    v16[3] = &unk_1000A1840;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v15;
    [v5 startCaptureForDelegate:v6 forProcessID:v7 shouldStartMicrophoneCapture:v8 windowSize:0 captureType:v14 contextIDs:v16 didStartHandler:{v10, v12}];
  }
}

void sub_10005D6C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordSession: startCapture has failed. Error: %@", &v10, 0xCu);
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
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordSession: startCapture has started successfully", &v10, 2u);
    }

    [*(a1 + 32) setSessionState:1];
    v7 = *(a1 + 32);
    v8 = *(v7 + 416);
    *(v7 + 416) = 0;

    v9 = *(a1 + 40);
    if (v9)
    {
      v6 = *(v9 + 16);
      goto LABEL_10;
    }
  }
}

id *sub_10005D8BC(id *result, opaqueCMSampleBuffer *a2)
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

void sub_10005DA60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100067C84(a1, v6);
  }

  [*(a1 + 40) notifyClientSessionDidStopWithError:objc_msgSend(*(a1 + 32) movieURL:"code") showAlert:{v5, 1}];
}

void sub_10005DD28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPRecordSession handleResumeCaptureWithCompletionHandler:]_block_invoke";
    v8 = 1024;
    v9 = 286;
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

void sub_10005E174(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5807 movieURL:a2 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPRecordSession handleDisplayWarning]_block_invoke";
    v4 = 1024;
    v5 = 321;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v2, 0x12u);
  }
}

void sub_10005E474(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5802 movieURL:a2 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPRecordSession handleDeviceRestrictionWarning]_block_invoke";
    v4 = 1024;
    v5 = 350;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v2, 0x12u);
  }
}

void sub_10005E698(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) notifyClientSessionDidStopWithError:-5804 movieURL:a2 showAlert:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPRecordSession handleResumeContextIDFailure]_block_invoke";
    v4 = 1024;
    v5 = 362;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notifying client", &v2, 0x12u);
  }
}

void sub_10005E96C(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "_rkDeleteFilesWithPrefix error: %i", buf, 8u);
}

void sub_10005E9B8()
{
  v0 = 136446466;
  v1 = "[RPClipBuffer addFrameToBuffer:isKeyFrame:]";
  v2 = 1024;
  v3 = 64;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d nil sample buffer", &v0, 0x12u);
}

void sub_10005EA50(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_100007394(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d AVCaptureSession removeObserver failed", v3, v4, v5, v6, v7);
  }

  objc_end_catch();
}

void sub_10005EB20(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_100007394(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d removeObserver failed", v3, v4, v5, v6, v7);
  }

  objc_end_catch();
}

void sub_10005EBF0(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_100007394(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d AVCaptureSession removeObserver failed]", v3, v4, v5, v6, v7);
  }

  objc_end_catch();
}

void sub_10005ECC0()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005ED48()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005EDD0()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005EE5C()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005EEF4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005EF7C()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005F008()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005F090()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005F118()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005F1A4()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005F230()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005F2BC()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005F348()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005F3D4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005F45C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005F4E4(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void sub_10005F598()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005F620(id *a1)
{
  v1 = [*a1 error];
  [v1 code];
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_10005F6CC(void *a1)
{
  [a1 code];
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10005F75C(void *a1, uint8_t *buf, void *a3)
{
  *buf = 136446722;
  *(buf + 4) = "[RPMovieWriter dispatchedAppendVideoSampleBuffer:withWindowTransform:]";
  *(buf + 6) = 1024;
  *(buf + 14) = 928;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Asset writer failed. error=%@", buf, 0x1Cu);
}

void sub_10005F7E4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005F86C(void *a1)
{
  [a1 code];
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10005F8FC(void *a1)
{
  [a1 code];
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10005F98C(void *a1)
{
  v2 = [a1 assetWriter];
  [v2 status];
  v3 = [a1 assetWriter];
  v4 = [v3 error];
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
}

void sub_10005FA7C(void *a1)
{
  v2 = [a1 assetWriter];
  [v2 status];
  v3 = [a1 assetWriter];
  v4 = [v3 error];
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_10005FB6C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005FBF4(int *a1)
{
  v6 = *a1;
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10005FC94()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005FD1C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005FDA4(_BYTE *a1)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_10000F7C4();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void sub_10005FE68(_BYTE *a1)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_10000F7C4();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void sub_10005FF2C(_BYTE *a1)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_10000F7C4();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void sub_10005FFF0()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10006007C()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_100060110()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060198()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100060224()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000602B0()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060338(void *a1)
{
  [a1 code];
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000603D0()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006045C()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000604E8()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060574(void *a1)
{
  [a1 code];
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000606AC()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060734()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060874()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000608FC()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060984()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060A0C(void *a1)
{
  [a1 code];
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100060B4C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060BD4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060C5C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060CE4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100060D6C()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100060DF8()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100060E84()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100060F10()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100060F9C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061024()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000610AC()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061134()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000611C0()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061248()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000612D0(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:NSDebugDescriptionErrorKey];
  sub_10000F7C4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000613B4(uint64_t a1)
{
  v1 = 136446722;
  v2 = "[RPStatusBarAssertion invalidateStatusBar]_block_invoke";
  v3 = 1024;
  v4 = 104;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d setRegisteredStyleOverrides replied with error: %@", &v1, 0x1Cu);
}

void sub_100061458()
{
  *v2 = 136446722;
  sub_10000F7B4();
  *&v2[7] = 266;
  v2[9] = v0;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d status: %d", v2, 0x18u);
}

void sub_1000614F0()
{
  v0[0] = 136446466;
  sub_10000F7B4();
  *(&v0[3] + 2) = 290;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d ", v0, 0x12u);
}

void sub_100061580()
{
  v0[0] = 136446466;
  sub_10000F7B4();
  *(&v0[3] + 2) = 295;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d ", v0, 0x12u);
}

void sub_100061610()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000616A8()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100061740()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000617CC()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100061858()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000618E4()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100061970()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000619FC()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061A88()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061B14(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

double sub_100061BD4()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_1000B68C0 = *&result;
  __dmb(0xBu);
  byte_1000B68B8 = 1;
  return result;
}

void sub_100061DC4(uint64_t a1, void *a2)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_100007394(&_mh_execute_header, &_os_log_default, v4, " [ERROR] %{public}s:%d Failed to get videoCodecType for asset", v5, v6, v7, v8, v9);
  }

  *a2 = a1;
}

void sub_100061E84(unsigned __int16 a1, void *a2)
{
  v2 = 136446978;
  v3 = "+[RPReportingAgent sendReportEventWithType:dictionary:withServiceName:clientBundleId:sessionID:]";
  v4 = 1024;
  v5 = 161;
  v6 = 1024;
  v7 = a1;
  v8 = 1024;
  v9 = [a2 code];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error reporting eventType:%d error code:%d", &v2, 0x1Eu);
}

void sub_100061F40()
{
  v0 = 136446466;
  v1 = "+[RPReportingAgent sendReportEventWithType:dictionary:withServiceName:clientBundleId:sessionID:]";
  v2 = 1024;
  v3 = 133;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d payloadDict cannot be null!", &v0, 0x12u);
}

void sub_100061FD8(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:updateScreenRecordingStateWithCurrentState: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_10006204C(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:recordingDidStopWithError: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_1000620C0(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:updateBroadcastServiceInfo: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_100062134(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:updateBroadcastURL: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_1000621A8(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:captureHandlerWithSample: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_10006221C(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:captureHandlerWithAudioSample: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_100062290(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:recodingDidStopAndSavedToCameraRoll: video saved to camera roll: %d", v2, v3, v4, v5, v6);
}

void sub_100062304(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:shouldResumeSessionType: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_100062378(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:recordingDidPause: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_1000623EC(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPClientProxy:recordingTimerDidUpdate: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_100062474(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPMultipleClientProxy:updateScreenRecordingStateWithCurrentState: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_1000624E8(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPMultipleClientProxy:recordingDidStopWithError: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_10006255C(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPMultipleClientProxy:updateBroadcastURL: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_1000625D0(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPMultipleClientProxy:recodingDidStopAndSavedToCameraRoll: video saved to camera roll: %d", v2, v3, v4, v5, v6);
}

void sub_100062644(void *a1)
{
  [a1 code];
  sub_100029F04();
  sub_100005378(&_mh_execute_header, &_os_log_default, v1, "RPMultipleClientProxy:recordingTimerDidUpdate: error getting remote proxy: %d", v2, v3, v4, v5, v6);
}

void sub_10006275C()
{
  v0 = 136446466;
  v1 = "[RPClientManager stopAllClientsWithHandler:]_block_invoke";
  v2 = 1024;
  v3 = 120;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d stop current active session failed", &v0, 0x12u);
}

void sub_10006329C(void *a1)
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007380();
    v3 = 902;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Not consuming extension token", v2, 0x12u);
  }

  *a1 = -1;
}

void sub_100063378()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100063590()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10006361C()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000636A8()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063730(void *a1)
{
  v1 = [a1 error];
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000637D4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006385C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000638F8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_1000639A4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063A2C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063B88()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063C10()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063C98(int *a1)
{
  v6 = *a1;
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100063D38()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d stop session failed with error: %@", v1, v2, v3, v4, 2u);
}

void sub_100063DBC()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063E48()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting in-app recording:%@", v1, v2, v3, v4, 2u);
}

void sub_100063ECC()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error stopping in-app recording: %@", v1, v2, v3, v4, 2u);
}

void sub_100063F50()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting in-app capture: %@", v1, v2, v3, v4, 2u);
}

void sub_100063FD4()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error stopping in-app capture: %@", v1, v2, v3, v4, 2u);
}

void sub_100064058()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000640E4()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting in-app broadcast: %@", v1, v2, v3, v4, 2u);
}

void sub_100064168()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error stopping in-app broadcast: %@", v1, v2, v3, v4, 2u);
}

void sub_1000641EC()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting in-app recording:%@", v1, v2, v3, v4, 2u);
}

void sub_100064270()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error stopping in-app recording: %@", v1, v2, v3, v4, 2u);
}

void sub_1000642F4()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting system recording: %@", v1, v2, v3, v4, 2u);
}

void sub_100064378()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error stopping System Recording: %@", v1, v2, v3, v4, 2u);
}

void sub_1000643FC()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error System Recording with URL handler: %@", v1, v2, v3, v4, 2u);
}

void sub_100064480()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d Not resuming with error %@", v1, v2, v3, v4, 2u);
}

void sub_100064504()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting system broadcast: %@", v1, v2, v3, v4, 2u);
}

void sub_100064588()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error stopping system broadacst: %@", v1, v2, v3, v4, 2u);
}

void sub_10006460C()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d Not resuming with error %@", v1, v2, v3, v4, 2u);
}

void sub_100064690()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d error starting HQLR session, error=%@", v1, v2, v3, v4, 2u);
}

void sub_100064714()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000647A0()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v0, " [ERROR] %{public}s:%d Not resuming with error %@", v1, v2, v3, v4, 2u);
}

void sub_100064824()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000648B0()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006493C()
{
  v0 = 136446722;
  v1 = "[RPDelegateBase init]";
  v2 = 1024;
  v3 = 27;
  v4 = 2080;
  v5 = "[RPDelegateBase init]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d %s not using as abstract class", &v0, 0x1Cu);
}

void sub_1000649E0()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100064A6C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100064AF4()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100064B80()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100064C0C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100064C94()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100064D1C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100064DB8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100064E64()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100064F28()
{
  v0 = 136446466;
  v1 = "[RPAngelProxy updateTimer:]";
  v2 = 1024;
  v3 = 132;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d timer string nil", &v0, 0x12u);
}

void sub_100064FC0()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10006504C(uint64_t *a1)
{
  v6 = *a1;
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000650F0(uint64_t a1, int a2)
{
  sub_100047EA0(a1, a2, __stack_chk_guard);
  sub_100047EB8();
  sub_100047E80(v2, v3);
  sub_10000F7C4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_100065180()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10006520C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100065294()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100065320()
{
  sub_10000F7B4();
  sub_10000F7D0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000653AC(void *a1, void *a2)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_10000F7C4();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  *a2 = 0;
  *a1 = 0;
}

void sub_100065478(uint64_t a1, void *a2, void *a3)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_10000F7C4();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
  }

  *a3 = 0;
  *a2 = a1;
}

void sub_100065550()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007380();
    v1 = 474;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Returning nil audio tap for none type", v0, 0x12u);
  }
}

void sub_1000655F0()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100065678(void *a1, void *a2)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007380();
    sub_10000F7C4();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  *a2 = 0;
  *a1 = 0;
}

void sub_100065744(uint64_t a1, int a2)
{
  sub_100047EA0(a1, a2, __stack_chk_guard);
  sub_100047EB8();
  sub_100047E80(v2, v3);
  sub_10000F7C4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1000657D4()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006585C()
{
  sub_100007380();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000658E4()
{
  v0 = BSInterfaceOrientationDescription();
  v1 = 136446722;
  v2 = "[RPCameraCaptureManager currentInterfaceOrientation]";
  v3 = 1024;
  v4 = 188;
  v5 = 2112;
  v6 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d invalid interface orientation=%@", &v1, 0x1Cu);
}

void sub_1000659A0(void *a1)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = 136446466;
    v3 = "+[RPStringUtility rotatingDeviceUniqueID]";
    v4 = 1024;
    v5 = 33;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Could not get NSUserDefaults shared defaults object", &v2, 0x12u);
  }

  *a1 = 0;
}

void sub_100065A74(uint64_t a1)
{
  v1 = 136446722;
  v2 = "+[RPStringUtility isInvalidBundleId:]";
  v3 = 1024;
  v4 = 54;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d bundleID=%@ is invalid", &v1, 0x1Cu);
}

void sub_100065B18()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100065BA4()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100065C30()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100065CD0(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100065F08()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100065F94()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100066020()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100066300()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10006638C()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100066418()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000664A4()
{
  sub_10000F7B4();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100066530()
{
  sub_10000F7B4();
  sub_10000F7A0();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000665BC(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000F7C4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10006667C(uint64_t a1)
{
  v1 = 136446722;
  v2 = "+[RPPhotosUtility exportVideoToPhotosLibrary:completionHandler:]_block_invoke";
  v3 = 1024;
  v4 = 64;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Save to Photos error: %@", &v1, 0x1Cu);
}

void sub_100066920(void *a1)
{
  v1 = 136446722;
  v2 = "[RPClipWriter setupAssetWriter]";
  v3 = 1024;
  v4 = 81;
  v5 = 1024;
  v6 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error: %i", &v1, 0x18u);
}

void sub_1000669C4(uint64_t a1)
{
  v1 = 136446722;
  v2 = "[RPClipWriter waitForCompletionAndFinishWriting:withHandler:]_block_invoke";
  v3 = 1024;
  v4 = 221;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error finishing asset writing:%@", &v1, 0x1Cu);
}

void sub_100066A7C(uint64_t a1)
{
  v1 = 136446722;
  v2 = "[RPCaptureSession startCaptureWithMicrophoneEnabled:cameraEnabled:contextID:windowSize:handler:]";
  v3 = 1024;
  v4 = 52;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error found when checking requirements: %@", &v1, 0x1Cu);
}

void sub_100066B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 136446978;
  v4 = "[RPCaptureSession captureDidFailWithError:]_block_invoke";
  v5 = 1024;
  v6 = 186;
  v7 = 2112;
  v8 = v2;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d captureDidFailWithError=%@ stopError=%@", &v3, 0x26u);
}

void sub_100066BE4()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to set user dir suffix: %{darwin.errno}d", v1, 8u);
}

void sub_100066C80()
{
  sub_10000F7B4();
  sub_100058110();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100066D10()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_10005811C();
}

void sub_100066DD4()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void sub_100066E8C()
{
  sub_10000F7B4();
  sub_100058110();
  sub_10000F7C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100066F1C(uint64_t a1, CFTypeRef *a2)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_100058110();
    sub_10000F7C4();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  sub_10005811C();
}

void sub_100067000()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_10005811C();
}

void sub_1000670C4()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_100058100();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void sub_100067188()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_100058100();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void sub_10006724C(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_100058110();
    sub_10000F7C4();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x18u);
  }

  *a3 = a2;
}

void sub_100067328()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_10005811C();
}

void sub_1000673EC()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void sub_1000674A4()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_100058100();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void sub_100067568()
{
  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7B4();
    sub_100058100();
    sub_10000F7C4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void sub_10006762C()
{
  v0 = 136446722;
  v1 = "checkEntitlementForToken";
  v2 = 1024;
  sub_10000F7A0();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error copying entitlment from SecTaskRef, error=%@", &v0, 0x1Cu);
}

void sub_1000676C4()
{
  v0 = 136446722;
  v1 = "checkEntitlementArrayForToken";
  v2 = 1024;
  sub_10000F7A0();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error copying entitlment from SecTaskRef, error=%@", &v0, 0x1Cu);
}

void sub_100067770()
{
  v0[0] = 136446466;
  sub_10000F7B4();
  *(&v0[3] + 2) = 352;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d missing contextID", v0, 0x12u);
}

void sub_100067800(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_10000F7B4();
  sub_10005C8B0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d %s", v3, v4, v5, v6, 2u);
}

void sub_1000678A4(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_10000F7B4();
  sub_10005C8B0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d %s", v3, v4, v5, v6, 2u);
}

void sub_100067948(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_10000F7B4();
  sub_10005C8B0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d %s", v3, v4, v5, v6, 2u);
}

void sub_1000679EC(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_10000F7B4();
  sub_10005C8B0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d %s", v3, v4, v5, v6, 2u);
}

void sub_100067A90(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_10000F7B4();
  sub_10005C8B0();
  sub_10003F324(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d could not setConformsToSessionBehavior: %s", v3, v4, v5, v6, 2u);
}

void sub_100067B34(uint64_t a1)
{
  v1 = 136446722;
  v2 = "[RPRecordSession startRecordingWithMicrophoneEnabled:cameraEnabled:contextID:windowSize:handler:]";
  v3 = 1024;
  v4 = 62;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d error found when checking requirements: %@", &v1, 0x1Cu);
}

void sub_100067BD8()
{
  v0 = 136446466;
  v1 = "[RPRecordSession discardInAppRecordingWithHandler:]_block_invoke";
  v2 = 1024;
  v3 = 149;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Error deleting file", &v0, 0x12u);
}

void sub_100067C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 136446978;
  v4 = "[RPRecordSession captureDidFailWithError:]_block_invoke";
  v5 = 1024;
  v6 = 255;
  v7 = 2112;
  v8 = v2;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d captureDidFailWithError=%@ stopError=%@", &v3, 0x26u);
}
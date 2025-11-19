void sub_10000239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000023BC(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) deregisterTaskWithIdentifier:a2];
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *(*(*(a1 + 40) + 8) + 24);
    _os_log_send_and_compose_impl();
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_100002E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002E48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002E60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315650;
    v23 = "[W5DiagnosticsModeManager _startDiagnosticsModeWithConfiguration:currentPeer:reply:]_block_invoke";
    v24 = 2114;
    v25 = v6;
    v26 = 2114;
    v27 = v5;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 56);
  v9 = [v6 firstObject];
  (*(v8 + 16))(v8, v5, v9);

  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003080;
  block[3] = &unk_1000E0FD8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v19 = v11;
  v20 = v12;
  v21 = v5;
  v13 = v5;
  dispatch_async(v10, block);

  v14 = [*(a1 + 40) processors];
  [v14 removeObject:*(a1 + 48)];

  v15 = +[W5ActivityManager sharedActivityManager];
  [v15 osTransactionComplete:*(*(*(a1 + 64) + 8) + 40)];

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

void sub_100003080(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) role] != 8)
  {
    [*(a1 + 40) _finishedProcessingDiagnosticMode:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100003410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      v17 = *(a1 + 32);
      v37 = 136315650;
      v38 = "[W5DiagnosticsModeManager stopDiagnosticsModeWithUUID:info:reply:]_block_invoke";
      v39 = 2112;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      _os_log_send_and_compose_impl();
    }

    v18 = [*(a1 + 32) UUIDString];
    v19 = [0 uuid];
    v20 = [v19 UUIDString];
    v12 = [NSString stringWithFormat:@"Diagnostic mode is running on this device, but the UUID provided (%@) doesn't match (%@).", v18, v20];

    v21 = *(a1 + 64);
    v33 = NSLocalizedFailureReasonErrorKey;
    v34 = @"W5InternalErr";
    v22 = &v34;
    v23 = &v33;
    goto LABEL_11;
  }

  v7 = [v5 uuid];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (!v8)
  {
    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      [v5 uuid];
      v37 = 136315650;
      v38 = "[W5DiagnosticsModeManager stopDiagnosticsModeWithUUID:info:reply:]_block_invoke";
      v39 = 2114;
      v40 = v25;
      v42 = v41 = 2114;
      _os_log_send_and_compose_impl();
    }

    v26 = [*(a1 + 32) UUIDString];
    v27 = [v5 uuid];
    v28 = [v27 UUIDString];
    v12 = [NSString stringWithFormat:@"Diagnostic mode is running on this device, but the UUID provided (%@) doesn't match (%@).", v26, v28];

    v21 = *(a1 + 64);
    v35 = NSLocalizedFailureReasonErrorKey;
    v36 = @"W5InternalErr";
    v22 = &v36;
    v23 = &v35;
LABEL_11:
    v29 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1];
    v30 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v29];
    (*(v21 + 16))(v21, v30);

    goto LABEL_14;
  }

  v9 = [v5 peers];
  v10 = [*(a1 + 40) localPeer];
  v11 = [v10 peerID];
  v12 = sub_10009161C(v9, v11);

  v13 = [W5DiagnosticsModePeer alloc];
  if (v12)
  {
    v14 = [v12 role];
  }

  else
  {
    v14 = 8;
  }

  v31 = [*(a1 + 40) localPeer];
  v32 = [v13 initWithRole:v14 peer:v31];

  [*(a1 + 40) _stopDiagnosticsMode:v5 currentPeer:v32 info:*(a1 + 48) reply:*(a1 + 64)];
LABEL_14:
}

void sub_100003B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003B3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[W5DiagnosticsModeManager _stopDiagnosticsMode:currentPeer:info:reply:]_block_invoke";
    v22 = 2114;
    v23 = v6;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 56);
  if (v6)
  {
    v9 = [v6 firstObject];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(a1 + 56), 0);
  }

  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D68;
  block[3] = &unk_1000E0FD8;
  v17 = *(a1 + 32);
  v18 = v5;
  v19 = *(a1 + 40);
  v11 = v5;
  dispatch_async(v10, block);

  v12 = [*(a1 + 40) processors];
  [v12 removeObject:*(a1 + 48)];

  v13 = +[W5ActivityManager sharedActivityManager];
  [v13 osTransactionComplete:*(*(*(a1 + 64) + 8) + 40)];

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_100003D68(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([a1[4] role] != 8 || objc_msgSend(a1[4], "role") == 8 && objc_msgSend(a1[5], "state") == 5)
  {
    [a1[6] _finishedProcessingDiagnosticMode:a1[5]];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100003EF4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 diagnosticsMode];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void sub_100004B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004B90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[W5DiagnosticsModeManager _updateDiagnosticsMode:incomingMode:currentPeer:reply:]_block_invoke";
    v20 = 2114;
    v21 = v6;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 48);
  if (v6)
  {
    v9 = [v6 firstObject];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(a1 + 48), 0);
  }

  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004DA8;
  block[3] = &unk_1000E10A0;
  block[4] = *(a1 + 32);
  v17 = v5;
  v11 = v5;
  dispatch_async(v10, block);

  v12 = [*(a1 + 32) processors];
  [v12 removeObject:*(a1 + 40)];

  v13 = +[W5ActivityManager sharedActivityManager];
  [v13 osTransactionComplete:*(*(*(a1 + 56) + 8) + 40)];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_100004DA8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _finishedProcessingDiagnosticMode:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

W5DiagnosticsActionResult *sub_100004E84(uint64_t a1, int64_t a2, void *a3, void *a4)
{
  v202 = a3;
  v200 = a4;
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100091350(a2);
    *buf = 136316674;
    *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
    *&buf[12] = 2080;
    *&buf[14] = "W5DiagnosticsModeManager.m";
    *&buf[22] = 1024;
    LODWORD(v271) = 397;
    WORD2(v271) = 2080;
    *(&v271 + 6) = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
    HIWORD(v271) = 2048;
    v272 = a2;
    v273 = 2112;
    v274 = v7;
    v275 = 2112;
    v276 = v200;
    LODWORD(v199) = 68;
    v198 = buf;
    _os_log_send_and_compose_impl();
  }

  v201 = objc_alloc_init(W5DiagnosticsActionResult);
  v8 = [v202 peer];
  v9 = [v8 peerID];
  v10 = [*(a1 + 32) peerManager];
  v11 = [v10 localIDSIdentifier];
  if (v9 == v11)
  {
    v16 = 1;
  }

  else
  {
    v12 = [v202 peer];
    v13 = [v12 peerID];
    v14 = [*(a1 + 32) peerManager];
    v15 = [v14 localIDSIdentifier];
    v16 = [v13 isEqual:v15];
  }

  if (a2 <= 5)
  {
    if ((a2 - 2) < 4)
    {
      v24 = [v200 objectForKeyedSubscript:@"DiagnosticsMode"];
      if (v24)
      {
        if (!v16)
        {
          v27 = [[W5DebugConfiguration alloc] initDiagnosticsMode:v24 wifiState:0 megaWiFiProfileState:0 noLoggingWiFiProfileState:0 eapolState:0 bluetoothState:0];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&v271 = sub_100002E48;
          *(&v271 + 1) = sub_100002E58;
          v272 = 0;
          v86 = [v202 peer];
          if (a2 == 5)
          {
            v87 = [v202 peer];
            v88 = [v87 copy];

            [v88 setControlFlags:1];
            v86 = v88;
          }

          v89 = dispatch_semaphore_create(0);
          v261 = NSLocalizedFailureReasonErrorKey;
          v262 = @"W5TimeoutErr";
          v90 = [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
          v91 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:3 userInfo:v90];
          v92 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v91;

          v93 = [W5PeerDebugConfigurationRequest alloc];
          v216[0] = _NSConcreteStackBlock;
          v216[1] = 3221225472;
          v216[2] = sub_100007F94;
          v216[3] = &unk_1000E1190;
          v218 = buf;
          v94 = v89;
          v217 = v94;
          v95 = [(W5PeerDebugConfigurationRequest *)v93 initWithPeer:v86 type:2 debugConfiguration:v27 reply:v216];
          v96 = [*(a1 + 32) peerManager];
          v97 = [v96 sendDebugConfigurationForPeerWithRequest:v95];

          if (v97)
          {
            v98 = sub_100098A04();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *location = 136316162;
              *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke_2";
              *&location[12] = 2080;
              *&location[14] = "W5DiagnosticsModeManager.m";
              *&location[22] = 1024;
              LODWORD(v280) = 610;
              WORD2(v280) = 2114;
              *(&v280 + 6) = v202;
              HIWORD(v280) = 2114;
              v281 = v97;
              _os_log_send_and_compose_impl();
            }

            [(W5DiagnosticsActionResult *)v201 setError:v97];
          }

          else
          {
            v144 = dispatch_time(0, 30000000000);
            if (dispatch_semaphore_wait(v94, v144) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *location = 134349056;
              *&location[4] = 0x403E000000000000;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", location, 0xCu);
            }

            [(W5DiagnosticsActionResult *)v201 setError:*(*&buf[8] + 40), v198, v199];
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_119;
        }

        v25 = [*(a1 + 32) store];
        [v25 updateStoreWithDiagnosticsMode:v24];

        if (([v202 role] & 4) == 0)
        {
LABEL_120:

          goto LABEL_176;
        }

        v26 = [v202 info];
        v27 = [v26 objectForKey:@"UUID"];

        v28 = [v202 info];
        v29 = [v28 objectForKey:@"path"];

        if (v29 && v27)
        {
          v30 = [*(a1 + 32) localStore];
          v265[0] = @"UUID";
          v265[1] = @"path";
          v266[0] = v27;
          v266[1] = v29;
          v31 = [NSDictionary dictionaryWithObjects:v266 forKeys:v265 count:2];
          [v30 addToStore:v24 newInfo:v31];

LABEL_119:
          goto LABEL_120;
        }

        v154 = sub_100098A04();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&buf[12] = 2080;
          *&buf[14] = "W5DiagnosticsModeManager.m";
          *&buf[22] = 1024;
          LODWORD(v271) = 574;
          WORD2(v271) = 2112;
          *(&v271 + 6) = v202;
          _os_log_send_and_compose_impl();
        }

        v263 = NSLocalizedFailureReasonErrorKey;
        v264 = @"W5ParamErr";
        v155 = [NSDictionary dictionaryWithObjects:&v264 forKeys:&v263 count:1];
        v156 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v155];
        [(W5DiagnosticsActionResult *)v201 setError:v156];

        v157 = v201;
      }

      else
      {
        v267 = NSLocalizedFailureReasonErrorKey;
        v268 = @"W5ParamErr";
        v75 = [NSDictionary dictionaryWithObjects:&v268 forKeys:&v267 count:1];
        v76 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v75];
        [(W5DiagnosticsActionResult *)v201 setError:v76];

        v77 = v201;
      }

      goto LABEL_67;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_176;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&v271 = sub_100002E48;
      *(&v271 + 1) = sub_100002E58;
      v272 = 0;
      v32 = [v200 objectForKeyedSubscript:@"DiagnosticsMode"];
      v33 = [v202 info];
      v34 = [v33 objectForKey:@"UUID"];

      if (!v34)
      {
        v35 = [*(a1 + 32) localStore];
        v36 = [v35 infoMatchingDiagnosticMode:v32];

        if (!v36)
        {
          goto LABEL_31;
        }

        v34 = [v36 objectForKey:@"UUID"];
        v37 = sub_100098A04();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315906;
          *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&location[12] = 2080;
          *&location[14] = "W5DiagnosticsModeManager.m";
          *&location[22] = 1024;
          LODWORD(v280) = 499;
          WORD2(v280) = 2114;
          *(&v280 + 6) = v34;
          LODWORD(v199) = 38;
          v198 = location;
          _os_log_send_and_compose_impl();
        }

        if (!v34)
        {
LABEL_31:
          v38 = sub_100098A04();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v202 peer];
            *location = 136315906;
            *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
            *&location[12] = 2080;
            *&location[14] = "W5DiagnosticsModeManager.m";
            *&location[22] = 1024;
            LODWORD(v280) = 504;
            WORD2(v280) = 2114;
            *(&v280 + 6) = v39;
            LODWORD(v199) = 38;
            v198 = location;
            _os_log_send_and_compose_impl();
          }

          v40 = sub_100098A04();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [v32 uuid];
            *location = 136316162;
            *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
            *&location[12] = 2080;
            *&location[14] = "W5DiagnosticsModeManager.m";
            *&location[22] = 1024;
            LODWORD(v280) = 505;
            WORD2(v280) = 2080;
            *(&v280 + 6) = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
            HIWORD(v280) = 2112;
            v281 = v41;
            LODWORD(v199) = 48;
            v198 = location;
            _os_log_send_and_compose_impl();
          }

          v34 = [v32 uuid];
        }
      }

      if (v16)
      {
        v42 = dispatch_semaphore_create(0);
        v43 = [*(a1 + 32) snifferManager];
        v222[0] = _NSConcreteStackBlock;
        v222[1] = 3221225472;
        v222[2] = sub_100007E00;
        v222[3] = &unk_1000E1140;
        v225 = buf;
        v44 = v34;
        v223 = v44;
        v45 = v42;
        v224 = v45;
        [v43 cancelRequestWithUUID:v44 reply:v222];

        v46 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(v45, v46) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *location = 134349056;
          *&location[4] = 0x403E000000000000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", location, 0xCu);
        }

        v47 = sub_100098A04();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315906;
          *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&location[12] = 2080;
          *&location[14] = "W5DiagnosticsModeManager.m";
          *&location[22] = 1024;
          LODWORD(v280) = 518;
          WORD2(v280) = 2112;
          *(&v280 + 6) = v44;
          LODWORD(v199) = 38;
          v198 = location;
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        v135 = [v202 peer];
        v136 = [v135 copy];

        [v136 setControlFlags:1];
        v137 = dispatch_semaphore_create(0);
        v138 = [W5PeerSnifferRequest alloc];
        v219[0] = _NSConcreteStackBlock;
        v219[1] = 3221225472;
        v219[2] = sub_100007F34;
        v219[3] = &unk_1000E1168;
        v221 = buf;
        v139 = v137;
        v220 = v139;
        v140 = [(W5PeerSnifferRequest *)v138 initWithPeer:v136 requestType:2 duration:v34 uuid:0 channels:0 config:v219 reply:0.0];
        v141 = [*(a1 + 32) peerManager];
        v142 = [v141 runSnifferAtPeerWithRequest:v140];

        if (v142)
        {
          v143 = sub_100098A04();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136316162;
            *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke_2";
            *&location[12] = 2080;
            *&location[14] = "W5DiagnosticsModeManager.m";
            *&location[22] = 1024;
            LODWORD(v280) = 540;
            WORD2(v280) = 2114;
            *(&v280 + 6) = v202;
            HIWORD(v280) = 2114;
            v281 = v142;
            LODWORD(v199) = 48;
            v198 = location;
            _os_log_send_and_compose_impl();
          }

          [(W5DiagnosticsActionResult *)v201 setError:v142];
        }

        else
        {
          v182 = dispatch_time(0, 30000000000);
          if (dispatch_semaphore_wait(v139, v182) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *location = 134349056;
            *&location[4] = 0x403E000000000000;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", location, 0xCu);
          }
        }

        if (v142)
        {
          goto LABEL_159;
        }
      }

      [(W5DiagnosticsActionResult *)v201 setError:*(*&buf[8] + 40), v198, v199];
LABEL_159:

      _Block_object_dispose(buf, 8);
      goto LABEL_176;
    }

    v109 = [v200 objectForKeyedSubscript:@"DiagnosticsMode"];
    if (!v109)
    {
      v150 = sub_100098A04();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        v151 = [v202 peer];
        *buf = 136316162;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 406;
        WORD2(v271) = 2080;
        *(&v271 + 6) = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        HIWORD(v271) = 2114;
        v272 = v151;
        _os_log_send_and_compose_impl();
      }

      v284 = NSLocalizedFailureReasonErrorKey;
      v285 = @"W5ParamErr";
      v111 = [NSDictionary dictionaryWithObjects:&v285 forKeys:&v284 count:1];
      v152 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v111];
      [(W5DiagnosticsActionResult *)v201 setError:v152];

      goto LABEL_175;
    }

    v110 = [v202 info];
    v111 = [v110 objectForKeyedSubscript:@"PrimaryChannel"];

    if (!v111)
    {
      v158 = sub_100098A04();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        v159 = [v202 peer];
        *buf = 136316162;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 413;
        WORD2(v271) = 2080;
        *(&v271 + 6) = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        HIWORD(v271) = 2114;
        v272 = v159;
        _os_log_send_and_compose_impl();
      }

      v282 = NSLocalizedFailureReasonErrorKey;
      v283 = @"W5ParamErr";
      v160 = [NSDictionary dictionaryWithObjects:&v283 forKeys:&v282 count:1];
      v161 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v160];
      [(W5DiagnosticsActionResult *)v201 setError:v161];

      v111 = 0;
      goto LABEL_175;
    }

    *location = 0;
    *&location[8] = location;
    *&location[16] = 0x3032000000;
    *&v280 = sub_100002E48;
    *(&v280 + 1) = sub_100002E58;
    v281 = 0;
    v241 = 0;
    v242 = &v241;
    v243 = 0x3032000000;
    v244 = sub_100002E48;
    v245 = sub_100002E58;
    v246 = [v109 uuid];
    v235 = 0;
    v236 = &v235;
    v237 = 0x3032000000;
    v238 = sub_100002E48;
    v239 = sub_100002E58;
    v240 = 0;
    if (v16)
    {
      v112 = objc_alloc_init(NSDateFormatter);
      [v112 setDateFormat:@"yyyy-MM-dd_HH.mm.ss.SSS"];
      v113 = +[NSDate date];
      v114 = [v112 stringFromDate:v113];

      v115 = [v202 peer];
      v116 = [v115 name];
      v117 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_ch%li_%@.pcap", v116, [v111 channel], v114);

      v118 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
      v119 = [v118 URLByAppendingPathComponent:v117];
      v120 = v236[5];
      v236[5] = v119;

      v121 = objc_alloc_init(W5WiFiSnifferRequest);
      [(W5WiFiSnifferRequest *)v121 setUuid:v242[5]];
      [(W5WiFiSnifferRequest *)v121 setChannel:v111];
      [(W5WiFiSnifferRequest *)v121 setDuration:86400.0];
      [(W5WiFiSnifferRequest *)v121 setOutputFile:v236[5]];
      [(W5WiFiSnifferRequest *)v121 setMonitorMode:1];
      [(W5WiFiSnifferRequest *)v121 setTcpDump:1];
      [(W5WiFiSnifferRequest *)v121 setNoAutoStop:1];
      [(W5WiFiSnifferRequest *)v121 setRotationInterval:900];
      v232[0] = _NSConcreteStackBlock;
      v232[1] = 3221225472;
      v232[2] = sub_100007CC4;
      v232[3] = &unk_1000E10F0;
      v234 = location;
      v122 = dispatch_semaphore_create(0);
      v233 = v122;
      [(W5WiFiSnifferRequest *)v121 setReply:v232];
      v123 = [*(a1 + 32) snifferManager];
      [v123 addRequest:v121];

      v124 = sub_100098A04();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = v242[5];
        v126 = v236[5];
        *buf = 136316930;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke_2";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 448;
        WORD2(v271) = 2112;
        *(&v271 + 6) = v125;
        HIWORD(v271) = 2112;
        v272 = v111;
        v273 = 2048;
        v274 = 86400;
        v275 = 2048;
        v276 = 900;
        v277 = 2112;
        v278 = v126;
        LODWORD(v199) = 78;
        v198 = buf;
        _os_log_send_and_compose_impl();
      }

      [*(a1 + 32) _storeSnifferInfo:v109 peer:v202 uuid:v242[5] path:v236[5]];
      v127 = dispatch_time(0, 30000000000);
      if (dispatch_semaphore_wait(v122, v127) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = 0x403E000000000000;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
      }

      v128 = v201;
    }

    else
    {
      v171 = [v202 peer];
      v172 = [v171 copy];

      [v172 setControlFlags:1];
      v173 = dispatch_semaphore_create(0);
      v174 = [W5PeerSnifferRequest alloc];
      v175 = v242[5];
      v269 = v111;
      v176 = [NSArray arrayWithObjects:&v269 count:1];
      v226[0] = _NSConcreteStackBlock;
      v226[1] = 3221225472;
      v226[2] = sub_100007D24;
      v226[3] = &unk_1000E1118;
      v229 = location;
      v230 = &v235;
      v227 = v111;
      v231 = &v241;
      v177 = v173;
      v228 = v177;
      v178 = [(W5PeerSnifferRequest *)v174 initWithPeer:v172 requestType:1 duration:v175 uuid:v176 channels:&off_1000F1FF0 config:v226 reply:86400.0];

      v179 = [*(a1 + 32) peerManager];
      v180 = [v179 runSnifferAtPeerWithRequest:v178];

      if (v180)
      {
        v181 = sub_100098A04();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke_2";
          *&buf[12] = 2080;
          *&buf[14] = "W5DiagnosticsModeManager.m";
          *&buf[22] = 1024;
          LODWORD(v271) = 473;
          WORD2(v271) = 2114;
          *(&v271 + 6) = v202;
          HIWORD(v271) = 2114;
          v272 = v180;
          LODWORD(v199) = 48;
          v198 = buf;
          _os_log_send_and_compose_impl();
        }

        [(W5DiagnosticsActionResult *)v201 setError:v180];
      }

      else
      {
        v191 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(v177, v191) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = 0x403E000000000000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
        }
      }

      v128 = v201;
      if (v180)
      {
        goto LABEL_174;
      }
    }

    [(W5DiagnosticsActionResult *)v128 setUuid:v242[5], v198, v199];
    [(W5DiagnosticsActionResult *)v128 setError:*(*&location[8] + 40)];
    if (v242[5] && v236[5])
    {
      [*(a1 + 32) _storeSnifferInfo:v109 peer:v202 uuid:? path:?];
    }

    [(W5DiagnosticsActionResult *)v128 setPeer:v202];
LABEL_174:
    _Block_object_dispose(&v235, 8);

    _Block_object_dispose(&v241, 8);
    _Block_object_dispose(location, 8);

LABEL_175:
    goto LABEL_176;
  }

  if (a2 > 10)
  {
    if (a2 != 11)
    {
      if (a2 != 12)
      {
        goto LABEL_176;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&v271 = sub_100002E48;
      *(&v271 + 1) = sub_100002E58;
      v272 = objc_alloc_init(NSMutableSet);
      v48 = sub_100098A04();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315906;
        *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&location[12] = 2080;
        *&location[14] = "W5DiagnosticsModeManager.m";
        *&location[22] = 1024;
        LODWORD(v280) = 752;
        WORD2(v280) = 2114;
        *(&v280 + 6) = v200;
        LODWORD(v199) = 38;
        v198 = location;
        _os_log_send_and_compose_impl();
      }

      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v49 = [v200 objectForKeyedSubscript:@"peers"];
      v50 = [v49 countByEnumeratingWithState:&v207 objects:v247 count:16];
      if (!v50)
      {
LABEL_60:

        v64 = dispatch_semaphore_create(0);
        v65 = objc_alloc_init(W5PeerDiscoveryConfiguration);
        [v65 setDiscoveryFlags:1];
        v66 = [W5PeerDiscoveryRequest alloc];
        v67 = +[NSUUID UUID];
        v204[0] = _NSConcreteStackBlock;
        v204[1] = 3221225472;
        v204[2] = sub_1000082D8;
        v204[3] = &unk_1000E1220;
        v206 = buf;
        v68 = v64;
        v205 = v68;
        v69 = [(W5PeerDiscoveryRequest *)v66 initWithConfiguration:v65 uuid:v67 handler:v204];

        v70 = [*(a1 + 32) peerManager];
        v71 = [v70 startPeerDiscoveryWithRequest:v69];

        if (v71)
        {
          v72 = sub_100098A04();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136315906;
            *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke_2";
            *&location[12] = 2080;
            *&location[14] = "W5DiagnosticsModeManager.m";
            *&location[22] = 1024;
            LODWORD(v280) = 777;
            WORD2(v280) = 2114;
            *(&v280 + 6) = v71;
            _os_log_send_and_compose_impl();
          }

          [(W5DiagnosticsActionResult *)v201 setError:v71];
        }

        else
        {
          v153 = dispatch_time(0, 30000000000);
          if (dispatch_semaphore_wait(v68, v153) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *location = 134349056;
            *&location[4] = 0x403E000000000000;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", location, 0xCu);
          }
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_176;
      }

      v51 = *v208;
LABEL_49:
      v52 = 0;
      while (1)
      {
        if (*v208 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v207 + 1) + 8 * v52);
        v54 = [v53 peer];
        v55 = [v54 peerID];

        if (!v55)
        {
          break;
        }

        v56 = [v53 peer];
        v57 = [v56 peerID];
        v58 = [*(a1 + 32) peerManager];
        v59 = [v58 localIDSIdentifier];
        v60 = [v57 isEqualToString:v59];

        if ((v60 & 1) == 0)
        {
          v61 = *(*&buf[8] + 40);
          v62 = [v53 peer];
          v63 = [v62 peerID];
          [v61 addObject:v63];

LABEL_57:
        }

        if (v50 == ++v52)
        {
          v50 = [v49 countByEnumeratingWithState:&v207 objects:v247 count:16];
          if (!v50)
          {
            goto LABEL_60;
          }

          goto LABEL_49;
        }
      }

      v62 = sub_100098A04();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315906;
        *&location[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&location[12] = 2080;
        *&location[14] = "W5DiagnosticsModeManager.m";
        *&location[22] = 1024;
        LODWORD(v280) = 758;
        WORD2(v280) = 2114;
        *(&v280 + 6) = v53;
        LODWORD(v199) = 38;
        v198 = location;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_57;
    }

    v102 = [v200 objectForKeyedSubscript:@"DiagnosticsMode"];
    if (!v102)
    {
      v147 = sub_100098A04();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 646;
        _os_log_send_and_compose_impl();
      }

      v257 = NSLocalizedFailureReasonErrorKey;
      v258 = @"W5ParamErr";
      v148 = [NSDictionary dictionaryWithObjects:&v258 forKeys:&v257 count:1];
      v149 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v148];
      [(W5DiagnosticsActionResult *)v201 setError:v149];

      goto LABEL_176;
    }

    objc_initWeak(location, *(a1 + 32));
    v103 = [v200 objectForKey:@"event"];
    v104 = [v103 integerValue];

    if (v104)
    {
      if (v104 != 1)
      {
LABEL_146:
        objc_destroyWeak(location);

        goto LABEL_176;
      }

      v105 = [*(a1 + 32) localStore];
      WeakRetained = [v105 infoMatchingDiagnosticMode:v102];

      if (WeakRetained)
      {
        v107 = [WeakRetained objectForKey:@"tcpdumpPID"];
        v108 = v107;
        if (v107)
        {
          kill([v107 intValue], 9);
LABEL_145:

          goto LABEL_146;
        }

        v194 = sub_100098A04();
        if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&buf[12] = 2080;
          *&buf[14] = "W5DiagnosticsModeManager.m";
          *&buf[22] = 1024;
          LODWORD(v271) = 694;
          _os_log_send_and_compose_impl();
        }

        v250 = NSLocalizedFailureReasonErrorKey;
        v251 = @"W5InternalErr";
        v195 = [NSDictionary dictionaryWithObjects:&v251 forKeys:&v250 count:1];
        v196 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:v195];
        [(W5DiagnosticsActionResult *)v201 setError:v196];

        v197 = v201;
      }

      else
      {
        v183 = sub_100098A04();
        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&buf[12] = 2080;
          *&buf[14] = "W5DiagnosticsModeManager.m";
          *&buf[22] = 1024;
          LODWORD(v271) = 684;
          _os_log_send_and_compose_impl();
        }

        v252 = NSLocalizedFailureReasonErrorKey;
        v253 = @"W5ParamErr";
        v184 = [NSDictionary dictionaryWithObjects:&v253 forKeys:&v252 count:1];
        v185 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v184];
        [(W5DiagnosticsActionResult *)v201 setError:v185];

        v186 = v201;
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(location);
      v162 = [WeakRetained[2] wifi];
      v108 = [v162 interfaceName];

      if (v108)
      {
        v163 = [v102 uuid];
        v164 = [NSString stringWithFormat:@"DM-%@_%@_tcpdump.pcap", v163, v108];
        v165 = [@"/var/run/com.apple.wifivelocity" stringByAppendingPathComponent:v164];

        v254[0] = @"-i";
        v254[1] = v108;
        v254[2] = @"-G";
        v166 = [NSString stringWithFormat:@"%d", 900];
        v254[3] = v166;
        v254[4] = @"-w";
        v254[5] = v165;
        v167 = [NSArray arrayWithObjects:v254 count:6];

        v211[0] = _NSConcreteStackBlock;
        v211[1] = 3221225472;
        v211[2] = sub_100007FF4;
        v211[3] = &unk_1000E11B8;
        v168 = v201;
        v169 = *(a1 + 32);
        v212 = v168;
        v213 = v169;
        v214 = v102;
        v170 = v165;
        v215 = v170;
        [NSTask runTaskWithLaunchPath:@"/usr/sbin/tcpdump" arguments:v167 timeout:v211 startBlock:0 updateBlock:&stru_1000E11F8 endBlock:0.0];

        goto LABEL_145;
      }

      v187 = sub_100098A04();
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 658;
        _os_log_send_and_compose_impl();
      }

      v255 = NSLocalizedFailureReasonErrorKey;
      v256 = @"W5NotPermittedErr";
      v188 = [NSDictionary dictionaryWithObjects:&v256 forKeys:&v255 count:1];
      v189 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:5 userInfo:v188];
      [(W5DiagnosticsActionResult *)v201 setError:v189];

      v190 = v201;
    }

    objc_destroyWeak(location);

LABEL_67:
    v78 = v201;
    goto LABEL_177;
  }

  if ((a2 - 7) >= 4)
  {
    if (a2 != 6)
    {
      goto LABEL_176;
    }

    v79 = [v200 objectForKeyedSubscript:@"DiagnosticsMode"];
    if (!v79)
    {
      v259 = NSLocalizedFailureReasonErrorKey;
      v260 = @"W5ParamErr";
      v145 = [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
      v146 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v145];
      [(W5DiagnosticsActionResult *)v201 setError:v146];

      goto LABEL_176;
    }

    v80 = [*(a1 + 32) netUsageManager];
    v81 = [v79 uuid];
    [v80 recordUsageToDate:v81];

    v82 = [v200 objectForKey:@"event"];
    v83 = [v82 integerValue];

    if (v83 == 1)
    {
      v84 = [*(a1 + 32) netUsageManager];
      v85 = [v79 uuid];
      [v84 stopPeriodicUsageMonitor:v85];
    }

    else
    {
      if (v83)
      {
LABEL_149:

        goto LABEL_176;
      }

      v84 = [*(a1 + 32) netUsageManager];
      v85 = [v79 uuid];
      [v84 startPeriodicUsageMonitor:180 maxEntries:v85 uuid:10.0];
    }

    goto LABEL_149;
  }

  v17 = [v200 objectForKeyedSubscript:@"DiagnosticsMode"];
  if (v17)
  {
    v18 = [*(a1 + 32) localStore];
    v19 = [v18 infoMatchingDiagnosticMode:v17];

    if (a2 > 8)
    {
      if (a2 == 9)
      {
        if (!v19 || ([v19 objectForKey:@"systemLogsOutputPath"], v99 = objc_claimAutoreleasedReturnValue(), v100 = v99 == 0, v99, v100))
        {
          [*(a1 + 32) _collectSystemLogsForDiagnosticMode:{v17, v198, v199}];
          goto LABEL_125;
        }

        v22 = sub_100098A04();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v101 = [v19 objectForKey:@"systemLogsOutputPath"];
          *buf = 136315906;
          *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&buf[12] = 2080;
          *&buf[14] = "W5DiagnosticsModeManager.m";
          *&buf[22] = 1024;
          LODWORD(v271) = 734;
          WORD2(v271) = 2114;
          *(&v271 + 6) = v101;
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        if (!v19 || ([v19 objectForKey:@"networkInfoOutputPath"], v132 = objc_claimAutoreleasedReturnValue(), v133 = v132 == 0, v132, v133))
        {
          [*(a1 + 32) _collectNetworkInfoForDiagnosticMode:{v17, v198, v199}];
          goto LABEL_125;
        }

        v22 = sub_100098A04();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v134 = [v19 objectForKey:@"networkInfoOutputPath"];
          *buf = 136315906;
          *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
          *&buf[12] = 2080;
          *&buf[14] = "W5DiagnosticsModeManager.m";
          *&buf[22] = 1024;
          LODWORD(v271) = 741;
          WORD2(v271) = 2114;
          *(&v271 + 6) = v134;
          _os_log_send_and_compose_impl();
        }
      }
    }

    else if (a2 == 7)
    {
      if (!v19 || ([v19 objectForKey:@"TestOutputDirectory"], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
      {
        [*(a1 + 32) _runDiagnosticsForDiagnosticMode:{v17, v198, v199}];
        goto LABEL_125;
      }

      v22 = sub_100098A04();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v19 objectForKey:@"TestOutputDirectory"];
        *buf = 136315906;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 720;
        WORD2(v271) = 2114;
        *(&v271 + 6) = v23;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      if (!v19 || ([v19 objectForKey:@"analyticsCSVsOutputPath"], v129 = objc_claimAutoreleasedReturnValue(), v130 = v129 == 0, v129, v130))
      {
        [*(a1 + 32) _collectAnalyticsCSVsForDiagnosticMode:{v17, v198, v199}];
        goto LABEL_125;
      }

      v22 = sub_100098A04();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v131 = [v19 objectForKey:@"analyticsCSVsOutputPath"];
        *buf = 136315906;
        *&buf[4] = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "W5DiagnosticsModeManager.m";
        *&buf[22] = 1024;
        LODWORD(v271) = 727;
        WORD2(v271) = 2114;
        *(&v271 + 6) = v131;
        _os_log_send_and_compose_impl();
      }
    }

LABEL_125:
    goto LABEL_176;
  }

  v248 = NSLocalizedFailureReasonErrorKey;
  v249 = @"W5ParamErr";
  v73 = [NSDictionary dictionaryWithObjects:&v249 forKeys:&v248 count:1];
  v74 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v73];
  [(W5DiagnosticsActionResult *)v201 setError:v74];

LABEL_176:
  v78 = v201;
  v192 = v201;
LABEL_177:

  return v201;
}

void sub_100007CC4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100007D24(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v19 = v8;
  v12 = a4;

  v13 = [v12 objectForKeyedSubscript:*(a1 + 32)];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
  v18 = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100007E00(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100007F34(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100007F94(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100007FF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = "[W5DiagnosticsModeManager _actionHandler]_block_invoke";
      v17 = 2080;
      v18 = "W5DiagnosticsModeManager.m";
      v19 = 1024;
      v20 = 667;
      v21 = 2112;
      v22 = v6;
      _os_log_send_and_compose_impl();
    }

    [*(a1 + 32) setError:v6];
  }

  else
  {
    v8 = [*(a1 + 40) localStore];
    v9 = *(a1 + 48);
    v13[0] = @"tcpdumpPID";
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
    v13[1] = @"tcpdumpOutputPath";
    v14[0] = v10;
    v11 = [NSURL fileURLWithPath:*(a1 + 56)];
    v14[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v8 addToStore:v9 newInfo:v12];
  }
}

void sub_1000081DC(id a1, NSTask *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1000082D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) peerID];
        [v8 removeObject:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (![*(*(*(a1 + 40) + 8) + 40) count])
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10000B69C(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[W5DiagnosticsModeManager handlePeerFaultEvent:]_block_invoke";
    v13 = 2080;
    v14 = "W5DiagnosticsModeManager.m";
    v15 = 1024;
    v16 = 1087;
    v17 = 2112;
    v18 = v3;
    _os_log_send_and_compose_impl();
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v9 = @"DiagnosticMode";
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v5 _notifyPeers:v6 info:v8];
}

void sub_10000D1C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager _collectNetworkInfoForDiagnosticMode:]_block_invoke";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 1365;
    v28 = 2112;
    v29 = v5;
    _os_log_send_and_compose_impl();
  }

  v7 = +[NSUUID UUID];
  v8 = objc_alloc_init(W5LogItemRequestInternal);
  [(W5LogItemRequestInternal *)v8 setUuid:v7];
  v9 = [W5LogItemRequest requestWithItemID:90 configuration:0];
  v21[0] = v9;
  v10 = [W5LogItemRequest requestWithItemID:4 configuration:&off_1000F2108];
  v21[1] = v10;
  v11 = [W5LogItemRequest requestWithItemID:6 configuration:0];
  v21[2] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:3];
  [(W5LogItemRequestInternal *)v8 setItemRequests:v12];

  [(W5LogItemRequestInternal *)v8 setFilename:*(a1 + 32)];
  v13 = +[NSDate date];
  [(W5LogItemRequestInternal *)v8 setAddedAt:v13];

  v14 = [*(a1 + 40) logManager];
  [v14 addRequest:v8];

  v15 = sub_100098A04();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315906;
    v23 = "[W5DiagnosticsModeManager _collectNetworkInfoForDiagnosticMode:]_block_invoke";
    v24 = 2080;
    v25 = "W5DiagnosticsModeManager.m";
    v26 = 1024;
    v27 = 1378;
    v28 = 2112;
    v29 = v8;
    _os_log_send_and_compose_impl();
  }

  v16 = [*(a1 + 40) localStore];
  v17 = *(a1 + 48);
  v19 = @"networkInfoCollectUUID";
  v20 = v7;
  v18 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v16 addToStore:v17 newInfo:v18];
}

uint64_t sub_10000DB74(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = a1[5];
  v6 = v4 == v5;
  if (a1[4])
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v3 peers];
    v6 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = a1[4];
          v13 = [v11 peer];
          v14 = [v13 peerID];
          if ([v12 isEqualToString:v14])
          {
            v15 = a1[6] & [v11 role];

            if (v15)
            {
              v6 = 1;
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v6 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

LABEL_17:
  }

  return v6;
}

uint64_t sub_10000DDDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 40);
  v6 = v4 == v5;
  if (*(a1 + 32))
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v3 peers];
    v6 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(a1 + 32);
          v12 = [*(*(&v15 + 1) + 8 * i) peer];
          v13 = [v12 peerID];
          LOBYTE(v11) = [v11 isEqualToString:v13];

          if (v11)
          {
            v6 = 1;
            goto LABEL_16;
          }
        }

        v6 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return v6;
}

id sub_10000E04C(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) UUIDString];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id sub_10000E5EC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100106B80;
  v7 = qword_100106B80;
  if (!qword_100106B80)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000FA30;
    v3[3] = &unk_1000E13B0;
    v3[4] = &v4;
    sub_10000FA30(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000E6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E6CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 description];
  [v6 setDesc:v4];

  [v6 setEnabled:*(a1 + 40)];
  v5 = [*(a1 + 32) uuid];
  [v6 setUuid:v5];

  [v6 setName:@"W5DiagnosticsMode"];
}

Class sub_10000FA30(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100106B88)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10000FC1C;
    v6[4] = &unk_1000E13E8;
    v6[5] = v6;
    v7 = off_1000E13D0;
    v8 = 0;
    qword_100106B88 = _sl_dlopen();
  }

  if (!qword_100106B88)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *WiFiAnalyticsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"W5DiagnosticsModeManager.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WADeviceAnalyticsClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getWADeviceAnalyticsClientClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"W5DiagnosticsModeManager.m" lineNumber:32 description:{@"Unable to find class %s", "WADeviceAnalyticsClient"}];

LABEL_10:
    __break(1u);
  }

  qword_100106B80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000FC1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106B88 = result;
  return result;
}

void sub_100010564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010588(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000105A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100098A04();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      [v3 count];
      _os_log_send_and_compose_impl();
    }

    v6 = [v3 copy];
    v7 = *(*(a1 + 40) + 8);
    v4 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (v5)
  {
    _os_log_send_and_compose_impl();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100010D94(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100010E78;
  v9 = &unk_1000E1438;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v12 = v3;
  v13 = v4;
  v5 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v6 block:v2];
  [*(*(a1 + 32) + 40) setObject:v5 forKeyedSubscript:{*(a1 + 40), v6, v7, v8, v9, v10}];
}

void sub_100010E78(uint64_t a1)
{
  v2 = [*(a1 + 32) _getCurrentUsage];
  if (v2)
  {
    v3 = +[NSDate date];
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136316162;
      v30 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]_block_invoke_2";
      v31 = 2080;
      v32 = "W5NetUsageManager.m";
      v33 = 1024;
      v34 = 158;
      v35 = 2048;
      v36 = [v2 count];
      v37 = 2114;
      v38[0] = v3;
      _os_log_send_and_compose_impl();
    }

    v5 = [[W5WiFiNetUsageRecord alloc] init:v3 usageData:v2];
    v6 = *(a1 + 40);
    v7 = [v5 date];
    v8 = sub_10009A514(v7);
    v9 = [NSString stringWithFormat:@"netusage_%@.csv", v8];
    v10 = [v6 URLByAppendingPathComponent:v9];

    v11 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 48)];
    v12 = [v11 unsignedIntegerValue];

    v13 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 48)];
    v14 = [v13 count];

    v15 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 48)];
    v16 = v15;
    if (v12 >= v14)
    {
      [v15 addObject:v10];
      v17 = v16;
    }

    else
    {
      v17 = [v15 objectAtIndex:v12];

      v18 = +[NSFileManager defaultManager];
      v28 = 0;
      v19 = [v18 removeItemAtURL:v17 error:&v28];
      v20 = v28;

      v21 = sub_100098A04();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136316418;
        v30 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]_block_invoke";
        v31 = 2080;
        v32 = "W5NetUsageManager.m";
        v33 = 1024;
        v34 = 168;
        v35 = 2112;
        v36 = v17;
        v37 = 1024;
        LODWORD(v38[0]) = v19;
        WORD2(v38[0]) = 2112;
        *(v38 + 6) = v20;
        _os_log_send_and_compose_impl();
      }

      v22 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 48)];
      [v22 replaceObjectAtIndex:v12 withObject:v10];
    }

    v23 = [v5 usageData];
    [W5NetUsageManager writeProcNetUsage:v23 ToFile:v10];

    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 48)];
      v26 = [v25 count];
      v29 = 136315906;
      v30 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]_block_invoke";
      v31 = 2080;
      v32 = "W5NetUsageManager.m";
      v33 = 1024;
      v34 = 177;
      v35 = 2048;
      v36 = v26;
      _os_log_send_and_compose_impl();
    }

    v27 = [NSNumber numberWithUnsignedInteger:(v12 + 1) % *(a1 + 56)];
    [*(*(a1 + 32) + 32) setObject:v27 forKeyedSubscript:*(a1 + 48)];
  }
}

void sub_100011BD4(id *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1[4] objectForKey:v14];
    [v6 doubleValue];
    v8 = v7;
    v9 = [a1[5] objectForKey:v14];
    [v9 doubleValue];
    v11 = v8 - v10;

    v12 = a1[6];
    v13 = [[NSNumber alloc] initWithDouble:v11];
    [v12 setObject:v13 forKey:v14];
  }

  else
  {
    [a1[6] setObject:v5 forKey:v14];
  }
}

void sub_100012460(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = v5;
  if (!a3)
  {
    [*(a1 + 32) appendFormat:@"%@\t%@\t%@\t%@\t%@\n", @"Process Name", @"WiFi In (Bytes)", @"WiFi Out (Bytes)", @"AWDL In (Bytes)", @"AWDL Out (Bytes)"];
    v5 = v12;
  }

  v6 = *(a1 + 32);
  v7 = [v5 objectForKey:@"procName"];
  v8 = [v12 objectForKey:@"wifiInBytes"];
  v9 = [v12 objectForKey:@"wifiOutBytes"];
  v10 = [v12 objectForKey:@"awdlInBytes"];
  v11 = [v12 objectForKey:@"awdlOutBytes"];
  [v6 appendFormat:@"%@\t%@\t%@\t%@\t%@\n", v7, v8, v9, v10, v11];
}

void sub_100012D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012DBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012DD4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 == 1)
  {
    *a4 = 1;
  }

  if (v7)
  {
    v9 = objc_alloc_init(NSDateFormatter);
    [v9 setDateFormat:@"yyyy-MM-dd_HH.mm.ss.SSS"];
    v10 = +[NSDate date];
    v11 = [v9 stringFromDate:v10];

    v12 = [v8 channel];
    v13 = [v8 channelWidth];
    v14 = [v8 band];
    if (*(a1 + 96))
    {
      v15 = "nostop";
    }

    else
    {
      v15 = "remote";
    }

    v35 = v11;
    v16 = [NSString stringWithFormat:@"ch%li_%@_bw%ld_band%ld_%s.pcap", v12, v11, v13, v14, v15];
    v17 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v34 = v16;
    v18 = [v17 URLByAppendingPathComponent:v16];

    v19 = objc_alloc_init(W5WiFiSnifferRequest);
    [(W5WiFiSnifferRequest *)v19 setUuid:*(a1 + 32)];
    [(W5WiFiSnifferRequest *)v19 setChannel:v8];
    [(W5WiFiSnifferRequest *)v19 setDuration:*(a1 + 80)];
    [(W5WiFiSnifferRequest *)v19 setOutputFile:v18];
    [(W5WiFiSnifferRequest *)v19 setMonitorMode:1];
    [(W5WiFiSnifferRequest *)v19 setTcpDump:1];
    [(W5WiFiSnifferRequest *)v19 setNoAutoStop:*(a1 + 96)];
    if (*(a1 + 96) == 1)
    {
      [(W5WiFiSnifferRequest *)v19 setRotationInterval:*(a1 + 88)];
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000132FC;
    v40[3] = &unk_1000E14D8;
    v41 = *(a1 + 32);
    v20 = v8;
    v42 = v20;
    [(W5WiFiSnifferRequest *)v19 setReply:v40];
    v21 = *(a1 + 40);
    v22 = *(*(*(a1 + 56) + 8) + 24);
    v23 = *(*(a1 + 64) + 8);
    obj = *(v23 + 40);
    [v21 setUserAutoJoinDisabled:(v22 & 1) == 0 error:&obj];
    objc_storeStrong((v23 + 40), obj);
    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
      v26 = [*(a1 + 40) userAutoJoinDisabled];
      v27 = *(*(*(a1 + 64) + 8) + 40);
      v43 = 136316418;
      v44 = "[W5PeerSnifferListener _runSnifferOnChannels:interface:duration:noAutoStop:rotationInternal:uuid:]_block_invoke";
      v45 = 2080;
      v46 = "W5PeerSnifferListener.m";
      v47 = 1024;
      v48 = 148;
      v49 = 1024;
      *v50 = v25;
      *&v50[4] = 1024;
      *&v50[6] = v26;
      *v51 = 2114;
      *&v51[2] = v27;
      _os_log_send_and_compose_impl();
    }

    [*(*(a1 + 48) + 16) addRequest:v19];
    v28 = sub_100098A04();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v30 = *(a1 + 80);
      v43 = 136316674;
      v44 = "[W5PeerSnifferListener _runSnifferOnChannels:interface:duration:noAutoStop:rotationInternal:uuid:]_block_invoke";
      v45 = 2080;
      v46 = "W5PeerSnifferListener.m";
      v47 = 1024;
      v48 = 151;
      v49 = 2114;
      *v50 = v29;
      *&v50[8] = 2114;
      *v51 = v20;
      *&v51[8] = 2048;
      v52 = v30;
      v53 = 2114;
      v54 = v18;
      _os_log_send_and_compose_impl();
    }

    [*(*(*(a1 + 72) + 8) + 40) setObject:v18 forKey:v20];
    v31 = dispatch_time(0, 1000000000 * *(a1 + 80));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013418;
    block[3] = &unk_1000E0FD8;
    v32 = *(a1 + 40);
    block[4] = *(a1 + 48);
    v37 = v19;
    v38 = v32;
    v33 = v19;
    dispatch_after(v31, &_dispatch_main_q, block);
  }
}

void sub_1000132FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    _os_log_send_and_compose_impl();
  }
}

void sub_100013418(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  [v2 stopSnifferWithUUID:v3 interface:*(a1 + 48)];
}

void sub_10001369C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }
}

void sub_100013F8C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100014050(id a1, RPFileTransferProgress *a2)
{
  v2 = a2;
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100014114(id a1, RPFileTransferItem *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v5[2](v5, 0);
}

void sub_100014204(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100014520(id a1, RPFileTransferProgress *a2)
{
  v2 = a2;
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1000145E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  (*(a3 + 16))(a3, 0);
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = v5;
    _os_log_send_and_compose_impl();
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [NSNumber numberWithShort:420];
  [v7 setObject:v8 forKey:NSFilePosixPermissions];
  v9 = +[NSFileManager defaultManager];
  v10 = [v5 itemURL];
  v11 = [v10 path];
  v20 = 0;
  v12 = [v9 setAttributes:v7 ofItemAtPath:v11 error:&v20];
  v13 = v20;

  v14 = sub_100098A04();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = [v5 itemURL];
    v17 = [v16 path];
    v21 = 136316162;
    v22 = "[W5FileTransferManager startW5FileReceiverWithPeerPublicKey:reply:]_block_invoke";
    v23 = 2080;
    v24 = "W5FileTransferManager.m";
    v25 = 1024;
    v26 = 168;
    v27 = 1024;
    *v28 = 420;
    *&v28[4] = 2114;
    *&v28[6] = v17;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = [v5 itemURL];
    v17 = [v16 path];
    v21 = 136316162;
    v22 = "[W5FileTransferManager startW5FileReceiverWithPeerPublicKey:reply:]_block_invoke";
    v23 = 2080;
    v24 = "W5FileTransferManager.m";
    v25 = 1024;
    v26 = 171;
    v27 = 2114;
    *v28 = v13;
    *&v28[8] = 2114;
    *&v28[10] = v17;
  }

  _os_log_send_and_compose_impl();

LABEL_9:
  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = [v5 itemURL];
    (*(v18 + 16))(v18, v13, v19);
  }
}

void sub_100014F9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 reply];
  if (v5)
  {

    (v8)[2](v8, v5, 0);
  }

  else
  {
    v10 = v7;
    v9 = [NSArray arrayWithObjects:&v10 count:1];

    (v8)[2](v8, 0, v9);
  }
}

void sub_100016334(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1000167E4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100017388(id a1)
{
  qword_100106B98 = objc_alloc_init(W5ActivityManager);

  _objc_release_x1();
}

void sub_100017664(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017704;
  v5[3] = &unk_1000E1740;
  v5[4] = *(a1 + 32);
  v2 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:5.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void sub_100017704(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017778;
  block[3] = &unk_1000E1270;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100017778(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) copy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v1 count];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager activeTransactions %lu", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*(&v9 + 1) + 8 * i);
          description = os_transaction_get_description();
          *buf = 136315138;
          v15 = description;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager activeTransaction %s", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000179E0(void *a1)
{
  v2 = a1[4];
  if (!v2[2])
  {
    v3 = [v2 debugTimerEnabled];
    v2 = a1[4];
    if (v3)
    {
      [v2 debugTimer];
      v2 = a1[4];
    }
  }

  if (!v2[6])
  {
    v4 = +[NSDate now];
    v5 = a1[4];
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v2 = a1[4];
  }

  v7 = v2[1];
  if (v7 && [v7 isValid])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager osTransactionCreate, timer was running, invalidating and freeing", &v13, 2u);
    }

    [*(a1[4] + 8) invalidate];
    v8 = a1[4];
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;
  }

  [*(a1[4] + 24) addObject:a1[5]];
  ++*(a1[4] + 48);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[6];
    v11 = [*(a1[4] + 24) count];
    v12 = *(a1[4] + 48);
    v13 = 136315650;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager osTransactionCreate %s, active count is now %lu, total started is now %lu", &v13, 0x20u);
  }
}

void sub_100017CA0(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *buf = 136315138;
    description = os_transaction_get_description();
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager osTransactionComplete %s", buf, 0xCu);
  }

  if (([*(a1[5] + 24) containsObject:a1[4]] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = os_transaction_get_description();
      v14 = [*(a1[5] + 24) count];
      *buf = 136315394;
      description = v13;
      v18 = 2048;
      v19 = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] W5ActivityManager osTransactionComplete %s, TRANSACTION NOT FOUND, active count is now %lu", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  [*(a1[5] + 24) removeObject:a1[4]];
  ++*(a1[5] + 64);
  if (![*(a1[5] + 24) count])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 persistentDomainForName:@"com.apple.wifivelocity"];

    v5 = [v4 objectForKey:@"eager-exit-timeout"];
    if (v5)
    {
      NSLog(@"%s: Found preference value in domain: %@ key: %@", "[W5ActivityManager osTransactionComplete:]_block_invoke", @"com.apple.wifivelocity", @"eager-exit-timeout");
      v6 = [v5 intValue];
      if (v6 < 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager empty, eager exit timer disabled via defaults write", buf, 2u);
        }

        goto LABEL_21;
      }

      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }

    v8 = *(a1[5] + 8);
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        *buf = 134217984;
        description = *&v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager empty, extending running eager exit timer to %f seconds", buf, 0xCu);
        v8 = *(a1[5] + 8);
      }

      if ([v8 isValid])
      {
        [*(a1[5] + 8) invalidate];
      }

      v10 = a1[5];
      v11 = *(v10 + 8);
      *(v10 + 8) = 0;
    }

    else if (v9)
    {
      *buf = 134217984;
      description = *&v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager empty, configuring eager exit timer in %f seconds", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018020;
    block[3] = &unk_1000E17B8;
    block[4] = a1[5];
    *&block[5] = v7;
    dispatch_async(&_dispatch_main_q, block);
LABEL_21:
  }
}

void sub_100018020(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000180C4;
  v6[3] = &unk_1000E1790;
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

void sub_1000180C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    [*(v4 + 56) timeIntervalSinceNow];
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = -v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager Completed %lu transactions within uptime of %f seconds", &v9, 0x16u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager Attempting Daemon Eager Exit due to inactivity timeout of %f seconds", &v9, 0xCu);
  }

  [*(a1 + 32) _executeTimerBlock];
  v8 = [*(a1 + 32) alternateExecutionBlockForCleanExit];

  if (!v8 && (xpc_transaction_try_exit_clean() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager Cannot eager exit, still outstanding transactions", &v9, 2u);
  }
}

id sub_100018374(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100018FB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001906C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100019198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, a3, 0);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id *sub_1000191D0(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    result = [result[4] appendData:?];
  }

  if (a4)
  {
    v6 = v5[5];

    return [v6 appendData:a4];
  }

  return result;
}

uint64_t sub_100019228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, 1);
  }

  return result;
}

uint64_t sub_1000192CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10001977C(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  [*(a1 + 40) closeFile];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100019874(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100019A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, a3, 0);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id sub_100019A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 writeData:?];
  }

  result = *(a1 + 40);
  if (result)
  {
    return [result writeData:a4];
  }

  return result;
}

void sub_100019B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, __int16 a14, uint64_t a15, __int16 a16, int a17, __int16 a18, uint64_t a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v19 = sub_100098A04();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    objc_end_catch();
    JUMPOUT(0x100019AD4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100019C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, 1);
  }

  return result;
}

void sub_10001A868(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Unwind_Resume(a1);
}

void sub_10001A8E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = read(*(a1 + 64), v8, 0x1000uLL);
  if (v3 >= 1)
  {
    v4 = [NSData dataWithBytes:v8 length:v3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A9E0;
    block[3] = &unk_1000E18F8;
    v7 = *(a1 + 48);
    v5 = *(a1 + 32);
    block[4] = *(a1 + 40);
    block[5] = v4;
    dispatch_async(v5, block);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001A9E0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v3 = a1[6];
    if (v3)
    {
      (*(v3 + 16))(v3, a1[4], a1[5], 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001AA48(uint64_t a1)
{
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

void sub_10001AA8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = read(*(a1 + 64), v8, 0x1000uLL);
  if (v3 >= 1)
  {
    v4 = [NSData dataWithBytes:v8 length:v3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AB8C;
    block[3] = &unk_1000E18F8;
    v7 = *(a1 + 48);
    v5 = *(a1 + 32);
    block[4] = *(a1 + 40);
    block[5] = v4;
    dispatch_async(v5, block);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001AB8C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v3 = a1[6];
    if (v3)
    {
      (*(v3 + 16))(v3, a1[4], 0, a1[5]);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001ABF4(uint64_t a1)
{
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

void sub_10001AC38(uint64_t a1)
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", *(*(*(a1 + 88) + 8) + 40)];
  v2 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF68;
  block[3] = &unk_1000E13B0;
  block[4] = *(a1 + 96);
  dispatch_async(v2, block);
  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"W5TimeoutErr";
    v3 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:3 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
  }

  else
  {
    v4 = [*(a1 + 40) terminationStatus];
    if (v4)
    {
      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = @"terminationStatus";
      v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:[NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1]];
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001AFAC;
  v10[3] = &unk_1000E1998;
  v7 = *(a1 + 56);
  v10[4] = *(a1 + 48);
  v10[5] = v3;
  v8 = *(a1 + 80);
  v10[6] = v7;
  v10[7] = v6;
  v9 = *(a1 + 112);
  v10[8] = v8;
  v10[9] = v9;
  dispatch_async(v5, v10);
  dispatch_source_cancel(*(a1 + 64));
  dispatch_source_cancel(*(a1 + 72));
  dispatch_release(*(a1 + 32));
}

void sub_10001AF68(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = 1;

  objc_autoreleasePoolPop(v2);
}

void sub_10001AFAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) lastPathComponent];
    if (*(a1 + 40))
    {
      v5 = [NSString stringWithFormat:@" (error=%@)", *(a1 + 40)];
    }

    else
    {
      v5 = &stru_1000E4788;
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) componentsJoinedByString:@" "];
    v11 = 136316674;
    v12 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]_block_invoke";
    v13 = 2080;
    v14 = "W5TaskUtil.m";
    v15 = 1024;
    v16 = 451;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    LODWORD(v10) = 68;
    v9 = &v11;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 56), *(a1 + 40));
  }

  [+[W5ActivityManager sharedActivityManager](W5ActivityManager sharedActivityManager];

  *(*(*(a1 + 72) + 8) + 40) = 0;
  objc_autoreleasePoolPop(v2);
}

void sub_10001B174(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) launch];
  v3 = *(a1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B66C;
  block[3] = &unk_1000E19C0;
  v4 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v11 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v5 = *(a1 + 88);
  v12 = v4;
  v13 = v5;
  dispatch_async(v3, block);
  v6 = *(a1 + 112);
  if (v6 > 0.0)
  {
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001B7FC;
    v9[3] = &unk_1000E19E8;
    v8 = *(a1 + 104);
    v9[4] = *(a1 + 32);
    v9[5] = v8;
    dispatch_after(v7, &_dispatch_main_q, v9);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001B478(void *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x10001B398);
  }

  JUMPOUT(0x10001B4A8);
}

void sub_10001B4B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) lastPathComponent];
    v9 = NSLocalizedFailureReasonErrorKey;
    v10 = @"W5ResourceErr";
    v5 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:[NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1]];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) componentsJoinedByString:@" "];
    v11 = 136316674;
    v12 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]_block_invoke";
    v13 = 2080;
    v14 = "W5TaskUtil.m";
    v15 = 1024;
    v16 = 486;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 48), *(a1 + 56));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001B66C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) lastPathComponent];
    if (*(a1 + 40))
    {
      [NSString stringWithFormat:@" (error=%@)", *(a1 + 40)];
    }

    v5 = *(a1 + 32);
    [*(a1 + 48) componentsJoinedByString:@" "];
    _os_log_send_and_compose_impl();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 56), *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10001B7FC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = [*(a1 + 32) processIdentifier];

  return kill(v1, 9);
}

void sub_10001B83C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) lastPathComponent];
    if (*(a1 + 40))
    {
      [NSString stringWithFormat:@" (error=%@)", *(a1 + 40)];
    }

    v5 = *(a1 + 32);
    [*(a1 + 48) componentsJoinedByString:@" "];
    _os_log_send_and_compose_impl();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 56), *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001BD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10001BD48(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void sub_10001C064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10001C088(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void sub_10001C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10001C3C8(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

__CFString *sub_10001CE30(unint64_t a1)
{
  result = [NSString stringWithFormat:@"? (%ld)", a1];
  if (a1 <= 4)
  {
    return off_1000E1A98[a1];
  }

  return result;
}

__CFString *sub_10001CE84(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Bu >> v1))
  {
    return off_1000E1AC0[v1];
  }

  else
  {
    return [NSString stringWithFormat:@"<%i>", a1];
  }
}

id sub_10001CEE4(void *a1)
{
  v1 = [objc_msgSend(a1 "scanRecord")];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = +[NSMutableString string];
  [v3 appendString:@"["];
  [v3 appendFormat:@"mcast=%@, ", sub_10001CE84(objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"IE_KEY_WPA_MCIPHER", "intValue"))];
  [v3 appendString:@"ucast={ "];
  v4 = [v2 objectForKeyedSubscript:@"IE_KEY_WPA_UCIPHERS"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@ ", sub_10001CE84(objc_msgSend(*(*(&v21 + 1) + 8 * v8), "intValue"))];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  [v3 appendString:{@"}, "}];
  [v3 appendString:@"auths={ "];
  v9 = [v2 objectForKeyedSubscript:@"IE_KEY_WPA_AUTHSELS"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) intValue];
        if (v14 >= 3)
        {
          v15 = [NSString stringWithFormat:@"<%i>", v14];
        }

        else
        {
          v15 = off_1000E1AE8[v14];
        }

        [v3 appendFormat:@"%@ ", v15];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  [v3 appendString:@"}"];
  [v3 appendString:@"]"];
  return v3;
}

__CFString *sub_10001D19C(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 9 && ((0x19Fu >> v1))
  {
    return off_1000E1B00[v1];
  }

  else
  {
    return [NSString stringWithFormat:@"<%i>", a1];
  }
}

id sub_10001D1FC(void *a1)
{
  v1 = [objc_msgSend(a1 "scanRecord")];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = +[NSMutableString string];
  [v3 appendString:@"["];
  [v3 appendFormat:@"mcast=%@, ", sub_10001D19C(objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"IE_KEY_RSN_MCIPHER", "intValue"))];
  [v3 appendString:@"ucast={ "];
  v4 = [v2 objectForKeyedSubscript:@"IE_KEY_RSN_UCIPHERS"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@ ", sub_10001D19C(objc_msgSend(*(*(&v26 + 1) + 8 * v8), "intValue"))];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  [v3 appendString:{@"}, "}];
  [v3 appendString:@"auths={ "];
  v21 = v2;
  v9 = [v2 objectForKeyedSubscript:@"IE_KEY_RSN_AUTHSELS"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * v13) intValue];
        if (v14 < 0x1A && ((0x30033FFu >> v14) & 1) != 0)
        {
          v15 = off_1000E1B48[v14];
        }

        else
        {
          v15 = [NSString stringWithFormat:@"<%i>", v14];
        }

        [v3 appendFormat:@"%@ ", v15];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v11);
  }

  [v3 appendString:{@"}, "}];
  v16 = [v21 objectForKeyedSubscript:@"IE_KEY_RSN_CAPS"];
  v17 = [objc_msgSend(v16 objectForKeyedSubscript:{@"MFP_CAPABLE", "BOOLValue"}];
  v18 = [objc_msgSend(v16 objectForKeyedSubscript:{@"MFP_REQUIRED", "BOOLValue"}];
  v19 = "no";
  if (v17)
  {
    v19 = "capable";
  }

  if (v18)
  {
    v19 = "required";
  }

  [v3 appendFormat:@"mfp=%s", v19];
  [v3 appendString:@"]"];
  return v3;
}

const __CFString *sub_10001D540()
{
  v0 = __chkstk_darwin();
  if (!v0)
  {
    return &stru_1000E4788;
  }

  v1 = v0;
  v2 = *(v0 + 8980);
  if (v2 > 2)
  {
    v3 = " INVALID";
  }

  else
  {
    v3 = off_1000E1A80[v2];
  }

  v4 = snprintf(__str, 0x4000uLL, " \n AP STATUS DETERMINED AS: %s \n", v3);
  v5 = 0;
  memset(&v53[6] + 15, 0, 289);
  memset(&v52[1] + 8, 0, 376);
  strcpy(v52, " Number of events     :");
  do
  {
    snprintf(v52, 0x190uLL, "%s %u\t", v52, *(v1 + v5 + 8982));
    v5 += 2;
  }

  while (v5 != 32);
  strcpy(v53, " Period Ranges [sec]  : 0\t 0-1\t 1-2\t 2-3\t 3-4\t 4-5\t 5-6\t 6-7\t 7-8\t 8-9\t 9-10\t 11-15\t 16-20\t 21-30\t 31-60\t 60+\n");
  v6 = snprintf(&__str[v4], 0x4000 - v4, " \n GENERAL RX RATE PERIOD REPORT \n") + v4;
  v7 = v6 + snprintf(&__str[v6], 0x4000 - v6, "%s \n", v52);
  v8 = snprintf(&__str[v7], 0x4000 - v7, "%s \n", v53);
  v9 = 0;
  strcpy(v52, " Number of events    :");
  memset(v53, 0, sizeof(v53));
  memset(&v52[1] + 7, 0, 377);
  do
  {
    snprintf(v52, 0x190uLL, "%s %u\t", v52, *(v1 + v9 + 9014));
    v9 += 2;
  }

  while (v9 != 32);
  strcpy(v53, " Period Ranges [sec] : 0\t 0-1\t 1-2\t 2-3\t 3-4\t 4-5\t 5-6\t 6-7\t 7-8\t 8-9\t 9-10\t 11-15\t 16-20\t 21-30\t 31-60\t 60+\n");
  v10 = snprintf(&__str[v7 + v8], 0x4000 - (v7 + v8), " LINK DOWN LOW RX RATE PERIOD REPORT \n") + v7 + v8;
  v11 = v10 + snprintf(&__str[v10], 0x4000 - v10, "%s \n", v52);
  v12 = v11 + snprintf(&__str[v11], 0x4000 - v11, "%s \n", v53);
  memset(v52, 0, sizeof(v52));
  memset(v53, 0, sizeof(v53));
  v13 = snprintf(&__str[v12], 0x4000 - v12, " ERRORS SUMMARY: GUARD PERIOD START TIME ZERO EVENT \n") + v12;
  v14 = snprintf(&__str[v13], 0x4000 - v13, " Number of reports:     %d\t %d\t %d\t %d\t \n", v1[2227], v1[2228], v1[2229], v1[2230]) + v13;
  v15 = 0;
  v16 = v14 + snprintf(&__str[v14], 0x4000 - v14, " Guard Period reason:  FRTS\t SCAN\t PSF\t AW\t \n\n");
  v42 = v1 + 1;
  v50 = v1;
  v17 = v1 + 16;
  v47 = *" Number of reports: ";
  strcpy(&v46, "ports: ");
  v45 = *" Guard        Time: ";
  strcpy(&v44, " Time: ");
  do
  {
    memset(&v52[1] + 5, 0, 379);
    v52[0] = v47;
    *(v52 + 13) = v46;
    memset(&v53[1] + 5, 0, 368);
    v53[24] = 0u;
    v53[0] = v45;
    *(v53 + 13) = v44;
    snprintf(v53, 0x190uLL, " %s\t 16-20\t 21-30\t 31-40\t 41-50\t 51-100\t 101-200 201+\n", v53);
    v18 = 0;
    v19 = 0;
    do
    {
      v19 += v17[v18];
      snprintf(v52, 0x190uLL, "%s\t %d", v52, v17[v18++]);
    }

    while (v18 != 7);
    v20 = snprintf(&__str[v16], 0x4000 - v16, " ERRORS SUMMARY: LONG %s GUARD PERIOD - TOTAL %d  \n", off_1000E1A58[v15], v19) + v16;
    LODWORD(v20) = v20 + snprintf(&__str[v20], 0x4000 - v20, "%s \n", v52);
    v16 = v20 + snprintf(&__str[v20], 0x4000 - v20, "%s \n", v53);
    ++v15;
    v17 += 22;
  }

  while (v15 != 5);
  v21 = snprintf(&__str[v16], 0x4000 - v16, " \n ERRORS SUMMARY: INVALID PACKET AMOUNT REPORTS \n") + v16;
  v22 = v50;
  v23 = snprintf(&__str[v21], 0x4000 - v21, " Number of reports:       %d\t %d\t %d\t %d\t \n", v50[2212], v50[2213], v50[2214], v50[2215]) + v21;
  v24 = v23 + snprintf(&__str[v23], 0x4000 - v23, " Guard Period reason:     FRTS\t SCAN\t PSF\t AW\t \n");
  v25 = v24 + snprintf(&__str[v24], 0x4000 - v24, " \n ERRORS SUMMARY: PACKET ARRIVAL TIME BEFORE GUARD TIME PERIOD REPORTS \n");
  v26 = snprintf(&__str[v25], 0x4000 - v25, " Number of packets:       %d\t %d\t %d\t %d\t \n", v22[2217], v22[2218], v22[2219], v22[2220]) + v25;
  v27 = snprintf(&__str[v26], 0x4000 - v26, " Number of guard periods: %d\t %d\t %d\t %d\t \n", v22[2222], v22[2223], v22[2224], v22[2225]) + v26;
  v28 = snprintf(&__str[v27], 0x4000 - v27, " Guard Period reason:     FRTS\t SCAN\t PSF\t AW\t \n");
  v29 = 0;
  v30 = v27 + v28;
  v49 = v50 + 111;
  v31 = v42;
  do
  {
    memset(&v53[1] + 5, 0, 379);
    v53[0] = v45;
    *(v53 + 13) = v44;
    memset(&v52[1] + 5, 0, 368);
    v52[24] = 0u;
    v52[0] = v47;
    *(v52 + 13) = v46;
    v48 = v29;
    v32 = snprintf(&__str[v30], 0x4000 - v30, " \n GUARD TIME %s REPORT\n", off_1000E1A58[v29]) + v30;
    v33 = snprintf(&__str[v32], 0x4000 - v32, " Guard Time distribution in 1 milisec granualty \n");
    for (i = 0; i != 15; ++i)
    {
      if (v31[i])
      {
        snprintf(v53, 0x190uLL, "%s\t %d", v53, i);
        snprintf(v52, 0x190uLL, "%s\t %d", v52, v31[i]);
      }
    }

    v43 = v31;
    v35 = snprintf(&__str[v32 + v33], 0x4000 - (v32 + v33), "%s \n", v52) + v32 + v33;
    v36 = 0;
    v30 = v35 + snprintf(&__str[v35], 0x4000 - v35, "%s \n", v53);
    v37 = v49;
    v50 = &v42[22 * v48];
    do
    {
      if (v50[v36])
      {
        v38 = 0;
        v39 = 0;
        strcpy(v53, " Time        Slots: ");
        strcpy(v52, " Number of packets: ");
        memset(&v53[1] + 5, 0, 379);
        memset(&v52[1] + 5, 0, 379);
        do
        {
          if (v37[v38])
          {
            ++v39;
            snprintf(v53, 0x190uLL, "%s\t %d", v53, v38);
            snprintf(v52, 0x190uLL, "%s\t %d", v52, v37[v38]);
          }

          ++v38;
        }

        while (v38 != 22);
        if (v39)
        {
          v40 = snprintf(&__str[v30], 0x4000 - v30, " \n Packet distribution within the Guard Time %d [ time slot 1 milisecond] \n", v36) + v30;
          LODWORD(v40) = v40 + snprintf(&__str[v40], 0x4000 - v40, "%s \n", v52);
          v30 = v40 + snprintf(&__str[v40], 0x4000 - v40, "%s \n", v53);
        }
      }

      ++v36;
      v37 += 20;
    }

    while (v36 != 22);
    v29 = v48 + 1;
    v31 = v43 + 22;
    v49 += 400;
  }

  while (v48 != 4);
  return [[NSString alloc] initWithCString:__str encoding:4];
}

void sub_10001E94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E9B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "[W5PeerDiagnosticsListener _runDiagnostics:uuid:configuration:]_block_invoke";
    v18 = 2080;
    v19 = "W5PeerDiagnosticsListener.m";
    v20 = 1024;
    v21 = 98;
    v22 = 2114;
    v23 = v6;
    LODWORD(v15) = 38;
    v14 = &v16;
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) lock];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = [v5 copy];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v6 copy];
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    dispatch_semaphore_signal(*(a1 + 40));
  }

  [*(a1 + 32) unlock];
}

void sub_10001F738(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F7C4;
  v4[3] = &unk_1000E1C48;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v3 __cancelActiveRequestAndReply:v4];
  objc_autoreleasePoolPop(v2);
}

void sub_10001F848(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  [*(a1 + 32) __cancelActiveRequestAndReply:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10001FA1C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __pendingRequestWithUUID:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    if ([v3 reply])
    {
      v5 = [v4 reply];
      v10 = NSLocalizedFailureReasonErrorKey;
      v11 = @"W5CancelledErr";
      v5[2](v5, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]]);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    [*(*(a1 + 32) + 16) removeObject:v4];
  }

  else if ([objc_msgSend(*(*(a1 + 32) + 24) "uuid")])
  {
    [*(a1 + 32) __cancelActiveRequestAndReply:*(a1 + 48)];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = NSLocalizedFailureReasonErrorKey;
      v9 = @"W5ParamErr";
      (*(v7 + 16))(v7, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]]);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001FC5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!sub_100025F44())
  {
    goto LABEL_10;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = off_100106BA8;
  v17 = off_100106BA8;
  if (!off_100106BA8)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100026088;
    v13 = &unk_1000E13B0;
    v4 = sub_1000260D8();
    v15[3] = dlsym(v4, "CoreCaptureControlCreate");
    off_100106BA8 = v15[3];
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v3)
  {
    v5 = v3(kCFAllocatorDefault);
    if (!v5)
    {
LABEL_10:
      objc_autoreleasePoolPop(v2);
      return;
    }

    v6 = v5;
    v7 = [*(a1 + 32) UTF8String];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v8 = off_100106BB0;
    v17 = off_100106BB0;
    if (!off_100106BB0)
    {
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_100026174;
      v13 = &unk_1000E13B0;
      v9 = sub_1000260D8();
      v15[3] = dlsym(v9, "CoreCaptureControlCaptureWithComponentDirectory");
      off_100106BB0 = v15[3];
      v8 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v8)
    {
      v8(v6, "WiFi", v7);
      CFRelease(v6);
      goto LABEL_10;
    }

    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"Boolean soft_CoreCaptureControlCaptureWithComponentDirectory(CoreCaptureControlRef stringWithUTF8String:const char *)"], @"W5WiFiPerfLoggingManager.m", 23, @"%s", dlerror(), v10, v11, v12, v13];
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5WiFiPerfLoggingManager.m", 19, @"%s", dlerror(), v10, v11, v12, v13];
  }

  __break(1u);
}

void sub_10001FEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001FFE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"wifiperf[%@]", [objc_msgSend(objc_msgSend(v1[3] "uuid")]);

  return [v1 __dumpCoreCaptureLogsWithReason:v2];
}

void sub_100020C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020CF8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100020CF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100020D58(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100020D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020DE8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100020DE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100020E48(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100020E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020ED8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100020ED8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100020F38(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100020F54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020FC8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100020FC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100021028(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021044(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000210B8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000210B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100021118(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021134(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000211A8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000211A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100021208(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021224(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021298;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100021298(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_1000212F8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021388;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100021388(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_1000213E8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021478;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100021478(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_1000214D8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021E24;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100021E24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100021E84(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021F14;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100021F14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100021F74(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100021F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100022004;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100022004(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022064(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100022080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000220F4;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000220F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022154(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100022170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000221E4;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000221E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022244(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100022260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000222D4;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000222D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022334(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100022350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000223C4;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000223C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022424(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_1000225F4(uint64_t a1)
{
  [*(a1 + 32) __runToolWithOutputFileHandle:*(*(a1 + 32) + 64) launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F3540];
  [*(a1 + 32) __runToolWithOutputFileHandle:*(*(a1 + 32) + 64) launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F3558];
  [*(a1 + 32) __runToolWithOutputFileHandle:*(*(a1 + 32) + 64) launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F3570];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v6[0] = [objc_msgSend(*(v2 + 8) "awdl")];
  v6[1] = @"-dbg=print_sr";
  [v2 __runToolWithOutputFileHandle:v3 launchPath:@"/usr/local/bin/apple80211" arguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v6, 2)}];
  v4 = *(*(a1 + 32) + 56);
  if (v4)
  {
    v5 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void sub_100022DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100022E50;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100022E50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022EB0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100022ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100022F40;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100022F40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100022FA0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100022FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023030;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100023030(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100023090(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_1000230AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023120;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100023120(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100023180(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_10002319C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023210;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100023210(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_100023270(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 40;
  if (a3)
  {
    v3 = 48;
  }

  dispatch_group_leave(*(*(a1 + 32) + v3));
}

void sub_100023440(uint64_t a1)
{
  [*(a1 + 32) __runToolWithOutputFileHandle:*(*(a1 + 32) + 80) launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F3588];
  [*(a1 + 32) __runToolWithOutputFileHandle:*(*(a1 + 32) + 80) launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F35A0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v6[0] = [objc_msgSend(*(v2 + 8) "nan")];
  v6[1] = @"-dbg=print_nan_avail";
  [v2 __runToolWithOutputFileHandle:v3 launchPath:@"/usr/local/bin/apple80211" arguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v6, 2)}];
  v4 = *(*(a1 + 32) + 72);
  if (v4)
  {
    v5 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void sub_1000237E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023854;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100023854(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 96) addObject:*(a1 + 40)];
  dispatch_group_enter(*(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_1000238A8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    dispatch_group_leave(*(*(a1 + 32) + 48));
  }
}

uint64_t sub_100025E30(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) reply])
  {
    v2 = [*(*(a1 + 32) + 24) reply];
    v4 = NSLocalizedFailureReasonErrorKey;
    v5 = @"W5CancelledErr";
    v2[2](v2, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1]]);
  }

  *(*(a1 + 32) + 24) = 0;
  [*(a1 + 32) __nextRequest];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100025F44()
{
  if (!qword_100106BA0)
  {
    qword_100106BA0 = _sl_dlopen();
  }

  return qword_100106BA0;
}

uint64_t sub_100026014(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106BA0 = result;
  return result;
}

void *sub_100026088(uint64_t a1)
{
  v2 = sub_1000260D8();
  result = dlsym(v2, "CoreCaptureControlCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100106BA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

NSAssertionHandler *sub_1000260D8()
{
  v0 = sub_100025F44();
  if (v0)
  {
    return v0;
  }

  v1 = +[NSAssertionHandler currentHandler];
  v3 = [(NSAssertionHandler *)v1 handleFailureInFunction:[NSString stringWithUTF8String:?]description:@"W5WiFiPerfLoggingManager.m", 15, @"%s", 0];
  __break(1u);
  free(v3);
  return v1;
}

void *sub_100026174(uint64_t a1)
{
  v2 = sub_1000260D8();
  result = dlsym(v2, "CoreCaptureControlCaptureWithComponentDirectory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100106BB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000267CC(id a1)
{
  qword_100106BB8 = [[W5BufferPool alloc] initBuffersWithSize:compression_encode_scratch_buffer_size(COMPRESSION_LZFSE) bufferCount:2];

  _objc_release_x1();
}

void sub_100027688(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"timer"];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"timer"];
    v5 = +[NSNull null];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:@"timer"];
      if ([v7 isValid])
      {
        [v7 invalidate];
      }
    }
  }

  v8 = +[NSNull null];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"timer"];
}

void sub_10002778C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"timer"];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"timer"];
    v5 = +[NSNull null];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:@"timer"];
      if ([v7 isValid])
      {
        [v7 invalidate];
      }
    }
  }

  v8 = +[NSNull null];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"timer"];
}

void sub_100027D18(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100027DC4;
  v3[3] = &unk_1000E1740;
  v3[4] = *(a1 + 40);
  v2 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v3 block:10.0];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timer"];
}

void sub_100028DB0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __setupCallbacks];
  [*(*(a1 + 32) + 128) resume];

  objc_autoreleasePoolPop(v2);
}

id sub_100029234(uint64_t a1)
{
  *(*(a1 + 32) + 176) = objc_alloc_init(W5Peer);
  [*(*(a1 + 32) + 176) setPeerID:0];
  [*(*(a1 + 32) + 176) setModel:{objc_msgSend(*(a1 + 32), "__model")}];
  v2 = [[NSDictionary alloc] initWithContentsOfURL:+[NSURL fileURLWithPath:](NSURL error:{"fileURLWithPath:", @"/System/Library/CoreServices/SystemVersion.plist", 0}];
  [*(*(a1 + 32) + 176) setBuild:{objc_msgSend(v2, "objectForKeyedSubscript:", @"ProductBuildVersion"}];
  [*(*(a1 + 32) + 176) setVersion:{objc_msgSend(v2, "objectForKeyedSubscript:", @"ProductVersion"}];
  [*(*(a1 + 32) + 176) setOs:{objc_msgSend(v2, "objectForKeyedSubscript:", @"ProductName"}];
  [*(*(a1 + 32) + 176) setName:sub_1000983C8()];
  result = [*(*(a1 + 32) + 176) peerID];
  if (!result)
  {
    result = *(*(a1 + 32) + 80);
    if (result)
    {
      result = [result localIDSIdentifier];
      if (result)
      {
        v4 = [*(*(a1 + 32) + 80) localIDSIdentifier];
        v5 = *(*(a1 + 32) + 176);

        return [v5 setPeerID:v4];
      }
    }
  }

  return result;
}

void sub_1000298B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a4, a3);
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"Reason"];
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"CleanupDelay"];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    if (v8)
    {
      v10 = 1000000000 * [v8 unsignedIntegerValue];
    }

    else
    {
      v10 = 120000000000;
    }

    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3052000000;
    v15[3] = sub_100029A3C;
    v15[4] = sub_100029A4C;
    v11 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    v15[5] = v11;
    v12 = dispatch_time(0, v10);
    v13 = *(*(a1 + 40) + 8);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100029A58;
    v14[3] = &unk_1000E1D98;
    v14[4] = a3;
    v14[5] = v15;
    dispatch_after(v12, v13, v14);
    _Block_object_dispose(v15, 8);
  }
}

void sub_100029A58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) path];
    v7[0] = 67109378;
    v7[1] = 120;
    v8 = 2114;
    v9 = v4;
    LODWORD(v6) = 18;
    v5 = v7;
    _os_log_send_and_compose_impl();
  }

  -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v5, v6), "removeItemAtPath:error:", [*(a1 + 32) path], 0);
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  *(*(*(a1 + 40) + 8) + 40) = 0;
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100029C7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100029D8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10002A010(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    if (!a2)
    {
      v4 = *(a1 + 32);
    }

    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10002A150(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002A778(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) itemID];
  v3 = objc_alloc_init(W5LogItemReceipt);
  [v3 setRequest:*(a1 + 32)];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setStartedAt:?];
  [v3 startedAt];
  [v3 setCompletedAt:?];
  v6 = NSLocalizedFailureReasonErrorKey;
  v7 = @"W5NotSupportedErr";
  v4 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:4 userInfo:[NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1]];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 0, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002B020(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10002B05C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B0DC;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B0DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B128(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B1A8;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B1A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B1F4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B274;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B274(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B2C0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B340;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B340(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B38C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B40C;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B40C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B458(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002B4E4;
  v3[3] = &unk_1000E2450;
  v3[4] = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_async(v2, v3);
}

void sub_10002B4E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) eventID] == 18)
  {
    v3 = [objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "corewifi")];
    [objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "pm")];
    v4 = IOPMIsASleep();
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (!v3 || (v4 & 1) != 0)
    {
      [v5 pauseMonitoring];
    }

    else
    {
      [v5 resumeMonitoringAfterDelay:10.0];
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B628;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B628(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B674(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002B700;
  v3[3] = &unk_1000E2450;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v3[4] = a2;
  dispatch_async(v2, v3);
}

void sub_10002B700(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(*(a1[5] + 8) + 40) "corewifi")];
  [objc_msgSend(*(*(a1[5] + 8) + 40) "pm")];
  v4 = IOPMIsASleep();
  v5 = *(*(a1[6] + 8) + 40);
  if (!v3 || (v4 & 1) != 0)
  {
    [v5 pauseMonitoring];
  }

  else
  {
    [v5 resumeMonitoringAfterDelay:10.0];
  }

  [*(*(a1[7] + 8) + 40) __updatedStatusWithEvent:a1[4]];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B7B4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B834;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B834(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B880(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B900;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B900(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002B94C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B9CC;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002B9CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BA18(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002BA98;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002BA98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BAE4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002BB64;
  v4[3] = &unk_1000E19E8;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002BB64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 40) + 8) + 40) __updatedStatusWithEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BC38;
  block[3] = &unk_1000E1EB0;
  block[4] = a2;
  block[5] = a3;
  *&block[8] = a5;
  v6 = *(a1 + 40);
  block[6] = a4;
  block[7] = v6;
  dispatch_async(v5, block);
}

void sub_10002BC38(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:36];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"UUID"];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"CompletedDiagnosticsTest"];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"NextDiagnosticsTest"];
  [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 64)), @"PercentComplete"}];
  [v3 setInfo:v4];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  [*(*(*(a1 + 56) + 8) + 40) __completedDiagnosticsTest:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BD38(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BDBC;
  block[3] = &unk_1000E1F00;
  block[4] = a2;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_10002BDBC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1[5] + 8) + 40) addEvent:a1[4]];
  [*(*(a1[6] + 8) + 40) __updatedStatusWithEvent:a1[4]];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BEA4;
  block[3] = &unk_1000E1EB0;
  block[4] = a2;
  block[5] = a3;
  *&block[8] = a5;
  v6 = *(a1 + 40);
  block[6] = a4;
  block[7] = v6;
  dispatch_async(v5, block);
}

void sub_10002BEA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:37];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"UUID"];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"CollectedLogItem"];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"NextLogItem"];
  [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 64)), @"PercentComplete"}];
  [v3 setInfo:v4];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  [*(*(*(a1 + 56) + 8) + 40) __collectedLogItem:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_10002BFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C028;
  block[3] = &unk_1000E1F78;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_10002C028(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1[6] + 8) + 40) __collectLogItem:a1[4] reply:a1[5]];

  objc_autoreleasePoolPop(v2);
}

void sub_10002C078(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C0FC;
  block[3] = &unk_1000E1F00;
  block[4] = a2;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_10002C0FC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1[5] + 8) + 40) addEvent:a1[4]];
  [*(*(a1[6] + 8) + 40) __updatedStatusWithEvent:a1[4]];

  objc_autoreleasePoolPop(v2);
}

void sub_10002C15C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C1E0;
  block[3] = &unk_1000E1F00;
  block[4] = a2;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_10002C1E0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1[5] + 8) + 40) addEvent:a1[4]];
  [*(*(a1[6] + 8) + 40) __updatedStatusWithEvent:a1[4]];

  objc_autoreleasePoolPop(v2);
}

void sub_10002C240(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002C2C0;
  v3[3] = &unk_1000E1C98;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10002C2C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 136);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([objc_msgSend(v8 "eventIDs")])
        {
          [objc_msgSend(objc_msgSend(v8 "connection")];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 112) handlePeerFaultEvent:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);
}

void sub_10002C478(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusMonitoring];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002C548(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusMonitoring];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002C618(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __localPeer];
  v4 = *(*(a1 + 32) + 80);
  if (v4 && [v4 localIDSIdentifier])
  {
    [v3 setPeerID:{objc_msgSend(*(*(a1 + 32) + 80), "localIDSIdentifier")}];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002C728(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [W5PeerStatusRequest alloc];
    v4 = a1[4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002C870;
    v11[3] = &unk_1000E1FF0;
    v11[4] = a1[6];
    v5 = [(W5PeerStatusRequest *)v3 initWithPeer:v4 reply:v11];
    v6 = [*(a1[5] + 80) queryStatusForPeerWithRequest:v5];
    if (v6)
    {
      v7 = v6;
      v8 = a1[6];
      if (v8)
      {
        (*(v8 + 16))(v8, v7, 0);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002C888;
    v9[3] = &unk_1000E2040;
    v10 = *(a1 + 5);
    [v10 __queryStatusAndReply:v9];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002C870(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002C888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002C904;
  v5[3] = &unk_1000E2018;
  v4 = *(a1 + 40);
  v5[4] = a3;
  v5[5] = v4;
  dispatch_async(v3, v5);
}

void sub_10002C904(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002C9D4(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (!v3 || *(a1[5] + 176) && ([objc_msgSend(v3 "peerID")] & 1) != 0)
  {
    v4 = a1[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002CB6C;
    v12[3] = &unk_1000E2090;
    v12[4] = v4;
    v13 = *(a1 + 3);
    [v4 __queryDatabaseAndReply:v13 reply:v12];
  }

  else
  {
    v5 = [W5PeerDatabaseRequest alloc];
    v6 = a1[4];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002CB54;
    v14[3] = &unk_1000E2068;
    v7 = a1[6];
    v14[4] = a1[7];
    v8 = [(W5PeerDatabaseRequest *)v5 initWithPeer:v6 fetch:v7 reply:v14];
    v9 = [*(a1[5] + 80) queryDatabaseForPeerWithRequest:v8];
    if (v9)
    {
      v10 = v9;
      v11 = a1[7];
      if (v11)
      {
        (*(v11 + 16))(v11, v10, 0);
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002CB54(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002CB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002CBEC;
  v4[3] = &unk_1000E2270;
  v4[4] = a2;
  v4[5] = a3;
  v5 = *(a1 + 40);
  dispatch_async(v3, v4);
}

void sub_10002CBEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = sub_100098A04();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 136315906;
      v31 = "[W5Engine xpcConnection:queryDatabaseForPeer:fetch:reply:]_block_invoke_4";
      v32 = 2080;
      v33 = "W5Engine.m";
      v34 = 1024;
      *v35 = 1068;
      *&v35[4] = 2112;
      *&v35[6] = v6;
      _os_log_send_and_compose_impl();
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    *buf = 136316162;
    v31 = "[W5Engine xpcConnection:queryDatabaseForPeer:fetch:reply:]_block_invoke";
    v32 = 2080;
    v33 = "W5Engine.m";
    v34 = 1024;
    *v35 = 1070;
    *&v35[4] = 2112;
    *&v35[6] = v7;
    v36 = 2112;
    v37 = v8;
    LODWORD(v24) = 48;
    v23 = buf;
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 40) firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([objc_msgSend(*(a1 + 40) "firstObject")])
    {
      [*(a1 + 40) firstObject];
      if ([objc_opt_class() supportsSecureCoding])
      {
        v9 = *(a1 + 40);
        goto LABEL_23;
      }
    }

    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [*(a1 + 40) firstObject];
      v20 = objc_opt_class();
      v21 = [*(a1 + 40) count];
      v22 = *(a1 + 48);
      *buf = 138412802;
      v31 = v20;
      v32 = 2048;
      v33 = v21;
      v34 = 2112;
      *v35 = v22;
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Unexpected non secure codeable object: %@ in results (%lu) for request: %@", buf, 0x20u);
    }

    goto LABEL_22;
  }

  v9 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 _w5DictionaryRepresentation];
        if (v16)
        {
          v17 = [v16 mutableCopy];
          [v17 setValue:objc_msgSend(objc_msgSend(v15 forKey:{"entity"), "name"), @"eventType"}];
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

LABEL_23:
  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))(v19, *(a1 + 32), v9);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002D000(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [W5PeerFileRequest alloc];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[6] + 96);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002D0F0;
  v11[3] = &unk_1000E2068;
  v11[4] = a1[7];
  v7 = [(W5PeerFileRequest *)v3 initWithPeer:v4 requestType:1 remotePath:v5 transferManager:v6 reply:v11];
  v8 = [*(a1[6] + 80) requestFileFromPeerWithRequest:v7];
  if (v8)
  {
    v9 = v8;
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v9, 0);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002D0F0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v5 = [a3 firstObject];
    v6 = *(v3 + 16);

    return v6(v3, a2, v5);
  }

  return result;
}

void sub_10002D1C8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [W5PeerFileRequest alloc];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[6] + 96);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002D2B8;
  v11[3] = &unk_1000E2068;
  v11[4] = a1[7];
  v7 = [(W5PeerFileRequest *)v3 initWithPeer:v4 requestType:2 remotePath:v5 transferManager:v6 reply:v11];
  v8 = [*(a1[6] + 80) requestFileFromPeerWithRequest:v7];
  if (v8)
  {
    v9 = v8;
    v10 = a1[7];
    if (v10)
    {
      (*(v10 + 16))(v10, v9, 0);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002D2B8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002D348(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [W5PeerDebugConfigurationRequest alloc];
    v4 = a1[4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002D498;
    v11[3] = &unk_1000E20E0;
    v11[4] = a1[6];
    v5 = [(W5PeerDebugConfigurationRequest *)v3 initWithPeer:v4 type:1 debugConfiguration:0 reply:v11];
    v6 = [*(a1[5] + 80) sendDebugConfigurationForPeerWithRequest:v5];
    if (v6)
    {
      v7 = v6;
      v8 = a1[6];
      if (v8)
      {
        (*(v8 + 16))(v8, v7, 0);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002D4B0;
    v9[3] = &unk_1000E2130;
    v10 = *(a1 + 5);
    [v10 __queryDebugConfigurationAndReply:v9];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002D498(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002D4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D530;
  block[3] = &unk_1000E2108;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_10002D530(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002D5FC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [W5PeerDebugConfigurationRequest alloc];
    v4 = a1[4];
    v5 = a1[5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002D748;
    v13[3] = &unk_1000E20E0;
    v13[4] = a1[7];
    v6 = [(W5PeerDebugConfigurationRequest *)v3 initWithPeer:v4 type:2 debugConfiguration:v5 reply:v13];
    v7 = [*(a1[6] + 80) sendDebugConfigurationForPeerWithRequest:v6];
    if (v7)
    {
      v8 = v7;
      v9 = a1[7];
      if (v9)
      {
        (*(v9 + 16))(v9, v8);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v10 = a1[5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002D760;
    v11[3] = &unk_1000E2158;
    v12 = *(a1 + 3);
    [v12 __setDebugConfiguration:v10 reply:v11];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002D748(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002D760(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D7DC;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002D7DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002D8AC(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_msgSend(*(a1 + 32) "UUIDString")];
    v6 = [*(a1 + 40) processName];
    v7 = [objc_msgSend(*(a1 + 40) "connection")];
    v8 = *(a1 + 48);
    v37 = 136316674;
    v38 = "[W5Engine xpcConnection:runDiagnostics:configuration:uuid:reply:]_block_invoke";
    v39 = 2080;
    v40 = "W5Engine.m";
    v41 = 1024;
    v42 = 1209;
    v43 = 2114;
    v44 = v5;
    v45 = 2114;
    v46 = v6;
    v47 = 1024;
    v48 = v7;
    v49 = 2114;
    v50 = v8;
    LODWORD(v24) = 64;
    v22 = &v37;
    _os_log_send_and_compose_impl();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = a1;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:{16, v22, v24}];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = sub_100098A04();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          [v14 testID];
          v16 = W5DescriptionForDiagnosticsTestID();
          v17 = [v14 testID];
          v37 = 136316162;
          v38 = "[W5Engine xpcConnection:runDiagnostics:configuration:uuid:reply:]_block_invoke";
          v39 = 2080;
          v40 = "W5Engine.m";
          v41 = 1024;
          v42 = 1212;
          v43 = 2114;
          v44 = v16;
          v45 = 2048;
          v46 = v17;
          LODWORD(v25) = 48;
          v23 = &v37;
          _os_log_send_and_compose_impl();
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v19 = *(v26 + 48);
  v18 = *(v26 + 56);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10002DBE8;
  v28[3] = &unk_1000E21A8;
  v20 = *(v26 + 32);
  v31 = v3;
  v21 = *(v26 + 64);
  v29 = v20;
  v30 = v21;
  [v21 __runDiagnostics:v18 configuration:v19 uuid:v20 reply:{v28, v23, v25}];
  objc_autoreleasePoolPop(context);
}

void sub_10002DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_msgSend(*(a1 + 32) "UUIDString")];
    v8 = [*(a1 + 40) processName];
    v9 = [objc_msgSend(*(a1 + 40) "connection")];
    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10 - *(a1 + 64);
    v15 = 136316674;
    v16 = "[W5Engine xpcConnection:runDiagnostics:configuration:uuid:reply:]_block_invoke";
    v17 = 2080;
    v18 = "W5Engine.m";
    v19 = 1024;
    v20 = 1217;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    v27 = 2048;
    v28 = v11;
    _os_log_send_and_compose_impl();
  }

  v12 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DDB4;
  block[3] = &unk_1000E2108;
  v13 = *(a1 + 56);
  block[5] = a3;
  block[6] = v13;
  block[4] = a2;
  dispatch_async(v12, block);
}

void sub_10002DDB4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10002E164(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002E4BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "uuid")];
    v5 = [*(a1 + 32) processName];
    v6 = [objc_msgSend(*(a1 + 32) "connection")];
    v7 = *(a1 + 40);
    v13 = 136316674;
    v14 = "[W5Engine xpcConnection:startDiagnosticsModeWithConfiguration:reply:]_block_invoke";
    v15 = 2080;
    v16 = "W5Engine.m";
    v17 = 1024;
    v18 = 1278;
    v19 = 2114;
    v20 = v4;
    v21 = 2114;
    v22 = v5;
    v23 = 1024;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    LODWORD(v10) = 64;
    v9 = &v13;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002E674;
  v11[3] = &unk_1000E21F8;
  v12 = *(a1 + 48);
  [*(v12 + 112) startDiagnosticsModeWithConfiguration:v8 reply:{v11, v9, v10}];
  objc_autoreleasePoolPop(v2);
}

void sub_10002E674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E6F4;
  block[3] = &unk_1000E2108;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_10002E6F4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002E7C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_msgSend(*(a1 + 32) "UUIDString")];
    v5 = [*(a1 + 40) processName];
    v6 = [objc_msgSend(*(a1 + 40) "connection")];
    v7 = *(a1 + 48);
    v14 = 136316674;
    v15 = "[W5Engine xpcConnection:stopDiagnosticsModeWithUUID:info:reply:]_block_invoke";
    v16 = 2080;
    v17 = "W5Engine.m";
    v18 = 1024;
    v19 = 1297;
    v20 = 2114;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    LODWORD(v11) = 64;
    v10 = &v14;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002E97C;
  v12[3] = &unk_1000E2158;
  v13 = *(a1 + 56);
  [*(v13 + 112) stopDiagnosticsModeWithUUID:v8 info:v9 reply:{v12, v10, v11}];
  objc_autoreleasePoolPop(v2);
}

void sub_10002E97C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002E9F8;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10002E9F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002EAC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "uuid")];
    v5 = [*(a1 + 32) processName];
    v6 = [objc_msgSend(*(a1 + 32) "connection")];
    v7 = *(a1 + 40);
    v17 = 136316674;
    v18 = "[W5Engine xpcConnection:queryDiagnosticsModeForPeer:info:reply:]_block_invoke";
    v19 = 2080;
    v20 = "W5Engine.m";
    v21 = 1024;
    v22 = 1316;
    v23 = 2114;
    v24 = v4;
    v25 = 2114;
    v26 = v5;
    v27 = 1024;
    v28 = v6;
    v29 = 2114;
    v30 = v7;
    LODWORD(v14) = 64;
    v13 = &v17;
    _os_log_send_and_compose_impl();
  }

  if (*(a1 + 48))
  {
    v8 = *(*(a1 + 56) + 8);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002ED88;
    v15[3] = &unk_1000E2248;
    v15[4] = *(a1 + 64);
    v9 = v15;
  }

  else
  {
    if ([*(a1 + 40) objectForKeyedSubscript:@"Filter"] && objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"Filter"), "integerValue") == 2)
    {
      v10 = [*(*(a1 + 56) + 112) allDiagnostics];
    }

    else
    {
      v10 = [*(*(a1 + 56) + 112) activeDiagnostics];
    }

    v11 = *(*(a1 + 56) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002ED30;
    block[3] = &unk_1000E2018;
    v12 = *(a1 + 64);
    block[4] = v10;
    block[5] = v12;
    v9 = block;
    v8 = v11;
  }

  dispatch_async(v8, v9);
  objc_autoreleasePoolPop(v2);
}

void sub_10002ED30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002ED88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = NSLocalizedFailureReasonErrorKey;
    v5 = @"W5NotSupportedErr";
    (*(v3 + 16))(v3, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:4 userInfo:[NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1]], 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002EEE0(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_msgSend(*(a1 + 32) "UUIDString")];
    v6 = [*(a1 + 40) processName];
    v7 = [objc_msgSend(*(a1 + 40) "connection")];
    v8 = *(a1 + 48);
    v51 = 136316674;
    v52 = "[W5Engine xpcConnection:collectLogs:configuration:uuid:reply:]_block_invoke";
    v53 = 2080;
    v54 = "W5Engine.m";
    v55 = 1024;
    v56 = 1349;
    v57 = 2114;
    v58 = v5;
    v59 = 2114;
    v60 = v6;
    v61 = 1024;
    v62 = v7;
    v63 = 2114;
    v64 = v8;
    LODWORD(v38) = 64;
    v36 = &v51;
    _os_log_send_and_compose_impl();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = a1;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:{16, v36, v38}];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = sub_100098A04();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          [v14 itemID];
          v16 = W5DescriptionForLogItemID();
          v17 = [v14 itemID];
          v51 = 136316162;
          v52 = "[W5Engine xpcConnection:collectLogs:configuration:uuid:reply:]_block_invoke";
          v53 = 2080;
          v54 = "W5Engine.m";
          v55 = 1024;
          v56 = 1352;
          v57 = 2114;
          v58 = v16;
          v59 = 2048;
          v60 = v17;
          LODWORD(v39) = 48;
          v37 = &v51;
          _os_log_send_and_compose_impl();
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v11);
  }

  v18 = [*(v40 + 64) __localPeer];
  v19 = [objc_msgSend(*(v40 + 48) objectForKeyedSubscript:{@"Compress", "BOOLValue"}];
  v20 = objc_alloc_init(NSDateFormatter);
  [v20 setDateFormat:@"yyyy-MM-dd_HH.mm.ss.SSS"];
  v21 = [v20 stringFromDate:{+[NSDate date](NSDate, "date")}];
  v22 = [*(v40 + 48) objectForKeyedSubscript:@"Reason"];
  if (!v22)
  {
    v22 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"kW5LocWiFiDiagnosticsName", @"WiFiDiagnostics", 0];
  }

  v23 = [v18 os];
  v24 = [v18 model];
  v25 = [v18 build];
  v26 = &stru_1000E4788;
  if (v19)
  {
    v26 = @".tgz";
  }

  v27 = [NSString stringWithFormat:@"%@_%@_%@_%@_%@%@", v22, v21, v23, v24, v25, v26];
  v28 = getuid();
  v29 = getgid();
  v31 = *(v40 + 56);
  v30 = *(v40 + 64);
  v32 = *(v40 + 48);
  v33 = [*(v40 + 40) additionalLog];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10002F354;
  v42[3] = &unk_1000E2298;
  v34 = *(v40 + 32);
  v45 = v3;
  v35 = *(v40 + 64);
  v43 = v34;
  v44 = v35;
  [v30 __collectLogs:v31 configuration:v32 additionalLog:v33 filename:v27 uid:v28 gid:v29 uuid:v34 reply:v42];
  objc_autoreleasePoolPop(context);
}

void sub_10002F354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_msgSend(*(a1 + 32) "UUIDString")];
    v10 = [*(a1 + 40) processName];
    v11 = [objc_msgSend(*(a1 + 40) "connection")];
    +[NSDate timeIntervalSinceReferenceDate];
    v13 = v12 - *(a1 + 64);
    v17 = 136316930;
    v18 = "[W5Engine xpcConnection:collectLogs:configuration:uuid:reply:]_block_invoke";
    v19 = 2080;
    v20 = "W5Engine.m";
    v21 = 1024;
    v22 = 1376;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    v29 = 2048;
    v30 = v13;
    v31 = 2114;
    v32 = a4;
    _os_log_send_and_compose_impl();
  }

  v14 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F534;
  block[3] = &unk_1000E2270;
  v15 = *(a1 + 56);
  block[4] = a2;
  block[5] = a3;
  block[6] = a4;
  block[7] = v15;
  dispatch_async(v14, block);
}

void sub_10002F534(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[7];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5], a1[6]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002F608(id *a1)
{
  context = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_msgSend(a1[4] "UUIDString")];
    v6 = [a1[5] processName];
    v7 = [objc_msgSend(a1[5] "connection")];
    v8 = a1[6];
    v33 = 136316674;
    v34 = "[W5Engine xpcConnection:collectLogsDiagnosticMode:uuid:reply:]_block_invoke";
    v35 = 2080;
    v36 = "W5Engine.m";
    v37 = 1024;
    v38 = 1393;
    v39 = 2114;
    v40 = v5;
    v41 = 2114;
    v42 = v6;
    v43 = 1024;
    v44 = v7;
    v45 = 2114;
    v46 = v8;
    LODWORD(v26) = 64;
    v25 = &v33;
    _os_log_send_and_compose_impl();
  }

  v9 = [a1[7] __localPeer];
  v27 = [objc_msgSend(a1[6] objectForKeyedSubscript:{@"Compress", "BOOLValue"}];
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"yyyy.MM.dd_HH-mm-ssZZZZZ"];
  [v10 setTimeZone:{+[NSTimeZone defaultTimeZone](NSTimeZone, "defaultTimeZone")}];
  v11 = [objc_msgSend(v10 stringFromDate:{+[NSDate date](NSDate, "date")), "stringByReplacingOccurrencesOfString:withString:", @":", &stru_1000E4788}];
  v12 = [a1[6] objectForKeyedSubscript:@"Reason"];
  if (!v12)
  {
    v12 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"kW5LocWiFiNetworkDiagnosticsName", @"WiFiNetworkDiagnostics", 0];
  }

  if ([objc_msgSend(v9 "model")])
  {
    v13 = [objc_msgSend(v9 "name")];
  }

  else
  {
    v13 = &stru_1000E4788;
  }

  if ([(__CFString *)v13 length]>= 9)
  {
    v13 = [(__CFString *)v13 substringToIndex:8];
  }

  v14 = [objc_msgSend(v9 "os")];
  v15 = [v9 model];
  if ([(__CFString *)v13 length])
  {
    v16 = [NSString stringWithFormat:@"_%@", v13];
  }

  else
  {
    v16 = &stru_1000E4788;
  }

  v17 = [v9 build];
  v18 = @".tgz";
  if (!v27)
  {
    v18 = &stru_1000E4788;
  }

  v19 = [NSString stringWithFormat:@"%@_%@_%@_%@%@_%@%@", v12, v11, v14, v15, v16, v17, v18];
  v20 = getuid();
  v21 = getgid();
  v22 = a1[6];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002F9E4;
  v29[3] = &unk_1000E2298;
  v23 = *(a1 + 2);
  v32 = v3;
  v24 = *(a1 + 7);
  v30 = v23;
  v31 = v24;
  [v24 __collectLogsDiagnosticMode:v22 outputName:v19 uid:v20 gid:v21 uuid:v23 reply:v29];
  objc_autoreleasePoolPop(context);
}

void sub_10002F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_msgSend(*(a1 + 32) "UUIDString")];
    v10 = [*(a1 + 40) processName];
    v11 = [objc_msgSend(*(a1 + 40) "connection")];
    +[NSDate timeIntervalSinceReferenceDate];
    v13 = v12 - *(a1 + 64);
    v17 = 136316930;
    v18 = "[W5Engine xpcConnection:collectLogsDiagnosticMode:uuid:reply:]_block_invoke";
    v19 = 2080;
    v20 = "W5Engine.m";
    v21 = 1024;
    v22 = 1422;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    v29 = 2048;
    v30 = v13;
    v31 = 2114;
    v32 = a4;
    _os_log_send_and_compose_impl();
  }

  v14 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FBC4;
  block[3] = &unk_1000E2270;
  v15 = *(a1 + 56);
  block[4] = a2;
  block[5] = a3;
  block[6] = a4;
  block[7] = v15;
  dispatch_async(v14, block);
}

void sub_10002FBC4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[7];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5], a1[6]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002FC9C(double *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    v6 = a1[9];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002FF0C;
    v16[3] = &unk_1000E22E8;
    v7 = *(a1 + 8);
    v16[4] = v4;
    v16[5] = v7;
    [v4 __runWiFiSnifferOnPeer:v3 channels:v5 duration:0 uuid:v16 reply:v6];
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3052000000;
    v15[3] = sub_100029A3C;
    v15[4] = sub_100029A4C;
    v15[5] = [[NSMutableDictionary alloc] initWithCapacity:2];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3052000000;
    v14[3] = sub_100029A3C;
    v14[4] = sub_100029A4C;
    v14[5] = [[NSMutableDictionary alloc] initWithCapacity:2];
    v8 = dispatch_group_create();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002FFE8;
    v13[3] = &unk_1000E2338;
    v10 = *(a1 + 5);
    v9 = *(a1 + 6);
    v13[4] = v8;
    v13[5] = v10;
    *&v13[9] = a1[9];
    *&v13[6] = a1[7];
    v13[7] = v15;
    v13[8] = v14;
    [v9 enumerateObjectsUsingBlock:v13];
    v11 = *(*(a1 + 5) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000300F8;
    block[3] = &unk_1000E2360;
    *&block[4] = a1[8];
    block[5] = v15;
    block[6] = v14;
    dispatch_group_notify(v8, v11, block);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v15, 8);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002FF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FF90;
  block[3] = &unk_1000E22C0;
  v6 = *(a1 + 40);
  block[7] = a5;
  block[8] = v6;
  block[4] = a2;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(v5, block);
}

void sub_10002FF90(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[8];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5], a1[6], a1[7]);
  }

  objc_autoreleasePoolPop(v2);
}

id sub_10002FFE8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3 == 1)
  {
    *a4 = 1;
  }

  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030098;
  v11[3] = &unk_1000E2310;
  v12 = *(a1 + 56);
  v9 = *(a1 + 32);
  v11[4] = a2;
  v11[5] = v9;
  return [v7 __runWiFiSnifferOnChannel:a2 duration:v8 uuid:0 tcpDump:v11 reply:v6];
}

void sub_100030098(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  if (a2)
  {
    v5 = *(*(a1[6] + 8) + 40);
    a3 = a2;
  }

  else
  {
    v5 = *(*(a1[7] + 8) + 40);
  }

  [v5 setObject:a3 forKey:v4];
  v6 = a1[5];

  dispatch_group_leave(v6);
}

uint64_t sub_1000300F8(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, 0, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), 0);
  }

  return result;
}

void sub_1000301B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v3)
  {
    v6 = *(a1 + 72);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000302D0;
    v13[3] = &unk_1000E22E8;
    v7 = *(a1 + 64);
    v13[4] = v4;
    v13[5] = v7;
    [v4 __runWiFiSnifferOnPeer:v3 channels:v5 duration:0 uuid:v13 reply:v6];
  }

  else
  {
    v8 = [*(a1 + 48) objectAtIndexedSubscript:?];
    v9 = *(a1 + 72);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000303BC;
    v12[3] = &unk_1000E23B0;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12[4] = *(a1 + 40);
    v12[5] = v11;
    [v4 __runWiFiSnifferOnChannel:v8 duration:v10 uuid:1 tcpDump:v12 reply:v9];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000302D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030350;
  block[3] = &unk_1000E2108;
  v5 = *(a1 + 40);
  block[5] = a4;
  block[6] = v5;
  block[4] = a2;
  dispatch_async(v4, block);
}

void sub_100030350(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), [*(a1 + 40) allValues]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000303BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003043C;
  block[3] = &unk_1000E2108;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_10003043C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[4];
    v5 = a1[5];
    (*(v3 + 16))(v3, v4, [NSArray arrayWithObjects:&v5 count:1]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100030560(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [W5PeerDiscoveryRequest alloc];
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003062C;
  v7[3] = &unk_1000E23D8;
  v8 = *(a1 + 40);
  v5 = [*(*(a1 + 56) + 80) startPeerDiscoveryWithRequest:{-[W5PeerDiscoveryRequest initWithConfiguration:uuid:handler:](v3, "initWithConfiguration:uuid:handler:", v4, v8, v7)}];
  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10003062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    v6 = [W5PeerDiscoveryEvent alloc];
    v7 = *(a1 + 32);
    v10 = @"UUID";
    v11 = v7;
    return [objc_msgSend(objc_msgSend(*(a1 + 40) "connection")];
  }

  else
  {
    v9 = sub_100098A04();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      return _os_log_send_and_compose_impl();
    }
  }

  return result;
}

void sub_100030808(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __cancelPeerDiscoveryWithUUID:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000309D4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  if (v3)
  {
    v5 = *(v4 + 200);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100030AE8;
    v13[3] = &unk_1000E2400;
    v6 = a1[6];
    v13[4] = v3;
    v13[5] = v6;
    v7 = [v5 startNetworkDiscovery:v3 reply:v13];
    if (v7)
    {
      v8 = v7;
      v9 = a1[6];
      if (v9)
      {
        (*(v9 + 16))(v9, v8, 0);
      }
    }
  }

  else
  {
    v10 = *(v4 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100030C0C;
    v12[3] = &unk_1000E2400;
    v11 = a1[6];
    v12[4] = v4;
    v12[5] = v11;
    [v10 scanForNetworksWithConfiguration:0 handler:v12];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100030AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

void sub_100030C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030C8C;
  block[3] = &unk_1000E2108;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_100030C8C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    _os_log_send_and_compose_impl();
  }

  v4 = a1[6];
  if (v4)
  {
    (*(v4 + 16))(v4, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100030E28(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  if (v3)
  {
    v7 = *(v4 + 200);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100030F44;
    v15[3] = &unk_1000E2158;
    v8 = a1[8];
    v15[4] = v3;
    v15[5] = v8;
    v9 = [v7 associateToNetwork:v5 peer:v3 configuration:v6 reply:v15];
    if (v9)
    {
      v10 = v9;
      v11 = a1[8];
      if (v11)
      {
        (*(v11 + 16))(v11, v10);
      }
    }
  }

  else
  {
    v12 = *(v4 + 16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100031060;
    v14[3] = &unk_1000E2158;
    v13 = a1[8];
    v14[4] = v4;
    v14[5] = v13;
    [v12 associateToNetwork:v5 configuration:v6 reply:v14];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100030F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100031060(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000310DC;
  v4[3] = &unk_1000E1C70;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_1000310DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100031274(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031304;
  v7[3] = &unk_1000E2158;
  v5 = a1[6];
  v6 = a1[7];
  v7[4] = v3;
  v7[5] = v6;
  [v3 __runWiFiPerfLoggingWithConfiguration:v4 uuid:v5 reply:v7];
  objc_autoreleasePoolPop(v2);
}

void sub_100031304(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031380;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031380(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003144C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000314DC;
  v6[3] = &unk_1000E2158;
  v5 = a1[6];
  v6[4] = v3;
  v6[5] = v5;
  [v3 __cancelDiagnosticsWithUUID:v4 reply:v6];
  objc_autoreleasePoolPop(v2);
}

void sub_1000314DC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031558;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031558(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100031624(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000316B4;
  v6[3] = &unk_1000E2158;
  v5 = a1[6];
  v6[4] = v3;
  v6[5] = v5;
  [v3 __cancelCollectLogsWithUUID:v4 reply:v6];
  objc_autoreleasePoolPop(v2);
}

void sub_1000316B4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031730;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031730(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000317FC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = objc_alloc_init(W5Peer);
    [v3 setPeerID:a1[4]];
    [v3 setDiscoveryFlags:1];
    [v3 setControlFlags:1];
    v4 = a1[5];
    v5 = a1[6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003192C;
    v11[3] = &unk_1000E2158;
    v6 = a1[7];
    v11[4] = v4;
    v11[5] = v6;
    [v4 __cancelWiFiSnifferWithUUID:v5 peer:v3 reply:v11];
  }

  else
  {
    v7 = a1[5];
    v8 = a1[6];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000319FC;
    v10[3] = &unk_1000E2158;
    v9 = a1[7];
    v10[4] = v7;
    v10[5] = v9;
    [v7 __cancelWiFiSnifferWithUUID:v8 reply:v10];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003192C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000319A8;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_1000319A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000319FC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031A78;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031A78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100031B44(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100031C34;
    v9[3] = &unk_1000E2158;
    v6 = a1[7];
    v9[4] = v3;
    v9[5] = v6;
    [v3 __cancelWiFiSnifferWithUUID:v5 peer:v4 reply:v9];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100031D04;
    v8[3] = &unk_1000E2158;
    v7 = a1[7];
    v8[4] = v3;
    v8[5] = v7;
    [v3 __cancelWiFiSnifferWithUUID:v5 reply:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100031C34(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031CB0;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031CB0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100031D04(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031D80;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031D80(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100031E4C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100031EDC;
  v6[3] = &unk_1000E2158;
  v5 = a1[6];
  v6[4] = v3;
  v6[5] = v5;
  [v3 __cancelWiFiPerfLoggingWithUUID:v4 reply:v6];
  objc_autoreleasePoolPop(v2);
}

void sub_100031EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031F58;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_100031F58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100032024(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (v3)
  {
    [*(a1[5] + 184) startMonitoringFaultEventsForPeer:v3 reply:a1[6]];
  }

  else
  {
    v4 = a1[6];
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100032108(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (v3)
  {
    [*(a1[5] + 184) stopMonitoringFaultEventsForPeer:v3 reply:a1[6]];
  }

  else
  {
    v4 = a1[6];
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000321EC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 184) submitFaultEvent:a1[5]];
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000322C4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (v3)
  {
    [*(a1[5] + 184) queryFaultEventCacheForPeer:v3 reply:a1[6]];
  }

  else
  {
    v4 = a1[6];
    if (v4)
    {
      (*(v4 + 16))(v4, 0, [*(a1[5] + 184) faultEventCache]);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000328F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100032940(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 136) addObject:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100032988(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) processName];
  [*(*(*(a1 + 40) + 8) + 40) processIdentifier];
  [*(*(*(a1 + 40) + 8) + 40) effectiveUserIdentifier];
  [*(*(*(a1 + 40) + 8) + 40) effectiveGroupIdentifier];
  v2 = sub_100098A04();
  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    return _os_log_send_and_compose_impl();
  }

  return result;
}

void sub_100032AEC(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) processName];
  v3 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
  v4 = [*(*(*(a1 + 48) + 8) + 40) effectiveUserIdentifier];
  v5 = [*(*(*(a1 + 48) + 8) + 40) effectiveGroupIdentifier];
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136316674;
    v14 = "[W5Engine listener:shouldAcceptNewConnection:]_block_invoke";
    v15 = 2080;
    v16 = "W5Engine.m";
    v17 = 1024;
    v18 = 1848;
    v19 = 2114;
    v20 = v2;
    v21 = 1024;
    v22 = v3;
    v23 = 1024;
    v24 = v4;
    v25 = 1024;
    v26 = v5;
    _os_log_send_and_compose_impl();
  }

  block[0] = _NSConcreteStackBlock;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_100032CAC;
  block[3] = &unk_1000E2450;
  v11 = v7;
  v12 = v8;
  dispatch_async(v9, block);
}

void sub_100032CAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(*(*(a1 + 40) + 8) + 40) activeRequests];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 type];
        if (v9 <= 2)
        {
          if (v9 == 1)
          {
            [*(a1 + 32) __cancelDiagnosticsWithUUID:objc_msgSend(v8 reply:{"uuid"), 0}];
          }

          else if (v9 == 2)
          {
            [*(a1 + 32) __cancelCollectLogsWithUUID:objc_msgSend(v8 reply:{"uuid"), 0}];
          }
        }

        else
        {
          switch(v9)
          {
            case 3:
              [*(a1 + 32) __cancelWiFiSnifferWithUUID:objc_msgSend(v8 reply:{"uuid"), 0}];
              break;
            case 4:
              [*(a1 + 32) __cancelPeerDiscoveryWithUUID:{objc_msgSend(v8, "uuid")}];
              break;
            case 5:
              [*(a1 + 32) __cancelWiFiPerfLoggingWithUUID:objc_msgSend(v8 reply:{"uuid"), 0}];
              break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [*(*(*(a1 + 40) + 8) + 40) faultEventMonitoringPeers];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(a1 + 32) + 184) stopMonitoringFaultEventsForPeer:*(*(&v15 + 1) + 8 * j) reply:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  -[NSFileManager removeItemAtURL:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtURL:error:", [*(*(*(a1 + 40) + 8) + 40) additionalLog], 0);
  [*(*(*(a1 + 48) + 8) + 40) setExportedObject:0];
  [*(*(*(a1 + 48) + 8) + 40) setInterruptionHandler:0];
  [*(*(*(a1 + 48) + 8) + 40) setInvalidationHandler:0];
  [*(*(a1 + 32) + 136) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  *(*(*(a1 + 56) + 8) + 40) = 0;
  [*(a1 + 32) __updateStatusMonitoring];
  objc_autoreleasePoolPop(v2);
}

void sub_10003375C(id a1, BGRepeatingSystemTask *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000339F4;
  v10[3] = &unk_1000E13B0;
  v10[4] = &v11;
  [(BGRepeatingSystemTask *)a2 setExpirationHandler:v10];
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 136315650;
    *&v15[4] = "[W5Engine _scheduleRepeatingCleanupTasks]_block_invoke";
    v16 = 2080;
    v17 = "W5Engine.m";
    v18 = 1024;
    v19 = 1998;
    LODWORD(v8) = 28;
    v7 = v15;
    _os_log_send_and_compose_impl();
  }

  v4 = [NSPredicate predicateWithFormat:@"pathExtension='pcap'", v7, v8];
  sub_100099AD4(@"/var/run/com.apple.wifivelocity", v4, 7, v12 + 24);
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 136315650;
    *&v15[4] = "[W5Engine _scheduleRepeatingCleanupTasks]_block_invoke";
    v16 = 2080;
    v17 = "W5Engine.m";
    v18 = 1024;
    v19 = 2000;
    LODWORD(v9) = 28;
    _os_log_send_and_compose_impl();
  }

  if (*(v12 + 24) == 1)
  {
    *v15 = 0;
    if (([(BGRepeatingSystemTask *)a2 setTaskExpiredWithRetryAfter:v15 error:0.0]& 1) == 0)
    {
      v6 = *v15;
      if (!*v15)
      {
        v6 = @"Unknown";
      }

      NSLog(@"Failed to expire task with error: %@", v6, v9);
      [(BGRepeatingSystemTask *)a2 setTaskCompleted];
    }
  }

  else
  {
    [(BGRepeatingSystemTask *)a2 setTaskCompleted];
  }

  _Block_object_dispose(&v11, 8);
}

void sub_1000339D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000339F4(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v1 = sub_100098A04();
  result = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    return _os_log_send_and_compose_impl();
  }

  return result;
}

void sub_100033AE0(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100033DA0;
  v11[3] = &unk_1000E13B0;
  v11[4] = &v12;
  [a2 setExpirationHandler:v11];
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315650;
    *&v17[4] = "[W5Engine _scheduleRepeatingCleanupTasks]_block_invoke";
    v18 = 2080;
    v19 = "W5Engine.m";
    v20 = 1024;
    v21 = 2027;
    LODWORD(v9) = 28;
    v8 = v17;
    _os_log_send_and_compose_impl();
  }

  v16 = *(a1 + 32);
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:&v16 count:2, v8, v9]];
  sub_100099AD4(@"/var/run/com.apple.wifivelocity", v5, 7, v13 + 24);
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315650;
    *&v17[4] = "[W5Engine _scheduleRepeatingCleanupTasks]_block_invoke";
    v18 = 2080;
    v19 = "W5Engine.m";
    v20 = 1024;
    v21 = 2029;
    LODWORD(v10) = 28;
    _os_log_send_and_compose_impl();
  }

  if (*(v13 + 24) == 1)
  {
    *v17 = 0;
    if (([a2 setTaskExpiredWithRetryAfter:v17 error:0.0] & 1) == 0)
    {
      v7 = *v17;
      if (!*v17)
      {
        v7 = @"Unknown";
      }

      NSLog(@"Failed to expire task with error: %@", v7, v10);
      [a2 setTaskCompleted];
    }
  }

  else
  {
    [a2 setTaskCompleted];
  }

  _Block_object_dispose(&v12, 8);
}

void sub_100033D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100033DA0(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v1 = sub_100098A04();
  result = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    return _os_log_send_and_compose_impl();
  }

  return result;
}

NSXPCInterface *sub_1000344F8()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___W5XPCRequestDelegate];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startBrowsingAndReply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopBrowsingAndReply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startAdvertisingAndReply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopAdvertisingAndReply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startMonitoringEvents:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopMonitoringEvents:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryPeerCacheAndReply:", 0, 1];
  v1 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v1 ofReply:objc_opt_class() setWithObjects:?], "queryPeerCacheAndReply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryLocalPeerAndReply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryLocalPeerAndReply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryStatusForPeer:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryStatusForPeer:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryStatusForPeer:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "listFilesFromPeer:remoteDirPath:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "listFilesFromPeer:remoteDirPath:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "listFilesFromPeer:remoteDirPath:reply:", 0, 1];
  v2 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v2 ofReply:objc_opt_class() setWithObjects:?], "listFilesFromPeer:remoteDirPath:reply:", 1, 1];
  v3 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v3 ofReply:objc_opt_class() setWithObjects:?], "runDiagnostics:configuration:uuid:reply:", 0, 0];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v4 ofReply:v5 setWithObjects:v6, v7, v8, objc_opt_class(), 0], "runDiagnostics:configuration:uuid:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runDiagnostics:configuration:uuid:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runDiagnostics:configuration:uuid:reply:", 0, 1];
  v9 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v9 ofReply:objc_opt_class() setWithObjects:?], "runDiagnostics:configuration:uuid:reply:", 1, 1];
  v10 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v10 ofReply:objc_opt_class() setWithObjects:?], "runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:", 0, 0];
  v11 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v11 ofReply:objc_opt_class() setWithObjects:?], "runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:", 1, 0];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v12 ofReply:v13 setWithObjects:v14, v15, v16, objc_opt_class(), 0], "runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:", 3, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:", 0, 1];
  v17 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v17 ofReply:objc_opt_class() setWithObjects:?], "runDiagnosticsForPeer:diagnostics:configuration:uuid:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "registerRemoteDiagnosticEventsForPeer:configuration:reply:", 0, 0];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v18 ofReply:v19 setWithObjects:v20, v21, objc_opt_class(), 0], "registerRemoteDiagnosticEventsForPeer:configuration:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "registerRemoteDiagnosticEventsForPeer:configuration:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "unregisterRemoteDiagnosticEventsForPeer:configuration:reply:", 0, 0];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v22 ofReply:v23 setWithObjects:v24, v25, objc_opt_class(), 0], "unregisterRemoteDiagnosticEventsForPeer:configuration:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "unregisterRemoteDiagnosticEventsForPeer:configuration:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryRegisteredDiagnosticsPeersWithReply:", 0, 1];
  v26 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v26 ofReply:objc_opt_class() setWithObjects:?], "queryRegisteredDiagnosticsPeersWithReply:", 1, 1];
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v27 ofReply:v28 setWithObjects:v29, v30, v31, v32, objc_opt_class(), 0], "startDiagnosticsModeWithConfiguration:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startDiagnosticsModeWithConfiguration:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startDiagnosticsModeWithConfiguration:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopDiagnosticsModeWithUUID:info:reply:", 0, 0];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v33 ofReply:v34 setWithObjects:v35, v36, v37, v38, objc_opt_class(), 0], "stopDiagnosticsModeWithUUID:info:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopDiagnosticsModeWithUUID:info:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryDiagnosticsModeForPeer:info:reply:", 0, 0];
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v39 ofReply:v40 setWithObjects:v41, objc_opt_class(), 0], "queryDiagnosticsModeForPeer:info:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryDiagnosticsModeForPeer:info:reply:", 0, 1];
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v42 ofReply:v43 setWithObjects:v44, v45, v46, objc_opt_class(), 0], "queryDiagnosticsModeForPeer:info:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryDebugConfigurationForPeer:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryDebugConfigurationForPeer:reply:", 0, 1];
  v47 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v47 ofReply:objc_opt_class() setWithObjects:?], "queryDebugConfigurationForPeer:reply:", 1, 1];
  v48 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v48 ofReply:objc_opt_class() setWithObjects:?], "setDebugConfiguration:peer:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "setDebugConfiguration:peer:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "setDebugConfiguration:peer:reply:", 0, 1];
  v49 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v49 ofReply:objc_opt_class() setWithObjects:?], "collectLogs:configuration:uuid:reply:", 0, 0];
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v50 ofReply:v51 setWithObjects:v52, v53, v54, v55, v56, objc_opt_class(), 0], "collectLogs:configuration:uuid:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "collectLogs:configuration:uuid:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "collectLogs:configuration:uuid:reply:", 0, 1];
  v57 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v57 ofReply:objc_opt_class() setWithObjects:?], "collectLogs:configuration:uuid:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "collectLogs:configuration:uuid:reply:", 2, 1];
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v58 ofReply:v59 setWithObjects:v60, v61, v62, v63, v64, objc_opt_class(), 0], "collectLogsDiagnosticMode:uuid:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "collectLogsDiagnosticMode:uuid:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "collectLogsDiagnosticMode:uuid:reply:", 0, 1];
  v65 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v65 ofReply:objc_opt_class() setWithObjects:?], "collectLogsDiagnosticMode:uuid:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "collectLogsDiagnosticMode:uuid:reply:", 2, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startPeerDiscoveryWithConfiguration:uuid:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startPeerDiscoveryWithConfiguration:uuid:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startPeerDiscoveryWithConfiguration:uuid:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopPeerDiscoveryWithUUID:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopPeerDiscoveryWithUUID:reply:", 0, 1];
  v66 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v66 ofReply:objc_opt_class() setWithObjects:?], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 3, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 0, 1];
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v67 ofReply:v68 setWithObjects:v69, objc_opt_class(), 0], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 1, 1];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v70 ofReply:v71 setWithObjects:v72, objc_opt_class(), 0], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 2, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferOnChannels:duration:peer:uuid:reply:", 3, 1];
  v73 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v73 ofReply:objc_opt_class() setWithObjects:?], "runWiFiSnifferWithTCPDumpOnChannels:duration:peer:uuid:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferWithTCPDumpOnChannels:duration:peer:uuid:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferWithTCPDumpOnChannels:duration:peer:uuid:reply:", 3, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiSnifferWithTCPDumpOnChannels:duration:peer:uuid:reply:", 0, 1];
  v74 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v74 ofReply:objc_opt_class() setWithObjects:?], "runWiFiSnifferWithTCPDumpOnChannels:duration:peer:uuid:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startNetworkDiscoveryOnPeer:configuration:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startNetworkDiscoveryOnPeer:configuration:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startNetworkDiscoveryOnPeer:configuration:reply:", 0, 1];
  v75 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v75 ofReply:objc_opt_class() setWithObjects:?], "startNetworkDiscoveryOnPeer:configuration:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "associateToNetworkOnPeer:scanResult:configuration:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "associateToNetworkOnPeer:scanResult:configuration:reply:", 1, 0];
  v76 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v76 ofReply:objc_opt_class() setWithObjects:?], "associateToNetworkOnPeer:scanResult:configuration:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "associateToNetworkOnPeer:scanResult:configuration:reply:", 0, 1];
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v77 ofReply:v78 setWithObjects:v79, v80, v81, objc_opt_class(), 0], "runWiFiPerformanceLoggingWithConfiguration:uuid:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiPerformanceLoggingWithConfiguration:uuid:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "runWiFiPerformanceLoggingWithConfiguration:uuid:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelRequestWithUUID:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelRequestWithUUID:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelRequestWithUUID:OnPeer:OfType:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelRequestWithUUID:OnPeer:OfType:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelRequestWithUUID:OnPeer:OfType:reply:", 2, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelRequestWithUUID:OnPeer:OfType:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "cancelAllRequestsAndReply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "log:timestamp:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startMonitoringFaultEventsForPeer:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "startMonitoringFaultEventsForPeer:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopMonitoringFaultEventsForPeer:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "stopMonitoringFaultEventsForPeer:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "submitFaultEvent:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "submitFaultEvent:reply:", 0, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryFaultEventCacheForPeer:reply:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryFaultEventCacheForPeer:reply:", 0, 1];
  v82 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v82 ofReply:objc_opt_class() setWithObjects:?], "queryFaultEventCacheForPeer:reply:", 1, 1];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryDatabaseForPeer:fetch:reply:", 0, 0];
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v83 ofReply:v84 setWithObjects:0], "queryDatabaseForPeer:fetch:reply:", 1, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "queryDatabaseForPeer:fetch:reply:", 0, 1];
  v85 = objc_opt_class();
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = objc_opt_class();
  v90 = objc_opt_class();
  v91 = objc_opt_class();
  [(NSXPCInterface *)v0 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v85 ofReply:v86 setWithObjects:v87, v88, v89, v90, v91, objc_opt_class(), 0], "queryDatabaseForPeer:fetch:reply:", 1, 1];
  return v0;
}

NSXPCInterface *sub_1000363F8()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___W5XPCEventDelegate];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "receivedEvent:", 0, 0];
  [(NSXPCInterface *)v0 setClasses:[NSSet setWithObjects:?], "receivedPeerDiscoveryEvent:", 0, 0];
  return v0;
}

id sub_1000365D8(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 32) + 16) "corewifi")];
  v3 = *(a1 + 32);
  v4 = [v3 __initialTests];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036684;
  v6[3] = &unk_1000E2508;
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  return [v3 __runDiagnosticsTests:v4 reply:v6];
}

void sub_100036684(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_100036700;
  block[3] = &unk_1000E24E0;
  v6 = a2;
  v5 = v2;
  dispatch_async(v3, block);
}

void sub_100036700(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 48) == 1)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v3 = *(a1 + 32);
    if (v4 > *(v3 + 56))
    {
      v5 = *(a1 + 48);
      if (v5 < 1)
      {
        *(v3 + 64) = v5;
        v9 = *(*(a1 + 32) + 40);
        v10 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else
      {
        v6 = dispatch_time(0, 2000000000);
        v11[0] = _NSConcreteStackBlock;
        v7 = *(a1 + 32);
        v8 = *(*(a1 + 32) + 8);
        v11[1] = 3221225472;
        v11[2] = sub_100036814;
        v11[3] = &unk_1000E1C98;
        v12 = v7;
        dispatch_after(v6, v8, v11);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100036814(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 48) == 1)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v3 = *(a1 + 32);
    if (v4 > v3[7])
    {
      v5 = [*(a1 + 32) __followupTests];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000368E4;
      v6[3] = &unk_1000E2508;
      v7 = *(a1 + 32);
      [v3 __runDiagnosticsTests:v5 reply:v6];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000368E4(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_100036960;
  block[3] = &unk_1000E24E0;
  v6 = a2;
  v5 = v2;
  dispatch_async(v3, block);
}

void sub_100036960(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1[4] + 48) == 1)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v3 = a1[4];
    if (v4 > *(v3 + 56))
    {
      v5 = a1[6];
      if (v5 >= 1 && v5 != *(v3 + 64))
      {
        v6 = +[NSMutableDictionary dictionary];
        [v6 setObject:objc_msgSend(objc_msgSend(*(a1[4] + 16) forKeyedSubscript:{"wifi"), "interfaceName"), @"InterfaceName"}];
        [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a1[6]), @"WiFiDropReason"}];
        v7 = a1[5] ? [objc_msgSend(objc_msgSend(*(a1[4] + 24) "diagnosticsHistory")] : 0;
        [v6 setObject:v7 forKeyedSubscript:@"DiagnosticsTestResults"];
        v8 = objc_alloc_init(W5Event);
        [v8 setEventID:35];
        +[NSDate timeIntervalSinceReferenceDate];
        [v8 setTimestamp:?];
        [v8 setInfo:v6];
        v3 = a1[4];
        v9 = *(v3 + 72);
        if (v9)
        {
          (*(v9 + 16))(v9, v8);
          v3 = a1[4];
        }
      }

      *(v3 + 64) = a1[6];
      v10 = *(a1[4] + 40);
      v11 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100036C68(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 72) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100036D90(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v15 = a1;
    v7 = 7;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (([v10 didPass] & 1) == 0)
        {
          v11 = [v10 testID];
          if (v11 > 8)
          {
            switch(v11)
            {
              case 9:
                if (v7 >= 4)
                {
                  v7 = 4;
                }

                break;
              case 11:
                if (v7 >= 6)
                {
                  v7 = 6;
                }

                break;
              case 52:
                v7 = 1;
                break;
            }
          }

          else if (v11 == 3)
          {
            if (v7 >= 2)
            {
              v7 = 2;
            }
          }

          else if (v11 == 6)
          {
            if (v7 >= 3)
            {
              v7 = 3;
            }
          }

          else if (v11 == 7 && v7 >= 5)
          {
            v7 = 5;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v12 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v12;
    }

    while (v12);
    if (v7 >= 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    a1 = v15;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036FA8;
  block[3] = &unk_1000E2530;
  block[5] = *(a1 + 40);
  block[6] = v13;
  block[4] = a3;
  dispatch_async(v14, block);
}

void sub_100036FA8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[4]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100037270(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 48) & 1) == 0)
  {
    *(v3 + 48) = 1;
    v4 = *(*(a1 + 32) + 40);
    if (v4)
    {
      dispatch_source_set_timer(v4, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100037350(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 48) == 1)
  {
    *(v3 + 48) = 0;
    v4 = *(*(a1 + 32) + 40);
    if (v4)
    {
      dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100037430(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v3 = *(a1 + 32);
  }

  *(v3 + 56) = 0x7FEFFFFFFFFFFFFFLL;

  objc_autoreleasePoolPop(v2);
}

void sub_10003750C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 48) == 1)
  {
    v4 = *(v3 + 56);
    +[NSDate timeIntervalSinceReferenceDate];
    v5 = *(a1 + 40);
    if (v4 > v6 + v5)
    {
      v7 = *(*(a1 + 32) + 40);
      if (v7)
      {
        v8 = dispatch_time(0, ((v5 + 1.0) * 1000000000.0));
        dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 56) = v9 + *(a1 + 40);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100037C90(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 32) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100037D8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 40) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100037EB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    v4 = *(a1 + 32);
    out_token = 0;
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100037FF0;
    handler[3] = &unk_1000E2580;
    handler[4] = v5;
    notify_register_dispatch("com.apple.system.powersources.source", &out_token, v6, handler);
    *(*(a1 + 32) + 16) = out_token;
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000381F8;
    v9[3] = &unk_1000E2580;
    v9[4] = v7;
    notify_register_dispatch("com.apple.system.powersources.lowbattery", &out_token, v8, v9);
    *(*(a1 + 32) + 20) = out_token;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100037FF0(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038078;
  block[3] = &unk_1000E1CE8;
  block[4] = *(a1 + 32);
  dispatch_async(global_queue, block);
}

void sub_100038078(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:15];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  v5[0] = @"PowerSourceType";
  v6[0] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) powerSourceType]);
  v5[1] = @"BatteryEstimatedTime";
  [*(a1 + 32) estimatedTimeRemaining];
  v6[1] = [NSNumber numberWithDouble:?];
  v5[2] = @"BatteryLevel";
  [*(a1 + 32) internalBatteryLevel];
  v6[2] = [NSNumber numberWithDouble:?];
  v5[3] = @"BatteryWarningLevel";
  v6[3] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) batteryWarningLevel]);
  [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v6, v5, 4)}];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000381F8(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038280;
  block[3] = &unk_1000E1CE8;
  block[4] = *(a1 + 32);
  dispatch_async(global_queue, block);
}

void sub_100038280(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:17];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  v5[0] = @"PowerSourceType";
  v6[0] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) powerSourceType]);
  v5[1] = @"BatteryEstimatedTime";
  [*(a1 + 32) estimatedTimeRemaining];
  v6[1] = [NSNumber numberWithDouble:?];
  v5[2] = @"BatteryLevel";
  [*(a1 + 32) internalBatteryLevel];
  v6[2] = [NSNumber numberWithDouble:?];
  v5[3] = @"BatteryWarningLevel";
  v6[3] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) batteryWarningLevel]);
  [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v6, v5, 4)}];
  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100038474(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 0;
    notify_cancel(*(*(a1 + 32) + 16));
    notify_cancel(*(*(a1 + 32) + 20));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000386E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = IOPSGetTimeRemainingEstimate();

  objc_autoreleasePoolPop(v2);
}

void sub_1000387D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = IOPSGetProvidingPowerSourceType(0);
  if (([(__CFString *)v3 isEqualToString:@"AC Power"]& 1) != 0)
  {
    v4 = 1;
  }

  else if (([(__CFString *)v3 isEqualToString:@"Battery Power"]& 1) != 0)
  {
    v4 = 2;
  }

  else
  {
    if (![(__CFString *)v3 isEqualToString:@"UPS Power"])
    {
      goto LABEL_8;
    }

    v4 = 3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
LABEL_8:

  objc_autoreleasePoolPop(v2);
}

void sub_10003892C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = IOPSGetBatteryWarningLevel();

  objc_autoreleasePoolPop(v2);
}

void sub_100038AD8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5DebugConfiguration);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3052000000;
  v53 = sub_100039368;
  v54 = sub_100039378;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = sub_100039368;
  v44 = sub_100039378;
  v45 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = *(a1 + 32);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100039384;
  v39[3] = &unk_1000E1A38;
  v39[5] = &v50;
  v39[6] = &v46;
  v39[4] = v4;
  [v5 queryWiFiDebugLoggingAndReply:v39];
  v6 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v6) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9)
  {
    goto LABEL_48;
  }

  if (*(v47 + 24))
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v11 = *(a1 + 32);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000393DC;
  v38[3] = &unk_1000E1A38;
  v38[5] = &v50;
  v38[6] = &v46;
  v38[4] = v4;
  [v11 __queryMegaWiFiProfileInstalledAndReply:v38];
  v12 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v12) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9)
  {
    goto LABEL_48;
  }

  if (*(v47 + 24))
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = *(a1 + 32);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100039434;
  v37[3] = &unk_1000E1A38;
  v37[5] = &v50;
  v37[6] = &v46;
  v37[4] = v4;
  [v14 __queryNoLoggingWiFiProfileInstalledAndReply:v37];
  v15 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v15) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9)
  {
    goto LABEL_48;
  }

  if (*(v47 + 24))
  {
    v16 = 1;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(a1 + 32);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10003948C;
  v36[3] = &unk_1000E1A38;
  v36[5] = &v50;
  v36[6] = &v46;
  v36[4] = v4;
  [v17 queryEAPOLDebugLoggingAndReply:v36];
  v18 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v18) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9)
  {
    goto LABEL_48;
  }

  if (*(v47 + 24))
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  v20 = *(a1 + 32);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000394E4;
  v35[3] = &unk_1000E1A38;
  v35[5] = &v50;
  v35[6] = &v46;
  v35[4] = v4;
  [v20 queryBluetoothDebugLoggingAndReply:v35];
  v21 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v21) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9)
  {
    goto LABEL_48;
  }

  if (*(v47 + 24))
  {
    v22 = 1;
  }

  else
  {
    v22 = -1;
  }

  v23 = *(a1 + 32);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10003953C;
  v34[3] = &unk_1000E1A38;
  v34[5] = &v50;
  v34[6] = &v46;
  v34[4] = v4;
  [v23 querySTBCAndReply:v34];
  v24 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v24) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9)
  {
    goto LABEL_48;
  }

  v25 = *(v47 + 24) ? 1 : -1;
  v26 = *(a1 + 32);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100039594;
  v33[3] = &unk_1000E25A8;
  v33[5] = &v50;
  v33[6] = &v40;
  v33[4] = v4;
  [v26 queryDiagnosticsModeAndReply:v33];
  v27 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v4, v27) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v57 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v8 = v51;
  v9 = v51[5];
  if (v9 || (v28 = [W5DebugConfiguration alloc], v7 = [v28 initDiagnosticsMode:v41[5] wifiState:v10 megaWiFiProfileState:v13 noLoggingWiFiProfileState:v16 eapolState:v19 bluetoothState:v22 stbcState:v25], v8 = v51, (v9 = v51[5]) != 0))
  {
LABEL_48:
    v29 = *(a1 + 40);
    if (v29)
    {
      v30 = [v9 copy];
      v7 = 0;
LABEL_52:
      (*(v29 + 16))(v29, v30, v7);
      v8 = v51;
    }
  }

  else
  {
    v29 = *(a1 + 40);
    if (v29)
    {
      v30 = 0;
      goto LABEL_52;
    }
  }

  v31 = v8[5];
  v32 = v41[5];
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  objc_autoreleasePoolPop(v2);
}

intptr_t sub_100039384(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_1000393DC(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_100039434(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_10003948C(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_1000394E4(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_10003953C(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 24) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_100039594(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void sub_1000397F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10003981C(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a3 copy];
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void sub_1000398F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = sub_100039368;
  v41 = sub_100039378;
  v42 = 0;
  v3 = dispatch_semaphore_create(0);
  if (![*(a1 + 32) wifi])
  {
    goto LABEL_40;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) wifi] == 1;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10003A118;
  v36[3] = &unk_1000E25F8;
  v36[4] = v3;
  v36[5] = &v37;
  [v4 setWiFiDebugLoggingEnabled:v5 reply:v36];
  v6 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v3, v6) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v44 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  if (!v38[5])
  {
LABEL_40:
    if (![*(a1 + 32) megaWiFiProfile])
    {
      goto LABEL_41;
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) megaWiFiProfile] == 1;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10003A160;
    v35[3] = &unk_1000E25F8;
    v35[4] = v3;
    v35[5] = &v37;
    [v7 __setMegaWiFiProfileInstalled:v8 reply:v35];
    v9 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v3, v9) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v44 = 0x4010000000000000;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
    }

    if (!v38[5])
    {
LABEL_41:
      if (![*(a1 + 32) noLoggingWiFiProfile])
      {
        goto LABEL_42;
      }

      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) noLoggingWiFiProfile] == 1;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10003A1A8;
      v34[3] = &unk_1000E25F8;
      v34[4] = v3;
      v34[5] = &v37;
      [v10 __setNoLoggingWiFiProfileInstalled:v11 reply:v34];
      v12 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v3, v12) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v44 = 0x4010000000000000;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
      }

      if (!v38[5])
      {
LABEL_42:
        if (![*(a1 + 32) eapol])
        {
          goto LABEL_43;
        }

        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) eapol] == 1;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10003A1F0;
        v33[3] = &unk_1000E25F8;
        v33[4] = v3;
        v33[5] = &v37;
        [v13 setEAPOLDebugLoggingEnabled:v14 reply:v33];
        v15 = dispatch_time(0, 4000000000);
        if (dispatch_semaphore_wait(v3, v15) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v44 = 0x4010000000000000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
        }

        if (!v38[5])
        {
LABEL_43:
          if ([*(a1 + 32) bluetooth])
          {
            v16 = *(a1 + 40);
            v17 = [*(a1 + 32) bluetooth] == 1;
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10003A238;
            v32[3] = &unk_1000E25F8;
            v32[4] = v3;
            v32[5] = &v37;
            [v16 setBluetoothDebugLoggingEnabled:v17 reply:v32];
            v18 = dispatch_time(0, 4000000000);
            if (dispatch_semaphore_wait(v3, v18) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              v44 = 0x4010000000000000;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
            }
          }

          if ([*(a1 + 32) stbc])
          {
            v19 = *(a1 + 40);
            v20 = [*(a1 + 32) stbc] == 1;
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_10003A280;
            v31[3] = &unk_1000E25F8;
            v31[4] = v3;
            v31[5] = &v37;
            [v19 setSTBCEnabled:v20 reply:v31];
            v21 = dispatch_time(0, 4000000000);
            if (dispatch_semaphore_wait(v3, v21) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              v44 = 0x4010000000000000;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
            }
          }

          v22 = sub_100098A04();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [*(a1 + 32) diagnosticsMode];
            *buf = 136315906;
            v44 = "[W5DebugManager setDebugConfiguration:reply:]_block_invoke";
            v45 = 2080;
            v46 = "W5DebugManager.m";
            v47 = 1024;
            v48 = 341;
            v49 = 2114;
            v50 = v23;
            LODWORD(v29) = 38;
            v28 = buf;
            _os_log_send_and_compose_impl();
          }

          if ([*(a1 + 32) diagnosticsMode])
          {
            v24 = *(a1 + 40);
            v25 = [*(a1 + 32) diagnosticsMode];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10003A2C8;
            v30[3] = &unk_1000E25F8;
            v30[4] = v3;
            v30[5] = &v37;
            [v24 setDiagnosticsMode:v25 reply:v30];
            v26 = dispatch_time(0, 4000000000);
            if (dispatch_semaphore_wait(v3, v26) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              v44 = 0x4010000000000000;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, [v38[5] copy]);
  }

  _Block_object_dispose(&v37, 8);
  objc_autoreleasePoolPop(v2);
}

intptr_t sub_10003A118(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10003A160(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10003A1A8(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10003A1F0(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10003A238(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10003A280(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10003A2C8(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_10003A424(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) activeDiagnostics];
  if (v3)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003A530(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = *(a1[4] + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003A5C4;
  v5[3] = &unk_1000E1C48;
  v5[4] = a1[6];
  [v4 updateDiagnosticsMode:v3 reply:v5];
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10003A5C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003A8A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = WiFiManagerClientCreate();
  v4 = WiFiManagerClientCopyProperty();
  if (v4)
  {
    v5 = v4;
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [[OSLogPreferencesSubsystem alloc] initWithName:@"com.apple.WiFiManager"];
  if (!v6 || (v8 = v7, [v7 effectiveEnabledLevel] != 4))
  {
    v9 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [v8 effectivePersistedLevel] == 4;
  if (v3)
  {
LABEL_9:
    CFRelease(v3);
  }

LABEL_10:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003AA44(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = WiFiManagerClientCreate();
  v4 = &kCFBooleanTrue;
  if (!*(a1 + 48))
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;
  WiFiManagerClientSetProperty();
  v6 = [[OSLogPreferencesSubsystem alloc] initWithName:@"com.apple.WiFiManager"];
  v7 = v6;
  if (*(a1 + 48))
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  [v6 setPersistedLevel:v8];
  if (*(a1 + 48))
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  [v7 setEnabledLevel:v9];
  if (*(a1 + 48))
  {
    v10 = @"debug";
  }

  else
  {
    v10 = @"inherit";
  }

  [*(a1 + 32) setOSLogPreferenceLevel:v10 enableOvserizeMessages:1 subsystem:@"com.apple.WiFiManager"];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}
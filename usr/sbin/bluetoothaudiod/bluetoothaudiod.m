void sub_100006F40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_100007EC4()
{
  v0 = +[NSNotificationCenter defaultCenter];
  v1 = [v0 addObserverForName:NSUserDefaultsDidChangeNotification object:0 queue:0 usingBlock:&stru_100094C18];

  sub_100007F34();
}

void sub_100007F34()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 objectForKey:@"EnableSignposts"];

  byte_1000A9FD8 = [v1 BOOLValue];
}

void sub_100009CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009CCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 UUID];
  v7 = [CBUUID UUIDWithString:CBUUIDAudioInputControlServiceString];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = v5;
    v10 = [v9 getAudioInputType];
    if (v10 == *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) |= [v9 sendGainSetting:*(a1 + 41)];
    }

    else
    {
      v11 = v10;
      v12 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B858(v11, v12);
      }
    }
  }
}

void sub_100009E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009E98(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 UUID];
  v7 = [CBUUID UUIDWithString:CBUUIDVolumeOffsetControlServiceString];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = v5;
    v10 = [v9 getAudioLocation];
    if (v10 == *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) |= [v9 sendVolumeOffset:*(a1 + 44)];
    }

    else
    {
      v11 = v10;
      v12 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B8D0(v11, v12);
      }
    }
  }
}

void sub_10000A8D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_10000B444(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Waiting for Records to be populated", buf, 2u);
  }

  v3 = [*(a1 + 32) recordSemaphore];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending device attributes", v6, 2u);
  }

  return [*(a1 + 32) sendDeviceAttributes];
}

uint64_t sub_10000E1C4(char *category)
{
  qword_1000A9FE0 = os_log_create("com.apple.bluetooth", category);

  return _objc_release_x1();
}

id sub_10000E8C0(uint64_t a1)
{
  [*(a1 + 32) cancelProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 procedureTimeoutTimerFired];
}

id sub_10000EA84(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCAPProcedure];
  [v2 setNextEvent:2];

  v3 = *(a1 + 32);

  return [v3 processSM:0];
}

void sub_10000F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak((v49 + 40));
  objc_destroyWeak((v53 + 40));
  objc_destroyWeak((v52 + 40));
  objc_destroyWeak((v51 + 40));
  objc_destroyWeak((v50 + 40));
  objc_destroyWeak(&a49);
  objc_destroyWeak((v54 - 136));
  _Unwind_Resume(a1);
}

void sub_10000F320(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = [v9 sessionID];
  if (a2)
  {
    [v9 createISOPathForSession:v10 withDirection:a5 forCigID:a3 forCisID:a4];
  }

  else
  {
    [v9 removeISOPathForSession:v10 withDirection:a5 forCigID:a3 forCisID:a4];
  }
}

void sub_10000F3C4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [*(a1 + 32) currentCAPProcedure];

  if (a3 && v6)
  {
    if ((a2 - 1) >= 8u)
    {
      v7 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005BB34(v7);
      }
    }

    else
    {
      [*(a1 + 32) setProcedureStatus:a3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F4F0;
      block[3] = &unk_100094D70;
      v10 = 0x2B2228251B16110CuLL >> (8 * ((a2 - 1) & 0x1Fu));
      block[4] = *(a1 + 32);
      objc_copyWeak(&v9, (a1 + 40));
      dispatch_async(&_dispatch_main_q, block);
      objc_destroyWeak(&v9);
    }
  }
}

void sub_10000F4F0(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005BBDC(a1, v2);
  }

  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_10000F568(uint64_t a1, int a2, int a3, int a4)
{
  if (!a4)
  {
    return;
  }

  v7 = [*(a1 + 32) currentCAPProcedure];

  if (!v7)
  {
    return;
  }

  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (a3 == 2)
        {
          v19 = 20;
          goto LABEL_28;
        }

        if (a3 != 3)
        {
          v22 = qword_1000A9FE0;
          if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          goto LABEL_33;
        }
      }

      else if (a3 != 4)
      {
        if (a3 == 3)
        {
          v8 = [*(a1 + 32) currentCAPProcedure];
          v9 = [v8 currentState];

          v10 = qword_1000A9FE0;
          v11 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
          if (v9 <= 0xA)
          {
            if (v11)
            {
              v12 = v10;
              WeakRetained = objc_loadWeakRetained((a1 + 40));
              v14 = [WeakRetained peripheral];
              v15 = [v14 identifier];
              *buf = 138412290;
              v34 = v15;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Peripheral %@ transitioned to Streaming before CIS was established", buf, 0xCu);
            }

            return;
          }

          if (v11)
          {
            v23 = v10;
            v24 = objc_loadWeakRetained((a1 + 40));
            v25 = [v24 peripheral];
            v26 = [v25 identifier];
            v27 = objc_loadWeakRetained((a1 + 40));
            v28 = [v27 requiresInput];
            v29 = objc_loadWeakRetained((a1 + 40));
            *buf = 138412802;
            v34 = v26;
            v35 = 1024;
            v36 = v28;
            v37 = 1024;
            v38 = [v29 pendingStateTransition];
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Peripheral %@ requiresInput = %d, pendingStateTransition = %d", buf, 0x18u);
          }

          v19 = 25;
LABEL_28:
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000F938;
          block[3] = &unk_100094D70;
          v32 = v19;
          block[4] = *(a1 + 32);
          objc_copyWeak(&v31, (a1 + 40));
          dispatch_async(&_dispatch_main_q, block);
          objc_destroyWeak(&v31);
          return;
        }

        v22 = qword_1000A9FE0;
        if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_33:
        sub_10005BC8C(v22);
        return;
      }

      v19 = 32;
      goto LABEL_28;
    }

    if (a2 == 5)
    {
      v19 = 35;
      goto LABEL_28;
    }

    if (a2 == 6)
    {
      return;
    }

    goto LABEL_18;
  }

  switch(a2)
  {
    case 0:
      v19 = 41;
      goto LABEL_28;
    case 1:
      v18 = a3 == 6;
      v19 = 10;
      v20 = 41;
      goto LABEL_26;
    case 2:
      v16 = [*(a1 + 32) currentCAPProcedure];
      v17 = [v16 currentStateMachine];

      if (v17 == &unk_1000A9AC8)
      {
        v19 = 15;
        goto LABEL_28;
      }

      v18 = a3 == 5;
      v19 = 35;
      v20 = 38;
LABEL_26:
      if (v18)
      {
        v19 = v20;
      }

      goto LABEL_28;
  }

LABEL_18:
  v21 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005BD34(v21);
  }
}

void sub_10000F938(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [ClientCommonAudioProfile eventToString:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ASE Updated. Next event %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_10000FA38(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock Handler Result %ld \n", buf, 0xCu);
  }

  v5 = [*(a1 + 32) currentCAPProcedure];

  if (v5)
  {
    if (a2)
    {
      [*(a1 + 32) setProcedureStatus:a2];
      v6 = 6;
    }

    else
    {
      v6 = 3;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FB90;
    block[3] = &unk_100094D70;
    v9 = v6;
    block[4] = *(a1 + 32);
    objc_copyWeak(&v8, (a1 + 40));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
  }
}

void sub_10000FB90(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [ClientCommonAudioProfile eventToString:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock Updated. Next event %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_10000FC90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 <= 11)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v59 = [v5 objectForKey:@"kMicrophoneMute"];

        if (v59)
        {
          v60 = [v6 objectForKeyedSubscript:@"kMicrophoneMute"];
          v61 = [v60 unsignedCharValue];

          v10 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v72) = v61;
            v11 = "Updated Microphone Mute Handler 0x%02x \n";
            goto LABEL_54;
          }
        }

        goto LABEL_56;
      }

      if (a2 != 11)
      {
        goto LABEL_56;
      }

      v12 = [v5 objectForKey:@"kGainSetting"];

      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"kGainSetting"];
        v14 = [v13 charValue];

        v15 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v72) = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updated Gain Setting Handler %d \n", buf, 8u);
        }
      }

      v16 = [v6 objectForKey:@"kAudioInputMute"];

      if (v16)
      {
        v17 = [v6 objectForKeyedSubscript:@"kAudioInputMute"];
        v18 = [v17 unsignedCharValue];

        v19 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v72) = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updated Audio Input Mute Handler 0x%02x \n", buf, 8u);
        }
      }

      v20 = [v6 objectForKey:@"kGainMode"];

      if (v20)
      {
        v21 = [v6 objectForKeyedSubscript:@"kGainMode"];
        v22 = [v21 unsignedCharValue];

        v23 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v72) = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated Gain Mode Handler 0x%02x \n", buf, 8u);
        }
      }

      v24 = [v6 objectForKey:@"kChangeCounter"];

      if (!v24)
      {
        goto LABEL_56;
      }

      v25 = [v6 objectForKeyedSubscript:@"kChangeCounter"];
      v26 = [v25 unsignedCharValue];

      v27 = qword_1000A9FE0;
      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 67109120;
      LODWORD(v72) = v26;
      v11 = "Updated Audio Input Change Counter Handler 0x%02x \n";
      goto LABEL_47;
    }

    v36 = [v5 objectForKey:@"kMicrophoneMute"];

    if (!v36)
    {
      goto LABEL_56;
    }

    v37 = [v6 objectForKeyedSubscript:@"kMicrophoneMute"];
    v38 = [v37 integerValue];

    v39 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v72 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Mute Write Handler Result %ld \n", buf, 0xCu);
    }

    v40 = [*(a1 + 32) currentCAPProcedure];
    v41 = v40 == 0;

    if (v41)
    {
      goto LABEL_56;
    }

    v42 = [*(a1 + 32) currentCAPProcedure];
    v43 = [v42 currentStateMachine] == &unk_1000A9B28;

    if (v43)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001063C;
      block[3] = &unk_100094D70;
      v70 = 48;
      block[4] = *(a1 + 32);
      objc_copyWeak(&v69, (a1 + 40));
      dispatch_async(&_dispatch_main_q, block);
      v62 = +[LEAudioXPCSession instance];
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v64 = [*(a1 + 32) currentCAPProcedure];
      [v62 microphoneMuteUpdated:WeakRetained withMute:{objc_msgSend(v64, "microphoneMute")}];

      objc_destroyWeak(&v69);
      goto LABEL_56;
    }

    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

LABEL_30:
    sub_10005BDDC();
    goto LABEL_56;
  }

  if (a2 <= 13)
  {
    if (a2 != 12)
    {
      v7 = [v5 objectForKey:@"kAudioInputType"];

      if (v7)
      {
        v8 = [v6 objectForKeyedSubscript:@"kAudioInputType"];
        v9 = [v8 unsignedCharValue];

        v10 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v72) = v9;
          v11 = "Updated Audio Input Type Handler 0x%02x \n";
LABEL_54:
          v55 = v10;
          goto LABEL_55;
        }
      }

      goto LABEL_56;
    }

    v44 = [v5 objectForKey:@"kGainSettingUnits"];

    if (v44)
    {
      v45 = [v6 objectForKeyedSubscript:@"kGainSettingUnits"];
      v46 = [v45 unsignedCharValue];

      v47 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v72) = v46;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Updated Gain Setting Units Handler 0x%02x \n", buf, 8u);
      }
    }

    v48 = [v6 objectForKey:@"kGainSettingMin"];

    if (v48)
    {
      v49 = [v6 objectForKeyedSubscript:@"kGainSettingMin"];
      v50 = [v49 charValue];

      v51 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v72) = v50;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Updated Gain Setting Min Handler %d \n", buf, 8u);
      }
    }

    v52 = [v6 objectForKey:@"kGainSettingMax"];

    if (!v52)
    {
      goto LABEL_56;
    }

    v53 = [v6 objectForKeyedSubscript:@"kGainSettingMax"];
    v54 = [v53 charValue];

    v27 = qword_1000A9FE0;
    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 67109120;
    LODWORD(v72) = v54;
    v11 = "Updated Gain Setting Max Handler %d \n";
LABEL_47:
    v55 = v27;
LABEL_55:
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v11, buf, 8u);
    goto LABEL_56;
  }

  if (a2 != 14)
  {
    if (a2 != 15)
    {
      goto LABEL_56;
    }

    v28 = [v5 objectForKey:@"kAudioInputControlPoint"];

    if (!v28)
    {
      goto LABEL_56;
    }

    v29 = [v6 objectForKeyedSubscript:@"kAudioInputControlPoint"];
    v30 = [v29 intValue];

    v31 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v72 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Audio Input Write Handler Result %ld \n", buf, 0xCu);
    }

    v32 = [*(a1 + 32) currentCAPProcedure];
    v33 = v32 == 0;

    if (v33)
    {
      goto LABEL_56;
    }

    v34 = [*(a1 + 32) currentCAPProcedure];
    v35 = [v34 currentStateMachine] == &unk_1000A9B50;

    if (v35)
    {
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10001073C;
      v65[3] = &unk_100094D70;
      v67 = 52;
      v65[4] = *(a1 + 32);
      objc_copyWeak(&v66, (a1 + 40));
      dispatch_async(&_dispatch_main_q, v65);
      objc_destroyWeak(&v66);
      goto LABEL_56;
    }

    if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  v56 = [v5 objectForKey:@"kAudioInputStatus"];

  if (v56)
  {
    v57 = [v6 objectForKeyedSubscript:@"kAudioInputStatus"];
    v58 = [v57 unsignedCharValue];

    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v72) = v58;
      v11 = "Updated Audio Input Status Handler 0x%02x \n";
      goto LABEL_54;
    }
  }

LABEL_56:
}

void sub_10001063C(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [ClientCommonAudioProfile eventToString:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Mute Changed. Next event %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_10001073C(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [ClientCommonAudioProfile eventToString:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Gain Setting Changed. Next event %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_10001083C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 9)
  {
    if (a2 != 10)
    {
      if (a2 != 20)
      {
        goto LABEL_45;
      }

      v13 = [v5 objectForKey:@"kVolumeOffsetControlPoint"];

      if (!v13)
      {
        goto LABEL_45;
      }

      v14 = [v6 objectForKeyedSubscript:@"kVolumeOffsetControlPoint"];
      v15 = [v14 intValue];

      v16 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v57 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Volume Offset Write Handler Result 0x%ld \n", buf, 0xCu);
      }

      v17 = [*(a1 + 32) currentCAPProcedure];
      v18 = v17 == 0;

      if (v18)
      {
        goto LABEL_45;
      }

      v19 = [*(a1 + 32) currentCAPProcedure];
      v20 = [v19 currentStateMachine] == &unk_1000A9BC8;

      if (v20)
      {
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100011054;
        v50[3] = &unk_100094D70;
        v52 = 50;
        v50[4] = *(a1 + 32);
        objc_copyWeak(&v51, (a1 + 40));
        dispatch_async(&_dispatch_main_q, v50);
        objc_destroyWeak(&v51);
        goto LABEL_45;
      }

      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

LABEL_15:
      sub_10005BDDC();
      goto LABEL_45;
    }

    v27 = [v5 objectForKey:@"kVolumeControlPoint"];

    if (!v27)
    {
      goto LABEL_45;
    }

    v28 = [v6 objectForKeyedSubscript:@"kVolumeControlPoint"];
    v29 = [v28 intValue];

    v30 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v57 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Change Volume Handler Result 0x%ld \n", buf, 0xCu);
    }

    v31 = [*(a1 + 32) currentCAPProcedure];
    v32 = v31 == 0;

    v33 = v29 == 128 || v32;
    if (v33)
    {
      goto LABEL_45;
    }

    v34 = [*(a1 + 32) currentCAPProcedure];
    v35 = [v34 currentStateMachine];

    if (v35 == &unk_1000A9B78)
    {
      v46 = 44;
    }

    else
    {
      v36 = [*(a1 + 32) currentCAPProcedure];
      v37 = [v36 currentStateMachine] == &unk_1000A9BA0;

      if (!v37)
      {
        if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        goto LABEL_15;
      }

      v46 = 46;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010F54;
    block[3] = &unk_100094D70;
    v55 = v46;
    block[4] = *(a1 + 32);
    objc_copyWeak(&v54, (a1 + 40));
    dispatch_async(&_dispatch_main_q, block);
    +[LEAudioXPCSession instance];
    if (v35 == &unk_1000A9B78)
      v47 = {;
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v49 = [*(a1 + 32) currentCAPProcedure];
      [v47 volumeUpdated:WeakRetained withVolume:{objc_msgSend(v49, "volume")}];
    }

    else
      v47 = {;
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v49 = [*(a1 + 32) currentCAPProcedure];
      [v47 volumeMuteUpdated:WeakRetained withMute:{objc_msgSend(v49, "volumeMute")}];
    }

    objc_destroyWeak(&v54);
    goto LABEL_45;
  }

  if (a2 == 8)
  {
    v21 = [v5 objectForKey:@"kVolumeSetting"];

    if (v21)
    {
      v22 = [v6 objectForKeyedSubscript:@"kVolumeSetting"];
      v23 = [v22 unsignedCharValue];

      v24 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v57) = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updated Volume Setting Handler %d \n", buf, 8u);
      }

      v25 = +[LEAudioXPCSession instance];
      v26 = objc_loadWeakRetained((a1 + 40));
      [v25 volumeUpdated:v26 withVolume:v23];
    }

    else
    {
      v38 = [v6 objectForKey:@"kVolumeMute"];

      if (v38)
      {
        v39 = [v6 objectForKeyedSubscript:@"kVolumeMute"];
        v40 = [v39 unsignedCharValue];

        v41 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v57) = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Updated Volume Mute Handler 0x%02x \n", buf, 8u);
        }
      }

      v42 = [v6 objectForKey:@"kChangeCounter"];

      if (v42)
      {
        v43 = [v6 objectForKeyedSubscript:@"kChangeCounter"];
        v44 = [v43 unsignedCharValue];

        v45 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v57) = v44;
          v11 = "Updated Volume Change Counter Handler 0x%02x \n";
          v12 = v45;
          goto LABEL_37;
        }
      }
    }
  }

  else if (a2 == 9)
  {
    v7 = [v5 objectForKey:@"kVolumeFlags"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"kVolumeFlags"];
      v9 = [v8 unsignedCharValue];

      v10 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v57) = v9;
        v11 = "Volume Flags Updated Handler 0x%02x \n";
        v12 = v10;
LABEL_37:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, 8u);
      }
    }
  }

LABEL_45:
}

void sub_100010F54(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [ClientCommonAudioProfile eventToString:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Volume (Mute) Changed. Next event %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_100011054(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [ClientCommonAudioProfile eventToString:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Volume Offset Changed. Next event %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 processAcceptorRsp:WeakRetained withEvent:*(a1 + 48)];
}

void sub_100011154(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) testMode])
  {
    v4 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Running in test mode. Skipping Publish HAL Device.", v5, 2u);
    }
  }

  else
  {
    [*(a1 + 32) publishHALDevice:v3];
  }
}

void sub_1000111E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained peripheral];
  v6 = [v5 identifier];
  [v3 sessionCompleteHandler:v6 withAttributes:v4];
}

void sub_1000157E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C010(v7, v5);
    }

    v8 = 14;
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully set CIG for ID: %@", buf, 0xCu);
    }

    v8 = 13;
  }

  v9 = [*(a1 + 32) currentCAPProcedure];

  if (v9)
  {
    v10 = [*(a1 + 32) currentCAPProcedure];
    [v10 setNextEvent:v8];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001596C;
    block[3] = &unk_100094CB8;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100015C34(uint64_t a1)
{
  v2 = [*(a1 + 32) connIsoGroup];
  v3 = [v2 cigParams];
  [v3 setCigID:255];

  v4 = [*(a1 + 32) connIsoGroup];
  [v4 setNumOfCIS:0];

  v5 = [*(a1 + 32) connIsoGroup];
  v6 = [v5 cisSet];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) connIsoGroup];
  [v7 setCurrentCisID:0];

  v8 = [*(a1 + 32) connIsoGroup];
  [v8 setTearDownInProgress:0];
}

void sub_1000162AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = v7;
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CIS Connection handler. error: %@ for CIG ID %@ CIS ID %@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      v34 = v11;
      v35 = [v7 description];
      v36 = [v7 code];
      *buf = 138413058;
      v40 = v9;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = v35;
      v45 = 2048;
      v46 = v36;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error connecting to CIS %@ in group CIG %@ with reason %@ and code %lu", buf, 0x2Au);
    }

    [*(a1 + 32) setProcedureStatus:{objc_msgSend(v7, "code")}];
    v12 = 24;
  }

  else
  {
    v13 = [*(a1 + 32) connIsoGroup];
    v14 = [v13 getCISwithID:{objc_msgSend(v9, "unsignedIntValue")}];

    if (v14)
    {
      [v14 setEstablished:1];
      v15 = [*(a1 + 32) connIsoGroup];
      [v15 setNumEstablishedCIS:{(objc_msgSend(v15, "numEstablishedCIS") + 1)}];

      v16 = [v14 sourceASE];

      if (v16)
      {
        v17 = *(a1 + 32);
        v18 = [v17 sessionID];
        [*(a1 + 32) connIsoGroup];
        v19 = v37 = v8;
        v20 = [v19 cigParams];
        v21 = [v20 cigID];
        v22 = [v14 cisParams];
        [v17 createISOPathForSession:v18 withDirection:0 forCigID:v21 forCisID:{objc_msgSend(v22, "cisID")}];

        v8 = v37;
      }

      v23 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CIS Connection successful.", buf, 2u);
      }

      v24 = [*(a1 + 32) currentCAPProcedure];
      if (!v24 || (v25 = v24, [*(a1 + 32) connIsoGroup], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "allCoupledCISEstablished"), v26, v25, !v27))
      {

        goto LABEL_25;
      }

      v28 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "All CIS(es) Established.", buf, 2u);
      }

      v12 = 23;
    }

    else
    {
      v29 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005C0CC(v29);
      }

      [*(a1 + 32) setProcedureStatus:20];
      v12 = 24;
    }
  }

  v30 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = [ClientCommonAudioProfile eventToString:v12];
    *buf = 138412290;
    v40 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "CIS Event Finished with next event %@", buf, 0xCu);
  }

  v33 = [*(a1 + 32) currentCAPProcedure];
  [v33 setNextEvent:v12];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016750;
  block[3] = &unk_100094CB8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
LABEL_25:
}

void sub_10001675C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnect CB for CIG %@ and CIS %@ callback with error %@", &v25, 0x20u);
  }

  v11 = [*(a1 + 32) connIsoGroup];
  v12 = [v11 getCISwithID:{objc_msgSend(v9, "unsignedIntValue")}];

  v13 = [v12 sinkASE];

  if (v13)
  {
    v14 = [v12 sinkASE];
    [v14 setCigID:255];

    v15 = [v12 sinkASE];
    [v15 setCisID:255];
  }

  v16 = [v12 sourceASE];

  if (v16)
  {
    v17 = [v12 sourceASE];
    [v17 setCigID:255];

    v18 = [v12 sourceASE];
    [v18 setCisID:255];
  }

  [v12 setDeviceID:0];
  v19 = [*(a1 + 32) connIsoGroup];
  v20 = [v19 numEstablishedCIS];

  if (v20)
  {
    v21 = [*(a1 + 32) connIsoGroup];
    [v21 setNumEstablishedCIS:{(objc_msgSend(v21, "numEstablishedCIS") - 1)}];
  }

  v22 = [*(a1 + 32) connIsoGroup];
  v23 = [v22 numEstablishedCIS];

  if (v23)
  {
    [v12 setEstablished:0];
  }

  else
  {
    v24 = [*(a1 + 32) connIsoGroup];
    [v24 removeCISwithID:{objc_msgSend(v9, "unsignedIntValue")}];

    [*(a1 + 32) tearDownCIG];
  }
}

id sub_100018738(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_100018A0C(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_100018CD0(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_100018F94(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_100019258(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_10001950C(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_1000197E8(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_100019A9C(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_100019D4C(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

id sub_10001A024(uint64_t a1)
{
  [*(a1 + 32) startProcedureTimeoutTimer];
  v2 = *(a1 + 32);

  return [v2 processSM:0];
}

int64_t sub_10001AD28(id a1, AcceptorInterface *a2, AcceptorInterface *a3)
{
  v4 = a3;
  LODWORD(a2) = [(AcceptorInterface *)a2 csisRank];
  v5 = [(AcceptorInterface *)v4 csisRank];

  if (a2 < v5)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_100024890(id a1)
{
  qword_1000AA000 = objc_alloc_init(LEAudioXPCListener);

  _objc_release_x1();
}

void sub_100024A88(id a1)
{
  v1 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005C61C(v1);
  }
}

uint64_t sub_1000251BC(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  dataOutMoved = 0;
  cryptorRef = 0;
  if (CCCryptorCreate(0, 0, 0, key, keyLength, 0, &cryptorRef))
  {
    printf("Could not create cryptor : %d\n");
  }

  else
  {
    v10 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &dataOutMoved);
    if (v10)
    {
      printf("Failed to encrypt : %d (need %d, got %zu)\n", v10, a6, dataOutMoved);
      CCCryptorRelease(cryptorRef);
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      if (dataOutMoved == a6)
      {
        return 0;
      }

      printf("Incorrect checksum size %ld, expecting %d\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000252A8(void *a1, size_t a2, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  v42[0] = 0;
  v42[1] = 0;
  v12 = a4 & 0xF;
  v41[0] = 0;
  v41[1] = 0;
  if (a4)
  {
    v13 = a4 & 0xF;
  }

  else
  {
    v13 = 16;
  }

  v40.i64[1] = 0;
  *(v40.i64 + 1) = 0;
  if (!sub_1000251BC(a1, a2, v42, 0x10u, v41, 0x10u))
  {
    LOBYTE(v14) = 0;
    v15 = 15;
    do
    {
      v16 = *(v41 + v15);
      v40.i8[v15] = v14 | (2 * v16);
      v14 = v16 >> 7;
      --v15;
    }

    while (v15);
    v39 = 0uLL;
    v40.i8[0] = v14 | (2 * LOBYTE(v41[0]));
    if (SLOBYTE(v41[0]) < 0)
    {
      v17 = veorq_s8(v40, xmmword_10006FFD0);
    }

    else
    {
      v17 = v40;
    }

    v39 = v17;
    LOBYTE(v18) = 0;
    v19 = 15;
    do
    {
      v20 = v39.u8[v19];
      v40.i8[v19] = v18 | (2 * v20);
      v18 = v20 >> 7;
      --v19;
    }

    while (v19);
    v38 = 0uLL;
    v40.i8[0] = v18 | (2 * v39.i8[0]);
    __dst = a5;
    if (v39.i8[0] < 0)
    {
      v21 = veorq_s8(v40, xmmword_10006FFD0);
    }

    else
    {
      v21 = v40;
    }

    v38 = v21;
    v22 = a4 >> 4;
    if (v12)
    {
      ++v22;
    }

    if (a4)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1;
    }

    v24 = malloc_type_calloc(v23, 0x10uLL, 0x7FD70001uLL);
    v25 = malloc_type_calloc(v23 + 1, 0x10uLL, 0xC33B511BuLL);
    v26 = v25;
    if (v24 && v25)
    {
      memcpy(v24, a3, a4);
      v27 = (16 * v23 - 16) & 0xF0;
      v28 = &v24[v27];
      if (v13)
      {
        v28->i8[v13] |= 0x80u;
        v29 = &v38;
      }

      else
      {
        v29 = &v39;
      }

      v31 = 0;
      v32 = 0;
      *v28 = veorq_s8(*v28, *v29);
      v33 = v26 + 16;
      if ((v23 & 0xFE) != 0)
      {
        v23 = v23;
      }

      else
      {
        v23 = 1;
      }

      while (1)
      {
        v34 = v31;
        v35 = 16;
        do
        {
          v24[v34] ^= v26[v34];
          ++v34;
          --v35;
        }

        while (v35);
        if (sub_1000251BC(a1, a2, &v24[16 * v32], 0x10u, &v33[16 * v32], 0x10u))
        {
          break;
        }

        ++v32;
        v31 += 16;
        if (v32 == v23)
        {
          memcpy(__dst, &v33[v27], a6);
          free(v26);
          free(v24);
          return 0;
        }
      }

      free(v26);
      v30 = v24;
    }

    else
    {
      if (v24)
      {
        free(v24);
      }

      if (!v26)
      {
        return 0xFFFFFFFFLL;
      }

      v30 = v26;
    }

    free(v30);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100025574(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[0] = 0;
  v18[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  qmemcpy(v15, "cneKRIS", 7);
  v7 = 0x600000000;
  v17[0] = 0;
  v17[1] = 0;
  do
  {
    v8 = v15[v6];
    v15[v6] = v15[HIDWORD(v7)];
    v15[HIDWORD(v7)] = v8;
    ++v6;
    v7 -= 0x100000000;
  }

  while (v6 != 3);
  sub_1000252A8(v17, 0x10uLL, v15, 7u, v16, 0x10u);
  sub_1000252A8(v16, 0x10uLL, a1, 0x10u, v19, 0x10u);
  v14 = 1936290659;
  result = sub_1000252A8(v19, 0x10uLL, &v14, 4u, v18, 0x10u);
  v10 = 0;
  v11 = 0xF00000000;
  do
  {
    v12 = *(v18 + v10);
    *(v18 + v10) = *(v18 + HIDWORD(v11));
    *(v18 + HIDWORD(v11)) = v12;
    ++v10;
    v11 -= 0x100000000;
  }

  while (v10 != 8);
  for (i = 0; i != 16; ++i)
  {
    *(a3 + i) = *(v18 + i) ^ *(a2 + i);
  }

  return result;
}

BOOL sub_1000256EC(unsigned __int16 *a1, _BYTE *key)
{
  v3 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = *(a1 + 3);
  v19 = *(a1 + 5);
  v4 = 0xF00000000;
  do
  {
    v5 = *(&v18 + v3);
    *(&v18 + v3) = *(&v18 + HIDWORD(v4));
    *(&v18 + HIDWORD(v4)) = v5;
    ++v3;
    v4 -= 0x100000000;
  }

  while (v3 != 8);
  v6 = 0;
  v7 = 0xF00000000;
  do
  {
    v8 = key[v6];
    key[v6] = key[HIDWORD(v7)];
    key[HIDWORD(v7)] = v8;
    ++v6;
    v7 -= 0x100000000;
  }

  while (v6 != 8);
  v21[0] = 0;
  v21[1] = 0;
  sub_1000251BC(key, 0x10uLL, &v18, 0x10u, v21, 0x10u);
  v9 = 0;
  v10 = 0xF00000000;
  do
  {
    v11 = *(v21 + v9);
    *(v21 + v9) = *(v21 + HIDWORD(v10));
    *(v21 + HIDWORD(v10)) = v11;
    ++v9;
    v10 -= 0x100000000;
  }

  while (v9 != 8);
  v16[2] = v21[0];
  v17 = BYTE2(v21[0]);
  v12 = LOWORD(v21[0]) == *a1 && BYTE2(v21[0]) == *(a1 + 2);
  v13 = !v12;
  if (v12)
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found matched hash!", v16, 2u);
    }
  }

  return v13 == 0;
}

uint64_t sub_100029DD8(uint64_t a1)
{
  qword_1000AA010 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_10002A628(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MCSService init]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s : Obtaining playbackstate from MR", &v6, 0xCu);
  }

  return [*(a1 + 32) playbackStateDidChange:a2];
}

void sub_10002A86C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C660();
    }

LABEL_5:
    DisplayName = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C6E0();
    }

    goto LABEL_5;
  }

  DisplayName = MRNowPlayingClientGetDisplayName();
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MCSService attemptToFindNowPlayingApp]_block_invoke";
    v10 = 2112;
    v11 = DisplayName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Now Playing Client Retrieved displayName %@", &v8, 0x16u);
  }

LABEL_6:
  v6 = [*(a1 + 32) playerName];

  if (v6 != DisplayName)
  {
    [*(a1 + 32) applicationDidChange:DisplayName];
  }
}

id sub_10002AA48(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 playbackStateToString:a2];
    v9 = 136315394;
    v10 = "[MCSService mrPlaybackStateDidChangeNotification:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: playback state %@ received from MR", &v9, 0x16u);
  }

  return [*(a1 + 32) playbackStateDidChange:a2];
}

BOOL sub_10002CB5C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  Command = MRMediaRemoteCommandInfoGetCommand();
  if (Command == 26)
  {
    *a4 = 1;
  }

  return Command == 26;
}

BOOL sub_10002CB9C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  Command = MRMediaRemoteCommandInfoGetCommand();
  if (Command == 25)
  {
    *a4 = 1;
  }

  return Command == 25;
}

void sub_10002CFE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[NSData data];
  v4 = *(a1 + 32);
  v5 = [v4 trackChangedCharacteristic];
  [v4 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v3];
}

void sub_10002D10C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 mediaPlayerNameData];
  v5 = [*(a1 + 32) mediaPlayerNameCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_10002D228(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 trackTitleData];
  v5 = [*(a1 + 32) trackTitleCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_10002D344(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 trackDurationData];
  v5 = [*(a1 + 32) trackDurationCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_10002D460(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 trackPositionData];
  v5 = [*(a1 + 32) trackPositionCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_10002D57C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 playingOrderData];
  v5 = [*(a1 + 32) playingOrderCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_10002D698(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 mediaStateData];
  v5 = [*(a1 + 32) mediaStateCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_10002D7CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint8:*(a1 + 40)];
  [v4 writeUint8:*(a1 + 41)];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 mediaControlOpcodeToString:v7];
    v10 = [*(a1 + 32) mediaControlResultToString:*(a1 + 41)];
    v14 = 136315650;
    v15 = "[MCSService mediaControlPointNotification:result:]_block_invoke";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Sending Media Control Point Notification to centrals.  Opcode %@, Result %@", &v14, 0x20u);
  }

  v11 = *(a1 + 32);
  v12 = [v4 data];
  v13 = [*(a1 + 32) mediaControlPointCharacteristic];
  [v11 updateValue:v12 forCharacteristic:v13 onSubscribedCentrals:v3];
}

void sub_10002D9F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 mediaControlPointOpcodesSupportedData];
  v5 = [*(a1 + 32) mediaControlPointOpcodesSupportedCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_100033E28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100033E44(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100035D74(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100035DD8(id a1)
{
  qword_1000AA030 = objc_alloc_init(ServerCommonAudioProfile);

  _objc_release_x1();
}

void sub_10003638C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "incoming Connection Request cigID:%@ cisID:%@, accepting...", &v12, 0x16u);
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [NSNumber numberWithBool:1];
  [v8 setObject:v9 forKey:@"kCBMsgArgBool"];

  [v8 setObject:v5 forKey:@"kCBLEAudioArgCigId"];
  [v8 setObject:v6 forKey:@"kCBLEAudioArgCisId"];
  v10 = [NSNumber numberWithUnsignedChar:0];
  [v8 setObject:v10 forKey:@"kCBMsgArgReason"];

  v11 = [*(a1 + 32) peripheralManager];
  [v11 respondToCISConnectionRequest:v8];
}

void sub_100038744(id a1)
{
  qword_1000AA040 = objc_alloc_init(ConnectionManager);

  _objc_release_x1();
}

void sub_100038F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100038F90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained cisConnectionEventDict];
  v11 = [v10 objectForKey:v7];

  if (v11)
  {
    (v11)[2](v11, v12, v7, v8);
  }
}

void sub_100039058(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained cisDisconnectionEventDict];
  v11 = [v10 objectForKey:v7];

  if (v11)
  {
    (v11)[2](v11, v12, v7, v8);
  }
}

id sub_100039C94(uint64_t a1)
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initializing CISCentral", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) initCISCentral];
}

void sub_10003CC30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removeCIG : result:%@ aCigID:%@", &v12, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = [*(a1 + 32) clientCAPSet];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No connected LE Audio clients, killing self", &v12, 2u);
    }

    exit(0);
  }
}

void start()
{
  sub_10000E1C4("bluetoothaudiod");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHALEAudio", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  v19 = 8;
  v20 = 0;
  v1 = sysctlbyname("security.mac.amfi.developer_mode_status", &v20, &v19, 0, 0);
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v22 = v20;
    *&v22[8] = 1024;
    v23[0] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Developer Mode Status: %llu. System Call Status: %d", buf, 0x12u);
  }

  v3 = v20;
  v4 = _os_feature_enabled_impl();
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 == 1;
  }

  v6 = v5;
  v7 = v5 && AppBooleanValue != 0;
  if ((v4 & 1) == 0 && !v7)
  {
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *v22 = 0;
      *&v22[4] = 1024;
      *&v22[6] = AppBooleanValue != 0;
      LOWORD(v23[0]) = 1024;
      *(v23 + 2) = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "LE Audio Feature not enabled exiting. OS Feature: %u. Hearing Aid Enabled: %u. Developer Mode: %u", buf, 0x14u);
    }

    exit(0);
  }

  signal(15, 1);
  v9 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler_f(v9, sub_100042BE0);
  dispatch_resume(v9);
  v10 = getenv("leAudioRole");
  if (v10)
  {
    v11 = strncmp(v10, "server", 4uLL) == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "server";
    if (!v11)
    {
      v13 = "client";
    }

    *buf = 136315138;
    *v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "launching bluetoothdaudiod as %s", buf, 0xCu);
  }

  if (v11)
  {
    v14 = +[ConnectionManager instance];
    [v14 startLEAudioServer];
  }

  else
  {
    v15 = +[LEAudioXPCListener instance];
  }

  if (MGGetBoolAnswer())
  {
    v16 = +[LEAudioTestXPCListener instance];
  }

  if (![[LEAudioXpcService alloc] initWithName:"com.apple.bluetoothaudiod.cb" sessionClass:objc_opt_class()])
  {
    v17 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to create CB XPC", buf, 2u);
    }
  }

  dispatch_main();
}

void sub_100042BE0()
{
  v0 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SIGTERM received, exiting", v1, 2u);
  }

  exit(0);
}

void sub_100042E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042E8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100042EA4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 UUID];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100043170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isStarted] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v5 UUID];
      v10 = [*(a1 + 32) peripheral];
      v11 = [v10 name];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting service %@ on peripheral %@", &v13, 0x16u);
    }

    v12 = [*(a1 + 32) startingAcceptorServices];
    [v12 addObject:v6];

    [v6 start];
  }
}

void sub_100043E94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 serviceEventToString:a2];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Event %@", &v10, 0xCu);
  }

  [*(a1 + 32) handleServiceEvent:a2 withEventObj:v5];
}

id sub_100043F90(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isPrimary];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10004A884(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10004A8A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x14u);
}

void sub_10004CF18(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_BOOL];
  v7[0] = v1;
  v8[0] = &stru_100095A18;
  v2 = [NSValue valueWithPointer:&_xpc_type_int64];
  v7[1] = v2;
  v8[1] = &stru_100095A38;
  v3 = [NSValue valueWithPointer:&_xpc_type_uint64];
  v7[2] = v3;
  v8[2] = &stru_100095A58;
  v4 = [NSValue valueWithPointer:&_xpc_type_double];
  v7[3] = v4;
  v8[3] = &stru_100095A78;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = qword_1000AA060;
  qword_1000AA060 = v5;
}

NSNumber *__cdecl sub_10004D050(id a1, OS_xpc_object *a2)
{
  value = xpc_BOOL_get_value(a2);

  return [NSNumber numberWithBool:value];
}

NSNumber *__cdecl sub_10004D094(id a1, OS_xpc_object *a2)
{
  value = xpc_int64_get_value(a2);

  return [NSNumber numberWithLongLong:value];
}

NSNumber *__cdecl sub_10004D0D8(id a1, OS_xpc_object *a2)
{
  value = xpc_uint64_get_value(a2);

  return [NSNumber numberWithUnsignedLongLong:value];
}

NSNumber *__cdecl sub_10004D11C(id a1, OS_xpc_object *a2)
{
  value = xpc_double_get_value(a2);

  return [NSNumber numberWithDouble:value];
}

void sub_10004D1F0(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_string];
  v4 = v1;
  v5 = &stru_100095AD8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_1000AA070;
  qword_1000AA070 = v2;
}

NSString *__cdecl sub_10004D298(id a1, OS_xpc_object *a2)
{
  string_ptr = xpc_string_get_string_ptr(a2);

  return [NSString stringWithUTF8String:string_ptr];
}

void sub_10004D370(id a1)
{
  v1 = [NSValue valueWithPointer:&_xpc_type_dictionary];
  v4 = v1;
  v5 = &stru_100095B38;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = qword_1000AA080;
  qword_1000AA080 = v2;
}

void sub_10004E0F4(id a1)
{
  qword_1000AA090 = objc_alloc_init(LEAudioTestXPCListener);

  _objc_release_x1();
}

void sub_10004E310(id a1)
{
  v1 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005EF14(v1);
  }
}

uint64_t sub_10004E4E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"kPeripheralUUID"];
  v5 = [v3 objectForKey:@"kServiceName"];

  v6 = [v4 UUIDString];
  v7 = [*(a1 + 32) UUIDString];
  if (![v6 isEqualToString:v7])
  {

    goto LABEL_5;
  }

  v8 = [v5 isEqualToString:*(a1 + 40)];

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

uint64_t sub_10004E76C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"kPeripheralUUID"];
  v5 = [v3 objectForKey:@"kServiceName"];

  v6 = [v4 UUIDString];
  v7 = [*(a1 + 32) UUIDString];
  if (![v6 isEqualToString:v7])
  {

    goto LABEL_5;
  }

  v8 = [v5 isEqualToString:*(a1 + 40)];

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

uint64_t sub_10004EBA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"kPeripheralUUID"];
  v5 = [v3 objectForKey:@"kServiceName"];

  v6 = [v4 UUIDString];
  v7 = [*(a1 + 32) UUIDString];
  if (![v6 isEqualToString:v7])
  {

    goto LABEL_5;
  }

  v8 = [v5 isEqualToString:*(a1 + 40)];

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

uint64_t sub_100050708(uint64_t a1)
{
  qword_1000AA0A0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000521E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 callStateData];
  v5 = [*(a1 + 32) callStateCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_1000522FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 bearerListCurrentCallsData];
  v5 = [*(a1 + 32) bearerListCurrentCallsCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_100052418(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 bearerProviderNameData];
  v5 = [*(a1 + 32) bearerProviderNameCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_100052534(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 bearerTechnologyData];
  v5 = [*(a1 + 32) bearerTechnologyCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_100052650(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 incomingCallData];
  v5 = [*(a1 + 32) incomingCallCharacteristic];
  [v3 updateValue:v6 forCharacteristic:v5 onSubscribedCentrals:v4];
}

void sub_100052784(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint8:*(a1 + 40)];
  [v4 writeUint8:*(a1 + 41)];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 41);
    v9 = v5;
    v10 = [v7 terminationReasonToString:v8];
    v14 = 136315650;
    v15 = "[TBSService notifyCallTerminationReason:reason:]_block_invoke";
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s : notifying peripheral that call on index %u, is termated with reason %@", &v14, 0x1Cu);
  }

  v11 = *(a1 + 32);
  v12 = [v4 data];
  v13 = [*(a1 + 32) terminationReasonCharacteristic];
  [v11 updateValue:v12 forCharacteristic:v13 onSubscribedCentrals:v3];
}

void sub_1000529C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DataOutputStream outputStreamWithByteOrder:1];
  [v4 writeUint8:*(a1 + 40)];
  [v4 writeUint8:*(a1 + 41)];
  [v4 writeUint8:*(a1 + 42)];
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 opcodesToString:v7];
    v10 = *(a1 + 41);
    v11 = [*(a1 + 32) callControlResultCodeToString:*(a1 + 42)];
    v15 = 136315906;
    v16 = "[TBSService callControlPointNotification:callIndex:result:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Sending Call Control Point Notification to centrals.  Opcode %@, call Index %u, Result %@", &v15, 0x26u);
  }

  v12 = *(a1 + 32);
  v13 = [v4 data];
  v14 = [*(a1 + 32) callControlPointCharacteristic];
  [v12 updateValue:v13 forCharacteristic:v14 onSubscribedCentrals:v3];
}

uint64_t sub_100055868(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100055880(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100055E84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 tuCallCenter];
  v2 = [v3 currentAudioAndVideoCalls];
  [v1 updateCallList:v2];
}

void sub_10005A370(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10005A38C(void *a1)
{
  v2 = a1;
  v8 = [sub_100006FC0() description];
  sub_100006F80();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10005A43C()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() count];
  v4 = 134218240;
  v5 = v0;
  v6 = 2048;
  v7 = [sub_100006FC0() count];
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Num of specified ASE IDs (%lu) doesn't match num of Metadata (%lu)", &v4, 0x16u);
}

void sub_10005A4F0(uint8_t *a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a2;
  v8 = [a3 ASE_ID];
  *a1 = 67109120;
  *a4 = v8;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ASE ID %u is not in right state", a1, 8u);
}

void sub_10005A568(void *a1)
{
  v2 = a1;
  v3 = [sub_100006F68() value];
  sub_100006F90();
  sub_100006F30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10005A654(unsigned __int8 *a1)
{
  sub_100006FA8(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received Server Prefered Framing: %d", v3, v4, v5, v6, v7);
}

void sub_10005A6BC(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v9 = [AudioStreamEndpoint phySettingToString:v2];
  sub_100006F30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005A770(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v9 = [AudioStreamEndpoint phySettingToString:v2];
  sub_100006F30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005A824(unsigned __int8 *a1)
{
  sub_100006FA8(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received Server Prefered RX No.: %u", v3, v4, v5, v6, v7);
}

void sub_10005A88C(void *a1)
{
  v2 = a1;
  [sub_100006FC0() preferredRetransmissionNumber];
  sub_100006F80();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005A91C(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v2, v3, "Received Server max Transport latency: %u", v4, v5, v6, v7, v8);
}

void sub_10005A988(void *a1)
{
  v2 = a1;
  [sub_100006FC0() clientMaxTransportLatency];
  sub_100006F80();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005AA18(unsigned int *a1)
{
  sub_100006FB4(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received Server Minimum Supported Presentation Delay: %u", v3, v4, v5, v6, v7);
}

void sub_10005AA80(unsigned int *a1)
{
  sub_100006FB4(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received Server Maximum Supported Presentation Delay: %u", v3, v4, v5, v6, v7);
}

void sub_10005AAE8(unsigned int *a1)
{
  sub_100006FB4(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received Server Prefered Minimum Presentation Delay: %u", v3, v4, v5, v6, v7);
}

void sub_10005AB50(unsigned int *a1)
{
  sub_100006FB4(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received Server Prefered Maximum Presentation Delay: %u", v3, v4, v5, v6, v7);
}

void sub_10005ABB8(unsigned __int8 *a1)
{
  sub_100006FA8(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received QoS configured confirmation for CIG %d", v3, v4, v5, v6, v7);
}

void sub_10005AC20(unsigned __int8 *a1)
{
  sub_100006FA8(a1);
  sub_100006F5C();
  sub_100006F40(&_mh_execute_header, v1, v2, "Received QoS configured confirmation for CIS %d", v3, v4, v5, v6, v7);
}

void sub_10005AC88()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientSduInterval];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005AD20()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientFraming];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005ADB8()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientPHY];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005AE50()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientMaxSdu];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005AEE8()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientRetransmissionNumber];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005AF80()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientMaxTransportLatency];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005B018()
{
  sub_100006F74();
  v3 = v2;
  [sub_100006F68() clientPresentationDelay];
  v4 = *v0;
  sub_100006F18();
  sub_100006F30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005B0B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 identifier];
  v6 = [a2 ASEControlPointCharacteristic];
  v7 = [v6 value];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "peripheral %@ handleControlPointUpdate data %@", &v8, 0x16u);
}

void sub_10005B1A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100006F5C();
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "handleControlPointUpdate opCode: %u numOfASE: %u", v6, 0xEu);
}

void sub_10005B234()
{
  sub_100006F74();
  v3 = v2;
  v4 = [sub_100006F68() peripheral];
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  v7 = *v0;
  sub_100006F90();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Peripheral %@ ASE ID %d doesn't exist", v8, 0x12u);
}

void sub_10005B308(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v3 UUID];
  v6 = [*(a1 + 40) name];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Service %@ has timed out on peripheral %@", &v7, 0x16u);
}

void sub_10005B420(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error publishing service %@: %@", &v7, 0x16u);
}

void sub_10005B4E0(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 parentServiceInterface];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Parent Interface %@ ", a1, 0xCu);
}

void sub_10005B564(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 name];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did not discover included services on peripheral %@ for service %@", &v7, 0x16u);
}

void sub_10005B624(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Volume Control Point ATTError: Opcode Not Supported: %@", &v2, 0xCu);
}

void sub_10005B69C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Volume Control Point ATTError: Invalid Change Counter: %@", &v2, 0xCu);
}

void sub_10005B858(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Audio Input Type mismatch, currInputType %d", v2, 8u);
}

void sub_10005B8D0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Audio Location mismatch, currAudioLocation %d", v2, 8u);
}

void sub_10005B98C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected XPC server event: %@", &v2, 0xCu);
}

void sub_10005BA04(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server error: %@", &v2, 0xCu);
}

void sub_10005BAC0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unsupported Sampling Frequency", buf, 2u);
}

void sub_10005BB34(void *a1)
{
  v2 = a1;
  v3 = [sub_100021150() opcodeToString:?];
  sub_100021160();
  sub_100021130();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005BBDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [ClientCommonAudioProfile eventToString:v2];
  sub_100021160();
  sub_100021130();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10005BC8C(void *a1)
{
  v2 = a1;
  v3 = [sub_100021150() stateToString:?];
  sub_100021160();
  sub_100021130();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005BD34(void *a1)
{
  v2 = a1;
  v3 = [sub_100021150() stateToString:?];
  sub_100021160();
  sub_100021130();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005BE10(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() identifier];
  sub_100021160();
  sub_100021140();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005BEA8(void *a1)
{
  v2 = a1;
  v3 = [sub_100021150() statusToString:?];
  sub_100021160();
  sub_100021130();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005BF50(unsigned __int8 a1, void *a2)
{
  v2 = a1;
  v3 = a2;
  v9 = [ClientCommonAudioProfile statusToString:v2];
  sub_100021130();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10005C010(void *a1, void *a2)
{
  v4 = a1;
  [sub_100006FC0() code];
  v10 = [a2 description];
  sub_100021140();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10005C0CC(void *a1)
{
  v2 = a1;
  [sub_100006FC0() unsignedIntValue];
  sub_100021140();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005C15C(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "disconnectCISforCIG called for CIS %u for CIG %u", v3, 0xEu);
}

void sub_10005C218(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [sub_100006FC0() inputDataPathCreated];
  [a3 outputDataPathCreated];
  sub_100021140();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x14u);
}

void sub_10005C474(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_100021140();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10005C558(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_100021140();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10005C660()
{
  sub_10002E4A4();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005C7A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 characteristic];
  v5 = [v4 UUID];
  v7[0] = 136315394;
  sub_10002E4A4();
  v8 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : Characteristic - %@ not found!", v7, 0x16u);
}

void sub_10005C86C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [a3 localizedDescription];
  v10[0] = 136315650;
  sub_10002E4A4();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s : ERROR : to update notification state for %@: %@", v10, 0x20u);
}

void sub_10005CF30(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  sub_100035D5C();
  sub_100035D74(&_mh_execute_header, v5, v6, "Error discovering characteristics for service %@: %@", v7, v8, v9, v10, v11);
}

void sub_10005CFD0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  sub_100035D5C();
  sub_100035D74(&_mh_execute_header, v5, v6, "Error updating value for characteristic %@: %@", v7, v8, v9, v10, v11);
}

void sub_10005D070(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  sub_100035D5C();
  sub_100035D74(&_mh_execute_header, v5, v6, "Error updating notification state for characteristic %@: %@", v7, v8, v9, v10, v11);
}

void sub_10005D110()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005D180()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005D1F0()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005D260()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005D2D0()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005D340()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005D3BC()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005D40C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 central];
  v7 = [a3 nameForCentral:v6];
  v8 = [a2 characteristic];
  v9 = [v8 UUID];
  sub_1000386EC();
  v12 = v10;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Central %@ sent a read request on characteristic %@", v11, 0x16u);
}

void sub_10005D504(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  v5 = 136315650;
  v6 = "[ServerCommonAudioProfile peripheralManagerDidStartAdvertising:error:]";
  v7 = 2112;
  v8 = v4;
  v9 = 2048;
  v10 = [a2 code];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : Couldn't start advertising %@ error code %ld", &v5, 0x20u);
}

void sub_10005D5DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 characteristic];
  v5 = [v4 UUID];
  v6 = [a2 value];
  sub_1000386EC();
  v10 = v5;
  v11 = v7;
  v12 = v8;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Responding with result %ld to request on characteristic %@: %@", v9, 0x20u);
}

void sub_10005D6C4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[ServerCommonAudioProfile peripheralManagerIsReadyToUpdateSubscribers:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s : Transmit queue is full", &v1, 0xCu);
}

void sub_10005D984(_BYTE *a1)
{
  *a1;
  sub_1000424FC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005DA14(_BYTE *a1)
{
  *a1;
  sub_1000424FC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005DAA4(_BYTE *a1)
{
  *a1;
  sub_1000424FC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005DB34(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_100006FC0() name];
  [a2 state];
  sub_100042508();
  sub_100021140();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10005DBDC()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005DC18(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_100006FC0() name];
  [a2 state];
  sub_100042508();
  sub_100021140();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10005DEC0(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() characteristic];
  v4 = [v3 UUID];
  sub_100042520();
  sub_100021140();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10005DF7C(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() characteristic];
  v4 = [v3 UUID];
  sub_100042520();
  sub_100021140();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10005E038()
{
  sub_10000A8EC();
  sub_1000424FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E074()
{
  sub_10000A8EC();
  sub_1000424FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E0B0()
{
  sub_10000A8EC();
  sub_1000424FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E0EC()
{
  sub_10000A8EC();
  sub_1000424FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E128()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E164()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E1A0()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E1DC()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E218()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E254()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E290()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E2CC()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E308()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E344()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E380()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005E3F0()
{
  sub_100021160();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005E460(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() sessionID];
  sub_100021160();
  sub_100021140();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005E4F8()
{
  sub_10000A8EC();
  sub_10002E498();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005E6A8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 name];
  sub_100021160();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error discovering services on peripheral %@: %@", v7, 0x16u);
}

void sub_10005E768(void *a1, void *a2)
{
  v3 = a1;
  [a2 status];
  [a2 inErrContextTypes];
  sub_10004A864();
  sub_10004A8A4(&_mh_execute_header, v4, v5, "One or more unsupported context types: status %d contextTypes 0x%02X inErrContextTypes 00x%02X", v6, v7, v8, v9, v10);
}

void sub_10005E80C(void *a1, void *a2)
{
  v3 = a1;
  [a2 status];
  [a2 inErrContextTypes];
  sub_10004A864();
  sub_10004A8A4(&_mh_execute_header, v4, v5, "Available for subset of context types: status %d contextTypes 0x%02X inErrContextTypes 0x%02X", v6, v7, v8, v9, v10);
}

void sub_10005E8AC(void *a1, void *a2)
{
  v3 = a1;
  [a2 status];
  [a2 inErrContextTypes];
  sub_10004A864();
  sub_10004A8A4(&_mh_execute_header, v4, v5, "Unavailable for all context types: status %d contextTypes 0x%02X inErrContextTypes 0x%02X", v6, v7, v8, v9, v10);
}

void sub_10005E94C(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_10004A884(&_mh_execute_header, v5, v6, "No ASE's to configure Codec on peripheral %@ ", v7, v8, v9, v10, v11);
}

void sub_10005E9F4(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_10004A884(&_mh_execute_header, v5, v6, "No ASE's to configure QoS on peripheral %@ ", v7, v8, v9, v10, v11);
}

void sub_10005EA9C(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_10004A884(&_mh_execute_header, v5, v6, "No ASE's to enable on peripheral %@ ", v7, v8, v9, v10, v11);
}

void sub_10005EB88(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_10004A884(&_mh_execute_header, v5, v6, "No ASE's to disable on peripheral %@ ", v7, v8, v9, v10, v11);
}

void sub_10005EC30(void *a1)
{
  v2 = a1;
  v3 = [sub_100006FC0() peripheral];
  v4 = [v3 identifier];
  sub_100021160();
  sub_10004A884(&_mh_execute_header, v5, v6, "No ASE's to release on peripheral %@ ", v7, v8, v9, v10, v11);
}

void sub_10005ECD8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unspecified event %d", v2, 8u);
}

void sub_10005EDD0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_10004A884(&_mh_execute_header, v5, v6, "Unexpected XPC connection event: %@", v7, v8, v9, v10, 2u);
}

void sub_10005EE68(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_10004A884(&_mh_execute_header, v5, v6, "XPC connection error: %@", v7, v8, v9, v10, 2u);
}

void sub_10005EF58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Microphone Control Service ATTError: Mute Disabled: %@", &v2, 0xCu);
}

void sub_10005EFD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Microphone Control Service ATTError: Value Not Allowed: %@", &v2, 0xCu);
}

void sub_10005F048(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 characteristic];
  v5 = [v4 UUID];
  v6 = 136315394;
  v7 = "[TBSService peripheralManager:didReceiveReadRequest:]";
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : %@ not found!", &v6, 0x16u);
}

void sub_10005F11C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [a3 localizedDescription];
  v8 = 136315650;
  v9 = "[TBSService peripheral:didUpdateNotificationStateForCharacteristic:error:]";
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s : ERROR : to update notification state for %@: %@", &v8, 0x20u);
}

void sub_10005F200(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 sharedCallIdx];
  v5 = [a2 tbsCallStateToString:{objc_msgSend(a2, "callState")}];
  v6 = 136315650;
  v7 = "[TBSService handleCallControlPointWrite:]";
  v8 = 1024;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : Accept Call Failed! Call index %u, was in state %@. Was not an incoming call state!", &v6, 0x1Cu);
}

void sub_10005F2EC(void *a1, void *a2)
{
  v3 = a1;
  [a2 status];
  v4[0] = 136315394;
  sub_100056300();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: After issuing answer call to TUCallCenter the call status is %d", v4, 0x12u);
}

void sub_10005F394(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUIDString];
  v5[0] = 136315394;
  sub_100042520();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: No call with identifier %@ was found in TU Call Center!", v5, 0x16u);
}

void sub_10005F448(void *a1, void *a2)
{
  v3 = a1;
  [a2 status];
  v4[0] = 136315394;
  sub_100056300();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: After issuing disconnect call to TUCallCenter the call status is %d", v4, 0x12u);
}

void sub_10005F4EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUIDString];
  v5[0] = 136315394;
  sub_100042520();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : Could not find call ID %@, call termination unsucessful!", v5, 0x16u);
}

void sub_10005F59C(unsigned __int8 a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[TelephonyManager deleteCallWithSharedCallIndex:]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s : CallInfo with sharedCallIndex %u not found in callList!", &v2, 0x12u);
}

void sub_10005F62C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TBSInterface start]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : Peripheral is not connected", &v1, 0xCu);
}

void sub_10005F6B0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TBSInterface start]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : Service is not discovered", &v1, 0xCu);
}

void sub_10005F734(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_100035D5C();
  sub_100035D74(&_mh_execute_header, v5, v6, "Error updating value for characteristic %@: %@", v7, v8, v9, v10, v11);
}

void sub_10005F7D4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_100035D5C();
  sub_100035D74(&_mh_execute_header, v5, v6, "Error updating notification state for characteristic %@: %@", v7, v8, v9, v10, v11);
}
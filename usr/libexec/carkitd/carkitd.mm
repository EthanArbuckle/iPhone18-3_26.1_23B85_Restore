void sub_10000276C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 bytes];
  v7 = [v5 length];

  [WeakRetained _sendData:v6 length:v7];
}

id sub_100002980()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100107F58;
  v7 = qword_100107F58;
  if (!qword_100107F58)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100041624;
    v3[3] = &unk_1000DD660;
    v3[4] = &v4;
    sub_100041624(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002A68(unint64_t a1)
{
  if (a1 >= 7)
  {
    sub_100088D78();
  }

  if (qword_100108020 != -1)
  {
    sub_100088D64();
  }

  v2 = qword_100107FE8[a1];

  return v2;
}

void sub_100002C70(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

uint64_t sub_100002EC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000335C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarDNDWDLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100080F68(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100080FE4(a1, v5);
  }
}

void sub_1000036A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) dismissAlert:v5];
  }
}

id sub_100004340(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100004384(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_1000045A4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_100004BEC(uint64_t a1)
{
  responseFlags = 0;
  v2 = CFUserNotificationReceiveResponse(*(a1 + 48), 0.0, &responseFlags);
  CFRelease(*(a1 + 48));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004CAC;
  block[3] = &unk_1000DD408;
  v7 = v2;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = responseFlags;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100004CAC(uint64_t a1)
{
  v2 = [*(a1 + 32) alertDismissTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) alertDismissTimer];
    [v4 invalidate];

    [*(a1 + 32) setAlertDismissTimer:0];
  }

  if ([*(a1 + 32) requiresUnlockedDevice])
  {
    v5 = [*(a1 + 32) _isDeviceUnlocked] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) alertAutoDismissed];
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if ((v6 & 1) == 0 && (v5 & 1) == 0)
  {
    if (*(a1 + 56))
    {
      v7 = 2;
    }

    else
    {
      v7 = qword_1000A3F48[*(a1 + 48) & 3];
    }
  }

  [*(a1 + 32) _setAlert:0];
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }

  v9 = *(a1 + 32);

  return [v9 setAlertAutoDismissed:0];
}

id sub_100004DB4(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissal timer fired", v4, 2u);
  }

  return [*(a1 + 32) setAlertAutoDismissed:{objc_msgSend(*(a1 + 32), "dismissAlert")}];
}

id sub_10000562C(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100081298();
  }

  return [*(a1 + 32) _start];
}

id sub_1000056F0(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000812CC();
  }

  return [*(a1 + 32) _stop];
}

void sub_10000597C(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006234;
  block[3] = &unk_1000DD480;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000623C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100006264(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100007E94(uint64_t a1, void *a2)
{
  [a2 rectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 32);
  v15[0] = @"x";
  v10 = [NSNumber numberWithDouble:?];
  v16[0] = v10;
  v15[1] = @"y";
  v11 = [NSNumber numberWithDouble:v4];
  v16[1] = v11;
  v15[2] = @"width";
  v12 = [NSNumber numberWithDouble:v6];
  v16[2] = v12;
  v15[3] = @"height";
  v13 = [NSNumber numberWithDouble:v8];
  v16[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v9 addObject:v14];
}

id sub_1000097A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B23C;
  v9[3] = &unk_1000DD518;
  v9[4] = a1;
  v4 = [NSPredicate predicateWithBlock:v9];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = v3;
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

  return v7;
}

id sub_1000098A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [v6 allKeys];
    v8 = sub_1000097A0(a1, v7);

    if (v8)
    {
      v9 = [v6 allValues];
      v10 = sub_1000097A0(a2, v9);

      if (v10)
      {
        v10 = v6;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10000999C(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_opt_class();
  v3 = [v20 objectForKey:@"x"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  v5 = [v20 objectForKey:@"y"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = [v20 objectForKey:@"width"];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  v9 = [v20 objectForKey:@"height"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [v4 floatValue];
  v12 = v11;
  [v6 floatValue];
  v14 = v13;
  [v8 floatValue];
  v16 = v15;
  [v10 floatValue];
  v18 = *(a1 + 32);
  v19 = [NSValue valueWithRect:v12, v14, v16, v17];
  [v18 addObject:v19];
}

void sub_10000A624(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:@"name"];
  v8 = [a1[4] _matchingKeychainItemForIdentifier:v5 inKeychainItems:a1[5]];
  v9 = v8;
  if (v8)
  {
    v22 = v7;
    v10 = [v8 objectForKey:kSecValueData];
    v11 = [v9 objectForKey:kSecAttrGeneric];
    v12 = v11;
    if (v11)
    {
      v24 = 0;
      [v11 getBytes:&v24 length:4];
      v13 = bswap32(v24);
      v24 = v13;
      if ([v12 length] < 5)
      {
        v14 = 0;
      }

      else
      {
        v23 = 0;
        [v12 getBytes:&v23 range:{4, 4}];
        v14 = bswap32(v23);
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    [a1[5] removeObject:v9];
    v16 = [[NSUUID alloc] initWithUUIDString:v5];
    if (v16)
    {
      v17 = v10;
      v18 = [[CRVehicle alloc] initWithIdentifier:v16 certificateSerial:v10];
      v19 = v18;
      if (!v18)
      {
        v21 = CarGeneralLogging();
        v7 = v22;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100081A98();
        }

        goto LABEL_19;
      }

      [v18 setPairingStatus:v13];
      if (v14)
      {
        [v19 setSupportsEnhancedIntegration:1];
        [v19 setEnhancedIntegrationStatus:v14];
      }

      v20 = a1[4];
      [objc_opt_class() _applyPreferencesAttributes:v6 toVehicle:v19];
      [a1[6] addObject:v19];
    }

    else
    {
      v17 = v10;
      v19 = CarGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100081B08();
      }
    }

    v7 = v22;
LABEL_19:

    goto LABEL_20;
  }

  v15 = a1[4];
  [objc_opt_class() _cleanupPreferencesForIncompleteVehicleIdentifier:v5 name:v7];
LABEL_20:
}

void sub_10000AA68(uint64_t a1)
{
  [*(a1 + 32) _invalidateCachedVehicles];
  v2 = [*(a1 + 32) allStoredVehicles];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 vehicleStoreDidBecomeAvailable:*(a1 + 32)];

    v5 = *(a1 + 32);
    v6 = objc_opt_class();

    [v6 postPairingsDidChangeNotification];
  }
}

void sub_10000B2CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000B55C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSession];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) currentSession];
    [v3 _setupForSession:v4];
  }
}

void sub_10000BFF4(id a1)
{
  qword_100107F08 = objc_alloc_init(CRDictationService);

  _objc_release_x1();
}

uint64_t sub_10000C678(void *a1)
{
  v2 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[7] + 1;
    if (v3 >= 6)
    {
      v4 = [NSString stringWithFormat:@"Unknown (%ld)", a1[7]];
    }

    else
    {
      v4 = off_1000DD6B8[v3];
    }

    v5 = a1[4];
    v6 = v4;
    v7 = [v5 transcription];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = @"(no result)";
    }

    v10 = a1[5];

    *buf = 138412803;
    v16 = v4;
    v17 = 2113;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dictation state: (%@) %{private}@ (error: %{public}@)", buf, 0x20u);
  }

  v11 = a1[7];
  v12 = a1[4];
  v13 = a1[5];
  return (*(a1[6] + 16))();
}

Class sub_10000D3AC(uint64_t a1)
{
  if (!sub_10000D43C())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("AFDictationConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100107F18 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100081C00();
    return sub_10000D43C();
  }

  return result;
}

uint64_t sub_10000D43C()
{
  if (!qword_100107F20)
  {
    qword_100107F20 = _sl_dlopen();
  }

  return qword_100107F20;
}

uint64_t sub_10000D50C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100107F20 = result;
  return result;
}

void sub_10000D8C0(uint64_t a1)
{
  v2 = [*(a1 + 32) channel];
  if (v2)
  {

    goto LABEL_3;
  }

  v8 = [*(a1 + 32) channel];
  v9 = [v8 outputStream];
  if ([v9 streamStatus] == 2)
  {
  }

  else
  {
    v10 = [*(a1 + 32) channel];
    v11 = [v10 outputStream];
    v12 = [v11 streamStatus];

    if (v12 != 4)
    {
LABEL_3:
      v3 = [*(a1 + 32) channel];
      v4 = [v3 outputStream];
      v5 = [v4 write:objc_msgSend(*(a1 + 40) maxLength:{"bytes"), objc_msgSend(*(a1 + 40), "length")}];

      v6 = [*(a1 + 32) channelDelegate];
      v14 = v6;
      if (v5 >= 1 && (v7 = [*(a1 + 40) length], v6 = v14, v5 == v7))
      {
        if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v14 bluetoothLEChannel:*(a1 + 32) didSendData:*(a1 + 40)];
        }
      }

      else if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v14 bluetoothLEChannel:*(a1 + 32) didFailToSendData:*(a1 + 40)];
      }

      _objc_release_x4();
      return;
    }
  }

  v13 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100081C28();
  }
}

void sub_10000DB48(uint64_t a1)
{
  v2 = [*(a1 + 32) channel];
  v3 = [v2 inputStream];
  if ([v3 streamStatus] == 2)
  {
    v4 = [*(a1 + 32) channel];
    v5 = [v4 outputStream];
    v6 = [v5 streamStatus];

    if (v6 == 2)
    {
      v7 = [*(a1 + 32) isOpen];
      v8 = sub_100002A68(2uLL);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v17 = 0;
          v10 = "L2CAP channel already opened";
          v11 = &v17;
          v12 = v9;
          v13 = OS_LOG_TYPE_INFO;
LABEL_9:
          _os_log_impl(&_mh_execute_header, v12, v13, v10, v11, 2u);
          goto LABEL_10;
        }
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "L2CAP channel opened", v16, 2u);
        }

        [*(a1 + 32) setOpen:1];
        v14 = [*(a1 + 32) service];
        v9 = [v14 serviceDelegate];

        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v15 = [*(a1 + 32) service];
          [v9 bluetoothLEService:v15 didOpenChannel:*(a1 + 32)];
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "waiting for both streams to open";
    v11 = buf;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

LABEL_10:
}

void sub_10000DDEC(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100081C64();
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) channel];
  v5 = [v4 inputStream];
  LODWORD(v3) = [v3 isEqual:v5];

  if (v3)
  {
    *&v6 = 138412290;
    v12 = v6;
    do
    {
      v7 = [*(a1 + 32) read:v15 maxLength:{1024, v12}];
      if (v7 < 1)
      {
        break;
      }

      v8 = v7;
      v9 = [[NSData alloc] initWithBytes:v15 length:v7];
      v10 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = v12;
        v14 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "received data %@", buf, 0xCu);
      }

      v11 = [*(a1 + 40) channelDelegate];
      if (v11)
      {
        if (objc_opt_respondsToSelector())
        {
          [v11 bluetoothLEChannel:*(a1 + 40) didReceiveData:v9];
        }
      }
    }

    while (v8 == 1024);
  }
}

id sub_10000E078(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = [*(a1 + 40) channel];
  v5 = [v4 inputStream];
  LODWORD(v3) = [v3 isEqual:v5];

  if (v3)
  {
    v6 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100081D30(v2);
    }

LABEL_7:

    return [*(a1 + 40) _serviceQueue_handleChannelClosed];
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) channel];
  v9 = [v8 outputStream];
  LODWORD(v7) = [v7 isEqual:v9];

  if (v7)
  {
    v6 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100081CA4(v2);
    }

    goto LABEL_7;
  }

  return [*(a1 + 40) _serviceQueue_handleChannelClosed];
}

id sub_10000E244(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) channel];
  v4 = [v3 inputStream];
  LODWORD(v2) = [v2 isEqual:v4];

  if (v2)
  {
    v5 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) streamError];
      *v12 = 138412290;
      *&v12[4] = v6;
      v7 = "L2CAP input stream closed: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v12, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) channel];
  v10 = [v9 outputStream];
  LODWORD(v8) = [v8 isEqual:v10];

  if (v8)
  {
    v5 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) streamError];
      *v12 = 138412290;
      *&v12[4] = v6;
      v7 = "L2CAP output stream closed: %@";
      goto LABEL_7;
    }

LABEL_8:
  }

  return [*(a1 + 40) _serviceQueue_handleChannelClosed];
}

void sub_10000E964(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serviceUUID];
    v4 = [v3 UUIDString];
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "starting discovery for service %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(CARBluetoothLEConnectionState);
  [*(a1 + 32) setCurrentConnectionState:v5];
  v6 = [*(a1 + 32) peripheral];
  v7 = [*(a1 + 32) serviceUUID];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v6 discoverServices:v8];
}

void sub_10000EBD4(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100081DBC(v1);
    }
  }

  else
  {
    v4 = [*(a1 + 40) currentConnectionState];
    v5 = [v4 discoveredService];

    if (v5)
    {
      v2 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 48) services];
        *buf = 138412290;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "didDiscoverServices but already discovered desired service. All discovered services: %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v2 = [*(a1 + 48) services];
      v7 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v2);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            v12 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v28 = v11;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "discovered service %@", buf, 0xCu);
            }

            v13 = [*(a1 + 40) serviceUUID];
            v14 = [v11 UUID];
            v15 = [v13 isEqual:v14];

            if (v15)
            {
              v16 = sub_100002A68(2uLL);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "discovered the service, starting characteristic discovery", buf, 2u);
              }

              v17 = [*(a1 + 40) currentConnectionState];
              [v17 setDiscoveredService:1];

              v18 = [*(a1 + 40) peripheral];
              v19 = [*(a1 + 40) psmCharacteristicUUID];
              v25 = v19;
              v20 = [NSArray arrayWithObjects:&v25 count:1];
              [v18 discoverCharacteristics:v20 forService:v11];

              goto LABEL_4;
            }
          }

          v8 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_4:
}

void sub_10000EFD8(id *a1)
{
  v2 = [a1[4] serviceUUID];
  v3 = [a1[5] UUID];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = [a1[4] currentConnectionState];
    v6 = [v5 discoveredPSMCharacteristic];

    if (v6)
    {
      v7 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [a1[5] characteristics];
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didDiscoverCharacteristicsForService but already discovered desired characteristic. All discovered characteristics: %@", buf, 0xCu);
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = [a1[5] characteristics];
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v23;
        *&v10 = 138412290;
        v21 = v10;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 UUID];
            v16 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v21;
              v28 = v15;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "discovered characteristic %@", buf, 0xCu);
            }

            v17 = [a1[4] psmCharacteristicUUID];
            v18 = [v17 isEqual:v15];

            if (v18)
            {
              v19 = sub_100002A68(2uLL);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "found L2CAP characteristic, attempting to read PSM value", buf, 2u);
              }

              v20 = [a1[4] currentConnectionState];
              [v20 setDiscoveredPSMCharacteristic:1];

              [a1[6] setNotifyValue:1 forCharacteristic:v14];
              [a1[6] readValueForCharacteristic:v14];
            }
          }

          v11 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v7 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didDiscoverCharacteristicsForService on a different service than desired", buf, 2u);
    }
  }
}

void sub_10000F3E0(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceUUID];
  v3 = [*(a1 + 40) service];
  v4 = [v3 UUID];
  v5 = [v2 isEqual:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) psmCharacteristicUUID];
    v7 = [*(a1 + 40) UUID];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [*(a1 + 32) currentConnectionState];
      v10 = [v9 PSM];

      if (v10)
      {
        v11 = sub_100002A68(2uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [*(a1 + 32) currentConnectionState];
          v13 = [v12 PSM];
          *buf = 138412290;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "already attempting to open channel with PSM: %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = [*(a1 + 40) value];
        v11 = v16;
        if (v16)
        {
          v22 = 0;
          [v16 getBytes:&v22 length:2];
          v17 = bswap32(v22) >> 16;
          v18 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v24) = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PSM value is %hu", buf, 8u);
          }

          v19 = [*(a1 + 32) currentConnectionState];
          v20 = [NSNumber numberWithUnsignedShort:v17];
          [v19 setPSM:v20];

          v21 = [*(a1 + 32) peripheral];
          [v21 openL2CAPChannel:v17];
        }

        else
        {
          v21 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100081E34();
          }
        }
      }
    }

    else
    {
      v11 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        *buf = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ignoring didUpdateValueForCharacteristic: %@, error: %@", buf, 0x16u);
      }
    }
  }
}

void sub_10000F7B8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 48) currentConnectionState];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 serviceChannel];

      if (v4)
      {
        v5 = sub_100002A68(2uLL);
        if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = [v3 serviceChannel];
          v8 = [v7 channel];
          v18 = 138412546;
          v19 = v6;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "ignoring didOpenL2CAPChannel for channel %@, already opened channel %@", &v18, 0x16u);
        }
      }

      else
      {
        v9 = [v3 PSM];
        if (v9 && (v10 = v9, -[NSObject PSM](v3, "PSM"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 unsignedShortValue], v13 = objc_msgSend(*(a1 + 32), "PSM"), v11, v10, v12 == v13))
        {
          v14 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            v18 = 138412290;
            v19 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "opening L2CAP channel %@", &v18, 0xCu);
          }

          v5 = [[CARBluetoothLEChannel alloc] initWithService:*(a1 + 48) channel:*(a1 + 32)];
          v16 = [*(a1 + 48) currentConnectionState];
          [v16 setServiceChannel:v5];
        }

        else
        {
          v5 = sub_100002A68(2uLL);
          if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 32) PSM];
            v18 = 67109120;
            LODWORD(v19) = v17;
            _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "ignoring didOpenL2CAPChannel for unknown PSM %hu", &v18, 8u);
          }
        }
      }
    }

    else
    {
      v5 = sub_100002A68(2uLL);
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        sub_100081E70();
      }
    }
  }

  else
  {
    v3 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081EAC(a1);
    }
  }
}

void sub_10000FB5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000118AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000118D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000118EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  objc_opt_class();
  v7 = v6;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = sub_100002A68(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = 138477827;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "fetched digital car info: %{private}@", &v13, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100011AA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100011E1C(uint64_t a1, void *a2, const __CFString *a3)
{
  v5 = a2;
  v4 = CFStringCompare(kCMVehicleConnectedNotification, a3, 0);
  if (v4 == kCFCompareEqualTo || CFStringCompare(kCMVehicleDisconnectedNotification, a3, 0) == kCFCompareEqualTo)
  {
    [v5 setConnected:v4 == kCFCompareEqualTo];
  }

  [v5 _checkVehicleState];
}

void sub_100011EBC(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  v5 = [v4 delegate];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isInLostMode]);
  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device lost state is currently: %@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000128C0;
    block[3] = &unk_1000DD6F0;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_autoreleasePoolPop(v3);
}

id sub_1000128C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) BOOLValue];

  return [v1 stateMachine:v2 receivedFMDMode:v3];
}

void sub_100012AEC(id a1)
{
  v1 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "certification override service connection interrupted", v2, 2u);
  }
}

void sub_100012B54(id a1)
{
  v1 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "certification override service connection invalidated", v2, 2u);
  }
}

BOOL sub_100012EB0(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_1000130C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001441C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000144B8;
  v5[3] = &unk_1000DD580;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1000144B8(uint64_t a1)
{
  if ([*(a1 + 32) activelyMonitoringGeofences])
  {
    if (![*(a1 + 32) _shouldCreateGeofences])
    {
      return;
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

          v7 = *(a1 + 32);
          v8 = [*(*(&v9 + 1) + 8 * i) locationOfInterest];
          [v7 _createGeofenceForLOI:v8];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = CarDNDWDLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling geofences for predicted locations - no longer actively monitoring.", buf, 2u);
    }
  }
}

void sub_1000147A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014844;
  v5[3] = &unk_1000DD580;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100014844(uint64_t a1)
{
  if ([*(a1 + 32) activelyMonitoringGeofences])
  {
    if (![*(a1 + 32) _shouldCreateGeofences])
    {
      return;
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

          v7 = *(*(&v9 + 1) + 8 * i);
          v8 = CarDNDWDLogging();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating fence for home", buf, 2u);
          }

          [*(a1 + 32) _createGeofenceForLOI:{v7, v9}];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = CarDNDWDLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling geofences for home location - no longer actively monitoring.", buf, 2u);
    }
  }
}

void sub_1000149F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014A90;
  v5[3] = &unk_1000DD580;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100014A90(uint64_t a1)
{
  if ([*(a1 + 32) activelyMonitoringGeofences])
  {
    if (![*(a1 + 32) _shouldCreateGeofences])
    {
      return;
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

          v7 = *(*(&v9 + 1) + 8 * i);
          v8 = CarDNDWDLogging();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating fence for work", buf, 2u);
          }

          [*(a1 + 32) _createGeofenceForLOI:{v7, v9}];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = CarDNDWDLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling geofences for work location - no longer actively monitoring.", buf, 2u);
    }
  }
}

id sub_100014CB4(uint64_t a1)
{
  [*(a1 + 32) setLocationServicesEnabled:CRAutomaticDNDLocationServicesEnabled()];
  if ([*(a1 + 32) activelyMonitoringGeofences] && (objc_msgSend(*(a1 + 32), "locationServicesEnabled") & 1) == 0)
  {
    v4 = CarDNDWDLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deactivating geofences since location services are now disabled", buf, 2u);
    }

    return [*(a1 + 32) stopMonitoringLOIs];
  }

  else
  {
    result = [*(a1 + 32) isDNDActive];
    if (result)
    {
      result = [*(a1 + 32) locationServicesEnabled];
      if (result)
      {
        v3 = CarDNDWDLogging();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating geofences since location services are now enabled", v5, 2u);
        }

        return [*(a1 + 32) beginMonitoringLOIsWithStartingLocationGeofence:{objc_msgSend(*(a1 + 32), "shouldCreateGeofenceAroundStart")}];
      }
    }
  }

  return result;
}

void sub_100014E68(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v6 = "Received location update, but nil location";
      v7 = &v14;
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  if (([*(a1 + 40) activelyMonitoringGeofences] & 1) == 0)
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Received location update, but no longer monitoring";
      v7 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v2 = [*(a1 + 32) timestamp];
  [v2 timeIntervalSinceNow];
  v4 = fabs(v3);

  if (v4 > 30.0)
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v6 = "Received location update, but age is too old";
      v7 = &v12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([*(a1 + 40) shouldCreateGeofenceAroundStart] && (objc_msgSend(*(a1 + 40), "didCreateGeofenceAroundStart") & 1) == 0)
  {
    v8 = *(a1 + 40);
    [*(a1 + 32) coordinate];
    v9 = [v8 _addCoordinatesToMonitoredRegion:@"Start Identifier" identifier:100 radius:?];
    [v9 setRegionState:1];
    [*(a1 + 40) setDidCreateGeofenceAroundStart:1];
    [*(a1 + 40) setIsCurrentlyInsideGeofence:1];
    v10 = CarDNDWDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating start geofence around received location", v11, 2u);
    }

    [*(a1 + 40) _postNotificationForGeofence];
  }

  [*(a1 + 40) _createGeofencesAroundPredictedLocationsFromLocation:*(a1 + 32)];
}

Class sub_100015868(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100107F30)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000159AC;
    v4[4] = &unk_1000DD698;
    v4[5] = v4;
    v5 = off_1000DD808;
    v6 = 0;
    qword_100107F30 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100107F30)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100082638();
  }

  qword_100107F28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000159AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100107F30 = result;
  return result;
}

void sub_100015A38(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100015B9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_storeStrong(WeakRetained + 1, *(a1 + 32));
  v3 = [WeakRetained delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 shouldPresentHeadUnitPairingPromptSession:WeakRetained];
    if (*(a1 + 40))
    {
      v5 = v4;
      v6 = CarPairingLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"NO";
        if (v5)
        {
          v7 = @"YES";
        }

        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "wantsToPresentHeadUnitPairingPrompt: %{public}@", &v11, 0xCu);
      }

      v8 = *(a1 + 40);
      v9 = [NSNumber numberWithBool:v5];
      (*(v8 + 16))(v8, v9, 0);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0);
    }
  }
}

void sub_100015E34(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  objc_storeStrong(WeakRetained + 1, a1[4]);
  v3 = [WeakRetained delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100015F3C;
    v5[3] = &unk_1000DD850;
    v6 = a1[5];
    [WeakRetained setPairingPromptCompletion:v5];
    [v3 presentHeadUnitPairingForPromptSession:WeakRetained];
  }

  else
  {
    v4 = a1[5];
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }
}

void sub_100015F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = CarPairingLogging();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "presentHeadUnitPairingPrompt completed", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000826E8(v5, v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

void sub_100016128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [WeakRetained keyIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:v4];

  if ((v3 & 1) == 0)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000827F0(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, 0);
    }
  }

  v7 = [WeakRetained delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 handleHeadUnitPairingPromptSession:WeakRetained receivedResponse:*(a1 + 56)];
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_12:
      v9();
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_12;
    }
  }
}

void sub_10001644C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100016470(id *a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016538;
  v4[3] = &unk_1000DD878;
  objc_copyWeak(&v7, a1 + 6);
  v8 = a2;
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(&_dispatch_main_q, v4);

  objc_destroyWeak(&v7);
}

void sub_100016538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v4 = CarPairingLogging();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "prox card can be presented", v8, 2u);
    }

    [WeakRetained _launchRemoteAlertWithUserInfo:*(a1 + 32) errorHandler:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100082834(v5);
    }

    v6 = [WeakRetained sharingClient];
    [v6 invalidate];

    [WeakRetained setSharingClient:0];
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void sub_100016798(id a1)
{
  v1 = CarPairingLogging();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "CarPlaySetup did activate.", v2, 2u);
  }
}

id sub_100016874(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CarPlaySetup did deactivate.", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

void sub_1000169B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:SBSRemoteAlertHandleInvalidationErrorDomain];

  if (!v6)
  {
    v9 = CarPairingLogging();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_100082878(v3, v9);
    goto LABEL_9;
  }

  v7 = [*v3 code] & 0xFFFFFFFFFFFFFFFELL;
  v8 = CarPairingLogging();
  v9 = v8;
  if (v7 != 4)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*v3 code]);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlaySetup alert handle invalidated with code %@", &v13, 0xCu);
  }

LABEL_9:

  v11 = [WeakRetained currentErrorHandler];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, *v3);
  }

  [WeakRetained invalidate];
}

id sub_100016EB8(uint64_t a1)
{
  if ([*(a1 + 32) channelIsOpen])
  {
    v2 = [*(a1 + 32) channel];
    [v2 closeChannel];

    [*(a1 + 32) setChannelIsOpen:0];
  }

  [*(a1 + 32) setCurrentAcceptCompletion:0];
  v3 = [*(a1 + 32) channel];
  [v3 setChannelDelegate:0];

  [*(a1 + 32) _internalQueue_signalChunkQueue];
  v4 = *(a1 + 32);

  return [v4 setInternalQueueOutstandingSendCount:0];
}

uint64_t sub_100017214(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) internalQueue];
  dispatch_assert_queue_V2(v4);

  v5 = sub_100002A68(4uLL);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "completed file transfer for cluster theme version %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100082978(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t sub_1000174CC(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) internalQueue];
  dispatch_assert_queue_V2(v4);

  v5 = sub_100002A68(4uLL);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "completed file transfer for log archive %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000829EC(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10001782C(id *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [a1[4] path];
  v47 = 0;
  v4 = [v2 attributesOfItemAtPath:v3 error:&v47];
  v5 = v47;

  if (v4)
  {
    v6 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    v7 = [v4 objectForKey:NSFileSize];
    v8 = [v7 unsignedLongLongValue];

    [v6 setTotalUnitCount:v8];
    [a1[5] addChild:v6 withPendingUnitCount:1];
    v9 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "started tracking file transfer progress: %@", &buf, 0xCu);
    }

    v10 = a1[4];
    v46 = v5;
    v11 = [NSFileHandle fileHandleForReadingFromURL:v10 error:&v46];
    v26 = v46;

    if (v11)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v51 = 0x2020000000;
      v52 = 0;
      v12 = [[NSProgress alloc] initWithParent:0 userInfo:0];
      [v12 setTotalUnitCount:1];
      [a1[5] addChild:v12 withPendingUnitCount:1];
      v13 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v48 = 138412290;
        v49 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "started tracking file acknowledgment progress: %@", v48, 0xCu);
      }

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100017DC4;
      v40[3] = &unk_1000DD938;
      v14 = a1[6];
      v41 = a1[7];
      v15 = v12;
      v42 = v15;
      v43 = a1[5];
      p_buf = &buf;
      v44 = a1[9];
      [v14 setCurrentAcceptCompletion:v40];
      v16 = +[NSUUID UUID];
      v17 = [v16 UUIDString];

      v18 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v48 = 138412290;
        v49 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "starting file transfer session %@", v48, 0xCu);
      }

      v19 = [a1[6] _internalQueue_chunkSizeForTransferWithPriority:{objc_msgSend(a1[6], "isPriority")}];
      v20 = [a1[6] chunkQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100017EE8;
      block[3] = &unk_1000DD9D8;
      v28 = a1[7];
      v35 = a1[9];
      v29 = a1[8];
      v30 = v17;
      v31 = a1[6];
      v36 = &buf;
      v37 = (v8 + v19 - 1) / v19;
      v32 = v11;
      v38 = v19;
      v33 = a1[4];
      v34 = v6;
      v39 = v8;
      v21 = v17;
      dispatch_async(v20, block);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100082A60(a1 + 4);
      }

      v25 = a1[9];
      if (v25)
      {
        v25[2](v25, 0);
      }
    }

    v5 = v26;
  }

  else
  {
    v22 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100082ADC(a1 + 4);
    }

    v23 = a1[9];
    if (v23)
    {
      v23[2](v23, 0);
    }
  }
}

uint64_t sub_100017DC4(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  [*(a1 + 40) setCompletedUnitCount:1];
  v4 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 48);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "completed tracking acceptance progress: %@", &v8, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v6 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100082B58();
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100017EE8(uint64_t a1)
{
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10001892C;
  v50[3] = &unk_1000DD988;
  v51 = *(a1 + 32);
  v52 = *(a1 + 88);
  v47 = objc_retainBlock(v50);
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = objc_autoreleasePoolPush();
  v5 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 40)];
  [v5 setObject:&off_1000E7A20 forKey:?];
  [v5 setObject:*(a1 + 48) forKey:?];
  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 104)];
  [v5 setObject:v6 forKey:@"chunkCount"];

  *v63 = 0;
  Data = OPACKEncoderCreateData();
  v8 = sub_100002A68(4uLL);
  v9 = v8;
  if (Data)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      buf.count[0] = 138412290;
      *&buf.count[1] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "sending header %@", &buf, 0xCu);
    }

    if ([*(a1 + 56) _chunkQueue_blockingSendChannelMessage:Data])
    {

      objc_autoreleasePoolPop(v4);
      memset(&buf, 0, sizeof(buf));
      CC_SHA256_Init(&buf);
      if (*(a1 + 104))
      {
        v10 = 0;
        while (1)
        {
          context = objc_autoreleasePoolPush();
          *v63 = 0;
          *&v63[8] = v63;
          *&v63[16] = 0x2020000000;
          v64 = 0;
          v11 = *(a1 + 32);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000189D0;
          block[3] = &unk_1000DD9B0;
          block[4] = *(a1 + 96);
          block[5] = v63;
          dispatch_sync(v11, block);
          if (*(*&v63[8] + 24))
          {
            _Block_object_dispose(v63, 8);
            objc_autoreleasePoolPop(context);
            goto LABEL_44;
          }

          v12 = sub_100002A68(4uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *md = 134217984;
            v58 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "reading file chunk %lu", md, 0xCu);
          }

          v13 = *(a1 + 64);
          v14 = *(a1 + 112);
          v48 = 0;
          v15 = [v13 readDataUpToLength:v14 error:&v48];
          v16 = v48;
          v17 = v16;
          if (!v15)
          {
            break;
          }

          v45 = v16;
          v18 = [NSMutableDictionary alloc];
          v55[0] = @"messageType";
          v55[1] = @"sessionID";
          v19 = *(a1 + 48);
          v56[0] = &off_1000E7A38;
          v56[1] = v19;
          v55[2] = @"chunkIndex";
          v20 = [NSNumber numberWithUnsignedInteger:v10];
          v55[3] = @"data";
          v56[2] = v20;
          v56[3] = v15;
          v21 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
          v22 = [v18 initWithDictionary:v21];

          v23 = v15;
          CC_SHA256_Update(&buf, [v15 bytes], objc_msgSend(v15, "length"));
          if (v10 >= *(a1 + 104) - 1)
          {
            CC_SHA256_Final(md, &buf);
            v24 = objc_alloc_init(NSMutableString);
            for (i = 0; i != 32; ++i)
            {
              [v24 appendFormat:@"%02x", md[i]];
            }

            v26 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *v53 = 138412290;
              v54 = v24;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "file checksum: %@\n", v53, 0xCu);
            }

            [v22 setObject:v24 forKey:@"checksum"];
          }

          *v53 = 0;
          v27 = OPACKEncoderCreateData();
          if (!v27)
          {
            v43 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_100082BD0(v53);
            }

            (v47[2])();
            _Block_object_dispose(v63, 8);
            objc_autoreleasePoolPop(context);
            goto LABEL_44;
          }

          v28 = sub_100002A68(4uLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *md = 134217984;
            v58 = v10;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "initiating send for file chunk %lu", md, 0xCu);
          }

          v29 = [*(a1 + 56) _chunkQueue_blockingSendChannelMessage:v27];
          if (v29)
          {
            v30 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *md = 134217984;
              v58 = v10;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "send in progress for file chunk %lu", md, 0xCu);
            }

            [*(a1 + 80) setCompletedUnitCount:{objc_msgSend(*(a1 + 80), "completedUnitCount") + objc_msgSend(v15, "length")}];
          }

          else
          {
            v31 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *md = 134217984;
              v58 = v10;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "failed to send file transfer chunk %lu", md, 0xCu);
            }

            (v47[2])();
          }

          _Block_object_dispose(v63, 8);
          objc_autoreleasePoolPop(context);
          if (!v29)
          {
            goto LABEL_44;
          }

          if (++v10 >= *(a1 + 104))
          {
            goto LABEL_29;
          }
        }

        v42 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v44 = *(a1 + 72);
          *md = 134218498;
          v58 = v10;
          v59 = 2112;
          v60 = v44;
          v61 = 2112;
          v62 = v17;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "failed to read file chunk %lu of %@: %@", md, 0x20u);
        }

        (v47[2])();
        _Block_object_dispose(v63, 8);
        objc_autoreleasePoolPop(context);
      }

      else
      {
LABEL_29:
        +[NSDate timeIntervalSinceReferenceDate];
        v32 = 0.0;
        if (v33 > v3)
        {
          +[NSDate timeIntervalSinceReferenceDate];
          v32 = v34 - v3;
        }

        v35 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 120);
          *v63 = 134218240;
          *&v63[4] = v36;
          *&v63[12] = 2048;
          *&v63[14] = v32;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "sent file of size %llu bytes in %f seconds", v63, 0x16u);
        }

        v37 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 48);
          *v63 = 138412290;
          *&v63[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "completed sending for file transfer session %@", v63, 0xCu);
        }

        [*(a1 + 80) setCompletedUnitCount:{objc_msgSend(*(a1 + 80), "totalUnitCount")}];
        v39 = sub_100002A68(4uLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 48);
          *v63 = 138412290;
          *&v63[4] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "waiting on acceptance message for file transfer session %@", v63, 0xCu);
        }
      }
    }

    else
    {
      v41 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_100082B94();
      }

      (v47[2])();
      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100082C48(v63);
    }

    (v47[2])();
    objc_autoreleasePoolPop(v4);
  }

LABEL_44:
}

void sub_10001892C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000189B4;
  block[3] = &unk_1000DD960;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t sub_1000189B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000189D0(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v6 = v1;
    v7 = v2;
    v4 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "file transfer is canceled, stopping", v5, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100018CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100018CEC(uint64_t a1)
{
  if ([*(a1 + 32) channelIsOpen])
  {
    v2 = [*(a1 + 32) channel];
    *(*(*(a1 + 48) + 8) + 24) = [v2 sendChannelMessage:*(a1 + 40)];

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [*(a1 + 32) setInternalQueueOutstandingSendCount:{objc_msgSend(*(a1 + 32), "internalQueueOutstandingSendCount") + 1}];
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) internalQueueOutstandingSendCount] > 2;
    }

    else
    {
      v4 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100082D38();
      }
    }
  }

  else
  {
    v3 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100082CFC();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

id sub_100018DF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 internalQueueOutstandingSendCount] - 1;

  return [v1 setInternalQueueOutstandingSendCount:v2];
}

id sub_1000190F4(uint64_t a1)
{
  v2 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100082E5C();
  }

  return [*(a1 + 32) _internalQueue_signalChunkQueue];
}

void sub_10001922C(uint64_t a1)
{
  objc_opt_class();
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = OPACKDecodeData();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    objc_opt_class();
    v6 = [v5 objectForKey:@"messageType"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [v7 unsignedIntegerValue];
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v10 = sub_100002A68(4uLL);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100082F50();
          }
        }

        else
        {
          if (v8 != 4)
          {
            if (v8 == 5)
            {
              [*(a1 + 40) _internalQueue_handleFileAcceptMessage:v5];
            }

            goto LABEL_32;
          }

          v10 = sub_100002A68(4uLL);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100082F14();
          }
        }

LABEL_31:

        goto LABEL_32;
      }

      if (v8 == 1)
      {
        v10 = sub_100002A68(4uLL);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_32;
        }

        v10 = sub_100002A68(4uLL);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }
      }

      sub_100082F8C();
      goto LABEL_31;
    }

    v9 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100082FC8(v3);
    }
  }

  else
  {
    v7 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100083038((a1 + 32));
    }
  }

LABEL_32:
}

id sub_100019504(uint64_t a1)
{
  v2 = sub_100002A68(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "closed file data connection", v4, 2u);
  }

  [*(a1 + 32) setChannelIsOpen:0];
  return [*(a1 + 32) _internalQueue_signalChunkQueue];
}

uint64_t *sub_10001965C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100019894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained[5] currentSession];
  [WeakRetained _worker_queue_setSession:v1];
}

void sub_1000199E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v3 = v5;
  if (v5 && ([v3 isEqual:WeakRetained[3]] & 1) == 0)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000830B8(v4);
    }

    objc_storeStrong(WeakRetained + 3, *v4);
    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setURL:*v4 forKey:@"CRCarPlayCapabilitiesPlistPathKey"];

    [WeakRetained _worker_queue_runStateMachineIfPossible];
  }
}

void sub_100019E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019E74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _worker_queue_reloadSessionIfNeeded];
  [WeakRetained _worker_queue_setSession:v2];

  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000831B4();
  }
}

void sub_10001A27C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _worker_queue_reloadSessionIfNeeded];
  [WeakRetained _worker_queue_setSession:v2];

  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100083234();
  }
}

void sub_10001A3DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000832B4(a1);
  }

  [WeakRetained _worker_queue_setSession:*(a1 + 32)];
  [WeakRetained reconcileCapabilities];
}

void sub_10001A544(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100083334(a1);
  }

  [WeakRetained setLastLookupIdentifer:0];
  [WeakRetained _worker_queue_setSession:0];
}

void sub_10001A6B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) copy];
  v3 = WeakRetained[4];
  WeakRetained[4] = v2;

  [WeakRetained reconcileCapabilities];
}

void sub_10001A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CRCarPlayCapabilitiesManager resolveCapabilitiesForSession:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: car carpabilities from state machine: %@, error: %@", &v10, 0x20u);
  }

  v9 = +[CRCarPlayCapabilities capabilitiesIdentifier];
  [WeakRetained setLastLookupIdentifer:v9];

  [WeakRetained setCarCapabilities:v5];
}

void sub_10001AD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001AD60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained lastLookupIdentifer];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained lookupCompletionHandlers];
    v5 = [v4 count];

    if (v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [WeakRetained lookupCompletionHandlers];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            v12 = CarGeneralLogging();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v20 = "[CRCarPlayCapabilitiesManager persistCarCapabilitiesIfNeeded]_block_invoke";
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Invoking lookupFinishedCompletion callback", buf, 0xCu);
            }

            v13 = [WeakRetained lastLookupIdentifer];
            v14 = [WeakRetained carCapabilities];
            (*(v11 + 16))(v11, v13, v14);
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v8);
      }

      [WeakRetained setLookupCompletionHandlers:0];
    }
  }
}

void sub_10001B01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    v4 = [v2[7] worker_queue_carCapabilities];
    v5 = [v4 disabledFeature];
    v6 = +[CARPrototypePref nowPlayingAlbumArt];
    v7 = [v6 value];

    if (v7)
    {
      v8 = +[CARPrototypePref nowPlayingAlbumArt];
      v9 = [v8 value];
      v10 = [v9 integerValue];

      if (v10 == -1)
      {
        v10 = [v4 nowPlayingAlbumArtMode];
        v12 = CarGeneralLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_1000834B0();
        }

        v11 = 0;
      }

      else
      {
        v11 = v10 > 0;
        v12 = CarGeneralLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100083434();
        }
      }

      if ([v3 nowPlayingAlbumArtMode] != v10)
      {
        [v3 setNowPlayingAlbumArtMode:v10];
      }
    }

    else
    {
      v11 = 0;
    }

    if (![v3 nowPlayingAlbumArtMode])
    {
      v13 = +[CARPrototypePref nowPlayingAlbumArt];
      v14 = [v13 defaultValue];
      v15 = [v14 integerValue];

      if ([v3 nowPlayingAlbumArtMode] != v15)
      {
        v16 = CarGeneralLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10008352C();
        }

        [v3 setNowPlayingAlbumArtMode:v15];
      }
    }

    v17 = v2[13];
    v18 = [v17 vehicleForCertificateSerial:v2[6]];
    v19 = v18;
    if (!v11)
    {
      if ((v5 & 1) == 0 && v18)
      {
        v20 = [v18 albumArtUserPreference];
        if ((v20 - 1) > 1)
        {
          [v19 setAlbumArtUserPreference:{objc_msgSend(v3, "nowPlayingAlbumArtMode")}];
          v21 = [v17 saveVehicle:v19];
        }

        else
        {
          [v3 setNowPlayingAlbumArtMode:v20];
        }
      }

      v22 = +[GEOCountryConfiguration sharedConfiguration];
      v23 = [v22 countryCode];

      if (!v23)
      {
        v24 = +[NSLocale currentLocale];
        v23 = [v24 objectForKey:NSLocaleCountryCode];
      }

      v25 = [NSSet setWithArray:&off_1000E8C58];
      v26 = [v25 containsObject:v23];
      v27 = CarGeneralLogging();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
      if (v26)
      {
        if (v28)
        {
          sub_100083628();
        }

        [v3 setNowPlayingAlbumArtMode:1];
        [v3 setDisabledFeature:{objc_msgSend(v3, "disabledFeature") | 1}];
      }

      else
      {
        if (v28)
        {
          sub_1000835AC();
        }
      }
    }

    v29 = +[CARPrototypePref liveActivities];
    v30 = [v29 value];

    if (v30)
    {
      v31 = +[CARPrototypePref liveActivities];
      v32 = [v31 value];
      v33 = [v32 integerValue];

      if (v33 == -1)
      {
        v33 = [v4 liveActivitiesMode];
        v34 = CarGeneralLogging();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100083720();
        }
      }

      else
      {
        v34 = CarGeneralLogging();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_1000836A4();
        }
      }

      if ([v3 liveActivitiesMode] != v33)
      {
        [v3 setLiveActivitiesMode:v33];
      }
    }

    if (![v3 liveActivitiesMode])
    {
      v35 = +[CARPrototypePref liveActivities];
      v36 = [v35 defaultValue];
      v37 = [v36 integerValue];

      if ([v3 liveActivitiesMode] != v37)
      {
        v38 = CarGeneralLogging();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_10008352C();
        }

        [v3 setLiveActivitiesMode:v37];
      }
    }

    v39 = +[CARPrototypePref lodWidgets];
    v40 = [v39 value];

    if (v40)
    {
      v41 = +[CARPrototypePref lodWidgets];
      v42 = [v41 value];
      v43 = [v42 integerValue];

      if (v43 == -1)
      {
        v43 = [v4 lodWidgetsMode];
        v44 = CarGeneralLogging();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_100083818();
        }
      }

      else
      {
        v44 = CarGeneralLogging();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_10008379C();
        }
      }

      if ([v3 lodWidgetsMode] != v43)
      {
        [v3 setLodWidgetsMode:v43];
      }
    }

    if (![v3 lodWidgetsMode])
    {
      v45 = +[CARPrototypePref lodWidgets];
      v46 = [v45 defaultValue];
      v47 = [v46 integerValue];

      if ([v3 lodWidgetsMode] != v47)
      {
        v48 = CarGeneralLogging();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          sub_10008352C();
        }

        [v3 setLodWidgetsMode:v47];
      }
    }

    v49 = CarGeneralLogging();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v58 = 136315394;
      v59 = "[CRCarPlayCapabilitiesManager reconcileCapabilities]_block_invoke";
      v60 = 2048;
      v61 = [v3 nowPlayingAlbumArtMode];
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s: CarCapabilities final album art value: %ld", &v58, 0x16u);
    }

    v50 = [v2[2] configuration];
    v51 = [v50 defaultUserInterfaceStyle];

    if (v51 != -1)
    {
      [v3 setUserInterfaceStyle:v51];
    }

    v52 = +[CARPrototypePref interfaceStyle];
    v53 = [v52 value];

    if (v53)
    {
      v54 = +[CARPrototypePref interfaceStyle];
      v55 = [v54 value];
      v56 = [v55 integerValue];

      v57 = CarGeneralLogging();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 136315394;
        v59 = "[CRCarPlayCapabilitiesManager reconcileCapabilities]_block_invoke";
        v60 = 2048;
        v61 = v56;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s: CarCapabilities interfaceStyle CARPrototypePref.interfaceStyle=%ld", &v58, 0x16u);
      }

      if ([v3 userInterfaceStyle] != v56)
      {
        [v3 setUserInterfaceStyle:v56];
      }
    }

    [v2 persistCarCapabilitiesIfNeeded];
  }
}

void sub_10001B8B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v11 = WeakRetained;
    v3 = [WeakRetained lastLookupIdentifer];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v11 lastLookupIdentifer];
      v6 = [v11 carCapabilities];
      (*(v4 + 16))(v4, v5, v6);

      [v11 persistCarCapabilitiesIfNeeded];
    }

    else
    {
      v7 = [v11 lookupCompletionHandlers];

      if (!v7)
      {
        v8 = objc_opt_new();
        [v11 setLookupCompletionHandlers:v8];
      }

      v9 = [v11 lookupCompletionHandlers];
      v10 = objc_retainBlock(*(a1 + 32));
      [v9 addObject:v10];

      [v11 _worker_queue_runStateMachineIfPossible];
    }

    WeakRetained = v11;
  }
}

void sub_10001BCEC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000838D8(v2, v3);
  }
}

void sub_10001BE0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "presenter is ready", v5, 2u);
  }

  v4 = [WeakRetained sessionDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 presenterSessionDidBecomeReady:WeakRetained];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001BFAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "presenter did dismiss", v6, 2u);
  }

  v4 = [WeakRetained dismissHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  [WeakRetained setDismissHandler:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10001C194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C1AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained assetProgress];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = CarPairingLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "returning asset progress to presenter: %@", &v8, 0xCu);
  }
}

void sub_10001C380(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C420;
  v5[3] = &unk_1000DDB90;
  v6 = *(a1 + 48);
  [a2 presentBluetoothConfirmationPromptForVehicleName:v3 numericCode:v4 responseHandler:v5];
}

void sub_10001C420(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001C4A8;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001C4A8(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for Bluetooth confirmation prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001C624(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001C6B0;
  v3[3] = &unk_1000DDB90;
  v4 = *(a1 + 32);
  [a2 presentBluetoothContactsSyncPromptWithResponseHandler:v3];
}

void sub_10001C6B0(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001C738;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001C738(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for Bluetooth contacts sync prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001C8E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C984;
  v5[3] = &unk_1000DD960;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 presentBluetoothFailedPromptForVehicleName:v4 isTimeout:v3 responseHandler:v5];
}

void sub_10001C984(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CA08;
  block[3] = &unk_1000DD960;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10001CA08(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for Bluetooth failed prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001CBA4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001CC34;
  v4[3] = &unk_1000DDB90;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 presentAllowWhileLockedPromptForVehicleName:v3 responseHandler:v4];
}

void sub_10001CC34(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001CCBC;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001CCBC(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for allow while locked prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001CE4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001CEEC;
  v5[3] = &unk_1000DDB90;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [a2 presentConnectPromptWithBluetoothOnlyOption:v3 wirelessEnablement:v4 responseHandler:v5];
}

void sub_10001CEEC(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001CF74;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001CF74(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for connect prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001D104(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D1A4;
  v5[3] = &unk_1000DDB90;
  v6 = *(a1 + 32);
  [a2 presentUseWirelessPromptWithWirelessEnablement:v3 declineVariant:v4 responseHandler:v5];
}

void sub_10001D1A4(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001D22C;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001D22C(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for use wireless prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001D420(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001D4B0;
  v4[3] = &unk_1000DDB90;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 presentEnhancedIntegrationPromptForVehicleName:v3 responseHandler:v4];
}

void sub_10001D4B0(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001D538;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001D538(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for enhanced integration prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001D6C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D768;
  v5[3] = &unk_1000DDB90;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [a2 presentAssetSupportingConnectPromptWithBluetoothOnlyOption:v3 wirelessEnablement:v4 responseHandler:v5];
}

void sub_10001D768(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001D7F0;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001D7F0(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for connect prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001D980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DA20;
  v5[3] = &unk_1000DDB90;
  v6 = *(a1 + 32);
  [a2 presentAssetSupportingUseWirelessPromptWithWirelessEnablement:v3 declineVariant:v4 responseHandler:v5];
}

void sub_10001DA20(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001DAA8;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001DAA8(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response for use wireless prompt: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001DD1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001DDC0;
  v6[3] = &unk_1000DDD30;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 presentAssetProgressPromptForVehicleName:v4 cancelHandler:v6];
}

void sub_10001DDC0(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DE5C;
  block[3] = &unk_1000DDD08;
  v4 = *(a1 + 40);
  v7 = a2;
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10001DE5C(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received cancellation from asset progress prompt", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48));
  }

  return [*(a1 + 32) _cleanupAssetProgress];
}

void sub_10001E154(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E1F4;
  v5[3] = &unk_1000DD960;
  v6 = *(a1 + 48);
  [a2 presentAssetReadyPromptForVehicleName:v3 appClipIDs:v4 confirmationHandler:v5];
}

void sub_10001E1F4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E278;
  block[3] = &unk_1000DD960;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10001E278(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received confirmation from asset ready prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001E3C4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E454;
  v4[3] = &unk_1000DDB90;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 presentAssetUnavailablePromptWithDescription:v3 responseHandler:v4];
}

void sub_10001E454(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001E4DC;
  v2[3] = &unk_1000DDB68;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_10001E4DC(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received response from asset unavailable prompt, check for updates: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10001E680(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E710;
  v4[3] = &unk_1000DD960;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 presentAssetReadySoonPromptForVehicleName:v3 confirmationHandler:v4];
}

void sub_10001E710(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E794;
  block[3] = &unk_1000DD960;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10001E794(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received confirmation from asset ready soon prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001E904(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E9A4;
  v5[3] = &unk_1000DD960;
  v6 = *(a1 + 48);
  [a2 presentSetupCarKeysPromptForVehicleName:v3 carKeyInfo:v4 cancelHandler:v5];
}

void sub_10001E9A4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EA28;
  block[3] = &unk_1000DD960;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10001EA28(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received cancel for setup car keys prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001EB4C(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001EBD8;
  v3[3] = &unk_1000DD960;
  v4 = *(a1 + 32);
  [a2 presentCheckForSoftwareUpdatesWithCompletionHandler:v3];
}

void sub_10001EBD8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EC5C;
  block[3] = &unk_1000DD960;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10001EC5C(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "completed present check for software updates", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001ED74(uint64_t a1)
{
  v2 = [*(a1 + 32) assetProgress];
  if (v2)
  {
    v3 = [*(a1 + 40) objectForKey:NSKeyValueChangeOldKey];
    [v3 doubleValue];
    v5 = v4;
    [v2 fractionCompleted];
    v7 = v6;
    v8 = CarPairingLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134349312;
      v10 = v5;
      v11 = 2050;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updating asset progress from %{public}f to %{public}f", &v9, 0x16u);
    }

    if ([v2 isFinished])
    {
      [*(a1 + 32) _handleAssetProgressFinished];
    }
  }

  else
  {
    v3 = CarPairingLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100083950(v3);
    }
  }
}

void sub_10001F4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10001F528(uint64_t a1)
{
  v2 = [CRWirelessPairingServiceSession alloc];
  v3 = [*(a1 + 32) bluetoothManager];
  v4 = [*(a1 + 32) carPlayPreferences];
  v5 = [(CRWirelessPairingServiceSession *)v2 initWithBluetoothManager:v3 preferences:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(*(a1 + 40) + 8) + 40) setDelegate:*(a1 + 32)];
  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 40) + 8) + 40);

  return [v8 setCurrentPairingSession:v9];
}

void sub_10001F5D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing service connection interrupted: %@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F700;
  v6[3] = &unk_1000DD580;
  v4 = *(a1 + 32);
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_sync(&_dispatch_main_q, v6);
}

void sub_10001F700(uint64_t a1)
{
  v2 = [*(a1 + 32) exportedObject];
  v3 = [*(a1 + 40) currentPairingSession];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100083A10();
    }

    [*(a1 + 40) setCurrentPairingSession:0];
  }
}

void sub_10001F798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing service connection invalidated: %@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F8C0;
  v6[3] = &unk_1000DD580;
  v4 = *(a1 + 32);
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_sync(&_dispatch_main_q, v6);
}

void sub_10001F8C0(uint64_t a1)
{
  v2 = [*(a1 + 32) exportedObject];
  v3 = [*(a1 + 40) currentPairingSession];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100083A10();
    }

    [*(a1 + 40) setCurrentPairingSession:0];
  }
}

void sub_10001FBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FC18(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HUP prompt service connection interrupted: %@", &v4, 0xCu);
  }
}

void sub_10001FCCC(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HUP prompt service connection invalidated: %@", &v4, 0xCu);
  }
}

void sub_1000207DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100020B34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 40) + 8);
  if ((*(v5 + 24) & 1) != 0 || !*(a1 + 32))
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100083D5C();
    }
  }

  else
  {
    *(v5 + 24) = 1;
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100083CE0();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100020BF4(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if ((*(v1 + 24) & 1) == 0 && *(a1 + 32))
  {
    *(v1 + 24) = 1;
    (*(*(a1 + 32) + 16))();
    v2 = CarGeneralLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[CRCarPlayAppServiceAgent requestCarCapabilitiesStatus:withReply:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: request timed out", &v3, 0xCu);
    }
  }
}

void sub_100020F48(uint64_t a1, uint64_t a2)
{
  v4 = CarGeneralLogging();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100083DDC(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CarPlay MobileAssets catalog downloaded", v13, 2u);
    }

    [*(a1 + 32) _queryForUpdatedAsset];
  }
}

void sub_100021120(uint64_t a1)
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.CarExperienceAssets"];
  [v2 returnTypes:2];
  [v2 setDoNotBlockBeforeFirstUnlock:1];
  v3 = [v2 queryMetaDataSync];
  v4 = [v2 results];
  v5 = [NSPredicate predicateWithBlock:&stru_1000DDE10];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [MAAsset cr_highestContentVersionAssetInAssets:v6];
  if (v3)
  {
    if (v3 == 2)
    {
      v8 = CarGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CarPlay MobileAssets catalog not present", buf, 2u);
      }

      if (v7)
      {
        [*(a1 + 32) _reloadWithAsset:v7];
      }

      v9 = 0;
LABEL_27:
      [*(a1 + 32) _requestAssetCatalogDownload];
      goto LABEL_28;
    }

    v19 = CarGeneralLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100083E4C(v3, v19);
    }

    v9 = [NSError errorWithDomain:@"com.apple.carkit.app" code:1 userInfo:0];
  }

  else
  {
    v10 = [v2 lastFetchDate];
    v11 = +[NSDate date];
    v12 = [CARAnalytics calendarUnitsOfType:128 fromDate:v10 toDate:v11];

    if (v12 >= 259201)
    {
      v13 = CarGeneralLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CarPlay MobileAssets catalog out of date", buf, 2u);
      }
    }

    if (v7)
    {
      [*(a1 + 32) _reloadWithAsset:v7];
    }

    v14 = [v4 count];
    v15 = CarGeneralLogging();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CarPlay MobileAssets asset exists but is not downloaded, requesting download", buf, 2u);
      }

      v17 = [MAAsset cr_highestContentVersionAssetInAssets:v4];
      if ([v17 state] == 1)
      {
        v18 = objc_alloc_init(MADownloadOptions);
        [v18 setAllowsCellularAccess:1];
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_100021578;
        v31 = &unk_1000DDE38;
        v32 = *(a1 + 32);
        v33 = v17;
        [v33 startDownload:v18 then:&v28];
      }

      v9 = 0;
      if (v12 > 259200)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100083E14(v16, v20, v21, v22, v23, v24, v25, v26);
      }

      v9 = [NSError errorWithDomain:@"com.apple.carkit.app" code:1 userInfo:0];
      if (v12 >= 259201)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v27 = *(a1 + 32);
  objc_sync_enter(v27);
  [*(a1 + 32) setAssetQueryInProgress:0];
  objc_sync_exit(v27);
}

BOOL sub_100021528(id a1, MAAsset *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MAAsset *)v3 state]== 2 || [(MAAsset *)v3 state]== 6;

  return v4;
}

void sub_100021578(uint64_t a1, uint64_t a2)
{
  v4 = CarGeneralLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay MobileAssets asset download failed", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay MobileAssets asset download successful", buf, 2u);
    }

    [*(a1 + 32) _reloadWithAsset:*(a1 + 40)];
  }
}

void sub_100022CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022D08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100022D20(uint64_t a1)
{
  v2 = [*(a1 + 32) saveVehicle:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100022F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100022F38(uint64_t a1)
{
  result = [*(a1 + 32) removeVehicle:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1000230B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000230DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) vehicleStore];
    v6 = [v5 allStoredVehicles];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_100023200(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 count] != 0, v5);
}

void sub_1000234A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000234E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) vehicleStore];
    v6 = [v5 vehicleForBluetoothAddress:*(a1 + 40)];

    if (v6 && ([*(a1 + 32) _dismissReconnectionEnableWiFiAlertExceptForVehicle:v6], objc_msgSend(v6, "isPaired")))
    {
      v7 = [v6 carplayWiFiUUID];
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v10 = [*(a1 + 32) wifiManager];
        v11 = [v10 hasCredentialsForCarPlayUUID:*(*(*(a1 + 56) + 8) + 40)];

        if (v11)
        {
          kdebug_trace();
          *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) postInCarNotificationForVehicle:v6];
          v12 = [*(a1 + 32) wifiManager];
          v13 = [v12 isPowered];

          if (v13)
          {
LABEL_21:

            return;
          }

          v14 = [*(a1 + 32) bluetoothManager];
          v15 = [v14 connectedServicesCountForBluetoothAddress:*(a1 + 40)];

          v16 = [*(a1 + 32) serviceCountDuringAlertForBluetoothAddress];
          v17 = [v16 objectForKey:*(a1 + 40)];

          v18 = CarGeneralLogging();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 40);
            v20 = [NSNumber numberWithUnsignedInteger:v15];
            *buf = 138413058;
            v30 = v19;
            v31 = 2112;
            v32 = v6;
            v33 = 2112;
            v34 = v20;
            v35 = 2112;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WiFi disabled for %@ (%@) with current services count %@, previous services count %@", buf, 0x2Au);
          }

          if (!v17 || v15 <= [v17 unsignedIntegerValue])
          {
            v21 = [*(a1 + 32) _presentedReconnectionEnableWiFiAlertForVehicle:v6];

            if (v21)
            {
              v22 = CarGeneralLogging();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v30 = v6;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Existing enable WiFi alert for %@, cancelling presentation", buf, 0xCu);
              }
            }

            else
            {
              [*(a1 + 32) _presentReconnectionEnableWiFiAlertForVehicle:v6];
            }
          }

          v26 = [*(a1 + 32) serviceCountDuringAlertForBluetoothAddress];
          v27 = [NSNumber numberWithUnsignedInteger:v15];
          [v26 setObject:v27 forKey:*(a1 + 40)];

LABEL_20:
          goto LABEL_21;
        }
      }

      v17 = CarGeneralLogging();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v25 = *(a1 + 40);
      *buf = 138412290;
      v30 = v25;
      v24 = "skipping fast-reconnection with %@, no Wi-Fi credentials";
    }

    else
    {
      v17 = CarGeneralLogging();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v23 = *(a1 + 40);
      *buf = 138412290;
      v30 = v23;
      v24 = "skipping fast-reconnection with %@, not a known & enabled CarPlay vehicle";
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
    goto LABEL_20;
  }
}

void sub_10002399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000239B4(uint64_t a1)
{
  v2 = [*(a1 + 32) vehicleStore];
  v4 = [v2 vehicleForBluetoothAddress:*(a1 + 40)];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 32) _dismissReconnectionEnableWiFiAlertForVehicle:v4];
  }

  v3 = [*(a1 + 32) serviceCountDuringAlertForBluetoothAddress];
  [v3 removeObjectForKey:*(a1 + 40)];
}

void sub_100023BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100023BF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) pairedVehiclesConnectedOnBluetooth];
    v6 = [v5 anyObject];
    v7 = v6;
    if (v6)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v8 = [v6 carplayWiFiUUID];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 67109120;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "isBluetoothInCar %i", buf, 8u);
    }
  }
}

void sub_100023E80(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "handleBluetoothClassicPairingCompletedForDeviceAddress: %@ name: %@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 _isRestricted:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = [[CRVehicle alloc] initWithIdentifier:0 certificateSerial:0];
    [v9 setBluetoothAddress:*(a1 + 32)];
    [v9 setVehicleName:*(a1 + 40)];
    v10 = 0;
    if (*(a1 + 72) == 1)
    {
      v11 = [*(a1 + 48) preferencesManager];
      v12 = [v11 isCarPlaySetupEnabled];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v10 = 0;
      }

      else
      {
        v10 = 2;
      }
    }

    [v9 setPairingStatus:v10];
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saving vehicle %@ from new BT Classic pairing.", buf, 0xCu);
    }

    v15 = [*(a1 + 48) saveVehicle:v9];
    (*(*(a1 + 56) + 16))(*(a1 + 56), v15 != 0, 0);
  }
}

void sub_100024180(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "startBluetoothLEPairingForIdentifier: %@ name: %@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v15 = 0;
  v6 = [v5 _isRestricted:&v15];
  v7 = v15;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024378;
    v12[3] = &unk_1000DDF78;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [v8 setCurrentBluetoothPairingCompletion:v12];
    v9 = objc_alloc_init(CRPairingPromptFlowController);
    [(CRPairingPromptFlowController *)v9 setPromptDelegate:*(a1 + 48)];
    [*(a1 + 48) setCurrentPromptFlowController:v9];
    [(CRPairingPromptFlowController *)v9 handleBluetoothPairingStartedForDeviceIdentifier:*(a1 + 32) showBluetoothOnlyOption:0];
    v10 = [[NSUUID alloc] initWithUUIDString:*(a1 + 32)];
    v11 = [*(a1 + 48) messagingConnector];
    [v11 pairWithBluetoothLEIdentifier:v10 deviceName:*(a1 + 40)];
  }
}

void sub_100024378(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = (a1 + 32);
  v10 = [*(a1 + 32) isEqual:v7];
  v11 = CarPairingLogging();
  v12 = v11;
  if (v10)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v13)
      {
        v14 = *v9;
        v20 = 141558275;
        v21 = 1752392040;
        v22 = 2113;
        v23 = v14;
        v15 = "pairing succeeded for %{private, mask.hash}@";
        v16 = v12;
        v17 = 22;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
      }
    }

    else if (v13)
    {
      v18 = *v9;
      v20 = 141558531;
      v21 = 1752392040;
      v22 = 2113;
      v23 = v18;
      v24 = 2112;
      v25 = v8;
      v15 = "pairing failed for %{private, mask.hash}@, error: %@";
      v16 = v12;
      v17 = 32;
      goto LABEL_10;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), a3, v8, v19);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100084160(v7, (a1 + 32));
  }

LABEL_12:
}

void sub_100024628(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 141558275;
    v21 = 1752392040;
    v22 = 2113;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "startBluetoothClassicPairingForDeviceAddress: %{private, mask.hash}@", buf, 0x16u);
  }

  if (*(a1 + 64))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v19 = 0;
    v6 = [v5 _isRestricted:&v19];
    v4 = v19;
    if (v6)
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_15;
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002489C;
  v16[3] = &unk_1000DDF78;
  v7 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  [v7 setCurrentBluetoothPairingCompletion:v16];
  v8 = [*(a1 + 40) vehicleStore];
  v9 = [v8 vehicleForBluetoothAddress:*(a1 + 32)];

  if (v9)
  {
    v10 = CarPairingLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000841D0();
    }

    [v9 setBluetoothAddress:0];
    [*(a1 + 40) removeVehicle:v9];
  }

  v11 = objc_alloc_init(CRPairingPromptFlowController);
  [(CRPairingPromptFlowController *)v11 setPromptDelegate:*(a1 + 40)];
  [*(a1 + 40) setCurrentPromptFlowController:v11];
  [(CRPairingPromptFlowController *)v11 handleBluetoothPairingStartedForDeviceIdentifier:*(a1 + 32) showBluetoothOnlyOption:*(a1 + 64)];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) bluetoothManager];
  v14 = v13;
  v15 = *(a1 + 32);
  if (v12)
  {
    [v13 confirmPairingWithBluetoothAddress:v15 numericCode:*(a1 + 48)];
  }

  else
  {
    [v13 pairWithBluetoothAddress:v15];
  }

LABEL_15:
}

void sub_10002489C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = (a1 + 32);
  v10 = [*(a1 + 32) isEqual:v7];
  v11 = CarPairingLogging();
  v12 = v11;
  if (v10)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v13)
      {
        v14 = *v9;
        v20 = 141558275;
        v21 = 1752392040;
        v22 = 2113;
        v23 = v14;
        v15 = "pairing succeeded for %{private, mask.hash}@";
        v16 = v12;
        v17 = 22;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
      }
    }

    else if (v13)
    {
      v18 = *v9;
      v20 = 141558531;
      v21 = 1752392040;
      v22 = 2113;
      v23 = v18;
      v24 = 2112;
      v25 = v8;
      v15 = "pairing failed for %{private, mask.hash}@, error: %@";
      v16 = v12;
      v17 = 32;
      goto LABEL_10;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), a3, v8, v19);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100084160(v7, (a1 + 32));
  }

LABEL_12:
}

void sub_100024B20(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CarPlay connection request startSessionProperties: %@", &buf, 0xCu);
  }

  [*(a1 + 40) _setupStartSessionTimerIfNeeded];
  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);
    v81 = 0;
    v5 = [v4 _isRestricted:&v81];
    v63 = v81;
    if (v5)
    {
      v6 = CarGeneralLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000842B4();
      }

      (*(*(a1 + 48) + 16))();
LABEL_72:

      return;
    }

    v8 = [*(a1 + 40) messagingConnector];
    v64 = [v8 vehicleAccessoryForiAPConnectionIdentifier:*(a1 + 56)];

    if (!v64)
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100084240((a1 + 56));
      }

      v10 = *(a1 + 48);
      v11 = [NSError errorWithDomain:@"com.apple.carkit" code:3 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);
    }

    v62 = [NSSet setWithObjects:@"SSID_STR", @"password", @"CHANNEL", 0];
    v60 = [v62 setByAddingObject:@"securityType"];
    v61 = [*(a1 + 32) cr_dictionaryWithValuesForPresentKeys:v60];
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v85 = 0x3032000000;
    v86 = sub_100022D08;
    v87 = sub_100022D18;
    v88 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = sub_100022D08;
    v75 = sub_100022D18;
    v76 = 0;
    v12 = [(__CFString *)v61 allKeys];
    v13 = [NSSet setWithArray:v12];
    v14 = [v62 isSubsetOfSet:v13];

    if (v14)
    {
      v15 = *(a1 + 40);
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_100025600;
      v65[3] = &unk_1000DE018;
      v68 = &v77;
      v69 = &v71;
      v65[4] = v15;
      v66 = v61;
      v67 = v64;
      p_buf = &buf;
      [v15 _findWirelessPairedVehicleForMessagingVehicle:v67 result:v65];
    }

    else
    {
      v16 = CarGeneralLogging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v82 = 138412290;
        v83 = v61;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Start session without Wi-Fi credentials: %@", v82, 0xCu);
      }
    }

    v17 = [NSMutableSet setWithObjects:@"wiredIPAddresses", @"port", @"deviceID", @"publicKey", @"sourceVersion", 0];
    v18 = v17;
    if (*(v78 + 24) == 1)
    {
      [v17 addObject:@"wirelessIPAddresses"];
    }

    [v18 addObject:@"supportsMutualAuth"];
    v19 = [*(a1 + 32) cr_dictionaryWithValuesForPresentKeys:v18];
    v20 = [v19 mutableCopy];

    v21 = *(*(&buf + 1) + 40);
    if (v21)
    {
      [v20 setObject:v21 forKey:@"carplayWiFiUUID"];
    }

    v22 = CRLocalizedStringForKey();
    [v20 setObject:v22 forKey:@"displayName"];

    v23 = [v64 certificateSerialNumber];
    if (v23)
    {
      [v20 setObject:v23 forKey:@"authenticationCertificateSerial"];
    }

    v24 = v72[5];
    if (v24)
    {
      goto LABEL_75;
    }

    v25 = [*(a1 + 40) vehicleStore];
    v26 = [v64 certificateSerialNumber];
    v27 = [v25 vehicleForCertificateSerial:v26];
    v28 = v72[5];
    v72[5] = v27;

    v24 = v72[5];
    if (v24)
    {
LABEL_75:
      v29 = [v24 identifier];
      v30 = v29 == 0;

      if (!v30)
      {
        v31 = [v72[5] identifier];
        [v20 setObject:v31 forKey:@"pairedVehicleIdentifier"];
      }
    }

    v32 = [*(a1 + 40) carPlaySimulatorActive];
    v33 = [*(a1 + 40) remoteDeviceConnected];
    v34 = [[CARSessionRequestHost alloc] initWithHostProperties:v20];
    [v34 setWiredCarPlaySimulator:v32];
    [v34 setRemoteDeviceConnected:v33];
    [*(a1 + 40) _mainQueue_startSessionForHost:v34 reply:*(a1 + 48)];
    v35 = [*(a1 + 40) sessionBooster];
    [v35 connectionRequested];

    v36 = [*(a1 + 40) featuresAvailabilityAgent];
    v37 = [v36 deviceSupportedCarPlayFeatures];

    v38 = CRCarPlayFeaturesAllFerriteFeatures();
    if ((v38 & v37) != CRCarPlayFeaturesAllFerriteFeatures())
    {
      v41 = 0;
      goto LABEL_64;
    }

    objc_opt_class();
    v39 = [*(a1 + 32) objectForKey:@"clusterAssetIdentifer"];
    if (v39 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    objc_opt_class();
    v42 = [*(a1 + 32) objectForKey:@"clusterAssetVersion"];
    if (v42 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v59 = v42;
    }

    else
    {
      v59 = 0;
    }

    objc_opt_class();
    v43 = [*(a1 + 32) objectForKey:@"SDKVersion"];
    if (v43 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v40)
    {
      v41 = 0;
      if (![v40 length] || !v59 || !v44)
      {
        goto LABEL_63;
      }

      if ([v44 length])
      {
        v45 = CarGeneralLogging();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "start session message has asset information", v82, 2u);
        }

        if (v32)
        {
          v46 = v72[5];
          if (!v46)
          {
            v47 = CarPairingLogging();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *v82 = 0;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "creating a pairing for a simulated asset-supporting session", v82, 2u);
            }

            v48 = [CRVehicle vehicleForMessagingVehicle:v64];
            v49 = v72[5];
            v72[5] = v48;

            v46 = v72[5];
          }

          if (![v46 pairingStatus])
          {
            v50 = CarPairingLogging();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *v82 = 0;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "accepting the pairing for a simulated asset-supporting session", v82, 2u);
            }

            [v72[5] setPairingStatus:2];
          }

          v51 = [*(a1 + 40) saveVehicle:v72[5]];
          v52 = v72[5];
          v72[5] = v51;
        }

        [*(a1 + 40) _mainQueue_updateClusterAssetIdentifier:v40 assetVersion:v59 sdkVersion:v44 forVehicle:v72[5]];
        v41 = 1;
        goto LABEL_63;
      }
    }

    v41 = 0;
LABEL_63:

LABEL_64:
    v53 = [*(a1 + 40) currentPromptFlowController];
    v54 = v53;
    if (v53)
    {
      v55 = [v53 messagingVehicle];
      v56 = [v64 isEqual:v55];

      if (v56)
      {
        v57 = CarPairingLogging();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = @"NO";
          if (v41)
          {
            v58 = @"YES";
          }

          *v82 = 138412290;
          v83 = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "received start session for prompt flow, has theme asset info: %@", v82, 0xCu);
        }

        [v54 handleReceivedStartSessionRequestWithThemeAssetInformation:v41];
      }
    }

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v77, 8);
    goto LABEL_72;
  }

  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000842F0();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100025584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_100025600(void *a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(a1[7] + 8) + 24) = 1;
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002577C;
    v10[3] = &unk_1000DDFF0;
    v12 = a1[9];
    v11 = v4;
    [v5 _saveWiFiCredentials:v6 fromMessagingVehicle:v7 forWirelessPairedVehicle:v11 result:v10];
    v8 = v11;
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[6] vehicleName];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "not saving WiFi credentials, not a wireless paired vehicle: %@", buf, 0xCu);
    }
  }
}

void sub_10002577C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008432C();
    }

    v9 = [*(a1 + 32) carplayWiFiUUID];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_100025978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025998(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 isValid];

  if (v5)
  {
    v6 = CarPairingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "startSessionTimer dismissPromptPresenter", v8, 2u);
    }

    v7 = [WeakRetained setupPromptDirector];
    [v7 dismissPromptPresenter];
  }
}

void sub_100025CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100025CFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v5 = [*(a1 + 32) messagingConnector];
    v6 = [v5 connectedVehicles];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 allObjects];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 transportType] == 1 && objc_msgSend(v12, "supportsUSBCarPlay") && (objc_msgSend(v12, "supportsCarPlayConnectionRequest") & 1) == 0)
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

void sub_100025FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10002600C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 48) + 8);
    obj = *(v3 + 40);
    v4 = [v2 _isRestricted:&obj];
    objc_storeStrong((v3 + 40), obj);
    if (v4)
    {
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v27 = v6;
        v7 = "wantsCarPlayControlAdvertisingForWiFiUUID:%@ CarPlay restricted";
        v8 = v5;
        v9 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [*(a1 + 40) pairedVehiclesConnectedOnBluetooth];
    v10 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = v10;
    v12 = *v22;
LABEL_10:
    v13 = 0;
    while (1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v21 + 1) + 8 * v13);
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = *(a1 + 32);
      v16 = [*(*(&v21 + 1) + 8 * v13) carplayWiFiUUID];
      if (([v15 isEqualToString:v16] & 1) == 0)
      {
        break;
      }

      v17 = [v14 requiresBonjour];

      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = CarGeneralLogging();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "wantsCarPlayControlAdvertisingForWiFiUUID: yes", buf, 2u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_23:
      if (v11 == ++v13)
      {
        v11 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (!v11)
        {
          goto LABEL_25;
        }

        goto LABEL_10;
      }
    }

LABEL_20:
    v19 = CarGeneralLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 138412546;
      v27 = v20;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "wantsCarPlayControlAdvertisingForWiFiUUID:%@ didn't match criteria for vehicle %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "wantsCarPlayControlAdvertisingForWiFiUUID: nil UUID";
    v8 = v5;
    v9 = 2;
    goto LABEL_7;
  }

LABEL_25:
}

void sub_1000264E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_100026518(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026594;
  v5[3] = &unk_1000DE0B8;
  v6 = *(a1 + 48);
  return [v2 _saveWiFiCredentials:v1 forAccessoryConnectionIdentifier:v3 result:v5];
}

void sub_100026594(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100026768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10002678C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else if (*(a1 + 40))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [*(a1 + 32) vehicleStore];
    v6 = [v5 allStoredVehicles];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = [v11 carplayWiFiUUID];
          if ([v12 isEqualToString:v13])
          {
            v14 = [v11 isPaired];

            if (v14)
            {
              *(*(*(a1 + 56) + 8) + 24) = 1;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

LABEL_15:
  }
}

void sub_100026AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100026B10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (!v4)
  {
    v6 = [[NSUUID alloc] initWithUUIDString:*(a1 + 40)];
    if (v6)
    {
      v7 = [*(a1 + 32) vehicleStore];
      v8 = [v7 vehicleForIdentifier:v6];

      if (v8)
      {
        [v8 setViewAreas:*(a1 + 48)];
        v9 = CarGeneralLogging();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving vehicle %@ for view areas update", buf, 0xCu);
        }

        v10 = [*(a1 + 32) vehicleStore];
        v11 = [v10 saveVehicle:v8];

        if (v11)
        {
          v12 = [v11 viewAreas];
          v13 = *(*(a1 + 72) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
        }

        else
        {
          v17 = CarGeneralLogging();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10008439C();
          }

          v18 = *(a1 + 56);
          if (!v18)
          {
            goto LABEL_19;
          }

          v14 = [NSError errorWithDomain:@"com.apple.carkit" code:2 userInfo:0];
          (*(v18 + 16))(v18, 0, v14);
        }

LABEL_19:
        goto LABEL_20;
      }

      v16 = *(a1 + 56);
      if (v16)
      {
        v11 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
        (*(v16 + 16))(v16, 0, v11);
        goto LABEL_19;
      }
    }

    else
    {
      v15 = *(a1 + 56);
      if (!v15)
      {
LABEL_21:

        return;
      }

      v8 = [NSError errorWithDomain:@"com.apple.carkit" code:9 userInfo:0];
      (*(v15 + 16))(v15, 0, v8);
    }

LABEL_20:

    goto LABEL_21;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, *(*(*(a1 + 64) + 8) + 40));
  }
}

void sub_100026F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100026F70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [[NSUUID alloc] initWithUUIDString:*(a1 + 40)];
    if (v6)
    {
      v7 = [*(a1 + 32) vehicleStore];
      v8 = [v7 vehicleForIdentifier:v6];

      v9 = [v8 viewAreas];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
      v13 = *(*(a1 + 56) + 8);
      v8 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }
}

void sub_1000271E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100027204(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4 || !*(a1 + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) vehicleStore];
    v6 = [v5 allStoredVehicles];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = [v11 certificateSerialNumber];
          LODWORD(v12) = [v12 isEqualToData:v13];

          if (v12)
          {
            *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _isVehicleActionable:v11];
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

void sub_1000274FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100027520(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0 && *(a1 + 40))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) vehicleStore];
    v6 = [v5 allStoredVehicles];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = [v11 certificateSerialNumber];
          LODWORD(v12) = [v12 isEqualToData:v13];

          if (v12)
          {
            *(*(*(a1 + 56) + 8) + 24) = [v11 isPaired];
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void sub_100027804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100027828(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _isRestricted:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0 && *(a1 + 40))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) vehicleStore];
    v6 = [v5 allStoredVehicles];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = [v11 certificateSerialNumber];
          LODWORD(v12) = [v12 isEqualToData:v13];

          if (v12)
          {
            *(*(*(a1 + 56) + 8) + 24) = [v11 enhancedIntegrationStatus];
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void sub_100027BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027C0C(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresAvailabilityAgent];
  *(*(*(a1 + 40) + 8) + 24) = [v2 deviceSupportedCarPlayFeatures];
}

void sub_100027DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027DD8(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresAvailabilityAgent];
  *(*(*(a1 + 48) + 8) + 24) = [v2 disablesCarPlayFeatures:*(a1 + 56) forVehicleIdentifier:*(a1 + 40)];
}

void sub_100027F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027F94(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresAvailabilityAgent];
  *(*(*(a1 + 48) + 8) + 24) = [v2 setCarPlayFeatures:*(a1 + 56) disabled:*(a1 + 64) forVehicleIdentifier:*(a1 + 40)];
}

void sub_100028198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000281BC(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresAvailabilityAgent];
  *(*(*(a1 + 48) + 8) + 24) = [v2 supportedCarPlayFeaturesForCertificateSerial:*(a1 + 40)];
}

void sub_1000283C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000283EC(uint64_t a1)
{
  v2 = +[CRCertificationOverridesServiceAgent nextSessionOverrideAirPlayFeatureStrings];
  if (v2)
  {
    v3 = CarCertificationOverrideLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "one-time applying certification override feature strings: %{public}@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
    [CRCertificationOverridesServiceAgent setNextSessionOverrideAirPlayFeatureStrings:0];
  }

  else
  {
    v4 = [*(a1 + 32) featuresAvailabilityAgent];
    [v4 supportedCarPlayFeaturesForVehicleIdentifier:*(a1 + 40)];

    v5 = CRCarPlayFeaturesAsAirPlayFeatures();
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000285DC(uint64_t a1)
{
  v2 = [*(a1 + 32) vehicleStore];
  v3 = [v2 vehicleForIdentifier:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 subtitleSettings];
    if (v4)
    {
      v5 = v4;
      v6 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        v7 = "replying with subtitle settings: %{public}@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
      }
    }

    else
    {
      v5 = +[CRSubtitleSettings defaultSettings];
      v6 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        v7 = "replying with default subtitle settings: %{public}@";
        goto LABEL_10;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5, 0);
    goto LABEL_12;
  }

  v8 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100084590((a1 + 40));
  }

  v9 = *(a1 + 48);
  v5 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
  (*(v9 + 16))(v9, 0, v5);
LABEL_12:
}

void sub_100028898(uint64_t a1)
{
  v2 = [*(a1 + 32) vehicleStore];
  v3 = [v2 vehicleForIdentifier:*(a1 + 40)];

  v4 = sub_100002A68(6uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "saving subtitle settings: %{public}@", buf, 0xCu);
    }

    [v3 setSubtitleSettings:*(a1 + 48)];
    v7 = [*(a1 + 32) vehicleStore];
    v8 = [v7 saveVehicle:v3];

    v9 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "saved vehicle for subtitle settings update: %@", buf, 0xCu);
    }

    v10 = [*(a1 + 32) videoSettingSessionController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100028AFC;
    v13[3] = &unk_1000DE1F8;
    v11 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v10 performForVehicleID:v11 videoSettingsRelayUpdate:v13];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084590((a1 + 40));
    }

    v12 = *(a1 + 56);
    v8 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    (*(v12 + 16))(v12, 0, v8);
  }
}

void sub_100028BCC(uint64_t a1)
{
  v2 = [*(a1 + 32) vehicleStore];
  v3 = [v2 vehicleForIdentifier:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 videoDiagnosticsEnabled];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &__kCFBooleanFalse;
    }

    v6 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 BOOLValue];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "replying with video diagnostics enabled: %{public}@", &v12, 0xCu);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    v10 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100084600((a1 + 40));
    }

    v11 = *(a1 + 48);
    v5 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    v9 = *(v11 + 16);
  }

  v9();
}

void sub_100028E40(uint64_t a1)
{
  v2 = [*(a1 + 32) vehicleStore];
  v3 = [v2 vehicleForIdentifier:*(a1 + 40)];

  v4 = sub_100002A68(6uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "saving video diagnostics enabled: %{public}@", buf, 0xCu);
    }

    v7 = [NSNumber numberWithBool:*(a1 + 56)];
    [v3 setVideoDiagnosticsEnabled:v7];

    v8 = [*(a1 + 32) vehicleStore];
    v9 = [v8 saveVehicle:v3];

    v10 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "saved vehicle for video diagnostics setting update: %@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) videoSettingSessionController];
    v12 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000290C4;
    v15[3] = &unk_1000DE240;
    v16 = *(a1 + 56);
    [v11 performForVehicleID:v12 videoSettingsRelayUpdate:v15];

    v13 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084600((a1 + 40));
    }

    v14 = *(a1 + 48);
    v9 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    v13 = *(v14 + 16);
  }

  v13();
}

void sub_100029194(uint64_t a1)
{
  v2 = [*(a1 + 32) videoSettingSessionController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002928C;
  v6[3] = &unk_1000DE2B8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  LOBYTE(v3) = [v2 performForVehicleID:v3 videoSettingsRelayUpdate:v6];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 48);
    v5 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

void sub_10002928C(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100029318;
  v3[3] = &unk_1000DE290;
  v4 = *(a1 + 32);
  [a2 fetchAnalyticsWithCompletion:v3];
}

void sub_1000293F0(uint64_t a1)
{
  v2 = [*(a1 + 32) videoSettingSessionController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000294E8;
  v6[3] = &unk_1000DE2B8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  LOBYTE(v3) = [v2 performForVehicleID:v3 videoSettingsRelayUpdate:v6];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 48);
    v5 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

void sub_1000294E8(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100029574;
  v3[3] = &unk_1000DE2E0;
  v4 = *(a1 + 32);
  [a2 fetchLicensesTextWithCompletion:v3];
}

void sub_100029654(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionStatus];
  v3 = [v2 currentSession];

  if (!v3)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v8 = "stop session, no current session";
      v9 = v7;
      v10 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }

LABEL_9:

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
    goto LABEL_10;
  }

  v4 = [v3 configuration];
  v5 = [v4 sessionIdentifier];
  v6 = [v5 isEqual:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = 138412290;
      v13 = v11;
      v8 = "stop session, current sessionID != vehicle sessionID: %@";
      v9 = v7;
      v10 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [*(a1 + 32) setShouldDisconnectOnSessionDisconnect:1];
  [v3 sendStopSessionWithReason:*(a1 + 56)];
LABEL_10:
}

void sub_10002990C(uint64_t a1)
{
  v2 = +[NSMutableString string];
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  v4 = [v3 connectedAccessories];

  v5 = [*(a1 + 32) messagingConnector];
  v6 = [v5 connectedVehicles];

  v45 = v4;
  v7 = [v4 count];
  v43 = v7;
  if (v7 < 2)
  {
    if (v7 == 1)
    {
      [v2 appendFormat:@"%ld accessory connected:\n\n", 1];
    }
  }

  else
  {
    [v2 appendFormat:@"%ld accessories connected:\n\n", v7];
  }

  v44 = v2;
  v51 = +[NSMutableArray array];
  v8 = [*(a1 + 32) vehicleStore];
  v50 = [v8 allStoredVehicles];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v47 = *v59;
    v49 = 0;
    do
    {
      v13 = 0;
      v14 = v11;
      v15 = v12;
      do
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * v13);
        v17 = [v16 radarDescription];
        v12 = [v16 analyticsDescription];

        v18 = a1;
        v19 = [*(a1 + 32) vehicleMatchingMessagingVehicle:v16 inVehicles:v50];
        v20 = [v19 internalNotes];
        v21 = [v20 length];

        if (v21)
        {
          v22 = [v19 internalNotes];
          v23 = [v17 stringByAppendingFormat:@"Notes: %@\n", v22];

          v17 = v23;
        }

        if (CRIsInternalInstall())
        {
          v24 = [v19 assetDescription];

          v49 = v24;
        }

        v11 = [v19 wallpaperDescription];

        if ([v16 supportsCarPlayConnectionRequest])
        {
          v25 = 1;
        }

        else
        {
          v26 = [v19 supportsStartSessionRequest];
          v25 = [v26 BOOLValue];
        }

        a1 = v18;
        [v51 addObject:v17];

        v13 = v13 + 1;
        v14 = v11;
        v15 = v12;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v10);
  }

  else
  {
    v49 = 0;
    v11 = 0;
    v25 = 0;
    v12 = 0;
  }

  v27 = [v51 componentsJoinedByString:@"\n"];
  [v44 appendString:v27];

  if (v43 > [obj count])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v45;
    v29 = [v28 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v55;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v55 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v54 + 1) + 8 * i);
          if (([v33 supportsCarPlay] & 1) == 0)
          {
            v34 = [*(a1 + 32) accessoryRadarDescription:v33];
            [v44 appendString:v34];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v30);
    }
  }

  v35 = [*(a1 + 32) loggingChannelManager];
  v36 = [v35 currentLoggingFileReceiver];

  v37 = CarGeneralLogging();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_100084670();
  }

  v38 = +[CRDiagnosticsService sharedInstance];
  [v38 setSessionStatus:*(*(a1 + 32) + 88)];
  v39 = a1;
  v40 = *(a1 + 40);
  v41 = *(a1 + 48);
  v42 = *(v39 + 64);
  v48 = *(v39 + 56);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100029E5C;
  v52[3] = &unk_1000DD960;
  v53 = *(v39 + 72);
  [v38 collectDiagnosticsWithDeviceScreenshotURL:v40 carScreenshotURL:v41 attachmentURLs:v48 accessoryDetails:v12 accessoryDescription:v44 supportsStartSession:v25 activeBundleIdentifier:v42 wallpaperDescription:v11 assetDescription:v49 loggingFileReceiver:v36 completionHandler:v52];
}

uint64_t sub_100029E5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100029F0C(uint64_t a1)
{
  v2 = [*(a1 + 32) loggingChannelManager];
  v3 = [v2 currentLoggingFileReceiver];

  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100084670();
  }

  v5 = +[CRDiagnosticsService sharedInstance];
  [v5 setSessionStatus:*(*(a1 + 32) + 88)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A018;
  v6[3] = &unk_1000DE358;
  v7 = *(a1 + 40);
  [v5 collectVehicleLogsWithReceiver:v3 completionHandler:v6];
}

void sub_10002A018(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 absoluteString];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received vehicle log url reply: %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10002A37C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10002A6AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002A6C4(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fetchScaledDisplaysWithCertificateSerialNumber: fetching saved scale from the vehicleStore on main thread", buf, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) vehicleStore];
    v4 = [v3 vehicleForCertificateSerial:*(a1 + 32)];

    if (v4)
    {
      v5 = [v4 displayScaleMode];
      goto LABEL_12;
    }

    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100084714();
    }
  }

  else
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084750();
    }
  }

  v5 = 2;
LABEL_12:

  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithInteger:v5];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fetchScaledDisplaysWithCertificateSerialNumber: using scale mode: %@", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = CRScaledDisplaysWithAirplayDisplays();
  v12 = 0;
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_10002A944(uint64_t a1)
{
  +[CRCarPlayPreferences isPreflightThemeAssetEnabled];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return _objc_release_x1();
}

uint64_t sub_10002AA50(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DELETING ALL THEME ASSET PAIRINGS TO CHANGE PREFLIGHT ASSET SETTING", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) vehicleStore];
  v4 = [v3 allStoredVehicles];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 supportsThemeAssets];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          [*(a1 + 32) removeVehicle:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  [CRCarPlayPreferences setPreflightThemeAssetEnabled:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_10002AD14(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPromptFlowController];
  if (v2)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002AE7C;
    v9[3] = &unk_1000DE3D0;
    v3 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    [v3 setCurrentBluetoothConfirmationHandler:v9];
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "showing numeric confirmation in pairing prompt flow", v8, 2u);
    }

    v5 = [*(a1 + 48) stringValue];
    v6 = [*(a1 + 40) UUIDString];
    [v2 handleBluetoothPairingConfirmationRequestForDeviceIdentifier:v6 vehicleName:*(a1 + 56) numericCode:v5];

    v7 = v10;
  }

  else
  {
    v7 = CarPairingLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008478C();
    }
  }
}

void sub_10002AE7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = [*(a1 + 32) UUIDString];
  v8 = [v7 isEqual:v5];

  v9 = CarPairingLogging();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = @"confirmed";
      v15 = 1752392040;
      v14 = 141558531;
      if (!v6)
      {
        v12 = @"declined";
      }

      v16 = 2113;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "pairing for %{private, mask.hash}@ was %{public}@", &v14, 0x20u);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v6, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000847C8(v5, (a1 + 32));
    }
  }
}

void sub_10002B0E4(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPromptFlowController];
  v3 = CarPairingLogging();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "showing BLE pairing failure in pairing prompt flow", v5, 2u);
    }

    v4 = [*(a1 + 40) UUIDString];
    [v2 handleBluetoothPairingFailedForDeviceIdentifier:v4 vehicleName:*(a1 + 48) isTimeout:0];
    [*(a1 + 32) _invokeCurrentBluetoothPairingCompletionWithDeviceIdentifier:v4 success:0 error:*(a1 + 56)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100084838();
  }
}

void sub_10002B260(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  [*(a1 + 40) _invokeCurrentBluetoothPairingCompletionWithDeviceIdentifier:v2 success:1 error:0];
}

void sub_10002B358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSSet setWithObject:*(a1 + 40)];
  [v2 handleDidConnectMessagingToVehicles:v3];

  v4 = [*(a1 + 40) analyticsDescription];
  v13 = [NSMutableDictionary dictionaryWithDictionary:v4];

  v5 = [v13 objectForKeyedSubscript:@"modelName"];
  [v13 setObject:v5 forKeyedSubscript:@"iAPModel"];

  v6 = [v13 objectForKeyedSubscript:@"manufacturer"];
  [v13 setObject:v6 forKeyedSubscript:@"iAPManufacturer"];

  [v13 removeObjectForKey:@"modelName"];
  [v13 removeObjectForKey:@"manufacturer"];
  v7 = [*(a1 + 40) transportType];
  if ((v7 - 1) > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_1000DE7A0 + (v7 - 1));
  }

  [v13 setObject:v8 forKeyedSubscript:CARTransport];
  v9 = CARCarKitVehicleInformationEvent;
  v10 = +[NSDate date];
  v11 = [CARConnectionEvent eventWithName:v9 type:4 date:v10 payload:v13];

  v12 = [*(a1 + 32) connectionTimeServiceAgent];
  [v12 recordConnectionEvent:v11 completion:&stru_1000DE460];
}

void sub_10002B528(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100084874(v4);
    }
  }
}

void sub_10002B61C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSSet setWithObject:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B6E4;
  v5[3] = &unk_1000DE488;
  v5[4] = *(a1 + 32);
  [v2 enumerateStoredVehiclesForMessagingVehicles:v3 usingBlock:v5];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CARSessionAccessoryUpdatedNotification, 0, 0, 1u);
}

id *sub_10002B6E4(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] updateStoredVehicle:a3 usingMessagingVehicle:a2];
  }

  return result;
}

void sub_10002B9C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v23 = a3;
  if (v5)
  {
    *&v30 = 0;
    *(&v30 + 1) = &v30;
    v31 = 0x3032000000;
    v32 = sub_100022D08;
    v33 = sub_100022D18;
    v34 = 0;
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 32);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002BD64;
    v27[3] = &unk_1000DDFF0;
    v29 = &v30;
    v9 = v5;
    v28 = v9;
    [v7 _saveWiFiCredentials:v6 fromMessagingVehicle:v8 forWirelessPairedVehicle:v9 result:v27];
    v22 = CRLocalizedStringForKey();
    v10 = [*(a1 + 32) certificateSerialNumber];
    v11 = [v9 identifier];
    v12 = [CARSessionRequestHost alloc];
    v13 = [v12 initWithDisplayName:v22 authenticationCertificateSerial:v10 pairedVehicleIdentifier:v11 wiFiUUID:*(*(&v30 + 1) + 40) bleStartSessionMessage:*(a1 + 56)];
    v14 = *(a1 + 40);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002BE14;
    v25[3] = &unk_1000DE4B0;
    v15 = v13;
    v26 = v15;
    [v14 _mainQueue_startSessionForHost:v15 reply:v25];
    v16 = [*(a1 + 56) assetIdentifier];
    v17 = [*(a1 + 56) assetVersion];
    v18 = [*(a1 + 56) sdkVersion];
    if (v16 && [v16 length] && v17 && v18 && objc_msgSend(v18, "length"))
    {
      v19 = CarGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "start session message has asset information", buf, 2u);
      }

      [*(a1 + 40) _mainQueue_updateClusterAssetIdentifier:v16 assetVersion:v17 sdkVersion:v18 forVehicle:v9];
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v20 = CarGeneralLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) vehicleName];
      LODWORD(v30) = 138412290;
      *(&v30 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "not handling CarPlayStartSession, not a wireless paired vehicle: %@", &v30, 0xCu);
    }
  }
}

void sub_10002BD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002BD64(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008432C();
    }

    v9 = [*(a1 + 32) carplayWiFiUUID];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10002BE14(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008493C(a1);
    }
  }
}

id sub_10002BF18(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPromptFlowController];

  if (v2)
  {
    v3 = [*(a1 + 32) currentPromptFlowController];
    [v3 handleDisconnectedMessagingVehicle:*(a1 + 40)];
  }

  [*(a1 + 32) _dismissApprovalAlertForMessagingVehicle:*(a1 + 40)];
  [*(a1 + 32) _dismissPairingAlertForMessagingVehicle:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _dismissEnhancedIntegrationAlertForMessagingVehicle:v5];
}

void sub_10002C698(uint64_t a1)
{
  [*(a1 + 32) handleAnyMessagingConnectionsToVehicles];
  v2 = *(a1 + 32);
  v3 = [v2 pairedVehiclesConnectedOnBluetooth];
  [v2 attemptConnectionWithVehicles:v3];
}

id sub_10002CE88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 certificateSerialNumber];
  v5 = [v3 certificateSerialNumber];

  v6 = [v4 isEqualToData:v5];
  return v6;
}

void sub_10002CFC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v8 PPID];
    if (v10)
    {
      v11 = [*(a1 + 32) mutableCopy];
      [v11 setObject:v10 forKey:@"CARPLAY_PPID"];
      [*(a1 + 40) _saveWiFiCredentials:v11 fromMessagingVehicle:v8 forWirelessPairedVehicle:v7 result:*(a1 + 48)];
    }

    else
    {
      [*(a1 + 40) _saveWiFiCredentials:*(a1 + 32) fromMessagingVehicle:v8 forWirelessPairedVehicle:v7 result:*(a1 + 48)];
    }
  }

  else
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 vehicleName];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring WiFi credentials for vehicle %@", &v15, 0xCu);
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v9);
    }
  }
}

void sub_10002D624(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100084AF4();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

void sub_10002DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002DF3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "connected vehicle: %@ has pairing %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    [v8 updateStoredVehicle:v6 usingMessagingVehicle:v5];
    [*(a1 + 32) _sendCarPlayAvailabilityForMessagingVehicle:v5 storedVehicle:v6];
    [*(a1 + 32) _sendDeviceIdentifiersForMessagingVehicle:v5 pairingStatus:{objc_msgSend(v6, "pairingStatus")}];
    if ([v6 isPaired])
    {
      [*(a1 + 32) _requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:v5];
    }

    if ([*(a1 + 32) _shouldPromptEnhancedIntegrationForStoredVehicle:v6 messagingVehicle:v5])
    {
      [*(a1 + 32) _presentEnhancedIntegrationAlertForMessagingVehicle:v5];
    }
  }

  else
  {
    [v8 _sendCarPlayAvailabilityForMessagingVehicle:v5 storedVehicle:0];
  }

  [*(a1 + 32) _presentApprovalIfNecessaryForMessagingVehicle:v5 storedVehicle:v6];
}

id sub_10002E730(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    v9 = [v8 UUIDString];
    v10 = [v6 identifier];
    v11 = [v10 UUIDString];
    v17 = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Merging incomplete pairing %@ into pairing %@", &v17, 0x16u);
  }

  [v6 mergeAttributesFromVehicle:v5];
  if (([v6 isEqual:v5] & 1) == 0)
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 identifier];
      v14 = [v13 UUIDString];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing incomplete pairing %@", &v17, 0xCu);
    }

    v15 = [*(a1 + 32) vehicleStore];
    [v15 removeVehicle:v5];
  }

  return v6;
}

void sub_10002F830(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting on vehicle policy monitor observers", buf, 2u);
  }

  v3 = [*(a1 + 32) monitoringService];
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002F93C;
  v8[3] = &unk_1000DE608;
  v6 = v4;
  v12 = *(a1 + 56);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 48);
  [v3 handleUpdatedVehicle:v6 enabled:v5 completion:v8];
}

void sub_10002F93C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002F9DC;
  v2[3] = &unk_1000DE608;
  v3 = *(a1 + 32);
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_10002F9DC(uint64_t a1)
{
  v2 = [*(a1 + 32) carplayWiFiUUID];
  v3 = *(a1 + 56);
  if (!v2)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v5 = *(a1 + 40);
    v6 = [NSSet setWithObject:*(a1 + 32)];
    [v5 attemptConnectionWithVehicles:v6];

    goto LABEL_6;
  }

  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 40) sessionRequestClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002FB08;
  v9[3] = &unk_1000DE5E0;
  v9[4] = *(a1 + 40);
  v10 = v2;
  v11 = *(a1 + 32);
  [v4 prepareForRemovingWiFiUUID:v10 completion:v9];

LABEL_6:
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_10002FB08(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FBB0;
  block[3] = &unk_1000DD6F0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10002FBB0(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiManager];
  v3 = [v2 removeNetworkCredentialsForCarPlayUUID:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084D70(a1);
    }
  }
}

void sub_10002FED8(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting on vehicle policy monitor observers", buf, 2u);
  }

  v3 = [*(a1 + 32) monitoringService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100030004;
  v9[3] = &unk_1000DE630;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v8;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v6;
  [v3 handleUpdatedVehicle:v4 enabled:0 completion:v9];
}

void sub_100030004(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000300BC;
  block[3] = &unk_1000DE630;
  v2 = (a1 + 56);
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *v2;
  v7 = v5;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000300BC(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionRequestClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030198;
  v6[3] = &unk_1000DE5E0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 48);
  [v2 prepareForRemovingWiFiUUID:v7 completion:v6];

  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100030198(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030240;
  block[3] = &unk_1000DD6F0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100030240(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiManager];
  v3 = [v2 removeNetworkCredentialsForCarPlayUUID:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084D70(a1);
    }
  }
}

void sub_1000311F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000312CC;
  block[3] = &unk_1000DE658;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000312CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CarPairingLogging();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supported App Clips: %{public}@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100084EB0(a1);
    }

    v7 = *(*(a1 + 48) + 16);
  }

  return v7();
}

void sub_1000314FC(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000315A8;
  v5[3] = &unk_1000DD480;
  v6 = *(a1 + 32);
  v4 = a2;
  [v4 setDismissHandler:v5];
  (*(*(a1 + 40) + 16))();
}

id sub_1000315A8(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "prompt presenter dismissed, canceling prompt flow", v4, 2u);
  }

  return [*(a1 + 32) cancel];
}

void sub_10003161C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100084F24();
  }

  [*(a1 + 32) cancel];
}

void sub_100033050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100033088(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented approval alert", v7, 2u);
  }

  v3 = os_transaction_create();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) outstandingApprovalAlerts];
  [v6 addObject:*(a1 + 40)];
}

void sub_100033130(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) outstandingApprovalAlerts];
  [v4 removeObject:*(a1 + 40)];

  switch(a2)
  {
    case 2:
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "approval alert cancelled", buf, 2u);
      }

      v6 = [*(a1 + 32) vehicleStore];
      v7 = [v6 removeVehicle:*(*(*(a1 + 56) + 8) + 40)];

      v8 = CarGeneralLogging();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Temporary vehicle removed.", v24, 2u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000851D0((a1 + 56));
      }

      goto LABEL_34;
    case 0:
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v11 = 2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "approval alert accepted", v23, 2u);
      }

      else
      {
        v11 = 2;
      }

LABEL_19:

      goto LABEL_20;
    case 1:
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "approval alert declined", v22, 2u);
      }

      v11 = 1;
      goto LABEL_19;
  }

  v11 = 0;
LABEL_20:
  if ([*(a1 + 48) transportType] == 2)
  {
    [*(a1 + 32) _sendDeviceIdentifiersForMessagingVehicle:*(a1 + 48) pairingStatus:v11];
  }

  [*(*(*(a1 + 56) + 8) + 40) setPairingStatus:v11];
  v12 = [*(a1 + 32) saveVehicle:*(*(*(a1 + 56) + 8) + 40)];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if ([*(a1 + 48) transportType] == 2 || objc_msgSend(*(a1 + 48), "transportType") == 4)
  {
    [*(a1 + 32) _sendCarPlayAvailabilityForMessagingVehicle:*(a1 + 48) storedVehicle:*(*(*(a1 + 56) + 8) + 40)];
  }

  if (!a2)
  {
    v15 = [*(a1 + 32) preferencesManager];
    v16 = [v15 isCarPlaySetupEnabled];
    v17 = [v16 BOOLValue];

    if ((v17 & 1) == 0)
    {
      if ([*(a1 + 48) transportType] == 1 && objc_msgSend(*(a1 + 48), "supportsWiredBluetoothPairing") && objc_msgSend(*(a1 + 48), "supportsWirelessCarPlay"))
      {
        [*(a1 + 32) _presentWiredBluetoothPairingAlertForMessagingVehicle:*(a1 + 48) storedVehicle:*(*(*(a1 + 56) + 8) + 40)];
      }

      if ([*(a1 + 32) _shouldPromptEnhancedIntegrationForStoredVehicle:*(*(*(a1 + 56) + 8) + 40) messagingVehicle:*(a1 + 48)])
      {
        v18 = [*(a1 + 32) preferencesManager];
        v19 = [v18 isCarPlaySetupEnabled];

        if (!v19)
        {
          [*(a1 + 32) _presentEnhancedIntegrationAlertForMessagingVehicle:*(a1 + 48)];
        }
      }
    }
  }

LABEL_34:
  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
}

void sub_100033D64(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented Wired BT pairing alert", v7, 2u);
  }

  v3 = os_transaction_create();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) outstandingPairingAlerts];
  [v6 addObject:*(a1 + 40)];
}

void sub_100033E0C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) outstandingPairingAlerts];
  [v4 removeObject:*(a1 + 40)];

  if (a2)
  {
    if (a2 == 2)
    {
      v7 = CarGeneralLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wired BT pairing alert cancelled", v17, 2u);
      }

      goto LABEL_17;
    }

    if (a2 == 1)
    {
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wired BT pairing alert declined", buf, 2u);
      }

      if (*(a1 + 72) == 1)
      {
        v6 = *(a1 + 32);
        v7 = [objc_opt_class() _pairingIdentifierForMessagingVehicle:*(a1 + 48)];
        v8 = *(a1 + 32);
        [objc_opt_class() _incrementPairingDeclineCountForIdentifier:v7];
LABEL_17:
      }
    }
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wired BT pairing alert accepted", v16, 2u);
    }

    v10 = [*(a1 + 32) bluetoothManager];
    v11 = [v10 isPowered];

    if ((v11 & 1) == 0)
    {
      v12 = CarGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Wired BT powering on", v15, 2u);
      }

      [*(a1 + 32) setBTPowerMessagingVehicle:*(a1 + 48)];
      [*(a1 + 32) setBTPowerStoredVehicle:*(a1 + 56)];
      v7 = [*(a1 + 32) bluetoothManager];
      [v7 setPowered:1];
      goto LABEL_17;
    }

    [*(a1 + 32) _beginWiredPairingWithMessagingVehicle:*(a1 + 48) storedVehicle:*(a1 + 56)];
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

void sub_100034220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_100034258(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [CRBluetoothManager addressStringForData:?];
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "wired pairing address: %@", &v16, 0xCu);
    }

    if (v3)
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        v5 = [CRVehicle vehicleForMessagingVehicle:*(a1 + 40)];
        [v5 setPairingStatus:2];
      }

      [v5 setBluetoothAddress:v3];
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v7 = [WeakRetained saveVehicle:v5];

      v8 = [*(a1 + 48) _wirelessPairingAnalyticsDescriptionForMessagingVehicle:*(a1 + 40) storedVehicle:v5];
      v9 = +[CARAnalytics sharedInstance];
      [v9 userCreatedWirelessPairingWithSource:@"OOB" payload:v8];
    }

    else
    {
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "vehicle did not have a Bluetooth address after pairing: %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to complete Bluetooth pairing with %@", &v16, 0xCu);
    }
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = objc_loadWeakRetained((a1 + 64));
  [v14 setBTPowerStoredVehicle:0];

  v15 = objc_loadWeakRetained((a1 + 64));
  [v15 setBTPowerMessagingVehicle:0];
}

void sub_1000348F4(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented enable Wi-Fi alert", v7, 2u);
  }

  v3 = os_transaction_create();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) outstandingEnableWiFiAlerts];
  [v6 addObject:*(a1 + 40)];
}

void sub_10003499C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) outstandingEnableWiFiAlerts];
  [v4 removeObject:*(a1 + 40)];

  if (a2)
  {
    if (a2 == 2)
    {
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "Enable Wi-Fi alert cancelled";
        v7 = buf;
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_13;
    }

    if (a2 == 1)
    {
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v6 = "Enable Wi-Fi alert declined";
        v7 = &v14;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enable Wi-Fi alert accepted, turning on Wi-Fi", v12, 2u);
    }

    v9 = [*(a1 + 32) wifiManager];
    [v9 setPowered:1];

    [*(a1 + 32) postInCarNotificationForVehicle:*(a1 + 48)];
  }

LABEL_13:
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_1000354D0(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) outstandingEnhancedIntegrationAlerts];
  [v5 addObject:*(a1 + 40)];
}

void sub_100035544(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) outstandingEnhancedIntegrationAlerts];
  [v4 removeObject:*(a1 + 40)];

  switch(a2)
  {
    case 0:
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enhanced integration alert accepted", v13, 2u);
      }

      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = 2;
      goto LABEL_13;
    case 2:
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enhanced integration alert cancelled", v14, 2u);
      }

      break;
    case 1:
      v5 = CarGeneralLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enhanced integration alert declined", buf, 2u);
      }

      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = 1;
LABEL_13:
      [v6 _enhancedIntegrationUpdatedForMessagingVehicle:v7 status:v8];
      break;
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_100035B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035B7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [*(a1 + 32) isEqual:v5];
  v9 = CarPairingLogging();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"confirmed";
      v14 = 1752392040;
      v13 = 141558531;
      if (!v6)
      {
        v11 = @"declined";
      }

      v15 = 2113;
      v16 = v5;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "pairing for %{private, mask.hash}@ was %{public}@", &v13, 0x20u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v6, 0);
    }

    if (!v6)
    {
      [WeakRetained _invokeCurrentBluetoothPairingCompletionWithDeviceIdentifier:*(a1 + 32) success:0 error:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000852C0(v5, (a1 + 32));
    }
  }
}

void sub_100035F60(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CARAnalytics: sent wirelessPairingCreatedEvent connection event", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10008536C(v4);
  }
}

void *sub_100036950(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100107F40)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100036A90;
    v5[4] = &unk_1000DD698;
    v5[5] = v5;
    v6 = off_1000DE788;
    v7 = 0;
    qword_100107F40 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100107F40;
    if (qword_100107F40)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100107F40;
LABEL_5:
  result = dlsym(v2, "kAPEndpointProperty_EndpointInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100107F38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100036A90(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100107F40 = result;
  return result;
}

void sub_100036B38(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100036B58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100037884(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_1000378A4()
{
  v2[0] = &off_1000E7A50;
  v3[0] = objc_opt_class();
  v2[1] = &off_1000E7A68;
  v3[1] = objc_opt_class();
  v2[2] = &off_1000E7A80;
  v3[2] = objc_opt_class();
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:3];

  return v0;
}

id sub_10003821C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10003A1F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10003AA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003AA48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003AA60(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_10003AD1C(uint64_t a1)
{
  [*(a1 + 32) initializeStateMachine];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setSession:v3];
}

void sub_10003B1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int64_t sub_10003B28C(id a1, CUStateEvent *a2)
{
  v2 = a2;
  v3 = [(CUStateEvent *)v2 name];
  if (([v3 isEqualToString:@"Start"]& 1) != 0 || ([v3 isEqualToString:@"Reset"]& 1) != 0 || ([v3 isEqualToString:@"Fail"]& 1) != 0 || [v3 isEqualToString:@"Finish"])
  {
  }

  else
  {

    v3 = CarGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100085FD4(v2);
    }
  }

  return 1;
}

uint64_t sub_10003B34C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 name];
  if ([v5 isEqualToString:@"Start"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"Reset"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"Fail"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"Finish"])
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008606C(v3);
  }

  if (v6 <= 0)
  {
    if (v6 == -1)
    {
      goto LABEL_16;
    }

    [WeakRetained _transitionToState:1 forEvent:0];
LABEL_19:
    v8 = 2;
    goto LABEL_20;
  }

  if ((v6 - 1) >= 2)
  {
    [*(a1 + 32) performEnterReadyState];
    goto LABEL_19;
  }

  [WeakRetained _ignoreEvent:v6];
LABEL_16:
  v8 = 1;
LABEL_20:

  return v8;
}

uint64_t sub_10003B4A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[CUStateEvent enterState];

  if (v5 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 name];
    if ([v6 isEqualToString:@"Start"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"Reset"])
    {
      v7 = 3;
    }

    else if ([v6 isEqualToString:@"Fail"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"Finish"])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100086104();
  }

  if (v7 > 0)
  {
    if (v7 == 1)
    {
      v9 = 2;
      v10 = WeakRetained;
      v11 = 2;
      v12 = 1;
      goto LABEL_22;
    }

    if (v7 == 2)
    {
      v9 = 2;
      v10 = WeakRetained;
      v11 = 3;
      v12 = 2;
LABEL_22:
      [v10 _transitionToState:v11 forEvent:v12];
      goto LABEL_26;
    }

    [WeakRetained _transitionToState:0 forEvent:3];
LABEL_25:
    v9 = 2;
    goto LABEL_26;
  }

  if (v7 != -1)
  {
    [WeakRetained performLoadingPlistData:0];
    goto LABEL_25;
  }

  v9 = 1;
LABEL_26:

  return v9;
}

uint64_t sub_10003B640(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[CUStateEvent enterState];

  if (v5 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 name];
    if ([v6 isEqualToString:@"Start"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"Reset"])
    {
      v7 = 3;
    }

    else if ([v6 isEqualToString:@"Fail"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"Finish"])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10008619C();
  }

  if (v7 > 0)
  {
    if ((v7 - 1) >= 2)
    {
      v9 = 0;
      v10 = 3;
    }

    else
    {
      v9 = 3;
      v10 = v7;
    }

    [WeakRetained _transitionToState:v9 forEvent:v10];
    goto LABEL_23;
  }

  if (v7 != -1)
  {
    [*(a1 + 32) performLookup:0];
LABEL_23:
    v11 = 2;
    goto LABEL_24;
  }

  v11 = 1;
LABEL_24:

  return v11;
}

uint64_t sub_10003B7C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[CUStateEvent enterState];

  if (v5 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 name];
    if ([v6 isEqualToString:@"Start"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"Reset"])
    {
      v7 = 3;
    }

    else if ([v6 isEqualToString:@"Fail"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"Finish"])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100086234();
  }

  if (v7 <= 0)
  {
    if (v7 != -1)
    {
      [*(a1 + 32) performDoneCaptureResult];
      goto LABEL_23;
    }

    v7 = 1;
  }

  else
  {
    if (v7 == 1)
    {
      [*(a1 + 32) performPostResponseAndReleaseData];
      goto LABEL_23;
    }

    if (v7 != 2)
    {
      [WeakRetained _transitionToState:0 forEvent:3];
LABEL_23:
      v7 = 2;
    }
  }

  return v7;
}

void sub_10003BE74(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10008659C();
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) session];
  v5 = [*(a1 + 40) plistURL];
  v6 = [*(a1 + 40) responseBlock];
  [v3 lookupCarcapabilitiesForSession:v4 plistURL:v5 completionHandler:v6];
}

void sub_10003C588(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (sub_10003C5EC(a2, *(a1 + 32)))
  {
    [*(a1 + 40) addObjectsFromArray:v5];
  }
}

unint64_t sub_10003C5EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v3 localizedCaseInsensitiveCompare:v4];
    v6 = v5 == 0;
    if (v4 && v3 && v5)
    {
      if ([v3 length] >= 3 && objc_msgSend(v3, "hasPrefix:", @"*"))
      {
        v7 = [v3 hasSuffix:@"*"];
      }

      else
      {
        v7 = 0;
      }

      if ([v4 length] >= 3 && objc_msgSend(v4, "hasPrefix:", @"*"))
      {
        v11 = [v4 hasSuffix:@"*"] ^ 1;
      }

      else
      {
        v11 = 1;
      }

      v12 = v3;
      v13 = v4;
      if ((v7 & v11 & 1) != 0 || (v12 = v4, v13 = v3, ((v11 | v7) & 1) == 0))
      {
        v14 = [v12 substringWithRange:{1, objc_msgSend(v12, "length") - 2}];
        v6 = [v13 localizedCaseInsensitiveContainsString:v14];
      }
    }
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v4;
      }

      else
      {
        v9 = v3;
      }

      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Invalid plist data, expecting a string: %@", &v15, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

void sub_10003CAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CB18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v3];
  if (v5)
  {
    v6 = [NSMutableSet setWithArray:v5];
    [v4 unionSet:v6];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v15 = 0;
        if ([*(a1 + 32) _vehicleSatisfiesConfiguration:v13 propertyHits:&v15])
        {
          v14 = v15;
          if (v15 > v10)
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
            v10 = v14;
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

void sub_10003D438(id a1)
{
  v1 = qword_100107F50;
  qword_100107F50 = &off_1000E8C70;
}

void sub_10003DBB8(uint64_t a1)
{
  *(*(a1 + 32) + 24) &= 0xFFFFFFFFFFFFFFE4;
  v1 = [*(a1 + 32) preferences];
  [v1 setDisableTimerTimestamp:0];
}

uint64_t sub_10003E3C0(uint64_t a1, uint64_t a2)
{
  if (!a2 && *(a1 + 48) == 1)
  {
    [*(a1 + 32) setPowered:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_10003E808(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = objc_alloc_init(CRWiFiCarManager);
    [(CRWiFiCarManager *)v3 setPowered:1];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10003ED08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10003ED24(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained currentRequest];

  if (v5)
  {
    if (a2 && ([WeakRetained lockscreenAlert], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10003EE28;
      v7[3] = &unk_1000DDA60;
      objc_copyWeak(&v8, (a1 + 32));
      [WeakRetained _mainQueue_presentLockscreenAlertWithCompletion:v7];
      objc_destroyWeak(&v8);
    }

    else
    {
      [WeakRetained _mainQueue_presentCurrentRequest];
    }
  }
}

void sub_10003EE28(uint64_t a1)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained currentRequest];

  if (v3)
  {
    [WeakRetained _mainQueue_presentRequestIfUnlocked];
  }

  else
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarPlay Setup request was dismissed before UI unlock", v5, 2u);
    }
  }
}
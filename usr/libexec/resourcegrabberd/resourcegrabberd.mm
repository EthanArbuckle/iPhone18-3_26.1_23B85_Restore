uint64_t sub_100001910(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NRGPBIcon);
        [a1 addIcons:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100002B24(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100002150(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___NRGPBAppViewListImageRequest__height;
        goto LABEL_37;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v29 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v29 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v29;
        v22 = &OBJC_IVAR___NRGPBAppViewListImageRequest__scale;
LABEL_37:
        *(a1 + *v22) = v21;
        goto LABEL_38;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v28 = 0;
    v16 = [a2 position] + 4;
    if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
    }

    else
    {
      [a2 _setError];
    }

    v21 = v28;
    v22 = &OBJC_IVAR___NRGPBAppViewListImageRequest__width;
    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100002B24(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v28 = PBReaderReadString();
          v29 = 8;
          goto LABEL_44;
        }

        if (v13 != 2)
        {
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_53;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v34 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v34 & 0x7F) << v21;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        *(a1 + 24) = v27;
      }

      else
      {
        if (v13 == 3)
        {
          v28 = PBReaderReadData();
          v29 = 16;
LABEL_44:
          v30 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_53;
        }

        if (v13 == 4)
        {
          v28 = PBReaderReadString();
          v29 = 32;
          goto LABEL_44;
        }

        if (v13 != 5)
        {
          goto LABEL_45;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v35 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v35 & 0x7F) << v14;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_48;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_48:
        *(a1 + 40) = v20;
      }

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000036B4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NRGPBResourceResponse__checksumData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NRGPBResourceResponse__resource;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_10000424C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000044A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8) == -1;
  v3 = nrg_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
      *buf = 138412290;
      v11 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "starting icon version tracker for delegate %@", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v6 = [ACXApplicationsUpdatedDarwinNotification UTF8String];
    v7 = *(a1 + 32);
    v8 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100004680;
    handler[3] = &unk_1000205A8;
    handler[4] = *(a1 + 32);
    notify_register_dispatch(v6, (v7 + 8), &_dispatch_main_q, handler);

    if ([*(*(a1 + 32) + 16) count])
    {
      [*(a1 + 32) _appConduitUpdated];
    }

    objc_destroyWeak(buf);
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "icon version tracker already running, not restarting", buf, 2u);
    }
  }
}

id sub_100004680(uint64_t a1)
{
  v2 = nrg_daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = ACXApplicationsUpdatedDarwinNotification;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ received", &v4, 0xCu);
  }

  return [*(a1 + 32) _appConduitUpdated];
}

uint64_t sub_1000047F8(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(*(a1 + 32) + 8) = -1;
  }

  return result;
}

uint64_t sub_1000048F8(uint64_t a1)
{
  v2 = [*(a1 + 32) _readActiveIconVersions];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1();
}

uint64_t sub_100004A04(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = a1[6];
  if (v3 && ([v3 isEqualToString:v2] & 1) == 0)
  {
    *(a1[4] + 28) = 1;
    [*(a1[4] + 16) setObject:a1[6] forKeyedSubscript:a1[5]];
  }

  return _objc_release_x1();
}

_BYTE *sub_100004AF8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[28] == 1)
  {
    result = [result _writeActiveIconVersions];
    *(*(a1 + 32) + 28) = 0;
  }

  return result;
}

id sub_100004BA0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  result = [*(a1 + 32) _removeActiveIconVersions];
  *(*(a1 + 32) + 28) = 0;
  return result;
}

uint64_t sub_100004D94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100010EEC();
    }

    goto LABEL_4;
  }

  if ([v5 applicationType]== 2 || [v5 applicationType]== 1)
  {
    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100010F54();
    }

    v9 = *(a1 + 32);
    v10 = [v5 bundleIdentifier];
    [v9 addObject:v10];

    if (![*(a1 + 40) _appVersionChanged:v5])
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 48);
    v12 = [v5 bundleIdentifier];
    [v11 addObject:v12];
  }

  else
  {
    v12 = nrg_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ignoring non-user or system application %@", buf, 0xCu);
    }
  }

LABEL_14:
  if (v5)
  {
    goto LABEL_15;
  }

  v14 = [*(a1 + 48) count];
  WeakRetained = nrg_daemon_log();
  v16 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = *(a1 + 48);
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "detected out of date icons %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) copy];
    [WeakRetained iconVersionTracker:v18 detectedOutOfDateIcons:v19];
  }

  else if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "no icons need updating", buf, 2u);
  }

  v7 = [*(a1 + 40) _noLongerTrackedBundleIDs:*(a1 + 32)];
  if ([v7 count])
  {
    v20 = nrg_daemon_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "detected icons that should no longer be tracked %@", buf, 0xCu);
    }

    v21 = *(a1 + 40);
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_10000510C;
    v27 = &unk_100020648;
    v7 = v7;
    v22 = *(a1 + 40);
    v28 = v7;
    v29 = v22;
    [v21 _withLock:&v24];
    [*(a1 + 40) commit];
    v23 = objc_loadWeakRetained((*(a1 + 40) + 32));
    [v23 iconVersionTracker:*(a1 + 40) detectedUnusedIcons:v7];
  }

LABEL_4:

LABEL_15:
  return 1;
}

id sub_10000510C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005180;
  v3[3] = &unk_100020620;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void sub_100005278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 16) allKeys];
  [v1 addObjectsFromArray:v2];
}

void sub_100005554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000559C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 40) bundleIdentifier];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000058EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = nrg_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001100C();
    }

    objc_end_catch();
    JUMPOUT(0x1000058A0);
  }

  _Unwind_Resume(exception_object);
}

void sub_100005AFC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = nrg_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000111AC(v2, v3);
    }

    objc_end_catch();
    JUMPOUT(0x100005A64);
  }

  _Unwind_Resume(exception_object);
}

void sub_100005D8C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_100028368 != -1)
  {
    sub_10001128C();
  }

  v1 = [NRGSync alloc];
  v2 = +[NRGCompanionDaemon sharedInstance];
  v3 = [(NRGSync *)v1 initWithDelegate:v2];

  v4 = objc_opt_new();
  v5 = +[NRGCompanionDaemon sharedInstance];
  [v5 start];

  objc_autoreleasePoolPop(v0);
  v6 = +[NSRunLoop mainRunLoop];
  [v6 run];

  return 0;
}

void sub_100005E7C(id a1)
{
  v24 = &off_100021450;
  v25 = &stru_1000206F8;
  v1 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v2 = qword_100028358;
  qword_100028358 = v1;

  v3 = objc_opt_new();
  v4 = qword_100028360;
  qword_100028360 = v3;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = qword_100028358;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [qword_100028358 objectForKeyedSubscript:{v10, v17}];
        v12 = [v10 intValue];
        v13 = v11;
        v14 = nrg_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [NSNumber numberWithInt:v12];
          *buf = v17;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setting up signal handler for %@", buf, 0xCu);
        }

        signal(v12, 1);
        v16 = dispatch_source_create(&_dispatch_source_type_signal, v12, 0, &_dispatch_main_q);
        dispatch_source_set_event_handler(v16, v13);

        dispatch_resume(v16);
        [qword_100028360 setObject:v16 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

void sub_1000060D8(id a1)
{
  v1 = nrg_daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "exiting on SIGTERM", v2, 2u);
  }

  exit(0);
}

uint64_t sub_100006654(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100006BA0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nrg_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100011350(v2, v3);
  }
}

id sub_100007104(uint64_t a1)
{
  if (qword_100028378 != -1)
  {
    sub_1000114B0();
  }

  v2 = qword_100028370;
  v3 = [NSNumber numberWithInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

void sub_10000718C(id a1)
{
  v3[0] = &off_100021468;
  v3[1] = &off_100021498;
  v4[0] = &off_100021480;
  v4[1] = &off_1000214B0;
  v3[2] = &off_1000214C8;
  v3[3] = &off_1000214F8;
  v4[2] = &off_1000214E0;
  v4[3] = &off_100021510;
  v3[4] = &off_100021528;
  v3[5] = &off_100021558;
  v4[4] = &off_100021540;
  v4[5] = &off_100021570;
  v3[6] = &off_100021588;
  v3[7] = &off_1000215B8;
  v4[6] = &off_1000215A0;
  v4[7] = &off_1000215D0;
  v3[8] = &off_1000215E8;
  v3[9] = &off_100021618;
  v4[8] = &off_100021600;
  v4[9] = &off_100021630;
  v3[10] = &off_100021648;
  v3[11] = &off_100021678;
  v4[10] = &off_100021660;
  v4[11] = &off_100021690;
  v3[12] = &off_1000216A8;
  v3[13] = &off_1000216D8;
  v4[12] = &off_1000216C0;
  v4[13] = &off_1000216F0;
  v3[14] = &off_100021708;
  v3[15] = &off_100021738;
  v4[14] = &off_100021720;
  v4[15] = &off_100021750;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
  v2 = qword_100028370;
  qword_100028370 = v1;
}

id sub_100007348(uint64_t a1)
{
  if (qword_100028388 != -1)
  {
    sub_1000114C4();
  }

  v2 = qword_100028380;
  v3 = [NSNumber numberWithUnsignedInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  return v5;
}

void sub_1000073D0(id a1)
{
  v3[0] = &off_100021480;
  v3[1] = &off_1000214B0;
  v4[0] = &off_100021468;
  v4[1] = &off_100021498;
  v3[2] = &off_1000214E0;
  v3[3] = &off_100021510;
  v4[2] = &off_1000214C8;
  v4[3] = &off_1000214F8;
  v3[4] = &off_100021540;
  v3[5] = &off_100021570;
  v4[4] = &off_100021528;
  v4[5] = &off_100021558;
  v3[6] = &off_1000215A0;
  v3[7] = &off_1000215D0;
  v4[6] = &off_100021588;
  v4[7] = &off_1000215B8;
  v3[8] = &off_100021600;
  v3[9] = &off_100021630;
  v4[8] = &off_1000215E8;
  v4[9] = &off_100021618;
  v3[10] = &off_100021660;
  v3[11] = &off_100021690;
  v4[10] = &off_100021648;
  v4[11] = &off_100021678;
  v3[12] = &off_1000216C0;
  v3[13] = &off_1000216F0;
  v4[12] = &off_1000216A8;
  v4[13] = &off_1000216D8;
  v3[14] = &off_100021720;
  v3[15] = &off_100021750;
  v4[14] = &off_100021708;
  v4[15] = &off_100021738;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
  v2 = qword_100028380;
  qword_100028380 = v1;
}

uint64_t sub_100007848(uint64_t a1)
{
  v2 = NRGGetActivePairedDevice();
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v6 = *(a1 + 32);
  return loadGizmoBuild();
}

id sub_1000078DC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGizmoBuild:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v5 = NRDevicePropertySystemBuildVersion;
  v11 = NRDevicePropertySystemBuildVersion;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  [v4 addPropertyObserver:v3 forPropertyChanges:v6];

  if ([*(*(a1 + 32) + 56) syncRestriction])
  {
    dispatch_semaphore_signal(*(*(a1 + 32) + 24));
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not checking if we should do sync because inital sync is not done yet", v10, 2u);
    }
  }

  else
  {
    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Paired device exists and there are no syncRestrictions", v10, 2u);
    }

    [*(a1 + 32) device:*(*(a1 + 32) + 48) propertyDidChange:v5 fromValue:0];
    v7 = [*(a1 + 32) delegate];
    [v7 devicePaired];
  }

  return [*(*(a1 + 32) + 56) setDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
}

void sub_100007CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrg_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removing %@", buf, 0xCu);
  }

  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtPath:v3 error:0];

  dispatch_semaphore_signal(*(*(a1 + 32) + 24));
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007DEC;
  block[3] = &unk_1000205D0;
  block[4] = v6;
  dispatch_async(v7, block);
}

void sub_100008198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000081E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000081F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = nrg_daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithDouble:v6];
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sync completed in %{public}@ seconds, error = %{public}@", &v16, 0x16u);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = [WeakRetained pairedDevice];
  v13 = [v12 valueForProperty:NRDevicePropertySystemBuildVersion];
  [WeakRetained setGizmoBuild:v13];

  v14 = [*(a1 + 40) gizmoBuild];
  saveGizmoBuild();

  v15 = [WeakRetained delegate];
  [v15 devicePaired];
}

void sub_100008610(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrg_daemon_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000114D8(v3, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "full sync request sent", v6, 2u);
    }

    [*(a1 + 32) syncDidCompleteSending];
  }
}

void sub_1000086C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrg_daemon_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100011550(v3, v5);
    }

    [*(a1 + 32) syncDidFailWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "full sync operation completed successfully", v7, 2u);
    }

    [*(a1 + 32) syncDidComplete];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t sub_1000089EC(uint64_t a1)
{
  qword_100028390 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100008CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008D00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleResourceResponse:v3];
}

void sub_100008D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFullSyncResponse:v3];
}

void sub_100008DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = nrg_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "appViewListImageResponseHandler received protobuf %@", &v9, 0xCu);
  }

  v6 = [NRGPBAppViewListImageResponse alloc];
  v7 = [v3 data];
  v8 = [(NRGPBAppViewListImageResponse *)v6 initWithData:v7];

  [WeakRetained _appViewListImageHandleResponse:v8 error:0];
}

void sub_1000090F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009108(void *a1)
{
  v2 = [*(a1[4] + 128) operationCount];
  v3 = nrg_daemon_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000115C8(a1, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[5];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "no full sync requests pending, adding request operation %@", buf, 0xCu);
    }

    v12 = *(a1[4] + 128);
    v14 = a1[5];
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v12 addOperations:v13 waitUntilFinished:0];

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_1000099CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id sub_100009A00(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100009A34(void *a1)
{
  if ([*(a1[4] + 96) isValid])
  {
    [*(a1[4] + 96) invalidate];
  }

  v2 = a1[4];
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  if ([*(a1[4] + 88) isEqualToString:a1[5]])
  {
    *(*(a1[6] + 8) + 24) = 1;
    v4 = objc_retainBlock(*(a1[4] + 80));
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = a1[4];
    v8 = *(v7 + 88);
    *(v7 + 88) = 0;

    v9 = a1[4];
    v10 = *(v9 + 80);
    *(v9 + 80) = 0;
  }

  else
  {
    v11 = nrg_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[5];
      v13 = *(a1[4] + 88);
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Asked to handle full sync with mismatched identifer %{public}@ expected %{public}@", &v14, 0x16u);
    }
  }
}

void sub_100009F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v32 - 144), 8);
  objc_destroyWeak((v31 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100009F68(uint64_t a1)
{
  v2 = [*(a1 + 32) fullSyncResponseHandler];

  if (v2)
  {
    v3 = nrg_daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000116A0(v3);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t sub_100009FD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009FEC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = nrg_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fullSyncIdentifier = %@, error = %@", &v8, 0x16u);
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (!*(a1 + 40))
    {
      goto LABEL_5;
    }

    if (!v3)
    {
      v3 = [*(a1 + 32) requestUnsuccessfulError];
      v7 = *(*(*(a1 + 48) + 8) + 40);
    }
  }

  [WeakRetained handleFullSyncResponseForIdentifier:? error:?];
LABEL_5:
}

void sub_10000A11C(uint64_t a1)
{
  v2 = nrg_daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fullSyncIdentifier = %@", buf, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  objc_storeStrong((*(a1 + 32) + 88), *(*(*(a1 + 48) + 8) + 40));
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [NSString stringWithFormat:@"%@_fullSync", v9];

  v11 = [[PCPersistentTimer alloc] initWithTimeInterval:v10 serviceIdentifier:*(a1 + 32) target:"fullSyncRequestTimedOut:" selector:*(*(*(a1 + 48) + 8) + 40) userInfo:540.0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 96);
  *(v12 + 96) = v11;

  [*(*(a1 + 32) + 96) setMinimumEarlyFireProportion:1.0];
  [*(*(a1 + 32) + 96) scheduleInQueue:&_dispatch_main_q];
}

id sub_10000A5B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 intValue];

  return [v2 addIconVariants:v3];
}

void sub_10000A600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrg_daemon_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001174C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "full sync request sent %@", &v7, 0xCu);
  }
}

void sub_10000A6DC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nrg_daemon_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000117B4();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sync operation completed successfully", v5, 2u);
  }
}

void sub_10000ABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000AC18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001181C();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _appViewListImageHandleResponse:0 error:v6];
  }
}

void sub_10000AD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AD94(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) copy];
  if (v2)
  {
    v4 = objc_retainBlock(v3);
    [v2 addObject:v4];
  }

  else
  {
    v5 = [NSMutableArray arrayWithObject:v3];
    v6 = *(a1 + 32);
    v4 = *(v6 + 104);
    *(v6 + 104) = v5;
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 104) count];
  v7 = nrg_daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "appViewListImageResponseHandlers count %d", buf, 8u);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [NSString stringWithFormat:@"%@_appListImage", v11];

    v13 = [[PCPersistentTimer alloc] initWithTimeInterval:v12 serviceIdentifier:*(a1 + 32) target:"_appViewListImageRequestTimedOut:" selector:0 userInfo:31.0];
    v14 = *(a1 + 32);
    v15 = *(v14 + 112);
    *(v14 + 112) = v13;

    [*(*(a1 + 32) + 112) setMinimumEarlyFireProportion:0.0];
    [*(*(a1 + 32) + 112) scheduleInQueue:&_dispatch_main_q];
  }
}

void sub_10000B398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B3D0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 112) isValid])
  {
    [*(*(a1 + 32) + 112) invalidate];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = [*(*(a1 + 32) + 104) copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  *(v7 + 104) = 0;
}

uint64_t sub_10000B9D4(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addBundleIDs:v21];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        if ((v12 & 7) == 2)
        {
          v29[0] = 0;
          v29[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v14 = [a2 position];
            if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v30 = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v30 & 0x7F) << v15;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                goto LABEL_33;
              }
            }

            [a2 hasError];
LABEL_33:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v29[0] & 0x7F) << v22;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              goto LABEL_50;
            }
          }

          [a2 hasError];
LABEL_50:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000C5B4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000CB9C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_49;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_49:
        v32 = 24;
LABEL_54:
        *(a1 + v32) = v20;
        goto LABEL_57;
      }

      v28 = PBReaderReadString();
      v29 = *(a1 + 8);
      *(a1 + 8) = v28;

LABEL_57:
      v34 = [a2 position];
      if (v34 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      *(a1 + 28) |= 2u;
      v35 = 0;
      v30 = [a2 position] + 4;
      if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 20) = v35;
      goto LABEL_57;
    }

    if (v13 != 5)
    {
LABEL_40:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_57;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 28) |= 1u;
    while (1)
    {
      v37 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v37 & 0x7F) << v21;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_53;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v23;
    }

LABEL_53:
    v32 = 16;
    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000D93C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return _objc_release_x1();
}

uint64_t sub_10000DA1C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return _objc_release_x1();
}

uint64_t sub_10000DAFC(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000DCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000DD08(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) iconVariants];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 32) + 56) addIconVariants:{objc_msgSend(*(*(&v7 + 1) + 8 * v6), "intValue")}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10000DE20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = nrg_daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requestHandler called with %@ %@", &v9, 0x16u);
  }

  [WeakRetained requestSent:v5 error:v6];
}

void sub_10000DF14(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = nrg_daemon_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = WeakRetained;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "responseHandler (strongSelf = %@) called with %@ %@", &v15, 0x20u);
  }

  if (v10)
  {
    [WeakRetained handleFullSyncResponse:v9 url:v10 iconVersionTracker:v11];
  }

  else
  {
    [WeakRetained requestComplete:v9 error:v12];
  }
}

void sub_10000E2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E2F0(void *a1, void *a2)
{
  v3 = a2;
  v4 = nrg_daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1[6] + 8) + 24);
    v6 = [v3 bundleID];
    v7 = [v3 iconVariant];
    v8 = [v3 iconData];
    v15 = 134218754;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = [v8 length];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "icon %ld is %@ (%ld) length %ld", &v15, 0x2Au);
  }

  v9 = a1[4];
  v10 = [v3 version];
  v11 = [v3 bundleID];
  [v9 setVersion:v10 forBundleID:v11];

  v12 = [v3 iconData];
  v13 = [v3 iconVariant];
  v14 = [v3 bundleID];
  [NRGResourceCache setIcon:v12 forIconVariant:v13 inBundleID:v14 withPairedDeviceStorePath:a1[5]];

  ++*(*(a1[6] + 8) + 24);
}

void sub_10000E610(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void sub_10000E87C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

uint64_t sub_10000EE60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000EE78(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000F1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_10000F1F8(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_OPERATIONS"];
  v4 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_PURGE_OPERATION"];
  v5 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_URGENCY"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 integerValue] == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained purgeCache];
  }

  return &__NSDictionary0__struct;
}

void sub_100010904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010930(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (v5)
  {
    if (!v3)
    {
      v6 = nrg_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100011E48(a1 + 64, a1, v6);
      }

      v5 = *(*(*(a1 + 64) + 8) + 40);
    }

    [*(*(a1 + 40) + 64) removeObjectForKey:v5];
  }

  (*(*(a1 + 56) + 16))();
  if (v4)
  {
    [NRGResourceCache setIcon:v4 forIconVariant:*(a1 + 72) inBundleID:*(a1 + 32) withPairedDeviceStorePath:*(a1 + 48)];
  }
}

void sub_100010D1C(void *a1, uint64_t a2, NSObject *a3)
{
  v3 = @"writing";
  if (a2)
  {
    v3 = @"reading";
  }

  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = v3;
  sub_10000424C(&_mh_execute_header, a2, a3, "could not open %@ for %@", *v4, *&v4[8], *&v4[16]);
}

void sub_100010DB0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 48);
  sub_10000424C(&_mh_execute_header, a2, a3, "could not write %@ to %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100010E70(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10000424C(&_mh_execute_header, a2, a3, "could not remove %@ %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1000111AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100005D80();
  sub_10000424C(&_mh_execute_header, v3, v4, "could not create data for icon versions %@ %@");
}

void sub_100011350(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Resource request protobuf send error %{public}@", &v2, 0xCu);
}

void sub_1000113C8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 12);
  v7 = [a2 hasResource];
  v8 = [a2 resource];
  v9 = 138413058;
  v10 = v5;
  v11 = 1024;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  v15 = 2048;
  v16 = [v8 length];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "bad checksum received for %@ (%d) hasResource %{BOOL}u response.resource.length %lu", &v9, 0x22u);
}

void sub_1000114D8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "full sync request failed to send, error = %{public}@", &v2, 0xCu);
}

void sub_100011550(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "full sync failed to complete -- error: %{public}@", &v2, 0xCu);
}

void sub_100011904(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no icons found in %@", &v2, 0xCu);
}

void sub_100011BD8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 data];
  [v5 length];
  sub_100005D80();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "############ IDS Request Failed to Send: %{public}ld bytes, identifier %{public}@", v6, 0x16u);
}

void sub_100011C88(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 data];
  v7 = [v6 length];
  v8 = [a1 context];
  v9 = [v8 outgoingResponseIdentifier];
  v10 = 134349570;
  v11 = v7;
  v12 = 2114;
  v13 = a2;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "############ IDS Response Failed to Send: %{public}ld bytes, identifier %{public}@ (for %{public}@)", &v10, 0x20u);
}

void sub_100011E48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(*(*a1 + 8) + 40);
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 32);
  sub_10000424C(&_mh_execute_header, a2, a3, "############ Resource request failed with IDS ID %{public}@ for %@, removing", *v3, *&v3[8], *&v3[16]);
}
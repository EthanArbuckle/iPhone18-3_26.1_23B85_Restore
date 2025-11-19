uint64_t SDUnlockLongTermKeyRequestReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10008C204(id a1)
{
  v1 = objc_alloc_init(SDDeviceAssetMonitor);
  v2 = qword_100989A58;
  qword_100989A58 = v1;
}

void sub_10008C538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008C564(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activateIfReady];
}

void sub_10008C5A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activateIfReady];
}

void sub_10008C714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_10008C744(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothDevicePaired:v3];
}

void sub_10008C7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothDeviceUnpaired:v3];
}

void sub_10008CEA4(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = asset_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v11 = @"Fallback ";
    }

    else
    {
      v11 = &stru_1008EFBD0;
    }

    v12 = *(a1 + 32);
    v13 = [v8 bundlePath];
    v15 = 138413058;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@Asset matching query %@ now available at %@ (%@)", &v15, 0x2Au);
  }

  if (a4)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [*(a1 + 40) setState:v14];
}

void sub_10008D8B4(id a1)
{
  qword_100989A68 = dlopen([@"/System/Library/PrivateFrameworks/URLFormatting.framework/URLFormatting" UTF8String], 2);
  if (!qword_100989A68)
  {
    v1 = airdrop_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10008D92C(v1);
    }
  }
}

void sub_10008D92C(os_log_t log)
{
  v1 = 138412290;
  v2 = @"/System/Library/PrivateFrameworks/URLFormatting.framework/URLFormatting";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to softlink: %@", &v1, 0xCu);
}

void sub_10008D9F4(id a1)
{
  v1 = objc_alloc_init(SDAutoUnlockNotificationsManager);
  v2 = qword_100989A78;
  qword_100989A78 = v1;
}

void sub_10008E06C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    obj = auto_unlock_log();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_10008F02C();
    }

    goto LABEL_4;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v7)
  {
LABEL_4:

    goto LABEL_5;
  }

  v8 = v7;
  v25 = v5;
  v27 = *v31;
LABEL_8:
  v9 = 0;
  while (1)
  {
    if (*v31 != v27)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(*(&v30 + 1) + 8 * v9);
    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"SDPhoneAutoUnlockNotificationUpsellKey"];
    if (v12)
    {
      break;
    }

LABEL_16:
    if (v8 == ++v9)
    {
      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v8)
      {
        goto LABEL_8;
      }

      v5 = v25;
      goto LABEL_4;
    }
  }

  v13 = v12;
  v14 = [v10 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"SDPhoneAutoUnlockNotificationUpsellKey"];
  v16 = [v15 BOOLValue];
  v17 = a1;
  v18 = *(a1 + 40);

  v19 = v18 == v16;
  a1 = v17;
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = auto_unlock_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found matching item to clear", buf, 2u);
  }

  v22 = *(*(v17 + 32) + 8);
  v34 = @"com.apple.sharingd.phone-auto-unlock-upsell";
  v23 = [NSArray arrayWithObjects:&v34 count:1];
  v28 = 0;
  [v22 clearPendingFollowUpItemsWithUniqueIdentifiers:v23 error:&v28];
  v24 = v28;

  v5 = v25;
  if (v24)
  {
    obj = auto_unlock_log();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_10008F0A0();
    }

    goto LABEL_4;
  }

LABEL_5:
}

void sub_10008E6F4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to create Auto Relock Notification", buf, 2u);
  }

  error = 0;
  v3 = objc_opt_new();
  [v3 setObject:*(a1 + 32) forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  qword_1009A05F0 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, v3);
  if (qword_1009A05F0)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully created Auto Relock Notification", v8, 2u);
    }

    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, qword_1009A05F0, sub_10008E8E0, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    CFRelease(RunLoopSource);
  }

  if (error)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008F18C(&error);
    }
  }
}

void sub_10008E8E0()
{
  if (qword_1009A05F0)
  {
    v0 = auto_unlock_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Releasing Auto Relock Notification", v1, 2u);
    }

    CFRelease(qword_1009A05F0);
    qword_1009A05F0 = 0;
  }
}

void sub_10008EA40(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to create Unlock Request Notification", buf, 2u);
  }

  error = 0;
  v3 = objc_opt_new();
  [v3 setObject:*(a1 + 32) forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  qword_1009A05F8 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, v3);
  if (qword_1009A05F8)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully created Unlock Request Notification", v8, 2u);
    }

    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, qword_1009A05F8, sub_10008EC2C, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    CFRelease(RunLoopSource);
  }

  if (error)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008F18C(&error);
    }
  }
}

void sub_10008EC2C()
{
  if (qword_1009A05F8)
  {
    v0 = auto_unlock_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Releasing Auto Relock Notification", v1, 2u);
    }

    CFRelease(qword_1009A05F8);
    qword_1009A05F8 = 0;
  }
}

id sub_10008EDFC(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notification timer fired", v4, 2u);
  }

  [*(a1 + 32) dismissNotification];
  return [*(a1 + 32) notifyObservers:"suggestionNotificationTimedOut"];
}

void sub_10008F18C(int *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

uint64_t SDAutoUnlockCleanUpAWDLReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10008F9A4()
{
  if (qword_100989A90 != -1)
  {
    sub_100093184();
  }

  v1 = qword_100989A98;

  return v1;
}

void sub_10008F9E8(id a1)
{
  v1 = dispatch_queue_create("com.apple.airdrop.queue", 0);
  v2 = qword_100989A98;
  qword_100989A98 = v1;
}

const __CFString *sub_10008FA28(uint64_t a1, int a2)
{
  v3 = CFPreferencesCopyValue(@"AirDropID", kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if (v3)
  {
    return v3;
  }

  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 bluetoothAddress];

  if (![v5 length])
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BT address not available, force random AirDrop ID", &v15, 2u);
    }

    goto LABEL_8;
  }

  if (a2)
  {
LABEL_8:
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Random AirDrop ID requested", &v15, 2u);
    }

    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    v11 = [v8 substringWithRange:{24, 12}];
    v3 = [v11 lowercaseString];

    goto LABEL_11;
  }

  v6 = sub_1001F0D2C(v5);
  v7 = SFHexStringForDataEx();

  v8 = [v7 substringToIndex:12];
  v3 = [v8 lowercaseString];
LABEL_11:

  CFPreferencesSetValue(@"AirDropID", v3, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    v15 = 136315138;
    v16 = CStringPtr;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Current AirDrop ID is %s", &v15, 0xCu);
  }

  return v3;
}

uint64_t sub_10008FCB8()
{
  CFPreferencesSetValue(@"AirDropID", 0, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  return CFPreferencesSynchronize(kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

void sub_10008FD38(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  pthread_mutex_lock(&stru_10096FDB8);
  v5 = qword_100989A88;
  if (!qword_100989A88)
  {
    v6 = objc_opt_new();
    v7 = qword_100989A88;
    qword_100989A88 = v6;

    v5 = qword_100989A88;
  }

  v8 = [NSValue valueWithNonretainedObject:v3];
  [v5 setObject:v4 forKeyedSubscript:v8];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FE54;
  block[3] = &unk_1008CDEA0;
  v11 = v3;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, block);
  pthread_mutex_unlock(&stru_10096FDB8);
}

void sub_10008FE54(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.AirDropPeerChanged" object:*(a1 + 32) userInfo:0];
}

void sub_10008FEB8(void *a1)
{
  v1 = a1;
  pthread_mutex_lock(&stru_10096FDB8);
  v2 = qword_100989A88;
  v3 = [NSValue valueWithNonretainedObject:v1];
  [v2 removeObjectForKey:v3];

  if ([qword_100989A88 count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008FFA8;
    block[3] = &unk_1008CDEA0;
    v5 = v1;
    dispatch_async(&_dispatch_main_q, block);
  }

  pthread_mutex_unlock(&stru_10096FDB8);
}

void sub_10008FFA8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.AirDropPeerChanged" object:*(a1 + 32) userInfo:0];
}

void sub_10009000C(const void *a1, void *a2)
{
  value = a2;
  pthread_mutex_lock(&stru_10096FDF8);
  Mutable = qword_100989AA0;
  if (!qword_100989AA0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    qword_100989AA0 = Mutable;
  }

  CFDictionarySetValue(Mutable, a1, value);
  pthread_mutex_unlock(&stru_10096FDF8);
}

id sub_100090098(const void *a1)
{
  pthread_mutex_lock(&stru_10096FDF8);
  Value = qword_100989AA0;
  if (qword_100989AA0)
  {
    Value = CFDictionaryGetValue(qword_100989AA0, a1);
  }

  v3 = Value;
  pthread_mutex_unlock(&stru_10096FDF8);

  return v3;
}

uint64_t sub_100090100(const void *a1)
{
  pthread_mutex_lock(&stru_10096FDF8);
  if (qword_100989AA0)
  {
    CFDictionaryRemoveValue(qword_100989AA0, a1);
  }

  return pthread_mutex_unlock(&stru_10096FDF8);
}

BOOL sub_100090158(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = [v5 count];
  v7 = SFNodeCopyModel();
  v8 = [v7 length];
  v9 = sub_100090294();
  if (!v6)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v17 = a3;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = [v5 objectAtIndexedSubscript:v11];

    if (v12 != a2)
    {
      break;
    }

LABEL_9:
    if (v6 == ++v11)
    {
      v15 = v10 != 0;
      goto LABEL_14;
    }
  }

  v13 = sub_100090294();
  if (![v13 intersectsSet:v9])
  {
LABEL_8:

    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v14 = SFNodeCopyModel();
  if (![v14 isEqual:v7])
  {
    ++v10;

    goto LABEL_8;
  }

  *v17 = 1;

LABEL_13:
  v15 = 1;
LABEL_14:

  return v15;
}

id sub_100090294()
{
  v0 = +[SDStatusMonitor sharedMonitor];
  v1 = SFNodeCopyAppleID();
  if (v1 && ([v0 verifiedIdentityForAppleID:v1], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = SFNodeCopyEmailHash();
    v4 = SFNodeCopyPhoneHash();
    v5 = [v0 contactsForEmailHash:v3 phoneHash:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100090360()
{
  v0 = +[SDStatusMonitor sharedMonitor];
  v1 = [v0 myAppleIDCommonName];
  v2 = SFNodeCopyAppleID();
  v3 = [v0 verifiedIdentityForAppleID:v2];

  if (v3)
  {
    v4 = [v3 accountIdentifier];
  }

  else
  {
    v4 = 0;
  }

  if ([v1 length] && objc_msgSend(v4, "length") && (objc_msgSend(v1, "isEqualToString:", v4) & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = SFNodeCopyKinds();
    if ([v6 containsObject:kSFNodeKindRapport])
    {
      v5 = [v6 containsObject:kSFNodeKindMe];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id sub_100090478()
{
  v0 = sub_100090294();
  v1 = sub_1001EAB78(v0);

  return v1;
}

id sub_1000904C4()
{
  v0 = sub_100090294();
  v1 = sub_100090528(v0);
  v2 = [v1 identifier];

  return v2;
}

id sub_100090528(void *a1)
{
  v1 = a1;
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 contactWithPreferredIdentifierForContacts:v1];

  return v3;
}

void sub_100090598(void *a1, void *a2)
{
  v11 = a2;
  v12 = 0;
  v3 = sub_100090360();
  v4 = SFNodeCopyDisplayName();
  v5 = SFNodeCopyComputerName();
  if ([v4 isEqualToString:v5] & 1) != 0 || ((sub_100090158(v11, a1, &v12) | v3) & 1) == 0 || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "coalesceMe"), v6, (v7))
  {
    v8 = 0;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v8 = v5;
  if (v12 == 1)
  {
    goto LABEL_5;
  }

  v9 = SFNodeCopyModel();
LABEL_6:
  v10 = v9;
  SFNodeSetSecondaryName();
  if (v3)
  {
    SFNodeAddKind();
  }

  else
  {
    SFNodeRemoveKind();
  }
}

void *sub_1000906C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v9 = +[SDXPCHelperConnection makeActivatedConnection];
    v8 = v9;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090840;
  v17[3] = &unk_1008CDEA0;
  v10 = v9;
  v18 = v10;
  v11 = objc_retainBlock(v17);
  v12 = [v8 monogramImageDataForContact:v6 style:2 diameter:1 monogramsAsFlatImages:a3 isContactImage:sub_100092F70()];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100093198();
    }
  }

  (v11[2])(v11);
  return v13;
}

void *sub_100090848(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v11 = +[SDXPCHelperConnection makeActivatedConnection];
    v10 = v11;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100090A24;
  v20[3] = &unk_1008CDEA0;
  v12 = v11;
  v21 = v12;
  v13 = objc_retainBlock(v20);
  v14 = [v10 copyConversationIdentityImageIconDataForImage:v7 forConversationIdentifier:v8 style:2 diameter:1 monogramsAsFlatImages:a3 isContactImage:sub_100092F70()];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = airdrop_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v7 _uri];
      sub_100093208(v18, buf, v17);
    }
  }

  (v13[2])(v13);
  return v15;
}

id sub_100090A2C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 monogramImagesForMultipleContacts:v4 style:2 diameter:1 monogramsAsFlatImages:sub_100092F70()];

  return v5;
}

id sub_100090AA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v6 = +[SDXPCHelperConnection makeActivatedConnection];
    v5 = v6;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100090C1C;
  v12[3] = &unk_1008CDEA0;
  v7 = v6;
  v13 = v7;
  v8 = objc_retainBlock(v12);
  v9 = [v5 groupMonogramImageDataForContacts:v3 style:2 diameter:1 monogramsAsFlatImages:1 processOppositeBackgroundStyle:sub_100092F70()];
  if (!v9)
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100093260();
    }
  }

  (v8[2])(v8);

  return v9;
}

void sub_100090C24(void *a1, void *a2, void *a3, int a4)
{
  v20 = a2;
  v7 = a3;
  v8 = SFNodeCopyComputerName();
  v9 = sub_100090294();
  v10 = sub_100090528(v9);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v12 = [v10 identifier];
  SFNodeSetContactIdentifier();

  sub_1001EAB78(v9);
  SFNodeSetContactIdentifiers();
  v13 = [v11 givenName];
  SFNodeSetFirstName();

  v14 = [v11 familyName];
  SFNodeSetLastName();

  v15 = [v11 nickname];
  SFNodeSetNickName();

  v16 = objc_alloc_init(CNContactFormatter);
  v17 = [v11 mutableCopy];
  [v17 setMiddleName:&stru_1008EFBD0];
  v18 = [v16 stringFromContact:v17];

  if (v18)
  {
    SFNodeSetDisplayName();
    sub_100090598(a1, v20);
    SFNodeRemoveKind();
    CFRelease(v18);
  }

  else
  {
LABEL_4:
    SFNodeAddKind();
    SFNodeSetDisplayName();
    SFNodeSetSecondaryName();
  }

  sub_100090E40(a1, v19, a4, 0);

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_100090E40(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  SFNodeRemoveKind();
  v7 = SFNodeCopyKinds();
  if ([v7 containsObject:kSFNodeKindMe])
  {
    v8 = SFNodeCopyModel();
    if (([v8 hasPrefix:@"iPhone"] & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"iPad") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"iPad mini") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"iPod") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"MacBook Pro") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"MacBook Air") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"Mac Pro") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"iMac Pro") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"iMac") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"Mac mini") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"Mac Studio") & 1) == 0)
    {
      v29 = airdrop_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000932D0(v8, a1, v29);
      }
    }

    v30 = SFDeviceImageFromImageName();
    if ([v30 CGImage])
    {
      [v30 CGImage];
      v31 = SFDataFromCGImage();
      if (v31)
      {
        v32 = v31;
        SFNodeSetIconData();
        CFRelease(v32);
      }
    }

    goto LABEL_53;
  }

  v37 = v7;
  v9 = +[SDStatusMonitor sharedMonitor];
  v10 = SFNodeCopyEmailHash();
  v11 = SFNodeCopyPhoneHash();
  v38 = SFNodeCopyRealName();
  v36 = v11;
  v12 = [v9 contactsForEmailHash:v10 phoneHash:v11];
  v13 = [v9 contactWithPreferredIdentifierForContacts:v12];
  v14 = v13;
  if (v13)
  {
    v35 = v10;
    v39 = 0;
    v15 = sub_1000906C0(v13, 0, &v39, 0);
    v16 = airdrop_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (v15)
      {
        Length = CFDataGetLength(v15);
      }

      else
      {
        Length = -1;
      }

      *buf = 138413058;
      v41 = v38;
      v42 = 2048;
      v43 = Length;
      v44 = 1024;
      v45 = a3;
      v46 = 1024;
      v47 = v39;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Icon for node with id = %@: iconDataSize = %ld preferVibrant = %d isContactImage = %d", buf, 0x22u);
    }

    if (v15)
    {
      v34 = v6;
      if ((v39 & 1) == 0)
      {
        SFNodeAddKind();
      }

      v17 = sub_100117A0C(v15);
      if (v17)
      {
        v18 = v17;
        Width = CGImageGetWidth(v17);
        Height = CGImageGetHeight(v18);
        v20 = +[SDStatusMonitor sharedMonitor];
        v21 = [v20 minPersonImageSize];

        CFRelease(v18);
        if (v21 > Width || v21 > Height)
        {
          v27 = airdrop_log();
          v6 = v34;
          v22 = v38;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v38;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Icon too small for node with id = %@", buf, 0xCu);
          }

          CFRelease(v15);
          v15 = 0;
          goto LABEL_14;
        }
      }

      v6 = v34;
    }

    v22 = v38;
LABEL_14:
    v10 = v35;
    goto LABEL_20;
  }

  v23 = airdrop_log();
  v22 = v38;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v38;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No contact for node with id = %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_20:

  if (v15)
  {
LABEL_23:
    SFNodeSetIconData();
    CFRelease(v15);
    v7 = v37;
    goto LABEL_53;
  }

  v24 = sub_1000906C0(0, 0, 0, v6);
  if (v24)
  {
    v15 = v24;
    SFNodeAddKind();
    goto LABEL_23;
  }

  v25 = airdrop_log();
  v7 = v37;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = SFNodeCopyRealName();
    *buf = 138412290;
    v41 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No icon data for node with id = %@", buf, 0xCu);
  }

LABEL_53:
}

__CFArray *sub_100091420(__SecTrust *a1)
{
  if (a1)
  {
    error = 0;
    if (SecTrustEvaluateWithError(a1, &error) || (result = kSecTrustResultInvalid, SecTrustGetTrustResult(a1, &result), result == kSecTrustResultRecoverableTrustFailure))
    {
      CertificateCount = SecTrustGetCertificateCount(a1);
      if (CertificateCount >= 1)
      {
        Mutable = CFArrayCreateMutable(0, CertificateCount, &kCFTypeArrayCallBacks);
        for (i = 0; i != CertificateCount; ++i)
        {
          CertificateAtIndex = SecTrustGetCertificateAtIndex(a1, i);
          CFArrayAppendValue(Mutable, CertificateAtIndex);
        }

LABEL_18:
        if (error)
        {
          CFRelease(error);
        }

        return Mutable;
      }

      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100093468();
      }
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100093380(&result);
      }

      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000933F0(&error);
      }
    }

    Mutable = 0;
    goto LABEL_18;
  }

  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000934DC();
  }

  return 0;
}

NSObject *sub_10009159C(__SecTrust *a1)
{
  v1 = sub_100091420(a1);
  if ([(__CFArray *)v1 count])
  {
    v9 = 0;
    if (SFAppleIDVerifyCertificateChainSync())
    {
      [(__CFArray *)v1 objectAtIndexedSubscript:0];

      v2 = SFAppleIDCommonNameForCertificate();
      v3 = 0;
      v4 = v3;
      v9 = v2;
      if (!v2)
      {
        v4 = v3;
        v7 = v4;
        goto LABEL_13;
      }

      v5 = airdrop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100093588(&v9);
      }
    }

    else
    {
      v4 = airdrop_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100093518(&v9);
      }
    }

    v7 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000935F8();
  }

  v7 = 0;
LABEL_14:

  return v7;
}

uint64_t sub_1000916EC(void *a1, __SecTrust *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  if (v9)
  {
    v11 = +[SDStatusMonitor sharedMonitor];
    v42 = 0;
    v12 = [v11 verifyAndParseValidationRecordData:v9 intoDictionary:&v42];
    v13 = v42;
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
        v15 = [v13 objectForKeyedSubscript:@"altDsID"];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [v14 objectForKeyedSubscript:@"encDsID"];
        }

        v19 = v17;

        if ([v19 length])
        {
          v20 = sub_100091420(a2);
          if ([v20 count])
          {
            v41 = 0;
            if (!SFAppleIDVerifyCertificateChainSync())
            {
              v23 = airdrop_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                sub_1000936A4(v10, &v41);
              }

              v18 = 0;
              goto LABEL_39;
            }

            [v20 objectAtIndexedSubscript:0];

            v21 = SFAppleIDCommonNameForCertificate();
            v22 = 0;
            v23 = v22;
            v41 = v21;
            if (v21)
            {
              v24 = airdrop_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_10009371C(v10, &v41);
              }
            }

            else
            {
              if (([v22 hasSuffix:v19]& 1) != 0)
              {
                v35 = v23;
                v26 = [v14 objectForKeyedSubscript:@"ValidatedEmailHashes"];
                v27 = [v14 objectForKeyedSubscript:@"ValidatedPhoneHashes"];
                v40 = sub_100091C80(v26);
                v38 = v27;
                v28 = v27;
                v24 = v26;
                v39 = sub_100091C80(v28);
                log = airdrop_log();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = SFShortHashArrayDescription();
                  v32 = SFShortHashArrayDescription();
                  *buf = 138478083;
                  v44 = v33;
                  v45 = 2113;
                  v46 = v32;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Hashes in validation record: Email=[%{private}@], Phone=[%{private}@]", buf, 0x16u);
                }

                v29 = [v11 emailOrPhoneForEmailHash:v40 phoneHash:v39];
                v23 = v35;
                loga = v29;
                if (v29)
                {
                  sub_100091E04(v20, v10, v29);
                }

                else
                {
                  v34 = airdrop_log();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Hashes in validation record are not recognized.", buf, 2u);
                  }
                }

                if (a4)
                {
                  *a4 = v40;
                }

                if (a5)
                {
                  *a5 = v39;
                }

                v31 = airdrop_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v44 = v10;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Validation record data is accepted for %@", buf, 0xCu);
                }

                v18 = 1;
                goto LABEL_38;
              }

              v24 = airdrop_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v44 = v19;
                v45 = 2112;
                v46 = v23;
                v47 = 2112;
                v48 = v10;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@ doesn't match %@ for %@", buf, 0x20u);
              }
            }

            v18 = 0;
LABEL_38:

LABEL_39:
            goto LABEL_40;
          }

          v25 = airdrop_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100093794();
          }
        }

        else
        {
          v20 = airdrop_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100093804();
          }
        }

        v18 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v19 = airdrop_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100093874();
      }
    }

    else
    {
      v19 = airdrop_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100093634();
      }
    }

    v18 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v14 = airdrop_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Validation record data for %@ not available", buf, 0xCu);
  }

  v18 = 0;
LABEL_42:

  return v18;
}

id sub_100091C80(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = v2 - 1;
    do
    {
      if (!v4)
      {
        v4 = objc_opt_new();
      }

      v7 = [v1 objectAtIndexedSubscript:v5];
      v16 = 0;
      v15 = 0;
      v8 = [v7 UTF8String];
      v9 = [v7 length];
      v10 = [NSMutableData dataWithCapacity:v9 >> 1];
      if (v9)
      {
        for (i = 0; i < v9; i += 2)
        {
          *__str = *&v8[i];
          v16 = strtoul(__str, 0, 16);
          [v10 appendBytes:&v16 length:1];
        }
      }

      if (v10)
      {
        v12 = [v10 base64EncodedStringWithOptions:0];
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        [v4 appendString:v12];
      }

      if (v5 != v6)
      {
        [v4 appendString:{@", "}];
      }

      ++v5;
    }

    while (v5 != v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100091E04(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[SDStatusMonitor sharedMonitor];
  v9 = +[SDAppleIDAgent sharedAgent];
  v15 = 0;
  v10 = [v9 verifiedIdentityForCertificateChain:v5 emailOrPhone:v7 error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412803;
      v17 = v6;
      v18 = 2160;
      v19 = 1752392040;
      v20 = 2113;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got verified identity for %@ (%{private, mask.hash}@)", buf, 0x20u);
    }

    v13 = [v5 objectAtIndexedSubscript:0];

    [v8 cacheIdentity:v10];
    [v8 cacheCertificate:v13 forRealName:v6];
  }

  else
  {
    [v11 code];
    SFMetricsLogUnexpectedEvent();
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413059;
      v17 = v6;
      v18 = 2160;
      v19 = 1752392040;
      v20 = 2113;
      v21 = v7;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "verifiedIdentityForCertificateChain failed for %@ (%{private, mask.hash}@) with error %@", buf, 0x2Au);
    }
  }
}

id sub_10009203C(void *a1, __SecTrust *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = +[SDStatusMonitor sharedMonitor];
  if (a3)
  {
    v10 = SFNodeCopyRealName();
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v22 = 0;
  v23 = 0;
  sub_1000916EC(v7, a2, v10, &v23, &v22);
  v12 = v23;
  v13 = v22;
  v14 = [v9 emailOrPhoneForEmailHash:v12 phoneHash:v13];
  if (!v14)
  {
    v16 = airdrop_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Contact information not available for %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v15 = [v9 verifiedIdentityForAppleID:v14];
  v16 = v15;
  if (!v15)
  {
    v19 = airdrop_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100093954();
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  if (a3)
  {
    v17 = [v15 emailOrPhone];
    if (!v17)
    {
      v21 = airdrop_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000938E4();
      }
    }

    SFNodeSetAppleID();
    SFNodeSetEmailHash();
    SFNodeSetPhoneHash();
  }

  v18 = v14;
LABEL_19:

  return v18;
}

uint64_t sub_1000922A4()
{
  v0 = SFNodeCopyFlags();
  v1 = [v0 longValue];

  return v1 & 1;
}

unint64_t sub_1000922D8()
{
  v0 = SFNodeCopyFlags();
  v1 = ([v0 longValue] >> 1) & 1;

  return v1;
}

unint64_t sub_10009230C()
{
  v0 = SFNodeCopyFlags();
  v1 = ([v0 longValue] >> 3) & 1;

  return v1;
}

unint64_t sub_100092340()
{
  v0 = SFNodeCopyFlags();
  v1 = ([v0 longValue] >> 2) & 1;

  return v1;
}

unint64_t sub_100092374()
{
  v0 = SFNodeCopyFlags();
  v1 = ([v0 longValue] >> 6) & 1;

  return v1;
}

unint64_t sub_1000923A8()
{
  v0 = SFNodeCopyFlags();
  if (([v0 longValue] & 0x80) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_10009230C();
  }

  return v1;
}

unint64_t sub_1000923F4()
{
  v0 = SFNodeCopyFlags();
  v1 = ([v0 longValue] >> 9) & 1;

  return v1;
}

const __CFString *sub_100092428(const __CFString *result)
{
  if (result)
  {
    return (CFStringGetLength(result) == 12);
  }

  return result;
}

void sub_100092450(const __CFDictionary *a1, CFDictionaryRef theDict)
{
  v3 = kSFOperationFilesCopiedKey;
  Value = CFDictionaryGetValue(theDict, kSFOperationFilesCopiedKey);
  if (Value)
  {
    v5 = Value;
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
    {
      v6 = CFDictionaryGetValue(a1, kSFOperationFilesKey);
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (valuePtr >= Count)
        {
          v11 = Count - 1;
          v9 = CFNumberCreate(0, kCFNumberSInt64Type, &v11);
          if (v9)
          {
            v10 = v9;
            CFDictionarySetValue(a1, v3, v9);
            CFRelease(v10);
          }
        }

        else
        {
          CFDictionarySetValue(a1, v3, v5);
        }

        return;
      }

      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000939DC();
      }
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100093A18();
      }
    }

    return;
  }

  CFDictionaryRemoveValue(a1, v3);
}

uint64_t sub_1000925A4()
{
  AssertionID = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"FrameworkBundleID", @"com.apple.Sharing");
  CFDictionarySetValue(Mutable, @"AssertType", @"PreventUserIdleSystemSleep");
  CFDictionarySetValue(Mutable, @"AssertName", @"AirDrop");
  if (IOPMAssertionCreateWithProperties(Mutable, &AssertionID))
  {
    v1 = airdrop_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100093A54();
    }

    AssertionID = 0;
  }

  CFRelease(Mutable);
  return AssertionID;
}

BOOL sub_10009268C()
{
  v0 = objc_alloc_init(ACAccountStore);
  v1 = sub_10001F47C(v0);
  if (!v1)
  {
    if (qword_1009A0600)
    {
      v2 = airdrop_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Missing Apple ID already presented", buf, 2u);
      }
    }

    else
    {
      error = 0;
      v2 = objc_opt_new();
      [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
      [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
      [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
      v3 = SFLocalizedStringForKey();
      [v2 setObject:v3 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      v4 = SFLocalizedStringForKey();
      [v2 setObject:v4 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v5 = SFLocalizedStringForKey();
      [v2 setObject:v5 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v6 = SFLocalizedStringForKey();
      [v2 setObject:v6 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 resourceURL];
      [v2 setObject:v8 forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

      v9 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v2);
      qword_1009A0600 = v9;
      v10 = error;
      v11 = airdrop_log();
      v12 = v11;
      if (v10 || !v9)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100093AC8(&error);
        }

        if (qword_1009A0600)
        {
          CFRelease(qword_1009A0600);
          qword_1009A0600 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Present missing Apple ID alert", v16, 2u);
        }

        RunLoopSource = CFUserNotificationCreateRunLoopSource(0, qword_1009A0600, sub_100092FC8, 0);
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
        CFRelease(RunLoopSource);
      }
    }
  }

  return v1 == 0;
}

id sub_1000929B4()
{
  v0 = +[SDStatusMonitor sharedMonitor];
  v1 = [v0 wirelessCarPlay];

  if (v1 && !qword_1009A0608)
  {
    v12[0] = SBUserNotificationDismissOnLock;
    v12[1] = SBUserNotificationDontDismissOnUnlock;
    error = 0;
    v13[0] = &__kCFBooleanFalse;
    v13[1] = &__kCFBooleanTrue;
    v13[2] = &__kCFBooleanTrue;
    v12[2] = kCFUserNotificationAlertTopMostKey;
    v12[3] = kCFUserNotificationAlertHeaderKey;
    v2 = SFLocalizedStringForKey();
    v13[3] = v2;
    v12[4] = kCFUserNotificationAlertMessageKey;
    v3 = SFLocalizedStringForKey();
    v13[4] = v3;
    v12[5] = kCFUserNotificationDefaultButtonTitleKey;
    v4 = SFLocalizedStringForKey();
    v13[5] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];

    v6 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v5);
    qword_1009A0608 = v6;
    if (error || !v6)
    {
      v9 = airdrop_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100093B38(&error);
      }

      if (qword_1009A0608)
      {
        CFRelease(qword_1009A0608);
        qword_1009A0608 = 0;
      }
    }

    else
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v6, sub_100093158, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      CFRelease(RunLoopSource);
    }
  }

  return v1;
}

id sub_100092BE0(int a1, const void *a2)
{
  v4 = objc_opt_new();
  if (a1 <= -6)
  {
    if (a1 == -8)
    {
      v5 = @"System Sleep";
      goto LABEL_20;
    }

    if (a1 == -7)
    {
      if (SFIsGreenTeaDevice())
      {
        v5 = @"WLAN Disabled";
      }

      else
      {
        v5 = @"WiFi Disabled";
      }

      goto LABEL_20;
    }

    if (a1 != -6)
    {
LABEL_13:
      v5 = @"Transfer Failed 1";
      goto LABEL_20;
    }

    v5 = @"File Not Readable";
  }

  else
  {
    if (a1 <= -4)
    {
      if (a1 == -5)
      {
        v5 = @"Invalid File";
      }

      else
      {
        v5 = @"No Files";
      }

      goto LABEL_20;
    }

    if (a1 != -3)
    {
      if (a1 == -2)
      {
        v5 = @"Not Enough Space";
LABEL_20:
        v6 = 0;
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v5 = @"Authentication Failed";
  }

  v6 = a2;
LABEL_21:
  v7 = sub_100092D84(v5, v6);
  if (a2)
  {
    v8 = CFGetTypeID(a2);
    if (v8 == CFErrorGetTypeID())
    {
      [v4 setObject:a2 forKeyedSubscript:NSUnderlyingErrorKey];
    }
  }

  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v9 = [NSError errorWithDomain:kCFErrorDomainSFOperation code:a1 userInfo:v4];

  return v9;
}

__CFString *sub_100092D84(const __CFString *a1, uint64_t a2)
{
  v3 = sub_1001171C4(a1);
  if (v3 && a2)
  {
    v4 = CFStringCreateWithFormat(0, 0, v3, a2);
    CFRelease(v3);
    v3 = v4;
  }

  return v3;
}

uint64_t sub_100092DF4(void *a1)
{
  v1 = a1;
  v2 = [v1 fileSystemRepresentation];
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:v2];
    if ([v3 length] && objc_msgSend(v3, "hasPrefix:", @"./") && (objc_msgSend(v3, "hasSuffix:", @"/..") & 1) == 0)
    {
      v4 = [v3 containsString:@"../"] ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100092EBC(void *a1)
{
  v1 = a1;
  v2 = [v1 fileSystemRepresentation];
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:v2];
    if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", @".") & 1) == 0)
    {
      v4 = [v3 containsString:@"/"] ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double sub_100092F70()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 66.0;
  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 62.0;
  }

  return result;
}

void sub_100092FC8(uint64_t a1, uint64_t a2)
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Missing Apple ID notification response handler called -> responseFlags (%d)", v6, 8u);
  }

  if (!a2)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to open iCloud settings", v6, 2u);
    }

    v5 = sub_1001F0610();
    dispatch_async(v5, &stru_1008CE5F8);
  }

  CFRelease(qword_1009A0600);
  qword_1009A0600 = 0;
}

void sub_1000930E0(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_100093198()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100093208(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "copyConversationIdentityImageIconDataForImage:forConversationIdentifier:style:diameter:monogramsAsFlatImages:isContactImage returned nil for %@", buf, 0xCu);
}

void sub_100093260()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000932D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = SFNodeCopyRealName();
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "No icon data for node with model = %@, id = %@", &v6, 0x16u);
}

void sub_100093380(unsigned int *a1)
{
  sub_100019C38(a1);
  sub_100035D3C();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000933F0(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000934DC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100093518(unsigned int *a1)
{
  sub_100019C38(a1);
  sub_100035D3C();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100093588(unsigned int *a1)
{
  sub_100019C38(a1);
  sub_100035D3C();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000935F8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100093634()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000936A4(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_10000883C();
  sub_10002FC40(&_mh_execute_header, v3, v4, "Certificate chain not trusted. SFAppleIDVerifyCertificateChainSync for %@ failed with error %d");
}

void sub_10009371C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_10000883C();
  sub_10002FC40(&_mh_execute_header, v3, v4, "SFAppleIDCommonNameForCertificate for %@ failed with error %d");
}

void sub_100093794()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100093804()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100093874()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000938E4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000939DC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100093A18()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100093AC8(unsigned int *a1)
{
  sub_100019C38(a1);
  sub_100035D3C();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100093B38(unsigned int *a1)
{
  sub_100019C38(a1);
  sub_100035D3C();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100093BEC(id a1)
{
  v1 = [[SDStreamManager alloc] initWithServiceType:@"_continuity._tcp."];
  v2 = qword_100989AA8;
  qword_100989AA8 = v1;
}

void sub_100094018(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"SDStreamActivityIdentifier"];
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(*(a1 + 40) + 32) count];
    v6 = 134218242;
    v7 = v4;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received continuation payload sent notification with %lu clients, activity ID = %@", &v6, 0x16u);
  }

  if ([*(a1 + 40) servicesContainIdentifier:v2])
  {
    [*(a1 + 40) publish];
  }

  else
  {
    v5 = streams_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity not stream activity, not publishing", &v6, 2u);
    }
  }
}

id sub_1000952E0(uint64_t a1)
{
  v2 = streams_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Republishing service", v4, 2u);
  }

  return [*(a1 + 32) publish];
}

void sub_1000959D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to published net service = %@, errorDict = %@", &v3, 0x16u);
}

void sub_100095A8C(void *a1, uint64_t *a2, NSObject *a3)
{
  v5 = [a1 managerID];
  v6 = *a2;
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "No manager for received ID = %@, managers = %@", &v7, 0x16u);
}

void sub_100095B88(id a1)
{
  v1 = objc_alloc_init(SDSetupAgent);
  v2 = gSDSetupAgent;
  gSDSetupAgent = v1;
}

void *sub_1000968F8(void *result)
{
  if (*(result[4] + 72) != -1)
  {
    v2 = result;
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A48A8();
    }

    v3 = v2[4];

    return [v3 prefsChanged];
  }

  return result;
}

void sub_100096B70(uint64_t a1)
{
  if (![*(a1 + 32) _uiShowing])
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A48E0();
    }

    v5 = objc_alloc_init(SFDevice);
    v3 = +[NSUUID UUID];
    [v5 setIdentifier:v3];

    [*(a1 + 32) _uiStartWithDevice:v5 viewControllerName:@"NFCTagReaderMainController" xpcEndpoint:*(a1 + 40) label:@"NFCUI" unlessApps:0 extraInfo:*(a1 + 48)];
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }

    goto LABEL_12;
  }

  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A48FC();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    v5 = NSErrorWithOSStatusF();
    (*(v2 + 16))(v2, v5);
LABEL_12:
  }
}

const char *sub_10009773C(unsigned int a1)
{
  if (a1 > 0x66)
  {
    return "?";
  }

  else
  {
    return off_1008CECD0[a1];
  }
}

uint64_t sub_10009782C(uint64_t a1)
{
  [*(a1 + 32) _uiStartRepair:*(a1 + 40) flags:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100097914(uint64_t a1)
{
  memset(v14, 0, sizeof(v14));
  v2 = *(*(a1 + 32) + 144);
  if ([v2 countByEnumeratingWithState:v14 objects:v17 count:16])
  {
    v3 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:{**(&v14[0] + 1), *&v14[0]}];

    if (v3)
    {
      if (([v3 deviceActionType] == 36 || objc_msgSend(v3, "deviceActionType") == 90) && _os_feature_enabled_impl())
      {
        if ([*(a1 + 32) _deviceHandlesDovePeaceSetup])
        {
          if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
          {
            sub_1000A4D94();
          }

          if ([v3 deviceActionType] == 90)
          {
            v4 = [v3 bleDevice];
            v5 = [v4 advertisementFields];
            v6 = [v5 objectForKeyedSubscript:@"dpp"];
          }

          else
          {
            v6 = 0;
          }

          [*(a1 + 32) _uiStartSetupDovePeace:v3 actionType:objc_msgSend(v3 payload:"deviceActionType") autoStart:{v6, 1}];
        }

        else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A4D54();
        }
      }

      else
      {
        if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A4D14();
        }

        [*(a1 + 32) _uiStartSetupiOS:v3 autoStart:1];
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, 0);
      }

      goto LABEL_33;
    }
  }

  else
  {
  }

  if (dword_10096FEF8 <= 90 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A4DD4();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v15 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1, *&v14[0]];
    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6727 userInfo:v11];
    (*(v7 + 16))(v7, v12);
  }

  v3 = 0;
LABEL_33:
}

uint64_t sub_100097D20(uint64_t a1)
{
  [*(a1 + 32) _uiStartSetupB238:*(a1 + 40) extraInfo:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100097E38(uint64_t a1)
{
  if (![*(a1 + 32) _uiShowing])
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4E08();
    }

    v5 = objc_alloc_init(SFDevice);
    v3 = +[NSUUID UUID];
    [v5 setIdentifier:v3];

    [*(a1 + 32) _uiStartWithDevice:v5 viewControllerName:@"ProfileDevicePickerMainController" label:@"DevicePicker" unlessApps:0 extraInfo:*(a1 + 40)];
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }

    goto LABEL_12;
  }

  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A4E24();
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v5 = NSErrorWithOSStatusF();
    (*(v2 + 16))(v2, v5);
LABEL_12:
  }
}

void sub_100098058(uint64_t a1)
{
  if ([*(a1 + 32) _uiShowing])
  {
    if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4E84();
    }

    v2 = *(a1 + 48);
    if (v2)
    {
      v10 = NSLocalizedDescriptionKey;
      v3 = [NSString stringWithUTF8String:DebugGetErrorString()];
      v4 = v3;
      v5 = @"?";
      if (v3)
      {
        v5 = v3;
      }

      v11 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6721 userInfo:v6];
      (*(v2 + 16))(v2, v7);
    }
  }

  else
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4E40(a1);
    }

    [*(a1 + 32) _uiStartHomeKitDeviceDetectedWithURL:*(a1 + 40)];
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void *sub_100098BDC(void *result)
{
  if (*(result[4] + 256) != -1)
  {
    v2 = result;
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4F70();
    }

    v3 = v2[4];

    return [v3 _iTunesAccountsChanged];
  }

  return result;
}

id sub_100098C70(uint64_t a1)
{
  [*(a1 + 32) _primaryAccountChanged];
  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_100098CCC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_10096FEF8 <= 60)
    {
      v6 = v2;
      if (dword_10096FEF8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_1000A4F8C();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_10096FEF8 <= 30)
  {
    v6 = 0;
    if (dword_10096FEF8 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1000A4FCC();
      goto LABEL_13;
    }
  }
}

void sub_100098D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1009731D8 <= 30)
  {
    if (dword_1009731D8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000A4FE8();
      v3 = v5;
    }
  }

  [*(a1 + 32) _watchFound:v3];
}

void sub_100098E0C(id a1, SFBLEDevice *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1009731D8 <= 30)
  {
    v5 = v2;
    if (dword_1009731D8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000A5028();
      v3 = v5;
    }
  }
}

void sub_100098E84(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1009731D8 <= 30)
  {
    if (dword_1009731D8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000A5068();
      v3 = v5;
    }
  }

  [*(a1 + 32) _watchFound:v3];
}

void sub_100098F14(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_10096FEF8 <= 60)
    {
      v5 = v2;
      if (dword_10096FEF8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_1000A50A8();
        v3 = v5;
      }
    }
  }
}

void sub_100099314(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 != &_xpc_error_connection_invalid && dword_10096FEF8 <= 30)
  {
    v5 = v2;
    if (dword_10096FEF8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000A5160();
      v3 = v5;
    }
  }
}

void sub_10009939C(uint64_t a1)
{
  xpc_connection_cancel(*(a1 + 32));
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A51A0(a1);
  }
}

uint64_t sub_1000995F0(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 80))
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1)
      {
        return sub_1000A5248();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1000A5248();
      }
    }
  }

  else if (dword_10096FEF8 <= 50)
  {
    if (dword_10096FEF8 != -1)
    {
      return sub_1000A522C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000A522C();
    }
  }

  return result;
}

uint64_t sub_10009970C(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 80))
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1)
      {
        return sub_1000A5280();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1000A5280();
      }
    }
  }

  else if (dword_10096FEF8 <= 50)
  {
    if (dword_10096FEF8 != -1)
    {
      return sub_1000A5264();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000A5264();
    }
  }

  return result;
}

void sub_100099854(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 80))
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A52E0(a1);
    }

    v2 = *(a1 + 40);
    v3 = *(v2 + 80);
    *(v2 + 80) = 0;

    v4 = *(a1 + 40);
    if (v4[14])
    {
      [v4 _openSetupURL:?];
      v5 = *(a1 + 40);
      v6 = *(v5 + 112);
      *(v5 + 112) = 0;
    }
  }

  else if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A529C(a1);
  }
}

void *sub_1000999A8(void *result)
{
  if (*(result[4] + 128))
  {
    v1 = result;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5324();
    }

    v2 = v1[4];

    return [v2 _resetTriggers];
  }

  return result;
}

void *sub_100099CD8(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[16];
  if (!v3)
  {
    return result;
  }

  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[16];
    }

    [v3 screenOn];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

void *sub_10009A218(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[17];
  if (!v3)
  {
    return result;
  }

  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[17];
    }

    [v3 screenLocked];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

void sub_10009B1E0(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = a3;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5648(a2);
  }

  [*(*(a1 + 32) + 160) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 160);
  *(v5 + 160) = 0;

  if (a2 == 1 && !v7)
  {
    [*(a1 + 32) _uiStartTVLatencySetup:*(a1 + 40) extraInfo:0 forActionType:*(a1 + 48)];
  }
}

void sub_10009BA38(uint64_t a1)
{
  Int64 = CFDictionaryGetInt64();
  if (dword_10096FEF8 > 20 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
  {
    if (!Int64)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1000A58D8(a1);
  if (Int64)
  {
LABEL_5:
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_6:
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

id sub_10009BAE4(uint64_t a1)
{
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5938(a1);
    }
  }

  else
  {
    [*(a1 + 32) _uiStartWithDevice:*(a1 + 40) viewControllerName:*(a1 + 48) xpcEndpoint:*(a1 + 56) label:*(a1 + 64) extraInfo:*(a1 + 72)];
  }

  v2 = *(a1 + 80);

  return [v2 invalidate];
}

BOOL sub_10009C690(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = off_10096FF70();
  v4 = [(NRDevice *)v2 valueForProperty:v3];

  if ([v4 BOOLValue])
  {
    v5 = off_10096FF78();
    v6 = [(NRDevice *)v2 valueForProperty:v5];

    v7 = [v6 BOOLValue];
    v4 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10009C7FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_10096FEF8 > 60)
    {
      goto LABEL_11;
    }

    v8 = v3;
    if (dword_10096FEF8 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = v8;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a1 + 32);
    LogPrintF();
LABEL_5:
    v4 = v8;
    goto LABEL_11;
  }

  if (dword_10096FEF8 <= 50)
  {
    v8 = 0;
    if (dword_10096FEF8 != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      sub_1000A5AFC(a1);
      goto LABEL_5;
    }
  }

LABEL_11:
}

void sub_10009CB08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 56))
  {
    v6 = v3;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5B78();
    }

    [*(*(a1 + 32) + 56) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v3 = v6;
  }
}

void sub_10009CBAC(id a1)
{
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5BB8();
  }
}

void sub_10009CBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_10096FEF8 <= 20)
  {
    if (dword_10096FEF8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000A5BD4();
      v3 = v5;
    }
  }

  [*(a1 + 32) _pinPairHandleRequest:v3];
}

void sub_10009CC88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5C14();
    }

    [*(*(a1 + 32) + 48) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    goto LABEL_6;
  }

  if (dword_10096FEF8 <= 30)
  {
    v8 = 0;
    if (dword_10096FEF8 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_1000A5C54();
LABEL_6:
      v4 = v8;
    }
  }
}

void sub_10009D108(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5DD0(a1);
  }

  [*(*(a1 + 32) + 56) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;
}

void *sub_10009D84C(void *result)
{
  if (*(result[4] + 252) != -1)
  {
    v2 = result;
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6074();
    }

    v3 = v2[4];

    return [v3 _repairHandleCFUItemsChanged];
  }

  return result;
}

void *sub_10009D8E0(void *result, unint64_t a2)
{
  if (*(result[4] + 328))
  {
    v3 = result;
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = sub_1000A6090(a2);
      }
    }

    v4 = v3[4];
    if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v5 = *(v4 + 376) | 0x10;
    }

    else
    {
      v5 = *(v4 + 376);
    }

    v6 = *(v4 + 376) & 0xFFFFFFEFLL;
    if (a2 != 1)
    {
      v6 = v5;
    }

    *(v4 + 336) = (v6 & 0x10) != 0;
    *(v3[4] + 337) = a2 == 3;
    v7 = v3[4];
    v8 = v6 | 0x10000;
    v9 = v6 & 0xFFFEFFFF;
    if (*(v7 + 337))
    {
      v9 = v8;
    }

    if (v9 != *(v7 + 376))
    {
      *(v7 + 376) = v9;
      v10 = v3[4];

      return [v10 _repairProblemFlagsChanged];
    }
  }

  return result;
}

void *sub_10009D9D4(void *result)
{
  if (*(result[4] + 340) != -1)
  {
    v2 = result;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A60F0();
    }

    v3 = v2[4];

    return [v3 _repairHandleCNSStateChanged];
  }

  return result;
}

void sub_10009DA50(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (dword_10096FEF8 <= 30)
  {
    if (dword_10096FEF8 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      sub_1000A610C(a2);
      v5 = v7;
    }
  }

  if (a2 == 96)
  {
    [*(a1 + 32) _repairHandleCompletion];
    v5 = v7;
  }
}

const char *sub_10009DAF0(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_10009E7B0(void *a1)
{
  v1 = a1;
  v2 = [v1 uniqueIdentifier];
  v3 = [v2 isEqual:@"com.apple.AAFollowUpIdentifier.RenewCredentials"];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 typeIdentifier];
    v6 = [v5 isEqual:@"com.apple.AAFollowUpIdentifier.RenewCredentials"];

    if (v6)
    {
      v7 = +[ACAccountStore defaultStore];
      v8 = sub_10001F47C(v7);
      if (v8 && ([v1 accountIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) != 0))
      {
        v4 = 1;
      }

      else
      {
        v12 = [v1 accountIdentifier];
        v13 = [v7 accountWithIdentifier:v12];

        v4 = 0;
        if (v8 && v13)
        {
          v14 = [v8 aa_altDSID];
          v15 = [v13 aa_altDSID];
          v4 = [v14 isEqual:v15];
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_10009E930(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (v8)
  {
    if (dword_10096FEF8 <= 90 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6214();
    }

    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6254();
    }

    v5 = [*(a1 + 32) mutableCopy];
    [v5 removeObjectsAtIndexes:*(a1 + 40)];
    v6 = *(a1 + 48);
    v7 = [v5 copy];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_10009EADC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 368);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009EBA8;
  block[3] = &unk_1008CE900;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void *sub_10009EBA8(void *result)
{
  if (*(result[4] + 252) != -1)
  {
    v1 = result;
    if (result[5])
    {
      if (dword_10096FEF8 <= 60)
      {
        if (dword_10096FEF8 != -1)
        {
          return LogPrintF();
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          v4 = v1[5];
          return LogPrintF();
        }
      }
    }

    else
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A6294(v1);
      }

      v2 = v1[4];
      v3 = v1[6];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10009ECD0;
      v5[3] = &unk_1008CE2E8;
      v5[4] = v2;
      return [v2 _renewAccountIfNecessaryForCFUItems:v3 completion:v5];
    }
  }

  return result;
}

void sub_10009F4A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 368);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F56C;
  block[3] = &unk_1008CE900;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t sub_10009F56C(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    if (dword_10096FEF8 <= 30)
    {
      if (dword_10096FEF8 != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v5 = *(v1 + 32);
        return LogPrintF();
      }
    }
  }

  else
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6394(v1);
    }

    v2 = *(*(v1 + 48) + 376) & 0xFFFDFFF9;
    result = [*(v1 + 40) combinedProblemFlags];
    v3 = *(v1 + 48);
    if ((result | v2) != *(v3 + 376))
    {
      *(v3 + 376) = result | v2;
      v4 = *(v1 + 48);

      return [v4 _repairProblemFlagsChanged];
    }
  }

  return result;
}

void sub_1000A00D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  if (v2)
  {
    v3 = [v2 lastDisconnectError];
    v5 = v3;
    if (dword_10096FEF8 <= 40)
    {
      if (dword_10096FEF8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_1000A66EC();
        v3 = v5;
      }
    }

    [*(a1 + 32) _repairVPNError:v3];
  }
}

void sub_1000A0220(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A672C(v1);
    }

    if (_os_feature_enabled_impl())
    {
      v4 = [*(*v1 + 4) objectForKeyedSubscript:*v2];
      v5 = [v4 bleDevice];
      [v5 setTriggered:1];
    }

    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6790(v1 + 1);
    }

    v8 = [*(*v1 + 4) objectForKeyedSubscript:*v2];
    if ([v8 deviceActionType] == 5)
    {
      v6 = [v8 bleDevice];
      if (v6)
      {
        [*v1 _watchFound:v6];
      }
    }

    else
    {
      [*v1 _deviceFound:v8];
    }

    v7 = v8;
  }

  else
  {
    if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1000A67D4(v1 + 1, v1, &v9);
    v7 = v9;
  }
}

void sub_1000A04B0(uint64_t a1)
{
  v2 = [NSURL URLWithString:@"com.apple.Home://a/s?n=Test"];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _uiStartHomeKitDeviceDetectedWithURL:v2];
    v2 = v3;
  }
}

void sub_1000A05DC(uint64_t a1)
{
  v3 = objc_alloc_init(SFDevice);
  v2 = +[NSUUID UUID];
  [v3 setIdentifier:v2];

  [*(a1 + 32) _uiStartWithDevice:v3 viewControllerName:@"NFCTagReaderMainController" xpcEndpoint:0 label:@"NFCUI" unlessApps:0 extraInfo:0];
}

void sub_1000A07CC(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = &stru_1008EFBD0;
  if (a1[6])
  {
    v3 = a1[6];
  }

  v5 = @"testParams";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v1 _uiStartPair:v2 extraInfo:v4];
}

void sub_1000A0EAC(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = &stru_1008EFBD0;
  if (a1[6])
  {
    v3 = a1[6];
  }

  v5 = @"testParams";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v1 _uiStartSetupB238:v2 extraInfo:v4];
}

void sub_1000A19D8(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = &stru_1008EFBD0;
  if (a1[6])
  {
    v3 = a1[6];
  }

  v5 = @"testParams";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v1 _uiStartAppleTVSetup:v2 extraInfo:v4];
}

void sub_1000A1C04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_10096FEF8 <= 90 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6B84();
  }

  [*(a1 + 32) invalidate];
}

void sub_1000A1C88(id a1)
{
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6BC4();
  }
}

void sub_1000A1CD4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_10096FEF8 <= 30)
  {
    v5 = v2;
    if (dword_10096FEF8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000A6BE0();
      v3 = v5;
    }
  }
}

void sub_1000A1EA4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = &stru_1008EFBD0;
  if (a1[6])
  {
    v3 = a1[6];
  }

  v5 = @"testParams";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v1 _uiStartTVLatencySetup:v2 extraInfo:v4 forActionType:25];
}

void sub_1000A20B0(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = &stru_1008EFBD0;
  if (a1[6])
  {
    v3 = a1[6];
  }

  v5 = @"testParams";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v1 _uiStartTVLatencySetup:v2 extraInfo:v4 forActionType:30];
}

Class sub_1000A23FC()
{
  if (qword_100989AE8 != -1)
  {
    sub_1000A6CA0();
  }

  result = objc_getClass("NRPairedDeviceRegistry");
  qword_100989AE0 = result;
  off_10096FF68 = sub_1000A2450;
  return result;
}

id sub_1000A2488()
{
  if (qword_100989AF8 != -1)
  {
    sub_1000A6CB4();
  }

  v1 = qword_100989AD0;

  return v1;
}

void sub_1000A24CC(id a1)
{
  if (qword_100989AE8 != -1)
  {
    sub_1000A6CA0();
  }

  v1 = dlsym(qword_100989AF0, "NRDevicePropertyIsArchived");
  if (v1)
  {
    objc_storeStrong(&qword_100989AD0, *v1);
  }

  off_10096FF70 = sub_1000A2534;
}

id sub_1000A2540()
{
  if (qword_100989B00 != -1)
  {
    sub_1000A6CC8();
  }

  v1 = qword_100989AD8;

  return v1;
}

void sub_1000A2584(id a1)
{
  if (qword_100989AE8 != -1)
  {
    sub_1000A6CA0();
  }

  v1 = dlsym(qword_100989AF0, "NRDevicePropertyMigrationConfirmed");
  if (v1)
  {
    objc_storeStrong(&qword_100989AD8, *v1);
  }

  off_10096FF78 = sub_1000A25EC;
}

id sub_1000A25F8()
{
  if (qword_100989B08 != -1)
  {
    sub_1000A6CDC();
  }

  v1 = qword_100989AC8;

  return v1;
}

void sub_1000A263C(id a1)
{
  if (qword_100989AE8 != -1)
  {
    sub_1000A6CA0();
  }

  v1 = dlsym(qword_100989AF0, "_NRDevicePropertyBluetoothIdentifier");
  if (v1)
  {
    objc_storeStrong(&qword_100989AC8, *v1);
  }

  off_10096FF80 = sub_1000A26A4;
}

Class sub_1000A26B0()
{
  if (qword_100989AE8 != -1)
  {
    sub_1000A6CA0();
  }

  result = objc_getClass("NRMigrator");
  qword_100989B10 = result;
  off_10096FF88 = sub_1000A2704;
  return result;
}

Class sub_1000A2710()
{
  if (qword_100989B20 != -1)
  {
    sub_1000A6CF0();
  }

  result = objc_getClass("NEVPNConnection");
  qword_100989B18 = result;
  off_10096FF90 = sub_1000A2764;
  return result;
}

Class sub_1000A279C()
{
  if (qword_100989B38 != -1)
  {
    sub_1000A6D04();
  }

  result = objc_getClass("FLFollowUpController");
  qword_100989B30 = result;
  off_10096FF98 = sub_1000A27F0;
  return result;
}

id sub_1000A2828()
{
  if (qword_100989B48 != -1)
  {
    sub_1000A6D18();
  }

  v1 = qword_100989AC0;

  return v1;
}

void sub_1000A286C(id a1)
{
  if (qword_100989B50 != -1)
  {
    sub_1000A6D2C();
  }

  v1 = dlsym(qword_100989B58, "HMDeviceSetupFollowupIdentifier");
  if (v1)
  {
    objc_storeStrong(&qword_100989AC0, *v1);
  }

  off_10096FFA0 = sub_1000A28D4;
}

Class sub_1000A290C()
{
  if (qword_100989B68 != -1)
  {
    sub_1000A6D40();
  }

  result = objc_getClass("SSAccountStore");
  qword_100989B60 = result;
  off_10096FFA8 = sub_1000A2960;
  return result;
}

Class sub_1000A2998()
{
  if (qword_100989B80 != -1)
  {
    sub_1000A6D54();
  }

  result = objc_getClass("AISRepairController");
  qword_100989B78 = result;
  off_10096FFB0 = sub_1000A29EC;
  return result;
}

Class sub_1000A2A24()
{
  if (qword_100989B80 != -1)
  {
    sub_1000A6D54();
  }

  result = objc_getClass("AISRepairContext");
  qword_100989B90 = result;
  off_10096FFB8 = sub_1000A2A78;
  return result;
}

uint64_t sub_1000A53B8(uint64_t result)
{
  if (dword_10096FEF8 <= 60)
  {
    if (dword_10096FEF8 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1000A552C()
{
  if (dword_10096FEF8 <= 50)
  {
    if (dword_10096FEF8 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1000A55AC()
{
  if (dword_10096FEF8 <= 50)
  {
    if (dword_10096FEF8 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1000A5648(unsigned int a1)
{
  if (a1 <= 5)
  {
    v1 = off_1008CF008[a1];
  }

  return LogPrintF();
}

void sub_1000A56C4(int a1, NSErrorUserInfoKey *a2, const __CFString **a3, void *a4)
{
  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    v8 = a1;
    *a2 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v10 = v9;
    v11 = @"?";
    if (v9)
    {
      v11 = v9;
    }

    *a3 = v11;
    v12 = [NSDictionary dictionaryWithObjects:a3 forKeys:a2 count:1];
    v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v8 userInfo:v12];
    LogPrintF();
  }

  *a4 = 0;
}

void sub_1000A5818()
{
  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

void sub_1000A5878()
{
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_100019DA8();
  }
}

uint64_t sub_1000A58D8(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_1000A5CA8()
{
  if (dword_10096FEF8 <= 60)
  {
    if (dword_10096FEF8 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000A5D68()
{
  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t sub_1000A5E34(int a1)
{
  if (!(!v2 & v1))
  {
    switch(a1)
    {
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
        return LogPrintF();
      default:
        JUMPOUT(0);
    }
  }

  return LogPrintF();
}

uint64_t sub_1000A6090(unint64_t a1)
{
  if (a1 <= 3)
  {
    v1 = off_1008CF038[a1];
  }

  return LogPrintF();
}

uint64_t sub_1000A6448(id *a1)
{
  v1 = [*a1 manateeState];
  if (v1 <= 2)
  {
    v2 = off_1008CF058[v1];
  }

  return LogPrintF();
}

void sub_1000A672C(uint64_t a1)
{
  v1 = [*(*a1 + 32) description];
  LogPrintF();
}

void sub_1000A67D4(id *a1, uint64_t a2, void *a3)
{
  v5 = [*a1 description];
  *a3 = v5;
  [v5 UTF8String];
  v6 = [*(*a2 + 32) description];
  LogPrintF();
}

uint64_t SDAuthenticationRelockRequestReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000A7828(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000A7860(uint64_t a1)
{
  if ([*(a1 + 32) baseAccelerationSet])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleNewAccelerometerData];
  }

  else
  {
    [*(a1 + 32) setBaseAccelerationSet:1];
    WeakRetained = [*(a1 + 32) motionManager];
    v2 = [WeakRetained accelerometerData];
    [v2 acceleration];
    [*(a1 + 32) setBaseAcceleration:?];
  }
}

void sub_1000A78F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleActivityDetected:v3];
}

void sub_1000A7D24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) logType];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Motion activity activities: %{private}@", &v9, 0xCu);
  }

  if (v6)
  {
    v8 = [*(a1 + 32) logType];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A97E8(v6, v8);
    }
  }

  [*(a1 + 32) handlePastActivities:v5 withStartDate:*(a1 + 40)];
}

void sub_1000A80FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    [v6 handlePastPedometerData:a2];
  }

  else
  {
    v7 = [v6 logType];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A9860(v5, v7);
    }
  }
}

void sub_1000A9260(uint64_t a1)
{
  v2 = [*(a1 + 32) motionDetectedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) motionDetectedHandler];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setMotionDetectedHandler:0];
  }
}

void sub_1000A9450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A9478(uint64_t a1)
{
  v2 = [*(a1 + 32) logType];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Motion timer fired", v6, 2u);
  }

  v3 = [*(a1 + 32) type];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [*(a1 + 32) motionDetected];
  }

  else
  {
    v5 = 1;
  }

  [WeakRetained handleMotionDetected:v5];
}

void sub_1000A97E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "activity error: %@", &v2, 0xCu);
}

void sub_1000A9860(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no step data, error %@", &v2, 0xCu);
}

void sub_1000A9D18(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_1000A9D5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1000A9D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1000A9D7C(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000AA7BC(a1, v2);
  }
}

int64_t sub_1000AA36C(id a1, SFAirDropNode *a2, SFAirDropNode *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  if (v6 && v7)
  {
    v10 = [(SFAirDropNode *)v6 rangingMeasurement];
    v11 = [v10 flags];

    v12 = [(SFAirDropNode *)v8 rangingMeasurement];
    v13 = [v12 flags];

    if ((v11 & 8) != 0 && (v13 & 8) == 0)
    {
      goto LABEL_8;
    }

    if ((v11 & 8) == 0 && (v13 & 8) != 0)
    {
LABEL_11:
      v9 = 1;
      goto LABEL_28;
    }

    if ((v11 & 8) != 0 && (v13 & 8) != 0)
    {
      v14 = [(SFAirDropNode *)v6 rangingMeasurement];
      [v14 ptsScore];
      v16 = v15;
      v17 = [(SFAirDropNode *)v8 rangingMeasurement];
      [v17 ptsScore];
      v19 = v18;

      if (v16 <= v19)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }
    }

    else
    {
      if ([(SFAirDropNode *)v6 isKnown]&& ![(SFAirDropNode *)v8 isKnown])
      {
        goto LABEL_11;
      }

      if (([(SFAirDropNode *)v6 isKnown]& 1) == 0 && ([(SFAirDropNode *)v8 isKnown]& 1) != 0)
      {
        goto LABEL_8;
      }

      if ([(SFAirDropNode *)v6 isMe]&& ![(SFAirDropNode *)v8 isMe])
      {
        goto LABEL_11;
      }

      if (([(SFAirDropNode *)v6 isMe]& 1) == 0 && ([(SFAirDropNode *)v8 isMe]& 1) != 0)
      {
LABEL_8:
        v9 = -1;
        goto LABEL_28;
      }

      v20 = magic_head_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(SFAirDropNode *)v6 discoveryDate];
        v22 = [(SFAirDropNode *)v8 discoveryDate];
        v26 = 138412546;
        v27 = v21;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sorting 1st slot based upon discoveryDate. A: %@, B: %@", &v26, 0x16u);
      }

      v23 = [(SFAirDropNode *)v8 discoveryDate];
      v24 = [(SFAirDropNode *)v6 discoveryDate];
      v9 = [v23 compare:v24];
    }
  }

LABEL_28:

  return v9;
}

void sub_1000AA7BC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDXPCHelperConnection invalidated for %@", &v3, 0xCu);
}

void sub_1000AABD0(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000B28A0(a1);
  }
}

void sub_1000AC730(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setObject:*(a1 + 32) forKeyedSubscript:kSFOperationBytesCopiedKey];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:kSFOperationTimeRemainingKey];
  [*(a1 + 48) notifyClientForEvent:7 withProperty:v2];
}

void sub_1000AC840(uint64_t a1)
{
  v2 = kSFOperationTotalBytesKey;
  v3 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:kSFOperationTotalBytesKey];
  v4 = [v3 longLongValue];

  if (!v4)
  {
    v4 = 128;
    v5 = [NSNumber numberWithLongLong:128];
    [*(*(a1 + 32) + 224) setObject:v5 forKeyedSubscript:v2];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 240);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACABC;
  block[3] = &unk_1008CDEA0;
  block[4] = v6;
  dispatch_async(v7, block);
  v8 = *(a1 + 32);
  v9 = [NSNumber numberWithLongLong:v4 / 5];
  [v8 notifyClientOfBytesCopied:v9 timeRemaining:&off_10090B880];

  v10 = *(a1 + 32);
  v11 = [NSNumber numberWithLongLong:2 * v4 / 5];
  [v10 notifyClientOfBytesCopied:v11 timeRemaining:&off_10090B880];

  v12 = *(a1 + 32);
  v13 = [NSNumber numberWithLongLong:3 * v4 / 5];
  [v12 notifyClientOfBytesCopied:v13 timeRemaining:&off_10090B880];

  v14 = *(a1 + 32);
  v15 = [NSNumber numberWithLongLong:4 * v4 / 5];
  [v14 notifyClientOfBytesCopied:v15 timeRemaining:&off_10090B898];

  v16 = *(a1 + 32);
  v17 = [NSNumber numberWithLongLong:v4];
  [v16 notifyClientOfBytesCopied:v17 timeRemaining:&off_10090B898];

  usleep(0x7A120u);
  v18 = *(a1 + 32);
  v19 = *(v18 + 240);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000ACACC;
  v20[3] = &unk_1008CDEA0;
  v20[4] = v18;
  dispatch_async(v19, v20);
}

id sub_1000ACBC0(uint64_t a1)
{
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3[72])
    {
      v4 = "discovery";
    }

    else
    {
      v4 = "ask";
    }

    v5 = [v3 personID];
    v7 = 136315394;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retry %s request for %@", &v7, 0x16u);
  }

  return [*(a1 + 32) resolve];
}

uint64_t sub_1000AD43C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2DC4();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000ADDC8(void *a1, char a2)
{
  v4 = airdrop_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B3000(a1, v5);
    }

    if (a1[6])
    {
      v6 = [NSURLCredential credentialForTrust:?];
    }

    else
    {
      v6 = 0;
    }

    (*(a1[5] + 16))();
    v7 = a1[4];
    if (v7[2])
    {
      [v7 notifyClientForEvent:3 withProperty:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2F70(a1);
    }

    (*(a1[5] + 16))();
  }
}

void sub_1000AF1C4(uint64_t a1)
{
  v2 = sub_1001F0874(*(*(a1 + 32) + 112));
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(*(a1 + 32) + 112);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 128) containsObject:{v8, v18}] & 1) == 0)
        {
          v9 = *(*(a1 + 32) + 456);
          *buf = *(*(a1 + 32) + 440);
          *&buf[16] = v9;
          if (!sub_1001F0F94(v8, buf))
          {
            v10 = sub_1001F1094(v8);
            if (v10)
            {
              v11 = v10;
              v5 = sub_100092BE0(-6, v10);
              CFRelease(v11);
            }

            else
            {
              v5 = sub_100092BE0(-5, 0);
            }

            v12 = airdrop_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_1000B31E4();
            }

            goto LABEL_19;
          }
        }

        if ([*(*(a1 + 32) + 112) count] == 1)
        {
          [*(a1 + 32) generatePreviewForFileURL:v8];
        }

        [*(a1 + 32) appendFileURL:v8 withBase:v2 toItems:v3];
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v13 = [v3 count];
  v14 = airdrop_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [*(*(a1 + 32) + 112) count];
    *buf = 134218240;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "validateAirDropItems validated %lu/%lu items for transfer", buf, 0x16u);
  }

  [*(*(a1 + 32) + 224) setObject:v3 forKeyedSubscript:kSFOperationFilesKey];
  v16 = [*(*(a1 + 32) + 120) allValues];
  v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 containsObject:&__kCFBooleanTrue]);
  [*(*(a1 + 32) + 224) setObject:v17 forKeyedSubscript:kSFOperationConvertMediaFormatsKey];

  (*(*(a1 + 40) + 16))();
}

void sub_1000AFC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AFC30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_1000AFF78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3418(v3, a1);
    }

    [*(a1 + 32) notifyClientForEvent:10 withProperty:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    if ((*(v5 + 208) & 1) == 0 && *(v5 + 312) == 1)
    {
      v6 = +[SDConnectedBrowser sharedBrowser];
      [v6 addAirDropPerson:*(*(a1 + 32) + 200)];

      *(*(a1 + 32) + 208) = 1;
      v5 = *(a1 + 32);
    }

    v7 = *(v5 + 200);
    v8 = SFNodeCopyAppleID();
    v9 = *(*(a1 + 32) + 200);
    v10 = SFNodeCopyServiceName();
    v11 = *(*(a1 + 32) + 200);
    v12 = SFNodeCopyComputerName();
    if (v10)
    {
      [*(*(a1 + 32) + 224) setObject:v10 forKeyedSubscript:kSFOperationReceiverIDKey];
    }

    if (v12)
    {
      [*(*(a1 + 32) + 224) setObject:v12 forKeyedSubscript:kSFOperationReceiverComputerNameKey];
    }

    if (v8 && ([*(*(a1 + 32) + 176) verifiedIdentityForAppleID:v8], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = *(*(a1 + 32) + 200);
      Name = SFNodeCopyLastName();
      v16 = *(*(a1 + 32) + 200);
      v17 = SFNodeCopyFirstName();
      v18 = *(*(a1 + 32) + 200);
      v19 = SFNodeCopyDisplayName();
      if (Name)
      {
        [*(*(a1 + 32) + 224) setObject:Name forKeyedSubscript:kSFOperationReceiverLastNameKey];
      }

      if (v17)
      {
        [*(*(a1 + 32) + 224) setObject:v17 forKeyedSubscript:kSFOperationReceiverFirstNameKey];
      }

      if (v19)
      {
        [*(*(a1 + 32) + 224) setObject:v19 forKeyedSubscript:kSFOperationReceiverCompositeNameKey];
      }

      [*(*(a1 + 32) + 224) setObject:&__kCFBooleanTrue forKeyedSubscript:kSFOperationVerifiableIdentityKey];
    }

    else
    {
      [*(*(a1 + 32) + 224) setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationVerifiableIdentityKey];
    }

    v20 = *(*(a1 + 32) + 200);
    *(*(a1 + 32) + 264) = sub_1000922D8();
    if (*(a1 + 40) == 1)
    {
      [*(a1 + 32) startSendingClassroom];
    }

    [*(a1 + 32) removeFileIconsFromProperties];
    v21 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:kSFOperationFilesKey];
    v22 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:kSFOperationItemsKey];
    v23 = [v21 count];
    if (!v23)
    {
      v23 = [v22 count];
    }

    v24 = airdrop_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(*(a1 + 32) + 224);
      v26 = 138412802;
      v27 = v12;
      v28 = 2048;
      v29 = v23;
      v30 = 2112;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "startSending to: %@, validated %lu airdrop items. properties: %@", &v26, 0x20u);
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      [*(a1 + 32) send];
    }
  }
}

void sub_1000B0668(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000B34D0(a1);
    }

    [*(a1 + 40) notifyClientForEvent:10 withProperty:v3];
  }

  else
  {
    v5 = *(*(a1 + 40) + 200);
    v6 = SFNodeCopyComputerName();
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(*(a1 + 40) + 112) count];
      v9 = *(*(a1 + 40) + 112);
      v10 = 134218498;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting to send %lu files to %@, fileURLs: %@", &v10, 0x20u);
    }

    [*(a1 + 40) startSending];
  }
}

void sub_1000B0E34(uint64_t a1)
{
  sub_1001F061C();
  sub_10008FEB8(*(a1 + 32));
  v2 = sub_10008F9A4();
  dispatch_resume(v2);
}

void sub_1000B17EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1000B1974(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 312) == 1)
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_shouldPublishProgress, adding total unit count of 100", v8, 2u);
    }

    [*(*(a1 + 32) + 64) setTotalUnitCount:{objc_msgSend(*(*(a1 + 32) + 64), "totalUnitCount") + 100}];
    [*(*(a1 + 32) + 64) addChild:v3 withPendingUnitCount:100];
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 312);
  if (*(v4 + 57) == 1)
  {
    if (*(v4 + 312))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((*(v4 + 312) & 1) == 0)
  {
LABEL_10:
    WeakRetained = objc_loadWeakRetained((v4 + 432));
    [WeakRetained handleConversionProgress:v3];

    goto LABEL_11;
  }

  *(v4 + 57) = 1;
  [*(*(a1 + 32) + 64) addObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" options:0 context:0];
LABEL_11:
}

void sub_1000B1A94(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = *(a1 + 32);
  v24 = *(v23 + 240);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000B1C3C;
  v32[3] = &unk_1008CF2A0;
  v42 = a6;
  v33 = v16;
  v34 = v23;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v21;
  v39 = v22;
  v40 = v20;
  v41 = *(a1 + 40);
  v25 = v20;
  v26 = v22;
  v27 = v21;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  v31 = v16;
  dispatch_async(v24, v32);
}

uint64_t sub_1000B1C3C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 == 10)
  {
    [*(a1 + 40) notifyClientForEvent:10 withProperty:*(a1 + 88)];
  }

  else if (v2 == 9)
  {
    v3 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 url];
          [v3 addObject:v10];

          v11 = [v9 conversionNeeded];
          v12 = *(*(a1 + 40) + 120);
          v13 = [v9 url];
          [v12 setObject:v11 forKeyedSubscript:v13];
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v14 = *(a1 + 40);
    v15 = *(v14 + 112);
    *(v14 + 112) = v3;
    v16 = v3;

    [*(*(a1 + 40) + 128) addObjectsFromArray:*(a1 + 48)];
    [*(*(a1 + 40) + 160) addObjectsFromArray:*(a1 + 56)];
    objc_storeStrong((*(a1 + 40) + 280), *(a1 + 64));
    objc_storeStrong((*(a1 + 40) + 48), *(a1 + 72));
    objc_storeStrong((*(a1 + 40) + 336), *(a1 + 80));
  }

  return (*(*(a1 + 96) + 16))();
}

void sub_1000B2580(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "recordInteraction failed with error %@", &v5, 0xCu);
    }
  }
}

void sub_1000B28A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B2914()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B2984()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B29C0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B29FC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2A38()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2A74()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B2AE4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B2B54()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B2BC4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B2C34()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2C70(uint64_t *a1)
{
  v1 = *a1;
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B2CE4(uint64_t *a1)
{
  v1 = *a1;
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B2DC4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B2E74()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B2EE4(void *a1)
{
  v1 = [a1 personID];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B2F70(uint64_t a1)
{
  v1 = [*(a1 + 32) personID];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B3000(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) personID];
  sub_10000883C();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Validated Apple ID certificate of receiver %@", v4, 0xCu);
}

void sub_1000B3098(void *a1)
{
  v1 = [a1 name];
  sub_1000088C4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000B31A8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B3250()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B32C0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B33DC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B3418(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) + 224);
  sub_10000883C();
  sub_100019DC4(&_mh_execute_header, v3, v4, "startSending, did NOT validate airdrop items. Error: %@. properties: %@");
}

void sub_1000B3494()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B34D0(uint64_t a1)
{
  v7 = *(a1 + 32);
  [*(*(a1 + 40) + 112) count];
  v8 = *(*(a1 + 40) + 112);
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_1000B3594(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropClient: generatePreviewForFileURL failed to decode.", buf, 2u);
}

void sub_1000B35D4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropClient: generatePreviewForFileURL monogramImageDataForContact return nil", buf, 2u);
}

void sub_1000B3614(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropClient: generatePreviewForFileURL failed to extract information from vcard %@", buf, 0xCu);
}

void sub_1000B366C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B36A8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B36E4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B3754(uint64_t *a1)
{
  v1 = *a1;
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000B39D8(id a1)
{
  v1 = objc_alloc_init(SDHotspotAgent);
  v2 = qword_100989BA0;
  qword_100989BA0 = v1;
}

id sub_1000B4104(uint64_t a1)
{
  v2 = [[SDHotspotManager alloc] initWithDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;

  if (SFDeviceIsRealityDevice() && _os_feature_enabled_impl())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B41DC;
    v6[3] = &unk_1008CF330;
    v7 = *(a1 + 32);
    [*(v7 + 64) setStatusUpdated:v6];
    [*(*(a1 + 32) + 64) subscribeForCellularSlicingAvailability];
  }

  return [*(a1 + 32) update];
}

id sub_1000B4AA4(uint64_t a1)
{
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBEC8();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _update];
}

void sub_1000B4B30(id a1)
{
  if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBEE4();
  }
}

void sub_1000B4B7C(id a1)
{
  if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBF00();
  }
}

void sub_1000B4BC8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100970200 <= 90)
    {
      v6 = v2;
      if (dword_100970200 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_1000BBF1C();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_100970200 <= 50)
  {
    v6 = 0;
    if (dword_100970200 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1000BBF5C();
      goto LABEL_13;
    }
  }
}

id sub_1000B4E00(uint64_t a1)
{
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BBFCC(a1);
  }

  [*(a1 + 32) _update];
  v2 = *(*(a1 + 32) + 208);

  return [v2 tetheringSupportChanged];
}

void sub_1000B4EBC(id a1)
{
  v1 = qword_100989BA8;
  qword_100989BA8 = &off_10090FF68;
}

void sub_1000B4FB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B502C;
  block[3] = &unk_1008CDEA0;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_1000B502C(uint64_t a1)
{
  [*(a1 + 32) _appMonitorUpdate];
  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_1000B61CC(uint64_t a1)
{
  if (*(*(a1 + 32) + 216))
  {
    v2 = arc4random();
    v3 = [*(a1 + 32) _logCategoryCreateWithLabel:@"TetheringAgent" sessionID:v2];
    v4 = objc_alloc_init(SFRemoteHotspotDevice);
    [v4 setDeviceIdentifier:*(*(a1 + 32) + 216)];
    v5 = objc_opt_new();
    v6 = v5;
    if (*(a1 + 56))
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [v5 setRequestType:v7];
    [v6 setHotspotDevice:v4];
    [v6 setLogCategory:v3];
    [v6 setSessionID:v2];
    [v6 setTrafficFilterParams:*(a1 + 40)];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B6414;
    v13[3] = &unk_1008CF428;
    v14 = *(a1 + 48);
    [v6 setHotspotInfoHandler:v13];
    if (*v3 <= 40 && (*v3 != -1 || _LogCategory_Initialize()))
    {
      v8 = "Removing";
      if (*(a1 + 56))
      {
        v8 = "Adding";
      }

      v10 = *(*(a1 + 32) + 216);
      v11 = *(a1 + 40);
      v9 = v8;
      LogPrintF();
    }

    [*(a1 + 32) _companionLinkActivateWithRequest:{v6, v9, v10, v11}];
  }

  else
  {
    if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BC340();
    }

    v12 = NSErrorWithOSStatusF();
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000B66A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100970200 <= 50)
  {
    if (dword_100970200 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000BC3BC();
      v3 = v5;
    }
  }

  [*(a1 + 32) _discoveryDeviceFound:v3];
}

void sub_1000B6738(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100970200 <= 50)
  {
    if (dword_100970200 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000BC3FC();
      v3 = v5;
    }
  }

  [*(a1 + 32) _discoveryDeviceLost:v3];
}

void sub_1000B67C8(id a1)
{
  if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BC43C();
  }
}

void sub_1000B6814(id a1)
{
  if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BC458();
  }
}

void sub_1000B6860(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100970200 <= 90)
    {
      v6 = v2;
      if (dword_100970200 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_1000BC474();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_100970200 <= 50)
  {
    v6 = 0;
    if (dword_100970200 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1000BC4B4();
      goto LABEL_13;
    }
  }
}

uint64_t sub_1000B6E3C(uint64_t result)
{
  if (dword_100970200 <= 90)
  {
    v1 = result;
    if (dword_100970200 != -1)
    {
      return sub_1000BC4EC(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000BC4EC(v1);
    }
  }

  return result;
}

uint64_t sub_1000B6E98(uint64_t result)
{
  if (dword_100970200 <= 90)
  {
    v1 = result;
    if (dword_100970200 != -1)
    {
      return sub_1000BC530(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000BC530(v1);
    }
  }

  return result;
}

void sub_1000B6EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = **(a1 + 64);
  v11 = v3;
  if (v3)
  {
    if (v4 <= 90)
    {
      if (v4 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v6 = *(a1 + 64);
        v3 = v11;
      }

      v8 = *(a1 + 32);
      v10 = v3;
      LogPrintF();
    }

LABEL_9:
    v5 = [*(a1 + 40) hotspotInfoHandler];
    (v5)[2](v5, 0, v11);

    goto LABEL_12;
  }

  if (v4 <= 50)
  {
    if (v4 != -1)
    {
LABEL_7:
      v9 = *(a1 + 48);
      LogPrintF();
      [*(a1 + 56) _companionLinkActivatedRequest:{*(a1 + 40), v9}];
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(a1 + 64);
      goto LABEL_7;
    }
  }

  [*(a1 + 56) _companionLinkActivatedRequest:{*(a1 + 40), v8}];
LABEL_12:
}

void sub_1000B7C3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  LogCategory_Remove();
  (*(*(a1 + 32) + 16))();
}

id sub_1000B7CD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) _companionLinkStartTetheringWithResponse:*(a1 + 56) logCategory:*(a1 + 64) modelID:*(a1 + 40) productVersion:*(a1 + 48) canConnectOn5GHz:*(a1 + 72)];
  }
}

void sub_1000B8698(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B87CC;
  block[3] = &unk_1008CF5A0;
  v21 = v9;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v19 = *(a1 + 40);
  v14 = v19;
  v25 = v19;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  v18 = v9;
  dispatch_async(v13, block);
}

void sub_1000B87CC(uint64_t a1)
{
  v2 = **(a1 + 72);
  if (v2 <= 50)
  {
    if (v2 != -1)
    {
LABEL_3:
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = objc_retainBlock(*(a1 + 64));
      LogPrintF();

      goto LABEL_5;
    }

    v5 = *(a1 + 72);
    if (_LogCategory_Initialize())
    {
      v12 = *(a1 + 72);
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = objc_opt_new();
  v8 = v6;
  v9 = *(a1 + 32);
  v15 = v6;
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"name"];
    v8 = v15;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    [v8 setObject:v10 forKeyedSubscript:@"pass"];
    v8 = v15;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@"chan"];
    v8 = v15;
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v8, 0, *(a1 + 56), v7);
}

void sub_1000B9200(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 browsing])
  {
    v6 = [v5 clientProxy];
    if (v6)
    {
      v7 = [*(*(a1 + 32) + 112) allValues];
      [v6 updatedFoundDeviceList:v7];
    }

    else if (dword_100970200 <= 90 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BCC70();
    }
  }
}

void sub_1000B9694(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) _sysMonitorD2DEncryptionIsAvailable] & 1) != 0 || objc_msgSend(v5, "group") != 1)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1000B99F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v2 activeDevices];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = *(a1 + 40);
          v10 = [v8 identifier];
          LODWORD(v9) = [v9 isEqual:v10];

          if (v9)
          {
            [*(a1 + 32) _discoveryDeviceChanged:v8];
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

void sub_1000B9BF4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v2 activeDevices];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [v8 identifier];
          v10 = [*(*(a1 + 32) + 232) objectForKeyedSubscript:v9];

          if (v10)
          {
            [*(a1 + 32) _discoveryDeviceChanged:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

id sub_1000BA5B8(uint64_t a1)
{
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BD0C0();
  }

  *(*(a1 + 32) + 136) = -1;
  v2 = *(a1 + 32);

  return [v2 _update];
}

id sub_1000BA62C(uint64_t a1)
{
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BD0DC();
  }

  [*(a1 + 32) _legacyBrowswerUpdateD2DState];
  [*(a1 + 32) _update];
  v2 = *(a1 + 32);

  return [v2 _discoveryUpdateCombined:0];
}

id sub_1000BA6A8(uint64_t a1)
{
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BD0F8();
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

id sub_1000BA710(uint64_t a1)
{
  if (dword_100970200 <= 50 && (dword_100970200 != -1 || _LogCategory_Initialize()))
  {
    sub_1000BD114();
  }

  *(*(a1 + 32) + 321) = 1;
  [*(a1 + 32) _legacyBrowswerUpdateD2DState];
  v2 = *(a1 + 32);

  return [v2 _update];
}

id sub_1000BB110(uint64_t a1, int a2)
{
  v3 = **(a1 + 64);
  if (a2 == 1)
  {
    if (v3 <= 50)
    {
      if (v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v8 = *(a1 + 64);
      }

      v10 = *(a1 + 32);
      LogPrintF();
    }

LABEL_9:
    (*(*(a1 + 56) + 16))(*(a1 + 56));
    goto LABEL_12;
  }

  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 64);
    }

    v11 = *(a1 + 32);
    LogPrintF();
  }

LABEL_11:
  v4 = NSErrorWithOSStatusF();
  (*(*(a1 + 56) + 16))(*(a1 + 56));

LABEL_12:
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 336);

  return [v6 removeObjectForKey:v5];
}

void sub_1000BB2B0(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  [*(a1 + 32) _postUserAlertForName:@"John Appleseed" altDSID:v3 logCategory:objc_msgSend(*(a1 + 32) completion:{"_logCategoryCreateWithLabel:sessionID:", @"TetheringAgent", 0), &stru_1008CF660}];
}

id sub_1000BB5A0(uint64_t a1)
{
  v1 = (a1 + 32);
  result = *(*(a1 + 32) + 344);
  if (result != -1)
  {
    state64 = 0;
    result = notify_get_state(result, &state64);
    if (*(*v1 + 87) != state64)
    {
      *(*v1 + 87) = state64;
      if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
      {
        sub_1000BD160(v1);
      }

      return [*v1 _updateAdvertisementSuppression:*(*v1 + 87) == 1];
    }
  }

  return result;
}

void sub_1000BB7BC(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 52);
  if (v2 != -1)
  {
    state64 = 0;
    notify_get_state(v2, &state64);
    v3 = state64;
    if (dword_100970200 <= 30 && (dword_100970200 != -1 || _LogCategory_Initialize()))
    {
      sub_1000BD240(v1, v3);
    }

    v4 = v3 == 2;
    if (v3)
    {
      if (*(*v1 + 56) != v4)
      {
        *(*v1 + 56) = v4;
        [*(*v1 + 8) publishCellularSlicingEnabledAs:*(*v1 + 56)];
      }
    }
  }
}

id sub_1000BBA40()
{
  if (qword_100989BC0 != -1)
  {
    sub_1000BD2A0();
  }

  v1 = qword_100989BB8;

  return v1;
}

void sub_1000BBA84(id a1)
{
  if (qword_100989BC8 != -1)
  {
    sub_1000BD2B4();
  }

  v1 = dlsym(qword_100989BD0, "RPOptionSenderModelID");
  if (v1)
  {
    objc_storeStrong(&qword_100989BB8, *v1);
  }

  off_100970270 = sub_1000BBAEC;
}

void sub_1000BBD08(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = SFHotspotNetworkTypeString(a1);
  v4 = SFHotspotNetworkTypeString(a2);
  LogPrintF();
}

void sub_1000BC094(void *a1, uint64_t a2)
{
  v2 = [a1 _appMonitorStringForState:a2];
  LogPrintF();
}

void sub_1000BC0F4(void *a1)
{
  v1 = [a1 bundleID];
  LogPrintF();
}

void sub_1000BC160(void *a1)
{
  v1 = [a1 UUIDString];
  LogPrintF();
}

void sub_1000BC1D8(void *a1)
{
  v1 = [a1 bundleID];
  LogPrintF();
}

void sub_1000BC288(void *a1)
{
  v1 = [a1 bundleID];
  LogPrintF();
}

uint64_t sub_1000BC6A8(char a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (a1)
  {
    LogPrintF();
    return 1;
  }

  else
  {
    v6 = [a3 firstName];
    v7 = v6;
    if (a4 > 2)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1008CF708[a4];
    }

    v9 = [NSString stringWithFormat:@"Family ('%@') - %s", v6, v8];
    LogPrintF();

    return 0;
  }
}

uint64_t sub_1000BC8B0(void *a1, uint64_t *a2)
{
  [a1 logCategory];
  v4 = *a2;
  return LogPrintF();
}

uint64_t sub_1000BCF70(_BYTE *a1)
{
  a1[264];
  a1[24];
  a1[48];
  [a1 _sysMonitorD2DEncryptionIsAvailable];
  [a1 _idsLegacyHostDeviceCount];
  return LogPrintF();
}

uint64_t sub_1000BD01C(uint64_t a1)
{
  *(a1 + 264);
  [*(a1 + 224) maxConnectionsReached];
  [a1 _sysMonitorD2DEncryptionIsAvailable];
  [a1 _idsLegacyClientDeviceCount];
  return LogPrintF();
}

uint64_t sub_1000BD160(uint64_t a1)
{
  v1 = *(*a1 + 348);
  if (v1 <= 5)
  {
    v2 = off_1008CF720[v1];
  }

  v4 = *(*a1 + 348);
  return LogPrintF();
}

void sub_1000BD1E4(void *a1, uint64_t a2)
{
  v2 = [a1 _slicingLLPHSStateNotificationValueToString:a2];
  LogPrintF();
}

void sub_1000BD240(id *a1, uint64_t a2)
{
  v2 = [*a1 _slicingLLPHSStateNotificationValueToString:a2];
  LogPrintF();
}

void sub_1000BD30C(id a1)
{
  if ((SFIsDeviceAudioAccessory() & 1) == 0)
  {
    v1 = objc_alloc_init(SDHotspotBrowser);
    v2 = qword_100989BD8;
    qword_100989BD8 = v1;
  }
}

id sub_1000BD52C(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activating legacy browser", v7, 2u);
  }

  v3 = [[IDSContinuity alloc] initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 56)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;

  [*(a1 + 32) addObservers];
  [*(a1 + 32) stopAdvertisingResponse];
  [*(a1 + 32) stopAdvertisingTetheringRequest];
  [*(a1 + 32) updateHasAppleID];
  [*(a1 + 32) updateIDHash];
  return [*(a1 + 32) tetheringSupportChanged];
}

void sub_1000BD664(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating legacy browser", v7, 2u);
  }

  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 11) = 0;
  *(*(a1 + 32) + 12) = 0;
  *(*(a1 + 32) + 14) = 0;
  [*(a1 + 32) removeObservers];
  [*(a1 + 32) stopAdvertisingResponse];
  [*(a1 + 32) stopAdvertisingTetheringRequest];
  [*(a1 + 32) stopConsumerScanning];
  [*(a1 + 32) stopProducerScanning];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  [*(*(a1 + 32) + 40) removeDelegate:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000BD880(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(v3 + 80);
  v4 = (v3 + 80);
  v5 = v6;
  if (v2)
  {
    if (!v5)
    {
      objc_storeStrong(v4, v2);
      v7 = *(a1 + 40);
      v8 = *(v7 + 80);
      v9 = *(v7 + 56);

      [v8 addDelegate:? queue:?];
    }
  }

  else if (v5)
  {
    [v5 removeDelegate:?];
    v10 = *(a1 + 40);
    v11 = *(v10 + 80);
    *(v10 + 80) = 0;
  }
}

void *sub_1000BD98C(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 8) != v2)
  {
    v3 = result;
    *(v1 + 8) = v2;
    v4 = tethering_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3[4] + 8))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Legacy scan state changed: %@", &v7, 0xCu);
    }

    v6 = v3[4];
    if (v6[8] == 1)
    {
      return [v6 restartProducerScanning];
    }

    else
    {
      return [v6 stopProducerScanning];
    }
  }

  return result;
}

void *sub_1000BDAFC(void *result)
{
  if (*(result[4] + 9) != *(result + 40))
  {
    v1 = result;
    v2 = tethering_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Legacy D2D encryption state changed: %{BOOL}d", v4, 8u);
    }

    *(v1[4] + 9) = *(v1 + 40);
    return [v1[4] restartProducerScanning];
  }

  return result;
}

void sub_1000BEFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BF008(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 remoteHotspotDevice];
    v7 = [v6 deviceIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

id sub_1000BF658(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "altDSIDUpdated", v4, 2u);
  }

  return [*(a1 + 32) updateAccountState];
}

id sub_1000BFB00(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Apple ID changed", v4, 2u);
  }

  return [*(a1 + 32) updateAccountState];
}

id sub_1000BFBE8(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Apple Account signed in", v4, 2u);
  }

  return [*(a1 + 32) updateAccountState];
}

id sub_1000BFCD0(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Apple Account signed out", v4, 2u);
  }

  return [*(a1 + 32) updateAccountState];
}

id sub_1000BFDF8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) screenOn])
  {
    [*(a1 + 32) updateIDHashAndRestart];
  }

  v2 = [*(a1 + 32) bluetoothAllowedForScreenState];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 restartAdvertisingTetheringRequest];
    v4 = *(a1 + 32);

    return [v4 restartConsumerScanning];
  }

  else
  {
    [v3 stopAdvertisingTetheringRequest];
    v6 = *(a1 + 32);

    return [v6 stopConsumerScanning];
  }
}

id sub_1000BFEF4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) maxConnectionsReached];
  if (result)
  {
    v3 = tethering_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Max connections reached, stopping response", v4, 2u);
    }

    return [*(a1 + 32) stopAdvertisingResponse];
  }

  return result;
}

void sub_1000C0010(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [v2 isEqualToString:SFWiFiPasswordSharingAdvertisingBegan];

  if (v3)
  {
    v4 = tethering_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WiFi password sharing began", buf, 2u);
    }

    v5 = *(a1 + 40);
    if (*(v5 + 12) == 1 && (*(v5 + 13) & 1) == 0)
    {
      *(v5 + 13) = 1;
      [*(a1 + 40) stopAdvertisingTetheringRequest];
    }
  }

  else
  {
    v6 = [*(a1 + 32) name];
    v7 = [v6 isEqualToString:SFWiFiPasswordSharingAdvertisingEnded];

    if (v7)
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WiFi password sharing ended", v10, 2u);
      }

      v9 = *(a1 + 40);
      if (*(v9 + 13) == 1)
      {
        *(v9 + 13) = 0;
        [*(a1 + 40) restartAdvertisingTetheringRequest];
      }
    }
  }
}

id sub_1000C0A98(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 48) isTetheringSupported];
    v4 = @"NO";
    if (v3)
    {
      v4 = @"YES";
    }

    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Tethering support changed = %@", &v8, 0xCu);
  }

  v5 = [*(*(a1 + 32) + 48) isTetheringSupported];
  v6 = *(a1 + 32);
  if (v5)
  {
    return [v6 restartProducerScanning];
  }

  [v6 stopProducerScanning];
  return [*(a1 + 32) stopAdvertisingResponse];
}

void *sub_1000C1248(void *result)
{
  if ((*(result[4] + 12) & 1) == 0)
  {
    v1 = result;
    v2 = tethering_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting Browsing", v3, 2u);
    }

    *(v1[4] + 12) = 1;
    [v1[4] restartAdvertisingTetheringRequest];
    *(v1[4] + 11) = 1;
    return [v1[4] restartConsumerScanning];
  }

  return result;
}

void *sub_1000C1370(void *result)
{
  if (*(result[4] + 12) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = tethering_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping Browsing", v5, 2u);
    }

    *(v3[4] + 12) = 0;
    [v3[4] stopAdvertisingTetheringRequest];
    *(v3[4] + 11) = 0;
    [v3[4] stopConsumerScanning];
    return [*(v3[4] + 152) removeAllObjects];
  }

  return result;
}

void sub_1000C14E0(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) deviceName];
    v4 = [*(a1 + 32) deviceIdentifier];
    v5 = [*(a1 + 32) batteryLife];
    *buf = 138412802;
    v46 = v3;
    v47 = 2112;
    v48 = v4;
    v49 = 2112;
    v50 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Enabling hotspot for device (name = %@, identifier = %@, batteryLife = %@)", buf, 0x20u);
  }

  if ([*(*(a1 + 40) + 72) state] != 3)
  {
    v27 = tethering_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000C60A4();
    }

    v39 = NSLocalizedDescriptionKey;
    v40 = @"Tethering communication state is not on";
    v28 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v29 = NSPOSIXErrorDomain;
    v30 = 104;
    goto LABEL_17;
  }

  v6 = [*(a1 + 32) deviceIdentifier];

  if (!v6)
  {
    v31 = tethering_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6150();
    }

    v41 = NSLocalizedDescriptionKey;
    v42 = @"No peer for device requested";
    v28 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v29 = NSPOSIXErrorDomain;
    v30 = 94;
LABEL_17:
    v9 = [NSError errorWithDomain:v29 code:v30 userInfo:v28];

    (*(*(a1 + 48) + 16))();
    goto LABEL_22;
  }

  v7 = [NSUUID alloc];
  v8 = [*(a1 + 32) deviceIdentifier];
  v9 = [v7 initWithUUIDString:v8];

  v43[0] = @"HotspotMessageVersion";
  v43[1] = @"HotspotBrowserMessageType";
  v44[0] = &off_10090B910;
  v44[1] = &off_10090B928;
  v10 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v11 = tethering_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting credentials from bluetooth peer = %@", buf, 0xCu);
  }

  v12 = *(a1 + 40);
  v37 = 0;
  v38 = 0;
  v13 = [v12 sendMessage:v10 toPeer:v9 isRequest:1 messageID:0 error:&v38 identifier:&v37];
  v14 = v38;
  v15 = v37;
  if (v13)
  {
    v16 = [*(a1 + 48) copy];
    v17 = *(*(a1 + 40) + 120);
    v18 = [*(a1 + 32) deviceIdentifier];
    [v17 setObject:v16 forKeyedSubscript:v18];

    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) deviceIdentifier];
    [v19 invalidateTimerWithIdentifier:v20];

    v21 = *(a1 + 40);
    v22 = [*(a1 + 32) deviceIdentifier];
    [v21 addRetrieveTimer:v22];

    v23 = [SDHotspotRequestRecord alloc];
    v24 = *(a1 + 32);
    v25 = +[NSDate date];
    v26 = [(SDHotspotRequestRecord *)v23 initWithHotspotDevice:v24 startTime:v25 requestID:v15];

    if (v15)
    {
      [*(*(a1 + 40) + 200) setObject:v26 forKeyedSubscript:v15];
    }
  }

  else
  {
    v32 = tethering_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000C60E0();
    }

    v33 = *(a1 + 40);
    v34 = v33[23];
    v35 = [*(a1 + 32) deviceIdentifier];
    v36 = [v33 modelCodeForIdentifier:v35];
    sub_100087278(v34, v36, v14, 3, 0);

    (*(*(a1 + 48) + 16))();
  }

LABEL_22:
}

void sub_1000C1A6C(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"retrieveTimerFired:" selector:*(a1 + 40) userInfo:0 repeats:30.0];
  [*(*(a1 + 32) + 128) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

id sub_1000C1BA8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = (a1 + 40);
    v4 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:?];
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v13 = @"Retrieving credentials timed out";
      v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:v5];
      (*(v4 + 16))(v4, 0, v6);

      [*(*v3 + 15) removeObjectForKey:*v2];
      v7 = tethering_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000C618C(v2);
      }

      if (![*v3 outstandingRequestsHasHotspotDeviceForID:*v2])
      {
        goto LABEL_12;
      }

      v8 = *(*v3 + 23);
      v9 = [*v3 modelCodeForIdentifier:*v2];
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
      sub_100087278(v8, v9, v10, 5, 0);
    }

    else
    {
      v9 = tethering_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6204(v2, a1 + 40, v9);
      }
    }

LABEL_12:
    [*(*v3 + 16) removeObjectForKey:*v2];
    goto LABEL_13;
  }

  v4 = tethering_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000C6298();
  }

LABEL_13:

  return [*(a1 + 48) invalidate];
}

void sub_1000C33C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_10090B910 forKeyedSubscript:@"HotspotMessageVersion"];
  [v4 setObject:&off_10090B910 forKeyedSubscript:@"HotspotBrowserMessageType"];
  [v4 setObject:v3 forKeyedSubscript:@"HotspotBroswerCredentialData"];

  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending credentials to peer = %@", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) outgoingResponseIdentifier];
  v12 = 0;
  LOBYTE(v7) = [v7 sendMessage:v4 toDeviceWithID:v8 isRequest:0 messageID:v9 error:&v12 identifier:0];
  v10 = v12;

  if ((v7 & 1) == 0)
  {
    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000C652C();
    }
  }
}

void sub_1000C39BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C39DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleScanResetTimerFired];
}

void sub_1000C3CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C3CD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleScanAssertionTimerFired];
}

void sub_1000C4338(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(v14 + 56);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C4460;
  v20[3] = &unk_1008CF810;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v14;
  v25 = v12;
  v26 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  dispatch_async(v15, v20);
}

void sub_1000C4460(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40) && *(a1 + 48))
  {
    [*(a1 + 56) credentialLog:?];
    v25 = *(a1 + 32);
    v24[0] = @"HotspotCredentialName";
    v24[1] = @"HotspotCredentialPassword";
    v24[2] = @"HotspotCredentialChannel";
    v26 = *(a1 + 48);
    v2 = &v25;
    v3 = v24;
    v4 = 3;
  }

  else
  {
    v5 = *(a1 + 64);
    v22 = @"HotspotCredentialError";
    v23 = v5;
    v2 = &v23;
    v3 = &v22;
    v4 = 1;
  }

  v6 = [NSDictionary dictionaryWithObjects:v2 forKeys:v3 count:v4];
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v8 = tethering_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = *(a1 + 64);
    v14 = 138413058;
    v15 = v10;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Credentials (name = %@, channel = %@, password = %@, error = %@)", &v14, 0x2Au);
  }

  v13 = tethering_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C659C(v6, v7, v13);
  }

  (*(*(a1 + 72) + 16))();
}

void sub_1000C5E24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C5E60(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "realityDevice: %{BOOL}d, manateeUnavailable: %{BOOL}d", v3, 0xEu);
}

void sub_1000C5EF0(void *a1)
{
  v2 = +[NSDate date];
  [a1 timeIntervalSinceDate:v2];
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000C5FA0(void *a1)
{
  v1 = [a1 UUIDString];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C602C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C6068()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C60A4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C60E0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6150()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C618C(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000C6204(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(*a2 + 120);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No handler for retrieve timeout (identifier = %@, handlers = %@)", &v5, 0x16u);
}

void sub_1000C6298()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C62D4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C6310()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C634C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C6388()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C63C4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C6400()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C643C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C6478()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C64B4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C64F0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C652C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C659C(uint64_t a1, void *a2, NSObject *a3)
{
  if (a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = 138412802;
  v6 = v4;
  v7 = 2112;
  v8 = a2;
  v9 = 2048;
  v10 = [a2 length];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Returning credentials = %@, with data = %@, length = %ld", &v5, 0x20u);
}

void sub_1000C6668()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C66D8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6748()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C67B8(void *a1, uint64_t *a2)
{
  v3 = [a1 UUIDString];
  v4 = *a2;
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000C6860()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C68D0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6940()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C69B0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6BA4(id a1)
{
  v1 = objc_alloc_init(SDProximityController);
  v2 = qword_100989BF0;
  qword_100989BF0 = v1;
}

void sub_1000C8A88(id a1)
{
  v1 = os_log_create("com.apple.sharing", "ProximityController");
  v2 = qword_100989BF8;
  qword_100989BF8 = v1;
}

uint64_t SDUnlockResetReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
        break;
      }

      if (v13 == 3)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v39 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v32;
        }

LABEL_63:
        v36 = 16;
LABEL_64:
        *(a1 + v36) = v20;
        goto LABEL_65;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v41 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v41 & 0x7F) << v24;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

LABEL_59:
      v36 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
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

LABEL_55:
      v36 = 20;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000CAEE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) transferIdentifierToTransfer];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 updatedTransfer:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_1000CB2D4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB388;
  block[3] = &unk_1008CF8F0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = a2;
  v7 = v5;
  dispatch_async(v4, block);
}

void sub_1000CB39C(uint64_t a1, char a2, char a3, char a4)
{
  v8 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB468;
  block[3] = &unk_1008CF968;
  v12 = a2;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v9;
  v13 = a3;
  v14 = a4;
  dispatch_async(v8, block);
}

void sub_1000CB468(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 49);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v2)
    {
      [v3 setTransferState:7 forTransfer:v4 shouldNotify:1];
      v5 = dispatch_time(0, 5000000000);
      v6 = [*(a1 + 32) dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000CB5B0;
      block[3] = &unk_1008CF940;
      v7 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v12 = v7;
      v13 = *(a1 + 50);
      dispatch_after(v5, v6, block);
    }

    else
    {
      v10 = *(a1 + 50);

      [v3 setTransferState:8 forTransfer:v4 shouldNotify:1 shouldCleanup:v10];
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    [v8 handlerFailedForTransfer:v9];
  }
}

void sub_1000CC120(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [NSString stringWithFormat:@"%@/%@", v11, v7];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
    [v10 incrementCount];
  }

  else
  {
    v10 = [[SFAirDropTransferItem alloc] initWithType:v11 subtype:v7 isFile:a4];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];
  }
}

void sub_1000CC458()
{
  sub_100021E7C();
  v1 = [v0 objectForKeyedSubscript:kSFOperationErrorKey];
  v2 = [v1 localizedDescription];
  sub_10000883C();
  sub_100035D48();
  sub_1000088E8(&_mh_execute_header, v3, v4, "Error event %@ for recordID %@", v5, v6, v7, v8, v9);
}

void sub_1000CC618()
{
  sub_100021E7C();
  v1 = [v0 identifier];
  sub_10000883C();
  sub_100035D48();
  sub_1000088E8(&_mh_execute_header, v2, v3, "No handler for transfer with id %@, ignore action triggered event for action %@", v4, v5, v6, v7, v8);
}

void sub_1000CC6A8(uint64_t a1, void *a2)
{
  v8 = [a2 identifier];
  sub_1000088E8(&_mh_execute_header, v2, v3, "Handler %@ failed for transfer with id %@", v4, v5, v6, v7, 2u);
}

void sub_1000CC74C()
{
  sub_100021E7C();
  v1 = [v0 identifier];
  v8 = SFAirDropTransferFailureReasonToString();
  sub_1000088E8(&_mh_execute_header, v2, v3, "Transfer with id %@ failed with reason %@", v4, v5, v6, v7, 2u);
}

void sub_1000CC7FC()
{
  sub_100021E7C();
  v2 = v1;
  [v1 transferState];
  v3 = SFAirDropTransferStateToString();
  v4 = SFAirDropTransferStateToString();
  v5 = [v2 identifier];
  v8 = 138412802;
  v9 = v3;
  sub_100035D48();
  v10 = v6;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Set transfer state %@ -> %@ for transfer with id %@", &v8, 0x20u);
}

void sub_1000CC940(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  v2 = [v1 enableContinuity];

  if (v2)
  {
    v3 = objc_alloc_init(SDActivityAdvertiser);
    v4 = qword_100989C08;
    qword_100989C08 = v3;
  }
}

void sub_1000CD428(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000CD4B0;
  v2[3] = &unk_1008CFA60;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateRemoteObjectProxiesUsingBlock:v2];
}

void sub_1000CE0CC(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) invalidateGoodbyeTimer];
  v2 = handoff_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CFAF0(v1);
  }

  v3 = [NSTimer scheduledTimerWithTimeInterval:"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:" target:*(*v1 + 96) selector:? userInfo:? repeats:?];
  v4 = *(*v1 + 104);
  *(*v1 + 104) = v3;
}

void sub_1000CE518(uint64_t a1, char a2, _BYTE *a3, int a4)
{
  v6 = *(a1 + 40);
  v6[3] = a2;
  v6[1] = *a3;
  v6[2] = a3[1];
  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = SFHexStringForData();
    v10 = [NSData dataWithBytes:*(a1 + 40) + 4 length:10];
    v11 = SFHexStringForData();
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    v16 = 1024;
    v17 = a4;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Encrypted (sharing flags + advertisementPayload): %@ => %@, counter %u", &v12, 0x1Cu);
  }
}

uint64_t sub_1000CEEBC(uint64_t a1)
{
  v2 = handoff_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = SFAdvertisementDescriptionFromPayloadData();
    v5 = *(a1 + 40);
    v6 = SFCompactStringFromCollection();
    *buf = 138412546;
    v35 = v4;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request to advertise %@ with options %@", buf, 0x16u);
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:@"name"];

  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"name"];
    v9 = [v8 componentsSeparatedByString:@"-"];

    if ([v9 count] >= 5)
    {
      v10 = [v9 objectAtIndexedSubscript:5];
      *(*(a1 + 48) + 156) = [v10 intValue];
    }
  }

  v11 = *(a1 + 32);
  v12 = (v11 | *(*(a1 + 48) + 160)) == 0;
  v13 = [v11 isEqual:?];
  v14 = *(a1 + 40);
  v15 = (v14 | *(*(a1 + 48) + 168)) == 0;
  v16 = [v14 isEqual:?];
  if ((v12 | v13) & 1) != 0 && ((v15 | v16))
  {
    v17 = handoff_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Advertisement contents does not differ from current, continuing previous advertising", buf, 2u);
    }

    goto LABEL_15;
  }

  [*(a1 + 48) invalidateGoodbyeTimer];
  *(*(a1 + 48) + 120) = 1;
  v18 = [*(a1 + 32) copy];
  v19 = *(a1 + 48);
  v20 = *(v19 + 160);
  *(v19 + 160) = v18;

  v21 = [*(a1 + 40) copy];
  v22 = *(a1 + 48);
  v23 = *(v22 + 168);
  *(v22 + 168) = v21;

  if (([*(a1 + 48) updateAdvertiser] & 1) == 0)
  {
    v17 = +[SDStatusMonitor sharedMonitor];
    if (![v17 alwaysSendPayload])
    {
LABEL_15:

      return (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v24, v25);
    }

    v26 = *(*(a1 + 48) + 160);

    if (v26)
    {
      v27 = [*(*(a1 + 48) + 144) copy];
      v28 = *(a1 + 48);
      v29 = v28[20];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000CF210;
      v31[3] = &unk_1008CFB20;
      v32 = v27;
      v33 = *(a1 + 32);
      v17 = v27;
      [v28 activityPayloadForAdvertisementPayload:v29 command:0 requestedByDevice:0 withCompletionHandler:v31];

      goto LABEL_15;
    }
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v24, v25);
}

void sub_1000CF210(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[SDActivityPayloadManager sharedPayloadManager];
  [v7 sendActivityPayloadWithAdvertisementData:*(a1 + 32) forAdvertisementPayload:*(a1 + 40) activityIdentifier:v6 activityPayload:v5];
}

void sub_1000CF330(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) appleID];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_1000CF454(uint64_t a1)
{
  v2 = [*(a1 + 32) idsDeviceFromBTIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100108EE8(v2);
    if (v4)
    {
      v8 = v4;
      v5 = +[SDActivityEncryptionManager sharedEncryptionManager];
      v6 = [v8 uniqueID];
      v7 = [v5 cachedDecryptionKeyForDeviceIdentifier:v6];

      if (v7)
      {
        [v8 setValidKey:{objc_msgSend(v7, "isValidKey")}];
        [v8 setKeyCounter:{objc_msgSend(v7, "lastUsedCounter")}];
      }

      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;
  (*(*(a1 + 48) + 16))();
}

void sub_1000CF600(uint64_t a1)
{
  v14 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) allPeerBTIdentifiers];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = [*(*(&v15 + 1) + 8 * v6) UUIDString];
        v9 = [v7 idsDeviceFromBTIdentifier:v8];

        if (v9)
        {
          v10 = sub_100108EE8(v9);
          if (v10)
          {
            v11 = +[SDActivityEncryptionManager sharedEncryptionManager];
            v12 = [v10 uniqueID];
            v13 = [v11 cachedDecryptionKeyForDeviceIdentifier:v12];

            if (v13)
            {
              [v10 setValidKey:{objc_msgSend(v13, "isValidKey")}];
              [v10 setKeyCounter:{objc_msgSend(v13, "lastUsedCounter")}];
            }

            [v14 addObject:v10];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1000CF8EC()
{
  if (qword_100989C20 != -1)
  {
    sub_1000D00E4();
  }

  v1 = qword_100989C18;

  return v1;
}

void sub_1000CF930(id a1)
{
  if (qword_100989C28 != -1)
  {
    sub_1000D00F8();
  }

  v1 = dlsym(qword_100989C30, "UAUserActivityIsForPairedDeviceOptionKey");
  if (v1)
  {
    objc_storeStrong(&qword_100989C18, *v1);
  }

  off_100970760 = sub_1000CF998;
}

void sub_1000CFA78(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "IOPMAssertionCreateWithProperties returned %x", v2, 8u);
}

void sub_1000CFAF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *(*a1 + 96);
  sub_100008870();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000CFBB8()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  sub_100008870();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000CFC4C()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  sub_100008870();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000CFCE0(id *a1, NSObject *a2)
{
  v3 = [*a1 length];
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = 9;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring currentAdvertisementPayload because it is of incorrect size %d, should be %d", v4, 0xEu);
}

void sub_1000CFD80(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Did update state to %s", buf, 0xCu);
}

void sub_1000CFEA4(unint64_t a1, NSObject *a2)
{
  if (a1 > 3)
  {
    v2 = "UnexpectedType";
  }

  else
  {
    v2 = off_1008CFAF8[a1];
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSContinuity didStartAdvertisingOfType: %s", &v3, 0xCu);
}

void sub_1000CFF3C(unint64_t a1, NSObject *a2)
{
  if (a1 > 3)
  {
    v2 = "UnexpectedType";
  }

  else
  {
    v2 = off_1008CFAF8[a1];
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSContinuity didStopAdvertisingOfType: %s", &v3, 0xCu);
}

void sub_1000CFFD4(unint64_t a1, uint64_t a2, os_log_t log)
{
  if (a1 > 3)
  {
    v3 = "UnexpectedType";
  }

  else
  {
    v3 = off_1008CFAF8[a1];
  }

  v4 = 136315394;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "IDSContinuity didStopAdvertisingOfType: %s withError: %@", &v4, 0x16u);
}

void sub_1000D007C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Did fail to start advertising for %s (%@)", buf, 0x16u);
}

void sub_1000D05E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D0600(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (v1 == 1)
  {
    [WeakRetained openCompletedItemsWithFilesApp];
  }

  else
  {
    [WeakRetained saveCompletedItemsToiCloudDrive];
  }
}

void sub_1000D09E8(uint64_t a1)
{
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished opening %@", &v5, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 40) completionHandler];
    v4[2](v4, *(a1 + 49), 0, 1);
  }
}

id sub_1000D0D34()
{
  if (qword_100989C40 != -1)
  {
    sub_1000D0F50();
  }

  v1 = qword_100989C38;

  return v1;
}

void sub_1000D0D78(id a1)
{
  if (qword_100989C48 != -1)
  {
    sub_1000D0F64();
  }

  v1 = dlsym(qword_100989C50, "BRUbiquitousDefaultContainerID");
  if (v1)
  {
    objc_storeStrong(&qword_100989C38, *v1);
  }

  off_100970768 = sub_1000D0DE0;
}

void sub_1000D0E5C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 transfer];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to save files to iCloud Drive for transfer %@ with error: %@", &v6, 0x16u);
}

uint64_t SDAutoUnlockProxyTriggerReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000D20E0(void *a1, NSObject *a2)
{
  v3 = [a1 valueForKeyPath:@"@unionOfObjects.uniqueIDOverride"];
  v4 = SFCompactStringFromCollection();
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "nearbyDevicesChanged %@", &v5, 0xCu);
}

void sub_1000D22E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained airDropStatus:*(a1 + 32) didChange:*(*(a1 + 32) + 16)];
}

void sub_1000D2428(id a1)
{
  v1 = objc_alloc_init(SDAutoUnlockSessionManager);
  v2 = qword_100989C58;
  qword_100989C58 = v1;
}

void sub_1000D2864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_1000D288C(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  v2 = [v1 signedIntoPrimaryiCloudAccount];

  return v2;
}

id sub_1000D28CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained localDeviceController];
  v3 = [v2 faceIDEnabled];

  return v3;
}

id sub_1000D291C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cachedDeviceWiFiState];

  return v2;
}

BOOL sub_1000D2954(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  v2 = [v1 bluetoothEnabled];

  return v2;
}

BOOL sub_1000D2994(id a1)
{
  v1 = +[SDAutoUnlockTransport sharedTransport];
  v2 = [v1 activeDevice];
  v3 = [v2 isNearby];

  return v3;
}

void sub_1000D2DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D2E24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBioLockout];
}

void sub_1000D3060(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 deviceKeyBagUnlocked];

  v4 = auto_unlock_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device unlocked on start up after retry", &v8, 2u);
    }

    v6 = +[NSDate date];
    [*(a1 + 32) setLastUnlockDate:v6];

    v4 = +[NSDate date];
    [*(a1 + 32) setLockStateChangedDate:v4];
  }

  else if (v5)
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = 134217984;
    v9 = [v7 deviceKeyBagState];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### Device not unlocked on start up after retry (state: %ld)", &v8, 0xCu);
  }
}

void sub_1000D3450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D3474()
{
  v0 = auto_unlock_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Buddy setup completed. Checking whether behavior upsell is needed", buf, 2u);
  }

  v1 = +[SDAutoUnlockSessionManager sharedManager];
  v2 = [v1 sessionManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3480;
  block[3] = &unk_1008CDEA0;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_1000D3568(uint64_t a1, int token)
{
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleDisplayStateChanged:state64];
  }
}

void sub_1000D3674(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Added SessionManager observer %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) observerTable];
  [v4 addObject:*(a1 + 32)];
}

void sub_1000D37EC(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed SessionManager observer %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) observerTable];
  [v4 removeObject:*(a1 + 32)];
}

void sub_1000D3964(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observerTable];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling key device locked %@", buf, 0xCu);
          }

          [v8 session:*(a1 + 32) didReceiveKeyDeviceLocked:*(a1 + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1000D3BB0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observerTable];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling enabled device %@", buf, 0xCu);
          }

          [v8 session:*(a1 + 32) didEnableWithDevice:*(a1 + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}
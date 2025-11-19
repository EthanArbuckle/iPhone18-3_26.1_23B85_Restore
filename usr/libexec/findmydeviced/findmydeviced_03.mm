void sub_100190BE4(id a1)
{
  qword_1003147B0 = objc_alloc_init(FMDProtectedContextManager);

  _objc_release_x1();
}

void sub_100190F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100190F78(uint64_t *a1)
{
  v2 = [FMPreferencesUtil stringForKey:a1[4] inDomain:kFMDNotBackedUpPrefDomain];
  if (v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:v2];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10022BEC0(a1 + 4, (a1 + 5), v6);
    }

    v7 = [[FMDProtectedContext alloc] initWithContextKey:a1[4] contextUUID:*(*(a1[5] + 8) + 40)];
    v8 = *(a1[7] + 8);
    obj = *(v8 + 40);
    v9 = [(FMDProtectedContext *)v7 context:&obj];
    objc_storeStrong((v8 + 40), obj);
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1001911DC(uint64_t a1)
{
  [*(a1 + 32) setProtectionClass:*(a1 + 56)];
  [*(a1 + 32) saveContext:*(a1 + 40)];
  v3 = [*(a1 + 32) contextUUID];
  v2 = [v3 UUIDString];
  [FMPreferencesUtil setString:v2 forKey:*(a1 + 48) inDomain:kFMDNotBackedUpPrefDomain];
}

void sub_1001913C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001913E0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [FMDProtectedContext directoryURLForContextKey:*(a1 + 32)];
  v4 = [FMPreferencesUtil stringForKey:*v2 inDomain:kFMDNotBackedUpPrefDomain];
  if (v4)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:v4];
    if ([v5 isEqual:*(a1 + 40)])
    {
      v6 = sub_100002880();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10022BF58((a1 + 32), v6);
      }

      [FMPreferencesUtil removeKey:*(a1 + 32) inDomain:kFMDNotBackedUpPrefDomain];
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) cleanOutCurrentContextDirectoryURL:v3 preservingContextUUID:0 obliterateDirectory:*(a1 + 64)];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trying to delete an outdated protected context %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) cleanOutCurrentContextDirectoryURL:v3 preservingContextUUID:0 obliterateDirectory:*(a1 + 64)];
  }
}

void sub_10019168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001916A4(uint64_t a1)
{
  v2 = [FMDProtectedContext directoryURLForContextKey:*(a1 + 32)];
  [FMPreferencesUtil removeKey:*(a1 + 32) inDomain:kFMDNotBackedUpPrefDomain];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) cleanOutCurrentContextDirectoryURL:v2 preservingContextUUID:0 obliterateDirectory:1];
}

void sub_1001918B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001918D0(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDProtectedContextManager start cleanupblock", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained _startCleaningEmptyFolders])
  {
    [FMPreferencesUtil setBool:1 forKey:@"kFMDProtectedContextCleanedUpEmptyFolders" inDomain:kFMDNotBackedUpPrefDomain];
    [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
    v4 = +[FMXPCNotificationsUtil sharedInstance];
    v5 = [v4 isHandlerRegisteredForDarwinNotification:*(a1 + 32)];

    if (v5)
    {
      v6 = +[FMXPCNotificationsUtil sharedInstance];
      [v6 deregisterHandlerForDarwinNotification:*(a1 + 32)];
    }

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "FMDProtectedContextManager finished cleaning up empty folders";
      v9 = &v11;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "FMDProtectedContextManager failed to clean up empty folders";
      v9 = &v10;
      goto LABEL_10;
    }
  }
}

void sub_100191B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100191BB8(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 lastPathComponent];

    *(*(*(a1 + 32) + 8) + 24) = [WeakRetained cleanupAllContextsForKey:v5];
  }

  else
  {
    *(v2 + 24) = 0;
  }
}

void sub_100191D58(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) _enumeratorForDirectoryURL:?];
  v4 = [v3 allObjects];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_1001920C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t sub_100192238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 == 1)
  {
    v11 = v3;
    v6 = [*(a1 + 40) _enumeratorForDirectoryURL:v3];
    v7 = [v6 allObjects];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v11 lastPathComponent];
      [*(a1 + 32) addObject:v9];
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v11 = v3;
    v6 = [v3 lastPathComponent];
    [*(a1 + 32) addObject:v6];
  }

  v4 = v11;
LABEL_7:

  return _objc_release_x1(v3, v4);
}

BOOL sub_1001923EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not enumerate folder %@ %@", &v8, 0x16u);
    }
  }

  return v4 == 0;
}

void sub_1001925A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001925C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = 0;
  [v4 removeItemAtURL:v3 error:&v8];
  v5 = v8;
  v6 = v5;
  if (!v5)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022BFD4(v3, v7);
    }

    goto LABEL_7;
  }

  if (([v5 fm_isFileNotFoundError] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to delete protected context file %@", buf, 0xCu);
    }

LABEL_7:
  }
}

BOOL sub_100192908(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not enumerate folder %@ %@", &v8, 0x16u);
    }
  }

  return v4 == 0;
}

void sub_100192C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100192C58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v6 = WeakRetained;
  if (v3)
  {
    (*(v3 + 16))();
    WeakRetained = v6;
  }

  v4 = [WeakRetained completion];

  if (v4)
  {
    v5 = [v6 completion];
    v5[2]();
  }
}

void sub_100193A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100193A48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v17 = 138413058;
    v18 = v3;
    v19 = 2048;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v17, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v11 = [v3 httpResponseBody];
    v13 = [WeakRetained registry];
    [v13 updateConfigurations:v11];
    goto LABEL_12;
  }

  v10 = [v3 cancelled];
  v11 = sub_10000BE38();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [v3 fm_logID];
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v17, 0xCu);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [v3 fm_logID];
    v14 = [v3 httpResponseStatus];
    v15 = [v3 httpResponseError];
    v17 = 138412802;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);
  }

LABEL_12:

LABEL_13:
  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }
}

void sub_100194630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100194654(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if ([v7 primary])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100195C6C(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 identifier];
  v4 = [*(a1 + 32) beacons];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v12 updateDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [v5 updateDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v8 > v11)
  {
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v3];
  }
}

void sub_100195ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 channelName];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void sub_100196214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019622C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 primary])
  {
    v6 = [v9 updateDate];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

void sub_100196398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001963B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 audioState] != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  if ([v10 availability] == 1)
  {
    v6 = [v10 muted];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  if ([v10 availability] == 2)
  {
    v8 = 1;
  }

  else if ([v10 availability] == 1)
  {
    v9 = [v10 muted];
    v8 = [v9 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) &= v8;
}

void sub_10019658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001965A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 playingSound];
  if (v6)
  {
    v7 = v6;
    v8 = [v11 playingSound];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v11 playingSound];
      *(*(*(a1 + 32) + 8) + 24) = [v10 BOOLValue];
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_100196874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100196898(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = a2;
  v9 = [v6 audioSafetyStatusForAirPods:v8 knownStatus:v7];
  v10 = [*(a1 + 32) audioSafetyStatusForStereoPair:v8];

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;
  *a4 = *(*(*(a1 + 40) + 8) + 24) > 2uLL;
}

void sub_100196DB4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v4 = [v7 channelName];
    v5 = [v3 containsObject:v4];

    v6 = [NSNumber numberWithBool:v5];
    [v7 setPlayingSound:v6];
  }

  else
  {
    [v7 setPlayingSound:0];
  }
}

void sub_100199B3C(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-deviceName", 0);
  v2 = qword_1003147C8;
  qword_1003147C8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100199D48(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceClass"];
  v2 = qword_1003147D8;
  qword_1003147D8 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100199E1C()
{
  v0 = MGCopyAnswerWithError();
  if (v0 && (v1 = [v0 intValue] - 1, v1 <= 0xA))
  {
    v2 = qword_100258748[v1];
  }

  else
  {
    v2 = 0;
  }

  qword_1003147E8 = v2;
}

uint64_t sub_100199F44(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"UniqueDeviceID"];
  v2 = qword_1003147F8;
  qword_1003147F8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A01C(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductType"];
  v2 = qword_100314808;
  qword_100314808 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A0F4(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductName"];
  v2 = qword_100314818;
  qword_100314818 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A1CC(uint64_t a1)
{
  v2 = +[FMDPreferencesMgr overriddenOSVersion];
  if (!v2)
  {
    v2 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductVersion"];
  }

  v3 = qword_100314828;
  qword_100314828 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10019A2C4(uint64_t a1)
{
  v2 = +[FMDPreferencesMgr overriddenBuildVersion];
  if (!v2)
  {
    v2 = [*(a1 + 32) _stringGestaltQueryForKey:@"BuildVersion"];
  }

  v3 = qword_100314838;
  qword_100314838 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10019A328(uint64_t a1)
{
  qword_100314848 = [*(a1 + 32) _stringGestaltQueryForKey:@"ModelNumber"];

  return _objc_release_x1();
}

uint64_t sub_10019A36C(uint64_t a1)
{
  qword_100314858 = [*(a1 + 32) _stringGestaltQueryForKey:@"RegionCode"];

  return _objc_release_x1();
}

uint64_t sub_10019A450(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceColor"];
  v2 = qword_100314868;
  qword_100314868 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A528(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceEnclosureColor"];
  v2 = qword_100314878;
  qword_100314878 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10019A56C(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"9N7qIucqhr0Cy2/Tk27/hw"];
  v1 = [v3 stringValue];
  v2 = qword_100314888;
  qword_100314888 = v1;
}

void sub_10019A5CC(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"NJsxTSI2WuD+13rxShXX9w"];
  v1 = [v3 stringValue];
  v2 = qword_100314898;
  qword_100314898 = v1;
}

void sub_10019A62C(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"CJcvxERO5v/3IWjDFKZKRw"];
  v1 = [v3 stringValue];
  v2 = qword_1003148A8;
  qword_1003148A8 = v1;
}

id sub_10019A68C(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"0dnM19zBqLw5ZPhIo4GEkg"];
  byte_1003148B8 = result;
  return result;
}

id sub_10019A6B8(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"zxMIgVSILN6S5ee6MZhf+Q"];
  byte_1003148C8 = result;
  return result;
}

uint64_t sub_10019A79C(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"SerialNumber"];
  v2 = qword_1003148D8;
  qword_1003148D8 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A7E0(uint64_t a1)
{
  qword_1003148E8 = [*(a1 + 32) _numberGestaltQueryForKey:@"ChipID"];

  return _objc_release_x1();
}

uint64_t sub_10019A824(uint64_t a1)
{
  qword_1003148F8 = [*(a1 + 32) _numberGestaltQueryForKey:@"UniqueChipID"];

  return _objc_release_x1();
}

uint64_t sub_10019A8FC(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"WifiAddress"];
  v2 = qword_100314908;
  qword_100314908 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10019A9D4(uint64_t a1)
{
  v1 = [*(a1 + 32) _stringGestaltQueryForKey:@"BluetoothAddress"];
  v2 = qword_100314918;
  qword_100314918 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10019AA18(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-currentPasscodeConstraint", 0);
  v2 = qword_100314930;
  qword_100314930 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019AADC(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-isPasscodeSet", 0);
  v2 = qword_100314948;
  qword_100314948 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019ABEC(id a1)
{
  v1 = dispatch_queue_create("SystemConfig-currentPasscodeConstraintStr", 0);
  v2 = qword_100314960;
  qword_100314960 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019ACD4(uint64_t a1)
{
  v3 = [*(a1 + 32) _numberGestaltQueryForKey:@"nhGhVMyvrWYe9U2ltAUImg"];
  v1 = [v3 stringValue];
  v2 = qword_100314970;
  qword_100314970 = v1;
}

id sub_10019AE30(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"DeviceSupportsUltraLowPowerNetworking"];
  byte_100314980 = result;
  return result;
}

void sub_10019BBD8(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = a1[7];
  if (objc_opt_isKindOfClass() & 1) != 0 || (v7 = a1[8], (objc_opt_isKindOfClass()))
  {
    v9 = a1[4];
    v8 = a1[5];
    v10 = [*(*(a1[6] + 8) + 40) arrayByAddingObject:v14];
    v11 = [v8 flattenedArrayFromObject:v5 parentIndices:v10];
    [v9 addObjectsFromArray:v11];
  }

  else
  {
    v12 = a1[4];
    v10 = [*(*(a1[6] + 8) + 40) arrayByAddingObject:v14];
    v11 = [v10 componentsJoinedByString:@"_"];
    v13 = [NSString stringWithFormat:@"%@_%@", v11, v5];
    [v12 addObject:v13];
  }
}

void sub_10019BD10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = a2;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [v5 arrayByAddingObject:v7];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) flattenedArrayFromObject:v6 parentIndices:v10];

  [v8 addObjectsFromArray:v9];
}

void sub_10019C9E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [v4 embeddedAction];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Finished waiting. Will enqueue action %@", &v9, 0x16u);
  }

  v6 = +[ActionManager sharedManager];
  v7 = [*(a1 + 32) embeddedAction];
  v8 = [v6 enqueueAction:v7];
}

void sub_10019F3B8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F460;
  block[3] = &unk_1002D04D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v8 = v3;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10019F460(void *a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v5 = [v2 account];

  if ([v5 unregisterState])
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  else
  {
    [v5 setUnregisterState:1];
    [v5 setOneTimeRemoveAuthToken:a1[4]];
    [v5 setFmipDisableContext:a1[6]];
    v4 = +[FMDServiceProvider activeServiceProvider];
    [v4 removeAccount:v5 completion:a1[5]];
  }
}

void sub_10019F534(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [NSString stringWithFormat:@"FMIP account cannot be removed in ratchet."];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) _errorForCode:9 message:v2];
    (*(v3 + 16))(v3, v4);
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending FMIP state change notification", v7, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kFMIPStateDidChangeNotification, 0, 0, 1u);
}

uint64_t sub_10019F660(uint64_t a1)
{
  v2 = sub_10017DEB4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ratchet Permitted for this context: %lu. Allowing disable FMIP. Permission Granted, performing unregister", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10019F718(uint64_t a1)
{
  v2 = sub_10017DEB4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "We are in a ratchet state %lu. Denying disable FMIP.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10019FA9C(void *a1)
{
  v3 = +[FMDServiceProvider activeServiceProvider];
  v2 = [v3 account];
  [v2 setOneTimeRemoveAuthToken:a1[4]];
  [v3 disableFMIPForPairedDeviceWithUDID:a1[5] account:v2 andCompletion:a1[6]];
}

void sub_10019FDE0(uint64_t a1)
{
  v17 = objc_opt_new();
  v2 = [*(a1 + 32) username];
  [v17 setUsername:v2];

  v3 = [*(a1 + 32) dsid];
  [v17 setDsid:v3];

  v4 = [*(a1 + 32) oneTimeRemoveAuthToken];
  [v17 setOneTimeRemoveAuthToken:v4];

  v5 = +[FMDServiceProvider activeServiceProvider];
  v6 = [v5 account];
  v7 = [*(a1 + 32) serverURL];
  v8 = [v7 host];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [*(a1 + 32) serverURL];
    v11 = [v10 host];
    [v17 setServerHost:v11];
  }

  else
  {
    v10 = [v6 serverHost];
    [v17 setServerHost:v10];
  }

  v12 = [*(a1 + 32) serverURL];
  v13 = [v12 scheme];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [*(a1 + 32) serverURL];
    v16 = [v15 scheme];
    [v17 setServerProtocolScheme:v16];
  }

  else
  {
    v15 = [v6 serverProtocolScheme];
    [v17 setServerProtocolScheme:v15];
  }

  [v5 disableFMIPForPairedDeviceWithUDID:*(a1 + 40) account:v17 andCompletion:*(a1 + 48)];
}

void sub_1001A03E0(uint64_t a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v3 = [v2 account];
  v4 = [v3 accountAddTime];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];

  v6 = [*(a1 + 32) valueForProperty:NRDevicePropertyPairingID];
  v7 = [*(a1 + 32) valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v8 = [NPSDomainAccessor alloc];
  v9 = [v8 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v6 pairingDataStore:v7];
  v10 = [v9 synchronize];
  v11 = [v9 objectForKey:@"LastALCompletionInfo"];
  v12 = [v11 objectForKeyedSubscript:@"LastIdentityTime"];

  if (v12)
  {
    v12 = [v11 objectForKeyedSubscript:@"LastAccountAddTime"];
    v13 = [v5 fm_isEqualToNumber:v12 withPrecision:0.1];
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = v13;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "alCompleted : %d, currentAccountAddTime: %@, alAccountAddTime: %@", v16, 0x1Cu);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v13, 0);
  }
}

void sub_1001A0874(void *a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  [v2 markPairedDeviceWithUdid:a1[4] asMissingUsingToken:a1[5] withCompletion:a1[6]];
}

void sub_1001A1080(uint64_t a1)
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  v7 = [v2 account];

  if (v7)
  {
    v3 = +[FMDServiceProvider activeServiceProvider];
    [v3 registerDeviceWithCause:@"enableActivationLock" force:0];
    [v3 syncFMIPStateToWatch];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kActivationLockAllowedMayHaveChangedNotification, 0, 0, 1u);

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:kFMDErrorDomain code:5 userInfo:0];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1001A17A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A17D4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2)
  {
    v5 = [WeakRetained _errorForCode:3 message:@"User auth failed"];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1001A22BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose((v67 - 160), 8);
  _Block_object_dispose((v67 - 224), 8);
  _Block_object_dispose((v67 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001A233C(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v3 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = v3;
  v4 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v4;
  block[2] = sub_1001A23F0;
  block[3] = &unk_1002D0550;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_async(v2, block);
}

void sub_1001A23F0(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v15) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Populating Headers %i", buf, 8u);
  }

  if (v2)
  {
    v4 = +[NSMutableDictionary dictionary];
    [v4 fm_safelyMapKey:@"X-Apple-Sign1-Error" toObject:*(*(*(a1 + 72) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Apple-Sign5-Error" toObject:*(*(*(a1 + 80) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign1" toObject:*(*(*(a1 + 88) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign2" toObject:*(*(*(a1 + 96) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign5" toObject:*(*(*(a1 + 104) + 8) + 40)];
    [v4 fm_safelyMapKey:@"X-Mme-Sign6" toObject:*(*(*(a1 + 112) + 8) + 40)];
    v5 = [*(a1 + 32) UUIDString];
    [v4 fm_safelyMapKey:@"X-Apple-AL-ID" toObject:v5];

    v6 = [*(a1 + 40) _deviceIdentifiersForSignature];
    v13 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v13];
    v8 = v13;
    v9 = [v7 base64EncodedString];

    if (v8)
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022C630();
      }
    }

    [v4 fm_safelyMapKey:@"X-Apple-AL-Content" toObject:v9];
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Completed all signing %@", buf, 0xCu);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v4, 0);
    }
  }
}

void sub_1001A26C8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "signatureHeadersWithData : Absinth signing returned %@ %@", buf, 0x16u);
  }

  if (v5)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022C698();
    }

    v9 = [v5 code];
    v10 = [v5 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"kFMDUnderlyingErrorCodeKey"];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld,%ld", v9, [v11 integerValue]);
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    if ([v6 count] != 2)
    {
      goto LABEL_8;
    }

    v15 = [v6 objectAtIndexedSubscript:0];
    v10 = [v15 base64EncodedString];

    v16 = [v6 objectAtIndexedSubscript:1];
    v11 = [v16 base64EncodedString];

    objc_storeStrong((*(a1[6] + 8) + 40), v10);
    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Signature header: %@", buf, 0xCu);
    }

    objc_storeStrong((*(a1[7] + 8) + 40), v11);
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SkAuth header: %@", buf, 0xCu);
    }
  }

LABEL_8:
  *(*(a1[8] + 8) + 24) = 1;
  (*(a1[4] + 16))();
}

void sub_1001A2988(void *a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%ld", v7, [v6 code]);
    v9 = 5;
  }

  else
  {
    v10 = [v16 signature];
    v11 = [v10 base64EncodedString];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = [v16 attestation];
    v8 = [v7 base64EncodedString];
    v9 = 7;
  }

  v14 = *(a1[v9] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;

  *(*(a1[8] + 8) + 24) = 1;
  (*(a1[4] + 16))();
}

void sub_1001A2D3C(uint64_t a1, uint64_t a2)
{
  v3 = [FMDGenericAudioAccessory copyAccessory:a2];
  [*(a1 + 32) addObject:v3];
}

void sub_1001A32E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remove completed with error %@.", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1001A3898(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001A3F8C(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serialNumber];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "### setting keys updated on mulder for %@", buf, 0xCu);
  }

  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A40E4;
  block[3] = &unk_1002CD4C8;
  v7 = *(a1 + 32);
  dispatch_after(v4, v5, block);
}

void sub_1001A40E4(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serialNumber];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "### calling updateCompletedFor %@", &v6, 0xCu);
  }

  v4 = [FMDExtExtensionHelper getAccessoryProxyForId:@"com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FMDMagSafeExtension" withDelegate:0];
  v5 = [*(a1 + 32) serialNumber];
  [v4 updateCompletedFor:v5 withCompletion:&stru_1002D0610];
}

void sub_1001A41F0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### update to extension completed %@", &v4, 0xCu);
  }
}

void sub_1001A530C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10017DE2C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022C808(v3);
    }

    v6 = *(a1 + 32);
    v7 = [NSError errorWithDomain:kFMDErrorDomain code:12 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requireDisableLocationWithCompletion finished.", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001A5B60(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = xpc_activity_copy_criteria(v3);
  if (state == 2)
  {
    v6 = objc_alloc_init(FMAlert);
    [v6 setCategory:3];
    v7 = [*(a1 + 32) locateStats];
    [v6 setMsgText:v7];

    [v6 setMsgTitle:@"Daily Locate Report"];
    [v6 setShowMsgInLockScreen:1];
    [v6 setDismissMsgOnUnlock:0];
    [v6 setDismissMsgOnLock:0];
    [v6 setDefaultButtonTitle:@"OK"];
    v8 = +[FMAlertManager sharedInstance];
    [v8 activateAlert:v6];

    v9 = xpc_activity_set_state(v3, 5);
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10022C914(v9, v10);
    }
  }

  else
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10022C88C(v5, state, v6);
    }
  }
}

void sub_1001A5EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A5EC4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 groupValue];
  [v3 doubleValue];
  v5 = v4;

  if (v5 >= *(a1 + 40) && v5 < *(a1 + 48))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = *(a1 + 56) + 24;
    v8 = [v13 statValue];
    v9 = [NSString stringWithFormat:@"%li hours ago: %@", v7, v8];
    v10 = [v6 stringByAppendingString:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1001A679C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sent auth token to paired device : %@", &v4, 0xCu);
  }
}

uint64_t sub_1001A8684(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001A8740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_1001A8ABC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1001A97C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _serialQueue_addTrackedLocationNow:*(a1 + 32)];
  [WeakRetained _serialQueue_purgeOldTrackedLocationsNow];
  v3 = [WeakRetained trackedLocations];
  [WeakRetained _serialQueue_updateTrackedLocationsCache:v3];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A98AC;
  v5[3] = &unk_1002CD478;
  v6 = WeakRetained;
  v7 = *(a1 + 40);
  v4 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1001A98AC(uint64_t a1)
{
  v2 = [*(a1 + 32) locationTracker];
  [v2 didAddNewTrackedLocation:*(a1 + 40)];
}

void sub_1001A9AEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained trackedLocations];
  [v1 removeAllObjects];

  [WeakRetained _serialQueue_deleteTrackedLocationsCache];
  [WeakRetained _serialQueue_scheduleLocationPurgeTimer];
}

void sub_1001A9EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A9EF4(uint64_t a1)
{
  v2 = [*(a1 + 32) trackedLocations];
  v7 = [v2 copy];

  v3 = [v7 lastObject];
  v4 = [v3 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1001AA4D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serialQueue_purgeOldTrackedLocationsNow];
  v1 = [WeakRetained trackedLocations];
  [WeakRetained _serialQueue_updateTrackedLocationsCache:v1];
}

void sub_1001AA540(uint64_t a1)
{
  v2 = [*(a1 + 32) locationPurgeTimer];
  v1 = +[NSRunLoop currentRunLoop];
  [v2 scheduleInRunLoop:v1];
}

void sub_1001AB2C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeUntrackedAssets:*(a1 + 32)];
}

void sub_1001AB3A0(uint64_t a1)
{
  [*(a1 + 32) _removeUntrackedAssets:&__NSArray0__struct];
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() defaultStorageLocation];
  v10 = 0;
  [v2 removeItemAtURL:v4 error:&v10];
  v5 = v10;

  if (v5 && ([v5 fm_isFileNotFoundError] & 1) == 0)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022CFF0(v5);
    }
  }

  v7 = +[NSFileManager defaultManager];
  v8 = *(a1 + 32);
  v9 = [objc_opt_class() deprecatedStorageLocation];
  [v7 removeItemAtURL:v9 error:0];
}

void sub_1001AB9F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained[2] mutableCopy];
  v4 = *(a1 + 32);
  v5 = [v4 url];
  [v3 fm_safeSetObject:v4 forKey:v5];

  v6 = WeakRetained[2];
  WeakRetained[2] = v3;
  v7 = v3;

  v8 = [WeakRetained dataArchiver];
  v9 = [v8 saveDictionary:v7];

  if (v9)
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

void sub_1001ABBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001ABBEC(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = [objc_opt_class() deprecatedStorageLocation];
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() defaultStorageLocation];
    v6 = +[NSFileManager defaultManager];
    [v6 fm_migrateFileFromURL:v3 toURL:v5];

    v7 = [*(a1 + 32) dataArchiver];
    v8 = [NSSet setWithObject:objc_opt_class()];
    v15 = 0;
    v9 = [v7 readDictionaryAndClasses:v8 error:&v15];
    v10 = v15;
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v9;

    if (([v10 fm_isFileNotFoundError] & 1) == 0 && (!*(*(*(a1 + 40) + 8) + 40) || v10))
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10022D084();
      }

      v14 = +[FMDEventLoggerGeneral sharedInstance];
      [v14 sendError:v10 forEventName:@"FMDAssetRegistryFailedReadEventName"];
    }
  }
}

void sub_1001ABF88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serverInteractionController];
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting download of asset %@", &v9, 0xCu);
  }

  v6 = [[FileDownloadAction alloc] initWithAsset:v3 serverInteractionController:v4 assetRegistry:*(a1 + 32)];
  v7 = +[ActionManager sharedManager];
  v8 = [v7 enqueueAction:v6];
}

void sub_1001AC0FC(id a1, OS_xpc_object *a2)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received XPC event com.apple.nsurlsessiond-events", v3, 2u);
  }
}

void sub_1001AD44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AD468(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = sub_10000BE38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022D154();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [a2 bluetoothState] == 4;
  }

  v8 = [*(a1 + 32) btController];
  [v8 invalidate];

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001AD744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001AD780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 btAddressData];
    v6 = [v5 fm_MACAddressString];
    v7 = [v3 name];
    v26 = 138412546;
    v27 = v6;
    v28 = 2112;
    v29[0] = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager FoundHandler - device (%@) with MAC (%@)", &v26, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v3 deviceFlags] & 0x4000) == 0)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager FoundHandler - only BT classic devices are supported, ignoring device", &v26, 2u);
    }

    goto LABEL_17;
  }

  if (([v3 discoveryFlags] & 0x200000) != 0)
  {
    v14 = [FMDAccessoryIdentifier alloc];
    v15 = [v3 btAddressData];
    v16 = [v15 fm_MACAddressString];
    v9 = [v14 initWithAddress:v16];

    v17 = [WeakRetained accessoryRegistry];
    v18 = [v17 accessoryForIdentifier:v9];

    if (v18)
    {
      v19 = [v18 name];
      v20 = [v3 name];
      v21 = [v19 compare:v20];

      if (!v21)
      {
LABEL_16:

        goto LABEL_17;
      }

      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v18 name];
        v24 = [v3 name];
        v26 = 138412546;
        v27 = v23;
        v28 = 2112;
        v29[0] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager deviceNameChanged (%@) => (%@)", &v26, 0x16u);
      }

      v25 = @"BluetoothMagicPairedDeviceNameChangedNotification";
    }

    else
    {
      v25 = @"BluetoothDeviceConnectSuccessNotification";
    }

    [WeakRetained updateNotificationReceived:v3 withName:v25];
    goto LABEL_16;
  }

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v3 btAddressData];
    v11 = [v10 fm_MACAddressString];
    v12 = [v3 connectedServices];
    v13 = [v3 discoveryFlags];
    v26 = 138412802;
    v27 = v11;
    v28 = 1024;
    LODWORD(v29[0]) = v12;
    WORD2(v29[0]) = 2048;
    *(v29 + 6) = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager FoundHandler - unhandled device (%@) connectedServices (%x) discoveryFlags (flags %llx)", &v26, 0x1Cu);
  }

LABEL_17:
}

void sub_1001ADAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceFlags];
  WeakRetained = sub_100002880();
  v6 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 0x4000) != 0)
  {
    if (v6)
    {
      v10 = [v3 name];
      v11 = [v3 btAddressData];
      v12 = [v11 fm_MACAddressString];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager LostHandler - device (%@) with MAC (%@)", &v14, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if ([WeakRetained _cbPoweredOff])
    {
      v13 = sub_10000BE38();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignore notification. Bailing.", &v14, 2u);
      }
    }

    else
    {
      [WeakRetained updateNotificationReceived:v3 withName:@"BluetoothDeviceDisconnectSuccessNotification"];
    }
  }

  else if (v6)
  {
    v7 = [v3 name];
    v8 = [v3 btAddressData];
    v9 = [v8 fm_MACAddressString];
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDExtAccesoryManager LostHandler - only BT classic devices are supported, ignoring device (%@) with MAC (%@)", &v14, 0x16u);
  }
}

void sub_1001ADCF0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10022D1BC();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting BT Discovery", v5, 2u);
  }
}

void sub_1001AE3F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000BE38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022D224(a1, v6, v7);
    }
  }

  else if ([*(a1 + 40) _cbPoweredOff])
  {
    v7 = sub_10000BE38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BT is off. Cannot update accessory list.", buf, 2u);
    }
  }

  else
  {
    v31 = objc_alloc_init(NSMutableDictionary);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[FMDExtAccessory alloc] initWithExtAccessoryInfo:*(*(&v42 + 1) + 8 * i)];
          v14 = +[FMDExtConfigurationRegistry sharedInstance];
          v15 = [(FMDExtAccessory *)v13 accessoryType];
          v16 = [v14 supportsAccessoryType:v15];

          if (v16)
          {
            v17 = [(FMDExtAccessory *)v13 accessoryIdentifier];
            [(FMDExtAccessory *)v13 setExtensionId:*(a1 + 32)];
            [v31 setObject:v13 forKeyedSubscript:v17];
          }

          else
          {
            v17 = sub_10000BE38();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [(FMDExtAccessory *)v13 name];
              v19 = [(FMDExtAccessory *)v13 accessoryType];
              *buf = 138412546;
              v47 = v18;
              v48 = 2112;
              v49 = v19;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "accessory %@ with accessory type %@ not supported", buf, 0x16u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v10);
    }

    v20 = [*(a1 + 40) serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001AE8A4;
    block[3] = &unk_1002D07A0;
    block[4] = *(a1 + 32);
    v21 = v8;
    v22 = *(a1 + 40);
    v38 = v21;
    v39 = v22;
    v23 = v31;
    v40 = v23;
    v41 = *(a1 + 48);
    dispatch_async(v20, block);

    v24 = [*(a1 + 48) allAccessories];
    v25 = [v24 copy];

    v26 = sub_10000BE38();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 48);
      *buf = 138412546;
      v47 = v27;
      v48 = 2112;
      v49 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Check for removed accessories. registry: %@, previouslyPairedAccessories: %@", buf, 0x16u);
    }

    v28 = [*(a1 + 40) serialQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001AEEC4;
    v32[3] = &unk_1002D07A0;
    v33 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v34 = v25;
    v35 = v23;
    v36 = *(a1 + 48);
    v7 = v23;
    v29 = v25;
    dispatch_async(v28, v32);

    v6 = 0;
    v5 = v30;
  }
}

void sub_1001AE8A4(uint64_t a1)
{
  v2 = sub_10000BE38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v60 = v3;
    v61 = 2112;
    v62 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ext: %@, current accessoryList = %@", buf, 0x16u);
  }

  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) accessoriesByExtension];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
    *buf = 138412546;
    v60 = v6;
    v61 = 2112;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ext: %@, stored accessoryList = %@", buf, 0x16u);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        v15 = [*(a1 + 48) accessoriesByExtension];
        v16 = [v15 objectForKeyedSubscript:*(a1 + 32)];
        v17 = [v16 objectForKeyedSubscript:v14];

        v18 = [*(a1 + 56) objectForKeyedSubscript:v14];
        if (v17 && ([v17 accessoryInfoChanged:v18] & 1) == 0)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001AEEAC;
          block[3] = &unk_1002CD478;
          v51 = *(a1 + 64);
          v52 = v17;
          dispatch_async(&_dispatch_main_q, block);
        }

        else
        {
          v19 = sub_10000BE38();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "new accessory added = %@", buf, 0xCu);
          }

          v20 = [*(a1 + 48) accessoriesByExtension];
          v21 = [v20 objectForKeyedSubscript:*(a1 + 32)];

          if (!v21)
          {
            v22 = objc_alloc_init(NSMutableDictionary);
            v23 = [*(a1 + 48) accessoriesByExtension];
            [v23 setObject:v22 forKeyedSubscript:*(a1 + 32)];
          }

          v24 = [*(a1 + 48) accessoriesByExtension];
          v25 = [v24 objectForKeyedSubscript:*(a1 + 32)];
          [v25 setObject:v18 forKeyedSubscript:v14];

          [*(a1 + 48) updateAccessory:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v11);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = [*(a1 + 48) accessoriesByExtension];
  v27 = [v26 objectForKeyedSubscript:*(a1 + 32)];
  v28 = [v27 allKeys];

  v29 = [v28 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v46 + 1) + 8 * j);
        v34 = [*(a1 + 56) objectForKeyedSubscript:v33];

        if (!v34)
        {
          v35 = [*(a1 + 48) accessoriesByExtension];
          v36 = [v35 objectForKeyedSubscript:*(a1 + 32)];
          v37 = [v36 objectForKeyedSubscript:v33];

          v38 = sub_10000BE38();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v37 name];
            *buf = 138412290;
            v60 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "removing accessory = %@", buf, 0xCu);
          }

          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1001AEEB8;
          v43[3] = &unk_1002CD478;
          v44 = *(a1 + 64);
          v45 = v37;
          v40 = v37;
          dispatch_async(&_dispatch_main_q, v43);
          v41 = [*(a1 + 48) accessoriesByExtension];
          v42 = [v41 objectForKeyedSubscript:*(a1 + 32)];
          [v42 removeObjectForKey:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v30);
  }
}

void sub_1001AEEC4(uint64_t a1)
{
  v3 = sub_10000BE38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) extensionsAlreadySynced];
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Check for removed accessories. extensionsAlreadySynced: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) extensionsAlreadySynced];
  v6 = [v5 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) extensionsAlreadySynced];
    [v7 addObject:*(a1 + 40)];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = *(a1 + 48);
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 category] == 3)
        {
          v14 = v13;
          v15 = sub_10000BE38();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Check for removed accessories. extAccessory: %@", buf, 0xCu);
          }

          v16 = [v14 extensionId];
          if (v16 && ([v14 extensionId], v1 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v1, "isEqualToString:", *(a1 + 40)) & 1) == 0))
          {

LABEL_19:
          }

          else
          {
            v17 = *(a1 + 56);
            v18 = [v14 accessoryIdentifier];
            v19 = [v17 objectForKeyedSubscript:v18];

            if (v16)
            {
            }

            if (!v19)
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1001AF1E4;
              block[3] = &unk_1002CD478;
              v21 = *(a1 + 64);
              v22 = v14;
              dispatch_async(&_dispatch_main_q, block);

              v16 = v21;
              goto LABEL_19;
            }
          }

          continue;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v10)
      {
LABEL_23:

        return;
      }
    }
  }
}

void sub_1001AF2A8(uint64_t a1)
{
  v2 = +[FMDExtConfigurationRegistry sharedInstance];
  v3 = [*(a1 + 32) accessoryType];
  v4 = [v2 configForAccessoryType:v3];

  if (v4)
  {
    v5 = sub_10000BE38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 features];
      *buf = 138412290;
      v53 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got config %@", buf, 0xCu);
    }

    v7 = dispatch_group_create();
    v8 = [v4 flavorForFeature:@"style"];
    v9 = [*(a1 + 32) accessoryIdentifier];
    v10 = [v9 stringValue];

    if (v8)
    {
      v11 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"style" flavor:v8];
      if (v11)
      {
        dispatch_group_enter(v7);
        v12 = [v4 infoForFeature:@"style"];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1001AF834;
        v49[3] = &unk_1002D07F0;
        v50 = *(a1 + 32);
        v51 = v7;
        [v11 getStyleForAccessory:v10 info:v12 withCompletion:v49];
      }

      v13 = dispatch_time(0, 60000000000);
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001AF948;
      block[3] = &unk_1002D07A0;
      v44 = *(a1 + 32);
      v45 = v8;
      v46 = v10;
      v15 = v4;
      v16 = *(a1 + 40);
      v47 = v15;
      v48 = v16;
      dispatch_after(v13, v14, block);
    }

    [v4 timeoutForFeature:@"style"];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    if (dispatch_group_wait(v7, v18))
    {
      v19 = sub_10000BE38();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10022D2B0();
      }
    }

    v37 = v10;
    v38 = v7;
    v20 = [v4 infoForFeature:@"sound"];
    v21 = +[NSMutableDictionary dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = v20;
    v22 = [v20 objectForKeyedSubscript:@"channels"];
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v58 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v28 = [[FMDAudioChannelStatus alloc] initWithName:v27 active:1];
          [(FMDAudioChannelStatus *)v28 setAvailability:1];
          [v21 setObject:v28 forKey:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v58 count:16];
      }

      while (v24);
    }

    [*(a1 + 32) setAudioChannelInfo:v21];
    v29 = sub_10017DBC8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*(a1 + 32) playbackChannels];
      v31 = [*(a1 + 32) audioChannelInfo];
      v32 = [*(a1 + 32) name];
      *buf = 138412802;
      v53 = v30;
      v54 = 2112;
      v55 = v31;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "got playback channel  %@  and audioChannelInfo = %@ error for %@", buf, 0x20u);
    }

    v33 = [*(a1 + 40) accessoryRegistry];
    [v33 updateAccessory:*(a1 + 32)];
  }

  else
  {
    v34 = +[FMDExtConfigurationRegistry sharedInstance];
    v35 = [*(a1 + 32) accessoryType];
    [v34 prepareForAccessoryType:v35];
  }
}

void sub_1001AF834(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000BE38();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) name];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "got style %@ for %@ error %@", &v9, 0x20u);
  }

  if (v5 && !v6)
  {
    [*(a1 + 32) setStyle:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001AF948(uint64_t a1)
{
  v2 = sub_10000BE38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Getting style again for %@", buf, 0xCu);
  }

  v4 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"style" flavor:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) infoForFeature:@"style"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AFABC;
  v9[3] = &unk_1002D07F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v10 = v7;
  v11 = v8;
  [v4 getStyleForAccessory:v5 info:v6 withCompletion:v9];
}

void sub_1001AFABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000BE38();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got style %@ with error = %@", &v13, 0x16u);
  }

  if (v5)
  {
    if (!v6)
    {
      v8 = [*(a1 + 32) style];
      v9 = [v5 isEqualToString:v8];

      if ((v9 & 1) == 0)
      {
        v10 = sub_10000BE38();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 32) name];
          v13 = 138412546;
          v14 = v11;
          v15 = 2112;
          v16 = v5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updating Accessory %@ with style %@", &v13, 0x16u);
        }

        [*(a1 + 32) setStyle:v5];
        v12 = [*(a1 + 40) accessoryRegistry];
        [v12 updateAccessory:*(a1 + 32)];
      }
    }
  }
}

void sub_1001AFD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AFD90(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) accessoriesByExtension];
  v3 = [v2 allValues];

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
        v9 = [*(*(&v10 + 1) + 8 * v7) allValues];
        [v8 addObjectsFromArray:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_1001AFFC4(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsUsingBlock:&stru_1002D0830];
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B03A4;
  v3[3] = &unk_1002CD8B0;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void sub_1001B008C(id a1, FMDExtAccessory *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(FMDExtAccessory *)v4 address];
  v6 = [NSData dataWithMACAddressString:v5];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [v7 ownerSession];

    v9 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:5.0];
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(FMDExtAccessory *)v4 address];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDExtAccessoryManager Retrieving baUUID for MAC: %@", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B0254;
    v16 = &unk_1002CFC28;
    v17 = v4;
    v18 = v9;
    v12 = v9;
    [v8 beaconingIdentifierForMACAddress:v6 completion:&v13];
    [v12 wait];
  }
}

void sub_1001B0254(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 UUIDString];
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) address];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDExtAccessoryManager Received baUUID: %@ for %@, %@", &v10, 0x20u);
  }

  if (v3)
  {
    v8 = [*(a1 + 32) baUUID];
    v9 = [v3 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 32) updateWithBeaconingIdentifier:v3];
    }
  }

  [*(a1 + 40) signal];
}

void sub_1001B0B70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNextScheduledJanitorDate:0];
  [WeakRetained expungeAccessoryLocationStore];
  v2 = [[FMDEventLoggerEventScalar alloc] initWithEventName:@"FMDAccessoryLocationStoreJanitor"];
  v3 = +[FMDEventLogger sharedLogger];
  v4 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 logEvent:v2 toFacilitiesNamed:v5];
}

id sub_1001B0C74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSMutableDictionary dictionary];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AB24;
  v16 = sub_100002B5C;
  v17 = 0;
  v3 = [WeakRetained serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B0E1C;
  block[3] = &unk_1002CD260;
  block[4] = WeakRetained;
  block[5] = &v12;
  dispatch_sync(v3, block);

  v4 = v13[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B0E68;
  v9[3] = &unk_1002D0880;
  v5 = v2;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_1001B0E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B0E1C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordsByAccessoryIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1001B0E68(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B0EF4;
  v4[3] = &unk_1002D0858;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1001B0EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordName];
  v7 = v4;
  v5 = [v3 description];

  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [*(a1 + 32) addEntriesFromDictionary:v6];
}

void sub_1001B10C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B116C;
  v6[3] = &unk_1002CD8B0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_1001B116C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 1);
  }

  return result;
}

void sub_1001B12BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B12D4(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) expungeRecordsForAccessory:*(a1 + 40) allRecords:0];
  v3 = [*v2 recordsByAccessoryIdentifier];
  v4 = [v2[1] accessoryIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 sortedArrayUsingComparator:&stru_1002D0910];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000AB24;
  v23 = sub_100002B5C;
  v24 = 0;
  v7 = [*v2 canRetrieveLockedRecords];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001B15F8;
  v17[3] = &unk_1002D0938;
  v17[4] = &v19;
  v18 = v7;
  [v6 enumerateObjectsUsingBlock:v17];
  v8 = +[FMDProtectedContextManager sharedManager];
  v9 = [v20[5] recordName];
  v10 = [v8 contextForKey:v9 contextUUID:0 error:0];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = [[FMDLocation alloc] initWithDictionary:v11];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }

  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore: Historical diskLocation %@", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);
}

void sub_1001B155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int64_t sub_1001B1588(id a1, FMDAccessoryLocationStoreRecord *a2, FMDAccessoryLocationStoreRecord *a3)
{
  v4 = a3;
  v5 = [(FMDAccessoryLocationStoreRecord *)a2 creationDate];
  v6 = [(FMDAccessoryLocationStoreRecord *)v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_1001B15F8(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v8 = v7;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    if ((v10 = v7, [v7 protection] == 1) && (*(a1 + 40) & 1) != 0 || (v7 = objc_msgSend(v10, "protection"), v8 = v10, !v7))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v8 = v10;
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;

  return _objc_release_x1(v7, v8);
}

void sub_1001B1740(uint64_t a1)
{
  [*(a1 + 32) clearAllRecords];
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() defaultStorageLocation];
  v7 = 0;
  [v2 removeItemAtURL:v4 error:&v7];
  v5 = v7;

  if (v5 && ([v5 fm_isFileNotFoundError] & 1) == 0)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022D318(v5, v6);
    }
  }

  [*(a1 + 32) setRecordsByAccessoryIdentifier:&__NSDictionary0__struct];
  [*(a1 + 32) removeOrphanedLocationFiles];
  [*(a1 + 32) scheduleJanitor:0];
}

void sub_1001B18EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001B1910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore expunging all accessory locations %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B1A54;
  v7[3] = &unk_1002CD288;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void sub_1001B1A54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B1AE8;
  v4[3] = &unk_1002D00D0;
  v4[4] = WeakRetained;
  [v3 enumerateObjectsUsingBlock:v4];
  [WeakRetained removeOrphanedLocationFiles];
}

void sub_1001B1D38(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B1DC4;
  v3[3] = &unk_1002D0858;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void sub_1001B1DC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordName];
  [v2 addObject:v3];
}

void sub_1001B1E1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022D3B4();
    }

    v5 = +[FMDProtectedContextManager sharedManager];
    [v5 cleanupAllContextsForKey:v3];
  }
}

void sub_1001B2098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B20D4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained saveLocation:v5 forAccessory:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_1001B2498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained accessoryRegistry];
  v4 = [*(a1 + 32) accessoryIdentifier];
  v5 = [v3 accessoryForIdentifier:v4];

  if (v5)
  {
    v19 = [WeakRetained saveLocationToDisk:*(a1 + 40) accessory:*(a1 + 32) protection:0];
    v6 = [WeakRetained saveLocationToDisk:*(a1 + 40) accessory:*(a1 + 32) protection:1];
    v7 = [WeakRetained recordsByAccessoryIdentifier];
    v8 = [v7 mutableCopy];

    v9 = [WeakRetained recordsByAccessoryIdentifier];
    v10 = [*(a1 + 32) accessoryIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_opt_new();
    }

    v17 = v14;

    [v17 addObject:v19];
    [v17 addObject:v6];
    v18 = [*(a1 + 32) accessoryIdentifier];
    [v8 setObject:v17 forKeyedSubscript:v18];

    [WeakRetained setRecordsByAccessoryIdentifier:v8];
    [WeakRetained expungeRecordsForAccessory:*(a1 + 32) allRecords:0];
  }

  else
  {
    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to save location to disk: The accessory is no longer paired. %@", buf, 0xCu);
    }
  }
}

void sub_1001B2F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

int64_t sub_1001B2FC8(id a1, FMDAccessoryLocationStoreRecord *a2, FMDAccessoryLocationStoreRecord *a3)
{
  v4 = a3;
  v5 = [(FMDAccessoryLocationStoreRecord *)a2 creationDate];
  v6 = [(FMDAccessoryLocationStoreRecord *)v4 creationDate];

  v7 = [v5 compare:v6];
  v8 = -1;
  if (v7 != 1)
  {
    v8 = v7;
  }

  if (v7 == -1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void sub_1001B304C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 88))
  {
    goto LABEL_9;
  }

  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 protection]);
  v6 = [v5 stringValue];

  v7 = [*(*(*(a1 + 32) + 8) + 40) valueForKey:v6];
  v8 = [v7 unsignedIntegerValue];

  v9 = v8 + 1;
  v10 = *(a1 + 56);
  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = [NSNumber numberWithUnsignedInteger:v9];
  [v11 setObject:v12 forKey:v6];

  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 67109120;
    LODWORD(v31) = v9 <= v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore Applying max locate rule - valid : %i", &v30, 8u);
  }

  if (v9 > v10)
  {

LABEL_9:
    v15 = 0;
LABEL_10:
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 56);
      v30 = 134217984;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Accessory location is expired or beyond maximum (%lu), deleting it.", &v30, 0xCu);
    }

    v18 = +[FMDProtectedContextManager sharedManager];
    v19 = [v4 recordName];
    v20 = [v4 contextUUID];
    [v18 cleanupContextsForKey:v19 contextUUID:v20 obliterate:0];

    goto LABEL_13;
  }

  if (![v4 protection])
  {
    v14 = 64;
    goto LABEL_16;
  }

  if ([v4 protection] == 1)
  {
    v14 = 80;
LABEL_16:
    v21 = [v4 creationDate];
    v15 = [v21 dateByAddingTimeInterval:*(a1 + v14)];

    [v15 timeIntervalSinceReferenceDate];
    v23 = *(a1 + 72) < v22;
    goto LABEL_18;
  }

  v15 = 0;
  v23 = 1;
LABEL_18:
  v24 = sub_100002880();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 67109120;
    LODWORD(v31) = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore Applying time expiry - valid : %i", &v30, 8u);
  }

  if (!v23)
  {
    goto LABEL_10;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  v25 = *(*(a1 + 48) + 8);
  v26 = *(v25 + 40);
  if (v26)
  {
    [v26 timeIntervalSinceReferenceDate];
    v28 = v27;
    [v15 timeIntervalSinceReferenceDate];
    if (v28 <= v29)
    {
      goto LABEL_14;
    }

    v25 = *(*(a1 + 48) + 8);
  }

  v15 = v15;
  v18 = *(v25 + 40);
  *(v25 + 40) = v15;
LABEL_13:

LABEL_14:
}

void sub_1001B3468(id a1, FMDAccessoryLocationStoreRecord *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v7 = +[FMDProtectedContextManager sharedManager];
  v5 = [(FMDAccessoryLocationStoreRecord *)v4 recordName];
  v6 = [(FMDAccessoryLocationStoreRecord *)v4 contextUUID];

  [v7 cleanupContextsForKey:v5 contextUUID:v6 obliterate:1];
}

void sub_1001B35D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained dataArchiver];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  v11 = 0;
  v5 = [v2 readDictionaryAndClasses:v4 error:&v11];
  v6 = v11;
  v7 = &__NSDictionary0__struct;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if (v6 && ([v6 fm_isFileNotFoundError] & 1) == 0)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022D41C();
    }

    v10 = +[FMDEventLoggerGeneral sharedInstance];
    [v10 sendError:v6 forEventName:@"FMDAccessoryLocationStoreFailedReadEventName"];
  }

  [WeakRetained setRecordsByAccessoryIdentifier:v8];
}

void sub_1001B3A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained expungeRecordsForAccessory:*(a1 + 32) allRecords:1];
}

void sub_1001B4160(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _logEvent:*(a1 + 32)];
}

void sub_1001B448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B44A4(uint64_t a1)
{
  v5 = [*(a1 + 32) logs];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001B4730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained setLogs:?];
  }

  else
  {
    v4 = +[NSMutableArray array];
    [v3 setLogs:v4];
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 logs];
    v7 = [v6 count];
    v8 = [v3 cachedLogFileURL];
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found existing logs %ld %@", &v9, 0x16u);
  }
}

void sub_1001B4958(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003149A0;
  qword_1003149A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001B4AFC(id a1)
{
  v1 = +[FMSystemInfo sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    byte_1003149B0 = [v3 fileExistsAtPath:@"/tmp/deviceIdentityPrefs/prefs.plist"];
  }
}

void sub_1001B50F8(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = xpc_activity_copy_criteria(v3);
  if (state == 2)
  {
    [*(a1 + 32) performWork];
    v6 = xpc_activity_set_state(v3, 5);
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) name];
      v12 = 138412546;
      v13 = v8;
      v14 = 1024;
      LODWORD(v15) = v6;
      v9 = "FMDXPCJanitor XPC activity triggered. Updating to done so that it can be cleaned. success : %@ : %d";
      v10 = v7;
      v11 = 18;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) name];
      v12 = 138412802;
      v13 = v8;
      v14 = 2048;
      v15 = state;
      v16 = 2048;
      v17 = v5;
      v9 = "FMDXPCJanitor XPC activity XPC activity %@ changed to state %ld with criteria %p";
      v10 = v7;
      v11 = 32;
      goto LABEL_6;
    }
  }
}

void sub_1001B5750(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained configManager];
    v5 = [v4 activeConfig];

    v6 = sub_1000029E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v114 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - starting with config %@", buf, 0xCu);
    }

    if (!v5)
    {
      v7 = sub_1000029E0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - no active policy. Defaulting to proactive", buf, 2u);
      }

      v8 = [v3 configManager];
      v5 = [v8 configForPolicy:kFMDSecureLocationModeBackgroundProactive];
    }

    v9 = [[FMDSecureLocationPublisher alloc] initWithConfiguration:v5];
    [v3 setLocationPublisher:v9];

    v10 = [v3 locationPublisher];
    v112[0] = _NSConcreteStackBlock;
    v112[1] = 3221225472;
    v112[2] = sub_1001B6314;
    v112[3] = &unk_1002CD4C8;
    v112[4] = v3;
    [v10 publishCriteriaMetBlock:v112];

    v11 = [v3 locationPublisher];
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_1001B6398;
    v111[3] = &unk_1002D0AE0;
    v111[4] = v3;
    [v11 startPublisherWithBlock:v111];

    v12 = [v5 policyName];
    v13 = kFMDSecureLocationModeProactive;
    v14 = [v12 caseInsensitiveCompare:kFMDSecureLocationModeProactive];

    if (v14)
    {
      v15 = [v5 policyName];
      v16 = [v15 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

      if (v16)
      {
        v17 = [v5 policyName];
        v18 = [v17 caseInsensitiveCompare:kFMDSecureLocationModeLive];

        if (v18)
        {
          v19 = [v5 policyName];
          v20 = [v19 caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow];

          if (!v20)
          {
            v101 = [a1[4] _createLocationManager];
            [v3 setShallowLocationManager:v101];

            v102 = a1[4];
            v103 = [v3 shallowLocationManager];
            [v103 setDelegate:v102];

            v104 = a1[4];
            v105 = [v5 desiredAccuracy];
            [v104 _clLocationAccuracyFromConfigValue:v105];
            v107 = v106;
            v108 = [v3 shallowLocationManager];
            [v108 setDesiredAccuracy:v107];

            v37 = [v3 shallowLocationManager];
            [v37 startUpdatingLocation];
            goto LABEL_25;
          }

          v21 = [v5 policyName];
          v22 = [v21 caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

          if (v22)
          {
            goto LABEL_26;
          }

          v23 = [a1[4] _createLocationManager];
          [v3 setBystanderLocationManager:v23];

          v24 = a1[4];
          v25 = [v3 bystanderLocationManager];
          [v25 setDelegate:v24];

          v26 = kCLLocationAccuracyBystander;
          v27 = [v3 bystanderLocationManager];
          [v27 setDesiredAccuracy:v26];

          v28 = [v3 bystanderLocationManager];
          [v28 startUpdatingLocation];

          v29 = [a1[4] _createLocationManager];
          [v3 setHeartbeatLocationManager:v29];

          v30 = a1[4];
          v31 = [v3 heartbeatLocationManager];
          [v31 setDelegate:v30];

          v32 = a1[4];
          v33 = [v5 desiredAccuracy];
          [v32 _clLocationAccuracyFromConfigValue:v33];
          v35 = v34;
          v36 = [v3 heartbeatLocationManager];
          [v36 setDesiredAccuracy:v35];

          v37 = sub_1000029E0();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v38 = "SecureLocationMonitor: Started location managers for ownerproactive";
LABEL_24:
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
          }
        }

        else
        {
          v72 = [a1[4] _createLocationManager];
          [v3 setLiveLocationManager:v72];

          v73 = a1[4];
          v74 = [v3 liveLocationManager];
          [v74 setDelegate:v73];

          v75 = a1[4];
          v76 = [v5 desiredAccuracy];
          [v75 _clLocationAccuracyFromConfigValue:v76];
          v78 = v77;
          v79 = [v3 liveLocationManager];
          [v79 setDesiredAccuracy:v78];

          v80 = [v3 liveLocationManager];
          [v80 startUpdatingLocation];

          v37 = sub_1000029E0();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v38 = "SecureLocationMonitor: Started live location manager";
            goto LABEL_24;
          }
        }
      }

      else
      {
        v58 = [a1[4] _createLocationManager];
        [v3 setVisitsLocationManager:v58];

        v59 = a1[4];
        v60 = [v3 visitsLocationManager];
        [v60 setDelegate:v59];

        v61 = [v3 visitsLocationManager];
        [v61 startMonitoringVisits];

        v62 = [a1[4] _createLocationManager];
        [v3 setSlcLocationManager:v62];

        v63 = a1[4];
        v64 = [v3 slcLocationManager];
        [v64 setDelegate:v63];

        v65 = [v3 slcLocationManager];
        [v65 startMonitoringSignificantLocationChanges];

        v66 = [a1[4] _createLocationManager];
        [v3 setBystanderLocationManager:v66];

        v67 = a1[4];
        v68 = [v3 bystanderLocationManager];
        [v68 setDelegate:v67];

        v69 = kCLLocationAccuracyBystander;
        v70 = [v3 bystanderLocationManager];
        [v70 setDesiredAccuracy:v69];

        v71 = [v3 bystanderLocationManager];
        [v71 startUpdatingLocation];

        v37 = sub_1000029E0();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v38 = "SecureLocationMonitor: Started background proactive location manager";
          goto LABEL_24;
        }
      }
    }

    else
    {
      v40 = [a1[4] _createLocationManager];
      [v3 setVisitsLocationManager:v40];

      v41 = a1[4];
      v42 = [v3 visitsLocationManager];
      [v42 setDelegate:v41];

      v43 = [v3 visitsLocationManager];
      [v43 startMonitoringVisits];

      v44 = [a1[4] _createLocationManager];
      [v3 setSlcLocationManager:v44];

      v45 = a1[4];
      v46 = [v3 slcLocationManager];
      [v46 setDelegate:v45];

      v47 = [v3 slcLocationManager];
      [v47 startMonitoringSignificantLocationChanges];

      v48 = [a1[4] _createLocationManager];
      [v3 setBystanderLocationManager:v48];

      v49 = a1[4];
      v50 = [v3 bystanderLocationManager];
      [v50 setDelegate:v49];

      v51 = kCLLocationAccuracyBystander;
      v52 = [v3 bystanderLocationManager];
      [v52 setDesiredAccuracy:v51];

      v53 = [v3 bystanderLocationManager];
      [v53 startUpdatingLocation];

      v54 = [a1[4] _createLocationManager];
      [v3 setHeartbeatLocationManager:v54];

      v55 = a1[4];
      v56 = [v3 heartbeatLocationManager];
      [v56 setDelegate:v55];

      v57 = [v3 heartbeatLocationManager];
      [v57 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];

      v37 = sub_1000029E0();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "SecureLocationMonitor: Started proactive location manager";
        goto LABEL_24;
      }
    }

LABEL_25:

LABEL_26:
    v81 = [a1[4] _createLocationManager];
    [v3 setOndemandLocationManager:v81];

    v82 = a1[4];
    v83 = [v3 ondemandLocationManager];
    [v83 setDelegate:v82];

    v84 = a1[4];
    v85 = [v5 desiredAccuracy];
    [v84 _clLocationAccuracyFromConfigValue:v85];
    v87 = v86;

    if (v87 >= kCLLocationAccuracyHundredMeters)
    {
      v87 = kCLLocationAccuracyHundredMeters;
    }

    v88 = [v3 ondemandLocationManager];
    [v88 setDesiredAccuracy:v87];

    v89 = [a1[4] _createLocationManagerForStewie];
    [v3 setStewieLocationManager:v89];

    [a1[4] _scheduleXPCActivity];
    v90 = objc_alloc_init(FMDMotionMonitor);
    [v3 setMotionMonitor:v90];

    v91 = [v3 motionMonitor];
    [v91 startMotionMonitoring];

    [v3 setLocationManagerStarted:1];
    v92 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B645C;
    block[3] = &unk_1002CE250;
    v110 = a1[5];
    dispatch_async(v92, block);

    v93 = [v5 policyName];
    v94 = [v93 caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

    if (v94)
    {
      v95 = [v5 policyName];
      v96 = [v95 caseInsensitiveCompare:v13];

      if (v96)
      {
        v97 = [v5 policyName];
        v98 = [v97 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

        if (v98)
        {
LABEL_35:
          v100 = sub_1000029E0();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor Started Location Managers", buf, 2u);
          }

          goto LABEL_38;
        }

        v99 = 3;
      }

      else
      {
        v99 = 1;
      }
    }

    else
    {
      v99 = 2;
    }

    [FMPreferencesUtil setInteger:v99 forKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
    goto LABEL_35;
  }

  v39 = sub_1000029E0();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: strongSelf is nil, not starting monitors. Calling completion", buf, 2u);
  }

  (*(a1[5] + 2))();
LABEL_38:
}

void sub_1001B6314(uint64_t a1)
{
  v2 = sub_1000029E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - Criteria reached, getting on-demand location.", v4, 2u);
  }

  v3 = [*(a1 + 32) ondemandLocationManager];
  [v3 requestLocation];
}

void sub_1001B6398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - Got location from policy manager %@", &v5, 0xCu);
  }

  [*(a1 + 32) _publishLocation:v3];
}

void sub_1001B6728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setForcePushOndemandlocation:1];
  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext ondemandLocationManager requestLocation and force publish", v4, 2u);
  }

  [*(a1 + 32) requestForcedShallowLocation];
  [*(a1 + 32) publishOnDemandLocation:&stru_1002D0B28];
}

void sub_1001B69D8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_1000029E0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error starting SecureLocationMonitor %@", &v4, 0xCu);
    }
  }
}

void sub_1001B6C4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained visitsLocationManager];

    if (v4)
    {
      v5 = [v3 visitsLocationManager];
      [v5 stopMonitoringVisits];

      [v3 setVisitsLocationManager:0];
    }

    v6 = [v3 slcLocationManager];

    if (v6)
    {
      v7 = [v3 slcLocationManager];
      [v7 stopMonitoringSignificantLocationChanges];

      [v3 setSlcLocationManager:0];
    }

    v8 = [v3 bystanderLocationManager];

    if (v8)
    {
      v9 = [v3 bystanderLocationManager];
      [v9 stopUpdatingLocation];

      [v3 setBystanderLocationManager:0];
    }

    v10 = [v3 heartbeatLocationManager];

    if (v10)
    {
      v11 = [v3 heartbeatLocationManager];
      [v11 stopUpdatingLocation];

      [v3 setHeartbeatLocationManager:0];
    }

    v12 = [v3 ondemandLocationManager];

    if (v12)
    {
      v13 = [v3 ondemandLocationManager];
      [v13 stopUpdatingLocation];

      [v3 setOndemandLocationManager:0];
    }

    v14 = [v3 liveLocationManager];

    if (v14)
    {
      v15 = [v3 liveLocationManager];
      [v15 stopUpdatingLocation];

      [v3 setLiveLocationManager:0];
    }

    v16 = [v3 shallowLocationManager];

    if (v16)
    {
      v17 = [v3 shallowLocationManager];
      [v17 stopUpdatingLocation];

      [v3 setShallowLocationManager:0];
    }

    v18 = [v3 motionMonitor];

    if (v18)
    {
      v19 = [v3 motionMonitor];
      [v19 stopMotionMonitoring];

      [v3 setMotionMonitor:0];
    }

    [v3 setLocationManagerStarted:0];
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B6FC0;
    block[3] = &unk_1002CE250;
    v25 = *(a1 + 32);
    dispatch_async(v20, block);

    [FMPreferencesUtil setInteger:0 forKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
    v21 = sub_1000029E0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - Stopped Location Managers", v23, 2u);
    }
  }

  else
  {
    v22 = sub_1000029E0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - strongSelf is nil, calling completion", v23, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001B7470(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) locationPublishQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7554;
  block[3] = &unk_1002D0B70;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, &location);
  dispatch_async(v2, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_1001B7554(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = sub_1000029E0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      v6 = "SecureLocationMonitor: Sending location to FML to publish %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    v6 = "SecureLocationMonitor: Sending location to searchpartyd to publish %@";
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishLocationInfo:*(a1 + 32) completion:0];
}

void sub_1001B77EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Error publishing location to FML %@", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published location to FML - %@", &v8, 0xCu);
    }

    v4 = +[NSDate date];
    [*(a1 + 40) setLastPublishedTime:v4];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1001B7924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Error publishing location to searchpartyd %@", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published location to searchpartyd - %@", &v8, 0xCu);
    }

    v4 = +[NSDate date];
    [*(a1 + 40) setLastPublishedTime:v4];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1001B7C64(uint64_t a1)
{
  v2 = [*(a1 + 32) locationPublisher];
  v3 = [v2 publishPreviouslyReceivedLocation];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) heartbeatLocationManager];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: don't have a valid lastReceivedLocation. Requesting from heartbeat location manager %@", &v7, 0xCu);
    }

    v6 = [*(a1 + 32) heartbeatLocationManager];
    [v6 requestLocation];
  }
}

uint64_t sub_1001B7FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) ondemandLocationManager];

  if (v2)
  {
    v3 = [*(a1 + 32) lastOnDemandPublishTime];
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = v3;
    v5 = [*(a1 + 32) lastOnDemandPublishTime];
    [v5 timeIntervalSinceNow];
    v7 = -v6;
    v8 = [*(a1 + 32) configManager];
    v9 = [v8 activeConfig];
    [v9 onDemandPublishThreshold];
    v11 = v10;

    if (v11 > v7)
    {
      v12 = sub_1000029E0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v13 = "SecureLocationMonitor: Rejecting ondemand publish request as its within threshold";
        v14 = &v19;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      }
    }

    else
    {
LABEL_6:
      v15 = sub_1000029E0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Requesting ondemand one time location", buf, 2u);
      }

      v16 = [*(a1 + 32) ondemandLocationManager];
      [v16 requestLocation];

      v12 = +[NSDate now];
      [*(a1 + 32) setLastOnDemandPublishTime:v12];
    }
  }

  else
  {
    v12 = sub_1000029E0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v13 = "SecureLocationMonitor: Received ondemand request but location manager not setup";
      v14 = &v18;
      goto LABEL_11;
    }
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40));
}

id sub_1001B8220(uint64_t a1, void *a2)
{
  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Received ondemand location publish request.", v5, 2u);
  }

  return [a2 publishOnDemandLocation:&stru_1002D0C78];
}

void sub_1001B8498(uint64_t a1)
{
  v2 = sub_1000029E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"stewie:";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ Requesting one time location", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) stewieLocationManager];
  [v3 startUpdatingLocation];
}

void sub_1001B8898(id a1, NSError *a2)
{
  v2 = sub_1000029E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"stewie:";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ requested publish", &v3, 0xCu);
  }
}

void sub_1001B95C4(uint64_t a1)
{
  v2 = sub_1000029E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Stopped location monitor since expired", v7, 2u);
  }

  v3 = [*(a1 + 32) configManager];
  v4 = [*(a1 + 32) configManager];
  v5 = [v4 activeConfig];
  v6 = [v5 policyName];
  [v3 policyExpired:v6];
}

void sub_1001B97D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error stopping SecureLocationMonitor %@", &v5, 0xCu);
    }
  }
}

void sub_1001B9C68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: - xpc activity triggered", &v12, 2u);
  }

  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v8 = sub_1000029E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: XPC Activity State Run", &v12, 2u);
    }

    if (!xpc_activity_should_defer(v3))
    {
      v9 = [FMPreferencesUtil BOOLForKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
      if (([*(a1 + 32) isRunning] & 1) != 0 || !v9)
      {
        v10 = sub_1000029E0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor already running", &v12, 2u);
        }

        [*(a1 + 32) _publishHeartbeatIfNeeded];
      }

      else
      {
        [*(a1 + 32) startLocationMonitor:&stru_1002D0BF8];
      }

      v11 = xpc_activity_set_state(v3, 5);
      v6 = sub_1000029E0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        LODWORD(v13) = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Setting state of XPC activity to done. Result %d", &v12, 8u);
      }

      goto LABEL_21;
    }

    if (!xpc_activity_set_state(v3, 3))
    {
      v6 = sub_1000029E0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10022D998(v6);
      }

      goto LABEL_21;
    }
  }

  else if (!state)
  {
    v6 = sub_1000029E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = xpc_activity_copy_criteria(v3);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: XPC Activity Checkin with criteria %@", &v12, 0xCu);
    }

LABEL_21:
  }
}

void sub_1001B9F04(id a1, NSError *a2)
{
  if (a2)
  {
    v2 = sub_1000029E0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC Activity - Error Starting SecureLocationMonitor", v3, 2u);
    }
  }
}

void sub_1001BA1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || (v6 = *(a1 + 32)) == 0)
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Error stopping %{public}@ OR NO activeConfig %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BA2F8;
    v8[3] = &unk_1002CD868;
    v9 = v6;
    [v7 startLocationMonitor:v8];
    v4 = v9;
  }
}

void sub_1001BA2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000029E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Completed Restarting Location Monitor with new config  %{public}@. Error %{public}@.", &v6, 0x16u);
  }
}

void sub_1001BA3C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Completed Restarting Location Monitor with new config. Error %{public}@", &v4, 0xCu);
  }
}

void sub_1001BA5D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Completed starting Location Monitor with extended config. Error %@", &v4, 0xCu);
  }
}

void sub_1001BA684(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published one time on extension of proactive. Error %@", &v4, 0xCu);
  }
}

void sub_1001BA844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained publishOneTimeShallowLocation:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1001BAE6C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: completed ondemand publish request. Error %@", &v4, 0xCu);
  }
}

void sub_1001BAF18(id a1)
{
  v1 = objc_alloc_init(FMDServerConfig);
  v2 = qword_1003149C0;
  qword_1003149C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001BB770(uint64_t a1)
{
  v2 = [*(a1 + 32) dataArchiver];
  v3 = [NSSet setWithObjects:objc_opt_class(), 0];
  v11 = 0;
  v4 = [v2 readDictionaryAndClasses:v3 error:&v11];
  v5 = v11;

  if (v5)
  {
    v6 = sub_1000029E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022D9F0();
    }

    v7 = [*(a1 + 32) configForPolicy:kFMDSecureLocationModeBackgroundProactive];
    v8 = *(a1 + 32);
  }

  else
  {
    v7 = [*(a1 + 32) _readConfigFromDictionary:v4];
    v9 = sub_1000029E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = @"SecureLocationConfig";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Read config from file %@", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    if (!v7)
    {
      v10 = [v8 configForPolicy:kFMDSecureLocationModeBackgroundProactive];
      [*(a1 + 32) setActiveConfig:v10];

      goto LABEL_9;
    }
  }

  [v8 setActiveConfig:v7];
LABEL_9:
}

void sub_1001BBA08(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictionaryFromConfigData:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) dataArchiver];
    v4 = [v3 saveDictionary:v2];

    v5 = sub_1000029E0();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10022DA6C();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"SecureLocationConfig";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Archived config data successfully", &v7, 0xCu);
    }
  }

  else
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022DAE8();
    }
  }
}

void sub_1001BBC90(uint64_t a1)
{
  v2 = [*(a1 + 32) _parseConfigFile:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) setActiveConfig:v2];
    v3 = [*(a1 + 32) delegate];

    if (v3)
    {
      v4 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BBE18;
      block[3] = &unk_1002CD4C8;
      block[4] = *(a1 + 32);
      dispatch_async(v4, block);
    }

    [*(a1 + 32) _archiveConfigFile:*(a1 + 40)];
    v5 = sub_1000029E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) activeConfig];
      *buf = 138412546;
      v9 = @"SecureLocationConfig";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting active config as %@", buf, 0x16u);
    }
  }
}

void sub_1001BBE18(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) activeConfig];
  [v3 activeConfigChanged:v2];
}

void sub_1001BC8D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) mode];
  v3 = [WeakRetained configForPolicy:v2];

  v4 = +[NSDate date];
  [v3 expirationInterval];
  v5 = [v4 dateByAddingTimeInterval:?];

  v6 = [WeakRetained policyExpirationTimes];
  v7 = [*(a1 + 32) mode];
  [v6 setObject:v5 forKey:v7];

  [WeakRetained _addContext:*(a1 + 32) withExpiration:v5];
  v8 = [*(a1 + 32) mode];
  [WeakRetained _policyRequested:v8];
}

void sub_1001BCF84(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained activeConfig];
  v4 = [v3 policyName];

  if ([a1[4] stopMonitoringActivePolicy])
  {
    v5 = sub_1000029E0();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138412546;
        *&v25[4] = @"SecureLocationConfig";
        *&v25[12] = 2114;
        *&v25[14] = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Removing active policy: %{public}@", v25, 0x16u);
      }

      v7 = [WeakRetained activePolicies];
      [v7 removeObjectForKey:v4];

      v8 = [WeakRetained policyExpirationTimes];
      [v8 removeObjectForKey:v4];

      [WeakRetained policyExpired:v4];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10022DC64();
      }

      v17 = [WeakRetained delegate];
      v18 = v17;
      if (v17)
      {
        [v17 activeConfigChanged:0];
      }
    }

    goto LABEL_24;
  }

  v9 = [a1[5] _removeContext:a1[4]];
  v10 = [WeakRetained policyExpirationTimes];
  v11 = [a1[4] mode];
  if (v9)
  {
    [v10 setObject:v9 forKey:v11];

    v12 = sub_1000029E0();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = [a1[4] mode];
    *v25 = 138412802;
    *&v25[4] = @"SecureLocationConfig";
    *&v25[12] = 2114;
    *&v25[14] = v13;
    *&v25[22] = 2114;
    v26 = v9;
    v14 = "%@ Updated expirationTime for %{public}@ to %{public}@";
    v15 = v12;
    v16 = 32;
  }

  else
  {
    [v10 removeObjectForKey:v11];

    v12 = sub_1000029E0();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = [a1[4] mode];
    *v25 = 138412546;
    *&v25[4] = @"SecureLocationConfig";
    *&v25[12] = 2114;
    *&v25[14] = v13;
    v14 = "%@ No more subs left for %{public}@";
    v15 = v12;
    v16 = 22;
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v25, v16);

LABEL_17:
  v19 = [WeakRetained activeConfig];

  if (v19)
  {
    v20 = [a1[4] mode];
    v21 = [v20 isEqualToString:v4];

    if (v21)
    {
      v22 = +[NSDate date];
      v23 = v22;
      if (!v9 || [v22 compare:v9] == 1)
      {
        v24 = [a1[4] mode];
        [WeakRetained policyExpired:v24];
      }
    }
  }

LABEL_24:
}

void sub_1001BD70C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = [WeakRetained policyExpirationTimes];
    [v4 removeObjectForKey:*(a1 + 32)];
  }

  v5 = [v3 activeConfig];
  v6 = [v5 policyName];
  LODWORD(v7) = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = sub_1000029E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v37 = @"SecureLocationConfig";
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Active config expired: %{public}@", buf, 0x16u);
    }

    [v3 setActiveConfig:0];
  }

  v10 = +[NSDate date];
  v11 = sub_1000029E0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) policyExpirationTimes];
    *buf = 138412546;
    v37 = @"SecureLocationConfig";
    v38 = 2114;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ policyExpirationTimes %{public}@", buf, 0x16u);
  }

  v29 = v3;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [*(a1 + 40) policyExpirationTimes];
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [*(a1 + 40) policyExpirationTimes];
        v20 = [v19 objectForKey:v18];

        if ([v10 compare:v20] == -1)
        {
          v21 = [*(a1 + 40) configForPolicy:v18];
          v22 = v21;
          if (!v15 || (v23 = [v21 priority], v23 > objc_msgSend(v15, "priority")))
          {
            v7 = sub_1000029E0();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v22 policyName];
              *buf = 138412546;
              v37 = @"SecureLocationConfig";
              v38 = 2114;
              v39 = v24;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Found higher priority policy %{public}@", buf, 0x16u);
            }

            v25 = v22;
            LOBYTE(v7) = 1;
            v15 = v25;
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v26 = sub_1000029E0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = @"SecureLocationConfig";
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ Changing active config to: %{public}@", buf, 0x16u);
    }

    [v29 setActiveConfig:v15];
    v27 = [v29 delegate];
    if (v27)
    {
      v28 = [*(a1 + 40) activeConfig];
      [v27 activeConfigChanged:v28];
    }
  }
}

uint64_t sub_1001BDD20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1003149D8;
  qword_1003149D8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1001BDEFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[FMSystemInfo sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = [WeakRetained loggedEvents];
    v6 = [v5 containsObject:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      if (*(a1 + 40))
      {
        v7 = [WeakRetained loggedEvents];
        [v7 addObject:*(a1 + 32)];

        v8 = sub_100002880();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = *(a1 + 40);
          v17 = 138412546;
          v18 = v9;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ error occured %@", &v17, 0x16u);
        }

        v11 = [(FMDEventLoggerEventError *)[FMDEventLoggerEventDataPeekError alloc] initWithEventName:*(a1 + 32)];
        v12 = [*(a1 + 40) userInfo];
        v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v13)
        {
          v14 = v11;
          v15 = v13;
        }

        else
        {
          v15 = *(a1 + 40);
          v14 = v11;
        }

        [(FMDEventLoggerEventDataPeekError *)v14 setError:v15];
        v16 = +[FMDEventLogger sharedLogger];
        [v16 logEvent:v11];
      }
    }
  }
}

void sub_1001BEF48(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) directoryURL];
    v4 = [v3 path];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Monitored directory changed: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained directoryChanged];
}

void sub_1001BF02C(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) directoryURL];
    v4 = [v3 path];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Monitored directory went away: %@", &v9, 0xCu);
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) directoryURL];
    v7 = [v6 path];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Monitored directory went away: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];
}

void sub_1001BF8B0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10017DBC8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDCommandHandlerLocate discovery started with error %@", &v4, 0xCu);
  }
}

void sub_1001BF95C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [*(a1 + 32) lastPublishedAccuracy];

  if (v7)
  {
    v8 = [*(a1 + 32) lastPublishedAccuracy];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v6 horizontalAccuracy];
    [v11 doubleValue];
    v13 = v10 - v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [v6 horizontalAccuracy];
  [*(a1 + 32) setLastPublishedAccuracy:v14];

  v16 = a4 == 3 || a4 == 5;
  v17 = *(a1 + 40);
  if (v17)
  {
    [v17 timeIntervalSinceNow];
    v19 = v18 + 3.0;
    if (v19 > 0.0)
    {
      v20 = dispatch_time(0, (v19 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BFD78;
      block[3] = &unk_1002D0D40;
      block[4] = *(a1 + 32);
      v40 = v6;
      v47 = v16;
      v21 = *(a1 + 48);
      v45 = a4;
      v46 = v13;
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      *&v25 = v23;
      *(&v25 + 1) = v24;
      *&v26 = v21;
      *(&v26 + 1) = v22;
      v41 = v26;
      v42 = v25;
      v43 = *(a1 + 80);
      v44 = *(a1 + 88);
      dispatch_after(v20, &_dispatch_main_q, block);
    }
  }

  [*(a1 + 32) _sendCurrentLocation:v6 isFinished:v16 forCmd:*(a1 + 48) withReason:a4 andAccuracyChange:v13];
  if (a4 == 5 || a4 == 3)
  {
    [*(a1 + 96) recordLocation:v6 ofType:0];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained stopLocator];
  }

  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    if (!*(a1 + 104))
    {
LABEL_29:
      *(*(*(a1 + 112) + 8) + 24) = 1;
      goto LABEL_30;
    }

    v28 = +[FMDLostModeManager sharedInstance];
    v29 = [v28 lostModeEnabled];

    if (v29)
    {
      v30 = sub_100002880();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Ignoring locate alert as the device is in lost mode...", v38, 2u);
      }

LABEL_21:

      goto LABEL_29;
    }

    v31 = +[FMDSystemConfig sharedInstance];
    v32 = [v31 isPasscodeSet];

    if (!v32)
    {
      goto LABEL_29;
    }

    v33 = +[FMDSystemConfig sharedInstance];
    if ([v33 isLocked])
    {
    }

    else
    {
      v34 = +[FMDSystemConfig sharedInstance];
      v35 = [v34 isLocking];

      if (!v35)
      {
        v37 = sub_100002880();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Displaying locate alert...", v38, 2u);
        }

        v30 = +[FMAlertManager sharedInstance];
        [v30 activateAlert:*(a1 + 104)];
        goto LABEL_21;
      }
    }

    v36 = sub_100002880();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Device is locked. Enqueing the alert to be shown after unlock", v38, 2u);
    }

    [*(a1 + 32) _showAlertAfterUnlock:*(a1 + 104)];
    goto LABEL_29;
  }

LABEL_30:
}

void sub_1001BFD78(uint64_t a1)
{
  [*(a1 + 32) _sendCurrentLocation:*(a1 + 40) isFinished:*(a1 + 112) forCmd:*(a1 + 48) withReason:*(a1 + 96) andAccuracyChange:*(a1 + 104)];
  if ([*(a1 + 56) category] == 3)
  {
    v3 = *(a1 + 64);
    v2 = *(a1 + 72);
    v4 = *(a1 + 80);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BFE5C;
    v6[3] = &unk_1002CD868;
    v7 = v2;
    [v3 stopDiscoveryForAccessory:v7 info:v4 withCompletion:v6];
  }

  else
  {
    v5 = *(a1 + 88);

    [v5 stopDiscovery];
  }
}

void sub_1001BFE5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "discovery for %@ ended with error %@", &v6, 0x16u);
  }
}

id sub_1001BFF24(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) standardLocator];

  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10022DE6C(v2, v4);
    }

    [*v2 setStandardLocator:0];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 timeIntervalSinceNow];
    if (v6 < -3.0)
    {
      if ([*(a1 + 48) category] == 3)
      {
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        v9 = *(a1 + 72);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1001C0054;
        v11[3] = &unk_1002CD868;
        v12 = v7;
        [v8 stopDiscoveryForAccessory:v12 info:v9 withCompletion:v11];
      }

      else
      {
        [*(a1 + 80) stopDiscovery];
      }
    }
  }

  return [*(a1 + 88) flushLocations];
}

void sub_1001C0054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "discovery for %@ ended with error %@", &v6, 0x16u);
  }
}

id sub_1001C0434(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  v4 = [*(a1 + 32) commandParams];
  v5 = [v4 objectForKeyedSubscript:@"id"];
  [v3 fm_safelyMapKey:@"cmdId" toObject:v5];

  return v3;
}

id sub_1001C04DC(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryIdentifier];

  if (v2)
  {
    v3 = [*(a1 + 40) accessoryRegistry];
    v4 = [*(a1 + 32) accessoryIdentifier];
    v5 = [v3 accessoryForIdentifier:v4];

    v6 = +[ServerDeviceInfo sharedInstance];
    v7 = [*(a1 + 40) account];
    v8 = [v6 locationDeviceInfoForAccount:v7 accessory:v5];
  }

  else
  {
    v5 = +[ServerDeviceInfo sharedInstance];
    v6 = [*(a1 + 40) account];
    v8 = [v5 deviceInfoForAccount:v6];
  }

  return v8;
}

void sub_1001C05F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        (*(v15 + 16))(v15, 1);
      }

      v7 = sub_100002880();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v9 = [v3 fm_logID];
      v16 = 138412546;
      v17 = v9;
      v18 = 2048;
      v19 = [v3 httpResponseStatus];
      v10 = "%@: successful with status %ld";
      v11 = v7;
      v12 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        v16 = 138412290;
        v17 = v9;
        v10 = "%@: Cancelled";
        v11 = v7;
        v12 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
LABEL_14:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v13 = [v3 httpResponseStatus];
      v14 = [v3 httpResponseError];
      v16 = 138412802;
      v17 = v9;
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v16, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

id sub_1001C0BC8(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  [v3 fm_safelyMapKey:@"cmdId" toObject:*(a1 + 32)];

  return v3;
}

id sub_1001C0C3C(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 locationDeviceInfoForAccount:v3];

  return v4;
}

void sub_1001C0CB8(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else if (![(FMDRequest *)v2 cancelled])
    {
      v5 = sub_100002880();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v7 = [(FMDRequest *)v2 fm_logID];
      v13 = 138412546;
      v14 = v7;
      v15 = 2048;
      v16 = [(FMDRequest *)v2 httpResponseStatus];
      v8 = "%@: successful with status %ld";
      v9 = v5;
      v10 = 22;
      goto LABEL_9;
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = sub_100002880();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = [(FMDRequest *)v2 fm_logID];
        v13 = 138412290;
        v14 = v7;
        v8 = "%@: Cancelled";
        v9 = v5;
        v10 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_12:
      }
    }

    else if (v6)
    {
      v7 = [(FMDRequest *)v2 fm_logID];
      v11 = [(FMDRequest *)v2 httpResponseStatus];
      v12 = [(FMDRequest *)v2 httpResponseError];
      v13 = 138412802;
      v14 = v7;
      v15 = 2048;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v13, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

id sub_1001C1528(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  [v3 fm_safelyMapKey:@"cmdId" toObject:*(a1 + 32)];

  return v3;
}

id sub_1001C159C(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryRegistry];
  v3 = [*(a1 + 40) accessoryIdentifier];
  v4 = [v2 accessoryForIdentifier:v3];

  v5 = +[ServerDeviceInfo sharedInstance];
  v6 = [*(a1 + 32) account];
  v7 = [v5 locationDeviceInfoForAccount:v6 accessory:v4];

  return v7;
}

void sub_1001C165C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate got an accessory location %@", &v16, 0xCu);
    }

    v7 = [FMDRequestCurrentLocation alloc];
    v8 = [*(a1 + 32) account];
    v9 = *(a1 + 64);
    [*(a1 + 40) doubleValue];
    v11 = [(FMDRequestCurrentLocation *)v7 initWithAccount:v8 location:v5 finalLocation:a3 reason:v9 accuracyChange:0.0 cacheValidityDuration:v10];

    [(FMDRequest *)v11 setDecorator:*(a1 + 48)];
    [(FMDRequest *)v11 setCompletionHandler:&stru_1002D0DD0];
    v12 = [*(a1 + 32) accessoryRegistry];
    v13 = [v12 accessoryForIdentifier:*(a1 + 56)];

    ct_green_tea_logger_create_static();
    v14 = getCTGreenTeaOsLogHandle();
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Transmitting Location.", &v16, 2u);
    }

    [*(a1 + 32) enqueueRequest:v11 forAccessory:v13];
  }
}

void sub_1001C1828(id a1, FMDRequest *a2)
{
  v2 = a2;
  if (![(FMDRequest *)v2 willRetry])
  {
    v3 = [(FMDRequest *)v2 httpResponseError];
    if (v3 || [(FMDRequest *)v2 httpResponseStatus]< 200 || [(FMDRequest *)v2 httpResponseStatus]> 399)
    {
    }

    else if (![(FMDRequest *)v2 cancelled])
    {
      v5 = sub_100002880();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v7 = [(FMDRequest *)v2 fm_logID];
      v13 = 138412546;
      v14 = v7;
      v15 = 2048;
      v16 = [(FMDRequest *)v2 httpResponseStatus];
      v8 = "%@: successful with status %ld";
      v9 = v5;
      v10 = 22;
      goto LABEL_9;
    }

    v4 = [(FMDRequest *)v2 cancelled];
    v5 = sub_100002880();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = [(FMDRequest *)v2 fm_logID];
        v13 = 138412290;
        v14 = v7;
        v8 = "%@: Cancelled";
        v9 = v5;
        v10 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_12:
      }
    }

    else if (v6)
    {
      v7 = [(FMDRequest *)v2 fm_logID];
      v11 = [(FMDRequest *)v2 httpResponseStatus];
      v12 = [(FMDRequest *)v2 httpResponseError];
      v13 = 138412802;
      v14 = v7;
      v15 = 2048;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v13, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

id sub_1001C1A48(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 standardDeviceContext];

  [v3 fm_safelyMapKey:@"cmdId" toObject:*(a1 + 32)];

  return v3;
}

id sub_1001C1ABC(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 locationDeviceInfoForAccount:v3];

  return v4;
}

void sub_1001C1BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending %ld tracked locations", &v7, 0xCu);
    }

    [*(a1 + 32) sendTrackedLocations:v4 withCurrentLocation:0];
  }

  else
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No tracked locations available. Not sending anything", &v7, 2u);
    }
  }
}

void sub_1001C24D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C24F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v28 = 138413058;
    v29 = v3;
    v30 = 2048;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v28, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v17 = [v3 httpResponseBody];
    v18 = objc_alloc_init(FMDPairingCheckCommandResponseInfo);
    v20 = [v17 objectForKeyedSubscript:@"phoneNumber"];
    [v18 setPhoneNumber:v20];

    v21 = [v17 objectForKeyedSubscript:@"statusCode"];
    [v18 setStatusCode:v21];

    v22 = [v17 objectForKeyedSubscript:@"signature"];
    [v18 setSignature:v22];

    v23 = [v17 objectForKeyedSubscript:@"servernonce"];
    [v18 setServerNonce:v23];

    v24 = [v17 objectForKeyedSubscript:@"lostInfo"];
    [v18 setLostModeInfo:v24];

    v25 = [v17 objectForKeyedSubscript:@"useEraseKeyType"];
    [v18 setUseEraseKeyType:v25];

    v26 = [WeakRetained onCompletionHandler];

    if (v26)
    {
      v27 = [WeakRetained onCompletionHandler];
      (v27)[2](v27, 0, v18);
    }

    goto LABEL_15;
  }

  v10 = [v3 cancelled];
  v11 = sub_10000BE38();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v3 fm_logID];
      v28 = 138412290;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v28, 0xCu);
LABEL_12:
    }
  }

  else if (v12)
  {
    v13 = [v3 fm_logID];
    v14 = [v3 httpResponseStatus];
    v15 = [v3 httpResponseError];
    v28 = 138412802;
    v29 = v13;
    v30 = 2048;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v28, 0x20u);

    goto LABEL_12;
  }

  v16 = [WeakRetained onCompletionHandler];

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = [WeakRetained onCompletionHandler];
  v18 = [v3 httpResponseError];
  (v17)[2](v17, v18, 0);
LABEL_15:

LABEL_16:
  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))();
  }
}

void sub_1001C2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C2C98(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingDictionary];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_1001C2E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C2E38(uint64_t a1)
{
  v5 = [*(a1 + 32) underlyingDictionary];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001C2F80(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingDictionary];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001C308C(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingDictionary];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1001C31E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C31FC(uint64_t a1)
{
  v5 = [*(a1 + 32) underlyingDictionary];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001C348C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001C34B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained replacedExsitingAction:*(a1 + 32)];
  v4 = sub_10017DA30();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [WeakRetained requests];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Replacing existing action: %@ already in queue: %@", &v12, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Executing block add request: %@", &v12, 0xCu);
    }

    v9 = [WeakRetained requests];
    [v9 addObject:*(a1 + 32)];

    v10 = sub_10017DA30();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [WeakRetained requests];
      v12 = 138412546;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ requests in queue - %@", &v12, 0x16u);
    }

    [WeakRetained processRequests];
  }
}

void sub_1001C37E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C3818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isPaused];
  v4 = sub_10017DA30();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ could not cancel request queue paused", &v9, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ executing block for action to be removed - %@", &v9, 0x16u);
    }

    [*(a1 + 32) willCancelAction];
    v7 = [WeakRetained requests];
    [v7 removeObject:*(a1 + 32)];

    v4 = sub_10017DA30();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained requests];
      v9 = 138412546;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ requests remaining - %@", &v9, 0x16u);
    }
  }
}

void sub_1001C3DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C3DE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_10017DA30();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Action with action manager called completion - %@", buf, 0xCu);
  }

  v4 = [WeakRetained requestsOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C3F34;
  v5[3] = &unk_1002CD518;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 addOperationWithBlock:v5];

  objc_destroyWeak(&v6);
}

void sub_1001C3F34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setQueueCount:{objc_msgSend(WeakRetained, "queueCount") - 1}];
  [WeakRetained processRequests];
}

void sub_1001C41E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C420C(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldCancelAction:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = 1;
    if (objc_opt_respondsToSelector())
    {
      [v8 willCancelAction];
    }

    *a4 = 1;
  }

  return _objc_release_x3();
}

void sub_1001C463C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1001C4678(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained didDiscoverDevice];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void sub_1001C46F4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained didLoseDevice];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void sub_1001C4770(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didEndDiscoveryWithError:v3];
}

void sub_1001C4A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeTokens];
  v3 = [v2 containsObject:*(a1 + 32)];

  v4 = [WeakRetained activeTokens];
  [v4 removeObject:*(a1 + 32)];

  if (v3)
  {
    v5 = [*(a1 + 32) tokenDiscoveryEnded];

    if (v5)
    {
      v6 = [*(a1 + 32) tokenDiscoveryEnded];
      v6[2]();
    }
  }

  [WeakRetained updateDiscovery];
}

void sub_1001C4C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeTokens];
  [v2 fm_safeAddObject:*(a1 + 32)];

  [WeakRetained updateDiscovery];
}

void sub_1001C4E24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activeTokens];
  v2 = [v1 copy];

  [v2 enumerateObjectsUsingBlock:&stru_1002D0E88];
  v3 = [WeakRetained activeTokens];
  [v3 removeAllObjects];
}

void sub_1001C4EAC(id a1, FMDBluetoothDiscoveryToken *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  v4 = [(FMDBluetoothDiscoveryToken *)v6 tokenDiscoveryEnded];

  if (v4)
  {
    v5 = [(FMDBluetoothDiscoveryToken *)v6 tokenDiscoveryEnded];
    v5[2]();
  }
}

void sub_1001C5094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanningTimerFired];
}

void sub_1001C51C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeTokens];
  v3 = [v2 count];

  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained activeTokens];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery unterminated tokens %@.", &v6, 0xCu);
    }
  }

  [WeakRetained updateDiscovery];
}

int64_t sub_1001C563C(id a1, FMDBluetoothDiscoveryToken *a2, FMDBluetoothDiscoveryToken *a3)
{
  v4 = a3;
  v5 = [(FMDBluetoothDiscoveryToken *)a2 endDate];
  v6 = [(FMDBluetoothDiscoveryToken *)v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1001C644C(uint64_t a1)
{
  v2 = [NSSet setWithArray:*(a1 + 40)];
  [*(a1 + 32) setNotifyWhenDetachedAccessoryIds:v2];

  [*(a1 + 32) setNotifWhenDetachedListVersion:*(a1 + 48)];
  v3 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [*(a1 + 32) notificationIdbyAccessoryIds];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [*(a1 + 32) notificationIdbyAccessoryIds];
          v13 = [v12 objectForKeyedSubscript:v9];
          [v3 setObject:v13 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) setNotificationIdbyAccessoryIds:v3];
  v14 = [*(a1 + 32) _writeToDisk];
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C668C;
  block[3] = &unk_1002CE250;
  v17 = *(a1 + 56);
  dispatch_async(v15, block);
}

uint64_t sub_1001C668C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1001C6C48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "got new location %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001C7008(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FMDUserNotificationContent);
  [*(a1 + 32) timeIntervalSinceNow];
  v6 = v5;
  v7 = *(a1 + 40);
  v8 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v9 = [*(a1 + 40) performSelector:"accessoryType"];
    v10 = +[FMDExtConfigurationRegistry sharedInstance];
    v11 = [v10 configForAccessoryType:v9];

    [v11 detachNotificaitonsWaitTime];
    v8 = v12;
  }

  v13 = fabs(v6);
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: waitTime %f", buf, 0xCu);
  }

  if (v8 - v13 >= 0.0)
  {
    v15 = v8 - v13;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = sub_100002880();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: remainingWaitTime %f", buf, 0xCu);
  }

  v17 = dispatch_time(0, (v15 * 1000000000.0));
  v18 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C72DC;
  block[3] = &unk_1002D0F78;
  v26 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 40);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  *&v23 = v26;
  *(&v23 + 1) = v19;
  v28 = v23;
  v29 = v22;
  v30 = v4;
  v31 = v3;
  v32 = *(a1 + 72);
  v24 = v3;
  v25 = v4;
  dispatch_after(v17, v18, block);
}

void sub_1001C72DC(id *a1)
{
  v2 = [a1[4] notificationIdbyAccessoryIds];
  v3 = [v2 objectForKeyedSubscript:a1[5]];

  if (v3 && [a1[6] isEqualToString:v3])
  {
    v4 = [a1[7] connectionState];
    v5 = sub_100002880();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: Accessory is connected not posting notificaiton", buf, 2u);
      }

      v7 = [NSMutableDictionary alloc];
      v8 = [a1[4] notificationIdbyAccessoryIds];
      v9 = [v7 initWithDictionary:v8];

      [v9 setObject:0 forKeyedSubscript:a1[5]];
      [a1[4] setNotificationIdbyAccessoryIds:v9];
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: postingNotification", buf, 2u);
      }

      v10 = [@"MAGSAFE_WALLET_DETACH_NOTIFICATION_TITLE" fmd_localizedStringInTable:@"Localizable-MULDER"];
      v11 = [a1[7] name];
      v12 = [NSString stringWithFormat:v10, v11];
      [a1[8] setTitle:v12];

      v13 = [@"MAGSAFE_WALLET_DETACH_NOTIFICATION_MESSAGE_DEFAULT" fmd_localizedStringInTable:@"Localizable-MULDER"];
      [a1[8] setBody:v13];

      [a1[8] setCategoryIdentifier:@"FMD_NOTIFY_WHEN_DETACHED"];
      v14 = [a1[7] deviceInfo];
      v15 = [v14 objectForKeyedSubscript:@"serialNumbers"];
      v16 = [v15 objectForKeyedSubscript:@"systemSerialNumber"];
      [a1[8] setSerialNumber:v16];

      [a1[8] setDeviceId:a1[5]];
      [a1[8] setIdentifier:v3];
      v17 = [a1[8] title];
      [a1[8] setLocationTitle:v17];

      [a1[8] setInterruptionLevel:2];
      v18 = +[FMDRestrictedRegions sharedInstance];
      v19 = [v18 isRestrictedSKU];

      v20 = +[FMDRestrictedRegions sharedInstance];
      v21 = [a1[9] location];
      v22 = [v21 latitude];
      [v22 doubleValue];
      v24 = v23;
      v25 = [a1[9] location];
      v26 = [v25 longitude];
      [v26 doubleValue];
      v28 = [v20 isRestrictedLocationWithLatitude:v24 longitude:v27];

      v29 = sub_100002880();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v38 = a1[9];
        *buf = 138412802;
        v44 = v38;
        v45 = 1024;
        v46 = v19;
        v47 = 1024;
        v48 = v28;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "location = %@ isRestrictRegion = %d isRestrictedLocation = %d", buf, 0x18u);
      }

      if ((a1[9] == 0) | v19 & 1 | v28 & 1)
      {
        v30 = @"MAGSAFE_WALLET_DETACH_NOTIFICATION_MESSAGE_DEFAULT";
      }

      else
      {
        v30 = @"MAGSAFE_WALLET_DETACH_NOTIFICATION_MESSAGE";
      }

      v31 = [(__CFString *)v30 fmd_localizedStringInTable:@"Localizable-MULDER"];
      [a1[8] setLocationMessage:v31];

      v32 = [a1[9] location];
      v33 = [v32 latitude];
      [v33 doubleValue];
      [a1[8] setLatitude:?];

      v34 = [a1[9] location];
      v35 = [v34 longitude];
      [v35 doubleValue];
      [a1[8] setLongitude:?];

      v36 = +[FMDFMIPManager sharedInstance];
      v37 = a1[8];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1001C7810;
      v39[3] = &unk_1002D0F50;
      v39[4] = a1[4];
      v40 = a1[10];
      v41 = a1[5];
      v42 = a1[8];
      [v36 addNotificationRequest:v37 completion:v39];
    }
  }
}

void sub_1001C7810(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [*(a1 + 32) notificationIdbyAccessoryIds];
    v7 = [v4 initWithDictionary:v5];

    v6 = [*(a1 + 56) identifier];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:*(a1 + 48)];

    [*(a1 + 32) setNotificationIdbyAccessoryIds:v7];
  }
}

void sub_1001C7A58(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: removing notificaiton completed with %@", &v4, 0xCu);
  }
}

void sub_1001C86C8(id a1)
{
  v1 = objc_alloc_init(FMDPowerMgr);
  v2 = qword_1003149E0;
  qword_1003149E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001C8B78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to take power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1001C8AD4);
  }

  _Unwind_Resume(a1);
}

void sub_1001C8D88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to release power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1001C8D4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1001C9000(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1001C97D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 responseErrorType] == 257)
  {
    goto LABEL_2;
  }

  if ([v3 willRetry])
  {
    goto LABEL_4;
  }

  if ([v3 cmdStatusCode] != 200)
  {
    goto LABEL_2;
  }

  v4 = [v3 httpResponseStatus];
  v5 = sub_100002880();
  v6 = v5;
  if (v4 != 200)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 fm_logID];
      *buf = 138412546;
      v11 = v8;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error with status %ld. Aborting wipe...", buf, 0x16u);
    }

LABEL_2:
    [*(a1 + 32) _abortWipe];
    goto LABEL_4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10022E294(v3, v6);
  }

  [FMDPreferencesMgr setWipeState:2];
  v7 = +[FMXPCTransactionManager sharedInstance];
  [v7 beginTransaction:@"WipeStarted"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C99C8;
  block[3] = &unk_1002CD4C8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
LABEL_4:
}

void sub_1001C9DDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Could not erase device. Error - %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Erase completed";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_1001CACE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CAD08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v24 = 138413058;
    v25 = v3;
    v26 = 2048;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v24, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v17 = [v3 httpResponseBody];
    v18 = objc_alloc_init(FMDPairingLockRegisterResponseInfo);
    v20 = [v17 objectForKeyedSubscript:@"serialNumber"];
    [v18 setSerialNumber:v20];

    v21 = [v17 objectForKeyedSubscript:@"pairingCheckToken"];
    [v18 setPairingToken:v21];

    v22 = [WeakRetained onCompletionHandler];

    if (v22)
    {
      v23 = [WeakRetained onCompletionHandler];
      (v23)[2](v23, 0, v18);
    }

    goto LABEL_15;
  }

  v10 = [v3 cancelled];
  v11 = sub_10000BE38();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v3 fm_logID];
      v24 = 138412290;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v24, 0xCu);
LABEL_12:
    }
  }

  else if (v12)
  {
    v13 = [v3 fm_logID];
    v14 = [v3 httpResponseStatus];
    v15 = [v3 httpResponseError];
    v24 = 138412802;
    v25 = v13;
    v26 = 2048;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v24, 0x20u);

    goto LABEL_12;
  }

  v16 = [WeakRetained onCompletionHandler];

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = [WeakRetained onCompletionHandler];
  v18 = [v3 httpResponseError];
  (v17)[2](v17, v18, 0);
LABEL_15:

LABEL_16:
  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))();
  }
}

id sub_1001CBF14(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _accountDidChangeFrom:v2 to:v3];
}

void sub_1001CC060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CC468(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022E554(a1);
    }
  }

  else
  {
    [*(a1 + 32) removeAccountPreferences];
    v4 = +[FMDLocalActivationLockInfoManager sharedInstance];
    [v4 clearAllState];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1001CC970(id a1, FMDInternalAccessory *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [AccessoryRegisterAction cleanupContextForAccessory:v4];
  v5 = [(FMDInternalAccessory *)v4 commandContext];

  [v5 cleanupContexts];
}

void sub_1001CD184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get PET info %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    [*(a1 + 32) setUsername:v8];

    v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    [*(a1 + 32) setPet:v9];
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_1001CE020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) apsToken];

  if (!v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained serviceName];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ is not functional as an APS token is not available.", &v6, 0xCu);
    }
  }
}

void sub_1001CE108(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SP Beacon stats changed", v2, 2u);
  }
}

void sub_1001CE484(uint64_t a1)
{
  v2 = [[RegisterAction alloc] initWithReason:0 force:0 provider:*(a1 + 32)];
  v3 = +[ActionManager sharedManager];
  v4 = [v3 enqueueAction:v2];

  v5 = [*(a1 + 32) accessoryRegistry];
  v6 = [v5 allAccessories];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CE578;
  v7[3] = &unk_1002D05F0;
  v7[4] = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v7];
}

void sub_1001CED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CEDAC(uint64_t a1)
{
  v2 = [*(a1 + 32) serverInteractionControllerByAccessory];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = objc_alloc_init(FMDDirectServerChannel);
    v15[0] = v6;
    v7 = objc_alloc_init(FMDCadmiumServerChannel);
    v15[1] = v7;
    v8 = [NSArray arrayWithObjects:v15 count:2];

    v9 = [[FMDServerInteractionController alloc] initWithChannels:v8 delegate:*(a1 + 32)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(a1 + 40) stringValue];
    [*(*(*(a1 + 48) + 8) + 40) setUdid:v12];

    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = [*(a1 + 32) serverInteractionControllerByAccessory];
    [v14 setObject:v13 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_1001CF0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001CF0C8(uint64_t a1)
{
  v2 = [*(a1 + 32) serverInteractionControllerByAccount];
  v3 = [*(a1 + 40) authId];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (!v7)
  {
    v8 = objc_alloc_init(FMDDirectServerChannel);
    v18[0] = v8;
    v9 = objc_alloc_init(FMDCadmiumServerChannel);
    v18[1] = v9;
    v10 = [NSArray arrayWithObjects:v18 count:2];

    v11 = [[FMDServerInteractionController alloc] initWithChannels:v10 delegate:*(a1 + 32)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = [*(a1 + 32) serverInteractionControllerByAccount];
    v16 = [*(a1 + 40) authId];
    [v15 setObject:v14 forKeyedSubscript:v16];

    v7 = *(*(*(a1 + 48) + 8) + 40);
  }

  return [v7 setRequestAccount:*(a1 + 40)];
}

id sub_1001CFA58(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 40)];
}

id sub_1001CFB10(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 40)];
}

void sub_1001CFBC8(uint64_t a1)
{
  v2 = +[FMAlertManager sharedInstance];
  [v2 activateAlert:*(a1 + 32)];
}

void sub_1001D0598(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 assetsForAccessory:v4];
  v5 = [*(a1 + 40) accessoryRegistry];
  [v5 updateAccessory:v4 assets:v6];
}

NSDictionary *__cdecl sub_1001D1330(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_1001D1380(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_1001D2C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending location payload to FML %@", &v7, 0xCu);
    }
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1001D2D64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending location payload to spd %@", &v7, 0xCu);
    }
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1001D2E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending location command to FML %@", &v7, 0xCu);
    }
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1001D2F54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending location commands to spd %@", &v7, 0xCu);
    }
  }

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1001D4A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D4A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) splunkifyObject:a3 eventName:&stru_1002DCE08];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  v12 = v4;
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToString:&stru_1002DCE08])
  {
    v5 = *(*(a1 + 40) + 8);
    v4 = v12;
LABEL_4:
    v7 = v4;
    v8 = *(v5 + 40);
    *(v5 + 40) = v7;
    goto LABEL_6;
  }

  v8 = [v12 stringByAppendingString:{@", "}];
  v9 = [v8 stringByAppendingString:*(*(*(a1 + 40) + 8) + 40)];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_6:
}

void sub_1001D4D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D4D74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) splunkifyObject:a2 eventName:&stru_1002DCE08];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  v11 = v3;
  if (!v5)
  {
    goto LABEL_4;
  }

  if ([v5 isEqualToString:&stru_1002DCE08])
  {
    v4 = *(*(a1 + 40) + 8);
    v3 = v11;
LABEL_4:
    v6 = v3;
    v7 = *(v4 + 40);
    *(v4 + 40) = v6;
    goto LABEL_6;
  }

  v7 = [v11 stringByAppendingString:{@", "}];
  v8 = [v7 stringByAppendingString:*(*(*(a1 + 40) + 8) + 40)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

LABEL_6:
}

void sub_1001D5284(id a1)
{
  v1 = objc_alloc_init(FMDRestrictedRegions);
  v2 = qword_1003149F8;
  qword_1003149F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001D56D4(id a1)
{
  v1 = objc_alloc_init(GEOMapRegion);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [&off_1002E8CF0 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(&off_1002E8CF0);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [v6 objectAtIndexedSubscript:1];
        [v7 doubleValue];
        v9 = v8;

        v10 = [v6 objectAtIndexedSubscript:0];
        [v10 doubleValue];
        v12 = v11;

        v13 = [[GEOLatLng alloc] initWithLatitude:v9 longitude:v12];
        [v1 addVertex:v13];
      }

      v3 = [&off_1002E8CF0 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v14 = qword_100314A08;
  qword_100314A08 = v1;
}

void sub_1001D5C0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPublishingBlock:*(a1 + 32)];
  [WeakRetained setStartedPublishing:1];
}

void sub_1001D5D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCriteriaMetBlock:*(a1 + 32)];
}

void sub_1001D5E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained startedPublishing])
  {
    v3 = *(a1 + 32);
    v4 = [v3 locationInfo];
    [v4 timestamp];
    v5 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v6 = [WeakRetained lastPublishedLocation];
    if ([v3 publishReason]== 2)
    {
      v7 = [WeakRetained lastPublishedVisit];

      if (!v7)
      {
        v31 = sub_1000029E0();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Publishing visit immediately since there is no previous visit", buf, 2u);
        }

        [WeakRetained _publishResultLocation:v3];
        [WeakRetained setLastPublishedVisit:v3];
        goto LABEL_51;
      }

      v8 = [v3 locationInfo];
      [v8 timestamp];
      v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v10 = [WeakRetained lastPublishedVisit];
      v11 = [v10 locationInfo];
      v12 = [v11 timestamp];

      [*&v9 timeIntervalSinceDate:v12];
      v14 = v13;
      v15 = [WeakRetained config];
      [v15 minTimeBetweenVisitPublish];
      v17 = v16;

      if (v14 <= v17)
      {
        v41 = sub_1000029E0();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [WeakRetained config];
          [v42 minTimeBetweenVisitPublish];
          *buf = 134217984;
          v101 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Not publishing visit since it is within min publish limit (%f)", buf, 0xCu);
        }
      }

      else
      {
        [WeakRetained _publishResultLocation:v3];
        [WeakRetained setLastPublishedVisit:v3];
      }

LABEL_50:
LABEL_51:

      goto LABEL_52;
    }

    if (!v6)
    {
      [WeakRetained _persistedLastPublishedTimestamp];
      v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (v9 != 0.0)
      {
        [*&v5 timeIntervalSinceDate:*&v9];
        v33 = v32;
        v34 = [WeakRetained config];
        [v34 minTimeBetweenPublish];
        v36 = v35;

        if (v33 <= v36)
        {
          v88 = sub_1000029E0();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            sub_10022EB84(*&v9, v88);
          }

          [WeakRetained setLastReceivedLocation:v3];
          goto LABEL_50;
        }
      }

      v27 = sub_1000029E0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v101 = v9;
        v102 = 2112;
        v103 = v5;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: New location is the first recorded location or greater than persisted lastPublish. lastPublished %@, new %@. Publishing", buf, 0x16u);
      }

      goto LABEL_26;
    }

    v18 = [v6 locationInfo];
    [v18 timestamp];
    v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    [*&v5 timeIntervalSinceDate:*&v9];
    v20 = v19;
    v21 = +[NSDate now];
    [v21 timeIntervalSinceDate:*&v9];
    v23 = v22;

    v24 = [WeakRetained config];
    [v24 heartbeatPublish];
    v26 = v25;

    if (v23 < v26 || v20 <= 0.0)
    {
      if (-[NSObject publishReason](v3, "publishReason") != 5 || ([WeakRetained config], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "onDemandPublishThreshold"), v39 = v38, v37, v20 < v39) || v20 <= 0.0)
      {
        v44 = [v3 locationInfo];
        v45 = [v44 latitude];
        [v45 doubleValue];
        v47 = v46;

        v48 = [v3 locationInfo];
        v49 = [v48 longitude];
        [v49 doubleValue];
        v51 = v50;

        v52 = [[CLLocation alloc] initWithLatitude:v47 longitude:v51];
        v53 = [v6 locationInfo];
        v54 = [v53 latitude];
        [v54 doubleValue];
        v56 = v55;

        v57 = [v6 locationInfo];
        v58 = [v57 longitude];
        [v58 doubleValue];
        v60 = v59;

        v61 = [[CLLocation alloc] initWithLatitude:v56 longitude:v60];
        [v52 distanceFromLocation:v61];
        v63 = v62;
        v64 = [WeakRetained config];
        [v64 minDistanceBetweenPublish];
        if (v63 >= v65)
        {
          v72 = 1;
        }

        else
        {
          [WeakRetained config];
          v97 = v6;
          v66 = v5;
          v67 = v9;
          v68 = v61;
          v70 = v69 = v52;
          [v70 minDistanceBetweenPublish];
          v72 = v71 == 0.0;

          v52 = v69;
          v61 = v68;
          v9 = v67;
          v5 = v66;
          v6 = v97;
        }

        v73 = sub_1000029E0();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v89 = @"no";
          if (v72)
          {
            v89 = @"yes";
          }

          [WeakRetained config];
          v90 = v98 = v52;
          [v90 minDistanceBetweenPublish];
          *buf = 138412802;
          v101 = v95;
          v102 = 2048;
          v103 = v63;
          v104 = 2048;
          v105 = v91;
          _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "SecureLocationPublisher: meetsDistanceLimits %@ distance %f configLimit %f", buf, 0x20u);

          v52 = v98;
        }

        v74 = [WeakRetained config];
        [v74 minTimeBetweenPublish];
        v76 = v75;

        v77 = sub_1000029E0();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          v92 = @"no";
          if (v20 >= v76)
          {
            v92 = @"yes";
          }

          [WeakRetained config];
          v93 = v99 = v52;
          [v93 minTimeBetweenPublish];
          *buf = 138412802;
          v101 = v96;
          v102 = 2048;
          v103 = v20;
          v104 = 2048;
          v105 = v94;
          _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "SecureLocationPublisher: meetsTimeLimits %@ time %f limit %f", buf, 0x20u);

          v52 = v99;
        }

        if (v20 < v76)
        {
          v72 = 0;
        }

        v78 = sub_1000029E0();
        v79 = v78;
        if (v72)
        {
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v80 = [WeakRetained config];
            [v80 minTimeBetweenPublish];
            v82 = v81;
            [WeakRetained config];
            v84 = v83 = v52;
            [v84 minDistanceBetweenPublish];
            *buf = 134218752;
            v101 = v20;
            v102 = 2048;
            v103 = v82;
            v104 = 2048;
            v105 = v63;
            v106 = 2048;
            v107 = v85;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: new location meets publishing criteria. Time %f Limit %f, Distance %f Limit %f", buf, 0x2Au);

            v52 = v83;
          }

          [WeakRetained _publishResultLocation:v3];
          v86 = [WeakRetained criteriaMetBlock];

          if (v86)
          {
            v87 = [WeakRetained criteriaMetBlock];
            v87[2]();
          }
        }

        else
        {
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            sub_10022EB40(v79);
          }

          [WeakRetained setLastReceivedLocation:*(a1 + 32)];
        }

        goto LABEL_50;
      }

      v27 = sub_1000029E0();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v28 = [WeakRetained config];
      [v28 onDemandPublishThreshold];
      *buf = 134218240;
      v101 = v20;
      v102 = 2048;
      v103 = v40;
      v30 = "SecureLocationPublisher: Publishing ondemand location since time elapsed (%f) greater than ondemand threshold (%f)";
    }

    else
    {
      v27 = sub_1000029E0();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        [WeakRetained _publishResultLocation:v3];
        goto LABEL_50;
      }

      v28 = [WeakRetained config];
      [v28 heartbeatPublish];
      *buf = 134218240;
      v101 = v23;
      v102 = 2048;
      v103 = v29;
      v30 = "SecureLocationPublisher: Publishing location since time elapsed (%f) greater than hearbeat limit (%f)";
    }

    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);

    goto LABEL_26;
  }

  v3 = sub_1000029E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10022EAFC(v3);
  }

LABEL_52:
}

void sub_1001D687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D6894(uint64_t a1)
{
  v2 = [*(a1 + 32) lastReceivedLocation];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  v4 = [*(a1 + 32) lastReceivedLocation];
  v5 = [v4 locationInfo];
  v6 = [v5 timestamp];
  [v6 timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 32) config];
  [v9 stalenessThreshold];
  v11 = v10;

  if (v11 >= v8)
  {
    v18 = *(a1 + 32);
    v19 = [v18 lastReceivedLocation];
    [v18 _publishResultLocation:v19];

    v12 = sub_1000029E0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: publishing lastReceivedLocation", &v20, 2u);
    }

    v17 = 1;
  }

  else
  {
LABEL_3:
    v12 = sub_1000029E0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) lastReceivedLocation];
      v14 = [*(a1 + 32) lastReceivedLocation];
      v15 = [v14 locationInfo];
      v16 = [v15 timestamp];
      v20 = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Can't publish lastReceivedLocation %@, ts: %@", &v20, 0x16u);
    }

    v17 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v17;
}

uint64_t sub_1001D6CFC(uint64_t a1)
{
  v2 = sub_1000029E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecureLocationPublisher: Executing the publish block.", v5, 2u);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_1001D7364(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022EC68(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = [v6 description];
    v15 = @"statusFetchError";
    goto LABEL_23;
  }

  if ([v5 count] <= 1)
  {
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10022EE44(v16);
    }

    v14 = 0;
    v15 = @"ckksStatusAbsent";
    goto LABEL_23;
  }

  v17 = [v5 objectAtIndexedSubscript:1];
  v18 = [v17 objectForKeyedSubscript:@"keystate"];
  if ([v18 isEqualToString:@"ready"])
  {

LABEL_12:
    v22 = [v5 objectAtIndexedSubscript:1];
    v23 = [v22 objectForKeyedSubscript:@"accounttracker"];
    v24 = [NSString stringWithFormat:@"%@", v23];

    LOBYTE(v23) = [v24 containsString:@"deviceToDeviceEncryptionAvailability=(account|device)"];
    v25 = sub_100002880();
    v26 = v25;
    if (v23)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v5 objectAtIndexedSubscript:1];
        v28 = [v27 objectForKeyedSubscript:@"keystate"];
        *buf = 138412290;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "CKKSStatus: good. KeyState: %@", buf, 0xCu);
      }

      v29 = [v5 objectAtIndexedSubscript:1];
      v30 = [v29 objectForKeyedSubscript:@"keystate"];
      v15 = [NSString stringWithFormat:@"good-%@", v30];

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10022EDD8(v24, v26, v31, v32, v33, v34, v35, v36);
      }

      v14 = v24;
      v15 = @"d2dEncUnavailable";
    }

    goto LABEL_23;
  }

  v19 = [v5 objectAtIndexedSubscript:1];
  v20 = [v19 objectForKeyedSubscript:@"keystate"];
  v21 = [v20 isEqualToString:@"readypendingunlock"];

  if (v21)
  {
    goto LABEL_12;
  }

  v37 = sub_100002880();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_10022ECD4(v5, v37);
  }

  v38 = [v5 objectAtIndexedSubscript:1];
  v39 = [v38 objectForKeyedSubscript:@"keystate"];
  v40 = [v5 objectAtIndexedSubscript:1];
  v41 = [v40 objectForKeyedSubscript:@"keyStateError"];
  v14 = [NSString stringWithFormat:@"KeyState: %@. Error: %@", v39, v41];

  v15 = @"badStatus";
LABEL_23:
  (*(*(a1 + 32) + 16))();
}

void sub_1001D78A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D78C4(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022EE88(a2, v4);
    }

    v5 = kFMDErrorDomain;
    v8 = NSUnderlyingErrorKey;
    v6 = [NSError errorWithDomain:@"NSXPCError" code:a2 userInfo:0];
    v9 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    a2 = [NSError errorWithDomain:v5 code:13 userInfo:v7];
  }

  [WeakRetained setConnection:0];
  [WeakRetained _didEndDiscoveryWithError:a2];
}

void sub_1001D9890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D98C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  v10 = 1;
  if (a4 != 3 && a4 != 5)
  {
    v4 = [WeakRetained locator];
    v10 = [v4 locatorRunning] ^ 1;
  }

  if (a4 != 3 && a4 != 5)
  {
  }

  if (v10)
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F1A0(v9);
    }

    v12 = [v9 trackedLocationsStore];
    [v12 recordLocation:v7 ofType:2];

    v13 = [v9 locator];
    [v13 stopLocator];
  }
}

void sub_1001D99BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F23C(WeakRetained);
  }

  [WeakRetained setLocator:0];
  [WeakRetained _updateFallbackRetryTimer];
}

void sub_1001D9FF8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained locateParams];
  v4 = [WeakRetained newLocationManager];
  v5 = [[FMDLocator alloc] initWithLocationManager:v4];
  v6 = [v3 objectForKeyedSubscript:@"desiredAccuracy"];
  [v6 doubleValue];
  [(FMDLocator *)v5 setDesiredAccuracy:?];

  v7 = [v3 objectForKeyedSubscript:@"timeout"];
  [v7 doubleValue];
  [(FMDLocator *)v5 setDuration:?];

  v8 = objc_alloc_init(FMDTrackedLocationPublisher);
  v9 = [v3 objectForKeyedSubscript:@"startThreshold"];
  [(FMDTrackedLocationPublisher *)v8 setStartThreshold:v9];

  v10 = [v3 objectForKeyedSubscript:@"endThreshold"];
  [(FMDTrackedLocationPublisher *)v8 setEndThreshold:v10];

  v11 = [v3 objectForKeyedSubscript:@"decayFactor"];
  [(FMDTrackedLocationPublisher *)v8 setDecayFactor:v11];

  v12 = [v3 objectForKeyedSubscript:@"validityDuration"];
  [(FMDTrackedLocationPublisher *)v8 setCachedLocationValidityTimeInterval:v12];

  [a1[4] minDistanceBetweenLocations];
  if (v13 > 0.0)
  {
    [a1[4] minDistanceBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDTrackedLocationPublisher *)v8 minimumDistance];
  }
  v14 = ;
  [(FMDTrackedLocationPublisher *)v8 setMinimumDistance:v14];

  [a1[4] minTimeBetweenLocations];
  if (v15 > 0.0)
  {
    [a1[4] minTimeBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDTrackedLocationPublisher *)v8 publishTimeInterval];
  }
  v16 = ;
  [(FMDTrackedLocationPublisher *)v8 setPublishTimeInterval:v16];

  [(FMDTrackedLocationPublisher *)v8 startPublishingWithBlock:a1[5]];
  v17 = objc_alloc_init(FMDConservativeLocatorPublisher);
  v18 = [v3 objectForKeyedSubscript:@"startThreshold"];
  [(FMDConservativeLocatorPublisher *)v17 setStartThreshold:v18];

  v19 = [v3 objectForKeyedSubscript:@"endThreshold"];
  [(FMDConservativeLocatorPublisher *)v17 setEndThreshold:v19];

  v20 = [v3 objectForKeyedSubscript:@"decayFactor"];
  [(FMDConservativeLocatorPublisher *)v17 setDecayFactor:v20];

  v21 = [v3 objectForKeyedSubscript:@"validityDuration"];
  [(FMDConservativeLocatorPublisher *)v17 setCachedLocationValidityTimeInterval:v21];

  [a1[4] minDistanceBetweenLocations];
  if (v22 > 0.0)
  {
    [a1[4] minDistanceBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDConservativeLocatorPublisher *)v17 minimumDistance];
  }
  v23 = ;
  [(FMDConservativeLocatorPublisher *)v17 setMinimumDistance:v23];

  [a1[4] minTimeBetweenLocations];
  if (v24 > 0.0)
  {
    [a1[4] minTimeBetweenLocations];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    [(FMDConservativeLocatorPublisher *)v17 publishTimeInterval];
  }
  v25 = ;
  [(FMDConservativeLocatorPublisher *)v17 setPublishTimeInterval:v25];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001DA4A4;
  v33[3] = &unk_1002D1258;
  v26 = v8;
  v34 = v26;
  v35 = a1[5];
  [(FMDConservativeLocatorPublisher *)v17 startPublishingWithBlock:v33];
  [(FMDLocator *)v5 setLocatorPublisher:v17];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001DA5E0;
  v29[3] = &unk_1002CE278;
  v30 = v17;
  v31 = v26;
  v32 = a1[6];
  v27 = v26;
  v28 = v17;
  [(FMDLocator *)v5 setStoppedLocatorBlock:v29];
  [WeakRetained setLocator:v5];
  [(FMDLocator *)v5 startLocator];
}

void sub_1001DA4A4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 || !v8)
  {
    if (v7)
    {
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDLocationTracker error getting location from conservativePublisher %@", &v14, 0xCu);
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v7, v9, a4);
      }
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v16 = v8;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    [v10 updatedLocations:v11 reason:a4];
  }
}

uint64_t sub_1001DA5E0(uint64_t a1)
{
  [*(a1 + 32) flushLocations];
  [*(a1 + 40) flushLocations];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001DAE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DAE90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  v10 = 1;
  if (a4 != 3 && a4 != 5)
  {
    v4 = [WeakRetained locator];
    v10 = [v4 locatorRunning] ^ 1;
  }

  if (a4 != 3 && a4 != 5)
  {
  }

  if (v10)
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F3AC(v9);
    }

    v12 = [v9 trackedLocationsStore];
    [v12 recordLocation:v7 ofType:3];

    v13 = [v9 locator];
    [v13 stopLocator];
  }
}

void sub_1001DAF88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F448(WeakRetained);
  }

  [WeakRetained setLocator:0];
  [WeakRetained _updateFallbackRetryTimer];
}

void sub_1001DAFF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSRunLoop currentRunLoop];
  [v1 scheduleInRunLoop:v2];
}

void sub_1001DBDC0(id a1)
{
  v1 = objc_alloc_init(FMDMagSafeDataStore);
  v2 = qword_100314A18;
  qword_100314A18 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001DC05C(uint64_t a1)
{
  v2 = [*(a1 + 32) _writeAccessoriesToDisk:&__NSDictionary0__struct];
  v3 = [*(a1 + 32) writeLostModeInfo:&__NSArray0__struct version:&stru_1002DCE08];
  v4 = +[NSFileManager defaultManager];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() deprecatedStorageLocation];
  [v4 removeItemAtURL:v6 error:0];

  v9 = +[NSFileManager defaultManager];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() deprecatedLostModeStorageLocation];
  [v9 removeItemAtURL:v8 error:0];
}

void sub_1001DC228(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = *(a1 + 40);
  v6 = [v5 accessoryIdentifier];
  [v4 setObject:v5 forKeyedSubscript:v6];

  v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DC35C;
  v11[3] = &unk_1002CD8B0;
  v9 = *(a1 + 48);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_1001DC448(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  [v4 removeObjectForKey:*(a1 + 40)];
  v5 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DC560;
  v9[3] = &unk_1002CD8B0;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_1001DC64C(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v26 = a1;
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = v4;
    v8 = 0;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 serialNumbers];
        v13 = [v12 objectForKeyedSubscript:@"systemSerialNumber"];
        v14 = [v13 isEqualToString:*(v26 + 40)];

        if (v14)
        {
          v15 = [v11 accessoryIdentifier];

          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);

    v4 = v25;
    if (v8)
    {
      v16 = sub_10000BE38();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v26 + 40);
        *buf = 138412546;
        v37 = v17;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: removing accessory with serialNumber %@ accessoryId = %@", buf, 0x16u);
      }

      [v25 removeObjectForKey:v8];
      v18 = [*(v26 + 32) _writeAccessoriesToDisk:v25];
      v19 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001DC9F8;
      block[3] = &unk_1002CD8B0;
      v20 = *(v26 + 48);
      v30 = v18;
      v31 = v20;
      v21 = v18;
      dispatch_async(v19, block);

      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = sub_10000BE38();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v26 + 40);
    *buf = 138412290;
    v37 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: No magsafe accessory with serialNumber %@ found", buf, 0xCu);
  }

  v24 = dispatch_get_global_queue(0, 0);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001DCA0C;
  v27[3] = &unk_1002CE250;
  v28 = *(v26 + 48);
  dispatch_async(v24, v27);

  v8 = v28;
LABEL_18:
}

void sub_1001DD030(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    [v5 setLastLostModeKeyRollTime:*(a1 + 48)];
    v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022F63C(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = +[NSError fm_genericError];
  }

  v16 = v7;
  v17 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001DD1A8;
  v20[3] = &unk_1002CD8B0;
  v18 = *(a1 + 56);
  v21 = v16;
  v22 = v18;
  v19 = v16;
  dispatch_async(v17, v20);
}

uint64_t sub_1001DD1A8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1001DD3D0(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [*(a1 + 32) commandParams];
  v4 = [v3 objectForKey:@"udid"];
  v5 = [v4 fm_nullToNil];

  if ([v5 length] && (v6 = objc_msgSend([FMDAccessoryIdentifier alloc], "initWithString:", v5), objc_msgSend(v2, "accessoryRegistry"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "accessoryForIdentifier:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Message command for accessory %@", &v16, 0xCu);
    }

    v10 = [AccessoryRegisterAction alloc];
    v11 = [v2 account];
    v12 = [v2 serverInteractionControllerForAccessory:v8];
    v13 = [(AccessoryRegisterAction *)v10 initWithAccount:v11 accessory:v8 cause:@"startupAccessoryRegister" force:1 serverInteractionController:v12];

    v14 = +[ActionManager sharedManager];
    v15 = [v14 enqueueAction:v13];
  }

  else
  {
    [v2 registerDeviceWithCause:@"RegisterCommand" force:1];
  }
}

NSDictionary *__cdecl sub_1001DD8D4(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_1001DD924(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ServerDeviceInfo sharedInstance];
  v4 = [*(a1 + 40) account];
  if (v2)
  {
    [v3 deviceInfoForAccount:v4 accessory:*(a1 + 32)];
  }

  else
  {
    [v3 deviceInfoForAccount:v4];
  }
  v5 = ;

  return v5;
}

void sub_1001DD9C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = [v3 httpResponseError];
    if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        (*(v15 + 16))(v15, 1);
      }

      v7 = sub_100002880();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v9 = [v3 fm_logID];
      v16 = 138412546;
      v17 = v9;
      v18 = 2048;
      v19 = [v3 httpResponseStatus];
      v10 = "%@: successful with status %ld";
      v11 = v7;
      v12 = 22;
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        v16 = 138412290;
        v17 = v9;
        v10 = "%@: Cancelled";
        v11 = v7;
        v12 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
LABEL_14:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v13 = [v3 httpResponseStatus];
      v14 = [v3 httpResponseError];
      v16 = 138412802;
      v17 = v9;
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v16, 0x20u);

      goto LABEL_14;
    }

LABEL_15:
  }
}

void sub_1001DE584(id a1)
{
  v1 = objc_alloc_init(FMDInternalAccessoryConnectionMonitor);
  v2 = qword_100314A28;
  qword_100314A28 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001DEBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DEC14(uint64_t a1)
{
  v2 = [NSSet setWithArray:*(a1 + 32)];
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) playbackChannels];
  v5 = [NSSet setWithArray:v4];

  *(*(*(a1 + 48) + 8) + 24) = [v2 isEqualToSet:v5] ^ 1;
  [*(a1 + 40) setPlaybackChannels:*(a1 + 32)];
  [*(a1 + 40) updateAudioChannelPlayingState:*(a1 + 32)];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F6C0(v3, v6);
  }
}

void sub_1001DEDB8(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v4 = [v7 channelName];
    v5 = [v3 containsObject:v4];

    v6 = [NSNumber numberWithBool:v5];
    [v7 setPlayingSound:v6];
  }

  else
  {
    [v7 setPlayingSound:0];
  }
}

void sub_1001DF2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 channelName];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void sub_1001DF43C(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 identifier];
  v4 = [*(a1 + 32) beacons];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v12 updateDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [v5 updateDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v8 > v11)
  {
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v3];
  }
}

void sub_1001DF5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DF600(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 playingSound];
  if (v6)
  {
    v7 = v6;
    v8 = [v11 playingSound];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v11 playingSound];
      *(*(*(a1 + 32) + 8) + 24) = [v10 BOOLValue];
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_1001E0A90(id a1)
{
  v2 = +[FMSystemInfo sharedInstance];
  v1 = [v2 isInternalBuild];
  if (v1)
  {
    LOBYTE(v1) = [FMPreferencesUtil BOOLForKey:@"FMDAutomationBluetoothManagerAutomationActiveKey" inDomain:kFMDNotBackedUpPrefDomain];
  }

  byte_100314A38 = v1;
}

void sub_1001E0B8C(id a1)
{
  v1 = +[FMDAutomationHelperFactory sharedFactory];
  v2 = [v1 automationHelperClassWithName:@"FMDAutomationBluetoothManager"];

  v3 = objc_alloc_init(v2);
  v4 = qword_100314A48;
  qword_100314A48 = v3;

  _objc_release_x1(v3, v4);
}

void sub_1001E1968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishResultLocation:*(a1 + 32) reason:*(a1 + 48)];
}

void sub_1001E21FC(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10022F924(v1);
  }

  v2 = objc_alloc_init(FMDSPStatusUtil);
  v3 = qword_100314A58;
  qword_100314A58 = v2;
}

void sub_1001E243C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained timer];
  [v1 cancel];

  [WeakRetained setTimer:0];
}

void sub_1001E25B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serialQueue_refreshBeaconStats];
}

void sub_1001E2B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E2C04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serialQueue_refreshBeaconStats];
}

void sub_1001E2ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1001E2F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (!v3 || [v3 compare:*(a1 + 32)] != 1 || (v4 = *(*(*(a1 + 64) + 8) + 40)) == 0 || objc_msgSend(v4, "compare:", *(a1 + 32)) != 1)
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Waiting for both Oct & Mte beacon stats to be fetched.", buf, 2u);
    }

    goto LABEL_15;
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Both Oct & Mte beacon stats have been fetched.", buf, 2u);
  }

  v6 = [*(a1 + 40) copy];
  [WeakRetained setRawStats:v6];

  v7 = [WeakRetained rawStats];
  [FMPreferencesUtil setDictionary:v7 forKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];

  v8 = [*(a1 + 48) isEqualToDictionary:*(a1 + 40)];
  if ((*(a1 + 80) & 1) != 0 || !v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Basic or detailed beacon stats have changed. Sending the updated stats to the server", buf, 2u);
    }

    v10 = [WeakRetained statsChangeHandler];
    if (v10)
    {
      v11 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E315C;
      block[3] = &unk_1002CE250;
      v10 = v10;
      v13 = v10;
      dispatch_async(v11, block);
    }

LABEL_15:
  }
}

void sub_1001E316C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Mte beacon stats fetched", v12, 2u);
  }

  [*(a1 + 32) fm_safelyMapKey:@"mteStatus" toObject:v6];
  [*(a1 + 32) fm_safelyMapKey:@"mteStatusError" toObject:v5];

  v8 = +[NSDate date];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 40) serialQueue];
  dispatch_async(v11, *(a1 + 48));
}

void sub_1001E339C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWaitingForDetailedStats:0];
  v3 = [WeakRetained rawStats];
  v4 = [v3 copy];

  v5 = [v4 mutableCopy];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"octStatus"];
  [v5 fm_safelyMapKey:@"octStatus" toObject:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"octStatusError"];
  [v5 fm_safelyMapKey:@"octStatusError" toObject:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"mteStatus"];
  [v5 fm_safelyMapKey:@"mteStatus" toObject:v8];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"mteStatusError"];
  [v5 fm_safelyMapKey:@"mteStatusError" toObject:v9];

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Both Oct & Mte beacon stats have been fetched.", buf, 2u);
  }

  v11 = [v5 copy];
  [WeakRetained setRawStats:v11];

  v12 = [WeakRetained rawStats];
  [FMPreferencesUtil setDictionary:v12 forKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];

  if (([v4 isEqualToDictionary:v5] & 1) == 0)
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Detailed beacon stats have changed. Sending the updated stats to the server", buf, 2u);
    }

    v14 = [WeakRetained statsChangeHandler];
    if (v14)
    {
      v15 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E366C;
      block[3] = &unk_1002CE250;
      v17 = v14;
      dispatch_async(v15, block);
    }
  }
}
void sub_1000825C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100082600(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The meta data for asset type %{public}@ was downloaded successfully", &v6, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100082898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000828C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000DD598();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v4 = [*(a1 + 40) results];

    if (v4)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [*(a1 + 40) results];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            [v10 logAsset];
            if ([v10 state] == 1)
            {
              [*(*(*(a1 + 56) + 8) + 40) addObject:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100082B90(id a1)
{
  v1 = objc_alloc_init(MSDProgressUpdater);
  v2 = qword_1001A5918;
  qword_1001A5918 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100083E20(id a1, MSDServerResponse *a2)
{
  v2 = a2;
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSDServerResponse *)v2 error];
    v5 = 136315394;
    v6 = "[MSDProgressUpdater demoUpdateCompleted:]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: sent done status to hub; error=%{public}@", &v5, 0x16u);
  }
}

void sub_10008453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100084564(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138543874;
      v11 = v9;
      v12 = 2048;
      v13 = a2;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to uninstall app: %{public}@. Disposition: %ld. Error - %{public}@", &v10, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    if (a2 == 3)
    {
      *(v7 + 24) = 1;
    }

    else
    {
      *(v7 + 24) = 0;
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000DDB70(a2, v8);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_100085FD8(uint64_t result, float a2)
{
  *(v3 - 144) = a2;
  v4 = v3 - 144;
  *(v4 + 4) = v2;
  *(v3 - 132) = 2082;
  *(v4 + 14) = result;
  return result;
}

void sub_100086004(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 144) = a2;
  v4 = v3 - 144;
  *(v4 + 4) = v2;
  *(v3 - 132) = 1026;
  *(v4 + 14) = a1;
}

BOOL sub_100086030(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_1000865B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lowercaseString];
  [v2 addObject:v3];
}

void sub_10008664C(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"Host", @"X-Apple-HMAC-Sent-Timestamp", 0}];
  v2 = qword_1001A5928;
  qword_1001A5928 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100087034(id a1)
{
  v1 = [@"X-Apple-HMAC-Sent-Timestamp" lowercaseString];
  v2 = qword_1001A5940;
  qword_1001A5940 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008793C(id a1)
{
  v1 = [@"X-Apple-HMAC-Sent-Timestamp" lowercaseString];
  v2 = qword_1001A5940;
  qword_1001A5940 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100087A30(id a1)
{
  v1 = objc_alloc_init(MSDSystemMonitor);
  v2 = qword_1001A5948;
  qword_1001A5948 = v1;

  v3 = +[MSDPlatform sharedInstance];
  v4 = [v3 macOS];

  if (v4)
  {
    [NSSet setWithObjects:@"com.apple.retailtech.experiences.mac", @"com.apple.ist.demoloop", @"com.apple.ScreenSaver.Engine", @"com.apple.ist.DigitalSignage.iOS", 0, v15, v16];
    v11 = LABEL_9:;
    goto LABEL_10;
  }

  v5 = +[MSDPlatform sharedInstance];
  v6 = [v5 iOS];

  if (v6)
  {
    [NSSet setWithObjects:@"com.retailtech.arkenstone", @"com.apple.ist.windward", @"com.apple.ist.DemoDiscoveryApp", @"com.apple.ist.demoloop", @"com.apple.ist.DigitalCatalog", @"com.apple.ist.DigitalSignage.iOS", 0];
    goto LABEL_9;
  }

  v7 = +[MSDPlatform sharedInstance];
  v8 = [v7 watchOS];

  if (v8)
  {
    [NSSet setWithObjects:@"com.apple.NanoDemo", 0, v12, v13, v14, v15, v16];
    goto LABEL_9;
  }

  v9 = +[MSDPlatform sharedInstance];
  v10 = [v9 tvOS];

  if (v10)
  {
    [NSSet setWithObjects:@"com.apple.TVIdleScreen", @"com.apple.PineBoard", @"com.apple.IdleScreen", 0, v14, v15, v16];
    goto LABEL_9;
  }

  v11 = +[NSSet set];
LABEL_10:
  v17 = v11;
  [qword_1001A5948 setForegroundAllowedApps:v11];
}

void sub_100087EF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained diskSpaceMonitoringTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 diskSpaceMonitoringTimer];
    [v5 invalidate];
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v6 = [NSTimer scheduledTimerWithTimeInterval:v8 target:"processDiskSpaceMonitorCallback" selector:0 userInfo:1 repeats:300.0];
  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setDiskSpaceMonitoringTimer:v6];
}

void sub_10008807C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained diskSpaceMonitoringTimer];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 diskSpaceMonitoringTimer];
    [v5 invalidate];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setDiskSpaceMonitoringTimer:0];
  }
}

void sub_10008843C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100088468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processCoreDuetCallBack];

  return 1;
}

void sub_1000888C8(id a1)
{
  v1 = objc_alloc_init(MSDDemoUpdateController);
  v2 = qword_1001A5958;
  qword_1001A5958 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008BEA8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000DFA24(v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008E324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10008E33C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSString stringWithCString:a2 encoding:4];
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v15 = v11;
    [v10 setObject:v11 forKey:v6];

    v9 = 1;
    goto LABEL_23;
  }

  if (type == &_xpc_type_string)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSString stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (type == &_xpc_type_int64)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_uint64)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_dictionary)
  {
    v12 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [v12 initWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSData dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (type == &_xpc_type_array)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSArray arrayWithXPCArray:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_double)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_date)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSDate dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000E0928(v6, v8);
  }

  v9 = 0;
LABEL_23:

  return v9;
}

void sub_10008EE80(id a1)
{
  v1 = objc_alloc_init(MSDDemoManifestCheck);
  v2 = qword_1001A5968;
  qword_1001A5968 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009068C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000906A4(uint64_t a1, const __CFData *a2)
{
  v3 = SecCertificateCreateWithData(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  else
  {
    sub_1000E1E24();
  }
}

void sub_100090E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100090E74(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100090FA4;
    v14[3] = &unk_10016BB38;
    v14[4] = *(a1 + 40);
    v15 = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = *(a1 + 64);
    *(&v12 + 1) = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v16 = v13;
    v17 = v12;
    v18 = a4;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

void sub_100090FA4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) checkType];
  if (v9)
  {
    [*(a1 + 32) checkType];
  }

  else
  {
    [v8 objectForKey:@"RigorousCheckType"];
  }
  v10 = ;

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138543874;
    v23 = v7;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Name: %{public}@, Section Name: %{public}@, Check Type: %{public}@", buf, 0x20u);
  }

  v13 = [*(a1 + 32) getComponentData:v8];
  if ([v10 isEqualToString:@"Skip"])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if ([v10 isEqualToString:@"Default"])
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) runSecurityChecksForSection:v13 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
  }

  else
  {
    if ([v10 isEqualToString:@"AppleISTCertCheck"])
    {
      v14 = [NSString stringWithFormat:@"%@.%@", *(a1 + 40), v7];
      v15 = [*(a1 + 32) allowedISTSignedComponents];
      v16 = [v15 containsObject:v14];

      if (v16)
      {
        if ([v7 isEqualToString:*(a1 + 56)] && objc_msgSend(*(a1 + 40), "isEqualToString:", *(a1 + 64)))
        {
          v17 = sub_100063A54();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "About to run app layout checks for %{public}@", buf, 0xCu);
          }

          v18 = [*(a1 + 32) runAppLayoutSecurityCheck:v13];
        }

        else
        {
          v18 = [*(a1 + 32) runSecurityChecksForSection:v13 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
        }

        *(*(*(a1 + 72) + 8) + 24) = v18;
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v20 = sub_100063A54();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E2310();
        }
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 136315906;
        v23 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
        v24 = 2114;
        v25 = v10;
        v26 = 2114;
        v27 = v7;
        v28 = 2114;
        v29 = v19;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Unknown rigorous check type (%{public}@) for %{public}@ (from %{public}@).", buf, 0x2Au);
      }
    }
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2380(v7, a1, v21);
    }

    *a4 = 1;
    **(a1 + 80) = 1;
  }
}

void sub_100092980(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [v3 userInfo];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification received for entitlement check for: %{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [v3 userInfo];
  [*(a1 + 32) setItemBeingInstalled:v7];
}

void sub_100093F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100093F4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100093F64(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 lowercaseString];

  if ([v5 isEqualToString:@"plist"])
  {
    v21[0] = *(*(a1[4] + 8) + 40);
    v21[1] = v3;
    v6 = [NSArray arrayWithObjects:v21 count:2];
    v7 = [NSString pathWithComponents:v6];

    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loading factory metadata from path %{public}@", &v19, 0xCu);
    }

    v9 = [[MSDSignedManifestFactoryMetadata alloc] initWithContentPlistFile:v7];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(a1[5] + 8) + 40))
    {
      [*(*(a1[6] + 8) + 40) addObject:?];
    }

    else
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E2CAC(v7, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }
}

void sub_100094AD8(id a1)
{
  v1 = [MSDUAFUpdater alloc];
  v4 = +[UAFAssetSetManager sharedManager];
  v2 = [(MSDUAFUpdater *)v1 initWithAssetSetManager:v4];
  v3 = qword_1001A5978;
  qword_1001A5978 = v2;
}

void sub_100095068(id a1, UAFAssetSetStatus *a2)
{
  v2 = a2;
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(UAFAssetSetStatus *)v2 completedBytes];
    v5 = [(UAFAssetSetStatus *)v2 totalBytes];
    [(UAFAssetSetStatus *)v2 completedPercent];
    v7 = 134218496;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "UAF download progress %ld / %ld, (%ld%%)", &v7, 0x20u);
  }
}

uint64_t sub_100095154(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UAF download complete!", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000954EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100095524(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2E84(v5, v6);
    }
  }

  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100095B6C(id a1)
{
  v1 = objc_alloc_init(MSDSettingsRefresher);
  v2 = qword_1001A5990;
  qword_1001A5990 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100096AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100096AEC(uint64_t a1)
{
  v2 = objc_alloc_init(RadiosPreferences);
  *(*(*(a1 + 32) + 8) + 24) = [v2 airplaneMode];
}

void sub_100096C58(uint64_t a1)
{
  v2 = objc_alloc_init(RadiosPreferences);
  [v2 setAirplaneMode:*(a1 + 40)];
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[MSDSettingsRefresher setAirplaneMode:]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - Set system airplane mode setting to %{public}@", &v5, 0x16u);
  }
}

void sub_100097100(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10009711C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_100098B6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _listenForIncomingRequestMessageOfID:*(a1 + 32)];
}

void sub_100098CAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _listenForIncomingEventMessageOfID:*(a1 + 32)];
}

void sub_100098E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _sendOutgoingRequestMessage:*(a1 + 32) toDevice:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_100098FC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _sendOutgoingEventMessage:*(a1 + 32) toDevice:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_100099104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateSenderRPClientForDevice:*(a1 + 32)];
}

void sub_1000993F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_100099428(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: XPC connection to listener RPCompanionLinkClient interrupted!", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateListenerRPClient];
}

void sub_1000994A8(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: XPC connection to listener RPCompanionLinkClient invalidated!", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateListenerRPClient];
}

void sub_100099528(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4B14(v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) listenerRPClient];
    (*(v5 + 16))(v5, v6, 0);
  }
}

void sub_1000997D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000997FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009991C;
    v9[3] = &unk_10016BD38;
    v10 = v7;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 40);
    [v5 registerRequestID:v10 options:0 handler:v9];
    objc_destroyWeak(&v12);
    v8 = v10;
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4BA4(v8);
    }
  }
}

void sub_10009991C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100099A54;
  v14[3] = &unk_10016BD10;
  v15 = *(a1 + 32);
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  objc_copyWeak(&v20, (a1 + 48));
  v18 = *(a1 + 40);
  v19 = v9;
  v13 = v9;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v20);
}

void sub_100099A54(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v17 = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Received request of ID: %{public}@ payload: %{public}@", &v17, 0x16u);
  }

  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E4BE8(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = [WeakRetained observer];

  if (v7)
  {
    v8 = [[MSDRapportDevice alloc] initWithIncomingOptions:*(a1 + 48)];
    v9 = [[MSDRapportMessage alloc] initWithIdentifier:*(a1 + 32) andPayload:*(a1 + 40) usingOptions:*(a1 + 48)];
    v10 = objc_loadWeakRetained((a1 + 72));
    v11 = [v10 observer];
    v12 = [v11 didReceiveRequestMessage:v9 fromDevice:v8];

    if (v12)
    {
      v13 = [*(a1 + 56) _extractRapportPayloadFromMessage:v12];
      v14 = [*(a1 + 56) _extractRapportOptionsFromMessage:v12];
      v15 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred."];
  v12 = 0;
  v14 = 0;
  v13 = &__NSDictionary0__struct;
LABEL_10:
  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, v13, v14, v15);
  }
}

void sub_100099DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100099DF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100099F0C;
    v9[3] = &unk_10016BD88;
    v10 = v7;
    objc_copyWeak(&v11, (a1 + 40));
    [v5 registerEventID:v10 options:0 handler:v9];
    objc_destroyWeak(&v11);
    v8 = v10;
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4BA4(v8);
    }
  }
}

void sub_100099F0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v22 = 138543618;
    v23 = v8;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Received event of ID: %{public}@ payload: %{public}@", &v22, 0x16u);
  }

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E4C54(v6, v9, v10, v11, v12, v13, v14, v15);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = [WeakRetained observer];

  if (v17)
  {
    v18 = [[MSDRapportDevice alloc] initWithIncomingOptions:v6];
    v19 = [[MSDRapportMessage alloc] initWithIdentifier:*(a1 + 32) andPayload:v5 usingOptions:v6];
    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 observer];
    [v21 didReceiveEventMessage:v19 fromDevice:v18];
  }
}

void sub_10009A6C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_10009A720(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000E4CC0(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateSenderRPClientForDevice:*(a1 + 32)];
}

void sub_10009A784(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000E4D28(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateSenderRPClientForDevice:*(a1 + 32)];
}

void sub_10009A7E8(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000E4D90(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateSenderRPClientForDevice:*(a1 + 32)];
}

void sub_10009A84C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4DF8(a1, v3);
    }

    v5 = *(*(a1 + 56) + 16);
  }

  else
  {
    v6 = [*(a1 + 40) senderRPClients];
    [v6 addObject:*(a1 + 48)];

    v7 = *(a1 + 48);
    v5 = *(*(a1 + 56) + 16);
  }

  v5();
}

void sub_10009AC3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) _extractRapportPayloadFromMessage:*(a1 + 48)];
    v8 = [*(a1 + 40) _extractRapportOptionsFromMessage:*(a1 + 48)];
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009ADCC;
    v12[3] = &unk_10016BE00;
    v13 = v9;
    v14 = *(a1 + 64);
    [v5 sendRequestID:v13 request:v7 options:v8 responseHandler:v12];
  }

  else
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4E8C(a1);
    }

    v11 = [v6 localizedDescription];
    v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v11];

    (*(*(a1 + 64) + 16))();
  }
}

void sub_10009ADCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100063A54();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4EF4(a1, v9);
    }

    v12 = [v9 localizedDescription];
    v13 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v12];

    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v23 = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Received response for request of ID: %{public}@ payload: %{public}@", &v23, 0x16u);
    }

    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E4C54(v8, v16, v17, v18, v19, v20, v21, v22);
    }

    v14 = [[MSDRapportMessage alloc] initWithIdentifier:*(a1 + 32) andPayload:v7 usingOptions:v8];
    v13 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009B13C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) _extractRapportPayloadFromMessage:*(a1 + 48)];
    v8 = [*(a1 + 40) _extractRapportOptionsFromMessage:*(a1 + 48)];
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B2C8;
    v12[3] = &unk_10016BE50;
    v13 = v9;
    v14 = *(a1 + 64);
    [v5 sendEventID:v13 event:v7 options:v8 completion:v12];
  }

  else
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4E8C(a1);
    }

    v11 = [v6 localizedDescription];
    v7 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v11];

    (*(*(a1 + 64) + 16))();
  }
}

void sub_10009B2C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4F88(a1, v3);
    }

    v5 = [v3 localizedDescription];
    v6 = [NSError errorDomainMSDWithCode:3727741108 message:@"Cannot communicate with demo peer." reason:v5];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Successfuly sent event of ID: %{public}@", &v8, 0xCu);
    }

    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009B730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009B760(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"Timeout"])
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKey:RPOptionTimeoutSeconds];
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Unknown options key: %{public}@", &v8, 0xCu);
    }
  }
}

uint64_t sub_10009B964@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10009BB68(id a1)
{
  v1 = objc_alloc_init(MSDXCTestSpawnWrapper);
  v2 = qword_1001A5998;
  qword_1001A5998 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009E778(id a1)
{
  v1 = objc_alloc_init(MSDFileDownloadCredentials);
  v2 = qword_1001A59A8;
  qword_1001A59A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009F9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FA04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10009FA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v14 = v10;
    [v9 addObject:v10];

    v8 = 1;
    goto LABEL_23;
  }

  if (type == &_xpc_type_string)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSString stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (type == &_xpc_type_int64)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_uint64)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSData dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (type == &_xpc_type_double)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_dictionary)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSDictionary dictionaryWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_array)
  {
    v13 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v13 initWithXPCArray:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_date)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSDate dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000E6008(a2, v7);
  }

  v8 = 0;
LABEL_23:

  return v8;
}

void sub_10009FDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009FDE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_string_create([v6 UTF8String]);
LABEL_5:
    v9 = v8;
    xpc_array_append_value(v7, v8);

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_data_create([v6 bytes], objc_msgSend(v6, "length"));
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [v10 objCType];
    if (*v11 == 105 && !v11[1] || (v12 = [v10 objCType], *v12 == 115) && !v12[1] || (v13 = objc_msgSend(v10, "objCType"), *v13 == 113) && !v13[1] || (v14 = objc_msgSend(v10, "objCType"), *v14 == 113) && !v14[1])
    {
      v20 = *(a1 + 32);
      v21 = xpc_int64_create([v10 longLongValue]);
    }

    else
    {
      v15 = [v10 objCType];
      if (*v15 == 102 && !v15[1] || (v16 = [v10 objCType], *v16 == 100) && !v16[1])
      {
        v20 = *(a1 + 32);
        [v10 doubleValue];
        v21 = xpc_double_create(v23);
      }

      else
      {
        v17 = [v10 objCType];
        if (*v17 != 66 || v17[1])
        {
          v18 = [v10 objCType];
          if (*v18 != 99 || v18[1])
          {
            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_1000E60C4(v10, v19);
            }

            *a4 = 1;
            *(*(*(a1 + 40) + 8) + 24) = 0;
            goto LABEL_40;
          }
        }

        v20 = *(a1 + 32);
        v21 = xpc_BOOL_create([v10 BOOLValue]);
      }
    }

    v25 = v21;
    xpc_array_append_value(v20, v21);

LABEL_40:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 xpcArrayFromArray];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 createXPCDictionary];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    [v6 timeIntervalSince1970];
    v8 = xpc_date_create(v22);
    goto LABEL_5;
  }

  v24 = sub_100063A54();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1000E6080(v24);
  }

  *a4 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_6:
}

void sub_1000A0900(id a1)
{
  v1 = objc_alloc_init(MSDContentCacheManager);
  v2 = qword_1001A59B8;
  qword_1001A59B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A0F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v22[0] = *(a1 + 32);
  v22[1] = v3;
  v4 = [NSArray arrayWithObjects:v22 count:2];
  v5 = [NSString pathWithComponents:v4];

  v6 = [NSData dataWithHexString:v3];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 fileExistsAtPath:v5 isDirectory:&v19];
    v9 = v19;

    v10 = 0;
    if (v8 && (v9 & 1) == 0)
    {
      if ([*(a1 + 48) containsObject:v6])
      {
        v10 = 0;
        goto LABEL_15;
      }

      v15 = [*(a1 + 40) fileManager];
      v17 = 0;
      v16 = [v15 removeItemAtPath:v5 error:&v17];
      v10 = v17;

      if (v16)
      {
        goto LABEL_15;
      }

      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E6168(v5, v10);
      }

LABEL_14:
    }
  }

  else
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing download in progress %{public}@", buf, 0xCu);
    }

    v12 = [*(a1 + 40) fileManager];
    v18 = 0;
    v13 = [v12 removeItemAtPath:v5 error:&v18];
    v10 = v18;

    if ((v13 & 1) == 0)
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E6168(v5, v10);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

void sub_1000A1EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1EE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A1EF8(uint64_t a1, void *a2)
{
  v6[0] = @"/var/MSDWorkContainer/.MSD_cache_manifest";
  v6[1] = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v6 count:2];
  v5 = [NSString pathWithComponents:v4];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
}

void sub_1000A29EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _start];
}

void sub_1000A2AF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stop];
}

void sub_1000A2F48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

void sub_1000A2F90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _feedNewRSSIReadingReceivedFromDevice:v3];
}

void sub_1000A2FEC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _feedNewRSSIReadingReceivedFromDevice:v3];
}

void sub_1000A3048(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _feedNewRSSIReadingReceivedFromDevice:v3];
}

void sub_1000A30A4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000E65FC(v2);
    }
  }
}

void sub_1000A380C(id a1)
{
  v1 = objc_alloc_init(MSDPlatform);
  v2 = qword_1001A59C8;
  qword_1001A59C8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A4114(id a1)
{
  v1 = objc_alloc_init(MSDOSUpdaterController);
  v2 = qword_1001A59E8;
  qword_1001A59E8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A4B04(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v7 = "Software update purge happened successfully.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 2u);
    }
  }

  else
  {
    v6 = sub_100063A54();
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = [v5 localizedDescription];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remove software update failed: %{public}@", &v10, 0xCu);
      }
    }

    else if (v8)
    {
      LOWORD(v10) = 0;
      v7 = "remove software update failed: no error returned";
      goto LABEL_9;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id *sub_1000A5560(id *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] bail:"-[MSDOSUpdaterController scanResult:error:]_block_invoke" error:a3];
  }

  return result;
}

void sub_1000A57DC(uint64_t a1)
{
  v2 = +[MSDProgressUpdater sharedInstance];
  [v2 updateStage:19];

  v3 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A588C;
  v4[3] = &unk_10016BAA0;
  v4[4] = *(a1 + 32);
  [v3 installUpdate:v4];
}

id *sub_1000A588C(id *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] bail:"-[MSDOSUpdaterController client:downloadDidFinish:]_block_invoke_2" error:a3];
  }

  return result;
}

void sub_1000A5CEC(id a1, BOOL a2, NSError *a3)
{
  v3 = +[MSDTargetDevice sharedInstance];
  [v3 forceSwitchToDemoModeIfNeeded];
}

void sub_1000A7600(id a1)
{
  v1 = objc_alloc_init(MSDServerRequestHandler);
  v2 = qword_1001A59F8;
  qword_1001A59F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A8028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A805C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A8074(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000A81FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = [v3 credential];
    v8 = +[MSDKeychainManager sharedInstance];
    v9 = [v7 dataUsingEncoding:4];
    v10 = [v8 saveItem:v9 forKey:@"com.apple.mobilestoredemo.keychainItemID"];

    if (v10)
    {
      v11 = [*(a1 + 32) hubServer];
      [v11 overrideHmacKey:v7];

      v6 = [v3 settingsDict];
      if (v6)
      {
        v12 = [*(a1 + 32) device];
        v13 = [v12 saveHubSuppliedSettings:v6];

        if ((v13 & 1) == 0)
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315138;
            v28 = "[MSDServerRequestHandler handleEnroll:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Cannot save settings dictionary.", &v27, 0xCu);
          }
        }
      }

      v5 = [v6 objectForKey:@"DeviceOptions"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [*(a1 + 32) device];
          v16 = [v15 updateDeviceOptions:v5 skipImutableKeys:0];

          if ((v16 & 1) == 0)
          {
            v17 = sub_100063A54();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v27 = 136315138;
              v28 = "[MSDServerRequestHandler handleEnroll:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Cannot set deviceOptions dictionary received during /Register response.", &v27, 0xCu);
            }
          }
        }
      }

      v18 = [v3 hubProtocolVersion];
      v19 = [*(a1 + 32) device];
      [v19 setHubProtocolVersion:v18];

      v20 = [*(a1 + 32) device];
      v21 = [v20 hubProtocolVersion];
      v22 = [v21 lowerVersionThan:@"2"];

      if (v22)
      {
        v23 = sub_100063A54();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 32) device];
          v25 = [v24 hubProtocolVersion];
          v27 = 138543362;
          v28 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Hub protocol version (%{public}@) is too old.", &v27, 0xCu);
        }
      }
    }

    else
    {
      sub_1000E6E48(v3);
      v5 = 0;
      v6 = 0;
    }
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    (*(v26 + 16))(v26, v3);
  }
}

void sub_1000A88C4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 error];

  if (!v3)
  {
    v4 = [*(a1 + 32) getDownloadFileRequestFromResponse:v8 forFilePath:*(a1 + 40)];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 fileInfo];
      [v6 setSkipHashCheck:1];

      [v5 setCompletion:*(a1 + 48)];
      [*(a1 + 32) handleDownloadFile:v5];

      goto LABEL_4;
    }

    sub_1000E6EB4(v8);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }

LABEL_4:
}

void sub_1000A9194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A935C(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  [*(a1 + 32) setError:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 checkIPAForResponse:v5 withRequest:v6];
}

void sub_1000A9D64(id a1)
{
  v1 = objc_alloc_init(MSDUIHelper);
  v2 = qword_1001A5A08;
  qword_1001A5A08 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AA000(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100063A54();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "App providing UI checking out or app terminated.", v17, 2u);
    }

    v16 = *(a1 + 40);
    v15 = *(v16 + 16);
    *(v16 + 16) = 0;
    goto LABEL_11;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "App providing UI checking in.", buf, 2u);
  }

  objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained pendingMessage];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 connection];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 pendingMessage];
    xpc_connection_send_message(v8, v10);

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 setPendingMessage:0];
  }

  v12 = objc_loadWeakRetained((a1 + 48));
  v13 = [v12 fullScreenState];

  if (v13 == 1)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    [v14 setFullScreenState:2];

    v15 = objc_loadWeakRetained((a1 + 48));
    [v15 activateFullScreenUIAppMonitor];
LABEL_11:
  }
}

void sub_1000AA2BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained fullScreenState];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 allowCancel];
    v6 = *(a1 + 48);

    if (v6 == v5)
    {
      return;
    }

    v14 = *(a1 + 48);
    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 setAllowCancel:v14];

    v17 = +[MSDUIHelper sharedInstance];
    v16 = objc_loadWeakRetained((a1 + 40));
    [v17 demoUpdateAllowCancel:{objc_msgSend(v16, "allowCancel")}];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setMessage:v7];

    v9 = *(a1 + 48);
    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 setAllowCancel:v9];

    v11 = *(a1 + 49);
    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 setDisableIdleTimer:v11];

    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 setPendingMessage:0];

    v17 = objc_loadWeakRetained((a1 + 40));
    [v17 requestFullScreenUI];
  }
}

void sub_1000AA514(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained fullScreenState];

  if (v3)
  {
    v4 = objc_loadWeakRetained(a1 + 6);
    [v4 setFullScreenState:0];

    v5 = objc_loadWeakRetained(a1 + 6);
    [v5 setCurrentProgress:0];

    v6 = objc_loadWeakRetained(a1 + 6);
    [v6 deactivateFullScreenUIAppMonitor];

    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v7;
    if (v7)
    {
      xpc_dictionary_set_string(v7, "ContentUpdateStatus", "Completed");
      if (a1[4])
      {
        v9 = sub_100063A54();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [a1[4] code];
          v11 = [a1[4] userInfo];
          *buf = 134218242;
          v25 = v10;
          v26 = 2114;
          v27 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending xpc message with error: %td:%{public}@", buf, 0x16u);
        }

        xpc_dictionary_set_int64(v8, "ErrorCode", [a1[4] code]);
        v12 = [a1[4] domain];
        xpc_dictionary_set_string(v8, "ErrorDomain", [v12 cStringUsingEncoding:4]);

        v13 = [a1[4] userInfo];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000AA80C;
        v22[3] = &unk_10016C208;
        v23 = v8;
        [v13 enumerateKeysAndObjectsUsingBlock:v22];
      }

      v14 = objc_loadWeakRetained(a1 + 6);
      v15 = [v14 connection];

      v16 = objc_loadWeakRetained(a1 + 6);
      v17 = v16;
      if (v15)
      {
        v18 = [v16 connection];
        xpc_connection_send_message(v18, v8);
      }

      else
      {
        [v16 setPendingMessage:v8];
      }

      v19 = [a1[5] remoteAlertHandle];

      if (v19)
      {
        v20 = [a1[5] remoteAlertHandle];
        [v20 removeObserver:a1[5]];

        v21 = [a1[5] remoteAlertHandle];
        [v21 invalidate];

        [a1[5] setRemoteAlertHandle:0];
      }
    }

    else
    {
      sub_1000E729C();
    }
  }
}

void sub_1000AA80C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E7348();
      }

      xpc_dictionary_set_string(*(a1 + 32), [v5 cStringUsingEncoding:4], objc_msgSend(v6, "cStringUsingEncoding:", 4));
    }
  }
}

void sub_1000AA9B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFullScreenState:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setCurrentProgress:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 deactivateFullScreenUIAppMonitor];
}

void sub_1000AAAF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained fullScreenState];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 disableIdleTimer];

    if (v5)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      [v6 setDisableIdleTimer:0];

      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 demoUpdateDisableIdleTimer:0];
    }
  }
}

void sub_1000AAD38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained fullScreenState];

  if (v3 == 1)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Timer triggered but still no UI checked in. Requesting blocking UI again...", v6, 2u);
    }

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 requestFullScreenUI];
  }
}

void sub_1000AAF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AAF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&off_10017BFA0];
  [v3 setStateDescriptor:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained fullScreenUIAppId];
  v7 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v6];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v3 setPredicates:v8];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AB110;
  v9[3] = &unk_10016C258;
  objc_copyWeak(&v10, (a1 + 32));
  [v3 setUpdateHandler:v9];
  objc_destroyWeak(&v10);
}

void sub_1000AB110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 state];
  v7 = [v6 taskState];

  v8 = [v5 state];

  v11 = [v8 endowmentNamespaces];

  v9 = [v11 containsObject:@"com.apple.frontboard.visibility"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFullScreenUIAppStateChange:v7 withVisibility:v9];
}

void sub_1000AB520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained fullScreenState];

  if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 deactivateFullScreenUIAppMonitor];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 requestFullScreenUI];
  }
}

void sub_1000AB5BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained fullScreenState];

  if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 launchFullScreenUI];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 demoUpdateProgress:{objc_msgSend(v5, "currentProgress")}];
  }
}

void sub_1000ABE00(uint64_t a1)
{
  if ([*(a1 + 32) backlightStatus])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained deactivateFullScreenUIAppMonitor];

    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 fullScreenState];

    if (v4 == 2)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 requestFullScreenUI];
    }
  }
}

void sub_1000AC0C8(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained backlightStatus];
    v5 = [*(a1 + 32) displayBacklightLevel];
    v15 = 134218240;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Backlight changed from %td to %td", &v15, 0x16u);
  }

  if ([*(a1 + 32) displayBacklightLevel] == 100)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 backlightStatus];

    if (!v7)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 fullScreenState];

      if (v9 == 2)
      {
        v10 = sub_100063A54();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device back up, starting full screen UI", &v15, 2u);
        }

        v11 = objc_loadWeakRetained((a1 + 40));
        [v11 launchFullScreenUI];

        v12 = objc_loadWeakRetained((a1 + 40));
        [v12 demoUpdateProgress:{objc_msgSend(v12, "currentProgress")}];
      }
    }
  }

  v13 = [*(a1 + 32) displayBacklightLevel];
  v14 = objc_loadWeakRetained((a1 + 40));
  [v14 setBacklightStatus:v13];
}

void sub_1000AC384(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000AC654;
  v21 = sub_1000AC664;
  v22 = 0;
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "demoUpdateFailed(XPC) is called", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E74A0();
    goto LABEL_14;
  }

  if ([v3 code] != 3727741185)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v18[5];
    v18[5] = v4;

    v6 = v18[5];
    if (v6)
    {
      xpc_dictionary_set_string(v6, "ContentUpdateStatus", "Error");
      xpc_dictionary_set_int64(v18[5], "ErrorCode", [*(a1 + 32) code]);
      v7 = v18[5];
      v8 = [*(a1 + 32) domain];
      xpc_dictionary_set_string(v7, "ErrorDomain", [v8 cStringUsingEncoding:4]);

      v9 = [*(a1 + 32) userInfo];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000AC66C;
      v16[3] = &unk_10016C2A8;
      v16[4] = &v17;
      [v9 enumerateKeysAndObjectsUsingBlock:v16];

      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v11 = [WeakRetained connection];

      if (v11)
      {
        v12 = objc_loadWeakRetained((a1 + 40));
        v13 = [v12 connection];
        xpc_connection_send_message(v13, v18[5]);

        v14 = sub_100063A54();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E73E4();
        }
      }

      else
      {
        v15 = v18[5];
        v14 = objc_loadWeakRetained((a1 + 40));
        [v14 setPendingMessage:v15];
      }

      goto LABEL_10;
    }

    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E7418();
LABEL_14:
    v14 = *buf;
LABEL_10:
  }

  _Block_object_dispose(&v17, 8);
}

void sub_1000AC62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AC66C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E7348();
      }

      xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 40), [v5 cStringUsingEncoding:4], objc_msgSend(v6, "cStringUsingEncoding:", 4));
    }
  }
}

void sub_1000AC82C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = sub_100063A54();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending a progress(XPC)", v12, 2u);
    }

    xpc_dictionary_set_string(v2, "ContentUpdateStatus", "Progress");
    xpc_dictionary_set_int64(v2, "Percentage", *(a1 + 40));
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained connection];

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = v7;
    if (v6)
    {
      v9 = [v7 connection];
      xpc_connection_send_message(v9, v2);

      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E73E4();
      }
    }

    else
    {
      [v7 setPendingMessage:v2];
    }

    v10 = *(a1 + 40);
    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 setCurrentProgress:v10];
  }

  else
  {
    sub_1000E7528();
    v11 = v13;
  }
}

void sub_1000ACA70(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = sub_100063A54();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      LODWORD(v11) = 67109120;
      HIDWORD(v11) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending allowCancel(XPC): %d", &v11, 8u);
    }

    xpc_dictionary_set_string(v2, "ContentUpdateStatus", "AllowContentUpdateCancel");
    xpc_dictionary_set_BOOL(v2, "allowCancel", *(a1 + 40));
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained connection];

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = v8;
    if (v7)
    {
      v10 = [v8 connection];
      xpc_connection_send_message(v10, v2);

      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E73E4();
      }
    }

    else
    {
      [v8 setPendingMessage:v2];
    }
  }

  else
  {
    sub_1000E75B0();
    v9 = v11;
  }
}

void sub_1000ACCD4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = sub_100063A54();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      LODWORD(v11) = 67109120;
      HIDWORD(v11) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending disableIdleTimer(XPC): %d", &v11, 8u);
    }

    xpc_dictionary_set_string(v2, "ContentUpdateStatus", "ContentUpdateDisableIdleTimer");
    xpc_dictionary_set_BOOL(v2, "disableIdleTimer", *(a1 + 40));
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained connection];

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = v8;
    if (v7)
    {
      v10 = [v8 connection];
      xpc_connection_send_message(v10, v2);

      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E73E4();
      }
    }

    else
    {
      [v8 setPendingMessage:v2];
    }
  }

  else
  {
    sub_1000E7638();
    v9 = v11;
  }
}

void sub_1000AD038(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1000AD09C(id a1)
{
  v1 = objc_alloc_init(MSDEnrollPassword);
  v2 = qword_1001A5A18;
  qword_1001A5A18 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AD3CC(id a1)
{
  v1 = objc_alloc_init(MSDWorkQueueSet);
  v2 = qword_1001A5A28;
  qword_1001A5A28 = v1;

  v3 = dispatch_queue_create("com.apple.msddemoupdate", 0);
  [qword_1001A5A28 setDemoUpdateQueue:v3];

  v4 = dispatch_queue_create("com.apple.msdmessage", 0);
  [qword_1001A5A28 setMessageQueue:v4];

  v5 = dispatch_queue_create("com.apple.msdpolling", 0);
  [qword_1001A5A28 setPollingQueue:v5];

  v6 = dispatch_queue_create("com.apple.backgroundDownloadQueue", 0);
  [qword_1001A5A28 setBackgroundDownloadQueue:v6];

  v7 = dispatch_queue_create("com.apple.contentDownloadQueue", &_dispatch_queue_attr_concurrent);
  [qword_1001A5A28 setContentDownloadConcurrentQueue:v7];

  v8 = objc_alloc_init(NSOperationQueue);
  [qword_1001A5A28 setOperationQueue:v8];

  v9 = [qword_1001A5A28 operationQueue];
  v10 = [qword_1001A5A28 contentDownloadConcurrentQueue];
  [v9 setUnderlyingQueue:v10];

  v11 = [qword_1001A5A28 operationQueue];
  [v11 setMaxConcurrentOperationCount:3];
}

void sub_1000AD67C(id a1)
{
  v1 = objc_alloc_init(MSDCryptoHandler);
  v2 = qword_1001A5A38;
  qword_1001A5A38 = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_1000AE14C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_1000AE1A8(id a1)
{
  v1 = objc_alloc_init(MSDHelperAgent);
  v2 = qword_1001A5A48;
  qword_1001A5A48 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AE300(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_error)
  {
    if (v2 == &_xpc_error_connection_invalid)
    {
      v4 = sub_100063A54();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E8570();
      }
    }

    else
    {
      if (v2 != &_xpc_error_connection_interrupted)
      {
        goto LABEL_11;
      }

      v4 = sub_100063A54();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E8530();
      }
    }

    goto LABEL_11;
  }

  if (type != &_xpc_type_dictionary)
  {
    sub_1000E8504();
  }

LABEL_11:
}

void sub_1000B2AE4(id a1)
{
  v1 = objc_alloc_init(MSDDemoUpdateStatusHub);
  v2 = qword_1001A5A58;
  qword_1001A5A58 = v1;

  v3 = [NSMutableSet setWithCapacity:0];
  [qword_1001A5A58 setDelegates:v3];
}

id sub_1000B2E40(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 demoUpdateProgress:*(a1 + 32)];
  *a3 = 0;
  return result;
}

id sub_1000B2F98(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 demoUpdateCompleted:*(a1 + 32)];
  *a3 = 0;
  return result;
}

id sub_1000B30D4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 demoUpdateFailed:*(a1 + 32)];
  *a3 = 0;
  return result;
}

BOOL sub_1000B3124(uint64_t a1)
{
  if (a1)
  {
    v2 = +[MSDWiFiHelper sharedInstance];
    v3 = [v2 sem];
    dispatch_semaphore_signal(v3);
  }

  return a1 != 0;
}

void sub_1000B31C8(id a1)
{
  v1 = objc_alloc_init(MSDWiFiHelper);
  v2 = qword_1001A5A68;
  qword_1001A5A68 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000B39D4(uint64_t a1, void *a2)
{
  result = [a2 type];
  if (result == 6)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wifi has been linked. Now can look up current known network..", v5, 2u);
    }

    [*(a1 + 32) lock];
    [*(a1 + 32) signal];
    return [*(a1 + 32) unlock];
  }

  return result;
}

id sub_1000B4524(uint64_t a1, void *a2)
{
  result = [a2 type];
  if (result == 10)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wifi interface is now initialized. Should be safe to proceed..", v5, 2u);
    }

    [*(a1 + 32) lock];
    [*(a1 + 32) signal];
    return [*(a1 + 32) unlock];
  }

  return result;
}

void sub_1000B4CE8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1000B4D00(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

void sub_1000B4D5C(id a1)
{
  v1 = objc_alloc_init(MSDDemoUpdateTimeKeeper);
  v2 = qword_1001A5A78;
  qword_1001A5A78 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000B50D0(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "The previous completion timer will be invalidated.", v5, 2u);
  }

  v3 = [*(a1 + 32) timer];
  [v3 invalidate];

  return [*(a1 + 32) setTimer:0];
}

void sub_1000B5160(uint64_t a1)
{
  v3 = [*(a1 + 32) date];
  [v3 timeIntervalSinceNow];
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"forceSwitchToDemoMode:" selector:0 userInfo:0 repeats:?];
  [*(a1 + 32) setTimer:v2];
}

id sub_1000B52F0(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidate fatal error timer.", v5, 2u);
  }

  v3 = [*(a1 + 32) timerForFatalError];
  [v3 invalidate];

  return [*(a1 + 32) setTimerForFatalError:0];
}

void sub_1000B5380(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up fatal error timer to trigger %d seconds later.", v5, 8u);
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"forceSwitchToDemoMode:" selector:0 userInfo:0 repeats:*(a1 + 40)];
  [*(a1 + 32) setTimerForFatalError:v4];
}

void sub_1000B6028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B60B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000B60CC(uint64_t a1, int a2)
{
  v4 = sub_100063BEC();
  v5 = [*(a1 + 32) signpostId];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = *(a1 + 104);
      *buf = 67109120;
      LODWORD(v19) = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "Download File", "File download result: %{xcode:BOOLean}d", buf, 8u);
    }
  }

  if (a2)
  {
    v8 = [*(a1 + 40) fileSizeInCache:*(a1 + 48)];
    v9 = sub_100063BEC();
    v10 = [*(a1 + 32) signpostId];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *buf = 134217984;
        v19 = v8;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v11, "File Downloaded", "File download size: %{xcode:size-in-bytes}llu", buf, 0xCu);
      }
    }

    if (os_variant_has_internal_content())
    {
      v12 = *(a1 + 48);
      v16 = @"Hash";
      v17 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [*(*(*(a1 + 80) + 8) + 40) setObject:v13 forKey:*(a1 + 56)];
    }
  }

  else
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9DD4(a1, v14);
    }

    *(*(*(a1 + 88) + 8) + 24) = 0;
  }

  [*(a1 + 72) lock];
  --*(*(*(a1 + 96) + 8) + 24);
  [*(a1 + 72) broadcast];
  return [*(a1 + 72) unlock];
}

void sub_1000B6498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B64C0(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  if (*(a1 + 32))
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setError:v5];

    (*(*(a1 + 32) + 16))();
    v3 = v5;
  }
}

void sub_1000B6594(id a1)
{
  v1 = objc_alloc_init(MSDDemoPeerResponder);
  v2 = qword_1001A5A90;
  qword_1001A5A90 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B70C4(id a1, MSDServerResponse *a2)
{
  v2 = [(MSDServerResponse *)a2 error];
  if (v2)
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9E70(v2, v3);
    }
  }
}

id sub_1000B7FDC(uint64_t a1)
{
  [*(a1 + 32) saveOperationRequest:@"RevertSnapshot" requestFlag:0 completeBy:0];
  v2 = *(a1 + 40);
  if (v2 && [v2 BOOLValue])
  {
    v3 = *(a1 + 32);

    return [v3 revertSnapshot];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 revertSnapshotAndShutdown];
  }
}

void sub_1000BB80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

BOOL sub_1000BB88C(id a1, BMStoreEvent *a2)
{
  v2 = a2;
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA8B8();
  }

  v4 = [(BMStoreEvent *)v2 eventBody];
  [MSDBiomeAppInFocusStream printBMAppInfocusEvent:v4];

  v5 = [(BMStoreEvent *)v2 eventBody];

  v6 = [v5 starting];
  return v6;
}

NSCopying *__cdecl sub_1000BB930(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

uint64_t sub_1000BB980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BB998(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000EA938(v5, v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "+[MSDBiomeAppInFocusStream collectAppUsageDataFrom:to:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - Sink completed successfully.", &v8, 0xCu);
    }
  }
}

void sub_1000BBAB0(id *a1, void *a2)
{
  v26 = a2;
  v3 = [v26 startEvent];
  v4 = [v3 eventBody];

  v5 = [v26 endEvent];
  v6 = [v5 eventBody];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA9FC();
  }

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAA38();
  }

  [MSDBiomeAppInFocusStream printBMAppInfocusEvent:v4];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAA74();
  }

  [MSDBiomeAppInFocusStream printBMAppInfocusEvent:v6];
  v10 = [v4 absoluteTimestamp];
  v11 = [v6 absoluteTimestamp];
  v12 = v10;
  v13 = v11;
  v14 = a1[5];
  v15 = a1[6];
  v16 = v12;
  v17 = v13;
  v18 = v17;
  if (&OBJC_METACLASS___MSDPlatform.cache == -2664)
  {
    v23 = v16;
    v24 = v17;
LABEL_12:

    goto LABEL_13;
  }

  if ([MSDBiomeAppInFocusStream timeRange:v14 subsumes:v15, v16, v17])
  {
    v19 = [v4 launchReason];
    v20 = [v19 isEqualToString:@"com.apple.SpringBoard.transitionReason.externalrequest"];

    if ((v20 & 1) == 0)
    {
      v21 = v4;
      v22 = v6;
      v23 = v21;
      v24 = v22;
      v15 = [MSDBiomeAppInFocusStream eventSessionToAppUsage:v23, v24];
      [a1[4] addObject:v15];
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v23 bundleID];
        sub_1000EAAB0(v25, buf, v14);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

id sub_1000BBD90(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void sub_1000BBDCC(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_1000BBE08(id *a1, void *a2)
{
  v18 = a2;
  v2 = [v18 events];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v2 count])
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000EAB9C();
    }

    v11 = 0;
    v10 = 0;
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 eventBody];

  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAB08();
  }

  [MSDBiomeAppInFocusStream printBMAppInfocusEvent:v4];
  v6 = [v4 absoluteTimestamp];
  v7 = [v4 absoluteTimestamp];
  v8 = a1[5];
  v9 = a1[6];
  v10 = v6;
  v11 = v7;
  if (&OBJC_METACLASS___MSDPlatform.cache == -2664)
  {

    v14 = v11;
LABEL_13:

    goto LABEL_14;
  }

  if ([MSDBiomeAppInFocusStream timeRange:v8 subsumes:v9, v10, v11])
  {
    v12 = [v4 launchReason];
    v13 = [v12 isEqualToString:@"com.apple.SpringBoard.transitionReason.externalrequest"];

    if ((v13 & 1) == 0)
    {
      v14 = v4;
      v15 = [MSDBiomeAppInFocusStream eventSessionToAppUsage:v14, 0];
      [a1[4] addObject:v15];
      v16 = sub_100063A54();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v14 bundleID];
        sub_1000EAB44(v17, buf, v16);
      }

      v4 = v14;
      goto LABEL_13;
    }
  }

LABEL_14:
}

int64_t sub_1000BC104(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"sessionStartTime"];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"sessionStartTime"];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_1000BC620(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_1000BC690(id a1)
{
  v1 = objc_alloc_init(MSDLanguageAndRegionHelper);
  v2 = qword_1001A5A98;
  qword_1001A5A98 = v1;

  _objc_release_x1(v1, v2);
}

intptr_t sub_1000BCD88(uint64_t a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Siri language change complete", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000BFDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BFE20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BFE38(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(*(*(a1 + 80) + 8) + 40);
  if (v8)
  {
    v9 = [v8 serverType];
    v10 = [v9 isEqualToString:@"localCachingHub"];

    if (!v6)
    {
      if (v10)
      {
        v25 = [*(*(*(a1 + 80) + 8) + 40) urlSchema];
        [*(a1 + 32) setLocalHubURLSchema:v25];
      }

      v26 = +[MSDAnalyticsEventHandler sharedInstance];
      v27 = [*(*(*(a1 + 80) + 8) + 40) serverType];
      [v26 sendFileDownloadSourceEvent:v27];

      v28 = sub_100063BEC();
      v29 = [*(a1 + 32) signpostId];
      if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v30 = v29;
        if (os_signpost_enabled(v28))
        {
          v31 = [*(a1 + 40) fileInfo];
          v32 = [v31 fileHash];
          v33 = [*(*(*(a1 + 80) + 8) + 40) serverType];
          v38 = 138543618;
          v39 = v32;
          v40 = 2114;
          v41 = v33;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, v30, "Download File", "File with hash %{public}@ downloaded from %{public}@", &v38, 0x16u);
        }
      }

      goto LABEL_21;
    }

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
    }

    if (!v7 || ([v7 objectForKey:@"statusCode"], v11 = objc_claimAutoreleasedReturnValue(), v12 = *(*(a1 + 96) + 8), v13 = *(v12 + 40), *(v12 + 40) = v11, v13, !v11))
    {
      v14 = *(*(a1 + 96) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = &off_10017B2F0;
    }
  }

  v16 = [*(a1 + 48) nextTry];
  v17 = *(*(a1 + 80) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = *(*(*(a1 + 80) + 8) + 40);
  if (v19)
  {
    v20 = [v19 urlSchema];
    [*(a1 + 56) setUrlSchema:v20];

    v21 = [*(*(*(a1 + 80) + 8) + 40) credential];
    v22 = [v21 objectForKey:@"Headers"];
    [*(a1 + 56) setCredentialHeaders:v22];

    v23 = [*(*(*(a1 + 80) + 8) + 40) serverType];
    [*(a1 + 56) setServerType:v23];

    [*(a1 + 64) launchTaskWithInfo:*(a1 + 56)];
    goto LABEL_24;
  }

  v24 = sub_100063A54();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1000EB1BC(a1, v24);
  }

  if ([v6 code] == -1001 || objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "integerValue") == 408)
  {
    [*(a1 + 32) limitConcurrentRequests];
  }

LABEL_21:
  v34 = [*(a1 + 40) parseResponseForError:v6 andPayload:v7];
  v35 = *(*(a1 + 104) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  v37 = [*(*(*(a1 + 80) + 8) + 40) serverType];
  [*(*(*(a1 + 104) + 8) + 40) setDownloadSource:v37];

  [*(*(*(a1 + 104) + 8) + 40) setLocalHubError:*(*(*(a1 + 88) + 8) + 40)];
  if ([*(a1 + 72) tryCachingHub])
  {
    [*(a1 + 32) updateLocalHubReachability:objc_msgSend(*(a1 + 48) withRequest:"localHubReachable") andResponse:{*(a1 + 40), *(*(*(a1 + 104) + 8) + 40)}];
  }

  [*(a1 + 32) handleCompletionForDownloadRequest:*(a1 + 40) withResponse:*(*(*(a1 + 104) + 8) + 40) forSession:*(a1 + 64)];
LABEL_24:
}

void *sub_1000C1390(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = [NSError errorDomainMSDWithCode:a2 message:a3];
    *v3 = result;
  }

  return result;
}

void *sub_1000C13D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = [NSError errorDomainMSDWithCode:a2 message:a3 reason:a4];
    *v4 = result;
  }

  return result;
}

uint64_t sub_1000C1424(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && !*a1)
  {
    v8 = v5;
    v5 = [NSError errorDomainMSDWithCode:a2 message:v5];
    v6 = v8;
    *a1 = v5;
  }

  return _objc_release_x1(v5, v6);
}

void sub_1000C2160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Log upload completed. Error: %{public}@", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) completion];

  if (v5)
  {
    v6 = [*(a1 + 32) completion];
    v7 = [[MSDServerResponse alloc] initWithError:v3];
    (v6)[2](v6, v7);
  }
}

uint64_t sub_1000C228C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C461C(v0, qword_1001A5AB0);
  sub_1000C3F48(v0, qword_1001A5AB0);
  return Logger.init(subsystem:category:)();
}

uint64_t static MSDGreyMatter.checkAvailabilityWithCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000C2424(&qword_1001A5540, &qword_100112248);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  sub_1000C3638(0, 0, v8, &unk_100112258, v10);
}

uint64_t sub_1000C2424(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000C246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*(sub_1000C2424(&qword_1001A5570, &qword_100112290) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeModelsAvailability.ChangeSequence();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for GenerativeModelsAvailability.ChangeSequence.Iterator();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v16 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v5[21] = v16;
  v17 = *(v16 - 8);
  v5[22] = v17;
  v18 = *(v17 + 64) + 15;
  v5[23] = swift_task_alloc();
  v19 = type metadata accessor for GenerativeModelsAvailability();
  v5[24] = v19;
  v20 = *(v19 - 8);
  v5[25] = v20;
  v21 = *(v20 + 64) + 15;
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000C271C, 0, 0);
}

uint64_t sub_1000C271C()
{
  v75 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v3 + 8))(v2, v4);
  GenerativeModelsAvailability.availability.getter();
  v9 = v8[2];
  *(v0 + 216) = v9;
  *(v0 + 224) = (v8 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v6, v5, v7);
  v10 = v8[11];
  *(v0 + 232) = v10;
  *(v0 + 240) = (v8 + 11) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  LODWORD(v1) = v10(v6, v7);
  LODWORD(v2) = enum case for GenerativeModelsAvailability.Availability.available(_:);
  *(v0 + 288) = enum case for GenerativeModelsAvailability.Availability.available(_:);
  v11 = v8[1];
  *(v0 + 248) = v11;
  *(v0 + 256) = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v7);
  if (v1 == v2)
  {
    if (qword_1001A5AA8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 160);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    v15 = type metadata accessor for Logger();
    sub_1000C3F48(v15, qword_1001A5AB0);
    v9(v13, v12, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    v20 = *(v0 + 96);
    if (v18)
    {
      v21 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74 = v71;
      *v21 = 136315138;
      sub_1000C4528(&qword_1001A5588, &type metadata accessor for GenerativeModelsAvailability.Availability);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v11(v19, v20);
      v25 = sub_1000C3F80(v22, v24, &v74);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "GM is already available: %s", v21, 0xCu);
      sub_1000C4570(v71);
    }

    else
    {

      v26 = (v11)(v19, v20);
    }

    v41 = *(v0 + 248);
    v42 = *(v0 + 200);
    v43 = *(v0 + 208);
    v45 = *(v0 + 184);
    v44 = *(v0 + 192);
    v46 = *(v0 + 160);
    v64 = *(v0 + 152);
    v65 = *(v0 + 144);
    v66 = *(v0 + 136);
    v67 = *(v0 + 128);
    v68 = *(v0 + 120);
    v69 = *(v0 + 112);
    v47 = *(v0 + 88);
    v48 = *(v0 + 96);
    v70 = *(v0 + 64);
    v49 = *(v0 + 32);
    v73 = *(v0 + 40);
    v50 = *(v0 + 104) + 8;
    (*(v0 + 24))(v26);
    v41(v46, v48);
    (*(v42 + 8))(v43, v44);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    if (qword_1001A5AA8 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 160);
    v28 = *(v0 + 144);
    v29 = *(v0 + 96);
    v30 = type metadata accessor for Logger();
    *(v0 + 264) = sub_1000C3F48(v30, qword_1001A5AB0);
    v9(v28, v27, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 144);
    v35 = *(v0 + 96);
    if (v33)
    {
      v36 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = v72;
      *v36 = 136315138;
      sub_1000C4528(&qword_1001A5588, &type metadata accessor for GenerativeModelsAvailability.Availability);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v11(v34, v35);
      v40 = sub_1000C3F80(v37, v39, &v74);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "GM is not available: %s Waiting for GM availability.", v36, 0xCu);
      sub_1000C4570(v72);
    }

    else
    {

      v11(v34, v35);
    }

    v53 = *(v0 + 208);
    v54 = *(v0 + 88);
    v56 = *(v0 + 56);
    v55 = *(v0 + 64);
    v57 = *(v0 + 48);
    GenerativeModelsAvailability.changes.getter();
    GenerativeModelsAvailability.ChangeSequence.makeAsyncIterator()();
    (*(v56 + 8))(v55, v57);
    v58 = sub_1000C4528(&qword_1001A5578, &type metadata accessor for GenerativeModelsAvailability.ChangeSequence.Iterator);
    v59 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v60 = swift_task_alloc();
    *(v0 + 272) = v60;
    *v60 = v0;
    v60[1] = sub_1000C2DAC;
    v61 = *(v0 + 88);
    v62 = *(v0 + 72);
    v63 = *(v0 + 40);

    return dispatch thunk of AsyncIteratorProtocol.next()(v63, v62, v58);
  }
}

uint64_t sub_1000C2DAC()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1000C33E0;
  }

  else
  {
    v3 = sub_1000C2EC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C2EDC()
{
  v74 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
LABEL_14:
    v52 = *(v0 + 248);
    v53 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 184);
    v55 = *(v0 + 192);
    v57 = *(v0 + 160);
    v64 = *(v0 + 152);
    v65 = *(v0 + 144);
    v66 = *(v0 + 136);
    v67 = *(v0 + 128);
    v68 = *(v0 + 120);
    v69 = *(v0 + 112);
    v58 = *(v0 + 88);
    v59 = *(v0 + 96);
    v70 = *(v0 + 64);
    v60 = *(v0 + 32);
    v72 = *(v0 + 40);
    v61 = *(v0 + 104) + 8;
    (*(v0 + 24))(v4);
    v52(v57, v59);
    (*(v53 + 8))(v54, v55);

    v62 = *(v0 + 8);

    return v62();
  }

  v5 = *(v0 + 264);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  (*(v2 + 32))(v8, v3, v1);
  v7(v9, v8, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 248);
  v14 = *(v0 + 120);
  v15 = *(v0 + 96);
  if (v12)
  {
    v71 = *(v0 + 256);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v73 = v17;
    *v16 = 136315138;
    sub_1000C4528(&qword_1001A5588, &type metadata accessor for GenerativeModelsAvailability.Availability);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v13(v14, v15);
    v21 = sub_1000C3F80(v18, v20, &v73);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received updated availability: %s", v16, 0xCu);
    sub_1000C4570(v17);
  }

  else
  {

    v13(v14, v15);
  }

  v22 = *(v0 + 288);
  v24 = *(v0 + 232);
  v23 = *(v0 + 240);
  v25 = *(v0 + 224);
  v26 = *(v0 + 112);
  v27 = *(v0 + 96);
  (*(v0 + 216))(v26, *(v0 + 128), v27);
  v28 = v24(v26, v27);
  v29 = *(v0 + 112);
  v30 = *(v0 + 96);
  if (v28 == v22)
  {
    v31 = *(v0 + 256);
    v32 = *(v0 + 264);
    (*(v0 + 248))(*(v0 + 112), *(v0 + 96));
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 248);
    v37 = *(v0 + 256);
    v38 = *(v0 + 128);
    v40 = *(v0 + 88);
    v39 = *(v0 + 96);
    v41 = *(v0 + 72);
    v42 = *(v0 + 80);
    if (v35)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "GM is now available.", v43, 2u);
    }

    v36(v38, v39);
    v4 = (*(v42 + 8))(v40, v41);
    goto LABEL_14;
  }

  v45 = *(v0 + 248);
  v44 = *(v0 + 256);
  v45(*(v0 + 128), *(v0 + 96));
  v45(v29, v30);
  v46 = sub_1000C4528(&qword_1001A5578, &type metadata accessor for GenerativeModelsAvailability.ChangeSequence.Iterator);
  v47 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v48 = swift_task_alloc();
  *(v0 + 272) = v48;
  *v48 = v0;
  v48[1] = sub_1000C2DAC;
  v49 = *(v0 + 88);
  v50 = *(v0 + 72);
  v51 = *(v0 + 40);

  return dispatch thunk of AsyncIteratorProtocol.next()(v51, v50, v46);
}

uint64_t sub_1000C33E0()
{
  *(v0 + 16) = *(v0 + 280);
  sub_1000C2424(&qword_1001A5580, &qword_100112298);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000C346C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C34AC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C3544;

  return sub_1000C246C(v4, v5, v6, v2, v3);
}

uint64_t sub_1000C3544()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000C3638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C2424(&qword_1001A5540, &qword_100112248);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000C3AD8(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000C3B48(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000C3B48(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000C3B48(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id MSDGreyMatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSDGreyMatter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id MSDGreyMatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C3A90()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C3AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C2424(&qword_1001A5540, &qword_100112248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C3B48(uint64_t a1)
{
  v2 = sub_1000C2424(&qword_1001A5540, &qword_100112248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C3BB0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C3CA8;

  return v7(a1);
}

uint64_t sub_1000C3CA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000C3DA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C4684;

  return sub_1000C3BB0(a1, v5);
}

uint64_t sub_1000C3E58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C3E90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C3544;

  return sub_1000C3BB0(a1, v5);
}

uint64_t sub_1000C3F48(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000C3F80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000C404C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000C45BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000C4570(v11);
  return v7;
}

unint64_t sub_1000C404C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000C4158(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000C4158(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000C41A4(a1, a2);
  sub_1000C42D4(&off_10016C6D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000C41A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000C43C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000C43C0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000C42D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000C4434(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000C43C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000C2424(&qword_1001A5590, &qword_1001122A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000C4434(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C2424(&qword_1001A5590, &qword_1001122A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000C4528(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C4570(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000C45BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000C461C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1000C46CC(void *a1, id *a2, void *a3)
{
  v6 = +[MSDDemoUpdateStatusHub sharedInstance];
  [v6 demoUpdateFailed:a1];

  result = [a1 code];
  if (result == 3727741184)
  {
    result = [*a2 forceSwitchToDemoModeIfNeeded];
  }

  *a3 = a1;
  return result;
}

void sub_1000C48F8(id *a1, void *a2, uint64_t a3, void *a4)
{
  if ([*a1 waitingForCommand])
  {
    v8 = +[MSDUIHelper sharedInstance];
    [v8 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:0];

    [*a1 startWaitingForCommandTimer];
    v9 = +[MSDMailProcessor sharedInstance];
    [v9 setWaitingForCommand:1];
  }

  else
  {
    v10 = +[MSDProgressUpdater sharedInstance];
    [v10 updateStage:100];

    if (a3)
    {
      [a2 demoUpdateCompleted:a3];
    }

    [*a1 deleteOperationRequest];
  }

  *a4 = 0;
}

void sub_1000C49D0(id *a1)
{
  v2 = +[MSDProgressUpdater sharedInstance];
  v3 = [v2 backgroundBundle];
  if ([v3 bundleState] == 1)
  {

LABEL_4:
    [*a1 setBackgroundDownloadState:4];
    [*a1 setBackgroundDownloadActive:0];
    goto LABEL_5;
  }

  v4 = +[MSDProgressUpdater sharedInstance];
  v5 = [v4 backgroundBundle];
  v6 = [v5 bundleState];

  if (v6 == 2)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = +[MSDOSUpdaterController sharedInstance];
  [v7 startOSUpdate];
}

void sub_1000C4AA8()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Unknown demo install state", v1, 2u);
  }
}

id sub_1000C4B10(uint64_t a1, id *a2, void *a3)
{
  v6 = +[MSDUIHelper sharedInstance];
  [v6 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:0];

  if (*(*(*a1 + 8) + 24) == 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 9;
  }

  result = [*a2 switchModeImmediately:v7];
  *a3 = 0;
  return result;
}

void sub_1000C4C7C(NSObject *a1, void *a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "+[MSDAppIcon getIconImageForApp:withSize:andScale:]";
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s - getCGImageForImageDescriptor failed.", &v6, 0xCu);
  }
}

void sub_1000C4D3C(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 136315394;
    sub_1000055D4();
    v5 = a2;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s - Failed to create icon image descriptor for app: %{public}@", v4, 0x16u);
  }
}

void sub_1000C4E64(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[MSDAppIcon getIconImageForApp:withSize:andScale:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - NULL bundleID", &v1, 0xCu);
}

void sub_1000C4FA4()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v2, v3, "getifaddrs failed - %s", v4, v5, v6, v7, v8);
  }
}

void sub_1000C5040(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing interface name", buf, 2u);
}

void sub_1000C5080()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v2, v3, "broadcast addr - inet_ntop failed - %s", v4, v5, v6, v7, v8);
  }
}

void sub_1000C511C(NSObject **a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = __error();
    strerror(*v3);
    sub_100006E3C();
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "net mask - inet_ntop failed - %s", v4, 0xCu);
  }

  *a1 = v2;
}

void sub_1000C51CC()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v2, v3, "ip address - inet_ntop failed - %s", v4, v5, v6, v7, v8);
  }
}

void sub_1000C5374()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000083B8();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_1000C5408()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000083B8();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_1000C549C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000083B8();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_1000C5530(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000083A0(v3))
  {
    v9 = [a1 localizedDescription];
    sub_100008384();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1000C561C()
{
  sub_1000083C4();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000C570C()
{
  sub_1000083C4();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000C577C()
{
  sub_1000083C4();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000C57EC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to copy file from content cache: %{public}@", &v2, 0xCu);
}

void sub_1000C5864(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to remove configuration profile from staging: %{public}@", &v4, 0xCu);
}

void sub_1000C59D0(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to install configuration profile. error: %{public}@", &v4, 0xCu);
  }
}

void sub_1000C5A6C()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to remove configuration profile.", v1, 2u);
  }
}

void sub_1000C5C34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Component retrying: %@", &v2, 0xCu);
}

void sub_1000C5CAC(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "DEBUG - Failed to get kMGQDiskUsageAmountDataReserved.  Default to %d percent of disk's free space.", v1, 8u);
}

void sub_1000C5D40(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v4, v5, "S3 URL not available. Informing vhub of the error", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void sub_1000C5D98(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v4, v5, "There is a log upload in progress, ignoring this request", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void sub_1000C5DF0(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000C5FB4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000C6074(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C6100()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C61A4()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6214()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6284()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C62F4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C6380(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C640C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "iCloud account is not provisioned to use this feature.", buf, 2u);
}

void sub_1000C6480(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C6540(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C6600(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to obtain 'Find My' wipe token: %{public}@", buf, 0xCu);
}

void sub_1000C678C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create CKKSControl object: %{public}@", buf, 0xCu);
}

void sub_1000C67E4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000C68D8()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C6C1C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR - Provisioning profile does not exist:  %{public}@", &v2, 0xCu);
}

void sub_1000C6C94(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR - File:  %{public}@ is not a valid provisioning profile.", &v2, 0xCu);
}

void sub_1000C6D20(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100012C7C(&_mh_execute_header, v1, v2, "Failed to rollover analytics logs", v3, v4, v5, v6, 0);
  }
}

void sub_1000C6D70(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100012C7C(&_mh_execute_header, v1, v2, "Failed to submit analytics logs", v3, v4, v5, v6, 0);
  }
}

void sub_1000C6DC0(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100012C7C(&_mh_execute_header, v1, v2, "Failed to disable sampling for all transforms", v3, v4, v5, v6, 0);
  }
}

void sub_1000C7834()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000C78D8()
{
  v3[0] = 136315394;
  sub_1000055D4();
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v2, "%s - ERROR - Missing Info section for app:  %{public}@", v3);
}

void sub_1000C7954()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000C79F8()
{
  v3[0] = 136315394;
  sub_1000055D4();
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v2, "%s - Missing Info section for stand-alone package:  %{public}@", v3);
}

void sub_1000C7A74()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_1000C7B2C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000C7BD0()
{
  v3[0] = 136315394;
  sub_1000055D4();
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v2, "%s - Missing app object for app:  %{public}@", v3);
}

void sub_1000C7C4C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000C7CF0()
{
  v3[0] = 136315394;
  sub_1000055D4();
  v4 = v0;
  sub_1000159F8(&_mh_execute_header, v1, v2, "%s - Missing package object for stand-alone package:  %{public}@", v3);
}

void sub_1000C7D6C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  sub_1000159F8(&_mh_execute_header, a3, a3, "Info section is missing for item %{public}@ under component %{public}@.", &v3);
}

void sub_1000C7DEC()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000C7E88()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000C7F38()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000C7FE0(NSObject **a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 138543618;
    sub_1000055D4();
    v5 = @"locale";
    sub_1000159F8(&_mh_execute_header, v2, v3, "No %{public}@ key in component %{public}@", v4);
  }

  *a1 = v2;
}

void sub_1000C8094(NSObject **a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 138543618;
    sub_1000055D4();
    v5 = @"BackupData";
    sub_1000159F8(&_mh_execute_header, v2, v3, "No component %{public}@ under section %{public}@", v4);
  }

  *a1 = v2;
}

void sub_1000C831C()
{
  v5 = *__error();
  sub_100008384();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000C83CC()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000C846C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000C8508(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000C85A4()
{
  v1[0] = 136315394;
  sub_100016B48();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s - file %s is sqlite3", v1, 0x16u);
}

void sub_1000C8624()
{
  sub_100006E3C();
  sub_100016B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000C86A0()
{
  v3[0] = 136315650;
  sub_100016B48();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s - SQLite3 file %s was copied to %s using SQLite3 libraries", v3, 0x20u);
}

void sub_1000C872C()
{
  v5 = *__error();
  sub_100008384();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C87C4(uint64_t a1, void *a2)
{
  sub_100016B34(a1, a2);
  v7 = [NSString stringWithFormat:@"Could not retrieve file handle for file %@", v6];
  sub_100016B5C(v7);
  v8 = *v3;
  *v2 = *v3;
  v9 = v8;
}

void sub_1000C8914(uint64_t a1, void *a2)
{
  sub_100016B34(a1, a2);
  v7 = [NSString stringWithFormat:@"Failed to copy db with status %d", v6];
  sub_100016B5C(v7);
  v8 = *v3;
  *v2 = *v3;
  v9 = v8;
}

void sub_1000C89EC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to close the SQLite backup connection: %d", v2, 8u);
}

void sub_1000C8A64()
{
  sub_100016AF4();
  sub_100016B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C8AD4()
{
  sub_100006E3C();
  sub_100016B0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000C8BC4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "With options: %{public}@", &v2, 0xCu);
}

void sub_1000C8C80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9 = [a2 localizedDescription];
  sub_100017378(&_mh_execute_header, v3, v4, "Failed to launch app: %{public}@ error: %{public}@", v5, v6, v7, v8, 2u);
}

void sub_1000C8D24(uint64_t a1, void *a2)
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v10 = [a2 localizedDescription];
    sub_100017378(&_mh_execute_header, v4, v5, "Failed to terminate app: %{public}@ error: %{public}@", v6, v7, v8, v9, 2u);
  }
}

void sub_1000C8DE8()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToRemoveOnRestore under CameraRollDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C8E50()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackup under CameraRollDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C8EB8()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToOnlyBackupEncrypted under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C8F20()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToRestoreOnly under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C8F88()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackupInMegaBackup under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C8FF0()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackupToService under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C9058()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToRemoveOnRestore under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C90C0()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsNotToBackupToService under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C912C()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsToOnlyBackupEncrypted under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9198()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsToRestoreOnly under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9204()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsToBackupAndRestore under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9270()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup DoNotDisturb DB - Cannot find RelativePathsToOnlyBackupEncrypted under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C92DC()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup DoNotDisturb DB - Cannot find RelativePathsToRestoreOnly under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9348()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Backup DoNotDisturb DB - Cannot find RelativePathsToBackupAndRestore under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C93B4()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToBackupAndRestore under HomeDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C941C()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackup under HomeDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C9484()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RelativePathsToBackupAndRestore under MediaDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C94F0()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToBackup under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C955C()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToRestore under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C95C8()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToRemoveIfNotRestored under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9634()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RelativePathsToRemoveOnRestore under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C96A0()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToBackup under SystemPreferencesDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C970C()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find KeyboardDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9778()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find SystemPreferencesDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C97E4()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find RootDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9850()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find MediaDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C98BC()
{
  sub_100018904();
  v4 = sub_100063A54();
  if (sub_100018960(v4))
  {
    sub_100018914(&_mh_execute_header, v5, v6, "Cannot find KeychainDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_1000C9928()
{
  sub_100018954();
  v3 = sub_100063A54();
  if (sub_100018978(v3))
  {
    sub_100018934(&_mh_execute_header, v4, v5, "Cannot find HomeDomain, or in wrong format.", v6, v7, v8, v9, 0);
  }
}

void sub_1000C9990(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Cannot find CameraRollDomain, or in wrong format.", v3, 2u);
  }
}

void sub_1000C9A04()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Cannot find system domains.", v1, 2u);
  }
}

void sub_1000C9A6C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot load Domains.plist: %{public}@.", &v2, 0xCu);
}

void sub_1000C9AE4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MSDComponent.m" lineNumber:118 description:@"Observer does not conform to protocol"];
}

void sub_1000C9D60()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000C9E00()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_1000C9EB8(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 length];
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1000C9F78()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100017378(&_mh_execute_header, v1, v2, "Failed to grant permission for resource: %{public}@ to bundleID: %{public}@", v3, v4, v5, v6, 2u);
  }
}

void sub_1000CA15C(void *a1)
{
  v7 = [a1 localizedDescription];
  sub_100017378(&_mh_execute_header, v1, v2, "%s - Failed to save privacy configuration: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_1000CA1F8()
{
  sub_10001DA90();
  v1 = [v0 getName];
  sub_10001DA6C();
  sub_10001DA80();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000CA298()
{
  sub_10001DA90();
  v1 = [v0 getName];
  sub_10001DA6C();
  sub_10001DA80();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000CA338()
{
  sub_10001DA90();
  v1 = [v0 getName];
  sub_10001DA6C();
  sub_10001DA80();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000CA3D8()
{
  sub_10001DA90();
  v1 = [v0 getName];
  sub_10001DA6C();
  sub_10001DA80();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000CA478(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 getName];
    sub_10001DA6C();
    sub_100008384();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1000CA538(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v4, v5, "%s - Missing manifest version in bundle info.", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

void sub_1000CA5D0(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v4, v5, "%s - Bundle tracker hasn't been initialized yet.", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

void sub_1000CA668(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 criticalComponents];
  v7 = 134218496;
  v8 = a2;
  v9 = 2048;
  v10 = [v6 count];
  v11 = 2048;
  v12 = [a1 totalComponents];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Total Components: %ld. Critical Update: %ld, Full Update: %ld", &v7, 0x20u);
}

void sub_1000CA780(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000CA810(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000CA8A0(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [a2 localizedDescription];
  sub_100022404();
  sub_100008384();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000CA954(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100022404();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CA9F8(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100022404();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000CAAB0(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000CABC8(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CAC1C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CAC78(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CB880()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000CB914(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100024E68();
    sub_100024E38();
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ERROR - Missing file hash value for profile:  %{public}@ with UUID:  %{public}@", v7, 0x16u);
  }
}

void sub_1000CB9D8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100024E38();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000CBA7C()
{
  sub_100006E3C();
  sub_100024E38();
  v2 = @"ConfigurationProfiles";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "ERROR - Missing data for profile:  %{public}@ under component:  %{public}@", v1, 0x16u);
}

void sub_1000CBB70()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CBC34(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (sub_100024E50(v4))
  {
    sub_100024E38();
    sub_100024E88(&_mh_execute_header, v5, v6, "%s - Failed to retrieve master manifest data for %{public}@", v7, v8, v9, v10, 2u);
  }

  *a2 = v2;
}

void sub_1000CBCDC()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E68();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000CBDD8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100024E38();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000CBE84(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (sub_100024E50(v4))
  {
    sub_100024E38();
    sub_100024E88(&_mh_execute_header, v5, v6, "ERROR - Missing data for profile:  %{public}@ under component:  %{public}@", v7, v8, v9, v10, 2u);
  }

  *a2 = v2;
}

void sub_1000CBF40()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "%{public}s - Key is nil.", v3, v4, v5, v6, 2u);
  }
}

void sub_1000CBFE0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Setting preference %{public}@:%{public}@", &v3, 0x16u);
}

void sub_1000CC068()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "%{public}s - Key is nil.", v3, v4, v5, v6, 2u);
  }
}

void sub_1000CC108()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "%{public}s - Keys array pointer is nil.", v3, v4, v5, v6, 2u);
  }
}

void sub_1000CC3FC(void *a1, NSObject *a2)
{
  v3 = [a1 info];
  v4 = [v3 description];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed trust evaluation for task: %{public}@", &v5, 0xCu);
}

void sub_1000CC528(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive app data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC620(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive environment data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC6A4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive test script data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC728(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive GK results data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC7AC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive GK metrics data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC864(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive IPD status data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC950(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to unarchive AX settings data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CC9D4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to archive AX settings: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CCA58(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDDemoPeerCommander: Failed to archive WiFi settings: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000CCADC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDDemoPeerCommander setLanguageAndRegionOnPeer:languageCode:regionCode:withCompletion:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Both language and region codes must be specified.", &v1, 0xCu);
}

void sub_1000CCB74(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to start sync session observer: %{public}@", &v4, 0xCu);
}

void sub_1000CCC0C(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v4, v5, "Failed to send IDS command to paired watch.", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void sub_1000CCC64(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v4, v5, "Failed to execute IDS command on paired watch.", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void sub_1000CCD10()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CCDC0()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100012C7C(&_mh_execute_header, v1, v2, "No need to restore bt pairing record.", v3, v4, v5, v6, 0);
  }
}

void sub_1000CCE1C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100012C7C(&_mh_execute_header, v2, v3, "Failed to load bt keychain info from demo volume.", v4, v5, v6, v7, 0);
  }
}

void sub_1000CCE70()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CCEE0()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CCF50()
{
  sub_100006E3C();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to copy BT File: %{public}@. Error: %{public}@", v2, 0x16u);
}

void sub_1000CCFD4()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CD058(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received the following payload in push notification: %{public}@", &v2, 0xCu);
}

void sub_1000CD0D0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDPushNotificationHandler connection:didReceiveIncomingMessage:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Failed to flash the device.", &v1, 0xCu);
}

void sub_1000CD1DC(void *a1, NSObject *a2)
{
  v3 = [a1 apsToken];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received token from APNS framework: %{public}@", &v4, 0xCu);
}

void sub_1000CD394(void *a1, void *a2)
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to build components for removing app.", v4, 2u);
  }
}

void sub_1000CD40C(void *a1, char *a2)
{
  v4 = +[MSDHelperAgent sharedInstance];
  v5 = +[NSFileManager defaultManager];
  v6 = [a1 context];
  v7 = [v6 stashedStagingRootPath];

  if (+[MSDOperationContext downloadOnly](MSDOperationContext, "downloadOnly") || ([v5 fileExistsAtPath:v7] & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found container already stashed at: %{public}@", &v15, 0xCu);
  }

  v9 = [a1 _restoreStashedStagingToSecondaryStaging];
  if ((os_variant_has_internal_content() & 1) == 0)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = [a1 context];
    v13 = 1;
    [v14 setRestored:1];

    [a1 setSkipped:1];
    goto LABEL_14;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = +[MSDTestPreferences sharedInstance];
  v11 = [v10 bailOnStashedStagingRestoreFailure];

  if ((v11 & 1) == 0)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Treat stashed staging restore failure as fatal error!", &v15, 2u);
  }

  v13 = 0;
LABEL_14:
  *a2 = v13;
}

void sub_1000CD60C(void *a1, void *a2, void *a3)
{
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100033CD8(&_mh_execute_header, v6, v8, "Failed to create device manifest folder: %{public}@", v9);
  }
}

void sub_1000CD724()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "No content root path set.", v1, 2u);
  }
}

void sub_1000CD790(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = a1;
    sub_100033CD8(&_mh_execute_header, v4, v5, "Cannot find metadata for path %{public}@", &v6);
  }

  objc_autoreleasePoolPop(a2);
}

void sub_1000CD8B0(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100033CD8(&_mh_execute_header, a2, v4, "Failed to move pseudo content root path: %{public}@", v5);
}

void sub_1000CD9EC()
{
  v1[0] = 136315394;
  sub_100033FA4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Missing Info.plist from bundle:  %{public}@", v1, 0x16u);
}

void sub_1000CDA6C()
{
  v1[0] = 136315394;
  sub_100033FA4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Failed to load bundle:  %{public}@", v1, 0x16u);
}

void sub_1000CDB00(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v2, v3, "Container does not exist for containerIdentifier:%{public}@", v4, v5, v6, v7, 2u);
  }
}

void sub_1000CDB94(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a container for containerIdentifier:%{public}@", &v2, 0xCu);
}

void sub_1000CDC0C(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "data blob size larger than allowed for 3rd party apps.:%lu", buf, 0xCu);
}

void sub_1000CDC54(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v2, v3, "Trying to retrieve data without having container:%{public}@", v4, v5, v6, v7, 2u);
  }
}

void sub_1000CDD40()
{
  v1 = sub_100063B64();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000CDDDC()
{
  v1 = sub_100063B64();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000CDE78()
{
  v1 = sub_100063B64();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CDED4()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CDF10()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CDF4C()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CDF88()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CDFC4()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CE000()
{
  sub_100006E3C();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CE170()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void sub_1000CE1D0(NSObject *a1)
{
  if (sub_10003ADE0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000CE268()
{
  sub_10003ADF8();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE2E4()
{
  sub_10003ADF8();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE3EC()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

void sub_1000CE448()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Ignore second cache bundle install request as it's already started.", v3, 2u);
  }

  *v0 = v1;
}

void sub_1000CE4A8()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CE598()
{
  sub_100018954();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

void sub_1000CE5F4()
{
  sub_100018954();
  if (sub_10003ADE0(v0))
  {
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10003ADD4();
}

void sub_1000CE684()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CE6C0()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CE6FC(NSObject *a1, void *a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to get regionCode.", v6, 2u);
  }
}

void sub_1000CE778(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CE8C8()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CE904()
{
  sub_100006E3C();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unexpected value type for DeviceOptions (subkey: %{public}s): %{public}@", v2, 0x16u);
}

void sub_1000CE988(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000CE9DC()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CEA18()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CEA54()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CEA90()
{
  sub_10003ADC4();
  if (sub_10003ADE0(v0))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_10003ADD4();
}

void sub_1000CEB28()
{
  sub_100006E3C();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CEB98()
{
  sub_100006E3C();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CEC08(id *a1, uint64_t a2)
{
  [*a1 setDemoEnrollmentFlag:@"enrollmentFailed"];
  v3 = +[MSDUIHelper sharedInstance];
  [v3 stopFullScreenUI:*(*(*a2 + 8) + 40)];
}

void sub_1000CEC60()
{
  v0 = sub_100063B64();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "DemoPrepare";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Skipping %s request because it already ran once", &v1, 0xCu);
  }
}

void sub_1000CED08()
{
  sub_100018954();
  v2 = [NSError errorDomainMSDWithCode:3727741072 message:@"Failed to configure WiFi."];
  v3 = *(*(v1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000CED60()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CED9C(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000CEDEC()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CEE28()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CEE90()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000CEECC()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_1000CEF08(void *a1, void *a2, uint64_t *a3)
{
  v5 = 1;
  [a2 setRetryable:1];
  v6 = [a2 error];

  if (!v6)
  {
    v7 = [NSError errorDomainMSDWithCode:3727744736 message:@"An error has occurred."];
    *a3 = v7;
    [a2 setError:v7];
    return 0;
  }

  return v5;
}

void sub_1000CEFAC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MSDAirPlayAssistedSender: Failed to deserialize input data: %{public}@", buf, 0xCu);
}

void sub_1000CF004(void *a1)
{
  v6 = [a1 _NSStringFromSenderState:{objc_msgSend(a1, "state")}];
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000CF1BC()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000CF220()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void sub_1000CF2C0()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void sub_1000CF68C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MSDIDSHandler.m" lineNumber:48 description:@"Delegate does not conform to MSDIDSHandlerDelegate protocol."];
}

void sub_1000CF6F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to send ids message to paired device. Identifier: %{public}@, Error: %{public}@", &v3, 0x16u);
}

void sub_1000CF778(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100017378(&_mh_execute_header, v3, v4, "Failed to send IDS response message. Identifier: %{public}@, Error: %{public}@", v5, v6, v7, v8, v9);
}

void sub_1000CF80C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100017378(&_mh_execute_header, v3, v4, "Failed to send IDS message. Identifier: %{public}@, Error: %{public}@", v5, v6, v7, v8, v9);
}

void sub_1000CFA80(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 description];
  v8[0] = 136315650;
  sub_1000055D4();
  v9 = a1;
  v10 = v6;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s - Error writing empty app switcher model to path %{public}@, with error %{public}@", v8, 0x20u);
}

void sub_1000CFB3C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100033FA4();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000CFBD4()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000CFC38()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000CFC9C()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CFD0C()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000CFDFC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000CFE88(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D0094()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000D0138(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[MSDAVFlashlight flash:]";
  v4 = 1026;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s - INFO - duration:  %{public}d", &v2, 0x12u);
}

void sub_1000D01C4(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = [a1 localizedDescription];
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000D0294(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = [a1 localizedDescription];
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000D0624()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D0694()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D0704()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D0740()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D077C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D07D8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D0870()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D0954()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D09C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100041DD8(&_mh_execute_header, a2, a3, "Failed to remove paired peer: '%{public}@' - Error: '%{public}@'", *v3, *&v3[8], *&v3[16]);
}

void sub_1000D0A40()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D0A7C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D0AB8(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D0B0C(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = a1;
}

void sub_1000D0B6C(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*a2 + 40);
    sub_10003AD94();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  *a3 = a1;
}

void sub_1000D0C18()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D0C54(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10003AD94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = a1;
}

void sub_1000D0CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  sub_100006E3C();
  sub_100041DD8(&_mh_execute_header, v3, v4, "MSDDemoPeerPairingManager: Failed to save paired peer: %{public}@ error: %{public}@");
}

void sub_1000D0D30()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D1094(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000D1124()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D1160()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D119C(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000083A0(v3))
  {
    v4 = [a1 fileHash];
    v10 = [a1 savePath];
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  }
}

void sub_1000D12F4(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Cannot create URL request.", v5, 2u);
  }
}

void sub_1000D1378(void *a1)
{
  v6 = [a1 urlSchema];
  sub_100008384();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000D1480()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D14BC()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D14F8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D1590()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D15EC(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000D1698(uint64_t a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    v8 = 138543874;
    v9 = a1;
    v10 = 1024;
    v11 = v5;
    v12 = 2082;
    v13 = v7;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not create file at %{public}@ (%d, %{public}s)", &v8, 0x1Cu);
  }

  *a2 = v4;
}

void sub_1000D1778()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D1824(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v4, v5, "Failed to create parent directory: %{public}@", v6, v7, v8, v9, v10);
  }
}

void sub_1000D18CC(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 localizedDescription];
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v5, v6, "Failed to write wallpaper settings to file: %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000D196C(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 localizedDescription];
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v5, v6, "Failed to load wallpaper settings from file: %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000D1A0C(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100006E1C(&_mh_execute_header, v4, v5, "Failed to write wallpaper settings to file: %{public}@", v6, v7, v8, v9, v10);
  }
}

void sub_1000D1AF8(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to delete poster data store: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000D1C10(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_100006E3C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MSDRapportDeviceExplorer: Failed to activate device discovery client: %{public}@", v4, 0xCu);
}

void sub_1000D1CA4()
{
  sub_100006E3C();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D1D14()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D1D50()
{
  sub_1000123DC();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D1D8C()
{
  sub_100006E3C();
  sub_10003ADB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D1DFC()
{
  sub_100006E3C();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "MSDRapportDeviceExplorer: RPCompanionLinkDevice changed: <%{public}@> change flags: %u", v2, 0x12u);
}

void sub_1000D2470()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D2508(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1000D2558(NSObject *a1, int a2, int a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = a2;
    v7 = 1024;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, "Cannot change mode from %d to %d", v6, 0xEu);
  }
}

void sub_1000D2608(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D265C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D26B8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D2714()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D27AC()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D2850(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Not able to create mobilestoredemocache.", v4, 2u);
  }

  *a2 = a1;
}

void sub_1000D28B8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100033CD8(&_mh_execute_header, a3, a3, "Not able to create dummy preferences file:%{public}@", a2);
}

void sub_1000D2908()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_1000D29F4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D2A80()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D2AF0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D2B7C()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "mode and allowChange should not be nil", v1, 2u);
  }
}

void sub_1000D2C84()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D2E18(void *a1)
{
  v1 = [a1 description];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D2ED8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_1000D3040(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000D30EC(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000083A0(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1000D3194(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D3294(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D32E8()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D3384()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D33E0()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D34B0()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_1000D3568(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000D36D0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000055D4();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000D3814(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D393C()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D3998()
{
  sub_1000055D4();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000D3A18(NSObject *a1)
{
  if (sub_1000083A0(a1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D3AA0()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D3CE4()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    v2 = +[MSDPreferencesFile preferencesFilePath];
    sub_100006E3C();
    sub_100008384();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1000D3E00(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void sub_1000D3E94()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D3F6C()
{
  v5 = *__error();
  sub_100008384();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000D4394(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Entitlement check failed for %{public}@.", &v2, 0xCu);
}

void sub_1000D440C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Skipping entitlement check for file:%{public}@", &v2, 0xCu);
}

void sub_1000D46FC(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 20;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Timed out after %d minutes waiting for GM availability.", v1, 8u);
}

void sub_1000D477C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 absoluteString];
  v6 = [v5 stringByRemovingPercentEncoding];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Cannot read data from %{public}@ - %{public}@.", &v7, 0x16u);
}

void sub_1000D483C(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 absoluteString];
    v4 = [v3 stringByRemovingPercentEncoding];
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Cannot read file %{public}@", &v5, 0xCu);
  }
}

void sub_1000D4BD8(void *a1, void **a2, void **a3)
{
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Device not eligible for DCOTA, demod should become dormant...", v9, 2u);
  }

  *a2 = a1;
  sub_1000C1390(a2, 3727740941, @"Device is not eligible for demo program.");
  v7 = *a2;
  *a3 = *a2;
  v8 = v7;
}

void sub_1000D4CF8()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D4E3C()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D4E78()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D4EB4()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D4EF0(void *a1, NSObject *a2)
{
  v4 = [a1 hubHostName];
  v5 = [a1 hubPort];
  v6 = 136315650;
  v7 = "[MSDFindMyHub enrollAndSetup:]";
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s - invalid hub host name or port; hubHostName=%{public}@; hubPort=%{public}@", &v6, 0x20u);
}

void sub_1000D4FD8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[MSDDeviceDataCollector collectAppUsageDataForSession:fromStart:toEnd:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s - appUsage:  %{public}@", &v2, 0x16u);
}

void sub_1000D5064(uint64_t a1, NSObject *a2)
{
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected data type %{public}@ for store list", &v4, 0xCu);
}

void sub_1000D50FC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize store search result; error: %{public}@", &v2, 0xCu);
}

void sub_1000D5174(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Did not find store list in store search response: %{public}@", &v2, 0xCu);
}

void sub_1000D5200(void *a1)
{
  v1 = [a1 getName];
  sub_10001DA6C();
  sub_100017378(&_mh_execute_header, v2, v3, "%{public}@: HTTP status code is %{public}@.", v4, v5, v6, v7, v8);
}

void sub_1000D5294(void *a1)
{
  v1 = [a1 getName];
  sub_10001DA6C();
  sub_100017378(&_mh_execute_header, v2, v3, "%{public}@ response payload does not contain: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000D5398(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D5424(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D54C0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D554C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000D55D8(NSObject *a1)
{
  if (sub_10005DA84(a1))
  {
    sub_10000C708(&_mh_execute_header, v3, v4, "Failed to create symlink in staging area", v5, v6, v7, v8, 0);
  }

  *v1 = v2;
}

void sub_1000D5624(NSObject *a1)
{
  if (sub_10005DA84(a1))
  {
    sub_10000C708(&_mh_execute_header, v3, v4, "Failed to move files to staging area", v5, v6, v7, v8, 0);
  }

  *v1 = v2;
}

void sub_1000D5670(NSObject *a1)
{
  if (sub_10005DA84(a1))
  {
    sub_10000C708(&_mh_execute_header, v3, v4, "Failed to restore file attributes.", v5, v6, v7, v8, 0);
  }

  *v1 = v2;
}

void sub_1000D5FC0()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F0C0();
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_1000D6028()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F09C();
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_1000D60D0()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F09C();
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_1000D6178(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDManifest addFilesUsingSourceManifest:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Root path must be the same between source and device manifest.", &v1, 0xCu);
}

void sub_1000D6240(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't run handler against %{public}@", &v4, 0xCu);
}

void sub_1000D62D8(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Couldn't get meta data for %{public}@", a1, 0xCu);
}

void sub_1000D6350(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 getName];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: invalid request", &v7, 0xCu);
  }

  v5 = [NSError errorDomainMSDWithCode:3727744769 message:@"Input is invalid"];
  [a2 setError:v5];
}

void sub_1000D644C(void *a1, NSObject *a2)
{
  v4 = [a1 getName];
  v5 = [a1 originServer];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ download credential for origin server %{public}@ invalid or expired", &v6, 0x16u);
}

void sub_1000D6510(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to rename file to %{public}@: %{public}@", &v3, 0x16u);
}

void sub_1000D6598(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get bundle path for app: %{public}@", &v2, 0xCu);
}

void sub_1000D66A0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDRapportDeviceAdvertiser: Received an error: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000D6798(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "MSDRapportDeviceAdvertiser: Failed to activate RPCompanionLinkClient: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000D6900()
{
  v1 = sub_100063B64();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D699C()
{
  v1 = sub_100063B64();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D6AA0(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000083A0(v3))
  {
    v4 = [a1 error];
    sub_100006E3C();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1000D6B48()
{
  v1 = sub_100063B64();
  if (sub_1000083A0(v1))
  {
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000D6BEC(void *a1)
{
  v3 = sub_100063B64();
  if (sub_1000083A0(v3))
  {
    v4 = [a1 localizedDescription];
    [a1 code];
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
  }
}

void sub_1000D6D4C(void *a1)
{
  v3 = sub_100063B64();
  if (sub_1000083A0(v3))
  {
    v4 = [a1 fullKeyList];
    sub_1000055D4();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1000D6E04()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D6E74(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000055D4();
  sub_100008384();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000D6F10()
{
  sub_100006E3C();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000D6F80()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D6FBC()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D6FF8()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D7034()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D7070()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000D70AC()
{
  sub_1000123DC();
  sub_100008394();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void *sub_1000D7168(uint64_t a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    sub_1000055D4();
    v7 = a1;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: format not correct: %{public}@", v6, 0x16u);
  }

  return sub_1000C1390(a2, 3727744512, @"Unexpected server response.");
}

void *sub_1000D7240(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[MSDMailProcessor updateManifestInfo:error:]";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: No matching content for \n", &v4, 0xCu);
  }

  return sub_1000C1390(a1, 3727740937, @"No suitable demo content found.");
}

void sub_1000D731C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_1000D73B8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000D757C(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Unable to create search dictionary", v4, 2u);
  }

  *a2 = a1;
}

void sub_1000D76CC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_1000D7768(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000D784C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unknown XPC event of type: %{public}@", &v2, 0xCu);
}

void sub_1000D78C4(void *a1)
{
  v1 = [a1 getName];
  sub_100069728();
  sub_100017378(&_mh_execute_header, v2, v3, "%{public}@: required key not found or is in unexpected format: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000D7C38(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MSDOperation.m" lineNumber:116 description:@"Observer does not conform to protocol"];
}

void sub_1000D7CC0(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to move secondary staging to temp device backup.", v3, 2u);
  }
}

void sub_1000D7D34(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to move secondary staging to stashed staging.", v5, 2u);
  }
}

void sub_1000D812C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to register for trusted peer change notification with status: %d", v2, 8u);
}

void sub_1000D81A4(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 60;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Timed out while waiting %dm to complete Continuity linking", v1, 8u);
}

uint64_t sub_1000D8268(uint64_t *a1)
{
  v3 = sub_100063A54();
  if (sub_10006DBC8(v3))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 2u);
  }

  result = [NSError errorDomainMSDWithCode:3727740956 message:@"The operation is not allowed."];
  *a1 = result;
  return result;
}

void sub_1000D82EC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E1C(&_mh_execute_header, v2, v3, "Failed to load account settings: %{public}@", v4, v5, v6, v7, 2u);
}

void *sub_1000D8374()
{
  sub_10006DBE0();
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void *sub_1000D8428()
{
  sub_10006DBE0();
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void *sub_1000D84DC()
{
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void *sub_1000D8588()
{
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void sub_1000D8634()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "%s: Error signing in iCloud account.", v3, v4, v5, v6, 2u);
  }
}

void *sub_1000D86D0()
{
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void *sub_1000D877C()
{
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void *sub_1000D8828()
{
  sub_10006DBE0();
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void *sub_1000D88DC()
{
  sub_10006DBE0();
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003ADA4();
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void sub_1000D8990()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "%s - Error signing in iTunes account.", v3, v4, v5, v6, 2u);
  }
}

void *sub_1000D8A2C()
{
  v1 = sub_100063A54();
  if (sub_10006DBC8(v1))
  {
    sub_10003AD94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  return sub_10006DBAC(v2, v3, @"Unexpected server response.");
}

void sub_1000D8AD8()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100006E1C(&_mh_execute_header, v1, v2, "Could not find IDS id: %@ in pairing record", v3, v4, v5, v6, 2u);
  }
}

void sub_1000D8B70()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006DBEC(&_mh_execute_header, v1, v2, "Failed to check pairing record. could not get pairing record", v3, v4, v5, v6, 0);
  }
}

void sub_1000D8BC8()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006DBEC(&_mh_execute_header, v1, v2, "Failed to check pairing record. empty device list provided", v3, v4, v5, v6, 0);
  }
}

void sub_1000D8C20(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@: Exceeded Local URL available, local hub unreachable", &v2, 0xCu);
}

void sub_1000D8C98(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@: Tried all remote URL's, cannot proceed with download", &v2, 0xCu);
}

void sub_1000D8D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543618;
    v6 = a1;
    v7 = 2114;
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: No URL schema found in %{public}@", &v5, 0x16u);
  }
}

void sub_1000D8DD0(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 name];
    v4[0] = 136315394;
    sub_100033FA4();
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: Illegal operation object instantiated - %{public}@", v4, 0x16u);
  }
}

void sub_1000D8E94()
{
  v1[0] = 136315394;
  sub_100033FA4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Unknown operation identifier - %{public}@", v1, 0x16u);
}

void sub_1000D8F28(void *a1, NSObject **a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100020E84(&_mh_execute_header, v6, v7, "Failed to fetch process states: %{public}@", v8, v9, v10, v11, v12);
  }

  *a2 = v4;
}

void sub_1000D8FDC(uint64_t a1, void *a2)
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [a2 localizedDescription];
    sub_100016B1C();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1000D9188(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100016B1C();
  sub_100008384();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000D928C()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1000D9394(NSObject *a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = [a3 localizedDescription];
    sub_100016B1C();
    sub_100008384();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1000D9628()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Not an HTTP response.", v1, 2u);
  }
}

void sub_1000D96FC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 info];
  v6 = [v5 savePath];
  sub_100006E3C();
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Cannot write data to file %{public}@, error: %{public}@", v7, 0x16u);
}

void sub_1000D97B8(void *a1)
{
  v1 = [a1 description];
  sub_100006E3C();
  sub_1000729A8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000D9908(uint64_t a1, void *a2)
{
  [a2 count];
  sub_1000729B8();
  sub_1000729A8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000D9990(uint64_t a1, void *a2)
{
  [a2 count];
  sub_1000729B8();
  sub_1000729A8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void *sub_1000D9A18(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v3, v4, "Input task info is invalid", v5, v6, v7, v8, 0);
  }

  return sub_1000C1390(a1, 3727744769, @"Input is invalid");
}

void *sub_1000D9A90(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v3, v4, "Failed to create file handle to save response data", v5, v6, v7, v8, 0);
  }

  return sub_1000C1390(a1, 3727740944, @"Cannot write file.");
}

void sub_1000D9B08(void *a1)
{
  v1 = [a1 info];
  v2 = [v1 savePath];
  sub_100006E3C();
  sub_1000729A8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000D9BAC(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create download task.", v5, 2u);
  }

  sub_1000C1390(a1, 3727744515, @"Cannot dispatch network task or create session");
}

void *sub_1000D9C44(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v3, v4, "Failed to get request from task info", v5, v6, v7, v8, 0);
  }

  return sub_1000C1390(a1, 3727744769, @"Input is invalid");
}

void sub_1000D9D58(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "downloadSize: %lld downloadSizeBucket: %{public}@", &v3, 0x16u);
}

void sub_1000D9DF4(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MSDBAAInterface generateBAACertficate:]";
  v3 = 1024;
  v4 = 60;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Installation timed out after %d seconds", &v1, 0x12u);
}

void sub_1000D9ECC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "publicKey:%{public}@", &v2, 0xCu);
}

void sub_1000D9F44(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "keyData:%{public}@\t str:%{public}@", &v3, 0x16u);
}

void sub_1000DA010(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    sub_100006E3C();
    sub_1000776A8();
    _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);
  }
}

void sub_1000DA0C4(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000776B4(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100077688(&_mh_execute_header, v5, v6, "Could not set coordinator importance with error - %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000DA160(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000776B4(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100077688(&_mh_execute_header, v5, v6, "Could not setInitialODRAssetPromises with error - %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000DA1FC(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000776B4(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100077688(&_mh_execute_header, v5, v6, "Could not set place holder promise with error - %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000DA298(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000776B4(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100077688(&_mh_execute_header, v5, v6, "Could not set app asset promise with error - %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000DA334(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000776B4(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100077688(&_mh_execute_header, v5, v6, "Could not set configuration comlete with error - %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000DA3D0()
{
  v1 = sub_100063A54();
  if (sub_1000776B4(v1))
  {
    sub_100077688(&_mh_execute_header, v2, v3, "Could not copy IPA/Patch file from cache: %{public}@", v4, v5, v6, v7, 2u);
  }
}

void sub_1000DA45C(void *a1)
{
  v3 = sub_100063A54();
  if (sub_1000776B4(v3))
  {
    v4 = [a1 localizedDescription];
    sub_100006E3C();
    sub_100077688(&_mh_execute_header, v5, v6, "Set install options failed with error - %{public}@", v7, v8, v9, v10, v11);
  }
}

void sub_1000DA4F8(void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    sub_100006E3C();
    sub_1000776A8();
    _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);
  }
}

void sub_1000DA5AC(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  sub_1000776A8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1000DA6C4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006E3C();
  sub_1000776A8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1000DA754(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67240192;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read data to buffer: %{public, errno}d", buf, 8u);
}

void sub_1000DA7A0(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to instantiate NSData object.", v4, 2u);
  }

  *a2 = a1;
}

void sub_1000DA870(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1026;
  *(buf + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open file: %{public}@ - %{public, errno}d", buf, 0x12u);
}

void sub_1000DAA04()
{
  v0 = sub_100063A54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Cannot generate custom domains.", v1, 2u);
  }
}

void sub_1000DAAB4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot load domains.plist from %{public}@.", &v2, 0xCu);
}

void sub_1000DAB2C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Manifest file path %{public}@ is not same as real path: %{public}@", &v3, 0x16u);
}

void sub_1000DABB4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[WhitelistChecker handleSystemContainerFiles:withMetadata:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s:Container check failed for %{public}@", &v2, 0x16u);
}

void sub_1000DB24C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set background download environment. Will try again..", buf, 2u);
}

void sub_1000DB28C(void *a1, void *a2)
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to build components from manifest", v5, 2u);
  }
}

void sub_1000DB310(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to set background download environment after %ld attempts. Bailing out.", &v2, 0xCu);
}

void sub_1000DB388(void *a1, NSObject *a2)
{
  v3 = [a1 device];
  v4 = 134217984;
  v5 = [v3 backgroundDownloadState];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Called quitBackgroundDownload when background state:%lu", &v4, 0xCu);
}

void sub_1000DB424(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 name];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Dispatching operation %{public}@ to queue %{public}@", &v6, 0x16u);
}

void sub_1000DB5C8(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v4, v5, "Failed to save device language.", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void sub_1000DB620(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000C708(&_mh_execute_header, v4, v5, "Failed to save device region.", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void sub_1000DBB04(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SecTrustEvaluate returned fail: %d", v2, 8u);
}

void sub_1000DBB7C(const void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v3, v4, "%s: Cannot load demounit root CA certificate.", v5, v6, v7, v8, 2u);
  }

  CFRelease(a1);
}

void sub_1000DBC24()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DBCF4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "This certificate is not for iosdm: %{public}@", &v2, 0xCu);
}

void sub_1000DBD6C(const void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v3, v4, "%s: Cannot load certificate.", v5, v6, v7, v8, 2u);
  }

  CFRelease(a1);
}

void sub_1000DBE14()
{
  v1 = sub_100063A54();
  if (sub_1000083A0(v1))
  {
    sub_100008384();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000DBEB0(const void *a1)
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020E84(&_mh_execute_header, v3, v4, "%s: Cannot load certificate.", v5, v6, v7, v8, 2u);
  }

  CFRelease(a1);
}
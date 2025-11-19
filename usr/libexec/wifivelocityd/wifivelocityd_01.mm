void sub_10003AE08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[OSLogPreferencesSubsystem alloc] initWithName:@"com.apple.eapol"];
  v4 = [*(a1 + 32) __getEAPOLDebugFlagsEnabled] && objc_msgSend(v3, "effectiveEnabledLevel") == 4 && objc_msgSend(v3, "effectivePersistedLevel") == 4;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003AF50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[OSLogPreferencesSubsystem alloc] initWithName:@"com.apple.eapol"];
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [v3 setPersistedLevel:v5];
  if (*(a1 + 48))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [v4 setEnabledLevel:v6];
  if (*(a1 + 48))
  {
    v7 = @"debug";
  }

  else
  {
    v7 = @"inherit";
  }

  [*(a1 + 32) setOSLogPreferenceLevel:v7 enableOvserizeMessages:1 subsystem:@"com.apple.eapol"];
  v9 = 0;
  [*(a1 + 32) __setEAPOLDebugFlagsEnabled:*(a1 + 48) error:&v9];
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003B0E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"State:/Network/mDNSResponder/DebugState");
  if (v3)
  {
    v4 = v3;
    v5 = SCDynamicStoreCopyValue(0, v3);
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(v5 objectForKey:{@"VerboseLogging", "BOOLValue"}];
      CFRelease(v6);
      v8 = 0;
    }

    else
    {
      v10 = NSLocalizedFailureReasonErrorKey;
      v11 = @"SCError()";
      v8 = [NSError errorWithDomain:kCFErrorDomainSystemConfiguration code:SCError() userInfo:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]];
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"SCError()";
    v8 = [NSError errorWithDomain:kCFErrorDomainSystemConfiguration code:SCError() userInfo:[NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1]];
    v7 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, v7);
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_10003B320(void *result, uint64_t a2, int a3)
{
  if (*(result + 56) != a3)
  {
    v7[5] = v3;
    v7[6] = v4;
    v6 = result[4];
    v5 = result[5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003B3A8;
    v7[3] = &unk_1000E1C48;
    v7[4] = result[6];
    return [v6 __toggleDNSLoggingWithQueue:v5 reply:v7];
  }

  return result;
}

uint64_t sub_10003B3A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003B5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B5D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    dispatch_io_close(*(a1 + 32), 0);
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(*(*(a1 + 64) + 8) + 24);
      v6 = *(v4 + 16);

      v6();
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    [*(a1 + 40) appendData:a3];
    v9 = [objc_msgSend([NSString alloc] initWithData:*(a1 + 40) encoding:{4), "componentsSeparatedByString:", @"\n"}];
    [*(a1 + 40) setData:{objc_msgSend(objc_msgSend(v9, "lastObject"), "dataUsingEncoding:", 4)}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          if ([*(a1 + 48) count])
          {
            v15 = 0;
            do
            {
              if ([v14 hasSuffix:{objc_msgSend(*(a1 + 48), "objectAtIndexedSubscript:", v15)}])
              {
                *(*(*(a1 + 64) + 8) + 24) = v15;
              }

              ++v15;
            }

            while (v15 < [*(a1 + 48) count]);
          }

          v13 = v13 + 1;
        }

        while (v13 != v11);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v8);
  }
}

id sub_10003B870(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6[6] = v2;
    v6[7] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003B934;
    v6[3] = &unk_1000E1E38;
    return [W5DebugManager __setOpenDirectoryLoggingEnabled:1 queue:*(a1 + 32) reply:v6];
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 2);

      return v5();
    }
  }

  return result;
}

id sub_10003B934(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 2);

      return v5();
    }
  }

  else
  {
    v6[6] = v2;
    v6[7] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003B9F0;
    v6[3] = &unk_1000E26D8;
    return [W5DebugManager __mostRecentLogWithSuffix:&off_1000F3FA8 logPath:@"/var/log/opendirectoryd.log" queue:*(a1 + 32) reply:v6];
  }

  return result;
}

uint64_t sub_10003B9F0(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 16);
  }

  else
  {
    [W5DebugManager __setOpenDirectoryLoggingEnabled:0 queue:*(a1 + 32) reply:0];
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 16);
  }

  return v4();
}

id sub_10003BF14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 2);

      return v5();
    }
  }

  else
  {
    v6[6] = v2;
    v6[7] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003BFC4;
    v6[3] = &unk_1000E1E38;
    return [NSTask runTaskWithLaunchPath:*(a1 + 32) arguments:&off_1000F3FD8 reply:v6];
  }

  return result;
}

uint64_t (**sub_10003BFC4(uint64_t a1, uint64_t a2))(void)
{
  if (!a2)
  {
    return [NSTask runTaskWithLaunchPath:*(a1 + 32) arguments:&off_1000F3FF0 reply:*(a1 + 40)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return result[2]();
  }

  return result;
}

uint64_t sub_10003C0E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 16);
    goto LABEL_8;
  }

  v5 = [[NSString alloc] initWithData:*(a1 + 32) encoding:4];
  if ([v5 containsString:@"APBrowser*:level=info"])
  {
    [v5 containsString:@"APBonjour*:level=info"];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);
LABEL_8:

    return v4();
  }

  return result;
}

void sub_10003C220(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class() && (v3 = [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")], v10 = 0u, v11 = 0u, v12 = 0u, v13 = 0u, (v4 = objc_msgSend(v3, "countByEnumeratingWithState:objects:count:", &v10, v14, 16)) != 0))
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsString:@"wifi.megawifi"])
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v8);
  }

  objc_autoreleasePoolPop(v2);
}

id sub_10003C3E4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 40);
  if (a2 || v3 != a3)
  {
    if (v3)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10003C520;
      v16 = &unk_1000E1C48;
      v17 = *(a1 + 32);
      v6 = &off_1000F4038;
      v7 = &v13;
    }

    else
    {
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_10003C538;
      v11 = &unk_1000E1C48;
      v12 = *(a1 + 32);
      v6 = &off_1000F4050;
      v7 = &v8;
    }

    return [NSTask runTaskWithLaunchPath:@"/usr/local/bin/profilectl" arguments:v6 reply:v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17];
  }

  else
  {
    result = *(a1 + 32);
    if (result)
    {
      v5 = *(result + 2);

      return v5();
    }
  }

  return result;
}

uint64_t sub_10003C520(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003C538(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003C5D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class() && (v3 = [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")], v10 = 0u, v11 = 0u, v12 = 0u, v13 = 0u, (v4 = objc_msgSend(v3, "countByEnumeratingWithState:objects:count:", &v10, v14, 16)) != 0))
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsString:@"wifi.nologging"])
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v8);
  }

  objc_autoreleasePoolPop(v2);
}

id sub_10003C798(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 40);
  if (a2 || v3 != a3)
  {
    if (v3)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10003C8D4;
      v16 = &unk_1000E1C48;
      v17 = *(a1 + 32);
      v6 = &off_1000F4068;
      v7 = &v13;
    }

    else
    {
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_10003C8EC;
      v11 = &unk_1000E1C48;
      v12 = *(a1 + 32);
      v6 = &off_1000F4080;
      v7 = &v8;
    }

    return [NSTask runTaskWithLaunchPath:@"/usr/local/bin/profilectl" arguments:v6 reply:v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17];
  }

  else
  {
    result = *(a1 + 32);
    if (result)
    {
      v5 = *(result + 2);

      return v5();
    }
  }

  return result;
}

uint64_t sub_10003C8D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003C8EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003CD60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 120) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10003CE5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 128) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10003CF28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  [*(a1 + 32) __nextRequest];

  objc_autoreleasePoolPop(v2);
}

void sub_10003D0F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __pendingRequestWithUUID:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    if ([v3 reply])
    {
      v5 = [v4 reply];
      v14 = NSLocalizedFailureReasonErrorKey;
      v15 = @"W5CancelledErr";
      v5[2](v5, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]], 0);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    [*(*(a1 + 32) + 48) removeObject:v4];
  }

  else if ([objc_msgSend(*(*(a1 + 32) + 56) "uuid")])
  {
    if ([*(*(a1 + 32) + 56) reply])
    {
      v7 = [*(*(a1 + 32) + 56) reply];
      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = @"W5CancelledErr";
      v7[2](v7, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1]], 0);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = NSLocalizedFailureReasonErrorKey;
      v11 = @"W5ParamErr";
      (*(v9 + 16))(v9, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]]);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003D3D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) removeAllObjects];

  *(*(a1 + 32) + 56) = 0;
  [*(a1 + 32) resetNetworkServiceOrderForTeardown];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10003D520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003D554(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __purgeDiagnosticsHistory];
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 64) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10003D700(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 96) = 0x8000000000000000;
  v3 = *(*(a1 + 32) + 80);
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] Restoring network service order before teardown", v4, 2u);
      v3 = *(*(a1 + 32) + 80);
    }

    [W5DiagnosticsManager __setNetworkServiceOrder:v3];

    *(*(a1 + 32) + 80) = 0;
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:@"/var/run/wifivelocity-tmp", 0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003D930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003D948(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *(v3 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D9CC;
  block[3] = &unk_1000E2728;
  v5 = a1[6];
  block[4] = a1[5];
  block[5] = a2;
  block[6] = a3;
  block[7] = v3;
  block[8] = v5;
  dispatch_async(v4, block);
}

void sub_10003D9CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) reply])
  {
    v3 = [*(a1 + 32) reply];
    (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
  }

  v4 = dispatch_time(0, 120000000000);
  v5 = *(*(a1 + 56) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DAB4;
  block[3] = &unk_1000E13B0;
  block[4] = *(a1 + 64);
  dispatch_after(v4, v5, block);

  *(*(a1 + 56) + 56) = 0;
  [*(a1 + 56) __nextRequest];
  objc_autoreleasePoolPop(v2);
}

void sub_10003DAB4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  *(*(*(a1 + 32) + 8) + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

void sub_10003E478(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_10003D538;
  v25 = sub_10003D548;
  v26 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v3 = dispatch_queue_create(0, 0);
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "configuration")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E7F8;
  block[3] = &unk_1000E27C8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v3;
  v16 = v2;
  v17 = v19;
  v18 = &v21;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  [objc_msgSend(*(*(a1 + 48) + 8) "concurrentQueue")];
  if (v4)
  {
    v6 = dispatch_time(0, 1000000 * v4);
  }

  else
  {
    v6 = -1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003EDB8;
  v11[3] = &unk_1000E27F0;
  v11[4] = v19;
  v11[5] = &v21;
  v11[6] = dispatch_block_wait(v5, v6);
  dispatch_sync(v3, v11);
  if ([v22[5] code] == 3)
  {
    v7 = sub_100098A04();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v27 = 134217984;
    v28 = v4;
    goto LABEL_10;
  }

  if ([v22[5] code] == 6)
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
LABEL_10:
      _os_log_send_and_compose_impl();
    }
  }

LABEL_11:
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, [v22[5] copy], v2);
  }

  v10 = v22[5];
  dispatch_release(v3);
  _Block_release(v5);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
}

void sub_10003E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10003E7F8(uint64_t a1)
{
  v2 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  while (v2 < [*(a1 + 32) count] && (v21[3] & 1) == 0 && *(*(*(a1 + 72) + 8) + 24) != 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [*(a1 + 32) objectAtIndexedSubscript:v2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v5 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v6 = *(a1 + 40);
    block[2] = sub_10003E98C;
    block[3] = &unk_1000E27A0;
    v7 = *(v6 + 40);
    v11 = v5;
    v12 = v4;
    v13 = *(a1 + 56);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v16 = &v20;
    v17 = v9;
    v18 = v24;
    v19 = v2;
    v14 = *(a1 + 32);
    v15 = v8;
    dispatch_sync(v7, block);
    objc_autoreleasePoolPop(v3);
    ++v2;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);
}

void sub_10003E964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10003E98C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) includeEvents])
  {
    if (!*(a1 + 112))
    {
      v3 = *(*(a1 + 40) + 120);
      if (v3)
      {
        (*(v3 + 16))(v3, [*(a1 + 32) uuid], 0, objc_msgSend(*(a1 + 48), "copy"), 0.0);
      }
    }
  }

  v4 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(a1 + 48) configuration]);
  -[NSMutableDictionary setObject:forKeyedSubscript:](v4, "setObject:forKeyedSubscript:", [objc_msgSend(objc_msgSend(*(a1 + 32) "uuid")], @"InternalUUID");
  v5 = [*(a1 + 48) copy];
  [v5 setConfiguration:v4];
  v6 = [*(a1 + 40) __runDiagnosticsTest:v5];
  if (v6)
  {
    [v6 setConfiguration:{objc_msgSend(*(a1 + 48), "configuration")}];
    [*(a1 + 40) __updateDiagnosticsHistoryWithResult:v6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003EC88;
    block[3] = &unk_1000E2778;
    v7 = *(a1 + 80);
    block[5] = v6;
    block[6] = v7;
    v8 = *(a1 + 56);
    block[4] = *(a1 + 64);
    dispatch_sync(v8, block);
  }

  *(*(*(a1 + 88) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 56) "uuid")] ^ 1;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v9 = *(a1 + 56);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003ECDC;
    v15[3] = &unk_1000E2428;
    v10 = *(a1 + 96);
    v15[4] = *(a1 + 80);
    v15[5] = v10;
    dispatch_sync(v9, v15);
  }

  *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24) + 1.0;
  if ([*(a1 + 32) includeEvents])
  {
    v11 = *(*(a1 + 40) + 120);
    if (v11)
    {
      v12 = [*(a1 + 32) uuid];
      v13 = *(a1 + 112);
      if (v13 >= [*(a1 + 72) count] - 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [objc_msgSend(*(a1 + 72) objectAtIndexedSubscript:{*(a1 + 112) + 1), "copy"}];
      }

      (*(v11 + 16))(v11, v12, v6, v14, *(*(*(a1 + 104) + 8) + 24) / [*(a1 + 72) count] * 100.0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003EC88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003ECDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v3 = NSLocalizedFailureReasonErrorKey;
    v4 = @"W5CancelledErr";
    *(*(*(a1 + 40) + 8) + 40) = [+[NSError errorWithDomain:code:userInfo:](NSError copy:@"com.apple.wifivelocity.error"];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003EDB8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1[4] + 8) + 24) = 1;
  if (a1[6])
  {

    v3 = NSLocalizedFailureReasonErrorKey;
    v4 = @"W5TimeoutErr";
    *(*(a1[5] + 8) + 40) = [+[NSError errorWithDomain:code:userInfo:](NSError copy:@"com.apple.wifivelocity.error"];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100040894(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(a1 + 32) configuration]);
  [(NSMutableDictionary *)v3 setObject:*(a1 + 40) forKeyedSubscript:@"InternalUUID"];
  v4 = [*(a1 + 32) copy];
  [v4 setConfiguration:v3];
  v5 = [*(a1 + 48) __runDiagnosticsTest:v4];
  if (v5)
  {
    v6 = v5;
    [v5 setConfiguration:{objc_msgSend(*(a1 + 32), "configuration")}];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000409A0;
    v8[3] = &unk_1000E1C98;
    v7 = *(a1 + 56);
    v8[4] = *(a1 + 64);
    v8[5] = v6;
    dispatch_sync(v7, v8);
  }

  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(a1 + 72));
}

void sub_1000409A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) addObject:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1000409E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = @"ConcurrentResults";
  v4 = [*(a1 + 40) copy];
  [*(a1 + 32) setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v4, &v3, 1)}];
  objc_autoreleasePoolPop(v2);
}

void sub_100046158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000461A8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10003D538;
  v0 = qword_100106BD8;
  v7 = sub_10003D548;
  v8 = qword_100106BD8;
  if (!qword_100106BD8)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10004C200;
    v2[3] = &unk_1000E13B0;
    v2[4] = &v3;
    sub_10004C200(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10004627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100046294()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10003D538;
  v0 = qword_100106BE0;
  v7 = sub_10003D548;
  v8 = qword_100106BE0;
  if (!qword_100106BE0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10004C340;
    v2[3] = &unk_1000E13B0;
    v2[4] = &v3;
    sub_10004C340(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100046368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046380(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) lock];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 40) = a2;
    *(*(*(a1 + 72) + 8) + 40) = [a3 copy];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  [*(a1 + 32) unlock];

  objc_autoreleasePoolPop(v6);
}

void sub_1000467DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10004682C(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) lock];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 40) = a2;
    *(*(*(a1 + 72) + 8) + 40) = [a3 copy];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  [*(a1 + 32) unlock];

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1000474C8(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [*(a1 + 32) objectForKeyedSubscript:a3];
  [v6 floatValue];
  v9 = v8;
  [v7 floatValue];
  if (v9 > v10)
  {
    return 1;
  }

  [v7 floatValue];
  v13 = v12;
  [v6 floatValue];
  v11 = -1;
  if (v13 <= v14)
  {
    v15 = [a2 channel];
    if (v15 <= [a3 channel])
    {
      return 1;
    }
  }

  return v11;
}

void sub_10004AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004AB70(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(W5PingResult);
  [*(*(*(a1 + 56) + 8) + 40) setAddress:*(a1 + 32)];
  [*(*(*(a1 + 56) + 8) + 40) setInterfaceName:{objc_msgSend(objc_msgSend(*(*(a1 + 40) + 8), "wifi"), "interfaceName")}];
  [*(*(*(a1 + 56) + 8) + 40) setCount:{objc_msgSend(a2, "numPingsTransmitted")}];
  [*(*(*(a1 + 56) + 8) + 40) setTimeout:1.0];
  [*(*(*(a1 + 56) + 8) + 40) setWait:1.0];
  [*(*(*(a1 + 56) + 8) + 40) setInterval:1.0];
  [a2 packetLossRate];
  [*(*(*(a1 + 56) + 8) + 40) setPacketLoss:?];
  [a2 averageRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setAvg:v5 * 1000.0];
  [a2 minRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setMin:v6 * 1000.0];
  [a2 maxRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setMax:v7 * 1000.0];
  [a2 standardDeviationRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setStddev:v8 * 1000.0];
  [*(*(*(a1 + 56) + 8) + 40) setStartedAt:*(a1 + 64)];
  +[NSDate timeIntervalSinceReferenceDate];
  [*(*(*(a1 + 56) + 8) + 40) setEndedAt:?];
  dispatch_semaphore_signal(*(a1 + 48));

  objc_autoreleasePoolPop(v4);
}

void sub_10004BC34(uint64_t a1)
{
  CFHostCancelInfoResolution(*(a1 + 32), kCFHostAddresses);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_10004C034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10004C054(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 && [a2 length])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

uint64_t sub_10004C0BC()
{
  if (!qword_100106BD0)
  {
    qword_100106BD0 = _sl_dlopen();
  }

  return qword_100106BD0;
}

uint64_t sub_10004C18C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106BD0 = result;
  return result;
}

Class sub_10004C200(uint64_t a1)
{
  sub_10004C2AC();
  result = objc_getClass("NPTPerformanceTestConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_100106BD8 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5DiagnosticsManager.m", 51, @"Unable to find class %s", "NPTPerformanceTestConfiguration"];
    __break(1u);
  }

  return result;
}

void sub_10004C2AC()
{
  if (!sub_10004C0BC())
  {
    v0 = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5DiagnosticsManager.m", 50, @"%s", 0];
    __break(1u);
    free(v0);
  }
}

Class sub_10004C340(uint64_t a1)
{
  sub_10004C2AC();
  result = objc_getClass("NPTPerformanceTest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_100106BE0 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5DiagnosticsManager.m", 53, @"Unable to find class %s", "NPTPerformanceTest"];
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C3EC()
{
  if (!qword_100106BE8)
  {
    qword_100106BE8 = _sl_dlopen();
  }

  return qword_100106BE8;
}

uint64_t sub_10004C4BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106BE8 = result;
  return result;
}

Class sub_10004C530(uint64_t a1)
{
  if (sub_10004C3EC())
  {
    result = objc_getClass("IMPingTest");
    *(*(*(a1 + 32) + 8) + 40) = result;
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      qword_100106BF0 = *(*(*(a1 + 32) + 8) + 40);
      return result;
    }

    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5DiagnosticsManager.m", 46, @"Unable to find class %s", "IMPingTest"];
  }

  else
  {
    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5DiagnosticsManager.m", 45, @"%s", 0];
  }

  __break(1u);
  return result;
}

void sub_10004CBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004CC0C(uint64_t a1)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateRapportClient];
}

void sub_10004CD08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004CDD8;
  v6[3] = &unk_1000E2978;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_10004CDD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDeviceFound:*(a1 + 32)];
}

void sub_10004CE28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDeviceLost:v3];
}

void sub_10004CE88(id a1, RPCompanionLinkDevice *a2)
{
  v2 = a2;
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_10004D5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004D610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setDiscoveringDevices:0];
  }
}

void sub_10004DB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004DB90(id a1)
{
  v1 = sub_100098A04();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_10004DC74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = sub_100098A04();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *location = 136316162;
      *&location[4] = "[W5RapportClient sendMessageToDevice:request:]_block_invoke";
      v32 = 2080;
      v33 = "W5RapportClient.m";
      v34 = 1024;
      v35 = 231;
      v36 = 2114;
      v37 = v7;
      v38 = 2114;
      v39 = v3;
      LODWORD(v25) = 48;
      v24 = location;
      _os_log_send_and_compose_impl();
    }

    if ([v3 code] == -71146)
    {
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        *location = 136316162;
        *&location[4] = "[W5RapportClient sendMessageToDevice:request:]_block_invoke";
        v32 = 2080;
        v33 = "W5RapportClient.m";
        v34 = 1024;
        v35 = 234;
        v36 = 2114;
        v37 = v9;
        v38 = 2114;
        v39 = v10;
        LODWORD(v25) = 48;
        v24 = location;
        _os_log_send_and_compose_impl();
      }
    }

    v11 = *(a1 + 32);
    v12 = [W5RapportResponse responseWithPayload:0 options:0 error:v3, v24, v25];
    [v11 handleResponse:v12];
  }

  else
  {
    if (v6)
    {
      v13 = [*(a1 + 32) identifier];
      v14 = [*(a1 + 32) controlFlags];
      v15 = [*(a1 + 32) requestPayload];
      [*(a1 + 32) peer];
      *location = 136316674;
      *&location[4] = "[W5RapportClient sendMessageToDevice:request:]_block_invoke";
      v32 = 2080;
      v33 = "W5RapportClient.m";
      v34 = 1024;
      v35 = 241;
      v36 = 2114;
      v37 = v13;
      v38 = 2048;
      v39 = v14;
      v40 = 2114;
      v41 = v15;
      v43 = v42 = 2114;
      _os_log_send_and_compose_impl();
    }

    v16 = [*(a1 + 32) requestPayload];
    v12 = [v16 encode];

    if (v12)
    {
      objc_initWeak(location, WeakRetained);
      v17 = [*(a1 + 32) identifier];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10004E1EC;
      v26[3] = &unk_1000E2AB8;
      objc_copyWeak(&v28, location);
      v27 = *(a1 + 32);
      [WeakRetained sendRequestID:v17 request:v12 options:0 responseHandler:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(location);
    }

    else
    {
      v18 = sub_100098A04();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *location = 136315906;
        *&location[4] = "[W5RapportClient sendMessageToDevice:request:]_block_invoke";
        v32 = 2080;
        v33 = "W5RapportClient.m";
        v34 = 1024;
        v35 = 244;
        v36 = 2114;
        v37 = v19;
        _os_log_send_and_compose_impl();
      }

      v20 = *(a1 + 32);
      v29 = NSLocalizedFailureReasonErrorKey;
      v30 = @"W5ParamErr";
      v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v22 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v21];
      v23 = [W5RapportResponse responseWithPayload:0 options:0 error:v22];
      [v20 handleResponse:v23];

      v12 = 0;
    }
  }
}

void sub_10004E1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004E1EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [v8 objectForKeyedSubscript:@"statusFlags"];
  v12 = [v11 unsignedIntValue];

  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v26 = WeakRetained;
    v14 = +[NSMutableArray array];
    v15 = 0;
    v16 = &unk_1000B2888;
    do
    {
      v17 = (v16 + 1);
      if ((v12 >> v15))
      {
        v18 = [[NSString alloc] initWithCString:v17 encoding:1];
        [v14 addObject:v18];
        v19 = [v18 length];
      }

      else
      {
        v19 = strlen(v16 + 1);
      }

      v16 = &v19[v17 + 1];
      v15 = *v16;
    }

    while (*v16);
    v20 = [v14 componentsJoinedByString:@" "];

    _os_log_send_and_compose_impl();
    WeakRetained = v26;
  }

  if (v9)
  {
    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      _os_log_send_and_compose_impl();
    }

    v22 = *(a1 + 32);
    v23 = [W5RapportResponse responseWithPayload:0 options:v8 error:v9];
    [v22 handleResponse:v23];
  }

  else
  {
    v23 = [objc_msgSend(*(a1 + 32) "responsePayloadClass")];
    v24 = *(a1 + 32);
    v25 = [W5RapportResponse responseWithPayload:v23 options:v8 error:0];
    [v24 handleResponse:v25];
  }

  [WeakRetained invalidate];
}

void sub_10004E76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004E7A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __wifi];

  objc_autoreleasePoolPop(v2);
}

void sub_10004E92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004E944(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __bluetooth];

  objc_autoreleasePoolPop(v2);
}

void sub_10004ECC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 136) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004EDC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 144) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004EEC0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 152) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004EFBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 160) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F0B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 168) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F1B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 176) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F2B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 192) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F3AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 200) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F4A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 208) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F5A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 184) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F6A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 216) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F79C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 224) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F898(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 232) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10004F964(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, [*(a1 + 32) __queryStatusIncludingWiFiScanCache:1]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10004FAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FAC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __queryStatusIncludingWiFiScanCache:1];

  objc_autoreleasePoolPop(v2);
}

void sub_10004FBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FC0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __queryWiFiStatusIncludingScanCache:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10004FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FD54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __queryAWDLStatus];

  objc_autoreleasePoolPop(v2);
}

void sub_10004FE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FE98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __queryBluetoothStatus];

  objc_autoreleasePoolPop(v2);
}

void sub_10004FFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FFDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __queryNetworkStatus];

  objc_autoreleasePoolPop(v2);
}

void sub_100050108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050120(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) __queryPowerStatus];

  objc_autoreleasePoolPop(v2);
}

void sub_100050250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050268(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    if (!v3)
    {
      v3 = [*(a1 + 40) __queryStatusIncludingWiFiScanCache:0];
      [*(*(a1 + 40) + 40) setObject:v3 forKeyedSubscript:*(a1 + 32)];
    }

    *(*(*(a1 + 48) + 8) + 40) = v3;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005036C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 40) removeObjectForKey:?];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100050494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000504AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 48) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100050574(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(*(a1 + 32) "__wifi")];
  [*(*(a1 + 32) + 88) startEventMonitoring];
  [*(*(a1 + 32) + 104) startEventMonitoring];
  [*(*(a1 + 32) + 112) startEventMonitoring];
  [*(*(a1 + 32) + 120) startEventMonitoring];
  [*(a1 + 32) __forceUpdateTrigger];

  objc_autoreleasePoolPop(v2);
}

void sub_100050668(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(*(a1 + 32) "__wifi")];
  [*(*(a1 + 32) + 88) stopEventMonitoring];
  [*(*(a1 + 32) + 104) stopEventMonitoring];
  [*(*(a1 + 32) + 112) stopEventMonitoring];
  [*(*(a1 + 32) + 120) stopEventMonitoring];
  v3 = *(*(a1 + 32) + 16);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(*(a1 + 32) + 16));
    *(*(a1 + 32) + 16) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1000507E8(uint64_t a1)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "[W5StatusManager __forceUpdateTrigger]_block_invoke";
    v8 = 2080;
    v9 = "W5StatusManager.m";
    v10 = 1024;
    v11 = 545;
    v12 = 1024;
    v13 = 10;
    LODWORD(v5) = 34;
    v4 = &v6;
    _os_log_send_and_compose_impl();
  }

  return [*(a1 + 32) __updateStatusCoalesce];
}

id sub_1000509B4(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 24));
  dispatch_release(*(*(a1 + 32) + 24));
  *(*(a1 + 32) + 24) = 0;
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "[W5StatusManager __updateStatusCoalesce]_block_invoke";
    v8 = 2080;
    v9 = "W5StatusManager.m";
    v10 = 1024;
    v11 = 576;
    v12 = 1024;
    v13 = 5;
    LODWORD(v5) = 34;
    v4 = &v6;
    _os_log_send_and_compose_impl();
  }

  return [*(a1 + 32) __updateStatus];
}

void sub_1000521A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v9 = 136315906;
    v10 = "[W5StatusManager scanForNetworksWithConfiguration:handler:]_block_invoke";
    v11 = 2080;
    v12 = "W5StatusManager.m";
    v13 = 1024;
    v14 = 970;
    v15 = 2112;
    v16 = v4;
    LODWORD(v8) = 38;
    v7 = &v9;
    _os_log_send_and_compose_impl();
  }

  v5 = [*(a1 + 40) performScanWithParams:*(a1 + 32) error:{0, v7, v8}];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100052408(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v37 = 136315906;
    v38 = "[W5StatusManager associateToNetwork:configuration:reply:]_block_invoke";
    v39 = 2080;
    v40 = "W5StatusManager.m";
    v41 = 1024;
    v42 = 994;
    v43 = 2112;
    v44 = v4;
    LODWORD(v24) = 38;
    v22 = &v37;
    _os_log_send_and_compose_impl();
  }

  v32 = 0;
  v5 = [*(*(a1 + 40) + 80) performScanWithParameters:*(a1 + 32) error:{&v32, v22, v24}];
  context = v2;
  if (!v32)
  {
    v9 = v5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v28 objects:v47 count:16];
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = v10;
    v12 = 0;
    v13 = *v29;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      if ([objc_msgSend(v15 BSSID])
      {
        v16 = objc_alloc_init(CWFAssocParameters);
        [v16 setScanResult:v15];
        [v16 setForceBSSID:1];
        [v16 setRememberUponSuccessfulAssociation:1];
        [v16 setPassword:{objc_msgSend(*(a1 + 56), "objectForKey:", @"JoinPassword"}];
        v17 = sub_100098A04();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136316162;
          v38 = "[W5StatusManager associateToNetwork:configuration:reply:]_block_invoke";
          v39 = 2080;
          v40 = "W5StatusManager.m";
          v41 = 1024;
          v42 = 1012;
          v43 = 2112;
          v44 = v15;
          v45 = 2112;
          v46 = v16;
          LODWORD(v25) = 48;
          v23 = &v37;
          _os_log_send_and_compose_impl();
        }

        v18 = *(*(a1 + 40) + 80);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100052994;
        v27[3] = &unk_1000E1C48;
        v27[4] = *(a1 + 64);
        [v18 associateWithParameters:v16 reply:{v27, v23, v25}];
      }

      else if ((v12 & 1) == 0)
      {
        v19 = sub_100098A04();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 48);
          v37 = 136315906;
          v38 = "[W5StatusManager associateToNetwork:configuration:reply:]_block_invoke_2";
          v39 = 2080;
          v40 = "W5StatusManager.m";
          v41 = 1024;
          v42 = 1020;
          v43 = 2112;
          v44 = v20;
          LODWORD(v25) = 38;
          v23 = &v37;
          _os_log_send_and_compose_impl();
        }

        v21 = *(a1 + 64);
        if (v21)
        {
          v35 = NSLocalizedFailureReasonErrorKey;
          v36 = @"W5InternalErr";
          (*(v21 + 16))(v21, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:[NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1]]);
        }

        v12 = 0;
        goto LABEL_24;
      }

      v12 = 1;
LABEL_24:
      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v47 count:16];
        if (!v11)
        {
          goto LABEL_26;
        }

        goto LABEL_10;
      }
    }
  }

  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v37 = 136315906;
    v38 = "[W5StatusManager associateToNetwork:configuration:reply:]_block_invoke";
    v39 = 2080;
    v40 = "W5StatusManager.m";
    v41 = 1024;
    v42 = 1026;
    v43 = 2112;
    v44 = v7;
    _os_log_send_and_compose_impl();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v33 = NSLocalizedFailureReasonErrorKey;
    v34 = @"W5InternalErr";
    (*(v8 + 16))(v8, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:9 userInfo:[NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1]]);
  }

LABEL_26:
  objc_autoreleasePoolPop(context);
}

uint64_t sub_100052994(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100052A7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __addEvent:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100052D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052D9C;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100052D9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 176);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100052E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052E78;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100052E78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 184);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100052EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052F54;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100052F54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 192);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100052FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100053030;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100053030(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 200);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100053098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005310C;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_10005310C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 208);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100053174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000531E8;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000531E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 216);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100053250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000532C4;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000532C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 224);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005332C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000533A0;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000533A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __updateStatusCoalesce];
  [*(a1 + 32) __addEvent:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 232);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005379C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 96) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

id sub_1000539E8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(W5WiFiPreferredNetwork);
  [v2 setSsid:{objc_msgSend(a1, "SSID")}];
  [v2 setSsidString:{objc_msgSend(a1, "networkName")}];
  [v2 setIsEnabled:{objc_msgSend(a1, "isAutoJoinDisabled") ^ 1}];
  [v2 setLastJoinedTimestamp:{objc_msgSend(a1, "lastJoinedAt")}];
  [v2 setSecurity:{sub_100055C38(objc_msgSend(a1, "supportedSecurityTypes"), objc_msgSend(a1, "WEPSubtype"), objc_msgSend(a1, "WAPISubtype"))}];
  [v2 setIsCaptive:{objc_msgSend(a1, "isCaptive")}];
  [v2 setIsPasspoint:{objc_msgSend(a1, "isPasspoint")}];
  [v2 setDomainName:{objc_msgSend(a1, "domainName")}];
  [v2 setIsHidden:{objc_msgSend(a1, "hiddenState") == 1}];
  if ([v2 isPasspoint])
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"wifivelocityd.preferrednetwork.passpoint.%@", [v2 domainName]);
  }

  else
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"wifivelocityd.preferrednetwork.ssid.%@", [v2 ssidString]);
  }

  [v2 setIdentifier:v3];
  return v2;
}

id sub_100053E64(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "eventID")];
  if (v4 > 14)
  {
    if (v4 == 15)
    {
      v5 = *(a1 + 32);
      v6 = 1;
    }

    else
    {
      if (v4 != 16)
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 32);
      v6 = 0;
    }

    [v5 __updateAWDLRealTimeMode:v6];
  }

  else if (v4 == 2)
  {
    [*(a1 + 32) __clearLinkQualityUpdates];
    [*(a1 + 32) __updateLastAssociatedSSID];
  }

  else if (v4 == 3)
  {
    [*(a1 + 32) __clearLinkQualityUpdates];
  }

LABEL_11:
  result = [*(a1 + 32) updatedWiFiCallback];
  if (result)
  {
    v8 = [*(a1 + 32) updatedWiFiCallback];
    if (a2)
    {
      v9 = *(*(a1 + 32) + 40);
      v10 = objc_alloc_init(W5Event);
      v11 = +[NSMutableDictionary dictionary];
      [v11 setObject:objc_msgSend(objc_msgSend(a2 forKeyedSubscript:{"eventID"), "interfaceName"), @"InterfaceName"}];
      [objc_msgSend(a2 "timestamp")];
      [v10 setTimestamp:?];
      switch([objc_msgSend(a2 "eventID")])
      {
        case 1uLL:
          [v10 setEventID:18];
          v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 powerOn]);
          v13 = @"WiFiPowerOn";
          goto LABEL_26;
        case 2uLL:
          [v10 setEventID:19];
          [v11 setObject:objc_msgSend(v9 forKeyedSubscript:{"SSID"), @"WiFiSSID"}];
          v12 = [v9 networkName];
          v13 = @"WiFiSSIDString";
          goto LABEL_26;
        case 3uLL:
          [v10 setEventID:20];
          v12 = [v9 BSSID];
          v13 = @"WiFiBSSID";
          goto LABEL_26;
        case 4uLL:
          [v10 setEventID:24];
          v12 = [v9 countryCode];
          v13 = @"WiFiCountryCode";
          goto LABEL_26;
        case 6uLL:
          v16 = [a2 info];
          v17 = [v16 objectForKeyedSubscript:CWFEventLinkChangeStatusKey];
          [v10 setEventID:22];
          [v11 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", objc_msgSend(v17, "isLinkDown") ^ 1), @"WiFiLinkUp"}];
          [v11 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v17, "reason")), @"WiFiLinkChangeReason"}];
          [v11 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v17, "subreason")), @"WiFiLinkChangeSubreason"}];
          v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 isInvoluntaryLinkDown]);
          v13 = @"WiFiLinkChangeInvoluntary";
          goto LABEL_26;
        case 7uLL:
          v18 = [a2 info];
          v19 = [v18 objectForKeyedSubscript:CWFEventLinkQualityMetricKey];
          v20 = objc_alloc_init(W5WiFiLinkQualityUpdate);
          -[NSNumber setRssi:](v20, "setRssi:", [v19 RSSI]);
          [v19 txRate];
          [(NSNumber *)v20 setTxRate:v21];
          *&v22 = [v19 CCA];
          [(NSNumber *)v20 setCca:v22];
          [objc_msgSend(v19 "updatedAt")];
          [(NSNumber *)v20 setTimestamp:?];
          [v10 setEventID:25];
          v13 = @"WiFiLinkQualityUpdate";
          v23 = v11;
          v12 = v20;
          goto LABEL_27;
        case 8uLL:
          [v10 setEventID:23];
          v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 opMode]);
          v13 = @"WiFiMode";
          goto LABEL_26;
        case 0xEuLL:
          v24 = [a2 info];
          if ([objc_msgSend(v24 objectForKeyedSubscript:{CWFEventRoamStatusKey), "endedAt"}])
          {
            v14 = v10;
            v15 = 31;
          }

          else
          {
            v14 = v10;
            v15 = 30;
          }

          goto LABEL_33;
        case 0xFuLL:
          v14 = v10;
          v15 = 32;
          goto LABEL_33;
        case 0x10uLL:
          v14 = v10;
          v15 = 33;
          goto LABEL_33;
        case 0x11uLL:
          v14 = v10;
          v15 = 2;
          goto LABEL_33;
        case 0x12uLL:
          v14 = v10;
          v15 = 8;
LABEL_33:
          [v14 setEventID:v15];
          break;
        case 0x17uLL:
          [v10 setEventID:14];
          [v11 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "EAP8021XControlMode")), @"EAPControlMode"}];
          [v11 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "EAP8021XSupplicantState")), @"EAPSupplicantState"}];
          [v11 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "EAP8021XControlState")), @"EAPControlState"}];
          v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 EAP8021XClientStatus]);
          v13 = @"EAPClientStatus";
          goto LABEL_26;
        case 0x18uLL:
          [v10 setEventID:11];
          v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 reachabilityFlags]);
          v13 = @"NetworkReachability";
LABEL_26:
          v23 = v11;
LABEL_27:
          [v23 setObject:v12 forKeyedSubscript:v13];
          break;
        default:
          break;
      }

      [v10 setInfo:v11];
    }

    else
    {
      v10 = 0;
    }

    v25 = v8[2];

    return v25(v8, v10);
  }

  return result;
}

void sub_1000543E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(W5Event);
  +[NSDate timeIntervalSinceReferenceDate];
  [v10 setTimestamp:?];
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:objc_msgSend(a6 forKeyedSubscript:{"interfaceName"), @"InterfaceName"}];
  if (a3 <= 48)
  {
    if (a3 == 20)
    {
      v12 = v10;
      v13 = 21;
      goto LABEL_12;
    }

    if (a3 == 34)
    {
      v12 = v10;
      v13 = 26;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a3)
    {
      case '1':
        v12 = v10;
        v13 = 27;
        goto LABEL_12;
      case '6':
        [a6 __clearLinkQualityUpdates];
        [v10 setEventID:29];
        [v11 setObject:objc_msgSend([W5WiFiChannel alloc] forKeyedSubscript:{"initWithChannel:flags:", *(a4 + 12), *(a4 + 16)), @"WiFiChannel"}];
        break;
      case '7':
        v12 = v10;
        v13 = 28;
LABEL_12:
        [v12 setEventID:v13];
        break;
    }
  }

  if ([v10 eventID])
  {
    [v10 setInfo:v11];
    if ([a6 updatedWiFiCallback])
    {
      v14 = [a6 updatedWiFiCallback];
      v14[2](v14, v10);
    }
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1000545E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 48) & 1) == 0)
  {
    *(v3 + 48) = 1;
    v4 = *(a1 + 32);
    [*(a1 + 32) __startEventMonitoring];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100054724(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 48) == 1)
  {
    *(v3 + 48) = 0;
    [*(a1 + 32) __stopEventMonitoring];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000547FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 88) = *(a1 + 40);

  objc_autoreleasePoolPop(v2);
}

void sub_1000548B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 64) = [objc_msgSend(*(*(a1 + 32) + 40) "SSID")];
  *(*(a1 + 32) + 72) = [objc_msgSend(*(*(a1 + 32) + 40) "networkName")];

  objc_autoreleasePoolPop(v2);
}

void sub_1000549A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 56) removeAllObjects];

  objc_autoreleasePoolPop(v2);
}

void sub_100054A64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 56) count] == 10)
  {
    [*(*(a1 + 32) + 56) removeObjectAtIndex:0];
  }

  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100054BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054BDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 56) copy];

  objc_autoreleasePoolPop(v2);
}

id sub_100054D60(id result)
{
  if (result)
  {
    v1 = [[W5WiFiChannel alloc] initWithChannel:objc_msgSend(result flags:{"channel"), objc_msgSend(result, "flags")}];

    return v1;
  }

  return result;
}

void sub_100054EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054EC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 64) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100054FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055008(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) copy];

  objc_autoreleasePoolPop(v2);
}

id sub_10005531C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(W5WiFiScanResult);
  [v2 setScanRecord:{objc_msgSend(a1, "scanRecord")}];
  [v2 setSsid:{objc_msgSend(a1, "SSID")}];
  [v2 setSsidString:{objc_msgSend(a1, "networkName")}];
  [v2 setBssid:{objc_msgSend(a1, "BSSID")}];
  [v2 setChannel:{sub_100054D60(objc_msgSend(a1, "channel"))}];
  [v2 setCountryCode:{objc_msgSend(a1, "countryCode")}];
  [v2 setBeaconInterval:{objc_msgSend(a1, "beaconInterval")}];
  [v2 setRssi:{objc_msgSend(a1, "RSSI")}];
  [v2 setNoise:{objc_msgSend(a1, "noise")}];
  [v2 setIsIBSS:{objc_msgSend(a1, "isIBSS")}];
  [v2 setIsAppleSWAP:{objc_msgSend(a1, "isAppleSWAP")}];
  [v2 setIsPasspoint:{objc_msgSend(a1, "isPasspoint")}];
  [v2 setIsPersonalHotspot:{objc_msgSend(a1, "isPersonalHotspot")}];
  v3 = [a1 airPortBaseStationModel];
  switch(v3)
  {
    case 'f':
      v4 = @"AirPort Express (802.11 b/g)";
      break;
    case 'g':
    case 'n':
    case 'o':
    case 'p':
    case 'v':
      goto LABEL_6;
    case 'h':
      v4 = @"AirPort Extreme 802.11n (1st Generation)";
      break;
    case 'i':
      v4 = @"AirPort Extreme 802.11n w/ Gigabit Ethernet (2nd Generation)";
      break;
    case 'j':
      v4 = @"Time Capsule (1st Generation)";
      break;
    case 'k':
      v4 = @"AirPort Express 802.11n (1st Generation)";
      break;
    case 'l':
      v4 = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (3rd Generation)";
      break;
    case 'm':
      v4 = @"Time Capsule w/ Simultaneous Dual-Band (2nd Generation)";
      break;
    case 'q':
      v4 = @"Time Capsule w/ Simultaneous Dual-Band (3rd Generation)";
      break;
    case 'r':
      v4 = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (4th Generation)";
      break;
    case 's':
      v4 = @"AirPort Express 802.11n w/ Simultaneous Dual-Band (2nd Generation)";
      break;
    case 't':
      v4 = @"Time Capsule w/ Simultaneous Dual-Band (4th Generation)";
      break;
    case 'u':
      v4 = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (5th Generation)";
      break;
    case 'w':
      v4 = @"Time Capsule 802.11ac (5th Generation)";
      break;
    case 'x':
      v4 = @"AirPort Extreme 802.11ac (6th Generation)";
      break;
    default:
      if (v3 == 3)
      {
        v4 = @"AirPort Extreme (802.11 b/g)";
      }

      else
      {
LABEL_6:
        v4 = [NSString stringWithFormat:@"? (%ld)", v3];
      }

      break;
  }

  [v2 setAirPortBaseStationModelName:v4];
  [v2 setSupportedPHYModes:{objc_msgSend(a1, "supportedPHYModes")}];
  v5 = [a1 supportedSecurityTypes];
  v6 = [a1 WAPISubtype];
  v7 = +[NSMutableArray array];
  v8 = v7;
  if ((v5 & 0x80) != 0)
  {
    [v7 addObject:&off_1000EF350];
    if ((v5 & 0x20) == 0)
    {
LABEL_22:
      if ((v5 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  [v8 addObject:&off_1000EF338];
  if ((v5 & 8) == 0)
  {
LABEL_23:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v8 addObject:&off_1000EF398];
  if ((v5 & 0x40) == 0)
  {
LABEL_24:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    [v8 addObject:&off_1000EF1A0];
    goto LABEL_32;
  }

LABEL_30:
  [v8 addObject:&off_1000EF1E8];
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  if (v5 == 4)
  {
    v9 = &off_1000EF170;
    goto LABEL_38;
  }

LABEL_32:
  if (v5)
  {
    [v8 addObject:&off_1000EF158];
  }

  if (v5 != 2)
  {
    goto LABEL_39;
  }

  if (v6 == 2)
  {
    v9 = &off_1000EF380;
  }

  else
  {
    v9 = &off_1000EF218;
  }

LABEL_38:
  [v8 addObject:v9];
LABEL_39:
  [v2 setSupportedSecurityTypes:{objc_msgSend(v8, "copy")}];
  v10 = [a1 isWEP];
  v11 = [a1 WPAUnicastCiphers];
  v12 = [a1 WPAMulticastCipher];
  if (([v11 containsObject:&off_1000EF3C8] & 1) != 0 || objc_msgSend(v11, "containsObject:", &off_1000EF3E0))
  {
    v13 = 1;
  }

  else
  {
    v13 = ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1) | v10;
  }

  v14 = [v11 containsObject:&off_1000EF3F8];
  v15 = [a1 RSNUnicastCiphers];
  v16 = [a1 RSNMulticastCipher];
  if (([v15 containsObject:&off_1000EF3C8] & 1) != 0 || objc_msgSend(v15, "containsObject:", &off_1000EF3E0))
  {
    v17 = 1;
  }

  else
  {
    v17 = ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1) | v13;
  }

  v18 = v12 == 2;
  v19 = [v15 containsObject:&off_1000EF3F8];
  if (v16 == 2)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 | v14 | v18;
  [v2 setSupportsWEPCipher:v17 & 1];
  [v2 setSupportsTKIPCipher:v21 & 1];
  return v2;
}

uint64_t sub_100055C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 128)
  {
    return 12;
  }

  if ((a1 & 0x20) != 0)
  {
    if ((a1 & 8) != 0)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }

  else if ((a1 & 8) != 0)
  {
    return 9;
  }

  else
  {
    v4 = 2;
    v5 = 14;
    if (a3 != 2)
    {
      v5 = 15;
    }

    if (a1 != 2)
    {
      v5 = 0;
    }

    v6 = 8;
    if (a2 != 5)
    {
      v6 = 1;
    }

    if (a1)
    {
      v5 = v6;
    }

    if (a1 != 4)
    {
      v4 = v5;
    }

    v7 = 3;
    if ((a1 & 4) == 0)
    {
      v7 = 4;
    }

    if ((a1 & 0x10) != 0)
    {
      v4 = v7;
    }

    v8 = 5;
    if ((a1 & 0x10) != 0)
    {
      v8 = 6;
    }

    if ((a1 & 0x40) != 0)
    {
      return v8;
    }

    else
    {
      return v4;
    }
  }
}

void sub_100055DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055E14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v4 = [v3[10] objectForKeyedSubscript:?];
    if (!v4)
    {
      v4 = [*(a1 + 40) preferredNetworksList];
      [*(*(a1 + 40) + 80) setObject:v4 forKeyedSubscript:*(a1 + 32)];
    }
  }

  else
  {
    v4 = [v3 preferredNetworksList];
  }

  *(*(*(a1 + 48) + 8) + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_100055F1C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 80) removeObjectForKey:?];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000564CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 32) "__ipv6SetupConfig")];
  if ([v3 isEqualToString:kSCValNetIPv6ConfigMethodAutomatic])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 1;
  }

  else if ([v3 isEqualToString:kSCValNetIPv6ConfigMethodLinkLocal])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 2;
  }

  else if ([v3 isEqualToString:kSCValNetIPv6ConfigMethodManual])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 3;
  }

  else if ([v3 isEqualToString:kSCValNetIPv6ConfigMethodRouterAdvertisement])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 4;
  }

  else
  {
    v6 = [v3 isEqualToString:kSCValNetIPv6ConfigMethod6to4];
    v4 = *(*(a1 + 40) + 8);
    if (v6)
    {
      v5 = 5;
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *(v4 + 24) = v5;

  objc_autoreleasePoolPop(v2);
}

void sub_1000566A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 32) "__ipv4SetupConfig")];
  if ([v3 isEqualToString:kSCValNetIPv4ConfigMethodAutomatic])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 1;
  }

  else if ([v3 isEqualToString:kSCValNetIPv4ConfigMethodLinkLocal])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 2;
  }

  else if ([v3 isEqualToString:kSCValNetIPv4ConfigMethodDHCP])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 3;
  }

  else if ([v3 isEqualToString:kSCValNetIPv4ConfigMethodManual])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 4;
  }

  else if ([v3 isEqualToString:kSCValNetIPv4ConfigMethodBOOTP])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 5;
  }

  else if ([v3 isEqualToString:kSCValNetIPv4ConfigMethodINFORM])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = 6;
  }

  else
  {
    v6 = [v3 isEqualToString:kSCValNetIPv4ConfigMethodPPP];
    v4 = *(*(a1 + 40) + 8);
    if (v6)
    {
      v5 = 7;
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *(v4 + 24) = v5;

  objc_autoreleasePoolPop(v2);
}

void sub_1000568CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) __dnsSetupConfig])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000569D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __proxiesSetupConfig];
  if ([v3 count] != 2)
  {
    if ([v3 count])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = [v3 objectForKeyedSubscript:kSCPropNetProxiesExceptionsList];
  if ([v4 count] == 2 && objc_msgSend(v4, "containsObject:", @"*.local") && objc_msgSend(v4, "containsObject:", @"169.254/16") && (objc_msgSend(objc_msgSend(v3, "objectForKeyedSubscript:", kSCPropNetProxiesFTPPassive), "BOOLValue") & 1) != 0)
  {
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_9:

  objc_autoreleasePoolPop(v2);
}

_BYTE *sub_1000571A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == 1)
  {
    return [result __sendBluetoothStatusChangeEvent];
  }

  return result;
}

_BYTE *sub_1000571C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == 1)
  {
    return [result __sendBluetoothStatusChangeEvent];
  }

  return result;
}

void sub_1000571D8(id a1, NSError *a2)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_10005728C(id a1, NSError *a2)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1000573E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 32) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100057518(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    v4 = *(a1 + 32);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000575E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100057F8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  [*(a1 + 32) __nextRequest];

  objc_autoreleasePoolPop(v2);
}

void sub_10005815C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __pendingRequestWithUUID:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    if ([v3 reply])
    {
      v5 = [v4 reply];
      v17 = NSLocalizedFailureReasonErrorKey;
      v18 = @"W5CancelledErr";
      v5[2](v5, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1]]);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    [*(*(a1 + 32) + 48) removeObject:v4];
  }

  else if ([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")])
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    if (v8)
    {
      kill([v8 processIdentifier], 9);

      *(*(a1 + 32) + 24) = 0;
      v7 = *(a1 + 32);
    }

    v9 = *(v7 + 32);
    if (v9)
    {
      kill([v9 processIdentifier], 9);

      *(*(a1 + 32) + 32) = 0;
      v7 = *(a1 + 32);
    }

    v10 = [objc_msgSend(*(v7 + 56) "requestInfo")];
    v11 = *(a1 + 32);
    if ((v10 & 1) == 0)
    {
      [v11 stopSniffingActiveRequestWithError:0];
      goto LABEL_24;
    }

    if ([objc_msgSend(v11[7] "requestInfo")])
    {
      v12 = [objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")];
      v12[2](v12, 0);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = NSLocalizedFailureReasonErrorKey;
      v16 = @"W5ParamErr";
      (*(v14 + 16))(v14, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]]);
    }
  }

  if (*(*(a1 + 32) + 16) && +[W5FeatureAvailability isInternalBuild])
  {
    [*(*(a1 + 32) + 16) removeNotificationWithUUID:*(a1 + 40)];
  }

LABEL_24:
  objc_autoreleasePoolPop(v2);
}

void sub_100058540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000585B4;
  v4[3] = &unk_1000E1C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000585B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 32) = *(a1 + 40);

  objc_autoreleasePoolPop(v2);
}

void sub_100058ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058F4C;
  block[3] = &unk_1000E1948;
  block[4] = a3;
  block[5] = v3;
  block[6] = a2;
  dispatch_async(v4, block);
}

void sub_100058F4C(uint64_t a1)
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
      v11 = 136315906;
      v12 = "[W5WiFiSniffManager __nextRequest]_block_invoke_2";
      v13 = 2080;
      v14 = "W5WiFiSniffManager.m";
      v15 = 1024;
      v16 = 378;
      v17 = 2114;
      v18 = v6;
      LODWORD(v10) = 38;
      v9 = &v11;
      _os_log_send_and_compose_impl();
    }

    if ([objc_msgSend(*(*(a1 + 40) + 56) requestInfo])
    {
      v7 = [objc_msgSend(*(*(a1 + 40) + 56) "requestInfo")];
      v7[2](v7, *(a1 + 32));
    }

    *(*(a1 + 40) + 56) = 0;
    [*(a1 + 40) __nextRequest];
  }

  else
  {
    if (v5)
    {
      v11 = 136315650;
      v12 = "[W5WiFiSniffManager __nextRequest]_block_invoke";
      v13 = 2080;
      v14 = "W5WiFiSniffManager.m";
      v15 = 1024;
      v16 = 389;
      _os_log_send_and_compose_impl();
    }

    v8 = *(a1 + 40);
    if (*(v8 + 16))
    {
      [*(*(a1 + 40) + 16) dispatchNotificationWithTitle:@"WiFi Disconnected" subtitle:+[NSString stringWithFormat:](NSString body:"stringWithFormat:" type:@"%@ %@" UUID:@"Sniffer on Channel" actionURL:{objc_msgSend(objc_msgSend(objc_msgSend(*(v8 + 56), "requestInfo"), "channel"), "snifferDescription")), @"WiFi will remain disconnected while sniffer log collection is active.", 0, objc_msgSend(objc_msgSend(*(*(a1 + 40) + 56), "requestInfo"), "uuid"), 0}];
      v8 = *(a1 + 40);
    }

    *(*(a1 + 40) + 24) = *(a1 + 48);
    [*(a1 + 40) __setupWatchdogTask];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000591D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 16))
  {
    v6 = +[W5FeatureAvailability isInternalBuild];
    v4 = *(a1 + 32);
    if (v6)
    {
      [*(v4 + 16) removeNotificationWithUUID:{objc_msgSend(objc_msgSend(*(v4 + 56), "requestInfo"), "uuid")}];
      v4 = *(a1 + 32);
    }
  }

  v7 = *(v4 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059298;
  v8[3] = &unk_1000E1C98;
  v8[4] = v4;
  v8[5] = a3;
  dispatch_async(v7, v8);
}

void sub_100059298(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")])
  {
    v3 = [objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")];
    if ([*(a1 + 40) code] == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    v3[2](v3, v4);
  }

  *(*(a1 + 32) + 24) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  if (v6)
  {
    kill([v6 processIdentifier], 9);

    *(*(a1 + 32) + 32) = 0;
    v5 = *(a1 + 32);
  }

  *(*(a1 + 32) + 56) = 0;
  [*(a1 + 32) __nextRequest];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10005938C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ([objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")])
    {
      v4 = [objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")];
      v4[2](v4, a2);
    }

    *(*(a1 + 32) + 56) = 0;
    v5 = *(a1 + 32);

    return [v5 __nextRequest];
  }

  else
  {
    v7 = sub_100098A04();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      return _os_log_send_and_compose_impl();
    }
  }

  return result;
}

void sub_1000595A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 56) == 0;

  objc_autoreleasePoolPop(v2);
}

void sub_100059664(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) removeAllObjects];
  if (([objc_msgSend(*(*(a1 + 32) + 56) "requestInfo")] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v7 = NSLocalizedFailureReasonErrorKey;
    v8 = @"W5CancelledErr";
    [v3 stopSniffingActiveRequestWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.wifivelocity.error", 6, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v8, &v7, 1))}];
  }

  *(*(a1 + 32) + 56) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v5)
  {
    kill([v5 processIdentifier], 9);

    *(*(a1 + 32) + 24) = 0;
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 32);
  if (v6)
  {
    kill([v6 processIdentifier], 9);

    *(*(a1 + 32) + 32) = 0;
  }

  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
}

id sub_100059BEC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) timeoutTimer] && !dispatch_source_testcancel(objc_msgSend(*(*(a1 + 32) + 56), "timeoutTimer")))
  {
    dispatch_source_cancel([*(*(a1 + 32) + 56) timeoutTimer]);
  }

  [*(*(a1 + 32) + 56) setTimeoutTimer:0];
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[W5WiFiSniffManager startSniffingWithRequest:interfaceName:reply:]_block_invoke";
    v8 = 2080;
    v9 = "W5WiFiSniffManager.m";
    v10 = 1024;
    v11 = 613;
    LODWORD(v5) = 28;
    v4 = &v6;
    _os_log_send_and_compose_impl();
  }

  return [*(a1 + 32) stopSniffingActiveRequestWithError:{0, v4, v5}];
}

uint64_t sub_10005BE14()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10005E4F0;
  v0 = qword_100106C30;
  v7 = sub_10005E500;
  v8 = qword_100106C30;
  if (!qword_100106C30)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10007E270;
    v2[3] = &unk_1000E13B0;
    v2[4] = &v3;
    sub_10007E270(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10005BEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005BFA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 208) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10005C0A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 224) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10005C19C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 216) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10005C65C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([objc_msgSend(*(a1 + 32) "itemRequests")] != 1 || objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "itemRequests"), "firstObject"), "itemID") != 56)
  {
    if ([objc_msgSend(*(a1 + 32) "itemRequests")] != 1 || objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "itemRequests"), "firstObject"), "itemID") != 79)
    {
      if ([objc_msgSend(objc_msgSend(*(a1 + 32) "configuration")])
      {
        v14 = sub_100098A04();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v44) = 0;
          LODWORD(v31) = 2;
          v30 = &v44;
          _os_log_send_and_compose_impl();
        }

        v15 = objc_alloc_init(W5LogItemRequestInternal);
        [(W5LogItemRequestInternal *)v15 setUuid:+[NSUUID UUID]];
        v35 = [W5LogItemRequest requestWithItemID:56 configuration:0];
        [(W5LogItemRequestInternal *)v15 setItemRequests:[NSArray arrayWithObjects:&v35 count:1]];
        [(W5LogItemRequestInternal *)v15 setConfiguration:&off_1000F2158];
        [(W5LogItemRequestInternal *)v15 setFilename:[(NSUUID *)[(W5LogItemRequestInternal *)v15 uuid] UUIDString]];
        [(W5LogItemRequestInternal *)v15 setAdditionalLog:0];
        -[W5LogItemRequestInternal setUid:](v15, "setUid:", [*(a1 + 32) uid]);
        -[W5LogItemRequestInternal setGid:](v15, "setGid:", [*(a1 + 32) gid]);
        [(W5LogItemRequestInternal *)v15 setIncludeEvents:0];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10005D058;
        v33[3] = &unk_1000E2C60;
        v16 = *(a1 + 32);
        v33[4] = *(a1 + 40);
        v33[5] = v15;
        v33[6] = v16;
        [(W5LogItemRequestInternal *)v15 setReply:v33];
        [*(*(a1 + 40) + 48) addObject:v15];
        v17 = sub_100098A04();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v44) = 0;
          LODWORD(v31) = 2;
          v30 = &v44;
          _os_log_send_and_compose_impl();
        }

        v18 = objc_alloc_init(W5LogItemRequestInternal);
        [(W5LogItemRequestInternal *)v18 setUuid:+[NSUUID UUID]];
        v34 = [W5LogItemRequest requestWithItemID:79 configuration:0];
        [(W5LogItemRequestInternal *)v18 setItemRequests:[NSArray arrayWithObjects:&v34 count:1]];
        [(W5LogItemRequestInternal *)v18 setConfiguration:&off_1000F2180];
        [(W5LogItemRequestInternal *)v18 setFilename:[(NSUUID *)[(W5LogItemRequestInternal *)v18 uuid] UUIDString]];
        [(W5LogItemRequestInternal *)v18 setAdditionalLog:0];
        -[W5LogItemRequestInternal setUid:](v18, "setUid:", [*(a1 + 32) uid]);
        -[W5LogItemRequestInternal setGid:](v18, "setGid:", [*(a1 + 32) gid]);
        [(W5LogItemRequestInternal *)v18 setIncludeEvents:0];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10005D530;
        v32[3] = &unk_1000E2C60;
        v19 = *(a1 + 32);
        v32[4] = *(a1 + 40);
        v32[5] = v18;
        v32[6] = v19;
        [(W5LogItemRequestInternal *)v18 setReply:v32];
        [*(*(a1 + 40) + 48) addObject:v18];
      }

      goto LABEL_22;
    }

    v10 = [objc_msgSend(objc_msgSend(*(a1 + 32) "configuration")];
    v11 = *(a1 + 40);
    if (v10)
    {
      if (*(v11 + 184))
      {
        v12 = sub_100098A04();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          v44 = 138543362;
          v45 = v13;
          LODWORD(v31) = 12;
          v30 = &v44;
          _os_log_send_and_compose_impl();
        }

        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = v7[23];
        goto LABEL_15;
      }

      if ([objc_msgSend(objc_msgSend(*(v11 + 56) "configuration")])
      {
        v27 = sub_100098A04();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v44) = 0;
          LODWORD(v31) = 2;
          v30 = &v44;
          goto LABEL_41;
        }

LABEL_42:
        [*(*(a1 + 40) + 48) addObject:{*(a1 + 32), v30, v31}];
        goto LABEL_23;
      }

      if ([*(a1 + 40) __logItems:objc_msgSend(*(a1 + 40) containsID:{"__expandLogItems:configuration:", objc_msgSend(*(*(a1 + 40) + 56), "itemRequests"), objc_msgSend(*(*(a1 + 40) + 56), "configuration")), 14}])
      {
        v29 = sub_100098A04();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v44) = 0;
          LODWORD(v31) = 2;
          v30 = &v44;
          _os_log_send_and_compose_impl();
        }

        if ([*(a1 + 32) reply])
        {
          v21 = [*(a1 + 32) reply];
          v22 = NSPOSIXErrorDomain;
          v38 = NSLocalizedFailureReasonErrorKey;
          v39 = @"EDEADLK";
          v23 = &v39;
          v24 = &v38;
          goto LABEL_34;
        }

        goto LABEL_23;
      }

LABEL_22:
      [*(*(a1 + 40) + 48) addObject:{*(a1 + 32), v30, v31}];
      [*(a1 + 40) __nextRequest];
      goto LABEL_23;
    }

    if (![v11 __logItems:objc_msgSend(v11 containsID:{"__expandLogItems:configuration:", objc_msgSend(*(v11 + 56), "itemRequests"), objc_msgSend(*(*(a1 + 40) + 56), "configuration")), 14}])
    {
      goto LABEL_22;
    }

    v25 = sub_100098A04();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44) = 0;
      LODWORD(v31) = 2;
      v30 = &v44;
      _os_log_send_and_compose_impl();
    }

    if (![*(a1 + 32) reply])
    {
      goto LABEL_23;
    }

    v21 = [*(a1 + 32) reply];
    v22 = NSPOSIXErrorDomain;
    v36 = NSLocalizedFailureReasonErrorKey;
    v37 = @"EDEADLK";
    v23 = &v37;
    v24 = &v36;
LABEL_34:
    (*(v21 + 2))(v21, [NSError errorWithDomain:v22 code:11 userInfo:[NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1]], 0, 0);
    goto LABEL_23;
  }

  v3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "configuration")];
  v4 = *(a1 + 40);
  if (!v3)
  {
    if (![v4 __logItems:objc_msgSend(v4 containsID:{"__expandLogItems:configuration:", objc_msgSend(*(v4 + 56), "itemRequests"), objc_msgSend(*(*(a1 + 40) + 56), "configuration")), 14}])
    {
      goto LABEL_22;
    }

    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44) = 0;
      LODWORD(v31) = 2;
      v30 = &v44;
      _os_log_send_and_compose_impl();
    }

    if (![*(a1 + 32) reply])
    {
      goto LABEL_23;
    }

    v21 = [*(a1 + 32) reply];
    v22 = NSPOSIXErrorDomain;
    v40 = NSLocalizedFailureReasonErrorKey;
    v41 = @"EDEADLK";
    v23 = &v41;
    v24 = &v40;
    goto LABEL_34;
  }

  if (*(v4 + 176))
  {
    v5 = sub_100098A04();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v44 = 138543362;
      v45 = v6;
      LODWORD(v31) = 12;
      v30 = &v44;
      _os_log_send_and_compose_impl();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v7[22];
LABEL_15:
    [v7 __replyWithCachedSysdiagnoseContentForRequest:v8 temporaryURL:{v9, v30, v31}];
    goto LABEL_23;
  }

  if ([objc_msgSend(objc_msgSend(*(v4 + 56) "configuration")])
  {
    v26 = sub_100098A04();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44) = 0;
      LODWORD(v31) = 2;
      v30 = &v44;
LABEL_41:
      _os_log_send_and_compose_impl();
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (![*(a1 + 40) __logItems:objc_msgSend(*(a1 + 40) containsID:{"__expandLogItems:configuration:", objc_msgSend(*(*(a1 + 40) + 56), "itemRequests"), objc_msgSend(*(*(a1 + 40) + 56), "configuration")), 14}])
  {
    goto LABEL_22;
  }

  v28 = sub_100098A04();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v44) = 0;
    LODWORD(v31) = 2;
    v30 = &v44;
    _os_log_send_and_compose_impl();
  }

  if ([*(a1 + 32) reply])
  {
    v21 = [*(a1 + 32) reply];
    v22 = NSPOSIXErrorDomain;
    v42 = NSLocalizedFailureReasonErrorKey;
    v43 = @"EDEADLK";
    v23 = &v43;
    v24 = &v42;
    goto LABEL_34;
  }

LABEL_23:
  objc_autoreleasePoolPop(v2);
}

void sub_10005D058(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v3 = vextq_s8(a1[2], a1[2], 8uLL);
  v4 = a1[2].i64[0];
  v7[2] = sub_10005D0E0;
  v7[3] = &unk_1000E2C38;
  v5 = *(v4 + 40);
  v8 = v3;
  v6 = a1[3].i64[0];
  v9 = a3;
  v10 = v6;
  dispatch_async(v5, v7);
}

void sub_10005D0E0(id *a1)
{
  context = objc_autoreleasePoolPush();
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [objc_msgSend(objc_msgSend(a1[4] "uuid")];
    v20 = 138543362;
    v21 = v3;
    LODWORD(v14) = 12;
    v12 = &v20;
    _os_log_send_and_compose_impl();
  }

  if (*(a1[5] + 22))
  {
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [*(a1[5] + 22) path], 0);
  }

  *(a1[5] + 22) = [a1[6] copy];
  v4 = +[NSMutableIndexSet indexSet];
  if ([*(a1[5] + 6) count])
  {
    v5 = 0;
    do
    {
      v6 = [*(a1[5] + 6) objectAtIndexedSubscript:v5];
      if ([objc_msgSend(v6 "itemRequests")] == 1 && objc_msgSend(objc_msgSend(objc_msgSend(v6, "itemRequests"), "firstObject"), "itemID") == 56 && objc_msgSend(objc_msgSend(objc_msgSend(a1[7], "configuration"), "objectForKeyedSubscript:", @"AllowCachedSysdiagnose"), "BOOLValue"))
      {
        v7 = sub_100098A04();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543362;
          v21 = v6;
          LODWORD(v15) = 12;
          v13 = &v20;
          _os_log_send_and_compose_impl();
        }

        [a1[5] __replyWithCachedSysdiagnoseContentForRequest:v6 temporaryURL:{a1[6], v13, v15}];
        [v4 addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [*(a1[5] + 6) count]);
  }

  [*(a1[5] + 6) removeObjectsAtIndexes:v4];
  v8 = dispatch_time(0, 480000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v9 = vextq_s8(*(a1 + 5), *(a1 + 5), 8uLL);
  v10 = a1[5];
  block[2] = sub_10005D3D4;
  block[3] = &unk_1000E1948;
  v11 = *(v10 + 5);
  v18 = v9;
  v19 = a1[4];
  dispatch_after(v8, v11, block);
  objc_autoreleasePoolPop(context);
}

void sub_10005D3D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32) && [*(*(a1 + 40) + 176) isEqual:?])
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend(objc_msgSend(*(a1 + 48) "uuid")];
      v5 = [*(a1 + 32) path];
      v8[0] = 67109634;
      v8[1] = 480;
      v9 = 2114;
      v10 = v4;
      v11 = 2114;
      v12 = v5;
      LODWORD(v7) = 28;
      v6 = v8;
      _os_log_send_and_compose_impl();
    }

    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v6, v7), "removeItemAtPath:error:", [*(*(a1 + 40) + 176) path], 0);

    *(*(a1 + 40) + 176) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005D530(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v3 = vextq_s8(a1[2], a1[2], 8uLL);
  v4 = a1[2].i64[0];
  v7[2] = sub_10005D5B8;
  v7[3] = &unk_1000E2C38;
  v5 = *(v4 + 40);
  v8 = v3;
  v6 = a1[3].i64[0];
  v9 = a3;
  v10 = v6;
  dispatch_async(v5, v7);
}

void sub_10005D5B8(id *a1)
{
  context = objc_autoreleasePoolPush();
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [objc_msgSend(objc_msgSend(a1[4] "uuid")];
    v20 = 138543362;
    v21 = v3;
    LODWORD(v14) = 12;
    v12 = &v20;
    _os_log_send_and_compose_impl();
  }

  if (*(a1[5] + 23))
  {
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [*(a1[5] + 23) path], 0);
  }

  *(a1[5] + 23) = [a1[6] copy];
  v4 = +[NSMutableIndexSet indexSet];
  if ([*(a1[5] + 6) count])
  {
    v5 = 0;
    do
    {
      v6 = [*(a1[5] + 6) objectAtIndexedSubscript:v5];
      if ([objc_msgSend(v6 "itemRequests")] == 1 && objc_msgSend(objc_msgSend(objc_msgSend(v6, "itemRequests"), "firstObject"), "itemID") == 79 && objc_msgSend(objc_msgSend(objc_msgSend(a1[7], "configuration"), "objectForKeyedSubscript:", @"AllowCachedSysdiagnose"), "BOOLValue"))
      {
        v7 = sub_100098A04();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543362;
          v21 = v6;
          LODWORD(v15) = 12;
          v13 = &v20;
          _os_log_send_and_compose_impl();
        }

        [a1[5] __replyWithCachedSysdiagnoseContentForRequest:v6 temporaryURL:{a1[6], v13, v15}];
        [v4 addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [*(a1[5] + 6) count]);
  }

  [*(a1[5] + 6) removeObjectsAtIndexes:v4];
  v8 = dispatch_time(0, 480000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v9 = vextq_s8(*(a1 + 5), *(a1 + 5), 8uLL);
  v10 = a1[5];
  block[2] = sub_10005D8AC;
  block[3] = &unk_1000E1948;
  v11 = *(v10 + 5);
  v18 = v9;
  v19 = a1[4];
  dispatch_after(v8, v11, block);
  objc_autoreleasePoolPop(context);
}

void sub_10005D8AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32) && [*(*(a1 + 40) + 184) isEqual:?])
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend(objc_msgSend(*(a1 + 48) "uuid")];
      v5 = [*(a1 + 32) path];
      v8[0] = 67109634;
      v8[1] = 480;
      v9 = 2114;
      v10 = v4;
      v11 = 2114;
      v12 = v5;
      LODWORD(v7) = 28;
      v6 = v8;
      _os_log_send_and_compose_impl();
    }

    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v6, v7), "removeItemAtPath:error:", [*(*(a1 + 40) + 184) path], 0);

    *(*(a1 + 40) + 184) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005DA80(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __pendingRequestWithUUID:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    if ([v3 reply])
    {
      v5 = [v4 reply];
      v14 = NSLocalizedFailureReasonErrorKey;
      v15 = @"W5CancelledErr";
      (*(v5 + 2))(v5, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]], 0, 0);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    [*(*(a1 + 32) + 48) removeObject:v4];
  }

  else if ([objc_msgSend(*(*(a1 + 32) + 56) "uuid")])
  {
    if ([*(*(a1 + 32) + 56) reply])
    {
      v7 = [*(*(a1 + 32) + 56) reply];
      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = @"W5CancelledErr";
      (*(v7 + 2))(v7, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:6 userInfo:[NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1]], 0, 0);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = NSLocalizedFailureReasonErrorKey;
      v11 = @"W5ParamErr";
      (*(v9 + 16))(v9, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]]);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005DDB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) removeAllObjects];

  *(*(a1 + 32) + 56) = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(*(a1 + 32) + 72) allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        kill([*(*(&v8 + 1) + 8 * v7) processIdentifier], 9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
}

void sub_10005E4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005E50C(uint64_t a1, NSError *a2, void *a3, uint64_t a4)
{
  v8 = [objc_msgSend(*(a1 + 32) "configuration")];
  v9 = [objc_msgSend(objc_msgSend(*(a1 + 32) "configuration")];
  if (a3)
  {
    v21 = a3;
    v24 = 0;
    v10 = -[NSURL URLByAppendingPathComponent:](+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/var/run/com.apple.wifivelocity"), "URLByAppendingPathComponent:", [*(a1 + 32) filename]);
    if (v9)
    {
      sub_100098A4C(v21, v10, &v24);
    }

    else
    {
      v12 = +[NSFileManager defaultManager];
      v28[0] = &off_1000EF410;
      v27[0] = NSFilePosixPermissions;
      v27[1] = NSFileOwnerAccountID;
      v28[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) uid]);
      v27[2] = NSFileGroupOwnerAccountID;
      v28[2] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) gid]);
      -[NSFileManager setAttributes:ofItemAtPath:error:](v12, "setAttributes:ofItemAtPath:error:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v28, v27, 3), [v21 path], 0);
    }

    v13 = v10;
    if ([objc_msgSend(*(a1 + 32) "configuration")])
    {
      v14 = -[NSURL URLByAppendingPathComponent:](-[NSURL URLByAppendingPathComponent:](-[NSFileManager containerURLForSecurityApplicationGroupIdentifier:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "containerURLForSecurityApplicationGroupIdentifier:", @"group.com.apple.wifi.logs"), "URLByAppendingPathComponent:", @"previous"), "URLByAppendingPathComponent:", [*(a1 + 32) filename]);
      sub_100099544(v10, v14, &v24);
      v15 = +[NSFileManager defaultManager];
      v26[0] = &off_1000EF410;
      v25[0] = NSFilePosixPermissions;
      v25[1] = NSFileOwnerAccountID;
      v26[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) uid]);
      v25[2] = NSFileGroupOwnerAccountID;
      v26[2] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) gid]);
      [(NSFileManager *)v15 setAttributes:[NSDictionary dictionaryWithObjects:v25 forKeys:3 count:?], [(NSURL *)v14 path], 0];
    }

    a3 = v21;
    if ([*(a1 + 32) reply])
    {
      v16 = [*(a1 + 32) reply];
      if (v24)
      {
        v17 = v24;
      }

      else
      {
        v17 = a2;
      }

      v16[2](v16, v17, v13, a4);
    }
  }

  else if ([*(a1 + 32) reply])
  {
    v11 = [*(a1 + 32) reply];
    (*(v11 + 2))(v11, a2, 0, 0);
  }

  [*(*(a1 + 40) + 8) clearCachedStatusWithUUID:{objc_msgSend(objc_msgSend(*(a1 + 32), "uuid"), "UUIDString")}];
  [objc_msgSend(*(*(a1 + 40) + 8) "wifi")];
  [*(a1 + 40) __purgeFilesInDirectory:-[NSURL path](-[NSURL URLByAppendingPathComponent:](-[NSFileManager containerURLForSecurityApplicationGroupIdentifier:](+[NSFileManager defaultManager](NSFileManager matching:"defaultManager") maxAge:"containerURLForSecurityApplicationGroupIdentifier:" maxCount:{@"group.com.apple.wifi.logs", "URLByAppendingPathComponent:", @"previous", "path"), 0, 604800, 20}];
  [*(a1 + 40) __purgeFilesInDirectory:@"/var/run/com.apple.wifivelocity/wifiperf" matching:0 maxAge:21600 maxCount:10];
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(v19 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E994;
  block[3] = &unk_1000E2CF0;
  block[4] = v19;
  block[5] = v8;
  v23 = v9;
  block[6] = v18;
  block[7] = a3;
  block[8] = *(a1 + 48);
  dispatch_async(v20, block);
}

void sub_10005E994(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 72) allKeys];
  v4 = [*(*(a1 + 32) + 80) allKeys];
  v5 = [*(*(a1 + 32) + 160) allKeys];
  v6 = [*(*(a1 + 32) + 168) allKeys];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 1000000000 * [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 120000000000;
  }

  v9 = dispatch_time(0, v8);
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005EADC;
  block[3] = &unk_1000E2CC8;
  v21 = *(a1 + 72);
  v14 = *(a1 + 48);
  v15 = v3;
  v16 = v10;
  v17 = v4;
  v18 = v5;
  v12 = *(a1 + 64);
  v19 = v6;
  v20 = v12;
  dispatch_after(v9, v11, block);

  *(*(a1 + 32) + 56) = 0;
  [*(a1 + 32) __nextRequest];
  objc_autoreleasePoolPop(v2);
}

void sub_10005EADC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) uuid];
    v18 = 138543362;
    v19 = v4;
    LODWORD(v12) = 12;
    v11 = &v18;
    _os_log_send_and_compose_impl();
  }

  if (*(a1 + 96) == 1)
  {
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [*(a1 + 40) path], 0);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 48);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:{16, v11, v12}];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 56) + 72) objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          kill([v10 processIdentifier], 9);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 56) + 72) removeObjectsForKeys:*(a1 + 48)];
  [*(*(a1 + 56) + 80) removeObjectsForKeys:*(a1 + 64)];
  [*(*(a1 + 56) + 160) removeObjectsForKeys:*(a1 + 72)];
  [*(*(a1 + 56) + 168) removeObjectsForKeys:*(a1 + 80)];
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  *(*(*(a1 + 88) + 8) + 40) = 0;
  objc_autoreleasePoolPop(v2);
}

void sub_1000616B8(id a1)
{
  v1 = IOServiceNameMatching("wlan");
  if (v1)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (MatchingService)
    {
      byte_100106C20 = 1;
      IOObjectRelease(MatchingService);
    }
  }

  if ((byte_100106C20 & 1) == 0)
  {
    v3 = IOServiceNameMatching("marconi-wifi");
    if (v3)
    {
      v4 = IOServiceGetMatchingService(kIOMainPortDefault, v3);
      if (v4)
      {
        byte_100106C20 = 1;
        IOObjectRelease(v4);
      }
    }
  }

  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100064560(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSMutableDictionary dictionary];
  [*(*(a1 + 32) + 104) setObject:v3 forKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")}];
  [*(*(a1 + 32) + 96) setObject:+[NSMutableString string](NSMutableString forKeyedSubscript:{"string"), objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

        [v3 setObject:*(*(&v13 + 1) + 8 * i) forKeyedSubscript:{objc_msgSend(objc_msgSend(*(*(&v13 + 1) + 8 * i), "uuid"), "UUIDString")}];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v9 = [objc_msgSend(objc_msgSend(*(a1 + 40) "configuration")];
  v10 = "NOT ";
  if (v9)
  {
    v10 = "";
  }

  v11 = [NSString stringWithFormat:@"MegaWiFi profile %sinstalled\n", v10];
  [objc_msgSend(*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")), "appendString:", v11}];
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v11;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000647B4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = sub_10005E4F0;
  v29 = sub_10005E500;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v3 = dispatch_queue_create(0, 0);
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "configuration")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064A90;
  block[3] = &unk_1000E2DB0;
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  v19 = v3;
  v20 = v2;
  v21 = v23;
  v22 = &v25;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  [objc_msgSend(*(*(a1 + 48) + 8) "concurrentQueue")];
  if (v4)
  {
    v6 = dispatch_time(0, 1000000 * v4);
  }

  else
  {
    v6 = -1;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006516C;
  v14[3] = &unk_1000E27F0;
  v14[4] = v23;
  v14[5] = &v25;
  v14[6] = dispatch_block_wait(v5, v6);
  dispatch_sync(v3, v14);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(v8 + 88);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100065260;
  v13[3] = &unk_1000E2DD8;
  v13[7] = &v25;
  v13[8] = v4;
  v10 = *(a1 + 32);
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = v7;
  dispatch_sync(v9, v13);
  v11 = *(a1 + 72);
  if (v11)
  {
    (*(v11 + 16))(v11, [v26[5] copy], *(a1 + 56), v2);
  }

  v12 = v26[5];
  dispatch_release(v3);
  _Block_release(v5);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
}

void sub_100064A64(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100064A90(uint64_t a1)
{
  v2 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  while (v2 < [*(a1 + 32) count] && (v32[3] & 1) == 0 && *(*(*(a1 + 88) + 8) + 24) != 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [*(a1 + 32) objectAtIndexedSubscript:v2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v5 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v6 = *(a1 + 40);
    block[2] = sub_100064DEC;
    block[3] = &unk_1000E2D60;
    v7 = *(v6 + 40);
    v28 = v5;
    v29 = v4;
    v30 = v2;
    dispatch_sync(v7, block);
    v8 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [v4 configuration]);
    [(NSMutableDictionary *)v8 setObject:*(a1 + 56) forKeyedSubscript:@"OutputDirectory"];
    [(NSMutableDictionary *)v8 setObject:*(a1 + 64) forKeyedSubscript:@"HomeDirectory"];
    -[NSMutableDictionary setObject:forKeyedSubscript:](v8, "setObject:forKeyedSubscript:", [objc_msgSend(objc_msgSend(*(a1 + 48) "uuid")], @"InternalUUID");
    -[NSMutableDictionary setObject:forKeyedSubscript:](v8, "setObject:forKeyedSubscript:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 48) includeEvents]), @"IncludeEvents");
    -[NSMutableDictionary setObject:forKeyedSubscript:](v8, "setObject:forKeyedSubscript:", [objc_msgSend(*(a1 + 48) "configuration")], @"UseMegaWiFiProfileLimits");
    v9 = [v4 copy];
    [v9 setConfiguration:v8];
    v10 = [*(a1 + 40) __collectLogItem:v9 error:0];
    v11 = v10;
    if (v10)
    {
      [v10 setRequest:v4];
      v12 = *(a1 + 72);
      v13 = *(a1 + 80);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100064E88;
      v26[3] = &unk_1000E2778;
      v14 = *(a1 + 88);
      v26[5] = v11;
      v26[6] = v14;
      v26[4] = v13;
      dispatch_sync(v12, v26);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100064EDC;
    v17[3] = &unk_1000E2D88;
    v15 = *(*(a1 + 40) + 40);
    v18 = *(a1 + 40);
    v16 = *(a1 + 72);
    v23 = *(a1 + 88);
    v19 = v16;
    v20 = v11;
    v24 = v35;
    v25 = v2;
    v21 = *(a1 + 32);
    v22 = &v31;
    dispatch_sync(v15, v17);
    objc_autoreleasePoolPop(v3);
    ++v2;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);
}

void sub_100064DB8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100064DEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) includeEvents])
  {
    if (!*(a1 + 56))
    {
      v3 = *(*(a1 + 40) + 208);
      if (v3)
      {
        (*(v3 + 16))(v3, [*(a1 + 32) uuid], 0, objc_msgSend(*(a1 + 48), "copy"), 0.0);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100064E88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100064EDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 72) + 8) + 24) = [objc_msgSend(*(*(a1 + 32) + 56) "uuid")] ^ 1;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v3 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100065090;
    v9[3] = &unk_1000E2428;
    v10 = *(a1 + 80);
    dispatch_sync(v3, v9);
  }

  *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) + 1.0;
  if ([*(a1 + 40) includeEvents])
  {
    v4 = *(*(a1 + 32) + 208);
    if (v4)
    {
      v5 = [*(a1 + 40) uuid];
      v6 = *(a1 + 104);
      v7 = *(a1 + 56);
      if (v6 >= [*(a1 + 64) count] - 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_msgSend(*(a1 + 64) objectAtIndexedSubscript:{*(a1 + 104) + 1), "copy"}];
      }

      (*(v4 + 16))(v4, v5, v7, v8, *(*(*(a1 + 96) + 8) + 24) / [*(a1 + 64) count] * 100.0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100065090(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v3 = NSLocalizedFailureReasonErrorKey;
    v4 = @"W5CancelledErr";
    *(*(*(a1 + 40) + 8) + 40) = [+[NSError errorWithDomain:code:userInfo:](NSError copy:@"com.apple.wifivelocity.error"];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10006516C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1[4] + 8) + 24) = 1;
  if (a1[6])
  {

    v3 = NSLocalizedFailureReasonErrorKey;
    v4 = @"W5TimeoutErr";
    *(*(a1[5] + 8) + 40) = [+[NSError errorWithDomain:code:userInfo:](NSError copy:@"com.apple.wifivelocity.error"];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100065260(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  if ([*(*(*(a1 + 56) + 8) + 40) code] == 3)
  {
    v2 = [NSString stringWithFormat:@"COLLECTION TIMEOUT (timeout=%lums)", *(a1 + 64)];
    [objc_msgSend(*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")), "appendFormat:", @"\n%@\n", v2}];
    v3 = sub_100098A04();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v38 = 138543362;
    v39 = v2;
    LODWORD(v25) = 12;
    v24 = &v38;
    goto LABEL_7;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) code] == 6)
  {
    [objc_msgSend(*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")), "appendFormat:", @"\n%@\n", @"COLLECTION CANCELLED"}];
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138543362;
      v39 = @"COLLECTION CANCELLED";
      LODWORD(v25) = 12;
      v24 = &v38;
LABEL_7:
      _os_log_send_and_compose_impl();
    }
  }

LABEL_8:
  v5 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid", v24, v25), "UUIDString")}];
  v6 = [*(*(a1 + 32) + 104) count];
  v7 = "";
  if (!v6)
  {
    v7 = " None";
  }

  [v5 appendFormat:@"\nINCOMPLETE:%s\n", v7];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [objc_msgSend(*(*(a1 + 32) + 104) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")), "allValues"}];
  v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [objc_msgSend(v12 "configuration")];
        v14 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")}];
        v15 = [objc_msgSend(objc_msgSend(v12 "uuid")];
        if (!v13)
        {
          [v12 itemID];
          v13 = W5DescriptionForLogItemID();
        }

        [v14 appendFormat:@"[%@] %@\n", v15, v13, context];
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v16 = -[NSFileManager subpathsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "subpathsOfDirectoryAtPath:error:", [*(a1 + 48) path], 0);
  v17 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")}];
  v18 = [(NSArray *)v16 count];
  v19 = "";
  if (!v18)
  {
    v19 = " None";
  }

  [v17 appendFormat:@"\nPATHS:%s\n", v19];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v16);
        }

        [objc_msgSend(*(*(a1 + 32) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")), "appendFormat:", @"./%@\n", *(*(&v28 + 1) + 8 * j)}];
      }

      v21 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  -[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(*(a1 + 48) "path")], objc_msgSend(objc_msgSend(*(*(a1 + 32) + 96), "objectForKeyedSubscript:", objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")), "dataUsingEncoding:", 4), 0);
  [*(*(a1 + 32) + 104) removeObjectForKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")}];
  [*(*(a1 + 32) + 96) removeObjectForKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "uuid"), "UUIDString")}];
  objc_autoreleasePoolPop(context);
}

int64_t sub_100065EC0(id a1, W5DiagnosticsTestResult *a2, W5DiagnosticsTestResult *a3)
{
  [(W5DiagnosticsTestResult *)a2 testCompleted];
  v5 = v4;
  [(W5DiagnosticsTestResult *)a3 testCompleted];
  if (v5 <= v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_10006A914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006AE40(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v3 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v4 = *(a1 + 32);
  block[2] = sub_10006AF58;
  block[3] = &unk_1000E2C38;
  v5 = *(v4 + 40);
  v9 = v3;
  v6 = *(a1 + 48);
  v10 = a2;
  v11 = v6;
  dispatch_async(v5, block);
  v12 = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@_tcpdump.pcap", *(a1 + 64)]];
  [*(a1 + 56) setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v12, 1)}];
  return dispatch_semaphore_signal(*(a1 + 72));
}

void sub_10006AF58(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    [*(a1[5] + 72) setObject:a1[6] forKeyedSubscript:?];
    [*(a1[5] + 80) setObject:+[NSURL fileURLWithPath:](NSURL forKeyedSubscript:{"fileURLWithPath:", a1[7]), a1[4]}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10006AFC8(int8x16_t *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = a1[2].i64[0];
  v4[2] = sub_10006B044;
  v4[3] = &unk_1000E1C98;
  v3 = *(v2 + 40);
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_10006B044(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 72) setObject:0 forKeyedSubscript:?];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10006B1C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    kill([v3 processIdentifier], 2);
  }

  v4 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v5 = [*(a1 + 32) __collectFileAtURL:v4 outputDirectory:*(a1 + 48) maxAge:0x7FFFFFFFFFFFFFFFLL maxSize:*(a1 + 64) compress:0 remainingSize:1.79769313e308];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 56) setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10006B53C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) __calculateSizeAtPath:{objc_msgSend(*(a1 + 48), "stringByAppendingPathComponent:", objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:", a2))}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B5E0;
  v5[3] = &unk_1000E2EB8;
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 64);
  v5[5] = v3;
  dispatch_sync(v4, v5);
}

void sub_10006B5E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) += *(a1 + 40);

  objc_autoreleasePoolPop(v2);
}

void sub_10006D7C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(*(*(a1 + 40) + 96) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 32), "configuration"), "objectForKeyedSubscript:", @"InternalUUID", "appendString:", @"Filtered known networks for customer install without MegaWiFi profile\n"}];
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10006DA1C(id a1)
{
  v1 = WiFiManagerClientCreate();
  if (v1)
  {
    v2 = v1;
    WiFiManagerClientDumpLogs();

    CFRelease(v2);
  }
}

void sub_100070D98(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1[6] + 8) + 24) = [objc_msgSend(*(a1[4] + 160) objectForKeyedSubscript:{a1[5]), "unsignedIntegerValue"}];

  objc_autoreleasePoolPop(v2);
}

void sub_100070DF0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(a1 + 32) configuration]);
  [(NSMutableDictionary *)v2 setObject:*(a1 + 40) forKeyedSubscript:@"OutputDirectory"];
  [(NSMutableDictionary *)v2 setObject:*(a1 + 48) forKeyedSubscript:@"HomeDirectory"];
  [(NSMutableDictionary *)v2 setObject:*(a1 + 56) forKeyedSubscript:@"InternalUUID"];
  [(NSMutableDictionary *)v2 setObject:[NSNumber forKeyedSubscript:"numberWithBool:" numberWithBool:?], @"IncludeEvents"];
  [(NSMutableDictionary *)v2 setObject:[NSNumber forKeyedSubscript:"numberWithBool:" numberWithBool:?], @"UseMegaWiFiProfileLimits"];
  v3 = [*(a1 + 32) copy];
  [v3 setConfiguration:v2];
  v4 = [*(a1 + 64) __collectLogItem:v3 error:0];
  if (v4)
  {
    v5 = v4;
    [v4 setRequest:*(a1 + 32)];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100070F58;
    block[3] = &unk_1000E2778;
    v6 = *(a1 + 96);
    block[5] = v5;
    block[6] = v6;
    v7 = *(a1 + 72);
    block[4] = *(a1 + 80);
    dispatch_sync(v7, block);
  }

  dispatch_group_leave(*(a1 + 88));
}

void sub_100070F58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100070FAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = 1;

  objc_autoreleasePoolPop(v2);
}

void sub_100070FF0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 160) setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", a1[6]), a1[5]}];

  objc_autoreleasePoolPop(v2);
}

void sub_10007104C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    [*(a1[5] + 168) setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", a1[6]), a1[4]}];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000717DC(uint64_t a1)
{
  if (!IOReportChannelGetGroup())
  {
    return 16;
  }

  Group = IOReportChannelGetGroup();
  return 16 * (CFStringFind(Group, *(a1 + 32), 1uLL).location == -1);
}

uint64_t sub_100071834(uint64_t a1)
{
  if (!IOReportChannelGetGroup())
  {
    return 16;
  }

  Group = IOReportChannelGetGroup();
  return 16 * (CFStringFind(Group, *(a1 + 32), 1uLL).location == -1);
}

uint64_t sub_10007188C(uint64_t a1)
{
  if (!IOReportChannelGetSubGroup())
  {
    return 16;
  }

  SubGroup = IOReportChannelGetSubGroup();
  return 16 * (CFStringFind(SubGroup, *(a1 + 32), 1uLL).location == -1);
}

intptr_t sub_10007392C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:a2];
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_100073E88(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:a2];
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_100074594(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = sub_100098A04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

id sub_1000750FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"%@.%d", *(a1 + 40), *(a1 + 48)];
  v4 = [objc_msgSend(*(*(a1 + 32) + 8) "corewifi")];

  return [v2 __pingWithAddress:v3 count:1 timeout:0 wait:v4 interval:10 trafficClass:1.0 interfaceName:1.0 dataLength:1.0];
}

intptr_t sub_100075194(uint64_t a1)
{
  [*(a1 + 32) cancelAllOperations];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_100075FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose((v53 - 176), 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_100076004(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 32) "configuration")];
  if (v3)
  {
    v4 = [*(*(a1 + 40) + 104) objectForKeyedSubscript:v3];
    if (v4)
    {
      v5 = v4;
      [v4 setObject:0 forKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 32), "uuid"), "UUIDString")}];
      v6 = [objc_msgSend(*(a1 + 32) "configuration")];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v5 setObject:*(*(&v11 + 1) + 8 * v10) forKeyedSubscript:{objc_msgSend(objc_msgSend(*(*(&v11 + 1) + 8 * v10), "uuid"), "UUIDString")}];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100076178(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1[6] + 8) + 24) = [objc_msgSend(*(a1[4] + 160) objectForKeyedSubscript:{a1[5]), "unsignedIntegerValue"}];

  objc_autoreleasePoolPop(v2);
}

void sub_1000761D0(uint64_t a1)
{
  v2 = [*(a1 + 32) __collectIndividual:*(a1 + 40) error:*(a1 + 72)];
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076268;
  block[3] = &unk_1000E3050;
  v5 = *(a1 + 56);
  block[4] = v2;
  dispatch_sync(v3, block);
}

void sub_100076268(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) copy];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000762C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (*(a1 + 56))
  {

    *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(W5LogItemReceipt);
    [*(*(*(a1 + 48) + 8) + 40) setRequest:*(a1 + 32)];
    [*(*(*(a1 + 48) + 8) + 40) setStartedAt:*(a1 + 64)];
    +[NSDate timeIntervalSinceReferenceDate];
    [*(*(*(a1 + 48) + 8) + 40) setCompletedAt:?];
    v3 = @"TimeoutOccurred";
    v4 = [NSNumber numberWithInt:*(a1 + 56) != 0];
    [*(*(*(a1 + 48) + 8) + 40) setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v4, &v3, 1)}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100076404(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 160) setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", a1[6]), a1[5]}];

  objc_autoreleasePoolPop(v2);
}

void sub_100076460(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    [*(a1[5] + 168) setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", a1[6]), a1[4]}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100077198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void sub_1000771DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 32) "configuration")];
  v4 = [objc_msgSend(*(a1 + 32) "configuration")];
  v5 = [*(*(a1 + 40) + 64) stringFromDate:{+[NSDate date](NSDate, "date")}];
  v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "uuid")];
  if (!v4)
  {
    v4 = *(a1 + 48);
  }

  [objc_msgSend(*(*(a1 + 40) + 96) objectForKeyedSubscript:{v3), "appendString:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [%@] BEGIN   %@\n", v5, v6, v4)}];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10007735C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(*(*(a1 + 32) + 56) "additionalLog")];

  objc_autoreleasePoolPop(v2);
}

void sub_1000773B4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = [objc_msgSend(*(a1[5] + 160) "objectForKeyedSubscript:"unsignedIntegerValue"")];
  }

  else
  {
    v3 = 0;
  }

  *(*(a1[7] + 8) + 24) = v3;
  if (a1[6])
  {
    v4 = [objc_msgSend(*(a1[5] + 168) "objectForKeyedSubscript:"unsignedLongLongValue"")];
  }

  else
  {
    v4 = 0;
  }

  *(*(a1[8] + 8) + 24) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_100077448(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 32) "configuration")];
  v4 = [objc_msgSend(*(a1 + 32) "configuration")];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [objc_msgSend(objc_msgSend(v5 "info")];
    v7 = [*(*(a1 + 48) + 64) stringFromDate:{+[NSDate date](NSDate, "date")}];
    v8 = [objc_msgSend(objc_msgSend(*(a1 + 32) "uuid")];
    if (v6)
    {
      if (!v4)
      {
        [*(a1 + 32) itemID];
        v4 = W5DescriptionForLogItemID();
      }

      [*(a1 + 40) completedAt];
      v10 = v9;
      [*(a1 + 40) startedAt];
      v12 = [NSString stringWithFormat:@"%@ [%@] TIMEOUT %@, took %.6fs\n", v7, v8, v4, v10 - v11];
    }

    else
    {
      if (!v4)
      {
        [*(a1 + 32) itemID];
        v4 = W5DescriptionForLogItemID();
      }

      [*(a1 + 40) completedAt];
      v17 = v16;
      [*(a1 + 40) startedAt];
      v12 = [NSString stringWithFormat:@"%@ [%@] END     %@, took %.6fs\n", v7, v8, v4, v17 - v18];
    }

    v15 = v12;
    [objc_msgSend(*(*(a1 + 48) + 104) objectForKeyedSubscript:{v3), "setObject:forKeyedSubscript:", 0, objc_msgSend(objc_msgSend(*(a1 + 32), "uuid"), "UUIDString")}];
  }

  else
  {
    v13 = [*(*(a1 + 48) + 64) stringFromDate:{+[NSDate date](NSDate, "date")}];
    v14 = [objc_msgSend(objc_msgSend(*(a1 + 32) "uuid")];
    if (!v4)
    {
      [*(a1 + 32) itemID];
      v4 = W5DescriptionForLogItemID();
    }

    v15 = [NSString stringWithFormat:@"%@ [%@] ERROR   %@, not collected\n", v13, v14, v4];
  }

  [objc_msgSend(*(*(a1 + 48) + 96) objectForKeyedSubscript:{v3), "appendString:", v15}];
  v19 = sub_100098A04();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100077B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100077BD8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(*(*(a1 + 32) + 56) "uuid")];

  objc_autoreleasePoolPop(v2);
}

id sub_100077C30(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 32) lock];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 40) = [a2 copy];
    *(*(*(a1 + 72) + 8) + 40) = [a3 copy];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v6 = *(a1 + 32);

  return [v6 unlock];
}

void sub_10007BEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007BF28(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(W5PingResult);
  [*(*(*(a1 + 56) + 8) + 40) setAddress:*(a1 + 32)];
  [*(*(*(a1 + 56) + 8) + 40) setInterfaceName:{objc_msgSend(objc_msgSend(*(*(a1 + 40) + 8), "wifi"), "interfaceName")}];
  [*(*(*(a1 + 56) + 8) + 40) setCount:{objc_msgSend(a2, "numPingsTransmitted")}];
  [a2 packetLossRate];
  [*(*(*(a1 + 56) + 8) + 40) setPacketLoss:?];
  [a2 averageRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setAvg:v5 * 1000.0];
  [a2 minRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setMin:v6 * 1000.0];
  [a2 maxRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setMax:v7 * 1000.0];
  [a2 standardDeviationRoundtripTime];
  [*(*(*(a1 + 56) + 8) + 40) setStddev:v8 * 1000.0];
  [*(*(*(a1 + 56) + 8) + 40) setStartedAt:*(a1 + 64)];
  +[NSDate timeIntervalSinceReferenceDate];
  [*(*(*(a1 + 56) + 8) + 40) setEndedAt:?];
  dispatch_semaphore_signal(*(a1 + 48));

  objc_autoreleasePoolPop(v4);
}

void sub_10007CC3C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = @"WiFi";
  }

  if (sub_10007E9E8())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v3 = off_100106C50;
    v18 = off_100106C50;
    if (!off_100106C50)
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_10007EB2C;
      v14 = &unk_1000E13B0;
      v4 = sub_10007EB7C();
      v16[3] = dlsym(v4, "CoreCaptureControlCreate");
      off_100106C50 = v16[3];
      v3 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (v3)
    {
      v5 = v3(kCFAllocatorDefault);
      if (!v5)
      {
        return;
      }

      v6 = v5;
      v7 = [(__CFString *)v2 UTF8String];
      v8 = [*(a1 + 40) UTF8String];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v9 = off_100106C58;
      v18 = off_100106C58;
      if (!off_100106C58)
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_10007EC18;
        v14 = &unk_1000E13B0;
        v10 = sub_10007EB7C();
        v16[3] = dlsym(v10, "CoreCaptureControlCaptureWithComponentDirectory");
        off_100106C58 = v16[3];
        v9 = v16[3];
      }

      _Block_object_dispose(&v15, 8);
      if (v9)
      {
        v9(v6, v7, v8);
        CFRelease(v6);
        return;
      }

      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"Boolean soft_CoreCaptureControlCaptureWithComponentDirectory(CoreCaptureControlRef stringWithUTF8String:const char *)"], @"W5LogManager.m", 59, @"%s", dlerror(), v11, v12, v13, v14];
    }

    else
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5LogManager.m", 55, @"%s", dlerror(), v11, v12, v13, v14];
    }

    __break(1u);
  }
}

void sub_10007CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007D3B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if ((a2 & 2) != 0)
  {
    v11 = [a11 addDomain:a9 rdlen:a8];
    if (v11)
    {
      v12 = v11;
      sdRef = [a11 serviceRef];
      v13 = DNSServiceQueryRecord(&sdRef, 0x4000u, 0, [[NSString cStringUsingEncoding:@"_services._dns-sd._udp.%@" stringWithFormat:v12], "cStringUsingEncoding:", 4], 0xCu, 1u, sub_10007EC68, a11);
      if (v13)
      {
        v15 = v13;
        v16 = sub_100098A04();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315906;
          v19 = "_ServiceBrowserDomainsQueryCallback";
          v20 = 2080;
          v21 = "W5LogManager.m";
          v22 = 1024;
          v23 = 9988;
          v24 = 1024;
          LODWORD(v25) = v15;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315906;
        v19 = "_ServiceBrowserDomainsQueryCallback";
        v20 = 2080;
        v21 = "W5LogManager.m";
        v22 = 1024;
        v23 = 9982;
        v24 = 2112;
        v25 = 0;
LABEL_9:
        _os_log_send_and_compose_impl();
      }
    }
  }
}

id sub_10007DDC4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007DE54;
  v4[3] = &unk_1000E1D38;
  v4[4] = a1[6];
  return [NSTask runTaskWithLaunchPath:v1 arguments:v2 timeout:0 outputData:0 errorData:0 launchHandler:v4 reply:2.0];
}

Class sub_10007E270(uint64_t a1)
{
  if (!qword_100106C38)
  {
    qword_100106C38 = _sl_dlopen();
  }

  result = objc_getClass("WADeviceAnalyticsClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  qword_100106C30 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10007E374(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106C38 = result;
  return result;
}

Class sub_10007E3E8(uint64_t a1)
{
  v6[0] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = qword_100106C48;
  v12 = qword_100106C48;
  if (!qword_100106C48)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10007E610;
    v6[4] = &unk_1000E2EB8;
    v7 = &v9;
    v8 = v6;
    v13 = *off_1000E3128;
    v14 = 0;
    v10[3] = _sl_dlopen();
    qword_100106C48 = *(v7[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void *libsysdiagnoseLibrary(void)"];
    [(NSAssertionHandler *)v4 handleFailureInFunction:v5 file:@"W5LogManager.m" lineNumber:71 description:@"%s", v6[0]];
    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("Libsysdiagnose");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5LogManager.m", 72, @"Unable to find class %s", "Libsysdiagnose"];
LABEL_10:
    __break(1u);
  }

  qword_100106C40 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10007E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007E610(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100106C48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10007E6A8(uint64_t a1)
{
  v2 = +[NSMutableString string];
  v3 = 0;
  while (*(a1 + v3))
  {
    if ((*(a1 + v3) - 127) >= 0xA1u)
    {
      [v2 appendFormat:@"%c", *(a1 + v3)];
    }

    else
    {
      [v2 appendString:@"."];
    }

    if (++v3 == 32)
    {
      goto LABEL_11;
    }
  }

  if (v3 <= 0x1F)
  {
    v4 = 32 - v3;
    do
    {
      [v2 appendString:@" "];
      --v4;
    }

    while (v4);
  }

LABEL_11:
  v5 = [v2 copy];

  return v5;
}

uint64_t sub_10007E790()
{
  if (!qword_100106C08)
  {
    qword_100106C08 = _sl_dlopen();
  }

  return qword_100106C08;
}

uint64_t sub_10007E860(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106C08 = result;
  return result;
}

Class sub_10007E8D4(uint64_t a1)
{
  if (sub_10007E790())
  {
    result = objc_getClass("IMPingTest");
    *(*(*(a1 + 32) + 8) + 40) = result;
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      qword_100106C10 = *(*(*(a1 + 32) + 8) + 40);
      return result;
    }

    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5LogManager.m", 68, @"Unable to find class %s", "IMPingTest"];
  }

  else
  {
    result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5LogManager.m", 67, @"%s", 0];
  }

  __break(1u);
  return result;
}

uint64_t sub_10007E9E8()
{
  if (!qword_100106C18)
  {
    qword_100106C18 = _sl_dlopen();
  }

  return qword_100106C18;
}

uint64_t sub_10007EAB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106C18 = result;
  return result;
}

void *sub_10007EB2C(uint64_t a1)
{
  v2 = sub_10007EB7C();
  result = dlsym(v2, "CoreCaptureControlCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100106C50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

NSAssertionHandler *sub_10007EB7C()
{
  v0 = sub_10007E9E8();
  if (v0)
  {
    return v0;
  }

  v1 = +[NSAssertionHandler currentHandler];
  v3 = [(NSAssertionHandler *)v1 handleFailureInFunction:[NSString stringWithUTF8String:?]description:@"W5LogManager.m", 51, @"%s", 0];
  __break(1u);
  free(v3);
  return v1;
}

void *sub_10007EC18(uint64_t a1)
{
  v2 = sub_10007EB7C();
  result = dlsym(v2, "CoreCaptureControlCaptureWithComponentDirectory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100106C58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10007EC68(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if ((a2 & 2) != 0)
  {
    v11 = [a11 addServiceType:a9 rdlen:a8 fullname:?];
    if (v11)
    {
      v12 = v11;
      sdRef = [a11 serviceRef];
      v13 = DNSServiceBrowse(&sdRef, 0x4000u, 0, [objc_msgSend(v12 objectAtIndexedSubscript:{0), "cStringUsingEncoding:", 4}], objc_msgSend(objc_msgSend(v12, "objectAtIndexedSubscript:", 1), "cStringUsingEncoding:", 4), sub_10007EE84, a11);
      if (v13)
      {
        v15 = v13;
        v16 = sub_100098A04();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316162;
          v19 = "_ServiceBrowserServicesQueryCallback";
          v20 = 2080;
          v21 = "W5LogManager.m";
          v22 = 1024;
          v23 = 9957;
          v24 = 2112;
          v25 = v12;
          v26 = 1024;
          v27 = v15;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315906;
        v19 = "_ServiceBrowserServicesQueryCallback";
        v20 = 2080;
        v21 = "W5LogManager.m";
        v22 = 1024;
        v23 = 9953;
        v24 = 2112;
        v25 = 0;
LABEL_9:
        _os_log_send_and_compose_impl();
      }
    }
  }
}

void sub_10007EE84(uint64_t a1, char a2, uint32_t a3, uint64_t a4, const char *a5, const char *a6, const char *a7, void *a8)
{
  if ((a2 & 2) != 0)
  {
    if ([a8 addServiceInstance:a5 serviceType:a6 domain:a7])
    {
      sdRef = [a8 serviceRef];
      v13 = DNSServiceResolve(&sdRef, 0x4000u, a3, a5, a6, a7, sub_10007F094, a8);
      if (v13)
      {
        v15 = v13;
        v16 = sub_100098A04();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316674;
          v19 = "_ServiceBrowserBrowseCallback";
          v20 = 2080;
          v21 = "W5LogManager.m";
          v22 = 1024;
          v23 = 9927;
          v24 = 2080;
          v25 = a5;
          v26 = 2080;
          v27 = a6;
          v28 = 2080;
          v29 = a7;
          v30 = 1024;
          v31 = v15;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136316418;
        v19 = "_ServiceBrowserBrowseCallback";
        v20 = 2080;
        v21 = "W5LogManager.m";
        v22 = 1024;
        v23 = 9923;
        v24 = 2080;
        v25 = a5;
        v26 = 2080;
        v27 = a6;
        v28 = 2080;
        v29 = a7;
LABEL_9:
        _os_log_send_and_compose_impl();
      }
    }
  }
}

uint64_t sub_10007F094(uint64_t a1, uint64_t a2, uint32_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v30[0] = a10;
  v30[1] = [NSString stringWithFormat:@"%s", a5];
  v13 = [NSArray arrayWithObjects:v30 count:2];
  [a10 addBrowseContext:v13];
  sdRef = [a10 serviceRef];
  result = DNSServiceGetAddrInfo(&sdRef, 0x4000u, a3, 3u, a6, sub_10007F230, v13);
  if (result)
  {
    v15 = result;
    v16 = sub_100098A04();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v18 = 136316418;
      v19 = "_ServiceBrowserResolveCallback";
      v20 = 2080;
      v21 = "W5LogManager.m";
      v22 = 1024;
      v23 = 9901;
      v24 = 2080;
      v25 = a5;
      v26 = 2080;
      v27 = a6;
      v28 = 1024;
      v29 = v15;
      return _os_log_send_and_compose_impl();
    }
  }

  return result;
}

id sub_10007F230(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = [a8 count];
  if ((a2 & 2) != 0 && result == 2)
  {
    v14 = [a8 objectAtIndexedSubscript:0];
    v15 = [a8 objectAtIndexedSubscript:1];

    return [v14 addBrowseResult:v15 hostname:a5 address:a6 interfaceIndex:a3];
  }

  return result;
}

void sub_100081424(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 24) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100081548(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 20) & 1) == 0)
  {
    *(v3 + 20) = 1;
    v4 = *(a1 + 32);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100081600;
    handler[3] = &unk_1000E2580;
    handler[4] = v5;
    notify_register_dispatch("com.apple.powermanagement.systempowerstate", (v5 + 16), v6, handler);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100081600(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081688;
  block[3] = &unk_1000E1CE8;
  block[4] = *(a1 + 32);
  dispatch_async(global_queue, block);
}

void sub_100081688(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:16];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  v5 = @"SystemPowerStateCaps";
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) caps]);
  [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v6, &v5, 1)}];
  v4 = *(*(a1 + 32) + 24);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100081804(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 20) == 1)
  {
    *(v3 + 20) = 0;
    notify_cancel(*(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100082208(id a1)
{
  qword_100106C60 = objc_alloc_init(W5CloudStore);

  _objc_release_x1();
}

uint64_t sub_10008376C(uint64_t a1)
{
  qword_100106C70 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100083904()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100106C80;
  v7 = qword_100106C80;
  if (!qword_100106C80)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100084B44;
    v3[3] = &unk_1000E13B0;
    v3[4] = &v4;
    sub_100084B44(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000839CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100083D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100083D80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100083D98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:39];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7 = @"LastHourFaultsStatus";
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v3 setInfo:v5];

  v6 = *(*(a1 + 32) + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100083E98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:40];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7 = @"LastHourLinkTestsStatus";
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v3 setInfo:v5];

  v6 = *(*(a1 + 32) + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100083F98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5Event);
  [v3 setEventID:41];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7 = @"LastHourRecoveriesStatus";
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v3 setInfo:v5];

  v6 = *(*(a1 + 32) + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100084540(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  v5 = objc_retainBlock(*(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  objc_autoreleasePoolPop(v2);
}

void sub_100084674(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;

  v5 = objc_retainBlock(*(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  objc_autoreleasePoolPop(v2);
}

void sub_1000847A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  v5 = objc_retainBlock(*(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  objc_autoreleasePoolPop(v2);
}

void sub_100084880(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    *(*(a1 + 32) + 24) = 1;
    v4 = [*(a1 + 32) _getWADeviceAnalyticsClient];
    [v4 addPersistentStoreRemoteChangeNotificationObserver:*(a1 + 32) selector:"remoteStoreUpdate:"];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000849CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 24) == 1)
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    *(*(a1 + 32) + 24) = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

Class sub_100084B44(uint64_t a1)
{
  if (!qword_100106C88)
  {
    qword_100106C88 = _sl_dlopen();
  }

  result = objc_getClass("WADeviceAnalyticsClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100106C80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100084C48(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106C88 = result;
  return result;
}

void sub_100084FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100084FE4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100085110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100085128(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100085254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008526C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_10008536C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 32);

  objc_autoreleasePoolPop(v2);
}

void sub_10008545C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 33);

  objc_autoreleasePoolPop(v2);
}

void sub_100085578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100085590(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 48) copy];

  objc_autoreleasePoolPop(v2);
}

void sub_100085880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, __int16 a14, uint64_t a15, __int16 a16, int a17, __int16 a18, uint64_t a19)
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
    JUMPOUT(0x10008584CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000859C4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v9 + 1) + 8 * v7);
      if ([v8 integerValue] < 1 || objc_msgSend(v8, "integerValue") > 41)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    [*(a1[5] + 24) addObjectsFromArray:a1[4]];
  }

  [*(a1[5] + 80) xpcConnection:a1[5] startMonitoringEvents:a1[4] reply:a1[6]];
  objc_autoreleasePoolPop(v2);
}

void sub_100085B74(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v9 + 1) + 8 * v7);
      if ([v8 integerValue] < 1 || objc_msgSend(v8, "integerValue") > 41)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    [*(a1[5] + 24) removeObjectsInArray:a1[4]];
  }

  [*(a1[5] + 80) xpcConnection:a1[5] stopMonitoringEvents:a1[4] reply:a1[6]];
  objc_autoreleasePoolPop(v2);
}

void sub_100085D20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) queryLocalPeerAndReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_100085DE0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] queryStatusForPeer:a1[5] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_100085EA4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] queryDatabaseForPeer:a1[5] fetch:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_100085F68(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] requestFileFromPeer:a1[5] remoteFilePath:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_10008602C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] listFilesFromPeer:a1[5] remoteDirPath:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_1000860F0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] queryDebugConfigurationForPeer:a1[5] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_1000861B4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] setDebugConfiguration:a1[5] peer:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_10008627C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:1];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"Peer"];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [v4 peerID]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  -[W5ActiveRequest setWantsUpdates:](v3, "setWantsUpdates:", [v4 type] != 6);
  [*(*(a1 + 48) + 16) addObject:v3];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(v5 + 80);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000863A8;
  v13 = &unk_1000E3218;
  v14 = v5;
  v15 = v3;
  v16 = *(a1 + 64);
  [v7 xpcConnection:? runDiagnostics:? configuration:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_1000863A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_100086430;
  block[3] = &unk_1000E31F0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void sub_100086430(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[8];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[7]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10008650C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:1];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"Peer"];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [v4 peerID]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  -[W5ActiveRequest setWantsUpdates:](v3, "setWantsUpdates:", [v4 type] != 6);
  [*(*(a1 + 48) + 16) addObject:v3];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(v5 + 80);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100086638;
  v14 = &unk_1000E3218;
  v15 = v5;
  v16 = v3;
  v10 = *(a1 + 64);
  v17 = *(a1 + 72);
  [v7 xpcConnection:? runDiagnosticsForPeer:? diagnostics:? configuration:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_100086638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_1000866C0;
  block[3] = &unk_1000E31F0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void sub_1000866C0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[8];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[7]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100086798(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] registerRemoteDiagnosticEventsForPeer:a1[5] configuration:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_10008685C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] unregisterRemoteDiagnosticEventsForPeer:a1[5] configuration:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_10008691C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) queryRegisteredDiagnosticsPeersWithReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1000869DC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] startDiagnosticsModeWithConfiguration:a1[5] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_100086AA0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] stopDiagnosticsModeWithUUID:a1[5] info:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_100086B64(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] queryDiagnosticsModeForPeer:a1[5] info:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_100086C2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:2];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"Peer"];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [v4 peerID]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  -[W5ActiveRequest setWantsUpdates:](v3, "setWantsUpdates:", [v4 type] != 6);
  [*(*(a1 + 48) + 16) addObject:v3];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(v5 + 80);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100086D58;
  v13 = &unk_1000E3268;
  v14 = v5;
  v15 = v3;
  v16 = *(a1 + 64);
  [v7 xpcConnection:? collectLogs:? configuration:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_100086D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = _NSConcreteStackBlock;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 32) + 8);
  v8[1] = 3221225472;
  v8[2] = sub_100086DE0;
  v8[3] = &unk_1000E3240;
  v9 = v4;
  v6 = *(a1 + 48);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v6;
  dispatch_async(v5, v8);
  return result;
}

void sub_100086DE0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[9];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[7], a1[8]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100086EBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:2];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"Peer"];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [v4 peerID]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  -[W5ActiveRequest setWantsUpdates:](v3, "setWantsUpdates:", [v4 type] != 6);
  [*(*(a1 + 48) + 16) addObject:v3];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(v5 + 80);
  v8 = *(a1 + 32);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100086FE8;
  v12 = &unk_1000E3268;
  v13 = v5;
  v14 = v3;
  v15 = *(a1 + 56);
  [v7 xpcConnection:? collectLogsDiagnosticMode:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_100086FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = _NSConcreteStackBlock;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 32) + 8);
  v8[1] = 3221225472;
  v8[2] = sub_100087070;
  v8[3] = &unk_1000E3240;
  v9 = v4;
  v6 = *(a1 + 48);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v6;
  dispatch_async(v5, v8);
  return result;
}

void sub_100087070(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[9];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[7], a1[8]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10008714C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:4];
  [(W5ActiveRequest *)v3 setUuid:a1[4]];
  [(W5ActiveRequest *)v3 setPeerID:0];
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  [(W5ActiveRequest *)v3 setWantsUpdates:1];
  [*(a1[5] + 16) addObject:v3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v4 + 80);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10008724C;
  v11 = &unk_1000E2158;
  v7 = a1[6];
  [v6 xpcConnection:_NSConcreteStackBlock startPeerDiscoveryWithConfiguration:3221225472 uuid:sub_10008724C reply:{&unk_1000E2158, v4, a1[7]}];
  objc_autoreleasePoolPop(v2);
}

void sub_10008724C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000872C8;
  v4[3] = &unk_1000E2018;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_1000872C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100087394(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] stopPeerDiscoveryWithUUID:a1[5] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_100087458(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] startNetworkDiscoveryOnPeer:a1[5] configuration:a1[6] reply:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_100087520(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] associateToNetworkOnPeer:a1[5] scanResult:a1[6] configuration:a1[7] reply:a1[8]];

  objc_autoreleasePoolPop(v2);
}

void sub_1000875F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:3];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [*(a1 + 40) peerID]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  [*(*(a1 + 48) + 16) addObject:v3];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(v4 + 80);
  v7 = *(a1 + 72);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000876F8;
  v13 = &unk_1000E32B8;
  v14 = v4;
  v15 = v3;
  v16 = *(a1 + 64);
  [v6 xpcConnection:v7 runWiFiSnifferOnChannels:? duration:? peer:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_1000876F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = _NSConcreteStackBlock;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_100087784;
  block[3] = &unk_1000E3290;
  v10 = v5;
  v7 = *(a1 + 48);
  v14 = a5;
  v15 = v7;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  dispatch_async(v6, block);
  return result;
}

void sub_100087784(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[10];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[7], a1[8], a1[9]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100087868(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:3];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [*(a1 + 40) peerID]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  [*(*(a1 + 48) + 16) addObject:v3];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(v4 + 80);
  v7 = *(a1 + 72);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100087970;
  v13 = &unk_1000E3218;
  v14 = v4;
  v15 = v3;
  v16 = *(a1 + 64);
  [v6 xpcConnection:v7 runWiFiSnifferWithTCPDumpOnChannels:? duration:? peer:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_100087970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = sub_1000879F8;
  block[3] = &unk_1000E31F0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void sub_1000879F8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[8];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6], a1[7]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100087AD0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(W5ActiveRequest);
  [(W5ActiveRequest *)v3 setType:5];
  [(W5ActiveRequest *)v3 setUuid:*(a1 + 32)];
  -[W5ActiveRequest setPeerID:](v3, "setPeerID:", [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"Peer", "peerID"}]);
  +[NSDate timeIntervalSinceReferenceDate];
  [(W5ActiveRequest *)v3 setTimestamp:?];
  [*(*(a1 + 48) + 16) addObject:v3];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v4 + 80);
  v7 = *(a1 + 32);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100087BE0;
  v11 = &unk_1000E3308;
  v12 = v4;
  v13 = v3;
  v14 = *(a1 + 56);
  [v6 xpcConnection:? runWiFiPerformanceLoggingWithConfiguration:? uuid:? reply:?];
  objc_autoreleasePoolPop(v2);
}

__n128 sub_100087BE0(uint64_t a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = sub_100087C64;
  v6[3] = &unk_1000E2180;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void sub_100087C64(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) removeObject:a1[5]];
  v3 = a1[7];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[6]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100087D3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __activeRequestWithUUID:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 type];
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelWiFiSnifferWithUUID:objc_msgSend(v4 peerID:"uuid") reply:{objc_msgSend(v4, "peerID"), 0}];
      }

      else if (v5 == 5)
      {
        [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelWiFiPerformanceLoggingWithUUID:objc_msgSend(v4 peerID:"uuid") reply:{objc_msgSend(v4, "peerID"), 0}];
      }
    }

    else if (v5 == 1)
    {
      [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelDiagnosticsWithUUID:objc_msgSend(v4 peerID:"uuid") reply:{objc_msgSend(v4, "peerID"), 0}];
    }

    else if (v5 == 2)
    {
      [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelCollectLogsWithUUID:objc_msgSend(v4 peerID:"uuid") reply:{objc_msgSend(v4, "peerID"), 0}];
    }

    [*(*(a1 + 32) + 16) removeObject:v4];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100087F3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 16);
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
        v9 = [v8 type];
        if (v9 == 3)
        {
          [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelWiFiSnifferWithUUID:objc_msgSend(v8 peerID:"uuid") reply:{objc_msgSend(v8, "peerID"), 0}];
        }

        else if (v9 == 2)
        {
          [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelCollectLogsWithUUID:objc_msgSend(v8 peerID:"uuid") reply:{objc_msgSend(v8, "peerID"), 0}];
        }

        else if (v9 == 1)
        {
          [*(*(a1 + 32) + 80) xpcConnection:*(a1 + 32) cancelDiagnosticsWithUUID:objc_msgSend(v8 peerID:"uuid") reply:{objc_msgSend(v8, "peerID"), 0}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000881A8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[8] == 1)
  {
    [*(a1[4] + 80) xpcConnection:a1[4] cancelWiFiSnifferWithUUID:a1[5] peer:a1[6] reply:0];
  }

  v3 = a1[7];
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100088298(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) __logMessage:*(a1 + 40) timestamped:*(a1 + 56)];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100088370(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 24) addObject:&off_1000EFB00];
  v3 = a1[4];
  if (!a1[5])
  {
    v5 = *(v3 + 80);
    v6 = a1[6];
LABEL_7:
    [v5 xpcConnection:? startMonitoringFaultEventsForPeer:? reply:?];
    goto LABEL_8;
  }

  if (([*(v3 + 72) containsObject:a1[5]] & 1) == 0)
  {
    [*(a1[4] + 72) addObject:a1[5]];
    v7 = a1[5];
    v5 = *(a1[4] + 80);
    v8 = a1[6];
    goto LABEL_7;
  }

  v4 = a1[6];
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

LABEL_8:

  objc_autoreleasePoolPop(v2);
}

void sub_100088498(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    [*(a1[5] + 72) removeObject:?];
  }

  [*(a1[5] + 24) removeObject:&off_1000EFB00];
  [*(a1[5] + 80) xpcConnection:a1[5] stopMonitoringFaultEventsForPeer:a1[4] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_100088584(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] submitFaultEvent:a1[5] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_100088648(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 80) xpcConnection:a1[4] queryFaultEventCacheForPeer:a1[5] reply:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void sub_10008892C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v58 = a3;
  v56 = a4;
  v57 = v7;
  v59 = [v7 objectForKeyedSubscript:@"ResponsePeer"];
  v8 = [v7 objectForKeyedSubscript:@"RequestPeer"];
  if (!v8)
  {
    v8 = objc_alloc_init(W5Peer);
  }

  v9 = [v58 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
  [v8 setPeerID:v9];

  v10 = [v58 objectForKeyedSubscript:RPOptionSenderDeviceName];
  [v8 setName:v10];

  v11 = [v58 objectForKeyedSubscript:RPOptionSenderModelID];
  [v8 setModel:v11];

  v55 = [v7 objectForKeyedSubscript:@"Type"];
  v12 = [v55 integerValue];
  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      if (v12 != 2)
      {
        goto LABEL_50;
      }

      v13 = *(a1 + 32);
      objc_sync_enter(v13);
      v14 = *(*(a1 + 32) + 16);
      if (!v14)
      {
        v15 = +[NSMutableSet set];
        v16 = *(a1 + 32);
        v17 = *(v16 + 16);
        *(v16 + 16) = v15;

        [*(a1 + 32) __unarchiveNotifyPeers];
        v14 = *(*(a1 + 32) + 16);
      }

      [v14 addObject:v8];
      [*(a1 + 32) __archiveNotifyPeers];
      if (!v56)
      {
LABEL_44:
        objc_sync_exit(v13);

        goto LABEL_50;
      }

LABEL_43:
      (*(v56 + 2))(v56, 0, 0);
      goto LABEL_44;
    }

    v26 = [*(a1 + 32) faultEventCache];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *v61;
LABEL_22:
    v29 = 0;
    while (1)
    {
      if (*v61 != v28)
      {
        objc_enumerationMutation(v26);
      }

      v30 = *(*(&v60 + 1) + 8 * v29);
      v31 = [v30 peer];
      v32 = v31;
      if (v31 == v8)
      {
        break;
      }

      v33 = [v30 peer];
      v34 = v33;
      if (v33 != 0 && v8 != 0)
      {
        v35 = [v30 peer];
        v36 = [v35 isEqual:v8];

        if (v36)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v38 = [v30 peer];
      v39 = [v38 peerID];
      v40 = v39 == 0;

      if (v40)
      {
        v37 = [v59 peerID];
        v41 = [v30 peer];
        [v41 setPeerID:v37];

        goto LABEL_34;
      }

LABEL_35:
      if (v27 == ++v29)
      {
        v27 = [v26 countByEnumeratingWithState:&v60 objects:v66 count:16];
        if (!v27)
        {
LABEL_37:
          v42 = +[NSMutableDictionary dictionary];
          [v42 setObject:v26 forKeyedSubscript:@"Cache"];
          if (v56)
          {
            (*(v56 + 2))(v56, 0, v42);
          }

          goto LABEL_50;
        }

        goto LABEL_22;
      }
    }

LABEL_30:
    v37 = [v30 peer];
    [v37 setPeerID:0];
LABEL_34:

    goto LABEL_35;
  }

  if (v12 == 3)
  {
    v13 = *(a1 + 32);
    objc_sync_enter(v13);
    v43 = *(*(a1 + 32) + 16);
    if (!v43)
    {
      v44 = +[NSMutableSet set];
      v45 = *(a1 + 32);
      v46 = *(v45 + 16);
      *(v45 + 16) = v44;

      [*(a1 + 32) __unarchiveNotifyPeers];
      v43 = *(*(a1 + 32) + 16);
    }

    [v43 removeObject:v8];
    [*(a1 + 32) __archiveNotifyPeers];
    if (!v56)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v12 == 4)
  {
    v18 = *(a1 + 32);
    objc_sync_enter(v18);
    if ([*(*(a1 + 32) + 24) countForObject:v8])
    {
      v19 = [v7 objectForKeyedSubscript:@"Event"];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 peer];
        v22 = [v21 peerID];

        if (!v22)
        {
          v23 = [v8 peerID];
          v24 = [v20 peer];
          [v24 setPeerID:v23];
        }

        [*(a1 + 32) __addFaultEvent:v20];
        v25 = [*(a1 + 32) faultEventHandler];
        (v25)[2](v25, v20);
      }

      if (v56)
      {
        (*(v56 + 2))(v56, 0, 0);
      }
    }

    else
    {
      v47 = [*(a1 + 32) diagnosticsModeManager];
      v48 = [*(a1 + 40) diagnosticsModeManager];
      v49 = [v48 localPeer];
      v50 = [v47 registeredRoleForPeer:v49];

      if (v50 == 16)
      {
        v51 = [v7 objectForKeyedSubscript:@"Event"];
        v52 = [*(a1 + 32) diagnosticsModeManager];
        [v52 handlePeerFaultEvent:v51];
      }

      else if (v56)
      {
        v64 = NSLocalizedFailureReasonErrorKey;
        v65 = @"ENXIO";
        v53 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v54 = [NSError errorWithDomain:NSPOSIXErrorDomain code:6 userInfo:v53];
        (*(v56 + 2))(v56, v54, 0);
      }
    }

    objc_sync_exit(v18);
  }

LABEL_50:
}

void sub_1000891F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  if (!v15)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    v10 = *(*(a1 + 32) + 24);
    if (!v10)
    {
      v11 = objc_alloc_init(NSCountedSet);
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      *(v12 + 24) = v11;

      v10 = *(*(a1 + 32) + 24);
    }

    [v10 addObject:*(a1 + 40)];
    objc_sync_exit(v9);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v15);
  }
}

uint64_t sub_1000894BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100089664(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v6 = [a3 objectForKeyedSubscript:@"Cache"];
    (*(v3 + 16))(v3, v5, v6);
  }
}

int64_t sub_10008A12C(id a1, W5Event *a2, W5Event *a3)
{
  v4 = a2;
  v5 = a3;
  [(W5Event *)v4 timestamp];
  v7 = v6;
  [(W5Event *)v5 timestamp];
  if (v7 <= v8)
  {
    [(W5Event *)v5 timestamp];
    v11 = v10;
    [(W5Event *)v4 timestamp];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_10008A928(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    objc_sync_exit(v9);
  }
}

id sub_10008BF78(uint64_t a1)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  return [*(a1 + 32) invalidateDiscoveryClient];
}

void sub_10008C2F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = [v9 requestPayloadClass];
  if (!v11)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v12 = sub_10009A49C();
  if (os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v37 = objc_opt_class();
    v13 = v37;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5RapportServer payloadFromDictionary", "%@", buf, 0xCu);
  }

  v14 = [v11 payloadFromDictionary:v7];
  v15 = sub_10009A49C();
  v16 = os_signpost_enabled(v15);
  if (v14)
  {
    if (v16)
    {
      v17 = objc_opt_class();
      *buf = 138412290;
      v37 = v17;
      v18 = v17;
      v19 = "%@";
LABEL_10:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5RapportServer payloadFromDictionary", v19, buf, 0xCu);
    }
  }

  else if (v16)
  {
    v20 = objc_opt_class();
    *buf = 138412290;
    v37 = v20;
    v18 = v20;
    v19 = "%@ Failure";
    goto LABEL_10;
  }

LABEL_12:
  v21 = sub_10009A49C();
  if (os_signpost_enabled(v21))
  {
    v22 = objc_opt_class();
    *buf = 138412290;
    v37 = v22;
    v23 = v22;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5RapportClientRequest initWithPayload", "%@", buf, 0xCu);
  }

  v24 = [W5RapportClientRequest alloc];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10008C748;
  v33[3] = &unk_1000E3488;
  v25 = v8;
  v34 = v25;
  v35 = v11;
  v26 = [(W5RapportClientRequest *)v24 initWithPayload:v14 options:v10 handler:v33];

  v27 = sub_100098A04();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v37 = v28;
    v38 = 2114;
    v39 = v26;
    _os_log_send_and_compose_impl();
  }

  v29 = sub_10009A49C();
  if (os_signpost_enabled(v29))
  {
    v30 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v37 = v30;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5PeerRequestListener handleClientRequest", "%@", buf, 0xCu);
  }

  [*(a1 + 32) handleClientRequest:v26];
  v31 = sub_10009A49C();
  if (os_signpost_enabled(v31))
  {
    v32 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v37 = v32;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerRequestListener handleClientRequest", "%@", buf, 0xCu);
  }
}

void sub_10008C748(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 encode];
  v8 = v6;
  if (!v7)
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v5;
      _os_log_send_and_compose_impl();
    }

    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"W5EncodingErr";
    v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:8 userInfo:v10];
  }

  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[W5RapportServer _registerRequestsForListener:rapportClient:]_block_invoke";
    v23 = 2114;
    v24 = v7;
    _os_log_send_and_compose_impl();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v7);
  v12 = sub_10009A49C();
  v13 = os_signpost_enabled(v12);
  if (v8)
  {
    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v8 description];
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v17;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5RapportClientRequest initWithPayload", "%@ Error=%@", buf, 0x16u);
    }
  }

  else if (v13)
  {
    v18 = *(a1 + 40);
    v19 = objc_opt_class();
    *buf = 138412290;
    v22 = v19;
    v20 = v19;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5RapportClientRequest initWithPayload", "%@", buf, 0xCu);
  }
}

void sub_10008EF3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void *sub_10008EF68(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 role] & a2) != 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

void sub_10008F0B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008F180;
  v6[3] = &unk_1000E34F8;
  v4 = *(a1 + 32);
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_async(v3, v6);
}

void sub_10008F180(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) mode];
  v5 = [*(a1 + 32) operationErrors];
  (*(v3 + 16))(v3, v4, v5);

  objc_autoreleasePoolPop(v2);
}

void sub_1000902E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id location)
{
  objc_destroyWeak((v59 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100090310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000903DC;
  v6[3] = &unk_1000E34F8;
  v4 = *(a1 + 32);
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_async(v3, v6);
}

void sub_1000903DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) mode];
  v5 = [*(a1 + 32) operationErrors];
  (*(v3 + 16))(v3, v4, v5);

  objc_autoreleasePoolPop(v2);
}

void sub_100090DBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_100090DE8(id *a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090EBC;
  block[3] = &unk_1000E3548;
  v5 = a1[5];
  v4 = a1[4];
  objc_copyWeak(&v6, a1 + 6);
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void sub_100090EBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained operationErrors];
  (*(v3 + 16))(v3, v4, v6);

  objc_autoreleasePoolPop(v2);
}

void sub_100091090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000910B4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (*(*(a1 + 48) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [v5 error];

  v8 = sub_100098A04();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 32);
      v12 = sub_100091350(v10);
      [v5 error];
      v21 = 136316162;
      v22 = "[W5DiagnosticsModeProcessor _runAction:peer:info:handler:completion:]_block_invoke";
      v23 = 2048;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v30 = v29 = 2114;
      _os_log_send_and_compose_impl();
    }

    v8 = [WeakRetained operationErrors];
    v13 = [NSNumber numberWithInteger:*(a1 + 64)];
    v19 = v13;
    v14 = [v5 error];
    v20 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v8 addObject:v15];
  }

  else if (v9)
  {
    v16 = *(a1 + 64);
    v17 = sub_100091350(v16);
    v18 = *(a1 + 32);
    v21 = 136315906;
    v22 = "[W5DiagnosticsModeProcessor _runAction:peer:info:handler:completion:]_block_invoke";
    v23 = 2048;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    _os_log_send_and_compose_impl();
  }
}

const __CFString *sub_100091350(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1000E3590[a1];
  }
}

id sub_100091470(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v19 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (([v10 role] & a3) != 0)
        {
          v11 = [v10 peer];
          v12 = [v11 peerID];
          v13 = [v19 peer];
          v14 = [v13 peerID];
          v15 = [v12 isEqualToString:v14];

          if (v15)
          {
            v16 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

id sub_10009161C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 peer];
        v11 = [v10 peerID];
        v12 = v11;
        if (v11 == v4)
        {

LABEL_13:
          v16 = v9;
          goto LABEL_14;
        }

        v13 = [v9 peer];
        v14 = [v13 peerID];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          goto LABEL_13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

void sub_1000937CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000937F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRapportDeviceFound:v3];
}

void sub_100093854(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRapportDeviceLost:v3];
}

void sub_1000940C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(W5PeerGenericResponsePayload);
  [(W5PeerGenericResponsePayload *)v7 setInfo:v6];
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v9 = [*(a1 + 32) handler];

  if (v9)
  {
    v10 = [*(a1 + 32) handler];
    (v10)[2](v10, v7, v5);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v11 = [objc_msgSend(&off_1000EFBD8 "stringValue")];
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[wifivelocity] STARTUP! (v%{public}s)", buf, 0xCu);
  }

  v1 = [@"/private" stringByAppendingPathComponent:NSTemporaryDirectory()];
  if ([v1 hasSuffix:@"/"])
  {
    v1 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];
  }

  v2 = -[NSURL path]([+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:", @"group.com.apple.wifi.logs"], "path");
  if ([(NSString *)v2 hasSuffix:@"/"])
  {
    v2 = [(NSString *)v2 substringToIndex:[(NSString *)v2 length]- 1];
  }

  -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [v1 stringByAppendingPathComponent:@"com.apple.wifivelocity"], 0);
  -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [v1 stringByAppendingPathComponent:@"com.apple.wifivelocity"], 0, 0, 0);
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:@"/var/log/com.apple.wifivelocity" attributes:0 error:0, 0];
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:@"/var/run/com.apple.wifivelocity" attributes:0 error:0, 0];
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:[(NSString *)v2 stringByAppendingPathComponent:@"previous"] attributes:0 error:0, 0];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000E3640);
  v3 = objc_alloc_init(W5Engine);
  if (+[W5FeatureAvailability diagnosticsModeEnabled]&& _os_feature_enabled_impl())
  {
    xpc_set_event_stream_handler("com.apple.rapport.matching", &_dispatch_main_q, &stru_1000E3688);
  }

  if (!v3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      objc_autoreleasePoolPop(v0);
      return 0;
    }

    *buf = 0;
    v7 = "[wifivelocity] FAILED to initialize WiFiVelocity engine";
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v7, buf, 2u);
    goto LABEL_17;
  }

  v9.__sigaction_u.__sa_handler = 1;
  *&v9.sa_mask = 0;
  sigaction(15, &v9, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  if (!v4)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v7 = "[wifivelocity] FAILED to setup SIGTERM catcher";
    goto LABEL_19;
  }

  v5 = v4;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100096BE8;
  handler[3] = &unk_1000E1CE8;
  handler[4] = v3;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v5);
  objc_autoreleasePoolPop(v0);
  [(W5Engine *)v3 run];
  dispatch_source_cancel(v5);
  dispatch_release(v5);
  return 0;
}

void sub_100096410(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = strlen(string);
    if (!strncmp(v3, "com.apple.wifivelocity-wake-120", v4))
    {
      v5 = 120;
    }

    else if (!strncmp(v3, "com.apple.wifivelocity-wake-240", v4))
    {
      v5 = 240;
    }

    else if (!strncmp(v3, "com.apple.wifivelocity-wake-600", v4))
    {
      v5 = 600;
    }

    else if (!strncmp(v3, "com.apple.wifivelocity-wake-86400", v4))
    {
      v5 = 86400;
    }

    else
    {
      if (strncmp(v3, "com.apple.private.alloy.wifivelocity.idslaunchnotification", v4))
      {
        return;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] IDS-based launch\n", buf, 2u);
      }

      v5 = 60;
    }

    v6 = -[NSString substringToIndex:]([+[NSUUID UUID](NSUUID UUIDString], "substringToIndex:", 5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2050;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] [%{public}@] BEGIN keepalive for %{public}lds\n", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v11 = sub_1000966D8;
    v12 = sub_1000966E8;
    v7 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    v13 = v7;
    v8 = dispatch_time(0, 1000000000 * v5);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000966F4;
    block[3] = &unk_1000E3668;
    block[5] = buf;
    block[6] = v5;
    block[4] = v6;
    dispatch_after(v8, &_dispatch_main_q, block);
    _Block_object_dispose(buf, 8);
  }
}

void sub_1000966F4(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = a1[4];
    v3 = a1[6];
    v4 = 138543618;
    v5 = v2;
    v6 = 2050;
    v7 = v3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] [%{public}@] END keepalive for %{public}lds\n", &v4, 0x16u);
  }

  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  *(*(a1[5] + 8) + 40) = 0;
}

void sub_1000967E4(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = string;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] RAPPORT WAKE! event='%s'", buf, 0xCu);
    if (string)
    {
      goto LABEL_3;
    }
  }

  else if (string)
  {
LABEL_3:
    v4 = -[NSString substringToIndex:]([+[NSUUID UUID](NSUUID UUIDString], "substringToIndex:", 5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v4;
      *&buf[12] = 2050;
      *&buf[14] = 60;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] [%{public}@] BEGIN RAPPORT keepalive for %{public}lds\n", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v11 = sub_1000966D8;
    v12 = sub_1000966E8;
    v5 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    v13 = v5;
    v6 = dispatch_time(0, 60000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100096AF8;
    block[3] = &unk_1000E3668;
    block[6] = 60;
    block[4] = v4;
    block[5] = buf;
    dispatch_after(v6, &_dispatch_main_q, block);
    if (xpc_dictionary_expects_reply())
    {
      reply = xpc_dictionary_create_reply(a2);
      if (reply)
      {
        xpc_dictionary_send_reply();
        xpc_release(reply);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] failed to create rapport reply.", v8, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] bailing out early, no rapport event name.", buf, 2u);
  }
}

void sub_100096AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100096AF8(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = a1[4];
    v3 = a1[6];
    v4 = 138543618;
    v5 = v2;
    v6 = 2050;
    v7 = v3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] [%{public}@] END keepalive for %{public}lds\n", &v4, 0x16u);
  }

  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  *(*(a1[5] + 8) + 40) = 0;
}

id sub_100096BE8(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] signal event handler called, exiting", buf, 2u);
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] calling exit(EXIT_FAILURE)", v4, 2u);
    }

    exit(1);
  }

  return [v2 terminateAndNotify:&stru_1000E36A8];
}

void sub_100096CAC(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] calling exit(143)", v1, 2u);
  }

  exit(143);
}

void sub_1000978F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[NSMutableDictionary dictionary];
  v10 = [v6 objectForKeyedSubscript:@"Type"];
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315906;
    v30 = "[W5PeerInfraManager _requestHandler]_block_invoke";
    v31 = 2080;
    v32 = "W5PeerInfraManager.m";
    v33 = 1024;
    v34 = 73;
    v35 = 2112;
    v36 = v10;
    _os_log_send_and_compose_impl();
  }

  if ([v10 integerValue] == 1)
  {
    v12 = WeakRetained[2];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100097D00;
    v22[3] = &unk_1000E36D0;
    v23 = v9;
    v24 = v7;
    [v12 scanForNetworksWithConfiguration:0 handler:v22];

    v13 = v23;
LABEL_17:

    goto LABEL_18;
  }

  if ([v10 integerValue] == 2)
  {
    v13 = [v6 objectForKeyedSubscript:@"JoinTarget"];
    v14 = [v6 objectForKey:@"JoinPassword"];
    v15 = v14;
    v16 = WeakRetained[2];
    if (v14)
    {
      v27 = @"JoinPassword";
      v28 = v14;
      v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    }

    else
    {
      v17 = 0;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100097D9C;
    v19[3] = &unk_1000E36F8;
    v20 = v9;
    v21 = v7;
    [v16 associateToNetwork:v13 configuration:v17 reply:v19];
    if (v15)
    {
    }

    goto LABEL_16;
  }

  v18 = sub_100098A04();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315650;
    v30 = "[W5PeerInfraManager _requestHandler]_block_invoke_3";
    v31 = 2080;
    v32 = "W5PeerInfraManager.m";
    v33 = 1024;
    v34 = 92;
    _os_log_send_and_compose_impl();
  }

  if (v7)
  {
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"W5ParamErr";
    v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v13];
    (*(v7 + 2))(v7, v15, v9);
LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t sub_100097D00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"ScanError"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"ScanResults"];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(a1 + 32);
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

uint64_t sub_100097D9C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"JoinError"];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100097F98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (!v11)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:@"ScanResults"];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

void sub_10009824C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v11)
  {
    if (v9)
    {
      (*(v9 + 16))(v9, v11);
    }
  }

  else if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"JoinError"];
    (*(v9 + 16))(v9, v10);
  }
}

id sub_100098378()
{
  v0 = arc4random();
  v1 = v0 % [&off_1000F49B0 count];

  return [&off_1000F49B0 objectAtIndex:v1];
}

CFStringRef sub_1000983C8()
{
  result = SCDynamicStoreCopyComputerName(0, 0);
  if (result)
  {
    v1 = result;
    v2 = [NSString stringWithString:result];
    CFRelease(v1);
    return v2;
  }

  return result;
}

id sub_100098418()
{
  mainPort = 0;
  if (IOMainPort(bootstrap_port, &mainPort))
  {
    return 0;
  }

  v0 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"boot-args", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    IOObjectRelease(v1);
    return 0;
  }

  v3 = CFProperty;
  v4 = [CFProperty componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  IOObjectRelease(v1);
  CFRelease(v3);
  return v4;
}

void sub_1000984DC(const __CFString *a1, int a2)
{
  v4 = [[NSMutableArray alloc] initWithArray:sub_100098418()];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_37;
  }

  v6 = [v4 containsObject:a1];
  if (a2)
  {
    if (v6)
    {
      if (qword_100106C98 != -1)
      {
        dispatch_once(&qword_100106C98, &stru_1000E3740);
      }

      if (!os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v17 = 136315906;
      v18 = "W5UpdateBootargs";
      v19 = 2080;
      v20 = "W5MiscUtil.m";
      v21 = 1024;
      v22 = 133;
      v23 = 2114;
      v24 = a1;
      goto LABEL_36;
    }

LABEL_9:
    HIDWORD(v16) = 0;
    if (IOMainPort(bootstrap_port, &v16 + 1))
    {
      goto LABEL_37;
    }

    v7 = IORegistryEntryFromPath(HIDWORD(v16), "IODeviceTree:/options");
    if (!v7)
    {
      goto LABEL_37;
    }

    v8 = v7;
    if (qword_100106C98 != -1)
    {
      dispatch_once(&qword_100106C98, &stru_1000E3740);
    }

    if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 componentsJoinedByString:@" "];
      v17 = 136315906;
      v18 = "W5UpdateBootargs";
      v19 = 2080;
      v20 = "W5MiscUtil.m";
      v21 = 1024;
      v22 = 143;
      v23 = 2114;
      v24 = v9;
      LODWORD(v16) = 38;
      v15 = &v17;
      _os_log_send_and_compose_impl();
    }

    if (a2)
    {
      [v5 addObject:a1];
    }

    else
    {
      [v5 removeObject:a1];
    }

    v10 = [v5 componentsJoinedByString:{@" ", v15, v16}];
    v11 = IORegistryEntrySetCFProperty(v8, @"boot-args", v10);
    if (v11)
    {
      v12 = v11;
      if (qword_100106C98 != -1)
      {
        dispatch_once(&qword_100106C98, &stru_1000E3740);
      }

      if (!os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      if (a2)
      {
        v13 = @"add";
      }

      else
      {
        v13 = @"remove";
      }

      v14 = mach_error_string(v12);
      v17 = 136316418;
      v18 = "W5UpdateBootargs";
      v19 = 2080;
      v20 = "W5MiscUtil.m";
      v21 = 1024;
      v22 = 151;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = a1;
      v27 = 2082;
      v28 = v14;
    }

    else
    {
      if (qword_100106C98 != -1)
      {
        dispatch_once(&qword_100106C98, &stru_1000E3740);
      }

      if (!os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v17 = 136315906;
      v18 = "W5UpdateBootargs";
      v19 = 2080;
      v20 = "W5MiscUtil.m";
      v21 = 1024;
      v22 = 153;
      v23 = 2114;
      v24 = v10;
    }

    _os_log_send_and_compose_impl();
LABEL_24:

    IOObjectRelease(v8);
    return;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (!os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_37;
  }

  v17 = 136315906;
  v18 = "W5UpdateBootargs";
  v19 = 2080;
  v20 = "W5MiscUtil.m";
  v21 = 1024;
  v22 = 134;
  v23 = 2114;
  v24 = a1;
LABEL_36:
  _os_log_send_and_compose_impl();
LABEL_37:
}

uint64_t sub_100098A04()
{
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  return qword_100106C90;
}

uint64_t sub_100098A4C(void *a1, void *a2, NSError **a3)
{
  v24 = 0;
  memset(&v23, 0, sizeof(v23));
  stat([objc_msgSend(a1 "path")], &v23);
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 path];
    st_size = v23.st_size;
    v8 = [a2 path];
    v31 = 136316418;
    v32 = "W5CreateTarball";
    v33 = 2080;
    v34 = "W5MiscUtil.m";
    v35 = 1024;
    v36 = 388;
    v37 = 2114;
    v38 = v6;
    v39 = 2048;
    v40 = st_size;
    v41 = 2114;
    v42 = v8;
    LODWORD(v22) = 58;
    v21 = &v31;
    _os_log_send_and_compose_impl();
  }

  v9 = archive_write_new();
  if (!v9)
  {
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"ENOMEM";
    v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v15 = NSPOSIXErrorDomain;
    v16 = 12;
LABEL_17:
    v24 = [NSError errorWithDomain:v15 code:v16 userInfo:v14, v21, v22];
    goto LABEL_18;
  }

  if (!-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a1 path]))
  {
    v27 = NSLocalizedFailureReasonErrorKey;
    v28 = @"ENOENT";
    v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = NSPOSIXErrorDomain;
    v16 = 2;
    goto LABEL_17;
  }

  archive_write_add_filter_gzip();
  archive_write_set_format_pax();
  [objc_msgSend(a2 "path")];
  v10 = archive_write_open_filename();
  if (v10)
  {
    v17 = v10;
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"err";
    v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = NSPOSIXErrorDomain;
    v16 = v17;
    goto LABEL_17;
  }

  if (sub_100098F6C(v9, a1, [objc_msgSend(a2 "lastPathComponent")], &v24))
  {
    if (qword_100106C98 != -1)
    {
      dispatch_once(&qword_100106C98, &stru_1000E3740);
    }

    if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1 path];
      v12 = [a2 path];
      v31 = 136316162;
      v32 = "W5CreateTarball";
      v33 = 2080;
      v34 = "W5MiscUtil.m";
      v35 = 1024;
      v36 = 412;
      v37 = 2114;
      v38 = v11;
      v39 = 2114;
      v40 = v12;
      v13 = 1;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  v13 = 0;
  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [a2 path];
    v19 = [(NSError *)v24 code];
    v32 = "W5CreateTarball";
    v33 = 2080;
    v31 = 136316162;
    v34 = "W5MiscUtil.m";
    v35 = 1024;
    v36 = 408;
    v37 = 2114;
    v38 = v18;
    v39 = 2048;
    v40 = v19;
    _os_log_send_and_compose_impl();
    v13 = 0;
  }

LABEL_22:
  if (a3 && v24)
  {
    *a3 = v24;
  }

  if (v9)
  {
    archive_write_free();
  }

  return v13;
}

uint64_t sub_100098F6C(uint64_t a1, void *a2, void *a3, id *a4)
{
  v40 = 0;
  v8 = objc_autoreleasePoolPush();
  if (![a2 checkResourceIsReachableAndReturnError:&v40])
  {
    goto LABEL_33;
  }

  v39 = 0;
  if (![a2 getResourceValue:&v39 forKey:NSURLIsDirectoryKey error:&v40])
  {
    goto LABEL_33;
  }

  if ([v39 BOOLValue])
  {
    memset(&v51, 0, sizeof(v51));
    stat([objc_msgSend(a2 "path")], &v51);
    if (qword_100106C98 != -1)
    {
      dispatch_once(&qword_100106C98, &stru_1000E3740);
    }

    if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a2 path];
      *&v42[4] = "__W5ArchiveAddURLToArchive";
      v43 = 2080;
      *v42 = 136316162;
      v44 = "W5MiscUtil.m";
      v45 = 1024;
      v46 = 341;
      v47 = 2114;
      v48 = v9;
      v49 = 2048;
      st_size = v51.st_size;
      LODWORD(v30) = 48;
      v28 = v42;
      _os_log_send_and_compose_impl();
    }

    v10 = [+[NSFileManager contentsOfDirectoryAtURL:v28]options:"contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:" error:a2, 0, 0, &v40];
    if (v10)
    {
      v11 = v10;
      v33 = a4;
      v12 = v8;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = [(NSArray *)v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          v16 = 0;
          do
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v35 + 1) + 8 * v16);
            v34 = 0;
            if ((sub_100098F6C(a1, v17, [a3 stringByAppendingPathComponent:{objc_msgSend(v17, "lastPathComponent", v29, v31)}], &v34) & 1) == 0)
            {
              if (qword_100106C98 != -1)
              {
                dispatch_once(&qword_100106C98, &stru_1000E3740);
              }

              if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [a2 path];
                v18 = [v34 code];
                *v42 = 136316162;
                *&v42[4] = "__W5ArchiveAddURLToArchive";
                v43 = 2080;
                v44 = "W5MiscUtil.m";
                v45 = 1024;
                v46 = 351;
                v47 = 2114;
                v48 = v32;
                v49 = 2048;
                st_size = v18;
                LODWORD(v31) = 48;
                v29 = v42;
                _os_log_send_and_compose_impl();
              }
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v19 = [(NSArray *)v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
          v14 = v19;
        }

        while (v19);
      }

      v20 = 1;
      v8 = v12;
      a4 = v33;
      goto LABEL_25;
    }

    if (qword_100106C98 != -1)
    {
      dispatch_once(&qword_100106C98, &stru_1000E3740);
    }

    if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [a2 path];
      v25 = [v40 code];
      *&v42[4] = "__W5ArchiveAddURLToArchive";
      v43 = 2080;
      *v42 = 136316162;
      v44 = "W5MiscUtil.m";
      v45 = 1024;
      v46 = 344;
      v47 = 2114;
      v48 = v24;
      v49 = 2048;
      st_size = v25;
      _os_log_send_and_compose_impl();
    }

LABEL_33:
    v20 = 0;
    goto LABEL_25;
  }

  *v42 = 0;
  if ((sub_10009A6AC() & 1) == 0)
  {
    if (qword_100106C98 != -1)
    {
      dispatch_once(&qword_100106C98, &stru_1000E3740);
    }

    if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [a2 path];
      v27 = [*v42 code];
      *&v51.st_mode = "__W5ArchiveAddURLToArchive";
      WORD2(v51.st_ino) = 2080;
      v51.st_dev = 136316162;
      *(&v51.st_ino + 6) = "W5MiscUtil.m";
      HIWORD(v51.st_gid) = 1024;
      v51.st_rdev = 359;
      *(&v51.st_rdev + 2) = 2114;
      *(&v51.st_rdev + 6) = v26;
      HIWORD(v51.st_atimespec.tv_sec) = 2048;
      v51.st_atimespec.tv_nsec = v27;
      _os_log_send_and_compose_impl();
    }
  }

  v20 = 1;
LABEL_25:
  v21 = v40;
  objc_autoreleasePoolPop(v8);
  v22 = v40;
  if (a4 && v40)
  {
    *a4 = v40;
  }

  return v20;
}

uint64_t sub_100099544(void *a1, void *a2, NSError **a3)
{
  memset(&v25, 0, sizeof(v25));
  stat([objc_msgSend(a1 "path")], &v25);
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 path];
    st_size = v25.st_size;
    v8 = [a2 path];
    v32 = 136316418;
    v33 = "W5CopyUsingBOMCopier";
    v34 = 2080;
    v35 = "W5MiscUtil.m";
    v36 = 1024;
    v37 = 490;
    v38 = 2114;
    v39 = v6;
    v40 = 2048;
    v41 = st_size;
    v42 = 2114;
    v43 = v8;
    LODWORD(v24) = 58;
    v23 = &v32;
    _os_log_send_and_compose_impl();
  }

  -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v23, v24), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [objc_msgSend(a2 "path")], 1, 0, 0);
  v9 = BOMCopierNew();
  if (v9)
  {
    if (!-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a1 path]))
    {
      v19 = 0;
      goto LABEL_20;
    }

    HIBYTE(v24) = 0;
    if (-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [a1 path], &v24 + 7))
    {
      v10 = +[NSMutableDictionary dictionary];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"copyResources"];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"copyExtendedAttributes"];
      [a1 fileSystemRepresentation];
      [a2 fileSystemRepresentation];
      v11 = BOMCopierCopyWithOptions();
      if (!v11)
      {
        if (qword_100106C98 != -1)
        {
          dispatch_once(&qword_100106C98, &stru_1000E3740);
        }

        if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [a1 path];
          v13 = [a2 path];
          v32 = 136316162;
          v33 = "W5CopyUsingBOMCopier";
          v34 = 2080;
          v35 = "W5MiscUtil.m";
          v36 = 1024;
          v37 = 520;
          v38 = 2114;
          v39 = v12;
          v40 = 2114;
          v41 = v13;
          v14 = 1;
          _os_log_send_and_compose_impl();
        }

        else
        {
          v14 = 1;
        }

LABEL_14:
        BOMCopierFree();
        return v14;
      }

      v20 = v11;
      v26 = NSLocalizedFailureReasonErrorKey;
      v27 = @"err";
      v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = NSPOSIXErrorDomain;
      v18 = v20;
    }

    else
    {
      v28 = NSLocalizedFailureReasonErrorKey;
      v29 = @"ENOENT";
      v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v17 = NSPOSIXErrorDomain;
      v18 = 2;
    }
  }

  else
  {
    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = @"ENOMEM";
    v16 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v17 = NSPOSIXErrorDomain;
    v18 = 12;
  }

  v19 = [NSError errorWithDomain:v17 code:v18 userInfo:v16];
LABEL_20:
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [a1 path];
    v22 = [(NSError *)v19 code];
    v33 = "W5CopyUsingBOMCopier";
    v34 = 2080;
    v32 = 136316162;
    v35 = "W5MiscUtil.m";
    v36 = 1024;
    v37 = 516;
    v38 = 2114;
    v39 = v21;
    v40 = 2048;
    v41 = v22;
    _os_log_send_and_compose_impl();
  }

  if (a3 && v19)
  {
    *a3 = v19;
  }

  v14 = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100099AD4(const __CFString *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136316418;
    v34 = "W5DeleteFilesAtPath";
    v35 = 2080;
    v36 = "W5MiscUtil.m";
    v37 = 1024;
    v38 = 648;
    v39 = 2114;
    v40 = a1;
    v41 = 2114;
    *v42 = a2;
    *&v42[8] = 2048;
    *&v42[10] = a3;
    LODWORD(v23) = 58;
    v22 = &v33;
    _os_log_send_and_compose_impl();
  }

  v31 = 0;
  v32 = 0;
  if (!*a4)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [[NSURL alloc] initFileURLWithPath:a1 isDirectory:1];
    v46 = NSURLCreationDateKey;
    v9 = [(NSFileManager *)v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:[NSArray arrayWithObjects:1 count:?], 4, &v32];
    if (v9)
    {
      obj = [(NSArray *)v9 filteredArrayUsingPredicate:a2];
      if (qword_100106C98 != -1)
      {
        dispatch_once(&qword_100106C98, &stru_1000E3740);
      }

      if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NSArray *)obj count];
        v33 = 136316162;
        v34 = "W5DeleteFilesAtPath";
        v35 = 2080;
        v36 = "W5MiscUtil.m";
        v37 = 1024;
        v38 = 667;
        v39 = 2048;
        v40 = v10;
        v41 = 2114;
        *v42 = @"/var/run/com.apple.wifivelocity";
        LODWORD(v23) = 48;
        v22 = &v33;
        _os_log_send_and_compose_impl();
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v45 count:16, v22, v23];
      if (v11)
      {
        v12 = v11;
        v24 = 0;
        v13 = *v28;
LABEL_13:
        v14 = 0;
        while (1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          if (*a4)
          {
            break;
          }

          v15 = *(*(&v27 + 1) + 8 * v14);
          [(__CFString *)v15 getResourceValue:&v31 forKey:NSURLCreationDateKey error:&v32];
          if (v32)
          {
            if (qword_100106C98 != -1)
            {
              dispatch_once(&qword_100106C98, &stru_1000E3740);
            }

            if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
            {
              v33 = 136315906;
              v34 = "W5DeleteFilesAtPath";
              v35 = 2080;
              v36 = "W5MiscUtil.m";
              v37 = 1024;
              v38 = 675;
              v39 = 2114;
              v40 = v15;
              _os_log_send_and_compose_impl();
            }
          }

          else
          {
            v16 = +[NSCalendar currentCalendar];
            v17 = [(NSDateComponents *)[(NSCalendar *)v16 components:16 fromDate:v31 toDate:+[NSDate options:"date"]day];
            if (qword_100106C98 != -1)
            {
              dispatch_once(&qword_100106C98, &stru_1000E3740);
            }

            if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
            {
              v33 = 136316674;
              v34 = "W5DeleteFilesAtPath";
              v35 = 2080;
              v36 = "W5MiscUtil.m";
              v37 = 1024;
              v38 = 682;
              v39 = 2114;
              v40 = v15;
              v41 = 2114;
              *v42 = v31;
              *&v42[8] = 2048;
              *&v42[10] = v17;
              v43 = 1024;
              v44 = v17 >= a3;
              _os_log_send_and_compose_impl();
            }

            if (v17 >= a3)
            {
              v18 = [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v15, &v32];
              if (qword_100106C98 != -1)
              {
                dispatch_once(&qword_100106C98, &stru_1000E3740);
              }

              if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
              {
                v33 = 136316418;
                v34 = "W5DeleteFilesAtPath";
                v35 = 2080;
                v36 = "W5MiscUtil.m";
                v37 = 1024;
                v38 = 687;
                v39 = 2112;
                v40 = v15;
                v41 = 1024;
                *v42 = v18;
                *&v42[4] = 2112;
                *&v42[6] = v32;
                _os_log_send_and_compose_impl();
              }

              v19 = v24;
              if (!v32)
              {
                v19 = v24 + 1;
              }

              v24 = v19;
            }
          }

          if (v12 == ++v14)
          {
            v12 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v45 count:16];
            if (v12)
            {
              goto LABEL_13;
            }

            goto LABEL_51;
          }
        }

        if (qword_100106C98 != -1)
        {
          dispatch_once(&qword_100106C98, &stru_1000E3740);
        }

        if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315650;
          v34 = "W5DeleteFilesAtPath";
          v35 = 2080;
          v36 = "W5MiscUtil.m";
          v37 = 1024;
          v38 = 670;
          _os_log_send_and_compose_impl();
          goto LABEL_51;
        }

LABEL_52:
        v20 = v24;
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    if (qword_100106C98 != -1)
    {
      dispatch_once(&qword_100106C98, &stru_1000E3740);
    }

    if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136316162;
      v34 = "W5DeleteFilesAtPath";
      v35 = 2080;
      v36 = "W5MiscUtil.m";
      v37 = 1024;
      v38 = 664;
      v39 = 2114;
      v40 = @"/var/run/com.apple.wifivelocity";
      v41 = 2114;
      *v42 = v32;
      goto LABEL_49;
    }

LABEL_56:
    v20 = 0;
    goto LABEL_53;
  }

  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (!os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_56;
  }

  v33 = 136315650;
  v34 = "W5DeleteFilesAtPath";
  v35 = 2080;
  v36 = "W5MiscUtil.m";
  v37 = 1024;
  v38 = 656;
LABEL_49:
  _os_log_send_and_compose_impl();
LABEL_50:
  v24 = 0;
LABEL_51:
  if (qword_100106C98 == -1)
  {
    goto LABEL_52;
  }

  dispatch_once(&qword_100106C98, &stru_1000E3740);
  v20 = v24;
LABEL_53:
  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315650;
    v34 = "W5DeleteFilesAtPath";
    v35 = 2080;
    v36 = "W5MiscUtil.m";
    v37 = 1024;
    v38 = 695;
    _os_log_send_and_compose_impl();
  }

  return v20;
}

uint64_t sub_10009A49C()
{
  if (qword_100106CA8 != -1)
  {
    dispatch_once(&qword_100106CA8, &stru_1000E3760);
  }

  return qword_100106CA0;
}

id sub_10009A514(uint64_t a1)
{
  v2 = +[NSTimeZone systemTimeZone];

  return [NSISO8601DateFormatter stringFromDate:a1 timeZone:v2 formatOptions:1907];
}

uint64_t sub_10009A568(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2 && (a2 - a1) < 1)
  {
    return 4294960546;
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_28;
  }

  v5 = a1;
  do
  {
    if (v4 > 0x3F)
    {
      return 4294960554;
    }

    v6 = &v5[v4 + 1];
    if (v6 - a1 > 255)
    {
      return 4294960554;
    }

    if (a2 && v6 >= a2)
    {
      return 4294960546;
    }

    v7 = v5 + 1;
    do
    {
      v8 = *v7;
      if ((*v7 - 32) <= 0x5E)
      {
        if (*v7 - 32 <= 0x3C && ((1 << (v8 - 32)) & 0x1000000000004001) != 0)
        {
          *a3++ = 92;
        }

LABEL_24:
        *a3++ = v8;
        goto LABEL_25;
      }

      if ((*v7 & 0x80) != 0)
      {
        goto LABEL_24;
      }

      *a3 = 92;
      if (v8 <= 0x63u)
      {
        v10 = 48;
      }

      else
      {
        v10 = 49;
      }

      a3[1] = v10;
      if (v8 >= 0x64u)
      {
        v11 = v8 / 0xAu - 10;
      }

      else
      {
        v11 = v8 / 0xAu;
      }

      a3[2] = v11 + 48;
      a3[3] = (v8 % 0xAu) | 0x30;
      a3 += 4;
LABEL_25:
      ++v7;
    }

    while (v7 < v6);
    *a3++ = 46;
    v4 = *v6;
    v5 = v6;
  }

  while (*v6);
  if (v6 == a1)
  {
LABEL_28:
    *a3++ = 46;
    v6 = a1;
  }

  *a3 = 0;
  result = 0;
  if (a4)
  {
    *a4 = v6 + 1;
  }

  return result;
}

uint64_t sub_10009A6AC()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  memset(&v26, 0, sizeof(v26));
  stat([objc_msgSend(v4 "path")], &v26);
  if (qword_100106C98 != -1)
  {
    dispatch_once(&qword_100106C98, &stru_1000E3740);
  }

  if (os_log_type_enabled(qword_100106C90, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v5 path];
    v35 = "__W5ArchiveAddFileURLToArchive";
    v36 = 2080;
    *buf = 136316162;
    *v37 = "W5MiscUtil.m";
    *&v37[8] = 1024;
    *&v37[10] = 276;
    *&v37[14] = 2114;
    *&v37[16] = v6;
    v38 = 2048;
    st_size = v26.st_size;
    LODWORD(v25) = 48;
    v24 = buf;
    _os_log_send_and_compose_impl();
  }

  v7 = archive_entry_new();
  if (v7)
  {
    archive_entry_copy_stat();
    [v3 UTF8String];
    archive_entry_set_pathname();
    archive_entry_set_perm();
    v8 = archive_write_header();
    if (v8)
    {
      v17 = v8;
      v30 = NSLocalizedFailureReasonErrorKey;
      v31 = @"err";
      v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:[NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1]];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = [v3 UTF8String];
        v20 = archive_error_string();
        *buf = 136446722;
        v35 = v19;
        v36 = 1026;
        *v37 = v17;
        *&v37[4] = 2082;
        *&v37[6] = v20;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] archive_write_header() FAILED for %{public}s, returned %{public}d (%{public}s)", buf, 0x1Cu);
      }

      goto LABEL_21;
    }

    v9 = open([objc_msgSend(v5 "path")], 0);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      if (read(v9, v27, 0x2000uLL) < 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v23 = [v3 UTF8String];
          *buf = 136446210;
          v35 = v23;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] Unexpected zero-length file encountered for %{public}s", buf, 0xCu);
        }

        v11 = 0;
      }

      else
      {
        v11 = 0;
        do
        {
          v11 += archive_write_data();
        }

        while (read(v10, v27, 0x2000uLL) > 0);
      }

      close(v10);
      if (v11 != v26.st_size && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v22 = [v3 UTF8String];
        *buf = 136446722;
        v35 = v22;
        v36 = 2050;
        *v37 = v26.st_size;
        *&v37[8] = 2050;
        *&v37[10] = v11;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] Bytes written does not equal file size (file='%{public}s', size=%{public}lld, written=%{public}zd)", buf, 0x20u);
      }

      v12 = 1;
      goto LABEL_13;
    }

    v21 = *__error();
    v28 = NSLocalizedFailureReasonErrorKey;
    v29 = @"errno";
    v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v15 = NSPOSIXErrorDomain;
    v16 = v21;
  }

  else
  {
    v32 = NSLocalizedFailureReasonErrorKey;
    v33 = @"ENOMEM";
    v14 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v15 = NSPOSIXErrorDomain;
    v16 = 12;
  }

  v18 = [NSError errorWithDomain:v15 code:v16 userInfo:v14, v24, v25];
LABEL_21:
  v12 = 0;
  if (v1 && v18)
  {
    v12 = 0;
    *v1 = v18;
  }

LABEL_13:
  if (v7)
  {
    archive_entry_free();
  }

  return v12;
}

void sub_10009B050(id a1)
{
  v1 = sub_100098A04();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_10009B12C(id a1, RPCompanionLinkDevice *a2)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_10009B218(id a1, RPCompanionLinkDevice *a2)
{
  v2 = sub_100098A04();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

id sub_10009B304(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v4[2] = sub_10009B37C;
  v4[3] = &unk_1000E37E8;
  v5 = v1;
  return [v2 activateWithCompletion:v4];
}

intptr_t sub_10009B37C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    *(*(a1 + 32) + 24) = 0;
    objc_sync_exit(v4);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10009B5E4(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v17 = objc_alloc_init(NSMutableDictionary);
  v2 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = a1;
  v3 = [*(*(a1 + 40) + 16) activeDevices];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v44 count:16];
  if (v4)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        if ([v7 idsDeviceIdentifier] && !objc_msgSend(v2, "containsObject:", objc_msgSend(v7, "idsDeviceIdentifier")))
        {
          v9 = sub_100098A04();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 136315906;
            v27 = "[W5PeerDiagnosticsManager beginPeerDiscovery]_block_invoke";
            v28 = 2080;
            v29 = "W5PeerDiagnosticsManager.m";
            v30 = 1024;
            v31 = 218;
            v32 = 2114;
            v33 = v7;
            LODWORD(v15) = 38;
            v14 = &v26;
            _os_log_send_and_compose_impl();
          }

          [v2 addObject:{objc_msgSend(v7, "idsDeviceIdentifier", v14, v15)}];
          if ([v7 model] && ((objc_msgSend(objc_msgSend(v7, "model"), "containsString:", @"iPhone") & 1) != 0 || objc_msgSend(objc_msgSend(v7, "model"), "containsString:", @"iPad")))
          {
            ++v21;
          }

          else if ([v7 model] && objc_msgSend(objc_msgSend(v7, "model"), "containsString:", @"Mac"))
          {
            ++v20;
          }

          else if ([v7 model] && objc_msgSend(objc_msgSend(v7, "model"), "containsString:", @"AppleTV"))
          {
            ++v18;
          }

          else if ([v7 model])
          {
            v19 += [objc_msgSend(v7 "model")];
          }
        }

        else
        {
          v8 = sub_100098A04();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 136315906;
            v27 = "[W5PeerDiagnosticsManager beginPeerDiscovery]_block_invoke";
            v28 = 2080;
            v29 = "W5PeerDiagnosticsManager.m";
            v30 = 1024;
            v31 = 215;
            v32 = 2114;
            v33 = v7;
            LODWORD(v15) = 38;
            v14 = &v26;
            _os_log_send_and_compose_impl();
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v22 objects:v44 count:16];
    }

    while (v4);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  [v17 setObject:objc_msgSend(objc_msgSend(*(*(a1 + 40) + 16) forKeyedSubscript:{"localDevice", v14, v15), "model"), @"DeviceModel"}];
  [v17 setObject:+[NSDate date](NSDate forKeyedSubscript:{"date"), @"Timestamp"}];
  [v17 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v21), @"numberOfIOSDevices"}];
  [v17 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v18), @"numberOfTVOSDevices"}];
  [v17 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v20), @"numberOfMacOSDevices"}];
  [v17 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v19), @"numberOfWatchOSDevices"}];
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v17 objectForKeyedSubscript:@"DeviceModel"];
    v12 = [v17 objectForKeyedSubscript:@"Timestamp"];
    v26 = 136317186;
    v27 = "[W5PeerDiagnosticsManager beginPeerDiscovery]_block_invoke";
    v28 = 2080;
    v29 = "W5PeerDiagnosticsManager.m";
    v30 = 1024;
    v31 = 245;
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    v36 = 2048;
    v37 = v21;
    v38 = 2048;
    v39 = v18;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v19;
    _os_log_send_and_compose_impl();
  }

  v13 = *(a1 + 40);
  objc_sync_enter(*(v16 + 40));

  *(*(v16 + 40) + 32) = [v17 copy];
  objc_sync_exit(v13);
  [*(v16 + 40) invalidateDiscoveryClient];
  dispatch_release(*(v16 + 32));
}

id sub_10009BC38(uint64_t a1)
{
  [*(a1 + 32) registerRequestHandler];
  v2 = *(*(a1 + 32) + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009BCC4;
  v4[3] = &unk_1000E2C10;
  v4[4] = *(a1 + 40);
  return [v2 activateWithCompletion:v4];
}

intptr_t sub_10009BCC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10009BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a4, [*(a1 + 32) localDiagnostics], 0, 0);
  v4 = sub_100098A04();
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    return _os_log_send_and_compose_impl();
  }

  return result;
}

void sub_10009C3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009C3EC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10009C3D0;
  v0 = qword_100106CB0;
  v7 = sub_10009C3E0;
  v8 = qword_100106CB0;
  if (!qword_100106CB0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10009D528;
    v2[3] = &unk_1000E13B0;
    v2[4] = &v3;
    sub_10009D528(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10009C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10009C4D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    return dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    objc_sync_enter(v7);
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 40) = [a2 copy];
    }

    objc_sync_exit(v7);
    v8 = *(a1 + 32);

    return dispatch_semaphore_signal(v8);
  }
}

uint64_t sub_10009C8DC(uint64_t a1)
{
  v2 = sub_100098A04();
  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v4 = *(a1 + 32);
    return _os_log_send_and_compose_impl();
  }

  return result;
}

id sub_10009C9CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5PeerDiagnosticsManager requestDiagnostics:completionBlock:]_block_invoke";
      v13 = 2080;
      v14 = "W5PeerDiagnosticsManager.m";
      v15 = 1024;
      v16 = 387;
      v17 = 2114;
      v18 = a2;
      _os_log_send_and_compose_impl();
    }

    return (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  }

  else
  {
    v9 = RPOptionAllowUnauthenticated;
    v10 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009CB7C;
    v8[3] = &unk_1000E3860;
    v7 = *(a1 + 32);
    v8[4] = *(a1 + 40);
    return [v7 sendRequestID:@"com.apple.proximity.peerdiagnosticslink" request:&__NSDictionary0__struct options:v6 responseHandler:v8];
  }
}

id sub_10009D144(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009D1CC;
  v5[3] = &unk_1000E3888;
  v5[4] = v1;
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v6 = vextq_s8(v2, v2, 8uLL);
  v7 = v3;
  return [v1 requestDiagnostics:v2.i64[0] completionBlock:v5];
}

void sub_10009D1CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    ++*(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 40) addObject:a2];
    [*(a1 + 40) count];
    objc_sync_exit(v4);
    v5 = sub_100098A04();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 48) model];
LABEL_6:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_10009D3D8(uint64_t a1)
{
  v2 = [*(a1 + 32) localDiagnostics];
  [v2 setObject:@"YES" forKeyedSubscript:@"LocalDevice"];
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 40) addObject:v2];
  objc_sync_exit(v3);
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  dispatch_group_leave(*(a1 + 48));
}

Class sub_10009D528(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100106CB8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10009D6E4;
    v5[4] = &unk_1000E13E8;
    v5[5] = v5;
    v6 = off_1000E38D0;
    v7 = 0;
    qword_100106CB8 = _sl_dlopen();
  }

  if (!qword_100106CB8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *WiFiAnalyticsLibrary(void)"];
    [(NSAssertionHandler *)v3 handleFailureInFunction:v4 file:@"W5PeerDiagnosticsManager.m" lineNumber:21 description:@"%s", v5[0]];
    goto LABEL_10;
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = objc_getClass("WAClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"W5PeerDiagnosticsManager.m", 23, @"Unable to find class %s", "WAClient"];
LABEL_10:
    __break(1u);
  }

  qword_100106CB0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10009D6E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100106CB8 = result;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}
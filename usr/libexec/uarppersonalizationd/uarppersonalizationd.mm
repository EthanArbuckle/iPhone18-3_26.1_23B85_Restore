void sub_100000FE0(uint64_t a1)
{
  length = 0;
  data = xpc_dictionary_get_data(*(a1 + 32), [@"tatsuRequests" UTF8String], &length);
  if (data)
  {
    v3 = [NSData dataWithBytes:data length:length];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v4, v5, v6, v7, v8, objc_opt_class(), 0];
    v27 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v3 error:&v27];
    v26 = v27;
    v11 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: TSS Request is %@", buf, 0x16u);
    }

    string = xpc_dictionary_get_string(*(a1 + 32), [@"endpointUUID" UTF8String]);
    v13 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
      v31 = 2080;
      v32 = string;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: TSS Request for endpoint UUID %s", buf, 0x16u);
    }

    v14 = [NSString stringWithUTF8String:string];
    v15 = [[NSUUID alloc] initWithUUIDString:v14];
    v16 = xpc_dictionary_get_string(*(a1 + 32), [@"assetUUID" UTF8String]);
    v17 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
      v31 = 2080;
      v32 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: TSS Request for asset UUID %s", buf, 0x16u);
    }

    v18 = [NSString stringWithUTF8String:v16];
    v19 = [[NSUUID alloc] initWithUUIDString:v18];
    v20 = xpc_dictionary_get_string(*(a1 + 32), [@"tatsuServerURL" UTF8String]);
    if (v20)
    {
      v21 = v20;
      v22 = *(*(a1 + 40) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
        v31 = 2080;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: TSS Request destined for %s", buf, 0x16u);
      }

      v23 = [NSString stringWithUTF8String:v21];
      v24 = [NSURL URLWithString:v23];
    }

    else
    {
      v24 = 0;
    }

    [*(a1 + 40) personalizeAssetWithSSO:v19 endpointUUID:v15 tssOptions:v10 tssServerURL:v24];
  }

  else
  {
    v25 = *(*(a1 + 40) + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000046E4(v25);
    }
  }
}

void sub_1000019F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000047A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1000047D8(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_100001A94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100004814(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_10000484C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_100001BF8(void *a1)
{
  v2 = [*(a1[4] + 40) remoteObjectProxy];
  [v2 assetPersonalizationComplete:a1[5] endpointUUID:a1[6] tssOptions:a1[7]];
}

void sub_100001CBC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100001CD8(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100004908();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100004888();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_100001DFC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1000021AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000021E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "XPC Connection Interrupted", v2, 2u);
  }
}

void sub_10000224C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "XPC Connection Invalidated", v2, 2u);
  }
}

void sub_1000022B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Proxy Error %@", &v5, 0xCu);
  }
}

uint64_t sub_100002524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000253C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(Proxy Reply) Pending Tatsu Requests are %@", &v8, 0xCu);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id sub_1000027A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_1000029A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v16, 2u);
    }

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = sub_1000029A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with options %{public}@", &v16, 0x16u);
  }

  v8 = sub_1000029EC(v3, v5, 0);
  v9 = sub_1000029A8();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      sub_100004988();
    }

    v11 = v8;
  }

  else
  {
    if (v10)
    {
      sub_1000049BC();
    }

    v12 = MGCopyAnswer();
    v13 = [v12 BOOLValue];
    v14 = 0;
    if (v13)
    {
      v14 = sub_100002DF4(v3, v5);
    }

    v11 = v14;
  }

  return v11;
}

id sub_1000029A8()
{
  if (qword_1000108E8 != -1)
  {
    sub_1000049F0();
  }

  v1 = qword_1000108F0;

  return v1;
}

id sub_1000029EC(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_1000029A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", buf, 0xCu);
  }

  AMAuthInstallLogSetHandler();
  v8 = AMAuthInstallCreate();
  if (v8)
  {
    v9 = v8;
    if (AMAuthInstallSetSigningServerURL())
    {
      v10 = sub_1000029A8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100004A04();
      }

LABEL_7:

      CFRelease(v9);
      goto LABEL_11;
    }

    if (a3)
    {
      v13 = sub_1000029A8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "UARP: TSS request is using SSO", buf, 2u);
      }

      if (AMAuthInstallSsoInitialize())
      {
        v10 = sub_1000029A8();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100004A38();
        }

        goto LABEL_7;
      }

      if (AMAuthInstallSsoEnable())
      {
        v10 = sub_1000029A8();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100004A6C();
        }

        goto LABEL_7;
      }
    }

    v14 = sub_1000029A8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v15 = @" <AppleConnect>";
      }

      else
      {
        v15 = @" ";
      }

      *buf = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "UARP: TSS Request %{public}@%{public}@ is ", buf, 0x16u);
    }

    v16 = sub_1000029A8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
    }

    PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
    v18 = sub_1000029A8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v19 = @" <AppleConnect>";
      }

      else
      {
        v19 = @" ";
      }

      *buf = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "UARP: TSS Response %{public}@%{public}@ is ", buf, 0x16u);
    }

    v20 = sub_1000029A8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
    }

    if (PersonalizedResponse)
    {
      v21 = sub_1000029A8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100004AA0(PersonalizedResponse, v21);
      }
    }

    CFRelease(v9);
  }

  else
  {
    v11 = sub_1000029A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100004B18();
    }
  }

LABEL_11:

  return 0;
}

id sub_100002DF4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_1000029A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v11, 2u);
    }

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = sub_1000029A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with SSO and options %{public}@", &v11, 0x16u);
  }

  v8 = sub_1000029EC(v3, v5, 1);
  if (!v8)
  {
    v9 = sub_1000029A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100004B4C();
    }
  }

  return v8;
}

id sub_100002F94(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_1000029A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100004B80(v4, v3, v5);
  }

  v6 = sub_1000029EC(v3, v4, 0);
  v7 = sub_1000029A8();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      sub_100004988();
    }

    v9 = v6;
  }

  else
  {
    if (v8)
    {
      sub_1000049BC();
    }
  }

  return v6;
}

id sub_10000307C(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100003188;
  v9 = sub_100003198;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000031A0;
  v4[3] = &unk_10000C470;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_100003170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000031A0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 containsString:@"Ticket"])
  {
    v6 = [v5 copy];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_100003248(id a1)
{
  qword_1000108F0 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");

  _objc_release_x1();
}

void sub_10000328C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000029A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v4, 0xCu);
  }
}

uint64_t start()
{
  v0 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "main";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s: Launched uarppersonalizationd", buf, 0xCu);
  }

  v1 = kUARPDaemonPersonalization;
  [kUARPDaemonPersonalization UTF8String];
  [v1 UTF8String];
  v2 = sub_100001DF8(v0);
  if (!v2)
  {
    v5 = dispatch_queue_create([kUARPServicePersonalizationNeededQueue UTF8String], 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003554;
    v14[3] = &unk_10000C4D8;
    v6 = v0;
    v14[4] = v6;
    v7 = objc_retainBlock(v14);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100003A9C;
    v12 = &unk_10000C4D8;
    v13 = v6;
    v8 = objc_retainBlock(&v9);
    xpc_set_event_stream_handler([kUARPDaemonNotificationMatching UTF8String], v5, v7);
    xpc_set_event_stream_handler([@"com.apple.uarp.personalization" UTF8String], v5, v8);
    dispatch_main();
  }

  v3 = v2;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100004C08(v0);
  }

  return v3;
}

void sub_100003554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100004C4C();
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100004CC8(v6);
  }

  string = xpc_dictionary_get_string(v5, _xpc_event_key_name);
  if (!string && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100004D4C(v6);
  }

  v8 = [NSString stringWithUTF8String:string];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100004DD0();
  }

  if ([v8 isEqualToString:kUARPServiceHIDPersonalizationNeededEventName])
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100004E4C();
    }

    v9 = [UARPPersonalizationHelper alloc];
    v10 = [(UARPPersonalizationHelper *)v9 initWithMachServiceName:kUARPServicePersonalization updaterName:kUARPStringHIDUpdaterName];
  }

  else
  {
    v10 = 0;
  }

  if ([v8 isEqualToString:kUARPServiceBTLEPersonalizationNeededEventName])
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100004ECC();
    }

    v11 = [UARPPersonalizationHelper alloc];
    v12 = [(UARPPersonalizationHelper *)v11 initWithMachServiceName:kUARPServicePersonalizationBTLEServer updaterName:kUARPStringBTLEServerUpdaterName];

    v10 = v12;
  }

  if (v10)
  {
    v24 = v10;
    v25 = v8;
    v27 = v5;
    v13 = v10;
    v26 = v6;
    v14 = v6;
    [(UARPPersonalizationHelper *)v13 start];
    [(UARPPersonalizationHelper *)v13 queryOutstandingTssRequests];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = v13;
    obj = [(UARPPersonalizationHelper *)v13 tssRequests];
    v31 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v31)
    {
      v29 = *v33;
      v15 = kUARPStringTatsuSigningServer;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v37 = "handlePersonalization";
            v38 = 2112;
            v39 = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Pending TSS Query %@", buf, 0x16u);
          }

          v18 = [NSMutableDictionary dictionaryWithDictionary:v17, v24, v25];
          v19 = [v18 objectForKeyedSubscript:v15];
          v20 = [NSURL URLWithString:v19];
          [v18 removeObjectForKey:v15];
          v21 = [NSDictionary dictionaryWithDictionary:v18];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v37 = "handlePersonalization";
            v38 = 2112;
            v39 = v20;
            v40 = 2112;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Pending TSS Signing Server %@, Options %@", buf, 0x20u);
          }

          v22 = sub_1000027A4(v21, v20);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v37 = "handlePersonalization";
            v38 = 2112;
            v39 = v22;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: TSS Response %@", buf, 0x16u);
          }

          if (v22)
          {
            v23 = [NSMutableDictionary dictionaryWithDictionary:v17];
            [v23 addEntriesFromDictionary:v22];
          }

          else
          {
            v23 = 0;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v37 = "handlePersonalization";
            v38 = 2112;
            v39 = v23;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: TSS Response to be provided %@", buf, 0x16u);
          }

          [(UARPPersonalizationHelper *)v30 completedTssResponse:v23];
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v31);
    }

    v6 = v26;
    v5 = v27;
    v10 = v24;
    v8 = v25;
  }
}

void sub_100003A9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "main_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: TSS Event", &v6, 0xCu);
  }

  v5 = [[UARPHostPersonalizationManager alloc] initWithListener:0];
  [(UARPHostPersonalizationManager *)v5 personalizeAssetWithXPCEvent:v3];
}

void sub_100003DD4(uint64_t a1, uint64_t a2)
{
  if (qword_100010900 != -1)
  {
    sub_100004F4C();
  }

  v3 = qword_1000108F8;
  if (os_log_type_enabled(qword_1000108F8, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v4, 0xCu);
  }
}

void sub_1000042D8(id a1)
{
  qword_1000108F8 = os_log_create("com.apple.uarp.layer3", "personalizer");

  _objc_release_x1();
}

const __CFString *UARPAssetProcessingStatusDescription(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10000C5F0 + a1);
  }
}

const __CFString *UARPLayer3HashAlgorithmDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10000C720 + a1);
  }
}

uint64_t UARPLayer3HashAlgorithmValue(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SHA-256"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SHA-384"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SHA-512"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const __CFString *UARPLayer3PersonalizationStatusDescription(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10000C740 + a1);
  }
}

const __CFString *UARPLayer3ApplyStagedAssetsStatusDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10000C798 + a1);
  }
}

const __CFString *UARPLayer3UARPLayer3AssetTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10000C7C8 + a1);
  }
}

NSObject *UARPLayer3UtilsCleanFileHandleForWriting(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSFileManager defaultManager];
  v8 = [v5 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (!v9 || ([v5 path], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "removeItemAtPath:error:", v10, a3), v10, (v11 & 1) != 0))
  {
    v12 = [v5 path];
    v13 = [v12 stringByDeletingLastPathComponent];

    if ([v7 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:a3])
    {
      v14 = [v5 path];
      v15 = [v7 createFileAtPath:v14 contents:0 attributes:0];

      if (v15)
      {
        v16 = [NSFileHandle fileHandleForWritingToURL:v5 error:a3];
        v17 = v16;
        if (v16)
        {
          v17 = v16;
          v18 = v17;
        }

        else
        {
          v20 = v6;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000051A8(v5, a3);
          }

          v18 = 0;
        }

        goto LABEL_15;
      }

      v17 = v6;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100005104(v5);
      }
    }

    else
    {
      v17 = v6;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000504C(v5, a3);
      }
    }

    v18 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = v6;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100004F94(v5, a3);
  }

  v18 = 0;
LABEL_16:

  return v18;
}

void sub_1000046E4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: TSS Request is NULL", &v1, 0xCu);
}

void sub_100004AA0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v2, 8u);
}

void sub_100004B80(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "UARP: TSS Request to server %{public}@ with options %{public}@", &v3, 0x16u);
}

void sub_100004C4C()
{
  sub_100003B70();
  sub_100003B84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100004CC8(os_log_t log)
{
  v1 = 136315138;
  v2 = "handleNotificationEvent";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: event type is not dictionary", &v1, 0xCu);
}

void sub_100004D4C(os_log_t log)
{
  v1 = 136315138;
  v2 = "handleNotificationEvent";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: event kay name is nil", &v1, 0xCu);
}

void sub_100004DD0()
{
  sub_100003B70();
  sub_100003B84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100004F94(void *a1, uint64_t *a2)
{
  v3 = [a1 path];
  if (a2)
  {
    v4 = *a2;
  }

  sub_1000046B8();
  sub_1000046D4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10000504C(void *a1, uint64_t *a2)
{
  v3 = [a1 path];
  if (a2)
  {
    v4 = *a2;
  }

  sub_1000046B8();
  sub_1000046D4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100005104(void *a1)
{
  v6 = [a1 path];
  sub_1000046D4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000051A8(void *a1, uint64_t *a2)
{
  v3 = [a1 path];
  if (a2)
  {
    v4 = *a2;
  }

  sub_1000046B8();
  sub_1000046D4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}
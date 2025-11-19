void sub_1001E370C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.findmydeviced.fetch_spstats", 0, 0, 1u);
}

void sub_1001E3908(id a1)
{
  v1 = dispatch_queue_create("com.apple.icloud.findmydeviced.registerDigestSerialQueue", 0);
  v2 = qword_100314A80;
  qword_100314A80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001E3BF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412546;
    v4 = objc_opt_class();
    v5 = 2048;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) will cancel", &v3, 0x16u);
  }

  [WeakRetained setCancelled:1];
}

void sub_1001E463C(uint64_t a1, void *a2)
{
  v4 = [a2 mutableCopy];
  v3 = +[FMDBluetoothAccessory volatileKeysToExcludeFromRegisterDigest];
  [v4 removeObjectsForKeys:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_1001E46B4(id a1)
{
  v1 = [NSRegularExpression regularExpressionWithPattern:@"authToken.* options:" error:1, 0];
  v2 = qword_100314A88;
  qword_100314A88 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001E4DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  _Block_object_dispose((v25 - 176), 8);
  _Block_object_dispose((v25 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1001E4E58(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 account];
  v4 = [RegisterAction _registerDigestPrefKeyForAccount:v3];

  v5 = [*(a1 + 32) _registrationInformationDigest:byte_100314A98];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (qword_100314A68 && [qword_100314A68 isEqualToData:*(*(*(a1 + 48) + 8) + 40)])
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v32 = 138412802;
      v33 = v10;
      v34 = 2048;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) Not sending register with cause %@ because there is already another register with the same registration information in-progress", &v32, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v13 = qword_100314A70;
    if (!qword_100314A70)
    {
      v14 = [FMPreferencesUtil dataForKey:v4 inDomain:kFMDNotBackedUpPrefDomain];
      v15 = qword_100314A70;
      qword_100314A70 = v14;

      v13 = qword_100314A70;
    }

    v16 = v13;
    v17 = v16;
    if (qword_100314A68 || !v16 || ![v16 isEqualToData:*(*(*(a1 + 48) + 8) + 40)])
    {
      goto LABEL_26;
    }

    if ((byte_100314A98 & 1) == 0)
    {
      v18 = +[FMDDaemon sharedInstance];
      if ([v18 isFirstRunAfterBoot])
      {
        v19 = [*(a1 + 32) _shouldThrottleDeviceRestartRegister];

        if ((v19 & 1) == 0)
        {
          v20 = sub_100002880();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 40);
            v32 = 138543362;
            v33 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reg-info unchanged but forcing register %{public}@", &v32, 0xCu);
          }

LABEL_22:

LABEL_26:
          goto LABEL_27;
        }
      }

      else
      {
      }

      if ((byte_100314A98 & 1) == 0)
      {
        v22 = +[FMDStartupRegisterManager sharedInstance];
        v23 = [v22 shouldForceRegisterOnStartup];

        if (v23)
        {
          v20 = sub_100002880();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(a1 + 40);
            v25 = +[FMDStartupRegisterManager sharedInstance];
            v32 = 138543618;
            v33 = v24;
            v34 = 2114;
            v35 = v25;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reg-info unchanged but forcing register %{public}@ due to %{public}@", &v32, 0x16u);
          }

          goto LABEL_22;
        }
      }
    }

    v26 = sub_100002880();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 40);
      v32 = 138543362;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Reg-info unchanged. Ignoring register %{public}@", &v32, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_26;
  }

LABEL_27:
  if ([*(a1 + 32) cancelled])
  {
    v28 = sub_100002880();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v30 = objc_opt_class();
      v31 = *(a1 + 32);
      v32 = 138412546;
      v33 = v30;
      v34 = 2048;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) cancelled by action manager", &v32, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

id sub_1001E5264(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [*(a1 + 32) account];
  v4 = [(FMDActingRequestDecorator *)v2 registerDeviceContextForAccount:v3];

  [v4 fm_safelyMapKey:@"cause" toObject:*(a1 + 40)];

  return v4;
}

id sub_1001E52F0(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_1001E536C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RegisterAction sharedregisterDigestSerialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E5438;
  v6[3] = &unk_1002D0B70;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_1001E5438(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 digestData];
  v4 = qword_100314A68;
  qword_100314A68 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = *(a1 + 32);
    v11 = 138413058;
    v12 = v7;
    v13 = 2048;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v9;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@(0x%lX)-%@(0x%lX) Set inProgressRegisterDigest to newRegisterDigest", &v11, 0x2Au);
  }
}

void sub_1001E555C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_loadWeakRetained((a1 + 64));
  v6 = v3;
  if (([v6 willRetry] & 1) == 0)
  {
    v7 = +[RegisterAction sharedregisterDigestSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E5B98;
    block[3] = &unk_1002CDD98;
    v49 = v6;
    v50 = WeakRetained;
    v8 = v49;
    v51 = v8;
    dispatch_async(v7, block);

    v9 = [v8 httpResponseError];
    if (v9 || [v8 httpResponseStatus] < 200 || objc_msgSend(v8, "httpResponseStatus") > 399)
    {

LABEL_6:
      v10 = [v8 cancelled];
      v11 = sub_100002880();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v13 = [v8 fm_logID];
          *buf = 138412290;
          v53 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
        }
      }

      else if (v12)
      {
        v14 = [v8 fm_logID];
        v15 = [v8 httpResponseStatus];
        v16 = [v8 httpResponseError];
        *buf = 138412802;
        v53 = v14;
        v54 = 2048;
        v55 = v15;
        v56 = 2112;
        v57 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);
      }

      [v5 registerDidFail];
LABEL_12:

      goto LABEL_13;
    }

    if ([v8 cancelled])
    {
      goto LABEL_6;
    }

    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 fm_logID];
      v19 = [v8 httpResponseStatus];
      *buf = 138412546;
      v53 = v18;
      v54 = 2048;
      v55 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", buf, 0x16u);
    }

    v20 = +[RegisterAction sharedregisterDigestSerialQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1001E5CAC;
    v45[3] = &unk_1002CD478;
    v21 = v8;
    v46 = v21;
    v47 = WeakRetained;
    dispatch_async(v20, v45);

    [v5 registerDidSucceed];
    byte_100314A98 = 1;
    if ([v21 httpResponseStatus] == 200)
    {
      v22 = +[FMDStartupRegisterManager sharedInstance];
      [v22 eventDidOccur:2];

      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1001E5DEC;
      v43[3] = &unk_1002CD4C8;
      v44 = v5;
      dispatch_async(&_dispatch_main_q, v43);
      v23 = v44;
    }

    else
    {
      if ([v21 httpResponseStatus] != 204)
      {
LABEL_22:
        v24 = [v21 httpResponseHeaders];
        v25 = [v24 objectForKey:@"X-Apple-Register-Interval"];

        v42 = v25;
        if (v25)
        {
          v26 = +[NSDate date];
          v27 = [v26 fm_epoch];
          v28 = [v25 longLongValue];

          v29 = &v27[v28];
          v25 = v42;
          v30 = [NSDate fm_dateFromEpoch:v29];
          v31 = +[ActionManager sharedManager];
          [v31 setNextRegisterDate:v30];
        }

        v32 = [v21 httpResponseHeaders];
        v33 = [v32 objectForKey:@"X-Apple-DeviceRestart-Register-Interval"];

        if (v33)
        {
          v34 = [*(a1 + 32) provider];
          v35 = [v34 account];
          v36 = [RegisterAction _deviceRestartRegisterIntervalConfigPrefKeyForAccount:v35];

          v25 = v42;
          [FMPreferencesUtil setString:v33 forKey:v36 inDomain:kFMDNotBackedUpPrefDomain];
        }

        if ([*(a1 + 40) isEqualToString:@"DeviceRestart"])
        {
          v37 = [*(a1 + 32) provider];
          v38 = [v37 account];
          v39 = [RegisterAction _lastDeviceRestartRegisterTimePrefKeyForAccount:v38];

          v40 = +[NSDate date];
          [FMPreferencesUtil setDate:v40 forKey:v39 inDomain:kFMDNotBackedUpPrefDomain];

          v25 = v42;
        }

        v41 = *(a1 + 48);
        if (v41)
        {
          (*(v41 + 16))();
        }

        goto LABEL_12;
      }

      v23 = +[FMDStartupRegisterManager sharedInstance];
      [v23 eventDidOccur:3];
    }

    goto LABEL_22;
  }

LABEL_13:
}

void sub_1001E5B98(uint64_t a1)
{
  v2 = qword_100314A68;
  v3 = [*(a1 + 32) digestData];

  if (v2 == v3)
  {
    v4 = qword_100314A68;
    qword_100314A68 = 0;

    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = objc_opt_class();
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v10 = objc_opt_class();
      v11 = *(a1 + 48);
      v12 = 138413058;
      v13 = v7;
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@(0x%lX)-%@(0x%lX) Set inProgressRegisterDigest to nil", &v12, 0x2Au);
    }
  }
}

void sub_1001E5CAC(uint64_t a1)
{
  v2 = [*(a1 + 32) digestData];
  v3 = qword_100314A70;
  qword_100314A70 = v2;

  v4 = [*(a1 + 32) digestData];
  v5 = [*(a1 + 32) digestKey];
  [FMPreferencesUtil setData:v4 forKey:v5 inDomain:kFMDNotBackedUpPrefDomain];

  [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v10 = 138412546;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) Save newRegisterDigest to pref", &v10, 0x16u);
  }
}

void sub_1001E5DEC(uint64_t a1)
{
  v2 = [FMDActingRequestDecorator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E5F80;
  v10[3] = &unk_1002CD580;
  v11 = *(a1 + 32);
  v3 = [(FMDActingRequestDecorator *)v2 initWithDeviceContextGenerator:&stru_1002D14D0 deviceInfoGenerator:v10 serverContextGenerator:0 requestHeaderGenerator:0];
  v4 = [QCAction alloc];
  v5 = [*(a1 + 32) account];
  v6 = [*(a1 + 32) serverInteractionController];
  v7 = [(QCAction *)v4 initWithAccount:v5 shutdownActivityPending:0 serverInteractionController:v6];

  [(QCAction *)v7 setRequestDecorator:v3];
  v8 = +[ActionManager sharedManager];
  v9 = [v8 enqueueAction:v7];
}

NSDictionary *__cdecl sub_1001E5F30(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_1001E5F80(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_1001E6500(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) authId];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delete Register Digest for account %@", &v7, 0xCu);
  }

  v4 = [RegisterAction _registerDigestPrefKeyForAccount:*(a1 + 32)];
  [FMPreferencesUtil removeKey:v4 inDomain:kFMDNotBackedUpPrefDomain];
  v5 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:*(a1 + 32)];
  [FMPreferencesUtil removeKey:v5 inDomain:kFMDNotBackedUpPrefDomain];
  v6 = qword_100314A70;
  qword_100314A70 = 0;
}

void sub_1001E9AE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tasksWithCompletion:&stru_1002D1538];
}

void sub_1001E9B2C(id a1, NSArray *a2)
{
  v2 = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6) resume];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1001E9D38(uint64_t a1)
{
  v2 = [NSMutableURLRequest requestWithURL:*(a1 + 32)];
  [v2 setHTTPMethod:@"GET"];
  [v2 setAllHTTPHeaderFields:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [v2 setHTTPBody:?];
  }

  v3 = [*(a1 + 56) session];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E9E3C;
  v5[3] = &unk_1002D1560;
  v6 = *(a1 + 64);
  v4 = [v3 downloadTaskWithRequest:v2 completionHandler:v5];

  [v4 resume];
}

void sub_1001E9E3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v10 = [v12 statusCode];
  v11 = [v12 allHeaderFields];
  (*(v7 + 16))(v7, v10, v11, 0, v9, v8);
}

void sub_1001EA004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tasksWithCompletion:&stru_1002D15A8];
}

void sub_1001EA04C(id a1, NSArray *a2)
{
  v2 = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6) cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1001EA1F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001EABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EAC60(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022FF98();
    }
  }

  else
  {
    v8 = [[NSString alloc] initWithData:v6 encoding:4];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    v9 = sub_10017DFC4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Watch Migration: decrypted token %@", &v11, 0xCu);
    }
  }

  [*(a1 + 40) signal];
}

void sub_1001EB078(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore failed to encrypt token %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = [a2 base64EncodedStringWithOptions:0];
    v10 = +[NSMutableDictionary dictionary];
    [v10 fm_safeSetObject:v9 forKey:@"encryptedToken"];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [NSDate dateWithTimeIntervalSinceNow:691200.0];
    }

    v13 = v12;
    v14 = +[FMSystemInfo sharedInstance];
    v15 = [v14 isInternalBuild];

    if (v15)
    {
      v16 = [FMPreferencesUtil integerForKey:@"UnregisterTokenExpiry" inDomain:kFMDNotBackedUpPrefDomain];
      if (v16 >= 1)
      {
        v17 = [NSDate dateWithTimeIntervalSinceNow:v16];

        v13 = v17;
      }
    }

    v33 = v13;
    [v10 fm_safeSetObject:v13 forKey:@"expiryDate"];
    v18 = +[FMDProtectedContextManager sharedManager];
    v19 = [v18 saveContext:v10 forContextKey:*(a1 + 40) dataProtectionClass:1];

    v20 = [[FMDCipherKeychainItemAdaptor alloc] initWithCipher:v7];
    v21 = [*(a1 + 48) bundleIdentifier];
    v22 = +[FMKeychainManager sharedInstance];
    v23 = [(FMDCipherKeychainItemAdaptor *)v20 rawData];
    v24 = [v22 setData:v23 forAccount:*(a1 + 56) service:v21 synchronizable:0 dataProtectionClass:1 migratable:0];

    if (v24)
    {
      v25 = sub_10017DFC4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 64);
        *buf = 138412290;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Watch Migration: Saved token and cipher for %@", buf, 0xCu);
      }
    }

    else
    {
      v25 = sub_100002880();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100230000(a1, v25, v27, v28, v29, v30, v31, v32);
      }
    }
  }
}

void sub_1001EB5EC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [v5 accessoryIdentifier];
  v8 = [v6 tokenKeyForIdentifier:v7];
  [v3 addObject:v8];

  v9 = a1[5];
  v10 = a1[6];
  v11 = objc_opt_class();
  v13 = [v5 accessoryIdentifier];

  v12 = [v11 keychainLookupKeyForIdentifier:v13];
  [v10 addObject:v12];
}

void sub_1001EB6CC(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"AccessoryUnregisterToken"])
  {
    v4 = +[FMDProtectedContextManager sharedManager];
    v17 = 0;
    v5 = [v4 contextForKey:v3 contextUUID:0 error:&v17];
    v6 = v17;

    if (v6 || !v5)
    {
      goto LABEL_18;
    }

    v7 = [a1[4] containsObject:v3];
    if ((v7 & 1) == 0)
    {
      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore token Key no longer valid.", buf, 2u);
      }
    }

    v9 = a1[5];
    v16 = 0;
    v10 = [v9 isTokenDictionaryValid:v5 error:&v16];
    v11 = v16;
    if (v10)
    {
      if (v7)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore token expired %@", buf, 0xCu);
      }
    }

    [a1[5] removeUnregisterTokenForKey:v3];
    v13 = [a1[4] indexOfObject:v3];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v13;
      if (v13 < [a1[6] count])
      {
        v15 = [a1[6] objectAtIndex:v14];
        [a1[5] removeKeychainItemForKey:v15];
      }
    }

    goto LABEL_17;
  }

LABEL_19:
}

void sub_1001EB8DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"AccessoryUnregisterToken"] && (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) == 0)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore removing orphaned keychain item %@.", &v5, 0xCu);
    }

    [*(a1 + 40) removeKeychainItemForKey:v3];
  }
}

void sub_1001EBAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"AccessoryUnregisterToken"])
  {
    [*(a1 + 32) removeUnregisterTokenForKey:v3];
  }
}

void sub_1001EBB14(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"AccessoryUnregisterToken"])
  {
    [*(a1 + 32) removeKeychainItemForKey:v3];
  }
}

void sub_1001EC9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001ECA04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"FMDSupportedAccessoryRegistryLocalVersionKey"];
    v5 = [v4 integerValue];

    v6 = [WeakRetained supportedAccessories];
    v7 = [v6 objectForKey:@"FMDSupportedAccessoryRegistryLocalVersionKey"];
    v8 = [v7 integerValue];

    v9 = [WeakRetained supportedAccessories];
    v10 = [v9 objectForKey:@"FMDSupportedAccessoryRegistryVersionKey"];
    v11 = [v10 integerValue];

    if (v11 <= 0 && v5 > v8)
    {
      [WeakRetained setSupportedAccessories:*(a1 + 32)];
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [WeakRetained supportedAccessories];
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDSupportedAccessoryRegistry supported accessories updated to: %@", buf, 0xCu);
      }

      v14 = [WeakRetained dataArchiver];
      v15 = [WeakRetained supportedAccessories];
      v16 = [v14 saveDictionary:v15];

      if (v16)
      {
        v17 = sub_100002880();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10022A040();
        }
      }

      v18 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1001ECC8C;
        v19[3] = &unk_1002CD478;
        v20 = *(a1 + 40);
        v21 = WeakRetained;
        dispatch_async(&_dispatch_main_q, v19);
      }
    }
  }
}

void sub_1001ED0E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v28 = a1;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"supportedAccessories"];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [FMDSupportedAccessory alloc];
        v12 = [WeakRetained assetRegistry];
        v13 = [(FMDSupportedAccessory *)v11 initWithDictionary:v10 assetRegistry:v12];

        v14 = [(FMDSupportedAccessory *)v13 accessoryIdentifier];
        [v4 fm_safeSetObject:v13 forKey:v14];

        v15 = sub_100002880();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(FMDSupportedAccessory *)v13 vendorID];
          v17 = [(FMDSupportedAccessory *)v13 productID];
          *buf = 67109376;
          v38 = v16;
          v39 = 1024;
          v40 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "New supported accessory added %hu, %u", buf, 0xEu);
        }

        v18 = [(FMDSupportedAccessory *)v13 assets];
        [v5 addObjectsFromArray:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v7);
  }

  v19 = [WeakRetained assetRegistry];
  [v19 removeUntrackedAssets:v5];

  v20 = [WeakRetained assetRegistry];
  [v20 downloadAssets:v5];

  v21 = [*(v28 + 32) objectForKeyedSubscript:@"accConfigVersion"];
  [v4 fm_safelySetObject:v21 forKey:@"FMDSupportedAccessoryRegistryVersionKey"];
  [WeakRetained setSupportedAccessories:v4];
  v22 = [WeakRetained dataArchiver];
  v23 = [WeakRetained supportedAccessories];
  v24 = [v22 saveDictionary:v23];

  if (v24)
  {
    v25 = sub_100002880();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }

  v26 = *(v28 + 40);
  if (v26)
  {
    (*(v26 + 16))();
  }

  v27 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001ED4C4;
    block[3] = &unk_1002CD478;
    v31 = v27;
    v32 = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1001ED598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained supportedAccessories];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:@"FMDSupportedAccessoryRegistryVersionKey"];
  [WeakRetained setSupportedAccessories:v3];
  v4 = [WeakRetained dataArchiver];
  v5 = [WeakRetained supportedAccessories];
  v6 = [v4 saveDictionary:v5];

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

void sub_1001EDEB0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() defaultStorageLocation];
  v8 = 0;
  [v2 removeItemAtURL:v4 error:&v8];
  v5 = v8;

  if (v5 && ([v5 fm_isFileNotFoundError] & 1) == 0)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002301A4(v5, v6);
    }
  }

  [*(a1 + 32) setSupportedAccessories:&__NSDictionary0__struct];
  v7 = [*(a1 + 32) assetRegistry];
  [v7 clearAssetRegistry];
}

void sub_1001EE19C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[NSFileManager defaultManager];
  v4 = [v7 fileURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_1001EE798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EE7CC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v5 = [*(a1 + 40) supportedAccessories];
    v2 = [v5 objectForKeyedSubscript:*(a1 + 32)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_1001EE9B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained defaultAccessoriesEnabled])
  {
    v3 = [WeakRetained defaultSupportedAccessoriesIfEnabled:{objc_msgSend(*(a1 + 32), "defaultAccessoriesEnabled")}];
    [WeakRetained setSupportedAccessories:v3];
  }

  else
  {
    v4 = [WeakRetained dataArchiver];
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    v10 = 0;
    v7 = [v4 readDictionaryAndClasses:v6 error:&v10];
    v3 = v10;

    if (([v3 fm_isFileNotFoundError] & 1) == 0 && (!v7 || v3))
    {

      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100230240();
      }

      v9 = +[FMDEventLoggerGeneral sharedInstance];
      [v9 sendError:v3 forEventName:@"FMDSupportedAccessoryRegistryFailedReadEventName"];

      v7 = &__NSDictionary0__struct;
    }

    [WeakRetained setSupportedAccessories:v7];
  }
}

void sub_1001EED48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:*(a1 + 32)];
}

void sub_1001EEEC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:*(a1 + 32)];
}

uint64_t FMDNanoSupportProtoSignedDataV4ReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_44;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_44;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadData();
            v15 = 16;
            goto LABEL_44;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadData();
            v15 = 8;
            goto LABEL_44;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 56;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 32;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_50;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 64) = v22;
          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 48;
LABEL_44:
          v23 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_45;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_45:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoNeedSignatureV4ReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___FMDNanoSupportProtoNeedSignatureV4__requestJsonData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___FMDNanoSupportProtoNeedSignatureV4__activationLockRequestUUIDString;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoSignedDataV5ReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v27 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_56;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_56:
            *(a1 + 88) = v22;
            goto LABEL_51;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadData();
            v15 = 72;
            goto LABEL_50;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = PBReaderReadData();
              v15 = 80;
              goto LABEL_50;
            case 4:
              v14 = PBReaderReadData();
              v15 = 56;
              goto LABEL_50;
            case 5:
              v14 = PBReaderReadData();
              v15 = 40;
              goto LABEL_50;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_50;
          case 0xA:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_50;
          case 0xB:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = PBReaderReadData();
            v15 = 24;
            goto LABEL_50;
          case 7:
            v14 = PBReaderReadData();
            v15 = 8;
            goto LABEL_50;
          case 8:
            v14 = PBReaderReadData();
            v15 = 32;
LABEL_50:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_51;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_51:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoNeedSignatureV5ReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___FMDNanoSupportProtoNeedSignatureV5__requestJsonData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___FMDNanoSupportProtoNeedSignatureV5__activationLockRequestUUIDString;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoNeedLostModeExitReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoLostModeExitAuthReadFrom(uint64_t a1, void *a2)
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
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
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

uint64_t FMDNanoSupportProtoNeedSignatureReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1002D16B8[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoNeedSignatureV3ReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___FMDNanoSupportProtoNeedSignatureV3__requestJsonData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___FMDNanoSupportProtoNeedSignatureV3__activationLockRequestUUIDString;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoSignedDataReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_44;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_44;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_44;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_44;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_50;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 64) = v22;
          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 40;
LABEL_44:
          v23 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_45;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_45:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMDNanoSupportProtoSignedDataV3ReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              LOBYTE(v24) = 0;
              goto LABEL_42;
            }
          }

          v24 = (v20 != 0) & ~[a2 hasError];
LABEL_42:
          *(a1 + 40) = v24;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 32;
            goto LABEL_27;
          case 4:
            v14 = PBReaderReadData();
            v15 = 8;
            goto LABEL_27;
          case 5:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_27:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001F5690(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001F56B4, 0, 0);
}

uint64_t sub_1001F56B4()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session);
  v2 = async function pointer to Session.processLocationPayload(_:)[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1001F575C;
  v5 = v0[2];
  v4 = v0[3];

  return Session.processLocationPayload(_:)(v5, v4);
}

uint64_t sub_1001F575C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F59D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_1001F5A7C, 0, 0);
}

uint64_t sub_1001F5A7C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session);
  v2 = async function pointer to Session.processLocationPayload(_:)[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1001F5B24;
  v5 = v0[4];
  v4 = v0[5];

  return Session.processLocationPayload(_:)(v5, v4);
}

uint64_t sub_1001F5B24()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001F5C98, 0, 0);
  }

  else
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    v6 = *(v3 + 24);

    sub_1001F65FC(v5, v4);
    (*(v6 + 16))(v6, 0);
    _Block_release(*(v3 + 24));
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1001F5C98()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  sub_1001F65FC(v3, v2);
  v5 = _convertErrorToNSError(_:)();

  (*(v4 + 16))(v4, v5);

  _Block_release(*(v0 + 24));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001F5D48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001F5D6C, 0, 0);
}

uint64_t sub_1001F5D6C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session);
  v2 = async function pointer to Session.processLocationCommandPayload(_:)[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1001F7BA0;
  v5 = v0[2];
  v4 = v0[3];

  return Session.processLocationCommandPayload(_:)(v5, v4);
}

uint64_t sub_1001F5F9C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_1001F6040, 0, 0);
}

uint64_t sub_1001F6040()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session);
  v2 = async function pointer to Session.processLocationCommandPayload(_:)[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1001F60E8;
  v5 = v0[4];
  v4 = v0[5];

  return Session.processLocationCommandPayload(_:)(v5, v4);
}

uint64_t sub_1001F60E8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001F7B9C, 0, 0);
  }

  else
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    v6 = *(v3 + 24);

    sub_1001F65FC(v5, v4);
    (*(v6 + 16))(v6, 0);
    _Block_release(*(v3 + 24));
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1001F625C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001F627C, 0, 0);
}

uint64_t sub_1001F627C()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session);
  v3 = sub_1001F6524();
  v0[4] = v3;
  v0[5] = v4;
  v5 = async function pointer to Session.publishLocation(_:)[1];
  v6 = v3;
  v7 = v4;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1001F6384;

  return Session.publishLocation(_:)(v6, v7);
}

uint64_t sub_1001F6384()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001F64C0, 0, 0);
  }

  else
  {
    sub_1001F65FC(v3[4], v3[5]);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1001F64C0()
{
  sub_1001F65FC(v0[4], v0[5]);
  v1 = v0[7];
  v2 = v0[1];

  return v2();
}

void *sub_1001F6524()
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1001F65FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001F67D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1001F6864, 0, 0);
}

uint64_t sub_1001F6864()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session);
  v3 = sub_1001F6524();
  v0[5] = v3;
  v0[6] = v4;
  v5 = async function pointer to Session.publishLocation(_:)[1];
  v6 = v3;
  v7 = v4;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1001F69AC;

  return Session.publishLocation(_:)(v6, v7);
}

uint64_t sub_1001F69AC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001F6B20, 0, 0);
  }

  else
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
    v6 = *(v3 + 16);
    sub_1001F65FC(*(v3 + 40), *(v3 + 48));

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v3 + 32));
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1001F6B20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  sub_1001F65FC(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = _convertErrorToNSError(_:)();

  (*(v5 + 16))(v5, v6);

  _Block_release(*(v0 + 32));
  v7 = *(v0 + 8);

  return v7();
}

id sub_1001F6D28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F6D6C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1001F6DB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F6E68;

  return sub_1001F67D8(v2, v3, v4);
}

uint64_t sub_1001F6E68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F6F5C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1001F7BA4;

  return v7();
}

uint64_t sub_1001F7044()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F7BA4;

  return sub_1001F6F5C(v2, v3, v5);
}

uint64_t sub_1001F7104(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1001F6E68;

  return v8();
}

uint64_t sub_1001F71EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F7BA4;

  return sub_1001F7104(a1, v4, v5, v7);
}

uint64_t sub_1001F72B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1001F6D6C(&qword_100313A50, &qword_1002588F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1001F7574(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1001F75E4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1001F75E4(a3);

    return v22;
  }

LABEL_8:
  sub_1001F75E4(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F7574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F6D6C(&qword_100313A50, &qword_1002588F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F75E4(uint64_t a1)
{
  v2 = sub_1001F6D6C(&qword_100313A50, &qword_1002588F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F764C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F7744;

  return v7(a1);
}

uint64_t sub_1001F7744()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F783C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001F7BA4;

  return sub_1001F764C(a1, v5);
}

uint64_t sub_1001F78F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001F6E68;

  return sub_1001F764C(a1, v5);
}

uint64_t sub_1001F79AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F7BA4;

  return sub_1001F5F9C(v2, v3, v4);
}

uint64_t sub_1001F7A60()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F7AA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F7BA4;

  return sub_1001F59D8(v2, v3, v4);
}

uint64_t sub_1001F7B5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1001F7BA8()
{
  v0 = *(&off_1002D7710 + ((-3 * (dword_100313A98 ^ 0x8A ^ dword_100313A70)) ^ byte_100259400[byte_1002590E0[(-3 * (dword_100313A98 ^ 0x8A ^ dword_100313A70))] ^ 7]) + 16);
  v1 = *(v0 - 4);
  v2 = *(&off_1002D7710 + (byte_100258DE8[(byte_100258ADC[(-3 * (v1 ^ dword_100313A70 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_100313A70 ^ 0x8A))) - 58);
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 - dword_100313A98) ^ 0x8A)) ^ byte_1002589D0[byte_100259550[(-3 * ((dword_100313A70 - dword_100313A98) ^ 0x8A))] ^ 0xE2]) - 111) - 12;
  v7 = *&v6[8 * ((60 * ((*&v6[8 * (byte_1002589D8[(byte_100259550[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 21576])(24, 0x1010040E2407E0ALL) != 0)) | 0x682)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001F7D94(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_1001F7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 8) = 1840074139;
  v8 = *(v5 + 72);
  return (*(v6 + 8 * ((2 * (v4 == 0)) | 0x915)))(a1, 737898976, a3, a4);
}

uint64_t sub_1001F7EE4()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_1001F7F78()
{
  v8 = v3 ^ (v6 + 851);
  v9 = *v4;
  *(*v4 + v2) = 0;
  *(v9 + (v8 - 1289608258 + v1)) = 0;
  v10 = v1 - 2027506636;
  *(v9 + (v10 + 3)) = 1;
  *(v9 + (v10 + 2)) = 0;
  *v0 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001F84A4()
{
  v6 = *(v3 + 8) - 1523222835 + v4 + (v0 ^ 0x6B0) - 2015;
  v7 = v2 > 0x1918BB1C;
  v8 = v1 + 1846409495 > v6;
  if (v7 != v6 < 0xE6E744DF)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1289 * v8) ^ v0)))();
}

uint64_t sub_1001F892C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))();
}

uint64_t sub_1001F8974()
{
  v5 = *(v3 + 8) - 780318865;
  v6 = v1 > ((v0 - 144781323) & 0xDCA5BEFF) - 321852806;
  v7 = v2 - 967755454 > v5;
  if (v5 < 0x3F2A850A == v6)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((v6 * (v0 ^ 0x67D)) ^ v0)))();
}

uint64_t sub_1001F8A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a6 + 16) = v10;
  v15 = *(v11 + 8);
  return (*(v13 + 8 * (((((v11 == 0) ^ v9 ^ 0x32 ^ (v12 - 54)) & 1) * ((v9 ^ 0x832) - 2401)) ^ v9 ^ 0x832)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1001F8E00@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_1001F8E5C()
{
  v6 = *(v3 + 8) - 1439124990;
  v7 = v1 > 0xE81A105A;
  v8 = v2 - 1626561575 > v6;
  if (v7 == v6 < 0x17E5EF9D)
  {
    v7 = v8;
  }

  return (*(v5 + 8 * ((v7 * (((v0 - 1811644490) | 0x40001037) - v4 + 17)) | v0)))();
}

uint64_t sub_1001F8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 48) = v6;
  v11 = *(v8 + 8);
  return (*(v9 + 8 * (((a2 + v7 - 737898377 + (v7 | 0x804) - 2567) * (v8 != 0)) ^ (v7 + 1812))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1001F8FFC@<X0>(int a1@<W8>)
{
  v6 = ((2 * (v2 + 2 * a1)) & 0xFBDFFF3C) + ((v2 + 2 * a1) ^ 0xFDEFFF9F);
  if (v1 > 0x6F87E38C != v6 - 1836573492 < 0x90781C6B)
  {
    v7 = v6 - 1836573492 < 0x90781C6B;
  }

  else
  {
    v7 = v6 - 1836573492 > v3;
  }

  return (*(v5 + 8 * (v4 ^ (2045 * v7))))();
}

uint64_t sub_1001F939C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v34 ^ 0xEFC)))();
  v36 = *v33;
  v37 = (*(v33 + 3) - 2027506636 + v34 + 1434 - 2818);
  v38 = *(&off_1002D7710 + v34 - 1372) - 4;
  (*(v35 + 8 * (v34 ^ 0xECB)))();
  v47 = (*(v35 + 8 * (v34 ^ 0xEF5)))(a12, 0);
  return (*(v35 + 8 * ((19 * (((v34 + 1) ^ (v47 == 0)) & 1)) ^ v34)))(v47, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1001F94C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, *(&off_1002D7710 + v35 - 2212) - 12);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == *(&off_1002D7710 + v35 - 2202) - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1001F95BC()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_1001F966C()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_1001F9704()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_1001F97BC()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_1001F9834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1001FA1A0@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_1001FA1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(**(&off_1002D7710 + (v21 ^ 0x478)), *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_1001FA32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (*(v25 + 8 * (v22 + 1803)))(*v23, *v20, (*(v20 + 12) - 2027506636), &a18, &a20);
  v35 = (v27 ^ ((v22 ^ (v24 + 934)) + 1668486274)) - 556171400 + ((2 * v27) & 0x6EEF49F2);
  if (v35 == 374416497)
  {
    v36 = (*(v25 + 8 * ((v21 - 10) ^ 0xD4049077)))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v25 + 8 * ((37 * v36) ^ 0x78C)))();
  }

  else if (v35 == 642851956)
  {
    return (*(v25 + 4792))(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v38 = 946232179 * ((v26 - 108) ^ 0x907B3CCF);
    *(v26 - 104) = v38 ^ 0x638;
    *(v26 - 100) = v35 - v38 + 962804850;
    v39 = (*(v25 + 8 * ((v21 - 29) ^ 0xD4049077)))(v26 - 108);
    return (*(v25 + 8 * ((3280 * (*(v26 - 108) != 1181123576)) ^ 0x4AD)))(v39);
  }
}

uint64_t sub_1001FA944@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

uint64_t sub_1001FA998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v55 = *(a6 + 144);
  v56 = (*(v53 + 8 * (v52 + 737901331)))(*(v55 - 0x1729FABDC6538B0));
  *(v55 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  v57 = *(v54 - 140);
  return sub_1001FA9FC(v56, 737898976);
}

uint64_t sub_1001FAC30(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_1001FAD28(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1001FADF8(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_1001FAE44(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_1001FAE78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  v25 = *(v24 - 124);
  JUMPOUT(0x1001FB00CLL);
}

uint64_t sub_1001FB224()
{
  v6 = *(v4 - 0x1729FABDC6538B0);
  v7 = ((2 * v1) & 0xCFFFF5F6 ^ 0xC4FE32EF ^ (v3 + 191)) + (v1 ^ 0xD80E00D) - 1744829179;
  v8 = (*(v6 + v7) << 24) | (*(v6 + v7 + 1) << 16) | (*(v6 + v7 + 2) << 8) | *(v6 + v7 + 3);
  *(v4 + v0) = v2;
  return (*(v5 + 8 * (((((v4 == 0x1729FABDC6538B0) ^ (v3 + 69)) & 1) * (v3 - 1570)) ^ (v3 + 191))))();
}

uint64_t sub_1001FB338()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_1001FB44C(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x1001FB478);
}

void sub_1001FB4C8()
{
  v0 = *(&off_1002D7710 + ((-3 * (qword_100313A68 ^ 0x8A ^ dword_100313A70)) ^ byte_1002589D0[byte_100259550[(-3 * (qword_100313A68 ^ 0x8A ^ dword_100313A70))] ^ 0x8E]) - 41);
  v1 = 1543604477 * ((*v0 + qword_100313A68) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_100313A68 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001FB5E4()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_1001FB630()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_1001FB710@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_1001FB768@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void sub_1001FB79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001FB858(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_100314CE0 == 0)) ^ 0x215u)))();
}

uint64_t sub_1001FB8F4()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_1001FB9FC@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001FBAF0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

uint64_t sub_1001FBBA8()
{
  (*(v3 + 8 * ((v2 - v0 - 2361) ^ (v5 - 1158))))(v1);
  v7 = *(v6 - 96);
  return v4;
}

void sub_1002007A0()
{
  v0 = *(&off_1002D7710 + ((-3 * (dword_100313A78 ^ 0x8A ^ dword_100313A70)) ^ byte_100258EE0[byte_100258BD0[(-3 * (dword_100313A78 ^ 0x8A ^ dword_100313A70))] ^ 0xE6]) - 36);
  v1 = -3 * (*v0 ^ dword_100313A70 ^ 0x8A);
  v2 = *(&off_1002D7710 + (byte_100258FE8[(byte_100258CD8[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20);
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 + dword_100313A78) ^ 0x8A)) ^ byte_100259650[byte_100259300[(-3 * ((dword_100313A70 + dword_100313A78) ^ 0x8A))] ^ 0xEA]) - 199) - 12;
  v7 = *&v6[8 * ((225 * ((*&v6[8 * (byte_100259654[(byte_10025930C[v2 - 12] ^ 0xEA) - 4] ^ v2) + 21912])(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10020098C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_100200ACC()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

uint64_t sub_100200B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 + v11;
  v17 = *v12;
  *(*v12 + v10) = 0;
  v18 = v16 - 687;
  *(v17 + v9 + (v18 ^ 0x50750E82u)) = 0;
  *(v17 + (v9 - 1862975966)) = 1;
  *(v17 + (v9 - 1862975967)) = 0;
  *v8 += 4;
  return (*(v13 + 8 * (((v14 + v18 == 2954) * ((v18 - v15 + 1842) ^ 0xF32)) | (v18 + a8))))(a1, a2, a3, a4);
}

uint64_t sub_100201078()
{
  v5 = *(v3 + 8) + 1570186821;
  v6 = v1 > 0x6BCA8EAD;
  v7 = v6 ^ (v5 < 0x9435714E);
  v8 = ((v0 - 204706424) & 0xCCB3BEFE ^ 0xE5AA9FD3) + v2 > v5;
  if (v7)
  {
    v8 = v6;
  }

  return (*(v4 + 8 * ((58 * v8) ^ v0)))();
}

uint64_t sub_100201234@<X0>(int a1@<W8>)
{
  v6 = ((2 * ((a1 << (v4 - 114)) + v2)) & 0x6FFDD6F0) + (v4 ^ 0xB7FEEF0A ^ ((a1 << (v4 - 114)) + v2));
  if (v1 > 0x26199F4 != v6 + 1168079502 < 0xFD9E6607)
  {
    v7 = v6 + 1168079502 < 0xFD9E6607;
  }

  else
  {
    v7 = v6 + 1168079502 > v3;
  }

  return (*(v5 + 8 * ((247 * !v7) ^ v4)))();
}

uint64_t sub_100201350@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1002013DC()
{
  v3 = *v0;
  v4 = (v2 + *(v0 + 2) + v1 + 2792 - 2901);
  JUMPOUT(0x1002013F4);
}

uint64_t sub_100201420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

uint64_t sub_100201494@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  return sub_1002014DC();
}

uint64_t sub_1002015D8()
{
  v6 = ((v0 + 189) ^ (v5 + 379) ^ 0x7989D80) + *(v3 + 8);
  v7 = v1 > 0x24907D0;
  v8 = v2 - 1901316530 > v6;
  if (v7 == v6 < 0xFDB6F82B)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((28 * !v7) ^ v0)))();
}

uint64_t sub_100201658@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
{
  v7 = *v3;
  v8 = *a2 + v2;
  *(*v3 + v8 + 3) = 1;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8) = 0;
  *(v7 + v8 + 2) = 0;
  *a2 += 4;
  return (*(v5 + 8 * ((((v6 + v4 - 1412033483) & 0x5429E8E6) + 423) ^ (v4 + a1))))();
}

uint64_t sub_100201B18()
{
  v5 = *(v3 + 8) + 290418297;
  v6 = v1 > ((v0 - 626445980) & 0xE5D6FAA6 ^ 0x789276DB);
  v7 = v2 - 656214107 > v5;
  if (v6 == v5 < ((v0 + 565057358) & 0xDE51E6FE) + 1206761118)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((4007 * v6) ^ v0)))();
}

uint64_t sub_100201FC4@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_10020209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = (v37 - 160 + v34);
  *v38 = *(v35 + 12);
  v38[1] = 1862975980;
  v38[2] = 1862975973;
  return (*(v36 + 8 * (((((v38 == 0) ^ (v33 - 120)) & 1) * ((v33 - 577) ^ 0x176)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_10020213C()
{
  v6 = *(v3 + 8) - 874318352;
  v7 = v2 > 0xFD7EBEF7;
  v8 = v0 - 1820950745 > v6;
  if (v7 != v6 < (((v1 ^ 0xC33) - 2810) ^ (v5 + 2) ^ 0xC201705B))
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((77 * ((((v1 ^ 0x33) - 1) ^ v8) & 1)) | v1 ^ 0xC33)))();
}

uint64_t sub_1002021CC@<X0>(int *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34)
{
  v37 = (v36 + v34 - 630) | 0x241;
  v38 = *v35;
  v39 = *a1;
  v40 = *a1 - 1862975969;
  *(*v35 + v40) = 0;
  *(v38 + v40 + 1) = 0;
  *(v38 + v39 + (v37 ^ 0x90F53574)) = 0;
  *(v38 + v40 + 3) = 11;
  *a1 += 4;
  return sub_100203BFC(*v35 + (*a34 - 1862975969));
}

uint64_t sub_100202338@<X0>(int a1@<W8>)
{
  v6 = (((v4 | 0x2A2) + 1836946254) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xB6BECB1B);
  if (v1 > 0x44054D84 != v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168)
  {
    v7 = v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168;
  }

  else
  {
    v7 = v6 + 87811921 > v3;
  }

  return (*(v5 + 8 * ((2032 * v7) ^ v4)))();
}

void sub_1002024CC()
{
  v3 = *v0;
  v4 = (*(v0 + 2) + v2) - 0x75332ED76621023DLL - (((v1 + 2794) ^ 0x133BDF0D3) & (2 * (*(v0 + 2) + v2)));
  JUMPOUT(0x100202510);
}

uint64_t sub_100202524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_100202718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v41 + 8 * (v42 + 306)))();
  v43 = *v39;
  v44 = (*(v39 + 3) - 1862975969);
  v45 = *(v40 + 8 * (v42 - 2646)) - 4;
  (*(v41 + 8 * (v42 ^ 0x1C1)))();
  v54 = (*(v41 + 8 * (v42 + 315)))(*(v40 + 8 * (v42 - 2649)), 0);
  return (*(v41 + 8 * (((v54 == 0) * ((((v42 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v42)))(v54, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_100202828(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_100202904()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_1002029C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_100202A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_100202B24()
{
  v5 = v1 - 596;
  v6 = (v1 - 385) | 8;
  v7 = v3;
  v8 = v2;
  v9 = v0;
  v10 = v1;
  (*(v4 + 8 * (v1 ^ 0x9F5)))(v7, v8);
  v11 = (*(v4 + 8 * (v10 ^ 0x9CD)))() == v9;
  return (*(v4 + 8 * (((((v5 ^ v11) & 1) == 0) * (v6 ^ 0x3A)) ^ v10)))();
}

uint64_t sub_100202BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v19 = (v14 + 63928535) & 0xFC3089EF;
  *(v18 - 256) = v15;
  v20 = (*(v17 + 8 * (v19 ^ 0x2CD)))(v15, v16, va);
  *(v18 - 248) = v20;
  return (*(v17 + 8 * (((v20 == 0) * (((v19 - 1939) ^ 0xFFFFF92F) + v19 - 599)) ^ v19)))(v20, v21, v22, v23, v24, v25, v26, v27, a1, a2, a3);
}

uint64_t sub_100202CA8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_100202D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_10020323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  *(v49 - 0x60E31FD2FE548731) = 0;
  *(v49 - 0x60E31FD2FE548729) = 495030071;
  *(v49 - 0x60E31FD2FE548725) = -1179748465;
  v51 = (*(v50 + 8 * (v48 + 2621)))(v49 - 0x60E31FD2FE548731);
  return sub_100203334(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1002032C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  return sub_100203334(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_100203334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  (*(v49 + 8 * (v48 + 1053)))(a47);
  (*(v49 + 8 * (v48 + 1053)))(a48);
  return (*(v49 + 8 * (((a46 == 0) * ((((v48 - 1839001745) & 0x6D9CEFDB) + 85) ^ v48 ^ 0x1AB)) | v48)))();
}

uint64_t sub_100203428@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_10020348C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a7 = 0;
  a11 = 0;
  v16 = (*(v14 + 8 * ((a1 | 0x800020A2) ^ 0xC0803BD7)))(**(v13 + 8 * ((a1 | 0x800020A2) + 1065340784)), *v12, (*(v12 + 12) - 1862975969), &a7, &a11);
  if (v16)
  {
    if (v16 == 268435459)
    {
      a12 = 0x60E31FD2FE548731;
      return (*(v14 + 2896))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4);
    }

    else
    {
      v33 = 946232179 * ((((2 * (v15 - 108)) | 0xD1772250) - (v15 - 108) - 1757122856) ^ 0xF8C0ADE7);
      *(v15 - 104) = v33 ^ 0x638;
      *(v15 - 100) = ((2 * v16) & 0xBF6DDBF6) - v33 + (v16 ^ 0xDFB6EDFB) + 1878881000;
      v34 = (*(v14 + 23736))(v15 - 108);
      return (*(v14 + 8 * ((474 * (*(v15 - 108) != 1181123576)) ^ 0x4FF)))(v34);
    }
  }

  else
  {
    v24 = (*(v14 + 23584))(24, 0x1010040E2407E0ALL);
    return (*(v14 + 8 * ((114 * (((v24 == 0) ^ 0x31) & 1)) ^ 0x6B8)))(v24, v25, v26, v27, v28, v29, v30, v31, a2);
  }
}

void sub_100203AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731));
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  v27 = *(v24 - 188);
  JUMPOUT(0x100203B50);
}

uint64_t sub_100203D20(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

uint64_t sub_100203F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  v19 = *(v18 - 172);
  return sub_100204144();
}

uint64_t sub_100204350@<X0>(int a1@<W8>)
{
  v7 = *(v4 - 0x60E31FD2FE548731);
  v8 = ((a1 << ((v3 - 12) & 0xDB ^ 0xCA)) & 0xFBDFE956 ^ v2) + (a1 ^ 0xC4418324);
  v9 = (*(v7 + v8 - 2112877739) << 24) | (*(v7 + v8 + (((v3 & 0x77094EFF) - 366141693) & 0x15D2DD6B ^ 0x82100A3C)) << 16) | (*(v7 + v8 - 2112877737) << 8) | *(v7 + v8 - 2112877736);
  *(v4 + v5) = v1;
  return (*(v6 + 8 * (v3 & 0x77094EFF ^ (511 * (v4 == 0x60E31FD2FE548731)))))();
}

uint64_t sub_100204440@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a1 - 1296381823) & 0x4D453FDF;
  v17 = a1 + 2592;
  (*(v13 + 8 * (a1 + 2592)))();
  *(v10 - 0x60E31FD2FE548731) = 0;
  *(v10 + v12) = 495030071;
  *(v10 + v11) = v15;
  (*(v13 + 8 * v17))(v10 - 0x60E31FD2FE548731);
  v18 = (*(v13 + 8 * (v16 + 447)))(a9);
  return (*(v13 + 8 * (((((v16 - 2147481931) | 0x40802022) + (v16 ^ 0x2E ^ (v14 - 15))) * (v9 == 0)) ^ v16)))(v18);
}

void sub_100204544(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x100204580);
}

void sub_1002045D0()
{
  v0 = *(&off_1002D7710 + (byte_100258EE0[byte_100258BD0[(-3 * ((dword_100313A70 - dword_100313A58) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_100313A70 - dword_100313A58) ^ 0x8A))) - 53);
  v1 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 + *v0) ^ 0x8A)) ^ byte_100258EE0[byte_100258BD0[(-3 * ((dword_100313A70 + *v0) ^ 0x8A))] ^ 6]) - 62);
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 + dword_100313A58) ^ 0x8A)) ^ byte_1002589D0[byte_100259550[(-3 * ((dword_100313A70 + dword_100313A58) ^ 0x8A))] ^ 0xEC]) - 178) - 12;
  v6 = *&v5[8 * ((32 * ((*&v5[8 * (byte_100259654[(byte_10025930C[v1 - 12] ^ 0xB0) - 4] ^ v1) + 22784])(24, 0x1010040E2407E0ALL) == 0)) | 0xACA)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002047B0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x210BB38616FB3631;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  if (v3)
  {
    v4 = 1422;
  }

  else
  {
    v4 = 1423;
  }

  return (*(v1 + 8 * v4))();
}

uint64_t sub_10020485C@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 - 798723295)))(v1);
  v5 = *(v4 - 96);
  return v3;
}

void sub_100208F98()
{
  v0 = *(&off_1002D7710 + ((-3 * (dword_100313A60 ^ 0x8A ^ dword_100313A70)) ^ byte_100258DE0[byte_100258AD0[(-3 * (dword_100313A60 ^ 0x8A ^ dword_100313A70))] ^ 0x42]) - 166);
  v1 = *(v0 - 4);
  v2 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 - v1) ^ 0x8A)) ^ byte_1002589D0[byte_100259550[(-3 * ((dword_100313A70 - v1) ^ 0x8A))] ^ 0x8E]) - 41);
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 - dword_100313A60) ^ 0x8A)) ^ byte_100259400[byte_1002590E0[(-3 * ((dword_100313A70 - dword_100313A60) ^ 0x8A))] ^ 7]) - 6) - 12;
  v7 = (*&v6[8 * (byte_1002589D8[(byte_100259550[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 21744])(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100209184(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

uint64_t sub_100209228@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 - 1329486522)))(v1);
  v5 = *(v4 - 96);
  return v2;
}

void sub_10020CE54()
{
  v0 = *(&off_1002D7710 + ((-3 * (dword_100313A90 ^ 0x8A ^ dword_100313A70)) ^ byte_100259650[byte_100259300[(-3 * (dword_100313A90 ^ 0x8A ^ dword_100313A70))] ^ 0xEA]) - 198);
  v1 = -3 * ((dword_100313A70 + *v0) ^ 0x8A);
  v2 = *(&off_1002D7710 + (byte_100258FE8[(byte_100258CD8[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20);
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = *(&off_1002D7710 + ((-3 * ((dword_100313A70 - dword_100313A90) ^ 0x8A)) ^ byte_100259650[byte_100259300[(-3 * ((dword_100313A70 - dword_100313A90) ^ 0x8A))] ^ 0xB0]) - 90) - 12;
  v7 = *&v6[8 * ((29 * ((*&v6[8 * (byte_100258EE4[(byte_100258BD0[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 23120])(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CD)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10020D038(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_10020D0C0@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 2218)))(v1);
  v5 = *(v4 - 96);
  return v2;
}

uint64_t sub_1002104BC@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void sub_100210680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100210714(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_10021077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_100210810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W8>)
{
  *(v7 + 8) = 1546755450;
  v10 = *(&off_1002D7710 + v6 - 1996);
  v11 = *(&off_1002D7710 + v6 - 2005) - 12;
  return (*(v8 + 8 * ((57 * (((v7 == 0) ^ a6) & 1)) ^ v6)))(a1, a2, a3, a4, a5, 3128662369);
}

uint64_t sub_100210928()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_100210EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v9 - 0x2B7CC17BA9FDC7DELL) + 1385189627 + v10 + (v6 ^ (a6 - 239)) - 1492;
  v13 = v7 > 0x513E1BD0;
  v14 = v8 + 1014674043 > v12;
  if (v13 == v12 < 0xAEC1E42B)
  {
    v13 = v14;
  }

  return (*(v11 + 8 * ((114 * !v13) ^ v6)))();
}

uint64_t sub_100210F44@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 - 0x2B7CC17BA9FDC7E6);
  v6 = *a1 - 1917268404;
  *(v5 + (*a1 - 1917268403)) = 107;
  *(v5 + v6 + 2) = -40;
  *(v5 + v6) = 113;
  *(v5 + v6 + 3) = 108;
  *a1 += 4;
  return (*(v4 + 8 * (((((v2 + v3 - 2886) | 0x521) == 1381) * ((v3 ^ 0xBA7B9EC4) - 1558)) ^ (v2 + v3 - 1916))))();
}

uint64_t sub_10021145C()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_1002114FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v9 ^ 0x2BF;
  v14 = *(v10 - 0x2B7CC17BA9FDC7E6);
  *(v14 + v8) = 0;
  *(v14 + (v7 - 1917268403)) = 0;
  v15 = a6 + v13 - 1873;
  *(v14 + (v7 - 1917268402)) = 0;
  *(v14 + v7 + (v15 ^ 0x37C3572Eu)) = 1;
  *v6 += 4;
  return (*(v12 + 8 * ((v11 + v15 - 1377) ^ 0x60D ^ (v11 + v15 - 1916))))();
}

uint64_t sub_100211644@<X0>(int a1@<W8>)
{
  v9 = ((2 * ((a1 << ((v7 ^ v3) - 40)) + v2)) & 0xFF7B3EF4) + (((a1 << ((v7 ^ v3) - 40)) + v2) ^ 0x7FBD9F7B);
  if (v1 > v6 != v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568)
  {
    v10 = v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568;
  }

  else
  {
    v10 = v9 - 1559314134 > v5;
  }

  return (*(v8 + 8 * ((2428 * v10) ^ v7)))();
}

uint64_t sub_100211730@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_1002117B0()
{
  v3 = *(v0 - 0x2B7CC17BA9FDC7E6);
  v4 = (*v1 + v2);
  JUMPOUT(0x1002117E8);
}

uint64_t sub_100211808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6));
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_100211A20()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_100211AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v13 ^ (a6 - 125);
  v18 = a11 - ((2 * a11) & 0x32A2E7DBEA424B78) - 0x66AE8C120ADEDA44;
  v19 = (((2 * v12) & 0xD6C19B7E) + *(v14 - 0x2B7CC17BA9FDC7E6) + 0x10292E00949F3241 + (v17 ^ v12 ^ 0xEFD6D1FFD11B54DELL));
  *v19 = HIBYTE(v18) ^ 0x99;
  v19[1] = BYTE6(v18) ^ 0x51;
  v19[2] = BYTE5(v18) ^ 0x73;
  v19[3] = BYTE4(v18) ^ 0xED;
  v19[4] = ((a11 - ((2 * a11) & 0xEA424B78) - 182377028) >> 24) ^ 0xF5;
  v19[5] = BYTE2(v18) ^ 0x21;
  v19[6] = BYTE1(v18) ^ 0x25;
  v19[7] = v18 ^ 0xBC;
  *v11 += 8;
  return (*(v16 + 8 * (((173 * (v17 ^ (a6 + 7)) == 1557) * ((19 * (v17 ^ (a6 - 91))) ^ 0x7EA)) ^ (v15 + v17 - 1615))))();
}

uint64_t sub_100212074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = (v48 - 240 + v44);
  *v49 = *(v46 - 0x2B7CC17BA9FDC7DALL);
  v49[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v49[2] = 1917268408;
  return (*(v47 + 8 * (((v49 != 0) | (4 * (v49 != 0))) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_10021217C()
{
  v4 = (v0 ^ 0xC61CBD83) + v1;
  v5 = ((v0 - 75523240) & 0xBEFBFB7F ^ 0xD390A8ED) + *(v2 - 0x2B7CC17BA9FDC7DELL);
  v6 = v1 > 0x39E340F5;
  v7 = v4 > v5;
  if (v6 == v5 < 0xC61CBF06)
  {
    v6 = v7;
  }

  return (*(v3 + 8 * ((37 * !v6) ^ v0)))();
}

uint64_t sub_100212220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  v59 = v54 - 2879;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v60 = *v48 + 4;
  *v48 = v60;
  v61 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v60 - 1917268404);
  v62 = *(v53 + 8 * v59);
  return (*(v53 + 8 * ((8 * (a18 <= v61)) | (16 * (a18 <= v61)) | v58)))(v61, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_100212844()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_1002128A8@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_100212900()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_100212948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v55 = (v52 + 146) | 0x849;
  v56 = (*(v54 + 8 * (v52 + 2460)))();
  *(v53 + 64) = 0;
  *(v53 + 76) = 0;
  *(v53 + 40) = 0;
  (*(v54 + 8 * (v55 ^ 0x15D)))(v56);
  v57 = *(v50 - 0x2B7CC17BA9FDC7E6);
  v58 = *(v50 - 0x2B7CC17BA9FDC7DALL) + ((v55 - 92548938) & 0xBFFFBDE1 ^ 0x37C3572D);
  v59 = *(v51 + 8 * (v55 ^ 0xAC5)) - 4;
  (*(v54 + 8 * (v55 + 218)))();
  v68 = (*(v54 + 8 * (v55 + 212)))(a16, 0);
  return (*(v54 + 8 * (((v68 == 0) * (((v55 - 1709) | 0x140) - 1353)) ^ v55)))(v68, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_100212B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, *(&off_1002D7710 + (v52 ^ 0x2FF)) - 12);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == *(&off_1002D7710 + v52 - 727) - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100212C60()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_100212D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_100212DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_100212E78()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_100212EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100213924@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_100213988()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_1002139C0()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_100213A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v34 + 76) = 0;
  *(v34 + 40) = 0;
  v37 = (*(v36 + 8 * (v33 ^ 0xD56)))(**(v35 + 8 * (v33 ^ 0x631)), *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v33 - v32 + 1383) ^ 0x37C3572Du), &a27, &a31);
  return (*(v36 + 8 * ((15 * ((v37 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v37) & 0xF9FEDD78) != v33 - 1929764732)) ^ v33)))();
}

uint64_t sub_100213C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v37 = (*(v35 + 8 * (v34 ^ 0xD59)))(*v33, *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v34 - v32 + 1374) ^ 0x37C3572Du), &a27, &a31);
  v45 = (v37 ^ 0xFEFE6FE6) + 2113648318 + ((2 * v37) & 0xFDFCDFCC);
  if (v45 == -1929763161)
  {
    v48 = -45017;
  }

  else
  {
    if (v45 == 2096768676)
    {
      v46 = (*(v35 + 8 * (v32 - 1166304933)))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v35 + 8 * ((v46 * (((v32 - 1166307785) ^ 0xFFFFFFD7) + ((v32 - 1166307785) | 1))) ^ (v32 - 1166305952))))();
    }

    v49 = 946232179 * ((((v36 - 108) ^ 0xCCAC8659 | 0xE433420F) - ((v36 - 108) ^ 0xCCAC8659) + (((v36 - 108) ^ 0xCCAC8659) & 0x1BCCBDF0)) ^ 0xB8E4F899);
    *(v36 - 104) = (v32 - 1166306289) ^ v49;
    *(v36 - 100) = v45 - v49 - 759547329;
    v37 = (*(v35 + 8 * (v32 - 1166304914)))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v48 = -45016;
    }

    else
    {
      v48 = 0;
    }
  }

  a28 = 0x5C8F431131299E9FLL;
  return (*(v35 + 8 * ((3185 * (v48 == ((169 * (((((v32 - 1166306849) | 6) - 105) | 0x400) ^ 0x7AE)) ^ 0x743))) ^ ((v32 - 1166306849) | 6))))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10021477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

uint64_t sub_1002148EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = ((((v19 + 187) | 0x2C0) ^ 0xFB6FF42E) & (2 * v18)) + (v18 ^ 0x7DB7F9EF);
  v23 = v22 - 2109209807;
  v24 = (v19 - 1339747575) & 0x4FDAEDA3 ^ 0x82480331;
  v25 = (*(v16 + v22 - 2109209071) << 24) | (*(v16 + v22 - 2109209070) << 16) | (*(v16 + v22 + v24) << 8);
  v26 = *(v16 + v23 + 739);
  *(v20 + a3) = v17;
  return (*(v21 + 8 * (v19 ^ (176 * (v20 != a2)))))(v24, a2, a3, 2185757489, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_100214AD0(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = ((2 * v9) & 0xDFFFFF76) + (v9 ^ 0xEFFFFFBB) + 268435525;
  v17 = (*(v8 + v16 + 1) << (((v13 - 33) & 0xE9) - 17)) | (*(v8 + v16) << 24) | (*(v8 + v16 + 2) << 8) | *(v8 + v16 + 3);
  *(v11 + a1) = v10;
  *(v15 - 244) = 0;
  *a8 = (*(v14 + 8 * (a2 ^ 0xB19)))(v12, 0x100004077774924);
  JUMPOUT(0x100214BB0);
}

uint64_t sub_100214C20()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_100214CC0(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_100214EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  v31 = *(v30 - 244);
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL);
}

uint64_t sub_100214FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_1002150E8(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  v4 = *(v3 + 8 * (v2 ^ 0x98F));
  JUMPOUT(0x100215154);
}

uint64_t sub_10021519C(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = *(&off_1002D1950 + 40 * ((*(&off_1002D1958 + &loc_100005C14 + 4))(0x18uLL, 0x1010040E2407E0AuLL) == 0) + 2369);
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_1002157DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_1002159A0()
{
  v5 = *(v3 + 8) + 1843760272;
  v6 = v1 > 0x740256CA;
  v7 = v2 + 1052898664 > v5;
  if (v6 == v5 < (((v0 - 2135940658) | 0x770C8502) ^ 0x7C410E47u))
  {
    LOBYTE(v6) = v7;
  }

  return (*(v4 + 8 * ((119 * ((v0 ^ 0x49 ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_100215A38@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v6 = *(a1 - 0x2E52CFE8A53EA7A5);
  v7 = *a2 - 1295758285;
  *(v6 + v7 + 1) = 43;
  *(v6 + v7 + 2) = -115;
  *(v6 + v7) = 99;
  *(v6 + v7 + 3) = 110;
  *a2 += 4;
  return (*(v2 + 8 * (((v4 == v3) * ((v4 + 1418907529) & 0xB3B08FDD ^ 0xD0)) ^ (v5 + v4 - 2370))))(0);
}

uint64_t sub_100215EDC()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_100215F3C()
{
  v6 = *(v3 + 8) - 1490089906;
  v7 = v1 > 0x3AB8DB0C;
  v8 = v2 + (v0 ^ 0xAEEu) + v5 + v0 - 708 - 2142322298 > v6;
  if (v7 == v6 < 0xC54724EF)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((1620 * v7) ^ v0)))();
}

uint64_t sub_100215FC0()
{
  *(v3 + 40) = v1;
  v7 = *(v2 + 8);
  return (*(v4 + 8 * ((((v5 + v0 + 1520545374) & 0xADA1A7CB ^ 0x5DD) * (v2 == 0)) ^ v0)))(4294922294);
}

uint64_t sub_1002163F4()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_100216448()
{
  v7 = (((v0 - 195) | 0x91D) ^ 0xCBC5EDE3) + *(v3 + 8);
  v8 = v1 > 0x1621FE5A;
  v9 = v2 - 1667084840 > v7;
  if (v8 == v7 < 0xE9DE019D)
  {
    v8 = v9;
  }

  return (*(v4 + 8 * ((v8 * ((v0 - v6 + 2757) ^ (v5 - 12))) ^ v0)))();
}

uint64_t sub_1002164D0()
{
  *(v3 + 80) = v1;
  v7 = *(v2 + 8);
  return (*(v4 + 8 * (((((v0 - 70057) & 0xF7BDAFFF ^ (v5 - 2719)) + 5 * (v0 ^ 0x994)) * (v2 == 0)) ^ v0)))(4294922294);
}

uint64_t sub_10021660C@<X0>(int a1@<W8>)
{
  v7 = (((v2 + 2 * a1) << (((v5 - 34) ^ 0x8D) - 88)) & 0x3F7FFF60) + ((v2 + 2 * a1) ^ 0x1FBFFFB1);
  if (v1 > v4 != (v7 - 1803469259) < 0xB4413DE6)
  {
    v8 = (v7 - 1803469259) < 0xB4413DE6;
  }

  else
  {
    v8 = v7 - 1803469259 > v3;
  }

  return (*(v6 + 8 * ((324 * v8) ^ v5)))();
}

uint64_t sub_1002169C8()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_100216A1C()
{
  v6 = *(v3 + 8) - 595448546;
  v7 = v1 > ((v0 - 1515455313) | 0x5210A600u) - v5 + 90551864;
  v8 = v2 - 1386310150 > v6;
  if (v6 < 0xFA9A49BF == v7)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((3530 * v7) ^ v0)))();
}

uint64_t sub_100216AA8()
{
  *(v3 + 120) = v0;
  v8 = *(v2 + 8);
  return (*(v4 + 8 * ((((((v1 + 2289) ^ 0x8F2) - v6 + 2951) ^ (v5 - 791) ^ (255 * ((v1 + 2289) ^ 0x8F2))) * (v2 == 0)) ^ (v1 + 2289))))(4294922294);
}

uint64_t sub_100216BC8@<X0>(int a1@<W8>)
{
  v7 = (a1 << (((v5 - 35) ^ 0x65) + 5)) + v2;
  v8 = ((2 * v7) & 0xFCBBF95C) + (v7 ^ 0xFE5DFCAF);
  if (v1 > v4 != v8 - 1485663003 < 0xA5D09194)
  {
    v9 = v8 - 1485663003 < 0xA5D09194;
  }

  else
  {
    v9 = v8 - 1485663003 > v3;
  }

  return (*(v6 + 8 * ((3276 * v9) ^ v5)))();
}

uint64_t sub_100216F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 144) = (*(v16 + 8 * (v17 ^ 0x25E)))();
  v18 = *v14;
  v19 = (*(v14 + 3) - 1295758285);
  v20 = *(&off_1002D7710 + v17 - 2494) - 4;
  (*(v16 + 8 * (v17 ^ 0x269)))();
  v21 = (*(v16 + 8 * (v17 ^ 0x257)))(a14, 0);
  *(v15 + 152) = v21;
  return (*(v16 + 8 * (((v21 == 0) * (125 * (v17 ^ 0x9D9) - 2327)) | v17)))(4294922293, v21);
}

uint64_t sub_100217010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_100217070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, *(&off_1002D7710 + v46 - 1629) - 12);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == *(&off_1002D7710 + (v46 ^ 0x675)) - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_100217178()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_100217208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_1002172B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_100217388()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_1002173EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_100217C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(**(&off_1002D7710 + (v26 ^ 0xEB)), *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100217DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (*(v26 + 8 * (v25 ^ 0x9DC)))(*v27, *v24, (v25 - 1295758285 + *(v24 + 12) - 681), &a19, &a24);
  v31 = (v30 ^ 0x27F3FFED) - 2130497 + ((2 * v30) & 0x4FE7FFDA);
  if (v31 == 668171692)
  {
    v32 = (*(v26 + 8 * (v28 - 138631312)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v26 + 8 * ((v32 * ((v28 - 138630772) ^ (v28 - 138631575))) ^ (v28 - 138633243))))();
  }

  else if (v31 == 936607151)
  {
    return (*(v26 + 8 * ((211 * (35 * ((v28 - 138633676) ^ 0x247) == -44492)) ^ (v28 - 138633676))))(4294922279);
  }

  else
  {
    v34 = 946232179 * ((1523044408 - ((v29 - 108) | 0x5AC7D038) + ((v29 - 108) | 0xA5382FC7)) ^ 0x35431308);
    *(v29 - 104) = (v28 - 138632668) ^ v34;
    *(v29 - 100) = v31 - v34 + 669049655;
    (*(v26 + 23736))(v29 - 108);
    return (*(v26 + 8 * ((1045 * (*(v29 - 108) != 1181123576)) ^ (v28 - 138633785))))(4294922280);
  }
}

uint64_t sub_100218200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void sub_100218288()
{
  v2 = *v0;
  v3 = *(v0 + 2) ^ (v1 - 1172238736);
  JUMPOUT(0x1002182ACLL);
}

uint64_t sub_100218410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(**(&off_1002D7710 + ((4 * (v25 ^ 0x5A5)) ^ 0x102)), a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

uint64_t sub_100218460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v30 = *(v26 + 216);
  v31 = (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v30 - 0x78520B45E1B54CDELL));
  *(v30 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  v32 = *(v29 - 124);
  return sub_1002184BC(v31);
}

uint64_t sub_100218730@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_100218828@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_1002188E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  v27 = *(v26 - 112);
  JUMPOUT(0x100218B00);
}

uint64_t sub_100218D0C@<X0>(int a1@<W8>)
{
  v6 = a1 - 2200;
  v7 = (a1 - 1973414721) & 0x759FE87D;
  v8 = *(v3 - 0x78520B45E1B54CDELL);
  v9 = ((2 * v1) & 0xEFEFE5DE ^ 0xE008809A) + (v1 ^ 0x7FBBAA2);
  v10 = (*(v8 + (v7 ^ 0x8080509) + v9) << ((v6 - 72) & 0x3D ^ 0x21)) | (*(v8 + v9 + 134745362) << 16) | (*(v8 + v9 + 134745363) << 8) | *(v8 + v9 + 134745364);
  *(v3 + v4) = v2;
  return (*(v5 + 8 * (v6 ^ (11 * (v3 == 0x78520B45E1B54CDELL)))))(v10);
}

uint64_t sub_100218DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v6 + 8 * (v7 + 2385)))(a2);
  *(v3 - 0x78520B45E1B54CDELL) = 0;
  *(v3 + v5) = -1172238684;
  *(v3 + v4) = v8;
  (*(v6 + 8 * (v7 ^ 0x9B3)))(v3 - 0x78520B45E1B54CDELL);
  return (*(v6 + 8 * ((((v9 + ((((v7 + 1479) | 0x18) - 138496025) & 0xFFFDE776) - 2855) ^ ((v7 + 1479) | 0x18) ^ 0x87D) * (v2 == 0)) | (v7 + 1479) | 0x18)))(a1);
}

void sub_100218EDC()
{
  *v0 = 0;
  *(v0 + 8) = 504896673;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0x8EA)))(v0);
  JUMPOUT(0x100215510);
}

uint64_t sub_100218F2C(uint64_t a1, uint64_t a2)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_100219610(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30)
{
  v33 = a5 + a4 - 322;
  (*(v32 + 8 * (a4 + v31)))(*v30);
  *v30 = a30;
  *a27 = a16;
  return (*(v32 + 8 * ((1760 * (a29 == 0)) ^ v33)))();
}

uint64_t sub_1002197E8()
{
  v5 = *(v3 + 8) - 748115895;
  v6 = v1 > ((v0 + 857) ^ 0xBAE3162F);
  v7 = v2 + 1189952448 + ((v0 - 1601795400) | 0x1411018Au) > v5;
  if (v6 == v5 < 0x451CE12D)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((1003 * v6) ^ v0)))();
}

uint64_t sub_100219980@<X0>(int a1@<W8>)
{
  v6 = (a1 << (((v4 - 33) | 0x41) + 62)) + ((v4 + 479) ^ 0x4A4 ^ (v2 + 230));
  v7 = ((2 * v6) & 0xF76FFDFC) + (v6 ^ 0x7BB7FEFE);
  if (v1 > 0x24ACDCE0 != v7 + 1604002845 < 0xDB53231B)
  {
    v8 = v7 + 1604002845 < 0xDB53231B;
  }

  else
  {
    v8 = v7 + 1604002845 > v3;
  }

  return (*(v5 + 8 * ((104 * v8) ^ v4)))();
}

uint64_t sub_100219D0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 16) = v8 + 12;
  return (*(v9 + 8 * ((125 * (((a4 + v6 - 2106) ^ (a4 + 969) ^ (v7 - 1113)) + v10 > 0xFFFFFFFB)) ^ v6)))(4294922289);
}

uint64_t sub_100219D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(v8 + 8) + 1736112910;
  v11 = v7 > 0x26D0CC09;
  v12 = v6 - 1885921201 > v10;
  if (v11 != v10 < ((a5 + ((v5 + 604175601) | 0x90949080) - 391) ^ 0xD92F3321))
  {
    v12 = v11;
  }

  return (*(v9 + 8 * ((v12 | (2 * v12)) ^ v5)))();
}

uint64_t sub_100219DEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 24) = v7;
  v11 = *(v8 + 8);
  return (*(v9 + 8 * ((((a4 + v6 - 211) ^ (a4 - 166) ^ (v6 + 1351269140) & 0xAF7544DF) * (v8 != 0)) ^ v6)))(4294922294);
}

uint64_t sub_100219F14@<X0>(int a1@<W8>)
{
  v7 = ((((v5 + 1490577244) & 0xA7279E77) - 201429150) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xF9FF3CE4);
  if (v1 > v4 != v7 - 172588860 < 0xEFB5BDA8)
  {
    v8 = v7 - 172588860 < 0xEFB5BDA8;
  }

  else
  {
    v8 = v7 - 172588860 > v3;
  }

  return (*(v6 + 8 * ((15 * v8) ^ v5)))();
}

uint64_t sub_10021A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 56) = v8 + 12;
  return (*(v9 + 8 * ((63 * ((v10 + v7) < 0xFFFFFFF8)) ^ v6)))(4294922289);
}

uint64_t sub_10021A2B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = (((a5 + a4 + v5 - 975 - 186 - 434) | 0x310) ^ 0xBF92BAD8) + *(v8 + 8);
  v11 = v6 > 0xCEB90DB3;
  v12 = v7 - 407970139 > v10;
  if (v11 == v10 < 0x3146F244)
  {
    v11 = v12;
  }

  return (*(v9 + 8 * (((32 * v11) | (v11 << 6)) ^ (v5 - 975))))();
}

uint64_t sub_10021A340(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 64) = v7;
  v11 = *(v8 + 8);
  return (*(v9 + 8 * ((((((v6 + 873925960) | 0x808080CA) - a4 + 201) ^ 0x725) * (v8 == 0)) ^ v6)))(4294922294);
}

uint64_t sub_10021A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (v13 ^ 0x223) - a5 + 597;
  (*(v14 + 8 * (v13 + 2414)))();
  v16 = *v12;
  v17 = *(v12 + 3) + (v15 ^ 0x2F07D44 ^ (43 * (v13 ^ 0x223u)));
  v18 = *(&off_1002D7710 + v13 - 538) - 4;
  (*(v14 + 8 * (v13 + 2429)))();
  v20 = (*(v14 + 8 * (v13 ^ 0x9BB)))(a12, 0);
  return (*(v14 + 8 * (v13 | (8 * (v20 == 0)))))(4294922293, v20);
}

uint64_t sub_10021A9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v43 + 8 * (v40 + 2724)))(v42, *(&off_1002D7710 + ((v40 + 1979) ^ 0x89D)) - 12);
  (*(v43 + 8 * (v40 + 2734)))(v42);
  (*(v43 + 8 * ((v40 + 1979) ^ 0x333)))(v42, v41);
  v44 = (*(v43 + 8 * ((v40 + 1979) ^ 0x30B)))();
  return (*(v43 + 8 * (((v44 == *(&off_1002D7710 + ((v40 + 1979) ^ 0x88B)) - 12) * (((v40 + 1459144467) & 0xA9073F7D ^ 0xFFFFFC95) + ((v40 + 2135594790) & 0x80B56C4F))) ^ (v40 + 1979))))(v44, v45, v46, v47, v48, v49, v50, v51, a9, v39, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10021AAF4()
{
  v7 = v0;
  (*(v4 + 8 * (v1 ^ 0xA7D)))(v3, v2);
  v5 = (*(v4 + 8 * (v1 + 2493)))();
  return (*(v4 + 8 * (((v5 == v7) * (v1 + 1718 + v1 + 625 - 988)) ^ v1)))(v5);
}

uint64_t sub_10021ABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7Du)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * (((v9 ^ 0x94E) - 2007) ^ 0x255)) ^ v9)))();
}

uint64_t sub_10021AC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7D)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * ((11 * (v9 ^ 0x1CD) + 272272676) & 0xEFC57AB2 ^ 0xBCF)) ^ v9)))();
}

uint64_t sub_10021AD10()
{
  v5 = v0;
  (*(v4 + 8 * ((v1 + 289) ^ 0xA7D)))(v3, v2);
  v6 = (*(v4 + 8 * ((v1 + 289) ^ 0xA45)))() == v5;
  return (*(v4 + 8 * ((v6 * (((v1 - 2065532648) & 0x7B1D8EBE) - 769)) ^ (v1 + 289))))();
}

uint64_t sub_10021AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = 5 * (v46 ^ 0x4DB);
  (*(v47 + 8 * (v48 ^ 0x298)))(a45);
  (*(v47 + 8 * (v48 + 376)))(a46);
  return (*(v47 + 8 * (((a44 == 0) * ((((v48 + 335837067) | 0xA093108A) ^ 0xFFFFFF88) + v48 - 1265137643)) ^ v48)))(a44, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10021B82C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = 0;
  a16 = 0;
  v23 = (*(v22 + 8 * (v21 ^ 0xC76)))(**(&off_1002D7710 + (v21 ^ 0x711)), *v20, v19 + *(v20 + 12) + ((v21 - 1265136953) ^ (a2 - 284)) - 356, &a19, &a16);
  return (*(v22 + 8 * ((134 * ((v23 ^ 0x3733C776) - 84018724 + ((2 * v23) & 0x6E678EEC) != 1110557013)) ^ v21)))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11);
}

uint64_t sub_10021B968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v25 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v14 = (*(v12 + 8 * (v9 + 1008)))(*v10, *v7, (*(v7 + 12) + v8), va1, va);
  v21 = (v14 ^ 0xF235DB53) + 1073473023 + (((v9 - 1265137083) ^ 0x50FC276C) & (2 * v14));
  if (v21 == 842121554)
  {
    v22 = (*(v12 + 23584))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v12 + 8 * ((v22 * (11 * (v11 ^ 0xB4979086) - 327)) ^ 0x73C)))();
  }

  else if (v21 == 1110557013)
  {
    return sub_10021C6B4(4294922279, v15, v16, v17, 1265135760, v18, v19, v20, a1, a2);
  }

  else
  {
    v24 = 946232179 * ((((2 * (v13 - 108)) | 0xAD5392EC) - (v13 - 108) - 1453967734) ^ 0xC6D2F5B9);
    *(v13 - 104) = v24 ^ 0x638;
    *(v13 - 100) = v21 - v24 + 495099793;
    (*(v12 + 23736))(v13 - 108);
    return (*(v12 + 8 * ((173 * (*(v13 - 108) != 1181123576)) ^ 0x164)))(4294922280);
  }
}

uint64_t sub_10021BFB4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0x9B4;
  (*(v13 + 8 * (a1 + 368)))(v12);
  v15 = (v14 - 618) | 0x20;
  (*(v13 + 8 * (v15 + 2601)))(**(&off_1002D7710 + v15 - 354), a12, a9);
  return (*(v13 + 8 * ((173 * ((((v15 + 805797662) | 0x84901148) ^ 0xB49791CA) == -45003)) ^ v15)))(4294922293);
}

void sub_10021BFEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, uint64_t a56, uint64_t a57)
{
  v60 = *(a6 + 160);
  (*(v58 + 8 * (a4 ^ v57)))(*(v60 - 0x161D22D60BEDB2F3));
  *(v60 - 0x161D22D60BEDB2F3) = a57;
  *a55 = a18;
  v61 = *(v59 - 124);
  JUMPOUT(0x10021C04CLL);
}

uint64_t sub_10021C210(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3128 * ((v2 ^ 0x17Cu) - 1228 == (v1 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_10021C2A4(uint64_t a1)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = ((v1 + 1) ^ v3) != (v2 ^ 0x2D496C09);
  return (*(v6 + 8 * (((v7 << 6) | (v7 << 7)) ^ v4)))();
}

void sub_10021C430(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 - 0x161D22D60BEDB2EBLL) = ((a5 + a4 + 1250) ^ 0x7878E419) + a16 - ((2 * a16) & 0xF0F1C64A);
  *(a20 - 0x161D22D60BEDB2E7) = -499228505;
  v21 = *(v20 - 112);
  JUMPOUT(0x10021C61CLL);
}

uint64_t sub_10021C848(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v7 - 0x161D22D60BEDB2F3);
  v12 = ((2 * v5) & 0xFFDFE97E ^ 0xC45CC14E) + (v5 ^ 0x1DD19418) + 1051457;
  v13 = (*(v11 + v12) << 24) | (*(v11 + v12 + 1) << 16) | (*(v11 + v12 + 2) << 8);
  v14 = *(v11 + v12 + 3);
  *(v7 + v9) = v6;
  if (!(v13 | v14))
  {
    return (*(v10 + 8 * ((((a2 ^ (a2 + 493)) - 407) * (v7 == v8)) ^ (a5 + a2 + 27))))(4294922294);
  }

  if ((v13 | v14) == 0xFFFF4FFB)
  {
    return (*(v10 + 8 * (((*(*(&off_1002D7710 + a5 + a2 - 602) - 4) == 0) * (((a5 + a2 - 1727431518) & 0x66F68BBF) - 2568)) ^ (a5 + a2 + 527))))();
  }

  return (*(v10 + 8 * ((16 * (((v7 == v8) ^ (((-77 - a2) ^ 0x2F) + 1)) & 1)) | 0x7AC)))();
}

uint64_t sub_10021CD3C@<X0>(int a1@<W8>)
{
  v8 = (a1 - 1387687271) & 0x52B66EFA;
  (*(v7 + 8 * (a1 ^ 0xB4C)))();
  *(v2 - 0x161D22D60BEDB2F3) = 0;
  *(v2 + v6) = 2021188389;
  *(v2 + v4) = v5;
  (*(v7 + 8 * (v8 + 2352)))(v2 - 0x161D22D60BEDB2F3);
  return (*(v7 + 8 * (((((((v8 + 718) | 0x2C1) + 806746591) | 0x84819002) + 1265135760 + 354 * (((v8 + 718) | 0x2C1) ^ 0x7EE) - 3057) * (v1 == 0)) ^ ((v8 + 718) | 0x2C1))))(v3);
}

void sub_10021CE64()
{
  *v0 = 0;
  *(v0 + 8) = 1907636452;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0xA4E)))(v0);
  JUMPOUT(0x100219120);
}

void sub_10021CEB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021CF44(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * (v4 | (4 * v4) | 0x542u)))(4294922293);
}

uint64_t sub_10021DA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, int a35, unsigned int a36, uint64_t a37)
{
  v39 = 2 * (a5 ^ (a5 - 167));
  v40 = v38 + a5 - 2045;
  (*(v37 + 8 * (a5 ^ (a5 - 2422))))(*a11);
  *a11 = a37;
  *a34 = a26;
  return (*(v37 + 8 * (((a36 == 0) * (v39 ^ 0xC50)) ^ v40)))(a36, v41, v42, v43, 2932264581, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_10021DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, int a41, unsigned int a42, uint64_t a43)
{
  v45 = a5 ^ (a5 + 168);
  v46 = a5 + v44 - 1924;
  (*(v43 + 8 * (a5 + v44)))(*(a38 - 0x1A8CA07156B7B2ABLL));
  *(a38 - 0x1A8CA07156B7B2ABLL) = a43;
  *a40 = a31;
  return (*(v43 + 8 * (((a42 == 0) * (v45 ^ 0x163)) ^ v46)))(a42, v47, v48, v49, 2932264581, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_10021DDA4()
{
  v4 = *(v2 - 0x1A8CA07156B7B2A3) - 1579938237 + ((v1 - 531815500) & 0x1FB2DF3F);
  if (v0 > 0x572430B != v4 < 0xFA8DBCF0)
  {
    v5 = v0 > 0x572430B;
  }

  else
  {
    v5 = v0 - 91374841 + v1 - 62 > v4;
  }

  return (*(v3 + 8 * ((27 * !v5) ^ v1)))();
}

uint64_t sub_10021DE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v8 - 0x1A8CA07156B7B2ABLL);
  v12 = ((2 * v6) & 0xFD37F77A) + (v6 ^ 0xFE9BFBBD);
  *(v11 + v12 + 23331908) = 0;
  v13 = a5 + v7 - 493;
  *(v11 + v12 + 23331907) = 0;
  *(v11 + v12 + 23331909) = 0;
  *(v11 + v12 + (v13 ^ 0xAFA2CAC3)) = 1;
  *v5 += 4;
  return (*(v9 + 8 * ((690 * (((a5 + v7 + 1561448301) ^ 0xBD89E42) + ((a5 + v7 + 1561448301) & 0xF42766F7) == 2164)) ^ (v10 + v13 - 2775))))(0);
}

uint64_t sub_10021E32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v14 + 8 * (v12 + 2426)))();
  v15 = *(v13 - 0x1A8CA07156B7B2ABLL);
  v16 = *(v13 - 0x1A8CA07156B7B29FLL);
  v17 = *(&off_1002D7710 + (v12 ^ 0x216)) - 4;
  (*(v14 + 8 * (v12 + 2441)))();
  v19 = (*(v14 + 8 * (v12 + 2435)))(a12, 0);
  return (*(v14 + 8 * (((((v12 - 67) ^ (v19 == 0)) & 1) * ((v12 - 528963) & 0xAECEDEAD ^ 0xAEC6CEB3)) ^ v12)))(4294922293, v19);
}

uint64_t sub_10021E414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ v12 ^ (a5 - 99);
  v17 = (*(v14 + 8 * ((v13 ^ v12) + 513)))(a12, a2, 0);
  *(v15 - 256) = v17;
  return (*(v14 + 8 * ((((v16 ^ (v17 == 0)) & 1) * ((((v13 ^ v12) - 2374) | 0x210) ^ 0x265)) ^ v13 ^ v12)))(4294922293);
}

uint64_t sub_10021E48C()
{
  (*(v1 + 8 * (v0 ^ 0x90A)))(v2, *(&off_1002D7710 + v0 - 610) - 12);
  (*(v1 + 8 * (v0 ^ 0x9F4)))(v2);
  *(v4 - 248) = (*(v1 + 8 * (v0 ^ 0x9D0)))(v2, v3);
  v5 = (*(v1 + 8 * (v0 ^ 0x9E8)))();
  return (*(v1 + 8 * (((v5 == *(&off_1002D7710 + (v0 ^ 0x268)) - 12) * (v0 ^ 0x36E ^ ((v0 + 399) | 0x3B2))) ^ v0)))(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10021E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (v48 - 1359520148) & 0x5108A6FB;
  *(v50 - 248) = a1;
  (*(v49 + 8 * (v51 + 1074)))(a48);
  (*(v49 + 8 * (v51 + 1074)))(*(v50 - 256));
  return (*(v49 + 8 * (((a47 != 0) * (((v51 - 1362704502) ^ 0xFFFFFDF0) + v51 - 1362704502)) ^ v51)))();
}

uint64_t sub_10021F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 1187;
  v32 = (v28 - 1126878) & 0xAED7FFAF;
  a19 = 0;
  a28 = 0;
  a27 = v30;
  v33 = (*(v29 + 8 * (v28 + 2754)))(**(&off_1002D7710 + v28 - 161), *(a24 - 0x1A8CA07156B7B2ABLL), *(a24 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  return (*(v29 + 8 * ((13 * ((v33 ^ (v32 - 1325847814)) - 44073024 + ((2 * v33) & 0xBF7FF2FE) == 1830779202)) ^ v31)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_10021F2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v37 = (*(v32 + 8 * (v29 + 1567)))(*v33, *(v30 + v31), *(v30 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  v43 = (v37 ^ 0x7F9FF9FF) - 578846912 + ((v37 << ((v29 - 113) & 0x9F ^ (v35 - 1))) & 0xFF3FF3FE);
  if (v43 == v28)
  {
    v46 = 4294922279;
    v47 = v34;
  }

  else
  {
    if (v43 == 1562343743)
    {
      v44 = (*(v32 + 23584))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v32 + 8 * ((115 * v44) ^ 0x391)))();
    }

    v48 = 946232179 * ((((v36 - 108) | 0x211FEA39) - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6);
    *(v36 - 104) = v48 ^ 0x638;
    *(v36 - 100) = v43 - v48 - 225122396;
    (*(v32 + 23736))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v46 = 4294922280;
    }

    else
    {
      v46 = 0;
    }

    v47 = v34;
  }

  if (v46)
  {
    v49 = v34;
  }

  else
  {
    v49 = v47;
  }

  a20 = v49;
  return (*(v32 + 8 * ((2576 * (v46 == 0)) ^ 0xB3)))(v46, 4130263200, v38, v39, 2932264581, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_10021F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  *(v30 + 8) = v32 - 4096;
  *(v33 - 200) = v31;
  return (*(v29 + 8 * (((a28 <= 0x1000) * (v28 - 777)) ^ v28)))(a1, a2, a3, a4, 2932264581);
}

void sub_10021F6D0()
{
  *(v2 - 164) = 0;
  v3 = *(v1 + v0);
  JUMPOUT(0x10021FAE0);
}

uint64_t sub_10021F7B8()
{
  *(v4 - 180) = -45007;
  *(v4 - 164) = -45007;
  return (*(v1 + 8 * (((v2 == v3) * (((v0 + 338) ^ 0x664) + ((v0 + 338) ^ 0xFFFFFD87))) ^ (v0 + 338))))();
}

void sub_10021FA38()
{
  (*(v4 + 8 * (v1 ^ (v0 - 2422))))();
  *(v5 + v2) = 0;
  *(v5 - 0x71166887D0A76934) = v6;
  *(v5 + v3) = 164704100;
  (*(v4 + 8 * (v1 ^ 0xAEC6C50F)))(v5 + v2);
  sub_10021FCD4();
}

void sub_10021FAB4()
{
  v2 = *v0;
  v3 = *(v0 + 2) ^ v1;
  JUMPOUT(0x10021FADCLL);
}

uint64_t sub_10021FB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v32 = 163 * (a5 ^ (a5 + 1));
  v33 = a5 + v31 - 2863;
  v34 = *(v30 - 200);
  v35 = (*(v29 + 8 * (a5 + v31)))(*(v34 - 0x71166887D0A7693CLL));
  *(v34 - 0x71166887D0A7693CLL) = *(v30 - 176);
  **(v30 - 192) = a29;
  v36 = *(v30 - 180);
  *(v30 - 164) = v36;
  return (*(v29 + 8 * ((204 * (v36 != (v32 ^ 0x1E9))) ^ v33)))(v35);
}

uint64_t sub_10021FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(a27 - 0x71166887D0A76934) = (a5 ^ (a5 - 369)) + 524352999 + a28 - ((2 * a28) & 0x3E81FBCE) - 913;
  *(a27 - 0x71166887D0A76930) = 164704100;
  return sub_10021FCD4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_10021FEB4(uint64_t a1, int a2)
{
  v8 = *(v6 - 0x71166887D0A7693CLL);
  v9 = (*(v8 + v5) << ((v4 ^ 0x2A) + 13)) | (*(v8 + (a2 + v3 - 3)) << 16) | (*(v8 + (a2 + v3 - 2)) << 8) | *(v8 + (a2 + v3 - 1));
  *(v6 - 0x71166887D0A76930) = v2 + 1509109630;
  return (*(v7 + 8 * ((1085 * (v9 == 261 * (v4 ^ 0x22A) - 2871)) ^ v4)))();
}

uint64_t sub_100220034@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(a1 + v3) << (((v4 - 32) & 0x3F) - 31)) | (*(a1 + (v1 + 1)) << 16) | (*(a1 + (v1 + 2)) << ((v4 - 120) & 0x7D ^ 0x15)) | *(a1 + (v1 + 3));
  *(v5 - 0x71166887D0A76930) = v2 - 908234881;
  return (*(v6 + 8 * ((978 * (v8 != 0)) ^ (v4 - 342))))(0);
}

uint64_t sub_1002200EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = (*(v8 + 8 * (v7 ^ 0x999)))(v6 << (((-67 * (v7 ^ 0x1E)) ^ 0xB7u) + a5 + v7 - 29), 0x1010040F32E1FD2);
  v12 = v5 == v9 || v10 == 0;
  return (*(v8 + 8 * ((60 * v12) ^ v7)))(4294922294);
}

uint64_t sub_100220280@<X0>(int a1@<W4>, int a2@<W5>, int *a3@<X8>)
{
  v16 = bswap64(*(*(v10 + v9) + (((a2 - 4) << ((a1 ^ v5) + 118)) & ((a1 - 1455) + v7)) + ((a2 - 4) ^ v6) + v3));
  *(a3 - 3) = (v16 + v4 - (v8 & (2 * v16))) ^ v4;
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 8;
  v17 = *(v10 + v9);
  *(a3 - 1) = (*(v17 + (v14 + v16 + 4)) << 24) | (*(v17 + (v14 + v16 + 5)) << 16) | (*(v17 + (v14 + v16 + 6)) << 8) | *(v17 + (v14 + v16 + 7));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  v18 = *(v10 + v9);
  *a3 = (*(v18 + (v16 + v14)) << 24) | (*(v18 + (v16 + v14 + 1)) << 16) | (*(v18 + (v16 + v14 + 2)) << 8) | *(v18 + (v16 + v14 + 3));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  return (*(v13 + 8 * (a1 | (2 * (v16 + v14 + *(a3 - 1) + *a3 > (*(v10 + v11) ^ v15))))))();
}

uint64_t sub_100220398@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  *(a7 + 4) = *(v9 + v8) + a5;
  v13 = *(v9 + v10) + a4;
  *(v9 + v10) = v13;
  *(a7 + 12) = *(v9 + v8) + (a6 + v13 - 4);
  *(v9 + v10) += *a7;
  return (*(v11 + 8 * (((v12 + ((a3 + a1) | a2) - 2894) * (v7 == 0)) ^ a3)))();
}

uint64_t sub_1002204AC@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 < v5;
  *(v2 + v3) = 0;
  if (v7 == (v3 + 1) > 0xFFFFFFFFFA44B07CLL)
  {
    v7 = a1 + v3 + (v1 + 1329) + 411 < v4;
  }

  return (*(v6 + 8 * ((3224 * v7) ^ v1)))(4294922262);
}

uint64_t sub_10022050C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 160) = a22;
  *(v28 - 148) = a27;
  return (*(v27 + 8 * ((((7 * (((a4 - 645) | 0x148) ^ 0x77D)) ^ 0x109) * (a22 != 0)) ^ (a4 + 564))))(0);
}

uint64_t sub_100220564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v21 = (*(v20 + 8 * (v17 ^ 0xAE1)))(32 * v18, 0x1010040F32E1FD2);
  *a17 = v21;
  return (*(v20 + 8 * (((v21 == 0) * (((v17 - 95) | 0x648) - 1850)) ^ v17)))(v19);
}

uint64_t sub_1002205C4()
{
  *(v3 - 137) = v1 != 0;
  *(v3 - 144) = 0;
  return (*(v2 + 8 * (((((v0 - 28) ^ (v1 != 0)) & 1) * ((v0 + 996) ^ 0x54E)) ^ (v0 + 996))))();
}

uint64_t sub_100220610@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v12 - 160);
  v14 = 32 * a1;
  *(*a10 + v14) = *(v13 + v14);
  v16 = (v13 + v14 + 8);
  v15 = *v16;
  *(v12 - 136) = a1;
  *(v12 - 128) = v16;
  *(*a10 + v14 + 8) = v15;
  v17 = *(v13 + v14 + 12);
  *(v12 - 120) = v13 + v14 + 12;
  *(*a10 + v14 + 12) = v17;
  *(*a10 + v14 + 16) = 0;
  *(*a10 + v14 + 24) = 0;
  *(*a10 + v14 + 16) = (*(v11 + 8 * (v10 ^ 0xE57)))(*v16, 0x100004077774924);
  return (*(v11 + 8 * (((*(*a10 + v14 + 16) == 0) * (v10 - 1432 + ((v10 - 315706908) & 0x12D14A6F) - 601)) ^ v10)))();
}

uint64_t sub_10022070C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v27 = *(v25 + 32 * v24 + 16);
  v28 = *v26 - 0x75332ED76621023DLL - ((*v26 << (((v23 - 66) & 0xBEu) + 73)) & 0x133BDFB86);
  return sub_100220764(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100220764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = (v30 - 691) | 0x28;
  v36 = *(v32 + 8 * v31);
  return (*(v32 + 8 * (((v33 <= a7) * (((v35 - 557) | 0x489) - 1309)) ^ v35)))(a1, a2, a3, a4, a5, a6, *(v34 - 136), 2515, a8, a9, a10, a11, *(v34 - 128), a30, *(v34 - 120), 4294965138);
}

uint64_t sub_1002208C4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 329;
  v6 = (v1 - 16 + a1);
  v7 = *(v4 + v1 - 16);
  *(v6 - 1) = *(v4 + v1 - 16 - 16);
  *v6 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v5 + 181761835) & 0xF52A87AD ^ 0x43E)) ^ v5)))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_100220AC8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a2 + v9) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 == ((v2 + v4) | v5) + a1) * v6) ^ v2)))();
}

uint64_t sub_100220B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, void *a17)
{
  v19 = 7 * ((v18 + a5 - 1176) ^ 0x6F9);
  v20 = v18 + a5 - 793;
  *(*a17 + 32 * a7 + 24) = (*(v17 + 8 * (v18 + a5 - 6)))(*a15, 0x100004077774924);
  return (*(v17 + 8 * (((*(*a17 + 32 * a7 + 24) == 0) * (v19 ^ 0xB6)) ^ v20)))();
}

void sub_100220B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t *a14)
{
  v16 = *(v15 + 32 * a7 + 16);
  v17 = *a14;
  v18 = *a13 - 0x75332ED76621023DLL - ((((v14 - 124694624) & 0x76EB33F) + 0x133BDF859) & (2 * *a13));
  JUMPOUT(0x1002207C4);
}

uint64_t sub_100220C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 451 * (a5 ^ (a5 + 1));
  v27 = *(v25 - 148);
  v28 = v26 + *(v25 - 144) - 1352;
  *(v25 - 144) = v28;
  LOBYTE(v27) = v28 < v27;
  *(v25 - 137) = v27;
  return (*(v24 + 8 * ((((v26 ^ v27) & 1) * (v26 ^ 0x54E)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_100220C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = 11 * (v27 ^ 0x74);
  (*(v28 + 8 * ((v27 ^ 0x63F) + 1084)))(a22);
  *a10 = a27;
  return (*(v28 + 8 * (((a20 == 0x71166887D0A7693CLL) * ((((v29 - 1782) | 0x296) + 521) ^ 0x888)) ^ v29)))(0);
}

uint64_t sub_100220F68@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 2253) | 0xA0;
  (*(v20 + 8 * (a1 + 682)))();
  *(v18 + v19) = 0;
  *(v18 - 0x71166887D0A76934) = v21;
  *(v18 - 0x71166887D0A76930) = 164704100;
  (*(v20 + 8 * (v22 + 2775)))(v18 + v19);
  return (*(v20 + 8 * (((((((v22 + 76) & 0xD7) + 68) ^ (a17 == 0x1A8CA07156B7B2ABLL)) & 1) * (((v22 + 2121187148) & 0x819146D7 ^ 0xAEC6C852) + 1362702777)) ^ (v22 + 2121187148) & 0x819146D7)))(v17);
}

void sub_100221088()
{
  *(v1 + v2) = 0;
  *(v1 - 0x1A8CA07156B7B2A3) = 1488562574;
  *(v1 - 0x1A8CA07156B7B29FLL) = 0;
  (*(v3 + 8 * ((v0 ^ 0x1098) + 1756)))(v1 + v2);
  sub_10021CF98();
}

void sub_1002211B8(unint64_t a1, uint64_t a2)
{
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10022123C(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v3 + 8 * ((39 * v4) ^ v2)))(4294922293);
}

uint64_t sub_10022128C()
{
  *v0 = 0;
  *(v0 + 8) = 0x205585D268BFA235;
  *(v0 + 16) = 0;
  v2 = (*(v1 + 23584))(4096, 0x100004077774924);
  *v0 = v2;
  return (*(v1 + 8 * ((20 * (v2 == 0)) ^ 0x801)))();
}

uint64_t sub_100221358@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 - 694574375)))(v1);
  result = 4294922293;
  v5 = *(v3 - 96);
  return result;
}

uint64_t sub_100224ABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  qword_100314498 = 1000671541 * ((qword_100314498 - &v7 + qword_100314478) ^ 0x25209C7892F2405CLL);
  qword_100314478 = qword_100314498;
  v5 = 398132233 * ((2 * (&v8 & 0x130F2ADC81DB4528) - &v8 - 0x130F2ADC81DB4529) ^ 0x1D6B4662CA30F771);
  v8 = a2;
  v14 = -601934099 - v5;
  v10 = a1;
  v9 = v5 ^ a5;
  v12 = v5 ^ a3;
  v13 = a4;
  v15 = sub_10000F574 - v5;
  (*(&off_1002D7880 + (unk_10028613C ^ 0xCu) + 1929))(&v8);
  return v11;
}

uint64_t sub_100224C14(uint64_t a1)
{
  v1 = (qword_100314478 ^ qword_1003144A0) - &v5;
  qword_1003144A0 = 1000671541 * v1 + 0x78D52D199FB68F0CLL;
  qword_100314478 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * (((&v6 | 0xBCC87CDF8A18F0EFLL) - &v6 + (&v6 & 0x4337832075E70F10)) ^ 0x8E2A700E2019D0FLL);
  v6 = v2 ^ 0x9405E0C4;
  v3 = byte_100285F00[byte_100285E00[(53 * ((qword_100314478 - qword_1003144A0) ^ 0x5C))] ^ 0x20];
  v9 = sub_1000EC24C + v2;
  v7 = a1;
  (*(&off_1002D7880 + ((53 * ((qword_100314478 - qword_1003144A0) ^ 0x5C)) ^ v3) + 2185))(&v6);
  return v8;
}

uint64_t sub_100224D70(uint64_t a1)
{
  v1 = qword_100314490 - &v5 + qword_100314478;
  qword_100314490 = (1000671541 * v1) ^ 0x25209C7892F2405CLL;
  qword_100314478 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * ((2 * (&v6 & 0x5BC954F4024B22D0) - &v6 - 0x5BC954F4024B22D4) ^ 0x101C70D495ADB0CCLL);
  v6 = v2 ^ 0x9405E0C4;
  LOBYTE(v1) = 53 * ((53 * v1) ^ qword_100314478);
  v3 = byte_100285F00[byte_100285E00[v1] ^ 0x6A];
  v7 = a1;
  v9 = sub_1000EC1DC + v2;
  (*(&off_1002D7880 + (v1 ^ v3) + 2031))(&v6);
  return v8;
}

uint64_t sub_100224ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = qword_100314480 - &v7 + qword_100314478;
  qword_100314480 = 1000671541 * (v3 - 0x25209C7892F2405CLL);
  qword_100314478 = 1000671541 * (v3 ^ 0x25209C7892F2405CLL);
  v6[0] = sub_1000EBE8C;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v8[1] = (923786993 * ((&vars0 - 68587631 - 2 * ((&vars0 - 24) & 0xFBE96FA9)) ^ 0x910ED3E6)) ^ 0x6294CF9;
  v4 = byte_100285B00[byte_100285A00[(53 * ((qword_100314478 + qword_100314480) ^ 0x5C))] ^ 0xB5];
  v9 = v6;
  (*(&off_1002D7880 + ((53 * ((qword_100314478 + qword_100314480) ^ 0x5C)) ^ v4) + 1780))(v8);
  return v8[0];
}

uint64_t sub_100225018(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = qword_100314478 - qword_100314488 - &v15;
  qword_100314488 = 1000671541 * (v7 - 0x25209C7892F2405CLL);
  qword_100314478 = 1000671541 * (v7 ^ 0x25209C7892F2405CLL);
  v10[0] = sub_1000EBDE0;
  v10[1] = a1;
  v11 = a3;
  v10[2] = a2;
  v10[3] = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = v10;
  v8 = byte_100285D00[byte_100285C00[(53 * ((qword_100314478 + qword_100314488) ^ 0x5C))] ^ 0xE2];
  v16[1] = (923786993 * ((((&vars0 - 24) | 0x369D7D4) - (&vars0 - 24) + ((&vars0 - 24) & 0xFC962828)) ^ 0x698E6B9B)) ^ 0x6294CF9;
  (*(&off_1002D7880 + ((53 * ((qword_100314478 + qword_100314488) ^ 0x5C)) ^ v8) + 1891))(v16);
  return v16[0];
}

uint64_t sub_100225170()
{
  if (qword_100314CC0 != -1)
  {
    sub_1002303DC();
  }

  dispatch_sync(qword_100314CC8, &stru_1002DBE28);
  return dword_100314CB8;
}

void sub_1002251B8(id a1)
{
  if (!dword_100314CB8)
  {
    dword_100314CB8 = sub_100225224("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_100225224(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_100225378(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

char *sub_1002253D0(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_100225458(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_1002253D0(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

void sub_100225538(int a1, id a2)
{
  v2 = objc_retainBlock(a2);
  sub_100127764();
  sub_100127744(&_mh_execute_header, v3, v4, "%@ newRequest completionHandler: %@", v5, v6, v7, v8, 2u);
}

void sub_1002255D4(uint64_t a1)
{
  v1 = [*(a1 + 32) request];
  sub_100127764();
  sub_100127744(&_mh_execute_header, v2, v3, "%@ run old request completionHandler: %@", v4, v5, v6, v7, 2u);
}

void sub_100225670(uint64_t a1)
{
  v1 = [*(a1 + 32) request];
  sub_100127764();
  sub_100127744(&_mh_execute_header, v2, v3, "%@ completed request.completionHandler: %@", v4, v5, v6, v7, 2u);
}

void sub_10022570C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error occured while encoding array: %@", &v2, 0xCu);
}

void sub_100225784(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error occured while decoding array: %@", &v2, 0xCu);
}

void sub_1002258DC(void *a1, NSObject *a2)
{
  v3 = [a1 fm_logID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ deallocating...", &v4, 0xCu);
}

void sub_100225ABC()
{
  objc_opt_class();
  sub_10012F24C();
  v1 = v0;
  sub_100127744(&_mh_execute_header, v2, v3, "%@ (0x%lX) cancelled before it could be sent", v4, v5, v6, v7, v8);
}

void sub_100225B48()
{
  objc_opt_class();
  sub_10012F24C();
  v1 = v0;
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100225BDC()
{
  sub_10012F290();
  objc_opt_class();
  sub_10012F24C();
  v1 = sub_10012F270(v0);
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100225C70()
{
  sub_10012F290();
  objc_opt_class();
  sub_10012F24C();
  v1 = sub_10012F270(v0);
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100225D04()
{
  sub_10012F290();
  objc_opt_class();
  sub_10012F24C();
  v1 = sub_10012F270(v0);
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100225D9C()
{
  objc_opt_class();
  sub_10012F24C();
  v1 = v0;
  sub_100127744(&_mh_execute_header, v2, v3, "serverInteractionController completionHandler request - %@(0x%lX)", v4, v5, v6, v7, v8);
}

void sub_100225E2C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "beginExtensionRequestWithOptions failed (extension='%@', error='%@')", &v3, 0x16u);
}

void sub_100225EB4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  sub_100130118();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "XPCConnection interrupted (extension='%@', request='%@', connection='%@')", v5, 0x20u);
}

void sub_100225F30(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  sub_100130118();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "XPCConnection invalidated (extension='%@', request='%@', connection='%@')", v5, 0x20u);
}

void sub_100225FAC(id *a1, uint64_t *a2, NSObject *a3)
{
  v5 = [*a1 extension];
  v6 = [v5 identifier];
  v7 = *a2;
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Extension request invalidated (extension='%@', request='%@')", &v8, 0x16u);
}

void sub_100226124(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not obtain the PCRT Token %@", &v2, 0xCu);
}

void sub_10022619C(void *a1, NSObject *a2)
{
  v4 = [a1 fm_logID];
  v5 = [a1 alertFromServerResponse];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ V3Signing Session Found alert but cannot present it : %@", &v6, 0x16u);
}

void sub_1002262B8(void *a1, NSObject *a2)
{
  v4 = [a1 localizedDescription];
  v5 = [a1 underlyingErrors];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failure to evaluate policy %@, %@.", &v6, 0x16u);
}

void sub_10022645C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error disabling biometric ID : %@", &v2, 0xCu);
}

void sub_1002264D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FMDLostModeManager unable to obtain iCloud account credential %@ %@", &v3, 0x16u);
}

void sub_100226584(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening URL - %@", &v2, 0xCu);
}

void sub_1002265FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDSupportedAccessoryTypesRequest does not support %@ account", &v2, 0xCu);
}

void sub_1002266CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Activate failed: %@", &v2, 0xCu);
}

void sub_100226744(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Get controller info failed : %@", &v2, 0xCu);
}

void sub_1002267BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Connected External Accessories : %@", &v2, 0xCu);
}

void sub_1002268F4(NSObject *a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 environment];
  sub_10013E558();
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "Environment:\n%@", v4, 0xCu);
}

void sub_100226A7C()
{
  sub_10013E558();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "BUG: oldVersion: [%@] and newVersion: [%@] are the same!", v2, 0x16u);
}

void sub_100226B94(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Reading configurations from disk failed with error %@ %@", &v3, 0x16u);
}

void sub_100226D10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_100226D88(void *a1, NSObject *a2)
{
  v3 = [a1 contextKey];
  sub_10013E558();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDProtectedContext could not generate file path for key %@", v4, 0xCu);
}

void sub_100226F54(void *a1, NSObject *a2)
{
  v3 = [a1 contextKey];
  sub_10013E558();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Creating protected context file for key %@", v4, 0xCu);
}

void sub_100226FE8(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to save protected context file %@ %li", &v3, 0x16u);
}

void sub_100227098(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 fm_logID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error serializing volatile accessory info into JSON for %@ : %@", &v6, 0x16u);
}

void sub_100227148(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Digest: %@", &v2, 0xCu);
}

void sub_100227204(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not migrate existing file %{public}@.", &v2, 0xCu);
}

void sub_10022727C(os_log_t log)
{
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not delete existing file after migration %{public}@.", &v1, 0xCu);
}

void sub_100227394(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not set new passcode - error received:  %@", &v2, 0xCu);
}

void sub_100227450(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not update CDP with new passcode: %@", &v2, 0xCu);
}

void sub_1002274C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Found activation lock status key with invalid value %@", &v2, 0xCu);
}

void sub_100227554(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ _readIODeviceSupportsFindMy: Failed to decode PMU data %@", buf, 0x16u);
}

void sub_1002275BC(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = "IOPMUBootLPMCtrl";
  *(buf + 11) = 2048;
  *(buf + 3) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ _readIODeviceSupportsFindMy: Failed to fetch property: %s. dict=%p", buf, 0x20u);
}

void sub_10022767C()
{
  sub_10013E558();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002276EC()
{
  sub_100151048();
  sub_10015102C(v0, v1);
  sub_100150FDC();
  sub_100151000(&_mh_execute_header, v2, v3, "Error while stopping a sound on accessory: %@ [%@], %li", v4, v5, v6, v7, v8);
}

void sub_100227768()
{
  sub_10013E558();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002277D8()
{
  sub_10013E558();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100227848(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unable to get connectionController for accessory %@", buf, 0xCu);
}

void sub_1002278A0()
{
  sub_10013E558();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100227910(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unable to get safetyCheckController for accessoory %@", buf, 0xCu);
}

void sub_100227968()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002279A4()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002279E0()
{
  sub_10013E558();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "play sound not supported accessory connectionFlavor = %@ can soundflavor %@", v2, 0x16u);
}

void sub_100227A64()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100227AA0()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100227ADC()
{
  sub_100151048();
  sub_10015102C(v0, v1);
  sub_100150FDC();
  sub_100151000(&_mh_execute_header, v2, v3, "Error while playing a sound on accessory: %@ [%@], %li", v4, v5, v6, v7, v8);
}

void sub_100227B58()
{
  sub_100151048();
  sub_10015102C(v0, v1);
  sub_100150FDC();
  sub_100151000(&_mh_execute_header, v2, v3, "Error while picking audio route accessory: %@ [%@], %li", v4, v5, v6, v7, v8);
}

void sub_100227BD4()
{
  sub_100151048();
  v2 = [*(v1 + 32) accessory];
  [v0 code];
  sub_100150FDC();
  sub_100151000(&_mh_execute_header, v3, v4, "Error while stopping a sound on accessory: %@ [%@], %li", v5, v6, v7, v8, v9);
}

void sub_100227C6C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled ADIOTPRequest error: %u", v2, 8u);
}

void sub_100227D3C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error occured while decoding dictionary: %@", &v2, 0xCu);
}

void sub_100227DB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error encoding NSNull: %@", &v2, 0xCu);
}

void sub_100227E2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while decoding NSNull: %@", &v2, 0xCu);
}

void sub_100227F84(uint64_t a1, NSObject *a2)
{
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2048;
  v8 = a1;
  v4 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ (0x%lX) deallocating...", &v5, 0x16u);
}

void sub_10022802C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading server context %@", &v2, 0xCu);
}

void sub_1002280A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "unencodedAuthString is:  %@", &v2, 0xCu);
}

void sub_10022811C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Hex strings should have an even number of digits (%@)", &v2, 0xCu);
}

void sub_100228194(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "MAC address should be 6 bytes (%@)", &v2, 0xCu);
}

void sub_1002285F0(uint64_t a1)
{
  v6 = [*(a1 + 32) ratchetIdentifier];
  sub_10012F260();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100228684(uint64_t a1)
{
  v6 = [*(a1 + 32) ratchetIdentifier];
  sub_10012F260();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100228718(void *a1, void *a2)
{
  v3 = [a1 ratchetIdentifier];
  v4 = [a2 localizedDescription];
  v10 = [a2 underlyingErrors];
  sub_10012F260();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10022888C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Trigger T&L update with locale: %@", &v2, 0xCu);
}

void sub_100228904(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 isEnabled];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current T&L reporting state is %i", v3, 8u);
}

void sub_100228990(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Completed T&L update with error: %@", &v2, 0xCu);
}

void sub_100228A08(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a2 nextRetryTime];
  v9 = 138412802;
  v10 = v6;
  v11 = 2048;
  v12 = a1;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ (0x%lX) An earlier retry is already scheduled for %@", &v9, 0x20u);
}

void sub_100228C2C(void *a1, NSObject *a2)
{
  v4 = [a1 fm_logID];
  v5 = [a1 commandID];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Handling %@ with command id %@", &v6, 0x16u);
}

void sub_100228CF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FMDEventLoggerFacilityOnDiskStats Wrinting events to disk %@", &v2, 0xCu);
}

void sub_100228D68(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDEventLoggerFacilityOnDiskStats Unable to write %@", &v2, 0xCu);
}

void sub_100228DE0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 cachedLogFileURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not delete logs %@ %@", &v6, 0x16u);
}

void sub_100228EA4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#nvram - Error clearing out nvram property - result code %d", v2, 8u);
}

void sub_100228F1C(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = [a2 length];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#nvram - Error saving data property to NVRAM key %@ datalen %ld", &v4, 0x16u);
}

void sub_100228FBC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#nvram - Error retrieving data value from nvrm. result code %d", v2, 8u);
}

void sub_100229034(int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error generating data for sessionCreationRequest body: %ld", &v2, 0xCu);
}

void sub_10022912C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "sessionCreationRequest response body : %@", &v2, 0xCu);
}

void sub_100229258(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error in establising the key: %d", v2, 8u);
}

void sub_1002292D0(char a1, char a2, os_log_t log)
{
  v3 = @"none";
  if (a1)
  {
    v4 = @"found";
  }

  else
  {
    v4 = @"none";
  }

  if (a2)
  {
    v3 = @"found";
  }

  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "sessionCreationRequest did not return all the data. message1: %@, message2 : %@", &v5, 0x16u);
}

void sub_1002293B8(void *a1, NSObject *a2)
{
  v4 = [a1 fm_logID];
  v5 = [a1 httpResponseStatus];
  v6 = [a1 httpResponseError];
  v7 = 138412802;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: Error (%ld) %@", &v7, 0x20u);
}

void sub_1002294C8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error in signing the data: %d", v2, 8u);
}

void sub_1002295FC(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Sync FMIP Account deviceLocator provisioned: %i", v2, 8u);
}

void sub_1002296E0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Attempting to set new passcode: %@", &v2, 0xCu);
}

uint64_t sub_100229758()
{
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    return 0;
  }

  else
  {
    return IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  }
}

void sub_100229858(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error deserializing the json from the v5 signature request : %@", &v2, 0xCu);
}

void sub_100229914(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 dsid];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Inconsistent state: FMIP is enabled for dsid %@ but the paired device is asking for a signature for dsid %@. Sending back an error", &v6, 0x16u);
}

void sub_100229A08(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error while initiating lost mode exit request %@ for watch %@", &v4, 0x16u);
}

void sub_100229A94(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 length];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Signing data of length %lu", &v3, 0xCu);
}

void sub_100229C5C(void *a1, NSObject *a2)
{
  v3 = [a1 account];
  sub_10013E558();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMIP account %@ known by findmydeviced has gone missing from Accounts. Removing findmydeviced's record of this account", v4, 0xCu);
}

void sub_100229F10(void *a1)
{
  v1 = [a1 fmipStateChangeCriteria];
  sub_10013E558();
  sub_10016BD38();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100229FB4(void *a1)
{
  v1 = [a1 description];
  sub_10013E558();
  sub_10016BD38();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10022A0A8(void *a1)
{
  v1 = [a1 description];
  sub_10013E558();
  sub_10016BD38();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10022A370(void *a1, NSObject *a2)
{
  v4 = [a1 httpResponseStatus];
  v5 = [a1 httpResponseError];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error %ld trying to turn off Find My iPhone: %@", &v6, 0x16u);
}

void sub_10022A42C(char a1, NSObject *a2)
{
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "prefsAppBackgrounded = %@", &v3, 0xCu);
}

void sub_10022A4BC(void *a1)
{
  v6 = [a1 fm_logID];
  sub_10012F260();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10022A550(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100178478();
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10022A5EC(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100178478();
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10022A6FC()
{
  sub_10013E558();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10022A7E0(void *a1, NSObject *a2)
{
  v4 = [a1 container];
  v5 = [a1 stack];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "processObject container:%@ stack:%@", &v6, 0x16u);
}

void sub_10022A924()
{
  sub_10013E558();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10022A994()
{
  sub_10013E558();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10022AAD0()
{
  sub_10013E558();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unhandled configuration - coverage (%lu), device class (%lu)", v2, 0x16u);
}

void sub_10022AB54()
{
  v1[0] = 136315394;
  sub_10017BA58();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Failed to get follow up strings with error: %@", v1, 0x16u);
}

void sub_10022AC3C()
{
  v1[0] = 136315394;
  sub_10017BA58();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s - Failed to get follow up strings with error: %@", v1, 0x16u);
}

void sub_10022AFB4()
{
  sub_10013E558();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Not triggering the CFU. error (%@), fmipState (%lu)", v2, 0x16u);
}

void sub_10022B038(void *a1, NSObject *a2)
{
  v4 = [a1 httpResponseStatus];
  v5 = [a1 httpResponseError];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error %ld trying to unregister accessories : %@", &v6, 0x16u);
}

void sub_10022B20C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No command handler found for commandType: %@", &v2, 0xCu);
}

void sub_10022B298(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get connection to extension %@", &v2, 0xCu);
}

void sub_10022B310(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1001808F4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10022B39C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Extension with id = %@ not found", &v2, 0xCu);
}

void sub_10022B428()
{
  sub_1001808DC();
  sub_1001808F4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10022B498()
{
  sub_1001808DC();
  sub_1001808F4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10022B7BC(void *a1, NSObject *a2)
{
  v3 = [a1 audioChannelInfo];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FMDBluetoothAccessory setting channels %@", &v4, 0xCu);
}

void sub_10022B920(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FMDAccessoryRegistry registerDelegate %@", &v3, 0xCu);
}

void sub_10022B99C(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not delete accessory registry %@ %li", &v3, 0x16u);
}

void sub_10022BA38(uint64_t a1, NSObject *a2, double a3)
{
  v3 = *(*a1 + 40);
  v4 = 134218242;
  v5 = a3;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDAccessoryRegistry timeout / error waiting for dataSources. Retrying in %f %@", &v4, 0x16u);
}

void sub_10022BAC4(void *a1, NSObject *a2)
{
  ClassName = object_getClassName(a1);
  v5 = [a1 name];
  v6 = [a1 address];
  v7 = 136315650;
  v8 = ClassName;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s accessory (name: %@, MAC: %@) is missing its identifier", &v7, 0x20u);
}

void sub_10022BD8C(void *a1, NSObject *a2)
{
  v3 = [a1 commandParams];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "got commandParams = %@", &v4, 0xCu);
}

void sub_10022BE24(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "got lostModeInfoVersion = %@ accessoriesInLostMode = %@", &v3, 0x16u);
}

void sub_10022BEC0(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(*(*a2 + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Fetching protected context %@ : %@", &v5, 0x16u);
}

void sub_10022BF58(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Removing all protected contexts for key %@", &v3, 0xCu);
}

void sub_10022BFD4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Deleted protected context file %@", &v2, 0xCu);
}

void sub_10022C04C(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error fetching %@: %d", &v3, 0x12u);
}

void sub_10022C0FC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unlock state is %i", v2, 8u);
}

void sub_10022C174(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unlock since boot state is %i", v2, 8u);
}

void sub_10022C214(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not obtain the last modified date of PSC.sui %@ %@", &v3, 0x16u);
}

void sub_10022C29C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 url];
  v6 = 138412802;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  v10 = 2048;
  v11 = [a2 code];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could Not read file %@ %@ %li", &v6, 0x20u);
}

void sub_10022C4C8()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022C504()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022C698()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022C748(void *a1)
{
  v1 = [a1 name];
  sub_10013E558();
  sub_1001A8ABC(&_mh_execute_header, v2, v3, "Accessory %@ does not support setPhoneNumber operation", v4, v5, v6, v7, v8);
}

void sub_10022C7CC()
{
  sub_100151054();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022C808(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10013E558();
  sub_1001A8ABC(&_mh_execute_header, v2, v3, "requireDisableLocationWithCompletion finished with error %@.", v4, v5, v6, v7, v8);
}

void sub_10022C88C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "retry XPC activity XPC activity changed to state %ld with criteria %p", &v3, 0x16u);
}

void sub_10022C914(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "retry XPC activity triggered. Updating to done so that it can be cleaned. success : %d", v2, 8u);
}

void sub_10022C990(void *a1)
{
  v1 = [a1 fm_logID];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v2, v3, "%@ deallocating...", v4, v5, v6, v7, v8);
}

void sub_10022CAC8()
{
  sub_10013E558();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10022CBAC(void *a1)
{
  [a1 count];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v1, v2, "Read %ld tracked locations from persistent cache", v3, v4, v5, v6, v7);
}

void sub_10022CC24(void *a1)
{
  v1 = [a1 description];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v2, v3, "Read the following tracked locations from persistent cache:  %@", v4, v5, v6, v7, v8);
}

void sub_10022CCA8(void *a1)
{
  v1 = [a1 fm_logID];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v2, v3, "Removing tracked locations file for %@", v4, v5, v6, v7, v8);
}

void sub_10022CD2C()
{
  sub_100151054();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022CD68()
{
  sub_10013E558();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10022CDD8()
{
  sub_100151054();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022CE14()
{
  sub_100151054();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022CE50()
{
  sub_100151054();
  sub_10017A1A4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10022CE8C(void *a1)
{
  [a1 code];
  sub_10012F260();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10022CF3C(void *a1)
{
  v1 = [a1 fileURL];
  v2 = [v1 lastPathComponent];
  sub_10013E558();
  sub_10012F260();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10022CFF0(void *a1)
{
  [a1 code];
  sub_10012F260();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10022D224(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to fetch accessory from %@ with error %@", &v4, 0x16u);
}

void sub_10022D318(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not delete accessory location store %@ %li", &v3, 0x16u);
}

void sub_10022D484(void *a1, NSObject *a2)
{
  v3 = [a1 nextScheduledJanitorDate];
  sub_10013E558();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FMDAccessoryLocationStore janitor already scheduled %@", v4, 0xCu);
}

void sub_10022D614(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Wrinting events to disk %@", &v2, 0xCu);
}

void sub_10022D68C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDEventLoggerFacilityOnDisk Unable to write %@", &v2, 0xCu);
}

void sub_10022D72C(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = byte_1003149B0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FMDAutomationDeviceIdentity: isAutomationActive: %d", v1, 8u);
}

void sub_10022D87C(uint64_t a1, NSObject *a2)
{
  v3 = [FMDSecureLocationInfo stringFromPublishReason:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SecureLocationMonitor - didUpdateLocations from %@", &v4, 0xCu);
}

void sub_10022D920(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "locationManager didFailWithError %@", &v2, 0xCu);
}

void sub_10022D9F0()
{
  sub_10017BA58();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10022DA6C()
{
  sub_10017BA58();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10022DB68()
{
  sub_10017BA58();
  sub_100151020();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10022DD64(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open %@", buf, 0xCu);
}

void sub_10022DDBC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 directoryURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error while trying to read the contents of directory %@: %@", &v6, 0x16u);
}

void sub_10022DE6C(id *a1, NSObject *a2)
{
  v3 = [*a1 standardLocator];
  v4 = [v3 fm_logID];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Removing standard locator %@", &v5, 0xCu);
}

void sub_10022DFEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not load notification manager from disk %@", &v2, 0xCu);
}

void sub_10022E0E0(uint64_t a1, _DWORD *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = *a2;
  sub_1001C9000(&_mh_execute_header, a2, a3, "Successfully created assertion %@ with ID 0x%x", *v3, *&v3[8], *&v3[16]);
}

void sub_10022E294(void *a1, NSObject *a2)
{
  v3 = [a1 fm_logID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@: successful - wiping now!", &v4, 0xCu);
}

void sub_10022E32C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no mask in maskInfo %@", &v2, 0xCu);
}

void sub_10022E3A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no pattern in maskInfo %@", &v2, 0xCu);
}

void sub_10022E41C(void *a1, void *a2)
{
  v3 = [a1 username];
  v4 = [a2 username];
  sub_1001D34B8();
  sub_10012F260();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10022E4C8(void *a1)
{
  v1 = [a1 username];
  sub_10013E558();
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10022E554(uint64_t a1)
{
  v1 = [*(a1 + 40) username];
  sub_1001D34A4();
  sub_10012F260();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10022E6CC(void *a1, NSObject *a2)
{
  v4 = [a1 fm_logID];
  v5 = [a1 alertFromServerResponse];
  sub_1001D34B8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ Found alert : %@", v6, 0x16u);
}

void sub_10022E8F4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CLLocation+FMGeoLocatable unhandled location type %i", v2, 8u);
}

void sub_10022E96C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDCipherKeychainItemAdaptor failed to read data. Error - %@", &v2, 0xCu);
}

void sub_10022E9E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDCipherKeychainItemAdaptor failed to archive data. Error - %@", &v2, 0xCu);
}

void sub_10022EA5C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Logger Session became invalid %@", &v2, 0xCu);
}

void sub_10022EB84(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SecureLocationPublisher: shouldPublish is false. lastPublished %@", &v2, 0xCu);
}

void sub_10022ECD4(void *a1, NSObject *a2)
{
  v4 = [a1 objectAtIndexedSubscript:1];
  v5 = [v4 objectForKeyedSubscript:@"keystate"];
  v6 = [a1 objectAtIndexedSubscript:1];
  v7 = [v6 objectForKeyedSubscript:@"keyStateError"];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CKKSStatus bad key state. KeyState: %@. Error: %@", &v8, 0x16u);
}

void sub_10022EE88(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDBluetoothDiscoveryXPCProxy service terminated with error : %li", &v2, 0xCu);
}

void sub_10022EF00(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDBluetoothDiscoveryXPCProxy didEndDiscoveryWithError : %@", &v2, 0xCu);
}

void sub_10022F030(void *a1)
{
  v1 = [a1 description];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v2, v3, "Received SLC location %@", v4, v5, v6, v7, v8);
}

void sub_10022F140(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Started SLC refinement using %@", buf, 0xCu);
}

void sub_10022F1A0(void *a1)
{
  v1 = [a1 locator];
  v2 = [v1 fm_logID];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v3, v4, "Obtained final location for SLC refinement using %@", v5, v6, v7, v8, v9);
}

void sub_10022F23C(void *a1)
{
  v1 = [a1 locator];
  v2 = [v1 fm_logID];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v3, v4, "Stopped SLC refinement using %@", v5, v6, v7, v8, v9);
}

void sub_10022F34C(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Started SLC fallback using %@", buf, 0xCu);
}

void sub_10022F3AC(void *a1)
{
  v1 = [a1 locator];
  v2 = [v1 fm_logID];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v3, v4, "Obtained final location for SLC fallback using %@", v5, v6, v7, v8, v9);
}

void sub_10022F448(void *a1)
{
  v1 = [a1 locator];
  v2 = [v1 fm_logID];
  sub_10013E558();
  sub_1001651F4(&_mh_execute_header, v3, v4, "Stopped SLC fallback using %@", v5, v6, v7, v8, v9);
}

void sub_10022F53C(uint64_t a1, NSObject *a2)
{
  v3 = [objc_opt_class() defaultStorageLocation];
  sub_10013E558();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "read magSafe data store from %@", v4, 0xCu);
}

void sub_10022F6C0(id *a1, NSObject *a2)
{
  v3 = [*a1 audioChannelInfo];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FMDBluetoothAccessory setting channels %@", &v4, 0xCu);
}

void sub_10022F7C8(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 fm_logID];
  v6 = [a2 locationType];
  v7 = [a2 horizontalAccuracy];
  v8 = [a2 latitude];
  v9 = [a2 longitude];
  v10 = [a2 timestamp];
  v11 = 138413571;
  v12 = v5;
  v13 = 2048;
  v14 = v6;
  v15 = 2113;
  v16 = v7;
  v17 = 2113;
  v18 = v8;
  v19 = 2113;
  v20 = v9;
  v21 = 2112;
  v22 = v10;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ Received location with Position Type = (%ld), Accuracy = %{private}@, Latitude = %{private}@, Longitude = %{private}@, Timestamp = %@", &v11, 0x3Eu);
}

void sub_10022F9A4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 fm_logID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error serializing volatile device info into JSON for %@ : %@", &v6, 0x16u);
}

void sub_10022FA54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered a serializing error for the volatile device info : %@", &v2, 0xCu);
}

void sub_10022FC6C(void *a1, NSObject *a2)
{
  v4 = [a1 container];
  v5 = [a1 stack];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "container:%@ stack:%@ ", &v6, 0x16u);
}

void sub_10022FD98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while encoding: %@", &v2, 0xCu);
}

void sub_1002301A4(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not delete supported accessory registry %@ %li", &v3, 0x16u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}
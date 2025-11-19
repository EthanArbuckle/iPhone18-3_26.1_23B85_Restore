id sub_100142E0C(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [v2 deviceInfoForAccount:*(a1 + 32) accessory:*(a1 + 40)];

  return v3;
}

void sub_100142F60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) accessoryIdentifier];
  v4 = [WeakRetained accessory];
  v5 = [v4 accessoryIdentifier];
  if ([v3 isEqual:v5])
  {
    if (*(a1 + 48) != 1)
    {

      goto LABEL_10;
    }

    v6 = [WeakRetained accessoryIsConnected:*(a1 + 32)];

    if (v6)
    {
LABEL_10:
      if (([WeakRetained enqueuedQC] & 1) == 0)
      {
        v8 = sub_100002880();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AccessoryAction enqueuing QC.", v9, 2u);
        }

        [WeakRetained setEnqueuedQC:1];
        [WeakRetained setAccessory:*(a1 + 32)];
        [WeakRetained _enqueueQCAction];
        [WeakRetained terminate];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AccessoryAction accessory not connected - waiting.", buf, 2u);
  }

LABEL_14:
}

void sub_1001432B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) accessoryIdentifier];
  v3 = [WeakRetained accessory];
  v4 = [v3 accessoryIdentifier];
  v5 = [v2 isEqual:v4];

  if (v5)
  {
    [WeakRetained terminate];
  }
}

void sub_100143584(id a1)
{
  qword_1003145C8 = dispatch_queue_create("com.apple.icloud.findmydeviced.accessoryRegisterDigestSerialQueue", 0);

  _objc_release_x1();
}

void sub_100143BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 224), 8);
  _Block_object_dispose((v18 - 176), 8);
  _Block_object_dispose((v18 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100143C40(uint64_t a1)
{
  v2 = [*(a1 + 32) includeDeviceState];
  v3 = +[ServerDeviceInfo sharedInstance];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) accessory];
  if (v2)
  {
    [v3 completeDeviceInfoForAccount:v4 accessory:v5];
  }

  else
  {
    [v3 deviceInfoForAccount:v4 accessory:v5];
  }
  v6 = ;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);

  v7 = *(a1 + 48);
  v8 = [objc_opt_class() volatileKeysToExcludeFromRegisterDigest];
  v9 = [FMDDigestSanitizer sanitizeDictionary:*(*(*(a1 + 64) + 8) + 40) withExclusionKeys:v8];
  v10 = [*(a1 + 32) digestWithDeviceInfo:v9];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (([*(a1 + 32) force] & 1) == 0)
  {
    if (qword_1003145B0 && [qword_1003145B0 isEqualToData:*(*(*(a1 + 72) + 8) + 40)])
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v16 = *(a1 + 32);
        v17 = *(a1 + 56);
        v31 = 138412802;
        v32 = v15;
        v33 = 2048;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) Not sending register with cause %@ because there is already another register with the same registration information in-progress", &v31, 0x20u);
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v18 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 48)];
      v19 = [FMPreferencesUtil dataForKey:v18 inDomain:kFMDNotBackedUpPrefDomain];

      v20 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 48)];
      v21 = [AccessoryRegisterAction accessoryRegisterDigestForKey:v20];

      if (!v21)
      {
        v22 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 48)];
        [AccessoryRegisterAction saveAccessoryRegisterDigest:v19 forKey:v22];
      }

      if (v19 && [*(*(*(a1 + 72) + 8) + 40) isEqualToData:v19])
      {
        v23 = sub_100002880();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v25 = objc_opt_class();
          v26 = *(a1 + 32);
          v31 = 138412546;
          v32 = v25;
          v33 = 2048;
          v34 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) No need to register accessory, digests match.", &v31, 0x16u);
        }

        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    objc_storeStrong(&qword_1003145B0, *(*(*(a1 + 72) + 8) + 40));
    v27 = sub_100002880();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      v30 = *(a1 + 32);
      v31 = 138412546;
      v32 = v29;
      v33 = 2048;
      v34 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) Set inProgressAccessoryRegisterDigest to newRegisterDigest", &v31, 0x16u);
    }
  }
}

id sub_10014401C(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActingRequestDecorator);
  v3 = [(FMDActingRequestDecorator *)v2 registerDeviceContextForAccount:*(a1 + 32)];

  [v3 fm_safelyMapKey:@"cause" toObject:*(a1 + 40)];

  return v3;
}

id sub_1001440A0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) authId];
  [v2 fm_safeSetObject:v3 forKey:@"X-Apple-PrsId"];

  return v2;
}

void sub_100144110(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = v3;
  if (([v5 willRetry] & 1) == 0)
  {
    v6 = [v5 httpResponseError];
    if (v6 || [v5 httpResponseStatus] < 200 || objc_msgSend(v5, "httpResponseStatus") > 399)
    {
    }

    else if (([v5 cancelled] & 1) == 0)
    {
      v14 = sub_100002880();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 fm_logID];
        *buf = 138412546;
        v31 = v15;
        v32 = 2048;
        v33 = [v5 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
      }

      v16 = +[AccessoryRegisterAction sharedAccessoryRegisterDigestSerialQueue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100144514;
      v26[3] = &unk_1002CDD98;
      v17 = v5;
      v27 = v17;
      v28 = a1[4];
      v29 = WeakRetained;
      dispatch_async(v16, v26);

      if ([v17 httpResponseStatus]== 200)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1001446A0;
        v22[3] = &unk_1002CDD98;
        v23 = a1[5];
        v24 = a1[4];
        v25 = a1[6];
        dispatch_async(&_dispatch_main_q, v22);
      }

      v8 = v27;
      goto LABEL_12;
    }

    v7 = [v5 cancelled];
    v8 = sub_100002880();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v5 fm_logID];
        *buf = 138412290;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_11:
      }
    }

    else if (v9)
    {
      v10 = [v5 fm_logID];
      v11 = [v5 httpResponseStatus];
      v12 = [v5 httpResponseError];
      *buf = 138412802;
      v31 = v10;
      v32 = 2048;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_11;
    }

LABEL_12:

    v13 = +[AccessoryRegisterAction sharedAccessoryRegisterDigestSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100144724;
    block[3] = &unk_1002CDD98;
    v19 = v5;
    v20 = WeakRetained;
    v21 = v19;
    dispatch_async(v13, block);

    [WeakRetained terminate];
  }
}

void sub_100144514(uint64_t a1)
{
  v2 = qword_1003145B0;
  v3 = [*(a1 + 32) digestData];

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) digestData];
    v5 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 40)];
    [AccessoryRegisterAction saveAccessoryRegisterDigest:v4 forKey:v5];

    v6 = [*(a1 + 32) digestData];
    v7 = [*(a1 + 32) digestKey];
    [FMPreferencesUtil setData:v6 forKey:v7 inDomain:kFMDNotBackedUpPrefDomain];

    [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = objc_opt_class();
      v11 = *(a1 + 48);
      v12 = 138412546;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) Save newDigest to pref", &v12, 0x16u);
    }
  }
}

void sub_1001446A0(void *a1)
{
  v3 = [[AccessoryAction alloc] initWithAccount:a1[4] accessory:a1[5] requiresConnectivity:0 serverInteractionController:a1[6]];
  v1 = +[ActionManager sharedManager];
  v2 = [v1 enqueueAction:v3];
}

void sub_100144724(uint64_t a1)
{
  v2 = qword_1003145B0;
  v3 = [*(a1 + 32) digestData];

  if (v2 == v3)
  {
    v4 = qword_1003145B0;
    qword_1003145B0 = 0;

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
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@(0x%lX)-%@(0x%lX) Set inProgressAccessoryRegisterDigest to nil", &v12, 0x2Au);
    }
  }
}

void sub_10014495C(uint64_t a1)
{
  v2 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 32)];
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to delete register context for accessory %@", &v5, 0xCu);
  }

  [FMPreferencesUtil removeKey:v2 inDomain:kFMDNotBackedUpPrefDomain];
  v4 = [AccessoryRegisterAction contextKeyForAccessory:*(a1 + 32)];
  [AccessoryRegisterAction saveAccessoryRegisterDigest:0 forKey:v4];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "findmydeviced has been launched", v5, 2u);
  }

  v2 = +[FMDDaemon sharedInstance];
  [v2 initialize];

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_10014503C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10014505C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 httpResponseError];
  if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_5;
  }

  if ([v3 cancelled])
  {
LABEL_5:
    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 fm_logID];
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_10:
      }
    }

    else if (v8)
    {
      v9 = [v3 fm_logID];
      v10 = [v3 httpResponseStatus];
      v11 = [v3 httpResponseError];
      *buf = 138412802;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v13 = [v3 httpResponseHeaders];
  v25 = [v13 objectForKeyedSubscript:@"Last-Modified"];

  v14 = [v3 httpResponseHeaders];
  v24 = [v14 objectForKeyedSubscript:@"etag"];

  v23 = [FMDStandardAsset alloc];
  v15 = [WeakRetained asset];
  v16 = [v15 fileURL];
  v17 = [WeakRetained asset];
  v18 = [v17 assetType];
  v19 = [WeakRetained asset];
  v20 = [v19 url];
  v21 = [(FMDStandardAsset *)v23 initWithFileURL:v16 lastModified:v25 etag:v24 type:v18 url:v20];

  v22 = [v3 fileLocation];
  [WeakRetained _saveAsset:v21 fromLocation:v22];

LABEL_12:
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

void sub_100146878(uint64_t a1, void *a2)
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

void sub_100146BEC(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10022730C(v1);
  }

  v2 = [[FMIPConfig alloc] initSingleton];
  v3 = qword_1003145D0;
  qword_1003145D0 = v2;
}

void sub_100147AF8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v4)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100227450(v4, v5);
    }
  }

  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote Lock: CDP update result %i", v7, 8u);
  }
}

void sub_100147C6C(id a1, FMDRequest *a2)
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
      [FMDPreferencesMgr setNeedsLostModeExitAuth:0];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, FMDLostModeExitAuthCompleteNotification, 0, 0, 1u);
      v5 = sub_100002880();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v7 = [(FMDRequest *)v2 fm_logID];
      v14 = 138412546;
      v15 = v7;
      v16 = 2048;
      v17 = [(FMDRequest *)v2 httpResponseStatus];
      v8 = "%@: successful with status %ld.";
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
        v14 = 138412290;
        v15 = v7;
        v8 = "%@: Cancelled";
        v9 = v5;
        v10 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
LABEL_12:
      }
    }

    else if (v6)
    {
      v7 = [(FMDRequest *)v2 fm_logID];
      v11 = [(FMDRequest *)v2 httpResponseStatus];
      v12 = [(FMDRequest *)v2 httpResponseError];
      v14 = 138412802;
      v15 = v7;
      v16 = 2048;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v14, 0x20u);

      goto LABEL_12;
    }

LABEL_13:
  }
}

void sub_100147FF8(uint64_t a1, void *a2)
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

    v6 = [[FMDLocation alloc] initWithLocation:*(a1 + 32) eventType:0 positionType:255];
    [*(a1 + 40) sendTrackedLocations:v4 withCurrentLocation:v6];
  }

  else
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "No tracked locations available. Not sending anything", &v7, 2u);
    }
  }
}

NSDictionary *__cdecl sub_1001482EC(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_10014833C(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_1001483B8(id a1, FMDRequest *a2)
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

void sub_100148B58(id a1)
{
  qword_1003145E0 = objc_alloc_init(FMDLocalActivationLockInfoManager);

  _objc_release_x1();
}

void sub_100148CB8(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = [v2 retrieveMaskedAppleID];
  [*(a1 + 32) setMaskedAppleID:v3];

  v4 = [*(a1 + 32) store];
  v5 = [v4 retrieveActivationLockStatus];
  [*(a1 + 32) setActivationLockStatus:v5];

  v6 = [*(a1 + 32) store];
  v7 = [v6 retrieveOfflineFindingStatus];
  [*(a1 + 32) setOfflineFindingStatus:v7];

  v8 = [*(a1 + 32) store];
  v9 = [v8 retrieveOfflineFindingInfo];
  [*(a1 + 32) setOfflineFindingInfo:v9];

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) fm_logID];
    v12 = [*(a1 + 32) maskedAppleID];
    v13 = [*(a1 + 32) activationLockStatus];
    v14 = [*(a1 + 32) offlineFindingStatus];
    v15 = [*(a1 + 32) offlineFindingInfo];
    if (v15)
    {
      v16 = @"(not-nil)";
    }

    else
    {
      v16 = @"(nil)";
    }

    v17 = [*(a1 + 32) offlineFindingInfo];
    v18 = 138413570;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v16;
    v28 = 2048;
    v29 = [v17 length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Cached local AL/SP state from persistent store. maskedAppleID %@ AL %@ OfflineFinding %@ offlineFindingInfo %@ datalen %lu", &v18, 0x3Eu);
  }
}

void sub_100148FB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) fm_logID];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Got BA status - %@ with reason - %@", &v10, 0x20u);
  }

  v9 = [v5 isEqualToString:SPServiceStateEnabled];
  if ((v9 & 1) != 0 || [v5 isEqualToString:SPServiceStateDisabled])
  {
    [*(a1 + 32) updateOfflineFindingStatus:v9];
  }
}

void sub_100149190(uint64_t a1)
{
  v2 = [*(a1 + 32) activationLockStatus];
  if (!v2 || (v3 = v2, [*(a1 + 32) activationLockStatus], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v6 = *(a1 + 40), v4, v3, v6 != v5))
  {
    v7 = [NSNumber numberWithBool:*(a1 + 40)];
    v8 = [*(a1 + 32) store];
    [v8 updateActivationLockStatus:v7];

    [*(a1 + 32) setActivationLockStatus:v7];
    [*(a1 + 32) _postLocalActivationLockInfoChangedNotification];
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) fm_logID];
      v11 = v10;
      v12 = @"NO";
      if (*(a1 + 40))
      {
        v12 = @"YES";
      }

      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Updating activation lock status with %@", &v13, 0x16u);
    }
  }
}

void sub_1001493B0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[FMDServiceProvider activeServiceProvider];
    v3 = [v2 fmipState];
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL) != 2;
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v5 = sub_100002880();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) fm_logID];
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Overriding offlineFindingStatus to NO since FMIP is OFF", &v17, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [*(a1 + 32) offlineFindingStatus];
  if (!v7 || (v8 = v7, [*(a1 + 32) offlineFindingStatus], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v4 != v10))
  {
    v11 = [NSNumber numberWithBool:*(a1 + 40)];
    v12 = [*(a1 + 32) store];
    [v12 updateOfflineFindingStatus:v11];

    [*(a1 + 32) setOfflineFindingStatus:v11];
    [*(a1 + 32) _postLocalActivationLockInfoChangedNotification];
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) fm_logID];
      v15 = v14;
      v16 = @"NO";
      if (*(a1 + 40))
      {
        v16 = @"YES";
      }

      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Updating offlineFindingStatus with %@", &v17, 0x16u);
    }
  }
}

id sub_100149850(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 clearMaskedAppleID];

  [*(a1 + 32) setMaskedAppleID:0];
  v3 = *(a1 + 32);

  return [v3 _postLocalActivationLockInfoChangedNotification];
}

void sub_10014998C(uint64_t a1)
{
  v2 = objc_alloc_init(FMDActivationLockInfo);
  v3 = [*(a1 + 32) maskedAppleID];
  [v2 setMaskedAppleID:v3];

  v4 = [*(a1 + 32) activationLockStatus];
  [v2 setIsActivationLocked:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) offlineFindingStatus];
  [v2 setIsOfflineFindingEnabled:{objc_msgSend(v5, "BOOLValue")}];

  v6 = +[FMDRestrictedRegions sharedInstance];
  [v2 setIsRestrictedSKU:{objc_msgSend(v6, "isRestrictedSKU")}];

  [v2 setIsFindMyLPEMEnabled:{objc_msgSend(*(a1 + 32), "_readIODeviceSupportsFindMy")}];
  [*(a1 + 32) _addLocalizedStrings:v2];
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100149B0C;
  v10[3] = &unk_1002CD8B0;
  v8 = *(a1 + 40);
  v11 = v2;
  v12 = v8;
  v9 = v2;
  dispatch_async(v7, v10);
}

void sub_100149C04(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 updateOfflineFindingInfo:*(a1 + 40)];

  [*(a1 + 32) setOfflineFindingInfo:*(a1 + 40)];
  [*(a1 + 32) _postLocalActivationLockInfoChangedNotification];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100149CD4;
  block[3] = &unk_1002CE250;
  v5 = *(a1 + 48);
  dispatch_async(v3, block);
}

void sub_100149DC0(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOfflineFindingInfoInternal];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100149FB0;
    block[3] = &unk_1002CD8B0;
    v15 = *(a1 + 40);
    v14 = v2;
    dispatch_async(v3, block);

    v4 = v15;
  }

  else if ([*(a1 + 32) _isWithinDaemonStartupThreshold])
  {
    v5 = dispatch_time(0, 3000000000);
    v6 = [*(a1 + 32) storeAccessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100149FC8;
    v11[3] = &unk_1002CE228;
    v7 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v7;
    dispatch_after(v5, v6, v11);

    v4 = v12;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10014A0C4;
    v9[3] = &unk_1002CE250;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);

    v4 = v10;
  }
}

void sub_100149FC8(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fm_logID];
    v5 = 138412546;
    v6 = v3;
    v7 = 2048;
    v8 = 0x4008000000000000;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Executing fetchOfflineInfo after delay %f", &v5, 0x16u);
  }

  v4 = [*(a1 + 32) _fetchOfflineFindingInfoInternal];
  (*(*(a1 + 40) + 16))();
}

void sub_10014A228(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 clearOfflineFindingInfo];

  [*(a1 + 32) setOfflineFindingInfo:0];
  [*(a1 + 32) _postLocalActivationLockInfoChangedNotification];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A2F8;
  block[3] = &unk_1002CE250;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

id sub_10014A3A0(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 clearMaskedAppleID];

  [*(a1 + 32) setMaskedAppleID:0];
  v3 = [*(a1 + 32) store];
  [v3 updateActivationLockStatus:&__kCFBooleanFalse];

  [*(a1 + 32) setActivationLockStatus:0];
  v4 = [*(a1 + 32) store];
  [v4 updateOfflineFindingStatus:&__kCFBooleanFalse];

  [*(a1 + 32) setOfflineFindingStatus:0];
  v5 = [*(a1 + 32) store];
  [v5 clearOfflineFindingInfo];

  [*(a1 + 32) setOfflineFindingInfo:0];
  v6 = *(a1 + 32);

  return [v6 _postLocalActivationLockInfoChangedNotification];
}

void sub_10014AC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014ACD4(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if ((result + 1) >= 2)
  {
    return IOObjectRelease(result);
  }

  return result;
}

void sub_10014BFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014C014(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completion];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }
}

void sub_10014C8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014C940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 134217984;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) Timeout waiting for device to connect.", buf, 0xCu);
  }

  v5 = [WeakRetained accessory];
  v6 = [v5 connectionState];

  if (v6 == 1)
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"Timeout waiting for in-ear state.";
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.FMDAccessoryPlaySoundAction" code:1 userInfo:v7];
    [WeakRetained setTimeoutError:v8];

    v9 = [WeakRetained commandStatusForInternalAccessoryAudioSafetyStatus:{objc_msgSend(WeakRetained, "defaultAudioSafetyStatus")}];
  }

  else
  {
    v9 = [NSNumber numberWithInteger:qword_100312B18];
  }

  v10 = v9;
  [WeakRetained notifyCompletionWithStatus:v9];

  [WeakRetained terminate];
}

void sub_10014CC10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained terminated])
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 134218240;
      v76 = v4;
      v77 = 1024;
      LODWORD(v78) = [WeakRetained terminated];
      v5 = "AccessoryPlaySoundAction (0x%lX) attempting to execute after being terminated T%i";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0x12u);
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  if (![WeakRetained playingSound])
  {
    v3 = [WeakRetained accessory];
    if (![v3 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _executePlaySoundUsingExtensions];
      }

      else
      {
        v9 = sub_100002880();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          *buf = 134217984;
          v76 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) could not find an audio accessory", buf, 0xCu);
        }

        [*(a1 + 32) cancelTimer];
        v11 = [NSNumber numberWithInteger:qword_100312B10];
        [WeakRetained notifyCompletionWithStatus:v11];

        [WeakRetained terminate];
      }

      goto LABEL_78;
    }

    v3 = v3;
    v7 = [WeakRetained channels];
    if (![v7 count])
    {
      [WeakRetained cancelTimer];
      v12 = [WeakRetained rampDownDuration];
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 134218242;
        v76 = v14;
        v77 = 2112;
        v78 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PlaySoundAction (0x%lX) Stopping sound for accessory %@", buf, 0x16u);
      }

      v15 = [WeakRetained accessoryRegistry];
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10014DA20;
      v71[3] = &unk_1002CD4C8;
      v71[4] = WeakRetained;
      [v15 updateAccessory:v3 playbackChannels:v7 completion:v71];
      v16 = +[FMDFMIPManager sharedInstance];
      [v12 doubleValue];
      v18 = v17;
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10014DA88;
      v67[3] = &unk_1002CE2D8;
      v19 = v3;
      v20 = *(a1 + 32);
      v68 = v19;
      v69 = v20;
      v70 = WeakRetained;
      [v16 stopPlayingSoundForAccessory:v19 rampDownDuration:v67 completion:v18];

      goto LABEL_21;
    }

    if ([v3 connectionState]!= 1)
    {
      if ([WeakRetained forceConnection])
      {
        v21 = sub_100002880();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          *buf = 134218242;
          v76 = v22;
          v77 = 2112;
          v78 = v3;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) Waiting to play sound 'till accessory is connected : %@", buf, 0x16u);
        }

        v23 = [WeakRetained bluetoothManager];
        v24 = [v3 address];
        [v23 connectToDeviceAddress:v24];
      }

      goto LABEL_77;
    }

    if ([WeakRetained bypassInEarCheck])
    {
      goto LABEL_12;
    }

    v25 = +[FMSystemInfo sharedInstance];
    if ([v25 isInternalBuild])
    {
      v26 = [FMPreferencesUtil BOOLForKey:@"DisableInEarCheck" inDomain:kFMDNotBackedUpPrefDomain];

      if (v26)
      {
LABEL_12:
        v8 = 1;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v8 = [v3 playingSound];
LABEL_31:
    v27 = sub_100002880();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      *buf = 134218496;
      v76 = v28;
      v77 = 2050;
      v78 = v3;
      v79 = 2048;
      v80 = [v3 audioSafetyStatus];
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) audioAccessory<%{public}p>.inEar %lu", buf, 0x20u);
    }

    v29 = sub_100002880();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = [v3 playingSound];
      *buf = 134218496;
      v76 = v30;
      v77 = 2050;
      v78 = v3;
      v79 = 1024;
      LODWORD(v80) = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) audioAccessory<%{public}p>.playingSound %i", buf, 0x1Cu);
    }

    if (v8)
    {
      v32 = sub_100002880();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 32);
        *buf = 134217984;
        v76 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) ear check disabled.", buf, 0xCu);
      }

LABEL_39:
      [WeakRetained _playSoundNow:v3];
      goto LABEL_77;
    }

    v34 = [v3 audioSafetyStatus];
    if (v34 > 3)
    {
      if (v34 > 5)
      {
        if (v34 == 6)
        {
          v64 = sub_100002880();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = *(a1 + 32);
            *buf = 134217984;
            v76 = v65;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found onTableTop true - waiting for user warning.", buf, 0xCu);
          }

          v37 = &qword_100312B48;
        }

        else
        {
          if (v34 != 7)
          {
            goto LABEL_77;
          }

          v40 = sub_100002880();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(a1 + 32);
            *buf = 134217984;
            v76 = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found carryingCaseClosed true - waiting for user warning.", buf, 0xCu);
          }

          v37 = &qword_100312B50;
        }
      }

      else if (v34 == 4)
      {
        v51 = sub_100002880();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 32);
          *buf = 134217984;
          v76 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found onNeck true - waiting for user warning.", buf, 0xCu);
        }

        v37 = &qword_100312B38;
      }

      else
      {
        v35 = sub_100002880();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 32);
          *buf = 134217984;
          v76 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found onHead true - waiting for user warning.", buf, 0xCu);
        }

        v37 = &qword_100312B40;
      }
    }

    else
    {
      if (v34 <= 1)
      {
        if (v34)
        {
          if (v34 != 1)
          {
            goto LABEL_77;
          }

          goto LABEL_39;
        }

        v42 = sub_100002880();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a1 + 32);
          *buf = 134217984;
          v76 = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found inEar Unknown - waiting for update.", buf, 0xCu);
        }

        v44 = [WeakRetained inEarTimer];

        if (v44)
        {
          goto LABEL_77;
        }

        v45 = [FMDispatchTimer alloc];
        v46 = [*(a1 + 32) inEarDetectionTimeout];
        [v46 doubleValue];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_10014D8A4;
        v72[3] = &unk_1002CD478;
        v47 = *(a1 + 32);
        v72[4] = WeakRetained;
        v72[5] = v47;
        v48 = [v45 initWithQueue:&_dispatch_main_q timeout:v72 completion:?];
        [WeakRetained setInEarTimer:v48];

        v49 = [WeakRetained inEarTimer];
        [v49 start];

        v12 = sub_100002880();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v50 = *(a1 + 32);
          *buf = 134217984;
          v76 = v50;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) started pending in ear detection timer (from unknown).", buf, 0xCu);
        }

LABEL_21:

LABEL_77:
        goto LABEL_78;
      }

      if (v34 == 2)
      {
        v53 = sub_100002880();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = *(a1 + 32);
          *buf = 134217984;
          v76 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found inEar pending - waiting for other bud to report.", buf, 0xCu);
        }

        v55 = [WeakRetained inEarTimer];

        if (!v55)
        {
          v56 = [FMDispatchTimer alloc];
          v57 = [*(a1 + 32) inEarDetectionTimeout];
          [v57 doubleValue];
          v59 = v58;
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_10014D7F4;
          v73[3] = &unk_1002CDD98;
          v73[4] = *(a1 + 32);
          v73[5] = WeakRetained;
          v74 = v3;
          v60 = [v56 initWithQueue:&_dispatch_main_q timeout:v73 completion:v59];
          [WeakRetained setInEarTimer:v60];

          v61 = [WeakRetained inEarTimer];
          [v61 start];

          v62 = sub_100002880();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = *(a1 + 32);
            *buf = 134217984;
            v76 = v63;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) started pending in ear detection timer (from pending).", buf, 0xCu);
          }
        }

        goto LABEL_77;
      }

      v38 = sub_100002880();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 32);
        *buf = 134217984;
        v76 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) found inEar true - waiting for user warning.", buf, 0xCu);
      }

      v37 = &qword_100312B20;
    }

    v66 = [NSNumber numberWithInteger:*v37];
    [WeakRetained notifyCompletionWithStatus:v66];

    [WeakRetained terminate];
    goto LABEL_77;
  }

  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 134218240;
    v76 = v6;
    v77 = 1024;
    LODWORD(v78) = [WeakRetained playingSound];
    v5 = "AccessoryPlaySoundAction (0x%lX) attempting to execute after starting playback P%i";
    goto LABEL_7;
  }

LABEL_78:
}

id sub_10014D7F4(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) done waiting for in-ear, playing sound now.", &v5, 0xCu);
  }

  return [*(a1 + 40) _playSoundNow:*(a1 + 48)];
}

void sub_10014D8A4(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10014D938;
  v3[3] = &unk_1002CD478;
  v4 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  dispatch_sync(v2, v3);
}

id sub_10014D938(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AccessoryPlaySoundAction (0x%lX) done waiting for in-ear. Asking for audio safety warning confirmation.", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 commandStatusForInternalAccessoryAudioSafetyStatus:{objc_msgSend(v4, "defaultAudioSafetyStatus")}];
  [v4 notifyCompletionWithStatus:v5];

  return [*(a1 + 40) terminate];
}

void sub_10014DA20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:qword_100312B10];
  [v1 notifyCompletionWithStatus:v2];
}

void sub_10014DA88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1002276EC();
    }
  }

  v5 = [*(a1 + 40) discovery];
  [v5 stopDiscovery];

  [*(a1 + 48) terminate];
}

void sub_10014DC54(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_10017DBC8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100227768();
    }
  }
}

void sub_10014EBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose((v44 - 176), 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_10014ECA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:qword_100312B10];
  [v1 notifyCompletionWithStatus:v2];
}

void sub_10014ED10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10017DBC8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1002276EC();
    }
  }

  [*(a1 + 40) terminate];
}

void sub_10014ED80(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v5 = sub_10017DBC8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100227A64();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10014EDF0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_10017DBC8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a2;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "safe = %d alertType = %@ error = %@", v13, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10014EF08(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10017DBC8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "discovery started with error %@", &v4, 0xCu);
  }
}

void sub_10014EFB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10017DBC8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSDate date];
    *buf = 138412546;
    v38 = v5;
    v39 = 2112;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "completion called at %@ error = %@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = sub_10017DBC8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100227AA0();
    }

    v7 = [*(a1 + 32) timeoutDate];
    v8 = +[NSDate date];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if ([*(a1 + 32) playSoundRetryCounter] > 5 || v10 < 1.0)
    {
      v26 = sub_100002880();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 48);
        v30 = [*(a1 + 32) playSoundRetryCounter];
        *buf = 138412802;
        v38 = v29;
        v39 = 2048;
        v40 = v10;
        v41 = 2048;
        v42 = v30;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Timed out waiting for accessory[%@]: wait time remaining: %lu for retry count: %lu", buf, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v28 = [NSNumber numberWithInteger:qword_100312B18];
      [WeakRetained notifyCompletionWithStatus:v28];

      [*(a1 + 32) terminate];
    }

    else
    {
      v11 = dispatch_time(0, 1000000000);
      v12 = [*(a1 + 32) serialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10014F5F4;
      block[3] = &unk_1002CD4C8;
      block[4] = *(a1 + 32);
      dispatch_after(v11, v12, block);
    }
  }

  else
  {
    [*(a1 + 32) setPlayingSound:1];
    [*(a1 + 32) cancelTimer];
    v13 = objc_loadWeakRetained((a1 + 56));
    v14 = *(a1 + 40);
    v15 = [v13 accessory];
    v16 = [v13 channels];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10014F484;
    v35[3] = &unk_1002CD518;
    objc_copyWeak(&v36, (a1 + 56));
    [v14 updateAccessory:v15 playbackChannels:v16 completion:v35];

    v17 = +[NSDate date];
    v18 = [FMDispatchTimer alloc];
    v19 = &_dispatch_main_q;
    v20 = [v13 duration];
    [v20 doubleValue];
    v22 = v21;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10014F4F8;
    v32[3] = &unk_1002CE3B8;
    objc_copyWeak(&v34, (a1 + 56));
    v32[4] = *(a1 + 32);
    v23 = v17;
    v33 = v23;
    v24 = [v18 initWithQueue:&_dispatch_main_q timeout:v32 completion:v22];
    [v13 setTimeoutTimer:v24];

    v25 = [v13 timeoutTimer];
    [v25 start];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
  }
}

void sub_10014F484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSNumber numberWithInteger:qword_100312B10];
  [WeakRetained notifyCompletionWithStatus:v1];
}

void sub_10014F4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_10017DBC8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:*(a1 + 40)];
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) ending, sound played %f", &v7, 0x16u);
  }

  [WeakRetained terminate];
}

void sub_100150014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100150040(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!v3)
  {
    v16 = [*(a1 + 40) accessoryRegistry];
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100150754;
    v36[3] = &unk_1002CD518;
    objc_copyWeak(&v37, (a1 + 64));
    [v16 updateAccessory:v17 playbackChannels:v18 completion:v36];
    v19 = +[NSDate date];
    v20 = [FMDispatchTimer alloc];
    v21 = &_dispatch_main_q;
    [*(a1 + 56) doubleValue];
    v23 = v22;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001507C8;
    v33[3] = &unk_1002CE3B8;
    objc_copyWeak(&v35, (a1 + 64));
    v33[4] = *(a1 + 40);
    v24 = v19;
    v34 = v24;
    v25 = [v20 initWithQueue:&_dispatch_main_q timeout:v33 completion:v23];
    [WeakRetained setTimeoutTimer:v25];

    v26 = [WeakRetained timeoutTimer];
    [v26 start];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);

    goto LABEL_14;
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100227ADC();
  }

  v6 = [v3 domain];
  if (![v6 isEqualToString:kFMDAccessoryPlaySoundErrorDomain])
  {

    goto LABEL_13;
  }

  v7 = [v3 code] == 0;

  if (!v7)
  {
LABEL_13:
    v27 = [NSNumber numberWithInteger:qword_100312B18];
    [WeakRetained notifyCompletionWithStatus:v27];

    [WeakRetained terminate];
    goto LABEL_14;
  }

  v8 = [WeakRetained timeoutDate];
  v9 = +[NSDate date];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *buf = 134218240;
    v43 = v13;
    v44 = 2048;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) waiting for routable accessory for: %lu", buf, 0x16u);
  }

  if ([*(a1 + 40) playSoundRetryCounter] > 5 || v11 < 0.0)
  {
    v28 = sub_100002880();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      v31 = [*(a1 + 40) playSoundRetryCounter];
      *buf = 138412802;
      v43 = v30;
      v44 = 2048;
      v45 = v11;
      v46 = 2048;
      v47 = v31;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Timed out routing for accessory[%@]: wait time remaining: %lu for retry count: %lu", buf, 0x20u);
    }

    v29 = [NSNumber numberWithInteger:qword_100312B18];
    [WeakRetained notifyCompletionWithStatus:v29];

    [*(a1 + 40) terminate];
  }

  else
  {
    v14 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100150550;
    block[3] = &unk_1002CE408;
    v32 = *(a1 + 32);
    v15 = v32.i64[0];
    v39 = vextq_s8(v32, v32, 8uLL);
    v41 = v11;
    v40 = WeakRetained;
    dispatch_after(v14, &_dispatch_main_q, block);
  }

LABEL_14:
}

void sub_100150550(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) playSoundRetryCounter];
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction: RETRY: %lu", buf, 0xCu);
  }

  v4 = +[FMDFMIPManager sharedInstance];
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100150698;
  v9[3] = &unk_1002CE2D8;
  v7 = v5;
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 32);
  [v4 waitForRoutableAccessory:v7 timeout:v9 completion:v6];
}

void sub_100150698(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100227B58();
    }

    v5 = *(a1 + 40);
    v6 = [NSNumber numberWithInteger:qword_100312B18];
    [v5 notifyCompletionWithStatus:v6];

    [*(a1 + 48) terminate];
  }

  else
  {
    [*(a1 + 40) setPlayingSound:0];
    [*(a1 + 40) _playSoundNow:*(a1 + 32)];
  }
}

void sub_100150754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSNumber numberWithInteger:qword_100312B10];
  [WeakRetained notifyCompletionWithStatus:v1];
}

void sub_1001507C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:*(a1 + 40)];
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryPlaySoundAction (0x%lX) ending, sound played %f", &v7, 0x16u);
  }

  [WeakRetained terminate];
}

void sub_100150C00(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100227BD4();
    }
  }

  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop sound from panning done!", v5, 2u);
  }
}

void sub_100151000(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

id sub_10015102C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return [a2 code];
}

void sub_1001515AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[FMDNanoRegistryAccessory alloc] initWithNRDevice:v3];

  [(FMDNanoRegistryAccessory *)v6 setMigrationPossible:1];
  v4 = *(a1 + 32);
  v5 = [(FMDNanoRegistryAccessory *)v6 accessoryIdentifier];
  [v4 fm_safeSetObject:v6 forKey:v5];
}

void sub_100151774(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32) || ([v10 valueForProperty:?], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v5 = v10, v4))
  {
    v6 = [[FMDNanoRegistryAccessory alloc] initWithNRDevice:v10];
    v7 = *(a1 + 40);
    v8 = [(FMDNanoRegistryAccessory *)v6 accessoryIdentifier];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      [(FMDNanoRegistryAccessory *)v6 setMigrationPossible:1];
    }

    [*(a1 + 48) addObject:v6];

    v5 = v10;
  }
}

id sub_100151958(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_1002DCE08 table:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100151BD0(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([a1[4] containsObject:v7] & 1) == 0)
  {
    v6 = [a1[6] _digestObject:v5 withExclusionKeys:a1[4]];
    if (v6)
    {
      [a1[5] setObject:v6 forKey:v7];
    }
  }
}

uint64_t sub_100151D64(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) _digestObject:a2 withExclusionKeys:*(a1 + 32)];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_100151DCC(id a1)
{
  v1 = [[FMDSystemConfig_ios alloc] initSingleton];
  v2 = qword_1003145F0;
  qword_1003145F0 = v1;

  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = qword_1003145F0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#start - inited system config instance %@", &v4, 0xCu);
  }
}

void sub_100151FC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  *(*(a1 + 32) + 104) = 1;
}

void sub_100152354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015236C(double *a1)
{
  v2 = *(*(a1 + 4) + 96);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 5) + 8) + 40), v2);
  }

  else
  {
    v3 = objc_opt_new();
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 6);
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching BA-UUID with timeout - %f", buf, 0xCu);
    }

    v6 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:a1[6]];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1001524F4;
    v12 = &unk_1002CE578;
    v7 = *(a1 + 5);
    v13 = v6;
    v14 = v7;
    v8 = v6;
    [v3 getLocalPairingDataWithCompletion:&v9];
    [v8 wait];
    objc_storeStrong((*(a1 + 4) + 96), *(*(*(a1 + 5) + 8) + 40));
  }
}

id sub_1001524F4(uint64_t a1, void *a2)
{
  v3 = [a2 UUIDString];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return [v6 signal];
}

void sub_100152554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got BA status - %@ with reason - %@", &v9, 0x16u);
  }

  if ([v5 isEqualToString:SPServiceStateEnabled])
  {
    v8 = 3;
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = v8;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:SPServiceStateDisabled])
  {
    v8 = 2;
    goto LABEL_7;
  }

LABEL_8:
  [*(a1 + 32) signal];
}

void sub_100153AB4(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100227EB8(v1);
  }

  v2 = [[FMDXPCManager alloc] initSingleton];
  v3 = qword_100314608;
  qword_100314608 = v2;
}

id *sub_100154E2C(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = result;
    v6 = (a2 + a3);
    do
    {
      v7 = *v6++;
      result = [v5[4] appendFormat:@"%02lx", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_10015593C(id a1)
{
  qword_100314618 = objc_alloc_init(FMDSharedConfigurationManager);

  _objc_release_x1();
}

void sub_100155B00(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

id sub_100155B78(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_100155F58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100155F8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(*(a1[5] + 8) + 40) lock];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = 1;
  [*(*(a1[5] + 8) + 40) unlock];
  if ((v6 & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  return v6 ^ 1u;
}

void sub_100156018(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100228220();
    }
  }
}

void sub_1001560B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) invalidate];
  if ((*(*(a1 + 48) + 16))())
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"true";
      v8 = *(a1 + 40);
      v9 = 138543874;
      if (!a2)
      {
        v7 = @"false";
      }

      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "T&L device coverage %{public}@ for serialNumber: %@, error: %@", &v9, 0x20u);
    }
  }
}

void sub_1001561C8(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
  if ((*(*(a1 + 48) + 16))())
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100228288(a1, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  dispatch_source_cancel(*(a1 + 40));
}

void sub_100156688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_1001566D4(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);

  return [v5 unlock];
}

uint64_t sub_100156738(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100228220();
  }

  v3 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return (*(*(a1 + 32) + 16))();
}

void sub_1001567D8(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void sub_100156C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_100156CB0(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);

  return [v5 unlock];
}

uint64_t sub_100156D14(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100156D88(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void sub_100157184(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001571B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(*(a1[5] + 8) + 40) lock];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = 1;
  [*(*(a1[5] + 8) + 40) unlock];
  if ((v6 & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  return v6 ^ 1u;
}

void sub_100157244(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002283C8();
    }
  }
}

void sub_1001572E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) invalidate];
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = sub_100002880();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100228430();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "postTheftAndLossCFU: Requested a CFU (shouldEnable: %d)", v8, 8u);
    }
  }
}

void sub_1001573E4(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
  if ((*(*(a1 + 40) + 16))())
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100228498(v3);
    }
  }

  dispatch_source_cancel(*(a1 + 32));
}

void sub_1001577DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100157810(void *a1, void *a2)
{
  v3 = a2;
  [*(*(a1[5] + 8) + 40) lock];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = 1;
  [*(*(a1[5] + 8) + 40) unlock];
  if ((v5 & 1) == 0)
  {
    (*(a1[4] + 16))();
  }

  return v5 ^ 1u;
}

void sub_100157894(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002284DC();
    }
  }
}

void sub_100157930(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = sub_100002880();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100228544();
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "clearTheftAndLossCFU: Cleared a CFU", v6, 2u);
    }
  }
}

void sub_1001579E8(uint64_t a1)
{
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
  if ((*(*(a1 + 40) + 16))())
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002285AC(v3);
    }
  }

  dispatch_source_cancel(*(a1 + 32));
}

void sub_100157C9C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could Not complete command notify : %@", &v4, 0xCu);
    }
  }
}

NSDictionary *__cdecl sub_1001580BC(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_10015810C(uint64_t a1)
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

void sub_1001581A8(uint64_t a1, void *a2)
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

uint64_t sub_100158A28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100158A40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100158E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) handleRatchetError:v6];
  }

  else if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:&off_1002E7A98];
    v8 = sub_10017DEB4();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) ratchetIdentifier];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ratchet armed %@, proceeding with operation.", &v16, 0xCu);
      }

      v11 = [*(a1 + 32) currentTask];
      [v11 finishWithNoResult];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1002285F0(a1);
      }

      v11 = [*(a1 + 32) currentTask];
      v15 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:0];
      [v11 finishWithError:v15];
    }
  }

  else
  {
    v12 = sub_10017DEB4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100228684(a1);
    }

    v13 = [*(a1 + 32) currentTask];
    v14 = [FMDRatchetManager ratchetErrorDeniedWithUnderlyingError:0];
    [v13 finishWithError:v14];
  }
}

void sub_10015951C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Exception caught in -URLByReplacingHost: -- %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1001594D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_10015ACB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015ACD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v23 = 138413058;
    v24 = v3;
    v25 = 2048;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v23, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_7;
  }

  if ([v3 cancelled])
  {
LABEL_7:
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
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v23, 0xCu);
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
      v23 = 138412802;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v23, 0x20u);
    }

    goto LABEL_12;
  }

  v11 = [v3 httpResponseBody];
  v17 = sub_10000BE38();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v3 httpResponseBody];
    v19 = [v18 objectForKeyedSubscript:@"statusCode"];
    v23 = 138412546;
    v24 = v19;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Got server response code %@ for request %@", &v23, 0x16u);
  }

  v20 = [v3 httpResponseBody];
  v21 = [v20 objectForKeyedSubscript:@"statusCode"];
  v22 = [v21 isEqualToString:@"200"];

  if (v22)
  {
    v13 = [WeakRetained registry];
    [v13 updateSupportedAccessoryTypes:v11];
LABEL_12:
  }

LABEL_13:

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }
}

void sub_10015B1EC(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100228848(v1);
  }

  v2 = objc_alloc_init(ServerDeviceInfo);
  v3 = qword_100314638;
  qword_100314638 = v2;
}

void sub_10015CE30(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100228990(v2, v3);
  }
}

void sub_10015DB90(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Retrying request now...", &v9, 0xCu);
  }

  v4 = +[NSDate date];
  [*(a1 + 32) setLastRetryTime:v4];

  v5 = *(a1 + 32);
  v6 = [v5 nextRetryType];
  [v5 _incrementRetryCountForType:v6];

  v7 = [*(a1 + 32) retryAction];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
  }
}

void sub_10015EE40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10015EFE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained synchronizer];
  [v1 signal];
}

void sub_10015F59C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v12 = @"status";
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v13 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 didHandleCommandWithAckData:v10];
  }

  else
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = &off_1002E8D68;
    }

    [*(a1 + 32) didHandleCommandWithAckData:v11];
  }
}

void sub_10015F6AC(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = +[FMDStartupRegisterManager sharedInstance];
    [v2 eventDidOccur:10];
  }
}

void sub_10015F9A8(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = +[FMDStartupRegisterManager sharedInstance];
    [v2 eventDidOccur:10];
  }
}

void sub_10015FD28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) dictionaryForError:v6];
    [v4 addObject:v5];
  }
}

void sub_100160990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _logEvent:*(a1 + 32)];
}

void sub_100160D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100160D54(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v15 = a2;
  v7 = [v15 groupValue];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) precision];
  [v10 doubleValue];
  v12 = v11;

  v13 = *(a1 + 48) - v9;
  if (v13 >= 0.0)
  {
    v14 = *(a1 + 48) - v9;
  }

  else
  {
    v14 = -v13;
  }

  if (v14 <= v12)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = v14 <= v12;
}

void sub_100160FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100161010(uint64_t a1)
{
  v6 = [*(a1 + 32) logs];
  v2 = [v6 copy];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100161328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained setLogs:?];
  }

  else
  {
    v4 = +[NSMutableDictionary dictionary];
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

void sub_100161550(id a1)
{
  qword_100314648 = objc_alloc_init(FMDNVRAMUtil);

  _objc_release_x1();
}

void sub_100162E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) fm_logID];
    v9 = *(a1 + 40);
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Future completed for command %@", buf, 0x16u);
  }

  if (v6)
  {
    v10 = *(a1 + 32);
    v21 = @"status";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v22 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v10 didHandleCommandWithAckData:v12];

    [*(a1 + 48) removeFutureForCommandId:*(a1 + 40)];
  }

  else
  {
    v13 = *(a1 + 32);
    if (v5)
    {
      [*(a1 + 32) didHandleCommandWithAckData:v5];
    }

    else
    {
      v14 = [NSNumber numberWithInteger:qword_100312B10, @"status"];
      v20 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v13 didHandleCommandWithAckData:v15];
    }

    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 56);
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDCommandHandlerMessage marking command complete %@", buf, 0xCu);
    }

    v18 = [*(a1 + 64) commandContext];
    [v18 setActionCompleted:*(a1 + 56)];
  }
}

id sub_1001630CC(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

id sub_100163184(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

id sub_10016323C(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

id sub_1001632F4(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 32)];
}

NSDictionary *__cdecl sub_100163840(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100163890(uint64_t a1)
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

void sub_10016392C(uint64_t a1, void *a2)
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

void sub_1001645AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_55;
  }

  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_6;
  }

  if (([v3 cancelled] & 1) == 0)
  {
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v3 fm_logID];
      *buf = 138412546;
      v53 = v17;
      v54 = 2048;
      v55 = [v3 httpResponseStatus];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
    }

    v9 = [v3 httpResponseBody];
    v18 = [v9 count];
    v19 = sub_100002880();
    v10 = v19;
    if (!v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100229378();
      }

      goto LABEL_51;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10022912C(v9, v10);
    }

    v10 = [v9 objectForKeyedSubscript:@"message1"];
    v20 = +[NSNull null];
    v21 = 0;
    if (([v10 isEqual:v20]& 1) == 0 && v10)
    {
      v21 = [[NSData alloc] initWithBase64EncodedString:v10 options:1];
    }

    v22 = [v9 objectForKeyedSubscript:@"message2"];
    v23 = +[NSNull null];
    if (([v22 isEqual:v23] & 1) != 0 || !v22)
    {

      v26 = 0;
      v24 = 0;
      v25 = v21 != 0;
    }

    else
    {
      v24 = [[NSData alloc] initWithBase64EncodedString:v22 options:1];

      v25 = v21 != 0;
      v26 = v24 != 0;
      if (v21 && v24)
      {
        v27 = sub_100002880();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_1002291A4();
        }

        v28 = sub_100002880();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_1002291D8(a1);
        }

        v29 = sub_100224ABC([*(a1 + 32) pscSessionRef], objc_msgSend(v21, "bytes"), objc_msgSend(v21, "length"), objc_msgSend(v24, "bytes"), objc_msgSend(v24, "length"));
        if (v29)
        {
          v30 = v29;
          v31 = sub_100002880();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            sub_100229258(v30, v31);
          }

          v32 = [*(a1 + 32) pscError];
          if (v32)
          {
            [*(a1 + 32) setPscError:v32];
          }

          else
          {
            v50 = @"kFMDUnderlyingErrorCodeKey";
            v47 = [NSNumber numberWithInt:v30];
            v51 = v47;
            v44 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v45 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:2 userInfo:v44];
            [*(a1 + 32) setPscError:v45];
          }

          [*(a1 + 32) _destroySession];
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    v36 = sub_100002880();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1002292D0(v25, v26, v36);
    }

    v37 = [*(a1 + 32) pscError];
    if (v37)
    {
      [*(a1 + 32) setPscError:v37];
    }

    else
    {
      v48 = @"kFMDUnderlyingErrorCodeKey";
      v38 = [NSNumber numberWithInteger:(v21 == 0) | (2 * (v24 == 0))];
      v49 = v38;
      [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v46 = v21;
      v39 = v24;
      v41 = v40 = v22;
      v42 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:7 userInfo:v41];
      [*(a1 + 32) setPscError:v42];

      v22 = v40;
      v24 = v39;
      v21 = v46;
    }

    goto LABEL_50;
  }

LABEL_6:
  v5 = [v3 cancelled];
  v6 = sub_100002880();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 fm_logID];
      *buf = 138412290;
      v53 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    v9 = [*(a1 + 32) pscError];
    if (!v9)
    {
      v10 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:6 userInfo:0];
      [*(a1 + 32) setPscError:v10];
LABEL_51:

      goto LABEL_52;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002293B8(v3, v7);
    }

    v11 = [v3 httpResponseError];

    v12 = [*(a1 + 32) pscError];
    v9 = v12;
    if (v11)
    {
      if (!v12)
      {
        v58 = @"kFMDUnderlyingErrorCodeKey";
        v10 = [v3 httpResponseError];
        v13 = [NSNumber numberWithInteger:[v10 code]];
        v59 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v15 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:4 userInfo:v14];
        [*(a1 + 32) setPscError:v15];

        goto LABEL_51;
      }
    }

    else if (!v12)
    {
      v56 = @"kFMDUnderlyingErrorCodeKey";
      v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 httpResponseStatus]);
      v57 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v35 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:5 userInfo:v34];
      [*(a1 + 32) setPscError:v35];

      goto LABEL_52;
    }
  }

  [*(a1 + 32) setPscError:v9];
LABEL_52:

  v43 = sub_100002880();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    sub_100229494();
  }

  [*(a1 + 40) signal];
LABEL_55:
}

void sub_1001651D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1001651F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1001652B4(id a1)
{
  v1 = sub_100002880();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100229588();
  }

  v2 = [[FMDAppleAccountManager alloc] initSingleton];
  v3 = qword_100314658;
  qword_100314658 = v2;
}

void sub_100165C3C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_1002CF240 + a2);
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) aa_personID];
    v9 = @" Error: ";
    v12 = 138413058;
    v13 = v8;
    v10 = &stru_1002DCE08;
    v14 = 2112;
    if (!v5)
    {
      v9 = &stru_1002DCE08;
    }

    v15 = v6;
    if (v5)
    {
      v10 = v5;
    }

    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "forceUserAuth (renewCredentials) of account %@ completed with status %@.%@%@", &v12, 0x2Au);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2 != 0);
  }
}

void sub_10016617C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_1002CF240 + a2);
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = @" Error: ";
    v11 = 138413058;
    if (!v5)
    {
      v9 = &stru_1002DCE08;
    }

    v12 = v8;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = &stru_1002DCE08;
    }

    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Renew account credentials for account %@ - status %@.%@%@", &v11, 0x2Au);
  }
}

void sub_100166380(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) aa_personID];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Account %@ failed to save kAccountDataclassDeviceLocator: %@", &v8, 0x16u);
    }
  }
}

void sub_1001665A4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100167044(uint64_t a1, void *a2)
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

uint64_t sub_100167298(const __CFString *a1, const void *a2)
{
  if (a1 && a2)
  {
    v7 = sub_100229758();
    if (v7)
    {
      v8 = v7;
      v4 = IORegistryEntrySetCFProperty(v7, a1, a2);
      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IORegistryEntrySetCFProperty returned:%d", v11, 8u);
      }

      IOObjectRelease(v8);
    }

    else
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1002297A8();
      }

      return 0;
    }
  }

  else
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002297DC();
    }

    return 4;
  }

  return v4;
}

uint64_t sub_1001673C0(const __CFString *a1, CFDataRef *a2)
{
  if (a1 && a2)
  {
    v7 = sub_100229758();
    if (v7)
    {
      v8 = v7;
      CFProperty = IORegistryEntryCreateCFProperty(v7, a1, kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v10 = CFProperty;
        v11 = CFGetTypeID(CFProperty);
        if (v11 == CFDataGetTypeID())
        {
          *a2 = CFDataCreateCopy(kCFAllocatorDefault, v10);
        }

        CFRelease(v10);
        v4 = 0;
      }

      else
      {
        v4 = 4294967294;
      }

      IOObjectRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100229810();
    }

    return 4;
  }

  return v4;
}

void sub_100167828(id a1)
{
  qword_100314668 = objc_alloc_init(FMDEventLogger);

  _objc_release_x1();
}

void sub_100167B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) facilitiesDictionary];
  v5 = [v4 objectForKey:v3];

  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Logging event to facility %@", &v7, 0xCu);
  }

  [v5 logEvent:*(a1 + 40)];
}

void sub_1001683B8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignature alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignature *)v11 initWithData:v12];
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FMDNanoSupportProtoNeedSignature *)v13 udid];
    v16 = [(FMDNanoSupportProtoNeedSignature *)v13 serialNumber];
    v17 = [(FMDNanoSupportProtoNeedSignature *)v13 productType];
    *buf = 138413058;
    v24 = v8;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign some data %@,%@,%@. Sending back an error as it is unsupported.", buf, 0x2Au);
  }

  v18 = objc_alloc_init(FMDNanoSupportProtoSignedData);
  [(FMDNanoSupportProtoSignedData *)v18 setErrorOccurred:1];
  v19 = [IDSProtobuf alloc];
  v20 = [(FMDNanoSupportProtoSignedData *)v18 data];
  v21 = [v19 initWithProtobufData:v20 type:2 isResponse:1];

  v22 = [*(a1 + 32) idsManager];
  [v22 sendMessageWithProtobuf:v21 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
}

void sub_1001685C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignatureV3 alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignatureV3 *)v11 initWithData:v12];
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FMDNanoSupportProtoNeedSignatureV3 *)v13 requestJsonData];
    *buf = 138412546;
    v22 = v8;
    v23 = 2048;
    v24 = [v15 length];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign data of length %lu. Sending back an error as it is unsupported.", buf, 0x16u);
  }

  v16 = objc_alloc_init(FMDNanoSupportProtoSignedDataV3);
  [(FMDNanoSupportProtoSignedDataV3 *)v16 setErrorOccurred:1];
  v17 = [IDSProtobuf alloc];
  v18 = [(FMDNanoSupportProtoSignedDataV3 *)v16 data];
  v19 = [v17 initWithProtobufData:v18 type:4 isResponse:1];

  v20 = [*(a1 + 32) idsManager];
  [v20 sendMessageWithProtobuf:v19 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
}

void sub_1001687A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignatureV4 alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignatureV4 *)v11 initWithData:v12];
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FMDNanoSupportProtoNeedSignatureV4 *)v13 requestJsonData];
    *buf = 138412546;
    v22 = v8;
    v23 = 2048;
    v24 = [v15 length];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign data of length %lu. Sending back an error as it is unsupported.", buf, 0x16u);
  }

  v16 = objc_alloc_init(FMDNanoSupportProtoSignedDataV4);
  [(FMDNanoSupportProtoSignedDataV4 *)v16 setErrorOccurred:1];
  v17 = [IDSProtobuf alloc];
  v18 = [(FMDNanoSupportProtoSignedDataV4 *)v16 data];
  v19 = [v17 initWithProtobufData:v18 type:8 isResponse:1];

  v20 = [*(a1 + 32) idsManager];
  [v20 sendMessageWithProtobuf:v19 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
}

void sub_100168980(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [FMDNanoSupportProtoNeedSignatureV5 alloc];
  v12 = [v10 data];

  v13 = [(FMDNanoSupportProtoNeedSignatureV5 *)v11 initWithData:v12];
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FMDNanoSupportProtoNeedSignatureV5 *)v13 requestJsonData];
    *buf = 138412546;
    v45 = v8;
    v46 = 2048;
    v47 = [v15 length];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received request %@ to sign data of length %lu", buf, 0x16u);
  }

  v16 = [(FMDNanoSupportProtoNeedSignatureV5 *)v13 requestJsonData];
  v43 = 0;
  v17 = [NSJSONSerialization JSONObjectWithData:v16 options:0 error:&v43];
  v18 = v43;

  v19 = [(FMDNanoSupportProtoNeedSignatureV5 *)v13 activationLockRequestUUIDString];
  if (v19)
  {
    v41 = [[NSUUID alloc] initWithUUIDString:v19];
  }

  else
  {
    v41 = 0;
  }

  v20 = a1;
  v42 = v17;
  if (!v18)
  {
    v22 = [v17 objectForKeyedSubscript:@"dsid"];
    v27 = +[NSNull null];
    v28 = [(FMDNanoSupportProtoSignedDataV5 *)v22 isEqual:v27];

    if (v28)
    {
      v29 = sub_100002880();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1002298D0(v29);
      }
    }

    v30 = sub_100002880();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Fetching FMIP account...", buf, 2u);
    }

    v31 = +[FMDServiceProvider activeServiceProvider];
    v25 = [v31 account];

    v40 = v9;
    if (v25)
    {
      v32 = [v25 dsid];
      v33 = [(FMDNanoSupportProtoSignedDataV5 *)v22 isEqualToString:v32];

      v34 = sub_100002880();
      v35 = v34;
      if (v33)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Proceeding with signing the requested data...", buf, 2u);
        }

        v26 = [*(v20 + 32) _v5SignedResponseForRequestBody:v42 activationLockRequestUUID:v41];
        goto LABEL_26;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100229914(v25, v22, v35);
      }
    }

    else
    {
      v35 = sub_100002880();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1002299C4(v35);
      }
    }

    v26 = objc_alloc_init(FMDNanoSupportProtoSignedDataV5);
    [(FMDNanoSupportProtoSignedDataV5 *)v26 setErrorOccurred:1];
LABEL_26:
    v36 = [IDSProtobuf alloc];
    v37 = [(FMDNanoSupportProtoSignedDataV5 *)v26 data];
    v38 = [v36 initWithProtobufData:v37 type:10 isResponse:1];

    v39 = [*(v20 + 32) idsManager];
    v9 = v40;
    [v39 sendMessageWithProtobuf:v38 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v40 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];

    goto LABEL_27;
  }

  v21 = sub_100002880();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_100229858(v18, v21);
  }

  v22 = objc_alloc_init(FMDNanoSupportProtoSignedDataV5);
  [(FMDNanoSupportProtoSignedDataV5 *)v22 setErrorOccurred:1];
  v23 = [IDSProtobuf alloc];
  v24 = [(FMDNanoSupportProtoSignedDataV5 *)v22 data];
  v25 = [v23 initWithProtobufData:v24 type:10 isResponse:1];

  v26 = [*(v20 + 32) idsManager];
  [(FMDNanoSupportProtoSignedDataV5 *)v26 sendMessageWithProtobuf:v25 inResponseToRequest:v8 withPriority:0 timeout:1 bypassingDuet:v9 deviceID:0 requestAcceptedHandler:0.0 responseHandler:0];
LABEL_27:
}

void sub_100168E70(id a1, FMNanoIDSManager *a2, IDSProtobuf *a3, NSString *a4, NSString *a5)
{
  v6 = a4;
  v7 = a5;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request %@ to exit lost mode for watch.", buf, 0xCu);
  }

  v9 = +[FMDFMIPManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100168FB4;
  v11[3] = &unk_1002CD868;
  v12 = v6;
  v10 = v6;
  [v9 initiateLostModeExitAuthForIDSDeviceID:v7 withCompletion:v11];
}

void sub_100168FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100229A08(a1, v3, v4);
    }
  }
}

void sub_100169984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001699C0(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [v15 signature];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v15 attestation];
    v14 = *(*(a1 + 56) + 8);
    v9 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [*(a1 + 32) signal];
}

NSDictionary *__cdecl sub_100169FD4(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist"];
  if (v2)
  {
    [v1 addEntriesFromDictionary:v2];
  }

  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist"];
  if (v3)
  {
    [v1 addEntriesFromDictionary:v3];
  }

  return v1;
}

void sub_10016BD48(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10016CCA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10016CDEC;
  v20 = &unk_1002CF458;
  v10 = *(a1 + 48);
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, &v17);
  v14 = [*(a1 + 32) requestModifierLock];
  [v14 lock];

  v15 = [*(a1 + 32) requests];
  [v15 removeObjectForKey:*(a1 + 40)];

  v16 = [*(a1 + 32) requestModifierLock];
  [v16 unlock];
}

void sub_10016CDEC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) statusCode];
  v5 = [*(a1 + 32) allHeaderFields];
  v4 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v3, v5, v4, 0, *(a1 + 48));
}

void sub_10016D9AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(CMMotionActivityManager);
  [WeakRetained setMotionActivityManager:v2];

  v3 = objc_alloc_init(NSOperationQueue);
  [WeakRetained setActivityUpdateQueue:v3];

  v4 = [WeakRetained activityUpdateQueue];
  [v4 setMaxConcurrentOperationCount:1];

  v5 = objc_alloc_init(FMDDeviceMotion);
  v6 = +[NSDate date];
  [(FMDDeviceMotion *)v5 setActivityStartDate:v6];

  [(FMDDeviceMotion *)v5 setActivityState:0];
  [WeakRetained setLastKnownDeviceMotion:v5];
  v7 = [WeakRetained motionActivityManager];
  v8 = [WeakRetained activityUpdateQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016DB14;
  v9[3] = &unk_1002CF4A8;
  v9[4] = WeakRetained;
  [v7 startActivityUpdatesToQueue:v8 withHandler:v9];
}

void sub_10016DB14(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _deviceMotionFrom:a2];
  [*(a1 + 32) setLastKnownDeviceMotion:v3];
}

void sub_10016DC1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained motionActivityManager];
  [v1 stopActivityUpdates];

  [WeakRetained setMotionActivityManager:0];
  [WeakRetained setActivityUpdateQueue:0];
  [WeakRetained setLastKnownDeviceMotion:0];
}

void sub_10016E424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016E448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkShutdownSoonRegistration];
}

void sub_10016E4CC(id a1)
{
  qword_100314678 = objc_alloc_init(FMDAccountStoreFMIP);

  _objc_release_x1();
}

void sub_10016F0B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = +[FMDMagSafeDataStore sharedInstance];
    [v5 clearDataStore];

    v6 = *(a1 + 40);
    v8.receiver = *(a1 + 32);
    v8.super_class = FMDFMIPServiceProvider;
    objc_msgSendSuper2(&v8, "accountRemoveRequestedWithCompletion:", v6);
    v7 = +[FMDCoreFollowUpManager sharedInstance];
    [v7 requestTheftAndLossCFU:1];
  }
}

void sub_10016F2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016F2EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkShutdownSoonRegistration];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"FMDSystemShutdownSoonNotification" object:0];

  v4 = +[FMSystemInfo sharedInstance];
  if (![v4 isInternalBuild])
  {
    goto LABEL_4;
  }

  v5 = +[FMDPreferencesMgr notifyOnShutdownSoon];

  if (v5)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateStyle:1];
    [v4 setTimeStyle:2];
    v6 = objc_alloc_init(FMDBatteryInfo);
    [(FMDBatteryInfo *)v6 batteryLevel];
    v8 = v7 * 100.0;

    v9 = objc_alloc_init(FMAlert);
    v10 = +[NSDate date];
    v11 = [v4 stringFromDate:v10];
    v12 = [NSString stringWithFormat:@"Shutdown soon notification\n%@\nBattery level : %.2f%%", v11, *&v8];
    [v9 setMsgText:v12];

    [v9 setMsgTitle:@"Find My iPhone"];
    [v9 setShowMsgInLockScreen:1];
    v13 = +[FMAlertManager sharedInstance];
    [v13 activateAlert:v9];

LABEL_4:
  }

  v14 = [NSString stringWithFormat:@"LaunchEvent.%@", *(a1 + 32)];
  v15 = [[FMDEventLoggerEventScalar alloc] initWithEventName:v14];
  v16 = +[FMDEventLogger sharedLogger];
  v17 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v19 = v17;
  v18 = [NSArray arrayWithObjects:&v19 count:1];
  [v16 logEvent:v15 toFacilitiesNamed:v18];
}

void sub_10016F604(uint64_t a1)
{
  v1 = [*(a1 + 32) account];
  v2 = [v1 authToken];
  v3 = [v2 length];

  if (!v3)
  {
    v4 = +[FMDAppleAccountManager sharedInstance];
    [v4 fixFMIPAuthTokenShouldForce:0];
  }
}

void sub_10016F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10016F784(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = FMDFMIPServiceProvider;
  result = objc_msgSendSuper2(&v3, "essentialServerInfoMissingError");
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10016FABC(uint64_t a1, void *a2)
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
      v6 = [*(a1 + 32) account];
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v3 fm_logID];
        v17 = 138412546;
        v18 = v12;
        v19 = 2048;
        v20 = [v3 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", &v17, 0x16u);
      }

      v13 = +[NSDate date];
      [v6 setLastIdentityTime:v13];

      v14 = [*(a1 + 32) accountStore];
      v15 = [*(a1 + 32) account];
      [v14 saveAccount:v15];

      v16 = +[FMDStartupRegisterManager sharedInstance];
      [v16 eventDidOccur:12];

      [FMPreferencesUtil setInteger:*(a1 + 40) forKey:@"identityVersion" inDomain:kFMDNotBackedUpPrefDomain];
      [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
      v8 = +[FMDLocalActivationLockInfoManager sharedInstance];
      [v8 updateActivationLockStatus:1];
      goto LABEL_11;
    }

    v5 = [v3 cancelled];
    v6 = sub_100002880();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [v3 fm_logID];
        v17 = 138412290;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v17, 0xCu);
LABEL_11:
      }
    }

    else if (v7)
    {
      v8 = [v3 fm_logID];
      v9 = [v3 httpResponseStatus];
      v10 = [v3 httpResponseError];
      v17 = 138412802;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v17, 0x20u);

      goto LABEL_11;
    }
  }
}

NSDictionary *__cdecl sub_100170140(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100170198(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) account];
  v4 = [v3 authId];
  [v2 fm_safeSetObject:v4 forKey:@"X-Apple-PrsId"];

  return v2;
}

void sub_100170220(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_16;
  }

  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_6;
  }

  if ([v3 cancelled])
  {
LABEL_6:
    v5 = [v3 cancelled];
    v6 = sub_10017DE2C();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [v3 fm_logID];
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_11:
      }
    }

    else if (v7)
    {
      v8 = [v3 fm_logID];
      v9 = [v3 httpResponseStatus];
      v10 = [v3 httpResponseError];
      *buf = 138412802;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_11;
    }

    v11 = [v3 httpResponseError];

    if (v11)
    {
      v12 = [v3 httpResponseError];
      v13 = [NSString stringWithFormat:@"Error contacting the server: %@", v12];
    }

    else
    {
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
    }

    v14 = *(a1 + 32);
    v15 = kFMDErrorDomain;
    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = v13;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [NSError errorWithDomain:v15 code:12 userInfo:v16];
    (*(v14 + 16))(v14, v17);

    goto LABEL_16;
  }

  v18 = sub_10017DE2C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v3 fm_logID];
    *buf = 138412546;
    v23 = v19;
    v24 = 2048;
    v25 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_16:
}

void sub_100170CC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10017DD1C();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022A2A0();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got ephemeral token for repair device.", v10, 2u);
    }

    v9 = *(a1 + 32);
    [v9 setEphemeralToken:v5];
    [*(a1 + 40) _enableRepairWithContext:v9 callingClient:*(a1 + 48) completion:*(a1 + 56)];
  }
}

NSDictionary *__cdecl sub_1001712A8(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100171300(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) account];
  v4 = [v3 authId];
  [v2 fm_safeSetObject:v4 forKey:@"X-Apple-PrsId"];

  return v2;
}

void sub_100171448(uint64_t a1, void *a2)
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
      v18 = sub_10017DD1C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v3 fm_logID];
        *buf = 138412546;
        v26 = v19;
        v27 = 2048;
        v28 = [v3 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld", buf, 0x16u);
      }

      v20 = [FMDRepairDeviceResult alloc];
      v22 = *(a1 + 32);
      v21 = [NSArray arrayWithObjects:&v22 count:1];
      v13 = [v20 initWithEligibleDevices:&__NSArray0__struct devicesInRepairMode:v21];

      (*(*(a1 + 40) + 16))();
      goto LABEL_16;
    }

    v5 = [v3 cancelled];
    v6 = sub_10017DD1C();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [v3 fm_logID];
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
LABEL_11:
      }
    }

    else if (v7)
    {
      v8 = [v3 fm_logID];
      v9 = [v3 httpResponseStatus];
      v10 = [v3 httpResponseError];
      *buf = 138412802;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);

      goto LABEL_11;
    }

    v11 = [v3 httpResponseError];

    if (v11)
    {
      v12 = [v3 httpResponseError];
      v13 = [NSString stringWithFormat:@"Error contacting the server: %@", v12];
    }

    else
    {
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
    }

    v14 = *(a1 + 40);
    v15 = kFMDErrorDomain;
    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = v13;
    v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = [NSError errorWithDomain:v15 code:3 userInfo:v16];
    (*(v14 + 16))(v14, 0, v17);

LABEL_16:
  }
}

void sub_100171B38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authContext: %@", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  (*(v8 + 16))(v8, v9, v6);
}

void sub_1001720F8(void *a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = +[FMDPreferencesMgr errorForUnregister];
    v5 = [v3 httpResponseError];
    if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399 || v4)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v17 = sub_100002880();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 fm_logID];
        v19 = a1[4];
        *buf = 138412802;
        v70 = v18;
        v71 = 2112;
        v72 = v19;
        v73 = 2048;
        v74 = [v3 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ for paired device %@: successful with status %ld", buf, 0x20u);
      }

      v20 = a1[6];
      if (v20)
      {
        (*(v20 + 16))(v20, 0);
      }

LABEL_49:

      goto LABEL_50;
    }

    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [v3 fm_logID];
      *buf = 138412290;
      v70 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [v3 fm_logID];
      v10 = a1[4];
      v11 = [v3 httpResponseStatus];
      v12 = [v3 httpResponseError];
      *buf = 138413058;
      v70 = v9;
      v71 = 2112;
      v72 = v10;
      v73 = 2048;
      v74 = v11;
      v75 = 2112;
      v76 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ for paired device %@: Error (%ld) %@", buf, 0x2Au);
    }

LABEL_11:
    v13 = [v3 httpResponseError];

    if (v13)
    {
      v14 = [v3 httpResponseError];
      v15 = [NSString stringWithFormat:@"Error contacting the server: %@", v14];
    }

    else
    {
      if (v4)
      {
        v16 = v4;
      }

      else
      {
        v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
      }

      v15 = v16;
    }

    v21 = sub_100002880();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v57 = v15;
    v58 = v4;
    if (v4)
    {
      v22 = [v4 containsString:@"network"];
      v23 = &qword_100258680;
      if (!v22)
      {
        v23 = &qword_100258670;
      }

      v24 = *v23;
      v25 = a1[5];
    }

    else
    {
      v26 = [v3 alertFromServerResponse];

      if (v26)
      {
        goto LABEL_32;
      }

      v56 = a1[5];
      v24 = [v3 responseErrorType];
      v25 = v56;
    }

    [v25 _showPairedDeviceDisableFMIPErrorForResponseError:v24];
LABEL_32:
    v59 = v3;
    +[NSDate timeIntervalSinceReferenceDate];
    v60 = [NSNumber numberWithDouble:?];
    v27 = +[NRPairedDeviceRegistry sharedInstance];
    v28 = [v27 getPairedDevices];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v62;
      v33 = NRDevicePropertyIsPaired;
      v34 = NRDevicePropertyUDID;
      while (2)
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v62 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v61 + 1) + 8 * i);
          v37 = [v36 valueForProperty:v33];
          v38 = [v37 BOOLValue];

          if (v38)
          {
            v39 = a1[4];
            if (v39)
            {
              v40 = [v36 valueForProperty:v34];
              v41 = [v39 isEqualToString:v40];

              if (v41)
              {
                v42 = [v36 valueForProperty:NRDevicePropertyPairingID];
                v43 = [v36 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
                v44 = [NPSDomainAccessor alloc];
                v45 = [v44 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v42 pairingDataStore:v43];
                v46 = sub_100002880();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v70 = v60;
                  v71 = 2112;
                  v72 = v42;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Syncing registerForceTime %@ to device with pairing ID %@", buf, 0x16u);
                }

                [v45 setObject:v60 forKey:@"LastRegisterForceTime"];
                v47 = [v45 synchronize];
                v48 = objc_opt_new();
                v49 = kFMDWatchNotBackedUpPrefDomain;
                v67 = @"LastRegisterForceTime";
                v50 = [NSArray arrayWithObjects:&v67 count:1];
                v51 = [NSSet setWithArray:v50];
                [v48 synchronizeNanoDomain:v49 keys:v51];

                goto LABEL_46;
              }
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v61 objects:v68 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:

    v52 = a1[6];
    if (v52)
    {
      v53 = kFMDErrorDomain;
      v65 = NSLocalizedFailureReasonErrorKey;
      v66 = v57;
      v54 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v55 = [NSError errorWithDomain:v53 code:12 userInfo:v54];
      (*(v52 + 16))(v52, v55);
    }

    v4 = v58;
    v3 = v59;
    goto LABEL_49;
  }

LABEL_50:
}

void sub_100172DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_36;
  }

  v4 = +[FMDPreferencesMgr errorForUnregister];
  v5 = [v3 httpResponseError];
  if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399 || v4)
  {

    goto LABEL_5;
  }

  if ([v3 cancelled])
  {
LABEL_5:
    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [v3 fm_logID];
      *buf = 138412290;
      v89 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [v3 fm_logID];
      v10 = [v3 httpResponseStatus];
      v11 = [v3 httpResponseError];
      *buf = 138412802;
      v89 = v9;
      v90 = 2048;
      v91 = v10;
      v92 = 2112;
      v93 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);
    }

LABEL_11:
    [*(a1 + 32) setUnregisterState:3];
    v12 = +[NSDate date];
    [*(a1 + 32) setLastUnregisterFailedTime:v12];

    v13 = [*(a1 + 40) accountStore];
    [v13 saveAccount:*(a1 + 32)];

    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022A370(v3, v14);
    }

    v68 = v3;
    v66 = v4;
    if (v4)
    {
      v15 = [v4 isEqualToString:@"network"];
      v16 = &qword_100258680;
      if (!v15)
      {
        v16 = &qword_100258670;
      }

      v17 = *v16;
      [*(a1 + 40) _showUnregisterDeviceErrorForResponseError:*v16 inContext:{objc_msgSend(*(a1 + 32), "fmipDisableContext")}];
      v18 = *(a1 + 40);
      v19 = [*(a1 + 32) fmipDisableContext];
      v20 = v18;
      v21 = v17;
    }

    else
    {
      v22 = [v3 alertFromServerResponse];

      if (v22)
      {
        v65 = 0;
        goto LABEL_20;
      }

      [*(a1 + 40) _showUnregisterDeviceErrorForResponseError:objc_msgSend(v3 inContext:{"responseErrorType"), objc_msgSend(*(a1 + 32), "fmipDisableContext")}];
      v62 = *(a1 + 40);
      v63 = [v3 responseErrorType];
      v19 = [*(a1 + 32) fmipDisableContext];
      v20 = v62;
      v21 = v63;
    }

    v65 = [v20 _unregisterDeviceErrorForResponseError:v21 inContext:v19];
LABEL_20:
    v23 = objc_alloc_init(FMDFMIPAccount);
    [(FMDFMIPAccount *)v23 copyInfoFromAccount:*(a1 + 32)];
    v24 = [*(a1 + 32) lastIdentityTime];
    [(FMDFMIPAccount *)v23 setLastIdentityTime:v24];

    v67 = a1;
    v25 = [*(a1 + 32) lastUnregisterFailedTime];
    v64 = v23;
    [(FMDAccount *)v23 setLastUnregisterFailedTime:v25];

    +[NSDate timeIntervalSinceReferenceDate];
    v73 = [NSNumber numberWithDouble:?];
    v26 = +[NRPairedDeviceRegistry sharedInstance];
    v27 = [v26 getPairedDevices];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v82 objects:v87 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v83;
      v32 = NRDevicePropertyIsPaired;
      v70 = NRDevicePropertyPairingID;
      v69 = NRDevicePropertyLocalPairingDataStorePath;
      v33 = &ADClientAddValueForScalarKey_ptr;
      v71 = *v83;
      v72 = v28;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v83 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v82 + 1) + 8 * i);
          v36 = [v35 valueForProperty:v32];
          v37 = [v36 BOOLValue];

          if (v37)
          {
            v38 = [objc_alloc(v33[404]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
            v39 = [v35 supportsCapability:v38];

            if (v39)
            {
              v40 = [v35 valueForProperty:v70];
              v41 = [v35 valueForProperty:v69];
              v42 = [NPSDomainAccessor alloc];
              v43 = [v42 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v40 pairingDataStore:v41];
              v44 = sub_100002880();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v89 = v73;
                v90 = 2112;
                v91 = v40;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Syncing registerForceTime %@ to device with pairing ID %@", buf, 0x16u);
              }

              [v43 setObject:v73 forKey:@"LastRegisterForceTime"];
              v45 = [v43 synchronize];
              v46 = objc_opt_new();
              v47 = kFMDWatchNotBackedUpPrefDomain;
              v86 = @"LastRegisterForceTime";
              v48 = [NSArray arrayWithObjects:&v86 count:1];
              v49 = [NSSet setWithArray:v48];
              [v46 synchronizeNanoDomain:v47 keys:v49];

              v31 = v71;
              v28 = v72;
              v33 = &ADClientAddValueForScalarKey_ptr;
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v82 objects:v87 count:16];
      }

      while (v30);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001736F8;
    block[3] = &unk_1002CD478;
    a1 = v67;
    block[4] = *(v67 + 40);
    v81 = v64;
    v50 = v64;
    dispatch_async(&_dispatch_main_q, block);

    v3 = v68;
    v51 = v65;
    v4 = v66;
    goto LABEL_33;
  }

  [*(a1 + 32) setUnregisterState:2];
  v53 = +[FMXPCTransactionManager sharedInstance];
  [v53 beginTransaction:@"FMDFMIPServiceProvider-unregisterDeviceWithCompletion"];

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_100173704;
  v79[3] = &unk_1002CD4C8;
  v79[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v79);
  v54 = [v3 httpResponseBody];

  if (v54)
  {
    v55 = [v3 httpResponseBody];
    v56 = [v55 objectForKeyedSubscript:@"oneTimeUnregisterTokens"];

    v57 = [v56 fm_nullToNil];

    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100173784;
    v74[3] = &unk_1002CF640;
    v75 = @"token";
    v76 = @"udid";
    v58 = *(a1 + 40);
    v77 = @"expiryTime";
    v78 = v58;
    [v57 enumerateObjectsUsingBlock:v74];
  }

  v59 = sub_100002880();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v3 fm_logID];
    v61 = [v3 httpResponseStatus];
    *buf = 138412546;
    v89 = v60;
    v90 = 2048;
    v91 = v61;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
  }

  v51 = 0;
LABEL_33:
  v52 = *(a1 + 48);
  if (v52)
  {
    (*(v52 + 16))(v52, v51);
  }

LABEL_36:
}

void sub_100173704(uint64_t a1)
{
  [*(a1 + 32) removeAccount];
  v2 = [*(a1 + 32) accountStore];
  [v2 saveAccount:0];

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:@"FMDFMIPServiceProvider-unregisterDeviceWithCompletion"];
}

void sub_100173784(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [v4 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  v7 = [v6 fm_nullToNil];

  if (v7)
  {
    v8 = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v7 integerValue]);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v11)
  {
    v9 = [[FMDAccessoryIdentifier alloc] initWithString:v5];
    v10 = [*(a1 + 56) unregisterTokenStore];
    [v10 saveUnregisterToken:v11 identifier:v9 expiryDate:v8];
  }

LABEL_7:
}

void sub_100173D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 willRetry] & 1) == 0)
  {
    v4 = +[FMDPreferencesMgr errorForMarkAsMissing];
    v5 = [v3 httpResponseError];
    if (v5 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399 || v4)
    {
    }

    else if (([v3 cancelled] & 1) == 0)
    {
      v16 = sub_100002880();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v3 fm_logID];
        *buf = 138412546;
        v33 = v17;
        v34 = 2048;
        v35 = [v3 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", buf, 0x16u);
      }

      v18 = *(a1 + 40);
      if (v18)
      {
        (*(v18 + 16))(v18, 0);
      }

LABEL_35:

      goto LABEL_36;
    }

    v6 = [v3 cancelled];
    v7 = sub_100002880();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [v3 fm_logID];
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", buf, 0xCu);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [v3 fm_logID];
      v10 = [v3 httpResponseStatus];
      v11 = [v3 httpResponseError];
      *buf = 138412802;
      v33 = v9;
      v34 = 2048;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", buf, 0x20u);
    }

LABEL_11:
    v12 = [v3 httpResponseError];

    if (v12)
    {
      v13 = [v3 httpResponseError];
      v14 = [NSString stringWithFormat:@"Error contacting the server: %@", v13];
    }

    else
    {
      if (v4)
      {
        v15 = v4;
      }

      else
      {
        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned error code %ld", [v3 httpResponseStatus]);
      }

      v14 = v15;
    }

    v19 = sub_100002880();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (v4)
    {
      v20 = [v4 containsString:@"network"];
      v21 = &qword_100258680;
      if (!v20)
      {
        v21 = &qword_100258670;
      }

      v22 = *v21;
      v23 = *(a1 + 32);
    }

    else
    {
      v24 = [v3 alertFromServerResponse];

      if (v24)
      {
        goto LABEL_32;
      }

      v29 = *(a1 + 32);
      v22 = [v3 responseErrorType];
      v23 = v29;
    }

    [v23 _showMarkAsMissingErrorForResponseError:v22];
LABEL_32:
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = kFMDErrorDomain;
      v30 = NSLocalizedFailureReasonErrorKey;
      v31 = v14;
      v27 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v28 = [NSError errorWithDomain:v26 code:12 userInfo:v27];
      (*(v25 + 16))(v25, v28);
    }

    goto LABEL_35;
  }

LABEL_36:
}

void sub_10017485C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pendingSecureMessage];
  if (v2)
  {
  }

  else
  {
    v3 = [WeakRetained pendingLocateAlert];

    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if ([WeakRetained lockStateNotifyToken] == -1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10017493C;
    handler[3] = &unk_1002CF690;
    handler[4] = WeakRetained;
    notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, WeakRetained + 49, &_dispatch_main_q, handler);
  }

LABEL_6:
}

id sub_10017493C(uint64_t a1)
{
  result = MKBGetDeviceLockState();
  if (result == 3 || !result)
  {
    v3 = *(a1 + 32);

    return [v3 _showPendingHomescreenAlertNow];
  }

  return result;
}

void sub_100174A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pendingSecureMessage];

  if (v1)
  {
    v2 = +[FMAlertManager sharedInstance];
    v3 = [WeakRetained pendingSecureMessage];
    [v2 activateAlert:v3];

    [WeakRetained setPendingSecureMessage:0];
  }

  v4 = [WeakRetained pendingLocateAlert];

  if (v4)
  {
    v5 = +[FMAlertManager sharedInstance];
    v6 = [WeakRetained pendingLocateAlert];
    [v5 activateAlert:v6];

    [WeakRetained setPendingLocateAlert:0];
  }

  if ([WeakRetained lockStateNotifyToken] != -1)
  {
    notify_cancel([WeakRetained lockStateNotifyToken]);
    [WeakRetained setLockStateNotifyToken:0xFFFFFFFFLL];
  }
}

void sub_100174C90(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = sub_100002880();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Buddy is done", v13, 2u);
    }

    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:*(a1 + 32) name:@"purplebuddy.setupdone" object:0];

    v4 = [*(a1 + 32) buddyWaitTimer];

    if (v4)
    {
      v5 = [*(a1 + 32) buddyWaitTimer];
      [v5 invalidate];

      [*(a1 + 32) setBuddyWaitTimer:0];
    }

    [*(a1 + 32) setWaitingForBuddy:0];
    [*(a1 + 32) syncFMIPStateToWatch];
    if (*(a1 + 41) == 1)
    {
      v6 = +[FMDAppleAccountManager sharedInstance];
      [v6 syncFMIPAccountInfo];

      if ([*(a1 + 32) waitingToMakeProviderActive])
      {
        v7 = +[FMXPCTransactionManager sharedInstance];
        [v7 endTransaction:@"FMIPWaitingForBuddy"];

        [*(a1 + 32) makeProviderActive];
      }
    }
  }

  else
  {
    if (([*(a1 + 32) waitingForBuddy] & 1) == 0)
    {
      [*(a1 + 32) setWaitingForBuddy:1];
      v8 = +[FMXPCTransactionManager sharedInstance];
      [v8 beginTransaction:@"FMIPWaitingForBuddy"];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:*(a1 + 32) selector:"buddyDidComplete:" name:@"purplebuddy.setupdone" object:0];
    }

    v10 = [*(a1 + 32) buddyWaitTimer];
    [v10 invalidate];

    v11 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_buddyCompletionCheckTimerFired:" selector:0 userInfo:0 repeats:10.0];
    [*(a1 + 32) setBuddyWaitTimer:v11];

    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMIP is not active yet since buddy is yet to complete.", buf, 2u);
    }
  }
}

void sub_1001758DC(uint64_t a1)
{
  v2 = +[FMDLocalActivationLockInfoManager sharedInstance];
  v3 = [*(a1 + 32) isActivationLocked];
  [v2 updateActivationLockStatus:v3];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "synchronizeLocationActivationState %d", v5, 8u);
  }
}

void sub_100175AD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:*(a1 + 32)];
}

void sub_100175CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100175CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serialQueue_sendDeviceIdentityIfEligibleWithIdentityInfo:*(a1 + 32)];
}

void sub_100176008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100176024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preferences application state did change: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkAndSendPendingDeviceIdentityWithIdentityInfo:*(a1 + 32)];
}

void sub_100176260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10017627C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serialQueue_checkAndSendPendingDeviceIdentityWithIdentityInfo:*(a1 + 32)];
}

NSDictionary *__cdecl sub_1001768B0(id a1)
{
  v1 = objc_alloc_init(FMDActingRequestDecorator);
  v2 = [(FMDActingRequestDecorator *)v1 standardDeviceContext];

  return v2;
}

id sub_100176900(uint64_t a1)
{
  v2 = +[ServerDeviceInfo sharedInstance];
  v3 = [*(a1 + 32) account];
  v4 = [v2 deviceInfoForAccount:v3];

  return v4;
}

void sub_10017809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001780E4(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = [v15 signature];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v15 attestation];
    v14 = *(*(a1 + 56) + 8);
    v9 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [*(a1 + 32) signal];
}

void sub_10017A1B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10017A298(id a1)
{
  v1 = objc_alloc_init(FMDCoreFollowUpManager);
  v2 = qword_100314688;
  qword_100314688 = v1;

  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 serialNumber];
  [qword_100314688 setSerialNumber:v4];

  v5 = [qword_100314688 serialNumber];

  if (!v5)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022AA8C(v6);
    }

    v7 = qword_100314688;
    qword_100314688 = 0;
  }
}

void sub_10017A4F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[FMDSharedConfigurationManager sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017A5E8;
    v9[3] = &unk_1002CF220;
    v9[4] = *(a1 + 32);
    [v7 postTheftAndLossCFU:v5 completion:v9];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022AB54();
    }
  }
}

void sub_10017A5E8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002880();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022ABD4();
    }

LABEL_4:

    goto LABEL_5;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Theft and Loss CFU posted", buf, 2u);
    }

    goto LABEL_4;
  }

  if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Theft and Loss CFU should not be posted, clearing", v9, 2u);
  }

  [*(a1 + 32) clearTheftAndLossCFU];
LABEL_5:
}

uint64_t sub_10017A7B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v6 = [*(a1 + 32) _getDeviceClassesFromCoverage:a2];
    v7 = +[FMDSharedConfiguration sharedInstance];
    v8 = [v7 entryForConfiguration:FMDSharedConfigurationKeyTheftAndLoss deviceClasses:v6];

    v9 = [v8 objectForKeyedSubscript:@"followUpStrings"];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9, 0);
    }
  }

  return _objc_release_x2();
}

void sub_10017AA6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.findmy.theftandlosscfu"];
    [v7 setRequiresNetworkConnectivity:1];
    [v7 setRequiresExternalPower:0];
    v8 = [v5 reminderInMins];
    v9 = [v8 longValue];

    if (v9 == -1)
    {
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v25 = -1;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bail on scheduling TnL reminder timer. Reminder interval (%ld).", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v10 = [v5 reminderInMins];
    v11 = (60 * [v10 longValue]);

    v12 = [*(a1 + 32) dateByAddingTimeInterval:v11];
    v13 = objc_alloc_init(NSDate);
    v14 = [v12 compare:v13];
    v15 = 0.0;
    if (v14 == 1)
    {
      [v12 timeIntervalSinceDate:v13, 0.0];
    }

    [v7 setScheduleAfter:v15];
    [v7 setPriority:2];
    [v7 setRequiresProtectionClass:4];
    v16 = +[BGSystemTaskScheduler sharedScheduler];
    v23 = 0;
    v17 = [v16 submitTaskRequest:v7 error:&v23];
    v18 = v23;

    v19 = sub_100002880();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v20)
      {
        [v7 scheduleAfter];
        *buf = 138412546;
        v25 = @"com.apple.findmy.theftandlosscfu";
        v26 = 2048;
        v27 = v21;
        v22 = "submitTaskRequest %@ to run in %f seconds.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
      }
    }

    else if (v20)
    {
      *buf = 138412546;
      v25 = @"com.apple.findmy.theftandlosscfu";
      v26 = 2112;
      v27 = v18;
      v22 = "submitTaskRequest for %@ failed with error (%@).";
      goto LABEL_14;
    }

LABEL_16:
    goto LABEL_17;
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10022AC3C();
  }

LABEL_17:
}

void sub_10017AFCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _handleTheftAndLossReminderBackgroundTask];
  [v3 setTaskCompleted];
}

void sub_10017B020(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022ACBC();
    }
  }

  [*(a1 + 32) submitTheftAndLossReminderBackgroundTask:*(a1 + 40)];
}

void sub_10017B300(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 requestTheftAndLossCFU:4];
  [v3 setTaskCompleted];
}

void sub_10017B56C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022AE7C();
    }

LABEL_4:

    [*(a1 + 32) clearTheftAndLossCFU];
    goto LABEL_9;
  }

  v6 = sub_100002880();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is not covered by Theft and Loss when turning off FMiP, clearing CFU", v9, 2u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is covered by Theft and Loss when turning off FMiP, scheduling CFU", buf, 2u);
  }

  v8 = +[FMDSharedConfiguration sharedInstance];
  [v8 writeFindMySignOutTimeToFile];

  [*(a1 + 32) _registerTheftAndLossCFUBackgroundTask];
LABEL_9:
}

void sub_10017B6F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10022AEE4();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleared the Theft and Loss CFU", v5, 2u);
  }
}

void sub_10017B840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022AF4C();
    }
  }

  else if (a2)
  {
    v7 = +[FMDFMIPManager sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017B974;
    v9[3] = &unk_1002CF7C0;
    v9[4] = *(a1 + 32);
    [v7 fmipStateWithCompletion:v9];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device does not have coverage. Make best effort to clear the CFU.", buf, 2u);
    }

    [*(a1 + 32) clearTheftAndLossCFU];
  }
}

void sub_10017B974(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002880();
  v7 = v6;
  if (a2 < 2 || v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10022AFB4();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device got TnL coverage. Immediately display the CFU.", v8, 2u);
    }

    [*(a1 + 32) _forceTheftAndLossCFU];
  }
}

void sub_10017BCD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupAgent completed with error %@", &v5, 0xCu);
  }

  [*(a1 + 32) setSetupAgent:0];
}

void sub_10017BFA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterAccessoriesIfNeeded];
  v2 = [[FMDEventLoggerEventScalar alloc] initWithEventName:@"FMDNanoMigratorJanitor"];
  v3 = +[FMDEventLogger sharedLogger];
  v4 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 logEvent:v2 toFacilitiesNamed:v5];
}

void sub_10017C318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 udid];

  v6 = [[FMDAccessoryIdentifier alloc] initWithString:v5];
  v7 = [FMDRequestWatchUnregister alloc];
  v8 = [v3 unregisterToken];
  v9 = [(FMDRequestWatchUnregister *)v7 initWithDeviceUDID:v5 unregisterToken:v8];

  objc_initWeak(&location, *(a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10017C53C;
  v14[3] = &unk_1002CF898;
  objc_copyWeak(v17, &location);
  v17[1] = *(a1 + 40);
  v10 = v6;
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  [(FMDRequest *)v9 setCompletionHandler:v14];
  v12 = sub_10017DFC4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Watch Migration: Watch unregister request enqueued %@", buf, 0xCu);
  }

  v13 = [*(a1 + 32) serverInteractionController];
  [v13 enqueueRequest:v9];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void sub_10017C510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017C53C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 willRetry])
  {
    goto LABEL_27;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 56);
  v6 = sub_10017DFC4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134217984;
    v31 = COERCE_DOUBLE([v3 httpResponseStatus]);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch Migration: Watch Unregister request response code %li", &v30, 0xCu);
  }

  v7 = [v3 httpResponseError];
  if (v7 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {
  }

  else if (([v3 cancelled] & 1) == 0)
  {
    v25 = [WeakRetained unregisterTokenStore];
    [v25 removeUnregisterTokenForIdentifier:*(a1 + 32)];

    v26 = sub_100002880();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      [v3 fm_logID];
      v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v28 = COERCE_DOUBLE([v3 httpResponseStatus]);
      v30 = 138412546;
      v31 = v27;
      v32 = 2048;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", &v30, 0x16u);
    }

    v16 = sub_10017DFC4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v30 = 138412290;
      v31 = v29;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Watch Migration: Watch unregister success %@", &v30, 0xCu);
    }

    goto LABEL_24;
  }

  v8 = [v3 cancelled];
  v9 = sub_100002880();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    [v3 fm_logID];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v30 = 138412290;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v30, 0xCu);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    [v3 fm_logID];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v12 = COERCE_DOUBLE([v3 httpResponseStatus]);
    v13 = [v3 httpResponseError];
    v30 = 138412802;
    v31 = v11;
    v32 = 2048;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v30, 0x20u);
  }

LABEL_14:
  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10022B038(v3, v14);
  }

  v15 = [v3 httpResponseHeaders];
  v16 = [v15 objectForKeyedSubscript:@"X-Apple-Retry-After"];

  if (!v16)
  {
    goto LABEL_24;
  }

  [v16 doubleValue];
  v5 = v17;
  v18 = sub_100002880();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 0.0)
  {
    if (v19)
    {
      [WeakRetained fm_logID];
      v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v30 = 138412290;
      v31 = v20;
      v21 = "%@ Server requested that no more retries be done.";
      v22 = v18;
      v23 = 12;
      goto LABEL_22;
    }
  }

  else if (v19)
  {
    [WeakRetained fm_logID];
    v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v30 = 138412546;
    v31 = v20;
    v32 = 2048;
    v33 = v5;
    v21 = "%@ Server requested a retry after %f seconds";
    v22 = v18;
    v23 = 22;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v30, v23);
  }

LABEL_24:
  v24 = sub_10017DFC4();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134217984;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Watch Migration: Retry After %f", &v30, 0xCu);
  }

  [*(a1 + 40) scheduleJanitor:v5];
LABEL_27:
}

void sub_10017CF90(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [FMDAccessoryIdentifier alloc];
  v4 = [v9 udid];
  v5 = [v3 initWithString:v4];

  v6 = [*(a1 + 32) unregisterTokenStore];
  v7 = [v6 unregisterTokenForIdentifier:v5];

  if (v7)
  {
    v8 = [[FMDFMIPUnregisterDeviceInfoAccessoryAdaptor alloc] initWithAccessory:v9 unregisterToken:v7];
    [*(a1 + 40) fm_safeAddObject:v8];
  }
}

void sub_10017D4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017D508(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 httpResponseStatus];
    v7 = [v3 httpResponseBody];
    v8 = [v3 httpResponseHeaders];
    v21 = 138413058;
    v22 = v3;
    v23 = 2048;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request = %@, status = %ld %@ %@", &v21, 0x2Au);
  }

  v9 = [v3 httpResponseError];
  if (v9 || [v3 httpResponseStatus] < 200 || objc_msgSend(v3, "httpResponseStatus") > 399)
  {

    goto LABEL_7;
  }

  if ([v3 cancelled])
  {
LABEL_7:
    v10 = [v3 cancelled];
    v11 = sub_10000BE38();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v3 fm_logID];
        v21 = 138412290;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v21, 0xCu);
LABEL_12:
      }
    }

    else if (v12)
    {
      v13 = [v3 fm_logID];
      v14 = [v3 httpResponseStatus];
      v15 = [v3 httpResponseError];
      v21 = 138412802;
      v22 = v13;
      v23 = 2048;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v21, 0x20u);

      goto LABEL_12;
    }

    v16 = [WeakRetained onCompletionHandler];

    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = [WeakRetained onCompletionHandler];
    v18 = [v3 httpResponseError];
    (v17)[2](v17, v18);

    goto LABEL_15;
  }

  v20 = [WeakRetained onCompletionHandler];

  if (v20)
  {
    v17 = [WeakRetained onCompletionHandler];
    v17[2](v17, 0);
LABEL_15:
  }

LABEL_16:
  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))();
  }
}

void sub_10017D964(id a1)
{
  qword_1003146A0 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_10017D9A8()
{
  if (qword_1003146A8 != -1)
  {
    sub_10022B108();
  }

  v1 = qword_1003146B0;

  return v1;
}

void sub_10017D9EC(id a1)
{
  qword_1003146B0 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_10017DA30()
{
  if (qword_1003146B8 != -1)
  {
    sub_10022B11C();
  }

  v1 = qword_1003146C0;

  return v1;
}

void sub_10017DA74(id a1)
{
  qword_1003146C0 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

void sub_10017DAB8(id a1)
{
  qword_1003146D0 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_10017DAFC()
{
  if (qword_1003146D8 != -1)
  {
    sub_10022B144();
  }

  v1 = qword_1003146E0;

  return v1;
}

void sub_10017DB40(id a1)
{
  qword_1003146E0 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

void sub_10017DB84(id a1)
{
  qword_1003146F0 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_10017DBC8()
{
  if (qword_1003146F8 != -1)
  {
    sub_10022B16C();
  }

  v1 = qword_100314700;

  return v1;
}

void sub_10017DC0C(id a1)
{
  qword_100314700 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

void sub_10017DC50(id a1)
{
  qword_100314710 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_10017DC94()
{
  if (qword_100314718 != -1)
  {
    sub_10022B180();
  }

  v1 = qword_100314720;

  return v1;
}

void sub_10017DCD8(id a1)
{
  qword_100314720 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_10017DD1C()
{
  if (qword_100314728 != -1)
  {
    sub_10022B194();
  }

  v1 = qword_100314730;

  return v1;
}

void sub_10017DD60(id a1)
{
  qword_100314730 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_10017DDA4()
{
  if (qword_100314738 != -1)
  {
    sub_10022B1A8();
  }

  v1 = qword_100314740;

  return v1;
}

void sub_10017DDE8(id a1)
{
  qword_100314740 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_10017DE2C()
{
  if (qword_100314748 != -1)
  {
    sub_10022B1BC();
  }

  v1 = qword_100314750;

  return v1;
}

void sub_10017DE70(id a1)
{
  qword_100314750 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_10017DEB4()
{
  if (qword_100314758 != -1)
  {
    sub_10022B1D0();
  }

  v1 = qword_100314760;

  return v1;
}

void sub_10017DEF8(id a1)
{
  qword_100314760 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_10017DF3C()
{
  if (qword_100314768 != -1)
  {
    sub_10022B1E4();
  }

  v1 = qword_100314770;

  return v1;
}

void sub_10017DF80(id a1)
{
  qword_100314770 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_10017DFC4()
{
  if (qword_100314778 != -1)
  {
    sub_10022B1F8();
  }

  v1 = qword_100314780;

  return v1;
}

void sub_10017E008(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_100314780 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_10017E630(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  [v2 sendDeviceIdentityWithIdentityInfo:*(a1 + 40)];

  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:@"kFMDCommandHandlerIdentityV5TransactionName"];
}

void sub_10017E840(uint64_t a1, void *a2)
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

void sub_10017ED9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017EDC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didCompleteQueueCheckRequest:v3 completion:*(a1 + 32)];
}

void sub_10017FAD8(id a1)
{
  qword_100314790 = objc_alloc_init(FMDOperationManager);

  _objc_release_x1();
}

void sub_10017FCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017FCD0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = sub_10017DA30();
    if (!os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v13 = "%@ found nil action for identifier %@";
LABEL_14:
    _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    goto LABEL_15;
  }

  if (!*(a1 + 48))
  {
    v3 = sub_10017DA30();
    if (!os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v13 = "%@ found nil identifier for action %@";
    goto LABEL_14;
  }

  v2 = [*(a1 + 40) actionQueueMap];
  v3 = [v2 objectForKey:*(a1 + 48)];

  v4 = sub_10017DA30();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ found queue - %@", buf, 0x16u);
  }

  if (!v3)
  {
    v3 = [[FMDOperationQueue alloc] initWithIdentifier:*(a1 + 48)];
    v6 = [*(a1 + 40) actionQueueMap];
    [v6 setObject:v3 forKey:*(a1 + 48)];

    v7 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v3];
    v8 = sub_10017DA30();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ creating queue(%@) with identifier - %@", buf, 0x20u);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = [(FMDOperationQueue *)v3 addRequest:*(a1 + 32)];
LABEL_15:
}

void sub_10018006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100180084(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = sub_10017DA30();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v9 = "%@ found nil action to be removed for identifier %@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
    goto LABEL_14;
  }

  if (!*(a1 + 48))
  {
    v3 = sub_10017DA30();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v9 = "%@ found nil identifier to remove action %@";
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) actionQueueMap];
  v3 = [v2 objectForKey:*(a1 + 48)];

  v4 = sub_10017DA30();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ found queue for removal - %@", &v12, 0x16u);
  }

  if (v3)
  {
    v6 = [v3 cancelRequest:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
LABEL_14:
}

void sub_1001804BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BE38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10022B310(a1);
  }
}

void sub_1001806F0(id a1)
{
  v1 = qword_1003147A0;
  qword_1003147A0 = &off_1002E8DB8;
}

void sub_10018372C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100183878;
  v20 = &unk_1002CF458;
  v10 = *(a1 + 48);
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, &v17);
  v14 = [*(a1 + 32) requestModifierLock];
  [v14 lock];

  v15 = [*(a1 + 32) requests];
  [v15 removeObjectForKey:*(a1 + 40)];

  v16 = [*(a1 + 32) requestModifierLock];
  [v16 unlock];
}

void sub_100183878(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) statusCode];
  v5 = [*(a1 + 32) allHeaderFields];
  v4 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v3, v5, v4, 0, *(a1 + 48));
}

void sub_1001846F4(uint64_t a1)
{
  v26 = 0;
  v2 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:&v26];
  v3 = v26;
  if (v3)
  {
    if ([v2 count])
    {
      v4 = sub_100002880();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10022B54C();
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v22 objects:v29 count:16];
      if (v5)
      {
        v6 = v5;
        v18 = v3;
        v19 = v2;
        v7 = *v23;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v23 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v22 + 1) + 8 * i);
            v10 = [v9 btAddressData];
            v11 = [v10 fm_MACAddressString];
            v12 = [v11 isEqualToString:*(a1 + 32)];

            if (v12)
            {
              v13 = sub_100002880();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = [v9 btAddressData];
                v15 = [v14 fm_MACAddressString];
                *buf = 138412290;
                v28 = v15;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager forcing a connection to device %@", buf, 0xCu);
              }

              v16 = objc_alloc_init(CBConnection);
              [v16 setPeerDevice:v9];
              [v16 setConnectionFlags:16];
              v20[0] = _NSConcreteStackBlock;
              v20[1] = 3221225472;
              v20[2] = sub_1001849E8;
              v20[3] = &unk_1002CD868;
              v21 = v16;
              v17 = v16;
              [v17 activateWithCompletion:v20];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v22 objects:v29 count:16];
        }

        while (v6);
        v3 = v18;
        v2 = v19;
      }
    }
  }

  else
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager did not find any paired devices\n", buf, 2u);
    }
  }
}

void sub_1001849E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10022B5B4();
    }
  }

  [*(a1 + 32) invalidate];
}

void sub_100184BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100184BE4(uint64_t a1)
{
  if (![*(a1 + 32) _cbPoweredOff])
  {
    v23 = 0;
    v5 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:&v23];
    v4 = v23;
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (v4)
    {
      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10022B61C();
      }

      v9 = dispatch_get_global_queue(0, 0);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100184F78;
      v20[3] = &unk_1002CD8B0;
      v22 = *(a1 + 40);
      v4 = v4;
      v21 = v4;
      dispatch_async(v9, v20);

      v10 = v22;
      goto LABEL_16;
    }

    v11 = [*(*(*(a1 + 48) + 8) + 40) count];
    v12 = sub_100002880();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        v14 = "FMDBluetoothManager returned (allPairedDevices.count) devices";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }
    }

    else if (v13)
    {
      *buf = 0;
      v14 = "FMDBluetoothManager did not find any paired devices";
      goto LABEL_14;
    }

    v15 = [*(a1 + 32) accessoriesQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100184FE0;
    v18[3] = &unk_1002CFC78;
    v18[4] = *(a1 + 32);
    v17 = *(a1 + 40);
    v16 = v17;
    v19 = v17;
    dispatch_async(v15, v18);

    v10 = v19;
LABEL_16:

    goto LABEL_17;
  }

  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager powered off. Not able to return accessories.", buf, 2u);
  }

  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184EE8;
  block[3] = &unk_1002CE250;
  v25 = *(a1 + 40);
  dispatch_async(v3, block);

  v4 = v25;
LABEL_17:
}

void sub_100184EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_opt_new();
  v2 = [NSError errorWithDomain:kFMDErrorDomain code:9 userInfo:0];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_100184F78(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_opt_new();
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_100184FE0(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = *(*(a1[6] + 8) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100185134;
  v11[3] = &unk_1002CFC50;
  v11[4] = a1[4];
  v4 = v2;
  v12 = v4;
  [v3 enumerateObjectsUsingBlock:v11];
  v5 = a1[5];
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100185554;
    block[3] = &unk_1002CEEC0;
    v10 = v5;
    v8 = v4;
    v9 = 0;
    dispatch_async(v6, block);
  }
}

void sub_100185134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 deviceFlags] & 0x2000000) != 0)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager Ignoring shared device %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) bluetoothManagerDeviceForBluetoothDevice:v3];
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:v4];
    v6 = [*(a1 + 32) supportedAccessoryRegistry];
    v7 = [v6 assetsForAccessory:v5];
    v8 = [v7 fm_filter:&stru_1002CFC00];
    v9 = [v8 firstObject];

    [(FMDBluetoothAccessory *)v5 updateAudioAsset:v9];
    v10 = [(FMDBluetoothAccessory *)v5 address];
    v11 = [NSData dataWithMACAddressString:v10];

    if (v11)
    {
      v12 = objc_opt_new();
      v13 = [v12 ownerSession];

      v14 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:5.0];
      v15 = sub_100002880();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(FMDBluetoothAccessory *)v5 address];
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Retrieving baUUID for MAC: %@", buf, 0xCu);
      }

      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10018542C;
      v21 = &unk_1002CFC28;
      v22 = v5;
      v23 = v14;
      v17 = v14;
      [v13 beaconingIdentifierForMACAddress:v11 completion:&v18];
      [v17 wait];
    }

    [*(a1 + 40) addObject:v5];
  }
}

void sub_10018542C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 UUIDString];
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) address];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received baUUID: %@ for %@, %@", &v8, 0x20u);
  }

  if (v3)
  {
    [*(a1 + 32) updateWithBeaconingIdentifier:v3];
  }

  [*(a1 + 40) signal];
}

void sub_1001856B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001856D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022B6EC();
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

void sub_10018596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018599C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 btAddressData];
    v7 = [v6 fm_MACAddressString];
    v8 = [v3 name];
    *buf = 138412546;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager FoundHandler - device (%@) with name (%@)", buf, 0x16u);
  }

  if (([v3 deviceFlags] & 0x4000) == 0)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "FMDBluetoothManager FoundHandler - only BT classic devices are supported, ignoring device";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (([v3 deviceFlags] & 0x2000000) == 0)
  {
    v9 = [WeakRetained delegate];
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager notifying delegate bluetoothManagerDidConnectDevice %@", buf, 0xCu);
    }

    if (([v3 discoveryFlags] & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    v12 = [v3 btAddressData];
    v13 = [v12 fm_MACAddressString];

    v14 = [WeakRetained bluetoothManagerDevicesByAddress];
    v15 = [v14 objectForKeyedSubscript:v13];

    if (v15)
    {
      v16 = [v15 bluetoothDevice];
      v17 = [v16 name];
      v18 = [v3 name];
      v19 = [v17 compare:v18];

      if (!v19)
      {
LABEL_18:

        goto LABEL_19;
      }

      v20 = [WeakRetained bluetoothDiscoveryQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100185E28;
      v23[3] = &unk_1002CDD98;
      v24 = v15;
      v25 = v3;
      v26 = WeakRetained;
      dispatch_async(v20, v23);

      v21 = v24;
    }

    else
    {
      v22 = [WeakRetained bluetoothDiscoveryQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100185D64;
      block[3] = &unk_1002CDD98;
      block[4] = WeakRetained;
      v28 = v3;
      v29 = v9;
      dispatch_async(v22, block);

      v21 = v28;
    }

    goto LABEL_18;
  }

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "FMDBluetoothManager FoundHandler - ignoring temporary device";
    goto LABEL_15;
  }

LABEL_19:
}

void sub_100185D64(uint64_t a1)
{
  v2 = [*(a1 + 32) _bluetoothManagerDeviceForBluetoothDevice:*(a1 + 40)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100185E1C;
  v4[3] = &unk_1002CD478;
  v5 = *(a1 + 48);
  v6 = v2;
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_100185E28(id *a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] bluetoothDevice];
    v4 = [v3 name];
    v5 = [a1[5] name];
    *buf = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager deviceNameChanged (%@) => (%@)", buf, 0x16u);
  }

  v6 = [a1[6] _bluetoothManagerDeviceForBluetoothDevice:a1[5]];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100185F9C;
  v8[3] = &unk_1002CD478;
  v8[4] = a1[6];
  v9 = v6;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_100185F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 bluetoothManagerDidUpdateDevice:*(a1 + 40)];
}

void sub_100185FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceFlags];
  WeakRetained = sub_100002880();
  v6 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 0x4000) != 0)
  {
    if (v6)
    {
      v10 = [v3 btAddressData];
      v11 = [v10 fm_MACAddressString];
      v12 = [v3 name];
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager LostHandler - device (%@) with name (%@)", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (([v3 deviceFlags] & 0x2000000) != 0)
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "FMDBluetoothManager LostHandler - ignoring temporary device";
        goto LABEL_12;
      }
    }

    else
    {
      if (![WeakRetained _cbPoweredOff])
      {
        v15 = [WeakRetained delegate];
        v16 = sub_100002880();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager notifying delegate bluetoothManagerDidDisconnectDevice %@", buf, 0xCu);
        }

        [WeakRetained bluetoothManagerDeviceForBluetoothDevice:v3];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10018630C;
        v18[3] = &unk_1002CD478;
        v20 = v19 = v15;
        v17 = v20;
        v13 = v15;
        dispatch_async(&_dispatch_main_q, v18);

        goto LABEL_16;
      }

      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Ignore notification. Bailing.";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v6)
  {
    v7 = [v3 btAddressData];
    v8 = [v7 fm_MACAddressString];
    v9 = [v3 name];
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager LostHandler - only BT classic devices are supported, ignoring device (%@) with name (%@)", buf, 0x16u);
  }

LABEL_17:
}

void sub_100186318(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002880();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10022B754();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting BT Discovery", v5, 2u);
  }
}

void sub_1001865F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_100186640(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bluetoothDiscoveryQueue];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100186700;
    v6[3] = &unk_1002CD478;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

id sub_100186700(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager didDiscoverDevice %@", &v5, 0xCu);
  }

  return [*(a1 + 40) didDiscoverDevice:*(a1 + 32)];
}

void sub_1001867B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bluetoothDiscoveryQueue];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100186870;
    v6[3] = &unk_1002CD478;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

id sub_100186870(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager didLoseDevice %@", &v5, 0xCu);
  }

  return [*(a1 + 40) didLoseDevice:*(a1 + 32)];
}

void sub_100186920(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bluetoothDiscoveryQueue];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001869BC;
    block[3] = &unk_1002CD4C8;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

id sub_1001869BC(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager discovery ended - setting all channels inactive.", v4, 2u);
  }

  return [*(a1 + 32) setAllAudioChannelsActive:0];
}

void sub_100186A34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bluetoothDiscoveryQueue];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100186AD0;
    block[3] = &unk_1002CD4C8;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

id sub_100186AD0(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager discovery started - setting all channels active.", v4, 2u);
  }

  return [*(a1 + 32) setAllAudioChannelsActive:1];
}

void sub_100186BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v9 = a3;
  v5 = [v9 bluetoothDevice];
  v6 = [v5 vendorID];
  v7 = [v9 bluetoothDevice];
  v8 = [v4 profileWithVendorID:v6 productID:{objc_msgSend(v7, "productID")}];

  [*(a1 + 32) setInternalDeviceAudioChannels:v9 profile:v8 active:*(a1 + 40)];
}

void sub_100186E48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FMDAudioChannelStatus alloc] initWithName:v3 active:*(a1 + 40)];

  [*(a1 + 32) addAudioChannelStatus:v4];
}

void sub_100187054(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[FMDBLEBeacon alloc] initWithConfiguration:v4];
  [(FMDBLEBeacon *)v6 setActive:*(a1 + 40)];
  [*(a1 + 32) addBLEBeacon:v6];
  v5 = [[FMDAudioChannelStatus alloc] initWithConfiguration:v4];

  [(FMDBLEBeacon *)v5 setActive:*(a1 + 40)];
  [*(a1 + 32) addAudioChannelStatus:v5];
}

void sub_100187230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100187248(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothAddress];
  v3 = [v2 fm_MACAddressString];

  if (v3)
  {
    v4 = [CBDiscovery devicesWithDiscoveryFlags:10485760 error:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v15;
      *&v6 = 138412290;
      v13 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (([v10 deviceFlags] & 0x2000000) != 0)
          {
            v12 = sub_100002880();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v13;
              v19 = v10;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager ignoring temporary device - %@", buf, 0xCu);
            }
          }

          else
          {
            v11 = [v10 btAddressData];
            v12 = [v11 fm_MACAddressString];

            if ([v12 isEqualToString:v3])
            {
              objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

void sub_100187558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100187570(uint64_t a1)
{
  v2 = [*(a1 + 32) _bluetoothManagerDeviceForBluetoothDevice:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10018826C(uint64_t a1, void *a2)
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

void sub_100188760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1001887A8(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10018AEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v24 - 72));
  _Unwind_Resume(a1);
}

void sub_10018AF30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logPublishedLocation:v9 reason:a4 publisher:v8];
}

void sub_10018AFB0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMCompareLocatorPublisher publishing to primary publisher.", v12, 2u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v8, a4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10018B0A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018B144;
  v6[3] = &unk_1002CFEE0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 startPublishingWithBlock:v6];
}

uint64_t sub_10018BA60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10018C0BC(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022B920(a1, v2);
  }

  v3 = [*(a1 + 40) delegates];
  [v3 addPointer:*(a1 + 32)];
}

void sub_10018C1AC(uint64_t a1)
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
      sub_10022B99C(v5, v6);
    }
  }

  v7 = objc_opt_new();
  [*(a1 + 32) setAccessoriesByIdentifier:v7];
}

void sub_10018C39C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained accessoriesByIdentifier];
  v4 = [a1[4] accessoryIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1[5];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 assetType] == 1 && objc_msgSend(v5, "conformsToProtocol:", &OBJC_PROTOCOL___FMDAudioAccessory))
        {
          v12 = [v5 updateAudioAsset:v11];

          if (v12)
          {
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 3221225472;
            v13[2] = sub_10018C5A0;
            v13[3] = &unk_1002CD288;
            objc_copyWeak(&v15, a1 + 6);
            v14 = a1[4];
            dispatch_async(&_dispatch_main_q, v13);

            objc_destroyWeak(&v15);
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10018C5A0(uint64_t a1)
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry is updating assets.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained accessoryDidUpdate:*(a1 + 32)];
}

void sub_10018C770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained accessoriesByIdentifier];
  v4 = [*(a1 + 32) accessoryIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];
  v7 = v5;
  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = *(a1 + 32);
  }

  v8 = [v7 updatePlaybackChannels:*(a1 + 40)];
LABEL_6:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C8C0;
  v10[3] = &unk_1002CFFE0;
  v13 = v8;
  v10[4] = WeakRetained;
  v11 = v5;
  v12 = *(a1 + 48);
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

uint64_t sub_10018C8C0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = sub_100002880();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry is updating playbackChannels.", v4, 2u);
    }

    [*(a1 + 32) accessoryDidUpdate:*(a1 + 40)];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10018CA34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10018CA58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSources];
  [v2 addObjectsFromArray:*(a1 + 32)];
}

void sub_10018CB9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10018CBC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSources];
  [v2 addObject:*(a1 + 32)];
}

void sub_10018CCE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained computeAccessoryRegistry];
}

void sub_10018D274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018D28C(uint64_t a1)
{
  v6 = [*(a1 + 32) delegates];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10018D3F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained accessoriesByIdentifier];
  v3 = [v2 allValues];
  v4 = [v3 copy];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void sub_10018D948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10018D9A4(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018DA70;
  v9[3] = &unk_1002D0058;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v8 = *(a1 + 56);
  v7 = v8;
  v13 = v8;
  v14 = *(a1 + 72);
  [a2 getAccessoriesWithCompletion:v9];
}

void sub_10018DA70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 72) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:v5];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10018DB7C;
    v14 = &unk_1002D0030;
    v10 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = v10;
    [v5 enumerateObjectsUsingBlock:&v11];
    if (!--*(*(*(a1 + 64) + 8) + 24))
    {
      [*(a1 + 56) signal];
    }
  }
}

void sub_10018DB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryIdentifier];

  if (v4)
  {
    if ([*(a1 + 32) supportsAccessory:v3])
    {
      v5 = *(a1 + 40);
      v6 = [v3 accessoryIdentifier];
      [v5 addObject:v6];
    }
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022BAC4(v3, v7);
    }
  }
}

void sub_10018DC28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018DCBC;
  block[3] = &unk_1002CD4C8;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void sub_10018DCC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0 && objc_msgSend(v5, "category") != 3)
  {
    [*(a1 + 40) _removeAccessory:v5];
  }
}

void sub_10018DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018DF50(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoriesByIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10018E2D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained accessoryDidPair:*(a1 + 32)];
  [*(a1 + 40) postConnectionStatusChangeNotification];
}

void sub_10018E4EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained accessoryDidUnpair:*(a1 + 32)];
  [*(a1 + 40) postConnectionStatusChangeNotification];
}

void sub_10018E860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    [WeakRetained accessoryDidUpdate:*(a1 + 32)];
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : accessory updated %@", &v12, 0xCu);
    }
  }

  if (*(a1 + 57) == 1)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) name];
      v8 = *(a1 + 32);
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : accessory name: %@ disconnected %@", &v12, 0x16u);
    }

    [v3 accessoryDidDisconnect:*(a1 + 32)];
  }

  else if (*(a1 + 58) == 1)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) name];
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : accessory name: %@ connected %@", &v12, 0x16u);
    }

    [v3 accessoryDidConnect:*(a1 + 32)];
  }

  [*(a1 + 40) postConnectionStatusChangeNotification];
}

void sub_10018EDB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAccessory:*(a1 + 32) previouslyPaired:0];
}

void sub_10018EEF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAccessory:*(a1 + 32)];
}

void sub_10018F018(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoriesByIdentifier];
  v3 = [v2 allValues];
  v4 = [v3 copy];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018F0D0;
  v5[3] = &unk_1002D00D0;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void sub_10018F0D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 address];
  v5 = [NSData dataWithMACAddressString:v4];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v6 ownerSession];

    v8 = [[FMSynchronizer alloc] initWithDescription:@"SP-BA-UUID" andTimeout:5.0];
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 address];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry Retrieving baUUID for MAC: %@", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10018F2AC;
    v14[3] = &unk_1002D0120;
    v11 = v3;
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    v17 = v8;
    v13 = v8;
    [v7 beaconingIdentifierForMACAddress:v5 completion:v14];
    [v13 wait];
  }
}

void sub_10018F2AC(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 UUIDString];
    v6 = [a1[4] name];
    v7 = [a1[4] address];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry Received baUUID: %@ for %@, %@", &v10, 0x20u);
  }

  if (v3)
  {
    v8 = [a1[4] baUUID];
    v9 = [v3 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [a1[4] updateWithBeaconingIdentifier:v3];
      [a1[5] updateAccessory:a1[4]];
    }
  }

  [a1[6] signal];
}

void sub_10018F7D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dataArchiver];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v4, v5, v6, v7, v8, objc_opt_class(), 0];
  v18 = 0;
  v10 = [v3 readDictionaryAndClasses:v9 error:&v18];
  v11 = v18;
  v12 = &__NSDictionary0__struct;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if (v11 && ([v11 fm_isFileNotFoundError] & 1) == 0)
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022BCB0();
    }

    v15 = +[FMDEventLoggerGeneral sharedInstance];
    [v15 sendError:v11 forEventName:@"FMDAccessoryRegistryFailedReadEventName"];
  }

  v16 = [v13 allValues];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10018F9E0;
  v17[3] = &unk_1002D00D0;
  v17[4] = *(a1 + 32);
  [v16 enumerateObjectsUsingBlock:v17];
}

id *sub_10018FEF4(id *result)
{
  if (*(result + 48) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry is updating channel availability.", v5, 2u);
    }

    return [v3[4] accessoryDidUpdate:v3[5]];
  }

  return result;
}

void sub_100190990(uint64_t a1, void *a2)
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
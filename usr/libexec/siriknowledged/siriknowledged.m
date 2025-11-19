uint64_t sub_1000012BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_initWeak(&location, WeakRetained);
    v2 = *(v4 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001384;
    block[3] = &unk_100018540;
    objc_copyWeak(&v6, &location);
    dispatch_async(v2, block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return _objc_release_x1();
}

uint64_t sub_100001384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    val = WeakRetained;
    if (v3)
    {
      v4 = dispatch_source_testcancel(v3);
      v2 = val;
      if (!v4)
      {
        dispatch_source_cancel(v3);
        v5 = val[2];
        val[2] = 0;

        v2 = val;
      }
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2[1]);
    v7 = val[2];
    val[2] = v6;

    objc_initWeak(&location, val);
    v8 = val[2];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000014EC;
    handler[3] = &unk_100018540;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v8, handler);
    v9 = val[2];
    v10 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(val[2]);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return _objc_release_x1();
}

void sub_1000014EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    dispatch_source_cancel(WeakRetained[2]);
    v2 = v14[2];
    v14[2] = 0;

    AFSupportPreferencesSynchronize();
    v3 = AFPreferencesAssistantEnabled();
    v4 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = @"enabled";
      if (!v3)
      {
        v5 = @"disabled";
      }

      *buf = 136315394;
      v25 = "[CKSiriSettingsMonitor _setAssistantEnabledStatus:]";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Siri Assistant is now %@", buf, 0x16u);
    }

    if (!v3)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [&off_1000194B0 countByEnumeratingWithState:&v16 objects:buf count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(&off_1000194B0);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            v11 = objc_autoreleasePoolPush();
            v12 = CKLogContextDaemon;
            if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *v20 = 136315394;
              v21 = "[CKSiriSettingsMonitor _setAssistantEnabledStatus:]";
              v22 = 2112;
              v23 = v10;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Deleting all values from store with identifier %@", v20, 0x16u);
            }

            v13 = +[CKDaemon sharedDaemon];
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_1000017A0;
            v15[3] = &unk_100018780;
            v15[4] = v10;
            [v13 removeAllValuesFromStoreWithIdentifier:v10 completionHandler:v15];

            objc_autoreleasePoolPop(v11);
          }

          v7 = [&off_1000194B0 countByEnumeratingWithState:&v16 objects:buf count:16];
        }

        while (v7);
      }
    }

    WeakRetained = v14;
  }
}

void sub_1000017A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v3 localizedDescription];
      v8 = 136315650;
      v9 = "[CKSiriSettingsMonitor _setAssistantEnabledStatus:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error deleting values from store %@ on Siri deactivation. %@", &v8, 0x20u);
    }
  }
}

uint64_t sub_1000019D0(uint64_t a1)
{
  qword_10001D938 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100001A08(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [@"CKPersistentStorageKeysRemoved." stringByAppendingString:a2];
  v7 = @"removed";
  v8 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, v4, 0, v5, 1u);
}

void sub_100001F28(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  qword_10001D940 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_100002214(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error: %@", &v14, 0x16u);
    }
  }

  v8 = objc_opt_new();
  v9 = v8;
  if (v6)
  {
    [v8 addObjectsFromArray:v6];
  }

  if ([*(a1 + 32) count])
  {
    v10 = +[CKDaemon sharedDaemon];
    [v10 saveKeysAndValues:*(a1 + 32) toStoreWithIdentifier:@"synched" completionHandler:&stru_100018580];

    v11 = [*(a1 + 32) allKeys];
    [v9 removeObjectsInArray:v11];
  }

  if ([*(a1 + 40) count])
  {
    v12 = +[CKDaemon sharedDaemon];
    [v12 removeValuesForKeys:*(a1 + 40) fromStoreWithIdentifier:@"synched" completionHandler:&stru_1000185A0];

    [v9 removeObjectsInArray:*(a1 + 40)];
  }

  if ([v9 count])
  {
    v13 = +[CKDaemon sharedDaemon];
    [v13 removeValuesForKeys:v9 fromStoreWithIdentifier:@"synched" completionHandler:&stru_1000185C0];
  }
}

void sub_1000023FC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error: %@", &v4, 0x16u);
    }
  }
}

void sub_1000024C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error: %@", &v4, 0x16u);
    }
  }
}

void sub_10000258C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error: %@", &v4, 0x16u);
    }
  }
}

void sub_100002654(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error: %@", &v4, 0x16u);
    }
  }
}

void sub_10000271C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s error: %@", &v4, 0x16u);
    }
  }
}

void sub_100002A60(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKAlarmInteractionProcessor processInteraction:bundleId:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
    }
  }
}

void sub_100002D3C(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 9) != a2)
  {
    *(a1 + 9) = a2;
    v4 = +[CKKnowledgeStore userDefaultsKnowledgeStore];
    v3 = [NSNumber numberWithBool:*(a1 + 9)];
    [v4 setValue:v3 forKey:@"HasSetUpRecordZoneSubscription"];
  }
}

uint64_t sub_100002DE0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000031D0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(v9 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000032B0;
  block[3] = &unk_100018960;
  block[4] = v9;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v17 = a1[6];
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, block);
}

void sub_1000032B0(uint64_t a1)
{
  [*(a1 + 32) _cancelSubscriptionSetupTimer];
  if ([*(a1 + 32) _shouldSync])
  {
    if ([*(a1 + 40) containsObject:*(a1 + 48)])
    {
      v2 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 48);
        v4 = v2;
        v5 = [v3 subscriptionID];
        *buf = 136315394;
        v21 = "[CKNCloudKitManager _setupRecordZoneSubscriptionWithRetryInterval:]_block_invoke";
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Subscription created: (%@)", buf, 0x16u);
      }

      objc_storeStrong((*(a1 + 32) + 72), *(a1 + 48));
      sub_100002D3C(*(a1 + 32), 1);
      [*(a1 + 32) _fetchChanges];
    }

    else
    {
      v7 = sub_10000363C(*(a1 + 56));
      v8 = *(a1 + 32);
      if (v7)
      {
        if (*(v8 + 56))
        {

          [v8 _resetZone];
        }

        else
        {

          sub_100002D3C(v8, 0);
        }
      }

      else
      {
        v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v8 + 32));
        v10 = *(a1 + 32);
        v11 = *(v10 + 80);
        *(v10 + 80) = v9;

        v12 = *(*(a1 + 32) + 80);
        v13 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
        dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        if (*(a1 + 64) + *(a1 + 64) <= 86400.0)
        {
          v14 = *(a1 + 64) + *(a1 + 64);
        }

        else
        {
          v14 = 86400.0;
        }

        v15 = *(a1 + 32);
        v16 = *(v15 + 80);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000037D8;
        v19[3] = &unk_100018910;
        v19[4] = v15;
        *&v19[5] = v14;
        dispatch_source_set_event_handler(v16, v19);
        dispatch_resume(*(*(a1 + 32) + 80));
        v17 = CKLogContextDaemon;
        if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 56);
          *buf = 136315650;
          v21 = "[CKNCloudKitManager _setupRecordZoneSubscriptionWithRetryInterval:]_block_invoke_2";
          v22 = 2112;
          v23 = v18;
          v24 = 2048;
          v25 = v14;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Subscription creation failed with error (%@). Retrying in %f seconds", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v6 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CKNCloudKitManager _setupRecordZoneSubscriptionWithRetryInterval:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Will not retry creating zone subscription", buf, 0xCu);
    }
  }
}

uint64_t sub_10000363C(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];

  if (v2 != CKErrorDomain)
  {
    goto LABEL_2;
  }

  if ([v1 code] == 26)
  {
    v3 = 1;
    goto LABEL_17;
  }

  if ([v1 code] == 2)
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKey:CKPartialErrorsByItemIDKey];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [v5 allValues];
    v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) code] == 26)
          {
            v3 = 1;
            goto LABEL_16;
          }
        }

        v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
LABEL_2:
    v3 = 0;
  }

LABEL_17:

  return v3;
}

void sub_1000038F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _createRecordsIDsForKeys:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000039B0;
  v5[3] = &unk_1000189D8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _saveRecords:0 recordIDsToDelete:v2 savePolicy:1 completion:v5];
}

void sub_1000039B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003AAC;
    v12[3] = &unk_100018B40;
    v16 = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    dispatch_async(v11, v12);
  }
}

void sub_100003B88(uint64_t a1)
{
  v2 = [*(a1 + 32) _createRecordsWithDictionary:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003C48;
  v5[3] = &unk_1000189D8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _saveRecords:v2 recordIDsToDelete:0 savePolicy:1 completion:v5];
}

void sub_100003C48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003D44;
    v12[3] = &unk_100018B40;
    v16 = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    dispatch_async(v11, v12);
  }
}

void sub_1000040D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CKLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[CKNCloudKitManager _saveRecords:recordIDsToDelete:savePolicy:completion:]_block_invoke";
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to save records into database with error: (%@)", buf, 0x16u);
    }

    if (sub_100004360(v9))
    {
      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = *(a1 + 32);
      v13 = *(v12 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004534;
      block[3] = &unk_1000187A8;
      block[4] = v12;
      v14 = v11;
      v20 = v14;
      dispatch_async(v13, block);
    }

    else
    {
      if (!sub_10000363C(v9))
      {
        goto LABEL_12;
      }

      v14 = dispatch_group_create();
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 32);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000045F8;
    v18[3] = &unk_100018A90;
    v18[4] = v15;
    dispatch_group_notify(v14, v16, v18);
  }

  else
  {
    if (!os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v14 = v10;
    *buf = 136315394;
    v22 = "[CKNCloudKitManager _saveRecords:recordIDsToDelete:savePolicy:completion:]_block_invoke_4";
    v23 = 2048;
    v24 = [v7 count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Saved %ld records into database", buf, 0x16u);
  }

LABEL_12:
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v9, v7, v8);
  }
}

uint64_t sub_100004360(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];

  if (v2 != CKErrorDomain)
  {
    goto LABEL_2;
  }

  if ([v1 code] == 112)
  {
    v3 = 1;
    goto LABEL_19;
  }

  if ([v1 code] == 2)
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKey:CKPartialErrorsByItemIDKey];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 allValues];
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
          v12 = [v11 domain];
          v13 = v12;
          if (v12 == v2)
          {
            v14 = [v11 code];

            if (v14 == 112)
            {
              v3 = 1;
              goto LABEL_18;
            }
          }

          else
          {
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

    v3 = 0;
LABEL_18:
  }

  else
  {
LABEL_2:
    v3 = 0;
  }

LABEL_19:

  return v3;
}

void sub_100004534(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) zoneID];
  if (v2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100004610;
    v4[3] = &unk_100018780;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v3 _deleteRecordZoneWithID:v2 qualityOfService:17 completion:v4];
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_1000045F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[7])
  {
    [v1 _resetZone];
  }

  else
  {
    sub_100002D3C(v1, 0);
  }
}

void sub_10000506C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 zoneName];
      v15 = 136315650;
      v16 = "[CKNCloudKitManager _deleteRecordZoneWithID:qualityOfService:completion:]_block_invoke";
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Error deleting zone (%@): (%@)", &v15, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void sub_1000054BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v10;
      v15 = [v13 zoneName];
      v16 = 136315650;
      v17 = "[CKNCloudKitManager _createRecordZoneWithID:completion:]_block_invoke";
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Error creating zone (%@): (%@)", &v16, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v7 firstObject];
    (*(v11 + 16))(v11, v9, v12);
  }
}

void sub_100005740(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005824;
  block[3] = &unk_100018960;
  block[4] = v8;
  v13 = v7;
  v14 = v5;
  v15 = v6;
  v16 = a1[6];
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void sub_100005824(uint64_t a1)
{
  [*(a1 + 32) _cancelRecordZoneSetupTimer];
  if ([*(a1 + 32) _shouldSync])
  {
    v2 = *(a1 + 32);
    if (*(v2 + 48))
    {
      v3 = *(a1 + 48);
      if (!v3)
      {
        v14 = *(a1 + 56);
        if (v14)
        {
          v15 = CKLogContextDaemon;
          if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v16 = v15;
            v17 = [v14 zoneID];
            v18 = [v17 zoneName];
            *buf = 136315394;
            v26 = "[CKNCloudKitManager _setupRecordZoneWithRetryInterval:]_block_invoke";
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Zone created: (%@)", buf, 0x16u);

            v14 = *(a1 + 56);
            v2 = *(a1 + 32);
          }

          if (([v14 isEqual:*(v2 + 56)] & 1) == 0)
          {
            objc_storeStrong((*(a1 + 32) + 56), *(a1 + 56));
            sub_100005B9C(*(a1 + 32), 0);
          }

          v19 = *(a1 + 32);
          if (*(v19 + 72) && *(v19 + 9) != 1)
          {
            [v19 _fetchChanges];
          }

          else
          {
            [v19 _setupRecordZoneSubscription];
          }

          return;
        }
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100005D1C;
      v22[3] = &unk_100018938;
      v22[4] = v2;
      v24 = *(a1 + 64);
      v23 = v3;
      v4 = objc_retainBlock(v22);
      v5 = *(a1 + 48);
      if (v5 && sub_100004360(v5))
      {
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100005ED8;
        v20[3] = &unk_100018C58;
        v20[4] = v7;
        v21 = v4;
        [v7 _deleteRecordZoneWithID:v6 qualityOfService:17 completion:v20];
      }

      else
      {
        (v4[2])(v4);
      }

      v13 = v23;
    }

    else
    {
      v12 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v26 = "[CKNCloudKitManager _setupRecordZoneWithRetryInterval:]_block_invoke_3";
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Zone creation error - container no longer exists", buf, 0xCu);
        v2 = *(a1 + 32);
      }

      v13 = *(v2 + 56);
      *(v2 + 56) = 0;
    }

    return;
  }

  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    v11 = [v9 zoneName];
    *buf = 136315394;
    v26 = "[CKNCloudKitManager _setupRecordZoneWithRetryInterval:]_block_invoke_2";
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Will not attempt retry creating zone: (%@)", buf, 0x16u);
  }
}

void sub_100005B9C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v7 = *(a1 + 88);
    v6 = (a1 + 88);
    if (v7 != v4)
    {
      objc_storeStrong(v6, a2);
      v8 = +[CKKnowledgeStore userDefaultsKnowledgeStore];
      if (v5)
      {
        v13 = 0;
        v9 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
        v10 = v13;
        if (!v10)
        {
          [v8 setValue:v9 forKey:@"ServerChangeToken"];

          goto LABEL_10;
        }

        v11 = v10;
        v12 = CKLogContextDaemon;
        if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "[CKNCloudKitManager setServerChangeToken:]";
          v16 = 2112;
          v17 = v5;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Error unarchihving server change token %@", buf, 0x16u);
        }
      }

      [v8 setValue:0 forKey:@"ServerChangeToken"];
LABEL_10:
    }
  }
}

void sub_100005D1C(uint64_t a1)
{
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = *(*(a1 + 32) + 64);
  v6 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  if (*(a1 + 48) + *(a1 + 48) <= 86400.0)
  {
    v7 = *(a1 + 48) + *(a1 + 48);
  }

  else
  {
    v7 = 86400.0;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005FB8;
  v12[3] = &unk_100018910;
  v12[4] = v8;
  *&v12[5] = v7;
  dispatch_source_set_event_handler(v9, v12);
  dispatch_resume(*(*(a1 + 32) + 64));
  v10 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 40);
    *buf = 136315650;
    v14 = "[CKNCloudKitManager _setupRecordZoneWithRetryInterval:]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 2048;
    v18 = v7;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Zone creation failed: (%@) Retrying in %f seconds", buf, 0x20u);
  }
}

void sub_100005ED8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005F68;
  v4[3] = &unk_100018898;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t sub_100005F68(uint64_t a1)
{
  [*(a1 + 32) _cancelRecordZoneSetupTimer];
  sub_100002D3C(*(a1 + 32), 0);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100006504(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006598;
  v4[3] = &unk_1000188E8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _fetchChangesFrom:0 completion:v4];
}

void sub_100006598(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000066A4;
    block[3] = &unk_1000188C0;
    v18 = v12;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v19 = a5;
    dispatch_async(v13, block);
  }
}

void sub_100006758(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[11];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000067F0;
  v3[3] = &unk_1000188E8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _fetchChangesFrom:v2 completion:v3];
}

void sub_1000067F0(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(v16 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006928;
  block[3] = &unk_100018870;
  v23 = v11;
  v24 = v16;
  v25 = v14;
  v27 = v13;
  v28 = v15;
  v26 = v12;
  v29 = a5;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  v21 = v11;
  dispatch_async(v17, block);
}

uint64_t sub_100006928(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if ([*(a1 + 40) _shouldSync])
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
LABEL_9:
      sub_100005B9C(v3, v4);
      goto LABEL_10;
    }

    v2 = *(a1 + 32);
  }

  v5 = v2;
  v6 = [v5 domain];
  v7 = v6;
  if (v6 != CKErrorDomain)
  {

    goto LABEL_10;
  }

  v8 = [v5 code];

  if (v8 == 21)
  {
    v3 = *(a1 + 40);
    v4 = 0;
    goto LABEL_9;
  }

LABEL_10:
  result = *(a1 + 72);
  if (result)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(result + 16);
    v14 = *(a1 + 80);

    return v13();
  }

  return result;
}

void sub_100006B24(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(v16 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006C4C;
  block[3] = &unk_100018820;
  v23 = v11;
  v24 = v16;
  v29 = a5;
  v25 = v14;
  v26 = v12;
  v27 = v13;
  v28 = v15;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  v21 = v11;
  dispatch_async(v17, block);
}

void sub_100006C4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if ([*(a1 + 40) _shouldSync])
    {
      sub_100005B9C(*(a1 + 40), *(a1 + 48));
      if ((*(a1 + 80) & 1) != 0 || [*(a1 + 56) count] || objc_msgSend(*(a1 + 64), "count"))
      {
        v3 = [*(a1 + 40) _createDictionaryFromRecords:*(a1 + 56)];
        v4 = CKLogContextDaemon;
        if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v5 = v4;
          v6 = [v3 allKeys];
          *buf = 136315394;
          v18 = "[CKNCloudKitManager _fetchChangesWithRetryCount:]_block_invoke_2";
          v19 = 2112;
          v20 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Received keys=[%@]", buf, 0x16u);
        }

        v7 = [*(a1 + 40) _createKeysForRecordsIDs:*(a1 + 64)];
        [*(*(a1 + 40) + 96) mergeRecordsWithDictionary:v3 deletedRecordKeys:v7 containsAllChanges:*(a1 + 80)];
        v8 = +[AFAnalytics sharedAnalytics];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100006F24;
        v15[3] = &unk_1000187F8;
        v16 = *(a1 + 56);
        [v8 logEventWithType:4102 contextProvider:v15];
      }

      return;
    }

    v2 = *(a1 + 32);
  }

  v14 = v2;
  v9 = [v14 domain];
  v10 = v9;
  if (v9 == CKErrorDomain)
  {
    v11 = [v14 code];

    if (v11 == 21)
    {
      sub_100005B9C(*(a1 + 40), 0);
      if ([*(a1 + 40) _shouldSync])
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 72) + 1;

        [v12 _fetchChangesWithRetryCount:v13];
      }
    }
  }

  else
  {
  }
}

id sub_100006F24(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v21 = v2;
    v4 = [[NSMutableArray alloc] initWithCapacity:v3];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [[NSMutableDictionary alloc] initWithCapacity:4];
          v12 = [v10 recordID];
          v13 = [v12 recordName];

          if (v13)
          {
            [v11 setObject:v13 forKey:@"record name"];
          }

          v14 = [v10 modificationDate];
          v15 = v14;
          if (v14)
          {
            [v14 timeIntervalSince1970];
            v16 = [NSNumber numberWithDouble:?];
            [v11 setObject:v16 forKey:@"modification date"];
          }

          v17 = [v10 recordChangeTag];
          if (v17)
          {
            [v11 setObject:v17 forKey:@"tag"];
          }

          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v2 = v21;
    if ([v4 count])
    {
      [v21 setObject:v4 forKey:@"changes"];
    }
  }

  v18 = +[NSDate date];
  [v18 timeIntervalSince1970];
  v19 = [NSNumber numberWithDouble:?];
  [v2 setObject:v19 forKey:@"now"];

  return v2;
}

uint64_t sub_1000077F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007838(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 domain];
    v16 = v15;
    if (v15 == CKErrorDomain)
    {
      v23 = [v14 code];

      if (v23 == 21)
      {
        v24 = CKLogContextDaemon;
        if (!os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
LABEL_11:
          v31 = *(*(a1 + 32) + 8);
          v22 = *(v31 + 40);
          *(v31 + 40) = 0;
          goto LABEL_12;
        }

        v25 = v24;
        v26 = [v10 zoneName];
        v32 = 136315394;
        v33 = "[CKNCloudKitManager _fetchChangesFrom:completion:]_block_invoke_4";
        v34 = 2112;
        v35 = v26;
        v27 = "%s Change token expired for zone (%@)";
        v28 = v25;
        v29 = 22;
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v27, &v32, v29);

        goto LABEL_11;
      }
    }

    else
    {
    }

    v30 = CKLogContextDaemon;
    if (!os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v25 = v30;
    v26 = [v10 zoneName];
    v32 = 136315650;
    v33 = "[CKNCloudKitManager _fetchChangesFrom:completion:]_block_invoke";
    v34 = 2112;
    v35 = v26;
    v36 = 2112;
    v37 = v14;
    v27 = "%s Failed to fetch changes in zone (%@) with error (%@)";
    v28 = v25;
    v29 = 32;
    goto LABEL_14;
  }

  v17 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v19 = [v10 zoneName];
    v32 = 136315394;
    v33 = "[CKNCloudKitManager _fetchChangesFrom:completion:]_block_invoke";
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Fetched changes successfully in zone (%@)", &v32, 0x16u);
  }

  v20 = *(*(a1 + 32) + 8);
  v21 = v11;
  v22 = *(v20 + 40);
  *(v20 + 40) = v21;
LABEL_12:
}

void sub_100007AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    [v5 databaseScope];
    v7 = CKDatabaseScopeString();
    v8 = [*(a1 + 40) count];
    *buf = 136315650;
    v24 = "[CKNCloudKitManager _fetchChangesFrom:completion:]_block_invoke";
    v25 = 2112;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Finished fetching changes in database (%@), %ld records", buf, 0x20u);
  }

  if (v3)
  {
    v9 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[CKNCloudKitManager _fetchChangesFrom:completion:]_block_invoke";
      v25 = 2112;
      v26 = v3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to fetch changes with error (%@)", buf, 0x16u);
    }

    v10 = sub_100004360(v3);
    v11 = sub_10000363C(v3);
    if ((v10 & 1) != 0 || v11)
    {
      v12 = dispatch_group_create();
      v13 = v12;
      if (v10)
      {
        dispatch_group_enter(v12);
        v14 = *(a1 + 48);
        v15 = *(v14 + 32);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100007D90;
        block[3] = &unk_1000187A8;
        block[4] = v14;
        v22 = v13;
        dispatch_async(v15, block);
      }

      v16 = *(a1 + 48);
      v17 = *(v16 + 32);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100007E54;
      v20[3] = &unk_100018A90;
      v20[4] = v16;
      dispatch_group_notify(v13, v17, v20);
    }

    v18 = *(a1 + 64);
    if (v18)
    {
      v19 = 0;
LABEL_15:
      (*(v18 + 16))(v18, v3, *(a1 + 40), *(a1 + 56), v19, *(*(*(a1 + 72) + 8) + 40));
    }
  }

  else
  {
    v18 = *(a1 + 64);
    if (v18)
    {
      v19 = *(a1 + 80);
      goto LABEL_15;
    }
  }
}

void sub_100007D90(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) zoneID];
  if (v2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100007E6C;
    v4[3] = &unk_100018780;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v3 _deleteRecordZoneWithID:v2 qualityOfService:17 completion:v4];
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100007E54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[7])
  {
    [v1 _resetZone];
  }

  else
  {
    sub_100002D3C(v1, 0);
  }
}

void sub_1000082A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008374;
  block[3] = &unk_100018690;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100008374(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CKNCloudKitManager _setupAccount]_block_invoke_2";
      v11 = 2112;
      v12 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error while retrieving account status: %@", &v9, 0x16u);
    }
  }

  v4 = *(a1 + 40);
  if (v4 && [v4 supportsDeviceToDeviceEncryption])
  {
    [*(a1 + 48) _handleAccountStatusChange:*(a1 + 40)];
    return;
  }

  v5 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[CKNCloudKitManager _setupAccount]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Account status change cannot be handled", &v9, 0xCu);
    v5 = CKLogContextDaemon;
  }

  v6 = *(a1 + 40);
  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v7)
    {
      v9 = 136315138;
      v10 = "[CKNCloudKitManager _setupAccount]_block_invoke";
      v8 = "%s AccountInfo DOES NOT supportsDeviceToDeviceEncryption";
LABEL_15:
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v8, &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 136315138;
    v10 = "[CKNCloudKitManager _setupAccount]_block_invoke";
    v8 = "%s AccountInfo is nil";
    goto LABEL_15;
  }
}

void sub_10000863C(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 cloudSyncEnabled];

  v4 = *(a1 + 32);
  if (*(v4 + 8) != v3)
  {
    *(v4 + 8) = v3;
    v5 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      if (*(*(a1 + 32) + 8))
      {
        v6 = @"enabled";
      }

      else
      {
        v6 = @"disabled";
      }

      v8 = 136315394;
      v9 = "[CKNCloudKitManager _cloudSyncPreferenceDidChange]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Cloud synch is now %@", &v8, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v7[8] == 1)
    {
      [v7 _initializeZone];
      [*(a1 + 32) _setupAccountState];
    }

    else
    {
      [v7 _cleanUpRecordZonesAndSubscriptions];
    }
  }
}

void *sub_100008EDC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[3];
    if (!v2)
    {
      v3 = [APSConnection alloc];
      v4 = [v3 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.siriknowledged.aps" queue:v1[4]];
      v5 = v1[3];
      v1[3] = v4;

      [v1[3] setDelegate:v1];
      v2 = v1[3];
      if (!v2)
      {
        v6 = CKLogContextDaemon;
        if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v8 = 136315138;
          v9 = "[CKNCloudKitManager pushConnection]";
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to create push connection", &v8, 0xCu);
          v2 = v1[3];
        }

        else
        {
          v2 = 0;
        }
      }
    }

    a1 = v2;
  }

  return a1;
}

id sub_1000096E0(uint64_t a1)
{
  v2 = objc_alloc_init(CKNCloudKitDataStore);
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  [*(a1 + 32) _initializeZone];
  v5 = *(a1 + 32);

  return [v5 _setupAccount];
}

id sub_100009738(uint64_t a1, void *a2)
{
  v3 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_CKNCloudKitPreferenceDidChangeCallback";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s CloudKit preferences changed handler called", &v5, 0xCu);
  }

  return [a2 _cloudSyncPreferenceDidChange];
}

uint64_t sub_10000991C(uint64_t a1)
{
  qword_10001D958 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100009BC8(uint64_t a1)
{
  if (a1)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", *(a1 + 8), &stru_100018A68);
    v2 = *(a1 + 8);

    xpc_set_event_stream_handler("com.apple.distnoted.matching", v2, &stru_100018AB0);
  }
}

void sub_100009C2C(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[CKEventHandler setupNotifyHandlers]_block_invoke_2";
      v9 = 2080;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Received XPC event from distnoted: %s", &v7, 0x16u);
    }

    v5 = [NSString stringWithUTF8String:v3];
    v6 = +[CKVDispatcher sharedInstance];
    [v6 handleDistributedNotificationEventWithName:v5 completion:0];
  }
}

void sub_100009D3C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[CKEventHandler setupNotifyHandlers]_block_invoke";
      v13 = 2080;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Received XPC event from notifyd: %s", buf, 0x16u);
    }

    v6 = [NSString stringWithUTF8String:v4];
    if ([v6 isEqualToString:kAFPreferencesDidChangeDarwinNotification])
    {
      v7 = +[CKSiriSettingsMonitor sharedInstance];
      [v7 siriSettingsDidChange];
    }

    v8 = +[CKVDispatcher sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009EE4;
    v9[3] = &unk_100018A90;
    v10 = v2;
    [v8 handleDarwinNotificationEventWithName:v6 completion:v9];
  }
}

void sub_100009EE4(uint64_t a1)
{
  v2 = +[SEMDispatcher sharedInstance];
  [v2 handleXPCEvent:*(a1 + 32)];
}

void start()
{
  if (_set_user_dir_suffix())
  {
    v0 = objc_autoreleasePoolPush();
    CKLogInit();
    v1 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "main";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Starting up siriknowledged...", &v17, 0xCu);
    }

    +[NSXPCListener enableTransactions];
    v2 = objc_alloc_init(CKServiceDelegate);
    v3 = qword_10001D960;
    qword_10001D960 = v2;

    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.siriknowledged"];
    [v4 setDelegate:qword_10001D960];
    [v4 resume];
    v5 = objc_alloc_init(CKEventHandler);
    v6 = qword_10001D968;
    qword_10001D968 = v5;

    sub_100009BC8(qword_10001D968);
    v7 = +[CKVDispatcher sharedInstance];
    v8 = qword_10001D970;
    qword_10001D970 = v7;

    [qword_10001D970 setupXPCListeners];
    [qword_10001D970 registerXPCActivities];
    v9 = +[SEMDispatcher sharedInstance];
    v10 = qword_10001D978;
    qword_10001D978 = v9;

    [qword_10001D978 setupXPCListeners];
    [qword_10001D978 registerXPCActivities];
    v11 = +[CKNCloudKitManager sharedManager];
    [v11 enablePushNotifications];

    v12 = objc_alloc_init(UAFXPCService);
    v13 = qword_10001D980;
    qword_10001D980 = v12;

    [qword_10001D980 startAsync];
    UAFRegisterXPCActivities();
    dispatch_main();
  }

  v14 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v15 = v14;
    v16 = *__error();
    v17 = 136315394;
    v18 = "main";
    v19 = 1024;
    v20 = v16;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s _set_user_dir_suffix failed with: %d", &v17, 0x12u);
  }

  exit(1);
}

void sub_10000A344(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = sub_10000A3DC(v2, v3, &v9);
  v5 = v9;
  if (!v5)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = 0;
    [v4 dropLinksBetween:v6 and:v7 error:&v8];
    v5 = v8;
  }

  (*(a1[8] + 16))();
}

id sub_10000A3DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_23;
  }

  v6 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "[CKDaemon handlerForPersistentStoreWithIdentifier:error:]";
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Looking for store with identifier %@", &v13, 0x16u);
  }

  if (![v5 length])
  {
    v10 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "[CKDaemon handlerForPersistentStoreWithIdentifier:error:]";
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s identifier is invalid: %@", &v13, 0x16u);
      if (a3)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
LABEL_10:
      [NSError errorWithDomain:@"com.apple.siriknowledged" code:101 userInfo:&off_1000194E0];
      *a3 = v8 = 0;
      goto LABEL_19;
    }

LABEL_23:
    v8 = 0;
    goto LABEL_19;
  }

  v7 = *(a1 + 24);
  objc_sync_enter(v7);
  v8 = [*(a1 + 24) objectForKey:v5];
  if (v8)
  {
    v9 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[CKDaemon handlerForPersistentStoreWithIdentifier:error:]";
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Found in cache", &v13, 0xCu);
    }
  }

  else
  {
    v8 = [[CKPersistentStoreHandler alloc] initWithName:v5];
    if (v8)
    {
      v11 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v13 = 136315394;
        v14 = "[CKDaemon handlerForPersistentStoreWithIdentifier:error:]";
        v15 = 2112;
        v16 = v5;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Created new store with identifier %@ and updating cache", &v13, 0x16u);
      }

      [*(a1 + 24) setObject:v8 forKey:v5];
    }

    else if (a3)
    {
      [NSError errorWithDomain:@"com.apple.siriknowledged" code:102 userInfo:&off_100019508];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  objc_sync_exit(v7);

LABEL_19:

  return v8;
}

void sub_10000A7FC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = sub_10000A3DC(v2, v3, &v9);
  v5 = v9;
  if (!v5)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = 0;
    [v4 dropLinksWithLabel:v6 from:v7 error:&v8];
    v5 = v8;
  }

  (*(a1[8] + 16))();
}

void sub_10000A9CC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = sub_10000A3DC(v2, v3, &v10);
  v5 = v10;
  if (!v5)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];
    v9 = 0;
    [v4 dropLinkWithLabel:v6 between:v7 and:v8 error:&v9];
    v5 = v9;
  }

  (*(a1[9] + 16))();
}

void sub_10000ABA0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = sub_10000A3DC(v2, v3, &v11);
  v5 = v11;
  if (v5)
  {
    v6 = v5;
  }

  else if ([v4 decreaseWeightForLinkWithLabel:a1[6] between:a1[7] and:a1[8]] == -1)
  {
    v12[0] = @"localizedDescription";
    v12[1] = @"subject";
    v7 = a1[7];
    v8 = a1[8];
    v13[0] = @"Error decreasing link weight";
    v13[1] = v7;
    v12[2] = @"predicate";
    v12[3] = @"object";
    v9 = a1[5];
    v13[2] = a1[6];
    v13[3] = v8;
    v12[4] = @"storeIdentifier";
    v13[4] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
    v6 = [NSError errorWithDomain:@"com.apple.siriknowledged" code:102 userInfo:v10];
  }

  else
  {
    v6 = 0;
  }

  (*(a1[9] + 16))();
}

void sub_10000AE44(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = sub_10000A3DC(v2, v3, &v11);
  v5 = v11;
  if (v5)
  {
    v6 = v5;
  }

  else if ([v4 increaseWeightForLinkWithLabel:a1[6] between:a1[7] and:a1[8]] == -1)
  {
    v12[0] = @"localizedDescription";
    v12[1] = @"subject";
    v7 = a1[7];
    v8 = a1[8];
    v13[0] = @"Error increasing link weight";
    v13[1] = v7;
    v12[2] = @"predicate";
    v12[3] = @"object";
    v9 = a1[5];
    v13[2] = a1[6];
    v13[3] = v8;
    v12[4] = @"storeIdentifier";
    v13[4] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
    v6 = [NSError errorWithDomain:@"com.apple.siriknowledged" code:102 userInfo:v10];
  }

  else
  {
    v6 = 0;
  }

  (*(a1[9] + 16))();
}

void sub_10000B0F0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = sub_10000A3DC(v2, v3, &v11);
  v5 = v11;
  if (!v5)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];
    v9 = a1[10];
    v10 = 0;
    [v4 setWeightForLinkWithLabel:v6 between:v7 and:v8 toValue:v9 error:&v10];
    v5 = v10;
  }

  (*(a1[9] + 16))();
}

void sub_10000B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000B3D8;
    v9[3] = &unk_100018C58;
    v10 = v7;
    v11 = *(a1 + 48);
    [v8 removeValuesForKeys:a3 fromStoreWithIdentifier:v10 completionHandler:v9];
  }
}

void sub_10000B3D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CKDaemon removeAllValuesFromSynchedStoreWithIdentifier:completionHandler:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Finished removing ALL values in synched store %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000B584(uint64_t *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    *buf = 136315394;
    v13 = "[CKDaemon removeAllValuesFromStoreWithIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Removing ALL values in store %@", buf, 0x16u);
  }

  v4 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v5 = sub_10000A3DC(v3, v4, &v11);
  v6 = v11;
  if (!v6)
  {
    v10 = 0;
    [v5 removeAllValuesAndReturnError:&v10];
    v6 = v10;
  }

  v7 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 136315394;
    v13 = "[CKDaemon removeAllValuesFromStoreWithIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Finished removing ALL values in store %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
  if (!v6)
  {
    sub_100001A08(&__NSArray0__struct, a1[4]);
  }
}

void sub_10000B8D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000B9E4;
    v11[3] = &unk_100018C30;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v15 = v9;
    v11[4] = v10;
    v12 = *(a1 + 48);
    v13 = v5;
    v14 = *(a1 + 40);
    [v6 removeValuesMatchingCondition:v7 fromStoreWithIdentifier:v8 completionHandler:v11];
  }
}

void sub_10000B9E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000BB14;
    v12[3] = &unk_100018C08;
    v7 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = *(a1 + 40);
    *(&v10 + 1) = v7;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v13 = v11;
    v14 = v10;
    [v5 keysInStoreWithIdentifier:v6 completionHandler:v12];
    sub_100001A08(*(a1 + 48), *(a1 + 40));
  }
}

void sub_10000BB14(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v6 = [a1[4] mutableCopy];
    [v6 removeObjectsInArray:v5];
    v7 = +[CKNCloudKitManager sharedManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000BC30;
    v8[3] = &unk_100018BE0;
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    [v7 removeValuesForKeys:v6 completion:v8];
  }
}

void sub_10000BC30(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CKLogContextDaemon;
  if (v7 && os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "[CKDaemon removeValuesMatchingCondition:fromSynchedStoreWithIdentifier:completionHandler:]_block_invoke_4";
    v17 = 2112;
    v18 = v7;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Could not remove values for keys with error %@", &v15, 0x16u);
    v10 = CKLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = v10;
    v13 = [v11 description];
    v14 = a1[5];
    v15 = 136315650;
    v16 = "[CKDaemon removeValuesMatchingCondition:fromSynchedStoreWithIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Finished removing values matching condition %@ in synched store %@", &v15, 0x20u);
  }

  (*(a1[6] + 16))();
}

void sub_10000BEB4(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    v10 = v2;
    v11 = [v9 description];
    *buf = 136315394;
    v18 = "[CKDaemon removeValuesMatchingCondition:fromStoreWithIdentifier:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Removing values matching condition %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v16 = 0;
  v5 = sub_10000A3DC(v3, v4, &v16);
  v6 = v16;
  if (!v6)
  {
    v7 = a1[4];
    v15 = 0;
    [v5 removeValuesMatching:v7 error:&v15];
    v6 = v15;
  }

  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = v8;
    v14 = [v12 description];
    *buf = 136315394;
    v18 = "[CKDaemon removeValuesMatchingCondition:fromStoreWithIdentifier:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Finished removing values matching condition %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
  if (!v6)
  {
    sub_100001A08(&__NSArray0__struct, a1[6]);
  }
}

void sub_10000C230(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = +[CKNCloudKitManager sharedManager];
    [v4 removeValuesForKeys:a1[4] completion:0];
  }

  v5 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 136315650;
    v9 = "[CKDaemon removeValuesForKeys:fromSynchedStoreWithIdentifier:completionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Finished removing values for keys %@ in synched store %@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
}

void sub_10000C42C(uint64_t *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 136315394;
    v14 = "[CKDaemon removeValuesForKeys:fromStoreWithIdentifier:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Removing values for keys %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v12 = 0;
  v5 = sub_10000A3DC(v3, v4, &v12);
  v6 = v12;
  if (!v6)
  {
    v7 = a1[4];
    v11 = 0;
    [v5 removeValuesForKeys:v7 error:&v11];
    v6 = v11;
  }

  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 136315394;
    v14 = "[CKDaemon removeValuesForKeys:fromStoreWithIdentifier:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Finished removing values for keys %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
  if (!v6)
  {
    sub_100001A08(a1[4], a1[6]);
  }
}

void sub_10000C75C(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = +[CKNCloudKitManager sharedManager];
    v15 = a1[4];
    v5 = [NSArray arrayWithObjects:&v15 count:1];
    [v4 removeValuesForKeys:v5 completion:0];
  }

  v6 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 136315650;
    v10 = "[CKDaemon removeValueForKey:fromSynchedStoreWithIdentifier:completionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Finished removing value for key %@ in synched store %@", &v9, 0x20u);
  }

  (*(a1[6] + 16))();
}

void sub_10000C984(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 136315394;
    v16 = "[CKDaemon removeValueForKey:fromStoreWithIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Removing value for key %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v13 = 0;
  v5 = sub_10000A3DC(v3, v4, &v13);
  v6 = v13;
  if (!v6)
  {
    v7 = a1[4];
    v12 = 0;
    [v5 removeValueForKey:v7 error:&v12];
    v6 = v12;
  }

  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 136315394;
    v16 = "[CKDaemon removeValueForKey:fromStoreWithIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v11;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Finished removing value for key %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
  if (!v6)
  {
    v14 = a1[4];
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    sub_100001A08(v9, a1[6]);
  }
}

void sub_10000CDE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 136315650;
      v17 = "[CKDaemon recordEventWithIdentifier:startDate:endDate:metadata:toStoreWithIdentifier:completionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Could not retrieve value for key %@. %@", buf, 0x20u);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v9 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *buf = 136315650;
        v17 = "[CKDaemon recordEventWithIdentifier:startDate:endDate:metadata:toStoreWithIdentifier:completionHandler:]_block_invoke";
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s value for key %@ in store %@ is not a CKHistoricEvent", buf, 0x20u);
      }

      v8 = 0;
    }

    v10 = [[NSDateInterval alloc] initWithStartDate:*(a1 + 48) endDate:*(a1 + 56)];
    v11 = [CKPermanentEventStore createEventWithIdentifier:*(a1 + 32) dateInterval:v10 metadata:*(a1 + 64) fromEvent:v8];

    v12 = [NSDictionary dictionaryWithObjectsAndKeys:v11, *(a1 + 32), 0];
    [*(a1 + 72) saveKeysAndValues:v12 toStoreWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 80)];
  }
}

void sub_10000D1BC(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = +[CKNCloudKitManager sharedManager];
    [v4 saveRecordsWithDictionary:a1[4] completion:0];
  }

  v5 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = 136315394;
    v8 = "[CKDaemon saveKeysAndValues:toSynchedStoreWithIdentifier:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Finished setting all values for keys in synched store %@", &v7, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_10000D3B0(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[4];
    v16 = v2;
    v17 = [v15 allKeys];
    v18 = a1[5];
    *buf = 136315650;
    *&buf[4] = "[CKDaemon saveKeysAndValues:toStoreWithIdentifier:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Setting all values for keys=[%@] in store %@", buf, 0x20u);
  }

  v4 = a1[5];
  v3 = a1[6];
  v21 = 0;
  v5 = sub_10000A3DC(v3, v4, &v21);
  v6 = v21;
  if (!v6)
  {
    v7 = a1[4];
    v20 = 0;
    [v5 saveKeysAndValues:v7 error:&v20];
    v6 = v20;
  }

  v8 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v19 = a1[5];
    *buf = 136315394;
    *&buf[4] = "[CKDaemon saveKeysAndValues:toStoreWithIdentifier:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v19;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Finished setting all values for keys in store %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
  if (!v6)
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = v9;
    v12 = [@"CKPersistentStorageKeysAndValuesUpdated." stringByAppendingString:v10];
    v27 = @"updated";
    *buf = v11;
    v13 = [NSDictionary dictionaryWithObjects:buf forKeys:&v27 count:1];

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, v12, 0, v13, 1u);
  }
}

void sub_10000D6D4(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = v2;
    v13 = [v11 description];
    *buf = 136315394;
    v20 = "[CKDaemon triplesComponentsMatching:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Getting triplets matching condition %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v5 = sub_10000A3DC(v3, v4, &v18);
  v6 = v18;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = a1[4];
    v17 = 0;
    v8 = [v5 tripleComponentsMatching:v9 error:&v17];
    v7 = v17;
  }

  v10 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = v10;
    v16 = [v14 description];
    *buf = 136315394;
    v20 = "[CKDaemon triplesComponentsMatching:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v16;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Finished getting triplets matching condition %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_10000D9AC(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = v2;
    v13 = [v11 description];
    *buf = 136315394;
    v20 = "[CKDaemon keysAndValuesForKeysMatchingCondition:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Getting all keys and values matching condition %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v5 = sub_10000A3DC(v3, v4, &v18);
  v6 = v18;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSDictionary0__struct;
  }

  else
  {
    v9 = a1[4];
    v17 = 0;
    v8 = [v5 keysAndValuesForKeysMatching:v9 error:&v17];
    v7 = v17;
  }

  v10 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = v10;
    v16 = [v14 description];
    *buf = 136315394;
    v20 = "[CKDaemon keysAndValuesForKeysMatchingCondition:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v16;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Finished getting all keys and values matching condition %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_10000DC64(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 136315394;
    v15 = "[CKDaemon keysAndValuesInStoreWithIdentifier:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Getting all keys and values in store %@", buf, 0x16u);
  }

  v4 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v5 = sub_10000A3DC(v3, v4, &v13);
  v6 = v13;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSDictionary0__struct;
  }

  else
  {
    v12 = 0;
    v8 = [v5 keysAndValuesAndReturnError:&v12];
    v7 = v12;
  }

  v9 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[CKDaemon keysAndValuesInStoreWithIdentifier:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Finished getting all keys and values in store %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_10000DEF8(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = v2;
    v13 = [v11 description];
    *buf = 136315394;
    v20 = "[CKDaemon valuesForKeysMatchingCondition:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Getting values for keys matching condition %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v5 = sub_10000A3DC(v3, v4, &v18);
  v6 = v18;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = a1[4];
    v17 = 0;
    v8 = [v5 valuesForKeysMatching:v9 error:&v17];
    v7 = v17;
  }

  v10 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = v10;
    v16 = [v14 description];
    *buf = 136315394;
    v20 = "[CKDaemon valuesForKeysMatchingCondition:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v16;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Finished getting values for keys matching condition %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

uint64_t sub_10000E274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E28C(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v17 = a1[4];
    *buf = 136315394;
    v22 = "[CKDaemon valuesForKeys:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v17;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Getting values for keys %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = sub_10000A3DC(v3, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[8] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    v10 = a1[4];
    v19 = 0;
    v11 = [v6 _valuesForKeys:v10 error:&v19];
    objc_storeStrong(v8, v19);
    v12 = *(a1[9] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = a1[4];
    *buf = 136315394;
    v22 = "[CKDaemon valuesForKeys:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v18;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Finished getting values for keys %@", buf, 0x16u);
  }

  v15 = *(*(a1[8] + 8) + 40);
  v16 = *(*(a1[9] + 8) + 40);
  (*(a1[7] + 16))();
}

void sub_10000E528(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 136315394;
    v15 = "[CKDaemon valuesInStoreWithIdentifier:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Getting all values in store %@", buf, 0x16u);
  }

  v4 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v5 = sub_10000A3DC(v3, v4, &v13);
  v6 = v13;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSArray0__struct;
  }

  else
  {
    v12 = 0;
    v8 = [v5 valuesAndReturnError:&v12];
    v7 = v12;
  }

  v9 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[CKDaemon valuesInStoreWithIdentifier:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Finished getting all values in store %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_10000E7BC(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[4];
    *buf = 136315394;
    v19 = "[CKDaemon valueForKey:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Getting value for key %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v16 = 0;
  v5 = sub_10000A3DC(v3, v4, &v16);
  v6 = v16;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v17 = a1[4];
    v8 = [NSArray arrayWithObjects:&v17 count:1];
    v15 = 0;
    v9 = [v5 _valuesForKeys:v8 error:&v15];
    v7 = v15;
    v10 = [v9 firstObject];

    v11 = +[NSNull null];
    LODWORD(v9) = [v10 isEqual:v11];

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:
  v12 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    *buf = 136315394;
    v19 = "[CKDaemon valueForKey:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Finished getting value for key %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_10000EAC4(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = v2;
    v13 = [v11 description];
    *buf = 136315394;
    v20 = "[CKDaemon keysMatchingCondition:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Getting all keys matching condition %@", buf, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v5 = sub_10000A3DC(v3, v4, &v18);
  v6 = v18;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = a1[4];
    v17 = 0;
    v8 = [v5 keysMatching:v9 error:&v17];
    v7 = v17;
  }

  v10 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = v10;
    v16 = [v14 description];
    *buf = 136315394;
    v20 = "[CKDaemon keysMatchingCondition:inStoreWithIdentifier:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v16;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Finished getting all keys matching condition %@", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_10000ED7C(void *a1)
{
  v2 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 136315394;
    v15 = "[CKDaemon keysInStoreWithIdentifier:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Getting all keys in store %@", buf, 0x16u);
  }

  v4 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v5 = sub_10000A3DC(v3, v4, &v13);
  v6 = v13;
  if (v6)
  {
    v7 = v6;
    v8 = &__NSArray0__struct;
  }

  else
  {
    v12 = 0;
    v8 = [v5 keysAndReturnError:&v12];
    v7 = v12;
  }

  v9 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[CKDaemon keysInStoreWithIdentifier:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Finished getting all keys in store %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_10000F078(id a1)
{
  qword_10001D990 = objc_alloc_init(CKDaemon);

  _objc_release_x1();
}

void sub_10000F1E8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[CKGenericAppInteractionProcessor processInteraction:bundleId:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Could not update app interaction donation count %@", &v4, 0x16u);
    }
  }
}
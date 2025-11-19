void sub_1001579B4(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = *(a1 + 32);
    *buf = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection (%@) to client (%@) INVALID.", buf, 0x16u);
  }

  [*(a1 + 32) setConnection:0];
  v7 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100157B20;
  v8[3] = &unk_1003610B8;
  v8[4] = v7;
  v9 = *(a1 + 32);
  [v7 performAsync:v8];
}

void sub_100157EB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_current_queue();
  v8 = [objc_opt_class() syncQueue];

  if (v7 != v8)
  {
    v23 = v6;
    label = dispatch_queue_get_label(v7);
    v10 = [objc_opt_class() syncQueue];
    v11 = dispatch_queue_get_label(v10);
    v12 = +[NSThread callStackSymbols];
    v13 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager updateCachedNATSettingsIfNeededWithCompletionHandler:]_block_invoke", label, v11, v12];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [[self class] syncQueue])\n[%s (%s:%d)]", v13, "-[GKDataRequestManager updateCachedNATSettingsIfNeededWithCompletionHandler:]_block_invoke", [v15 UTF8String], 897);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
    v6 = v23;
  }

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_100292D04();
    }
  }

  if ([v5 count])
  {
    v18 = [*(a1 + 32) storeBag];
    v19 = *(a1 + 40);

    if (v18 == v19)
    {
      [*(a1 + 32) setCommonNATSettings:v5];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      v21 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[NAT] Bag has changed, not updating NAT settings", buf, 2u);
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100292D6C();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001582A0(uint64_t a1)
{
  v3 = [*(a1 + 32) natType];
  if (v3)
  {
    v1 = [*(a1 + 32) lastNATTypeCheckDate];
    v4 = v1 != 0;
  }

  else
  {
    v4 = 0;
  }

  if (([GKViceroyNATTypeHelper isUnknown:v4]& 1) != 0)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = +[NSDate date];
  v14 = [*(a1 + 32) lastNATTypeCheckDate];
  [v13 timeIntervalSinceDate:v14];
  v5 = v15 <= 60.0;

  if (v3)
  {
LABEL_6:
  }

LABEL_7:
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 natType]);
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[NAT] Returning cached NAT type: %@.", buf, 0xCu);
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015858C;
    block[3] = &unk_100360EB0;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v21 = v12;
    dispatch_async(v11, block);
  }

  else
  {
    objc_initWeak(buf, *(a1 + 32));
    v16 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001585D0;
    v17[3] = &unk_100368D68;
    v17[4] = v16;
    objc_copyWeak(&v19, buf);
    v18 = *(a1 + 40);
    [v16 awaitNATSettingsAndUpdateIfNeededWithCompletionHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void sub_100158568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_10015858C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) natType];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_1001585D0(uint64_t a1)
{
  v2 = dispatch_get_current_queue();
  v3 = [objc_opt_class() syncQueue];

  if (v2 != v3)
  {
    label = dispatch_queue_get_label(v2);
    v5 = [objc_opt_class() syncQueue];
    v6 = dispatch_queue_get_label(v5);
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager getValidNATTypeWithForceRelay:withHandler:]_block_invoke_2", label, v6, v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    v10 = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [[self class] syncQueue])\n[%s (%s:%d)]", v8, "-[GKDataRequestManager getValidNATTypeWithForceRelay:withHandler:]_block_invoke_2", [v10 UTF8String], 940);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = [WeakRetained commonNATSettings];

  if (v13)
  {
    v14 = [NSString stringWithFormat:@"%s:%d %s", "GKDataRequestManager.m", 952, "[GKDataRequestManager getValidNATTypeWithForceRelay:withHandler:]_block_invoke_2"];
    v15 = [GKDispatchGroup dispatchGroupWithName:v14];

    +[GKViceroyNATObserverFactory makeObserver];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100158A4C;
    v16 = v26[3] = &unk_100368D40;
    v27 = v16;
    v28 = WeakRetained;
    objc_copyWeak(&v29, (a1 + 48));
    [v15 perform:v26];
    if ([v15 waitWithTimeout:3.0])
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        sub_100292DD4(v18);
      }
    }

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100158CA0;
    block[3] = &unk_100360EB0;
    v20 = *(a1 + 40);
    block[4] = WeakRetained;
    v25 = v20;
    dispatch_async(v19, block);

    objc_destroyWeak(&v29);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    v22 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[NAT] Returning unknown NAT type since common NAT settings are not available yet.", buf, 2u);
    }

    v23 = dispatch_get_global_queue(0, 0);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100158A00;
    v30[3] = &unk_100360FA0;
    v31 = *(a1 + 40);
    dispatch_async(v23, v30);

    v15 = v31;
  }
}

uint64_t sub_100158A00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[GKViceroyNATTypeHelper initialNATType];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_100158A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) commonNATSettings];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158B34;
  v7[3] = &unk_100368D18;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = v3;
  v8 = v6;
  [v4 getNATTypeWithNATSettings:v5 completionHandler:v7];

  objc_destroyWeak(&v9);
}

void sub_100158B34(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNatType:a2];
  v5 = +[NSDate date];
  [WeakRetained setLastNATTypeCheckDate:v5];

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [NSNumber numberWithUnsignedInteger:a2];
    v10 = [WeakRetained lastNATTypeCheckDate];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[NAT] Returning NAT type: %@. Updating last check date to: %@.", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100158CA0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) natType];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_100158DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100159294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001592AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001597D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_current_queue();
  v8 = [objc_opt_class() syncQueue];

  if (v7 != v8)
  {
    v20 = v6;
    label = dispatch_queue_get_label(v7);
    v10 = [objc_opt_class() syncQueue];
    v11 = dispatch_queue_get_label(v10);
    v12 = +[NSThread callStackSymbols];
    v13 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager updateActivePushEnvironment]_block_invoke", label, v11, v12];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [[self class] syncQueue])\n[%s (%s:%d)]", v13, "-[GKDataRequestManager updateActivePushEnvironment]_block_invoke", [v15 UTF8String], 1078);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
    v6 = v20;
  }

  if (![v5 count])
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100292E18();
    }
  }

  v18 = [*(a1 + 32) storeBag];
  v19 = *(a1 + 40);

  if (v18 == v19)
  {
    [*(a1 + 32) _updatePushEnvironmentWithStoreBag:v5];
  }
}

void sub_100159B18(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"gk-push-token-ttl"];
  v4 = [v3 integerValue];

  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100159BF8;
  v6[3] = &unk_100368E00;
  v6[4] = v5;
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  v10 = v4;
  v7 = *(a1 + 40);
  [v5 performAsync:v6];
}

void sub_100159BF8(uint64_t a1)
{
  v2 = +[GKPlayerCredentialController sharedController];
  v3 = [v2 pushCredentialForEnvironment:*(a1 + 56)];

  v4 = [v3 playerInternal];
  v5 = [v4 playerID];

  v6 = *(a1 + 32);
  if (*(v6 + 16) == *(a1 + 56) && *(v6 + 40) == *(a1 + 64))
  {
    v7 = *(v6 + 24);
    if ([v7 length])
    {
      if (v3)
      {
        v8 = +[NSUserDefaults standardUserDefaults];
        v9 = [v8 objectForKey:@"GKLastPushTokenPlayerID"];
        v38 = [v8 objectForKey:@"GKLastPreferredSystemLanguage"];
        v10 = [v8 integerForKey:@"GKLastPushTokenEnvironment"];
        v11 = [v8 objectForKey:@"GKLastPushTokenKey"];
        v36 = v8;
        v12 = [v8 objectForKey:@"GKLastPushTokenDateKey"];
        v13 = +[NSBundle _gkPreferredSystemLanguage];
        v14 = *(a1 + 56);
        v39 = v9;
        v15 = [v9 isEqualToString:v5];
        v16 = [v11 isEqualToData:v7];
        v37 = v11;
        v40 = v12;
        if (v11)
        {
          v17 = v12 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17 && v10 == v14)
        {
          v19 = v15 & v16 ^ 1;
        }

        else
        {
          v19 = 1;
        }

        v20 = *(a1 + 72);
        if (v20 > 0.0)
        {
          v21 = +[NSDate date];
          [v21 timeIntervalSinceDate:v12];
          if (v20 < v22)
          {
            v19 = 1;
          }
        }

        v23 = v13;
        if (![v38 isEqualToString:v13] || v19)
        {
          v50 = @"apns-token";
          v51 = v7;
          v31 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v32 = [*(a1 + 32) storeBag];
          v33 = [v31 _gkPlistXMLDataForAppSession:0];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10015A0EC;
          v41[3] = &unk_100368DD8;
          v24 = v36;
          v42 = v36;
          v34 = v5;
          v35 = *(a1 + 56);
          v43 = v34;
          v48 = v35;
          v44 = v7;
          v45 = v23;
          v46 = *(a1 + 40);
          v47 = *(a1 + 48);
          [v32 writeDataForBagKey:@"gk-set-apns-token" postData:v33 client:0 credential:v3 completion:v41];
        }

        else
        {
          v24 = v36;
          if (!os_log_GKGeneral)
          {
            v25 = GKOSLoggers();
          }

          v26 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Not sending push token, last one sent is still good", buf, 2u);
          }

          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v29 = GKOSLoggers();
      }

      v30 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Not sending push token, NO PUSH TOKEN.", buf, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_37:

    goto LABEL_38;
  }

  if (!os_log_GKGeneral)
  {
    v27 = GKOSLoggers();
  }

  v28 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Not sending push token, environment changed", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_38:
}

void sub_10015A0EC(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v3 = [NSDictionary _gkDictionaryWithServerData:a2 error:&v11];
  v4 = v11;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100292E80();
    }
  }

  else
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKey:@"GKLastPushTokenPlayerID"];
    [*(a1 + 32) setInteger:*(a1 + 80) forKey:@"GKLastPushTokenEnvironment"];
    [*(a1 + 32) setObject:*(a1 + 48) forKey:@"GKLastPushTokenKey"];
    v6 = *(a1 + 32);
    v7 = +[NSDate date];
    [v6 setObject:v7 forKey:@"GKLastPushTokenDateKey"];

    [*(a1 + 32) setObject:*(a1 + 56) forKey:@"GKLastPreferredSystemLanguage"];
    [*(a1 + 32) synchronize];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015A280;
  v9[3] = &unk_100360FA0;
  v8 = *(a1 + 64);
  v10 = *(a1 + 72);
  dispatch_async(v8, v9);
}

void sub_10015A374(id a1, NSDictionary *a2, NSError *a3)
{
  v8 = a2;
  v3 = +[GKPreferences shared];
  v4 = [(NSDictionary *)v8 objectForKeyedSubscript:GKMaxRecentPlayersCount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntegerValue];
    if (v5)
    {
      [v3 setMaxRecentPlayersCount:v5];
    }
  }

  v6 = [(NSDictionary *)v8 objectForKeyedSubscript:GKMaxRecentPlayersTime];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 unsignedIntegerValue];
    if (v7)
    {
      [v3 setMaxRecentPlayersTime:v7];
    }
  }
}

void sub_10015AC54(uint64_t a1, void *a2)
{
  v4 = [a2 lastObject];
  v3 = [v4 name];
  if (!v3)
  {
    v3 = GKCopyLocalizedApplicationNameForDisplayIdentifier();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10015AE4C(id a1, NSArray *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got bulletins from invite data : %@", buf, 0xCu);
  }

  if (![(NSArray *)v2 count])
  {
    v5 = +[GKApplicationWorkspace defaultWorkspace];
    [v5 openGameCenterSettings];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v2;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 acceptAction];
        if (!v12)
        {
          v12 = [v11 defaultAction];
          if (!v12)
          {
            continue;
          }
        }

        v13 = v12;
        [v11 handleAction:@"GKAccepted"];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

uint64_t sub_10015B248(uint64_t a1)
{
  [*(a1 + 32) pushConnectionForEnvironment:*(*(a1 + 32) + 40)];
  if (*(a1 + 40) == objc_claimAutoreleasedReturnValue())
  {
    v2 = +[GKPlayerCredentialController sharedController];
    v3 = [v2 pushCredentialForEnvironment:{objc_msgSend(*(a1 + 32), "currentEnvironment")}];
    if (v3)
    {
      v4 = v3;
      v5 = [*(*(a1 + 32) + 24) isEqualToData:*(a1 + 48)];

      if ((v5 & 1) == 0)
      {
        [*(a1 + 32) _setPushToken:*(a1 + 48)];
        if ([*(a1 + 48) length])
        {
          [*(a1 + 32) sendPushTokenWithReplyQueue:0];
        }
      }
    }

    else
    {
    }
  }

  return _objc_release_x1();
}

void sub_10015B758(id a1, NSArray *a2)
{
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = +[GKBulletinController sharedController];
        [v7 executeBulletinWithBulletinController:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10015B968(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionCounts];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) transactionCounts];
  v4 = [v3 countForObject:*(a1 + 40)];

  if (!v4)
  {
    v5 = [*(a1 + 32) transactionBag];
    [v5 removeObjectForKey:*(a1 + 40)];
  }
}

uint64_t sub_10015BB44(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionCounts];
  v3 = [v2 countForObject:*(a1 + 40)];

  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"com.apple.gamed.%@", *(a1 + 40)];
    [v4 UTF8String];
    v5 = os_transaction_create();

    v6 = [*(a1 + 32) transactionBag];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) transactionCounts];
  [v7 addObject:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void sub_10015BD84(id a1)
{
  qword_1003B9340 = dispatch_queue_create("com.apple.gamecenter.statsQueue", 0);

  _objc_release_x1();
}

void sub_10015BE08(id a1)
{
  qword_1003B9350 = dispatch_queue_create("com.apple.gamecenter.ratingsQueue", 0);

  _objc_release_x1();
}

void sub_10015C478(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v6 = [v7 gameList];
  [v6 expire];

  [*(a1 + 32) refreshContentsForDataType:5 userInfo:0];
  v5[2](v5);
}

void sub_10015C51C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_10015CA90(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_100292F84(v2, v4);
  }
}

void sub_10015CBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015CCA8;
  v6[3] = &unk_100369038;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

CFDataRef sub_10015CFC0(const UInt8 *a1, unsigned int a2)
{
  *&v7.reallocate = unk_100369098;
  v7.preferredSize = 0;
  memset(&v7, 0, 48);
  v4 = CFAllocatorCreate(0, &v7);
  v5 = CFDataCreateWithBytesNoCopy(0, a1, a2, v4);
  CFRelease(v4);
  return v5;
}

void sub_10015D680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015D6A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  v8 = FBSSceneVisibilityEndowmentNamespace;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015D7F4;
  v6[3] = &unk_1003690B8;
  objc_copyWeak(&v7, (a1 + 32));
  [v3 setUpdateHandler:v6];
  objc_destroyWeak(&v7);
}

void sub_10015D7F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = userInfoForStateUpdate(a4);
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[GKApplicationStateMonitor setHandler:]_block_invoke_2";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s userInfo=%@", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    (*(WeakRetained[1] + 16))();
  }

  +[GKClientProxy checkGameCenterEnabledForegroundClients];
}

void sub_10015DAB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10015DAD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifiers:WeakRetained[4]];
  v14 = v5;
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  [v3 setPredicates:v6];

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = WeakRetained[4];
    v10 = 136315394;
    v11 = "[GKApplicationStateMonitor updateStateObservation]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s interestedBundleIDs=%@", &v10, 0x16u);
  }
}

void sub_10015E014(id a1)
{
  v4[0] = GKGameCenterIdentifier;
  v4[1] = GKGameCenterMessageExtensionIdentifier;
  v4[2] = GKGameCenterDashboardIdentifier;
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1003B9360;
  qword_1003B9360 = v2;
}

void GKLaunchApplicationWithIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[GKReporter reporter];
  [v4 reportAppLaunchDuration];

  v8[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v5 = [NSNumber numberWithBool:a2];
  v8[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v9[0] = v5;
  v9[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v7 = +[FBSSystemService sharedService];
  [v7 openApplication:v3 options:v6 withResult:0];
}

id GKApplicationWithIdentifierIsInstalled(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = +[NSMutableArray array];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015E328;
  v7[3] = &unk_100364360;
  v8 = v2;
  v4 = v2;
  [v3 enumerateBundlesOfType:1 block:v7];

  v5 = [v4 containsObject:v1];
  return v5;
}

uint64_t sub_10015F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

void sub_10015F5CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  v2 = [v1 cloudKitOperationConfigurationForContainer:v4];
  v3 = qword_1003B9370;
  qword_1003B9370 = v2;
}

void sub_10015FB50(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10015FC78;
  v13[3] = &unk_1003691C8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  v8 = v7;
  *&v9 = v6;
  *(&v9 + 1) = v8;
  *&v10 = v4;
  *(&v10 + 1) = v5;
  v14 = v10;
  v15 = v9;
  v16 = v3;
  v11 = *(a1 + 32);
  v12 = v3;
  [v11 setModifyRecordsCompletionBlock:v13];
  [*(a1 + 56) addOperation:*(a1 + 32)];
}

void sub_10015FC78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 setError:v6];
  v9 = [v8 firstObject];

  [*(a1 + 32) setResult:v9];
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293114(v6, v11);
    }

    if ([v6 code] == 2)
    {
      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v14 = [*(a1 + 40) recordID];
      v15 = [v13 objectForKeyedSubscript:v14];

      if ([v15 code] == 14)
      {
        if (!os_log_GKGeneral)
        {
          v16 = GKOSLoggers();
        }

        v17 = os_log_GKError;
        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10029318C(v17);
        }

        v18 = *(a1 + 32);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10016007C;
        v39[3] = &unk_100369178;
        v40 = *(a1 + 48);
        v19 = *(a1 + 40);
        v20 = *(a1 + 72);
        v41 = v19;
        v43 = v20;
        v44 = *(a1 + 80);
        v42 = *(a1 + 32);
        [v18 perform:v39];
      }

      v6 = v15;
    }
  }

  if ([GKCloudKitMultiplayerUtils shouldRetryForError:v6 andRetryCount:*(a1 + 80)])
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 40);
      v32 = *(a1 + 80);
      *buf = 138412802;
      v46 = v31;
      v47 = 2112;
      v48 = v6;
      v49 = 1024;
      v50 = v32;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error save invite record: %@ due to: %@. Will retry at most %d times.", buf, 0x1Cu);
    }

    v26 = [v6 userInfo];
    v27 = [v26 valueForKey:CKErrorRetryAfterKey];
    [v27 doubleValue];
    v29 = v28;

    v30 = dispatch_time(0, 1000000000 * v29);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001602A0;
    v33[3] = &unk_1003691A0;
    v37 = *(a1 + 72);
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    v38 = *(a1 + 80);
    v36 = *(a1 + 56);
    dispatch_after(v30, &_dispatch_main_q, v33);
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v21, v22, v23);
}

void sub_10016007C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) recordID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100160168;
  v7[3] = &unk_100369150;
  v11 = *(a1 + 56);
  v8 = *(a1 + 32);
  v12 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v6 = v3;
  [v4 fetchRecordWithID:v5 completionHandler:v7];
}

void sub_100160168(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100160230;
  v7[3] = &unk_100366A20;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v4 saveInviteRecord:a2 database:v6 retryCount:v5 completionHandler:v7];
}

uint64_t sub_100160230(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setResult:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1001602B8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_100161ED8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  v6 = [GKTurnBasedParticipantInternal internalRepresentationForCacheObject:v5];
  [v6 setSlot:a3];
  v7 = [v5 playerID];
  v8 = [v5 guestID];
  if ([v7 length])
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if ([v8 length])
    {
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
      }

      v11 = os_log_GKCache;
      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_1002931D0(v8, v11);
      }

      v12 = [[GKAnonymousGuestPlayerInternal alloc] initWithHostPlayerInternal:v9 guestIdentifier:v8];
      [v6 setPlayer:v12];
    }

    else
    {
      [v6 setPlayer:v9];
    }
  }

  v13 = [v5 invitedBy];

  if ([v13 length])
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
    [v6 setInvitedBy:v14];
  }

  return v6;
}

id sub_100162600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100162798;
  v13[3] = &unk_100369280;
  v5 = v3;
  v14 = v5;
  v6 = [v4 indexOfObjectPassingTest:v13];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSString stringWithFormat:@"invalid recipientIndex %ld encountered %@ searching in participants:%@", 0x7FFFFFFFFFFFFFFFLL, v5, *(a1 + 32)];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (index != NSNotFound)\n[%s (%s:%d)]", v7, "-[GKTurnBasedExchangeInternal(Cache) updateWithCacheObject:]_block_invoke", [v9 UTF8String], 405);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [NSNumber numberWithInteger:v6];

  return v11;
}

BOOL sub_100162798(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = *(a1 + 32) == a2;
  *a4 = result;
  return result;
}

void sub_100162C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100162C9C(void *a1)
{
  *(*(a1[6] + 8) + 40) = [qword_1003B9388 objectForKey:a1[4]];
  v2 = *(*(a1[6] + 8) + 40);
  if (!v2)
  {
    *(*(a1[6] + 8) + 40) = [[GKStoreBag alloc] initWithURL:a1[4] dataRequestManager:a1[5]];
    [qword_1003B9388 setObject:*(*(a1[6] + 8) + 40) forKey:a1[4]];
    v2 = *(*(a1[6] + 8) + 40);
  }

  return v2;
}

uint64_t sub_100163208(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "internalBag")];
  [*(a1 + 32) setInternalBag:*(a1 + 40)];
  [*(a1 + 32) setExpiration:*(a1 + 48)];
  [*(a1 + 32) setError:*(a1 + 56)];
  [*(a1 + 32) _updatePlayerIDHashParameters];
  if ((v2 & 1) == 0)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"GKStoreBagUpdatedNotification" userInfo:*(a1 + 32), 0];
  }

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

id sub_100163490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016350C;
  v6[3] = &unk_100369398;
  v6[4] = a2;
  v6[5] = a4;
  v6[6] = a3;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  return [v7 performAsync:v6];
}

uint64_t sub_10016350C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v21 = v2;
  if (*(a1 + 48))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && [v3 statusCode] == 200 && (objc_msgSend(v3, "_maxAge"), v6 = v5, v7 = objc_msgSend(*(a1 + 56), "_storeBagForData:error:", *(a1 + 48), &v21), v8 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", v6), v7) && !v21)
  {
    v9 = v8;
    v10 = [objc_msgSend(*(a1 + 56) "url")];
    v11 = [GKInsecureCacheRoot() stringByAppendingPathComponent:@"StoreBag"];
    v12 = [v11 stringByAppendingPathComponent:v10];
    v13 = objc_alloc_init(NSFileManager);
    [v13 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
    [*(a1 + 48) writeToFile:v12 atomically:1];
    [v13 _gkSetExpirationInterval:v12 ofFileAtPath:v6];

    v14 = +[NSUserDefaults standardUserDefaults];
    [(NSUserDefaults *)v14 setValue:*(a1 + 64) forKey:GKLastProtocolVersionUsedKey];
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Loaded new store bag %@", buf, 0xCu);
    }

    [*(a1 + 56) _setupAPNSRequired:v7];
    [*(a1 + 56) _setupSignatureRequired:v7];
    [*(a1 + 56) _setupResponseSignatureRequired:v7];
    [*(a1 + 56) _metricsThrottleThreshold:v7];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"GKStoreBagUpdatedNotification" userInfo:*(a1 + 56), 0];
    [*(a1 + 56) setInternalBag:v7];
    [*(a1 + 56) setExpiration:v9];
    v16 = 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v17 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 72);
      v20 = [v3 statusCode];
      *buf = 138412802;
      v23 = v19;
      v24 = 2048;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Game Center store bag couldn't be loaded with url:%@, status code returned:%ld with error:%@", buf, 0x20u);
    }

    [*(a1 + 56) setExpiration:{+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", 60.0)}];
    v16 = v21;
    if (!v21)
    {
      v16 = [NSError userErrorForCode:3 underlyingError:0];
    }
  }

  [*(a1 + 56) setError:v16];
  return (*(*(a1 + 80) + 16))();
}

uint64_t sub_100163B20(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 80));
  }

  return result;
}

id sub_100163B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100163BB4;
  v4[3] = &unk_100369348;
  v4[4] = a2;
  return [v2 _fetchFromServerWithHandler:v4];
}

id sub_100163BC4(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100163C3C;
  v3[3] = &unk_100369438;
  v4 = *(a1 + 32);
  v5 = a2;
  return [v4 _fetchFromCacheWithHandler:v3];
}

uint64_t sub_100163C3C(uint64_t a1)
{
  if (([*(a1 + 32) _isValidAndNotExpired] & 1) == 0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100163CD4;
    v4[3] = &unk_100369410;
    v2 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    [v2 perform:v4];
  }

  return (*(*(a1 + 48) + 16))();
}

id sub_100163CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100163D44;
  v4[3] = &unk_100369348;
  v4[4] = a2;
  return [v2 _fetchFromServerWithHandler:v4];
}

id sub_100163D54(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1 + 32) + 80));
  }

  v3 = *(a1 + 32);

  return [v3 updateURLPatternCache];
}

void sub_100163E8C(uint64_t a1)
{
  v2 = dispatch_group_create();
  if (([*(a1 + 32) _isValidAndNotExpired] & 1) == 0)
  {
    dispatch_group_enter(v2);
    v3 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100163F94;
    v8[3] = &unk_1003694B0;
    v8[4] = v2;
    [v3 _fetchBagWithHandler:v8];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100163F9C;
    block[3] = &unk_1003693E8;
    block[4] = v5;
    block[5] = v4;
    dispatch_group_notify(v2, v6, block);
  }

  dispatch_release(v2);
}

id sub_1001642F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100164378;
  v4[3] = &unk_100369500;
  v2 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v1;
  v7 = v2;
  return [v1 getValuesWithCompletion:v4];
}

void sub_100164378(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    v3 = [a2 objectForKey:*(a1 + 32)];
    if (v3)
    {
      v3 = [NSURL URLWithString:v3];
    }

    v4 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016442C;
    block[3] = &unk_1003694D8;
    block[4] = v3;
    v6 = *(a1 + 48);
    dispatch_async(v4, block);
  }
}

void sub_10016453C(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    v3 = [a2 _gkSubDictionaryWithKeys:*(a1 + 32)];
    v4 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001645DC;
    block[3] = &unk_1003694D8;
    block[4] = v3;
    v6 = *(a1 + 48);
    dispatch_async(v4, block);
  }
}

void sub_1001646CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001646E4(void *a1)
{
  result = [*(a1[4] + 80) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

void sub_10016480C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100164824(uint64_t a1)
{
  result = [*(a1 + 32) _shouldUseHTTPPipelining];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100164960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100164978(uint64_t a1)
{
  result = [*(a1 + 32) _gkSessionRateLimiting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100164A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100164AA0(uint64_t a1)
{
  result = [*(a1 + 32) _achievementsThrottleThreshold];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100164BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100164BC8(uint64_t a1)
{
  result = [*(a1 + 32) _scoresThrottleThreshold];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100165ADC(id a1)
{
  v1 = objc_alloc_init(AADeviceInfo);
  qword_1003B93A8 = [objc_msgSend(v1 "clientInfoHeader")];
}

id sub_100165C10(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEqualToString:@"X-Apple-I-TimeZone"];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);

    return [v7 setValue:a3 forHTTPHeaderField:a2];
  }

  return result;
}

id sub_100165D64(uint64_t a1)
{
  v2 = [*(a1 + 32) dataRequestManager];
  [v2 beginTransaction:@"sendAsynchronousRequest"];
  v3 = +[GKStoreBag appleIdSession];
  [GKStoreBag addAuthHeadersToRequest:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100165E30;
  v10[3] = &unk_1003695E0;
  v8 = *(a1 + 48);
  v10[4] = v2;
  v10[5] = v8;
  return [v4 _sendOneAsyncTryWithRequest:v5 responseMustBeSigned:v6 session:v3 retryCount:4 preconnect:v7 completionHandler:v10];
}

id sub_100165E30(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 endTransaction:@"sendAsynchronousRequest"];
}

void sub_100166098(uint64_t a1, void *a2, uint64_t a3, id a4)
{
  v48 = 0;
  [*(a1 + 32) handleResponse:a2 forRequest:*(a1 + 40) shouldRetry:&v48];
  if (v48 == 1)
  {
    v8 = *(a1 + 64);
    if (v8 > 0)
    {
      [*(a1 + 48) _sendOneAsyncTryWithRequest:*(a1 + 40) responseMustBeSigned:*(a1 + 68) session:*(a1 + 32) retryCount:(v8 - 1) preconnect:*(a1 + 69) completionHandler:*(a1 + 56)];
      return;
    }

    v61 = NSLocalizedFailureReasonErrorKey;
    v62 = @"Exhausted retry count for _sendOneAsyncTryWithRequest.";
    a4 = [NSError userErrorForCode:3 userInfo:[NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1]];
  }

  if (a4)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293284(a4, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v46 = objc_autoreleasePoolPush();
  if ([a2 statusCode] >= 400)
  {
    v16 = [a2 statusCode];
    if (!a4 && v16 <= 599)
    {
      v17 = 0.0;
      if ([a2 statusCode] == 503)
      {
        [objc_msgSend(objc_msgSend(a2 "allHeaderFields")];
        v17 = v18;
      }

      v59[0] = @"statusCode";
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 statusCode]);
      v59[1] = @"retryTime";
      v60[0] = v19;
      v60[1] = [NSNumber numberWithDouble:v17];
      v20 = [NSError userErrorForCode:3 userInfo:[NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2]];
      goto LABEL_18;
    }
  }

  if (a4)
  {
    v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", [a4 domain], objc_msgSend(a4, "code"), 0);
LABEL_18:
    v21 = v20;
    goto LABEL_20;
  }

  v21 = 0;
LABEL_20:
  if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO) && *(a1 + 40))
  {
    context = objc_autoreleasePoolPush();
    v22 = [*(a1 + 40) HTTPBody];
    if ([objc_msgSend(*(a1 + 40) valueForHTTPHeaderField:{@"content-encoding", "isEqualToString:", @"gzip"}])
    {
      v23 = [v22 _gkUnzippedData];
      if (v23)
      {
        v22 = v23;
      }
    }

    v24 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
      v24 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "_sendAsynchronousRequest:Received HTTP Response", buf, 2u);
      v24 = os_log_GKGeneral;
    }

    if (!v24)
    {
      GKOSLoggers();
    }

    v25 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 40);
      v27 = [v26 loggableHeaders];
      v28 = [GKStoreBag contentDumpForDebugging:v22];
      *buf = 138412802;
      v50 = v26;
      v51 = 2112;
      v52 = v27;
      v53 = 2112;
      *v54 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%@\nREQUEST {\nheader: %@\nbody: %@}", buf, 0x20u);
    }

    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v29 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v30 = [a2 statusCode];
      v31 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [a2 statusCode]);
      v32 = [a2 allHeaderFields];
      v33 = [GKStoreBag contentDumpForDebugging:a3];
      *buf = 138413570;
      v50 = a2;
      v51 = 2112;
      v52 = a4;
      v53 = 1024;
      *v54 = v30;
      *&v54[4] = 2112;
      *&v54[6] = v31;
      v55 = 2112;
      v56 = v32;
      v57 = 2112;
      v58 = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@\nRESPONSE (error:%@) {\nstatus: (%d) %@\nheader: %@\nbody: %@ }", buf, 0x3Au);
    }

    objc_autoreleasePoolPop(context);
  }

  if (*(a1 + 68) == 1)
  {
    v34 = [a2 getSAPSignature];
    v47 = 0;
    if (v34)
    {
      v35 = [[NSData alloc] initWithBase64EncodedString:v34 options:0];
      if (!os_log_GKGeneral)
      {
        GKOSLoggers();
      }

      v36 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "_sendAsynchronousRequest:HTTP Response was signed and logged", buf, 2u);
      }

      if (!os_log_GKGeneral)
      {
        GKOSLoggers();
      }

      v37 = os_log_GKHTTP;
      if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "\nRESPONSE was signed:%@}", buf, 0xCu);
      }

      [objc_msgSend(*(a1 + 40) "_gkSAPSession")];
      if (v47)
      {
        if (!os_log_GKGeneral)
        {
          GKOSLoggers();
        }

        v38 = os_log_GKHTTP;
        if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = v47;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "\nSIGNATURE ERROR:%@}", buf, 0xCu);
        }

        if (!os_log_GKGeneral)
        {
          GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_1002932F0();
        }

        v21 = [NSError userErrorForCode:3 userInfo:0];
        a3 = 0;
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        GKOSLoggers();
      }

      v39 = os_log_GKHTTP;
      if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "\nSIGNATURE ERROR: A SIGNED RESPONSE WAS EXPECTED BUT NONE WAS AVAILABLE}", buf, 2u);
      }

      if (!os_log_GKGeneral)
      {
        GKOSLoggers();
      }

      v40 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100293358(v40);
      }
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v42.n128_u64[0] = 0;
  if (isKindOfClass)
  {
    [a2 _maxAge];
  }

  v43 = *(a1 + 56);
  if (v43)
  {
    if (a4)
    {
      v44 = 0;
    }

    else
    {
      v44 = a3;
    }

    (*(v43 + 16))(v43, v44, v21, v42);
  }

  objc_autoreleasePoolPop(v46);
}

id sub_1001668D8(uint64_t a1, void *a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a2 setObject:*(a1 + 40) forKey:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_100166B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100166B94(uint64_t a1, void *a2)
{
  v3 = [objc_loadWeak((a1 + 64)) verifyEligibilityForBagKey:*(a1 + 32) preconnect:*(a1 + 72) checkingAllowedRequestKeys:objc_msgSend(a2 client:{"objectForKeyedSubscript:", @"gk-allowed-pregdpr-requests", *(a1 + 40)}];
  v4 = *(a1 + 48);
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100166C88;
    v7[3] = &unk_1003693E8;
    v5 = *(a1 + 56);
    v7[4] = v3;
    v7[5] = v5;
    dispatch_async(v4, v7);
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

void sub_100167010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100167044(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v2 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "_loadDataForBagKey:Starting GKDataRequestManager transaction", buf, 2u);
  }

  v3 = [*(a1 + 32) dataRequestManager];
  [v3 beginTransaction:@"loadDataForBagKey"];
  dispatch_group_enter(*(a1 + 40));
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v18 = vextq_s8(v4, v4, 8uLL);
  v17[2] = sub_100167214;
  v17[3] = &unk_100369780;
  v23 = *(a1 + 120);
  v19 = v5;
  v20 = *(a1 + 64);
  v21 = *(a1 + 96);
  v6 = *(a1 + 112);
  v17[4] = v3;
  v22 = v6;
  [v4.i64[0] performAsync:v17];
  v7 = *(a1 + 40);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167870;
  block[3] = &unk_1003697A8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  block[4] = *(a1 + 32);
  block[5] = v9;
  v11 = *(a1 + 88);
  v15 = *(a1 + 96);
  v12 = *(a1 + 80);
  v14 = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  block[6] = v12;
  block[7] = v3;
  v16 = *(a1 + 121);
  block[8] = v10;
  block[9] = v11;
  dispatch_group_notify(v7, global_queue, block);
  dispatch_release(*(a1 + 40));
}

void sub_100167214(uint64_t a1)
{
  v2 = [*(a1 + 32) pushToken];
  dispatch_group_enter(*(a1 + 40));
  v3 = *(a1 + 48);
  v19[0] = *(a1 + 56);
  v19[1] = @"gk-allowed-pregdpr-requests";
  v4 = [NSArray arrayWithObjects:v19 count:2];
  v10[0] = _NSConcreteStackBlock;
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 48) + 8);
  v10[1] = 3221225472;
  v10[2] = sub_100167334;
  v10[3] = &unk_100369758;
  v11 = v5;
  v18 = *(a1 + 112);
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  v15 = v2;
  v9 = *(a1 + 96);
  v16 = *(a1 + 80);
  v17 = v9;
  [v3 getValuesForKeys:v4 queue:v6 completion:v10];
  dispatch_group_leave(*(a1 + 40));
}

void sub_100167334(uint64_t a1, void *a2, void *a3)
{
  v6 = (a1 + 40);
  v7 = [*(a1 + 32) verifyEligibilityForBagKey:*(a1 + 40) preconnect:*(a1 + 112) checkingAllowedRequestKeys:objc_msgSend(a2 client:{"objectForKeyedSubscript:", @"gk-allowed-pregdpr-requests", *(a1 + 48)}];
  if (!v7)
  {
    v9 = [a2 objectForKey:*v6];
    if (v9)
    {
      v10 = [NSURL URLWithString:v9];
      v11 = v10;
      if (!a3)
      {
        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_15:
        dispatch_group_enter(*(a1 + 56));
        v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100167550;
        v16[3] = &unk_100369730;
        v17 = *(a1 + 32);
        v18 = v11;
        v19 = *(a1 + 64);
        v13 = *(a1 + 80);
        v14 = *(a1 + 56);
        v20 = *(a1 + 48);
        v21 = v13;
        v25 = *(a1 + 112);
        v22 = v14;
        v23 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
        v24 = *(a1 + 104);
        [v12 getFairPlaySession:v16];
LABEL_20:
        dispatch_group_leave(*(a1 + 56));
        return;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_16:
        v15 = [NSError userErrorForCode:3 userInfo:0];
LABEL_19:
        *(*(*(a1 + 88) + 8) + 40) = v15;
        goto LABEL_20;
      }

      v11 = 0;
    }

    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002933C4();
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else if (v11)
    {
      goto LABEL_15;
    }

    v15 = a3;
    goto LABEL_19;
  }

  *(*(*(a1 + 88) + 8) + 40) = v7;
  v8 = *(a1 + 56);

  dispatch_group_leave(v8);
}

void sub_100167550(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    if (![v5 containsObject:*(a1 + 40)])
    {
      a2 = 0;
    }

    v4 = *(a1 + 32);
  }

  v23 = [*(v4 + 48) containsObject:*(a1 + 40)];
  v22 = [*(*(a1 + 32) + 64) containsObject:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = [objc_msgSend(*(a1 + 56) "playerInternal")];
  v9 = [*(a1 + 56) authenticationToken];
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = [GKStoreBag shouldIncludeClientInfoAuthHeaderForBagKey:*(a1 + 40)];
  BYTE1(v21) = *(a1 + 120);
  LOBYTE(v21) = v13;
  BYTE1(v20) = v23;
  LOBYTE(v20) = 0;
  v14 = [v6 requestWithURL:v7 playerID:v8 authToken:v9 pushToken:v11 client:v10 gameDescriptor:0 postData:v12 includeUDID:v20 includeAPNS:a2 sapSession:v21 includeClientInfoAuthHeader:? preconnect:?];
  if (v14)
  {
    v15 = v14;
    dispatch_group_enter(*(a1 + 88));
    [*(a1 + 72) beginNetworkActivity];
    v16 = *(a1 + 120);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100167750;
    v24[3] = &unk_100369708;
    v17 = *(a1 + 32);
    v18 = *(a1 + 104);
    v19 = *(a1 + 72);
    v24[4] = *(a1 + 40);
    v24[5] = v19;
    v25 = *(a1 + 88);
    v26 = v18;
    [v17 _sendAsynchronousRequest:v15 responseMustBeSigned:v22 preconnect:v16 completion:v24];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293438();
    }

    *(*(*(a1 + 104) + 8) + 40) = [NSError userErrorForCode:3 userInfo:0];
  }

  dispatch_group_leave(*(a1 + 88));
}

void sub_100167750(uint64_t a1, void *a2, void *a3, double a4)
{
  if (a3)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002934A0();
    }
  }

  *(*(*(a1 + 56) + 8) + 40) = a2;
  *(*(*(a1 + 64) + 8) + 40) = a3;
  if (qword_1003B93E0 != -1)
  {
    sub_100293518();
  }

  v8 = *&qword_1003B93D8;
  if (*&qword_1003B93D8 > 30.0 || *&qword_1003B93D8 <= 0.0)
  {
    v8 = a4;
  }

  *(*(*(a1 + 72) + 8) + 24) = v8;
  [*(a1 + 40) endNetworkActivity];
  dispatch_group_leave(*(a1 + 48));
}

void sub_100167870(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isLoadValidForBagKey:*(a1 + 40) date:*(a1 + 48)] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v3 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = [objc_msgSend(*(a1 + 32) "_bagKeyValidationDict")];
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "STALE LOAD(%@) started: %@ invalidated: %@", &v8, 0x20u);
    }

    *(*(*(a1 + 80) + 8) + 24) = 0xBFF0000000000000;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 80) + 8) + 24));
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) endTransaction:@"loadDataForBagKey"];
  if (*(a1 + 104) == 1)
  {
  }
}

id sub_100167B14(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167B94;
  v7[3] = &unk_1003697F8;
  v5 = a1[8];
  v7[4] = a1[9];
  return [v2 _loadDataForBagKey:v1 preconnect:0 postData:v3 client:v4 credential:v5 completion:v7];
}

uint64_t sub_100167B94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100167C98(uint64_t a1)
{
  v2 = [*(a1 + 32) _networkSynchonizationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100167D24;
  v4[3] = &unk_100369820;
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  dispatch_barrier_async(v2, v4);
}

void sub_100167E30(uint64_t a1)
{
  v2 = [*(a1 + 32) _networkSynchonizationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167EC8;
  block[3] = &unk_100369848;
  v8 = *(a1 + 80);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  dispatch_barrier_async(v2, block);
}

void sub_1001680F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100168120(uint64_t a1)
{
  v2 = [*(a1 + 32) dataRequestManager];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(*(a1 + 48) "playerInternal")];
  v6 = [*(a1 + 48) authenticationToken];
  v7 = [v2 pushToken];
  LOWORD(v12) = *(a1 + 104);
  v8 = [v3 requestWithURL:v4 playerID:v5 authToken:v6 pushToken:v7 client:*(a1 + 56) gameDescriptor:0 postData:*(a1 + 64) includeUDID:v12 includeAPNS:0 sapSession:?];
  if (v8)
  {
    v9 = v8;
    dispatch_group_enter(*(a1 + 72));
    [*(a1 + 56) beginNetworkActivity];
    v10 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001682BC;
    v13[3] = &unk_100369870;
    v11 = *(a1 + 88);
    v13[4] = *(a1 + 56);
    v14 = *(a1 + 72);
    v15 = v11;
    [v10 _sendAsynchronousRequest:v9 responseMustBeSigned:0 completion:v13];
  }

  else
  {
    *(*(*(a1 + 96) + 8) + 40) = [NSError userErrorForCode:3 userInfo:0];
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293540();
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_1001682BC(uint64_t a1, void *a2, void *a3, double a4)
{
  *(*(*(a1 + 48) + 8) + 40) = a2;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  *(*(*(a1 + 64) + 8) + 40) = a3;
  [*(a1 + 32) endNetworkActivity];
  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

void sub_100168334(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[5] + 8) + 40), *(*(a1[7] + 8) + 40), *(*(a1[6] + 8) + 24));
  }

  v3 = *(*(a1[7] + 8) + 40);
}

void sub_10016899C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v2 = [v1 executeCommandsWithContext:v3];
}

void sub_100168F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) context];
  [v1 finishWithContext:v2];
}

void sub_100169674(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100169708;
  v4[3] = &unk_100361770;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 authenticatedPlayersDidChange:a2 authenticatingBundleID:0 reply:v4];
}

void sub_100169AC4(uint64_t a1)
{
  v2 = [NSError errorWithDomain:GKInternalErrorDomain code:400 userInfo:0];
  (*(*(a1 + 32) + 16))(*(a1 + 32), v2, 0, 0, 0);
}

void sub_100169DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100169DF0(uint64_t a1)
{
  result = [*(a1 + 32) hasChanges];
  if (result)
  {
    result = [*(a1 + 32) _gkSafeSave];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_10016A038(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int buf, __int128 a16, void *a17)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v17 = objc_begin_catch(a1);
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      v19 = os_log_GKError;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        buf = 138412802;
        WORD2(a16) = 2112;
        *(&a16 + 6) = v17;
        HIWORD(a16) = 2112;
        a17 = v20;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CAUGHT EXCEPTION DURING SAVE(%@): %@ at %@", &buf, 0x20u);
      }

      objc_end_catch();
      JUMPOUT(0x10016A000);
    }

    objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10016A578(id a1)
{
  v1 = [[GKAMPController alloc] initWithHasAcknowledgedLatestGDPRBlock:&stru_100369918 bagChanged:&stru_100369938];
  v2 = qword_1003B93E8;
  qword_1003B93E8 = v1;

  [AMSMetrics setDisableBackgroundMetrics:0];
}

BOOL sub_10016A5D8(id a1)
{
  v1 = objc_alloc_init(GKPlayerInternalProvider);
  v2 = [(GKPlayerInternalProvider *)v1 localPlayer];
  v3 = [v2 hasAcknowledgedLatestGDPR];

  return v3;
}

void sub_10016A894(uint64_t a1)
{
  v2 = [*(a1 + 32) hasAcknowledgedLatestGDPRBlock];
  v3 = v2[2]();

  if (v3)
  {
    [*(a1 + 32) createBagIfNecessary];
  }

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016A974;
  v6[3] = &unk_100360EB0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, v6);
}

void sub_10016A974(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) bag];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10016AFC8(uint64_t a1)
{
  v2 = [*(a1 + 32) mafEventFilter];
  if (!v2)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_5;
    }

    v2 = objc_alloc_init(GKMultiplayerActivityEventFilter);
    [*(a1 + 32) setMafEventFilter:v2];
  }

LABEL_5:
  v3 = [*(a1 + 32) hasAcknowledgedLatestGDPRBlock];
  v4 = v3[2]();

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setupMetricsIfNecessary];
  }

  else
  {
    [v5 tearDown];
  }

  v6 = *(*(a1 + 48) + 16);

  return v6();
}

void sub_10016B134(uint64_t a1)
{
  v2 = [*(a1 + 32) hasAcknowledgedLatestGDPRBlock];
  v3 = v2[2]();

  if (v3)
  {
    [*(a1 + 32) setupMetricsIfNecessary];
  }

  v4 = [objc_opt_class() computeMetadataWithLocalPlayer:*(a1 + 40)];
  [*(a1 + 32) setPlayerMetadata:v4];

  v5 = [*(a1 + 32) metricsPipeline];
  v6 = [*(a1 + 40) playerID];
  [v5 refreshWithLocalPlayerId:v6 isUnderage:{objc_msgSend(*(a1 + 40), "ageCategory") == 3}];

  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = [v9 metadata];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updated metrics with metadata: %@", &v12, 0xCu);
  }
}

void sub_10016B8C4(id a1)
{
  v1 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
    v1 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Metrics event finished processing", v3, 2u);
  }
}

void sub_10016BA48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) metricsPipeline];
    [v4 processMultiplayerActivityEventWithMetricsFields:v3 hostAppBundleId:*(a1 + 40) completionHandler:&stru_100369998];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not emitting MAF event", v7, 2u);
    }
  }
}

void sub_10016BB14(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MAF event finished processing", v3, 2u);
  }
}

void sub_10016BC60(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Games mapping event finished processing", v3, 2u);
  }
}

void sub_10016C0E0(id a1)
{
  qword_1003B93F8 = objc_alloc_init(GKContactsIntegrationController);

  _objc_release_x1();
}

void sub_10016C668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10016C680(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) context];
  *(*(*(a1 + 56) + 8) + 24) = [v3 isEligibleAllowingIneligibility:v2 usingSettings:v4 withContext:v5];
}

void sub_10016C86C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016C924;
  v6[3] = &unk_100361270;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10016D008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016D070(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10016D088(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10016D0A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) context];
  *(*(*(a1 + 56) + 8) + 24) = [v2 isEligibleAllowingIneligibility:8 usingSettings:v3 withContext:v4];

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 48) context];
    v11 = [GKCDContactInfoList _gkPrimaryListWithContext:v5];

    v6 = [*(a1 + 32) migrator];
    v7 = [*(a1 + 48) context];
    [v6 performMigrationsWithContext:v7 list:v11];

    v8 = [v11 changeHistoryToken];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_10016D1CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained contactsBatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016D2C4;
  block[3] = &unk_100369A50;
  objc_copyWeak(&v14, (a1 + 56));
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = v6;
  v13 = *(a1 + 48);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v14);
}

void sub_10016D2C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained contactStore];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [WeakRetained playerProvider];
  [v2 _gkSyncContactsWithChangeHistoryToken:v3 playerProvider:v4 batchSize:objc_msgSend(*(a1 + 32) changeHistoryLimit:"localBatchFetchSize") cachedListVersion:{objc_msgSend(*(a1 + 32), "localSyncLimit"), *(*(*(a1 + 56) + 8) + 24)}];

  (*(*(a1 + 40) + 16))();
}

void sub_10016D394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContactsUpdateGroup:0];
  (*(*(a1 + 32) + 16))();
}

void sub_10016D594(uint64_t a1)
{
  v2 = [*(a1 + 32) syncState];
  v3 = [*(a1 + 32) playerProvider];
  v4 = [v3 localPlayerCacheGroup];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016D660;
  v6[3] = &unk_100369AA0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v8 = v2;
  v7 = v5;
  [v4 performOnManagedObjectContext:v6];
}

void sub_10016D660(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [GKContactsIntegrationState alloc];
  v8 = [*(a1 + 32) settings];
  v9 = [v7 initWithMoc:v6 settings:v8 controllerState:*(a1 + 48)];

  (*(*(a1 + 40) + 16))();
  v5[2](v5);
}

void sub_10016DAF4(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [*(a1 + 40) logStateWithMoc:v2 syncState:*(a1 + 64)];
  if ([*(a1 + 40) isEligibleAllowingIneligibility:*(a1 + 72) usingSettings:*(a1 + 48) withContext:v2])
  {
    v3 = [*(a1 + 40) calculateRemainingIDSHandleQueryCountUsingSettings:*(a1 + 48) withContext:v2];
    v4 = [*(a1 + 40) expiredIDSEntriesWithFetchLimit:&v3[objc_msgSend(*(a1 + 48) matchingHandles:"idsV2BatchFetchSize")] usingSettings:0 withContext:{*(a1 + 48), v2}];
    if ([v4 count])
    {
      v21 = [v4 _gkMapDictionaryWithKeyPath:@"handle"];
      v5 = [v21 allKeys];
      v6 = [NSPredicate predicateWithFormat:@"handle IN %@", v5];

      v20 = v6;
      v7 = [GKCDContactInfo _gkObjectsMatchingPredicate:v6 withContext:v2];
      v8 = [v7 _gkDistinctValuesForKeyPath:@"handle"];

      v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
      v10 = 0;
      if (![v4 count])
      {
        goto LABEL_19;
      }

      v11 = 0;
      do
      {
        v12 = [v4 objectAtIndexedSubscript:v11];
        v13 = [v12 handle];

        if ([v8 containsObject:v13])
        {
          if ([v9 count] >= v3)
          {
            v10 = 1;
          }

          else
          {
            [v9 addObject:v13];
          }
        }

        else if ([v13 length])
        {
          v14 = [v21 objectForKeyedSubscript:v13];
          [v2 deleteObject:v14];
        }

        ++v11;
      }

      while (v11 < [v4 count]);
      if (((v3 == 0) & v10) != 0)
      {
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        v16 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "We have already synced the max count of handles for IDS during this interval. Skipping.", buf, 2u);
        }

        [*(a1 + 40) updateIntervalHasFinishedExceedingIDSLimit:1 allowingIneligibility:*(a1 + 72) usingSettings:*(a1 + 48)];
        (*(*(a1 + 56) + 16))();
      }

      else
      {
LABEL_19:
        objc_initWeak(buf, *(a1 + 40));
        v17 = *(a1 + 72);
        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10016DED0;
        v22[3] = &unk_100369AC8;
        objc_copyWeak(v25, buf);
        v26 = v10 & 1;
        v25[1] = *(a1 + 72);
        v23 = *(a1 + 48);
        v24 = *(a1 + 56);
        [v18 fetchIDSDataAndUpdateCacheForHandles:v9 allowingIneligibility:v17 usingSettings:v19 withDelay:1 completion:v22];

        objc_destroyWeak(v25);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10016DEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016DED0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!a2 && (*(a1 + 64) & 1) != 0)
  {
    [WeakRetained updateIntervalHasFinishedExceedingIDSLimit:1 allowingIneligibility:*(a1 + 56) usingSettings:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10016E11C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 40);
  v12 = a3;
  v8 = a2;
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isEligibleAllowingIneligibility:v5 usingSettings:v6 withContext:v8]);
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"isEligible"];

  v10 = [GKCDIDSInfoList _gkPrimaryListWithContext:v8];

  v11 = [v10 updateIntervalStartTimeStamp];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"updateIntervalStartTime"];

  v12[2]();
}

void sub_10016E224(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"isEligible"];
  v3 = [v2 BOOLValue];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"updateIntervalStartTime"];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = +[NSDate date];
      [v6 timeIntervalSinceDate:v5];
      v8 = v7;
      v9 = [*(a1 + 40) settings];
      [v9 idsUpdateInterval];
      v11 = v10 - v8;

      v12 = 0.0;
      if (v11 >= 0.0)
      {
        v12 = v11;
      }

      [*(a1 + 40) setupIDSCacheUpdateTimerWithStartTime:v12];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100293924();
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No longer eligible for cache updates, will not setup timer.", v16, 2u);
    }

    [*(a1 + 40) stopCacheUpdates];
  }
}

void sub_10016EA34(uint64_t a1)
{
  v2 = [*(a1 + 32) isAlreadyWaitingOnLimitTimer];
  v3 = [*(a1 + 32) playerProvider];
  v4 = [v3 localPlayerCacheGroup];

  v5 = [*(a1 + 32) settings];
  objc_initWeak(&location, *(a1 + 32));
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10016D088;
  v40 = sub_10016D098;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v6 = [v4 context];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10016EE98;
  v22[3] = &unk_100369AF0;
  objc_copyWeak(&v29, &location);
  v30 = *(a1 + 56);
  v27 = &v36;
  v23 = *(a1 + 40);
  v31 = v2;
  v7 = v5;
  v24 = v7;
  v8 = v4;
  v25 = v8;
  v26 = *(a1 + 48);
  v28 = &v32;
  [v6 performBlockAndWait:v22];

  if ((v33[3] & 1) == 0)
  {
    if ((*(a1 + 56) & 1) != 0 || ![*(a1 + 32) idsSyncInProgress])
    {
      v10 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 580, "[GKContactsIntegrationController syncIDSDataForHandles:forcefully:completion:]_block_invoke"];
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      [v11 enter];
      v12 = *(a1 + 32);
      v13 = v37[5];
      v14 = [v12 settings];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10016F064;
      v20[3] = &unk_100361108;
      v9 = v11;
      v21 = v9;
      [v12 fetchIDSDataAndUpdateCacheForHandles:v13 allowingIneligibility:0 usingSettings:v14 withDelay:1 completion:v20];

      if ([v9 waitWithTimeout:60.0])
      {
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
        {
          sub_100293958();
        }

        v16 = [v9 error];

        if (!v16)
        {
          v17 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:9 userInfo:0];
          [v9 setError:v17];
        }
      }

      v18 = *(a1 + 48);
      v19 = [v9 error];
      (*(v18 + 16))(v18, v19);
    }

    else
    {
      v9 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:7 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_destroyWeak(&v29);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  objc_destroyWeak(&location);
}

void sub_10016EE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  objc_destroyWeak((v30 + 80));
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 152), 8);
  objc_destroyWeak((v31 - 104));
  _Unwind_Resume(a1);
}

void sub_10016EE98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = *(a1 + 32);
  if (*(a1 + 88) == 1)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 89);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) context];
    v14 = 0;
    v7 = [WeakRetained handlesExcludingNoneExpiredFromHandles:v3 isAlreadyWaitingOnLimitTimer:v4 settings:v5 moc:v6 error:&v14];
    v8 = v14;
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    if (v8)
    {
      (*(*(a1 + 56) + 16))();
      *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_8:

      goto LABEL_10;
    }
  }

  if (![*(*(*(a1 + 64) + 8) + 40) count])
  {
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_10;
  }

  v11 = [WeakRetained settings];
  v12 = [*(a1 + 48) context];
  v13 = [WeakRetained isEligibleAllowingIneligibility:0 usingSettings:v11 withContext:v12];

  if ((v13 & 1) == 0)
  {
    v8 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:1 userInfo:0];
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_8;
  }

LABEL_10:
}

id sub_10016F064(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(a1 + 32);

  return [v3 leave];
}

void sub_10016F7EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10016F810(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5 && [v5 count])
  {
    if (v6)
    {
      if (!os_log_GKGeneral)
      {
        v8 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10029398C();
      }

      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
      {
        sub_1002939C0();
      }
    }

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will handle updating batch results with count: %@", buf, 0xCu);
    }

    LOBYTE(v18) = *(a1 + 104);
    [WeakRetained handleIDSFetchResult:v5 handlesToQuery:*(a1 + 32) rangeToFetch:*(a1 + 64) maxBatchSize:*(a1 + 72) numberOfHandlesLeft:*(a1 + 80) allowingIneligibility:*(a1 + 88) settings:*(a1 + 96) withDelay:*(a1 + 40) completion:{v18, *(a1 + 48)}];
  }

  else if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293A28();
    }

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100293A5C();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293AC4();
    }

    v17 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:3 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10016FD30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(GKContactsCacheUpdateBatchStartCommand);
  v8 = [(GKContactsCacheUpdateBatchStartCommand *)v7 executeWithContext:v5];
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No contact list currently exist. Likely due to a clear cache event. Stopping.", buf, 2u);
    }

    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"fetchingFinished"];
    [*(a1 + 32) setError:v8];
    v6[2](v6);
  }

  else
  {
    v11 = [GKCDIDSInfoList _gkPrimaryListWithContext:v5];
    v12 = [v11 updateIntervalStartTimeStamp];

    if (!v12)
    {
      v13 = +[NSDate date];
      [v11 setUpdateIntervalStartTimeStamp:v13];
    }

    v14 = [v11 updateIntervalHandlesCount];
    v15 = [v14 unsignedIntegerValue];

    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v15[[*(a1 + 40) count]]);
    [v11 setUpdateIntervalHandlesCount:v16];

    if ([*(a1 + 48) isEligibleAllowingIneligibility:*(a1 + 64) usingSettings:*(a1 + 56) withContext:v5])
    {
      v17 = [*(a1 + 40) allKeys];
      v18 = [NSSet setWithArray:v17];

      v19 = [GKCDIDSInfo _gkObjectsMatchingHandles:v18 withContext:v5];
      v20 = [v19 _gkMapDictionaryWithKeyPath:@"handle"];

      if (os_log_is_debug_enabled(os_log_GKContacts))
      {
        v21 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
      }

      else
      {
        v21 = 0;
      }

      v24 = [v20 count];
      if (v24 != [*(a1 + 40) count])
      {
        if (!os_log_GKGeneral)
        {
          v25 = GKOSLoggers();
        }

        v26 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Not all fetched IDS entries match what is cached.", buf, 2u);
        }
      }

      v27 = *(a1 + 40);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1001701BC;
      v31[3] = &unk_100369B68;
      v28 = v20;
      v32 = v28;
      v33 = v5;
      v29 = v21;
      v34 = v29;
      [v27 enumerateKeysAndObjectsUsingBlock:v31];
      if ([v29 count])
      {
        if (!os_log_GKGeneral)
        {
          v30 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
        {
          sub_100293AF8();
        }
      }

      v6[2](v6);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v22 = GKOSLoggers();
      }

      v23 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Eligibility changed while performing a batch update interval. Will not continue.", buf, 2u);
      }

      [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"fetchingFinished"];
      v6[2](v6);
    }
  }
}

void sub_1001701BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = [GKCDIDSInfo alloc];
  v9 = +[GKCDIDSInfo entity];
  v7 = [(GKCDIDSInfo *)v8 initWithEntity:v9 insertIntoManagedObjectContext:*(a1 + 40)];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Created a new GKCDIDSInfo entry as part of the fetching process.", v13, 2u);
  }

  if (v7)
  {
LABEL_7:
    [(GKCDIDSInfo *)v7 _gkUpdateEntryWithHandle:v5 idsInfoResult:v6];
    v12 = [v6 gameCenterData];
    [*(a1 + 48) setObject:v12 forKeyedSubscript:v5];
  }
}

void sub_1001702FC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"fetchingFinished"];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) != 0 || ([*(a1 + 32) error], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = *(a1 + 64);
    v17 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, v17);
  }

  else
  {
    [*(a1 + 40) idsBatchFetchDelayInterval];
    v7 = v6;
    [*(a1 + 40) idsBatchFetchJitterInterval];
    v9 = arc4random_uniform(v8);
    objc_initWeak(&location, *(a1 + 48));
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100170674;
    v23[3] = &unk_100369B90;
    objc_copyWeak(&v27, &location);
    v28 = *(a1 + 72);
    v29 = *(a1 + 88);
    v24 = *(a1 + 56);
    v30 = *(a1 + 96);
    v25 = *(a1 + 40);
    v31 = *(a1 + 112);
    v26 = *(a1 + 64);
    v10 = objc_retainBlock(v23);
    v11 = v10;
    if (*(a1 + 112))
    {
      v12 = [*(a1 + 48) idsFetchDelayTimer];
      [v12 cancel];

      v13 = objc_alloc_init(GKContactsIntegrationTimer);
      [*(a1 + 48) setIdsFetchDelayTimer:v13];

      v14 = [*(a1 + 48) idsFetchDelayTimer];
      v15 = dispatch_walltime(0, ((v7 + v9) * 1000000000.0));
      v16 = [*(a1 + 48) idsBatchQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1001706E8;
      v20[3] = &unk_100368028;
      objc_copyWeak(&v22, &location);
      v21 = v11;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10017079C;
      v18[3] = &unk_100360FA0;
      v19 = *(a1 + 64);
      [v14 startWithStartTime:v15 updateInterval:-1 queue:v16 updateBlock:v20 cancelBlock:v18];

      objc_destroyWeak(&v22);
    }

    else
    {
      (v10[2])(v10);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void sub_100170648(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100170674(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  LOBYTE(v2) = *(a1 + 104);
  [WeakRetained fetchIDSDataAndUpdateCacheForHandles:*(a1 + 32) rangeToFetch:*(a1 + 80) + *(a1 + 64) maxBatchSize:*(a1 + 72) numberOfHandlesLeft:*(a1 + 80) allowingIneligibility:*(a1 + 88) - *(a1 + 80) settings:*(a1 + 96) withDelay:*(a1 + 40) completion:{v2, *(a1 + 48)}];
}

void sub_1001706E8(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "IDS delay timer firing.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained setIdsFetchDelayTimer:0];
}

void sub_10017079C(uint64_t a1)
{
  v2 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:4 userInfo:0];
  (*(*(a1 + 32) + 16))();
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "IDS delay timer stopped.", v5, 2u);
  }
}

void sub_100170B68(uint64_t a1)
{
  v2 = [*(a1 + 32) settings];
  if ([*(a1 + 32) isEligibleAllowingIneligibility:*(a1 + 56) usingSettings:v2])
  {
    v3 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 879, "[GKContactsIntegrationController getRelationshipsForContacts:updateExistingContactEntries:completionHandler:]_block_invoke"];
    v4 = [GKDispatchGroup dispatchGroupWithName:v3];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100170D04;
    v8[3] = &unk_100369C08;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v5;
    v6 = *(a1 + 48);
    v13 = *(a1 + 64);
    v7 = *(a1 + 56);
    v11 = v6;
    v12 = v7;
    v10 = v2;
    [v4 perform:v8];
    [v4 wait];
  }

  else
  {
    v4 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:1 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100170D04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contactStore];
  v5 = [v4 _gkMeContact];
  v6 = [v5 identifier];

  if ([*(a1 + 40) count] == 1 && (objc_msgSend(*(a1 + 40), "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v6), v8, v7, v9))
  {
    v10 = [*(a1 + 32) relationshipForMeContact];
    v11 = v10;
    if (v10)
    {
      v23 = v10;
      v12 = [NSArray arrayWithObjects:&v23 count:1];
    }

    else
    {
      v12 = 0;
    }

    (*(*(a1 + 56) + 16))();
    v3[2](v3);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v13 = *(a1 + 32);
    v14 = *(a1 + 72);
    v15 = *(a1 + 64);
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100170F58;
    v18[3] = &unk_100369BE0;
    objc_copyWeak(&v21, &location);
    v19 = *(a1 + 56);
    v20 = v3;
    [v13 relationshipsForContacts:v17 updateExistingContactEntries:v14 & 1 allowingIneligibility:v15 usingSettings:v16 meContactID:v6 completionHandler:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void sub_100170F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100170F58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained metricsHandler];
  [v10 recordContactRelationshipsFromResults:v9];

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void sub_100171238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171258(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [v6 contactsAssociationID];
  v4 = [v3 length];
  if (v4)
  {
    v5 = [v6 internalRepresentation];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  if (v4)
  {
  }
}

void sub_10017167C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) contactStore];
  v4 = *(a1 + 88);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) context];
  v8 = [v3 _gkSyncAndCollectHandlesForContacts:v5 updateExistingEntries:v4 & 1 meContactID:v6 context:v7];

  v9 = *v2;
  v10 = *(a1 + 64);
  v11 = [*(a1 + 56) context];
  v12 = [v9 calculateRemainingIDSHandleQueryCountUsingSettings:v10 withContext:v11];

  if (v12 && *(a1 + 89) != 1)
  {
    v21 = *(a1 + 32);
    v22 = [*(a1 + 64) idsV2FetchSize];
    v23 = *(a1 + 64);
    v24 = [*(a1 + 56) context];
    v17 = [v21 expiredIDSEntriesWithFetchLimit:v22 matchingHandles:v8 usingSettings:v23 withContext:v24];

    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
    }

    v26 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
      *buf = 138412290;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Expired handle count for contact: %@", buf, 0xCu);
    }

    v29 = [v17 count];
    if (v29 >= v12)
    {
      v30 = v12;
    }

    else
    {
      v30 = v29;
    }

    v20 = [v17 subarrayWithRange:{0, v30}];
    v31 = [v20 _gkDistinctValuesForKeyPath:@"handle"];
    v32 = [*(a1 + 56) context];
    v37 = [GKCDContactInfoList _gkPrimaryListWithContext:v32];

    if (!os_log_GKGeneral)
    {
      v33 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100293B60();
    }

    objc_initWeak(buf, *(a1 + 32));
    v34 = *(a1 + 32);
    v35 = *(a1 + 80);
    v36 = *(a1 + 64);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100171B08;
    v38[3] = &unk_100369C58;
    objc_copyWeak(&v42, buf);
    v38[4] = *(a1 + 32);
    v39 = v8;
    v40 = *(a1 + 56);
    v41 = *(a1 + 72);
    [v34 fetchIDSDataAndUpdateCacheForHandles:v31 allowingIneligibility:v35 usingSettings:v36 withDelay:0 completion:v38];

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Will not fetch handles for contact since cache updates are busy or IDS limit breached", buf, 2u);
    }

    v15 = *(a1 + 32);
    v16 = [*(a1 + 56) context];
    v17 = [v15 contactAssociationIDMapForHandles:v8 withContext:v16];

    v18 = *(a1 + 32);
    v19 = [*(a1 + 56) context];
    v20 = [v18 relationshipsForHandles:v8 contactAssociationIDMap:v17 withContext:v19];

    (*(*(a1 + 72) + 16))();
  }
}

void sub_100171AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100171B08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained playerProvider];
  v4 = [v3 localPlayerCacheGroup];

  v5 = [v4 context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100171C20;
  v8[3] = &unk_100364590;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = WeakRetained;
  v12 = v4;
  v13 = *(a1 + 56);
  v7 = v4;
  [v5 performBlock:v8];
}

void sub_100171C20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) context];
  v5 = [v2 contactAssociationIDMapForHandles:v3 withContext:v4];

  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) context];
  v9 = [v7 relationshipsForHandles:v6 contactAssociationIDMap:v5 withContext:v8];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Found relationship with count: %@", &v14, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
}

void sub_100171F44(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) contactsChangedCoalescingTimer];
  [v2 cancel];

  v3 = objc_alloc_init(GKContactsIntegrationTimer);
  [*(a1 + 32) setContactsChangedCoalescingTimer:v3];

  v4 = [*(a1 + 32) contactsChangedCoalescingTimer];
  v5 = [*(a1 + 32) settings];
  [v5 notificationCoalescingWaitTime];
  v7 = dispatch_walltime(0, (v6 * 1000000000.0));
  v8 = [*(a1 + 32) serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001720BC;
  v9[3] = &unk_100367F68;
  objc_copyWeak(&v10, &location);
  [v4 startWithStartTime:v7 updateInterval:-1 queue:v8 updateBlock:v9 cancelBlock:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_100172098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001720BC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Firing contacts changed coalescing timer.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startContactsSyncAllowingChangeHistory:1 completion:0];
  [WeakRetained setContactsChangedCoalescingTimer:0];
}

void sub_100172220(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) reachabilityChangedCoalescingTimer];
  [v2 cancel];

  v3 = objc_alloc_init(GKContactsIntegrationTimer);
  [*(a1 + 32) setReachabilityChangedCoalescingTimer:v3];

  v4 = [*(a1 + 32) reachabilityChangedCoalescingTimer];
  v5 = [*(a1 + 32) settings];
  [v5 notificationCoalescingWaitTime];
  v7 = dispatch_walltime(0, (v6 * 1000000000.0));
  v8 = [*(a1 + 32) serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001723AC;
  v9[3] = &unk_100368CC8;
  objc_copyWeak(&v11, &location);
  v10 = *(a1 + 40);
  [v4 startWithStartTime:v7 updateInterval:-1 queue:v8 updateBlock:v9 cancelBlock:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_100172388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001723AC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Firing reachability changed coalescing timer.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 _gkCurrentReachabilityStatus])
  {
    [WeakRetained handleReachabilityChanged];
  }

  [WeakRetained setContactsChangedCoalescingTimer:0];
}

void sub_1001725B8(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v1];

  if (([v7 expired] & 1) == 0)
  {
    v2 = +[GKClientProxy gameCenterClient];
    v3 = +[GKPlayerCredentialController sharedController];
    v4 = [v7 contactsAssociationID];
    v5 = [v7 contactsIntegrationConsent];
    v6 = [v7 serviceLastUpdatedTimestamp];
    [v3 setContactAssociationID:v4 contactIntegrationConsent:v5 serviceLastUpdateTimestamp:v6 forEnvironment:objc_msgSend(v2 forcefully:"environment") completionHandler:{0, &stru_100369CA0}];
  }
}

void sub_1001726CC(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_100293BC8();
  }
}

void sub_100172854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293C64();
    }

    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100293C98();
    }
  }

  else if (![v5 count])
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293D00();
    }
  }

  v10 = [[GKContactsIntegrationControllerSettings alloc] initWithBagValues:v5];
  v11 = [*(a1 + 32) settings];
  [v11 idsUpdateInterval];
  v13 = v12;
  [v10 idsUpdateInterval];
  v15 = v14;

  [*(a1 + 32) setSettings:v10];
  if ([*(a1 + 32) isEligibleAllowingIneligibility:0 usingSettings:v10])
  {
    if (v13 == v15 || ([*(a1 + 32) idsCacheUpdateTimer], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      [*(a1 + 32) startContactsSyncAllowingChangeHistory:0 completion:0];
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = [v17 settings];
      [v18 idsUpdateInterval];
      [v17 setupIDSCacheUpdateTimerWithStartTime:?];
    }
  }

  else
  {
    [*(a1 + 32) stopCacheUpdates];
  }
}

void sub_1001730B4(uint64_t a1)
{
  if ([*(a1 + 32) idsSyncInProgress])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 1196, "[GKContactsIntegrationController startIDSSyncWithCompletion:]_block_invoke"];
    v4 = [GKDispatchGroup dispatchGroupWithName:v3];
    [*(a1 + 32) setIdsUpdateGroup:v4];

    objc_initWeak(&location, *(a1 + 32));
    v5 = [*(a1 + 32) contactsUpdateGroup];

    [*(a1 + 32) idsUpdateGroup];
    if (v5)
      v6 = {;
      v7 = [*(a1 + 32) contactsUpdateGroup];
      v8 = [*(a1 + 32) serialQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10017332C;
      v14[3] = &unk_100368028;
      v9 = &v16;
      objc_copyWeak(&v16, &location);
      v15 = *(a1 + 40);
      [v6 join:v7 queue:v8 block:v14];
      v10 = &v15;
    }

    else
      v6 = {;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001734B8;
      v11[3] = &unk_100369CC8;
      v9 = &v13;
      objc_copyWeak(&v13, &location);
      v12 = *(a1 + 40);
      [v6 perform:v11];
      v10 = &v12;
    }

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void sub_100173304(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10017332C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001733CC;
  v3[3] = &unk_100361270;
  v3[4] = WeakRetained;
  v4 = *(a1 + 32);
  [WeakRetained refetchIDSHandlesInPriorityOrderWithCompletion:v3];
}

void sub_1001733CC(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100173470;
  v4[3] = &unk_100361270;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

uint64_t sub_100173470(uint64_t a1)
{
  [*(a1 + 32) setIdsUpdateGroup:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1001734B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017357C;
  v6[3] = &unk_1003673F8;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [WeakRetained refetchIDSHandlesInPriorityOrderWithCompletion:v6];
}

void sub_10017357C(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173634;
  block[3] = &unk_1003673F8;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

uint64_t sub_100173634(uint64_t a1)
{
  [*(a1 + 32) setIdsUpdateGroup:0];
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100173A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100173AC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "IDS timer is firing", buf, 2u);
  }

  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKContactsIntegrationController.m", 1255, "[GKContactsIntegrationController setupIDSCacheUpdateTimerWithStartTime:]_block_invoke"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];
  [*(a1 + 32) setIdsUpdateGroup:v6];

  objc_initWeak(buf, *(a1 + 32));
  v7 = [*(a1 + 32) idsUpdateGroup];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100173D34;
  v12[3] = &unk_100369CF0;
  objc_copyWeak(&v13, buf);
  [v7 perform:v12];

  v8 = [*(a1 + 32) idsUpdateGroup];
  v9 = [*(a1 + 32) serialQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100173D90;
  v10[3] = &unk_100367F68;
  objc_copyWeak(&v11, buf);
  [v8 notifyOnQueue:v9 block:v10];

  [WeakRetained setIdsCacheUpdateTimer:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void sub_100173CF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_100173D34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refetchIDSHandlesInPriorityOrderWithCompletion:v3];
}

void sub_100173D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIdsUpdateGroup:0];
}

void sub_100173DD4(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "IDS timer stopped", v3, 2u);
  }
}

id sub_100174044(uint64_t a1)
{
  v2 = [*(a1 + 32) idsFetchDelayTimer];
  [v2 cancel];

  v3 = *(a1 + 32);

  return [v3 setIdsFetchDelayTimer:0];
}

void sub_1001741EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 stopCacheUpdates];
  v3[2]();
}

void sub_100174248(id a1, NSManagedObjectContext *a2, id a3)
{
  v5 = a3;
  v4 = a2;
  [(NSManagedObjectContext *)v4 _gkClearAllEntriesOfEntity:@"ContactInfo"];
  [(NSManagedObjectContext *)v4 _gkClearAllEntriesOfEntity:@"ContactInfoList"];
  [(NSManagedObjectContext *)v4 _gkClearAllEntriesOfEntity:@"IDSInfo"];
  [(NSManagedObjectContext *)v4 _gkClearAllEntriesOfEntity:@"IDSInfoList"];

  v5[2]();
}

void sub_100174C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  [v5 populateContactInfoForProfiles:v6 withContext:a2];
  dispatch_async(*(a1 + 48), *(a1 + 56));
  v7[2]();
}

void sub_100176C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100176C64(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_100294014(a1, v5, v3);
    }

    [a1[5] setError:v3];
    [a1[5] leave];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v7 = [WeakRetained playerProvider];
    v8 = [v7 localPlayerCacheGroup];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100176DB8;
    v9[3] = &unk_100361708;
    v10 = a1[4];
    v11 = a1[5];
    [v8 performOnManagedObjectContext:v9];
  }
}

void sub_100176DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  v5 = [GKCDIDSInfo _gkObjectsMatchingHandles:*(a1 + 32) withContext:a2];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 handle];

        if (!v14)
        {
          if (!os_log_GKGeneral)
          {
            v19 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            sub_1002940C4();
          }

          v20 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:8 userInfo:0];
          [*(a1 + 40) setError:v20];

          goto LABEL_18;
        }

        v15 = [v13 supportsMessageTransportV2];
        v16 = [v15 integerValue];

        v17 = [v13 handle];
        if (v16 == 1)
        {
          v18 = v6;
        }

        else
        {
          v18 = v7;
        }

        [v18 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"availablePlayerHandles"];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:@"unavailablePlayerHandles"];
  [*(a1 + 40) leave];
  v21[2](v21);
}

void sub_100177E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100177EA4;
  v7[3] = &unk_100360FA0;
  v8 = v3;
  v6 = v3;
  [v5 beginTransaction:v4 completion:v7];
}

void sub_100178684(uint64_t a1)
{
  v4 = objc_alloc_init(GKContactsChangedClearCommand);
  v2 = [*(a1 + 32) context];
  v3 = [(GKContactsChangedClearCommand *)v4 executeWithContext:v2];
}

void sub_100178A4C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      v8 = [GKContactsChangedAddOrUpdateCommand alloc];
      v9 = [(GKContactsChangedAddOrUpdateCommand *)v8 initWithContact:v7 meContactID:*(a1 + 40), v15];
      v10 = *(a1 + 48);
      v11 = [*(a1 + 56) context];
      [v10 addCommand:v9 withContext:v11];

      v12 = [*(a1 + 48) error];

      if (v12)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v13 = *(a1 + 48);
    v2 = [*(a1 + 56) context];
    v14 = [v13 executeCommandsWithContext:v2];
  }
}

void sub_100179B08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contactsController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100179BD4;
  v7[3] = &unk_100362998;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getRelationshipsForContacts:v5 updateExistingContactEntries:0 completionHandler:v7];
}

void sub_100179BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"relationships"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"contactAssociationIDMap"];

  v7 = [*(a1 + 32) error];
  (*(*(a1 + 40) + 16))();
}

id sub_100179C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 handle];
  v5 = [v4 lowercaseString];

  if ([v5 length] && objc_msgSend(*(a1 + 32), "containsObject:", v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10017A0CC(id a1)
{
  qword_1003B9408 = [[_TtC14GameDaemonCore10GKLRUCache alloc] initWithCapacity:3];

  _objc_release_x1();
}

uint64_t sub_10017ACE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10017BFE4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.GameKit.GKBulletin.sync", v3);
  v2 = qword_1003B9418;
  qword_1003B9418 = v1;
}

void sub_10017C08C(id a1)
{
  v3[0] = &off_100382820;
  v4[0] = objc_opt_class();
  v3[1] = &off_100382838;
  v4[1] = objc_opt_class();
  v3[2] = &off_100382850;
  v4[2] = objc_opt_class();
  v3[3] = &off_100382868;
  v4[3] = objc_opt_class();
  v3[4] = &off_100382880;
  v4[4] = objc_opt_class();
  v3[5] = &off_100382898;
  v4[5] = objc_opt_class();
  v3[6] = &off_1003828B0;
  v4[6] = objc_opt_class();
  v3[7] = &off_1003828C8;
  v4[7] = objc_opt_class();
  v3[8] = &off_1003828E0;
  v4[8] = objc_opt_class();
  v3[9] = &off_1003828F8;
  v4[9] = objc_opt_class();
  v3[10] = &off_100382910;
  v4[10] = objc_opt_class();
  v3[11] = &off_100382928;
  v4[11] = objc_opt_class();
  v3[12] = &off_100382940;
  v4[12] = objc_opt_class();
  v3[13] = &off_100382958;
  v4[13] = objc_opt_class();
  v3[14] = &off_100382970;
  v4[14] = objc_opt_class();
  v3[15] = &off_100382988;
  v4[15] = objc_opt_class();
  v3[16] = &off_1003829A0;
  v4[16] = objc_opt_class();
  v3[17] = &off_1003829B8;
  v4[17] = objc_opt_class();
  v3[18] = &off_1003829D0;
  v4[18] = objc_opt_class();
  v3[19] = &off_1003829E8;
  v4[19] = objc_opt_class();
  v3[20] = &off_100382A00;
  v4[20] = objc_opt_class();
  v3[21] = &off_100382A18;
  v4[21] = objc_opt_class();
  v3[22] = &off_100382A30;
  v4[22] = objc_opt_class();
  v3[23] = &off_100382A48;
  v4[23] = objc_opt_class();
  v3[24] = &off_100382A60;
  v4[24] = objc_opt_class();
  v3[25] = &off_100382A78;
  v4[25] = objc_opt_class();
  v3[26] = &off_100382A90;
  v4[26] = objc_opt_class();
  v3[27] = &off_100382AA8;
  v4[27] = objc_opt_class();
  v3[28] = &off_100382AC0;
  v4[28] = objc_opt_class();
  v3[29] = &off_100382AD8;
  v4[29] = objc_opt_class();
  v3[30] = &off_100382AF0;
  v4[30] = objc_opt_class();
  v3[31] = &off_100382B08;
  v4[31] = objc_opt_class();
  v3[32] = &off_100382B20;
  v4[32] = objc_opt_class();
  v3[33] = &off_100382B38;
  v4[33] = objc_opt_class();
  v3[34] = &off_100382B50;
  v4[34] = objc_opt_class();
  v3[35] = &off_100382B68;
  v4[35] = objc_opt_class();
  v3[36] = &off_100382B80;
  v4[36] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:37];
  v2 = qword_1003B9428;
  qword_1003B9428 = v1;
}

void sub_10017D4C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    v6 = @"targetId";
    v7 = a2;
    v4 = a2;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [v2 reportMetricsForActionID:v3 withAdditionalFields:v5];
  }

  else
  {
    v5 = 0;
    [v2 reportMetricsForActionID:v3 withAdditionalFields:0];
  }
}

void sub_10017D9F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294CA0(v11, v7);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);
  }

  v12();
}

void sub_10017F660(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v6];
  v7 = [v8 playerID];
  [GKCachingUtils ensureGameInGamesPlayed:v6 playerID:v7 bundleID:*(a1 + 32) gameDescriptor:*(a1 + 40) updateWidget:1];

  v5[2](v5);
}

void sub_10017F724(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:GKCacheInvialidationKey];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    v11 = GKCacheInvialidationStoreBagKey;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) objectForKey:v11];
        [GKSystemBulletin expireCachesForBagKey:v13 payload:*(a1 + 32) context:v5 group:*(a1 + 40)];

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v6[2](v6);
}

void sub_10017F894(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v10 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v5 inManagedObjectContext:v7];
  [GKSystemBulletin expireFriendCodeDetails:a1[5] context:v7];

  v8 = a1[6];
  v9 = [v10 alias];
  [GKSystemBulletin presentGameCenterInviteUpdate:v8 playerAlias:v9];

  v6[2](v6);
}

void sub_100180720(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001807D8;
  v7[3] = &unk_100361198;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  [v5 clearEntityCacheForBagKey:v8 completionHandler:v7];
}

void sub_1001807D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100294F08(a1, v3, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100180EE4(uint64_t a1)
{
  v1 = [(GKService *)GKBulletinService serviceWithTransport:0 forClient:*(a1 + 32) localPlayer:*(a1 + 40)];
  [v1 sendRefreshContentsForDataTypeToAllClientProxy:2];
}

void sub_100181194(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100181224;
  v1[3] = &unk_100361410;
  v2 = *(a1 + 32);
  [GKClientProxy enumerateClientsUsingBlock:v1];
}

void sub_100181224(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 relayPushNotification:v3];
  v9 = [v4 currentMatchResponse];

  v5 = v9;
  if (v9)
  {
    v6 = [v9 relayPushes];
    if (v6)
    {
      v7 = [v9 relayPushes];
      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:0];
    }

    [v8 addObject:*(a1 + 32)];
    [v9 setRelayPushes:v8];

    v5 = v9;
  }
}

void sub_1001814CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v5 inManagedObjectContext:v7];
  [v8 expire];
  v9 = +[GKClientProxy gameCenterClient];
  v10 = [(GKService *)GKProfileService serviceWithTransport:0 forClient:v9 localPlayer:0];
  v12 = *(a1 + 32);
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v10 getProfilesForPlayerIDs:v11 handler:&stru_100369F78];

  [GKSystemBulletin expireGetPerGameFriendPlayerIDsCache:0 context:v7];
  v6[2](v6);
}

void sub_100181618(id a1, NSArray *a2, NSError *a3)
{
  v4 = [(NSArray *)a2 _gkMapDictionaryWithKeyPath:@"playerID"];
  v3 = +[GKClientProxy foregroundClient];
  [v3 refreshContentsForDataType:6 userInfo:v4];
}

void sub_100181AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100181AD4(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 currentMatchResponse];
  v6 = [v5 rid];
  v7 = [*(a1 + 32) matchID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [v9 checkMatchStatus];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1001824A8(id a1, GKClientProxy *a2, BOOL *a3)
{
  v6 = a2;
  v3 = [(GKClientProxy *)v6 originalBundleIdentifier];
  if ([v3 isEqual:GKMoltresIdentifier])
  {
  }

  else
  {
    v4 = [(GKClientProxy *)v6 originalBundleIdentifier];
    v5 = [v4 isEqual:GKGamesAppIdentifier];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  [(GKClientProxy *)v6 refreshContentsForDataType:20 userInfo:0];
LABEL_5:
}

void sub_100183DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) gameDescriptor];
  v5 = [v4 dictionaryForRequest];

  v6 = [(GKService *)GKMultiplayerMatchService serviceWithTransport:0 forClient:*(a1 + 40) localPlayer:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100183EDC;
  v10[3] = &unk_100362A88;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = *(a1 + 48);
  v14 = v3;
  v8 = v3;
  v9 = v5;
  [v6 getCompatibilityMatrix:v9 handler:v10];
}

void sub_100183EDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294FD8(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    [*(a1 + 48) setError:v6];
  }

  else if ([v5 count])
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v43 = v17;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKGameplayBulletin - checking compatibility for app %@, compatibility matrix = %@", buf, 0x16u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
LABEL_14:
      v22 = 0;
      while (1)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v37 + 1) + 8 * v22);
        v24 = +[GKGameDescriptor currentPlatform];
        if (v24 == [v23 platform])
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v20)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      if (!os_log_GKGeneral)
      {
        v25 = GKOSLoggers();
      }

      v26 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        v28 = +[GKGameDescriptor currentPlatform];
        *buf = 134218242;
        v43 = v28;
        v44 = 2112;
        v45 = v23;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "GKGameplayBulletin - found compatible game of this current platform (%ld). compatibleGame: %@", buf, 0x16u);
      }

      v29 = [*(a1 + 40) setInstalledGameLocationFor:v23 descriptor:*(a1 + 32)];

      if (v29)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_20:
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100184294;
    v35[3] = &unk_100369FC0;
    v34 = *(a1 + 32);
    v30 = v34.i64[0];
    v36 = vextq_s8(v34, v34, 8uLL);
    [v18 enumerateObjectsUsingBlock:v35];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
    }

    v32 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v33 = *(a1 + 32);
      *buf = 138412290;
      v43 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GKGameplayBulletin - skip checking compatibility for app %@, since compatibility matrix is empty.", buf, 0xCu);
    }
  }

LABEL_31:
  (*(*(a1 + 56) + 16))();
}

id sub_100184294(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) setInstalledGameLocationFor:a2 descriptor:*(a1 + 40)];
  *a4 = result;
  return result;
}

void sub_1001842C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100184648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100184700;
  v6[3] = &unk_1003613E8;
  v6[4] = v4;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 determineGameLocationViaCompatibilityMatrixWithCompletionHandler:v6];
}

void sub_100184700(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295044(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 40) setError:v3];
    goto LABEL_26;
  }

  if ([*(a1 + 32) gameLocation] == 1)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v23 = 0;
      v14 = "determineGameLocationOnDeviceOrInStoreWithCompletionHandler - Compatible App Installed";
      v15 = &v23;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
    }
  }

  else if ([*(a1 + 32) gameLocation] == 2)
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v13 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      v14 = "determineGameLocationOnDeviceOrInStoreWithCompletionHandler - Compatible App In Store";
      v15 = &v22;
      goto LABEL_25;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "determineGameLocationOnDeviceOrInStoreWithCompletionHandler - No compatible App Installed", buf, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v13 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = 0;
      v14 = "No compatible app installed";
      v15 = &v20;
      goto LABEL_25;
    }
  }

LABEL_26:
  (*(*(a1 + 48) + 16))(*(a1 + 48));
}

void sub_10018491C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100184B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKClientProxy gameCenterClient];
  v5 = [(GKService *)GKProfileService serviceWithTransport:0 forClient:v4 localPlayer:0];
  v6 = [*(a1 + 32) originatorPlayerID];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100184CF0;
  v10[3] = &unk_100361A58;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  v12 = v3;
  v9 = v3;
  [v5 getProfilesForPlayerIDs:v7 handler:v10];
}

void sub_100184CF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002950B0(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    [*(a1 + 40) setError:v6];
  }

  else
  {
    v15 = [v5 lastObject];
    [*(a1 + 32) setOriginatorPlayer:v15];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100184DC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10018589C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295194(a1, v6, v8);
    }
  }

  else
  {
    v9 = [v5 lastObject];
    v10 = [v9 name];
    if (!v10)
    {
      v10 = GKCopyLocalizedApplicationNameForDisplayIdentifier();
    }

    [*(a1 + 40) setGameName:v10];
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v6);
  }
}

void sub_100185E60(id a1)
{
  qword_1003B9438 = dispatch_queue_create("com.apple.GameKit.GKAcceptedInviteManager.sync", 0);

  _objc_release_x1();
}

void sub_100186450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100186468(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100186480(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018653C;
  v7[3] = &unk_100367C10;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v7];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

uint64_t sub_10018653C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = result;
  return result;
}

void sub_100186708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100186720(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001867EC;
  v8[3] = &unk_100367C10;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v8];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(a1 + 32) objectAtIndexedSubscript:v3];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 32) removeObjectAtIndex:v4];
  }
}

uint64_t sub_1001867EC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = result;
  return result;
}

id sub_1001869E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sessionToken];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

id sub_100186DD8(uint64_t a1, void *a2)
{
  v3 = [a2 sessionToken];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

id sub_100187068(uint64_t a1, void *a2)
{
  v3 = [a2 matchID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100187648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100187660(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = GKAcceptedInviteManager;
  v2 = objc_msgSendSuper2(&v6, "description");
  v3 = [v2 stringByAppendingFormat:@"AcceptedInvites: \n\tMultiplayerInvites: %@ \n\tTurnBased: %@", *(*(a1 + 32) + 8), *(*(a1 + 32) + 24)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100187B38(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin loadBulletinsForPushNotification:", buf, 2u);
  }

  v4 = +[GKReporter reporter];
  v5 = GKReporterDomainPushCount;
  [v4 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountTurnBased];

  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  v7 = +[GKClientProxy gameCenterClient];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 53, "+[GKTurnBasedMultiplayerBulletin loadBulletinsForPushNotification:withHandler:]_block_invoke");
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = [objc_alloc(*(a1 + 48)) initWithPushNotification:*(a1 + 32)];
  v11 = +[GKReporter reporter];
  v12 = [v10 aggregateDictionaryKey];
  [v11 reportEvent:v5 type:v12];

  if ([v10 isPushForLocalPlayers])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100187E58;
    v26[3] = &unk_100360F00;
    v27 = v10;
    v28 = v9;
    v29 = v6;
    [v28 perform:v26];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002952C0(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (*(a1 + 40))
  {
    v22 = [v7 replyQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100188384;
    v23[3] = &unk_100360EB0;
    v25 = *(a1 + 40);
    v24 = v6;
    [v9 notifyOnQueue:v22 block:v23];
  }
}

void sub_100187E58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100187F34;
  v6[3] = &unk_100362278;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  [v7 determineGameLocationOnDeviceOrInStoreWithCompletionHandler:v6];
}

void sub_100187F34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002952F8();
    }
  }

  else if ([*(a1 + 32) gameLocation])
  {
    [*(a1 + 32) update];
    v8 = [*(a1 + 32) gameDescriptor];
    v9 = [v8 bundleIdentifier];

    if (GKGetApplicationStateForBundleID(v9) <= 3 && ([objc_opt_class() displayNotification] & 1) != 0)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10018819C;
      v16[3] = &unk_100360FF0;
      v10 = *(a1 + 40);
      v17 = *(a1 + 32);
      v18 = *(a1 + 48);
      [v10 perform:v16];

      v11 = v17;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Notify the App, do not display bulletin", buf, 2u);
      }

      [*(a1 + 32) saveTurnBasedEvent];
      [*(a1 + 32) invalidateTurnCache];
      v11 = [GKClientProxy clientForBundleID:v9];
      [v11 fetchTurnBasedData];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerBulletin Declining invite due to no compatible game found", buf, 2u);
    }

    [*(a1 + 32) declineTurnBasedInviteWithReason:2];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v5, v6, v7);
}

void sub_10018819C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100188264;
  v6[3] = &unk_1003613E8;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 loadDataWithHandler:v6];
}

void sub_100188264(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295360();
    }
  }

  else if ([objc_opt_class() displayNotification])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Assemble Bulletin", v7, 2u);
    }

    [*(a1 + 32) assembleBulletin];
    [*(a1 + 32) saveTurnBasedEvent];
    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100188CE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100188DC8;
  v8[3] = &unk_100361198;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 loadLocalizedGameNameForBundleID:v6 handler:v8];
}

void sub_100188DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002953C8();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100188E64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100188F1C;
  v6[3] = &unk_1003613E8;
  v6[4] = v4;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 loadOriginatorPlayerWithCompletionHandler:v6];
}

void sub_100188F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295430(a1, v5, v3);
    }

    [*(a1 + 40) setError:v3];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100188FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) gameDescriptor];
  v5 = [v4 bundleIdentifier];
  v6 = [(GKService *)GKTurnBasedService serviceForBundleID:v5 localPlayer:0];
  v7 = [*(a1 + 32) matchID];
  v14 = v7;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100189134;
  v11[3] = &unk_100361A58;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v9;
  v13 = v3;
  v10 = v3;
  [v6 getDetailsForTurnBasedMatchIDs:v8 includeGameData:1 handler:v11];
}

void sub_100189134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "loadBulletinMessageWithHandler - Error getting expiration date for match: %@", &v16, 0xCu);
    }

    [*(a1 + 40) setError:v6];
  }

  else
  {
    v9 = [v5 lastObject];
    v10 = [v9 currentParticipant];
    v11 = [v9 participants];
    v12 = [v11 count];

    if (v12 > v10)
    {
      v13 = [v9 participants];
      v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v9, "currentParticipant")}];

      v15 = [v14 timeoutDate];
      [*(a1 + 32) setExpirationDate:v15];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001892E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100189714(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) gameDescriptor];
  v8 = [v7 adamID];
  v9 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ OR game.adamID = %@", v6, v8];
  [(GKExpiringCacheObject *)GKTurnBasedSessionListCacheObject expireObjectsMatchingPredicate:v9 context:v13];

  v10 = [*(a1 + 40) matchID];

  if (v10)
  {
    v11 = [*(a1 + 40) matchID];
    v12 = [NSPredicate predicateWithFormat:@"sessionID = %@", v11];
    [(GKExpiringCacheObject *)GKTurnBasedSessionCacheObject expireObjectsMatchingPredicate:v12 context:v13];
  }

  v5[2](v5);
}

void sub_10018A6B8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [objc_opt_class() shouldLoadCacheList];
  v8 = [objc_opt_class() shouldLoadCacheDetails];
  v9 = [objc_opt_class() shouldLoadCacheData];
  if (![objc_opt_class() shouldExpirePlayerList])
  {
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v20 = [a1[4] gameDescriptor];
    v21 = [v20 bundleIdentifier];
    v22 = [NSPredicate predicateWithFormat:@"game.bundleID = %@", v21];
    [(GKExpiringCacheObject *)GKTurnBasedSessionListCacheObject expireObjectsMatchingPredicate:v22 context:v5];

    v23 = [a1[5] bundleIdentifier];
    v24 = [NSPredicate predicateWithFormat:@"game.bundleID = %@", v23];
    [(GKExpiringCacheObject *)GKTurnBasedSessionListCacheObject expireObjectsMatchingPredicate:v24 context:v5];

    [a1[6] getTurnBasedMatchesAndCompatibleBundleID:0 handler:0];
    [a1[7] getTurnBasedMatchesAndCompatibleBundleID:1 handler:0];
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v26 = @"bundle-id";
  v15 = [a1[4] gameDescriptor];
  v16 = [v15 bundleIdentifier];
  v27 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v18 = [GKGameCacheObject gameForGameDescriptor:v17 context:v5];
  v19 = [NSPredicate predicateWithFormat:@"game = %@ AND type = %d", v18, 1];
  [(GKExpiringCacheObject *)GKCompatiblePlayerListCacheObject expireObjectsMatchingPredicate:v19 context:v5];

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8)
  {
LABEL_4:
    v10 = [a1[4] matchID];
    v11 = [NSPredicate predicateWithFormat:@"sessionID = %@", v10];
    [(GKExpiringCacheObject *)GKTurnBasedSessionCacheObject expireObjectsMatchingPredicate:v11 context:v5];

    v12 = a1[6];
    v13 = [a1[4] matchID];
    v25 = v13;
    v14 = [NSArray arrayWithObjects:&v25 count:1];
    [v12 getDetailsForTurnBasedMatchIDs:v14 includeGameData:v9 handler:0];
  }

LABEL_5:
  v6[2](v6);
}

void sub_10018AEF8(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v4 = +[GKReporter reporter];
  [v4 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountTurnBasedInitiate];

  v5 = [[NSMutableArray alloc] initWithCapacity:1];
  v6 = +[GKClientProxy gameCenterClient];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKTurnBasedMultiplayerBulletin.m", 493, "+[GKTurnBasedMultiplayerInviteBulletin loadBulletinsForPushNotification:withHandler:]_block_invoke");
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = [(GKTurnBasedMultiplayerBulletin *)[GKTurnBasedMultiplayerInviteBulletin alloc] initWithPushNotification:*(a1 + 32)];
  v10 = [*(a1 + 32) objectForKeyedSubscript:GKInviteIsFromMessageKey];
  v11 = [v10 BOOLValue];

  v12 = +[GKReporter reporter];
  v13 = v12;
  if (v11)
  {
    [v12 reportEvent:GKReporterDomainInviteInitiateType type:GKMessageInviteInitiate];
  }

  else
  {
    [v12 reportEvent:GKReporterDomainInviteInitiateType type:GKPushInviteInitiate];

    if (![(GKGameplayBulletin *)v9 isPushForLocalPlayers])
    {
      goto LABEL_9;
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018B218;
  v18[3] = &unk_100361670;
  v19 = v9;
  v20 = v8;
  v22 = v11;
  v21 = v5;
  [v20 perform:v18];

LABEL_9:
  if (*(a1 + 40))
  {
    v14 = [v6 replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10018B6B4;
    v15[3] = &unk_100360EB0;
    v17 = *(a1 + 40);
    v16 = v5;
    [v8 notifyOnQueue:v14 block:v15];
  }
}

void sub_10018B218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018B2FC;
  v6[3] = &unk_10036A0F8;
  v7 = v4;
  v8 = *(a1 + 40);
  v11 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  [v7 determineGameLocationOnDeviceOrInStoreWithCompletionHandler:v6];
}

void sub_10018B2FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002954EC();
    }
  }

  else
  {
    if ([*(a1 + 32) gameLocation])
    {
      [*(a1 + 32) updateBadgeCount];
      [*(a1 + 32) expireAndLoadCaches];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10018B4D4;
      v10[3] = &unk_1003665B0;
      v5 = *(a1 + 40);
      v11 = *(a1 + 32);
      v13 = *(a1 + 64);
      v12 = *(a1 + 48);
      [v5 perform:v10];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v6 = GKOSLoggers();
      }

      v7 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerInviteBulletin Declining invite due to no compatible game found", v9, 2u);
      }

      [*(a1 + 32) declineTurnBasedInviteWithReason:2];
    }

    v8 = +[GKReporter reporter];
    [v8 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountTurnBasedTurn];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10018B4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018B5A4;
  v6[3] = &unk_10036A0D0;
  v7 = v4;
  v10 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 loadDataWithHandler:v6];
}

void sub_10018B5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 10)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002955BC(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    [*(a1 + 32) declineTurnBasedInviteWithReason:1];
  }

  else if (!v3 || (*(a1 + 56) & 1) != 0)
  {
    [*(a1 + 32) setGameInviteMessage];
    [*(a1 + 32) assembleBulletin];
    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295554();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10018BFF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018C0DC;
  v8[3] = &unk_100361198;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 loadLocalizedGameNameForBundleID:v6 handler:v8];
}

void sub_10018C0DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002955F4();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10018C178(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018C230;
  v8[3] = &unk_1003613E8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  [v4 loadOriginatorPlayerWithCompletionHandler:v8];
}

void sub_10018C230(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = +[GKPreferences shared];
    if ([v5 multiplayerAllowedPlayerType] == 1)
    {
      v6 = [*(a1 + 40) originatorPlayer];
      v7 = [v6 friendBiDirectional];
      v8 = [v7 isEqualToNumber:&off_100382B98];

      if (v8)
      {
        goto LABEL_15;
      }

      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_1002956C4(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v5 = [NSError userErrorForCode:10 underlyingError:0];
      [*(a1 + 32) setError:v5];
    }

    goto LABEL_15;
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10029565C();
  }

  [*(a1 + 32) setError:v3];
LABEL_15:
  (*(*(a1 + 48) + 16))();
}

void sub_10018C3A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10018D0E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018D1C8;
  v8[3] = &unk_100361198;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 loadLocalizedGameNameForBundleID:v6 handler:v8];
}

void sub_10018D1C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002955F4();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10018D264(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018D314;
  v6[3] = &unk_100361198;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 loadBulletinMessageWithHandler:v6];
}

void sub_10018D314(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002956FC();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10018D3B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10018D5B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) gameDescriptor];
  v5 = [v4 bundleIdentifier];
  v6 = [(GKService *)GKTurnBasedService serviceForBundleID:v5 localPlayer:0];
  v7 = [*(a1 + 32) matchID];
  v14 = v7;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018D728;
  v11[3] = &unk_100361A58;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v9;
  v13 = v3;
  v10 = v3;
  [v6 getDetailsForTurnBasedMatchIDs:v8 includeGameData:1 handler:v11];
}

void sub_10018D728(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    [*(a1 + 40) setError:v5];
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295764();
    }
  }

  else
  {
    v28 = [a2 lastObject];
    v7 = [v28 exchanges];
    v29 = +[NSMutableOrderedSet orderedSet];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v13 exchangeID];
          v15 = [*(a1 + 32) exchangeID];
          v16 = [v14 isEqual:v15];

          if (v16)
          {
            v17 = [v13 replies];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v31;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v31 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = [*(*(&v30 + 1) + 8 * j) localizableMessage];
                  v23 = [*(a1 + 32) gameDescriptor];
                  v24 = [v23 bundleIdentifier];
                  v25 = [NSBundle _gkLocalizedMessageFromPushDictionary:v22 forBundleID:v24];

                  if (v25 && [v25 length])
                  {
                    [v29 addObject:v25];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v19);
            }

            v5 = 0;
            goto LABEL_26;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    if ([v29 count])
    {
      v26 = [v29 array];
      v27 = [v26 componentsJoinedByString:@"\n"];
      [*(a1 + 32) setMessage:v27];
    }

    else
    {
      [*(a1 + 32) setMessage:0];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10018DA78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10018F684(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin loadBulletinsForPushNotification:", buf, 2u);
  }

  v4 = +[GKReporter reporter];
  [v4 reportMessageInviteProcessingDuration];

  v5 = +[GKReporter reporter];
  [v5 recordAppLaunchAndTotalTimestamp];

  v6 = +[GKReporter reporter];
  [v6 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountInviteInitiate];

  v7 = [[NSMutableArray alloc] initWithCapacity:1];
  v8 = +[GKClientProxy gameCenterClient];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 313, "+[GKRealTimeMultiplayerInitiateBulletin loadBulletinsForPushNotification:withHandler:]_block_invoke");
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v11 = [[GKRealTimeMultiplayerInitiateBulletin alloc] initWithPushNotification:*(a1 + 32)];
  v12 = [*(a1 + 32) objectForKeyedSubscript:GKInviteIsFromMessageKey];
  v13 = [v12 BOOLValue];

  [(GKRealTimeMultiplayerBulletin *)v11 setIsMessageBasedInvite:v13];
  v14 = [*(a1 + 32) objectForKeyedSubscript:GKPushCommandKey];
  v15 = [v14 unsignedIntValue] == 9;

  [(GKRealTimeMultiplayerBulletin *)v11 setIsSharePlayInvite:v15];
  v16 = GKInviteIsFromNearbyKey;
  v17 = [*(a1 + 32) objectForKeyedSubscript:GKInviteIsFromNearbyKey];

  if (v17)
  {
    v18 = [*(a1 + 32) objectForKeyedSubscript:v16];
    -[GKRealTimeMultiplayerBulletin setIsNearbyInvite:](v11, "setIsNearbyInvite:", [v18 BOOLValue]);
  }

  v19 = +[GKReporter reporter];
  v20 = v19;
  if (v13)
  {
    [v19 reportEvent:GKReporterDomainInviteInitiateType type:GKMessageInviteInitiate];

LABEL_11:
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10018FBC4;
    v33[3] = &unk_100361670;
    v34 = v11;
    v35 = v10;
    v37 = v13;
    v36 = v7;
    [v35 perform:v33];

    goto LABEL_12;
  }

  [v19 reportEvent:GKReporterDomainInviteInitiateType type:GKPushInviteInitiate];

  if ([(GKRealTimeMultiplayerInitiateBulletin *)v11 isReconnect]|| [(GKGameplayBulletin *)v11 isPushForLocalPlayers])
  {
    goto LABEL_11;
  }

  if (!os_log_GKGeneral)
  {
    v22 = GKOSLoggers();
  }

  v23 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin loadBulletinsForPushNotification: push is not for local players", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v24 = GKOSLoggers();
  }

  v25 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v26 = v25;
    v27 = [(GKGameplayBulletin *)v11 receiverPlayerID];
    v28 = +[GKPlayerCredentialController sharedController];
    v29 = [v28 pushCredentialForEnvironment:{objc_msgSend(v8, "environment")}];
    *buf = 138412546;
    v39 = v27;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Ignoring initiate push not intended for this player. InviteID: %@ LocalPlayer: %@", buf, 0x16u);
  }

LABEL_12:
  if (*(a1 + 40))
  {
    v21 = [v8 replyQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100190414;
    v30[3] = &unk_100360EB0;
    v32 = *(a1 + 40);
    v31 = v7;
    [v10 notifyOnQueue:v21 block:v30];
  }
}

void sub_10018FBC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018FCA8;
  v6[3] = &unk_10036A0F8;
  v7 = v4;
  v8 = *(a1 + 40);
  v11 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  [v7 determineGameLocationOnDeviceOrInStoreWithCompletionHandler:v6];
}

void sub_10018FCA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_100295808();
    }
  }

  else if ([*(a1 + 32) gameLocation])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10018FE3C;
    v9[3] = &unk_1003665B0;
    v5 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = *(a1 + 64);
    v11 = *(a1 + 48);
    [v5 perform:v9];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin Declining invite due to no compatible game found", v8, 2u);
    }

    [*(a1 + 32) declineInviteWithReason:2];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10018FE3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018FF0C;
  v6[3] = &unk_10036A0D0;
  v7 = v4;
  v10 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 loadDataWithHandler:v6];
}

void sub_10018FF0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 10)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002958E8();
    }

    [*(a1 + 32) declineInviteWithReason:1];
  }

  else if (!v3 || (*(a1 + 56) & 1) != 0)
  {
    v6 = +[GKDataRequestManager sharedManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001900B4;
    v7[3] = &unk_100365E10;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v6 getValidNATTypeWithForceRelay:0 withHandler:v7];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295878();
    }
  }
}

uint64_t sub_1001900B4(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) peerNatType];
  v5 = [v4 integerValue];

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v27 = 134218240;
    v28 = a2;
    v29 = 2048;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "NAT types before generating bulletins: localNATType = %tu, peerNatType = %tu", &v27, 0x16u);
  }

  if (([*(a1 + 32) serverHosted] & 1) == 0 && ((+[GKViceroyNATTypeHelper isClosed:](GKViceroyNATTypeHelper, "isClosed:", a2) & 1) != 0 || +[GKViceroyNATTypeHelper isClosed:](GKViceroyNATTypeHelper, "isClosed:", v5)))
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v27 = 134218240;
      v28 = a2;
      v29 = 2048;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NAT types might not connect: own is %tu and inviter has %tu", &v27, 0x16u);
    }
  }

  [*(a1 + 32) setGameInviteMessage];
  [*(a1 + 32) assembleBulletin];
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 sessionToken];
    v27 = 138412290;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerInitiateBulletin - assembled bulletin with sessionToken %@", &v27, 0xCu);
  }

  [GKMatchReporter onInviteReceivedWithBulletin:*(a1 + 32)];
  if ([*(a1 + 32) isSharePlayInvite])
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 gameDescriptor];
      v20 = [v19 bundleIdentifier];
      v27 = 138412290;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Launching app (%@) automatically and accept the game invite from SharePlay", &v27, 0xCu);
    }

    if ([*(a1 + 32) gameLocation] == 1)
    {
      v21 = [*(a1 + 32) gameDescriptor];
      v22 = [v21 bundleIdentifier];
      v23 = GKApplicationNotForegroundRunningForBundleID(v22);

      if (v23)
      {
        v24 = [*(a1 + 32) gameDescriptor];
        v25 = [v24 bundleIdentifier];
        GKLaunchApplicationWithIdentifier(v25, 0);
      }
    }

    [*(a1 + 32) handleAcceptAction];
  }

  else
  {
    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10019144C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100191530;
  v8[3] = &unk_100361198;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 loadLocalizedGameNameForBundleID:v6 handler:v8];
}

void sub_100191530(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295924();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001915CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100191684;
  v8[3] = &unk_1003613E8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  [v4 loadOriginatorPlayerWithCompletionHandler:v8];
}

void sub_100191684(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = +[GKPreferences shared];
    if ([v5 multiplayerAllowedPlayerType] == 1)
    {
      v6 = [*(a1 + 40) originatorPlayer];
      v7 = [v6 friendBiDirectional];
      v8 = [v7 isEqualToNumber:&off_100382BB0];

      if (v8)
      {
        goto LABEL_15;
      }

      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100295A04();
      }

      v5 = [NSError userErrorForCode:10 underlyingError:0];
      [*(a1 + 32) setError:v5];
    }

    goto LABEL_15;
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100295994();
  }

  [*(a1 + 32) setError:v3];
LABEL_15:
  (*(*(a1 + 48) + 16))();
}

void sub_1001917F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1001919A4(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerActionBulletin loadBulletinsForPushNotification withHandler:", buf, 2u);
  }

  v4 = [objc_alloc(*(a1 + 48)) initWithPushNotification:*(a1 + 32)];
  v5 = [[NSMutableArray alloc] initWithCapacity:1];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 629, "+[GKRealTimeMultiplayerActionBulletin loadBulletinsForPushNotification:withHandler:]_block_invoke");
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  objc_initWeak(buf, v4);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100191C04;
  v14[3] = &unk_10036A170;
  v8 = v4;
  v15 = v8;
  objc_copyWeak(&v17, buf);
  v9 = v5;
  v16 = v9;
  [v7 perform:v14];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100191FD0;
  v11[3] = &unk_100360EB0;
  v13 = *(a1 + 40);
  v10 = v9;
  v12 = v10;
  [v7 notifyOnMainQueueWithBlock:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void sub_100191BE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100191C04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100191CF8;
  v6[3] = &unk_10036A148;
  v7 = v4;
  objc_copyWeak(&v10, (a1 + 48));
  v8 = *(a1 + 40);
  v5 = v3;
  v9 = v5;
  [v7 loadDataWithHandler:v6];

  objc_destroyWeak(&v10);
}

void sub_100191CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295A40();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100191E38;
    v6[3] = &unk_10036A120;
    objc_copyWeak(&v9, (a1 + 56));
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v5 setInvitedPlayerRespondedWithCompletionHandler:v6];

    objc_destroyWeak(&v9);
  }
}

uint64_t sub_100191E38(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      v5 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v6 = v5;
        v7 = objc_loadWeakRetained((a1 + 48));
        v8 = [v7 debugLine];
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will post bulletin: %@", &v16, 0xCu);
      }

      v9 = +[GKReporter reporter];
      v10 = GKReporterDomainPushCount;
      v11 = objc_loadWeakRetained((a1 + 48));
      v12 = [v11 aggregateDictionaryKey];
      [v9 reportEvent:v10 type:v12];

      v13 = *(a1 + 32);
      v14 = objc_loadWeakRetained((a1 + 48));
      [v13 addObject:v14];
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100191FD0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100192334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 gameDescriptor];
  v6 = [v5 bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100192418;
  v8[3] = &unk_100361198;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 loadLocalizedGameNameForBundleID:v6 handler:v8];
}

void sub_100192418(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295AEC();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001924B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100192564;
  v6[3] = &unk_100361198;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 loadOriginatorPlayerWithCompletionHandler:v6];
}

void sub_100192564(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295B5C();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100192600(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100192890(id *a1, void *a2)
{
  v3 = a2;
  if (a1[4])
  {
    v4 = [a1[5] originatorPlayer];
    v5 = v4;
    if (v4)
    {
      v6 = a1[6];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100192AC8;
      v18[3] = &unk_100364F98;
      v19 = v4;
      v7 = a1[4];
      v8 = a1[5];
      v20 = v7;
      v21 = v8;
      v17 = *(a1 + 3);
      v9 = v17;
      v22 = v17;
      [v6 perform:v18];
    }

    v3[2](v3);
  }

  else
  {
    v10 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setInvitedPlayerRespondedWithCompletionHandler: Received Accept for unkown Session Token", buf, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v14 = a1[5];
      v15 = v13;
      v16 = [v14 sessionToken];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received accept for unknown sessionToken %@", buf, 0xCu);
    }

    [a1[6] setResult:&__kCFBooleanFalse];
    v3[2](v3);
  }
}

void sub_100192AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 debugDescription];
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setInvitedPlayerRespondedWithCompletionHandler: starting invite session for player: %@", buf, 0xCu);
  }

  v9 = [*(a1 + 40) inviteSession];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100192C88;
  v15[3] = &unk_10036A208;
  v15[4] = *(a1 + 48);
  v16 = v9;
  v17 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v18 = v10;
  v21 = v11;
  v19 = v12;
  v20 = v3;
  v13 = v3;
  v14 = v9;
  [v14 performAsync:v15];
}

void sub_100192C88(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) originatorPlayerID];
  v4 = [*v2 peerPushToken];
  v5 = [*(a1 + 40) referencesForInvitee:*(a1 + 48)];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1001931B8;
  v42 = sub_1001931C8;
  v43 = 0;
  if ([v5 containsObject:v4])
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 48) debugDescription];
      *buf = 138412546;
      v45 = v8;
      v46 = 2112;
      v47 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Have a push token for peer(%@): %@", buf, 0x16u);
    }

    [*(a1 + 40) removeInvitee:*(a1 + 48) reference:v4];
    v9 = [*(a1 + 40) referencesForInvitee:*(a1 + 48)];

    v10 = [v9 count];
    if ([*(a1 + 32) isAccept])
    {
      if (v10)
      {
LABEL_8:
        v11 = *(a1 + 56);
        v12 = [*(a1 + 40) sessionToken];
        [v11 cancelInvitationForSession:v12 playerID:v3 pushTokens:v9 handler:&stru_10036A190];

        [*(a1 + 40) removeInvitee:*(a1 + 48) reference:0];
LABEL_17:
        v24 = [*(a1 + 56) bundleIdentifier];
        v25 = [*(a1 + 32) gameDescriptor];
        [v25 setBundleIdentifier:v24];

        v26 = [*(a1 + 56) bundleIdentifier];
        LODWORD(v25) = GKGetApplicationStateForBundleID(v26);

        if (v25 != 8)
        {
          [*(a1 + 40) addResponse:*(a1 + 32)];
          [*(a1 + 32) assembleBulletin];
          v31 = 1;
LABEL_25:
          v5 = v9;
          goto LABEL_26;
        }

        v27 = [*(a1 + 32) isAccept];
        v28 = *(a1 + 56);
        v29 = *(a1 + 32);
        if (v27)
        {
          v30 = [v29 clientNotificationWithiCloudID:v39[5]];
          [v28 acceptInviteWithNotification:v30];
        }

        else
        {
          v30 = [v29 clientNotification];
          [v28 declineInviteWithNotification:v30];
        }

LABEL_24:
        v31 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v22 = [*(a1 + 32) declineReason];
      v23 = [v22 integerValue] != 1;

      if (!v23 && v10 != 0)
      {
        goto LABEL_8;
      }
    }

    if ([v9 count])
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v13 = [*(a1 + 40) shareInvitees];
  v14 = [v13 count] == 0;

  if (!v14)
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [*(a1 + 40) shareInvitees];
      *buf = 138412290;
      v45 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Have share invitees %@", buf, 0xCu);
    }

    v18 = [NSString stringWithFormat:@"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 762, "[GKRealTimeMultiplayerActionBulletin setInvitedPlayerRespondedWithCompletionHandler:]_block_invoke"];
    v19 = [GKDispatchGroup dispatchGroupWithName:v18];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100193244;
    v33[3] = &unk_10036A1E0;
    v20 = *(a1 + 40);
    v21 = *(a1 + 80);
    v34 = v20;
    v37 = v21;
    v35 = *(a1 + 48);
    v36 = &v38;
    [v19 perform:v33];
    [v19 wait];

    v9 = v5;
    goto LABEL_17;
  }

  v31 = 0;
LABEL_26:
  v32 = [NSNumber numberWithBool:v31];
  [*(a1 + 64) setResult:v32];

  (*(*(a1 + 72) + 16))();
  _Block_object_dispose(&v38, 8);
}

void sub_100193184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001931B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001931D0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295BCC();
    }
  }
}

void sub_100193244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shareRecordID];
  v18 = v4;
  v5 = [NSArray arrayWithObjects:&v18 count:1];
  v6 = +[GKCloudKitMultiplayerUtils privateDatabase];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001933A8;
  v12[3] = &unk_10036A1B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v13 = v7;
  v17 = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v15 = v3;
  v16 = v10;
  v14 = v9;
  v11 = v3;
  [GKCloudKitMultiplayerUtils fetchShareRecordsWithRecordIDs:v5 inDatabase:v6 handler:v12];
}

void sub_1001933A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shareRecordID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"invitedPlayers"];

    if (v6)
    {
      v35 = v3;
      v46[0] = objc_opt_class();
      v46[1] = objc_opt_class();
      v46[2] = objc_opt_class();
      v46[3] = objc_opt_class();
      v7 = [NSArray arrayWithObjects:v46 count:4];
      v8 = [NSSet setWithArray:v7];
      v9 = [v5 objectForKeyedSubscript:@"invitedPlayers"];
      v40 = 0;
      v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v9 error:&v40];
      v11 = v40;

      if (v11)
      {
        if (!os_log_GKGeneral)
        {
          v12 = GKOSLoggers();
        }

        v13 = os_log_GKError;
        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_100295C3C(v11, a1, v13);
        }
      }

      v34 = v11;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            v20 = [v14 objectForKeyedSubscript:v19];
            v21 = [*(a1 + 40) playerID];
            v22 = [v20 isEqualToString:v21];

            if (v22)
            {
              if (!os_log_GKGeneral)
              {
                v23 = GKOSLoggers();
              }

              v24 = os_log_GKMatch;
              if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
              {
                v25 = *(a1 + 32);
                v26 = v24;
                v27 = [v25 shareInvitees];
                *buf = 138412546;
                v42 = v19;
                v43 = 2112;
                v44 = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Remove %@ from shareInvitees %@", buf, 0x16u);
              }

              v28 = [*(a1 + 32) shareInvitees];
              [v28 removeObject:v19];

              objc_storeStrong((*(*(a1 + 56) + 8) + 40), v19);
              goto LABEL_22;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:

      if (!os_log_GKGeneral)
      {
        v29 = GKOSLoggers();
      }

      v30 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 32);
        v32 = v30;
        v33 = [v31 shareInvitees];
        *buf = 138412290;
        v42 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Remaining share invitees after response %@", buf, 0xCu);
      }

      v3 = v35;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001937E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, [v2 BOOLValue]);
}

void sub_100194B20(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerCancelBulletin loadBulletinsForPushNotification withHandler:", &v34, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "invitation cancel push", &v34, 2u);
  }

  v6 = +[GKReporter reporter];
  [v6 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountInviteCancel];

  v7 = [[NSMutableArray alloc] initWithCapacity:1];
  v8 = [(GKRealTimeMultiplayerBulletin *)[GKRealTimeMultiplayerCancelBulletin alloc] initWithPushNotification:*(a1 + 32)];
  if ([(GKGameplayBulletin *)v8 isPushForLocalPlayers])
  {
    v9 = +[GKBulletinController sharedController];
    v10 = [(GKRealTimeMultiplayerCancelBulletin *)v8 removeAndReturnAssociatedInvite];
    v11 = [v9 acceptedInviteManager];
    if (v10)
    {
      goto LABEL_16;
    }

    v12 = [(GKRealTimeMultiplayerBulletin *)v8 sessionToken];
    v10 = [v11 removeAndReturnInviteWithSessionToken:v12];

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Did Removed Invite from inviteManager?: %@", &v34, 0xCu);
    }

    if (v10)
    {
LABEL_16:
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerCancelBulletin: loadBulletinsForPushNotification - attempting to display bulletin", &v34, 2u);
      }

      [(GKRealTimeMultiplayerCancelBulletin *)v8 copyDataFromAssociatedBulletin:v10];
      [(GKRealTimeMultiplayerCancelBulletin *)v8 assembleBulletin];
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v34 = 138412290;
        v35 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Cancel Bulletin: %@", &v34, 0xCu);
      }

      [v7 addObject:v8];
      [v9 withdrawBulletin:v10];
    }

    v19 = [(GKRealTimeMultiplayerBulletin *)v8 sessionToken];
    [v11 queueCancelledMultiplayerInviteSessionToken:v19];

    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = [(GKRealTimeMultiplayerBulletin *)v8 sessionToken];
      v34 = 138412290;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "queued canceled invite session token: %@", &v34, 0xCu);
    }

    v24 = *(a1 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, v7);
      v25 = [(GKRealTimeMultiplayerBulletin *)v8 clientNotification];
      v26 = [v25 objectForKeyedSubscript:@"x-gk-bundle-id"];

      v27 = [GKClientProxy clientForBundleID:v26];
      v28 = [(GKRealTimeMultiplayerBulletin *)v8 clientNotification];
      [v27 cancelInviteWithNotification:v28];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
    }

    v30 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v31 = v30;
      v32 = [(GKGameplayBulletin *)v8 originatorPlayerID];
      v33 = [(GKGameplayBulletin *)v8 receiverPlayerID];
      v34 = 138412546;
      v35 = v32;
      v36 = 2112;
      v37 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Ignoring cancel push not intended for this local player. inviter: %@, intendedReceiverPlayer: %@", &v34, 0x16u);
    }
  }
}

void sub_100195960(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerSendBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v4 = [*(a1 + 32) objectForKey:@"y"];
  v5 = [v4 intValue];

  v6 = [NSData alloc];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"s"];
  v8 = [v6 initWithBase64EncodedString:v7 options:0];

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (!os_log_GKGeneral)
      {
        v52 = GKOSLoggers();
      }

      v53 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerSendBulletin GKUpdateInvitationReason", buf, 2u);
      }

      v54 = [[GKRealTimeMultiplayerSendBulletin alloc] initWithPushNotification:*(a1 + 32)];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100196114;
      v58[3] = &unk_10036A230;
      v59 = v54;
      v60 = *(a1 + 32);
      v32 = v54;
      [GKClientProxy enumerateClientsUsingBlock:v58];
    }

    else
    {
      if (v5 != 100)
      {
        goto LABEL_23;
      }

      if (!os_log_GKGeneral)
      {
        v30 = GKOSLoggers();
      }

      v31 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerSendBulletin GKTTRMultiplayerLogRequestReason", buf, 2u);
      }

      v32 = [[GKRealTimeMultiplayerSendBulletin alloc] initWithPushNotification:*(a1 + 32)];
      v33 = [(GKRealTimeMultiplayerBulletin *)v32 clientDictionary];
      v34 = [v33 objectForKeyedSubscript:GKTTRBulletinKeyRadarID];
      v35 = [v33 objectForKeyedSubscript:GKTTRBulletinKeyRequesterPlayerAlias];
      v36 = v35;
      if (v34 && v35)
      {
        v37 = [(GKRealTimeMultiplayerSendBulletin *)v32 bundleIdentifier];
        v38 = [(GKGameplayBulletin *)v32 receiverPlayer];
        v39 = [(GKService *)GKMultiplayerMatchService serviceForBundleID:v37 localPlayer:v38];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100196270;
        v55[3] = &unk_1003610B8;
        v56 = v34;
        v57 = v36;
        [v39 uploadLogsForRadar:v56 from:v57 handler:v55];
      }
    }

    goto LABEL_48;
  }

  if (v5 == 1)
  {
    if (!os_log_GKGeneral)
    {
      v41 = GKOSLoggers();
    }

    v42 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerSendBulletin GKClearInvitationReason", buf, 2u);
    }

    v11 = +[GKBulletinController sharedController];
    v43 = [v11 getBulletinsOfType:objc_opt_class()];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = [v43 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v62;
      do
      {
        v47 = 0;
        do
        {
          if (*v62 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [v43 objectForKey:*(*(&v61 + 1) + 8 * v47)];
          v49 = [v48 sessionToken];
          v50 = [v49 isEqualToData:v8];

          if (v50)
          {
            [v11 withdrawBulletin:v48];
          }

          v47 = v47 + 1;
        }

        while (v45 != v47);
        v45 = [v43 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v45);
    }

    v51 = *(a1 + 40);
    if (v51)
    {
      (*(v51 + 16))(v51, 0);
    }

    goto LABEL_41;
  }

  if (v5 == 2)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerSendBulletin GKReconnectInvitationReason", buf, 2u);
    }

    v11 = [*(a1 + 32) mutableCopy];
    [v11 setObject:&off_100382BB0 forKeyedSubscript:GKPushCommandKey];
    v12 = GKInviteGameIDKey;
    v66[0] = GKInviteGameIDKey;
    v13 = GKClientDataKey;
    v14 = [v11 objectForKeyedSubscript:GKClientDataKey];
    v15 = [v14 objectForKeyedSubscript:v12];
    v67[0] = v15;
    v16 = GKInviteGameVersionKey;
    v66[1] = GKInviteGameVersionKey;
    v17 = [v11 objectForKeyedSubscript:v13];
    v18 = [v17 objectForKeyedSubscript:v16];
    v67[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
    [v11 setObject:v19 forKeyedSubscript:GKPushDataKey];

    v20 = [v11 objectForKeyedSubscript:v13];
    v21 = GKInvitePeerNATIPKey;
    v22 = [v20 objectForKeyedSubscript:GKInvitePeerNATIPKey];
    [v11 setObject:v22 forKeyedSubscript:v21];

    v23 = [v11 objectForKeyedSubscript:v13];
    v24 = GKInvitePeerNATTypeKey;
    v25 = [v23 objectForKeyedSubscript:GKInvitePeerNATTypeKey];
    [v11 setObject:v25 forKeyedSubscript:v24];

    v26 = [v11 objectForKeyedSubscript:v13];
    v27 = GKInvitePeerBlobKey;
    v28 = [v26 objectForKeyedSubscript:GKInvitePeerBlobKey];
    [v11 setObject:v28 forKeyedSubscript:v27];

    v29 = [NSNumber numberWithBool:1];
    [v11 setObject:v29 forKeyedSubscript:GKInviteIsReinvite];

    [GKRealTimeMultiplayerInitiateBulletin loadBulletinsForPushNotification:v11 withHandler:*(a1 + 40)];
LABEL_41:

    goto LABEL_48;
  }

LABEL_23:
  v40 = *(a1 + 40);
  if (v40)
  {
    (*(v40 + 16))(v40, 0);
  }

LABEL_48:
}

void sub_100196114(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 connection];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 bundleIdentifier];
    v9 = [*(a1 + 32) bundleIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Found a matching client proxy(%@) for the update bulletin: %@", &v14, 0x16u);
      }

      [v5 updateInviteWithNotification:*(a1 + 40)];
      *a3 = 1;
    }
  }
}

void sub_100196270(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_100295CFC(a1, v3);
  }
}

void sub_100196648(id a1, NSManagedObjectContext *a2, id a3)
{
  v4 = a3;
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:a2];
  v5 = [v6 challengeList];
  [v5 invalidate];

  v4[2](v4);
}

void sub_100196A98(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100196B48;
  v6[3] = &unk_100361198;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 determineGameLocationViaCompatibilityMatrixWithCompletionHandler:v6];
}

void sub_100196B48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295D84();
    }

    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100196BE4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10019837C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKChallengeCompletedBulletin clearing challenge cache", buf, 2u);
  }

  v9 = [NSPredicate predicateWithFormat:@"challengeID IN %@", *(a1 + 32)];
  v10 = [(GKCacheObject *)GKChallengeCacheObject objectsMatchingPredicate:v9 context:v5];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001984F0;
  v11[3] = &unk_10036A2A8;
  v12 = *(a1 + 40);
  [v10 enumerateObjectsUsingBlock:v11];
  v6[2](v6);
}

void sub_1001984F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = [v3 bundleID];
    v6 = [GKClientProxy clientForBundleID:v5];

    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKChallengeBulletin.m", 342, "+[GKChallengeCompletedBulletin loadBulletinsForPushNotification:withHandler:]_block_invoke");
    v8 = +[GKPlayerCredentialController sharedController];
    v9 = [v8 pushCredentialForEnvironment:{objc_msgSend(*(a1 + 32), "environment")}];
    v10 = [v9 playerInternal];
    v11 = [v10 playerID];
    v12 = [v6 transactionGroupWithName:v7 forPlayerID:v11];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001986A4;
    v13[3] = &unk_100362920;
    v14 = v3;
    [v12 performOnManagedObjectContext:v13];
    [v6 refreshContentsForDataType:1 userInfo:0];
  }
}

void sub_1001986A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 challengeID];
  v5 = [NSPredicate predicateWithFormat:@"challengeID = %@", v4];
  v6 = [(GKCacheObject *)GKChallengeCacheObject objectsMatchingPredicate:v5 context:v3];

  [v6 makeObjectsPerformSelector:"invalidate"];
}

void sub_100198760(id *a1)
{
  [a1[4] refreshContentsForDataType:1 userInfo:0];
  v2 = +[GKClientProxy gameCenterClient];
  v3 = [(GKService *)GKChallengeService serviceWithTransport:0 forClient:v2 localPlayer:0];

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKChallengeBulletin.m", 358, "+[GKChallengeCompletedBulletin loadBulletinsForPushNotification:withHandler:]_block_invoke_3");
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a1[5];
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [a1[5] objectForKey:v10];
        v12 = +[NSNull null];

        if (v10)
        {
          v13 = v10 == v12;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10;
        }

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100198AC0;
        v23[3] = &unk_100362FC8;
        v24 = v3;
        v25 = v11;
        v26 = v14;
        v27 = a1[6];
        v15 = v5;
        v28 = v15;
        v29 = a1[7];
        v16 = v14;
        v17 = v11;
        [v15 perform:v23];
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  if (a1[8])
  {
    v18 = [a1[4] replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100199038;
    v20[3] = &unk_100360EB0;
    v22 = a1[8];
    v21 = a1[7];
    [v5 notifyOnQueue:v18 block:v20];
  }
}

void sub_100198AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100198BC0;
  v8[3] = &unk_100361A80;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 32);
  v13 = v3;
  v7 = v3;
  [v4 getChallengeDetailsForChallengeIDs:v5 receiverID:v6 handler:v8];
}

void sub_100198BC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v17 = a3;
  if (v17)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295EC4();
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v12 = [(GKBulletin *)[GKChallengeCompletedBulletin alloc] initWithPushNotification:*(a1 + 32)];
          v13 = [v11 challengeID];

          if (!v13)
          {
            if (!os_log_GKGeneral)
            {
              v14 = GKOSLoggers();
            }

            v15 = os_log_GKError;
            if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v11;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "We received a challenge with a nil ID back from getChallengeDetailsForChallengeIDs, and we're going to crash because of it. %@", buf, 0xCu);
            }
          }

          [(GKChallengeBulletin *)v12 setChallenge:v11];
          if ([(GKGameplayBulletin *)v12 isPushFromLocalPlayers])
          {
            v16 = *(a1 + 40);
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100198EA0;
            v18[3] = &unk_100360FF0;
            v19 = v12;
            v20 = *(a1 + 48);
            [v16 perform:v18];
          }

          else if ([(GKGameplayBulletin *)v12 isPushForLocalPlayers])
          {
            [(GKChallengeBulletin *)v12 notifyApp];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }

  [*(a1 + 56) getChallengesForGameDescriptor:0 handler:0];
  (*(*(a1 + 64) + 16))();
}

void sub_100198EA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100198F68;
  v6[3] = &unk_1003613E8;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 determineGameLocationOnDeviceOrInStoreWithCompletionHandler:v6];
}

void sub_100198F68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295F2C();
    }
  }

  else
  {
    [*(a1 + 32) refreshData];
    if ([*(a1 + 32) gameLocation])
    {
      v5 = [*(a1 + 32) isAppRunning];
      v6 = *(a1 + 32);
      if (v5)
      {
        [v6 notifyApp];
      }

      else
      {
        [v6 assembleBulletin];
        [*(a1 + 40) addObject:*(a1 + 32)];
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100199898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) allObjects];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100199988;
  v7[3] = &unk_100362A88;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = v3;
  v6 = v3;
  [v4 getChallengeDetailsForChallengeIDs:v5 handler:v7];
}

void sub_100199988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = a3;
  if (v21)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295F94();
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      v22 = v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v27 + 1) + 8 * v10);
          v12 = [(GKBulletin *)[GKChallengeReceivedBulletin alloc] initWithPushNotification:*(a1 + 32)];
          v13 = [v11 challengeID];

          if (!v13)
          {
            if (!os_log_GKGeneral)
            {
              v14 = GKOSLoggers();
            }

            v15 = os_log_GKError;
            if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v11;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "We received a challenge with a nil ID back from getChallengeDetailsForChallengeIDs, and we're going to crash because of it. %@", buf, 0xCu);
            }
          }

          v16 = [v11 game];
          v17 = [v16 supportsChallenges];

          if (v17)
          {
            [(GKChallengeBulletin *)v12 setChallenge:v11];
            if ([(GKGameplayBulletin *)v12 isPushForLocalPlayers])
            {
              v18 = *(a1 + 40);
              v23[0] = _NSConcreteStackBlock;
              v23[1] = 3221225472;
              v24[0] = sub_100199CD4;
              v24[1] = &unk_100360FF0;
              v25 = v12;
              v26 = *(a1 + 48);
              [v18 perform:v23];
            }
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v19 = GKOSLoggers();
            }

            v20 = os_log_GKTrace;
            if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v32 = v11;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "We received a challenge from a game that developers did not opt in. So we are going to ignore it. Challenge: %@", buf, 0xCu);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100199CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100199D9C;
  v6[3] = &unk_1003613E8;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 determineGameLocationOnDeviceOrInStoreWithCompletionHandler:v6];
}

void sub_100199D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100295FFC();
    }
  }

  else if ([*(a1 + 32) gameLocation])
  {
    [*(a1 + 32) refreshData];
    v5 = [*(a1 + 32) isAppRunning];
    v6 = *(a1 + 32);
    if (v5)
    {
      [v6 notifyApp];
    }

    else
    {
      [v6 assembleBulletin];
      [*(a1 + 40) addObject:*(a1 + 32)];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10019AA50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100296064(v6, v8);
    }

    v9 = objc_alloc_init(GKFriendSuggesterSettings);
  }

  else
  {
    v9 = [[GKFriendSuggesterSettings alloc] initWithBagValues:v5];
  }

  v10 = v9;
  (*(*(a1 + 32) + 16))();
}

void sub_10019B398(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019B480;
  v6[3] = &unk_10036A328;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v3;
  v9 = *(a1 + 56);
  v5 = v3;
  [_TtC14GameDaemonCore21BulletinHelpersBridge formatBulletinStringsForPushNotification:v4 completionHandler:v6];
}

void sub_10019B480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setTitleFromPush:v5];
  }

  if (v6)
  {
    [*(a1 + 32) setBodyFromPush:v6];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10019B730;
  v23[3] = &unk_10036A2D8;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 56);
  v7 = objc_retainBlock(v23);
  v8 = [*(a1 + 32) getRelationshipGameImage];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByReplacingOccurrencesOfString:@"{w}" withString:@"128"];

    v11 = [v10 stringByReplacingOccurrencesOfString:@"{h}" withString:@"128"];

    v12 = [[NSURL alloc] initWithString:v11];
    v13 = [*(a1 + 32) getRelationshipGameAdamId];
    v14 = [v11 _gkSHA256Hash];
    v15 = [NSString stringWithFormat:@"%@_%@", v13, v14];
    v16 = [(GKService *)GKUtilityService serviceWithTransport:0 forClient:*(a1 + 48) credential:0];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019B858;
    v19[3] = &unk_10036A300;
    v20 = v12;
    v21 = v15;
    v22 = v7;
    v17 = v15;
    v18 = v12;
    [v16 requestImageDataForURL:v18 subdirectory:@"GKBulletins" fileName:v17 handler:v19];
  }

  else
  {
    (v7[2])(v7, 0);
  }
}

void sub_10019B730(id *a1, uint64_t a2)
{
  [a1[4] setGameIcon:a2];
  [a1[4] assembleBulletin];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019B808;
  v4[3] = &unk_100360FC8;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v3 = objc_retainBlock(v4);
  (v3[2])();
}

uint64_t sub_10019B808(uint64_t a1)
{
  if (([*(a1 + 32) isMalformed] & 1) == 0)
  {
    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10019B858(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3 && [GKImageRestrictions isAuthorizedForGamesWithImageData:v3])
  {
    v4 = [NSURL alloc];
    v5 = [NSData _gkImageCachePathForURL:a1[4] subdirectory:@"GKBulletins" filename:a1[5]];
    v6 = [v4 initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(a1[6] + 16))();
}

id sub_10019C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    [*(a1 + 32) setObject:a4 forKeyedSubscript:@"targetId"];
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v5 reportMetricsForActionID:v6 withAdditionalFields:v7];
}

void sub_10019C7AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count] == 1)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    if ([v7 isArcadeGame])
    {
      v8 = @"arcade";
    }

    else
    {
      v8 = 0;
    }

    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"targetType"];
    goto LABEL_11;
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v10;
    v11 = [v5 count];
    v12 = [v6 localizedDescription];
    *buf = 134218242;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin getGameMetadataForBundleIDs returned %lu games and error: %@", buf, 0x16u);

LABEL_11:
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15.receiver = *(a1 + 48);
  v15.super_class = GKActivityFeedBulletin;
  objc_msgSendSuper2(&v15, "reportMetricsForActionID:withAdditionalFields:", v13, v14);
}

void sub_10019D0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019D0E8(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [v7 count];
  if (v8 || !v10)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [v7 objectForKey:@"contact-association-ids"];
    v12 = [NSDate dateWithTimeIntervalSinceNow:a4];
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100296154(a1, v14);
    }

    v15 = [WeakRetained transactionGroupProvider];
    v16 = v15[2]();

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10019D2C8;
    v20[3] = &unk_10036A3C8;
    v21 = v11;
    v22 = v12;
    v17 = *(a1 + 40);
    v23 = 0;
    v24 = v17;
    v18 = v12;
    v19 = v11;
    [v16 performOnManagedObjectContext:v20];
  }
}

void sub_10019D2C8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 _gkClearAllEntriesOfEntity:@"SuggestedFriends"];
  v7 = [[GKCDSuggestedFriends alloc] initWithContext:v6];

  [(GKCDSuggestedFriends *)v7 setContactAssociationIDs:a1[4]];
  [(GKCDSuggestedFriends *)v7 setExpirationDate:a1[5]];
  (*(a1[7] + 16))();
  v5[2](v5);
}

void sub_10019D99C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) networkRequester];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019DA68;
  v7[3] = &unk_1003632A8;
  v9 = v3;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = v3;
  [v4 requestSortedContactAssociationIDs:v5 handler:v7];
}

void sub_10019DA68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 count];
  if (a3 || !v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100296278(v8);
    }
  }

  else
  {
    [*(a1 + 32) setResult:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10019E600(id a1)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v4 count:21];
  v2 = [NSSet setWithArray:v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23];
  v3 = qword_1003B9448;
  qword_1003B9448 = v2;
}

void sub_10019E82C(id a1)
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:10];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1003B9458;
  qword_1003B9458 = v2;
}
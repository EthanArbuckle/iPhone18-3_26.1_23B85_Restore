uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v5.__sigaction_u.__sa_handler = sub_100001C88;
  *&v5.sa_mask = 0;
  sigaction(15, &v5, 0);
  v1 = +[MAServer server];
  v2 = qword_100129360;
  qword_100129360 = v1;

  if (qword_100129360)
  {
    [qword_100129360 start];
  }

  objc_autoreleasePoolPop(v0);
  if (qword_100129360)
  {
    v3 = +[NSRunLoop mainRunLoop];
    [v3 run];
  }

  return 1;
}

uint64_t sub_100001DF8(uint64_t a1)
{
  v1 = kManagedAssetLogSubsystem;
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = os_log_create(v1, [v4 UTF8String]);
  v6 = off_100127B70;
  off_100127B70 = v5;

  qword_100129370 = objc_alloc_init(MANotificationEngine);

  return _objc_release_x1();
}

void sub_1000020D0(void *a1)
{
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_DEBUG))
  {
    sub_1000041CC(a1);
  }

  v2 = [NSKeyedArchiver archivedDataWithRootObject:a1[4] requiringSecureCoding:1 error:0];
  v3 = a1[6];
  v4 = *(a1[5] + 8);
  v5 = kMASDNotificationTypeAssetChangeEvent;
  v7[0] = kMASDNotificationTypeAssetChangeEventState;
  v6 = [NSNumber numberWithUnsignedInteger:v3];
  v7[1] = kMASDNotificationTypeAssetChangeEventHandles;
  v8[0] = v6;
  v8[1] = v2;
  CFNotificationCenterPostNotification(v4, v5, 0, [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2], 1u);
}

void sub_1000022A4(void *a1)
{
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_DEBUG))
  {
    sub_100004254(a1);
  }

  v2 = *(a1[4] + 8);
  v3 = kMASDNotificationTypeProfileChangeEvent;
  v7[0] = kMASDNotificationTypeProfileChangeEventState;
  v4 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v5 = a1[5];
  v8[0] = v4;
  v8[1] = v5;
  v7[1] = kMASDNotificationTypeProfileChangeEventID;
  v7[2] = kMASDNotificationTypeProfileChangeEventType;
  v6 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v8[2] = v6;
  CFNotificationCenterPostNotification(v2, v3, 0, [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3], 1u);
}

void sub_1000024D8(void *a1)
{
  v2 = off_100127B70;
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[8];
    *buf = 138413058;
    v39 = v3;
    v40 = 2112;
    v41 = v4;
    v42 = 2112;
    v43 = v5;
    v44 = 2048;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "start to notify FileEvent files=%@ group=%@ profile=%@ event=%lu", buf, 0x2Au);
  }

  v7 = [MANotificationObserverConfiguration genPrefix:a1[5] profile:a1[6]];
  v8 = +[NSMutableSet set];
  v9 = a1[4];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100002830;
  v33[3] = &unk_100115D80;
  v28 = v7;
  v34 = v28;
  v10 = v8;
  v11 = a1[7];
  v35 = v10;
  v36 = v11;
  [v9 enumerateObjectsUsingBlock:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    *&v13 = 138412290;
    v25 = v13;
    do
    {
      v16 = 0;
      v26 = v14;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = [*(a1[7] + 48) objectForKey:{v17, v25}];
        v19 = [v18 requireNotification:a1[8] observerType:0 resourceNames:a1[4] groupPrefix:v28];
        if ([v19 count])
        {
          v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MASDNotificationObserver];
          [v17 setRemoteObjectInterface:v20];

          v21 = [v17 remoteObjectProxy];
          v22 = off_100127B70;
          if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v39 = v21;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Notify observer (remoteProxy): %@", buf, 0xCu);
          }

          if ([v21 conformsToProtocol:&OBJC_PROTOCOL___MASDNotificationObserver])
          {
            v23 = a1[8];
            v24 = [v19 allObjects];
            [v21 didReceiveFileEventWith:v23 filenames:v24 profile:a1[6] group:a1[5]];

            v14 = v26;
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }
}

void sub_100002830(void *a1, void *a2)
{
  v8[0] = a1[4];
  v8[1] = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v8 count:2];
  v5 = [NSString pathWithComponents:v4];

  v6 = a1[5];
  v7 = [*(a1[6] + 64) objectForKey:v5];
  [v6 unionSet:v7];
}

void sub_100002A04(void *a1)
{
  v2 = off_100127B70;
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[8];
    *buf = 138413058;
    v39 = v3;
    v40 = 2112;
    v41 = v4;
    v42 = 2112;
    v43 = v5;
    v44 = 2048;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "start to notify KVStoreEvent stores=%@ group=%@ profile=%@ event=%lu", buf, 0x2Au);
  }

  v7 = [MANotificationObserverConfiguration genPrefix:a1[5] profile:a1[6]];
  v8 = +[NSMutableSet set];
  v9 = a1[4];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100002D5C;
  v33[3] = &unk_100115D80;
  v28 = v7;
  v34 = v28;
  v10 = v8;
  v11 = a1[7];
  v35 = v10;
  v36 = v11;
  [v9 enumerateObjectsUsingBlock:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    *&v13 = 138412290;
    v25 = v13;
    do
    {
      v16 = 0;
      v26 = v14;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = [*(a1[7] + 56) objectForKey:{v17, v25}];
        v19 = [v18 requireNotification:a1[8] observerType:1 resourceNames:a1[4] groupPrefix:v28];
        if ([v19 count])
        {
          v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MASDNotificationObserver];
          [v17 setRemoteObjectInterface:v20];

          v21 = [v17 remoteObjectProxy];
          v22 = off_100127B70;
          if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v39 = v21;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Notify observer (remoteProxy) for kvStore event: %@", buf, 0xCu);
          }

          if ([v21 conformsToProtocol:&OBJC_PROTOCOL___MASDNotificationObserver])
          {
            v23 = a1[8];
            v24 = [v19 allObjects];
            [v21 didReceiveKVStoreEventWith:v23 KVStores:v24 profile:a1[6] group:a1[5]];

            v14 = v26;
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }
}

void sub_100002D5C(void *a1, void *a2)
{
  v8[0] = a1[4];
  v8[1] = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v8 count:2];
  v5 = [NSString pathWithComponents:v4];

  v6 = a1[5];
  v7 = [*(a1[6] + 72) objectForKey:v5];
  [v6 unionSet:v7];
}

void sub_100002F7C(uint64_t a1)
{
  v2 = [MANotificationObserverConfiguration genPrefix:*(a1 + 32) profile:*(a1 + 40)];
  v3 = *(a1 + 72);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_8;
    }

    v4 = 72;
    v5 = 56;
  }

  else
  {
    v4 = 64;
    v5 = 48;
  }

  v6 = *(*(a1 + 48) + v5);
  v7 = *(*(a1 + 48) + v4);
  v8 = [v6 objectForKey:*(a1 + 56)];
  if (!v8)
  {
    v8 = objc_alloc_init(MANotificationObserverConfiguration);
  }

  [(MANotificationObserverConfiguration *)v8 configNotificationFilter:*(a1 + 80) observerType:*(a1 + 72) resourceNames:*(a1 + 64) groupPrefix:v2];
  [v6 setObject:v8 forKey:*(a1 + 56)];
  v9 = *(a1 + 64);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000030F0;
  v11[3] = &unk_100115DD0;
  v12 = v2;
  v13 = v7;
  v14 = *(a1 + 56);
  v10 = v7;
  [v9 enumerateObjectsUsingBlock:v11];

LABEL_8:
}

void sub_1000030F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = *(a1 + 32);
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSString pathWithComponents:v4];

  v6 = [*(a1 + 40) objectForKey:v5];
  if (!v6)
  {
    v6 = +[NSMutableSet set];
  }

  [v6 addObject:*(a1 + 48)];
  [*(a1 + 40) setObject:v6 forKey:v5];
}

void sub_100003284(uint64_t a1)
{
  if (([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 80) addObject:*(a1 + 40)];
    v2 = off_100127B70;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 80);
      if (v3)
      {
        [v3 auditToken];
      }

      else
      {
        memset(v6, 0, sizeof(v6));
      }

      v5 = [MAUtilityHelper getClientBundleIdentifier:v6];
      LODWORD(v6[0]) = 138412546;
      *(v6 + 4) = v4;
      WORD6(v6[0]) = 2112;
      *(v6 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "registered remote observers: %@ for process bundle: %@", v6, 0x16u);
    }
  }
}

void sub_100003570(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 getAllFilePaths];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100003644;
    v9 = &unk_100115E48;
    v5 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v5;
    [v4 enumerateObjectsUsingBlock:&v6];
    [*(*(a1 + 32) + 48) removeObjectForKey:{*(a1 + 40), v6, v7, v8, v9, v10}];
  }
}

void sub_100003644(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 64) objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 removeObject:*(a1 + 40)];
    if (![v4 count])
    {
      [*(*(a1 + 32) + 64) removeObjectForKey:v5];
    }
  }
}

void sub_1000036D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 getAllKVStoreNames];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000037A4;
    v9 = &unk_100115E48;
    v5 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v5;
    [v4 enumerateObjectsUsingBlock:&v6];
    [*(*(a1 + 32) + 56) removeObjectForKey:{*(a1 + 40), v6, v7, v8, v9, v10}];
  }
}

void sub_1000037A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 removeObject:*(a1 + 40)];
    if (![v4 count])
    {
      [*(*(a1 + 32) + 72) removeObjectForKey:v5];
    }
  }
}

void sub_1000039B8(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v16 = a1;
  v3 = [*(*(a1 + 32) + 64) dictionaryRepresentation];
  v4 = [v3 allValues];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v18 + 1) + 8 * v14) processIdentifier]);
              [v2 addObject:v15];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [*(v16 + 40) setObject:v2 forKeyedSubscript:&off_10011DA60];
}

void sub_100003BC4(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v16 = a1;
  v3 = [*(*(a1 + 32) + 72) dictionaryRepresentation];
  v4 = [v3 allValues];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v18 + 1) + 8 * v14) processIdentifier]);
              [v2 addObject:v15];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [*(v16 + 40) setObject:v2 forKeyedSubscript:&off_10011DA78];
}

void sub_100003DD0(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 80);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v9 + 1) + 8 * v7) processIdentifier]);
        [v2 addObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) setObject:v2 forKeyedSubscript:&off_10011DA90];
}

void sub_100003FA0(uint64_t a1)
{
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_DEBUG))
  {
    sub_100004340();
  }

  CFNotificationCenterPostNotification(*(*(a1 + 32) + 8), kMASDNotificationTypeDaemonLaunchedEvent, 0, 0, 1u);
}

void sub_100004018(id a1)
{
  v1 = off_100127B70;
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "postNotificationWheniCloudSyncedDown", v3, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.vpg.managedassets.notify.iCloudSyncDown", 0, 0, 1u);
}

void sub_1000040A8(id a1)
{
  v1 = off_100127B70;
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "postNotificationWheniCloudSyncedUp", v3, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.vpg.managedassets.notify.iCloudSyncUp", 0, 0, 1u);
}

void sub_1000041CC(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_1000041C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100004254(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_1000041C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100004550(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = *(a1 + 32);
  v10[1] = v3;
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [NSString pathWithComponents:v4];

  v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v9 = *(a1 + 56) & [v8 unsignedIntegerValue];

    if (v9)
    {
      [*(a1 + 48) addObject:v3];
    }
  }
}

void sub_100004760(uint64_t a1, void *a2)
{
  v7[0] = *(a1 + 32);
  v7[1] = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSString pathWithComponents:v4];

  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
}

void sub_1000049C8(uint64_t a1)
{
  v2 = objc_alloc_init(MAPolicyEngine);
  v3 = qword_100129380;
  qword_100129380 = v2;

  v4 = kManagedAssetLogSubsystem;
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v10 = NSStringFromClass(v6);
  v7 = v10;
  v8 = os_log_create(v4, [v10 UTF8String]);
  v9 = off_100127BD8;
  off_100127BD8 = v8;
}

void sub_100005D18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100005ED8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process does not carry suitable API entitlment %@", &v2, 0xCu);
}

void sub_100005F50(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "InPath=%@ numParts=%lu", &v3, 0x16u);
}

uint64_t MACryptoHelperInit(const char *a1)
{
  off_100127BE0 = os_log_create(a1, "MACryptoHelper");

  return _objc_release_x1();
}

id MAUtilBytesToHex(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  for (i = [NSMutableString stringWithCapacity:2 * a2];
  {
    v5 = *a1++;
    [i appendFormat:@"%02x", v5];
  }

  return i;
}

id MAUtilDataToHex(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  return MAUtilBytesToHex(v2, v3);
}

uint64_t MAValidHexString(void *a1, char *a2, void *a3)
{
  v5 = a1;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 length] == a2 && (v6 = objc_msgSend(v5, "fileSystemRepresentation"), strlen(v6) == a2))
      {
        if (!a2)
        {
          v7 = 1;
          goto LABEL_12;
        }

        v7 = 1;
        while (1)
        {
          v9 = *v6++;
          v8 = v9;
          if (v9 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x10000) == 0)
          {
            break;
          }

          if (!--a2)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        [v5 length];
      }
    }
  }

  createManagedAssetError();
  *a3 = v7 = 0;
LABEL_12:

  return v7;
}

void *MAEraseData(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 bytes];
    v3 = [v1 length];

    return memset_s(v2, v3, 0, v3);
  }

  return result;
}

BOOL MADataEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v5 = [v3 length], v5 == objc_msgSend(v4, "length")) && objc_msgSend(v3, "length"))
  {
    [v3 length];
    [v3 bytes];
    [v4 bytes];
    v6 = cc_cmp_safe() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MAExpandKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [[NSMutableData alloc] initWithLength:a3];
  if (!v5)
  {
    *a4 = createManagedAssetError();
    if (os_log_type_enabled(off_100127BE0, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_100006BF8(a4);
    }

LABEL_7:
    v6 = 0;
    goto LABEL_9;
  }

  ccsha512_di();
  [v5 mutableBytes];
  if (ccansikdf_x963())
  {
    *a4 = createManagedAssetError();
    if (os_log_type_enabled(off_100127BE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v6 = v5;
LABEL_9:

  return v6;
}

id MACalculateAssetIdAuthToken(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v5 = a3;
  if (v5)
  {
    v6 = [[NSMutableData alloc] initWithLength:32];
    if (v6)
    {
      v7 = ccsha256_di();
      v8 = (((*(v7 + 8) + ((*(v7 + 8) + *(v7 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v7);
      cchmac_init();
      [v5 length];
      [v5 bytes];
      cchmac_update();
      [v6 mutableBytes];
      cchmac_final();
      v9 = (*(v7 + 8) + *(v7 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
      cc_clear();
      v10 = v6;
    }

    else
    {
      *a4 = createManagedAssetError();
      if (os_log_type_enabled(off_100127BE0, OS_LOG_TYPE_ERROR))
      {
        sub_100006C68(a4);
      }
    }
  }

  else
  {
    *a4 = createManagedAssetError();
    v6 = 0;
    if (os_log_type_enabled(off_100127BE0, OS_LOG_TYPE_ERROR))
    {
      sub_100006CD8();
      v6 = 0;
    }
  }

  return v6;
}

id MACalculateSHA256Hash(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = [NSMutableData dataWithLength:32];
    if (v4)
    {
      CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
      v5 = v4;
    }

    else
    {
      *a2 = createManagedAssetError();
      if (os_log_type_enabled(off_100127BE0, OS_LOG_TYPE_ERROR))
      {
        sub_100006D18(a2);
      }
    }
  }

  else
  {
    *a2 = createManagedAssetError();
    v4 = 0;
    if (os_log_type_enabled(off_100127BE0, OS_LOG_TYPE_ERROR))
    {
      sub_100006D88();
      v4 = 0;
    }
  }

  return v4;
}

id MACalculateSHA256HashForFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 contentsAtPath:v3];

  if ([v6 length])
  {
    v11 = 0;
    v7 = MACalculateSHA256Hash(v6, &v11);
    v8 = v11;
  }

  else
  {
    v8 = createManagedAssetError();
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (v8)
  {
    v9 = v8;
    *a2 = v8;
  }

  return v7;
}

uint64_t *sub_100006BE0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100006BF8(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100006C68(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100006D18(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100006BD4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

id sub_100009414(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v5 = 0;
  v6 = HIBYTE(a2);
  v7 = BYTE6(a2);
  v8 = BYTE5(a2);
  v9 = BYTE4(a2);
  v10 = BYTE3(a2);
  v11 = BYTE2(a2);
  v12 = BYTE1(a2);
  v13 = a2;
  v3 = [[NSUUID alloc] initWithUUIDBytes:&v5];

  return v3;
}

unint64_t sub_1000094D0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v4 = 0;
  v5 = 0;
  [v2 getUUIDBytes:&v4];

  return bswap64(v5);
}

void sub_1000099BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = *(a1 + 32);
  v11[1] = v3;
  v4 = [NSArray arrayWithObjects:v11 count:2];
  v5 = [NSString pathWithComponents:v4];

  v10 = 0;
  if ([*(a1 + 40) fileExistsAtPath:v5 isDirectory:&v10] && v10 == 1)
  {
    v6 = off_100127CA8[0]();
    v7 = [NSURL fileURLWithPath:v5];
    v8 = [(objc_class *)v6 pathInfoWithURL:v7];

    if (v8)
    {
      [*(a1 + 48) addObject:v8];
      v9 = *(a1 + 56);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A3D4(v9, v8);
      }
    }
  }
}

void sub_100009B10(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (v3)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10000A478();
    }
  }

  else
  {
    [MAUtilityHelper writeTrueValueToUserDefaultsWithKey:@"RegisterAssetsWithSpaceAttributes"];
  }
}

Class sub_10000A080()
{
  if (qword_1001293A8 != -1)
  {
    sub_10000A618();
  }

  result = objc_getClass("SAPathInfo");
  qword_1001293A0 = result;
  off_100127CA8[0] = sub_10000A0D4;
  return result;
}

Class sub_10000A10C()
{
  if (qword_1001293A8 != -1)
  {
    sub_10000A618();
  }

  result = objc_getClass("SAPathManager");
  qword_1001293B8 = result;
  off_100127CB0 = sub_10000A160;
  return result;
}

void sub_10000A178(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000A358(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "User Default for RegisterAssetsWithSpaceAttributes: %u", v2, 8u);
}

void sub_10000A3D4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 url];
  sub_10000A16C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "saInfo's URL: %@", v5, 0xCu);
}

id getClientBundleString(_OWORD *a1)
{
  *&v9.val[4] = a1[1];
  *atoken.val = *a1;
  *v9.val = *atoken.val;
  *&atoken.val[4] = *&v9.val[4];
  v2 = audit_token_to_pid(&atoken);
  atoken = v9;
  v3 = [NSNumber numberWithUnsignedLongLong:v2 | (audit_token_to_pidversion(&atoken) << 32)];
  v4 = [qword_1001293C0 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v5;
    v4 = [MAUtilityHelper getClientBundleIdentifier:&atoken];
    [qword_1001293C0 setObject:v4 forKeyedSubscript:v3];
    v6 = off_100127CB8;
    if (os_log_type_enabled(off_100127CB8, OS_LOG_TYPE_INFO))
    {
      atoken.val[0] = 138412546;
      *&atoken.val[1] = v3;
      LOWORD(atoken.val[3]) = 2112;
      *(&atoken.val[3] + 2) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Add pair (%@ -> %@) to cacheClientBundles", &atoken, 0x16u);
    }
  }

  v7 = off_100127CB8;
  if (os_log_type_enabled(off_100127CB8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B248(v4, v3, v7);
  }

  return v4;
}

double sub_10000A868(uint64_t a1)
{
  v2 = kManagedAssetLogSubsystem;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = os_log_create(v2, [v5 UTF8String]);
  v7 = off_100127CB8;
  off_100127CB8 = v6;

  v8 = +[NSMutableDictionary dictionary];
  v9 = qword_1001293C0;
  qword_1001293C0 = v8;

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.managedassetsd.calogger.clientbundleaccess", v10);
  v12 = qword_1001293D0;
  qword_1001293D0 = v11;

  info = 0;
  mach_timebase_info(&info);
  LODWORD(v13) = info.numer;
  result = v13 / (1000 * info.denom);
  qword_100127CC0 = *&result;
  byte_100127CC8 = *(a1 + 40);
  return result;
}

uint64_t sub_10000AA68(uint64_t a1)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

id sub_10000AAF4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v9[0] = *(a1 + 56);
  v9[1] = v2;
  v3 = getClientBundleString(v9);
  v11[0] = v3;
  v10[0] = @"bundleID";
  v10[1] = @"function";
  v4 = [NSString stringWithUTF8String:*(a1 + 32)];
  v11[1] = v4;
  v10[2] = @"errorcode";
  v5 = [NSNumber numberWithInteger:*(a1 + 40)];
  v11[2] = v5;
  v10[3] = @"elapsed";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v11[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v7;
}

id sub_10000AD3C(void *a1)
{
  v2 = a1[5];
  v9[0] = a1[4];
  v8[0] = @"bundleID";
  v8[1] = @"function";
  v3 = [NSString stringWithUTF8String:v2];
  v9[1] = v3;
  v8[2] = @"errorcode";
  v4 = [NSNumber numberWithInteger:a1[6]];
  v9[2] = v4;
  v8[3] = @"elapsed";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

void sub_10000AE58(uint64_t a1, __int128 *a2)
{
  objc_opt_self();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000AEE0;
  v4[3] = &unk_100116060;
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  dispatch_async(qword_1001293D0, v4);
}

void sub_10000AEE0(uint64_t a1)
{
  *&v5.val[4] = *(a1 + 48);
  *atoken.val = *(a1 + 32);
  *v5.val = *atoken.val;
  *&atoken.val[4] = *&v5.val[4];
  v1 = audit_token_to_pid(&atoken);
  atoken = v5;
  v2 = [NSNumber numberWithUnsignedLongLong:v1 | (audit_token_to_pidversion(&atoken) << 32)];
  v3 = [qword_1001293C0 objectForKeyedSubscript:v2];
  if (v3)
  {
    [qword_1001293C0 removeObjectForKey:v2];
    v4 = off_100127CB8;
    if (os_log_type_enabled(off_100127CB8, OS_LOG_TYPE_INFO))
    {
      atoken.val[0] = 138412546;
      *&atoken.val[1] = v3;
      LOWORD(atoken.val[3]) = 2112;
      *(&atoken.val[3] + 2) = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "remove client bundle %@ for pidIdx: %@", &atoken, 0x16u);
    }
  }
}

id sub_10000B0FC(uint64_t a1)
{
  v8[0] = @"assetsize";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v9[0] = v2;
  v8[1] = @"assetstate";
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v9[1] = v3;
  v8[2] = @"elapsed";
  v4 = [NSNumber numberWithUnsignedLongLong:(*(a1 + 48) * 1000.0)];
  v9[2] = v4;
  v8[3] = @"errorcode";
  v5 = [NSNumber numberWithInteger:*(a1 + 56)];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

void sub_10000B248(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Client bundle %@ for pidIdx %@", &v3, 0x16u);
}

uint64_t MAAssetKeyStateIMStoreInit()
{
  off_100127CD0 = os_log_create(kManagedAssetLogSubsystem, "MAAssetKeyStateIMStore");

  return _objc_release_x1();
}

uint64_t sub_10000DEE4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 24);
  v5 = *a2;
  return result;
}

void sub_10000DF5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_10000DED0();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to createStore for %@ error: %@");
}

void sub_10000DFCC(uint64_t a1, uint64_t *a2)
{
  sub_10000DEE4(a1, a2, __stack_chk_guard);
  sub_10000DEB8();
  sub_100005D18(&_mh_execute_header, v2, v3, "%@ doesn't exist and failed to create, error: %@");
}

void sub_10000E034(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_100005D18(&_mh_execute_header, v3, v4, "failed to update record for cloud upload assetId: %@, error: %@");
}

void sub_10000E194(uint64_t a1, uint64_t *a2)
{
  sub_10000DEE4(a1, a2, __stack_chk_guard);
  sub_10000DEB8();
  sub_100005D18(&_mh_execute_header, v2, v3, "error query data in %@ error=%@");
}

void sub_10000E1FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_10000DED0();
  sub_100005D18(&_mh_execute_header, v2, v3, "%@ doesn't exist and failed to create, error: %@");
}

uint64_t sub_10000E690(uint64_t a1)
{
  v1 = kManagedAssetLogSubsystem;
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = os_log_create(v1, [v4 UTF8String]);
  v6 = off_100127CD8;
  off_100127CD8 = v5;

  qword_1001293E0 = objc_alloc_init(MAStorage);

  return _objc_release_x1();
}

void sub_10000EF04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_100127CD8;
  if (v3)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018284(a1);
    }
  }

  else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Register space attribution using MA root folder: %@", &v6, 0xCu);
  }
}

void sub_100018110(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

const char *sub_10001815C()
{
  v2 = *v0;

  return sqlite3_errmsg(v2);
}

id sub_100018174(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_1000181A4()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100018214()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100018284(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v2, v3, "Fail to register space attribute framework with root path: %@", v4, v5, v6, v7, v8);
}

void sub_1000182F0(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_1000180DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10001836C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_1000180DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100018428(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_100018110(&_mh_execute_header, v1, v2, "Create/load local database from %@.", v3, v4, v5, v6, v7);
}

void sub_1000184F8(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Failed to drop mProfiles, create mProfileInfo, alter columns for mAssets, enable WAL journal mode: '%s'", v3, v4, v5, v6, v7);
}

void sub_100018560(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  sub_10000A16C();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "execute SQL syntax: '%s'", v6, 0xCu);
}

void sub_100018600(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Failed to create sqlite database: '%s'", v3, v4, v5, v6, v7);
}

void sub_100018668(uint64_t *a1, void *a2)
{
  sub_100018174(a1, a2);
  v3 = sub_100018104();
  sqlite3_errmsg(v3);
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000186EC()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018728(uint64_t *a1, void *a2)
{
  sub_100018174(a1, a2);
  v3 = sub_100018104();
  sqlite3_errmsg(v3);
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000187AC(uint64_t *a1, void *a2)
{
  sub_100018174(a1, a2);
  v3 = sub_100018104();
  sqlite3_errmsg(v3);
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100018898(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a3;
  v7 = sub_100018104();
  sqlite3_errmsg(v7);
  sub_10001818C();
  sub_1000180CC();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100018930()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000189A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_1000180DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100018A88()
{
  sub_1000180F8();
  v3 = v2;
  v4 = sub_1000180EC();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  sub_10001815C();
  sub_1000180A4();
  sub_1000180BC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100018B28(uint64_t *a1, void *a2)
{
  sub_100018174(a1, a2);
  v3 = sub_100018104();
  sqlite3_errmsg(v3);
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100018C14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = *__error();
  sub_100018138();
  sub_1000180BC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_100018CB0()
{
  sub_10000A16C();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100018D2C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [sub_100018104() assetHandle];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "cached asset (handle: %@)= %@", &v6, 0x16u);
}

void sub_100018DE4()
{
  sub_1000180F8();
  v3 = v2;
  v4 = sub_1000180EC();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  sub_10001815C();
  sub_1000180A4();
  sub_1000180BC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100018F54()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000190C8(uint64_t *a1, void *a2)
{
  sub_100018174(a1, a2);
  v3 = sub_100018104();
  sqlite3_errmsg(v3);
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001914C()
{
  sub_10000A16C();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000191C8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_1000180DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000192B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = *__error();
  sub_100018138();
  sub_1000180BC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_10001934C()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000193BC()
{
  sub_1000180F8();
  v3 = v2;
  v4 = sub_1000180EC();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  sub_10001815C();
  sub_1000180A4();
  sub_1000180BC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000194C4(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Fail to execute delete all asstes sql statement: '%s'", v3, v4, v5, v6, v7);
}

void sub_10001952C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Failed to retrieve all assets file store at: %@", v3, v4, v5, v6, v7);
}

void sub_100019594(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Failed to remove local asset directory %@", v3, v4, v5, v6, v7);
}

void sub_1000195FC(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Failed to recreate local asset directory %@", v3, v4, v5, v6, v7);
}

void sub_100019664(void *a1)
{
  v2 = a1;
  v3 = [sub_100018104() UUIDString];
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000196FC()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019738(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Fail to delete asset file, error: %@", v3, v4, v5, v6, v7);
}

void sub_1000197A0()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000197DC()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000198B4()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019924()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019994()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019A6C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "Failed to get lastSwitchOutTime for most recent persisted guest, error = %@", v3, v4, v5, v6, v7);
}

void sub_100019AD4()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019B10()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019BB4(uint64_t *a1, void *a2)
{
  sub_100018174(a1, a2);
  v3 = sub_100018104();
  sqlite3_errmsg(v3);
  sub_10000A16C();
  sub_1000180CC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100019D08()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019D44()
{
  sub_100005D00();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_100019E54(uint64_t a1)
{
  v1 = kManagedAssetLogSubsystem;
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = os_log_create(v1, [v4 UTF8String]);
  v6 = off_100127CE0;
  off_100127CE0 = v5;

  v7 = [[NSSet alloc] initWithArray:&off_10011E488];
  v8 = qword_1001293F8;
  qword_1001293F8 = v7;

  qword_1001293F0 = objc_alloc_init(MAFileStoreManager);

  return _objc_release_x1();
}

uint64_t sub_10001A260(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 fileExistsAtPath:v5])
  {
    v10 = 0;
    v7 = [v6 removeItemAtPath:v5 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0 && !*a3)
    {
      v8 = v8;
      *a3 = v8;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t sub_10001B298(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a2)
    {
      createManagedAssetError();
      *a2 = v4 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [v3 unsignedIntValue];
LABEL_7:

  return v4;
}

id sub_10001B34C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:8];
  }

  v5 = [v3 objectForKeyedSubscript:NSFileCreationDate];
  [v4 setObject:v5 forKeyedSubscript:NSFileCreationDate];

  v6 = [v3 objectForKeyedSubscript:NSFileModificationDate];
  [v4 setObject:v6 forKeyedSubscript:NSFileModificationDate];

  v7 = [v3 objectForKeyedSubscript:NSFileProtectionKey];
  [v4 setObject:v7 forKeyedSubscript:NSFileProtectionKey];

  v8 = [v3 objectForKeyedSubscript:NSFileSize];
  [v4 setObject:v8 forKeyedSubscript:NSFileSize];

  v9 = [v3 objectForKeyedSubscript:NSFileType];
  [v4 setObject:v9 forKeyedSubscript:NSFileType];

  return v4;
}

void sub_10001C85C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10001C87C(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to list directory %@ for file asset, error:%@");
}

void sub_10001C8E4(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to read FileOptionsKey in attributes for %@, error:%@");
}

void sub_10001C94C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "prepare atomic update for %@", &v2, 0xCu);
}

void sub_10001CA2C(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "invalid session.id specified to commit update to %@, error:%@");
}

void sub_10001CA94(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to unlink: %@, error:%@");
}

void sub_10001CB64(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to commit: %@, error:%@");
}

void sub_10001CC34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "committed update for %@", &v2, 0xCu);
}

void sub_10001CCAC(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "listing: %@ error:%@");
}

void sub_10001CD7C(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to create directory %@ for fetched asset, error: %@");
}

void sub_10001CDE4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 136315394;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  HIWORD(v3) = a2;
  sub_100005D18(&_mh_execute_header, a2, a3, "failed to clonefile from %s to %s", v3, *(&v3 + 1));
}

void MAKVStoreInit()
{
  v0 = [NSString stringWithUTF8String:"MAKVStore.m"];
  v1 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v2 = os_log_create(kManagedAssetLogSubsystem, [v1 UTF8String]);
  v3 = off_100127CE8;
  off_100127CE8 = v2;

  v4 = [MAKVStoreConfig alloc];
  v5 = kMACoreRXUserGroup;
  LOWORD(v20) = 0;
  v6 = [(MAKVStoreConfig *)v4 initWithName:kMAUserCalibrationDataStore group:kMACoreRXUserGroup assetType:0 syncToCloud:0 hasStaging:0 hasAutoUpdateTime:1 autoInsertUpdatedDate:v20 isCoreRXDataSharingStore:kMAKVCol_uuid recordHandleField:?];
  *&buf = v6;
  v7 = [MAKVStoreConfig alloc];
  LOWORD(v21) = 257;
  v8 = [(MAKVStoreConfig *)v7 initWithName:kMARXDataSharingStore group:v5 assetType:121 syncToCloud:1 hasStaging:1 hasAutoUpdateTime:0 autoInsertUpdatedDate:v21 isCoreRXDataSharingStore:kMAKVCol_RXUUID recordHandleField:?];
  *(&buf + 1) = v8;
  v9 = [NSArray arrayWithObjects:&buf count:2];

  v10 = qword_100129408;
  qword_100129408 = v9;

  v11 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = qword_100129408;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "KVStore configs: %@", &buf, 0xCu);
  }

  v12 = [NSSet alloc];
  v23[0] = kMAKVCol_recordName;
  v23[1] = kMAKVCol_recordAccount;
  v23[2] = kMAKVCol_ckSyncState;
  v23[3] = kMAKVCol_stagingFrom;
  v13 = [NSArray arrayWithObjects:v23 count:4];
  v14 = [v12 initWithArray:v13];
  v15 = qword_100129410;
  qword_100129410 = v14;

  v16 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = qword_100129410;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "KVStore unexportableColumns: %@", &buf, 0xCu);
  }

  v22 = 0;
  v17 = [NSRegularExpression regularExpressionWithPattern:@"[^_a-zA-Z0-9]" options:0 error:&v22];
  v18 = v22;
  v19 = qword_100129400;
  qword_100129400 = v17;

  if (v18 && os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
  {
    sub_10002588C();
  }
}

void sub_10001E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_10001E2EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001E304(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 1);
  if (v3)
  {
    v4 = [NSString stringWithUTF8String:v3];
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [v4 lowercaseString];
    [v5 addObject:v6];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  return 1;
}

void sub_10001E62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E64C(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [NSString stringWithUTF8String:v3];
    v6 = [v5 lowercaseString];
    [v4 addObject:v6];
  }

  return 1;
}

uint64_t sub_1000205FC(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = v7;
    v10 = [v9 UTF8String];
    v11 = [v9 lengthOfBytesUsingEncoding:4];

    v12 = sqlite3_bind_text(a1, a2, v10, v11, 0);
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    v15 = [v14 objCType];
    if (v15 && (*v15 | 2) == 0x66)
    {
      [v14 doubleValue];
      v17 = sqlite3_bind_double(a1, a2, v16);
    }

    else
    {
      v17 = sqlite3_bind_int64(a1, a2, [v14 longLongValue]);
    }

    v13 = v17;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
      goto LABEL_17;
    }

    v14 = [v7 description];
    v13 = sqlite3_bind_text(a1, a2, [v14 UTF8String], objc_msgSend(v14, "lengthOfBytesUsingEncoding:", 4), 0);
    v26 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v30 = v7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "sqlite3_bind Unknown type to string value=%@", buf, 0xCu);
    }

LABEL_13:

    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v18 = v7;
  v19 = v7;
  v20 = [v19 bytes];
  v21 = [v19 length];

  v12 = sqlite3_bind_blob(a1, a2, v20, v21, 0);
LABEL_3:
  v13 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_14:
  v22 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    *v30 = v13;
    *&v30[4] = 1024;
    *&v30[6] = a2;
    v31 = 2112;
    v32 = v7;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "sqlite3_bind failed errcode=%d index=%d value=%@", buf, 0x18u);
  }

  v27 = ManagedAssetsSqliteErrorKey;
  v23 = [NSNumber numberWithInt:v13];
  v28 = v23;
  v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  *a4 = createManagedAssetError();

LABEL_17:
  return v13;
}

id sub_1000214A4(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = [NSNumber numberWithDouble:sqlite3_column_double(a1, a2)];
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = [NSNumber numberWithLongLong:sqlite3_column_int64(a1, a2)];
  }

  else
  {
    if (v4 == 3)
    {
LABEL_9:
      v5 = [NSString stringWithUTF8String:sqlite3_column_text(a1, a2)];
      goto LABEL_12;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        v5 = +[NSNull null];
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v6 = sqlite3_column_blob(a1, a2);
    v5 = [NSData dataWithBytes:v6 length:sqlite3_column_bytes(a1, a2)];
  }

LABEL_12:

  return v5;
}

void sub_100022C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100022C68(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 80);
  if (v3)
  {
    if ([v3 count])
    {
      goto LABEL_16;
    }

    v2 = a1[4];
  }

  WeakRetained = objc_loadWeakRetained((v2 + 72));
  v5 = *(a1[4] + 8);
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v27 = 0;
  v7 = [WeakRetained queryColumnNames:v5 orignalColumnsOut:&v27 error:&obj];
  v8 = v27;
  v9 = v27;
  objc_storeStrong((v6 + 40), obj);
  v10 = a1[4];
  v11 = *(v10 + 80);
  *(v10 + 80) = v7;

  v12 = a1[4];
  if (*(v12 + 80))
  {
    objc_storeStrong((v12 + 88), v8);
    v13 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          if (([qword_100129410 containsObject:{v19, v22}] & 1) == 0)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v16);
    }

    v20 = a1[4];
    v21 = *(v20 + 96);
    *(v20 + 96) = v13;
  }

LABEL_16:
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 80));
}

BOOL sub_100023CF4(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = kMAKVStoreOptionsKey;
  v6 = [v3 objectForKeyedSubscript:kMAKVStoreOptionsKey];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
      v8 = ([v6 unsignedIntValue] & 4) == 0;
      goto LABEL_9;
    }

    v7 = createManagedAssetError();
    v9 = v7;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
LABEL_9:

  v10 = v7;
  if (v10)
  {
    v11 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = [v4 objectForKeyedSubscript:v5];
      *buf = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "invalid kvstore options in attributes: %@ error: %@", buf, 0x16u);
    }
  }

LABEL_13:
  return v8;
}

uint64_t sub_100025860@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 16);
  return result;
}

void sub_10002586C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_1000258F4(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "sqliteDb:%@ doesn't exist", v3, v4, v5, v6, v7);
}

void sub_10002595C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10002582C();
  sub_1000180DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000259D0(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10002582C();
  sub_1000180DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100025A44()
{
  sub_10000A16C();
  sub_10002582C();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100025AB8()
{
  sub_10000A16C();
  sub_10002582C();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100025B2C(uint64_t a1)
{
  sub_100025860(a1, __stack_chk_guard);
  sub_10000DED0();
  sub_10002581C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100025BA0(uint64_t a1)
{
  sub_100025860(a1, __stack_chk_guard);
  v2 = *(*v1 + 40);
  sub_10000DED0();
  sub_10002581C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100025C1C()
{
  sub_10000A16C();
  sub_1000180DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100025D68(uint64_t a1)
{
  sub_100025860(a1, __stack_chk_guard);
  sub_10000DED0();
  sub_10002581C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100025DE8(uint64_t a1)
{
  sub_100025860(a1, __stack_chk_guard);
  sub_100006BEC();
  v3 = 1024;
  v4 = 0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "db: %@ added meta table rc=%d", v2, 0x12u);
}

void sub_100025E68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = a2;
  sqlite3_errmsg(v2);
  sub_10002583C();
  sub_10002586C(&_mh_execute_header, v5, v6, "db: %@ failed to sqlite3_finalize stmt, errorCode:%d error:%s", v7, v8, v9, v10, v11);
}

void sub_100025EFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = a2;
  sqlite3_errmsg(v2);
  sub_10002583C();
  sub_10002586C(&_mh_execute_header, v5, v6, "db: %@ failed to sqlite3_finalize errorCode:%d error:%s", v7, v8, v9, v10, v11);
}

void sub_100026020(uint64_t a1)
{
  sub_100025860(a1, __stack_chk_guard);
  sub_10000DED0();
  sub_10002581C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100026094(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "failed to query cache store entry size, error: %@", v3, v4, v5, v6, v7);
}

void sub_1000260FC(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "invalid DB query result : %@", v3, v4, v5, v6, v7);
}

void MAKVStoreCoreRxInit()
{
  v0 = [NSString stringWithUTF8String:"MAKVStoreManager+CoreRx.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_100127CF0;
  off_100127CF0 = v3;
}

id MAGenCoreRxUserFields()
{
  v51[0] = kMAKVCol_uuid;
  v51[1] = &off_10011DBC8;
  v51[2] = &off_10011DBE0;
  v26 = [NSArray arrayWithObjects:v51 count:3];
  v52[0] = v26;
  v50[0] = kMARxUserCol_name;
  v50[1] = &off_10011DBC8;
  v50[2] = &off_10011DBF8;
  v25 = [NSArray arrayWithObjects:v50 count:3];
  v52[1] = v25;
  v49[0] = kMARxUserCol_owner;
  v49[1] = &off_10011DBC8;
  v49[2] = &off_10011DBF8;
  v24 = [NSArray arrayWithObjects:v49 count:3];
  v52[2] = v24;
  v48[0] = kMARxUserCol_sn;
  v48[1] = &off_10011DBC8;
  v48[2] = &off_10011DBF8;
  v23 = [NSArray arrayWithObjects:v48 count:3];
  v52[3] = v23;
  v47[0] = kMARxUserCol_colorCode;
  v47[1] = &off_10011DBE0;
  v47[2] = &off_10011DBF8;
  v22 = [NSArray arrayWithObjects:v47 count:3];
  v52[4] = v22;
  v46[0] = kMARxUserCol_desc;
  v46[1] = &off_10011DBC8;
  v46[2] = &off_10011DBF8;
  v21 = [NSArray arrayWithObjects:v46 count:3];
  v52[5] = v21;
  v45[0] = kMARxUserCol_version;
  v45[1] = &off_10011DBE0;
  v45[2] = &off_10011DBF8;
  v20 = [NSArray arrayWithObjects:v45 count:3];
  v52[6] = v20;
  v44[0] = kMAKVCol_createdDate;
  v44[1] = &off_10011DC10;
  v44[2] = &off_10011DBF8;
  v19 = [NSArray arrayWithObjects:v44 count:3];
  v52[7] = v19;
  v43[0] = kMAKVCol_updatedDate;
  v43[1] = &off_10011DC10;
  v43[2] = &off_10011DBF8;
  v18 = [NSArray arrayWithObjects:v43 count:3];
  v52[8] = v18;
  v42[0] = kMARxUserCol_issueDate;
  v42[1] = &off_10011DC10;
  v42[2] = &off_10011DBF8;
  v17 = [NSArray arrayWithObjects:v42 count:3];
  v52[9] = v17;
  v41[0] = kMARxUserCol_idRXL;
  v41[1] = &off_10011DBE0;
  v41[2] = &off_10011DBF8;
  v16 = [NSArray arrayWithObjects:v41 count:3];
  v52[10] = v16;
  v40[0] = kMARxUserCol_idRXR;
  v40[1] = &off_10011DBE0;
  v40[2] = &off_10011DBF8;
  v15 = [NSArray arrayWithObjects:v40 count:3];
  v52[11] = v15;
  v39[0] = kMARxUserCol_axisL;
  v39[1] = &off_10011DBE0;
  v39[2] = &off_10011DBF8;
  v14 = [NSArray arrayWithObjects:v39 count:3];
  v52[12] = v14;
  v38[0] = kMARxUserCol_axisR;
  v38[1] = &off_10011DBE0;
  v38[2] = &off_10011DBF8;
  v13 = [NSArray arrayWithObjects:v38 count:3];
  v52[13] = v13;
  v37[0] = kMARxUserCol_airgapLeft;
  v37[1] = &off_10011DC10;
  v37[2] = &off_10011DBF8;
  v12 = [NSArray arrayWithObjects:v37 count:3];
  v52[14] = v12;
  v36[0] = kMARxUserCol_facCalRequiredLeft;
  v36[1] = &off_10011DBE0;
  v36[2] = &off_10011DBF8;
  v11 = [NSArray arrayWithObjects:v36 count:3];
  v52[15] = v11;
  v35[0] = kMARxUserCol_lensDataTypeLeft;
  v35[1] = &off_10011DBC8;
  v35[2] = &off_10011DBF8;
  v10 = [NSArray arrayWithObjects:v35 count:3];
  v52[16] = v10;
  v34[0] = kMARxUserCol_lensDataLeft;
  v34[1] = &off_10011DBC8;
  v34[2] = &off_10011DBF8;
  v0 = [NSArray arrayWithObjects:v34 count:3];
  v52[17] = v0;
  v33[0] = kMARxUserCol_airgapRight;
  v33[1] = &off_10011DC10;
  v33[2] = &off_10011DBF8;
  v1 = [NSArray arrayWithObjects:v33 count:3];
  v52[18] = v1;
  v32[0] = kMARxUserCol_facCalRequiredRight;
  v32[1] = &off_10011DBE0;
  v32[2] = &off_10011DBF8;
  v2 = [NSArray arrayWithObjects:v32 count:3];
  v52[19] = v2;
  v31[0] = kMARxUserCol_lensDataTypeRight;
  v31[1] = &off_10011DBC8;
  v31[2] = &off_10011DBF8;
  v3 = [NSArray arrayWithObjects:v31 count:3];
  v52[20] = v3;
  v30[0] = kMARxUserCol_lensDataRight;
  v30[1] = &off_10011DBC8;
  v30[2] = &off_10011DBF8;
  v4 = [NSArray arrayWithObjects:v30 count:3];
  v52[21] = v4;
  v29[0] = kMARxUserCol_accPayload;
  v29[1] = &off_10011DC28;
  v29[2] = &off_10011DBF8;
  v5 = [NSArray arrayWithObjects:v29 count:3];
  v52[22] = v5;
  v28[0] = kMARxUserCol_accPayloadLeft;
  v28[1] = &off_10011DC28;
  v28[2] = &off_10011DBF8;
  v6 = [NSArray arrayWithObjects:v28 count:3];
  v52[23] = v6;
  v27[0] = kMARxUserCol_accPayloadRight;
  v27[1] = &off_10011DC28;
  v27[2] = &off_10011DBF8;
  v7 = [NSArray arrayWithObjects:v27 count:3];
  v52[24] = v7;
  v8 = [NSArray arrayWithObjects:v52 count:25];

  return v8;
}

id MAGenCoreRxDataSharingFields()
{
  v49[0] = kMAKVCol_RXUUID;
  v49[1] = &off_10011DBC8;
  v49[2] = &off_10011DC40;
  v25 = [NSArray arrayWithObjects:v49 count:3];
  v50[0] = v25;
  v48[0] = kMAKVCol_stagingFrom;
  v48[1] = &off_10011DBE0;
  v48[2] = &off_10011DC58;
  v24 = [NSArray arrayWithObjects:v48 count:3];
  v50[1] = v24;
  v47[0] = kMARxUserCol_sn;
  v47[1] = &off_10011DBC8;
  v47[2] = &off_10011DBF8;
  v23 = [NSArray arrayWithObjects:v47 count:3];
  v50[2] = v23;
  v46[0] = @"accPayload";
  v46[1] = &off_10011DBC8;
  v46[2] = &off_10011DC10;
  v22 = [NSArray arrayWithObjects:v46 count:3];
  v50[3] = v22;
  v45[0] = @"accPayloadLeft";
  v45[1] = &off_10011DBC8;
  v45[2] = &off_10011DC10;
  v21 = [NSArray arrayWithObjects:v45 count:3];
  v50[4] = v21;
  v44[0] = @"accPayloadRight";
  v44[1] = &off_10011DBC8;
  v44[2] = &off_10011DC10;
  v20 = [NSArray arrayWithObjects:v44 count:3];
  v50[5] = v20;
  v43[0] = @"enrollmentTime";
  v43[1] = &off_10011DBC8;
  v43[2] = &off_10011DBF8;
  v19 = [NSArray arrayWithObjects:v43 count:3];
  v50[6] = v19;
  v42[0] = @"currentCalibrationStatus";
  v42[1] = &off_10011DBE0;
  v42[2] = &off_10011DBF8;
  v18 = [NSArray arrayWithObjects:v42 count:3];
  v50[7] = v18;
  v41[0] = @"lensDataLeft";
  v41[1] = &off_10011DBC8;
  v41[2] = &off_10011DBF8;
  v17 = [NSArray arrayWithObjects:v41 count:3];
  v50[8] = v17;
  v40[0] = @"lensDataRight";
  v40[1] = &off_10011DBC8;
  v40[2] = &off_10011DBF8;
  v16 = [NSArray arrayWithObjects:v40 count:3];
  v50[9] = v16;
  v39[0] = @"enrollmentCreationSource";
  v39[1] = &off_10011DBE0;
  v39[2] = &off_10011DBF8;
  v15 = [NSArray arrayWithObjects:v39 count:3];
  v50[10] = v15;
  v38[0] = @"jsonData";
  v38[1] = &off_10011DBC8;
  v38[2] = &off_10011DBF8;
  v14 = [NSArray arrayWithObjects:v38 count:3];
  v50[11] = v14;
  v37[0] = @"seaUrchin";
  v37[1] = &off_10011DBC8;
  v37[2] = &off_10011DBF8;
  v13 = [NSArray arrayWithObjects:v37 count:3];
  v50[12] = v13;
  v36[0] = @"seaUrchinActivationLocation";
  v36[1] = &off_10011DBC8;
  v36[2] = &off_10011DBF8;
  v12 = [NSArray arrayWithObjects:v36 count:3];
  v50[13] = v12;
  v35[0] = @"seaTurtle";
  v35[1] = &off_10011DBC8;
  v35[2] = &off_10011DBF8;
  v11 = [NSArray arrayWithObjects:v35 count:3];
  v50[14] = v11;
  v34[0] = @"enrollmentPriority";
  v34[1] = &off_10011DBE0;
  v34[2] = &off_10011DBF8;
  v0 = [NSArray arrayWithObjects:v34 count:3];
  v50[15] = v0;
  v33[0] = kMAKVCol_createdDate;
  v33[1] = &off_10011DC10;
  v33[2] = &off_10011DBF8;
  v1 = [NSArray arrayWithObjects:v33 count:3];
  v50[16] = v1;
  v32[0] = kMAKVCol_updatedDate;
  v32[1] = &off_10011DC10;
  v32[2] = &off_10011DBF8;
  v2 = [NSArray arrayWithObjects:v32 count:3];
  v50[17] = v2;
  v31[0] = kMAKVCol_recordName;
  v31[1] = &off_10011DBC8;
  v31[2] = &off_10011DBF8;
  v3 = [NSArray arrayWithObjects:v31 count:3];
  v50[18] = v3;
  v30[0] = kMAKVCol_recordAccount;
  v30[1] = &off_10011DBC8;
  v30[2] = &off_10011DBF8;
  v4 = [NSArray arrayWithObjects:v30 count:3];
  v50[19] = v4;
  v29[0] = kMAKVCol_ckCreatedDate;
  v29[1] = &off_10011DC10;
  v29[2] = &off_10011DBF8;
  v5 = [NSArray arrayWithObjects:v29 count:3];
  v50[20] = v5;
  v28[0] = kMAKVCol_ckModifiedDate;
  v28[1] = &off_10011DC10;
  v28[2] = &off_10011DBF8;
  v6 = [NSArray arrayWithObjects:v28 count:3];
  v50[21] = v6;
  v27[0] = kMAKVCol_ckSyncTime;
  v27[1] = &off_10011DC10;
  v27[2] = &off_10011DBF8;
  v7 = [NSArray arrayWithObjects:v27 count:3];
  v50[22] = v7;
  v26[0] = kMAKVCol_ckSyncState;
  v26[1] = &off_10011DBE0;
  v26[2] = &off_10011DBF8;
  v8 = [NSArray arrayWithObjects:v26 count:3];
  v50[23] = v8;
  v9 = [NSArray arrayWithObjects:v50 count:24];

  return v9;
}

__CFString *MACoreRxDataSharingRecordDescription(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSMutableString string];
    [(__CFString *)v2 appendString:@" [\n"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = v4;
    v6 = *v18;
    v16 = kMAKVCol_ckSyncTime;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        [(__CFString *)v2 appendFormat:@"\t%@ = ", v8];
        if (([v8 isEqualToString:@"accPayload"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"accPayloadLeft") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"accPayloadRight"))
        {
          v9 = [v3 objectForKeyedSubscript:v8];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length] >= 9)
          {
            v10 = [v9 substringFromIndex:{objc_msgSend(v9, "length") - 8}];
            [(__CFString *)v2 appendFormat:@"%@, \n", v10, v14];
LABEL_13:

            goto LABEL_24;
          }
        }

        else if (([v8 isEqualToString:@"lensDataLeft"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"lensDataRight"))
        {
          v9 = [v3 objectForKeyedSubscript:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[__CFString appendFormat:](v2, "appendFormat:", @"[%lu bytes],\n", [v9 length]);
            goto LABEL_24;
          }
        }

        else
        {
          if (([v8 isEqualToString:v16] & 1) == 0 && !objc_msgSend(v8, "hasSuffix:", @"Date"))
          {
            v9 = [v3 objectForKeyedSubscript:v8];
            v13 = v9;
            goto LABEL_23;
          }

          v9 = [v3 objectForKeyedSubscript:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 doubleValue];
            v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
            [(__CFString *)v2 appendFormat:@"%@ (%@)\n", v9, v10];
            goto LABEL_13;
          }
        }

        v13 = v9;
LABEL_23:
        [(__CFString *)v2 appendFormat:@"%@, \n", v13];
LABEL_24:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v11;
      if (!v11)
      {
LABEL_28:

        [(__CFString *)v2 appendString:@"]\n"];
        v1 = v15;
        goto LABEL_30;
      }
    }
  }

  v2 = @"nil";
LABEL_30:

  return v2;
}

__CFString *MACoreRxDataSharingRecordsDescription(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSMutableString string];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          v8 = MACoreRxDataSharingRecordDescription(*(*(&v10 + 1) + 8 * i));
          [(__CFString *)v2 appendString:v8, v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = @"nil";
  }

  return v2;
}

__CFString *MACoreRxDataSharingRecordsInputDescription(uint64_t a1)
{
  if (a1)
  {
    v15 = 0;
    v1 = [MAKVStore queryOutputToArrayOfDictionaries:a1 error:&v15];
    v2 = v15;
    if (v2)
    {
      v3 = [NSString stringWithFormat:@"error: %@", v2];
    }

    else if (v1)
    {
      v3 = +[NSMutableString string];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = v1;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = MACoreRxDataSharingRecordDescription(*(*(&v11 + 1) + 8 * i));
            [(__CFString *)v3 appendString:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v3 = @"nil";
    }
  }

  else
  {
    v3 = @"nil";
  }

  return v3;
}

__CFString *MACoreRxDataSharingQueryOutputDescription(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = +[NSMutableString string];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          v8 = MACoreRxDataSharingRecordsInputDescription(*(*(&v10 + 1) + 8 * i));
          [(__CFString *)v2 appendString:v8, v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = @"nil";
  }

  return v2;
}

id MASDGetCoreRxDispatchQueue()
{
  if (qword_100129420 != -1)
  {
    sub_100028CA8();
  }

  v1 = qword_100129418;

  return v1;
}

void sub_100027684(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.managedassetsd.corerx.serial", v3);
  v2 = qword_100129418;
  qword_100129418 = v1;
}

uint64_t sub_100027B7C(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = a1;
  v18 = @"id";
  v8 = [NSNumber numberWithInteger:a2];
  v19 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v17 = 0;
  v10 = [v7 queryFor:v9 attributes:0 records:&v17 error:a4];
  v11 = v17;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    v15 = off_100127CF0;
    if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
    {
      sub_100028D34(v15, v7, a4);
    }

    goto LABEL_7;
  }

  if (!v11 || ([MAKVStore rowToDictionary:v11 error:a4], v13 = objc_claimAutoreleasedReturnValue(), (*a3 = v13) == 0))
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

void sub_100028AA8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_100028CBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_100005D18(&_mh_execute_header, v3, v4, "Failed to init/load the store: %@, error: %@");
}

void sub_100028D34(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [a2 name];
  v12 = [a2 group];
  v13 = *a3;
  sub_1000180BC();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_100028EDC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  sub_100028C90();
  sub_1000180BC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

uint64_t sub_1000293C4(uint64_t a1)
{
  MAKVStoreInit();
  MAKVStoreCoreRxInit();
  v2 = kManagedAssetLogSubsystem;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = os_log_create(v2, [v5 UTF8String]);
  v7 = off_100127CF8;
  off_100127CF8 = v6;

  qword_100129430 = objc_alloc_init(MAKVStoreManager);

  return _objc_release_x1();
}

void sub_100029768(uint64_t a1)
{
  v2 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MAKVStoreManager is closing", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        v8 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v7), v10}];
        [v8 close];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MAKVStoreManager is closed", buf, 2u);
  }
}

void sub_100029AA4(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v7 hasPrefix:*(a1 + 40)])
        {
          [*(*(a1 + 32) + 48) removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(*(a1 + 32) + 40) allKeys];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * j);
        if ([v13 hasPrefix:*(a1 + 40)])
        {
          v14 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v13];
          [*(*(a1 + 32) + 40) removeObjectForKey:v13];
          [v14 close];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }
}

id sub_100029D08(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 40) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v7];
        [*(*(a1 + 32) + 40) removeObjectForKey:v7];
        [v8 close];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 48) removeAllObjects];
  [MAUtilityHelper recreatePath:*(*(a1 + 32) + 24) logger:off_100127CF8];
  return [MAUtilityHelper wipeEachKVStoreSubFodlerUnder:*(*(a1 + 32) + 32) logger:off_100127CF8];
}

id MAKVStoreRemoveColumnInPutRecords(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 count];
  if (v7 <= 1)
  {
    goto LABEL_3;
  }

  v8 = v7;
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v9 count];

  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v11 indexOfObject:v6];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_3:
    v13 = v5;
  }

  else
  {
    v24 = a3;
    v14 = [NSMutableArray arrayWithCapacity:v8];
    v15 = [v5 objectAtIndexedSubscript:0];
    v16 = [v15 mutableCopy];

    [v16 removeObjectAtIndex:v12];
    [v14 addObject:v16];
    v17 = 1;
    while (1)
    {
      v18 = [v5 objectAtIndexedSubscript:v17];
      v19 = [v18 count];

      if (v19 != v10)
      {
        break;
      }

      v20 = [v5 objectAtIndexedSubscript:v17];
      v21 = [v20 mutableCopy];

      [v21 removeObjectAtIndex:v12];
      [v14 addObject:v21];

      if (v8 == ++v17)
      {
        v13 = v14;
        goto LABEL_9;
      }
    }

    v22 = [v5 objectAtIndexedSubscript:v17];
    [v22 count];
    *v24 = createManagedAssetError();

    v13 = 0;
LABEL_9:
  }

  return v13;
}

void sub_10002A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Block_object_dispose((v49 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002A81C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 88) + 8) + 40))
  {
LABEL_4:
    v18 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 64)];
    v6 = a1 + 112;
    v19 = *(*(a1 + 112) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (!*(*(*(a1 + 112) + 8) + 40))
    {
      if (*(a1 + 131) == 1)
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 72);
        v23 = *(a1 + 80);
        v24 = *(*(*(a1 + 88) + 8) + 40);
        v25 = *(a1 + 56);
        v26 = *(a1 + 64);
        v27 = *(*(a1 + 96) + 8);
        v54 = *(v27 + 40);
        v28 = [v21 openCoreRXUserStoreAndCheckUpgrade:v22 profile:v23 attributes:v25 groupDB:v24 storeIdentifier:v26 error:&v54];
        objc_storeStrong((v27 + 40), v54);
        v29 = *(*(a1 + 112) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;

        v31 = *(*(*(a1 + 112) + 8) + 40);
        if (v31)
        {
          [*(*(a1 + 32) + 48) setObject:v31 forKeyedSubscript:*(a1 + 64)];
        }
      }

      if (*(a1 + 132) == 1)
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 72);
        v34 = *(a1 + 80);
        v35 = *(*(*(a1 + 88) + 8) + 40);
        v36 = *(a1 + 56);
        v37 = *(a1 + 64);
        v38 = *(*(a1 + 96) + 8);
        v53 = *(v38 + 40);
        v39 = [v32 openCoreRXDataSharingStoreAndCheckUpgrade:v33 profile:v34 attributes:v36 groupDB:v35 storeIdentifier:v37 error:&v53];
        objc_storeStrong((v38 + 40), v53);
        v40 = *(*(a1 + 112) + 8);
        v41 = *(v40 + 40);
        *(v40 + 40) = v39;

        v42 = *(*(*(a1 + 112) + 8) + 40);
        if (v42)
        {
          [*(*(a1 + 32) + 48) setObject:v42 forKeyedSubscript:*(a1 + 64)];
        }
      }
    }

    v43 = *(*(*v6 + 8) + 40);
    if (v43)
    {
      if (*(a1 + 133) != 1)
      {
        goto LABEL_14;
      }

      v44 = *(*(a1 + 96) + 8);
      v52 = *(v44 + 40);
      v45 = sub_10002AB24(v43, &v52);
      objc_storeStrong((v44 + 40), v52);
      v46 = *(*(a1 + 120) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = v45;

      v43 = *(*(*(a1 + 112) + 8) + 40);
      if (v43)
      {
LABEL_14:
        if (*(a1 + 134) == 1)
        {
          v48 = [v43 copy];
LABEL_16:
          v49 = *(*v6 + 8);
          v50 = *(v49 + 40);
          *(v49 + 40) = v48;

          return;
        }
      }
    }

    return;
  }

  v5 = [MAKVGroupDB alloc];
  v6 = a1 + 96;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 128);
  v11 = *(a1 + 129);
  v12 = *(a1 + 130);
  v13 = *(*(a1 + 96) + 8);
  obj = *(v13 + 40);
  v14 = [(MAKVGroupDB *)v5 initWithFile:v7 identifier:v8 attributes:v9 dbShouldExist:v10 readOnly:v11 isBase:v12 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  v15 = *(*(a1 + 88) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *(*(*(a1 + 88) + 8) + 40);
  if (v17)
  {
    [*(*(a1 + 32) + 40) setObject:v17 forKeyedSubscript:*(a1 + 40)];
    *(*(*(a1 + 104) + 8) + 24) = 1;
    goto LABEL_4;
  }

  if (!*(*(*v6 + 8) + 40))
  {
    v51 = *(a1 + 48);
    v48 = createManagedAssetError();
    goto LABEL_16;
  }
}

id sub_10002AB24(void *a1, void *a2)
{
  v2 = a1;
  v3 = +[NSMutableArray array];
  [v3 addObject:v2];
  v4 = [v2 baseStore];
  if (v4)
  {
    v5 = v4;
    v6 = 0uLL;
    do
    {
      v22 = v6;
      v23 = v6;
      v20 = v6;
      v21 = v6;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v20 + 1) + 8 * i) identifier];
            v13 = [v5 identifier];
            v14 = [v12 isEqualToString:v13];

            if (v14)
            {
              v18 = [v5 identifier];
              *a2 = createManagedAssetError();

              v16 = 0;
              goto LABEL_14;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      [v7 addObject:v5];
      v15 = [v5 baseStore];

      v5 = v15;
      v6 = 0uLL;
    }

    while (v15);
  }

  v16 = v3;
LABEL_14:

  return v16;
}

void sub_10002AF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10002AFBC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 72) + 8);
  obj = *(v6 + 40);
  v7 = sub_10002AB24(v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (v10)
    {
      if (*(a1 + 80) != 1 || v10 == *(a1 + 48))
      {
        return;
      }

      v11 = [v10 baseStore];
      [v11 removeOverlayStore:*(*(*(a1 + 56) + 8) + 40)];

      v12 = [*(a1 + 48) baseStore];
      [v12 addOverlayStore:*(a1 + 48)];

      [*(*(a1 + 32) + 48) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
      v13 = *(a1 + 48);
      v14 = *(*(a1 + 56) + 8);
      v15 = v13;
      v16 = *(v14 + 40);
      *(v14 + 40) = v15;
    }

    else
    {
      [*(*(a1 + 32) + 48) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
      [*(a1 + 48) baseStore];
      [objc_claimAutoreleasedReturnValue() addOverlayStore:*(a1 + 48)];
    }

    _objc_release_x1();
  }
}

void sub_10002B2C4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = sub_10002AB24(v2, &obj);
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10002B460(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) identifier];
  [v2 removeObjectForKey:v3];

  v4 = [*(a1 + 40) baseStore];
  [v4 removeOverlayStore:*(a1 + 40)];

  v5 = [*(a1 + 40) db];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 hasTableWithError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40) && (v7 & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 40);
    v9 = [v5 identifier];
    [v8 removeObjectForKey:v9];

    [v5 close];
    v10 = +[NSFileManager defaultManager];
    v11 = [v5 dbPath];
    v12 = *(*(a1 + 48) + 8);
    v14 = *(v12 + 40);
    [v10 removeItemAtPath:v11 error:&v14];
    objc_storeStrong((v12 + 40), v14);

    v13 = [v5 dbPath];
    [MAUtilityHelper deleteSqliteTempFiles:v13 logger:off_100127CF8];
  }
}

uint64_t sub_10002BBF0(uint64_t a1, void *a2, void *a3)
{
  if (a1 == 3)
  {
    *a2 = 0;
    return 1;
  }

  if (a1 == -1)
  {
    *a2 = kMASDDefaultLocalUser;
    return 1;
  }

  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002E878();
  }

  v5 = createManagedAssetError();
  v6 = v5;
  result = 0;
  *a3 = v5;
  return result;
}

void sub_10002D248(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002ED34(a1);
  }
}

void sub_10002DE1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_100127CF8;
  if (v3)
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002EF1C(a1, v4, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 name];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "scheduled record (storename: %@) upload to cloud", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x400000uLL;
    v8 = *(*(a1 + 40) + 8);
    v9 = *(*(*(a1 + 48) + 8) + 24);
    v10 = [*(a1 + 32) name];
    v14 = v10;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [*(a1 + 32) profile];
    v13 = [*(a1 + 32) group];
    [v8 notifyKVStoreEventWith:v9 kvStores:v11 profile:v12 sharingGroup:v13];
  }
}

void sub_10002E678(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = off_100127CF8;
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002F0C8(a1, v4, v3);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10002E784(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_10002E878()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002EAF0()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002EB60(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_100005D18(&_mh_execute_header, v3, v4, "Error while trying to fetch store %@, error:=%@");
}

void sub_10002EBD8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000A16C();
  sub_100005D18(&_mh_execute_header, v3, v4, "Error while trying to query data in store %@, error:=%@");
}

void sub_10002ECC4()
{
  sub_10000A16C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002ED34(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_10002E778();
  *v4 = v1;
  sub_100005D18(&_mh_execute_header, v1, v2, "fail to cleanup local kv store for record: %@, error: %@", v3, DWORD2(v3), *&v4[2]);
}

void sub_10002EDAC(uint64_t *a1)
{
  v1 = *a1;
  v5 = 138412546;
  v6 = kMARXDataSharingStore;
  sub_10002E778();
  v7 = v2;
  sub_10002E784(&_mh_execute_header, v3, v4, "Error while trying to query data in store %@, error:=%@", &v5);
}

void sub_10002EE34(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  sub_10002E784(&_mh_execute_header, a4, a3, "Cloud Sync for store: %@, failed to put new data %@", a3);
}

void sub_10002EE94(uint64_t *a1)
{
  v1 = *a1;
  v5 = 138412546;
  v6 = kMARXDataSharingStore;
  sub_10002E778();
  v7 = v2;
  sub_10002E784(&_mh_execute_header, v3, v4, "New record does not have rxuuid for store %@ error:=%@", &v5);
}

void sub_10002EF1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = [*(a1 + 32) group];
  v11 = 138412802;
  v12 = v7;
  sub_10002E778();
  v13 = v9;
  v14 = v10;
  v15 = a3;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "error save the record to cloud, store name=%@ group=%@, error=%@", &v11, 0x20u);
}

void sub_10002F0C8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = kMAKVCol_RXUUID;
  v6 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  sub_10000A16C();
  sub_10002E778();
  v10 = a3;
  sub_10002E784(&_mh_execute_header, v6, v8, "Error while saving CoreRX data to the cloud for record name %@, error:=%@", v9);
}

uint64_t MACPRemoteAssetCacheInit()
{
  off_100127D60 = os_log_create(kManagedAssetLogSubsystem, "MACPRemoteAssetCache");

  return _objc_release_x1();
}

void sub_100030114(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  v2 = [v1 checkupWithCacheSizeLimit:objc_msgSend(v1 error:{"cacheSizeLimit"), &v4}];
  v3 = v4;
  if ((v2 & 1) == 0 && os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_1000328F8();
  }
}

int64_t sub_100030FA4(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 longLongValue];
  v6 = [v4 longLongValue];

  return v5 - v6;
}

void sub_100032760(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000327B4()
{
  sub_10000A16C();
  sub_100032750();
  sub_100005D18(&_mh_execute_header, v0, v1, "failed to delete cache entry during checkup, assetId=%@ error: %@");
}

void sub_100032820()
{
  sub_10000A16C();
  sub_100032750();
  sub_100005D18(&_mh_execute_header, v0, v1, "failed to delete cached encrypted asset file %@ error: %@");
}

void sub_10003288C()
{
  sub_10000A16C();
  sub_100032750();
  sub_100005D18(&_mh_execute_header, v0, v1, "error deleting to-be-reclaim cache entry: %@, error: %@");
}

void sub_100032B0C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "the cache store doesn't exist and failed to create, error: %@", v3, v4, v5, v6, v7);
}

void sub_100032B74(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100006BEC();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "cacheSizeLimitCheck, size: %lu", v3, 0xCu);
}

void sub_100032C5C(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to add record to cache store, assetId=%@, error: %@");
}

void sub_100032CC4(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to update record size in cache store, assetId=%@, error: %@");
}

void sub_100032D2C(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to query cache store, assetId=%@, error: %@");
}

void sub_100032D94(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to query valid record in cache store, assetId=%@, error: %@");
}

void sub_100032E64(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to update cache store, assetId=%@, error: %@");
}

void sub_100032ECC(uint64_t a1, uint64_t *a2)
{
  sub_10001C850(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "failed to query record in cache store, assetId=%@, error: %@");
}

void sub_100032F9C(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "error query data in assetCache error=%@", v3, v4, v5, v6, v7);
}

void sub_100033004(uint64_t *a1)
{
  sub_100006BE0(a1, __stack_chk_guard);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v1, v2, "error delete all data in assetCache error=%@", v3, v4, v5, v6, v7);
}

id MASDConvertAssetTypeToString(uint64_t a1)
{
  if (qword_100129440 != -1)
  {
    sub_100033594();
  }

  v2 = qword_100129448;
  v3 = [NSNumber numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 UTF8String];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100033108(id a1)
{
  v3[0] = &off_10011DD18;
  v3[1] = &off_10011DD30;
  v4[0] = @"kGazeEnrollmentData";
  v4[1] = @"kGazeCoordinateData";
  v3[2] = &off_10011DD48;
  v3[3] = &off_10011DD60;
  v4[2] = @"kHandEnrollmentData";
  v4[3] = @"kHandTrackingData";
  v3[4] = &off_10011DD78;
  v3[5] = &off_10011DD90;
  v4[4] = @"kFaceEnrollmentData";
  v4[5] = @"kFaceTrackingData";
  v3[6] = &off_10011DDA8;
  v3[7] = &off_10011DDC0;
  v4[6] = @"kAvatarEnrollmentData";
  v4[7] = @"kHairEnrollmentData";
  v3[8] = &off_10011DDD8;
  v3[9] = &off_10011DDF0;
  v4[8] = @"kEarEnrollmentData";
  v4[9] = @"kAvatarLatents";
  v3[10] = &off_10011DE08;
  v3[11] = &off_10011DE20;
  v4[10] = @"kFaceLatents";
  v4[11] = @"kHairLatents";
  v3[12] = &off_10011DE38;
  v3[13] = &off_10011DE50;
  v4[12] = @"kEyesLatents";
  v4[13] = @"kBodyTrackingData";
  v3[14] = &off_10011DE68;
  v3[15] = &off_10011DE80;
  v4[14] = @"kClothesData";
  v4[15] = @"kHRTFData";
  v3[16] = &off_10011DE98;
  v3[17] = &off_10011DEB0;
  v4[16] = @"kSpatialAudioData";
  v4[17] = @"kRoomReconstructedData";
  v3[18] = &off_10011DEC8;
  v3[19] = &off_10011DEE0;
  v4[18] = @"kRoomCreatedData";
  v4[19] = @"kGuardianData";
  v3[20] = &off_10011DEF8;
  v3[21] = &off_10011DF10;
  v4[20] = @"kBodyEnrollmentData";
  v4[21] = @"kCorePrescriptionData";
  v3[22] = &off_10011DF28;
  v3[23] = &off_10011DF40;
  v4[22] = @"kFineGrainedHandEnrollmentData";
  v4[23] = @"kTestIOSOnlyData";
  v3[24] = &off_10011DF58;
  v3[25] = &off_10011DF70;
  v4[24] = @"kTestUnrestrictedData";
  v4[25] = @"kSyntheticGazeEnrollmentData";
  v3[26] = &off_10011DF88;
  v3[27] = &off_10011DFA0;
  v4[26] = @"kDisplayAdjustmentData";
  v4[27] = @"kTestServerAttestation";
  v3[28] = &off_10011DFB8;
  v3[29] = &off_10011DFD0;
  v4[28] = @"kTestDeviceAttestationOnly";
  v4[29] = @"kTestCloudSyncAsset";
  v3[30] = &off_10011DFE8;
  v4[30] = @"kMAAnyAssets";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:31];
  v2 = qword_100129448;
  qword_100129448 = v1;
}

id MASDConvertAssetStringToType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_100129450 != -1)
    {
      sub_1000335A8();
    }

    v2 = [qword_100129458 objectForKey:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 unsignedIntegerValue];
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

void sub_100033480(id a1)
{
  v1 = qword_100129458;
  qword_100129458 = &off_10011E4E0;
}

id getMASHA256Hash(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
    v3 = [NSMutableString stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MAVerifySerializedAssetBlob(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = v4;
  if (v4 <= 0xF)
  {
    goto LABEL_16;
  }

  v6 = [v3 bytes];
  if (*v6 != 2)
  {
    v14 = *v6;
LABEL_16:
    createManagedAssetError();
    *a2 = v12 = 0;
    goto LABEL_17;
  }

  if (*(v6 + 2) != 2)
  {
    v15 = *(v6 + 2);
    goto LABEL_16;
  }

  if ((*(v6 + 1) + 1) >= 4)
  {
    v16 = *(v6 + 1);
    goto LABEL_16;
  }

  v7 = *(v6 + 3);
  v8 = 8 * v7 + 16;
  if (*(v6 + 3))
  {
    v9 = (v6 + 20);
    do
    {
      v10 = v8 + *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v8 = v10 + v11;
      --v7;
    }

    while (v7);
  }

  if (v5 != v8)
  {
    goto LABEL_16;
  }

  v12 = 1;
LABEL_17:

  return v12;
}

id MAConsturctAssetBlob(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = 8 * [v7 count] + 16;
  if (v8 > a1 || [v7 count] >= 0x10000)
  {
    createManagedAssetError();
    *a4 = v9 = 0;
    goto LABEL_14;
  }

  v10 = [NSMutableData dataWithLength:a1];
  v11 = v10;
  if (v10)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = [v10 mutableBytes];
    v12 = v28[3];
    *v12 = 2;
    *(v12 + 4) = 2;
    *(v12 + 6) = [v7 count];
    *(v12 + 8) = a2;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = v8;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100033A40;
    v21 = sub_100033A50;
    v22 = 0;
    v28[3] += v8;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100033A58;
    v16[3] = &unk_100116480;
    v16[4] = &v17;
    v16[5] = &v27;
    v16[6] = &v23;
    v16[7] = v12;
    [v7 enumerateObjectsUsingBlock:v16];
    v13 = v18[5];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      if (v24[3] == a1)
      {
        v9 = v11;
LABEL_12:
        _Block_object_dispose(&v17, 8);

        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v27, 8);
        goto LABEL_13;
      }

      v14 = createManagedAssetError();
    }

    v9 = 0;
    *a4 = v14;
    goto LABEL_12;
  }

  createManagedAssetError();
  *a4 = v9 = 0;
LABEL_13:

LABEL_14:

  return v9;
}

uint64_t sub_100033A40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100033A58(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!([v7 assetDataLen] >> 32))
  {
    v8 = [v7 assetMetaData];
    v9 = [v8 length];

    if (v9 < 0x3E9)
    {
      v13 = [v7 assetMetaData];
      v14 = [v7 assetDataLen];
      v15 = [v7 assetData];

      if (v15)
      {
        memcpy(*(*(a1[5] + 8) + 24), [v13 bytes], objc_msgSend(v13, "length"));
        *(*(a1[5] + 8) + 24) += [v13 length];
        v16 = *(*(a1[5] + 8) + 24);
        v17 = [v7 assetData];
        v18 = [v17 bytes];
        v19 = [v7 assetData];
        memcpy(v16, v18, [v19 length]);

        v20 = [v7 assetData];
        *(*(a1[5] + 8) + 24) += [v20 length];

        v21 = 0;
      }

      else
      {
        v23 = [v7 assetFileHandle];

        if (v23)
        {
          v21 = [v7 assetFileHandle];
        }

        else
        {
          v24 = [v7 sandboxToken];
          v25 = [v7 assetDataPath];
          v26 = *(a1[4] + 8);
          obj = *(v26 + 40);
          v21 = MAOpenFileWithSandboxToken(v24, v25, &obj);
          objc_storeStrong((v26 + 40), obj);
        }

        if (*(*(a1[4] + 8) + 40) || ([v21 seekToFileOffset:0], v27 = *(a1[5] + 8), v28 = objc_msgSend(v21, "fileDescriptor"), v29 = *(a1[4] + 8), v36 = *(v29 + 40), v32 = MAReadMetaDataAndAssetData((v27 + 24), v30, v13, v28, v14, v31, &v36), objc_storeStrong((v29 + 40), v36), (v32 & 1) == 0))
        {
          *a4 = 1;
        }

        if (v21)
        {
          v33 = *(a1[4] + 8);
          v35 = *(v33 + 40);
          v34 = MACloseFileHandleHelper(v21, &v35);
          objc_storeStrong((v33 + 40), v35);
          if ((v34 & 1) == 0)
          {
            *a4 = 1;
            goto LABEL_7;
          }
        }
      }

      *(a1[7] + 8 * a3 + 16) = [v13 length];
      *(a1[7] + 8 * a3 + 20) = [v7 assetDataLen];
      v22 = [v13 length];
      *(*(a1[6] + 8) + 24) += &v22[[v7 assetDataLen]];
LABEL_7:

      goto LABEL_8;
    }
  }

  v10 = createManagedAssetError();
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a4 = 1;
LABEL_8:
}

id MAOpenFileWithSandboxToken(void *a1, void *a2, void *a3)
{
  v5 = a2;
  [a1 cStringUsingEncoding:4];
  if (sandbox_extension_consume() == -1)
  {
    v10 = *__error();
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 isReadableFileAtPath:v5];

    if (v7)
    {
      v8 = [NSFileHandle fileHandleForReadingAtPath:v5];
      goto LABEL_6;
    }
  }

  createManagedAssetError();
  *a3 = v8 = 0;
LABEL_6:
  sandbox_reference_release();

  return v8;
}

uint64_t MAReadMetaDataAndAssetData(void **a1, uint64_t a2, void *a3, int a4, unint64_t a5, uint64_t a6, void *a7)
{
  v11 = a3;
  memcpy(*a1, [v11 bytes], objc_msgSend(v11, "length"));
  *a1 = [v11 length] + *a1;
  v12 = 0;
  if (a5)
  {
    while (1)
    {
      while (1)
      {
        v13 = read(a4, *a1 + v12, 0x10000uLL);
        if (v13 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_11;
        }
      }

      if (!v13)
      {
        goto LABEL_8;
      }

      if (v13 < 0)
      {
        break;
      }

      v12 += v13;
      if (v12 >= a5)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v16 = *__error();
    goto LABEL_12;
  }

LABEL_8:
  if (v12 != a5)
  {
LABEL_12:
    createManagedAssetError();
    *a7 = v14 = 0;
    goto LABEL_13;
  }

  *a1 = *a1 + a5;
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t MACloseFileHandleHelper(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && ![v3 closeAndReturnError:a2])
  {
    v5 = 0;
  }

  else
  {

    v4 = 0;
    v5 = 1;
  }

  return v5;
}

ssize_t MAWriteDataUsingFileDescriptor(ssize_t result, int __fd, unint64_t a3, ssize_t *a4)
{
  v6 = result;
  if (a3)
  {
    v8 = 0;
    while (2)
    {
      if (a3 - v8 >= 0x10000)
      {
        v9 = 0x10000;
      }

      else
      {
        v9 = a3 - v8;
      }

      while (1)
      {
        result = write(__fd, (*v6 + v8), v9);
        if (result != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_17;
        }
      }

      if (!result)
      {
        break;
      }

      if (result < 0)
      {
LABEL_17:
        v10 = *__error();
        goto LABEL_18;
      }

      v8 += result;
      if (v8 < a3)
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

  if (v8 == a3)
  {
    *v6 += a3;
  }

  else
  {
LABEL_18:
    result = createManagedAssetError();
    *a4 = result;
  }

  return result;
}

void MASetMAServerProfileInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+Profile.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_100127DC8;
  off_100127DC8 = v3;
}

void sub_100034C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100034C5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100034C74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 UUIDString];
    v5 = [v2 profileName];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 72);
    v9 = *(*(a1 + 72) + 8);
    obj = *(v9 + 40);
    v10 = [v8 getProfile:v7 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
      {
        sub_100039984((a1 + 40), a1 + 72);
      }

      goto LABEL_16;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 80));
    if ([v2 profileType] == -1)
    {
      goto LABEL_16;
    }
  }

  if ([v2 profileType] != -1)
  {
    v13 = +[NSDate date];
    [v13 timeIntervalSince1970];
    v15 = v14;

    v16 = *(*(a1 + 32) + 72);
    v17 = [v2 profileName];
    v18 = *(*(a1 + 72) + 8);
    v39 = *(v18 + 40);
    [v16 updateProfileLastSwitchTS:v17 mode:0 timestamp:&v39 error:v15];
    objc_storeStrong((v18 + 40), v39);
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000399F8((a1 + 40), a1 + 72);
    }
  }

  else
  {
    [*(*(a1 + 32) + 72) setLastSeenProfile:*(*(*(a1 + 64) + 8) + 40)];
    [*(a1 + 32) setProfile:*(*(*(a1 + 64) + 8) + 40)];
    v19 = +[NSDate date];
    [v19 timeIntervalSince1970];
    v21 = v20;

    v22 = *(*(a1 + 32) + 72);
    v23 = [*(*(*(a1 + 64) + 8) + 40) profileName];
    v24 = *(*(a1 + 72) + 8);
    v38 = *(v24 + 40);
    [v22 updateProfileLastSwitchTS:v23 mode:1 timestamp:&v38 error:v21];
    objc_storeStrong((v24 + 40), v38);

    v25 = off_100127DC8;
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*(*(a1 + 64) + 8) + 40);
      v27 = v25;
      v28 = [v26 profileName];
      v29 = [*(*(*(a1 + 64) + 8) + 40) profileType];
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Switched to profile: %{public}@ with profile type %lu", buf, 0x16u);
    }

    [*(*(a1 + 32) + 112) setProfile:*(*(*(a1 + 64) + 8) + 40)];
    v30 = *(*(a1 + 32) + 56);
    v31 = [*(*(*(a1 + 64) + 8) + 40) profileName];
    [v30 notifyProfileChangeWith:64 profile:v31 type:{objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "profileType")}];

    if ([v2 profileType] == 1)
    {
      v32 = *(a1 + 32);
      v33 = [v2 profileName];
      v34 = *(*(a1 + 72) + 8);
      v37 = *(v34 + 40);
      [v32 deleteSingleProfile:v33 error:&v37 wipeOutOpt:1];
      objc_storeStrong((v34 + 40), v37);
    }
  }

LABEL_16:
  v35 = *(a1 + 56);
  if (v35)
  {
    (*(v35 + 16))(v35, *(*(*(a1 + 72) + 8) + 40));
  }

  v36 = *(a1 + 48);
  if (v36)
  {
    [v36 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) SwitchProfile:completion:]_block_invoke" client:buf startTS:*(a1 + 80) error:*(*(*(a1 + 72) + 8) + 40)];
}

void sub_100035304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003531C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if ([v2 profileType] == 1)
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSince1970];
    v5 = v4;

    v6 = *(*(a1 + 32) + 72);
    v7 = [v2 profileName];
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    [v6 changeProfileType:v7 profileType:2 timestamp:&obj error:v5];
    objc_storeStrong((v8 + 40), obj);

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
      {
        sub_100039AA8();
      }
    }

    else
    {
      v12 = [MASDUserProfile alloc];
      v13 = [v2 profileID];
      v14 = [v2 profileName];
      v15 = [(MASDUserProfile *)v12 initNewProfileWith:v13 name:v14 type:2];
      [*(a1 + 32) setProfile:v15];

      v16 = *(a1 + 32);
      v17 = v16[9];
      v18 = [v16 profile];
      [v17 setLastSeenProfile:v18];

      v19 = *(a1 + 32);
      v20 = v19[14];
      v21 = [v19 profile];
      [v20 setProfile:v21];

      v22 = off_100127DC8;
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = v22;
        v25 = [v23 profile];
        v26 = [v25 profileName];
        *buf = 138543362;
        v34 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Persisted guest profile (UUID: %{public}@)", buf, 0xCu);
      }

      v27 = *(a1 + 32);
      v28 = v27[7];
      v29 = [v27 profile];
      v30 = [v29 profileName];
      [v28 notifyProfileChangeWith:0x40000 profile:v30 type:2];
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_100039A6C();
    }

    v9 = createManagedAssetError();
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))(v31, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_100035820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035838(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if ([v2 profileType] == 2)
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSince1970];
    v5 = v4;

    v6 = *(*(a1 + 32) + 72);
    v7 = [v2 profileName];
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    [v6 changeProfileType:v7 profileType:1 timestamp:&obj error:v5];
    objc_storeStrong((v8 + 40), obj);

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
      {
        sub_100039B88();
      }
    }

    else
    {
      v12 = [MASDUserProfile alloc];
      v13 = [v2 profileID];
      v14 = [v2 profileName];
      v15 = [(MASDUserProfile *)v12 initNewProfileWith:v13 name:v14 type:1];
      [*(a1 + 32) setProfile:v15];

      v16 = *(a1 + 32);
      v17 = v16[9];
      v18 = [v16 profile];
      [v17 setLastSeenProfile:v18];

      v19 = *(a1 + 32);
      v20 = v19[14];
      v21 = [v19 profile];
      [v20 setProfile:v21];

      v22 = off_100127DC8;
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = v22;
        v25 = [v23 profile];
        v26 = [v25 profileName];
        *buf = 138543362;
        v34 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unpersisted profile (UUID: %{public}@)", buf, 0xCu);
      }

      v27 = *(a1 + 32);
      v28 = v27[7];
      v29 = [v27 profile];
      v30 = [v29 profileName];
      [v28 notifyProfileChangeWith:0x80000 profile:v30 type:1];
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
    {
      sub_100039B4C();
    }

    v9 = createManagedAssetError();
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))(v31, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_100036008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100036024(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUIDString];
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  LODWORD(v2) = [v2 deleteSingleProfile:v3 error:&obj wipeOutOpt:1];
  objc_storeStrong((v4 + 40), obj);

  if (v2)
  {
    v5 = [*(a1 + 40) UUIDString];
    v6 = [*(*(a1 + 32) + 16) profileName];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = *(*(a1 + 32) + 80);
      [*(*(a1 + 32) + 72) setLastSeenProfile:v8];
      [*(a1 + 32) setProfile:v8];
      [*(*(a1 + 32) + 112) setProfile:v8];
      v9 = off_100127DC8;
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = v9;
        v12 = [v10 UUIDString];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleted profile (UUID: %{public}@)", buf, 0xCu);
      }

      v13 = *(*(a1 + 32) + 56);
      v14 = [v8 profileName];
      [v13 notifyProfileChangeWith:64 profile:v14 type:{objc_msgSend(v8, "profileType")}];
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, *(*(*(a1 + 64) + 8) + 40));
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    [v16 auditToken];
  }

  else
  {
    *buf = 0u;
    v20 = 0u;
  }

  return [CALogger logWithCoreAnalytics:"[MAServer(Profile) DeleteProfile:completion:]_block_invoke" client:buf startTS:*(a1 + 72) error:*(*(*(a1 + 64) + 8) + 40)];
}

void sub_1000364A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000364C4(uint64_t a1)
{
  [*(a1 + 32) deleteAllProfiles:1 exclude:0 epoch:0];
  [*(a1 + 32) deleteAllProfiles:0 exclude:0 epoch:0];
  [*(a1 + 32) deleteAllProfiles:2 exclude:0 epoch:0];
  v2 = *(*(a1 + 32) + 80);
  [*(*(a1 + 32) + 72) setLastSeenProfile:v2];
  [*(a1 + 32) setProfile:v2];
  [*(*(a1 + 32) + 112) setProfile:v2];
  v3 = off_100127DC8;
  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deleted all non default profiles", v8, 2u);
  }

  v4 = *(*(a1 + 32) + 56);
  v5 = [v2 profileName];
  [v4 notifyProfileChangeWith:64 profile:v5 type:{objc_msgSend(v2, "profileType")}];

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 56) + 8) + 40));
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) DeleteAllNonDefaultProfilesWithCompletion:]_block_invoke" client:v8 startTS:*(a1 + 64) error:*(*(*(a1 + 56) + 8) + 40)];
}

void sub_100036E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100036E84(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) isEqualToString:kMASDDefaultLocalUser];
  v4 = v2[1];
  if (v3)
  {
    v5 = *(v4 + 80);
    goto LABEL_7;
  }

  v6 = *(v4 + 72);
  v7 = [[NSUUID alloc] initWithUUIDString:*(a1 + 32)];
  v8 = *(*(a1 + 72) + 8);
  obj = *(v8 + 40);
  v5 = [v6 getProfile:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
LABEL_7:
    v10 = kManagedAssetsExportOptionAssetHandles;
    v11 = [*(a1 + 48) objectForKeyedSubscript:kManagedAssetsExportOptionAssetHandles];

    v12 = *(a1 + 48);
    if (v11)
    {
      v9 = [v12 objectForKeyedSubscript:v10];
      v13 = 0;
    }

    else
    {
      v76 = kManagedAssetsExportOptionAssetTypes;
      v77 = [v12 objectForKeyedSubscript:kManagedAssetsExportOptionAssetTypes];

      if (v77)
      {
        v118[0] = kManagedAssetsQueryOptionProfileUUID;
        v78 = [v5 profileName];
        v119[0] = v78;
        v118[1] = v76;
        v79 = [*(a1 + 48) objectForKeyedSubscript:v76];
        v118[2] = kManagedAssetsQueryOptionLocalOnly;
        v119[1] = v79;
        v119[2] = &__kCFBooleanTrue;
        v13 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:3];
      }

      else
      {
        v116[0] = kManagedAssetsQueryOptionProfileUUID;
        v78 = [v5 profileName];
        v116[1] = kManagedAssetsQueryOptionLocalOnly;
        v117[0] = v78;
        v117[1] = &__kCFBooleanTrue;
        v13 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];
      }

      v81 = *(*(a1 + 40) + 72);
      v82 = [v5 profileName];
      v83 = *(*(a1 + 72) + 8);
      v111 = *(v83 + 40);
      v9 = [v81 queryAssets:v13 profile:v82 error:&v111];
      objc_storeStrong((v83 + 40), v111);

      if (*(*(*(a1 + 72) + 8) + 40))
      {
        if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
        {
          sub_100039E8C();
        }

LABEL_52:

        goto LABEL_61;
      }
    }

    if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100039F24();
    }

    *(*(*(a1 + 80) + 8) + 24) += 16;
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v9 = v9;
    v99 = [v9 countByEnumeratingWithState:&v107 objects:v115 count:16];
    if (v99)
    {
      v98 = *v108;
      v96 = v9;
      v97 = v5;
      v95 = v13;
      while (2)
      {
        for (i = 0; i != v99; i = i + 1)
        {
          if (*v108 != v98)
          {
            objc_enumerationMutation(v96);
          }

          v18 = *(*(&v107 + 1) + 8 * i);
          v106 = 0;
          v19 = *(*(a1 + 40) + 72);
          v20 = *(*(a1 + 72) + 8);
          v104 = *(v20 + 40);
          v105 = 0;
          v21 = [v19 getAsset:v18 profile:v5 option:0 assetPathOut:&v105 bypassProfileCheck:0 error:&v104];
          v22 = v105;
          objc_storeStrong((v20 + 40), v104);
          v23 = *(a1 + 72);
          if (*(*(v23 + 8) + 40))
          {
            if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
            {
              sub_100039F8C(v18, a1 + 72);
            }

            v9 = v96;
            v80 = v95;
            goto LABEL_60;
          }

          if (v22)
          {
            v24 = *(a1 + 56);
            if (v24)
            {
              [v24 auditToken];
              v23 = *(a1 + 72);
            }

            else
            {
              v102 = 0u;
              v103 = 0u;
            }

            v30 = *(v23 + 8);
            v33 = *(v30 + 40);
            v32 = (v30 + 40);
            v31 = v33;
            v34 = v22;
            [v34 fileSystemRepresentation];
            v113 = v102;
            v114 = v103;
            v35 = sandbox_extension_issue_file_to_process();
            if (v35)
            {
              v36 = v35;
              v29 = [NSString stringWithUTF8String:v35];
              free(v36);
            }

            else
            {
              v94 = v34;
              v31 = createManagedAssetError();
              v37 = v31;
              v29 = 0;
            }

            objc_storeStrong(v32, v31);
            v38 = +[NSFileManager defaultManager];
            v39 = *(*(a1 + 72) + 8);
            v101 = *(v39 + 40);
            v40 = [v38 attributesOfItemAtPath:v34 error:&v101];
            objc_storeStrong((v39 + 40), v101);

            if (*(*(*(a1 + 72) + 8) + 40))
            {
              v5 = v97;
              v9 = v96;
              v80 = v95;
              if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
              {
                sub_100039FF4(v34, a1 + 72);
              }

LABEL_60:
              goto LABEL_61;
            }

            v41 = [v40 objectForKeyedSubscript:NSFileSize];
            v106 = [v41 intValue];
          }

          else
          {
            v25 = [v21 assetFileHandle];

            if (!v25)
            {
              v84 = createManagedAssetError();
              v85 = *(*(a1 + 72) + 8);
              v86 = *(v85 + 40);
              *(v85 + 40) = v84;

              v9 = v96;
              v80 = v95;
              if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
              {
                sub_10003A0F4();
              }

              goto LABEL_60;
            }

            v26 = [v21 assetFileHandle];
            [v26 seekToFileOffset:0];

            v27 = [v21 assetFileHandle];
            v28 = *(*(a1 + 72) + 8);
            v100 = 0;
            [v27 seekToEndReturningOffset:&v106 error:&v100];
            objc_storeStrong((v28 + 40), v100);

            v29 = 0;
            if (*(*(*(a1 + 72) + 8) + 40))
            {
              v87 = os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR);
              v5 = v97;
              v9 = v96;
              v80 = v95;
              if (v87)
              {
                sub_10003A05C();
              }

              goto LABEL_60;
            }
          }

          v42 = objc_opt_new();
          v43 = [v21 assetMetadata];
          [v42 setType:{objc_msgSend(v43, "type")}];

          v44 = [v21 assetMetadata];
          v45 = [v44 label];
          [v42 setLabel:v45];

          v46 = [v21 assetMetadata];
          v47 = [v46 creationTime];
          [v47 timeIntervalSince1970];
          [v42 setCreationTime:?];

          v48 = [v21 assetMetadata];
          v49 = [v48 lastUpdatedTime];
          [v49 timeIntervalSince1970];
          [v42 setLastUpdatedTime:?];

          v50 = [v21 assetMetadata];
          v51 = [v50 lastUpdatedAlgorithmVersion];
          [v42 setLastUpdateAlgorithmVersion:v51];

          v52 = [v21 assetMetadata];
          v53 = [v52 lastUpdatedOSVersion];
          [v42 setLastUpdateOSVersion:v53];

          v54 = [v21 assetMetadata];
          v55 = [v54 enrollmentIdentifier];
          [v42 setEnrollmentIdentifier:v55];

          v56 = [v21 creatorAttest];
          [v42 setCreatorAttest:v56];

          v57 = [v21 serverAttest];
          [v42 setServerAttest:v57];

          v58 = [v21 assetMetadata];
          v59 = [v58 deviceIdentifier];
          [v42 setDeviceIdentifier:v59];

          v60 = [v21 assetMetadata];
          v61 = [v60 deviceName];
          [v42 setDeviceName:v61];

          v62 = [v42 data];
          v63 = objc_alloc_init(MASDSerializedAssetFileInfo);
          [(MASDSerializedAssetFileInfo *)v63 setAssetHandle:v18];
          [(MASDSerializedAssetFileInfo *)v63 setAssetDataLen:v106];
          if (v22)
          {
            [(MASDSerializedAssetFileInfo *)v63 setSandboxToken:v29];
            [(MASDSerializedAssetFileInfo *)v63 setAssetDataPath:v22];
          }

          else
          {
            v64 = [v21 assetFileHandle];
            [(MASDSerializedAssetFileInfo *)v63 setAssetFileHandle:v64];
          }

          [(MASDSerializedAssetFileInfo *)v63 setAssetMetaData:v62, v94];
          [*(*(*(a1 + 88) + 8) + 40) addObject:v63];
          v65 = *(*(*(a1 + 80) + 8) + 24);
          v66 = [v62 length];
          *(*(*(a1 + 80) + 8) + 24) = &v66[v106 + 8 + v65];

          v5 = v97;
        }

        v9 = v96;
        v13 = v95;
        v99 = [v96 countByEnumeratingWithState:&v107 objects:v115 count:16];
        if (v99)
        {
          continue;
        }

        break;
      }
    }

    if (_os_feature_enabled_impl())
    {
      v67 = [*(a1 + 48) objectForKeyedSubscript:kManagedAssetsBYOEOptionAXIncluded];
      v68 = [v67 BOOLValue];

      if (v68)
      {
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          v69 = [*(*(a1 + 40) + 72) maPrefsPath];
          v70 = [v5 profileName];
          v71 = [v69 stringByAppendingPathComponent:v70];

          v72 = +[NSFileManager defaultManager];
          LODWORD(v70) = [v72 fileExistsAtPath:v71];

          if (v70)
          {
            if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEBUG))
            {
              sub_10003A130();
            }

            v73 = [NSData dataWithContentsOfFile:v71];
            v74 = *(*(a1 + 96) + 8);
            v75 = *(v74 + 40);
            *(v74 + 40) = v73;
          }
        }
      }
    }

    *(*(*(a1 + 104) + 8) + 24) = [v5 profileType];
    goto LABEL_52;
  }

  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
    sub_100039E18(v2, a1 + 72);
  }

  v9 = 0;
LABEL_61:
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v88 = *(*(a1 + 96) + 8);
    v89 = *(v88 + 40);
    *(v88 + 40) = 0;

    [*(*(*(a1 + 88) + 8) + 40) removeAllObjects];
    v90 = *(*(a1 + 88) + 8);
    v91 = *(v90 + 40);
    *(v90 + 40) = 0;

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v92 = *(a1 + 64);
  if (v92)
  {
    (*(v92 + 16))(v92, *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  }

  v93 = *(a1 + 56);
  if (v93)
  {
    [v93 auditToken];
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
  }

  [CALogger logWithCoreAnalytics:"[MAServer(Profile) SerializeAllAssets:option:completion:]_block_invoke" client:&v113 startTS:*(a1 + 112) error:*(*(*(a1 + 72) + 8) + 40), v94];
}

void sub_100038094(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1000380E0(uint64_t a1)
{
  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003A278(a1);
  }

  v2 = *(a1 + 112) + 1;
  if (v2 < 4)
  {
    v3 = qword_1000E5F88[v2];
    v4 = [*(a1 + 40) objectForKeyedSubscript:kManagedAssetsImportOptionDedupe];
    v5 = [v4 intValue];
    v6 = kManagedAssetsImportOptionProfileUUID;
    v7 = [*(a1 + 40) objectForKeyedSubscript:kManagedAssetsImportOptionProfileUUID];

    v81 = v7;
    if (v7)
    {
      v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
      v9 = [v8 isEqualToString:kMASDDefaultLocalUser];

      if (v9)
      {
        v10 = [*(*(a1 + 48) + 80) copy];
        v11 = 0;
        if (v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v23 = [NSUUID alloc];
        v24 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v11 = [v23 initWithUUIDString:v24];
      }
    }

    else
    {
      v11 = +[NSUUID UUID];
      v16 = +[NSDate date];
      [v16 timeIntervalSince1970];
      v18 = v17;

      v19 = *(*(a1 + 48) + 72);
      v20 = *(*(a1 + 80) + 8);
      v98 = *(v20 + 40);
      v21 = [v19 createProfile:v11 type:v3 timestamp:&v98 error:v18];
      objc_storeStrong((v20 + 40), v98);
      if ((v21 & 1) == 0)
      {
        if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
        {
          sub_10003A320(v11, a1 + 80);
        }

        v22 = *(a1 + 72);
        if (v22)
        {
          (*(v22 + 16))(v22, 0, -2, *(*(*(a1 + 80) + 8) + 40));
        }

        v10 = 0;
        goto LABEL_60;
      }
    }

    v25 = *(*(a1 + 48) + 72);
    v26 = *(*(a1 + 80) + 8);
    v97 = *(v26 + 40);
    v10 = [v25 getProfile:v11 error:&v97];
    objc_storeStrong((v26 + 40), v97);
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
      {
        sub_10003A388(v11, a1 + 80);
      }

      v27 = *(a1 + 72);
      if (v27)
      {
        (*(v27 + 16))(v27, 0, -2, *(*(*(a1 + 80) + 8) + 40));
      }

LABEL_60:

      return;
    }

LABEL_24:
    v28 = v5;
    v29 = v11;
    v79 = v4;
    v30 = kManagedAssetsImportOptionSelectedAssetTypes;
    v31 = [*(a1 + 40) objectForKeyedSubscript:kManagedAssetsImportOptionSelectedAssetTypes];
    v32 = v31 != 0;

    v33 = +[NSMutableSet set];
    v34 = +[NSMutableSet set];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100038AF4;
    v88[3] = &unk_100116570;
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v94 = *(a1 + 80);
    v96 = v32;
    v37 = *(a1 + 48);
    v89 = v36;
    v90 = v37;
    v10 = v10;
    v38 = *(a1 + 88);
    v91 = v10;
    v95 = v38;
    v80 = v33;
    v92 = v80;
    v39 = v34;
    v93 = v39;
    [v35 enumerateKeysAndObjectsUsingBlock:v88];
    v40 = 0;
    v78 = v39;
    v11 = v29;
    if (v81 && !v28)
    {
      v99[0] = v30;
      v41 = [v39 allObjects];
      v99[1] = kManagedAssetsQueryOptionLocalOnly;
      v100[0] = v41;
      v100[1] = &__kCFBooleanTrue;
      v42 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:2];

      v43 = *(*(a1 + 48) + 72);
      v44 = [v10 profileName];
      v45 = *(*(a1 + 80) + 8);
      obj = *(v45 + 40);
      v46 = [v43 queryAssets:v42 profile:v44 error:&obj];
      objc_storeStrong((v45 + 40), obj);

      if (*(*(*(a1 + 80) + 8) + 40))
      {
        if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
        {
          sub_10003A3F0(a1 + 80);
        }

        v47 = 0;
        v48 = v78;
LABEL_48:

        goto LABEL_49;
      }

      v49 = [NSMutableSet setWithArray:v46];
      [v49 minusSet:v80];
      if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_DEBUG))
      {
        sub_10003A464();
      }

      v50 = *(*(a1 + 48) + 72);
      v77 = v49;
      v51 = [v49 allObjects];
      v52 = *(*(a1 + 80) + 8);
      v86 = *(v52 + 40);
      LOBYTE(v50) = [v50 deleteAssets:v51 error:&v86];
      objc_storeStrong((v52 + 40), v86);

      if ((v50 & 1) == 0)
      {
        v48 = v78;
        if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
        {
          sub_10003A4CC(v10, a1 + 80);
        }

        v47 = v77;
        goto LABEL_48;
      }

      v40 = v77;
    }

    v53 = kManagedAssetsImportOptionVolatileProfile;
    v54 = [*(a1 + 40) objectForKeyedSubscript:kManagedAssetsImportOptionVolatileProfile];
    if (v54)
    {
      v55 = v54;
      v56 = [*(a1 + 40) objectForKeyedSubscript:v53];
      v57 = [v56 BOOLValue];

      if (v57)
      {
        v58 = [*(*(a1 + 48) + 120) objectForKey:*(a1 + 56)];
        if (!v58)
        {
          v58 = +[NSMutableSet set];
        }

        v59 = [v10 profileName];
        [v58 addObject:v59];

        [*(*(a1 + 48) + 120) setObject:v58 forKey:*(a1 + 56)];
      }
    }

    if (_os_feature_enabled_impl())
    {
      v60 = [*(a1 + 40) objectForKeyedSubscript:kManagedAssetsBYOEOptionAXIncluded];
      if (v60)
      {
        v61 = *(a1 + 64);

        if (v61)
        {
          v62 = [*(*(a1 + 48) + 72) maPrefsPath];
          v63 = [v10 profileName];
          v64 = [v62 stringByAppendingPathComponent:v63];

          v65 = *(a1 + 64);
          v66 = *(*(a1 + 80) + 8);
          v85 = *(v66 + 40);
          LODWORD(v63) = [v65 writeToFile:v64 options:1073741825 error:&v85];
          objc_storeStrong((v66 + 40), v85);
          if (!v63)
          {
            v47 = v40;
            if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
            {
              sub_10003A534();
            }

            v48 = v78;
            goto LABEL_49;
          }
        }
      }
    }

    v67 = [v10 profileName];
    v68 = *(*(a1 + 96) + 8);
    v69 = *(v68 + 40);
    *(v68 + 40) = v67;

    *(*(*(a1 + 104) + 8) + 24) = [v10 profileType];
    v48 = v78;
    v47 = v40;
LABEL_49:
    v4 = v79;
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      if (!v81 && v10)
      {
        v70 = *(a1 + 48);
        v71 = [v10 profileName];
        v84 = 0;
        [v70 deleteSingleProfile:v71 error:&v84 wipeOutOpt:1];
      }

      v72 = *(a1 + 32);
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100039140;
      v83[3] = &unk_100116598;
      v83[4] = *(a1 + 48);
      [v72 enumerateKeysAndObjectsUsingBlock:v83];
      v73 = *(*(a1 + 96) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = 0;

      *(*(*(a1 + 104) + 8) + 24) = -2;
    }

    v75 = *(a1 + 72);
    if (v75)
    {
      (*(v75 + 16))(v75, *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 80) + 8) + 40));
    }

    v76 = *(a1 + 56);
    if (v76)
    {
      [v76 auditToken];
    }

    else
    {
      memset(v82, 0, sizeof(v82));
    }

    [CALogger logWithCoreAnalytics:"[MAServer(Profile) ImportSerializedV2Assets:option:profileType:axData:completion:]_block_invoke_2" client:v82 startTS:*(a1 + 120) error:*(*(*(a1 + 80) + 8) + 40)];

    goto LABEL_60;
  }

  v12 = createManagedAssetError();
  v13 = *(*(a1 + 80) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
    sub_10003A2E4();
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    (*(v15 + 16))(v15, 0, -2, *(*(*(a1 + 80) + 8) + 40));
  }
}

void sub_100038AF4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (([v7 isEqualToString:@"corePrescriptionData"] & 1) == 0)
  {
    v9 = [[MASDPlainAsset alloc] initWithData:v8];
    if (_os_feature_enabled_impl() && ([*(a1 + 32) objectForKeyedSubscript:kManagedAssetsImportOptionNonActiveAssetStateDefault], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = 64;
    }

    else
    {
      v11 = 65;
    }

    [v9 setAssetState:v11];
    if (v9)
    {
      if (*(a1 + 88) != 1 || ([*(a1 + 32) objectForKeyedSubscript:kManagedAssetsImportOptionSelectedAssetTypes], v12 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v9, "type")), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "containsObject:", v13), v13, v12, v14))
      {
        v52 = 0;
        v15 = *(a1 + 40);
        v16 = [v9 label];
        v17 = [v9 type];
        [v9 lastUpdatedTime];
        v51 = 0;
        LOBYTE(v17) = [v15 assetDeDuplication:v16 type:v17 lastUpdatedTime:0 newAssetHandle:0 newAssetRecordID:&v52 + 1 deleteNewAssetLocal:&v52 deleteNewAssetLocalAndSync:&v51 error:?];
        v18 = v51;

        if ((v17 & 1) == 0 && os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
        {
          sub_10003A5CC();
        }

        if ((v52 & 0x100) == 0)
        {
          v44 = a4;
          v46 = v18;
          [v9 setAssetState:65];
          v19 = [[MASDAsset alloc] initSharedAssetWith:v9 owner:*(a1 + 48) process:*(*(*(a1 + 80) + 8) + 40) session:0 participant:0];
          v20 = *(*(a1 + 40) + 72);
          v21 = [v19 assetMetadata];
          v22 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v21 type], objc_msgSend(*(a1 + 48), "profileType"), *(*(a1 + 40) + 8));
          v23 = *(*(a1 + 72) + 8);
          obj = *(v23 + 40);
          v45 = v19;
          LOBYTE(v20) = [v20 createAsset:v19 token:v7 protectionClass:v22 assetPathOut:0 error:&obj];
          objc_storeStrong((v23 + 40), obj);

          if (v20)
          {
            v24 = v19;
            if (([v9 assetState] & 1) != 0 && objc_msgSend(*(*(a1 + 40) + 16), "profileType") == -1)
            {
              v25 = [v19 assetOwner];
              v26 = [v25 profileType];
              v27 = [*(*(a1 + 40) + 16) profileType];

              if (v26 == v27)
              {
                v28 = off_100127DC8;
                if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "uploading imported asset to the cloud if applicable", buf, 2u);
                }

                v29 = *(a1 + 40);
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_1000390DC;
                v47[3] = &unk_100116118;
                v48 = v45;
                [v29 saveAssetToCloud:v48 options:0 completionHandler:v47];
              }
            }

            v30 = *(a1 + 56);
            v31 = [v45 assetHandle];
            [v30 addObject:v31];

            v32 = *(a1 + 64);
            v33 = [v45 assetMetadata];
            v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v33 type]);
            [v32 addObject:v34];

            v35 = *(*(a1 + 40) + 56);
            v36 = [v45 assetMetadata];
            v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v36 type]);
            v54 = v37;
            v38 = [v45 assetHandle];
            v53 = v38;
            v39 = [NSArray arrayWithObjects:&v53 count:1];
            v55 = v39;
            v40 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            [v35 notifyAssetChangeWith:0x200000 handles:v40];
          }

          else
          {
            v24 = v19;
            if (os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
            {
              sub_10003A63C(v19, a1 + 72);
            }

            *v44 = 1;
          }

          v18 = v46;
        }
      }
    }

    else
    {
      v41 = createManagedAssetError();
      v42 = *(*(a1 + 72) + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = v41;

      *a4 = 1;
    }
  }
}

void sub_1000390DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127DC8, OS_LOG_TYPE_ERROR))
  {
    sub_10003A6A4(a1);
  }
}

id sub_100039140(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 72);
  v4 = 0;
  return [v2 deleteTempAssetFile:a2 error:&v4];
}

void sub_1000397F8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t *sub_100039818@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *(*(*a2 + 8) + 40);
  return result;
}

void sub_10003983C()
{
  sub_10000A16C();
  sub_100039830();
  sub_100005D18(&_mh_execute_header, v0, v1, "Fail to get profile (UUID: %{public}@), error = %{public}@");
}

void sub_100039914()
{
  sub_10000A16C();
  sub_100039830();
  sub_100005D18(&_mh_execute_header, v0, v1, "Fail to create a new profile (UUID: %{public}@), error = %{public}@");
}

void sub_100039984(uint64_t *a1, uint64_t a2)
{
  sub_100039818(a1, a2, __stack_chk_guard);
  sub_100006BEC();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to get profile (UUID: %{public}@), error = %{public}@");
}

void sub_1000399F8(uint64_t *a1, uint64_t a2)
{
  sub_100039818(a1, a2, __stack_chk_guard);
  sub_100006BEC();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to update profile last switch ts (UUID: %{public}@), error = %{public}@");
}

void sub_100039A6C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100039AA8()
{
  sub_1000180F8();
  v3 = v2;
  [sub_1000180EC() profileName];
  objc_claimAutoreleasedReturnValue();
  sub_1000397E4();
  sub_10000A16C();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to mark profile (UUID: %{public}@) as persist guest, error = %{public}@", v6, v7, v8, v9, v10);
}

void sub_100039B4C()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100039B88()
{
  sub_1000180F8();
  v3 = v2;
  [sub_1000180EC() profileName];
  objc_claimAutoreleasedReturnValue();
  sub_1000397E4();
  sub_10000A16C();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to mark profile (UUID: %{public}@) as a guest, error = %{public}@", v6, v7, v8, v9, v10);
}

void sub_100039C94()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100039E18(uint64_t *a1, uint64_t a2)
{
  sub_100039818(a1, a2, __stack_chk_guard);
  sub_100006BEC();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to get profile %@, error = %@");
}

void sub_100039E8C()
{
  sub_1000180F8();
  v3 = v2;
  [sub_1000180EC() profileName];
  objc_claimAutoreleasedReturnValue();
  sub_1000397E4();
  sub_10001C838();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to query all assets belonging to profile %@, error = %@", v6, v7, v8, v9, v10);
}

void sub_100039F8C(uint64_t a1, uint64_t a2)
{
  sub_1000397D0(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to get asset for asset handle:%@, error:%@");
}

void sub_100039FF4(uint64_t a1, uint64_t a2)
{
  sub_1000397D0(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to retieve attribute for asset path %@, error = %@");
}

void sub_10003A05C()
{
  sub_1000180F8();
  v3 = v2;
  [sub_1000180EC() assetFileHandle];
  objc_claimAutoreleasedReturnValue();
  sub_1000397E4();
  sub_10001C838();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to retieve file size for asset handle %@, error = %@", v6, v7, v8, v9, v10);
}

void sub_10003A0F4()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003A278(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006BEC();
  sub_100018110(&_mh_execute_header, v2, v3, "serializedAssets = %@", v4, v5, v6, v7, v8);
}

void sub_10003A2E4()
{
  sub_10001812C();
  sub_100006BD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003A320(uint64_t a1, uint64_t a2)
{
  sub_1000397D0(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to create a new profile (UUID: %@), error = %@");
}

void sub_10003A388(uint64_t a1, uint64_t a2)
{
  sub_1000397D0(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to retrieve profile (UUID: %@), error = %@");
}

void sub_10003A3F0(uint64_t a1)
{
  v1 = *(*(*a1 + 8) + 40);
  sub_100006BEC();
  sub_10000A178(&_mh_execute_header, v2, v3, "Fail to query asset handles from existing profile, error = %@", v4, v5, v6, v7, v8);
}

void sub_10003A4CC(uint64_t a1, uint64_t a2)
{
  sub_1000397D0(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to delete existing assets from profile %@, error = %@");
}

void sub_10003A534()
{
  sub_1000180F8();
  v3 = v2;
  [sub_1000180EC() profileName];
  objc_claimAutoreleasedReturnValue();
  sub_1000397E4();
  sub_10001C838();
  sub_1000397F8(&_mh_execute_header, v4, v5, "Fail to overwrite Accessbility Preference for profile %@, error = %@", v6, v7, v8, v9, v10);
}

void sub_10003A5CC()
{
  sub_10000A16C();
  sub_100039830();
  sub_100005D18(&_mh_execute_header, v0, v1, "Fail to de-dupe asset %@, error = %@");
}

void sub_10003A63C(uint64_t a1, uint64_t a2)
{
  sub_1000397D0(a2, __stack_chk_guard);
  sub_10001C838();
  sub_100005D18(&_mh_execute_header, v2, v3, "Fail to save asset %@, error = %@");
}

void sub_10003A6A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006BEC();
  sub_100039830();
  sub_100005D18(&_mh_execute_header, v2, v3, "Failed to save asset %@ to iCloud, error = %@");
}

void MASetMAServerCoreRxInit()
{
  v0 = [NSString stringWithUTF8String:"MAServer+CoreRx.m"];
  v5 = [v0 substringToIndex:{objc_msgSend(v0, "length") - 2}];

  v1 = kManagedAssetLogSubsystem;
  v2 = v5;
  v3 = os_log_create(v1, [v5 UTF8String]);
  v4 = off_100127DD0;
  off_100127DD0 = v3;
}

void sub_10003AFFC(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v58 = 0;
  v59 = 0;
  v8 = [v5 queryExistingUserLensRecord:v3 attributes:v6 clientConn:v7 records:v2 storeOut:&v59 error:&v58];
  v9 = v59;
  v10 = v58;
  if ((v8 & 1) == 0)
  {
    v15 = off_100127DD0;
    if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a1 + 64);
      v48 = *(a1 + 40);
      *buf = 138412802;
      v61 = v47;
      v62 = 2112;
      v63 = v48;
      v64 = 2112;
      v65 = v10;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed to query/create kvstore for lens %@ recordUUID %@ error: %@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  if ([v2 count] != 1)
  {
    if (*v4)
    {
      v53 = *v4;
      v17 = createManagedAssetError();

      v18 = off_100127DD0;
      if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
      {
        sub_10003B61C((a1 + 40), v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      if (*(a1 + 64))
      {
        goto LABEL_3;
      }

      v17 = createManagedAssetError();

      v25 = off_100127DD0;
      if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
      {
        sub_10003B68C((a1 + 64), v25, v26, v27, v28, v29, v30, v31);
      }
    }

    v16 = 0;
    v10 = v17;
    goto LABEL_25;
  }

LABEL_3:
  v11 = *(a1 + 48);
  if (!v11)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_25;
  }

  v12 = kMAKVStoreOptionsKey;
  v13 = [v11 objectForKeyedSubscript:kMAKVStoreOptionsKey];
  if (!v13)
  {
    v14 = 1;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = ([v13 unsignedIntValue] & 2) == 0;
LABEL_18:
    v32 = v10;
    goto LABEL_20;
  }

  v52 = v13;
  v32 = createManagedAssetError();
  v33 = v32;
  v14 = 1;
LABEL_20:

  v34 = v32;
  if (v34)
  {
    v35 = off_100127DD0;
    if (os_log_type_enabled(off_100127DD0, OS_LOG_TYPE_ERROR))
    {
      v49 = *(a1 + 48);
      v50 = v35;
      v51 = [v49 objectForKeyedSubscript:v12];
      *buf = 138412546;
      v61 = v51;
      v62 = 2112;
      v63 = v34;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "invalid kvstore options in attributes: %@ error: %@", buf, 0x16u);
    }

    v16 = 0;
    v10 = v34;
  }

  else
  {
    v36 = *(*(a1 + 32) + 40);
    v37 = *(a1 + 64);
    v38 = *(a1 + 72);
    v39 = *(a1 + 88);
    v40 = *(a1 + 96);
    v41 = *(a1 + 104);
    v42 = *(a1 + 112);
    v43 = *(a1 + 128);
    v44 = *(a1 + 120);
    v45 = *(a1 + 130);
    v46 = *(a1 + 48);
    v56 = 0;
    v57 = 0;
    LOBYTE(v55) = v14;
    LOWORD(v54) = v45;
    LOWORD(v52) = v43;
    [v36 fetchCoreRxLensData:v37 accPayload:v38 rxIdL:v39 rxIdR:v40 axisL:v41 axisR:v42 calRequiredL:v52 calRequiredR:v44 version:v54 leftLensOnly:v46 rightLensOnly:v2 attributes:v55 records:v9 cloudSync:&v57 store:&v56 recordUUIDOut:? error:?];
    v16 = v57;
    v10 = v56;
  }

LABEL_25:
  (*(*(a1 + 80) + 16))(*(a1 + 80));
}

void sub_10003B404(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 name];
  v7 = [a2 group];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "error query data in nominal lens data store %@ group: %@ error=%@", &v8, 0x20u);
}

id sub_10003C1FC(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003C300;
  v12 = sub_10003C310;
  v13 = 0;
  v1 = *(a1 + 32);
  v2 = v1[13];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C318;
  v5[3] = &unk_100116638;
  v7 = &v8;
  v6 = v1;
  dispatch_sync(v2, v5);
  v3 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v3;
}

uint64_t sub_10003C300(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003C318(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncManager];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10003C510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_100127E38;
  if (v3)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004F428();
    }
  }

  else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cloudSyncManager is started", v5, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_10003C754(uint64_t a1)
{
  v2 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "starting first unlock since boot actions", v4, 2u);
  }

  [*(*(a1 + 32) + 72) deviceFirstUnlock];
  [*(a1 + 32) convertAssetCaches];
  [*(a1 + 32) queryForA06AssetHandlesInClassC];
  return [*(a1 + 32) uploadOldAssetsOnStartup];
}

void sub_10003C8CC(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([*(a1 + 40) isAssetClassC:{v7, v9}])
        {
          v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
          [*(*(a1 + 40) + 136) setObject:v8 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10003CCB8(uint64_t a1, int a2)
{
  v4 = MKBDeviceUnlockedSinceBoot();
  v5 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received device first unlocked notification, run the FUB actions", v6, 2u);
  }

  if (v4 == 1)
  {
    notify_cancel(a2);
    [*(a1 + 32) deviceFirstUnlockSinceBoot];
  }
}

id sub_10003CE20(uint64_t a1)
{
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    sub_10004F5B0(a1);
  }

  return [*(a1 + 32) convertA06AssetsToClassA:*(*(a1 + 32) + 144)];
}

id sub_10003D47C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v4 = [*(v2 + 16) profileType];
  v5 = *(*(a1 + 32) + 8);

  return [v3 convertAssetCaches:v4 deviceState:v5];
}

void sub_10003DA6C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003DB94;
  v5[3] = &unk_100116688;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Delete %lu volatile profile(s)", buf, 0xCu);
  }
}

void sub_10003DB94(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 deleteSingleProfile:a2 error:&obj wipeOutOpt:1];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

void sub_10003DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_10003DE94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profileName];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 40) + 16);
      v8 = v6;
      v9 = [v7 debugDescription];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Skip deletion on excluded profile %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 48) + 8);
    obj = *(v11 + 40);
    v12 = [v10 deleteSingleProfile:v3 error:&obj wipeOutOpt:1];
    objc_storeStrong((v11 + 40), obj);
    if (v12)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }
}

void sub_10003E5A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Skip routine uploadOldAssetsWithOption as fetching signInUser failed: %@", &v9, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) uploadOldAssetsWithOption:3 includeKVStoreData:1 error:0];
  }
}

void sub_10003E684(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_10004FB90();
  }
}

void sub_10003EA54(uint64_t a1)
{
  v2 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    LODWORD(v5[0]) = 67109120;
    DWORD1(v5[0]) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to PID(%d) has been invalidated", v5, 8u);
  }

  [*(*(a1 + 32) + 56) unregisterObserverWith:*(a1 + 40)];
  [*(a1 + 32) deleteVolatileProfiles:*(a1 + 40)];
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_10000AE58(CALogger, v5);
}

void sub_10003EB3C(uint64_t a1)
{
  v2 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    LODWORD(v5[0]) = 67109120;
    DWORD1(v5[0]) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to PID(%d) has been interrupted", v5, 8u);
  }

  [*(*(a1 + 32) + 56) unregisterObserverWith:*(a1 + 40)];
  [*(a1 + 32) deleteVolatileProfiles:*(a1 + 40)];
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_10000AE58(CALogger, v5);
}

void sub_10003F898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10003F8EC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (!v2 || (v4 = [v2 unsignedLongLongValue], v4 != objc_msgSend(*(a1 + 48), "type")))
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FF40();
    }

    v30 = createManagedAssetError();
    v14 = 0;
    v6 = 0;
    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
    goto LABEL_22;
  }

  v5 = [[MASDAsset alloc] initAsset:*(a1 + 48) owner:*(*(a1 + 32) + 16) process:*(*(*(a1 + 80) + 8) + 40)];
  v6 = v5;
  if (*(*(a1 + 32) + 131) == 1)
  {
    v7 = [v5 assetMetadata];
    [v7 setAssetState:32];
  }

  if (*(a1 + 104) == 1)
  {
    v8 = [v6 assetMetadata];
    [v8 setAssetState:{objc_msgSend(v8, "assetState") | 0x2000}];
  }

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 72);
  v11 = *(a1 + 56);
  v12 = *(*(a1 + 72) + 8);
  obj = *(v12 + 40);
  v54 = 0;
  v13 = [v10 createAsset:v6 token:v9 protectionClass:v11 assetPathOut:&v54 error:&obj];
  v14 = v54;
  objc_storeStrong((v12 + 40), obj);
  if (v13)
  {
    if ((*(a1 + 104) & 1) == 0 && [*(*(a1 + 32) + 16) profileType] == -1)
    {
      v15 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "uploading created asset to the cloud if applicable", buf, 2u);
      }

      v16 = *(a1 + 32);
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10003FF54;
      v51[3] = &unk_100116118;
      v52 = v6;
      [v16 saveAssetToCloud:v52 options:0 completionHandler:v51];
    }

    v17 = [v6 assetHandle];
    v18 = *(*(a1 + 88) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [v6 assetMetadata];
    v21 = [v20 type];
    if ((v21 - 106) > 0xE || ((1 << (v21 - 106)) & 0x4113) == 0)
    {
    }

    else
    {

      v23 = [v6 assetMetadata];
      v24 = [v23 lastUpdatedTime];
      [v24 timeIntervalSince1970];
      v26 = v25;

      v27 = [NSNumber numberWithDouble:v26];
      [*(*(a1 + 32) + 136) setObject:v27 forKeyedSubscript:*(*(*(a1 + 88) + 8) + 40)];

      v28 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        v29 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412290;
        v62 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "create asset and add handle %@ with class C Handles", buf, 0xCu);
      }
    }

    v36 = *(*(a1 + 32) + 56);
    v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) type]);
    v58 = *(*(*(a1 + 88) + 8) + 40);
    v59 = v37;
    v38 = [NSArray arrayWithObjects:&v58 count:1];
    v60 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    [v36 notifyAssetChangeWith:1 handles:v39];

    if (([v6 syncOption] & 2) != 0)
    {
      v40 = *(*(a1 + 32) + 112);
      v46 = _NSConcreteStackBlock;
      v47 = 3221225472;
      v48 = sub_10003FFB8;
      v49 = &unk_100116118;
      v50 = v6;
      [v40 assetDidCreate:v50 assetPath:v14 completion:&v46];
    }

    [*(*(a1 + 32) + 200) removeObjectForKey:{*(a1 + 40), v46, v47, v48, v49}];
  }

  v41 = *(a1 + 32);
  if (*(v41 + 131) == 1 && *(*(*(a1 + 88) + 8) + 40))
  {
    v42 = *(v41 + 56);
    v32 = [v6 assetMetadata];
    v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 type]);
    v55 = *(*(*(a1 + 88) + 8) + 40);
    v56 = v43;
    v44 = [NSArray arrayWithObjects:&v55 count:1];
    v57 = v44;
    v45 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [v42 notifyAssetChangeWith:0x100000 handles:v45];

LABEL_22:
  }

  v33 = [*(*(a1 + 32) + 72) malocalAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v33];

  v34 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v34];

  v35 = *(a1 + 64);
  if (v35)
  {
    (*(v35 + 16))(v35, *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  }

  [CALogger logWithCoreAnalytics:"[MAServer CreateAsset:uuid:sessionToken:completion:]_block_invoke" clientBundle:*(*(*(a1 + 80) + 8) + 40) startTS:*(a1 + 96) error:*(*(*(a1 + 72) + 8) + 40)];
}

void sub_10003FF54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_10004FF7C(a1);
  }
}

void sub_10003FFB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FFE8(a1, v4);
    }
  }
}

void sub_100040688(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v6 = *(v4 + 16);
  v7 = v3 + 3;
  v8 = *(v3[3] + 8);
  obj = *(v8 + 40);
  v57 = 0;
  v9 = [v5 getAsset:v2 profile:v6 option:0 assetPathOut:&v57 bypassProfileCheck:0 error:&obj];
  v10 = v57;
  objc_storeStrong((v8 + 40), obj);
  v11 = &selRef_queryInUseStatusWithAuditToken_completion_;
  if (!*(*(v3[3] + 8) + 40))
  {
    v50 = v10;
    v13 = *(*(a1 + 32) + 24);
    v14 = kManagedAssetDeleteEntitlement;
    v15 = *(a1 + 48);
    v16 = [v9 assetMetadata];
    v17 = v9;
    v18 = [v16 type];
    v19 = NSStringFromSelector(*(a1 + 80));
    v20 = *(*(a1 + 64) + 8);
    v55 = *(v20 + 40);
    LODWORD(v13) = [v13 verifyAccessWithSingleAssetType:v14 client:v15 assetType:v18 function:v19 error:&v55];
    objc_storeStrong((v20 + 40), v55);

    if (v13)
    {
      v21 = [v17 assetMetadata];
      v12 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v21 type], objc_msgSend(*(*(a1 + 32) + 16), "profileType"), *(*(a1 + 32) + 8));

      v11 = &selRef_queryInUseStatusWithAuditToken_completion_;
      v9 = v17;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
      {
        sub_10005023C();
      }

      v22 = *(a1 + 32);
      v23 = *(*(*(a1 + 72) + 8) + 40);
      v24 = *(*(a1 + 64) + 8);
      v54 = *(v24 + 40);
      v25 = [v22 canTouchAsset:v12 clientBundle:v23 error:&v54];
      objc_storeStrong((v24 + 40), v54);
      v7 = v3 + 3;
      if (!v25)
      {
        v10 = v50;
        goto LABEL_19;
      }

      v26 = *(*(a1 + 32) + 72);
      v27 = [v9 assetHandle];
      v62 = v27;
      v28 = [NSArray arrayWithObjects:&v62 count:1];
      v29 = *(*(a1 + 64) + 8);
      v53 = *(v29 + 40);
      LODWORD(v26) = [v26 deleteAssets:v28 error:&v53];
      objc_storeStrong((v29 + 40), v53);

      if (!v26)
      {
        goto LABEL_15;
      }

      v30 = [v9 assetMetadata];
      v31 = [v30 type];
      if ((v31 - 106) <= 0xE && ((1 << (v31 - 106)) & 0x4113) != 0)
      {

        v32 = *(*(a1 + 32) + 136);
        v33 = [v9 assetHandle];
        [v32 removeObjectForKey:v33];

        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
        {
          sub_1000502D8(v3);
        }
      }

      else
      {
      }

      v49 = *(*(a1 + 32) + 56);
      v34 = [v9 assetMetadata];
      v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34 type]);
      v60 = v35;
      v36 = [v9 assetHandle];
      v59 = v36;
      v37 = [NSArray arrayWithObjects:&v59 count:1];
      v61 = v37;
      [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v39 = v38 = v9;
      [v49 notifyAssetChangeWith:8 handles:v39];

      v9 = v38;
      v40 = [v38 assetMetadata];
      LOBYTE(v36) = [v40 syncOption];

      if ((v36 & 2) != 0)
      {
        v48 = *(*(a1 + 32) + 112);
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100040C8C;
        v51[3] = &unk_100116118;
        v52 = v9;
        v10 = v50;
        [v48 assetDidDelete:v52 assetPath:v50 completion:v51];
      }

      else
      {
LABEL_15:
        v10 = v50;
      }
    }

    else
    {
      v12 = 0;
      v9 = v17;
      v7 = v3 + 3;
      v10 = v50;
    }

    v11 = &selRef_queryInUseStatusWithAuditToken_completion_;
    goto LABEL_19;
  }

  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_1000501CC((v3 + 3));
  }

  v12 = 0;
LABEL_19:
  v41 = [*(*(a1 + 32) + 72) malocalAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v41];

  v42 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v42];

  v43 = v11[455];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = *v3;
    v45 = *(*(*v7 + 8) + 40);
    *buf = 138412546;
    *&buf[4] = v44;
    *&buf[12] = 2112;
    *&buf[14] = v45;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "delete asset (handle: %@) with error: %@", buf, 0x16u);
  }

  v46 = *(a1 + 56);
  if (v46)
  {
    (*(v46 + 16))(v46, *(*(*v7 + 8) + 40));
  }

  v47 = *(a1 + 48);
  if (v47)
  {
    [v47 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  [CALogger logWithCoreAnalytics:"[MAServer DeleteAsset:uuid:completion:]_block_invoke" client:buf startTS:*(a1 + 88) error:*(*(*(a1 + 64) + 8) + 40)];
}

void sub_100040C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050348(a1, v4);
    }
  }
}

uint64_t sub_100041338(void *a1, uint64_t *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = kManagedAssetsSyncKey;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      v10 = [v3 objectForKeyedSubscript:v9];
      if ([v9 isEqualToString:v7])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *a2 = createManagedAssetError();
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
LABEL_16:
            sub_100050418(a2);
          }

LABEL_17:

          v11 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *a2 = createManagedAssetError();
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        }
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = 1;
LABEL_18:

  return v11;
}

void sub_100041574(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v6 = *(v4 + 16);
  v7 = v3 + 3;
  v8 = *(v3[3] + 8);
  obj = *(v8 + 40);
  v71 = 0;
  v9 = [v5 getAsset:v2 profile:v6 option:0 assetPathOut:&v71 bypassProfileCheck:0 error:&obj];
  v10 = v71;
  objc_storeStrong((v8 + 40), obj);
  if (*(*(v3[3] + 8) + 40))
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000501CC((v3 + 3));
    }

    v11 = 0;
    goto LABEL_5;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v61 = v10;
    v30 = *(*(a1 + 32) + 24);
    v31 = kManagedAssetDeleteEntitlement;
    v32 = *(a1 + 48);
    v33 = [v9 assetMetadata];
    v59 = v9;
    v34 = [v33 type];
    v35 = NSStringFromSelector(*(a1 + 80));
    v36 = *(*(a1 + 64) + 8);
    v69 = *(v36 + 40);
    LODWORD(v30) = [v30 verifyAccessWithSingleAssetType:v31 client:v32 assetType:v34 function:v35 error:&v69];
    objc_storeStrong((v36 + 40), v69);

    if (v30)
    {
      v9 = v59;
      v37 = [v59 assetMetadata];
      v11 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v37 type], objc_msgSend(*(*(a1 + 32) + 16), "profileType"), *(*(a1 + 32) + 8));

      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
      {
        sub_10005023C();
      }

      v38 = *(a1 + 32);
      v39 = *(*(*(a1 + 72) + 8) + 40);
      v40 = *(*(a1 + 64) + 8);
      v68 = *(v40 + 40);
      v41 = [v38 canTouchAsset:v11 clientBundle:v39 error:&v68];
      objc_storeStrong((v40 + 40), v68);
      if (v41)
      {
        v42 = *(*(a1 + 32) + 72);
        v43 = [v59 assetHandle];
        v76 = v43;
        v44 = [NSArray arrayWithObjects:&v76 count:1];
        v45 = *(*(a1 + 64) + 8);
        v67 = *(v45 + 40);
        LODWORD(v42) = [v42 deleteAssets:v44 error:&v67];
        objc_storeStrong((v45 + 40), v67);

        if (!v42)
        {
          goto LABEL_33;
        }

        v46 = [v59 assetMetadata];
        v47 = [v46 type];
        if ((v47 - 106) <= 0xE && ((1 << (v47 - 106)) & 0x4113) != 0)
        {

          v48 = *(*(a1 + 32) + 136);
          v49 = [v59 assetHandle];
          [v48 removeObjectForKey:v49];

          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
          {
            sub_1000502D8(v3);
          }
        }

        else
        {
        }

        v57 = *(*(a1 + 32) + 56);
        v50 = [v59 assetMetadata];
        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v50 type]);
        v74 = v51;
        v52 = [v59 assetHandle];
        v73 = v52;
        v53 = [NSArray arrayWithObjects:&v73 count:1];
        v75 = v53;
        v54 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        [v57 notifyAssetChangeWith:8 handles:v54];

        v9 = v59;
        v55 = [v59 assetMetadata];
        LOBYTE(v52) = [v55 syncOption];

        if ((v52 & 2) != 0)
        {
          v56 = *(*(a1 + 32) + 112);
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_100041D2C;
          v65[3] = &unk_100116118;
          v66 = v59;
          v10 = v61;
          [v56 assetDidDelete:v66 assetPath:v61 completion:v65];
        }

        else
        {
LABEL_33:
          v10 = v61;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v9 = v59;
    }

    v10 = v61;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_13:
  if (_os_feature_enabled_impl())
  {
    v19 = [v9 assetMetadata];
    v20 = [v19 ckrecordIdentifier];

    if ((*(a1 + 97) & 1) == 0)
    {
      if (v20)
      {
        v21 = [v9 assetOwner];
        v22 = [v21 profileType];

        if (v22 == -1)
        {
          v60 = v10;
          v23 = off_100127E38;
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
          {
            v24 = v23;
            v25 = [v9 assetHandle];
            *buf = 138412546;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Going to delete asset handle %@ with recordName %@ in the cloud", buf, 0x16u);
          }

          v58 = *(a1 + 32);
          v26 = [v9 assetMetadata];
          v27 = [v26 type];
          v28 = [v9 assetOwner];
          v29 = [v28 profileType];
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3221225472;
          v62[2] = sub_100041D90;
          v62[3] = &unk_100116830;
          v64 = *(a1 + 64);
          v63 = v9;
          [v58 deleteAssetInCloudWithRecordName:v20 assetType:v27 profileType:v29 completionHandler:v62];

          v10 = v60;
        }
      }
    }
  }

LABEL_5:
  v12 = [*(*(a1 + 32) + 72) malocalAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v12];

  v13 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v13];

  v14 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v15 = *v3;
    v16 = *(*(*v7 + 8) + 40);
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "delete asset (handle: %@) with error: %@", buf, 0x16u);
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, *(*(*v7 + 8) + 40));
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    [v18 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer DeleteAsset:withOptions:completion:]_block_invoke" client:buf startTS:*(a1 + 88) error:*(*(*(a1 + 64) + 8) + 40)];
}

void sub_100041D2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050348(a1, v4);
    }
  }
}

void sub_100041D90(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100050488(a1);
  }
}

id sub_10004238C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  [v2 deleteSingleProfile:v3 error:&obj wipeOutOpt:0];
  objc_storeStrong((v4 + 40), obj);
  v5 = [*(a1[4] + 72) malocalAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v5];

  v6 = [*(a1[4] + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v6];

  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(a1[8] + 8) + 40));
  }

  v8 = a1[6];
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return [CALogger logWithCoreAnalytics:"[MAServer DeleteAssetsWithOptions:completion:]_block_invoke" client:v10 startTS:a1[9] error:*(*(a1[8] + 8) + 40)];
}

void sub_1000424A4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:kManagedAssetsSyncKey];
  v104 = 0;
  v103 = 0;
  [*(a1 + 40) parseSyncOptions:objc_msgSend(v2 localOnly:"intValue") cloudOnly:&v104 localAndCloud:{&v103, &v104 + 1}];
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v4 = "no";
    if (HIBYTE(v104))
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    if (v104)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    *buf = 136315650;
    if (v103)
    {
      v4 = "yes";
    }

    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "sync options are local&sync:%s, localonly:%s, synconly:%s", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 72);
  v9 = kManagedAssetsRXUUIDKey;
  v110[0] = kManagedAssetsRXUUIDKey;
  v10 = [v7 objectForKeyedSubscript:kManagedAssetsRXUUIDKey];
  v110[1] = kManagedAssetsAssetStateKey;
  v111[0] = v10;
  v111[1] = &off_10011E000;
  v11 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
  v12 = [*(a1 + 40) profile];
  v13 = [v12 profileName];
  v14 = *(*(a1 + 72) + 8);
  obj = *(v14 + 40);
  v15 = [v8 queryAssets:v11 profile:v13 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v84 = a1 + 72;
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v18 = &selRef_queryInUseStatusWithAuditToken_completion_;
    v19 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      v77 = *(a1 + 32);
      v78 = v19;
      v79 = v77;
      v18 = &selRef_queryInUseStatusWithAuditToken_completion_;
      v80 = [v79 objectForKeyedSubscript:v9];
      v81 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      *&buf[4] = v80;
      *&buf[12] = 2112;
      *&buf[14] = v81;
      _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "MA fails to query assets for rxuuid %@, error = %@", buf, 0x16u);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v85 = *(*(*(a1 + 64) + 8) + 40);
    v18 = &selRef_queryInUseStatusWithAuditToken_completion_;
    v89 = [v85 countByEnumeratingWithState:&v98 objects:v109 count:16];
    v20 = 0;
    v24 = 0;
    if (v89)
    {
      v90 = 0;
      v88 = *v99;
      *&v23 = 138412290;
      v82 = v23;
      v83 = v2;
      do
      {
        v25 = 0;
        do
        {
          v26 = v24;
          v27 = v20;
          if (*v99 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v28 = *(*(&v98 + 1) + 8 * v25);
          v29 = *(a1 + 40);
          v30 = *(v29 + 72);
          v31 = *(v29 + 16);
          v32 = *(*(a1 + 72) + 8);
          v96 = *(v32 + 40);
          v97 = v24;
          v33 = [v30 getAsset:v28 profile:v31 option:0 assetPathOut:&v97 bypassProfileCheck:0 error:{&v96, v82}];
          v24 = v97;

          objc_storeStrong((v32 + 40), v96);
          if (*(*(*(a1 + 72) + 8) + 40))
          {
            v2 = v83;
            if (os_log_type_enabled(v18[455], OS_LOG_TYPE_ERROR))
            {
              sub_1000501CC(v84);
            }

            v18 = &selRef_queryInUseStatusWithAuditToken_completion_;
            goto LABEL_49;
          }

          if ((v103 & 1) == 0)
          {
            v34 = [v33 assetMetadata];
            v35 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v34 type], objc_msgSend(*(*(a1 + 40) + 16), "profileType"), *(*(a1 + 40) + 8));

            v36 = v18[455];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v68 = v36;
              v69 = [v33 assetMetadata];
              v70 = [v69 type];
              *buf = 134218242;
              *&buf[4] = v70;
              *&buf[12] = 2112;
              *&buf[14] = v35;
              _os_log_debug_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "asset type %lu adopts pt %@", buf, 0x16u);
            }

            v37 = *(a1 + 40);
            v38 = *(*(*(a1 + 80) + 8) + 40);
            v39 = *(*(a1 + 72) + 8);
            v95 = *(v39 + 40);
            v40 = [v37 canTouchAsset:v35 clientBundle:v38 error:&v95];
            objc_storeStrong((v39 + 40), v95);
            if (!v40)
            {
              v90 = v35;
              v2 = v83;
LABEL_49:

              v20 = v27;
              goto LABEL_50;
            }

            v86 = v27;
            v87 = v24;
            v41 = *(*(a1 + 40) + 72);
            v42 = [v33 assetHandle];
            v108 = v42;
            v43 = [NSArray arrayWithObjects:&v108 count:1];
            v44 = *(*(a1 + 72) + 8);
            v94 = *(v44 + 40);
            LODWORD(v41) = [v41 deleteAssets:v43 error:&v94];
            objc_storeStrong((v44 + 40), v94);

            if (v41)
            {
              v45 = [v33 assetMetadata];
              v46 = [v45 type];
              if ((v46 - 106) <= 0xE && ((1 << (v46 - 106)) & 0x4113) != 0)
              {

                v47 = *(*(a1 + 40) + 136);
                v48 = [v33 assetHandle];
                [v47 removeObjectForKey:v48];

                v49 = v18[455];
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v82;
                  *&buf[4] = v28;
                  _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "deleted asset handle %@ from _assetHandlesInClassC", buf, 0xCu);
                }
              }

              else
              {
              }

              v50 = *(*(a1 + 40) + 56);
              v51 = [v33 assetMetadata];
              v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v51 type]);
              v106 = v52;
              v53 = [v33 assetHandle];
              v105 = v53;
              v54 = [NSArray arrayWithObjects:&v105 count:1];
              v107 = v54;
              v55 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
              [v50 notifyAssetChangeWith:8 handles:v55];

              v90 = v35;
              v18 = &selRef_queryInUseStatusWithAuditToken_completion_;
            }

            else
            {
              v90 = v35;
            }

            v27 = v86;
            v24 = v87;
          }

          v56 = [v33 assetMetadata];
          v20 = [v56 ckrecordIdentifier];

          if ((v104 & 1) == 0)
          {
            if (v20)
            {
              v57 = [v33 assetOwner];
              v58 = [v57 profileType];

              if (v58 == -1)
              {
                v59 = v24;
                v60 = v18[455];
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v61 = v60;
                  v62 = [v33 assetHandle];
                  *buf = 138412546;
                  *&buf[4] = v62;
                  *&buf[12] = 2112;
                  *&buf[14] = v20;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Going to delete asset handle %@ with recordName %@ in the cloud", buf, 0x16u);
                }

                v63 = *(a1 + 40);
                v64 = [v33 assetMetadata];
                v65 = [v64 type];
                v66 = [v33 assetOwner];
                v67 = [v66 profileType];
                v91[0] = _NSConcreteStackBlock;
                v91[1] = 3221225472;
                v91[2] = sub_100042EBC;
                v91[3] = &unk_100116830;
                v93 = *(a1 + 72);
                v92 = v33;
                [v63 deleteAssetInCloudWithRecordName:v20 assetType:v65 profileType:v67 completionHandler:v91];

                v18 = &selRef_queryInUseStatusWithAuditToken_completion_;
                v24 = v59;
              }
            }
          }

          v25 = v25 + 1;
        }

        while (v89 != v25);
        v71 = [v85 countByEnumeratingWithState:&v98 objects:v109 count:16];
        v2 = v83;
        v89 = v71;
      }

      while (v71);
    }

    else
    {
      v90 = 0;
    }

LABEL_50:
    v21 = v24;

    v22 = v90;
  }

  v72 = v18[455];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    v73 = *(a1 + 32);
    v74 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412546;
    *&buf[4] = v73;
    *&buf[12] = 2112;
    *&buf[14] = v74;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "deleted assets with options %@ with error: %@", buf, 0x16u);
  }

  v75 = *(a1 + 56);
  if (v75)
  {
    (*(v75 + 16))(v75, *(*(*v84 + 8) + 40));
  }

  v76 = *(a1 + 48);
  if (v76)
  {
    [v76 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer DeleteAssetsWithOptions:completion:]_block_invoke" client:buf startTS:*(a1 + 88) error:*(*(*(a1 + 72) + 8) + 40)];
}

void sub_100042EBC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100050488(a1);
  }
}

id sub_10004352C(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) resetCloudSyncStateWithCompletionHandler:&stru_1001168A0];
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 72);
    v4 = *(*(a1 + 64) + 8);
    obj = *(v4 + 40);
    v5 = [v3 deleteAllAssetsExcept:v2 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    if ((v5 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10005064C((a1 + 40));
    }

    [*(*(a1 + 32) + 40) deleteAllStores];
    [*(*(a1 + 32) + 32) deleteAllFiles];
    v6 = [*(*(a1 + 32) + 72) maPrefsPath];
    [MAUtilityHelper recreatePath:v6 logger:off_100127E38];

    v7 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
    [MAUtilityHelper recreatePath:v7 logger:off_100127E38];

    v8 = [*(*(a1 + 32) + 72) maPredownloadedAssetPath];
    [MAUtilityHelper recreatePath:v8 logger:off_100127E38];

    v9 = [*(*(a1 + 32) + 72) malocalSyncUpTmpAssetPath];
    [MAUtilityHelper recreatePath:v9 logger:off_100127E38];

    if ([*(a1 + 40) count])
    {
      v10 = [*(*(a1 + 32) + 136) allKeys];
      v11 = [NSMutableSet setWithArray:v10];

      v12 = [NSSet setWithArray:*(a1 + 40)];
      [v11 minusSet:v12];

      v13 = *(*(a1 + 32) + 136);
      v14 = [v11 allObjects];
      [v13 removeObjectsForKeys:v14];
    }

    else
    {
      [*(*(a1 + 32) + 136) removeAllObjects];
    }
  }

  v15 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 40);
    v17 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Complete DeleteAllAssetsExcept with exception list: %@, error: %@", buf, 0x16u);
  }

  v18 = [*(*(a1 + 32) + 72) malocalAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v18];

  v19 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v19];

  if (_os_feature_enabled_impl() && (*(a1 + 81) & 1) == 0)
  {
    [*(a1 + 32) deleteAllDataInCloudWithCompletion:*(a1 + 56)];
  }

  else
  {
    v20 = *(a1 + 56);
    if (v20)
    {
      (*(v20 + 16))(v20, *(*(*(a1 + 64) + 8) + 40));
    }
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    [v21 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  return [CALogger logWithCoreAnalytics:"[MAServer DeleteAllAssetsExcept:withOptions:completion:]_block_invoke" client:buf startTS:*(a1 + 72) error:*(*(*(a1 + 64) + 8) + 40)];
}

void sub_1000438C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = off_100127E38;
  if (v2)
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_1000506BC();
    }
  }

  else if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sync states in MACloudSync module are cleared", v4, 2u);
  }
}

void sub_1000439F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v7 = createManagedAssetError();
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v7);
    }

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10005072C();
    }
  }

  else
  {
    v8 = *(*(a1 + 32) + 96);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100043B24;
    v11[3] = &unk_100116940;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    dispatch_async(v8, v11);
    v7 = v12;
  }
}

void sub_100043B24(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  if (*(a1 + 40))
  {
    v3 = [[MACloudSyncOperation alloc] initWithIdentifier:v2 type:1 completionHandle:*(a1 + 40)];
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Store completion for deleteAllDataInCloud with UUID %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 216) setObject:v3 forKeyedSubscript:v2];
  }

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043CA0;
  v7[3] = &unk_100116918;
  v7[4] = v5;
  v8 = v2;
  v9 = *(a1 + 40);
  v6 = v2;
  [v5 deleteAllInCloudWithCompletionHandler:v7];
}

void sub_100043CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 96);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100043D6C;
  v8[3] = &unk_1001168F0;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void sub_100043D6C(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    [*(a1[5] + 216) removeObjectForKey:a1[6]];
    v3 = a1[7];
    if (v3)
    {
      (*(v3 + 16))(v3, *v2);
    }

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10005079C(v2);
    }
  }

  else
  {
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1[5] + 216);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MACloudSync started to delete all assets in iCloud, waiting for the callback, waiting ops: %@", &v6, 0xCu);
    }
  }
}

uint64_t sub_100044EB8(void *a1, uint64_t *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v9 = [v3 objectForKeyedSubscript:v8];
      if ([qword_100129470 containsObject:v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *a2 = createManagedAssetError();
          if (!os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else if ([qword_100129478 containsObject:v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *a2 = createManagedAssetError();
          if (!os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

LABEL_21:
          sub_100050418(a2);
          goto LABEL_22;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *a2 = createManagedAssetError();
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

LABEL_22:

          v10 = 0;
          goto LABEL_23;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = 1;
LABEL_23:

  return v10;
}

void sub_1000460D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

void sub_100046138(uint64_t a1)
{
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    sub_100050BC4(a1);
  }

  v109 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(a1 + 112) == 1)
  {
    v4 = v3[14];
    v5 = *(*(a1 + 88) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    v108 = v7;
    v8 = [v4 getAssetData:v2 assetKey:0 error:&v108];
    v9 = 0;
    v10 = v108;
  }

  else
  {
    v11 = v3[9];
    v12 = v3[2];
    v13 = *(*(a1 + 88) + 8);
    v14 = *(v13 + 40);
    v6 = (v13 + 40);
    v106 = v14;
    v107 = 0;
    v8 = [v11 getAsset:v2 profile:v12 option:1 assetPathOut:&v107 bypassProfileCheck:0 error:&v106];
    v9 = v107;
    v10 = v106;
  }

  v15 = v10;
  v16 = *v6;
  *v6 = v15;

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v17 = 0;
    goto LABEL_45;
  }

  v18 = [v8 assetMetadata];
  v17 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v18 type], objc_msgSend(*(*(a1 + 32) + 16), "profileType"), *(*(a1 + 32) + 8));

  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
  {
    sub_100050C4C();
  }

  v19 = *(a1 + 32);
  v20 = *(*(*(a1 + 72) + 8) + 40);
  v21 = *(*(a1 + 88) + 8);
  obj = *(v21 + 40);
  v22 = [v19 canTouchAsset:v17 clientBundle:v20 error:&obj];
  objc_storeStrong((v21 + 40), obj);
  if (v22)
  {
    if ((*(a1 + 113) & 1) == 0)
    {
      v23 = [v8 assetMetadata];
      [v23 setAssetState:{objc_msgSend(v23, "assetState") | 0x2000}];
    }

    v24 = *(*(a1 + 32) + 24);
    v25 = *(a1 + 48);
    if (*(a1 + 112) == 1)
    {
      v26 = kManagedAssetShareEntitlement;
      v27 = NSStringFromSelector(*(a1 + 96));
      v28 = *(*(a1 + 88) + 8);
      v104 = *(v28 + 40);
      v29 = [v24 verifyBooleanEntitlementWith:v26 client:v25 function:v27 error:&v104];
      objc_storeStrong((v28 + 40), v104);

      if ((v29 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v30 = kManagedAssetUpdateEntitlement;
      v31 = [v8 assetMetadata];
      v32 = [v31 type];
      NSStringFromSelector(*(a1 + 96));
      v93 = v8;
      v33 = v17;
      v35 = v34 = v9;
      v36 = *(*(a1 + 88) + 8);
      v103 = *(v36 + 40);
      v37 = [v24 verifyAccessWithSingleAssetType:v30 client:v25 assetType:v32 function:v35 error:&v103];
      objc_storeStrong((v36 + 40), v103);

      v9 = v34;
      v17 = v33;
      v8 = v93;

      if (!v37)
      {
        goto LABEL_45;
      }
    }

    if (*(a1 + 112) == 1 && *(a1 + 56))
    {
      v38 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
      v39 = [NSString stringWithFormat:@"%@%@.asset", v38, *(a1 + 56)];

      v40 = *(a1 + 40);
      v41 = *(*(a1 + 32) + 112);
      v42 = *(*(a1 + 88) + 8);
      v102 = *(v42 + 40);
      [v41 updateAssetData:v40 tmpAssetPath:v39 error:&v102];
      objc_storeStrong((v42 + 40), v102);
      goto LABEL_20;
    }

    v43 = *(a1 + 32);
    v44 = *(*(*(a1 + 80) + 8) + 40);
    v45 = [v8 assetMetadata];
    v46 = *(*(a1 + 88) + 8);
    v101 = *(v46 + 40);
    v47 = [v43 modifyUpdatedMetadata:v44 assetMetadata:v45 eventtype:&v109 error:&v101];
    objc_storeStrong((v46 + 40), v101);
    [v8 setAssetMetadata:v47];

    v48 = [v8 assetMetadata];

    if (v48)
    {
      v49 = *(a1 + 56);
      if (!v49)
      {
        goto LABEL_53;
      }

      v50 = *(*(a1 + 32) + 72);
      v51 = *(*(a1 + 88) + 8);
      v100 = *(v51 + 40);
      v52 = [v50 renameAssetFileFromTempAsset:v8 token:v49 error:&v100];
      objc_storeStrong((v51 + 40), v100);
      if (v52)
      {
        v109 |= 2uLL;
      }

      if (!*(*(*(a1 + 88) + 8) + 40))
      {
LABEL_53:
        if (*(a1 + 113) == 1 && [*(*(a1 + 32) + 16) profileType] == -1)
        {
          v53 = [v8 assetMetadata];
          v54 = [v53 assetState];

          v55 = [v8 assetMetadata];
          [v55 setAssetState:v54 & 0xFFFFFFFFFFFFE1DFLL];
        }

        v56 = *(a1 + 32);
        v57 = *(v56 + 72);
        v58 = *(*(*(a1 + 80) + 8) + 40);
        v59 = *(*(*(a1 + 72) + 8) + 40);
        v60 = *(v56 + 16);
        v61 = *(*(a1 + 88) + 8);
        v99 = *(v61 + 40);
        v62 = [v57 updateAsset:v8 event:v109 options:v58 process:v59 profile:v60 error:&v99];
        objc_storeStrong((v61 + 40), v99);
        if (v62)
        {
          v63 = [v8 assetMetadata];
          v64 = [v63 type];
          if ((v64 - 106) <= 0xE && ((1 << (v64 - 106)) & 0x4113) != 0)
          {

            v65 = [v8 assetMetadata];
            v66 = [v65 lastUpdatedTime];
            [v66 timeIntervalSince1970];
            v68 = v67;

            v69 = [NSNumber numberWithDouble:v68];
            v70 = *(*(a1 + 32) + 136);
            v71 = [v8 assetHandle];
            [v70 setObject:v69 forKeyedSubscript:v71];

            v72 = off_100127E38;
            if (!os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
            {
              goto LABEL_35;
            }

            v63 = v72;
            v73 = [NSDate dateWithTimeIntervalSince1970:v68];
            v74 = *(a1 + 40);
            *buf = 138412546;
            *&buf[4] = v73;
            *&buf[12] = 2112;
            *&buf[14] = v74;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "update asset with an updatedTime of %@ and add handle %@ to _assetHandlesInClassC", buf, 0x16u);
          }

LABEL_35:
          if (*(a1 + 113) == 1 && [*(*(a1 + 32) + 16) profileType] == -1)
          {
            v75 = *(a1 + 32);
            v97[0] = _NSConcreteStackBlock;
            v97[1] = 3221225472;
            v97[2] = sub_100046AF8;
            v97[3] = &unk_100116118;
            v98 = v8;
            [v75 saveAssetToCloud:v98 options:0 completionHandler:v97];
          }

          v76 = v109;
          v92 = *(*(a1 + 32) + 56);
          v94 = v9;
          v77 = [v8 assetMetadata];
          v78 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v77 type]);
          v79 = v78;
          if (v76)
          {
            v115 = v78;
            v80 = [v8 assetHandle];
            v114 = v80;
            v81 = [NSArray arrayWithObjects:&v114 count:1];
            v116 = v81;
            v82 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
            v83 = v92;
            v84 = v76;
          }

          else
          {
            v112 = v78;
            v80 = [v8 assetHandle];
            v111 = v80;
            v81 = [NSArray arrayWithObjects:&v111 count:1];
            v113 = v81;
            v82 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
            v83 = v92;
            v84 = 0x20000;
          }

          [v83 notifyAssetChangeWith:v84 handles:v82];

          v85 = [v8 assetMetadata];
          v86 = [v85 syncOption];

          if ((v86 & 2) == 0)
          {
            v9 = v94;
            goto LABEL_45;
          }

          v9 = v94;
          if (!v94)
          {
            goto LABEL_45;
          }

          v87 = *(*(a1 + 32) + 112);
          v95[0] = _NSConcreteStackBlock;
          v95[1] = 3221225472;
          v95[2] = sub_100046B5C;
          v95[3] = &unk_100116118;
          v96 = v8;
          [v87 assetDidUpdate:v96 assetPath:v94 completion:v95];
          v39 = v96;
LABEL_20:
        }
      }
    }
  }

LABEL_45:
  v88 = [*(*(a1 + 32) + 72) malocalAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v88];

  v89 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v89];

  v90 = *(a1 + 64);
  if (v90)
  {
    (*(v90 + 16))(v90, *(*(*(a1 + 88) + 8) + 40));
  }

  v91 = *(a1 + 48);
  if (v91)
  {
    [v91 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  [CALogger logWithCoreAnalytics:"[MAServer UpdateAssetV2:sessionToken:options:completion:]_block_invoke" client:buf startTS:*(a1 + 104) error:*(*(*(a1 + 88) + 8) + 40)];
}

void sub_100046AF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100050CE8(a1);
  }
}

void sub_100046B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_10004FFE8(a1, v4);
    }
  }
}

void sub_100047588(uint64_t a1)
{
  v69 = 0;
  v2 = *(a1 + 96);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v25 = *(a1 + 40);
      v26 = *(*(a1 + 32) + 24);
      v27 = kManagedAssetImportProfileEntitlement;
      v11 = NSStringFromSelector(*(a1 + 104));
      v28 = *(*(a1 + 64) + 8);
      v29 = *(v28 + 40);
      v13 = (v28 + 40);
      obj = v29;
      v15 = [v26 verifyBooleanEntitlementWith:v27 client:v25 function:v11 error:&obj];
      v16 = obj;
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_9;
      }

      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 24);
      v10 = kManagedAssetSerializeEntitlement;
      v11 = NSStringFromSelector(*(a1 + 104));
      v12 = *(*(a1 + 64) + 8);
      v14 = *(v12 + 40);
      v13 = (v12 + 40);
      v65 = v14;
      v15 = [v9 verifyBooleanEntitlementWith:v10 client:v8 function:v11 error:&v65];
      v16 = v65;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = *(a1 + 40);
        v4 = *(*(a1 + 32) + 24);
        v5 = kManagedAssetCreateEntitlement;
        v6 = NSStringFromSelector(*(a1 + 104));
        v7 = *(*(a1 + 64) + 8);
        v68 = *(v7 + 40);
        LODWORD(v3) = [v4 verifyAccessWithAnyAssetTypes:v5 client:v3 function:v6 error:&v68];
        objc_storeStrong((v7 + 40), v68);

        if (!v3)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }

LABEL_9:
      v17 = createManagedAssetError();
      v18 = *(*(a1 + 64) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

LABEL_19:
      v37 = 0;
      goto LABEL_29;
    }

    v20 = *(a1 + 40);
    v21 = *(*(a1 + 32) + 24);
    v22 = kManagedAssetUpdateEntitlement;
    v11 = NSStringFromSelector(*(a1 + 104));
    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    v13 = (v23 + 40);
    v67 = v24;
    v15 = [v21 verifyAccessWithAnyAssetTypes:v22 client:v20 function:v11 error:&v67];
    v16 = v67;
  }

  objc_storeStrong(v13, v16);

  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v30 = *(a1 + 48);
  if (v30 && [v30 isValidAssetHandle:&v69] && v69 == 1)
  {
    v31 = *(*(a1 + 32) + 112);
    v32 = *(a1 + 48);
    v33 = *(*(a1 + 64) + 8);
    v64 = *(v33 + 40);
    v34 = [v31 getAssetKey:v32 error:&v64];
    objc_storeStrong((v33 + 40), v64);
    v35 = *(*(a1 + 72) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_DEBUG))
    {
      sub_100050E10(a1 + 72);
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      goto LABEL_19;
    }
  }

  v38 = [MACryptoHelper randomDataInHex:32];
  v39 = *(*(a1 + 80) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;

  if (!*(a1 + 96))
  {
    if (v69 == 1)
    {
      v37 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      goto LABEL_28;
    }

    v42 = *(a1 + 48);
    if (v42)
    {
      v43 = *(a1 + 32);
      v44 = *(v43 + 72);
      v45 = *(v43 + 16);
      v46 = *(*(a1 + 64) + 8);
      v63 = *(v46 + 40);
      v41 = [v44 getAsset:v42 profile:v45 option:0 assetPathOut:0 bypassProfileCheck:0 error:&v63];
      objc_storeStrong((v46 + 40), v63);
      v47 = [v41 assetMetadata];
      v37 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v47 type], objc_msgSend(*(*(a1 + 32) + 16), "profileType"), *(*(a1 + 32) + 8));

      goto LABEL_27;
    }

    goto LABEL_9;
  }

  v37 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", *(a1 + 112), [*(*(a1 + 32) + 16) profileType], *(*(a1 + 32) + 8));
  if (*(a1 + 96) == 1)
  {
    v41 = [NSNumber numberWithUnsignedInteger:*(a1 + 112)];
    [*(*(a1 + 32) + 200) setObject:v41 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
LABEL_27:
  }

LABEL_28:
  v48 = *(*(a1 + 32) + 72);
  v49 = *(*(*(a1 + 80) + 8) + 40);
  v50 = *(*(a1 + 88) + 8);
  v51 = *(v50 + 40);
  v52 = *(*(a1 + 64) + 8);
  v61 = *(v52 + 40);
  v62 = v51;
  [v48 createTempAssetFile:v49 protectionType:v37 pathOut:0 fileHandleOut:&v62 error:&v61];
  objc_storeStrong((v50 + 40), v62);
  objc_storeStrong((v52 + 40), v61);
LABEL_29:
  v53 = [*(*(a1 + 32) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v53];

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100050E80(a1 + 64);
    }

    [*(*(*(a1 + 88) + 8) + 40) closeFile];
    v54 = *(*(a1 + 88) + 8);
    v55 = *(v54 + 40);
    *(v54 + 40) = 0;

    v56 = *(*(a1 + 80) + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = 0;
  }

  v58 = *(a1 + 56);
  if (v58)
  {
    (*(v58 + 16))(v58, *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  }

  v59 = *(a1 + 40);
  if (v59)
  {
    [v59 auditToken];
  }

  else
  {
    memset(v60, 0, sizeof(v60));
  }

  [CALogger logWithCoreAnalytics:"[MAServer GetTempAssetFileHandle:assetType:assetHandle:completion:]_block_invoke" client:v60 startTS:*(a1 + 120) error:*(*(*(a1 + 64) + 8) + 40)];
}

void sub_100047D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100047D38(void *a1)
{
  v2 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", a1[8], [*(a1[4] + 16) profileType], *(a1[4] + 8));
  v3 = [MACryptoHelper randomDataInHex:32];
  v4 = *(a1[4] + 72);
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v23 = 0;
  v6 = [v4 createTempAssetFile:v3 protectionType:v2 pathOut:&v23 fileHandleOut:0 error:&obj];
  v7 = v23;
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v8 = a1[5];
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v10 = *(a1[7] + 8);
    v13 = *(v10 + 40);
    v11 = (v10 + 40);
    v12 = v13;
    v14 = v7;
    [v14 fileSystemRepresentation];
    v24 = v20;
    v25 = v21;
    v15 = sandbox_extension_issue_file_to_process();
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithUTF8String:v15];
      free(v16);
    }

    else
    {
      v12 = createManagedAssetError();
      v18 = v12;
      v17 = 0;
    }

    objc_storeStrong(v11, v12);
    v19 = [*(a1[4] + 72) malocalTmpAssetPath];
    [_TtC6server14MAPurgeUtility markPurgeable:v19];

    *(*(a1[7] + 8) + 40);
    (*(a1[6] + 16))(a1[6]);
  }

  else
  {
    v9 = *(*(a1[7] + 8) + 40);
    (*(a1[6] + 16))();
  }
}

void sub_100048130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004814C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = *(*(a1 + 40) + 72);
        v9 = *(*(a1 + 48) + 8);
        obj = *(v9 + 40);
        v10 = [v8 deleteTempAssetFile:v7 error:&obj];
        objc_storeStrong((v9 + 40), obj);
        if ((v10 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
        {
          sub_100050EF0(v17, a1 + 48);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = [*(*(a1 + 40) + 72) malocalTmpAssetPath];
  [_TtC6server14MAPurgeUtility markPurgeable:v11];
}

void sub_100048A50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051078(a1);
  }
}

void sub_100049688(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051078(a1);
  }
}

void sub_1000499B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int64_t sub_10004A52C(id a1, NSArray *a2, NSArray *a3)
{
  v4 = a2;
  v5 = [(NSArray *)a3 lastObject];
  v6 = [(NSArray *)v4 lastObject];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10004A59C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
  {
    sub_100051078(a1);
  }
}

void sub_10004ABD0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(*(a1 + 32) + 216);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 216) objectForKeyedSubscript:{v8, v17}];
        if ([v9 type] == 1)
        {
          if ([*(a1 + 40) isEqual:@"ZoneR.1"])
          {
            v10 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Mark zone deletion done for asset zone", buf, 2u);
            }

            [v9 setAssetZoneDone:1];
            if (([v9 kvDataZoneDone] & 1) != 0 || *(a1 + 48))
            {
              v11 = off_100127E38;
              if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sent back completion for zone deletion request", buf, 2u);
              }

              v12 = [v9 completionHandle];
              v12[2](v12, *(a1 + 48));
              [v2 addObject:v8];
            }
          }

          if ([*(a1 + 40) isEqual:@"ZoneR.2"])
          {
            v13 = off_100127E38;
            if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Mark zone deletion done for KVData zone", buf, 2u);
            }

            [v9 setKvDataZoneDone:1];
            if (([v9 assetZoneDone] & 1) != 0 || *(a1 + 48))
            {
              v14 = off_100127E38;
              if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sent back completion for zone deletion request", buf, 2u);
              }

              v15 = [v9 completionHandle];
              v15[2](v15, *(a1 + 48));
              [v2 addObject:v8];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "removing saved syncOps with identifiers: %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 216) removeObjectsForKeys:{v2, v17}];
}

void sub_10004BB08(uint64_t a1)
{
  v13 = [NSString stringWithFormat:@"accountSwitch=%u, signIn=%u, signOut=%u", *(a1 + 40), *(a1 + 41), *(a1 + 42)];
  v2 = createManagedAssetError();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(a1 + 32) + 216);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:{16, v13}];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 216) objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        v9 = off_100127E38;
        if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Cancelling %@ for account change: %@", buf, 0x16u);
        }

        v10 = [v8 completionHandle];
        if (v10)
        {
          v11 = off_100127E38;
          if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sent back completion with error for %@", buf, 0xCu);
          }

          (v10)[2](v10, v2);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "removing all saved syncOps", buf, 2u);
  }

  [*(*(a1 + 32) + 216) removeAllObjects];
}

void sub_10004BDB4(uint64_t a1)
{
  if (*(*(a1 + 32) + 248))
  {
    v2 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 248);
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cancelling cloudSigninUploadTimer: %@", buf, 0xCu);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 248));
    v4 = *(a1 + 32);
    v5 = *(v4 + 248);
    *(v4 + 248) = 0;
  }

  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 32);
    v21 = 0;
    v7 = [v6 resetAssetCloudState:&v21];
    v8 = v21;
    if ((v7 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100051760();
    }

    v9 = *(a1 + 32);
    v20 = 0;
    v10 = [v9 resetKVSCloudState:&v20];
    v11 = v20;
    if ((v10 & 1) == 0 && os_log_type_enabled(off_100127E38, OS_LOG_TYPE_ERROR))
    {
      sub_100051760();
    }
  }

  if ((*(a1 + 41) & 1) != 0 || *(a1 + 42) == 1)
  {
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 104));
    v13 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, *(a1 + 32));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004C080;
    handler[3] = &unk_100116AC0;
    objc_copyWeak(&v18, &location);
    v14 = v12;
    v17 = v14;
    dispatch_source_set_event_handler(v14, handler);
    objc_storeStrong((*(a1 + 32) + 248), v12);
    v15 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Created cloudSigninUploadTimer: %@", buf, 0xCu);
    }

    dispatch_activate(v14);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_10004C080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "cloudSigninUploadTimer %@ fired, cancel it.", buf, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained[31];
    if (v5 == *(a1 + 32))
    {
      WeakRetained[31] = 0;

      v8 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Upload assets for account sign in/switch ..", buf, 2u);
      }

      v9 = [WeakRetained cloudSyncManager];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10004C250;
      v10[3] = &unk_100116750;
      v10[4] = WeakRetained;
      [v9 fetchSigninUserWithCompletionHandler:v10];
    }

    else
    {
      v6 = off_100127E38;
      if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ignore staled cloudSigninUploadTimer: %@", buf, 0xCu);
      }
    }
  }
}

void sub_10004C250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = off_100127E38;
    if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Skip routine uploadOldAssetsWithOption as fetching signInUser failed: %@", &v9, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) uploadOldAssetsWithOption:1 includeKVStoreData:1 error:0];
  }
}

void sub_10004C3A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 228) == 1)
  {
    v2 = off_100127E38;
    if (!os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v3 = "uploadOldAssets On startup is already completed";
    goto LABEL_11;
  }

  if (!*(v1 + 232))
  {
    v2 = off_100127E38;
    if (!os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v3 = "skip uploadOldAssets On startup as the device has not been unlocked once";
    goto LABEL_11;
  }

  if (*(v1 + 224))
  {
    *(v1 + 228) = 1;
    v5 = [*(a1 + 32) cloudSyncManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004C504;
    v6[3] = &unk_100116750;
    v6[4] = *(a1 + 32);
    [v5 fetchSigninUserWithCompletionHandler:v6];

    return;
  }

  v2 = off_100127E38;
  if (os_log_type_enabled(off_100127E38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v3 = "skip uploadOldAssets On startup as cloudSyncManager has not been started yet";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 2u);
  }
}
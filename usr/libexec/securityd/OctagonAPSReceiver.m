@interface OctagonAPSReceiver
+ (id)apsDeliveryQueue;
+ (id)receiverForNamedDelegatePort:(id)a3 apsConnectionClass:(Class)a4;
+ (id)resettableSynchronizedGlobalDelegatePortMap:(BOOL)a3;
+ (void)resetGlobalDelegatePortMap;
- (BOOL)haveStalePushes;
- (OctagonAPSReceiver)initWithNamedDelegatePort:(id)a3 apsConnectionClass:(Class)a4 stalePushTimeout:(unint64_t)a5;
- (id)cuttlefishPushTopics;
- (id)registerCKKSReceiver:(id)a3 contextID:(id)a4;
- (id)registerCuttlefishReceiver:(id)a3 forContainerName:(id)a4 contextID:(id)a5;
- (id)registeredPushEnvironments;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)registerForEnvironment:(id)a3;
- (void)reportDroppedPushes:(id)a3;
@end

@implementation OctagonAPSReceiver

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100019104(@"octagonpush", 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 topic];
    v10 = [v7 userInfo];
    *buf = 138412546;
    v64 = v9;
    v65 = 2112;
    v66 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OctagonAPSDelegate received a message(%@): %@ ", buf, 0x16u);
  }

  if ([v7 isTracingEnabled])
  {
    [v6 confirmReceiptForMessage:v7];
  }

  v11 = [v7 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"cf"];
  v13 = v12 == 0;

  if (v13)
  {
    v32 = [v7 userInfo];
    v15 = [CKNotification notificationFromRemoteNotificationDictionary:v32];

    if ([v15 notificationType]== 2)
    {
      v16 = v15;
      -[NSObject setCkksPushTracingEnabled:](v16, "setCkksPushTracingEnabled:", [v7 isTracingEnabled]);
      v33 = [v7 tracingUUID];
      if (v33)
      {
        v34 = [NSUUID alloc];
        v35 = [v7 tracingUUID];
        v36 = v35;
        v37 = [v34 initWithUUIDBytes:{objc_msgSend(v35, "bytes")}];
        v38 = [v37 UUIDString];
        [v16 setCkksPushTracingUUID:v38];
      }

      else
      {
        [v16 setCkksPushTracingUUID:0];
      }

      v39 = +[NSDate date];
      [v16 setCkksPushReceivedDate:v39];

      v40 = +[CKKSAnalytics logger];
      v41 = +[NSDate date];
      [v40 setDateProperty:v41 forKey:@"lastCKKSPush"];

      v42 = [(OctagonAPSReceiver *)self zoneUpdateReceiverDictionary];
      objc_sync_enter(v42);
      v43 = [(OctagonAPSReceiver *)self zoneUpdateReceiverDictionary];
      v44 = [v43 count] == 0;

      if (v44)
      {
        v45 = sub_100019104(@"ckkspush", 0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v64 = v16;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "received push for unregistered receiver: %@", buf, 0xCu);
        }

        v46 = [(OctagonAPSReceiver *)self undeliveredUpdates];
        [v46 addObject:v16];

        v47 = [(OctagonAPSReceiver *)self clearStalePushNotifications];
        [v47 trigger];
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v48 = [(OctagonAPSReceiver *)self zoneUpdateReceiverDictionary];
      v49 = [v48 objectEnumerator];

      v50 = [v49 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v50)
      {
        v51 = *v54;
        do
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v54 != v51)
            {
              objc_enumerationMutation(v49);
            }

            [*(*(&v53 + 1) + 8 * i) notifyZoneChange:v16];
          }

          v50 = [v49 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v50);
      }

      objc_sync_exit(v42);
      v15 = v16;
    }

    else
    {
      v16 = sub_100019104(@"ckkspush", 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "unexpected notification: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = [v7 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"cf"];

    v16 = [v15 objectForKeyedSubscript:@"c"];
    v17 = sub_100019104(@"octagonpush", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received a cuttlefish push to container %@", buf, 0xCu);
    }

    v18 = +[CKKSAnalytics logger];
    v19 = +[NSDate date];
    [v18 setDateProperty:v19 forKey:@"lastOctagonPush"];

    if (v16)
    {
      v20 = [(OctagonAPSReceiver *)self octagonContainerMap];
      objc_sync_enter(v20);
      v21 = [(OctagonAPSReceiver *)self octagonContainerMap];
      v22 = [v21 count] == 0;

      if (v22)
      {
        v23 = sub_100019104(@"octagonpush", 0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v64 = v16;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "received cuttlefish push for unregistered container: %@", buf, 0xCu);
        }

        v24 = [(OctagonAPSReceiver *)self undeliveredCuttlefishUpdates];
        [v24 addObject:v16];

        v25 = [(OctagonAPSReceiver *)self clearStalePushNotifications];
        [v25 trigger];
      }

      objc_sync_exit(v20);
    }

    v26 = [(OctagonAPSReceiver *)self octagonContainerMap];
    objc_sync_enter(v26);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v27 = [(OctagonAPSReceiver *)self octagonContainerMap];
    v28 = [v27 objectEnumerator];

    v29 = [v28 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v29)
    {
      v30 = *v58;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v57 + 1) + 8 * j) notifyContainerChange:0];
        }

        v29 = [v28 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v29);
    }

    objc_sync_exit(v26);
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100019104(@"octagonpush", 0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received per-topic push token %@ for topic %@ identifier %@ on connection %@", &v14, 0x2Au);
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a3;
  v5 = sub_100019104(@"octagonpush", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OctagonAPSDelegate initiated: %@", &v6, 0xCu);
  }
}

- (id)registerCuttlefishReceiver:(id)a3 forContainerName:(id)a4 contextID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(CKKSCondition);
  objc_initWeak(&location, self);
  v12 = +[OctagonAPSReceiver apsDeliveryQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001E4AB4;
  v20[3] = &unk_100344658;
  objc_copyWeak(&v25, &location);
  v21 = v8;
  v22 = v10;
  v23 = v9;
  v13 = v11;
  v24 = v13;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  dispatch_async(v12, v20);

  v17 = v24;
  v18 = v13;

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v18;
}

- (id)registerCKKSReceiver:(id)a3 contextID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CKKSCondition);
  objc_initWeak(&location, self);
  v9 = +[OctagonAPSReceiver apsDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4DC0;
  block[3] = &unk_100344970;
  objc_copyWeak(&v20, &location);
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, block);

  v13 = v19;
  v14 = v10;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

- (void)reportDroppedPushes:(id)a3
{
  v3 = a3;
  cf = 0;
  *buf = -1431655766;
  lock_state = aks_get_lock_state();
  v5 = sub_10001C4BC(lock_state, &cf, @"aks_get_lock_state failed: %x", lock_state);
  v6 = buf[0];
  v7 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v7);
  }

  v22 = 0u;
  v23 = 0u;
  if ((*&v5 & ((v6 & 4) >> 2)) != 0)
  {
    v8 = @"CKKS APNS Push Dropped";
  }

  else
  {
    v8 = @"CKKS APNS Push Dropped - never unlocked";
  }

  v20 = 0uLL;
  v21 = 0uLL;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 ckksPushTracingEnabled])
        {
          v15 = sub_100019104(@"apsnotification", 0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Submitting initial CKEventMetric due to notification %@", buf, 0xCu);
          }

          v16 = [[SecEventMetric alloc] initWithEventName:@"APNSPushMetrics"];
          v17 = [v14 ckksPushTracingUUID];
          [(SecEventMetric *)v16 setObject:v17 forKeyedSubscript:@"push_token_uuid"];

          v18 = [v14 ckksPushReceivedDate];
          [(SecEventMetric *)v16 setObject:v18 forKeyedSubscript:@"push_received_date"];

          [(SecEventMetric *)v16 setObject:v8 forKeyedSubscript:@"push_event_name"];
          v19 = +[SecMetrics managerObject];
          [v19 submitEvent:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v11);
  }
}

- (void)registerForEnvironment:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[OctagonAPSReceiver apsDeliveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E53D8;
  block[3] = &unk_100344D38;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (OctagonAPSReceiver)initWithNamedDelegatePort:(id)a3 apsConnectionClass:(Class)a4 stalePushTimeout:(unint64_t)a5
{
  v9 = a3;
  v33.receiver = self;
  v33.super_class = OctagonAPSReceiver;
  v10 = [(OctagonAPSReceiver *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_apsConnectionClass, a4);
    v12 = +[NSMutableSet set];
    undeliveredUpdates = v11->_undeliveredUpdates;
    v11->_undeliveredUpdates = v12;

    v14 = objc_alloc_init(NSMutableSet);
    undeliveredCuttlefishUpdates = v11->_undeliveredCuttlefishUpdates;
    v11->_undeliveredCuttlefishUpdates = v14;

    objc_storeStrong(&v11->_namedDelegatePort, a3);
    v16 = +[NSMutableDictionary dictionary];
    environmentMap = v11->_environmentMap;
    v11->_environmentMap = v16;

    v18 = +[NSMapTable strongToWeakObjectsMapTable];
    octagonContainerMap = v11->_octagonContainerMap;
    v11->_octagonContainerMap = v18;

    v20 = +[NSMutableDictionary dictionary];
    zoneUpdateReceiverDictionary = v11->_zoneUpdateReceiverDictionary;
    v11->_zoneUpdateReceiverDictionary = v20;

    objc_initWeak(&location, v11);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1001E5710;
    v30 = &unk_1003452E8;
    objc_copyWeak(&v31, &location);
    v22 = objc_retainBlock(&v27);
    v23 = [CKKSNearFutureScheduler alloc];
    v24 = [(CKKSNearFutureScheduler *)v23 initWithName:@"clearStalePushNotifications" delay:a5 keepProcessAlive:0 dependencyDescriptionCode:0 block:v22, v27, v28, v29, v30];
    clearStalePushNotifications = v11->_clearStalePushNotifications;
    v11->_clearStalePushNotifications = v24;

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (id)cuttlefishPushTopics
{
  v2 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.security.cuttlefish"];
  v3 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.TrustedPeersHelper"];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (BOOL)haveStalePushes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = +[OctagonAPSReceiver apsDeliveryQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E5A18;
  v5[3] = &unk_100344E90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (id)registeredPushEnvironments
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001E5BD0;
  v11 = sub_1001E5BE0;
  v12 = 0;
  v3 = +[OctagonAPSReceiver apsDeliveryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E5BE8;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)apsDeliveryQueue
{
  if (qword_10039E2B8 != -1)
  {
    dispatch_once(&qword_10039E2B8, &stru_100344630);
  }

  v3 = qword_10039E2B0;

  return v3;
}

+ (id)resettableSynchronizedGlobalDelegatePortMap:(BOOL)a3
{
  v3 = qword_10039E2A8;
  if (qword_10039E2A8)
  {
    v4 = !a3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = qword_10039E2A8;
    qword_10039E2A8 = v5;

    v3 = qword_10039E2A8;
  }

  return v3;
}

+ (void)resetGlobalDelegatePortMap
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = [obj resettableSynchronizedGlobalDelegatePortMap:1];
  objc_sync_exit(obj);
}

+ (id)receiverForNamedDelegatePort:(id)a3 apsConnectionClass:(Class)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [a1 synchronizedGlobalDelegatePortMap];
  v9 = [v8 objectForKeyedSubscript:v6];
  if (!v9)
  {
    v9 = [[OctagonAPSReceiver alloc] initWithNamedDelegatePort:v6 apsConnectionClass:a4];
    [v8 setObject:v9 forKeyedSubscript:v6];
  }

  objc_sync_exit(v7);

  return v9;
}

@end
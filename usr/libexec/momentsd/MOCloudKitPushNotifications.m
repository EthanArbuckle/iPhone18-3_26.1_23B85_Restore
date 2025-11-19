@interface MOCloudKitPushNotifications
- (MOCloudKitPushNotifications)initWithNamedDelegatePort:(id)a3 apsTopics:(id)a4 subscriptionID:(id)a5 onNotification:(id)a6 deviceType:(id)a7;
- (id)_apsEnvironmentString;
- (void)_performActualStop;
- (void)_performStateCheckWithHandler:(id)a3;
- (void)_requestValidation;
- (void)_scheduleDelayedStateCheck;
- (void)_scheduleDelayedValidation;
- (void)_subscribeWithSubscriptionID:(id)a3 completion:(id)a4;
- (void)checkAndUpdateStateWithHandler:(id)a3;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MOCloudKitPushNotifications

- (MOCloudKitPushNotifications)initWithNamedDelegatePort:(id)a3 apsTopics:(id)a4 subscriptionID:(id)a5 onNotification:(id)a6 deviceType:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v41.receiver = self;
  v41.super_class = MOCloudKitPushNotifications;
  v18 = [(MOCloudKitPushNotifications *)&v41 init];
  if (v18)
  {
    v19 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.momentsui"];
    v20 = *(v18 + 1);
    *(v18 + 1) = v19;

    objc_storeStrong(v18 + 2, a3);
    objc_storeStrong(v18 + 3, a4);
    objc_storeStrong(v18 + 4, a5);
    v21 = objc_retainBlock(v16);
    v22 = *(v18 + 5);
    *(v18 + 5) = v21;

    objc_storeStrong(v18 + 6, a7);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("MOPushNotificationQueue", v23);
    v25 = *(v18 + 7);
    *(v18 + 7) = v24;

    v26 = *(v18 + 8);
    *(v18 + 8) = 0;

    v27 = *(v18 + 9);
    *(v18 + 9) = 0;

    *(v18 + 40) = 0;
    v28 = [*(v18 + 1) stringForKey:@"MOCloudKitPushNotifications_CurrentUser"];
    v29 = *(v18 + 11);
    *(v18 + 11) = v28;

    *(v18 + 96) = 0;
    v30 = *(v18 + 13);
    *(v18 + 13) = 0;

    v31 = *(v18 + 14);
    *(v18 + 14) = 0;

    *(v18 + 120) = 0;
    v32 = *(v18 + 16);
    *(v18 + 16) = 0;

    v33 = *(v18 + 17);
    *(v18 + 17) = 0;

    v34 = [*(v18 + 1) stringForKey:@"SubscribeWithSubscriptionID"];

    if (v34)
    {
      [*(v18 + 1) removeObjectForKey:@"SubscribeWithSubscriptionID"];
      [*(v18 + 1) synchronize];
      v35 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Migrated from legacy subscription tracking", v40, 2u);
      }
    }

    *(v18 + 36) = -1;
    v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v37 = dispatch_queue_create_with_target_V2("MOPushNotificationQueue_Notfication", v36, *(v18 + 7));
    v38 = *(v18 + 19);
    *(v18 + 19) = v37;

    dispatch_suspend(*(v18 + 19));
    *(v18 + 160) = 0;
  }

  return v18;
}

- (void)start
{
  actorQueue = self->_actorQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __36__MOCloudKitPushNotifications_start__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = self;
  dispatch_barrier_async(actorQueue, block);
}

void __36__MOCloudKitPushNotifications_start__block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Starting iCloud push notifications...", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 112))
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Cancelling delayed stop due to start", buf, 2u);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 112));
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = 0;

    v3 = *(a1 + 32);
  }

  *(v3 + 80) = 1;
  v7 = *(a1 + 32);
  if (!*(v7 + 64))
  {
    v8 = objc_alloc_init(CKContainerOptions);
    [v8 setUseZoneWidePCS:1];
    if ([*(*(a1 + 32) + 8) BOOLForKey:@"ForceDevelopmentEnvironment"])
    {
      v9 = 2;
    }

    else
    {
      v10 = +[CKContainer defaultContainer];
      v11 = [v10 containerID];
      v9 = [v11 environment];
    }

    v12 = [[CKContainerID alloc] initWithContainerIdentifier:@"com.apple.moments.suggestions" environment:v9];
    v13 = [[CKContainer alloc] initWithContainerID:v12 options:v8];
    v14 = *(a1 + 32);
    v15 = *(v14 + 64);
    *(v14 + 64) = v13;

    v7 = *(a1 + 32);
  }

  if (!*(v7 + 72))
  {
    v16 = [v7 _apsEnvironmentString];
    v17 = [[APSConnection alloc] initWithEnvironmentName:v16 namedDelegatePort:*(*(a1 + 32) + 16) queue:*(*(a1 + 32) + 152)];
    [v17 _setEnabledTopics:*(*(a1 + 32) + 24)];
    objc_storeStrong((*(a1 + 32) + 72), v17);
    [v17 setDelegate:*(a1 + 32)];
    v18 = *(a1 + 32);
    if ((*(v18 + 160) & 1) == 0)
    {
      dispatch_resume(*(v18 + 152));
      *(*(a1 + 32) + 160) = 1;
    }

    v7 = *(a1 + 32);
  }

  if ((*(v7 + 96) & 1) == 0 && (*(v7 + 81) & 1) == 0)
  {
    *(v7 + 96) = 1;
    [*(a1 + 32) _requestValidation];
    v7 = *(a1 + 32);
  }

  if (*(v7 + 144) == -1)
  {
    objc_initWeak(buf, v7);
    v19 = *(a1 + 32);
    v20 = *(v19 + 56);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __36__MOCloudKitPushNotifications_start__block_invoke_20;
    handler[3] = &unk_1003379B0;
    objc_copyWeak(&v22, buf);
    notify_register_dispatch("com.apple.cloudd.authorizationChanged", (v19 + 144), v20, handler);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __36__MOCloudKitPushNotifications_start__block_invoke_20(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] CloudKit authorization changed, re-subscribing...", v5, 2u);
    }

    if ((WeakRetained[81] & 1) == 0)
    {
      [WeakRetained _requestValidation];
    }
  }

  else
  {
    notify_cancel(a2);
  }
}

- (void)stop
{
  actorQueue = self->_actorQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__MOCloudKitPushNotifications_stop__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = self;
  dispatch_barrier_async(actorQueue, block);
}

void __35__MOCloudKitPushNotifications_stop__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 80) == 1)
  {
    v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Scheduling delayed stop...", buf, 2u);
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 32);
      v6 = *(v5 + 112);
      *(v5 + 112) = 0;

      v3 = *(a1 + 32);
    }

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 56));
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    v10 = *(v9 + 112);
    *(v9 + 112) = v7;

    v11 = *(*v8 + 14);
    v12 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(&location, *v8);
    v13 = *(*v8 + 14);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __35__MOCloudKitPushNotifications_stop__block_invoke_23;
    v15[3] = &unk_1003379D8;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v13, v15);
    dispatch_resume(*(*v8 + 14));
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = 0x4014000000000000;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Scheduled delayed stop in %.1fs", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __35__MOCloudKitPushNotifications_stop__block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Delayed stop triggered - actually stopping", v5, 2u);
    }

    v3 = WeakRetained[14];
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = WeakRetained[14];
      WeakRetained[14] = 0;
    }

    [WeakRetained _performActualStop];
  }
}

- (void)_performActualStop
{
  dispatch_assert_queue_V2(self->_actorQueue);
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Stopping iCloud push notifications...", v13, 2u);
  }

  if (self->_notificationsResumed)
  {
    dispatch_suspend(self->_notificationQueue);
    self->_notificationsResumed = 0;
  }

  authChangeNotifyToken = self->_authChangeNotifyToken;
  if (authChangeNotifyToken != -1)
  {
    notify_cancel(authChangeNotifyToken);
    self->_authChangeNotifyToken = -1;
  }

  delayedValidationTimer = self->_delayedValidationTimer;
  if (delayedValidationTimer)
  {
    dispatch_source_cancel(delayedValidationTimer);
    v6 = self->_delayedValidationTimer;
    self->_delayedValidationTimer = 0;
  }

  delayedStateCheckTimer = self->_delayedStateCheckTimer;
  if (delayedStateCheckTimer)
  {
    dispatch_source_cancel(delayedStateCheckTimer);
    v8 = self->_delayedStateCheckTimer;
    self->_delayedStateCheckTimer = 0;
  }

  pendingStateCheckHandler = self->_pendingStateCheckHandler;
  self->_pendingStateCheckHandler = 0;

  connection = self->_connection;
  if (connection)
  {
    [(APSConnection *)connection shutdown];
    v11 = self->_connection;
    self->_connection = 0;
  }

  container = self->_container;
  if (container)
  {
    self->_container = 0;
  }

  self->_hasValidatedUserThisLaunch = 0;
  self->_started = 0;
}

- (void)_requestValidation
{
  dispatch_assert_queue_V2(self->_actorQueue);
  isSubscribing = self->_isSubscribing;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSubscribing)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Validation in progress - scheduling delayed validation", buf, 2u);
    }

    [(MOCloudKitPushNotifications *)self _scheduleDelayedValidation];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Immediate validation triggered", buf, 2u);
    }

    self->_isSubscribing = 1;
    subscriptionID = self->_subscriptionID;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __49__MOCloudKitPushNotifications__requestValidation__block_invoke;
    v7[3] = &unk_100335F40;
    v7[4] = self;
    [(MOCloudKitPushNotifications *)self _subscribeWithSubscriptionID:subscriptionID completion:v7];
  }
}

void __49__MOCloudKitPushNotifications__requestValidation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__MOCloudKitPushNotifications__requestValidation__block_invoke_2;
  block[3] = &unk_100335F40;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

- (void)_scheduleDelayedValidation
{
  dispatch_assert_queue_V2(self->_actorQueue);
  delayedValidationTimer = self->_delayedValidationTimer;
  if (delayedValidationTimer)
  {
    dispatch_source_cancel(delayedValidationTimer);
    v4 = self->_delayedValidationTimer;
    self->_delayedValidationTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_actorQueue);
  p_delayedValidationTimer = &self->_delayedValidationTimer;
  v6 = self->_delayedValidationTimer;
  self->_delayedValidationTimer = v5;

  v8 = self->_delayedValidationTimer;
  v9 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v10 = self->_delayedValidationTimer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __57__MOCloudKitPushNotifications__scheduleDelayedValidation__block_invoke;
  v12[3] = &unk_1003379D8;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v10, v12);
  dispatch_resume(*p_delayedValidationTimer);
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = 0x4024000000000000;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Scheduled delayed validation in %.1fs", buf, 0xCu);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __57__MOCloudKitPushNotifications__scheduleDelayedValidation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] Delayed validation triggered (burst-end)", buf, 2u);
    }

    v3 = *(WeakRetained + 13);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(WeakRetained + 13);
      *(WeakRetained + 13) = 0;
    }

    if ((*(WeakRetained + 81) & 1) == 0)
    {
      *(WeakRetained + 81) = 1;
      v5 = *(WeakRetained + 4);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = __57__MOCloudKitPushNotifications__scheduleDelayedValidation__block_invoke_24;
      v6[3] = &unk_100335F40;
      v6[4] = WeakRetained;
      [WeakRetained _subscribeWithSubscriptionID:v5 completion:v6];
    }
  }
}

void __57__MOCloudKitPushNotifications__scheduleDelayedValidation__block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__MOCloudKitPushNotifications__scheduleDelayedValidation__block_invoke_2;
  block[3] = &unk_100335F40;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

- (void)_subscribeWithSubscriptionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_actorQueue);
  container = self->_container;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke;
  v11[3] = &unk_100337AD0;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(CKContainer *)container fetchUserRecordIDWithCompletionHandler:v11];
}

void __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_2;
  block[3] = &unk_100337AA8;
  v14 = v6;
  v15 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

void __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) || (v4 = *(a1 + 40)) == 0)
  {
    v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[subscribeWithSubscriptionID] ERROR: Unable to fetch user record ID: %@", buf, 0xCu);
    }

LABEL_4:

    (*(*(a1 + 64) + 16))();
    return;
  }

  v5 = *(*(a1 + 48) + 88);
  if (v5)
  {
    v6 = [v4 recordName];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) recordName];
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[subscribeWithSubscriptionID] Already subscribed for user: %@", buf, 0xCu);
      }

      goto LABEL_4;
    }
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 48) + 88))
    {
      v10 = *(*(a1 + 48) + 88);
    }

    else
    {
      v10 = @"(none)";
    }

    v11 = [*(a1 + 40) recordName];
    *buf = 138412546;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[subscribeWithSubscriptionID] Account changed from '%@' to '%@', creating subscription", buf, 0x16u);
  }

  v12 = objc_opt_new();
  [v12 setShouldSendContentAvailable:1];
  v13 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:*(a1 + 56)];
  [v13 setNotificationInfo:v12];
  v14 = [CKModifySubscriptionsOperation alloc];
  v23 = v13;
  v15 = [NSArray arrayWithObjects:&v23 count:1];
  v16 = [v14 initWithSubscriptionsToSave:v15 subscriptionIDsToDelete:0];

  [v16 setPerSubscriptionSaveBlock:&__block_literal_global_12];
  [v16 setPerSubscriptionDeleteBlock:&__block_literal_global_37];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_38;
  v20[3] = &unk_100337A80;
  v19 = *(a1 + 40);
  v17 = v19.i64[0];
  v21 = vextq_s8(v19, v19, 8uLL);
  v22 = *(a1 + 64);
  [v16 setModifySubscriptionsCompletionBlock:v20];
  [v16 setQualityOfService:17];
  v18 = [*(*(a1 + 48) + 64) privateCloudDatabase];
  [v18 addOperation:v16];
}

void __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_32(id a1, NSString *a2, CKSubscription *a3, NSError *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v9 = "[subscribeWithSubscriptionID] ERROR: iCloud Subscription: %@ %@";
      v10 = v7;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else if (v8)
  {
    v12 = 138412290;
    v13 = v5;
    v9 = "[subscribeWithSubscriptionID] Successfully subscribed for: %@";
    v10 = v7;
    v11 = 12;
    goto LABEL_6;
  }
}

void __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_34(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v8 = "[subscribeWithSubscriptionID] ERROR: Deleting iCloud Subscription: %@ %@";
      v9 = v6;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = v4;
    v8 = "[subscribeWithSubscriptionID] Successfully deleted subscribed: %@";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }
}

void __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_2_39;
  v10[3] = &unk_1003361C0;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t __71__MOCloudKitPushNotifications__subscribeWithSubscriptionID_completion___block_invoke_2_39(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[subscribeWithSubscriptionID] ERROR: Registering iCloud Notification: %@", &v12, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[subscribeWithSubscriptionID] Successfully registered iCloud Notification", &v12, 2u);
    }

    v6 = [*(a1 + 48) recordName];
    v7 = *(a1 + 40);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;

    v9 = *(*(a1 + 40) + 8);
    v10 = [*(a1 + 48) recordName];
    [v9 setObject:v10 forKey:@"MOCloudKitPushNotifications_CurrentUser"];

    [*(*(a1 + 40) + 8) synchronize];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[subscribeWithSubscriptionID] Received public token", v5, 2u);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOCloudKitPushNotifications connection:v7 didReceiveIncomingMessage:v8];
  }

  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __68__MOCloudKitPushNotifications_connection_didReceiveIncomingMessage___block_invoke;
  v12[3] = &unk_100337AF8;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(notificationQueue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__MOCloudKitPushNotifications_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 160) == 1 && *(WeakRetained + 9) == *(a1 + 32))
    {
      v4 = *(WeakRetained + 5);
      if (v4)
      {
        v6 = v3;
        v5 = *(a1 + 40);
        (*(v4 + 16))();
        v3 = v6;
      }
    }
  }
}

- (id)_apsEnvironmentString
{
  v3 = xpc_copy_entitlement_for_self();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  if (v3)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = v20[5];
    v20[5] = v4;

    v6 = v20[5];
    if (v6)
    {
      if (![v6 compare:CKPushEnvironmentServerPreferred options:1])
      {
        v7 = dispatch_semaphore_create(0);
        container = self->_container;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = __52__MOCloudKitPushNotifications__apsEnvironmentString__block_invoke;
        v16[3] = &unk_100337B20;
        v18 = &v19;
        v9 = v7;
        v17 = v9;
        [(CKContainer *)container serverPreferredPushEnvironmentWithCompletionHandler:v16];
        v10 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v9, v10))
        {
          v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(MOCloudKitPushNotifications *)v11 _apsEnvironmentString];
          }
        }
      }
    }
  }

  v12 = v20[5];
  if (!v12)
  {
    v12 = APSEnvironmentProduction;
  }

  v13 = v12;
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[subscribeWithSubscriptionID] Using push environment %@", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __52__MOCloudKitPushNotifications__apsEnvironmentString__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__MOCloudKitPushNotifications__apsEnvironmentString__block_invoke_cold_1(v6, v7);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)checkAndUpdateStateWithHandler:(id)a3
{
  v4 = a3;
  actorQueue = self->_actorQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __62__MOCloudKitPushNotifications_checkAndUpdateStateWithHandler___block_invoke;
  v7[3] = &unk_100337B48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(actorQueue, v7);
}

id __62__MOCloudKitPushNotifications_checkAndUpdateStateWithHandler___block_invoke(uint64_t a1)
{
  if ([@"iPad" isEqualToString:*(*(a1 + 32) + 48)] && ((objc_msgSend(*(*(a1 + 32) + 8), "objectForKey:", @"EnableIPadCloudKitWithoutOnboarding"), (v2 = objc_claimAutoreleasedReturnValue()) == 0) || (v3 = v2, v4 = objc_msgSend(*(*(a1 + 32) + 8), "BOOLForKey:", @"EnableIPadCloudKitWithoutOnboarding"), v3, v4)))
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MOCloudKitPushNotifications] iPad with feature flag enabled - starting push notifications immediately", v14, 2u);
    }

    return [*(a1 + 32) start];
  }

  else
  {
    v7 = *(a1 + 32);
    if (*(v7 + 120))
    {
      v8 = objc_retainBlock(*(a1 + 40));
      v9 = *(a1 + 32);
      v10 = *(v9 + 136);
      *(v9 + 136) = v8;

      v11 = *(a1 + 32);

      return [v11 _scheduleDelayedStateCheck];
    }

    else
    {
      *(v7 + 120) = 1;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);

      return [v12 _performStateCheckWithHandler:v13];
    }
  }
}

- (void)_performStateCheckWithHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_actorQueue);
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __61__MOCloudKitPushNotifications__performStateCheckWithHandler___block_invoke;
  v5[3] = &unk_100337B98;
  objc_copyWeak(&v6, &location);
  v4[2](v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__MOCloudKitPushNotifications__performStateCheckWithHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __61__MOCloudKitPushNotifications__performStateCheckWithHandler___block_invoke_2;
    v6[3] = &unk_100337B70;
    v7 = a2;
    v6[4] = v4;
    dispatch_barrier_async(v5, v6);
  }
}

id __61__MOCloudKitPushNotifications__performStateCheckWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    result = [v3 start];
  }

  else
  {
    result = [v3 stop];
  }

  *(*(a1 + 32) + 120) = 0;
  return result;
}

- (void)_scheduleDelayedStateCheck
{
  dispatch_assert_queue_V2(self->_actorQueue);
  delayedStateCheckTimer = self->_delayedStateCheckTimer;
  if (delayedStateCheckTimer)
  {
    dispatch_source_cancel(delayedStateCheckTimer);
    v4 = self->_delayedStateCheckTimer;
    self->_delayedStateCheckTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_actorQueue);
  v6 = self->_delayedStateCheckTimer;
  self->_delayedStateCheckTimer = v5;

  v7 = self->_delayedStateCheckTimer;
  v8 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v9 = self->_delayedStateCheckTimer;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __57__MOCloudKitPushNotifications__scheduleDelayedStateCheck__block_invoke;
  v10[3] = &unk_1003379D8;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_delayedStateCheckTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __57__MOCloudKitPushNotifications__scheduleDelayedStateCheck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[17];
    if (v3)
    {
      if ((v2[15] & 1) == 0)
      {
        *(v2 + 120) = 1;
        v10 = v2;
        v4 = objc_retainBlock(v3);
        v5 = v10[17];
        v10[17] = 0;

        v6 = v10;
        v7 = v10[16];
        if (v7)
        {
          dispatch_source_cancel(v7);
          v8 = v10[16];
          v10[16] = 0;

          v6 = v10;
        }

        [v6 _performStateCheckWithHandler:v4];
      }
    }
  }

  return _objc_release_x1();
}

- (void)connection:(void *)a1 didReceiveIncomingMessage:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 userInfo];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[subscribeWithSubscriptionID] Received push notification %@", &v4, 0xCu);
}

void __52__MOCloudKitPushNotifications__apsEnvironmentString__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[subscribeWithSubscriptionID] Error getting server preferred push environment %@", &v2, 0xCu);
}

@end
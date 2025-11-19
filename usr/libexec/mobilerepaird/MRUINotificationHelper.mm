@interface MRUINotificationHelper
+ (id)sharedSingleton;
- (MRUINotificationHelper)init;
- (id)_init;
- (void)clearRepairFollowUpWithUniqueID:(id)a3;
- (void)createRepairFollowUpWithNotification:(BOOL)a3 actionURL:(id)a4 repairTitle:(id)a5 infoText:(id)a6 itemID:(id)a7 timeInterval:(double)a8 componentName:(id)a9;
- (void)popUpNotificationNowWithMessage:(id)a3 title:(id)a4 openSensitiveURL:(id)a5 componentName:(id)a6 legacyPopup:(BOOL)a7;
- (void)removeRepairNotificationsWithUniqueID:(id)a3;
@end

@implementation MRUINotificationHelper

- (MRUINotificationHelper)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector("sharedSingleton");
  v7 = NSStringFromSelector(a2);
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Use +[%@ %@] instead of -%@.", v5, v6, v7);

  return 0;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = MRUINotificationHelper;
  v2 = [(MRUINotificationHelper *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->delay = 0;
    v4 = dispatch_queue_create("com.apple.mobilerepaird.notificationq", 0);
    v5 = qword_10001EB60;
    qword_10001EB60 = v4;

    v6 = objc_opt_new();
    clientIDtoFollowupItemCache = v3->clientIDtoFollowupItemCache;
    v3->clientIDtoFollowupItemCache = v6;
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000968C;
  block[3] = &unk_100018610;
  block[4] = a1;
  if (qword_10001EB70 != -1)
  {
    dispatch_once(&qword_10001EB70, block);
  }

  v2 = qword_10001EB68;

  return v2;
}

- (void)createRepairFollowUpWithNotification:(BOOL)a3 actionURL:(id)a4 repairTitle:(id)a5 infoText:(id)a6 itemID:(id)a7 timeInterval:(double)a8 componentName:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = qword_10001EB60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000980C;
  block[3] = &unk_100018768;
  v33 = a3;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = self;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  dispatch_sync(v20, block);
}

- (void)popUpNotificationNowWithMessage:(id)a3 title:(id)a4 openSensitiveURL:(id)a5 componentName:(id)a6 legacyPopup:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = self;
  objc_sync_enter(v16);
  v17 = +[NSUserDefaults groupStandardUserDefaults];
  v18 = [v17 BOOLForKey:@"settingsView"];

  v19 = handleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v35) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " value is:%d", buf, 8u);
  }

  if (!v18 || v7)
  {
    v20 = [(MRUINotificationHelper *)v16 isSetupStillRunning];
    while ((v20 & 1) != 0)
    {
      v21 = objc_autoreleasePoolPush();
      v20 = [(MRUINotificationHelper *)v16 isSetupStillRunning];
      objc_autoreleasePoolPop(v21);
      sleep(3u);
    }

    v22 = handleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      delay = v16->delay;
      *buf = 138412546;
      v35 = v13;
      v36 = 1024;
      v37 = delay;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Displaying %@ notification after %d delay", buf, 0x12u);
    }

    v24 = dispatch_semaphore_create(0);
    v25 = dispatch_time(0, 1000000000 * v16->delay);
    v26 = qword_10001EB60;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009F60;
    block[3] = &unk_100018790;
    v33 = v7;
    v29 = v24;
    v30 = v13;
    v31 = v12;
    v32 = v14;
    v27 = v24;
    dispatch_after(v25, v26, block);
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    v16->delay += 5;
  }

  objc_sync_exit(v16);
}

- (void)removeRepairNotificationsWithUniqueID:(id)a3
{
  v3 = a3;
  v4 = qword_10001EB60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A624;
  block[3] = &unk_1000187B8;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

- (void)clearRepairFollowUpWithUniqueID:(id)a3
{
  v3 = a3;
  v4 = qword_10001EB60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AA50;
  block[3] = &unk_1000187B8;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

@end
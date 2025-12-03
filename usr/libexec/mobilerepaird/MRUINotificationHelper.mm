@interface MRUINotificationHelper
+ (id)sharedSingleton;
- (MRUINotificationHelper)init;
- (id)_init;
- (void)clearRepairFollowUpWithUniqueID:(id)d;
- (void)createRepairFollowUpWithNotification:(BOOL)notification actionURL:(id)l repairTitle:(id)title infoText:(id)text itemID:(id)d timeInterval:(double)interval componentName:(id)name;
- (void)popUpNotificationNowWithMessage:(id)message title:(id)title openSensitiveURL:(id)l componentName:(id)name legacyPopup:(BOOL)popup;
- (void)removeRepairNotificationsWithUniqueID:(id)d;
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
  block[4] = self;
  if (qword_10001EB70 != -1)
  {
    dispatch_once(&qword_10001EB70, block);
  }

  v2 = qword_10001EB68;

  return v2;
}

- (void)createRepairFollowUpWithNotification:(BOOL)notification actionURL:(id)l repairTitle:(id)title infoText:(id)text itemID:(id)d timeInterval:(double)interval componentName:(id)name
{
  lCopy = l;
  titleCopy = title;
  textCopy = text;
  dCopy = d;
  nameCopy = name;
  v20 = qword_10001EB60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000980C;
  block[3] = &unk_100018768;
  notificationCopy = notification;
  v27 = lCopy;
  v28 = titleCopy;
  v29 = textCopy;
  v30 = dCopy;
  v31 = nameCopy;
  selfCopy = self;
  v21 = nameCopy;
  v22 = dCopy;
  v23 = textCopy;
  v24 = titleCopy;
  v25 = lCopy;
  dispatch_sync(v20, block);
}

- (void)popUpNotificationNowWithMessage:(id)message title:(id)title openSensitiveURL:(id)l componentName:(id)name legacyPopup:(BOOL)popup
{
  popupCopy = popup;
  messageCopy = message;
  titleCopy = title;
  lCopy = l;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = +[NSUserDefaults groupStandardUserDefaults];
  v18 = [v17 BOOLForKey:@"settingsView"];

  v19 = handleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v35) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " value is:%d", buf, 8u);
  }

  if (!v18 || popupCopy)
  {
    isSetupStillRunning = [(MRUINotificationHelper *)selfCopy isSetupStillRunning];
    while ((isSetupStillRunning & 1) != 0)
    {
      v21 = objc_autoreleasePoolPush();
      isSetupStillRunning = [(MRUINotificationHelper *)selfCopy isSetupStillRunning];
      objc_autoreleasePoolPop(v21);
      sleep(3u);
    }

    v22 = handleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      delay = selfCopy->delay;
      *buf = 138412546;
      v35 = titleCopy;
      v36 = 1024;
      v37 = delay;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Displaying %@ notification after %d delay", buf, 0x12u);
    }

    v24 = dispatch_semaphore_create(0);
    v25 = dispatch_time(0, 1000000000 * selfCopy->delay);
    v26 = qword_10001EB60;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009F60;
    block[3] = &unk_100018790;
    v33 = popupCopy;
    v29 = v24;
    v30 = titleCopy;
    v31 = messageCopy;
    v32 = lCopy;
    v27 = v24;
    dispatch_after(v25, v26, block);
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    selfCopy->delay += 5;
  }

  objc_sync_exit(selfCopy);
}

- (void)removeRepairNotificationsWithUniqueID:(id)d
{
  dCopy = d;
  v4 = qword_10001EB60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A624;
  block[3] = &unk_1000187B8;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_sync(v4, block);
}

- (void)clearRepairFollowUpWithUniqueID:(id)d
{
  dCopy = d;
  v4 = qword_10001EB60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AA50;
  block[3] = &unk_1000187B8;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_sync(v4, block);
}

@end
@interface SDAutoUnlockNotificationsManager
+ (id)sharedManager;
- (SDAutoUnlockNotificationsManager)init;
- (void)addObserver:(id)a3;
- (void)clearPhoneAutoUnlockUpsellNotification:(BOOL)a3;
- (void)dealloc;
- (void)invalidateNotificationTimer;
- (void)notifyObservers:(SEL)a3;
- (void)removeObserver:(id)a3;
- (void)restartNotificationTimer:(unint64_t)a3;
- (void)showAuthenticatedSiriForDeviceID:(id)a3;
- (void)showPhoneAutoRelockNotification;
- (void)showRequestToUnlockNotification;
- (void)showUnlockedByDeviceNotificationWithDeviceID:(id)a3;
@end

@implementation SDAutoUnlockNotificationsManager

+ (id)sharedManager
{
  if (qword_100989A80 != -1)
  {
    sub_10008F018();
  }

  v3 = qword_100989A78;

  return v3;
}

- (SDAutoUnlockNotificationsManager)init
{
  v8.receiver = self;
  v8.super_class = SDAutoUnlockNotificationsManager;
  v2 = [(SDAutoUnlockNotificationsManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.sharingd.phone-auto-unlock-client"];
    coreFollowUpController = v2->coreFollowUpController;
    v2->coreFollowUpController = v5;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SDAutoUnlockNotificationsManager;
  [(SDAutoUnlockNotificationsManager *)&v2 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSHashTable *)v5->_observers addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSHashTable *)v5->_observers removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)notifyObservers:(SEL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(SDAutoUnlockNotificationsManager *)v4 observers];
  v6 = [v5 allObjects];

  objc_sync_exit(v4);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          ([v11 methodForSelector:{a3, v12}])(v11, a3);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)showAuthenticatedSiriForDeviceID:(id)a3
{
  v3 = a3;
  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 deviceNameForDeviceID:v3];

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting %@ authenticated Siri by Apple Watch (device ID: %@)", &v7, 0x16u);
  }
}

- (void)showUnlockedByDeviceNotificationWithDeviceID:(id)a3
{
  v3 = a3;
  v4 = +[SDAutoUnlockTransport sharedTransport];
  v5 = [v4 deviceNameForDeviceID:v3];

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting %@ unlocked by Apple Watch (device ID: %@)", &v7, 0x16u);
  }
}

- (void)clearPhoneAutoUnlockUpsellNotification:(BOOL)a3
{
  v3 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing auto unlock notification (isUpsell=%@)", buf, 0xCu);
  }

  coreFollowUpController = self->coreFollowUpController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008E06C;
  v8[3] = &unk_1008CE558;
  v9 = v3;
  v8[4] = self;
  [(FLFollowUpController *)coreFollowUpController pendingFollowUpItemsWithCompletion:v8];
}

- (void)showPhoneAutoRelockNotification
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v4 = CUMainQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E6F4;
  v7[3] = &unk_1008CE028;
  v8 = v2;
  v9 = v3;
  v5 = v3;
  v6 = v2;
  dispatch_async(v4, v7);
}

- (void)showRequestToUnlockNotification
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v4 = CUMainQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008EA40;
  v7[3] = &unk_1008CE028;
  v8 = v2;
  v9 = v3;
  v5 = v3;
  v6 = v2;
  dispatch_async(v4, v7);
}

- (void)restartNotificationTimer:(unint64_t)a3
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting notification timer", buf, 2u);
  }

  v6 = [(SDAutoUnlockNotificationsManager *)self notificationTimer];

  if (!v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008EDFC;
    v10[3] = &unk_1008CDEA0;
    v10[4] = self;
    v7 = sub_1001F0548(0, &_dispatch_main_q, v10);
    [(SDAutoUnlockNotificationsManager *)self setNotificationTimer:v7];

    v8 = [(SDAutoUnlockNotificationsManager *)self notificationTimer];
    dispatch_resume(v8);
  }

  v9 = [(SDAutoUnlockNotificationsManager *)self notificationTimer];
  sub_1001F05F0(v9, a3);
}

- (void)invalidateNotificationTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invaliding suggestion scan timer", v6, 2u);
  }

  v4 = [(SDAutoUnlockNotificationsManager *)self notificationTimer];

  if (v4)
  {
    v5 = [(SDAutoUnlockNotificationsManager *)self notificationTimer];
    dispatch_source_cancel(v5);

    [(SDAutoUnlockNotificationsManager *)self setNotificationTimer:0];
  }
}

@end
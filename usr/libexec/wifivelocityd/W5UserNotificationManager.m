@interface W5UserNotificationManager
- (W5UserNotificationManager)init;
- (void)dispatchNotificationWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 type:(int64_t)a6 UUID:(id)a7 actionURL:(id)a8;
- (void)removeNotificationWithUUID:(id)a3;
@end

@implementation W5UserNotificationManager

- (W5UserNotificationManager)init
{
  v6.receiver = self;
  v6.super_class = W5UserNotificationManager;
  v2 = [(W5UserNotificationManager *)&v6 init];
  if (v2 && objc_opt_class())
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.wifivelocityd.usernotification"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_userNotificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter setWantsNotificationResponsesDelivered];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter requestAuthorizationWithOptions:3 completionHandler:&stru_1000E16B8];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter removeAllDeliveredNotifications];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter removeAllPendingNotificationRequests];
  }

  return v2;
}

- (void)dispatchNotificationWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 type:(int64_t)a6 UUID:(id)a7 actionURL:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if ((+[W5FeatureAvailability isInternalBuild]& 1) != 0)
  {
    v19 = objc_alloc_init(UNMutableNotificationContent);
    [v19 setTitle:v14];
    [v19 setSubtitle:v15];
    [v19 setBody:v16];
    [v19 setShouldIgnoreDoNotDisturb:1];
    [v19 setShouldIgnoreDowntime:1];
    if (a6)
    {
      if ((a6 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        [v19 setDefaultActionURL:v18];
      }
    }

    else
    {
      [v19 setShouldSuppressDefaultAction:1];
      v20 = +[UNNotificationSound defaultSound];
      [v19 setSound:v20];

      [v19 setInterruptionLevel:3];
    }

    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v22 = [v17 UUIDString];
    v23 = [UNNotificationRequest requestWithIdentifier:v22 content:v19 trigger:0 destinations:7];

    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v23 withCompletionHandler:&stru_1000E16D8];
  }

  else
  {
    v19 = sub_100098A04();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (void)removeNotificationWithUUID:(id)a3
{
  if (a3)
  {
    userNotificationCenter = self->_userNotificationCenter;
    v4 = [a3 UUIDString];
    v6 = v4;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [(UNUserNotificationCenter *)userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v5];
  }
}

@end
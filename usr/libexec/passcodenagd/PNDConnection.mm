@interface PNDConnection
+ (BOOL)isChangingPasscode;
+ (NSObject)statusLock;
+ (unint64_t)_cdpSecretTypeFromUnlockScreenType:(int)a3;
+ (void)_checkPasscodeCompliance;
+ (void)notifyCDPOfNewPasscodeWithContext:(id)a3 completion:(id)a4;
+ (void)registerKeepAliveFileDeleteNotification;
+ (void)registerLanguageChangedNotification;
+ (void)registerLockStateChangedNotification;
+ (void)registerSpringboardNotification;
+ (void)setIsChangingPasscode:(BOOL)a3;
+ (void)setPendingKeepAliveDeletion:(BOOL)a3;
+ (void)shutdown;
@end

@implementation PNDConnection

+ (NSObject)statusLock
{
  if (qword_10000C3C8 != -1)
  {
    sub_1000033BC();
  }

  v3 = qword_10000C3C0;

  return v3;
}

+ (BOOL)isChangingPasscode
{
  v2 = [a1 statusLock];
  objc_sync_enter(v2);
  v3 = byte_10000C3B8;
  objc_sync_exit(v2);

  return v3;
}

+ (void)setIsChangingPasscode:(BOOL)a3
{
  v5 = [a1 statusLock];
  objc_sync_enter(v5);
  byte_10000C3B8 = a3;
  v6 = byte_10000C3B9;
  objc_sync_exit(v5);

  if (!a3 && v6)
  {
    v7 = _MCLogObjects[6];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling postponed keep-alive deletion notification", v8, 2u);
    }

    [a1 shutdown];
  }
}

+ (void)setPendingKeepAliveDeletion:(BOOL)a3
{
  obj = [a1 statusLock];
  objc_sync_enter(obj);
  byte_10000C3B9 = a3;
  objc_sync_exit(obj);
}

+ (void)registerKeepAliveFileDeleteNotification
{
  v3 = MCPasscodeNagKeepAliveFilePath();
  v4 = open([v3 cStringUsingEncoding:1], 0x8000);

  if (v4 < 0)
  {
    v5 = _MCLogObjects[6];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not open file at Keep-Alive file!", buf, 2u);
    }

    [a1 shutdown];
  }

  v6 = dispatch_source_create(&_dispatch_source_type_vnode, v4, 1uLL, &_dispatch_main_q);
  v7 = qword_10000C3B0;
  qword_10000C3B0 = v6;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000024EC;
  handler[3] = &unk_100008398;
  handler[4] = a1;
  dispatch_source_set_event_handler(qword_10000C3B0, handler);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000025C0;
  v8[3] = &unk_1000083B8;
  v9 = v4;
  dispatch_source_set_cancel_handler(qword_10000C3B0, v8);
  dispatch_activate(qword_10000C3B0);
}

+ (void)shutdown
{
  v2 = _MCLogObjects[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "passcodenagd is shutting down...", buf, 2u);
  }

  if (qword_10000C3B0)
  {
    v3 = _MCLogObjects[6];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling Keep-Alive observer...", v7, 2u);
    }

    dispatch_source_cancel(qword_10000C3B0);
  }

  v4 = _MCLogObjects[6];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Closing any pending notification...", v6, 2u);
  }

  v5 = +[MCUserNotificationManager sharedManager];
  [v5 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:&stru_1000083D8];
}

+ (void)registerSpringboardNotification
{
  out_token = 0;
  v3 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002884;
  v6[3] = &unk_1000083F8;
  v6[4] = a1;
  v4 = notify_register_dispatch("com.apple.springboard.homescreenunlocked", &out_token, v3, v6);

  if (v4)
  {
    v5 = _MCLogObjects[6];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not register for homescreen unlocked darwin notification error %{public}d", buf, 8u);
    }
  }
}

+ (void)registerLockStateChangedNotification
{
  out_token = 0;
  v2 = dispatch_get_global_queue(0, 0);
  v3 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v2, &stru_100008438);

  if (v3)
  {
    v4 = _MCLogObjects[6];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not register for MBK lock state changed darwin notification error %{public}d", buf, 8u);
    }
  }
}

+ (void)registerLanguageChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100002B20, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

+ (void)_checkPasscodeCompliance
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = qword_10000C3A8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002C38;
  v5[3] = &unk_100008488;
  v6 = v2;
  v4 = v2;
  [v4 getPasscodeComplianceWarningLastLockDate:v3 completionBlock:v5];
}

+ (void)notifyCDPOfNewPasscodeWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MCProfileConnection sharedConnection];
  v9 = [v7 externalizedContext];
  v10 = [v8 unlockScreenTypeForPasscodeContext:v9 outSimplePasscodeType:0];

  v11 = [a1 _cdpSecretTypeFromUnlockScreenType:v10];
  v12 = objc_alloc_init(CDPContext);
  [v12 setType:6];
  v13 = [[CDPStateController alloc] initWithContext:v12];
  v14 = [v7 passcode];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003130;
  v16[3] = &unk_1000084B0;
  v17 = v6;
  v15 = v6;
  [v13 localSecretChangedTo:v14 secretType:v11 completion:v16];
}

+ (unint64_t)_cdpSecretTypeFromUnlockScreenType:(int)a3
{
  if ((a3 - 1) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

@end
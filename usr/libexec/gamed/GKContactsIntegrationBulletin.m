@interface GKContactsIntegrationBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
@end

@implementation GKContactsIntegrationBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:GKPushCommandKey];
  v7 = [v6 integerValue];

  if (v7 << 16 != 19726336)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002967BC(v7, v12);
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    v5[2](v5, 0);
    goto LABEL_12;
  }

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Handling clear cache push notification", buf, 2u);
  }

  v10 = +[GKContactsIntegrationController sharedController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A2D90;
  v13[3] = &unk_100361CB8;
  v14 = v5;
  [v10 clearCachesWithCompletionHandler:v13];

LABEL_12:
}

@end
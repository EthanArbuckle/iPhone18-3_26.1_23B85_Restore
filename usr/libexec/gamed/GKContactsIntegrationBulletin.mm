@interface GKContactsIntegrationBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
@end

@implementation GKContactsIntegrationBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [notification objectForKey:GKPushCommandKey];
  integerValue = [v6 integerValue];

  if (integerValue << 16 != 19726336)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002967BC(integerValue, v12);
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_12;
    }

    handlerCopy[2](handlerCopy, 0);
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
  v14 = handlerCopy;
  [v10 clearCachesWithCompletionHandler:v13];

LABEL_12:
}

@end
@interface GKRelayBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
@end

@implementation GKRelayBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKRelayBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountRelay];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100181194;
  v12[3] = &unk_100361770;
  v11 = notificationCopy;
  v13 = v11;
  [self performAsync:v12];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end
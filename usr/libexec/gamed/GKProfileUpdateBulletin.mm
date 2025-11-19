@interface GKProfileUpdateBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
@end

@implementation GKProfileUpdateBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKProfileUpdateBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v9 = +[GKReporter reporter];
  [v9 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountProfileUpdate];

  v10 = [v5 objectForKeyedSubscript:@"i"];
  if (v10)
  {
    v11 = +[GKBulletin cacheTransactionGroup];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001814CC;
    v14[3] = &unk_100362920;
    v15 = v10;
    [v11 performOnManagedObjectContext:v14];
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294F94(v13);
    }
  }
}

@end
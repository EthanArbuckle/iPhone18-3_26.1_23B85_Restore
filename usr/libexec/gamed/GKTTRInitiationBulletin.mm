@interface GKTTRInitiationBulletin
+ (id)packFakeTTRBulletinWithInfo:(id)a3;
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (void)assembleBulletin;
@end

@implementation GKTTRInitiationBulletin

+ (id)packFakeTTRBulletinWithInfo:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTTRInitiationBulletin: packFakeTTRBulletinWithInfo", buf, 2u);
  }

  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___GKTTRInitiationBulletin;
  v7 = objc_msgSendSuper2(&v15, "packFakeTTRBulletinWithInfo:", v4);
  v8 = [v7 mutableCopy];

  [v8 setObject:&off_1003825E0 forKeyedSubscript:GKPushCommandKey];
  v9 = GKTTRBulletinKeySubtitle;
  v10 = [v4 objectForKeyedSubscript:GKTTRBulletinKeySubtitle];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"Did you encounter any issues? Tap here to file a radar.";
  }

  [v8 setObject:v12 forKeyedSubscript:v9];

  v13 = [v8 copy];

  return v13;
}

- (void)assembleBulletin
{
  v3.receiver = self;
  v3.super_class = GKTTRInitiationBulletin;
  [(GKTTRBulletin *)&v3 assembleBulletin];
  [(GKBulletin *)self setCategoryIdentifier:@"GKNotificationCategoryActionsTTRInitiation"];
}

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
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKTTRBulletin: loadBulletinsForPushNotification", v11, 2u);
  }

  v9 = [(GKTTRBulletin *)[GKTTRInitiationBulletin alloc] initWithPushNotification:v5];
  [(GKTTRInitiationBulletin *)v9 assembleBulletin];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  v6[2](v6, v10);
}

@end
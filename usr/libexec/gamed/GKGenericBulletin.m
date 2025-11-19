@interface GKGenericBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (void)assembleBulletinFromPushNotification:(id)a3;
@end

@implementation GKGenericBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKGenericBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountTurnBased];

  v11 = [[NSMutableArray alloc] initWithCapacity:1];
  v12 = [[a1 alloc] initWithPushNotification:v6];
  v13 = [v6 objectForKeyedSubscript:@"i"];
  v14 = +[GKClientProxy gameCenterClient];
  if (v13)
  {
    +[GKPlayerCredentialController sharedController];
    v15 = v20 = v6;
    v16 = [v15 pushCredentialForEnvironment:{objc_msgSend(v14, "environment")}];
    v17 = [v16 playerInternal];
    v18 = [v17 playerID];
    v19 = [v18 isEqualToString:v13];

    v6 = v20;
    if (v19)
    {
      [v12 assembleBulletinFromPushNotification:v20];
      [v11 addObject:v12];
    }
  }

  if (v7)
  {
    v7[2](v7, v11);
  }
}

- (void)assembleBulletinFromPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKGenericBulletin assembleBulletinFromPushNotification:", buf, 2u);
  }

  v7 = [v4 objectForKeyedSubscript:@"b"];
  v8 = [v4 objectForKeyedSubscript:@"u"];
  v17 = [v4 objectForKeyedSubscript:@"t"];
  v9 = [v4 objectForKeyedSubscript:@"m"];
  v10 = [v4 objectForKeyedSubscript:@"n"];
  v11 = [v4 objectForKeyedSubscript:@"y"];
  v12 = [v4 objectForKeyedSubscript:@"o"];
  v13 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v13 setType:1];
  [(GKBulletinAction *)v13 setTitle:v11];
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v7;
  }

  [(GKBulletinAction *)v13 setInfo:v14];
  if ([v12 integerValue] == 2)
  {
    v15 = objc_alloc_init(GKBulletinAction);
    [(GKBulletinAction *)v15 setType:0];
    [(GKBulletinAction *)v15 setTitle:v10];
    [(GKBulletinAction *)v15 setInfo:&stru_100374F10];
    [(GKBulletin *)self setDismissAction:v15];
  }

  [(GKBulletin *)self setMessage:v9];
  [(GKBulletin *)self setHasSound:1];
  [(GKBulletin *)self setSoundPath:0];
  v16 = +[NSDate date];
  [(GKBulletin *)self setDate:v16];

  [(GKBulletin *)self setTitle:v17];
  [(GKBulletin *)self setDefaultAction:v13];
  [(GKBulletin *)self setBulletinType:1];
}

@end
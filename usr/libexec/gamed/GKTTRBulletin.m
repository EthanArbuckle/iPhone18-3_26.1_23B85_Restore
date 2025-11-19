@interface GKTTRBulletin
+ (id)packFakeTTRBulletinWithInfo:(id)a3;
- (GKTTRBulletin)initWithPushNotification:(id)a3;
- (void)assembleBulletin;
- (void)handleAction:(id)a3;
@end

@implementation GKTTRBulletin

+ (id)packFakeTTRBulletinWithInfo:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKTTRBulletin: packFakeTTRBulletinWithInfo", v13, 2u);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = GKTTRBulletinKeyType;
  v8 = [v3 objectForKeyedSubscript:GKTTRBulletinKeyType];
  [v6 setObject:v8 forKeyedSubscript:v7];

  v9 = GKTTRBulletinKeyURL;
  v10 = [v3 objectForKeyedSubscript:GKTTRBulletinKeyURL];
  [v6 setObject:v10 forKeyedSubscript:v9];

  v11 = [v6 copy];

  return v11;
}

- (GKTTRBulletin)initWithPushNotification:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTTRBulletin: packFakeTTRBulletinWithInfo: %@", buf, 0xCu);
  }

  v13.receiver = self;
  v13.super_class = GKTTRBulletin;
  v7 = [(GKBulletin *)&v13 initWithPushNotification:v4];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:GKTTRBulletinKeySubtitle];
    v9 = [NSString stringWithFormat:@"[Internal Only] %@", v8];
    [(GKBulletin *)v7 setMessage:v9];

    [(GKBulletin *)v7 setTitle:@"Game Center Tap-to-Radar"];
    v10 = [v4 objectForKeyedSubscript:GKTTRBulletinKeyType];
    -[GKTTRBulletin setTtrBulletinType:](v7, "setTtrBulletinType:", [v10 integerValue]);

    v11 = [v4 objectForKeyedSubscript:GKTTRBulletinKeyURL];
    [(GKTTRBulletin *)v7 setTtrURLString:v11];
  }

  return v7;
}

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTTRBulletin: assembleBulletin", v11, 2u);
  }

  v5 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v5 setType:0];
  v6 = [(GKTTRBulletin *)self ttrURLString];
  [(GKBulletinAction *)v5 setInfo:v6];

  v7 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v7 setType:0];
  [(GKBulletinAction *)v7 setInfo:&stru_100374F10];
  [(GKBulletinAction *)v7 setInAlertView:0];
  [(GKBulletinAction *)v7 setIsDestructive:1];
  v8 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v8 setType:0];
  [(GKBulletinAction *)v8 setInfo:&stru_100374F10];
  [(GKBulletinAction *)v8 setIsDestructive:1];
  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setDeclineAction:v7];
  [(GKBulletin *)self setDismissAction:v8];
  [(GKBulletin *)self setHasSound:1];
  v9 = +[NSDate date];
  [(GKBulletin *)self setDate:v9];

  v10 = [NSDate dateWithTimeIntervalSinceNow:7200.0];
  [(GKBulletin *)self setExpirationDate:v10];

  [(GKBulletin *)self setBulletinType:2];
}

- (void)handleAction:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTTRBulletin: handleAction", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = GKTTRBulletin;
  [(GKBulletin *)&v16 handleAction:v4];
  if ([v4 isEqualToString:@"GKAccepted"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"GKDefault"))
  {
    v7 = [(GKTTRBulletin *)self ttrURLString];
    v8 = [NSURL URLWithString:v7];

    if (v8)
    {
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "TTRBulletin opening URL: %@", buf, 0xCu);
      }

      v11 = +[GKApplicationWorkspace defaultWorkspace];
      [v11 openURL:v8];
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
        sub_10028E6B8(v13, self);
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Refused to upload sysdiagnose", buf, 2u);
    }
  }
}

@end
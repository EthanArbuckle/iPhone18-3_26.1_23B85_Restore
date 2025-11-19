@interface GKRealTimeMultiplayerSendBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKRealTimeMultiplayerSendBulletin)initWithCoder:(id)a3;
- (GKRealTimeMultiplayerSendBulletin)initWithPushNotification:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKRealTimeMultiplayerSendBulletin

- (GKRealTimeMultiplayerSendBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin initWithPushNotification:", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = GKRealTimeMultiplayerSendBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v15 initWithPushNotification:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [(GKRealTimeMultiplayerBulletin *)v7 clientDictionary];
    v10 = [v9 objectForKeyedSubscript:@"bundle-id"];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v10;

    v12 = [v4 objectForKeyedSubscript:@"y"];
    sendReason = v8->_sendReason;
    v8->_sendReason = v12;
  }

  return v8;
}

- (GKRealTimeMultiplayerSendBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin initWithCoder:", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = GKRealTimeMultiplayerSendBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v13 initWithCoder:v4];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendReason"];
    sendReason = v7->_sendReason;
    v7->_sendReason = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin encodeWithCoder:", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = GKRealTimeMultiplayerSendBulletin;
  [(GKRealTimeMultiplayerBulletin *)&v9 encodeWithCoder:v4];
  v7 = [(GKRealTimeMultiplayerSendBulletin *)self bundleIdentifier];
  [v4 encodeObject:v7 forKey:@"bundleIdentifier"];

  v8 = [(GKRealTimeMultiplayerSendBulletin *)self sendReason];
  [v4 encodeObject:v8 forKey:@"sendReason"];
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 1179, "+[GKRealTimeMultiplayerSendBulletin loadBulletinsForPushNotification:withHandler:]");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100195960;
  v10[3] = &unk_100361270;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [GKActivity named:v7 execute:v10];
}

@end
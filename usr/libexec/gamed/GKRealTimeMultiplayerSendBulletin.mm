@interface GKRealTimeMultiplayerSendBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKRealTimeMultiplayerSendBulletin)initWithCoder:(id)coder;
- (GKRealTimeMultiplayerSendBulletin)initWithPushNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKRealTimeMultiplayerSendBulletin

- (GKRealTimeMultiplayerSendBulletin)initWithPushNotification:(id)notification
{
  notificationCopy = notification;
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
  v7 = [(GKRealTimeMultiplayerBulletin *)&v15 initWithPushNotification:notificationCopy];
  v8 = v7;
  if (v7)
  {
    clientDictionary = [(GKRealTimeMultiplayerBulletin *)v7 clientDictionary];
    v10 = [clientDictionary objectForKeyedSubscript:@"bundle-id"];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v10;

    v12 = [notificationCopy objectForKeyedSubscript:@"y"];
    sendReason = v8->_sendReason;
    v8->_sendReason = v12;
  }

  return v8;
}

- (GKRealTimeMultiplayerSendBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  v7 = [(GKRealTimeMultiplayerBulletin *)&v13 initWithCoder:coderCopy];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendReason"];
    sendReason = v7->_sendReason;
    v7->_sendReason = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
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
  [(GKRealTimeMultiplayerBulletin *)&v9 encodeWithCoder:coderCopy];
  bundleIdentifier = [(GKRealTimeMultiplayerSendBulletin *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  sendReason = [(GKRealTimeMultiplayerSendBulletin *)self sendReason];
  [coderCopy encodeObject:sendReason forKey:@"sendReason"];
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKRealTimeMultiplayerBulletin.m", 1179, "+[GKRealTimeMultiplayerSendBulletin loadBulletinsForPushNotification:withHandler:]");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100195960;
  v10[3] = &unk_100361270;
  v11 = notificationCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = notificationCopy;
  [GKActivity named:v7 execute:v10];
}

@end
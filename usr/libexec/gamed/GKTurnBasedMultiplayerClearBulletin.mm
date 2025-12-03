@interface GKTurnBasedMultiplayerClearBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKTurnBasedMultiplayerClearBulletin)initWithCoder:(id)coder;
- (GKTurnBasedMultiplayerClearBulletin)initWithPushNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKTurnBasedMultiplayerClearBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerClearBulletin loadBulletinsForPushNotification: withHandler:", v13, 2u);
  }

  v9 = +[GKReporter reporter];
  [v9 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountTurnBasedClear];

  v10 = objc_alloc_init(GKTurnBasedMultiplayerClearBulletin);
  v11 = +[GKBulletinController sharedController];
  matchID = [(GKTurnBasedMultiplayerBulletin *)v10 matchID];
  [v11 clearTurnBasedBulletinsForMatchID:matchID];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (GKTurnBasedMultiplayerClearBulletin)initWithPushNotification:(id)notification
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerClearBulletin initWithPushNotification:", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = GKTurnBasedMultiplayerClearBulletin;
  v7 = [(GKTurnBasedMultiplayerBulletin *)&v13 initWithPushNotification:notificationCopy];
  if (v7)
  {
    v8 = [notificationCopy objectForKey:@"cc"];
    integerValue = [v8 integerValue];

    v10 = 3;
    if (integerValue != 81)
    {
      v10 = 0;
    }

    if (integerValue == 80)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    [(GKTurnBasedMultiplayerClearBulletin *)v7 setClearType:v11];
  }

  return v7;
}

- (GKTurnBasedMultiplayerClearBulletin)initWithCoder:(id)coder
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerClearBulletin initWithCoder:", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = GKTurnBasedMultiplayerClearBulletin;
  v7 = [(GKTurnBasedMultiplayerBulletin *)&v10 initWithCoder:coderCopy];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clearType"];
    v7->_clearType = [v8 integerValue];
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerClearBulletin encodeWithCoder:", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = GKTurnBasedMultiplayerClearBulletin;
  [(GKTurnBasedMultiplayerBulletin *)&v8 encodeWithCoder:coderCopy];
  v7 = [NSNumber numberWithInteger:[(GKTurnBasedMultiplayerClearBulletin *)self clearType]];
  [coderCopy encodeObject:v7 forKey:@"clearType"];
}

@end
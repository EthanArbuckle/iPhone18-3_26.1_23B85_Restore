@interface GKRealTimeMultiplayerDeclineBulletin
- (void)assembleBulletin;
@end

@implementation GKRealTimeMultiplayerDeclineBulletin

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerDeclineBulletin assembleBulletin", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = GKRealTimeMultiplayerDeclineBulletin;
  [(GKRealTimeMultiplayerActionBulletin *)&v12 assembleBulletin];
  v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_TITLE];
  v6 = [(GKBulletin *)self gameName];
  v7 = [NSString localizedStringWithFormat:v5, v6];
  [(GKBulletin *)self setTitle:v7];

  v8 = [(GKGameplayBulletin *)self originatorPlayer];
  v9 = [v8 displayNameWithOptions:0];

  if (v9)
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_INVITEE_DECLINED_ALERT_MESSAGE_ALIAS_1_FORMAT];
    v11 = [NSString localizedStringWithFormat:v10, v9];
    [(GKBulletin *)self setMessage:v11];
  }

  else
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_INVITEE_DECLINED_ALERT_MESSAGE];
    [(GKBulletin *)self setMessage:v10];
  }

  [(GKBulletin *)self setBulletinType:403];
}

@end
@interface GKTurnBasedMultiplayerTurnReminderBulletin
- (void)update;
@end

@implementation GKTurnBasedMultiplayerTurnReminderBulletin

- (void)update
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMultiplayerTurnReminderBulletin update", v5, 2u);
  }

  [(GKTurnBasedMultiplayerBulletin *)self updateBadgeCount];
}

@end
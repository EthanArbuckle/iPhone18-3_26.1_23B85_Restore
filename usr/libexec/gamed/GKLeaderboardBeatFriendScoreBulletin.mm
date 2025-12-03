@interface GKLeaderboardBeatFriendScoreBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKLeaderboardBeatFriendScoreBulletin)initWithPushNotification:(id)notification;
- (void)handleAction:(id)action;
@end

@implementation GKLeaderboardBeatFriendScoreBulletin

- (void)handleAction:(id)action
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v4);
  sub_10024E86C(v5, ObjCClassMetadata, v4);
  _Block_release(v4);
}

- (GKLeaderboardBeatFriendScoreBulletin)initWithPushNotification:(id)notification
{
  if (notification)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_10024FAFC(v3);
}

@end
@interface GKLeaderboardBeatFriendScoreBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKLeaderboardBeatFriendScoreBulletin)initWithPushNotification:(id)a3;
- (void)handleAction:(id)a3;
@end

@implementation GKLeaderboardBeatFriendScoreBulletin

- (void)handleAction:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v4);
  sub_10024E86C(v5, ObjCClassMetadata, v4);
  _Block_release(v4);
}

- (GKLeaderboardBeatFriendScoreBulletin)initWithPushNotification:(id)a3
{
  if (a3)
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
@interface GKLeaderboardChallengeBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKLeaderboardChallengeBulletin)initWithPushNotification:(id)a3;
- (void)handleAction:(id)a3;
@end

@implementation GKLeaderboardChallengeBulletin

- (void)handleAction:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_100276AF4();
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_getObjCClassMetadata();
  sub_1002770C8(v5, sub_1001FBD0C, v6);
}

- (GKLeaderboardChallengeBulletin)initWithPushNotification:(id)a3
{
  if (a3)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_1002788DC(v3);
}

@end
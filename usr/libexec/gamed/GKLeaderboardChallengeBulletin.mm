@interface GKLeaderboardChallengeBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKLeaderboardChallengeBulletin)initWithPushNotification:(id)notification;
- (void)handleAction:(id)action;
@end

@implementation GKLeaderboardChallengeBulletin

- (void)handleAction:(id)action
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100276AF4();
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_getObjCClassMetadata();
  sub_1002770C8(v5, sub_1001FBD0C, v6);
}

- (GKLeaderboardChallengeBulletin)initWithPushNotification:(id)notification
{
  if (notification)
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
@interface GKGameActivityBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKGameActivityBulletin)initWithPushNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
- (void)handleAction:(id)action;
@end

@implementation GKGameActivityBulletin

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1002846DC(coderCopy);
}

- (void)handleAction:(id)action
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100284D3C(v4, v6);
}

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_getObjCClassMetadata();
  sub_10028567C(v5, sub_1001FBD0C, v6);
}

- (GKGameActivityBulletin)initWithPushNotification:(id)notification
{
  if (notification)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100286B6C();
}

@end
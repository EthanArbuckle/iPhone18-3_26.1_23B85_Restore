@interface GKFriendBulletin
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
- (GKFriendBulletin)initWithPushNotification:(id)notification;
- (void)handleAction:(id)action;
@end

@implementation GKFriendBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v4);
  sub_1001F7890(v5, ObjCClassMetadata, v4);
  _Block_release(v4);
}

- (void)handleAction:(id)action
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001FA3D8();
}

- (GKFriendBulletin)initWithPushNotification:(id)notification
{
  if (notification)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_1001FB940(v3);
}

@end
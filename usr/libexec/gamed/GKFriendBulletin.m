@interface GKFriendBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKFriendBulletin)initWithPushNotification:(id)a3;
- (void)handleAction:(id)a3;
@end

@implementation GKFriendBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v4);
  sub_1001F7890(v5, ObjCClassMetadata, v4);
  _Block_release(v4);
}

- (void)handleAction:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1001FA3D8();
}

- (GKFriendBulletin)initWithPushNotification:(id)a3
{
  if (a3)
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
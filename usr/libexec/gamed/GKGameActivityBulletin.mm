@interface GKGameActivityBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKGameActivityBulletin)initWithPushNotification:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleAction:(id)a3;
@end

@implementation GKGameActivityBulletin

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002846DC(v4);
}

- (void)handleAction:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100284D3C(v4, v6);
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_getObjCClassMetadata();
  sub_10028567C(v5, sub_1001FBD0C, v6);
}

- (GKGameActivityBulletin)initWithPushNotification:(id)a3
{
  if (a3)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100286B6C();
}

@end
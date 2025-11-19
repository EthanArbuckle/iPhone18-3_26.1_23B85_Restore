@interface GKCacheableEntity
+ (id)createWithBagKey:(id)a3 entityID:(id)a4 entity:(id)a5;
+ (id)createWithEntityID:(id)a3 entity:(id)a4;
@end

@implementation GKCacheableEntity

+ (id)createWithEntityID:(id)a3 entity:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v4 = sub_100204FD4();
  swift_unknownObjectRelease();

  return v4;
}

+ (id)createWithBagKey:(id)a3 entityID:(id)a4 entity:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v5 = sub_1002050BC();
  swift_unknownObjectRelease();

  return v5;
}

@end
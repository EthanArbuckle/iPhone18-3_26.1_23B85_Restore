@interface GKCacheableEntity
+ (id)createWithBagKey:(id)key entityID:(id)d entity:(id)entity;
+ (id)createWithEntityID:(id)d entity:(id)entity;
@end

@implementation GKCacheableEntity

+ (id)createWithEntityID:(id)d entity:(id)entity
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v4 = sub_100204FD4();
  swift_unknownObjectRelease();

  return v4;
}

+ (id)createWithBagKey:(id)key entityID:(id)d entity:(id)entity
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
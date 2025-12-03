@interface SDXPCHelperImageCache
+ (BOOL)cacheIsEmpty;
+ (CGImage)imageForKey:(id)key contactIDs:(id)ds;
+ (void)evictWithContactIdentifier:(id)identifier;
+ (void)setImage:(CGImage *)image forKey:(id)key contactIDs:(id)ds;
- (_TtC16DaemoniOSLibrary21SDXPCHelperImageCache)init;
@end

@implementation SDXPCHelperImageCache

+ (void)evictWithContactIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _s16DaemoniOSLibrary21SDXPCHelperImageCacheC5evict17contactIdentifierySS_tFZ_0(v3, v4);
}

+ (void)setImage:(CGImage *)image forKey:(id)key contactIDs:(id)ds
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  imageCopy = image;
  _s16DaemoniOSLibrary21SDXPCHelperImageCacheC03setD0_6forKey10contactIDsySo10CGImageRefa_SSSaySSGtFZ_0(imageCopy, v6, v8, v9);
}

+ (BOOL)cacheIsEmpty
{
  defaultManager = [objc_opt_self() defaultManager];
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_10000C4AC(v3, qword_100987D18);
  URL.path.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [defaultManager fileExistsAtPath:v4];

  return v5 ^ 1;
}

+ (CGImage)imageForKey:(id)key contactIDs:(id)ds
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = _s16DaemoniOSLibrary21SDXPCHelperImageCacheC11imageForKey_10contactIDsSo10CGImageRefaSgSS_SaySSGtFZ_0(v4, v6, v7);

  return v8;
}

- (_TtC16DaemoniOSLibrary21SDXPCHelperImageCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SDXPCHelperImageCache();
  return [(SDXPCHelperImageCache *)&v3 init];
}

@end
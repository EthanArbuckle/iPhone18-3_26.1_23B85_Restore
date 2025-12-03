@interface CLMicroLocationKeychain
+ (BOOL)removeKey:(id)key;
+ (id)getSymmetricKeyOrCreateNew:(id)new;
@end

@implementation CLMicroLocationKeychain

+ (id)getSymmetricKeyOrCreateNew:(id)new
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_1003D6830(v3, v5, &v14);

  v6 = v15;
  if (v15)
  {
    v7 = sub_1003D6510(&v14, v15);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_1003D6554(&v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_1003D9DA0(v3, v4);

  return v5;
}

@end
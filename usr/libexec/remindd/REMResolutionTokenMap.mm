@interface REMResolutionTokenMap
+ (id)newObjectFromJSONObject:(id)object;
+ (id)objc_newObjectFromJSONString:(id)string;
- (id)objc_toJSONString;
@end

@implementation REMResolutionTokenMap

+ (id)newObjectFromJSONObject:(id)object
{
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = sub_10072AC10(v3);

  return v4;
}

- (id)objc_toJSONString
{
  selfCopy = self;
  sub_1001E1D20();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)objc_newObjectFromJSONString:(id)string
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_10072B05C();

  return v3;
}

@end
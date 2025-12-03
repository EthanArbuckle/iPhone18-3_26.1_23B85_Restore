@interface SESBootScopedStorage
+ (_TtC10seserviced20SESBootScopedStorage)shared;
- (id)getNumberFor:(id)for;
- (void)setNumberFor:(id)for value:(id)value;
@end

@implementation SESBootScopedStorage

+ (_TtC10seserviced20SESBootScopedStorage)shared
{
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B348;

  return v3;
}

- (id)getNumberFor:(id)for
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100074F10();
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(NSNumber) initWithInteger:v6];
  }

  return v9;
}

- (void)setNumberFor:(id)for value:(id)value
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  valueCopy = value;
  selfCopy = self;
  sub_10008BD40(v6, v8, [valueCopy integerValue], 0);
}

@end
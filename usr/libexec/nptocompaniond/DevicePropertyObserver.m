@interface DevicePropertyObserver
- (_TtC14nptocompaniond22DevicePropertyObserver)init;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
@end

@implementation DevicePropertyObserver

- (_TtC14nptocompaniond22DevicePropertyObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v15, 0, sizeof(v15));
    v13 = a3;
    v14 = self;
    goto LABEL_6;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  sub_10000472C(a3, v8, v10);

  sub_100004B84(v15);
}

@end
@interface DevicePropertyObserver
- (_TtC14nptocompaniond22DevicePropertyObserver)init;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
@end

@implementation DevicePropertyObserver

- (_TtC14nptocompaniond22DevicePropertyObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  if (!change)
  {
    v8 = 0;
    v10 = 0;
    if (value)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v15, 0, sizeof(v15));
    deviceCopy = device;
    selfCopy = self;
    goto LABEL_6;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (!value)
  {
    goto LABEL_5;
  }

LABEL_3:
  deviceCopy2 = device;
  swift_unknownObjectRetain();
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  sub_10000472C(device, v8, v10);

  sub_100004B84(v15);
}

@end
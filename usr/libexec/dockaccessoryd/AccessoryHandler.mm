@interface AccessoryHandler
- (void)accessoryConnectionDetached:(id)detached;
@end

@implementation AccessoryHandler

- (void)accessoryConnectionDetached:(id)detached
{
  if (detached)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000A18F0(v4, v6);
}

@end
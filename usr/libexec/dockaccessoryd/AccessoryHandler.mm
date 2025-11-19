@interface AccessoryHandler
- (void)accessoryConnectionDetached:(id)a3;
@end

@implementation AccessoryHandler

- (void)accessoryConnectionDetached:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1000A18F0(v4, v6);
}

@end
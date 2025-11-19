@interface DIPWatch
- (void)identityRemoteDeviceService:(id)a3 didReceiveEvent:(unint64_t)a4 fromRemoteDeviceWithID:(id)a5 eventContext:(id)a6;
@end

@implementation DIPWatch

- (void)identityRemoteDeviceService:(id)a3 didReceiveEvent:(unint64_t)a4 fromRemoteDeviceWithID:(id)a5 eventContext:(id)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (a6)
  {
    a6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = a3;
  v14 = self;
  sub_1006774C8(v13, a4, v10, v12, a6);
}

@end
@interface DIPWatch
- (void)identityRemoteDeviceService:(id)service didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context;
@end

@implementation DIPWatch

- (void)identityRemoteDeviceService:(id)service didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (context)
  {
    context = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1006774C8(serviceCopy, event, v10, v12, context);
}

@end
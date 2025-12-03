@interface AppleAccountDeviceMonitor.ServiceDelegate
- (_TtCC8coreidvd25AppleAccountDeviceMonitorP33_82887AFD0E92FAFAEDB3A7101388C34115ServiceDelegate)init;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation AppleAccountDeviceMonitor.ServiceDelegate

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  sub_100502D30(service);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  if (changed)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  sub_100502FAC(service);
}

- (_TtCC8coreidvd25AppleAccountDeviceMonitorP33_82887AFD0E92FAFAEDB3A7101388C34115ServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
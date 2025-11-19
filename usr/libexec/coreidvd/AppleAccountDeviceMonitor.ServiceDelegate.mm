@interface AppleAccountDeviceMonitor.ServiceDelegate
- (_TtCC8coreidvd25AppleAccountDeviceMonitorP33_82887AFD0E92FAFAEDB3A7101388C34115ServiceDelegate)init;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation AppleAccountDeviceMonitor.ServiceDelegate

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (a4)
  {
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100502D30(a3);
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100502FAC(a3);
}

- (_TtCC8coreidvd25AppleAccountDeviceMonitorP33_82887AFD0E92FAFAEDB3A7101388C34115ServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
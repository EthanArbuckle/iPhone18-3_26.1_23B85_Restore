@interface PushTokenMonitor.PushDelegate
- (_TtCC13findmylocated16PushTokenMonitorP33_563BA6038F1BAEF600D1CF24D8E6003E12PushDelegate)init;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushTokenMonitor.PushDelegate

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_1003C44A4(v9, v11);
  sub_10001A794(v9, v11);
}

- (_TtCC13findmylocated16PushTokenMonitorP33_563BA6038F1BAEF600D1CF24D8E6003E12PushDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
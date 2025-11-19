@interface SecureLocationsStewieManager
- (_TtC13findmylocated28SecureLocationsStewieManager)init;
- (void)connectedServicesChanged:(int64_t)a3;
- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5;
- (void)stateChanged:(id)a3;
- (void)stewieSupportChanged;
@end

@implementation SecureLocationsStewieManager

- (_TtC13findmylocated28SecureLocationsStewieManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();
  v9 = self;
  sub_10011E934(a3);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10011C848(v4);
}

- (void)connectedServicesChanged:(int64_t)a3
{
  v3 = a3;
  v4 = self;
  sub_10011CB4C(v3);
}

- (void)stewieSupportChanged
{
  v2 = self;
  sub_10011CF88();
}

@end
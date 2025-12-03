@interface SecureLocationsStewieManager
- (_TtC13findmylocated28SecureLocationsStewieManager)init;
- (void)connectedServicesChanged:(int64_t)changed;
- (void)messageReceived:(id)received withMetadata:(id)metadata completionBlock:(id)block;
- (void)stateChanged:(id)changed;
- (void)stewieSupportChanged;
@end

@implementation SecureLocationsStewieManager

- (_TtC13findmylocated28SecureLocationsStewieManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageReceived:(id)received withMetadata:(id)metadata completionBlock:(id)block
{
  v8 = _Block_copy(block);
  if (metadata)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10011E934(received);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10011C848(changedCopy);
}

- (void)connectedServicesChanged:(int64_t)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10011CB4C(changedCopy);
}

- (void)stewieSupportChanged
{
  selfCopy = self;
  sub_10011CF88();
}

@end
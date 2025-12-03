@interface FenceService.Trampoline
- (_TtCC13findmylocated12FenceService10Trampoline)init;
- (void)request:(id)request completion:(id)completion;
@end

@implementation FenceService.Trampoline

- (void)request:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100003948(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1000049D0(v8, v10);
}

- (_TtCC13findmylocated12FenceService10Trampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
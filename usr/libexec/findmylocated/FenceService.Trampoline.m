@interface FenceService.Trampoline
- (_TtCC13findmylocated12FenceService10Trampoline)init;
- (void)request:(id)a3 completion:(id)a4;
@end

@implementation FenceService.Trampoline

- (void)request:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100003948(v8, v10, v11, v6);
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
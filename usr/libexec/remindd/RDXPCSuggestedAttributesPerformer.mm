@interface RDXPCSuggestedAttributesPerformer
- (_TtC7remindd33RDXPCSuggestedAttributesPerformer)init;
- (void)performSwiftInvocation:(id)a3 withParametersData:(id)a4 storages:(id)a5 completion:(id)a6;
- (void)preWarmModels;
@end

@implementation RDXPCSuggestedAttributesPerformer

- (void)preWarmModels
{
  v2 = self;
  sub_100247294();
}

- (void)performSwiftInvocation:(id)a3 withParametersData:(id)a4 storages:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v19 = a3;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v13)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v12->super.isa + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_storePerformer);
  _Block_copy(v10);
  sub_100577DC8(v19, v14, v16, v17, v12, v18, v10);
  _Block_release(v10);

  _Block_release(v10);
  sub_10001BBA0(v14, v16);
}

- (_TtC7remindd33RDXPCSuggestedAttributesPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
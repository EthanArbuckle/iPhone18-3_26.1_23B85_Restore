@interface RDXPCSuggestedAttributesPerformer
- (_TtC7remindd33RDXPCSuggestedAttributesPerformer)init;
- (void)performSwiftInvocation:(id)invocation withParametersData:(id)data storages:(id)storages completion:(id)completion;
- (void)preWarmModels;
@end

@implementation RDXPCSuggestedAttributesPerformer

- (void)preWarmModels
{
  selfCopy = self;
  sub_100247294();
}

- (void)performSwiftInvocation:(id)invocation withParametersData:(id)data storages:(id)storages completion:(id)completion
{
  v10 = _Block_copy(completion);
  invocationCopy = invocation;
  dataCopy = data;
  selfCopy = self;
  storagesCopy = storages;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (storagesCopy)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_storePerformer);
  _Block_copy(v10);
  sub_100577DC8(invocationCopy, v14, v16, v17, selfCopy, v18, v10);
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
@interface RDXPCIndexingPerformer
- (_TtC7remindd22RDXPCIndexingPerformer)init;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)testIndexDummyItemWithCompletion:(id)completion;
@end

@implementation RDXPCIndexingPerformer

- (void)testIndexDummyItemWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1004EC320(sub_10003FE60, v5);
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1004EC934(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_1004ECA50(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_10003FE58;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1004ECC18(v4, v5);
  sub_1000FDA80(v4, v5);
}

- (_TtC7remindd22RDXPCIndexingPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
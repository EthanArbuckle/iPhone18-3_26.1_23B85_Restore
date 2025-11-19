@interface RDXPCIndexingPerformer
- (_TtC7remindd22RDXPCIndexingPerformer)init;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4;
- (void)testIndexDummyItemWithCompletion:(id)a3;
@end

@implementation RDXPCIndexingPerformer

- (void)testIndexDummyItemWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1004EC320(sub_10003FE60, v5);
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1004EC934(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_1004ECA50(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
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
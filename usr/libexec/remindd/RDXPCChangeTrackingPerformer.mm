@interface RDXPCChangeTrackingPerformer
- (_TtC7remindd28RDXPCChangeTrackingPerformer)init;
- (void)currentChangeToken:(id)a3;
- (void)currentChangeTokenForAccountTypes:(int64_t)a3 completion:(id)a4;
- (void)deleteHistoryBeforeDate:(id)a3 completionHandler:(id)a4;
- (void)deleteHistoryBeforeToken:(id)a3 completionHandler:(id)a4;
- (void)fetchAuxiliaryChangeInfos:(id)a3 completionHandler:(id)a4;
- (void)fetchHistoryAfterDate:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchHistoryAfterToken:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6;
- (void)getTrackingStateWithClientID:(id)a3 completion:(id)a4;
- (void)saveTrackingState:(id)a3 withClientID:(id)a4 completionHandler:(id)a5;
@end

@implementation RDXPCChangeTrackingPerformer

- (void)currentChangeToken:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1003CFE58(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)currentChangeTokenForAccountTypes:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1003CFF94(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)getTrackingStateWithClientID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1003CE22C(a3, sub_1003CFE50, v7);
  swift_unknownObjectRelease();
}

- (void)saveTrackingState:(id)a3 withClientID:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;
  sub_1003CE53C(v10, a4, sub_10003FE60, v9);

  swift_unknownObjectRelease();
}

- (void)fetchHistoryAfterToken:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a3;
  v13 = self;
  sub_1003CE8D8(a3, v10, a5, sub_1003D02C4, v11);
}

- (void)fetchHistoryAfterDate:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = self;
  sub_1003CECFC(v13, v15, a5, sub_1003CFE50, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)deleteHistoryBeforeToken:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1003CF1B8(v8, sub_10003FE60, v7);
}

- (void)deleteHistoryBeforeDate:(id)a3 completionHandler:(id)a4
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_1003CF4C4(v10, sub_10003FE58, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchAuxiliaryChangeInfos:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_10003980C();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1003CF920(v6, sub_1003CFE48, v7);
}

- (_TtC7remindd28RDXPCChangeTrackingPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
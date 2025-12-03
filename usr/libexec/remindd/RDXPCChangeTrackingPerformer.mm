@interface RDXPCChangeTrackingPerformer
- (_TtC7remindd28RDXPCChangeTrackingPerformer)init;
- (void)currentChangeToken:(id)token;
- (void)currentChangeTokenForAccountTypes:(int64_t)types completion:(id)completion;
- (void)deleteHistoryBeforeDate:(id)date completionHandler:(id)handler;
- (void)deleteHistoryBeforeToken:(id)token completionHandler:(id)handler;
- (void)fetchAuxiliaryChangeInfos:(id)infos completionHandler:(id)handler;
- (void)fetchHistoryAfterDate:(id)date entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchHistoryAfterToken:(id)token entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler;
- (void)getTrackingStateWithClientID:(id)d completion:(id)completion;
- (void)saveTrackingState:(id)state withClientID:(id)d completionHandler:(id)handler;
@end

@implementation RDXPCChangeTrackingPerformer

- (void)currentChangeToken:(id)token
{
  v4 = _Block_copy(token);
  _Block_copy(v4);
  selfCopy = self;
  sub_1003CFE58(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)currentChangeTokenForAccountTypes:(int64_t)types completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_1003CFF94(types, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)getTrackingStateWithClientID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003CE22C(d, sub_1003CFE50, v7);
  swift_unknownObjectRelease();
}

- (void)saveTrackingState:(id)state withClientID:(id)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  stateCopy = state;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003CE53C(stateCopy, d, sub_10003FE60, v9);

  swift_unknownObjectRelease();
}

- (void)fetchHistoryAfterToken:(id)token entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  tokenCopy = token;
  selfCopy = self;
  sub_1003CE8D8(token, v10, limit, sub_1003D02C4, v11);
}

- (void)fetchHistoryAfterDate:(id)date entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  selfCopy = self;
  sub_1003CECFC(v13, v15, limit, sub_1003CFE50, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)deleteHistoryBeforeToken:(id)token completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  tokenCopy = token;
  selfCopy = self;
  sub_1003CF1B8(tokenCopy, sub_10003FE60, v7);
}

- (void)deleteHistoryBeforeDate:(id)date completionHandler:(id)handler
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1003CF4C4(v10, sub_10003FE58, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchAuxiliaryChangeInfos:(id)infos completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_10003980C();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1003CF920(v6, sub_1003CFE48, v7);
}

- (_TtC7remindd28RDXPCChangeTrackingPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
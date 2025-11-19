@interface FriendshipService.Trampoline
- (_TtCC13findmylocated17FriendshipService10Trampoline)init;
- (void)allFriendsWithCompletion:(id)a3;
- (void)friendsWithTypes:(id)a3 completion:(id)a4;
- (void)friendshipStateWithRequest:(id)a3 completion:(id)a4;
- (void)offerExpirationForHandle:(id)a3 fromHandle:(id)a4 completion:(id)a5;
- (void)offerExpirationForHandle:(id)a3 groupId:(id)a4 completion:(id)a5;
- (void)ownerTokenWithCompletion:(id)a3;
- (void)peerTokenWithHandle:(id)a3 completion:(id)a4;
- (void)removePeerTokenWithHandle:(id)a3 completion:(id)a4;
- (void)requestOwnerTokenWithForce:(BOOL)a3 completion:(id)a4;
- (void)resetTokenDatabaseWithCompletion:(id)a3;
- (void)respondToInviteRequest:(id)a3 completion:(id)a4;
- (void)sendFriendshipInvite:(id)a3 completion:(id)a4;
- (void)sendFriendshipOffer:(id)a3 completion:(id)a4;
- (void)startFriendsUpdateWithCompletion:(id)a3;
- (void)startOwnerRangingWithCompletion:(id)a3;
- (void)startRangingWithHandle:(id)a3 completion:(id)a4;
- (void)stopConfigRangingSessionWithCompletion:(id)a3;
- (void)stopRangingWithCompletion:(id)a3;
- (void)stopSharingMyLocation:(id)a3 completion:(id)a4;
@end

@implementation FriendshipService.Trampoline

- (void)startFriendsUpdateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1000CAB5C;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)allFriendsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1002E2338;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)friendsWithTypes:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)friendshipStateWithRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)offerExpirationForHandle:(id)a3 fromHandle:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  type metadata accessor for Transaction();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v14;
  v18[5] = v16;
  v18[6] = self;
  v18[7] = sub_1002E2688;
  v18[8] = v17;

  sub_100005F6C(v11, v13);
  sub_100005F6C(v14, v16);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v14, v16);
  sub_1000049D0(v11, v13);
}

- (void)offerExpirationForHandle:(id)a3 groupId:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;

  v10 = a4;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v10)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  type metadata accessor for Transaction();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = self;
  v18[5] = v14;
  v18[6] = v16;
  v18[7] = sub_1002E1E68;
  v18[8] = v17;

  sub_100005F6C(v11, v13);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v11, v13);
}

- (void)sendFriendshipOffer:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)sendFriendshipInvite:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)respondToInviteRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)stopSharingMyLocation:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)peerTokenWithHandle:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1002E2684;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)removePeerTokenWithHandle:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1000CAB5C;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)requestOwnerTokenWithForce:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = a3;
  *(v8 + 32) = sub_1000CAB5C;
  *(v8 + 40) = v7;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)startRangingWithHandle:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = self;
  v12[5] = sub_1000CAB5C;
  v12[6] = v11;

  sub_100005F6C(v8, v10);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v8, v10);
}

- (void)stopRangingWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1000CAB5C;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)stopConfigRangingSessionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1000CAB5C;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)resetTokenDatabaseWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_1000CAB5C;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)ownerTokenWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_10000623C;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)startOwnerRangingWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_100028AD0;
  v6[4] = v5;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (_TtCC13findmylocated17FriendshipService10Trampoline)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
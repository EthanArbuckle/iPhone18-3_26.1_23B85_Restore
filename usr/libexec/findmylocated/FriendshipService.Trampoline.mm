@interface FriendshipService.Trampoline
- (_TtCC13findmylocated17FriendshipService10Trampoline)init;
- (void)allFriendsWithCompletion:(id)completion;
- (void)friendsWithTypes:(id)types completion:(id)completion;
- (void)friendshipStateWithRequest:(id)request completion:(id)completion;
- (void)offerExpirationForHandle:(id)handle fromHandle:(id)fromHandle completion:(id)completion;
- (void)offerExpirationForHandle:(id)handle groupId:(id)id completion:(id)completion;
- (void)ownerTokenWithCompletion:(id)completion;
- (void)peerTokenWithHandle:(id)handle completion:(id)completion;
- (void)removePeerTokenWithHandle:(id)handle completion:(id)completion;
- (void)requestOwnerTokenWithForce:(BOOL)force completion:(id)completion;
- (void)resetTokenDatabaseWithCompletion:(id)completion;
- (void)respondToInviteRequest:(id)request completion:(id)completion;
- (void)sendFriendshipInvite:(id)invite completion:(id)completion;
- (void)sendFriendshipOffer:(id)offer completion:(id)completion;
- (void)startFriendsUpdateWithCompletion:(id)completion;
- (void)startOwnerRangingWithCompletion:(id)completion;
- (void)startRangingWithHandle:(id)handle completion:(id)completion;
- (void)stopConfigRangingSessionWithCompletion:(id)completion;
- (void)stopRangingWithCompletion:(id)completion;
- (void)stopSharingMyLocation:(id)location completion:(id)completion;
@end

@implementation FriendshipService.Trampoline

- (void)startFriendsUpdateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)allFriendsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)friendsWithTypes:(id)types completion:(id)completion
{
  v6 = _Block_copy(completion);
  typesCopy = types;

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

- (void)friendshipStateWithRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;

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

- (void)offerExpirationForHandle:(id)handle fromHandle:(id)fromHandle completion:(id)completion
{
  v8 = _Block_copy(completion);
  handleCopy = handle;
  fromHandleCopy = fromHandle;

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

- (void)offerExpirationForHandle:(id)handle groupId:(id)id completion:(id)completion
{
  v8 = _Block_copy(completion);
  handleCopy = handle;

  idCopy = id;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (idCopy)
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

- (void)sendFriendshipOffer:(id)offer completion:(id)completion
{
  v6 = _Block_copy(completion);
  offerCopy = offer;

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

- (void)sendFriendshipInvite:(id)invite completion:(id)completion
{
  v6 = _Block_copy(completion);
  inviteCopy = invite;

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

- (void)respondToInviteRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;

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

- (void)stopSharingMyLocation:(id)location completion:(id)completion
{
  v6 = _Block_copy(completion);
  locationCopy = location;

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

- (void)peerTokenWithHandle:(id)handle completion:(id)completion
{
  v6 = _Block_copy(completion);
  handleCopy = handle;

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

- (void)removePeerTokenWithHandle:(id)handle completion:(id)completion
{
  v6 = _Block_copy(completion);
  handleCopy = handle;

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

- (void)requestOwnerTokenWithForce:(BOOL)force completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = force;
  *(v8 + 32) = sub_1000CAB5C;
  *(v8 + 40) = v7;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)startRangingWithHandle:(id)handle completion:(id)completion
{
  v6 = _Block_copy(completion);
  handleCopy = handle;

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

- (void)stopRangingWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)stopConfigRangingSessionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)resetTokenDatabaseWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)ownerTokenWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)startOwnerRangingWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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
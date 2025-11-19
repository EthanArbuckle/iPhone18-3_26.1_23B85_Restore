@interface LocationService.Trampoline
- (_TtCC13findmylocated15LocationService10Trampoline)init;
- (void)clearCachedConfigWithCompletion:(id)a3;
- (void)currentStewieStateWithCompletion:(id)a3;
- (void)decryptNotificationWithPayload:(id)a3 completion:(id)a4;
- (void)dismissStewieNotificationsWithCompletion:(id)a3;
- (void)fetchConfigWithCompletion:(id)a3;
- (void)getCachedLocationsWithCompletion:(id)a3;
- (void)getSharedKeysWithCompletion:(id)a3;
- (void)getSharingKeyWithCompletion:(id)a3;
- (void)latestLocationsFor:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)locationsFor:(id)a3 completion:(id)a4;
- (void)performKeyRollWithCompletion:(id)a3;
- (void)processIDSServiceMessage:(id)a3 completion:(id)a4;
- (void)processLocationCommandPayload:(id)a3 completion:(id)a4;
- (void)processLocationPayload:(id)a3 completion:(id)a4;
- (void)publishCurrentLocationToStewieWithCompletion:(id)a3;
- (void)publishLocation:(id)a3 completion:(id)a4;
- (void)setSharingKey:(id)a3 completion:(id)a4;
- (void)startMonitoringStewieStateWithCompletion:(id)a3;
- (void)startRefreshingLocationWithRequest:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)stewiePublishResultWithCompletion:(id)a3;
- (void)stopMonitoringStewieStateWithCompletion:(id)a3;
- (void)stopRefreshingAllLocationsWithClientID:(id)a3 completion:(id)a4;
- (void)stopRefreshingLocationWithHandles:(id)a3 clientID:(id)a4 priority:(int64_t)a5 completion:(id)a6;
- (void)subscribeToBackgroundProactiveLocationsWithClientID:(id)a3 completion:(id)a4;
- (void)triggerStewieProactiveNotificationWithCompletion:(id)a3;
@end

@implementation LocationService.Trampoline

- (void)startMonitoringStewieStateWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1000CAB5C;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)startRefreshingLocationWithRequest:(id)a3 clientID:(id)a4 completion:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(a5);
  v11 = a3;
  v12 = a4;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  type metadata accessor for Transaction();
  v20 = swift_allocObject();
  v20[2] = v13;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v18;
  v20[6] = self;
  v20[7] = sub_1002E2684;
  v20[8] = v19;
  v20[9] = ObjectType;

  sub_100005F6C(v13, v15);
  sub_100005F6C(v16, v18);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v16, v18);
  sub_1000049D0(v13, v15);
}

- (void)stopRefreshingLocationWithHandles:(id)a3 clientID:(id)a4 priority:(int64_t)a5 completion:(id)a6
{
  ObjectType = swift_getObjectType();
  v12 = _Block_copy(a6);
  v13 = a3;
  v14 = a4;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  type metadata accessor for Transaction();
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = sub_1000CAB5C;
  v22[4] = v21;
  v22[5] = v18;
  v22[6] = v20;
  v22[7] = v15;
  v22[8] = v17;
  v22[9] = self;
  v22[10] = ObjectType;

  sub_100005F6C(v18, v20);
  sub_100005F6C(v15, v17);
  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v18, v20);
  sub_1000049D0(v15, v17);
}

- (void)stopRefreshingAllLocationsWithClientID:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = self;
  v14[5] = sub_1000CAB5C;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)locationsFor:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = self;
  v14[5] = sub_1002E2684;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)subscribeToBackgroundProactiveLocationsWithClientID:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = self;
  v14[5] = sub_1002E2684;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)latestLocationsFor:(id)a3 clientID:(id)a4 completion:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(a5);
  v11 = a3;
  v12 = a4;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  type metadata accessor for Transaction();
  v20 = swift_allocObject();
  v20[2] = v13;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v18;
  v20[6] = self;
  v20[7] = sub_1002E2684;
  v20[8] = v19;
  v20[9] = ObjectType;

  sub_100005F6C(v13, v15);
  sub_100005F6C(v16, v18);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v16, v18);
  sub_1000049D0(v13, v15);
}

- (void)processLocationPayload:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = sub_1000CAB5C;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)processLocationCommandPayload:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = sub_1000CAB5C;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)publishLocation:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = sub_1000CAB5C;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)getSharingKeyWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1002E2684;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)setSharingKey:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = sub_1000CAB5C;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)performKeyRollWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1000CAB5C;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)getSharedKeysWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = sub_1002E2684;
  v8[3] = v7;
  v8[4] = self;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)getCachedLocationsWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = sub_1002E2684;
  v8[3] = v7;
  v8[4] = self;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)processIDSServiceMessage:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = sub_1002E2684;
  v14[6] = v13;
  v14[7] = ObjectType;

  sub_100005F6C(v10, v12);

  static Transaction.asyncTask(name:block:)();

  sub_1000049D0(v10, v12);
}

- (void)fetchConfigWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = sub_1002E2684;
  v8[3] = v7;
  v8[4] = self;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)clearCachedConfigWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1000CAB5C;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)decryptNotificationWithPayload:(id)a3 completion:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = _Block_copy(a4);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  v12[2] = self;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = sub_1002E2684;
  v12[6] = v11;
  v12[7] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)triggerStewieProactiveNotificationWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1000CAB5C;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)dismissStewieNotificationsWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1000CAB5C;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)publishCurrentLocationToStewieWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1002E2684;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)stewiePublishResultWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1002E2684;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)currentStewieStateWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_10000623C;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (void)stopMonitoringStewieStateWithCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_100028AD0;
  v8[4] = v7;
  v8[5] = ObjectType;
  swift_retain_n();

  static Transaction.asyncTask(name:block:)();
}

- (_TtCC13findmylocated15LocationService10Trampoline)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
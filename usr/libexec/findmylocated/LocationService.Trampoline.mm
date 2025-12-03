@interface LocationService.Trampoline
- (_TtCC13findmylocated15LocationService10Trampoline)init;
- (void)clearCachedConfigWithCompletion:(id)completion;
- (void)currentStewieStateWithCompletion:(id)completion;
- (void)decryptNotificationWithPayload:(id)payload completion:(id)completion;
- (void)dismissStewieNotificationsWithCompletion:(id)completion;
- (void)fetchConfigWithCompletion:(id)completion;
- (void)getCachedLocationsWithCompletion:(id)completion;
- (void)getSharedKeysWithCompletion:(id)completion;
- (void)getSharingKeyWithCompletion:(id)completion;
- (void)latestLocationsFor:(id)for clientID:(id)d completion:(id)completion;
- (void)locationsFor:(id)for completion:(id)completion;
- (void)performKeyRollWithCompletion:(id)completion;
- (void)processIDSServiceMessage:(id)message completion:(id)completion;
- (void)processLocationCommandPayload:(id)payload completion:(id)completion;
- (void)processLocationPayload:(id)payload completion:(id)completion;
- (void)publishCurrentLocationToStewieWithCompletion:(id)completion;
- (void)publishLocation:(id)location completion:(id)completion;
- (void)setSharingKey:(id)key completion:(id)completion;
- (void)startMonitoringStewieStateWithCompletion:(id)completion;
- (void)startRefreshingLocationWithRequest:(id)request clientID:(id)d completion:(id)completion;
- (void)stewiePublishResultWithCompletion:(id)completion;
- (void)stopMonitoringStewieStateWithCompletion:(id)completion;
- (void)stopRefreshingAllLocationsWithClientID:(id)d completion:(id)completion;
- (void)stopRefreshingLocationWithHandles:(id)handles clientID:(id)d priority:(int64_t)priority completion:(id)completion;
- (void)subscribeToBackgroundProactiveLocationsWithClientID:(id)d completion:(id)completion;
- (void)triggerStewieProactiveNotificationWithCompletion:(id)completion;
@end

@implementation LocationService.Trampoline

- (void)startMonitoringStewieStateWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)startRefreshingLocationWithRequest:(id)request clientID:(id)d completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(completion);
  requestCopy = request;
  dCopy = d;

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

- (void)stopRefreshingLocationWithHandles:(id)handles clientID:(id)d priority:(int64_t)priority completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v12 = _Block_copy(completion);
  handlesCopy = handles;
  dCopy = d;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  type metadata accessor for Transaction();
  v22 = swift_allocObject();
  v22[2] = priority;
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

- (void)stopRefreshingAllLocationsWithClientID:(id)d completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  dCopy = d;

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

- (void)locationsFor:(id)for completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  forCopy = for;

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

- (void)subscribeToBackgroundProactiveLocationsWithClientID:(id)d completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  dCopy = d;

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

- (void)latestLocationsFor:(id)for clientID:(id)d completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(completion);
  forCopy = for;
  dCopy = d;

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

- (void)processLocationPayload:(id)payload completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  payloadCopy = payload;

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

- (void)processLocationCommandPayload:(id)payload completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  payloadCopy = payload;

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

- (void)publishLocation:(id)location completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  locationCopy = location;

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

- (void)getSharingKeyWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)setSharingKey:(id)key completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  keyCopy = key;

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

- (void)performKeyRollWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)getSharedKeysWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)getCachedLocationsWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)processIDSServiceMessage:(id)message completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  messageCopy = message;

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

- (void)fetchConfigWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)clearCachedConfigWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)decryptNotificationWithPayload:(id)payload completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v7 = _Block_copy(completion);
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

- (void)triggerStewieProactiveNotificationWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)dismissStewieNotificationsWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)publishCurrentLocationToStewieWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)stewiePublishResultWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)currentStewieStateWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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

- (void)stopMonitoringStewieStateWithCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(completion);
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
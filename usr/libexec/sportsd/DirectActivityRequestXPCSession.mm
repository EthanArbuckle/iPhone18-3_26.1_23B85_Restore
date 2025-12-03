@interface DirectActivityRequestXPCSession
- (void)createActivityWithCanonicalId:(id)id supplementaryData:(id)data completion:(id)completion;
- (void)createSessionWithCanonicalId:(id)id completion:(id)completion;
- (void)shouldSuppressNotification:(id)notification completion:(id)completion;
@end

@implementation DirectActivityRequestXPCSession

- (void)createSessionWithCanonicalId:(id)id completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10005DA7C(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)createActivityWithCanonicalId:(id)id supplementaryData:(id)data completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (data)
  {
    data = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_10005DB10(v8, v10, data, sub_100062CAC, v11);
}

- (void)shouldSuppressNotification:(id)notification completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_10005F72C(v6, v8, sub_1000608AC, v9);
}

@end
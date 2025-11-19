@interface DirectActivityRequestXPCSession
- (void)createActivityWithCanonicalId:(id)a3 supplementaryData:(id)a4 completion:(id)a5;
- (void)createSessionWithCanonicalId:(id)a3 completion:(id)a4;
- (void)shouldSuppressNotification:(id)a3 completion:(id)a4;
@end

@implementation DirectActivityRequestXPCSession

- (void)createSessionWithCanonicalId:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_10005DA7C(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)createActivityWithCanonicalId:(id)a3 supplementaryData:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_10005DB10(v8, v10, a4, sub_100062CAC, v11);
}

- (void)shouldSuppressNotification:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_10005F72C(v6, v8, sub_1000608AC, v9);
}

@end
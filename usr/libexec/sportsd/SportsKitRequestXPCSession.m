@interface SportsKitRequestXPCSession
- (void)createActivityFor:(id)a3 type:(int64_t)a4 scheduledDate:(id)a5 completion:(id)a6;
- (void)flushMetrics;
- (void)liveActivitiesEnabledWithCompletion:(id)a3;
- (void)signalWithDemand:(NSDictionary *)a3 completionHandler:(id)a4;
- (void)subscribeToEventWithEventId:(id)a3 subscriptionType:(id)a4 context:(id)a5 completion:(id)a6;
- (void)unsubscribeFromAllEventsWithCompletion:(id)a3;
- (void)unsubscribeFromEventWithEventId:(id)a3 completion:(id)a4;
- (void)unsubscribeFromEventsWithEventIds:(id)a3 completion:(id)a4;
@end

@implementation SportsKitRequestXPCSession

- (void)subscribeToEventWithEventId:(id)a3 subscriptionType:(id)a4 context:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v15 = self;
  sub_10006FC50(v8, v10, v11, v13, v14, v15, v7);
  _Block_release(v7);
}

- (void)unsubscribeFromEventWithEventId:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1000710A8(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)unsubscribeFromEventsWithEventIds:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_1000717D0(v6, v7, v5);
  _Block_release(v5);
}

- (void)unsubscribeFromAllEventsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100072478(sub_100079304, v5);
}

- (void)flushMetrics
{
  v2 = self;
  sub_100072D90();
}

- (void)createActivityFor:(id)a3 type:(int64_t)a4 scheduledDate:(id)a5 completion:(id)a6
{
  v10 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(a6);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (a5)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for Date();
    v19 = 0;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v19 = 1;
  }

  sub_100008E2C(v13, v19, 1, v18);
  _Block_copy(v14);
  v20 = self;
  sub_100072E38(v15, v17, a4, v13, v20, v14);
  _Block_release(v14);

  sub_10000A7A8(v13, &qword_1000DC5A0, &unk_1000AB0E0);
}

- (void)liveActivitiesEnabledWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10007647C(v5, v4);
  _Block_release(v4);
}

- (void)signalWithDemand:(NSDictionary *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1000770C0(&unk_1000AE688, v7);
}

@end
@interface SportsKitRequestXPCSession
- (void)createActivityFor:(id)for type:(int64_t)type scheduledDate:(id)date completion:(id)completion;
- (void)flushMetrics;
- (void)liveActivitiesEnabledWithCompletion:(id)completion;
- (void)signalWithDemand:(NSDictionary *)demand completionHandler:(id)handler;
- (void)subscribeToEventWithEventId:(id)id subscriptionType:(id)type context:(id)context completion:(id)completion;
- (void)unsubscribeFromAllEventsWithCompletion:(id)completion;
- (void)unsubscribeFromEventWithEventId:(id)id completion:(id)completion;
- (void)unsubscribeFromEventsWithEventIds:(id)ids completion:(id)completion;
@end

@implementation SportsKitRequestXPCSession

- (void)subscribeToEventWithEventId:(id)id subscriptionType:(id)type context:(id)context completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  selfCopy = self;
  sub_10006FC50(v8, v10, v11, v13, v14, selfCopy, v7);
  _Block_release(v7);
}

- (void)unsubscribeFromEventWithEventId:(id)id completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1000710A8(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)unsubscribeFromEventsWithEventIds:(id)ids completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_1000717D0(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)unsubscribeFromAllEventsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100072478(sub_100079304, v5);
}

- (void)flushMetrics
{
  selfCopy = self;
  sub_100072D90();
}

- (void)createActivityFor:(id)for type:(int64_t)type scheduledDate:(id)date completion:(id)completion
{
  v10 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (date)
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
  selfCopy = self;
  sub_100072E38(v15, v17, type, v13, selfCopy, v14);
  _Block_release(v14);

  sub_10000A7A8(v13, &qword_1000DC5A0, &unk_1000AB0E0);
}

- (void)liveActivitiesEnabledWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10007647C(selfCopy, v4);
  _Block_release(v4);
}

- (void)signalWithDemand:(NSDictionary *)demand completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = demand;
  v7[3] = v6;
  v7[4] = self;
  demandCopy = demand;
  selfCopy = self;

  sub_1000770C0(&unk_1000AE688, v7);
}

@end
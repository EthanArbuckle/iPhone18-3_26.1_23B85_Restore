@interface GKMetricsPipeline
- (_TtC14GameDaemonCore17GKMetricsPipeline)initWithBag:(id)a3 localPlayerId:(id)a4 isUnderage:(BOOL)a5;
- (void)processEventWithTopic:(NSString *)a3 shouldFlush:(BOOL)a4 metricsFields:(NSDictionary *)a5 hostAppBundleId:(NSString *)a6 completionHandler:(id)a7;
- (void)processGamesMappingEventWithGamesUserId:(NSString *)a3 gameCenterUserId:(NSString *)a4 action:(NSString *)a5 hostAppBundleId:(NSString *)a6 additionalFields:(NSDictionary *)a7 completionHandler:(id)a8;
- (void)processMultiplayerActivityEventWithMetricsFields:(NSDictionary *)a3 hostAppBundleId:(NSString *)a4 completionHandler:(id)a5;
- (void)refreshWithLocalPlayerId:(id)a3 isUnderage:(BOOL)a4;
@end

@implementation GKMetricsPipeline

- (_TtC14GameDaemonCore17GKMetricsPipeline)initWithBag:(id)a3 localPlayerId:(id)a4 isUnderage:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = swift_unknownObjectRetain();
  return sub_100246D78(v9, v6, v8, v5);
}

- (void)refreshWithLocalPlayerId:(id)a3 isUnderage:(BOOL)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_100247A80(v6, v8, a4);
}

- (void)processEventWithTopic:(NSString *)a3 shouldFlush:(BOOL)a4 metricsFields:(NSDictionary *)a5 hostAppBundleId:(NSString *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = self;

  sub_10028022C(&unk_1002C89B0, v13);
}

- (void)processMultiplayerActivityEventWithMetricsFields:(NSDictionary *)a3 hostAppBundleId:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_10028022C(&unk_1002C8988, v9);
}

- (void)processGamesMappingEventWithGamesUserId:(NSString *)a3 gameCenterUserId:(NSString *)a4 action:(NSString *)a5 hostAppBundleId:(NSString *)a6 additionalFields:(NSDictionary *)a7 completionHandler:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = v14;
  v15[8] = self;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = self;

  sub_10028022C(&unk_1002C8948, v15);
}

@end
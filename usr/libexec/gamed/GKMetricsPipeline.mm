@interface GKMetricsPipeline
- (_TtC14GameDaemonCore17GKMetricsPipeline)initWithBag:(id)bag localPlayerId:(id)id isUnderage:(BOOL)underage;
- (void)processEventWithTopic:(NSString *)topic shouldFlush:(BOOL)flush metricsFields:(NSDictionary *)fields hostAppBundleId:(NSString *)id completionHandler:(id)handler;
- (void)processGamesMappingEventWithGamesUserId:(NSString *)id gameCenterUserId:(NSString *)userId action:(NSString *)action hostAppBundleId:(NSString *)bundleId additionalFields:(NSDictionary *)fields completionHandler:(id)handler;
- (void)processMultiplayerActivityEventWithMetricsFields:(NSDictionary *)fields hostAppBundleId:(NSString *)id completionHandler:(id)handler;
- (void)refreshWithLocalPlayerId:(id)id isUnderage:(BOOL)underage;
@end

@implementation GKMetricsPipeline

- (_TtC14GameDaemonCore17GKMetricsPipeline)initWithBag:(id)bag localPlayerId:(id)id isUnderage:(BOOL)underage
{
  underageCopy = underage;
  if (id)
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
  return sub_100246D78(v9, v6, v8, underageCopy);
}

- (void)refreshWithLocalPlayerId:(id)id isUnderage:(BOOL)underage
{
  if (id)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_100247A80(v6, v8, underage);
}

- (void)processEventWithTopic:(NSString *)topic shouldFlush:(BOOL)flush metricsFields:(NSDictionary *)fields hostAppBundleId:(NSString *)id completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = topic;
  *(v13 + 24) = flush;
  *(v13 + 32) = fields;
  *(v13 + 40) = id;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  topicCopy = topic;
  fieldsCopy = fields;
  idCopy = id;
  selfCopy = self;

  sub_10028022C(&unk_1002C89B0, v13);
}

- (void)processMultiplayerActivityEventWithMetricsFields:(NSDictionary *)fields hostAppBundleId:(NSString *)id completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = fields;
  v9[3] = id;
  v9[4] = v8;
  v9[5] = self;
  fieldsCopy = fields;
  idCopy = id;
  selfCopy = self;

  sub_10028022C(&unk_1002C8988, v9);
}

- (void)processGamesMappingEventWithGamesUserId:(NSString *)id gameCenterUserId:(NSString *)userId action:(NSString *)action hostAppBundleId:(NSString *)bundleId additionalFields:(NSDictionary *)fields completionHandler:(id)handler
{
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = id;
  v15[3] = userId;
  v15[4] = action;
  v15[5] = bundleId;
  v15[6] = fields;
  v15[7] = v14;
  v15[8] = self;
  idCopy = id;
  userIdCopy = userId;
  actionCopy = action;
  bundleIdCopy = bundleId;
  fieldsCopy = fields;
  selfCopy = self;

  sub_10028022C(&unk_1002C8948, v15);
}

@end
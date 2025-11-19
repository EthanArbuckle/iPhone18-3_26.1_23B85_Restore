@interface GKDaemonGameServices
- (_TtC14GameDaemonCore20GKDaemonGameServices)initWithClientProxy:(id)a3 bundleID:(id)a4 entitlements:(id)a5 libraryDependencies:(id)a6;
- (void)clearStoresFor:(NSString *)a3 completionHandler:(id)a4;
- (void)deliverMostRecentPendingGameActivityInstanceWithBundleID:(id)a3;
- (void)onChallengeUpdateReceivedWithUserInfo:(id)a3;
- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)a3 activityProperties:(id)a4 bundleID:(id)a5 referenceLeaderboardID:(id)a6 referenceAchievementDescriptionID:(id)a7;
- (void)onServerCacheInvalidationReceivedWithBagKey:(id)a3 playerID:(id)a4;
@end

@implementation GKDaemonGameServices

- (_TtC14GameDaemonCore20GKDaemonGameServices)initWithClientProxy:(id)a3 bundleID:(id)a4 entitlements:(id)a5 libraryDependencies:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = a5;
  return GKDaemonGameServices.init(clientProxy:bundleID:entitlements:libraryDependencies:)(v12, v9, v11, a5, a6);
}

- (void)clearStoresFor:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10028022C(&unk_1002C4268, v7);
}

- (void)onChallengeUpdateReceivedWithUserInfo:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  GKDaemonGameServices.onChallengeUpdateReceived(userInfo:)(v4);
}

- (void)deliverMostRecentPendingGameActivityInstanceWithBundleID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  GKDaemonGameServices.deliverMostRecentPendingGameActivityInstance(bundleID:)(v8);
}

- (void)onServerCacheInvalidationReceivedWithBagKey:(id)a3 playerID:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  GKDaemonGameServices.onServerCacheInvalidationReceived(bagKey:playerID:)(v12, v13);
}

- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)a3 activityProperties:(id)a4 bundleID:(id)a5 referenceLeaderboardID:(id)a6 referenceAchievementDescriptionID:(id)a7
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (a6)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v18;
    if (a7)
    {
LABEL_3:
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a7 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  v21 = self;
  v26.value._object = a7;
  v22._countAndFlagsBits = v10;
  v22._object = v12;
  v23._countAndFlagsBits = v14;
  v23._object = v16;
  v24.value._countAndFlagsBits = v17;
  v24.value._object = a6;
  v26.value._countAndFlagsBits = v19;
  GKDaemonGameServices.onGameActivityReferralDeepLinkOpened(activityIdentifier:activityProperties:bundleID:referenceLeaderboardID:referenceAchievementDescriptionID:)(v22, v13, v23, v24, v26);
}

@end
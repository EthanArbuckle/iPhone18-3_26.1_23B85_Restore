@interface GKDaemonGameServices
- (_TtC14GameDaemonCore20GKDaemonGameServices)initWithClientProxy:(id)proxy bundleID:(id)d entitlements:(id)entitlements libraryDependencies:(id)dependencies;
- (void)clearStoresFor:(NSString *)for completionHandler:(id)handler;
- (void)deliverMostRecentPendingGameActivityInstanceWithBundleID:(id)d;
- (void)onChallengeUpdateReceivedWithUserInfo:(id)info;
- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)identifier activityProperties:(id)properties bundleID:(id)d referenceLeaderboardID:(id)iD referenceAchievementDescriptionID:(id)descriptionID;
- (void)onServerCacheInvalidationReceivedWithBagKey:(id)key playerID:(id)d;
@end

@implementation GKDaemonGameServices

- (_TtC14GameDaemonCore20GKDaemonGameServices)initWithClientProxy:(id)proxy bundleID:(id)d entitlements:(id)entitlements libraryDependencies:(id)dependencies
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  proxyCopy = proxy;
  entitlementsCopy = entitlements;
  return GKDaemonGameServices.init(clientProxy:bundleID:entitlements:libraryDependencies:)(proxyCopy, v9, v11, entitlements, dependencies);
}

- (void)clearStoresFor:(NSString *)for completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = for;
  v7[3] = v6;
  v7[4] = self;
  forCopy = for;
  selfCopy = self;

  sub_10028022C(&unk_1002C4268, v7);
}

- (void)onChallengeUpdateReceivedWithUserInfo:(id)info
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  GKDaemonGameServices.onChallengeUpdateReceived(userInfo:)(v4);
}

- (void)deliverMostRecentPendingGameActivityInstanceWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  GKDaemonGameServices.deliverMostRecentPendingGameActivityInstance(bundleID:)(v8);
}

- (void)onServerCacheInvalidationReceivedWithBagKey:(id)key playerID:(id)d
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  GKDaemonGameServices.onServerCacheInvalidationReceived(bagKey:playerID:)(v12, v13);
}

- (void)onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:(id)identifier activityProperties:(id)properties bundleID:(id)d referenceLeaderboardID:(id)iD referenceAchievementDescriptionID:(id)descriptionID
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (iD)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    iD = v18;
    if (descriptionID)
    {
LABEL_3:
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      descriptionID = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (descriptionID)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  selfCopy = self;
  v26.value._object = descriptionID;
  v22._countAndFlagsBits = v10;
  v22._object = v12;
  v23._countAndFlagsBits = v14;
  v23._object = v16;
  v24.value._countAndFlagsBits = v17;
  v24.value._object = iD;
  v26.value._countAndFlagsBits = v19;
  GKDaemonGameServices.onGameActivityReferralDeepLinkOpened(activityIdentifier:activityProperties:bundleID:referenceLeaderboardID:referenceAchievementDescriptionID:)(v22, v13, v23, v24, v26);
}

@end
@interface GKOverlayServiceUtils
+ (void)showDashboardWithGame:(id)game deepLink:(id)link launchContext:(id)context;
- (void)emitMultiplayerEventWithMessage:(id)message;
- (void)showAchievementBannerWithId:(id)id title:(id)title message:(id)message;
- (void)showLeaderboardScoreBannerWithId:(id)id score:(id)score name:(id)name date:(id)date;
@end

@implementation GKOverlayServiceUtils

+ (void)showDashboardWithGame:(id)game deepLink:(id)link launchContext:(id)context
{
  if (link)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!context)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (context)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  gameCopy = game;
  static OverlayServiceUtils.showDashboard(game:deepLink:launchContext:)();
}

- (void)emitMultiplayerEventWithMessage:(id)message
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  OverlayServiceUtils.emitMultiplayerEvent(message:)(v8);
}

- (void)showAchievementBannerWithId:(id)id title:(id)title message:(id)message
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  selfCopy = self;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  OverlayServiceUtils.showAchievementBanner(id:title:message:)(v16, v17, v18);
}

- (void)showLeaderboardScoreBannerWithId:(id)id score:(id)score name:(id)name date:(id)date
{
  selfCopy = self;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = selfCopy;
  OverlayServiceUtils.showLeaderboardScoreBanner(id:score:name:date:)();

  (*(v7 + 8))(v9, v6);
}

@end
@interface GKOverlayServiceUtils
+ (void)showDashboardWithGame:(id)a3 deepLink:(id)a4 launchContext:(id)a5;
- (void)emitMultiplayerEventWithMessage:(id)a3;
- (void)showAchievementBannerWithId:(id)a3 title:(id)a4 message:(id)a5;
- (void)showLeaderboardScoreBannerWithId:(id)a3 score:(id)a4 name:(id)a5 date:(id)a6;
@end

@implementation GKOverlayServiceUtils

+ (void)showDashboardWithGame:(id)a3 deepLink:(id)a4 launchContext:(id)a5
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  v7 = a3;
  static OverlayServiceUtils.showDashboard(game:deepLink:launchContext:)();
}

- (void)emitMultiplayerEventWithMessage:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  OverlayServiceUtils.emitMultiplayerEvent(message:)(v8);
}

- (void)showAchievementBannerWithId:(id)a3 title:(id)a4 message:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  OverlayServiceUtils.showAchievementBanner(id:title:message:)(v16, v17, v18);
}

- (void)showLeaderboardScoreBannerWithId:(id)a3 score:(id)a4 name:(id)a5 date:(id)a6
{
  v12 = self;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v12;
  OverlayServiceUtils.showLeaderboardScoreBanner(id:score:name:date:)();

  (*(v7 + 8))(v9, v6);
}

@end
@interface GKActivityFeedBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKActivityFeedBulletin)initWithCoder:(id)a3;
- (GKActivityFeedBulletin)initWithPushNotification:(id)a3;
- (NSNumber)getRelationshipGameAdamId;
- (NSString)getRelationshipGameBundleId;
- (NSString)getRelationshipGameImage;
- (NSString)getRelationshipGameName;
- (NSString)getRelationshipLeaderboardIdentifier;
- (NSString)getRelationshipLeaderboardName;
- (NSString)getRelationshipPlayerId;
- (NSString)getRelationshipPlayerImage;
- (NSString)getRelationshipPlayerName;
- (void)assembleBulletin;
- (void)encodeWithCoder:(id)a3;
- (void)handleAction:(id)a3;
- (void)reportMetricsForActionID:(id)a3 withAdditionalFields:(id)a4;
@end

@implementation GKActivityFeedBulletin

- (GKActivityFeedBulletin)initWithPushNotification:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin initWithPushNotification:", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = GKActivityFeedBulletin;
  v7 = [(GKBulletin *)&v16 initWithPushNotification:v4];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"action"];
    v9 = [&off_1003832D0 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [&off_1003832D0 objectForKeyedSubscript:v8];
      -[GKActivityFeedBulletin setActivityFeedAction:](v7, "setActivityFeedAction:", [v10 integerValue]);
    }

    else
    {
      [(GKActivityFeedBulletin *)v7 setActivityFeedAction:-1];
    }

    v11 = [v4 objectForKeyedSubscript:@"title"];
    [(GKActivityFeedBulletin *)v7 setTitleFromPush:v11];

    v12 = [v4 objectForKeyedSubscript:@"body"];
    [(GKActivityFeedBulletin *)v7 setBodyFromPush:v12];

    v13 = [v4 objectForKeyedSubscript:@"subtitle"];
    [(GKActivityFeedBulletin *)v7 setSubtitleFromPush:v13];

    v14 = [v4 objectForKeyedSubscript:@"relationships"];
    [(GKActivityFeedBulletin *)v7 setRelationships:v14];
  }

  return v7;
}

- (GKActivityFeedBulletin)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GKActivityFeedBulletin;
  v5 = [(GKGameplayBulletin *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    -[GKActivityFeedBulletin setActivityFeedAction:](v5, "setActivityFeedAction:", [v6 integerValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleFromPush"];
    [(GKActivityFeedBulletin *)v5 setTitleFromPush:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodyFromPush"];
    [(GKActivityFeedBulletin *)v5 setBodyFromPush:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleFromPush"];
    [(GKActivityFeedBulletin *)v5 setSubtitleFromPush:v9];

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v10, v11, v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"relationships"];
    [(GKActivityFeedBulletin *)v5 setRelationships:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMalformed"];
    -[GKActivityFeedBulletin setIsMalformed:](v5, "setIsMalformed:", [v15 BOOLValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = GKActivityFeedBulletin;
  v4 = a3;
  [(GKGameplayBulletin *)&v11 encodeWithCoder:v4];
  v5 = [NSNumber numberWithInteger:[(GKActivityFeedBulletin *)self activityFeedAction:v11.receiver]];
  [v4 encodeObject:v5 forKey:@"bulletinAction"];

  v6 = [(GKActivityFeedBulletin *)self titleFromPush];
  [v4 encodeObject:v6 forKey:@"titleFromPush"];

  v7 = [(GKActivityFeedBulletin *)self bodyFromPush];
  [v4 encodeObject:v7 forKey:@"bodyFromPush"];

  v8 = [(GKActivityFeedBulletin *)self subtitleFromPush];
  [v4 encodeObject:v8 forKey:@"subtitleFromPush"];

  v9 = [(GKActivityFeedBulletin *)self relationships];
  [v4 encodeObject:v9 forKey:@"relationships"];

  v10 = [NSNumber numberWithBool:[(GKActivityFeedBulletin *)self isMalformed]];
  [v4 encodeObject:v10 forKey:@"isMalformed"];
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin loadBulletinsForPushNotification:", buf, 2u);
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:1];
  v10 = +[GKClientProxy gameCenterClient];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKActivityFeedBulletin.m", 135, "+[GKActivityFeedBulletin loadBulletinsForPushNotification:withHandler:]");
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v13 = [[GKActivityFeedBulletin alloc] initWithPushNotification:v5];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10019B398;
  v22[3] = &unk_100361F90;
  v14 = v5;
  v23 = v14;
  v15 = v13;
  v24 = v15;
  v16 = v9;
  v25 = v16;
  v17 = v10;
  v26 = v17;
  [v12 perform:v22];
  if (v6)
  {
    v18 = [v17 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019B928;
    v19[3] = &unk_100360EB0;
    v21 = v6;
    v20 = v16;
    [v12 notifyOnQueue:v18 block:v19];
  }
}

- (NSString)getRelationshipGameBundleId
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"game"];
  v4 = [v3 objectForKeyedSubscript:@"id"];

  return v4;
}

- (NSString)getRelationshipGameImage
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"game"];
  v4 = [v3 objectForKeyedSubscript:@"image"];

  return v4;
}

- (NSNumber)getRelationshipGameAdamId
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"game"];
  v4 = [v3 objectForKeyedSubscript:@"adamId"];

  return v4;
}

- (NSString)getRelationshipGameName
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"game"];
  v4 = [v3 objectForKeyedSubscript:@"name"];

  return v4;
}

- (NSString)getRelationshipLeaderboardIdentifier
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"leaderboard"];
  v4 = [v3 objectForKeyedSubscript:@"id"];

  return v4;
}

- (NSString)getRelationshipLeaderboardName
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"leaderboard"];
  v4 = [v3 objectForKeyedSubscript:@"name"];

  return v4;
}

- (NSString)getRelationshipPlayerId
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"player"];
  v4 = [v3 objectForKeyedSubscript:@"id"];

  return v4;
}

- (NSString)getRelationshipPlayerName
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"player"];
  v4 = [v3 objectForKeyedSubscript:@"name"];

  return v4;
}

- (NSString)getRelationshipPlayerImage
{
  v2 = [(GKActivityFeedBulletin *)self relationships];
  v3 = [v2 objectForKeyedSubscript:@"player"];
  v4 = [v3 objectForKeyedSubscript:@"avatarUrl"];

  return v4;
}

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin assembleBulletin", &v17, 2u);
  }

  if ([(GKActivityFeedBulletin *)self activityFeedAction])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKActivityFeedBulletin *)self getRelationshipGameBundleId];
    v5 = v6 == 0;
    if (v6)
    {
      v7 = objc_alloc_init(GKBulletinAction);
      [(GKBulletinAction *)v7 setType:0];
      v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_VIEW];
      [(GKBulletinAction *)v7 setTitle:v8];

      [(GKBulletinAction *)v7 setInfo:v6];
      [(GKBulletin *)self setDefaultAction:v7];
    }
  }

  [(GKActivityFeedBulletin *)self setIsMalformed:v5];
  if (![(GKActivityFeedBulletin *)self isMalformed])
  {
    v11 = objc_alloc_init(GKBulletinAction);
    [(GKBulletinAction *)v11 setType:0];
    v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_IGNORE];
    [(GKBulletinAction *)v11 setTitle:v13];

    [(GKBulletinAction *)v11 setInfo:&stru_100374F10];
    [(GKBulletin *)self setDismissAction:v11];
    [(GKActivityFeedBulletin *)self setContactHandle:0];
    [(GKBulletin *)self setCategoryIdentifier:@"GKNotificationCategoryActionsViewIgnore"];
    [(GKBulletin *)self setHasSound:1];
    [(GKBulletin *)self setSoundPath:0];
    v14 = [(GKActivityFeedBulletin *)self titleFromPush];
    [(GKBulletin *)self setTitle:v14];

    v15 = [(GKActivityFeedBulletin *)self bodyFromPush];
    [(GKBulletin *)self setMessage:v15];

    v16 = +[NSDate date];
    [(GKBulletin *)self setDate:v16];

    [(GKBulletin *)self setBulletinType:1000];
    goto LABEL_16;
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [(GKActivityFeedBulletin *)self relationships];
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin assembleBulletin, malformed bulletin with relationships: %@", &v17, 0xCu);

LABEL_16:
  }
}

- (void)handleAction:(id)a3
{
  v4 = a3;
  v43 = @"pageDetails";
  v41 = @"activityFeedAction";
  v5 = [NSNumber numberWithInteger:[(GKActivityFeedBulletin *)self activityFeedAction]];
  v42 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v44 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v8 = [v7 mutableCopy];

  if (([v4 isEqualToString:@"GKAccepted"] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"GKDefault"))
  {
    if (([v4 isEqualToString:@"GKDeclined"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"GKDismissed") & 1) != 0 || !objc_msgSend(v4, "isEqualToString:", @"GKExpired"))
    {
      goto LABEL_33;
    }

    v9 = +[GKBulletinController sharedController];
    [v9 expireBulletin:self];
    goto LABEL_32;
  }

  if ([(GKActivityFeedBulletin *)self activityFeedAction])
  {
LABEL_33:
    [(GKActivityFeedBulletin *)self reportMetricsForActionID:v4 withAdditionalFields:v8];
    goto LABEL_34;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = [(GKActivityFeedBulletin *)self getRelationshipGameBundleId];
    v10 = [(GKActivityFeedBulletin *)self getRelationshipLeaderboardIdentifier];
    v11 = [(GKActivityFeedBulletin *)self getRelationshipPlayerId];
    v12 = v11;
    if (v9 && v10 && v11)
    {
      v13 = [NSString stringWithFormat:@"game-overlay-ui:///game/%@/leaderboard/%@?challengeSuggestionPlayerID=%@", v9, v10, v11];
      v14 = [[NSURL alloc] initWithString:v13];
      if (v14)
      {
        v15 = +[GKApplicationWorkspace defaultWorkspace];
        [v15 openURL:v14];
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v29 = GKOSLoggers();
        }

        v30 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = v13;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin handleAction, failed to construct deeplink url with string %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v24 = GKOSLoggers();
      }

      v25 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v36 = v9;
        v37 = 2112;
        v38 = v10;
        v39 = 2112;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "GKActivityFeedBulletin handleAction, missing ids to construct deeplink. bundleID: %@, leaderboardID: %@, playerID: %@", buf, 0x20u);
      }
    }

LABEL_32:
    goto LABEL_33;
  }

  v16 = +[GKClientProxy gameCenterClient];
  v17 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v16 localPlayer:0];
  v18 = [(GKActivityFeedBulletin *)self getRelationshipGameBundleId];
  v19 = [(GKActivityFeedBulletin *)self getRelationshipGameAdamId];
  v20 = [v19 stringValue];

  if ([GKGame isNewsApp:v18])
  {
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    v22 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Launching News puzzles section in response to leaderboard notification action", buf, 2u);
    }

    v23 = +[GKApplicationWorkspace defaultWorkspace];
    [v23 openNewsApp];

    [v8 setObject:v20 forKeyedSubscript:@"targetId"];
    [(GKActivityFeedBulletin *)self reportMetricsForActionID:v4 withAdditionalFields:v8];
  }

  else
  {
    v26 = +[NSBundle mainBundle];
    v27 = [v26 bundleIdentifier];
    v28 = [ASCAppLaunchTrampolineURL URLWithAdamId:v20 bundleId:v18 localizedName:0 sourceApplication:v27 topic:0];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10019C5C4;
    v31[3] = &unk_10036A350;
    v32 = v8;
    v33 = self;
    v34 = v4;
    [v17 invokeASCAppLaunchTrampolineWithURL:v28 handler:v31];
  }

LABEL_34:
}

- (void)reportMetricsForActionID:(id)a3 withAdditionalFields:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a4 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v9 = +[GKClientProxy gameCenterClient];
  v10 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v9 localPlayer:0];
  v11 = [(GKActivityFeedBulletin *)self getRelationshipGameBundleId];
  v19 = v11;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019C7AC;
  v15[3] = &unk_10036A378;
  v16 = v8;
  v17 = v6;
  v18 = self;
  v13 = v6;
  v14 = v8;
  [v10 getGameMetadataForBundleIDs:v12 handler:v15];
}

@end
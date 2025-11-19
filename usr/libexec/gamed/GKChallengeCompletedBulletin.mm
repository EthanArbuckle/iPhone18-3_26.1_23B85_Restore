@interface GKChallengeCompletedBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (GKChallengeCompletedBulletin)init;
- (void)assembleBulletin;
- (void)handleAction:(id)a3;
- (void)notifyClient:(id)a3;
@end

@implementation GKChallengeCompletedBulletin

- (GKChallengeCompletedBulletin)init
{
  v3.receiver = self;
  v3.super_class = GKChallengeCompletedBulletin;
  return [(GKChallengeBulletin *)&v3 init];
}

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v41 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKChallengeCompletedBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  [a1 expireChallengeList];
  v9 = +[GKReporter reporter];
  [v9 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountChallengeCompleted];

  v42 = v6;
  v10 = [v6 objectForKey:@"di"];
  v11 = [v10 count];
  v12 = [[NSMutableDictionary alloc] initWithCapacity:v11];
  v40 = [[NSMutableArray alloc] initWithCapacity:v11];
  v39 = +[GKClientProxy gameCenterClient];
  v43 = [[NSMutableArray alloc] initWithCapacity:v11];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        v19 = [v18 objectForKey:@"ci"];
        if (v19)
        {
          [v43 addObject:v19];
          v20 = [v18 objectForKey:@"pl"];
          if (v20)
          {
            v21 = [v12 objectForKey:v20];
            if (!v21)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v22 = +[NSNull null];
            v21 = [v12 objectForKey:v22];

            if (!v21)
            {
LABEL_15:
              v21 = +[NSMutableArray array];
              if (v20)
              {
                [v12 setObject:v21 forKey:v20];
              }

              else
              {
                v23 = +[NSNull null];
                [v12 setObject:v21 forKey:v23];
              }
            }
          }

          [v21 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v15);
  }

  v24 = v13;

  v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKChallengeBulletin.m", 334, "+[GKChallengeCompletedBulletin loadBulletinsForPushNotification:withHandler:]");
  v26 = +[GKPlayerCredentialController sharedController];
  v27 = [v26 pushCredentialForEnvironment:{objc_msgSend(v39, "environment")}];
  v28 = [v27 playerInternal];
  v29 = [v28 playerID];
  v30 = [v39 transactionGroupWithName:v25 forPlayerID:v29];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10019837C;
  v50[3] = &unk_100361708;
  v51 = v43;
  v31 = v39;
  v52 = v31;
  v32 = v43;
  [v30 performOnManagedObjectContext:v50];
  v33 = [v31 replyQueue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100198760;
  v44[3] = &unk_100360F28;
  v45 = v31;
  v46 = v12;
  v47 = v42;
  v48 = v40;
  v49 = v41;
  v34 = v41;
  v35 = v40;
  v36 = v42;
  v37 = v12;
  v38 = v31;
  [v30 notifyOnQueue:v33 block:v44];
}

- (void)notifyClient:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKChallengeCompletedBulletin notifyClient:", v8, 2u);
  }

  v7 = [(GKChallengeBulletin *)self challenge];
  [v4 challengeCompleted:v7];
}

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKChallengeCompletedBulletin assembleBulletin", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = GKChallengeCompletedBulletin;
  [(GKChallengeBulletin *)&v18 assembleBulletin];
  v5 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v5 setType:1];
  v6 = [(GKChallengeBulletin *)self gameDescriptor];
  v7 = [v6 adamID];
  [(GKBulletinAction *)v5 setAdamID:v7];

  v8 = [(GKChallengeBulletin *)self gameDescriptor];
  v9 = [v8 bundleIdentifier];
  [(GKBulletinAction *)v5 setBundleID:v9];

  if ([(GKGameplayBulletin *)self gameLocation]== 2)
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_LAUNCH_STORE];
    v11 = &GKNotificationCategoryActionsAppStoreIgnore;
  }

  else
  {
    v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_LAUNCH_GAME];
    v11 = &GKNotificationCategoryActionsLaunchGameIgnore;
  }

  [(GKBulletinAction *)v5 setTitle:v10];

  [(GKBulletin *)self setCategoryIdentifier:*v11];
  v12 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v12 setType:0];
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_RECEIVED_IGNORE];
  [(GKBulletinAction *)v12 setTitle:v13];

  [(GKBulletinAction *)v12 setInfo:&stru_100374F10];
  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setDismissAction:v12];
  v14 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_CHALLENGE_REMOTELY_COMPLETED_BANNER_OUT_OF_GAME_1_PLAYER_FORMAT];
  v15 = [(GKChallengeBulletin *)self receiverPlayer];
  v16 = [v15 displayNameWithOptions:0];
  v17 = [NSString localizedStringWithFormat:v14, v16];
  [(GKBulletin *)self setMessage:v17];

  [(GKBulletin *)self setBulletinType:800];
}

- (void)handleAction:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKChallengeCompletedBulletin handleAction:", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = GKChallengeCompletedBulletin;
  [(GKBulletin *)&v9 handleAction:v4];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle challenge action: %@", buf, 0xCu);
  }

  if (([v4 isEqualToString:@"GKAccepted"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"GKDefault"))
  {
    [(GKChallengeBulletin *)self handleAcceptAction];
  }
}

@end
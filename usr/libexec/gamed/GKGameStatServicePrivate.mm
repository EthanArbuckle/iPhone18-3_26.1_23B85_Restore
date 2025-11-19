@interface GKGameStatServicePrivate
+ (id)currentFriendsPlayedList:(id)a3;
+ (id)filterUnreportedAndHiddenAchievements:(id)a3 includeUnreported:(BOOL)a4 includeHidden:(BOOL)a5;
- (id)ensureGameObject:(id)a3 gameDescriptor:(id)a4;
- (id)ensureGameObjectsForDescriptors:(id)a3 moc:(id)a4;
- (id)existingReengagementAchievement:(id)a3 context:(id)a4;
- (id)findAchievementInternal:(id)a3 identifier:(id)a4 context:(id)a5 existingPercent:(double)a6 existingDate:(id)a7;
- (id)getCachedAchievementListForLocalPlayer:(id)a3 context:(id)a4;
- (id)processReengagementResults:(id)a3 localPlayer:(id)a4 expirationDate:(id)a5 context:(id)a6;
- (void)clearAchievementsCacheWithHandler:(id)a3;
- (void)clearLeaderboardsCacheWithHandler:(id)a3;
- (void)expireGamesFriendsPlayed;
- (void)getEntriesForLeaderboard:(id)a3 fetchOptions:(unint64_t)a4 gameDescriptor:(id)a5 localPlayer:(id)a6 playerScope:(int64_t)a7 timeScope:(int64_t)a8 range:(_NSRange)a9 players:(id)a10 handler:(id)a11;
- (void)getGamesFriendsPlayed:(int64_t)a3 type:(id)a4 fetchOptions:(unint64_t)a5 withinSecs:(int64_t)a6 matchingBundleIDs:(id)a7 handler:(id)a8;
- (void)getHypotheticalLeaderboardRanksForScores:(id)a3 forGameDescriptor:(id)a4 handler:(id)a5;
- (void)getLeaderboardScoringFriendsForGameDescriptor:(id)a3 playerID:(id)a4 completionHandler:(id)a5;
- (void)getReengagementAchievement:(id)a3;
- (void)getReengagementAchievements:(id)a3;
- (void)loadAchievementsForGameWithProfileFetchOptions:(id)a3 players:(id)a4 includeUnreported:(BOOL)a5 includeHidden:(BOOL)a6 profileFetchOptions:(unint64_t)a7 withCompletionHandler:(id)a8;
- (void)loadGamesFriendsPlayed:(id)a3 matchingBundleIDs:(id)a4 handler:(id)a5;
- (void)loadReengagementAchievements:(id)a3 handler:(id)a4;
@end

@implementation GKGameStatServicePrivate

+ (id)filterUnreportedAndHiddenAchievements:(id)a3 includeUnreported:(BOOL)a4 includeHidden:(BOOL)a5
{
  v7 = a3;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000BF7C0;
  v14 = &unk_100365058;
  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = a4;
  v17 = a5;
  v8 = v15;
  [v7 enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

- (void)loadAchievementsForGameWithProfileFetchOptions:(id)a3 players:(id)a4 includeUnreported:(BOOL)a5 includeHidden:(BOOL)a6 profileFetchOptions:(unint64_t)a7 withCompletionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BFA1C;
  v19[3] = &unk_1003651C0;
  v19[4] = self;
  v20 = v14;
  v24 = a5;
  v25 = a6;
  v22 = a8;
  v23 = a7;
  v21 = v15;
  v16 = v22;
  v17 = v15;
  v18 = v14;
  [(GKGameStatService *)self getAchievementsForGameDescriptor:v18 players:v17 handler:v19];
}

- (void)getEntriesForLeaderboard:(id)a3 fetchOptions:(unint64_t)a4 gameDescriptor:(id)a5 localPlayer:(id)a6 playerScope:(int64_t)a7 timeScope:(int64_t)a8 range:(_NSRange)a9 players:(id)a10 handler:(id)a11
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a10;
  v18 = a11;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3023, "[GKGameStatServicePrivate getEntriesForLeaderboard:fetchOptions:gameDescriptor:localPlayer:playerScope:timeScope:range:players:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000C0484;
  v36[3] = &unk_100365210;
  v36[4] = self;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v43 = a8;
  v44 = a9;
  v42 = a7;
  v40 = v17;
  v21 = v20;
  v41 = v21;
  v45 = a4;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  [v21 perform:v36];
  v26 = [(GKService *)self clientProxy];
  v27 = [v26 replyQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000C0770;
  v33[3] = &unk_100360EB0;
  v34 = v21;
  v35 = v18;
  v28 = v21;
  v29 = v18;
  [v28 notifyOnQueue:v27 block:v33];
}

- (void)getLeaderboardScoringFriendsForGameDescriptor:(id)a3 playerID:(id)a4 completionHandler:(id)a5
{
  v14[0] = @"game";
  v8 = a5;
  v9 = a4;
  v10 = [a3 dictionaryForRequest];
  v14[1] = @"player-id";
  v15[0] = v10;
  v15[1] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];

  v13 = [(GKService *)self clientProxy];
  [v12 readEntityWithRequest:v11 bagKey:@"gk-get-leaderboard-categories" includeStaleCacheData:0 clientProxy:v13 completionHandler:v8 entityMaker:&stru_100365230];
}

- (void)getHypotheticalLeaderboardRanksForScores:(id)a3 forGameDescriptor:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v9)
    {
      if ([v8 count])
      {
        v11 = [v9 bundleIdentifier];
        v12 = [(GKService *)GKGameServicePrivate serviceFromService:self];
        v20 = v11;
        v13 = [NSArray arrayWithObjects:&v20 count:1];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000C0E94;
        v15[3] = &unk_100365280;
        v19 = v10;
        v16 = v8;
        v17 = v9;
        v18 = self;
        [v12 getGameStatsForPlayer:0 bundleIDs:v13 handler:v15];
      }

      else
      {
        (*(v10 + 2))(v10, &__NSArray0__struct, 0);
      }
    }

    else
    {
      v14 = [NSError userErrorForCode:17 underlyingError:0];
      (*(v10 + 2))(v10, 0, v14);
    }
  }
}

- (id)ensureGameObjectsForDescriptors:(id)a3 moc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _gkMapWithBlock:&stru_1003652A0];
  v8 = [GKGameCacheObject gamesForBundleIDs:v7 context:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C1378;
  v11[3] = &unk_1003652C8;
  v12 = v5;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:v11];

  return v8;
}

- (id)ensureGameObject:(id)a3 gameDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"bundle-id"];
  v8 = [GKGameCacheObject gameForBundleID:v7 context:v5];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(GKCacheObject *)[GKGameCacheObject alloc] initWithManagedObjectContext:v5];
    [(GKGameCacheObject *)v9 setBundleID:v7];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [(GKGameCacheObject *)v9 updateWithGameDescriptor:v6];
LABEL_5:

  return v9;
}

- (void)loadGamesFriendsPlayed:(id)a3 matchingBundleIDs:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v12 = GKBagKeyGamesFriendsPlayed;
  v13 = [(GKService *)self clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C15DC;
  v16[3] = &unk_100365360;
  v17 = v8;
  v18 = v9;
  v16[4] = self;
  v14 = v8;
  v15 = v9;
  [v11 issueRequest:v10 bagKey:v12 clientProxy:v13 handler:v16];
}

+ (id)currentFriendsPlayedList:(id)a3
{
  v3 = a3;
  v4 = +[FriendsPlayedGameList _gkFetchRequest];
  v23 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v23];
  v6 = v23;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v25 = v6;
    v9 = "Could not fetch data from cache: %@";
    v10 = v8;
    v11 = 12;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v14 = [v5 count];
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [NSNumber numberWithInteger:v14];
    *buf = 138412290;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "currentCacheCount: %@", buf, 0xCu);
  }

  if (!v14)
  {
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    v22 = os_log_GKDaemon;
    if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v9 = "No gameFriendsPlayed data in cache, hitting server";
    v10 = v22;
    v11 = 2;
    goto LABEL_6;
  }

  v12 = [v5 objectAtIndexedSubscript:0];
  if (v14 >= 2)
  {
    for (i = 1; i != v14; ++i)
    {
      v20 = [v5 objectAtIndexedSubscript:i];
      [v3 deleteObject:v20];
    }
  }

LABEL_8:

  return v12;
}

- (void)expireGamesFriendsPlayed
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Expiring games friends played", buf, 2u);
  }

  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3337, "[GKGameStatServicePrivate expireGamesFriendsPlayed]"];
  v6 = [(GKGameStatServicePrivate *)self currentLocalPlayer];
  v7 = [v6 playerID];
  v8 = [(GKService *)self transactionGroupWithName:v5 forPlayerID:v7];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C26A0;
  v9[3] = &unk_100362920;
  v9[4] = self;
  [v8 performOnManagedObjectContext:v9];
}

- (void)getGamesFriendsPlayed:(int64_t)a3 type:(id)a4 fetchOptions:(unint64_t)a5 withinSecs:(int64_t)a6 matchingBundleIDs:(id)a7 handler:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = [(GKGameStatServicePrivate *)self currentLocalPlayer];
  v18 = [(GKService *)self clientProxy];
  v19 = [(GKService *)GKFriendServicePrivate serviceWithTransport:0 forClient:v18 localPlayer:v17];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000C291C;
  v24[3] = &unk_1003653B0;
  v29 = v16;
  v30 = a3;
  v25 = v14;
  v26 = self;
  v27 = v17;
  v28 = v15;
  v31 = a6;
  v32 = a5;
  v20 = v15;
  v21 = v17;
  v22 = v14;
  v23 = v16;
  [v19 getFriendsForPlayer:v21 commonFriends:0 handler:v24];
}

- (id)getCachedAchievementListForLocalPlayer:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v8 = [GKGameCacheObject gameForBundleID:v6 context:v5];

  v9 = [v7 achievementLists];
  v10 = [NSMutableSet setWithSet:v9];

  v11 = [v8 achievementLists];
  [v10 intersectSet:v11];

  v12 = [v10 anyObject];

  return v12;
}

- (id)findAchievementInternal:(id)a3 identifier:(id)a4 context:(id)a5 existingPercent:(double)a6 existingDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(GKCacheObject *)GKAchievementDescriptionListCacheObject fetchRequestForContext:v14];
  v17 = [NSPredicate predicateWithFormat:@"game.bundleID == %@", v12];
  [v16 setPredicate:v17];

  v18 = [v14 executeFetchRequest:v16 error:0];
  if (![v18 count])
  {
    v30 = 0;
    goto LABEL_35;
  }

  v19 = [(GKGameStatServicePrivate *)self getCachedAchievementListForLocalPlayer:v12 context:v14];
  v51 = v12;
  v52 = v15;
  v50 = v16;
  v53 = v19;
  v54 = v18;
  if (v19)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = [v19 entries];
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v60;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v60 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v59 + 1) + 8 * i);
          v27 = [v26 identifier];
          v28 = [v27 isEqualToString:v13];

          if (v28)
          {
            v29 = v26;

            v23 = v29;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v22);

      if (v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [v53 expire];
  }

  v23 = 0;
LABEL_18:
  v31 = [v54 objectAtIndexedSubscript:0];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v32 = [v31 entries];
  v33 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v33)
  {
    v34 = v33;
    v48 = v31;
    v49 = v14;
    v35 = 0;
    v36 = *v56;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v55 + 1) + 8 * j);
        v39 = [v38 identifier];
        v40 = [v39 isEqualToString:v13];

        if (v40)
        {
          v41 = v38;

          v35 = v41;
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v34);

    if (v35)
    {
      v42 = [v35 internalRepresentation];
      [v23 percentComplete];
      v44 = v43;
      v14 = v49;
      if (v44 >= a6)
      {
        [v23 percentComplete];
        [v42 setPercentComplete:v45];
        v46 = [v23 lastReportedDate];
        [v42 setLastReportedDate:v46];
      }

      else
      {
        *&v44 = a6;
        [v23 setPercentComplete:v44];
        [v23 setLastReportedDate:v52];
        [v42 setPercentComplete:a6];
        [v42 setLastReportedDate:v52];
      }

      v31 = v48;
      v30 = v42;
    }

    else
    {
      v30 = 0;
      v31 = v48;
      v14 = v49;
    }
  }

  else
  {

    v35 = 0;
    v30 = 0;
  }

  v12 = v51;
  v15 = v52;
  v16 = v50;
  v18 = v54;
LABEL_35:

  return v30;
}

- (id)existingReengagementAchievement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[ReengagementAchievementEntry _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"playerID == %@", v5];
  [v7 setPredicate:v8];

  v22 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v22];
  v10 = v22;
  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Could not fetch reengagement data from cache: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = [v9 count];
    v13 = v14;
    if (v14)
    {
      if (v14 >= 2)
      {
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        v16 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v17 = v16;
          v18 = [NSNumber numberWithInteger:v13];
          *buf = 138412290;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "more than one reengagementAchievement need to cleanup: %@", buf, 0xCu);
        }

        v19 = 1;
        do
        {
          v20 = [v9 objectAtIndexedSubscript:v19];
          [v6 deleteObject:v20];

          ++v19;
        }

        while (v13 != v19);
      }

      v13 = [v9 objectAtIndexedSubscript:0];
    }
  }

  return v13;
}

- (id)processReengagementResults:(id)a3 localPlayer:(id)a4 expirationDate:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v14 = [v10 objectAtIndexedSubscript:0];
    v15 = [v14 objectForKeyedSubscript:@"achievements"];
    if ([v15 count])
    {
      v46 = v12;
      v45 = [v14 objectForKeyedSubscript:@"game"];
      v44 = [v45 objectForKeyedSubscript:@"bundle-id"];
      v16 = [v15 objectAtIndexedSubscript:0];
      v42 = [v16 objectForKeyedSubscript:@"achievement-id"];
      v17 = [v16 objectForKeyedSubscript:@"achievement-pct"];
      v40 = [v16 objectForKeyedSubscript:@"timestamp"];
      [v40 doubleValue];
      v19 = [NSDate dateWithTimeIntervalSince1970:v18 / 1000.0];
      v20 = v11;
      v21 = v19;
      v47 = v20;
      v22 = [v20 playerID];
      v23 = [(GKGameStatServicePrivate *)self existingReengagementAchievement:v22 context:v13];

      v43 = v14;
      v41 = v15;
      if (v23)
      {
        if (!os_log_GKGeneral)
        {
          v24 = GKOSLoggers();
        }

        v25 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = v23;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Using existing reengagement entry: %@", buf, 0xCu);
        }

        v26 = v44;
        v27 = v42;
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v33 = GKOSLoggers();
        }

        v39 = self;
        v34 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Creating new reengagement entry", buf, 2u);
        }

        v35 = [ReengagementAchievementEntry alloc];
        v36 = +[ReengagementAchievementEntry entity];
        v23 = [(ReengagementAchievementEntry *)v35 initWithEntity:v36 insertIntoManagedObjectContext:v13];

        v26 = v44;
        [(ReengagementAchievementEntry *)v23 setBundleID:v44];
        v27 = v42;
        [(ReengagementAchievementEntry *)v23 setIdentifier:v42];
        v37 = [v47 playerID];
        [(ReengagementAchievementEntry *)v23 setPlayerID:v37];

        self = v39;
      }

      [(ReengagementAchievementEntry *)v23 setPercentComplete:v17];
      [(ReengagementAchievementEntry *)v23 setLastReportedDate:v21];
      [(ReengagementAchievementEntry *)v23 setExpirationDate:v46];
      [v17 doubleValue];
      v30 = [(GKGameStatServicePrivate *)self findAchievementInternal:v26 identifier:v27 context:v13 existingPercent:v21 existingDate:?];

      v12 = v46;
      v11 = v47;
      v14 = v43;
      v15 = v41;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v32 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Zero reengagement achievements from server", buf, 2u);
      }

      v30 = 0;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    v29 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Zero server results for reengagement", buf, 2u);
    }

    v30 = 0;
  }

  return v30;
}

- (void)loadReengagementAchievements:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v10 = [(GKService *)self clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C3E18;
  v13[3] = &unk_100363A58;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v11 = v6;
  v12 = v7;
  [v9 issueRequest:v8 bagKey:@"gk-reengagement-achievements" clientProxy:v10 handler:v13];
}

- (void)getReengagementAchievements:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C4848;
  v5[3] = &unk_100365450;
  v6 = a3;
  v4 = v6;
  [(GKGameStatServicePrivate *)self getReengagementAchievement:v5];
}

- (void)getReengagementAchievement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[GKPlayerCredentialController sharedController];
    v6 = [(GKService *)self clientProxy];
    v7 = [v5 pushCredentialForEnvironment:{objc_msgSend(v6, "environment")}];
    v8 = [v7 playerInternal];

    v9 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3650, "[GKGameStatServicePrivate getReengagementAchievement:]"];
    v10 = [(GKService *)self transactionGroupWithName:v9];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C49D4;
    v13[3] = &unk_1003636E0;
    v13[4] = self;
    v14 = v8;
    v15 = v10;
    v16 = v4;
    v11 = v10;
    v12 = v8;
    [v11 performOnManagedObjectContext:v13];
  }
}

- (void)clearAchievementsCacheWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3682, "[GKGameStatServicePrivate clearAchievementsCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C51B0;
  v18[3] = &unk_100362920;
  v7 = v6;
  v19 = v7;
  [v7 performOnManagedObjectContext:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C5284;
  v16[3] = &unk_100362920;
  v8 = v7;
  v17 = v8;
  [v8 performOnManagedObjectContext:v16];
  v9 = [(GKService *)self clientProxy];
  v10 = [v9 replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C5358;
  v13[3] = &unk_100360EB0;
  v14 = v8;
  v15 = v4;
  v11 = v8;
  v12 = v4;
  [v11 notifyOnQueue:v10 block:v13];
}

- (void)clearLeaderboardsCacheWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3711, "[GKGameStatServicePrivate clearLeaderboardsCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C5558;
  v15[3] = &unk_100362920;
  v7 = v6;
  v16 = v7;
  [v7 performOnManagedObjectContext:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C562C;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

@end
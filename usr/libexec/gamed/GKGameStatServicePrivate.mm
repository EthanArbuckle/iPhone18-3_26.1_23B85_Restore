@interface GKGameStatServicePrivate
+ (id)currentFriendsPlayedList:(id)list;
+ (id)filterUnreportedAndHiddenAchievements:(id)achievements includeUnreported:(BOOL)unreported includeHidden:(BOOL)hidden;
- (id)ensureGameObject:(id)object gameDescriptor:(id)descriptor;
- (id)ensureGameObjectsForDescriptors:(id)descriptors moc:(id)moc;
- (id)existingReengagementAchievement:(id)achievement context:(id)context;
- (id)findAchievementInternal:(id)internal identifier:(id)identifier context:(id)context existingPercent:(double)percent existingDate:(id)date;
- (id)getCachedAchievementListForLocalPlayer:(id)player context:(id)context;
- (id)processReengagementResults:(id)results localPlayer:(id)player expirationDate:(id)date context:(id)context;
- (void)clearAchievementsCacheWithHandler:(id)handler;
- (void)clearLeaderboardsCacheWithHandler:(id)handler;
- (void)expireGamesFriendsPlayed;
- (void)getEntriesForLeaderboard:(id)leaderboard fetchOptions:(unint64_t)options gameDescriptor:(id)descriptor localPlayer:(id)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(id)self0 handler:(id)self1;
- (void)getGamesFriendsPlayed:(int64_t)played type:(id)type fetchOptions:(unint64_t)options withinSecs:(int64_t)secs matchingBundleIDs:(id)ds handler:(id)handler;
- (void)getHypotheticalLeaderboardRanksForScores:(id)scores forGameDescriptor:(id)descriptor handler:(id)handler;
- (void)getLeaderboardScoringFriendsForGameDescriptor:(id)descriptor playerID:(id)d completionHandler:(id)handler;
- (void)getReengagementAchievement:(id)achievement;
- (void)getReengagementAchievements:(id)achievements;
- (void)loadAchievementsForGameWithProfileFetchOptions:(id)options players:(id)players includeUnreported:(BOOL)unreported includeHidden:(BOOL)hidden profileFetchOptions:(unint64_t)fetchOptions withCompletionHandler:(id)handler;
- (void)loadGamesFriendsPlayed:(id)played matchingBundleIDs:(id)ds handler:(id)handler;
- (void)loadReengagementAchievements:(id)achievements handler:(id)handler;
@end

@implementation GKGameStatServicePrivate

+ (id)filterUnreportedAndHiddenAchievements:(id)achievements includeUnreported:(BOOL)unreported includeHidden:(BOOL)hidden
{
  achievementsCopy = achievements;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000BF7C0;
  v14 = &unk_100365058;
  v15 = objc_alloc_init(NSMutableDictionary);
  unreportedCopy = unreported;
  hiddenCopy = hidden;
  v8 = v15;
  [achievementsCopy enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

- (void)loadAchievementsForGameWithProfileFetchOptions:(id)options players:(id)players includeUnreported:(BOOL)unreported includeHidden:(BOOL)hidden profileFetchOptions:(unint64_t)fetchOptions withCompletionHandler:(id)handler
{
  optionsCopy = options;
  playersCopy = players;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BFA1C;
  v19[3] = &unk_1003651C0;
  v19[4] = self;
  v20 = optionsCopy;
  unreportedCopy = unreported;
  hiddenCopy = hidden;
  handlerCopy = handler;
  fetchOptionsCopy = fetchOptions;
  v21 = playersCopy;
  v16 = handlerCopy;
  v17 = playersCopy;
  v18 = optionsCopy;
  [(GKGameStatService *)self getAchievementsForGameDescriptor:v18 players:v17 handler:v19];
}

- (void)getEntriesForLeaderboard:(id)leaderboard fetchOptions:(unint64_t)options gameDescriptor:(id)descriptor localPlayer:(id)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(id)self0 handler:(id)self1
{
  leaderboardCopy = leaderboard;
  descriptorCopy = descriptor;
  playerCopy = player;
  playersCopy = players;
  handlerCopy = handler;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3023, "[GKGameStatServicePrivate getEntriesForLeaderboard:fetchOptions:gameDescriptor:localPlayer:playerScope:timeScope:range:players:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000C0484;
  v36[3] = &unk_100365210;
  v36[4] = self;
  v37 = leaderboardCopy;
  v38 = descriptorCopy;
  v39 = playerCopy;
  timeScopeCopy = timeScope;
  rangeCopy = range;
  scopeCopy = scope;
  v40 = playersCopy;
  v21 = v20;
  v41 = v21;
  optionsCopy = options;
  v22 = playersCopy;
  v23 = playerCopy;
  v24 = descriptorCopy;
  v25 = leaderboardCopy;
  [v21 perform:v36];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000C0770;
  v33[3] = &unk_100360EB0;
  v34 = v21;
  v35 = handlerCopy;
  v28 = v21;
  v29 = handlerCopy;
  [v28 notifyOnQueue:replyQueue block:v33];
}

- (void)getLeaderboardScoringFriendsForGameDescriptor:(id)descriptor playerID:(id)d completionHandler:(id)handler
{
  v14[0] = @"game";
  handlerCopy = handler;
  dCopy = d;
  dictionaryForRequest = [descriptor dictionaryForRequest];
  v14[1] = @"player-id";
  v15[0] = dictionaryForRequest;
  v15[1] = dCopy;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];

  clientProxy = [(GKService *)self clientProxy];
  [v12 readEntityWithRequest:v11 bagKey:@"gk-get-leaderboard-categories" includeStaleCacheData:0 clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_100365230];
}

- (void)getHypotheticalLeaderboardRanksForScores:(id)scores forGameDescriptor:(id)descriptor handler:(id)handler
{
  scoresCopy = scores;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (descriptorCopy)
    {
      if ([scoresCopy count])
      {
        bundleIdentifier = [descriptorCopy bundleIdentifier];
        v12 = [(GKService *)GKGameServicePrivate serviceFromService:self];
        v20 = bundleIdentifier;
        v13 = [NSArray arrayWithObjects:&v20 count:1];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000C0E94;
        v15[3] = &unk_100365280;
        v19 = handlerCopy;
        v16 = scoresCopy;
        v17 = descriptorCopy;
        selfCopy = self;
        [v12 getGameStatsForPlayer:0 bundleIDs:v13 handler:v15];
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
      }
    }

    else
    {
      v14 = [NSError userErrorForCode:17 underlyingError:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

- (id)ensureGameObjectsForDescriptors:(id)descriptors moc:(id)moc
{
  descriptorsCopy = descriptors;
  mocCopy = moc;
  v7 = [descriptorsCopy _gkMapWithBlock:&stru_1003652A0];
  v8 = [GKGameCacheObject gamesForBundleIDs:v7 context:mocCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C1378;
  v11[3] = &unk_1003652C8;
  v12 = descriptorsCopy;
  v9 = descriptorsCopy;
  [v8 enumerateObjectsUsingBlock:v11];

  return v8;
}

- (id)ensureGameObject:(id)object gameDescriptor:(id)descriptor
{
  objectCopy = object;
  descriptorCopy = descriptor;
  v7 = [descriptorCopy objectForKeyedSubscript:@"bundle-id"];
  v8 = [GKGameCacheObject gameForBundleID:v7 context:objectCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(GKCacheObject *)[GKGameCacheObject alloc] initWithManagedObjectContext:objectCopy];
    [(GKGameCacheObject *)v9 setBundleID:v7];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [(GKGameCacheObject *)v9 updateWithGameDescriptor:descriptorCopy];
LABEL_5:

  return v9;
}

- (void)loadGamesFriendsPlayed:(id)played matchingBundleIDs:(id)ds handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  playedCopy = played;
  v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v12 = GKBagKeyGamesFriendsPlayed;
  clientProxy = [(GKService *)self clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C15DC;
  v16[3] = &unk_100365360;
  v17 = dsCopy;
  v18 = handlerCopy;
  v16[4] = self;
  v14 = dsCopy;
  v15 = handlerCopy;
  [v11 issueRequest:playedCopy bagKey:v12 clientProxy:clientProxy handler:v16];
}

+ (id)currentFriendsPlayedList:(id)list
{
  listCopy = list;
  v4 = +[FriendsPlayedGameList _gkFetchRequest];
  v23 = 0;
  v5 = [listCopy executeFetchRequest:v4 error:&v23];
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
      [listCopy deleteObject:v20];
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
  currentLocalPlayer = [(GKGameStatServicePrivate *)self currentLocalPlayer];
  playerID = [currentLocalPlayer playerID];
  v8 = [(GKService *)self transactionGroupWithName:v5 forPlayerID:playerID];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C26A0;
  v9[3] = &unk_100362920;
  v9[4] = self;
  [v8 performOnManagedObjectContext:v9];
}

- (void)getGamesFriendsPlayed:(int64_t)played type:(id)type fetchOptions:(unint64_t)options withinSecs:(int64_t)secs matchingBundleIDs:(id)ds handler:(id)handler
{
  typeCopy = type;
  dsCopy = ds;
  handlerCopy = handler;
  currentLocalPlayer = [(GKGameStatServicePrivate *)self currentLocalPlayer];
  clientProxy = [(GKService *)self clientProxy];
  v19 = [(GKService *)GKFriendServicePrivate serviceWithTransport:0 forClient:clientProxy localPlayer:currentLocalPlayer];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000C291C;
  v24[3] = &unk_1003653B0;
  v29 = handlerCopy;
  playedCopy = played;
  v25 = typeCopy;
  selfCopy = self;
  v27 = currentLocalPlayer;
  v28 = dsCopy;
  secsCopy = secs;
  optionsCopy = options;
  v20 = dsCopy;
  v21 = currentLocalPlayer;
  v22 = typeCopy;
  v23 = handlerCopy;
  [v19 getFriendsForPlayer:v21 commonFriends:0 handler:v24];
}

- (id)getCachedAchievementListForLocalPlayer:(id)player context:(id)context
{
  contextCopy = context;
  playerCopy = player;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:contextCopy];
  v8 = [GKGameCacheObject gameForBundleID:playerCopy context:contextCopy];

  achievementLists = [v7 achievementLists];
  v10 = [NSMutableSet setWithSet:achievementLists];

  achievementLists2 = [v8 achievementLists];
  [v10 intersectSet:achievementLists2];

  anyObject = [v10 anyObject];

  return anyObject;
}

- (id)findAchievementInternal:(id)internal identifier:(id)identifier context:(id)context existingPercent:(double)percent existingDate:(id)date
{
  internalCopy = internal;
  identifierCopy = identifier;
  contextCopy = context;
  dateCopy = date;
  v16 = [(GKCacheObject *)GKAchievementDescriptionListCacheObject fetchRequestForContext:contextCopy];
  internalCopy = [NSPredicate predicateWithFormat:@"game.bundleID == %@", internalCopy];
  [v16 setPredicate:internalCopy];

  v18 = [contextCopy executeFetchRequest:v16 error:0];
  if (![v18 count])
  {
    v30 = 0;
    goto LABEL_35;
  }

  v19 = [(GKGameStatServicePrivate *)self getCachedAchievementListForLocalPlayer:internalCopy context:contextCopy];
  v51 = internalCopy;
  v52 = dateCopy;
  v50 = v16;
  v53 = v19;
  v54 = v18;
  if (v19)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    entries = [v19 entries];
    v21 = [entries countByEnumeratingWithState:&v59 objects:v64 count:16];
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
            objc_enumerationMutation(entries);
          }

          v26 = *(*(&v59 + 1) + 8 * i);
          identifier = [v26 identifier];
          v28 = [identifier isEqualToString:identifierCopy];

          if (v28)
          {
            v29 = v26;

            v23 = v29;
          }
        }

        v22 = [entries countByEnumeratingWithState:&v59 objects:v64 count:16];
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
  entries2 = [v31 entries];
  v33 = [entries2 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v33)
  {
    v34 = v33;
    v48 = v31;
    v49 = contextCopy;
    v35 = 0;
    v36 = *v56;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(entries2);
        }

        v38 = *(*(&v55 + 1) + 8 * j);
        identifier2 = [v38 identifier];
        v40 = [identifier2 isEqualToString:identifierCopy];

        if (v40)
        {
          v41 = v38;

          v35 = v41;
        }
      }

      v34 = [entries2 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v34);

    if (v35)
    {
      internalRepresentation = [v35 internalRepresentation];
      [v23 percentComplete];
      v44 = v43;
      contextCopy = v49;
      if (v44 >= percent)
      {
        [v23 percentComplete];
        [internalRepresentation setPercentComplete:v45];
        lastReportedDate = [v23 lastReportedDate];
        [internalRepresentation setLastReportedDate:lastReportedDate];
      }

      else
      {
        *&v44 = percent;
        [v23 setPercentComplete:v44];
        [v23 setLastReportedDate:v52];
        [internalRepresentation setPercentComplete:percent];
        [internalRepresentation setLastReportedDate:v52];
      }

      v31 = v48;
      v30 = internalRepresentation;
    }

    else
    {
      v30 = 0;
      v31 = v48;
      contextCopy = v49;
    }
  }

  else
  {

    v35 = 0;
    v30 = 0;
  }

  internalCopy = v51;
  dateCopy = v52;
  v16 = v50;
  v18 = v54;
LABEL_35:

  return v30;
}

- (id)existingReengagementAchievement:(id)achievement context:(id)context
{
  achievementCopy = achievement;
  contextCopy = context;
  v7 = +[ReengagementAchievementEntry _gkFetchRequest];
  achievementCopy = [NSPredicate predicateWithFormat:@"playerID == %@", achievementCopy];
  [v7 setPredicate:achievementCopy];

  v22 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v22];
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
          [contextCopy deleteObject:v20];

          ++v19;
        }

        while (v13 != v19);
      }

      v13 = [v9 objectAtIndexedSubscript:0];
    }
  }

  return v13;
}

- (id)processReengagementResults:(id)results localPlayer:(id)player expirationDate:(id)date context:(id)context
{
  resultsCopy = results;
  playerCopy = player;
  dateCopy = date;
  contextCopy = context;
  if ([resultsCopy count])
  {
    v14 = [resultsCopy objectAtIndexedSubscript:0];
    v15 = [v14 objectForKeyedSubscript:@"achievements"];
    if ([v15 count])
    {
      v46 = dateCopy;
      v45 = [v14 objectForKeyedSubscript:@"game"];
      v44 = [v45 objectForKeyedSubscript:@"bundle-id"];
      v16 = [v15 objectAtIndexedSubscript:0];
      v42 = [v16 objectForKeyedSubscript:@"achievement-id"];
      v17 = [v16 objectForKeyedSubscript:@"achievement-pct"];
      v40 = [v16 objectForKeyedSubscript:@"timestamp"];
      [v40 doubleValue];
      v19 = [NSDate dateWithTimeIntervalSince1970:v18 / 1000.0];
      v20 = playerCopy;
      v21 = v19;
      v47 = v20;
      playerID = [v20 playerID];
      v23 = [(GKGameStatServicePrivate *)self existingReengagementAchievement:playerID context:contextCopy];

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

        selfCopy = self;
        v34 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Creating new reengagement entry", buf, 2u);
        }

        v35 = [ReengagementAchievementEntry alloc];
        v36 = +[ReengagementAchievementEntry entity];
        v23 = [(ReengagementAchievementEntry *)v35 initWithEntity:v36 insertIntoManagedObjectContext:contextCopy];

        v26 = v44;
        [(ReengagementAchievementEntry *)v23 setBundleID:v44];
        v27 = v42;
        [(ReengagementAchievementEntry *)v23 setIdentifier:v42];
        playerID2 = [v47 playerID];
        [(ReengagementAchievementEntry *)v23 setPlayerID:playerID2];

        self = selfCopy;
      }

      [(ReengagementAchievementEntry *)v23 setPercentComplete:v17];
      [(ReengagementAchievementEntry *)v23 setLastReportedDate:v21];
      [(ReengagementAchievementEntry *)v23 setExpirationDate:v46];
      [v17 doubleValue];
      v30 = [(GKGameStatServicePrivate *)self findAchievementInternal:v26 identifier:v27 context:contextCopy existingPercent:v21 existingDate:?];

      dateCopy = v46;
      playerCopy = v47;
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

- (void)loadReengagementAchievements:(id)achievements handler:(id)handler
{
  achievementsCopy = achievements;
  handlerCopy = handler;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C3E18;
  v13[3] = &unk_100363A58;
  v14 = achievementsCopy;
  v15 = handlerCopy;
  v13[4] = self;
  v11 = achievementsCopy;
  v12 = handlerCopy;
  [v9 issueRequest:v8 bagKey:@"gk-reengagement-achievements" clientProxy:clientProxy handler:v13];
}

- (void)getReengagementAchievements:(id)achievements
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C4848;
  v5[3] = &unk_100365450;
  achievementsCopy = achievements;
  v4 = achievementsCopy;
  [(GKGameStatServicePrivate *)self getReengagementAchievement:v5];
}

- (void)getReengagementAchievement:(id)achievement
{
  achievementCopy = achievement;
  if (achievementCopy)
  {
    v5 = +[GKPlayerCredentialController sharedController];
    clientProxy = [(GKService *)self clientProxy];
    v7 = [v5 pushCredentialForEnvironment:{objc_msgSend(clientProxy, "environment")}];
    playerInternal = [v7 playerInternal];

    v9 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3650, "[GKGameStatServicePrivate getReengagementAchievement:]"];
    v10 = [(GKService *)self transactionGroupWithName:v9];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C49D4;
    v13[3] = &unk_1003636E0;
    v13[4] = self;
    v14 = playerInternal;
    v15 = v10;
    v16 = achievementCopy;
    v11 = v10;
    v12 = playerInternal;
    [v11 performOnManagedObjectContext:v13];
  }
}

- (void)clearAchievementsCacheWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C5358;
  v13[3] = &unk_100360EB0;
  v14 = v8;
  v15 = handlerCopy;
  v11 = v8;
  v12 = handlerCopy;
  [v11 notifyOnQueue:replyQueue block:v13];
}

- (void)clearLeaderboardsCacheWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3711, "[GKGameStatServicePrivate clearLeaderboardsCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C5558;
  v15[3] = &unk_100362920;
  v7 = v6;
  v16 = v7;
  [v7 performOnManagedObjectContext:v15];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C562C;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

@end
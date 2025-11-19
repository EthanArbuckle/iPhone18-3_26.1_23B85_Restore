@interface GKCachingUtils
+ (id)ensureGamesPlayedList:(id)a3 playerID:(id)a4;
+ (unsigned)compatiblePlatforms:(id)a3;
+ (unsigned)supportedTransports:(id)a3;
+ (void)clearGamesPlayedCacheForPlayerID:(id)a3 moc:(id)a4;
+ (void)ensureGameInGamesPlayed:(id)a3 playerID:(id)a4 bundleID:(id)a5 gameDescriptor:(id)a6 updateWidget:(BOOL)a7;
@end

@implementation GKCachingUtils

+ (unsigned)compatiblePlatforms:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"platforms"];
  if ([v3 count])
  {
    v4 = [GKGameDescriptor gamePlatformSetForGamePlatformStrings:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)ensureGameInGamesPlayed:(id)a3 playerID:(id)a4 bundleID:(id)a5 gameDescriptor:(id)a6 updateWidget:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v48 = v12;
    v49 = 2112;
    v50 = v13;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Attempting to add game to games played: %@, %@, %@", buf, 0x20u);
  }

  if (v12 && v13 && v14)
  {
    v40 = v7;
    v41 = v11;
    v17 = [GKCachingUtils ensureGamesPlayedList:v11 playerID:v12];
    v18 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = v17;
    v19 = [v17 entries];
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          v25 = [v24 bundleID];

          if (v25)
          {
            v26 = [v24 bundleID];
            [v18 setObject:v24 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v21);
    }

    v27 = [v18 objectForKeyedSubscript:v13];
    if (v27)
    {
      v28 = v27;
      v29 = v39;
      [v39 removeEntriesObject:v27];
      v11 = v41;
    }

    else
    {
      v30 = [GameSummary alloc];
      v31 = +[GameSummary entity];
      v11 = v41;
      v28 = [(GameSummary *)v30 initWithEntity:v31 insertIntoManagedObjectContext:v41];

      v29 = v39;
    }

    [v29 insertObject:v28 inEntriesAtIndex:0];
    v32 = [NSNumber numberWithUnsignedInt:[GKCachingUtils compatiblePlatforms:v14]];
    [(GameSummary *)v28 setCompatiblePlatforms:v32];

    v33 = [v14 objectForKeyedSubscript:@"adam-id"];
    [(GameSummary *)v28 setAdamID:v33];

    v34 = [v14 objectForKeyedSubscript:@"bundle-id"];
    [(GameSummary *)v28 setBundleID:v34];

    v35 = [v14 objectForKeyedSubscript:@"is-arcade-game"];
    [(GameSummary *)v28 setIsArcade:v35];

    v36 = +[NSDate now];
    [(GameSummary *)v28 setPlayedAt:v36];

    if (v40)
    {
      v37 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"ContinuePlayingWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
      v38 = [v37 reloadTimelineWithReason:&stru_100374F10];
    }

    [GKClientProxy enumerateClientsUsingBlock:&stru_100369F98];
  }
}

+ (id)ensureGamesPlayedList:(id)a3 playerID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GamesPlayedSummaryList _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"playerID == %@", v6];
  [v7 setPredicate:v8];

  v9 = [NSManagedObject _gkRetrieveCleanEntry:v5 request:v7];
  if (!v9)
  {
    v10 = [GamesPlayedSummaryList alloc];
    v11 = +[GamesPlayedSummaryList entity];
    v9 = [(GamesPlayedSummaryList *)v10 initWithEntity:v11 insertIntoManagedObjectContext:v5];

    [(GamesPlayedSummaryList *)v9 setPlayerID:v6];
  }

  return v9;
}

+ (void)clearGamesPlayedCacheForPlayerID:(id)a3 moc:(id)a4
{
  v4 = [GKCachingUtils ensureGamesPlayedList:a4 playerID:a3];
  if (v4)
  {
    v7 = v4;
    v5 = +[NSDate distantPast];
    [v7 setExpirationDate:v5];

    v6 = +[NSOrderedSet orderedSet];
    [v7 setEntries:v6];

    v4 = v7;
  }
}

+ (unsigned)supportedTransports:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"supported-transports"];
  if ([v3 count])
  {
    v4 = [GKSupportedTransport supportedTransportVersionSetForTransportVersionStrings:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
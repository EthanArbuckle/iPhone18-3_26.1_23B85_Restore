@interface GKCachingUtils
+ (id)ensureGamesPlayedList:(id)list playerID:(id)d;
+ (unsigned)compatiblePlatforms:(id)platforms;
+ (unsigned)supportedTransports:(id)transports;
+ (void)clearGamesPlayedCacheForPlayerID:(id)d moc:(id)moc;
+ (void)ensureGameInGamesPlayed:(id)played playerID:(id)d bundleID:(id)iD gameDescriptor:(id)descriptor updateWidget:(BOOL)widget;
@end

@implementation GKCachingUtils

+ (unsigned)compatiblePlatforms:(id)platforms
{
  v3 = [platforms objectForKeyedSubscript:@"platforms"];
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

+ (void)ensureGameInGamesPlayed:(id)played playerID:(id)d bundleID:(id)iD gameDescriptor:(id)descriptor updateWidget:(BOOL)widget
{
  widgetCopy = widget;
  playedCopy = played;
  dCopy = d;
  iDCopy = iD;
  descriptorCopy = descriptor;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v48 = dCopy;
    v49 = 2112;
    v50 = iDCopy;
    v51 = 2112;
    v52 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Attempting to add game to games played: %@, %@, %@", buf, 0x20u);
  }

  if (dCopy && iDCopy && descriptorCopy)
  {
    v40 = widgetCopy;
    v41 = playedCopy;
    v17 = [GKCachingUtils ensureGamesPlayedList:playedCopy playerID:dCopy];
    v18 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = v17;
    entries = [v17 entries];
    v20 = [entries countByEnumeratingWithState:&v42 objects:v46 count:16];
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
            objc_enumerationMutation(entries);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          bundleID = [v24 bundleID];

          if (bundleID)
          {
            bundleID2 = [v24 bundleID];
            [v18 setObject:v24 forKeyedSubscript:bundleID2];
          }
        }

        v21 = [entries countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v21);
    }

    v27 = [v18 objectForKeyedSubscript:iDCopy];
    if (v27)
    {
      v28 = v27;
      v29 = v39;
      [v39 removeEntriesObject:v27];
      playedCopy = v41;
    }

    else
    {
      v30 = [GameSummary alloc];
      v31 = +[GameSummary entity];
      playedCopy = v41;
      v28 = [(GameSummary *)v30 initWithEntity:v31 insertIntoManagedObjectContext:v41];

      v29 = v39;
    }

    [v29 insertObject:v28 inEntriesAtIndex:0];
    v32 = [NSNumber numberWithUnsignedInt:[GKCachingUtils compatiblePlatforms:descriptorCopy]];
    [(GameSummary *)v28 setCompatiblePlatforms:v32];

    v33 = [descriptorCopy objectForKeyedSubscript:@"adam-id"];
    [(GameSummary *)v28 setAdamID:v33];

    v34 = [descriptorCopy objectForKeyedSubscript:@"bundle-id"];
    [(GameSummary *)v28 setBundleID:v34];

    v35 = [descriptorCopy objectForKeyedSubscript:@"is-arcade-game"];
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

+ (id)ensureGamesPlayedList:(id)list playerID:(id)d
{
  listCopy = list;
  dCopy = d;
  v7 = +[GamesPlayedSummaryList _gkFetchRequest];
  dCopy = [NSPredicate predicateWithFormat:@"playerID == %@", dCopy];
  [v7 setPredicate:dCopy];

  v9 = [NSManagedObject _gkRetrieveCleanEntry:listCopy request:v7];
  if (!v9)
  {
    v10 = [GamesPlayedSummaryList alloc];
    v11 = +[GamesPlayedSummaryList entity];
    v9 = [(GamesPlayedSummaryList *)v10 initWithEntity:v11 insertIntoManagedObjectContext:listCopy];

    [(GamesPlayedSummaryList *)v9 setPlayerID:dCopy];
  }

  return v9;
}

+ (void)clearGamesPlayedCacheForPlayerID:(id)d moc:(id)moc
{
  v4 = [GKCachingUtils ensureGamesPlayedList:moc playerID:d];
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

+ (unsigned)supportedTransports:(id)transports
{
  v3 = [transports objectForKeyedSubscript:@"supported-transports"];
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
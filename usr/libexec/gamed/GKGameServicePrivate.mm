@interface GKGameServicePrivate
+ (void)_fetchGameMetadataForBundleIDs:(id)ds responseKind:(int)kind context:(id)context clientProxy:(id)proxy handler:(id)handler;
+ (void)fetchOnDeviceMultiplayerGamesInContext:(id)context forBundleIDs:(id)ds clientProxy:(id)proxy handler:(id)handler;
+ (void)loadGameMetadataForBundleIDs:(id)ds context:(id)context clientProxy:(id)proxy handler:(id)handler;
+ (void)loadOnDeviceMultiplayerGamesWithContext:(id)context forBundleIDs:(id)ds clientProxy:(id)proxy handler:(id)handler;
- (id)cachedGamesPlayed:(id)played context:(id)context;
- (void)_getGameMetadataForBundleIDs:(id)ds handler:(id)handler;
- (void)clearAppMetadataCacheWithCompletion:(id)completion;
- (void)clearGamesPlayedSummariesCacheForPlayerID:(id)d;
- (void)clearGlobalGameCacheWithHandler:(id)handler;
- (void)createGameActivityWithIdentifier:(id)identifier properties:(id)properties bundleID:(id)d referenceLeaderboardID:(id)iD referenceAchievementDescriptionID:(id)descriptionID completionHandler:(id)handler;
- (void)fetchGameStatsForPlayer:(id)player bundleIdentifiers:(id)identifiers responseKind:(int)kind context:(id)context handler:(id)handler;
- (void)fetchGamesForPlayer:(id)player includeInstalled:(BOOL)installed responseKind:(int)kind context:(id)context handler:(id)handler;
- (void)fetchInstalledGameIdCacheWithHandler:(id)handler;
- (void)getAppMetadataForBundleIDs:(id)ds adamIDs:(id)iDs ttlOption:(int64_t)option environment:(int64_t)environment localDataOnly:(BOOL)only withCompletion:(id)completion;
- (void)getAppRecentlyPlayedBiomeDataForBundleIDs:(id)ds withCompletion:(id)completion;
- (void)getFriendListAccessForAllGames:(id)games;
- (void)getGameMetadataForBundleIDs:(id)ds handler:(id)handler;
- (void)getGamePoliciesForBundleIDs:(id)ds withCompletion:(id)completion;
- (void)getGameStatsForPlayer:(id)player bundleIDs:(id)ds handler:(id)handler;
- (void)getGamesForPlayer:(id)player includeInstalled:(BOOL)installed handler:(id)handler;
- (void)getGamesPlayedMetaData:(id)data handler:(id)handler;
- (void)getGamesPlayedSummaries:(id)summaries limit:(id)limit withinSecs:(id)secs handler:(id)handler;
- (void)getInstallMetadataForBundleIDs:(id)ds deleteNonmatchingCachedEntries:(BOOL)entries withCompletion:(id)completion;
- (void)getOnDeviceMultiplayerGamesForBundleIDs:(id)ds handler:(id)handler;
- (void)loadGameStatsForPlayer:(id)player bundleIdentifiers:(id)identifiers context:(id)context handler:(id)handler;
- (void)loadGamesForPlayer:(id)player context:(id)context handler:(id)handler;
- (void)readGameMetadataForBundleIDs:(id)ds withCompletion:(id)completion;
- (void)readGamesPlayedSummaries:(id)summaries limit:(id)limit withCompletion:(id)completion;
- (void)refreshInstallMetadataForBundleIDs:(id)ds deleteNonmatchingBundleIDs:(id)iDs fetcher:(id)fetcher;
- (void)removeGameForBundleID:(id)d handler:(id)handler;
- (void)restoreGameIdCacheWithHandler:(id)handler;
- (void)scanInstalledGamesForPlayer:(id)player group:(id)group moc:(id)moc;
- (void)submitFriendListAccess:(id)access value:(id)value handler:(id)handler;
@end

@implementation GKGameServicePrivate

- (id)cachedGamesPlayed:(id)played context:(id)context
{
  contextCopy = context;
  played = [NSPredicate predicateWithFormat:@"playerID == %@", played];
  v7 = +[GamesPlayed _gkFetchRequest];
  [v7 setPredicate:played];
  v8 = [contextCopy executeFetchRequest:v7 error:0];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    if ([v8 count] >= 2)
    {
      v10 = 1;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        [contextCopy deleteObject:v11];

        ++v10;
      }

      while (v10 < [v8 count]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)submitFriendListAccess:(id)access value:(id)value handler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  accessCopy = access;
  v11 = [[GKPlayerGameSettingsNetworkRequest alloc] initWithBundleID:accessCopy value:valueCopy];

  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009725C;
  v15[3] = &unk_1003637B0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v12 writeToNetwork:v11 clientProxy:clientProxy handler:v15];
}

- (void)getGamesPlayedMetaData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 665, "[GKGameServicePrivate getGamesPlayedMetaData:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100097708;
  v18[3] = &unk_100363828;
  v10 = dataCopy;
  v19 = v10;
  v11 = handlerCopy;
  v22 = v11;
  v12 = v9;
  v20 = v12;
  selfCopy = self;
  [v12 performOnManagedObjectContext:v18];
  if (v11)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009867C;
    v15[3] = &unk_100361270;
    v16 = v12;
    v17 = v11;
    [v16 notifyOnQueue:replyQueue block:v15];
  }
}

- (void)getGamesPlayedSummaries:(id)summaries limit:(id)limit withinSecs:(id)secs handler:(id)handler
{
  summariesCopy = summaries;
  limitCopy = limit;
  secsCopy = secs;
  handlerCopy = handler;
  v14 = os_signpost_id_generate(os_log_GKPerf);
  v15 = os_log_GKPerf;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "GamesPlayedSummaries", "", buf, 2u);
  }

  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 806, "[GKGameServicePrivate getGamesPlayedSummaries:limit:withinSecs:handler:]"];
  v18 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v17];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10009898C;
  v29[3] = &unk_1003638A0;
  v19 = summariesCopy;
  v30 = v19;
  v20 = v18;
  v31 = v20;
  v21 = secsCopy;
  v32 = v21;
  selfCopy = self;
  v22 = limitCopy;
  v34 = v22;
  [v20 performOnManagedObjectContext:v29];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100099480;
    v25[3] = &unk_1003638C8;
    v28 = v14;
    v26 = v20;
    v27 = handlerCopy;
    [v26 notifyOnQueue:replyQueue block:v25];
  }
}

- (void)clearGamesPlayedSummariesCacheForPlayerID:(id)d
{
  dCopy = d;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 931, "[GKGameServicePrivate clearGamesPlayedSummariesCacheForPlayerID:]"];
  v6 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009964C;
  v8[3] = &unk_100362920;
  v9 = dCopy;
  v7 = dCopy;
  [v6 performOnManagedObjectContext:v8];
}

- (void)getGamePoliciesForBundleIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = os_signpost_id_generate(os_log_GKPerf);
  v9 = os_log_GKPerf;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "GamePolicies", "", buf, 2u);
  }

  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 943, "[GKGameServicePrivate getGamePoliciesForBundleIDs:withCompletion:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  clientProxy = [(GKService *)self clientProxy];
  taskQueue = [clientProxy taskQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000998CC;
  v25[3] = &unk_100360FF0;
  v26 = dsCopy;
  v15 = v12;
  v27 = v15;
  v16 = dsCopy;
  [v15 performOnQueue:taskQueue block:v25];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000999F0;
  v21[3] = &unk_100363918;
  v23 = completionCopy;
  v24 = v8;
  v22 = v15;
  v19 = v15;
  v20 = completionCopy;
  [v19 notifyOnQueue:replyQueue block:v21];
}

- (void)getInstallMetadataForBundleIDs:(id)ds deleteNonmatchingCachedEntries:(BOOL)entries withCompletion:(id)completion
{
  completionCopy = completion;
  v9 = os_log_GKPerf;
  dsCopy = ds;
  v11 = os_signpost_id_generate(v9);
  v12 = os_log_GKPerf;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "InstallMetadata", "", buf, 2u);
  }

  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 967, "[GKGameServicePrivate getInstallMetadataForBundleIDs:deleteNonmatchingCachedEntries:withCompletion:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v16 = [NSSet setWithArray:dsCopy];

  clientProxy = [(GKService *)self clientProxy];
  taskQueue = [clientProxy taskQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100099D48;
  v29[3] = &unk_100361670;
  v29[4] = self;
  v19 = v15;
  v30 = v19;
  v31 = v16;
  entriesCopy = entries;
  v20 = v16;
  [v19 performOnQueue:taskQueue block:v29];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009A070;
  v25[3] = &unk_1003638C8;
  v27 = completionCopy;
  v28 = v11;
  v26 = v19;
  v23 = completionCopy;
  v24 = v19;
  [v24 notifyOnQueue:replyQueue block:v25];
}

- (void)refreshInstallMetadataForBundleIDs:(id)ds deleteNonmatchingBundleIDs:(id)iDs fetcher:(id)fetcher
{
  dsCopy = ds;
  iDsCopy = iDs;
  fetcherCopy = fetcher;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1017, "[GKGameServicePrivate refreshInstallMetadataForBundleIDs:deleteNonmatchingBundleIDs:fetcher:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009A360;
  v18[3] = &unk_100360F00;
  v13 = fetcherCopy;
  v19 = v13;
  v14 = dsCopy;
  v20 = v14;
  selfCopy = self;
  [v12 perform:v18];
  if ([iDsCopy count])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009A4C0;
    v15[3] = &unk_100360FF0;
    v16 = v13;
    v17 = iDsCopy;
    [v12 perform:v15];
  }
}

- (void)getAppMetadataForBundleIDs:(id)ds adamIDs:(id)iDs ttlOption:(int64_t)option environment:(int64_t)environment localDataOnly:(BOOL)only withCompletion:(id)completion
{
  dsCopy = ds;
  iDsCopy = iDs;
  completionCopy = completion;
  v16 = os_signpost_id_generate(os_log_GKPerf);
  if (environment)
  {
    v17 = @"AppMetadataSandbox";
  }

  else
  {
    v17 = @"AppMetadataProduction";
  }

  v18 = os_log_GKPerf;
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412290;
    v45 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AppMetadata", "%@", buf, 0xCu);
  }

  v20 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1066, "[GKGameServicePrivate getAppMetadataForBundleIDs:adamIDs:ttlOption:environment:localDataOnly:withCompletion:]"];
  v21 = [GKDispatchGroup dispatchGroupWithName:v20];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10009A8F0;
  v36[3] = &unk_1003639B8;
  v36[4] = self;
  v22 = completionCopy;
  v37 = dsCopy;
  v38 = iDsCopy;
  v40 = v22;
  environmentCopy = environment;
  onlyCopy = only;
  optionCopy = option;
  v23 = v21;
  v39 = v23;
  v24 = iDsCopy;
  v25 = dsCopy;
  [v23 perform:v36];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10009ADCC;
  v31[3] = &unk_1003639E0;
  v34 = v22;
  v35 = v16;
  v32 = v17;
  v33 = v23;
  v28 = v23;
  v29 = v22;
  [v28 notifyOnQueue:replyQueue block:v31];
}

- (void)getAppRecentlyPlayedBiomeDataForBundleIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = os_signpost_id_generate(os_log_GKPerf);
  v9 = os_log_GKPerf;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "BiomeData", "", buf, 2u);
  }

  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1129, "[GKGameServicePrivate getAppRecentlyPlayedBiomeDataForBundleIDs:withCompletion:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  clientProxy = [(GKService *)self clientProxy];
  taskQueue = [clientProxy taskQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009B144;
  v25[3] = &unk_100360FF0;
  v15 = v12;
  v26 = v15;
  v27 = dsCopy;
  v16 = dsCopy;
  [v15 performOnQueue:taskQueue block:v25];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009B1D8;
  v21[3] = &unk_100363918;
  v23 = completionCopy;
  v24 = v8;
  v22 = v15;
  v19 = v15;
  v20 = completionCopy;
  [v19 notifyOnQueue:replyQueue block:v21];
}

- (void)clearAppMetadataCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1147, "[GKGameServicePrivate clearAppMetadataCacheWithCompletion:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009B448;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009B600;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = completionCopy;
  v10 = v7;
  v11 = completionCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

+ (void)fetchOnDeviceMultiplayerGamesInContext:(id)context forBundleIDs:(id)ds clientProxy:(id)proxy handler:(id)handler
{
  contextCopy = context;
  dsCopy = ds;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009B7C4;
  v20[3] = &unk_1003625E8;
  proxyCopy = proxy;
  handlerCopy = handler;
  v11 = handlerCopy;
  v12 = proxyCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009B8E4;
  v16[3] = &unk_100361068;
  v18 = dsCopy;
  v19 = objc_retainBlock(v20);
  v17 = contextCopy;
  v13 = dsCopy;
  v14 = v19;
  v15 = contextCopy;
  [v15 performBlock:v16];
}

+ (void)loadOnDeviceMultiplayerGamesWithContext:(id)context forBundleIDs:(id)ds clientProxy:(id)proxy handler:(id)handler
{
  contextCopy = context;
  proxyCopy = proxy;
  handlerCopy = handler;
  dsCopy = ds;
  v13 = +[GKApplicationWorkspace defaultWorkspace];
  v14 = [v13 gameDescriptorsWithInstalledBundleVersionsForBundleIDs:dsCopy];

  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKGameService.m", 1220, "+[GKGameServicePrivate loadOnDeviceMultiplayerGamesWithContext:forBundleIDs:clientProxy:handler:]");
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10009BD68;
  v27[3] = &unk_100361F90;
  v28 = v14;
  v29 = proxyCopy;
  v17 = v16;
  v30 = v17;
  v31 = contextCopy;
  v18 = contextCopy;
  v19 = proxyCopy;
  v20 = v14;
  [v17 perform:v27];
  replyQueue = [v19 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009C0EC;
  v24[3] = &unk_100360EB0;
  v25 = v17;
  v26 = handlerCopy;
  v22 = v17;
  v23 = handlerCopy;
  [v22 notifyOnQueue:replyQueue block:v24];
}

- (void)getOnDeviceMultiplayerGamesForBundleIDs:(id)ds handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1258, "[GKGameServicePrivate getOnDeviceMultiplayerGamesForBundleIDs:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  clientProxy = [(GKService *)self clientProxy];
  localPlayer = [(GKService *)self localPlayer];
  playerID = [localPlayer playerID];
  v13 = [clientProxy managedObjectContextForPlayerID:playerID];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10009C3AC;
  v22[3] = &unk_100361BF8;
  v22[4] = self;
  v14 = v13;
  v23 = v14;
  v15 = dsCopy;
  v24 = v15;
  v16 = clientProxy;
  v25 = v16;
  v17 = v9;
  v26 = v17;
  [v17 perform:v22];
  if (handlerCopy)
  {
    replyQueue = [v16 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009C84C;
    v19[3] = &unk_100360EB0;
    v21 = handlerCopy;
    v20 = v17;
    [v20 notifyOnQueue:replyQueue block:v19];
  }
}

- (void)scanInstalledGamesForPlayer:(id)player group:(id)group moc:(id)moc
{
  playerCopy = player;
  groupCopy = group;
  mocCopy = moc;
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009C9EC;
  v17[3] = &unk_100361BF8;
  v17[4] = self;
  v18 = mocCopy;
  v19 = playerCopy;
  v20 = groupCopy;
  v21 = clientProxy;
  v13 = clientProxy;
  v14 = groupCopy;
  v15 = playerCopy;
  v16 = mocCopy;
  [v14 performOnQueue:replyQueue block:v17];
}

- (void)fetchGamesForPlayer:(id)player includeInstalled:(BOOL)installed responseKind:(int)kind context:(id)context handler:(id)handler
{
  playerCopy = player;
  contextCopy = context;
  handlerCopy = handler;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = kind == 2;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1390, "[GKGameServicePrivate fetchGamesForPlayer:includeInstalled:responseKind:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v15 context:contextCopy client:clientProxy];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10009D4B4;
  v29[3] = &unk_100363BB0;
  v18 = playerCopy;
  v30 = v18;
  v33 = v37;
  v34 = v39;
  kindCopy = kind;
  v19 = v17;
  installedCopy = installed;
  v31 = v19;
  selfCopy = self;
  [v19 performOnManagedObjectContext:v29];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009DA98;
  v24[3] = &unk_100362228;
  v22 = handlerCopy;
  v26 = v22;
  v23 = v19;
  v25 = v23;
  v27 = v39;
  v28 = v37;
  [v23 notifyOnQueue:replyQueue block:v24];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
}

- (void)loadGamesForPlayer:(id)player context:(id)context handler:(id)handler
{
  playerCopy = player;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1467, "[GKGameServicePrivate loadGamesForPlayer:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v11 context:contextCopy client:clientProxy];

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  clientProxy2 = [(GKService *)self clientProxy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009DD94;
  v24[3] = &unk_100363D08;
  v15 = playerCopy;
  v25 = v15;
  v16 = v13;
  v26 = v16;
  v17 = clientProxy2;
  v27 = v17;
  selfCopy = self;
  v29 = v30;
  [v16 performOnManagedObjectContext:v24];
  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy3 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10009E9C8;
    v20[3] = &unk_1003618D8;
    v22 = handlerCopy;
    v23 = v30;
    v21 = v16;
    [v21 notifyOnQueue:replyQueue block:v20];
  }

  _Block_object_dispose(v30, 8);
}

- (void)getGamesForPlayer:(id)player includeInstalled:(BOOL)installed handler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  playerID = [playerCopy playerID];
  v12 = [clientProxy managedObjectContextForPlayerID:playerID];

  playerID2 = [playerCopy playerID];

  if (!playerID2)
  {
    v14 = +[GKLocalPlayerInternal internalRepresentation];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10009EDA8;
    v36[3] = &unk_100361770;
    playerCopy = v14;
    v37 = playerCopy;
    [v12 performBlockAndWait:v36];
  }

  objc_initWeak(&location, self);
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1577, "[GKGameServicePrivate getGamesForPlayer:includeInstalled:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10009EE04;
  v28[3] = &unk_100363E20;
  v28[4] = self;
  v19 = playerCopy;
  v29 = v19;
  installedCopy = installed;
  v20 = handlerCopy;
  v32 = v20;
  v21 = v12;
  v30 = v21;
  objc_copyWeak(&v33, &location);
  v22 = v16;
  v31 = v22;
  [v22 performOnQueue:replyQueue block:v28];

  if (v20)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy3 replyQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009F89C;
    v25[3] = &unk_100360EB0;
    v27 = v20;
    v26 = v22;
    [v26 notifyOnQueue:replyQueue2 block:v25];
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)fetchGameStatsForPlayer:(id)player bundleIdentifiers:(id)identifiers responseKind:(int)kind context:(id)context handler:(id)handler
{
  playerCopy = player;
  identifiersCopy = identifiers;
  contextCopy = context;
  handlerCopy = handler;
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1668, "[GKGameServicePrivate fetchGameStatsForPlayer:bundleIdentifiers:responseKind:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v18 = [GKCacheTransactionGroup transactionGroupWithName:v16 context:contextCopy client:clientProxy];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = kind == 2;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10009FBFC;
  v31[3] = &unk_100363E70;
  v37 = [identifiersCopy count];
  v35 = v41;
  v19 = playerCopy;
  v32 = v19;
  v20 = identifiersCopy;
  v33 = v20;
  v36 = v39;
  kindCopy = kind;
  v21 = v18;
  v34 = v21;
  [v21 performOnManagedObjectContext:v31];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10009FF28;
  v26[3] = &unk_100362228;
  v24 = handlerCopy;
  v28 = v24;
  v25 = v21;
  v27 = v25;
  v29 = v39;
  v30 = v41;
  [v25 notifyOnQueue:replyQueue block:v26];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

- (void)loadGameStatsForPlayer:(id)player bundleIdentifiers:(id)identifiers context:(id)context handler:(id)handler
{
  playerCopy = player;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  contextCopy = context;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1723, "[GKGameServicePrivate loadGameStatsForPlayer:bundleIdentifiers:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:contextCopy client:clientProxy];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000A01BC;
  v27[3] = &unk_1003626D8;
  v28 = identifiersCopy;
  v29 = playerCopy;
  v17 = v16;
  v30 = v17;
  selfCopy = self;
  v18 = playerCopy;
  v19 = identifiersCopy;
  [v17 performOnManagedObjectContext:v27];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A0BFC;
  v24[3] = &unk_100360EB0;
  v25 = v17;
  v26 = handlerCopy;
  v22 = v17;
  v23 = handlerCopy;
  [v22 notifyOnQueue:replyQueue block:v24];
}

- (void)getGameStatsForPlayer:(id)player bundleIDs:(id)ds handler:(id)handler
{
  playerCopy = player;
  dsCopy = ds;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1825, "[GKGameServicePrivate getGameStatsForPlayer:bundleIDs:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A0EAC;
  v24[3] = &unk_100364040;
  v15 = v12;
  v25 = v15;
  v16 = playerCopy;
  v26 = v16;
  selfCopy = self;
  v17 = dsCopy;
  v28 = v17;
  v18 = handlerCopy;
  v29 = v18;
  [v15 performOnQueue:replyQueue block:v24];

  if (v18)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A1968;
    v21[3] = &unk_100360EB0;
    v23 = v18;
    v22 = v15;
    [v22 notifyOnQueue:replyQueue2 block:v21];
  }
}

+ (void)_fetchGameMetadataForBundleIDs:(id)ds responseKind:(int)kind context:(id)context clientProxy:(id)proxy handler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  proxyCopy = proxy;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKGameService: fetchGameMetadataForBundleIDs:", buf, 2u);
  }

  *buf = 0;
  v40 = buf;
  v41 = 0x2020000000;
  v42 = kind == 2;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKGameService.m", 1907, "+[GKGameServicePrivate _fetchGameMetadataForBundleIDs:responseKind:context:clientProxy:handler:]");
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000A1CC4;
  v30[3] = &unk_100364090;
  v19 = contextCopy;
  v31 = v19;
  v20 = dsCopy;
  v32 = v20;
  v34 = buf;
  v35 = v37;
  kindCopy = kind;
  v21 = v18;
  v33 = v21;
  [v21 perform:v30];
  replyQueue = [proxyCopy replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000A20B4;
  v25[3] = &unk_100362228;
  v23 = handlerCopy;
  v27 = v23;
  v24 = v21;
  v26 = v24;
  v28 = v37;
  v29 = buf;
  [v24 notifyOnQueue:replyQueue block:v25];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(buf, 8);
}

+ (void)loadGameMetadataForBundleIDs:(id)ds context:(id)context clientProxy:(id)proxy handler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  proxyCopy = proxy;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKGameService: loadGameMetadataForBundleIDs:", buf, 2u);
  }

  *buf = 0;
  v48[0] = buf;
  v48[1] = 0x3032000000;
  v48[2] = sub_1000A25E8;
  v48[3] = sub_1000A25F8;
  v49 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000A2600;
  v43[3] = &unk_100362AB0;
  v15 = contextCopy;
  v44 = v15;
  v16 = dsCopy;
  v45 = v16;
  v46 = buf;
  [v15 performBlockAndWait:v43];
  v17 = [*(v48[0] + 40) count];
  v18 = os_log_GKGeneral;
  if (v17)
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
      v18 = os_log_GKGeneral;
    }

    v20 = v18;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B428(v48, v50, [*(v48[0] + 40) count], v20);
    }

    v21 = +[GKApplicationWorkspace defaultWorkspace];
    v22 = [v21 gameDescriptorsWithInstalledBundleVersionsForBundleIDs:*(v48[0] + 40)];

    v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKGameService.m", 1991, "+[GKGameServicePrivate loadGameMetadataForBundleIDs:context:clientProxy:handler:]");
    v24 = [GKDispatchGroup dispatchGroupWithName:v23];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000A2814;
    v36[3] = &unk_100361F90;
    v25 = v22;
    v37 = v25;
    v26 = proxyCopy;
    v38 = v26;
    v27 = v24;
    v39 = v27;
    v40 = v15;
    [v27 perform:v36];
    replyQueue = [v26 replyQueue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000A2D80;
    v33[3] = &unk_100360EB0;
    v35 = handlerCopy;
    v29 = v27;
    v34 = v29;
    [v29 notifyOnQueue:replyQueue block:v33];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    v31 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "GKGameService: loadGameMetadataForBundleIDs: No bundleIDs to load.", v50, 2u);
    }

    replyQueue2 = [proxyCopy replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A27FC;
    block[3] = &unk_100360FA0;
    v42 = handlerCopy;
    dispatch_async(replyQueue2, block);

    v25 = v42;
  }

  _Block_object_dispose(buf, 8);
}

- (void)readGamesPlayedSummaries:(id)summaries limit:(id)limit withCompletion:(id)completion
{
  summariesCopy = summaries;
  limitCopy = limit;
  completionCopy = completion;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2042, "[GKGameServicePrivate readGamesPlayedSummaries:limit:withCompletion:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A2FEC;
  v23[3] = &unk_100361348;
  v24 = summariesCopy;
  v13 = v12;
  v25 = v13;
  v26 = limitCopy;
  v14 = limitCopy;
  v15 = summariesCopy;
  [v13 performOnManagedObjectContext:v23];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A3148;
  v20[3] = &unk_100360EB0;
  v21 = v13;
  v22 = completionCopy;
  v18 = v13;
  v19 = completionCopy;
  [v18 notifyOnQueue:replyQueue block:v20];
}

- (void)readGameMetadataForBundleIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2068, "[GKGameServicePrivate readGameMetadataForBundleIDs:withCompletion:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A337C;
  v19[3] = &unk_100361708;
  v20 = dsCopy;
  v10 = v9;
  v21 = v10;
  v11 = dsCopy;
  [v10 performOnManagedObjectContext:v19];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A3524;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = completionCopy;
  v14 = v10;
  v15 = completionCopy;
  [v14 notifyOnQueue:replyQueue block:v16];
}

- (void)getGameMetadataForBundleIDs:(id)ds handler:(id)handler
{
  handlerCopy = handler;
  v7 = [(GKGameServicePrivate *)self ineligibleBundleIDsRemovedFromOriginalBundleIDs:ds];
  if ([v7 count])
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];

    Current = CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B60C(Current, uUIDString, v12);
    }

    v13 = os_signpost_id_generate(os_log_GKPerf);
    v14 = os_log_GKPerf;
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GameMetadata", "", buf, 2u);
    }

    metadataSerialQueue = [objc_opt_class() metadataSerialQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A38E8;
    v21[3] = &unk_100364128;
    v21[4] = self;
    v22 = v7;
    v23 = uUIDString;
    v25 = Current;
    v26 = v13;
    v24 = handlerCopy;
    v17 = handlerCopy;
    v18 = uUIDString;
    dispatch_async(metadataSerialQueue, v21);
  }

  else
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A3880;
    block[3] = &unk_100360FA0;
    v29 = handlerCopy;
    v18 = handlerCopy;
    dispatch_async(replyQueue, block);

    v17 = v29;
  }
}

- (void)_getGameMetadataForBundleIDs:(id)ds handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKGameService: getGameMetadataForBundleIDs:", buf, 2u);
  }

  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2154, "[GKGameServicePrivate _getGameMetadataForBundleIDs:handler:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];

  managedObjectContextBypassingMultiUser = [(GKService *)self managedObjectContextBypassingMultiUser];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000A401C;
  v22[3] = &unk_1003641F0;
  v23 = dsCopy;
  v15 = handlerCopy;
  v28 = v15;
  v24 = managedObjectContextBypassingMultiUser;
  selfCopy = self;
  v16 = v11;
  v26 = v16;
  v27 = replyQueue;
  v17 = replyQueue;
  v18 = managedObjectContextBypassingMultiUser;
  v19 = dsCopy;
  [v16 perform:v22];
  if (v15)
  {
    [v16 wait];
    v20 = [v16 objectForKeyedSubscript:@"games"];
    error = [v16 error];
    (*(v15 + 2))(v15, v20, error);
  }
}

- (void)removeGameForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2223, "[GKGameServicePrivate removeGameForBundleID:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  if (dCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A49F4;
    v16[3] = &unk_100360F00;
    v17 = v9;
    selfCopy = self;
    v19 = dCopy;
    [v17 performOnQueue:replyQueue block:v16];
  }

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A4D34;
    v14[3] = &unk_100360FA0;
    v15 = handlerCopy;
    [v9 notifyOnQueue:replyQueue2 block:v14];
  }
}

- (void)fetchInstalledGameIdCacheWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2258, "[GKGameServicePrivate fetchInstalledGameIdCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5 forPlayerID:0];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A4EDC;
  v16[3] = &unk_100362920;
  v7 = v6;
  v17 = v7;
  [v7 performOnManagedObjectContext:v16];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A50A8;
  v12[3] = &unk_100360FC8;
  v13 = v7;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = v7;
  [v11 notifyOnQueue:replyQueue block:v12];
}

- (void)restoreGameIdCacheWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B8CC();
  }

  v6 = +[GKApplicationWorkspace defaultWorkspace];
  v7 = [NSMutableSet alloc];
  availableGameIdentifiers = [v6 availableGameIdentifiers];
  v9 = [v7 initWithArray:availableGameIdentifiers];

  [v9 removeObject:GKWidgetIdentifier];
  allObjects = [v9 allObjects];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A52B0;
  v13[3] = &unk_1003637B0;
  v14 = v9;
  v15 = handlerCopy;
  v11 = v9;
  v12 = handlerCopy;
  [(GKGameService *)self storeGameForBundleIDs:allObjects completion:v13];
}

- (void)clearGlobalGameCacheWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2302, "[GKGameServicePrivate clearGlobalGameCacheWithHandler:]"];
  localPlayer = [(GKService *)self localPlayer];
  playerID = [localPlayer playerID];
  v7 = [(GKService *)self transactionGroupWithName:v4 forPlayerID:playerID];

  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v34[2] = objc_opt_class();
  v34[3] = objc_opt_class();
  [NSArray arrayWithObjects:v34 count:4];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        _gkFetchRequest = [v12 _gkFetchRequest];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000A55E4;
        v25[3] = &unk_100364218;
        v26 = _gkFetchRequest;
        v14 = v7;
        v27 = v14;
        v28 = v12;
        v15 = _gkFetchRequest;
        [v14 performOnManagedObjectContext:v25];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000A578C;
  v22[3] = &unk_100360EB0;
  v23 = v7;
  v24 = handlerCopy;
  v18 = v7;
  v19 = handlerCopy;
  [v18 notifyOnQueue:replyQueue block:v22];
}

- (void)getFriendListAccessForAllGames:(id)games
{
  gamesCopy = games;
  if (gamesCopy)
  {
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2339, "[GKGameServicePrivate getFriendListAccessForAllGames:]"];
    v6 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v5];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A5B70;
    v14[3] = &unk_100364310;
    v14[4] = self;
    v7 = v6;
    v15 = v7;
    v16 = &stru_100364258;
    [v7 performOnManagedObjectContext:v14];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A6464;
    v11[3] = &unk_100361270;
    v12 = v7;
    v13 = gamesCopy;
    v10 = v7;
    [v10 notifyOnQueue:replyQueue block:v11];
  }
}

- (void)createGameActivityWithIdentifier:(id)identifier properties:(id)properties bundleID:(id)d referenceLeaderboardID:(id)iD referenceAchievementDescriptionID:(id)descriptionID completionHandler:(id)handler
{
  handlerCopy = handler;
  descriptionIDCopy = descriptionID;
  iDCopy = iD;
  dCopy = d;
  propertiesCopy = properties;
  identifierCopy = identifier;
  clientProxy = [(GKService *)self clientProxy];
  [clientProxy onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:identifierCopy activityProperties:propertiesCopy bundleID:dCopy referenceLeaderboardID:iDCopy referenceAchievementDescriptionID:descriptionIDCopy];

  handlerCopy[2]();
}

@end
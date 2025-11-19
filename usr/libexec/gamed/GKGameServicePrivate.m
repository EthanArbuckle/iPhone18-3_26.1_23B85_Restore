@interface GKGameServicePrivate
+ (void)_fetchGameMetadataForBundleIDs:(id)a3 responseKind:(int)a4 context:(id)a5 clientProxy:(id)a6 handler:(id)a7;
+ (void)fetchOnDeviceMultiplayerGamesInContext:(id)a3 forBundleIDs:(id)a4 clientProxy:(id)a5 handler:(id)a6;
+ (void)loadGameMetadataForBundleIDs:(id)a3 context:(id)a4 clientProxy:(id)a5 handler:(id)a6;
+ (void)loadOnDeviceMultiplayerGamesWithContext:(id)a3 forBundleIDs:(id)a4 clientProxy:(id)a5 handler:(id)a6;
- (id)cachedGamesPlayed:(id)a3 context:(id)a4;
- (void)_getGameMetadataForBundleIDs:(id)a3 handler:(id)a4;
- (void)clearAppMetadataCacheWithCompletion:(id)a3;
- (void)clearGamesPlayedSummariesCacheForPlayerID:(id)a3;
- (void)clearGlobalGameCacheWithHandler:(id)a3;
- (void)createGameActivityWithIdentifier:(id)a3 properties:(id)a4 bundleID:(id)a5 referenceLeaderboardID:(id)a6 referenceAchievementDescriptionID:(id)a7 completionHandler:(id)a8;
- (void)fetchGameStatsForPlayer:(id)a3 bundleIdentifiers:(id)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7;
- (void)fetchGamesForPlayer:(id)a3 includeInstalled:(BOOL)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7;
- (void)fetchInstalledGameIdCacheWithHandler:(id)a3;
- (void)getAppMetadataForBundleIDs:(id)a3 adamIDs:(id)a4 ttlOption:(int64_t)a5 environment:(int64_t)a6 localDataOnly:(BOOL)a7 withCompletion:(id)a8;
- (void)getAppRecentlyPlayedBiomeDataForBundleIDs:(id)a3 withCompletion:(id)a4;
- (void)getFriendListAccessForAllGames:(id)a3;
- (void)getGameMetadataForBundleIDs:(id)a3 handler:(id)a4;
- (void)getGamePoliciesForBundleIDs:(id)a3 withCompletion:(id)a4;
- (void)getGameStatsForPlayer:(id)a3 bundleIDs:(id)a4 handler:(id)a5;
- (void)getGamesForPlayer:(id)a3 includeInstalled:(BOOL)a4 handler:(id)a5;
- (void)getGamesPlayedMetaData:(id)a3 handler:(id)a4;
- (void)getGamesPlayedSummaries:(id)a3 limit:(id)a4 withinSecs:(id)a5 handler:(id)a6;
- (void)getInstallMetadataForBundleIDs:(id)a3 deleteNonmatchingCachedEntries:(BOOL)a4 withCompletion:(id)a5;
- (void)getOnDeviceMultiplayerGamesForBundleIDs:(id)a3 handler:(id)a4;
- (void)loadGameStatsForPlayer:(id)a3 bundleIdentifiers:(id)a4 context:(id)a5 handler:(id)a6;
- (void)loadGamesForPlayer:(id)a3 context:(id)a4 handler:(id)a5;
- (void)readGameMetadataForBundleIDs:(id)a3 withCompletion:(id)a4;
- (void)readGamesPlayedSummaries:(id)a3 limit:(id)a4 withCompletion:(id)a5;
- (void)refreshInstallMetadataForBundleIDs:(id)a3 deleteNonmatchingBundleIDs:(id)a4 fetcher:(id)a5;
- (void)removeGameForBundleID:(id)a3 handler:(id)a4;
- (void)restoreGameIdCacheWithHandler:(id)a3;
- (void)scanInstalledGamesForPlayer:(id)a3 group:(id)a4 moc:(id)a5;
- (void)submitFriendListAccess:(id)a3 value:(id)a4 handler:(id)a5;
@end

@implementation GKGameServicePrivate

- (id)cachedGamesPlayed:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [NSPredicate predicateWithFormat:@"playerID == %@", a3];
  v7 = +[GamesPlayed _gkFetchRequest];
  [v7 setPredicate:v6];
  v8 = [v5 executeFetchRequest:v7 error:0];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    if ([v8 count] >= 2)
    {
      v10 = 1;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        [v5 deleteObject:v11];

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

- (void)submitFriendListAccess:(id)a3 value:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[GKPlayerGameSettingsNetworkRequest alloc] initWithBundleID:v10 value:v9];

  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = [(GKService *)self clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009725C;
  v15[3] = &unk_1003637B0;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v12 writeToNetwork:v11 clientProxy:v13 handler:v15];
}

- (void)getGamesPlayedMetaData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 665, "[GKGameServicePrivate getGamesPlayedMetaData:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100097708;
  v18[3] = &unk_100363828;
  v10 = v6;
  v19 = v10;
  v11 = v7;
  v22 = v11;
  v12 = v9;
  v20 = v12;
  v21 = self;
  [v12 performOnManagedObjectContext:v18];
  if (v11)
  {
    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009867C;
    v15[3] = &unk_100361270;
    v16 = v12;
    v17 = v11;
    [v16 notifyOnQueue:v14 block:v15];
  }
}

- (void)getGamesPlayedSummaries:(id)a3 limit:(id)a4 withinSecs:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v19 = v10;
  v30 = v19;
  v20 = v18;
  v31 = v20;
  v21 = v12;
  v32 = v21;
  v33 = self;
  v22 = v11;
  v34 = v22;
  [v20 performOnManagedObjectContext:v29];
  if (v13)
  {
    v23 = [(GKService *)self clientProxy];
    v24 = [v23 replyQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100099480;
    v25[3] = &unk_1003638C8;
    v28 = v14;
    v26 = v20;
    v27 = v13;
    [v26 notifyOnQueue:v24 block:v25];
  }
}

- (void)clearGamesPlayedSummariesCacheForPlayerID:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 931, "[GKGameServicePrivate clearGamesPlayedSummariesCacheForPlayerID:]"];
  v6 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009964C;
  v8[3] = &unk_100362920;
  v9 = v4;
  v7 = v4;
  [v6 performOnManagedObjectContext:v8];
}

- (void)getGamePoliciesForBundleIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v13 = [(GKService *)self clientProxy];
  v14 = [v13 taskQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000998CC;
  v25[3] = &unk_100360FF0;
  v26 = v6;
  v15 = v12;
  v27 = v15;
  v16 = v6;
  [v15 performOnQueue:v14 block:v25];

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000999F0;
  v21[3] = &unk_100363918;
  v23 = v7;
  v24 = v8;
  v22 = v15;
  v19 = v15;
  v20 = v7;
  [v19 notifyOnQueue:v18 block:v21];
}

- (void)getInstallMetadataForBundleIDs:(id)a3 deleteNonmatchingCachedEntries:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = os_log_GKPerf;
  v10 = a3;
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

  v16 = [NSSet setWithArray:v10];

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 taskQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100099D48;
  v29[3] = &unk_100361670;
  v29[4] = self;
  v19 = v15;
  v30 = v19;
  v31 = v16;
  v32 = a4;
  v20 = v16;
  [v19 performOnQueue:v18 block:v29];

  v21 = [(GKService *)self clientProxy];
  v22 = [v21 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009A070;
  v25[3] = &unk_1003638C8;
  v27 = v8;
  v28 = v11;
  v26 = v19;
  v23 = v8;
  v24 = v19;
  [v24 notifyOnQueue:v22 block:v25];
}

- (void)refreshInstallMetadataForBundleIDs:(id)a3 deleteNonmatchingBundleIDs:(id)a4 fetcher:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1017, "[GKGameServicePrivate refreshInstallMetadataForBundleIDs:deleteNonmatchingBundleIDs:fetcher:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009A360;
  v18[3] = &unk_100360F00;
  v13 = v10;
  v19 = v13;
  v14 = v8;
  v20 = v14;
  v21 = self;
  [v12 perform:v18];
  if ([v9 count])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009A4C0;
    v15[3] = &unk_100360FF0;
    v16 = v13;
    v17 = v9;
    [v12 perform:v15];
  }
}

- (void)getAppMetadataForBundleIDs:(id)a3 adamIDs:(id)a4 ttlOption:(int64_t)a5 environment:(int64_t)a6 localDataOnly:(BOOL)a7 withCompletion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = os_signpost_id_generate(os_log_GKPerf);
  if (a6)
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
  v22 = v15;
  v37 = v13;
  v38 = v14;
  v40 = v22;
  v41 = a6;
  v43 = a7;
  v42 = a5;
  v23 = v21;
  v39 = v23;
  v24 = v14;
  v25 = v13;
  [v23 perform:v36];
  v26 = [(GKService *)self clientProxy];
  v27 = [v26 replyQueue];
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
  [v28 notifyOnQueue:v27 block:v31];
}

- (void)getAppRecentlyPlayedBiomeDataForBundleIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v13 = [(GKService *)self clientProxy];
  v14 = [v13 taskQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009B144;
  v25[3] = &unk_100360FF0;
  v15 = v12;
  v26 = v15;
  v27 = v6;
  v16 = v6;
  [v15 performOnQueue:v14 block:v25];

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009B1D8;
  v21[3] = &unk_100363918;
  v23 = v7;
  v24 = v8;
  v22 = v15;
  v19 = v15;
  v20 = v7;
  [v19 notifyOnQueue:v18 block:v21];
}

- (void)clearAppMetadataCacheWithCompletion:(id)a3
{
  v4 = a3;
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
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009B600;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

+ (void)fetchOnDeviceMultiplayerGamesInContext:(id)a3 forBundleIDs:(id)a4 clientProxy:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009B7C4;
  v20[3] = &unk_1003625E8;
  v21 = a5;
  v22 = a6;
  v11 = v22;
  v12 = v21;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009B8E4;
  v16[3] = &unk_100361068;
  v18 = v10;
  v19 = objc_retainBlock(v20);
  v17 = v9;
  v13 = v10;
  v14 = v19;
  v15 = v9;
  [v15 performBlock:v16];
}

+ (void)loadOnDeviceMultiplayerGamesWithContext:(id)a3 forBundleIDs:(id)a4 clientProxy:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = +[GKApplicationWorkspace defaultWorkspace];
  v14 = [v13 gameDescriptorsWithInstalledBundleVersionsForBundleIDs:v12];

  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKGameService.m", 1220, "+[GKGameServicePrivate loadOnDeviceMultiplayerGamesWithContext:forBundleIDs:clientProxy:handler:]");
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10009BD68;
  v27[3] = &unk_100361F90;
  v28 = v14;
  v29 = v10;
  v17 = v16;
  v30 = v17;
  v31 = v9;
  v18 = v9;
  v19 = v10;
  v20 = v14;
  [v17 perform:v27];
  v21 = [v19 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009C0EC;
  v24[3] = &unk_100360EB0;
  v25 = v17;
  v26 = v11;
  v22 = v17;
  v23 = v11;
  [v22 notifyOnQueue:v21 block:v24];
}

- (void)getOnDeviceMultiplayerGamesForBundleIDs:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1258, "[GKGameServicePrivate getOnDeviceMultiplayerGamesForBundleIDs:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = [(GKService *)self clientProxy];
  v11 = [(GKService *)self localPlayer];
  v12 = [v11 playerID];
  v13 = [v10 managedObjectContextForPlayerID:v12];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10009C3AC;
  v22[3] = &unk_100361BF8;
  v22[4] = self;
  v14 = v13;
  v23 = v14;
  v15 = v6;
  v24 = v15;
  v16 = v10;
  v25 = v16;
  v17 = v9;
  v26 = v17;
  [v17 perform:v22];
  if (v7)
  {
    v18 = [v16 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009C84C;
    v19[3] = &unk_100360EB0;
    v21 = v7;
    v20 = v17;
    [v20 notifyOnQueue:v18 block:v19];
  }
}

- (void)scanInstalledGamesForPlayer:(id)a3 group:(id)a4 moc:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKService *)self clientProxy];
  v12 = [v11 replyQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009C9EC;
  v17[3] = &unk_100361BF8;
  v17[4] = self;
  v18 = v10;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  v16 = v10;
  [v14 performOnQueue:v12 block:v17];
}

- (void)fetchGamesForPlayer:(id)a3 includeInstalled:(BOOL)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = a5 == 2;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1390, "[GKGameServicePrivate fetchGamesForPlayer:includeInstalled:responseKind:context:handler:]"];
  v16 = [(GKService *)self clientProxy];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v15 context:v13 client:v16];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10009D4B4;
  v29[3] = &unk_100363BB0;
  v18 = v12;
  v30 = v18;
  v33 = v37;
  v34 = v39;
  v35 = a5;
  v19 = v17;
  v36 = a4;
  v31 = v19;
  v32 = self;
  [v19 performOnManagedObjectContext:v29];
  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009DA98;
  v24[3] = &unk_100362228;
  v22 = v14;
  v26 = v22;
  v23 = v19;
  v25 = v23;
  v27 = v39;
  v28 = v37;
  [v23 notifyOnQueue:v21 block:v24];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
}

- (void)loadGamesForPlayer:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1467, "[GKGameServicePrivate loadGamesForPlayer:context:handler:]"];
  v12 = [(GKService *)self clientProxy];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v11 context:v9 client:v12];

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v14 = [(GKService *)self clientProxy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009DD94;
  v24[3] = &unk_100363D08;
  v15 = v8;
  v25 = v15;
  v16 = v13;
  v26 = v16;
  v17 = v14;
  v27 = v17;
  v28 = self;
  v29 = v30;
  [v16 performOnManagedObjectContext:v24];
  if (v10)
  {
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10009E9C8;
    v20[3] = &unk_1003618D8;
    v22 = v10;
    v23 = v30;
    v21 = v16;
    [v21 notifyOnQueue:v19 block:v20];
  }

  _Block_object_dispose(v30, 8);
}

- (void)getGamesForPlayer:(id)a3 includeInstalled:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(GKService *)self clientProxy];
  v11 = [v8 playerID];
  v12 = [v10 managedObjectContextForPlayerID:v11];

  v13 = [v8 playerID];

  if (!v13)
  {
    v14 = +[GKLocalPlayerInternal internalRepresentation];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10009EDA8;
    v36[3] = &unk_100361770;
    v8 = v14;
    v37 = v8;
    [v12 performBlockAndWait:v36];
  }

  objc_initWeak(&location, self);
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1577, "[GKGameServicePrivate getGamesForPlayer:includeInstalled:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10009EE04;
  v28[3] = &unk_100363E20;
  v28[4] = self;
  v19 = v8;
  v29 = v19;
  v34 = a4;
  v20 = v9;
  v32 = v20;
  v21 = v12;
  v30 = v21;
  objc_copyWeak(&v33, &location);
  v22 = v16;
  v31 = v22;
  [v22 performOnQueue:v18 block:v28];

  if (v20)
  {
    v23 = [(GKService *)self clientProxy];
    v24 = [v23 replyQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009F89C;
    v25[3] = &unk_100360EB0;
    v27 = v20;
    v26 = v22;
    [v26 notifyOnQueue:v24 block:v25];
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)fetchGameStatsForPlayer:(id)a3 bundleIdentifiers:(id)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1668, "[GKGameServicePrivate fetchGameStatsForPlayer:bundleIdentifiers:responseKind:context:handler:]"];
  v17 = [(GKService *)self clientProxy];
  v18 = [GKCacheTransactionGroup transactionGroupWithName:v16 context:v14 client:v17];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = a5 == 2;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10009FBFC;
  v31[3] = &unk_100363E70;
  v37 = [v13 count];
  v35 = v41;
  v19 = v12;
  v32 = v19;
  v20 = v13;
  v33 = v20;
  v36 = v39;
  v38 = a5;
  v21 = v18;
  v34 = v21;
  [v21 performOnManagedObjectContext:v31];
  v22 = [(GKService *)self clientProxy];
  v23 = [v22 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10009FF28;
  v26[3] = &unk_100362228;
  v24 = v15;
  v28 = v24;
  v25 = v21;
  v27 = v25;
  v29 = v39;
  v30 = v41;
  [v25 notifyOnQueue:v23 block:v26];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

- (void)loadGameStatsForPlayer:(id)a3 bundleIdentifiers:(id)a4 context:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1723, "[GKGameServicePrivate loadGameStatsForPlayer:bundleIdentifiers:context:handler:]"];
  v15 = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:v13 client:v15];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000A01BC;
  v27[3] = &unk_1003626D8;
  v28 = v11;
  v29 = v10;
  v17 = v16;
  v30 = v17;
  v31 = self;
  v18 = v10;
  v19 = v11;
  [v17 performOnManagedObjectContext:v27];
  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A0BFC;
  v24[3] = &unk_100360EB0;
  v25 = v17;
  v26 = v12;
  v22 = v17;
  v23 = v12;
  [v22 notifyOnQueue:v21 block:v24];
}

- (void)getGameStatsForPlayer:(id)a3 bundleIDs:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1825, "[GKGameServicePrivate getGameStatsForPlayer:bundleIDs:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A0EAC;
  v24[3] = &unk_100364040;
  v15 = v12;
  v25 = v15;
  v16 = v8;
  v26 = v16;
  v27 = self;
  v17 = v9;
  v28 = v17;
  v18 = v10;
  v29 = v18;
  [v15 performOnQueue:v14 block:v24];

  if (v18)
  {
    v19 = [(GKService *)self clientProxy];
    v20 = [v19 replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A1968;
    v21[3] = &unk_100360EB0;
    v23 = v18;
    v22 = v15;
    [v22 notifyOnQueue:v20 block:v21];
  }
}

+ (void)_fetchGameMetadataForBundleIDs:(id)a3 responseKind:(int)a4 context:(id)a5 clientProxy:(id)a6 handler:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
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
  v42 = a4 == 2;
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
  v19 = v12;
  v31 = v19;
  v20 = v11;
  v32 = v20;
  v34 = buf;
  v35 = v37;
  v36 = a4;
  v21 = v18;
  v33 = v21;
  [v21 perform:v30];
  v22 = [v13 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000A20B4;
  v25[3] = &unk_100362228;
  v23 = v14;
  v27 = v23;
  v24 = v21;
  v26 = v24;
  v28 = v37;
  v29 = buf;
  [v24 notifyOnQueue:v22 block:v25];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(buf, 8);
}

+ (void)loadGameMetadataForBundleIDs:(id)a3 context:(id)a4 clientProxy:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
  v15 = v10;
  v44 = v15;
  v16 = v9;
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
    v26 = v11;
    v38 = v26;
    v27 = v24;
    v39 = v27;
    v40 = v15;
    [v27 perform:v36];
    v28 = [v26 replyQueue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000A2D80;
    v33[3] = &unk_100360EB0;
    v35 = v12;
    v29 = v27;
    v34 = v29;
    [v29 notifyOnQueue:v28 block:v33];
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

    v32 = [v11 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A27FC;
    block[3] = &unk_100360FA0;
    v42 = v12;
    dispatch_async(v32, block);

    v25 = v42;
  }

  _Block_object_dispose(buf, 8);
}

- (void)readGamesPlayedSummaries:(id)a3 limit:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2042, "[GKGameServicePrivate readGamesPlayedSummaries:limit:withCompletion:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A2FEC;
  v23[3] = &unk_100361348;
  v24 = v8;
  v13 = v12;
  v25 = v13;
  v26 = v9;
  v14 = v9;
  v15 = v8;
  [v13 performOnManagedObjectContext:v23];
  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A3148;
  v20[3] = &unk_100360EB0;
  v21 = v13;
  v22 = v10;
  v18 = v13;
  v19 = v10;
  [v18 notifyOnQueue:v17 block:v20];
}

- (void)readGameMetadataForBundleIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2068, "[GKGameServicePrivate readGameMetadataForBundleIDs:withCompletion:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A337C;
  v19[3] = &unk_100361708;
  v20 = v6;
  v10 = v9;
  v21 = v10;
  v11 = v6;
  [v10 performOnManagedObjectContext:v19];
  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A3524;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = v7;
  v14 = v10;
  v15 = v7;
  [v14 notifyOnQueue:v13 block:v16];
}

- (void)getGameMetadataForBundleIDs:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [(GKGameServicePrivate *)self ineligibleBundleIDsRemovedFromOriginalBundleIDs:a3];
  if ([v7 count])
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];

    Current = CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B60C(Current, v9, v12);
    }

    v13 = os_signpost_id_generate(os_log_GKPerf);
    v14 = os_log_GKPerf;
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GameMetadata", "", buf, 2u);
    }

    v16 = [objc_opt_class() metadataSerialQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A38E8;
    v21[3] = &unk_100364128;
    v21[4] = self;
    v22 = v7;
    v23 = v9;
    v25 = Current;
    v26 = v13;
    v24 = v6;
    v17 = v6;
    v18 = v9;
    dispatch_async(v16, v21);
  }

  else
  {
    v19 = [(GKService *)self clientProxy];
    v20 = [v19 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A3880;
    block[3] = &unk_100360FA0;
    v29 = v6;
    v18 = v6;
    dispatch_async(v20, block);

    v17 = v29;
  }
}

- (void)_getGameMetadataForBundleIDs:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];

  v14 = [(GKService *)self managedObjectContextBypassingMultiUser];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000A401C;
  v22[3] = &unk_1003641F0;
  v23 = v6;
  v15 = v7;
  v28 = v15;
  v24 = v14;
  v25 = self;
  v16 = v11;
  v26 = v16;
  v27 = v13;
  v17 = v13;
  v18 = v14;
  v19 = v6;
  [v16 perform:v22];
  if (v15)
  {
    [v16 wait];
    v20 = [v16 objectForKeyedSubscript:@"games"];
    v21 = [v16 error];
    (*(v15 + 2))(v15, v20, v21);
  }
}

- (void)removeGameForBundleID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2223, "[GKGameServicePrivate removeGameForBundleID:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  if (v6)
  {
    v10 = [(GKService *)self clientProxy];
    v11 = [v10 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A49F4;
    v16[3] = &unk_100360F00;
    v17 = v9;
    v18 = self;
    v19 = v6;
    [v17 performOnQueue:v11 block:v16];
  }

  if (v7)
  {
    v12 = [(GKService *)self clientProxy];
    v13 = [v12 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A4D34;
    v14[3] = &unk_100360FA0;
    v15 = v7;
    [v9 notifyOnQueue:v13 block:v14];
  }
}

- (void)fetchInstalledGameIdCacheWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2258, "[GKGameServicePrivate fetchInstalledGameIdCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5 forPlayerID:0];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A4EDC;
  v16[3] = &unk_100362920;
  v7 = v6;
  v17 = v7;
  [v7 performOnManagedObjectContext:v16];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A50A8;
  v12[3] = &unk_100360FC8;
  v13 = v7;
  v14 = self;
  v15 = v4;
  v10 = v4;
  v11 = v7;
  [v11 notifyOnQueue:v9 block:v12];
}

- (void)restoreGameIdCacheWithHandler:(id)a3
{
  v4 = a3;
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
  v8 = [v6 availableGameIdentifiers];
  v9 = [v7 initWithArray:v8];

  [v9 removeObject:GKWidgetIdentifier];
  v10 = [v9 allObjects];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A52B0;
  v13[3] = &unk_1003637B0;
  v14 = v9;
  v15 = v4;
  v11 = v9;
  v12 = v4;
  [(GKGameService *)self storeGameForBundleIDs:v10 completion:v13];
}

- (void)clearGlobalGameCacheWithHandler:(id)a3
{
  v20 = a3;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2302, "[GKGameServicePrivate clearGlobalGameCacheWithHandler:]"];
  v5 = [(GKService *)self localPlayer];
  v6 = [v5 playerID];
  v7 = [(GKService *)self transactionGroupWithName:v4 forPlayerID:v6];

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
        v13 = [v12 _gkFetchRequest];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000A55E4;
        v25[3] = &unk_100364218;
        v26 = v13;
        v14 = v7;
        v27 = v14;
        v28 = v12;
        v15 = v13;
        [v14 performOnManagedObjectContext:v25];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000A578C;
  v22[3] = &unk_100360EB0;
  v23 = v7;
  v24 = v20;
  v18 = v7;
  v19 = v20;
  [v18 notifyOnQueue:v17 block:v22];
}

- (void)getFriendListAccessForAllGames:(id)a3
{
  v4 = a3;
  if (v4)
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
    v8 = [(GKService *)self clientProxy];
    v9 = [v8 replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A6464;
    v11[3] = &unk_100361270;
    v12 = v7;
    v13 = v4;
    v10 = v7;
    [v10 notifyOnQueue:v9 block:v11];
  }
}

- (void)createGameActivityWithIdentifier:(id)a3 properties:(id)a4 bundleID:(id)a5 referenceLeaderboardID:(id)a6 referenceAchievementDescriptionID:(id)a7 completionHandler:(id)a8
{
  v20 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(GKService *)self clientProxy];
  [v19 onGameActivityReferralDeepLinkOpenedWithActivityIdentifier:v18 activityProperties:v17 bundleID:v16 referenceLeaderboardID:v15 referenceAchievementDescriptionID:v14];

  v20[2]();
}

@end
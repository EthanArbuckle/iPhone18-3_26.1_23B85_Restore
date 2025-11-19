@interface GKProfileService
+ (id)computePlayerIDsToLoadWithPlayerIDs:(id)a3 pieces:(unsigned __int8)a4 context:(id)a5;
+ (id)profileRequestForPlayerIDs:(id)a3 pieces:(unsigned __int8)a4;
+ (id)profileSerialQueue;
+ (void)storeProfilesWithServerResults:(id)a3 playerIDs:(id)a4 pieces:(unsigned __int8)a5 expirationDate:(id)a6 context:(id)a7;
- (void)_fetchProfilesForPlayerIDs:(id)a3 familiarity:(int)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7;
- (void)_getProfilesForPlayerIDs:(id)a3 discardingStaleData:(BOOL)a4 familiarity:(int)a5 context:(id)a6 handler:(id)a7;
- (void)_getProfilesForPlayerIDs:(id)a3 discardingStaleData:(BOOL)a4 handler:(id)a5;
- (void)_loadProfilesForPlayerIDs:(id)a3 familiarity:(int)a4 responseComplete:(BOOL)a5 context:(id)a6 handler:(id)a7;
- (void)_loadProfilesForPlayerIDs:(id)a3 pieces:(unsigned __int8)a4 context:(id)a5 handler:(id)a6;
- (void)getFriendSupportPageURLWithHandler:(id)a3;
- (void)getOcelotStateForCurrentAppWithHandler:(id)a3;
- (void)getProfilesForPlayerIDs:(id)a3 discardingStaleData:(BOOL)a4 handler:(id)a5;
- (void)loadScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 handler:(id)a5;
- (void)setOcelotStateForCurrentApp;
- (void)updateChallengedGames:(id)a3 forPlayers:(id)a4 group:(id)a5;
- (void)updateGames:(id)a3 forPlayers:(id)a4 group:(id)a5 updater:(id)a6;
- (void)updateLastPlayedGames:(id)a3 forPlayers:(id)a4 group:(id)a5;
@end

@implementation GKProfileService

+ (id)profileRequestForPlayerIDs:(id)a3 pieces:(unsigned __int8)a4
{
  v10 = @"player-ids";
  v11 = a3;
  v5 = a3;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-details"];
  if ((a4 & 8) == 0)
  {
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-stats"];
    if ((a4 & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-emails"];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-emails-hashed"];
  if ((a4 & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a4 & 0x80) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"check-friend-invitation-ability"];
LABEL_4:
  v8 = [v7 copy];

  return v8;
}

- (void)updateGames:(id)a3 forPlayers:(id)a4 group:(id)a5 updater:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100074614;
  v23[3] = &unk_1003620B0;
  v15 = v10;
  v24 = v15;
  v16 = v14;
  v25 = v16;
  v17 = v11;
  v26 = v17;
  [v17 enumerateObjectsUsingBlock:v23];
  v18 = [v16 allKeys];
  if ([v18 count])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000746D8;
    v19[3] = &unk_100362150;
    v19[4] = self;
    v20 = v18;
    v21 = v16;
    v22 = v13;
    [v12 perform:v19];
  }
}

- (void)updateLastPlayedGames:(id)a3 forPlayers:(id)a4 group:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKProfileService: updateLastPlayedGames:", v13, 2u);
  }

  [(GKProfileService *)self updateGames:v8 forPlayers:v9 group:v10 updater:&stru_100362190];
}

- (void)updateChallengedGames:(id)a3 forPlayers:(id)a4 group:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKProfileService: updateChallengedGames:", v13, 2u);
  }

  [(GKProfileService *)self updateGames:v8 forPlayers:v9 group:v10 updater:&stru_1003621B0];
}

- (void)_fetchProfilesForPlayerIDs:(id)a3 familiarity:(int)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v32 = a6;
  v31 = a7;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKProfileService: fetchProfilesForPlayerIDs", buf, 2u);
  }

  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 248, "[GKProfileService _fetchProfilesForPlayerIDs:familiarity:responseKind:context:handler:]"];
  v16 = [(GKService *)self clientProxy];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v15 context:v32 client:v16];

  *buf = 0;
  v54 = buf;
  v55 = 0x2020000000;
  v56 = a5 == 2;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  if (v10 > 2)
  {
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    v18 = objc_opt_class();
    v19 = 0;
    goto LABEL_12;
  }

  if (v10 != 2)
  {
LABEL_13:
    v18 = objc_opt_class();
    v19 = 0;
    v20 = 0;
    goto LABEL_14;
  }

  v18 = objc_opt_class();
  v19 = 1;
LABEL_12:
  v20 = 1;
LABEL_14:
  v21 = [GKPlayerProfileCacheObject piecesToLoadForFamiliarity:v10];
  v22 = [NSMutableSet setWithArray:v12];
  [v22 removeObject:GKAnonymousPlayerID];
  [v22 removeObject:GKUnknownPlayerID];
  [v22 allObjects];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100074F68;
  v23 = v38[3] = &unk_100362200;
  v39 = v23;
  v44 = buf;
  v48 = v21;
  v45 = v51;
  v47 = a5;
  v24 = v22;
  v40 = v24;
  v49 = v20;
  v50 = v19;
  v25 = v17;
  v41 = v25;
  v26 = v12;
  v46 = v18;
  v42 = v26;
  v43 = self;
  [v25 performOnManagedObjectContext:v38];
  v27 = [(GKService *)self clientProxy];
  v28 = [v27 replyQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000755B4;
  v33[3] = &unk_100362228;
  v29 = v31;
  v35 = v29;
  v30 = v25;
  v34 = v30;
  v36 = v51;
  v37 = buf;
  [v30 notifyOnQueue:v28 block:v33];

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_loadProfilesForPlayerIDs:(id)a3 pieces:(unsigned __int8)a4 context:(id)a5 handler:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [objc_opt_class() computePlayerIDsToLoadWithPlayerIDs:v12 pieces:v7 context:v10];

  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 423, "[GKProfileService _loadProfilesForPlayerIDs:pieces:context:handler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100075844;
  v25[3] = &unk_1003622A0;
  v26 = v13;
  v31 = v7;
  v16 = v15;
  v27 = v16;
  v28 = self;
  v29 = v10;
  v30 = v11;
  v17 = v10;
  v18 = v11;
  v19 = v13;
  [v16 perform:v25];
  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100075EDC;
  v23[3] = &unk_100361770;
  v24 = v16;
  v22 = v16;
  [v22 notifyOnQueue:v21 block:v23];
}

+ (id)computePlayerIDsToLoadWithPlayerIDs:(id)a3 pieces:(unsigned __int8)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [NSMutableSet setWithArray:v7];
  [v9 removeObject:GKAnonymousPlayerID];
  [v9 removeObject:GKUnknownPlayerID];
  [v9 _gkMapWithBlock:&stru_1003622E0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10007632C;
  v25 = sub_10007633C;
  v26 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100076344;
  v10 = v15[3] = &unk_100362370;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v12 = v8;
  v20 = a4;
  v18 = v12;
  v19 = &v21;
  [v12 performBlockAndWait:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

+ (void)storeProfilesWithServerResults:(id)a3 playerIDs:(id)a4 pieces:(unsigned __int8)a5 expirationDate:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007665C;
  v18[3] = &unk_1003623C0;
  v19 = v12;
  v20 = a7;
  v21 = v11;
  v22 = v13;
  v23 = a5;
  v14 = v13;
  v15 = v11;
  v16 = v20;
  v17 = v12;
  [v16 performBlockAndWait:v18];
}

- (void)setOcelotStateForCurrentApp
{
  v4 = [(GKService *)self clientProxy];
  v2 = [v4 bundleIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:v2];

  [v4 setIsOcelot:{objc_msgSend(v3, "isArcadeApp")}];
}

- (void)getOcelotStateForCurrentAppWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(GKService *)self clientProxy];
  (*(a3 + 2))(v5, [v6 isOcelot]);
}

+ (id)profileSerialQueue
{
  if (qword_1003B9108 != -1)
  {
    sub_100288D3C();
  }

  v3 = qword_1003B9100;

  return v3;
}

- (void)getProfilesForPlayerIDs:(id)a3 discardingStaleData:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];

    Current = CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      sub_100288D50(Current, v11, v14);
    }

    v15 = [objc_opt_class() profileSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076C7C;
    block[3] = &unk_100362430;
    block[4] = self;
    v25 = a4;
    v21 = v8;
    v22 = v11;
    v24 = Current;
    v23 = v9;
    v16 = v9;
    v17 = v11;
    dispatch_async(v15, block);
  }

  else
  {
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100076C60;
    v26[3] = &unk_100360FA0;
    v27 = v9;
    v17 = v9;
    dispatch_async(v19, v26);

    v16 = v27;
  }
}

- (void)_getProfilesForPlayerIDs:(id)a3 discardingStaleData:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v54 = a5;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKProfileService: getProfilesForPlayerIDs", buf, 2u);
  }

  v11 = dispatch_queue_create("com.apple.gamed.getProfiles.results", 0);
  v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v13 = [(GKService *)self credential];
  if (!v13)
  {
    v14 = +[GKPlayerCredentialController sharedController];
    v15 = [(GKService *)self clientProxy];
    v13 = [v14 primaryCredentialForEnvironment:{objc_msgSend(v15, "environment")}];
  }

  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 724, "[GKProfileService _getProfilesForPlayerIDs:discardingStaleData:handler:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100077838;
  v76[3] = &unk_100362480;
  queue = v11;
  v77 = queue;
  v53 = v12;
  v78 = v53;
  v18 = objc_retainBlock(v76);
  objc_initWeak(&location, self);
  v19 = [(GKService *)self clientProxy];
  v20 = [v13 playerInternal];
  v21 = [v20 playerID];
  v22 = [v19 managedObjectContextForPlayerID:v21];

  v23 = [(GKService *)self clientProxy];
  v24 = [v23 taskQueue];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000779DC;
  v68[3] = &unk_100362520;
  objc_copyWeak(&v73, &location);
  v51 = v22;
  v69 = v51;
  v25 = v8;
  v70 = v25;
  v26 = v17;
  v71 = v26;
  v74 = a4;
  v27 = v18;
  v72 = v27;
  [v26 performOnQueue:v24 block:v68];

  v28 = [(GKService *)self clientProxy];
  v29 = [v28 replyQueue];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100077ED4;
  v65[3] = &unk_1003610B8;
  v30 = v26;
  v66 = v30;
  v67 = self;
  [v30 notifyOnQueue:v29 block:v65];

  if (v54)
  {
    v31 = [(GKService *)self clientProxy];
    v32 = [v31 bundleIdentifier];

    if (v32)
    {
      v33 = [(GKService *)self clientProxy];
      v34 = [v33 taskQueue];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100077F3C;
      v60[3] = &unk_100362548;
      objc_copyWeak(&v64, &location);
      v61 = v25;
      v62 = v32;
      v63 = v30;
      [v63 performOnQueue:v34 block:v60];

      objc_destroyWeak(&v64);
    }

    else
    {
      v35 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v36 = GKOSLoggers();
        v35 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_100288F78();
      }
    }

    [v30 wait];
    v37 = [v30 objectForKeyedSubscript:@"playerIDtoScopedIDs"];
    v38 = v37;
    v39 = &__NSDictionary0__struct;
    if (v37)
    {
      v39 = v37;
    }

    v40 = v39;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100078184;
    block[3] = &unk_100362008;
    v41 = v30;
    v56 = v41;
    v57 = v25;
    v58 = v53;
    v42 = v40;
    v59 = v42;
    dispatch_sync(queue, block);
    v43 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v44 = GKOSLoggers();
      v43 = os_log_GKGeneral;
    }

    v45 = v43;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v50 = [v41 error];
      v48 = [(GKService *)self localPlayer];
      v49 = [v48 alias];
      *buf = 138412546;
      v80 = v50;
      v81 = 2112;
      v82 = v49;
      _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "ScopedIDs fetched/loaded with error: %@ by localPlayer %@", buf, 0x16u);
    }

    v46 = [v41 result];
    v47 = [v41 error];
    v54[2](v54, v46, v47);
  }

  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (void)_getProfilesForPlayerIDs:(id)a3 discardingStaleData:(BOOL)a4 familiarity:(int)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 844, "[GKProfileService _getProfilesForPlayerIDs:discardingStaleData:familiarity:context:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  objc_initWeak(&location, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100078528;
  v28[3] = &unk_1003625C0;
  v28[4] = self;
  v17 = v12;
  v29 = v17;
  v34 = a5;
  v18 = v14;
  v32 = v18;
  v19 = v13;
  v30 = v19;
  v20 = v16;
  v31 = v20;
  objc_copyWeak(&v33, &location);
  v35 = a4;
  [v20 perform:v28];
  v21 = [(GKService *)self clientProxy];
  v22 = [v21 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000788A0;
  v25[3] = &unk_100360EB0;
  v23 = v18;
  v27 = v23;
  v24 = v20;
  v26 = v24;
  [v24 notifyOnQueue:v22 block:v25];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_loadProfilesForPlayerIDs:(id)a3 familiarity:(int)a4 responseComplete:(BOOL)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 933, "[GKProfileService _loadProfilesForPlayerIDs:familiarity:responseComplete:context:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  objc_initWeak(location, self);
  v17 = [(GKService *)self clientProxy];
  v18 = [v17 taskQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100078BC4;
  v32[3] = &unk_100362688;
  objc_copyWeak(&v37, location);
  v38 = a4;
  v19 = v12;
  v33 = v19;
  v20 = v13;
  v34 = v20;
  v21 = v16;
  v35 = v21;
  v22 = v14;
  v36 = v22;
  v39 = a5;
  [v21 performOnQueue:v18 block:v32];

  v23 = [(GKService *)self clientProxy];
  v24 = [v23 replyQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100079278;
  v28[3] = &unk_100360FC8;
  v25 = v20;
  v29 = v25;
  v26 = v21;
  v30 = v26;
  v27 = v22;
  v31 = v27;
  [v26 notifyOnQueue:v24 block:v28];

  objc_destroyWeak(&v37);
  objc_destroyWeak(location);
}

- (void)getFriendSupportPageURLWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1014, "[GKProfileService getFriendSupportPageURLWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v7 = [(GKService *)self transport];
  v8 = [v7 storeBag];

  if (v8)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000794FC;
    v16[3] = &unk_100360F00;
    v17 = v8;
    v18 = self;
    v19 = v6;
    [v19 perform:v16];
  }

  v9 = [(GKService *)self clientProxy];
  v10 = [v9 replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100079724;
  v13[3] = &unk_100360EB0;
  v14 = v6;
  v15 = v4;
  v11 = v6;
  v12 = v4;
  [v11 notifyOnQueue:v10 block:v13];
}

- (void)loadScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007988C;
  v13[3] = &unk_1003626B0;
  v14 = v8;
  v12 = v8;
  [v11 loadScopedPlayerIDs:v10 gameBundleIDs:v9 handler:v13];
}

@end
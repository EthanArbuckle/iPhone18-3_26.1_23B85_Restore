@interface GKProfileService
+ (id)computePlayerIDsToLoadWithPlayerIDs:(id)ds pieces:(unsigned __int8)pieces context:(id)context;
+ (id)profileRequestForPlayerIDs:(id)ds pieces:(unsigned __int8)pieces;
+ (id)profileSerialQueue;
+ (void)storeProfilesWithServerResults:(id)results playerIDs:(id)ds pieces:(unsigned __int8)pieces expirationDate:(id)date context:(id)context;
- (void)_fetchProfilesForPlayerIDs:(id)ds familiarity:(int)familiarity responseKind:(int)kind context:(id)context handler:(id)handler;
- (void)_getProfilesForPlayerIDs:(id)ds discardingStaleData:(BOOL)data familiarity:(int)familiarity context:(id)context handler:(id)handler;
- (void)_getProfilesForPlayerIDs:(id)ds discardingStaleData:(BOOL)data handler:(id)handler;
- (void)_loadProfilesForPlayerIDs:(id)ds familiarity:(int)familiarity responseComplete:(BOOL)complete context:(id)context handler:(id)handler;
- (void)_loadProfilesForPlayerIDs:(id)ds pieces:(unsigned __int8)pieces context:(id)context handler:(id)handler;
- (void)getFriendSupportPageURLWithHandler:(id)handler;
- (void)getOcelotStateForCurrentAppWithHandler:(id)handler;
- (void)getProfilesForPlayerIDs:(id)ds discardingStaleData:(BOOL)data handler:(id)handler;
- (void)loadScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs handler:(id)handler;
- (void)setOcelotStateForCurrentApp;
- (void)updateChallengedGames:(id)games forPlayers:(id)players group:(id)group;
- (void)updateGames:(id)games forPlayers:(id)players group:(id)group updater:(id)updater;
- (void)updateLastPlayedGames:(id)games forPlayers:(id)players group:(id)group;
@end

@implementation GKProfileService

+ (id)profileRequestForPlayerIDs:(id)ds pieces:(unsigned __int8)pieces
{
  v10 = @"player-ids";
  dsCopy = ds;
  dsCopy2 = ds;
  v6 = [NSDictionary dictionaryWithObjects:&dsCopy forKeys:&v10 count:1];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-details"];
  if ((pieces & 8) == 0)
  {
    if ((pieces & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-stats"];
    if ((pieces & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-emails"];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"show-emails-hashed"];
  if ((pieces & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((pieces & 0x80) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"check-friend-invitation-ability"];
LABEL_4:
  v8 = [v7 copy];

  return v8;
}

- (void)updateGames:(id)games forPlayers:(id)players group:(id)group updater:(id)updater
{
  gamesCopy = games;
  playersCopy = players;
  groupCopy = group;
  updaterCopy = updater;
  v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [playersCopy count]);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100074614;
  v23[3] = &unk_1003620B0;
  v15 = gamesCopy;
  v24 = v15;
  v16 = v14;
  v25 = v16;
  v17 = playersCopy;
  v26 = v17;
  [v17 enumerateObjectsUsingBlock:v23];
  allKeys = [v16 allKeys];
  if ([allKeys count])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000746D8;
    v19[3] = &unk_100362150;
    v19[4] = self;
    v20 = allKeys;
    v21 = v16;
    v22 = updaterCopy;
    [groupCopy perform:v19];
  }
}

- (void)updateLastPlayedGames:(id)games forPlayers:(id)players group:(id)group
{
  gamesCopy = games;
  playersCopy = players;
  groupCopy = group;
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

  [(GKProfileService *)self updateGames:gamesCopy forPlayers:playersCopy group:groupCopy updater:&stru_100362190];
}

- (void)updateChallengedGames:(id)games forPlayers:(id)players group:(id)group
{
  gamesCopy = games;
  playersCopy = players;
  groupCopy = group;
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

  [(GKProfileService *)self updateGames:gamesCopy forPlayers:playersCopy group:groupCopy updater:&stru_1003621B0];
}

- (void)_fetchProfilesForPlayerIDs:(id)ds familiarity:(int)familiarity responseKind:(int)kind context:(id)context handler:(id)handler
{
  v10 = *&familiarity;
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v15 context:contextCopy client:clientProxy];

  *buf = 0;
  v54 = buf;
  v55 = 0x2020000000;
  v56 = kind == 2;
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
  v22 = [NSMutableSet setWithArray:dsCopy];
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
  kindCopy = kind;
  v24 = v22;
  v40 = v24;
  v49 = v20;
  v50 = v19;
  v25 = v17;
  v41 = v25;
  v26 = dsCopy;
  v46 = v18;
  v42 = v26;
  selfCopy = self;
  [v25 performOnManagedObjectContext:v38];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000755B4;
  v33[3] = &unk_100362228;
  v29 = handlerCopy;
  v35 = v29;
  v30 = v25;
  v34 = v30;
  v36 = v51;
  v37 = buf;
  [v30 notifyOnQueue:replyQueue block:v33];

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_loadProfilesForPlayerIDs:(id)ds pieces:(unsigned __int8)pieces context:(id)context handler:(id)handler
{
  piecesCopy = pieces;
  contextCopy = context;
  handlerCopy = handler;
  dsCopy = ds;
  v13 = [objc_opt_class() computePlayerIDsToLoadWithPlayerIDs:dsCopy pieces:piecesCopy context:contextCopy];

  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 423, "[GKProfileService _loadProfilesForPlayerIDs:pieces:context:handler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100075844;
  v25[3] = &unk_1003622A0;
  v26 = v13;
  v31 = piecesCopy;
  v16 = v15;
  v27 = v16;
  selfCopy = self;
  v29 = contextCopy;
  v30 = handlerCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v19 = v13;
  [v16 perform:v25];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100075EDC;
  v23[3] = &unk_100361770;
  v24 = v16;
  v22 = v16;
  [v22 notifyOnQueue:replyQueue block:v23];
}

+ (id)computePlayerIDsToLoadWithPlayerIDs:(id)ds pieces:(unsigned __int8)pieces context:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  v9 = [NSMutableSet setWithArray:dsCopy];
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
  v12 = contextCopy;
  piecesCopy = pieces;
  v18 = v12;
  v19 = &v21;
  [v12 performBlockAndWait:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

+ (void)storeProfilesWithServerResults:(id)results playerIDs:(id)ds pieces:(unsigned __int8)pieces expirationDate:(id)date context:(id)context
{
  resultsCopy = results;
  dsCopy = ds;
  dateCopy = date;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007665C;
  v18[3] = &unk_1003623C0;
  v19 = dsCopy;
  contextCopy = context;
  v21 = resultsCopy;
  v22 = dateCopy;
  piecesCopy = pieces;
  v14 = dateCopy;
  v15 = resultsCopy;
  v16 = contextCopy;
  v17 = dsCopy;
  [v16 performBlockAndWait:v18];
}

- (void)setOcelotStateForCurrentApp
{
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];

  [clientProxy setIsOcelot:{objc_msgSend(v3, "isArcadeApp")}];
}

- (void)getOcelotStateForCurrentAppWithHandler:(id)handler
{
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  (*(handler + 2))(handlerCopy, [clientProxy isOcelot]);
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

- (void)getProfilesForPlayerIDs:(id)ds discardingStaleData:(BOOL)data handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];

    Current = CFAbsoluteTimeGetCurrent();
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      sub_100288D50(Current, uUIDString, v14);
    }

    profileSerialQueue = [objc_opt_class() profileSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076C7C;
    block[3] = &unk_100362430;
    block[4] = self;
    dataCopy = data;
    v21 = dsCopy;
    v22 = uUIDString;
    v24 = Current;
    v23 = handlerCopy;
    v16 = handlerCopy;
    v17 = uUIDString;
    dispatch_async(profileSerialQueue, block);
  }

  else
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100076C60;
    v26[3] = &unk_100360FA0;
    v27 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(replyQueue, v26);

    v16 = v27;
  }
}

- (void)_getProfilesForPlayerIDs:(id)ds discardingStaleData:(BOOL)data handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
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
  v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dsCopy count]);
  credential = [(GKService *)self credential];
  if (!credential)
  {
    v14 = +[GKPlayerCredentialController sharedController];
    clientProxy = [(GKService *)self clientProxy];
    credential = [v14 primaryCredentialForEnvironment:{objc_msgSend(clientProxy, "environment")}];
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
  clientProxy2 = [(GKService *)self clientProxy];
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];
  v22 = [clientProxy2 managedObjectContextForPlayerID:playerID];

  clientProxy3 = [(GKService *)self clientProxy];
  taskQueue = [clientProxy3 taskQueue];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000779DC;
  v68[3] = &unk_100362520;
  objc_copyWeak(&v73, &location);
  v51 = v22;
  v69 = v51;
  v25 = dsCopy;
  v70 = v25;
  v26 = v17;
  v71 = v26;
  dataCopy = data;
  v27 = v18;
  v72 = v27;
  [v26 performOnQueue:taskQueue block:v68];

  clientProxy4 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy4 replyQueue];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100077ED4;
  v65[3] = &unk_1003610B8;
  v30 = v26;
  v66 = v30;
  selfCopy = self;
  [v30 notifyOnQueue:replyQueue block:v65];

  if (handlerCopy)
  {
    clientProxy5 = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy5 bundleIdentifier];

    if (bundleIdentifier)
    {
      clientProxy6 = [(GKService *)self clientProxy];
      taskQueue2 = [clientProxy6 taskQueue];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100077F3C;
      v60[3] = &unk_100362548;
      objc_copyWeak(&v64, &location);
      v61 = v25;
      v62 = bundleIdentifier;
      v63 = v30;
      [v63 performOnQueue:taskQueue2 block:v60];

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
      error = [v41 error];
      localPlayer = [(GKService *)self localPlayer];
      alias = [localPlayer alias];
      *buf = 138412546;
      v80 = error;
      v81 = 2112;
      v82 = alias;
      _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "ScopedIDs fetched/loaded with error: %@ by localPlayer %@", buf, 0x16u);
    }

    result = [v41 result];
    error2 = [v41 error];
    handlerCopy[2](handlerCopy, result, error2);
  }

  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (void)_getProfilesForPlayerIDs:(id)ds discardingStaleData:(BOOL)data familiarity:(int)familiarity context:(id)context handler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 844, "[GKProfileService _getProfilesForPlayerIDs:discardingStaleData:familiarity:context:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  objc_initWeak(&location, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100078528;
  v28[3] = &unk_1003625C0;
  v28[4] = self;
  v17 = dsCopy;
  v29 = v17;
  familiarityCopy = familiarity;
  v18 = handlerCopy;
  v32 = v18;
  v19 = contextCopy;
  v30 = v19;
  v20 = v16;
  v31 = v20;
  objc_copyWeak(&v33, &location);
  dataCopy = data;
  [v20 perform:v28];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000788A0;
  v25[3] = &unk_100360EB0;
  v23 = v18;
  v27 = v23;
  v24 = v20;
  v26 = v24;
  [v24 notifyOnQueue:replyQueue block:v25];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_loadProfilesForPlayerIDs:(id)ds familiarity:(int)familiarity responseComplete:(BOOL)complete context:(id)context handler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 933, "[GKProfileService _loadProfilesForPlayerIDs:familiarity:responseComplete:context:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  objc_initWeak(location, self);
  clientProxy = [(GKService *)self clientProxy];
  taskQueue = [clientProxy taskQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100078BC4;
  v32[3] = &unk_100362688;
  objc_copyWeak(&v37, location);
  familiarityCopy = familiarity;
  v19 = dsCopy;
  v33 = v19;
  v20 = contextCopy;
  v34 = v20;
  v21 = v16;
  v35 = v21;
  v22 = handlerCopy;
  v36 = v22;
  completeCopy = complete;
  [v21 performOnQueue:taskQueue block:v32];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
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
  [v26 notifyOnQueue:replyQueue block:v28];

  objc_destroyWeak(&v37);
  objc_destroyWeak(location);
}

- (void)getFriendSupportPageURLWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1014, "[GKProfileService getFriendSupportPageURLWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];

  if (storeBag)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000794FC;
    v16[3] = &unk_100360F00;
    v17 = storeBag;
    selfCopy = self;
    v19 = v6;
    [v19 perform:v16];
  }

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100079724;
  v13[3] = &unk_100360EB0;
  v14 = v6;
  v15 = handlerCopy;
  v11 = v6;
  v12 = handlerCopy;
  [v11 notifyOnQueue:replyQueue block:v13];
}

- (void)loadScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs handler:(id)handler
{
  handlerCopy = handler;
  iDsCopy = iDs;
  dsCopy = ds;
  v11 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007988C;
  v13[3] = &unk_1003626B0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v11 loadScopedPlayerIDs:dsCopy gameBundleIDs:iDsCopy handler:v13];
}

@end
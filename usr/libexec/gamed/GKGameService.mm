@interface GKGameService
+ (id)metadataSerialQueue;
- (void)_getPerGameFriendsPlayerIDForBundleID:(id)d handler:(id)handler;
- (void)checkTCCAuthorization:(id)authorization;
- (void)deliverMostRecentPendingGameActivityInstance;
- (void)getArcadeHighlightForAdamID:(id)d count:(int64_t)count handler:(id)handler;
- (void)getPerGameFriendsForBundleID:(id)d handler:(id)handler;
- (void)getPerGameSettingsForBundleID:(id)d handler:(id)handler;
- (void)resetTCCAuthorization:(id)authorization;
- (void)setPerGameSettings:(id)settings handler:(id)handler;
- (void)storeGameForBundleIDs:(id)ds completion:(id)completion;
@end

@implementation GKGameService

+ (id)metadataSerialQueue
{
  if (qword_1003B9138 != -1)
  {
    sub_10028AA74();
  }

  v3 = qword_1003B9130;

  return v3;
}

- (void)getArcadeHighlightForAdamID:(id)d count:(int64_t)count handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (qword_1003B9140 != -1)
  {
    sub_10028AA88();
  }

  v10 = [ASCCollectionRequest alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000931EC;
  v14[3] = &unk_1003635B0;
  v15 = [v10 initWithID:ASCCollectionIDGamesForYou kind:ASCLockupKindApp context:ASCLockupContextGameCenter limit:count];
  v16 = dCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = dCopy;
  v12 = handlerCopy;
  v13 = v15;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)getPerGameSettingsForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 157, "[GKGameService getPerGameSettingsForBundleID:handler:]"];
    v9 = [(GKService *)self transactionGroupWithName:v8];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100093C00;
    v17[3] = &unk_100361348;
    v18 = dCopy;
    selfCopy = self;
    v10 = v9;
    v20 = v10;
    [v10 performOnManagedObjectContext:v17];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009421C;
    v14[3] = &unk_100361270;
    v15 = v10;
    v16 = handlerCopy;
    v13 = v10;
    [v13 notifyOnQueue:replyQueue block:v14];
  }
}

- (void)setPerGameSettings:(id)settings handler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 225, "[GKGameService setPerGameSettings:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100094450;
  v19[3] = &unk_100361348;
  v20 = settingsCopy;
  v10 = v9;
  v21 = v10;
  selfCopy = self;
  v11 = settingsCopy;
  [v10 performOnManagedObjectContext:v19];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100094BEC;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = handlerCopy;
  v14 = v10;
  v15 = handlerCopy;
  [v14 notifyOnQueue:replyQueue block:v16];
}

- (void)getPerGameFriendsForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 328, "[GKGameService getPerGameFriendsForBundleID:handler:]"];
    v9 = [GKDispatchGroup dispatchGroupWithName:v8];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100094E1C;
    v17[3] = &unk_100360F00;
    v17[4] = self;
    v18 = dCopy;
    v10 = v9;
    v19 = v10;
    [v10 perform:v17];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100095234;
    v14[3] = &unk_100360EB0;
    v15 = v10;
    v16 = handlerCopy;
    v13 = v10;
    [v13 notifyOnQueue:replyQueue block:v14];
  }
}

- (void)checkTCCAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 376, "[GKGameService checkTCCAuthorization:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100095444;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009559C;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = authorizationCopy;
  v10 = v7;
  v11 = authorizationCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)resetTCCAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 401, "[GKGameService resetTCCAuthorization:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000957C8;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v16 = bundleIdentifier;
  v9 = bundleIdentifier;
  [v6 perform:v15];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095874;
  v13[3] = &unk_100360FA0;
  v14 = authorizationCopy;
  v12 = authorizationCopy;
  [v6 notifyOnQueue:replyQueue block:v13];
}

- (void)_getPerGameFriendsPlayerIDForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 428, "[GKGameService _getPerGameFriendsPlayerIDForBundleID:handler:]"];
    v9 = [(GKService *)self transactionGroupWithName:v8];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100095CC4;
    v17[3] = &unk_1003636E0;
    v18 = dCopy;
    selfCopy = self;
    v10 = v9;
    v20 = v10;
    v21 = &stru_100363668;
    [v10 performOnManagedObjectContext:v17];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000965F8;
    v14[3] = &unk_100361270;
    v15 = v10;
    v16 = handlerCopy;
    v13 = v10;
    [v13 notifyOnQueue:replyQueue block:v14];
  }
}

- (void)storeGameForBundleIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  [GKClientProxy enumerateClientsUsingBlock:&stru_100363700];
  v8 = [dsCopy _gkFilterWithBlock:&stru_100363740];
  if ([v8 count])
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = dsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Add games: %@ ", buf, 0xCu);
    }

    v11 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
    credential = [(GKService *)self credential];
    playerInternal = [credential playerInternal];
    playerID = [playerInternal playerID];

    v15 = [[NSMutableSet alloc] initWithArray:dsCopy];
    v16 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 560, "[GKGameService storeGameForBundleIDs:completion:]"];
    v17 = [(GKService *)self transactionGroupWithName:v16 forPlayerID:0];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100096AE8;
    v32[3] = &unk_100361348;
    v33 = dsCopy;
    v34 = v15;
    v18 = v17;
    v35 = v18;
    v19 = v15;
    [v18 performOnManagedObjectContext:v32];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100096D78;
    v26[3] = &unk_100363768;
    v27 = v18;
    v28 = playerID;
    selfCopy = self;
    v31 = completionCopy;
    v29 = v11;
    v22 = v11;
    v23 = playerID;
    v24 = v18;
    [v24 notifyOnQueue:replyQueue block:v26];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
    {
      sub_10028AC44();
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)deliverMostRecentPendingGameActivityInstance
{
  clientProxy = [(GKService *)self clientProxy];
  [clientProxy deliverMostRecentPendingGameActivityInstance];
}

@end
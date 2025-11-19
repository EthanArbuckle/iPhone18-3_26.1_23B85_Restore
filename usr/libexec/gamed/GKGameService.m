@interface GKGameService
+ (id)metadataSerialQueue;
- (void)_getPerGameFriendsPlayerIDForBundleID:(id)a3 handler:(id)a4;
- (void)checkTCCAuthorization:(id)a3;
- (void)deliverMostRecentPendingGameActivityInstance;
- (void)getArcadeHighlightForAdamID:(id)a3 count:(int64_t)a4 handler:(id)a5;
- (void)getPerGameFriendsForBundleID:(id)a3 handler:(id)a4;
- (void)getPerGameSettingsForBundleID:(id)a3 handler:(id)a4;
- (void)resetTCCAuthorization:(id)a3;
- (void)setPerGameSettings:(id)a3 handler:(id)a4;
- (void)storeGameForBundleIDs:(id)a3 completion:(id)a4;
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

- (void)getArcadeHighlightForAdamID:(id)a3 count:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (qword_1003B9140 != -1)
  {
    sub_10028AA88();
  }

  v10 = [ASCCollectionRequest alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000931EC;
  v14[3] = &unk_1003635B0;
  v15 = [v10 initWithID:ASCCollectionIDGamesForYou kind:ASCLockupKindApp context:ASCLockupContextGameCenter limit:a4];
  v16 = v8;
  v17 = self;
  v18 = v9;
  v11 = v8;
  v12 = v9;
  v13 = v15;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)getPerGameSettingsForBundleID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 157, "[GKGameService getPerGameSettingsForBundleID:handler:]"];
    v9 = [(GKService *)self transactionGroupWithName:v8];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100093C00;
    v17[3] = &unk_100361348;
    v18 = v6;
    v19 = self;
    v10 = v9;
    v20 = v10;
    [v10 performOnManagedObjectContext:v17];
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009421C;
    v14[3] = &unk_100361270;
    v15 = v10;
    v16 = v7;
    v13 = v10;
    [v13 notifyOnQueue:v12 block:v14];
  }
}

- (void)setPerGameSettings:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 225, "[GKGameService setPerGameSettings:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100094450;
  v19[3] = &unk_100361348;
  v20 = v6;
  v10 = v9;
  v21 = v10;
  v22 = self;
  v11 = v6;
  [v10 performOnManagedObjectContext:v19];
  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100094BEC;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = v7;
  v14 = v10;
  v15 = v7;
  [v14 notifyOnQueue:v13 block:v16];
}

- (void)getPerGameFriendsForBundleID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 328, "[GKGameService getPerGameFriendsForBundleID:handler:]"];
    v9 = [GKDispatchGroup dispatchGroupWithName:v8];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100094E1C;
    v17[3] = &unk_100360F00;
    v17[4] = self;
    v18 = v6;
    v10 = v9;
    v19 = v10;
    [v10 perform:v17];
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100095234;
    v14[3] = &unk_100360EB0;
    v15 = v10;
    v16 = v7;
    v13 = v10;
    [v13 notifyOnQueue:v12 block:v14];
  }
}

- (void)checkTCCAuthorization:(id)a3
{
  v4 = a3;
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
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009559C;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (void)resetTCCAuthorization:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 401, "[GKGameService resetTCCAuthorization:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v7 = [(GKService *)self clientProxy];
  v8 = [v7 bundleIdentifier];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000957C8;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v16 = v8;
  v9 = v8;
  [v6 perform:v15];
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095874;
  v13[3] = &unk_100360FA0;
  v14 = v4;
  v12 = v4;
  [v6 notifyOnQueue:v11 block:v13];
}

- (void)_getPerGameFriendsPlayerIDForBundleID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 428, "[GKGameService _getPerGameFriendsPlayerIDForBundleID:handler:]"];
    v9 = [(GKService *)self transactionGroupWithName:v8];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100095CC4;
    v17[3] = &unk_1003636E0;
    v18 = v6;
    v19 = self;
    v10 = v9;
    v20 = v10;
    v21 = &stru_100363668;
    [v10 performOnManagedObjectContext:v17];
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000965F8;
    v14[3] = &unk_100361270;
    v15 = v10;
    v16 = v7;
    v13 = v10;
    [v13 notifyOnQueue:v12 block:v14];
  }
}

- (void)storeGameForBundleIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [GKClientProxy enumerateClientsUsingBlock:&stru_100363700];
  v8 = [v6 _gkFilterWithBlock:&stru_100363740];
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
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Add games: %@ ", buf, 0xCu);
    }

    v11 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
    v12 = [(GKService *)self credential];
    v13 = [v12 playerInternal];
    v14 = [v13 playerID];

    v15 = [[NSMutableSet alloc] initWithArray:v6];
    v16 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 560, "[GKGameService storeGameForBundleIDs:completion:]"];
    v17 = [(GKService *)self transactionGroupWithName:v16 forPlayerID:0];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100096AE8;
    v32[3] = &unk_100361348;
    v33 = v6;
    v34 = v15;
    v18 = v17;
    v35 = v18;
    v19 = v15;
    [v18 performOnManagedObjectContext:v32];
    v20 = [(GKService *)self clientProxy];
    v21 = [v20 replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100096D78;
    v26[3] = &unk_100363768;
    v27 = v18;
    v28 = v14;
    v30 = self;
    v31 = v7;
    v29 = v11;
    v22 = v11;
    v23 = v14;
    v24 = v18;
    [v24 notifyOnQueue:v21 block:v26];
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

    (*(v7 + 2))(v7, 0);
  }
}

- (void)deliverMostRecentPendingGameActivityInstance
{
  v2 = [(GKService *)self clientProxy];
  [v2 deliverMostRecentPendingGameActivityInstance];
}

@end
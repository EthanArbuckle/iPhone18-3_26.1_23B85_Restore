@interface GKTurnBasedServicePrivate
- (void)getTurnBasedBadgeCountWithHandler:(id)a3;
- (void)showMatch:(id)a3;
@end

@implementation GKTurnBasedServicePrivate

- (void)getTurnBasedBadgeCountWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1708, "[GKTurnBasedServicePrivate getTurnBasedBadgeCountWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v7 = [v6 context];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000EF48C;
  v21[3] = &unk_100366458;
  v21[4] = self;
  v8 = v6;
  v22 = v8;
  v23 = v29;
  v24 = &v25;
  [v7 performBlockAndWait:v21];

  if (*(v26 + 24) == 1)
  {
    [v8 objectForKeyedSubscript:@"game"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EF5CC;
    v17[3] = &unk_1003664D0;
    v9 = v17[4] = self;
    v18 = v9;
    v19 = v8;
    v20 = v29;
    [v19 perform:v17];
  }

  if (v4)
  {
    v10 = [(GKService *)self clientProxy];
    v11 = [v10 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EF878;
    v12[3] = &unk_1003664F8;
    v15 = v4;
    v16 = v29;
    v13 = v8;
    v14 = self;
    [v13 notifyOnQueue:v11 block:v12];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

- (void)showMatch:(id)a3
{
  v27 = a3;
  v3 = [v27 matchID];
  if (v3)
  {
    v4 = v3;
    v5 = [v27 bundleID];
    if (v5)
    {
      v6 = v5;
      v7 = [v27 bundleVersion];

      if (!v7)
      {
        goto LABEL_9;
      }

      v4 = objc_alloc_init(GKTurnBasedMultiplayerBulletin);
      v8 = [v27 bundleID];
      v9 = [v27 bundleVersion];
      v10 = [v27 shortBundleVersion];
      v11 = [v27 game];
      v12 = [v11 adamID];
      v13 = [GKGameDescriptor gameDescriptorWithBundleID:v8 bundleVersion:v9 shortBundleVersion:v10 adamID:v12];

      [(GKBulletin *)v4 setGameDescriptor:v13];
      v14 = [v27 matchID];
      [(GKTurnBasedMultiplayerBulletin *)v4 setMatchID:v14];

      [(GKBulletin *)v4 setPushCommand:81];
      v15 = [v27 bundleVersion];
      v16 = [(GKBulletin *)v4 gameDescriptor];
      [v16 setBundleVersion:v15];

      v17 = [v27 shortBundleVersion];
      v18 = [(GKBulletin *)v4 gameDescriptor];
      [v18 setShortBundleVersion:v17];

      v19 = +[GKBulletinController sharedController];
      v20 = [v19 acceptedInviteManager];

      [v20 addTurnBasedEvent:v4];
      v21 = [v27 bundleID];
      v22 = GKGetApplicationStateForBundleID(v21);

      if (v22 == 8 || ([v27 bundleID], v23 = objc_claimAutoreleasedReturnValue(), GKLaunchApplicationWithIdentifier(v23, 0), v23, v22 >= 4))
      {
        v24 = [v27 bundleID];
        v25 = [GKClientProxy clientForBundleID:v24];

        [v25 fetchTurnBasedData];
      }

      v26 = +[GKReporter reporter];
      [v26 reportEvent:GKReporterDomainTurnBased type:GKReporterTurnBasedShowMatch];
    }
  }

LABEL_9:
}

@end
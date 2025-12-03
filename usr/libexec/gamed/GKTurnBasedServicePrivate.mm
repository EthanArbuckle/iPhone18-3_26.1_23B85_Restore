@interface GKTurnBasedServicePrivate
- (void)getTurnBasedBadgeCountWithHandler:(id)handler;
- (void)showMatch:(id)match;
@end

@implementation GKTurnBasedServicePrivate

- (void)getTurnBasedBadgeCountWithHandler:(id)handler
{
  handlerCopy = handler;
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
  context = [v6 context];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000EF48C;
  v21[3] = &unk_100366458;
  v21[4] = self;
  v8 = v6;
  v22 = v8;
  v23 = v29;
  v24 = &v25;
  [context performBlockAndWait:v21];

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

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EF878;
    v12[3] = &unk_1003664F8;
    v15 = handlerCopy;
    v16 = v29;
    v13 = v8;
    selfCopy = self;
    [v13 notifyOnQueue:replyQueue block:v12];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

- (void)showMatch:(id)match
{
  matchCopy = match;
  matchID = [matchCopy matchID];
  if (matchID)
  {
    v4 = matchID;
    bundleID = [matchCopy bundleID];
    if (bundleID)
    {
      v6 = bundleID;
      bundleVersion = [matchCopy bundleVersion];

      if (!bundleVersion)
      {
        goto LABEL_9;
      }

      v4 = objc_alloc_init(GKTurnBasedMultiplayerBulletin);
      bundleID2 = [matchCopy bundleID];
      bundleVersion2 = [matchCopy bundleVersion];
      shortBundleVersion = [matchCopy shortBundleVersion];
      game = [matchCopy game];
      adamID = [game adamID];
      v13 = [GKGameDescriptor gameDescriptorWithBundleID:bundleID2 bundleVersion:bundleVersion2 shortBundleVersion:shortBundleVersion adamID:adamID];

      [(GKBulletin *)v4 setGameDescriptor:v13];
      matchID2 = [matchCopy matchID];
      [(GKTurnBasedMultiplayerBulletin *)v4 setMatchID:matchID2];

      [(GKBulletin *)v4 setPushCommand:81];
      bundleVersion3 = [matchCopy bundleVersion];
      gameDescriptor = [(GKBulletin *)v4 gameDescriptor];
      [gameDescriptor setBundleVersion:bundleVersion3];

      shortBundleVersion2 = [matchCopy shortBundleVersion];
      gameDescriptor2 = [(GKBulletin *)v4 gameDescriptor];
      [gameDescriptor2 setShortBundleVersion:shortBundleVersion2];

      v19 = +[GKBulletinController sharedController];
      acceptedInviteManager = [v19 acceptedInviteManager];

      [acceptedInviteManager addTurnBasedEvent:v4];
      bundleID3 = [matchCopy bundleID];
      v22 = GKGetApplicationStateForBundleID(bundleID3);

      if (v22 == 8 || ([matchCopy bundleID], v23 = objc_claimAutoreleasedReturnValue(), GKLaunchApplicationWithIdentifier(v23, 0), v23, v22 >= 4))
      {
        bundleID4 = [matchCopy bundleID];
        v25 = [GKClientProxy clientForBundleID:bundleID4];

        [v25 fetchTurnBasedData];
      }

      v26 = +[GKReporter reporter];
      [v26 reportEvent:GKReporterDomainTurnBased type:GKReporterTurnBasedShowMatch];
    }
  }

LABEL_9:
}

@end
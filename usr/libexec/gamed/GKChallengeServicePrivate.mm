@interface GKChallengeServicePrivate
- (void)acceptForLeaderboardChallengeInvite:(id)invite completionHandler:(id)handler;
- (void)acceptInviteForLeaderboardChallengeCode:(id)code completionHandler:(id)handler;
- (void)acceptInviteForLeaderboardChallengeID:(id)d completionHandler:(id)handler;
- (void)compareLeaderboardChallengeWithPlayerID:(id)d otherPlayerID:(id)iD bundleID:(id)bundleID completionHandler:(id)handler;
- (void)createLeaderboardChallengeInviteCodeWithChallengeID:(id)d playerID:(id)iD completionHandler:(id)handler;
- (void)createLeaderboardChallengeWithBundleID:(id)d leaderboardID:(id)iD attemptLimit:(id)limit duration:(id)duration invitedPlayerIDs:(id)ds previousChallengeID:(id)challengeID completionHandler:(id)handler;
- (void)getActiveLeaderboardChallengeDetailsForPlayerID:(id)d bundleID:(id)iD allowStaleChallengeDetailsData:(BOOL)data completionHandler:(id)handler;
- (void)getApprovedGamesForLeaderboardChallengesWithHandler:(id)handler;
- (void)getCountOfChallengesWithHandler:(id)handler;
- (void)getLeaderboardChallengeDetailsForChallengeID:(id)d allowStaleData:(BOOL)data completionHandler:(id)handler;
- (void)getLeaderboardChallengeDetailsForChallengeIDs:(id)ds allowStaleData:(BOOL)data completionHandler:(id)handler;
- (void)getLeaderboardChallengeInviteStatusWithChallengeID:(id)d inviteCode:(id)code playerID:(id)iD completionHandler:(id)handler;
- (void)getLeaderboardChallengeSummaryForPlayerID:(id)d bundleID:(id)iD completionHandler:(id)handler;
- (void)getLeaderboardChallengesCompletedWithPlayerID:(id)d type:(id)type bundleID:(id)iD completionHandler:(id)handler;
- (void)getLeaderboardCompletedChallengeSummaryForPlayerID:(id)d type:(id)type bundleID:(id)iD completionHandler:(id)handler;
- (void)getStringWithRequest:(id)request bagKey:(id)key stringResponseKey:(id)responseKey completionHandler:(id)handler;
- (void)inviteToLeaderboardChallengeWithID:(id)d invitedPlayerIDs:(id)ds completionHandler:(id)handler;
- (void)leaveLeaderboardChallengeWithChallengeID:(id)d playerID:(id)iD completionHandler:(id)handler;
- (void)startGame:(id)game withChallenge:(id)challenge;
@end

@implementation GKChallengeServicePrivate

- (void)getCountOfChallengesWithHandler:(id)handler
{
  handlerCopy = handler;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 619, "[GKChallengeServicePrivate getCountOfChallengesWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  context = [v6 context];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000CA1FC;
  v18[3] = &unk_1003646A8;
  v8 = v6;
  v19 = v8;
  v20 = v26;
  v21 = &v22;
  [context performBlockAndWait:v18];

  if (*(v23 + 24) == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000CA2D8;
    v15[3] = &unk_100361860;
    v15[4] = self;
    v16 = v8;
    v17 = v26;
    [v16 perform:v15];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CA51C;
    v11[3] = &unk_1003618D8;
    v13 = handlerCopy;
    v14 = v26;
    v12 = v8;
    [v12 notifyOnQueue:replyQueue block:v11];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)startGame:(id)game withChallenge:(id)challenge
{
  challengeCopy = challenge;
  v6 = [GKClientProxy clientForBundleID:game];
  [v6 setLaunchEvent:0 withContext:challengeCopy];
}

- (void)getApprovedGamesForLeaderboardChallengesWithHandler:(id)handler
{
  handlerCopy = handler;
  v13 = GKBagKeyChallengeApprovedGames;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CA754;
  v11[3] = &unk_100362868;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [storeBag getValuesForKeys:v5 queue:replyQueue completion:v11];
}

- (void)createLeaderboardChallengeWithBundleID:(id)d leaderboardID:(id)iD attemptLimit:(id)limit duration:(id)duration invitedPlayerIDs:(id)ds previousChallengeID:(id)challengeID completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  limitCopy = limit;
  durationCopy = duration;
  dsCopy = ds;
  challengeIDCopy = challengeID;
  v30 = @"bundle-id";
  v31 = @"leaderboard-id";
  v33 = dCopy;
  v34 = iDCopy;
  v32 = @"invited-player-ids";
  v35 = dsCopy;
  handlerCopy = handler;
  v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v30 count:3];
  v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

  if (limitCopy)
  {
    v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [limitCopy intValue]);
    [v22 setObject:v23 forKeyedSubscript:@"attempt-limit"];
  }

  if (durationCopy)
  {
    [durationCopy doubleValue];
    v25 = [NSNumber numberWithLong:(v24 * 1000.0)];
    [v22 setObject:v25 forKeyedSubscript:@"duration"];
  }

  [v22 _gkSetIfNonNilObject:challengeIDCopy forKey:{@"previous-challenge-id", self, v30, v31, v32, v33, v34, v35}];
  v26 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [v29 clientProxy];
  [v26 createEntityWithRequest:v22 bagKey:@"gk-challenge-create" clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_100365638];
}

- (void)getLeaderboardChallengeDetailsForChallengeID:(id)d allowStaleData:(BOOL)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dCopy = d;
  v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = @"challenge-id";
  v14 = dCopy;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  clientProxy = [(GKService *)self clientProxy];
  [v10 readEntityWithRequest:v11 bagKey:@"gk-challenge-detail" includeStaleCacheData:dataCopy clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_100365658];
}

- (void)getLeaderboardChallengeSummaryForPlayerID:(id)d bundleID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  v15[0] = @"player-id";
  v15[1] = @"get-recent-completed-challenges";
  v16[0] = dCopy;
  v16[1] = &__kCFBooleanTrue;
  handlerCopy = handler;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (iDCopy)
  {
    [v12 setObject:iDCopy forKeyedSubscript:@"bundle-id"];
  }

  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  [v13 readEntityWithRequest:v12 bagKey:@"gk-challenge-summary" includeStaleCacheData:0 clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_100365678];
}

- (void)acceptInviteForLeaderboardChallengeID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  v12 = @"player-invite";
  v10 = @"challenge-id";
  handlerCopy = handler;
  dCopy2 = d;
  v8 = [NSDictionary dictionaryWithObjects:&dCopy forKeys:&v10 count:1];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [(GKChallengeServicePrivate *)self acceptForLeaderboardChallengeInvite:v9 completionHandler:handlerCopy];
}

- (void)acceptInviteForLeaderboardChallengeCode:(id)code completionHandler:(id)handler
{
  codeCopy = code;
  v12 = @"code-invite";
  v10 = @"invite-code";
  handlerCopy = handler;
  codeCopy2 = code;
  v8 = [NSDictionary dictionaryWithObjects:&codeCopy forKeys:&v10 count:1];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [(GKChallengeServicePrivate *)self acceptForLeaderboardChallengeInvite:v9 completionHandler:handlerCopy];
}

- (void)acceptForLeaderboardChallengeInvite:(id)invite completionHandler:(id)handler
{
  handlerCopy = handler;
  inviteCopy = invite;
  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CB224;
  v11[3] = &unk_1003627C8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v8 issueRequest:inviteCopy bagKey:@"gk-challenge-accept" clientProxy:clientProxy handler:v11];
}

- (void)inviteToLeaderboardChallengeWithID:(id)d invitedPlayerIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  dCopy = d;
  v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v17[0] = @"challenge-id";
  v17[1] = @"player-ids";
  v18[0] = dCopy;
  v18[1] = dsCopy;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  clientProxy = [(GKService *)self clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CB484;
  v15[3] = &unk_1003627C8;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v11 issueRequest:v12 bagKey:@"gk-challenge-invite" clientProxy:clientProxy handler:v15];
}

- (void)createLeaderboardChallengeInviteCodeWithChallengeID:(id)d playerID:(id)iD completionHandler:(id)handler
{
  v12[0] = @"challenge-id";
  v12[1] = @"player-id";
  v13[0] = d;
  v13[1] = iD;
  handlerCopy = handler;
  iDCopy = iD;
  dCopy = d;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(GKChallengeServicePrivate *)self getStringWithRequest:v11 bagKey:@"gk-challenge-create-invite-code" stringResponseKey:@"invite-code" completionHandler:handlerCopy];
}

- (void)getLeaderboardChallengeInviteStatusWithChallengeID:(id)d inviteCode:(id)code playerID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  codeCopy = code;
  handlerCopy = handler;
  iDCopy = iD;
  localPlayer = [(GKService *)self localPlayer];
  playerID = [localPlayer playerID];
  v16 = [iDCopy isEqualToString:playerID];

  if ((v16 & 1) == 0)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000CB8E0;
    v23 = &unk_100360FA0;
    v24 = handlerCopy;
    dispatch_async(replyQueue, &v20);
  }

  v25[0] = @"challenge-id";
  v25[1] = @"invite-code";
  v26[0] = dCopy;
  v26[1] = codeCopy;
  v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2, v20, v21, v22, v23];
  [(GKChallengeServicePrivate *)self getStringWithRequest:v19 bagKey:@"gk-challenge-detail" stringResponseKey:@"invite-code-status" completionHandler:handlerCopy];
}

- (void)compareLeaderboardChallengeWithPlayerID:(id)d otherPlayerID:(id)iD bundleID:(id)bundleID completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  v18[0] = @"player-id";
  v18[1] = @"compare-to-player-id";
  v19[0] = dCopy;
  v19[1] = iDCopy;
  handlerCopy = handler;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (bundleIDCopy)
  {
    [v15 setObject:bundleIDCopy forKeyedSubscript:@"bundle-id"];
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  [v16 readEntityWithRequest:v15 bagKey:@"gk-challenge-compare" includeStaleCacheData:0 clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_100365698];
}

- (void)getLeaderboardChallengesCompletedWithPlayerID:(id)d type:(id)type bundleID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  typeCopy = type;
  iDCopy = iD;
  v18[0] = @"player-id";
  v18[1] = @"type";
  v19[0] = dCopy;
  v19[1] = typeCopy;
  handlerCopy = handler;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (iDCopy)
  {
    [v15 setObject:iDCopy forKeyedSubscript:@"bundle-id"];
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  [v16 readEntityWithRequest:v15 bagKey:@"gk-challenge-get-completed" includeStaleCacheData:0 clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_1003656B8];
}

- (void)getLeaderboardCompletedChallengeSummaryForPlayerID:(id)d type:(id)type bundleID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  typeCopy = type;
  iDCopy = iD;
  v18[0] = @"player-id";
  v18[1] = @"type";
  v19[0] = dCopy;
  v19[1] = typeCopy;
  handlerCopy = handler;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (iDCopy)
  {
    [v15 setObject:iDCopy forKeyedSubscript:@"bundle-id"];
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  [v16 readEntityWithRequest:v15 bagKey:@"gk-challenge-get-completed-summary" includeStaleCacheData:0 clientProxy:clientProxy completionHandler:handlerCopy entityMaker:&stru_1003656D8];
}

- (void)leaveLeaderboardChallengeWithChallengeID:(id)d playerID:(id)iD completionHandler:(id)handler
{
  v12[0] = @"challenge-id";
  v12[1] = @"player-id";
  v13[0] = d;
  v13[1] = iD;
  handlerCopy = handler;
  iDCopy = iD;
  dCopy = d;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(GKChallengeServicePrivate *)self getStringWithRequest:v11 bagKey:@"gk-challenge-leave" stringResponseKey:@"response-status" completionHandler:handlerCopy];
}

- (void)getActiveLeaderboardChallengeDetailsForPlayerID:(id)d bundleID:(id)iD allowStaleChallengeDetailsData:(BOOL)data completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CC05C;
  v10[3] = &unk_100365700;
  selfCopy = self;
  handlerCopy = handler;
  dataCopy = data;
  v9 = handlerCopy;
  [(GKChallengeServicePrivate *)selfCopy getLeaderboardChallengeSummaryForPlayerID:d bundleID:iD completionHandler:v10];
}

- (void)getLeaderboardChallengeDetailsForChallengeIDs:(id)ds allowStaleData:(BOOL)data completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 948, "[GKChallengeServicePrivate getLeaderboardChallengeDetailsForChallengeIDs:allowStaleData:completionHandler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000CC3F8;
        v25[3] = &unk_100361670;
        v25[4] = self;
        v25[5] = v16;
        dataCopy = data;
        v26 = v10;
        [v26 perform:v25];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CC554;
  v22[3] = &unk_100360EB0;
  v23 = v10;
  v24 = handlerCopy;
  v19 = v10;
  v20 = handlerCopy;
  [v19 notifyOnQueue:replyQueue block:v22];
}

- (void)getStringWithRequest:(id)request bagKey:(id)key stringResponseKey:(id)responseKey completionHandler:(id)handler
{
  responseKeyCopy = responseKey;
  handlerCopy = handler;
  keyCopy = key;
  requestCopy = request;
  v14 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000CC724;
  v18[3] = &unk_100363A58;
  v19 = responseKeyCopy;
  v20 = handlerCopy;
  v18[4] = self;
  v16 = responseKeyCopy;
  v17 = handlerCopy;
  [v14 issueRequest:requestCopy bagKey:keyCopy clientProxy:clientProxy handler:v18];
}

@end
@interface GKChallengeServicePrivate
- (void)acceptForLeaderboardChallengeInvite:(id)a3 completionHandler:(id)a4;
- (void)acceptInviteForLeaderboardChallengeCode:(id)a3 completionHandler:(id)a4;
- (void)acceptInviteForLeaderboardChallengeID:(id)a3 completionHandler:(id)a4;
- (void)compareLeaderboardChallengeWithPlayerID:(id)a3 otherPlayerID:(id)a4 bundleID:(id)a5 completionHandler:(id)a6;
- (void)createLeaderboardChallengeInviteCodeWithChallengeID:(id)a3 playerID:(id)a4 completionHandler:(id)a5;
- (void)createLeaderboardChallengeWithBundleID:(id)a3 leaderboardID:(id)a4 attemptLimit:(id)a5 duration:(id)a6 invitedPlayerIDs:(id)a7 previousChallengeID:(id)a8 completionHandler:(id)a9;
- (void)getActiveLeaderboardChallengeDetailsForPlayerID:(id)a3 bundleID:(id)a4 allowStaleChallengeDetailsData:(BOOL)a5 completionHandler:(id)a6;
- (void)getApprovedGamesForLeaderboardChallengesWithHandler:(id)a3;
- (void)getCountOfChallengesWithHandler:(id)a3;
- (void)getLeaderboardChallengeDetailsForChallengeID:(id)a3 allowStaleData:(BOOL)a4 completionHandler:(id)a5;
- (void)getLeaderboardChallengeDetailsForChallengeIDs:(id)a3 allowStaleData:(BOOL)a4 completionHandler:(id)a5;
- (void)getLeaderboardChallengeInviteStatusWithChallengeID:(id)a3 inviteCode:(id)a4 playerID:(id)a5 completionHandler:(id)a6;
- (void)getLeaderboardChallengeSummaryForPlayerID:(id)a3 bundleID:(id)a4 completionHandler:(id)a5;
- (void)getLeaderboardChallengesCompletedWithPlayerID:(id)a3 type:(id)a4 bundleID:(id)a5 completionHandler:(id)a6;
- (void)getLeaderboardCompletedChallengeSummaryForPlayerID:(id)a3 type:(id)a4 bundleID:(id)a5 completionHandler:(id)a6;
- (void)getStringWithRequest:(id)a3 bagKey:(id)a4 stringResponseKey:(id)a5 completionHandler:(id)a6;
- (void)inviteToLeaderboardChallengeWithID:(id)a3 invitedPlayerIDs:(id)a4 completionHandler:(id)a5;
- (void)leaveLeaderboardChallengeWithChallengeID:(id)a3 playerID:(id)a4 completionHandler:(id)a5;
- (void)startGame:(id)a3 withChallenge:(id)a4;
@end

@implementation GKChallengeServicePrivate

- (void)getCountOfChallengesWithHandler:(id)a3
{
  v4 = a3;
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
  v7 = [v6 context];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000CA1FC;
  v18[3] = &unk_1003646A8;
  v8 = v6;
  v19 = v8;
  v20 = v26;
  v21 = &v22;
  [v7 performBlockAndWait:v18];

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

  if (v4)
  {
    v9 = [(GKService *)self clientProxy];
    v10 = [v9 replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CA51C;
    v11[3] = &unk_1003618D8;
    v13 = v4;
    v14 = v26;
    v12 = v8;
    [v12 notifyOnQueue:v10 block:v11];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

- (void)startGame:(id)a3 withChallenge:(id)a4
{
  v5 = a4;
  v6 = [GKClientProxy clientForBundleID:a3];
  [v6 setLaunchEvent:0 withContext:v5];
}

- (void)getApprovedGamesForLeaderboardChallengesWithHandler:(id)a3
{
  v4 = a3;
  v13 = GKBagKeyChallengeApprovedGames;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  v6 = [(GKService *)self transport];
  v7 = [v6 storeBag];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CA754;
  v11[3] = &unk_100362868;
  v12 = v4;
  v10 = v4;
  [v7 getValuesForKeys:v5 queue:v9 completion:v11];
}

- (void)createLeaderboardChallengeWithBundleID:(id)a3 leaderboardID:(id)a4 attemptLimit:(id)a5 duration:(id)a6 invitedPlayerIDs:(id)a7 previousChallengeID:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v30 = @"bundle-id";
  v31 = @"leaderboard-id";
  v33 = v14;
  v34 = v15;
  v32 = @"invited-player-ids";
  v35 = v18;
  v20 = a9;
  v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v30 count:3];
  v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

  if (v16)
  {
    v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue]);
    [v22 setObject:v23 forKeyedSubscript:@"attempt-limit"];
  }

  if (v17)
  {
    [v17 doubleValue];
    v25 = [NSNumber numberWithLong:(v24 * 1000.0)];
    [v22 setObject:v25 forKeyedSubscript:@"duration"];
  }

  [v22 _gkSetIfNonNilObject:v19 forKey:{@"previous-challenge-id", self, v30, v31, v32, v33, v34, v35}];
  v26 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v27 = [v29 clientProxy];
  [v26 createEntityWithRequest:v22 bagKey:@"gk-challenge-create" clientProxy:v27 completionHandler:v20 entityMaker:&stru_100365638];
}

- (void)getLeaderboardChallengeDetailsForChallengeID:(id)a3 allowStaleData:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = @"challenge-id";
  v14 = v9;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v12 = [(GKService *)self clientProxy];
  [v10 readEntityWithRequest:v11 bagKey:@"gk-challenge-detail" includeStaleCacheData:v5 clientProxy:v12 completionHandler:v8 entityMaker:&stru_100365658];
}

- (void)getLeaderboardChallengeSummaryForPlayerID:(id)a3 bundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15[0] = @"player-id";
  v15[1] = @"get-recent-completed-challenges";
  v16[0] = v8;
  v16[1] = &__kCFBooleanTrue;
  v10 = a5;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:@"bundle-id"];
  }

  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v14 = [(GKService *)self clientProxy];
  [v13 readEntityWithRequest:v12 bagKey:@"gk-challenge-summary" includeStaleCacheData:0 clientProxy:v14 completionHandler:v10 entityMaker:&stru_100365678];
}

- (void)acceptInviteForLeaderboardChallengeID:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v12 = @"player-invite";
  v10 = @"challenge-id";
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [(GKChallengeServicePrivate *)self acceptForLeaderboardChallengeInvite:v9 completionHandler:v6];
}

- (void)acceptInviteForLeaderboardChallengeCode:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v12 = @"code-invite";
  v10 = @"invite-code";
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  [(GKChallengeServicePrivate *)self acceptForLeaderboardChallengeInvite:v9 completionHandler:v6];
}

- (void)acceptForLeaderboardChallengeInvite:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v9 = [(GKService *)self clientProxy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CB224;
  v11[3] = &unk_1003627C8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 issueRequest:v7 bagKey:@"gk-challenge-accept" clientProxy:v9 handler:v11];
}

- (void)inviteToLeaderboardChallengeWithID:(id)a3 invitedPlayerIDs:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v17[0] = @"challenge-id";
  v17[1] = @"player-ids";
  v18[0] = v10;
  v18[1] = v9;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v13 = [(GKService *)self clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CB484;
  v15[3] = &unk_1003627C8;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v11 issueRequest:v12 bagKey:@"gk-challenge-invite" clientProxy:v13 handler:v15];
}

- (void)createLeaderboardChallengeInviteCodeWithChallengeID:(id)a3 playerID:(id)a4 completionHandler:(id)a5
{
  v12[0] = @"challenge-id";
  v12[1] = @"player-id";
  v13[0] = a3;
  v13[1] = a4;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(GKChallengeServicePrivate *)self getStringWithRequest:v11 bagKey:@"gk-challenge-create-invite-code" stringResponseKey:@"invite-code" completionHandler:v8];
}

- (void)getLeaderboardChallengeInviteStatusWithChallengeID:(id)a3 inviteCode:(id)a4 playerID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(GKService *)self localPlayer];
  v15 = [v14 playerID];
  v16 = [v13 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
    v17 = [(GKService *)self clientProxy];
    v18 = [v17 replyQueue];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000CB8E0;
    v23 = &unk_100360FA0;
    v24 = v12;
    dispatch_async(v18, &v20);
  }

  v25[0] = @"challenge-id";
  v25[1] = @"invite-code";
  v26[0] = v10;
  v26[1] = v11;
  v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2, v20, v21, v22, v23];
  [(GKChallengeServicePrivate *)self getStringWithRequest:v19 bagKey:@"gk-challenge-detail" stringResponseKey:@"invite-code-status" completionHandler:v12];
}

- (void)compareLeaderboardChallengeWithPlayerID:(id)a3 otherPlayerID:(id)a4 bundleID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = @"player-id";
  v18[1] = @"compare-to-player-id";
  v19[0] = v10;
  v19[1] = v11;
  v13 = a6;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:@"bundle-id"];
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v17 = [(GKService *)self clientProxy];
  [v16 readEntityWithRequest:v15 bagKey:@"gk-challenge-compare" includeStaleCacheData:0 clientProxy:v17 completionHandler:v13 entityMaker:&stru_100365698];
}

- (void)getLeaderboardChallengesCompletedWithPlayerID:(id)a3 type:(id)a4 bundleID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = @"player-id";
  v18[1] = @"type";
  v19[0] = v10;
  v19[1] = v11;
  v13 = a6;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:@"bundle-id"];
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v17 = [(GKService *)self clientProxy];
  [v16 readEntityWithRequest:v15 bagKey:@"gk-challenge-get-completed" includeStaleCacheData:0 clientProxy:v17 completionHandler:v13 entityMaker:&stru_1003656B8];
}

- (void)getLeaderboardCompletedChallengeSummaryForPlayerID:(id)a3 type:(id)a4 bundleID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = @"player-id";
  v18[1] = @"type";
  v19[0] = v10;
  v19[1] = v11;
  v13 = a6;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:@"bundle-id"];
  }

  v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v17 = [(GKService *)self clientProxy];
  [v16 readEntityWithRequest:v15 bagKey:@"gk-challenge-get-completed-summary" includeStaleCacheData:0 clientProxy:v17 completionHandler:v13 entityMaker:&stru_1003656D8];
}

- (void)leaveLeaderboardChallengeWithChallengeID:(id)a3 playerID:(id)a4 completionHandler:(id)a5
{
  v12[0] = @"challenge-id";
  v12[1] = @"player-id";
  v13[0] = a3;
  v13[1] = a4;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(GKChallengeServicePrivate *)self getStringWithRequest:v11 bagKey:@"gk-challenge-leave" stringResponseKey:@"response-status" completionHandler:v8];
}

- (void)getActiveLeaderboardChallengeDetailsForPlayerID:(id)a3 bundleID:(id)a4 allowStaleChallengeDetailsData:(BOOL)a5 completionHandler:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CC05C;
  v10[3] = &unk_100365700;
  v11 = self;
  v12 = a6;
  v13 = a5;
  v9 = v12;
  [(GKChallengeServicePrivate *)v11 getLeaderboardChallengeSummaryForPlayerID:a3 bundleID:a4 completionHandler:v10];
}

- (void)getLeaderboardChallengeDetailsForChallengeIDs:(id)a3 allowStaleData:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v21 = a5;
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 948, "[GKChallengeServicePrivate getLeaderboardChallengeDetailsForChallengeIDs:allowStaleData:completionHandler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v8;
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
        v27 = a4;
        v26 = v10;
        [v26 perform:v25];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CC554;
  v22[3] = &unk_100360EB0;
  v23 = v10;
  v24 = v21;
  v19 = v10;
  v20 = v21;
  [v19 notifyOnQueue:v18 block:v22];
}

- (void)getStringWithRequest:(id)a3 bagKey:(id)a4 stringResponseKey:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v15 = [(GKService *)self clientProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000CC724;
  v18[3] = &unk_100363A58;
  v19 = v10;
  v20 = v11;
  v18[4] = self;
  v16 = v10;
  v17 = v11;
  [v14 issueRequest:v13 bagKey:v12 clientProxy:v15 handler:v18];
}

@end
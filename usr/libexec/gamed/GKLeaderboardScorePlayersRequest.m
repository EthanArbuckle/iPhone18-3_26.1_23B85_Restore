@interface GKLeaderboardScorePlayersRequest
- (id)serverRequestWithService:(id)a3;
- (void)generateScoresFromServerResponse:(id)a3 service:(id)a4 context:(id)a5 timeToLive:(double)a6 handler:(id)a7;
- (void)loadScoresWithService:(id)a3 context:(id)a4 handler:(id)a5;
@end

@implementation GKLeaderboardScorePlayersRequest

- (id)serverRequestWithService:(id)a3
{
  v4 = [a3 localPlayer];
  v5 = [v4 playerID];

  v6 = [(GKLeaderboardScorePlayersRequest *)self playerInternals];
  v7 = [v6 _gkMapWithBlock:&stru_100366760];

  if (v7)
  {
    if (([v7 containsObject:v5] & 1) == 0)
    {
      v8 = [v7 arrayByAddingObject:v5];

      v7 = v8;
    }
  }

  else
  {
    v24 = v5;
    v7 = [NSArray arrayWithObjects:&v24 count:1];
  }

  v22[0] = @"game";
  v9 = [(GKLeaderboardScorePlayersRequest *)self gameBundleID];
  v21 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v10;
  v22[1] = @"time-scope";
  v11 = [(GKLeaderboardScorePlayersRequest *)self serverTimeScope];
  v23[1] = v11;
  v22[2] = @"player-scope";
  v12 = [(GKLeaderboardScorePlayersRequest *)self serverPlayerScope];
  v22[3] = @"player-ids";
  v23[2] = v12;
  v23[3] = v7;
  v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

  v14 = [NSMutableDictionary dictionaryWithDictionary:v13];
  v15 = [(GKLeaderboardScorePlayersRequest *)self identifier];

  if (v15)
  {
    v16 = [(GKLeaderboardScorePlayersRequest *)self identifier];
  }

  else
  {
    v17 = [(GKLeaderboardScorePlayersRequest *)self groupIdentifier];

    if (!v17)
    {
      goto LABEL_10;
    }

    v16 = [(GKLeaderboardScorePlayersRequest *)self groupIdentifier];
  }

  v18 = v16;
  [v14 setObject:v16 forKeyedSubscript:@"category"];

LABEL_10:

  return v14;
}

- (void)generateScoresFromServerResponse:(id)a3 service:(id)a4 context:(id)a5 timeToLive:(double)a6 handler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a5;
  v15 = [v12 clientProxy];
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 311, "[GKLeaderboardScorePlayersRequest(GKGameStatService) generateScoresFromServerResponse:service:context:timeToLive:handler:]"];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v16 context:v14 client:v15];

  if (v11)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000F5FC8;
    v24[3] = &unk_1003626D8;
    v24[4] = self;
    v25 = v11;
    v26 = v17;
    v27 = v12;
    [v26 performOnManagedObjectContext:v24];
  }

  v18 = [v15 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F63C4;
  v21[3] = &unk_100360EB0;
  v22 = v17;
  v23 = v13;
  v19 = v17;
  v20 = v13;
  [v19 notifyOnQueue:v18 block:v21];
}

- (void)loadScoresWithService:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 clientProxy];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 358, "[GKLeaderboardScorePlayersRequest(GKGameStatService) loadScoresWithService:context:handler:]"];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v12 context:v9 client:v11];

  v14 = [v11 replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F6648;
  v23[3] = &unk_100361BF8;
  v23[4] = self;
  v15 = v8;
  v24 = v15;
  v16 = v11;
  v25 = v16;
  v17 = v13;
  v26 = v17;
  v18 = v9;
  v27 = v18;
  [v17 performOnQueue:v14 block:v23];

  if (v10)
  {
    v19 = [v16 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F69C8;
    v20[3] = &unk_100360EB0;
    v22 = v10;
    v21 = v17;
    [v21 notifyOnQueue:v19 block:v20];
  }
}

@end
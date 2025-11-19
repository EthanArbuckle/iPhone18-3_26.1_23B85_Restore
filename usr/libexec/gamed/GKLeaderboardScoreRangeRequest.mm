@interface GKLeaderboardScoreRangeRequest
- (id)serverRequestWithService:(id)a3;
- (void)generateScoresFromServerResponse:(id)a3 service:(id)a4 context:(id)a5 timeToLive:(double)a6 handler:(id)a7;
- (void)loadScoresWithService:(id)a3 context:(id)a4 handler:(id)a5;
- (void)sanitizeRange;
@end

@implementation GKLeaderboardScoreRangeRequest

- (void)sanitizeRange
{
  v2 = *(self + OBJC_IVAR___GKLeaderboardScoreRangeRequest__range);
  v3 = vcgtq_u64(v2, vdupq_n_s64(1uLL));
  *(self + OBJC_IVAR___GKLeaderboardScoreRangeRequest__range) = vsubq_s64(vandq_s8(v2, v3), vmvnq_s8(v3));
}

- (id)serverRequestWithService:(id)a3
{
  v20[0] = @"game";
  v18 = @"bundle-id";
  v4 = [(GKLeaderboardScoreRangeRequest *)self gameBundleID];
  v19 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v5;
  v20[1] = @"time-scope";
  v6 = [(GKLeaderboardScoreRangeRequest *)self serverTimeScope];
  v21[1] = v6;
  v20[2] = @"player-scope";
  v7 = [(GKLeaderboardScoreRangeRequest *)self serverPlayerScope];
  v21[2] = v7;
  v20[3] = @"count";
  [(GKLeaderboardScoreRangeRequest *)self range];
  v9 = [NSNumber numberWithInteger:v8];
  v21[3] = v9;
  v20[4] = @"starting-rank";
  v10 = [NSNumber numberWithInteger:[(GKLeaderboardScoreRangeRequest *)self range]];
  v21[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];
  v13 = [(GKLeaderboardScoreRangeRequest *)self identifier];

  if (v13)
  {
    v14 = [(GKLeaderboardScoreRangeRequest *)self identifier];
  }

  else
  {
    v15 = [(GKLeaderboardScoreRangeRequest *)self groupIdentifier];

    if (!v15)
    {
      goto LABEL_6;
    }

    v14 = [(GKLeaderboardScoreRangeRequest *)self groupIdentifier];
  }

  v16 = v14;
  [v12 setObject:v14 forKeyedSubscript:@"category"];

LABEL_6:

  return v12;
}

- (void)generateScoresFromServerResponse:(id)a3 service:(id)a4 context:(id)a5 timeToLive:(double)a6 handler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a5;
  v15 = [v12 clientProxy];
  v16 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 196, "[GKLeaderboardScoreRangeRequest(GKGameStatService) generateScoresFromServerResponse:service:context:timeToLive:handler:]"];
  v17 = [GKCacheTransactionGroup transactionGroupWithName:v16 context:v14 client:v15];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000F51BC;
  v27[3] = &unk_1003626D8;
  v28 = v11;
  v29 = self;
  v18 = v17;
  v30 = v18;
  v31 = v12;
  v19 = v12;
  v20 = v11;
  [v18 performOnManagedObjectContext:v27];
  v21 = [v15 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F54B4;
  v24[3] = &unk_100360EB0;
  v25 = v18;
  v26 = v13;
  v22 = v18;
  v23 = v13;
  [v22 notifyOnQueue:v21 block:v24];
}

- (void)loadScoresWithService:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 clientProxy];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreRequest+GKGameStatService.m", 240, "[GKLeaderboardScoreRangeRequest(GKGameStatService) loadScoresWithService:context:handler:]"];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v12 context:v9 client:v11];

  v14 = [v11 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F5720;
  v24[3] = &unk_100361F90;
  v24[4] = self;
  v25 = v8;
  v15 = v13;
  v26 = v15;
  v27 = v9;
  v16 = v9;
  v17 = v8;
  [v15 performOnQueue:v14 block:v24];

  v18 = [v11 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F5AC4;
  v21[3] = &unk_100360EB0;
  v22 = v15;
  v23 = v10;
  v19 = v15;
  v20 = v10;
  [v19 notifyOnQueue:v18 block:v21];
}

@end
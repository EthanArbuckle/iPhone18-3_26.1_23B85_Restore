@interface GKScoreNetworkRequest
- (GKScoreNetworkRequest)initWithScores:(id)a3 bundleID:(id)a4 eligibleChallenges:(id)a5;
- (GKScoreNetworkRequest)initWithTask:(id)a3;
- (NSString)description;
- (id)mergeRequestData:(id)a3 additional:(id)a4;
- (id)postBody;
- (id)taskInfo;
- (int64_t)numberOfRequests;
- (void)removeFromStore:(id)a3;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKScoreNetworkRequest

- (GKScoreNetworkRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKScoreNetworkRequest;
  v5 = [(GKScoreNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKScoreNetworkRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKScoreNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (GKScoreNetworkRequest)initWithScores:(id)a3 bundleID:(id)a4 eligibleChallenges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = GKScoreNetworkRequest;
  v11 = [(GKScoreNetworkRequest *)&v31 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    [(GKScoreNetworkRequest *)v11 setUuid:v13];

    v14 = _localPlayerID();
    [(GKScoreNetworkRequest *)v11 setPlayerID:v14];

    [(GKScoreNetworkRequest *)v11 setBundleID:v9];
    v15 = objc_alloc_init(NSMutableDictionary);
    [(GKScoreNetworkRequest *)v11 setRequestData:v15];

    v16 = objc_alloc_init(NSMutableSet);
    v17 = [(GKScoreNetworkRequest *)v11 requestData];
    v33 = @"RequestDataKey";
    v34 = v16;
    v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v19 = mergeValuesForKeyWithDictionary(v17, v18);
    [(GKScoreNetworkRequest *)v11 setRequestData:v19];

    [(GKScoreNetworkRequest *)v11 setChallengeIDs:v10];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        v24 = 0;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v27 + 1) + 8 * v24) serverRepresentation];
          [v16 addObject:v25];

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }
  }

  return v11;
}

- (int64_t)numberOfRequests
{
  v2 = [(GKScoreNetworkRequest *)self requestData];
  v3 = [v2 objectForKeyedSubscript:@"RequestDataKey"];

  v4 = [v3 count];
  return v4;
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKScoreNetworkRequest *)self requestData];
  v5 = [v4 objectForKeyedSubscript:@"RequestDataKey"];

  v6 = [v5 allObjects];
  [v3 setObject:v6 forKeyedSubscript:@"scores"];

  v7 = [(GKScoreNetworkRequest *)self challengeIDs];
  [v3 setObject:v7 forKeyedSubscript:@"eligible-challenges"];

  return v3;
}

- (void)removeFromStore:(id)a3
{
  v4 = a3;
  v5 = [v4 currentTasks];
  v6 = [(GKScoreNetworkRequest *)self bundleID];
  [v5 removeObjectForKey:v6];

  v8 = [v4 pendingRequests];

  v7 = [(GKScoreNetworkRequest *)self bundleID];
  [v8 removeObjectForKey:v7];
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKScoreNetworkRequest *)self playerID];
  [v3 setObject:v4 forKeyedSubscript:@"PlayerIDKey"];

  v5 = [(GKScoreNetworkRequest *)self requestData];
  v6 = [v5 objectForKeyedSubscript:@"RequestDataKey"];

  v7 = [v6 allObjects];
  [v3 setObject:v7 forKeyedSubscript:@"RequestDataKey"];

  v8 = [objc_opt_class() bagKey];
  [v3 setObject:v8 forKeyedSubscript:@"BagKeyKey"];

  v9 = [(GKScoreNetworkRequest *)self uuid];
  [v3 setObject:v9 forKeyedSubscript:@"UUIDKey"];

  v10 = [(GKScoreNetworkRequest *)self bundleID];
  [v3 setObject:v10 forKeyedSubscript:@"BundleIDKey"];

  v11 = [(GKScoreNetworkRequest *)self challengeIDs];
  [v3 setObject:v11 forKeyedSubscript:@"challengesIDKey"];

  return v3;
}

- (id)mergeRequestData:(id)a3 additional:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    v14 = &__NSDictionary0__struct;
    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  if (!v6)
  {
    v15 = v5;
    goto LABEL_12;
  }

  v8 = [v5 objectForKeyedSubscript:@"RequestDataKey"];

  if (!v8)
  {
LABEL_10:
    v15 = v7;
LABEL_12:
    v14 = [v15 copy];
    goto LABEL_13;
  }

  v9 = [v5 mutableCopy];
  v10 = [v7 objectForKeyedSubscript:@"RequestDataKey"];
  v11 = [v9 objectForKeyedSubscript:@"RequestDataKey"];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v11 mutableCopy];
    [v13 unionSet:v10];
    [v9 setObject:v13 forKeyedSubscript:@"RequestDataKey"];
  }

  v14 = [v9 copy];

LABEL_13:

  return v14;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  [(GKScoreNetworkRequest *)self setCoalescingAgent:0];
  [(GKScoreNetworkRequest *)self setIssueRequests:0];
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKScoreNetworkRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKScoreNetworkRequest *)self setPlayerID:v6];

  v7 = [v4 objectForKeyedSubscript:@"BundleIDKey"];
  [(GKScoreNetworkRequest *)self setBundleID:v7];

  v8 = objc_alloc_init(NSMutableDictionary);
  [(GKScoreNetworkRequest *)self setRequestData:v8];

  v9 = [v4 objectForKeyedSubscript:@"challengesIDKey"];
  [(GKScoreNetworkRequest *)self setChallengeIDs:v9];

  v10 = [v4 objectForKeyedSubscript:@"RequestDataKey"];

  v11 = [(GKScoreNetworkRequest *)self requestData];
  v15 = @"RequestDataKey";
  v12 = [NSMutableSet setWithArray:v10];
  v16 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v14 = mergeValuesForKeyWithDictionary(v11, v13);
  [(GKScoreNetworkRequest *)self setRequestData:v14];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(GKScoreNetworkRequest *)self playerID];
  v5 = [(GKScoreNetworkRequest *)self requestData];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  v7 = [(GKScoreNetworkRequest *)self challengeIDs];
  v8 = [NSString stringWithFormat:@"%@: PlayerID: %@ Scores: %@ challengeIDs: %@", v3, v4, v6, v7];

  return v8;
}

@end
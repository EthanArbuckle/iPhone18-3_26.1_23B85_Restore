@interface GKScoreNetworkRequest
- (GKScoreNetworkRequest)initWithScores:(id)scores bundleID:(id)d eligibleChallenges:(id)challenges;
- (GKScoreNetworkRequest)initWithTask:(id)task;
- (NSString)description;
- (id)mergeRequestData:(id)data additional:(id)additional;
- (id)postBody;
- (id)taskInfo;
- (int64_t)numberOfRequests;
- (void)removeFromStore:(id)store;
- (void)updateWithTaskInfo:(id)info;
@end

@implementation GKScoreNetworkRequest

- (GKScoreNetworkRequest)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = GKScoreNetworkRequest;
  v5 = [(GKScoreNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKScoreNetworkRequest *)v5 setNsurlTask:taskCopy];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    [(GKScoreNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (GKScoreNetworkRequest)initWithScores:(id)scores bundleID:(id)d eligibleChallenges:(id)challenges
{
  scoresCopy = scores;
  dCopy = d;
  challengesCopy = challenges;
  v31.receiver = self;
  v31.super_class = GKScoreNetworkRequest;
  v11 = [(GKScoreNetworkRequest *)&v31 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
    [(GKScoreNetworkRequest *)v11 setUuid:uUIDString];

    v14 = _localPlayerID();
    [(GKScoreNetworkRequest *)v11 setPlayerID:v14];

    [(GKScoreNetworkRequest *)v11 setBundleID:dCopy];
    v15 = objc_alloc_init(NSMutableDictionary);
    [(GKScoreNetworkRequest *)v11 setRequestData:v15];

    v16 = objc_alloc_init(NSMutableSet);
    requestData = [(GKScoreNetworkRequest *)v11 requestData];
    v33 = @"RequestDataKey";
    v34 = v16;
    v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v19 = mergeValuesForKeyWithDictionary(requestData, v18);
    [(GKScoreNetworkRequest *)v11 setRequestData:v19];

    [(GKScoreNetworkRequest *)v11 setChallengeIDs:challengesCopy];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = scoresCopy;
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

          serverRepresentation = [*(*(&v27 + 1) + 8 * v24) serverRepresentation];
          [v16 addObject:serverRepresentation];

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
  requestData = [(GKScoreNetworkRequest *)self requestData];
  v3 = [requestData objectForKeyedSubscript:@"RequestDataKey"];

  v4 = [v3 count];
  return v4;
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  requestData = [(GKScoreNetworkRequest *)self requestData];
  v5 = [requestData objectForKeyedSubscript:@"RequestDataKey"];

  allObjects = [v5 allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"scores"];

  challengeIDs = [(GKScoreNetworkRequest *)self challengeIDs];
  [v3 setObject:challengeIDs forKeyedSubscript:@"eligible-challenges"];

  return v3;
}

- (void)removeFromStore:(id)store
{
  storeCopy = store;
  currentTasks = [storeCopy currentTasks];
  bundleID = [(GKScoreNetworkRequest *)self bundleID];
  [currentTasks removeObjectForKey:bundleID];

  pendingRequests = [storeCopy pendingRequests];

  bundleID2 = [(GKScoreNetworkRequest *)self bundleID];
  [pendingRequests removeObjectForKey:bundleID2];
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  playerID = [(GKScoreNetworkRequest *)self playerID];
  [v3 setObject:playerID forKeyedSubscript:@"PlayerIDKey"];

  requestData = [(GKScoreNetworkRequest *)self requestData];
  v6 = [requestData objectForKeyedSubscript:@"RequestDataKey"];

  allObjects = [v6 allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"RequestDataKey"];

  bagKey = [objc_opt_class() bagKey];
  [v3 setObject:bagKey forKeyedSubscript:@"BagKeyKey"];

  uuid = [(GKScoreNetworkRequest *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"UUIDKey"];

  bundleID = [(GKScoreNetworkRequest *)self bundleID];
  [v3 setObject:bundleID forKeyedSubscript:@"BundleIDKey"];

  challengeIDs = [(GKScoreNetworkRequest *)self challengeIDs];
  [v3 setObject:challengeIDs forKeyedSubscript:@"challengesIDKey"];

  return v3;
}

- (id)mergeRequestData:(id)data additional:(id)additional
{
  dataCopy = data;
  additionalCopy = additional;
  v7 = additionalCopy;
  if (!(dataCopy | additionalCopy))
  {
    v14 = &__NSDictionary0__struct;
    goto LABEL_13;
  }

  if (!dataCopy)
  {
    goto LABEL_10;
  }

  if (!additionalCopy)
  {
    v15 = dataCopy;
    goto LABEL_12;
  }

  v8 = [dataCopy objectForKeyedSubscript:@"RequestDataKey"];

  if (!v8)
  {
LABEL_10:
    v15 = v7;
LABEL_12:
    v14 = [v15 copy];
    goto LABEL_13;
  }

  v9 = [dataCopy mutableCopy];
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

- (void)updateWithTaskInfo:(id)info
{
  infoCopy = info;
  [(GKScoreNetworkRequest *)self setCoalescingAgent:0];
  [(GKScoreNetworkRequest *)self setIssueRequests:0];
  v5 = [infoCopy objectForKeyedSubscript:@"UUIDKey"];
  [(GKScoreNetworkRequest *)self setUuid:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKScoreNetworkRequest *)self setPlayerID:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"BundleIDKey"];
  [(GKScoreNetworkRequest *)self setBundleID:v7];

  v8 = objc_alloc_init(NSMutableDictionary);
  [(GKScoreNetworkRequest *)self setRequestData:v8];

  v9 = [infoCopy objectForKeyedSubscript:@"challengesIDKey"];
  [(GKScoreNetworkRequest *)self setChallengeIDs:v9];

  v10 = [infoCopy objectForKeyedSubscript:@"RequestDataKey"];

  requestData = [(GKScoreNetworkRequest *)self requestData];
  v15 = @"RequestDataKey";
  v12 = [NSMutableSet setWithArray:v10];
  v16 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v14 = mergeValuesForKeyWithDictionary(requestData, v13);
  [(GKScoreNetworkRequest *)self setRequestData:v14];
}

- (NSString)description
{
  v3 = objc_opt_class();
  playerID = [(GKScoreNetworkRequest *)self playerID];
  requestData = [(GKScoreNetworkRequest *)self requestData];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestData count]);
  challengeIDs = [(GKScoreNetworkRequest *)self challengeIDs];
  v8 = [NSString stringWithFormat:@"%@: PlayerID: %@ Scores: %@ challengeIDs: %@", v3, playerID, v6, challengeIDs];

  return v8;
}

@end
@interface GKInstanceScoreNetworkRequest
- (BOOL)isDuplicateRequest:(id)request;
- (GKInstanceScoreNetworkRequest)initWithInstanceScore:(id)score bundleID:(id)d challenges:(id)challenges;
- (GKInstanceScoreNetworkRequest)initWithTask:(id)task;
- (id)requestIdentifier;
- (id)taskInfo;
- (void)updateWithTaskInfo:(id)info;
@end

@implementation GKInstanceScoreNetworkRequest

- (GKInstanceScoreNetworkRequest)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = GKInstanceScoreNetworkRequest;
  v5 = [(GKInstanceScoreNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKInstanceScoreNetworkRequest *)v5 setNsurlTask:taskCopy];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    [(GKInstanceScoreNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (void)updateWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"UUIDKey"];
  [(GKInstanceScoreNetworkRequest *)self setUuid:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKInstanceScoreNetworkRequest *)self setPlayerID:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"BundleIDKey"];
  [(GKInstanceScoreNetworkRequest *)self setBundleID:v7];

  v8 = [infoCopy objectForKeyedSubscript:@"RequestDataKey"];
  [(GKInstanceScoreNetworkRequest *)self setRequestData:v8];

  v9 = [infoCopy objectForKeyedSubscript:@"RequestValueKey"];
  -[GKInstanceScoreNetworkRequest setValue:](self, "setValue:", [v9 longValue]);

  v10 = [infoCopy objectForKeyedSubscript:@"RequestLeaderboardIDKey"];

  [(GKInstanceScoreNetworkRequest *)self setLeaderboardID:v10];
}

- (GKInstanceScoreNetworkRequest)initWithInstanceScore:(id)score bundleID:(id)d challenges:(id)challenges
{
  scoreCopy = score;
  dCopy = d;
  challengesCopy = challenges;
  v27.receiver = self;
  v27.super_class = GKInstanceScoreNetworkRequest;
  v11 = [(GKInstanceScoreNetworkRequest *)&v27 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
    [(GKInstanceScoreNetworkRequest *)v11 setUuid:uUIDString];

    v14 = _localPlayerID();
    [(GKInstanceScoreNetworkRequest *)v11 setPlayerID:v14];

    [(GKInstanceScoreNetworkRequest *)v11 setBundleID:dCopy];
    serverRepresentation = [scoreCopy serverRepresentation];
    v16 = [serverRepresentation mutableCopy];
    [(GKInstanceScoreNetworkRequest *)v11 setRequestData:v16];

    requestData = [(GKInstanceScoreNetworkRequest *)v11 requestData];
    v30[0] = @"leaderboard-id";
    leaderboardIdentifier = [scoreCopy leaderboardIdentifier];
    v30[1] = @"player-id";
    v31[0] = leaderboardIdentifier;
    playerID = [(GKInstanceScoreNetworkRequest *)v11 playerID];
    v31[1] = playerID;
    v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v21 = mergeValuesForKeyWithDictionary(requestData, v20);
    [(GKInstanceScoreNetworkRequest *)v11 setRequestData:v21];

    if (challengesCopy)
    {
      requestData2 = [(GKInstanceScoreNetworkRequest *)v11 requestData];
      v28 = @"challenges";
      v29 = challengesCopy;
      v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v24 = mergeValuesForKeyWithDictionary(requestData2, v23);
      [(GKInstanceScoreNetworkRequest *)v11 setRequestData:v24];
    }

    -[GKInstanceScoreNetworkRequest setValue:](v11, "setValue:", [scoreCopy value]);
    leaderboardIdentifier2 = [scoreCopy leaderboardIdentifier];
    [(GKInstanceScoreNetworkRequest *)v11 setLeaderboardID:leaderboardIdentifier2];
  }

  return v11;
}

- (BOOL)isDuplicateRequest:(id)request
{
  requestCopy = request;
  requestData = [(GKInstanceScoreNetworkRequest *)self requestData];
  requestData2 = [requestCopy requestData];

  LOBYTE(requestCopy) = [requestData isEqualToDictionary:requestData2];
  return requestCopy;
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  playerID = [(GKInstanceScoreNetworkRequest *)self playerID];
  [v3 setObject:playerID forKeyedSubscript:@"PlayerIDKey"];

  requestData = [(GKInstanceScoreNetworkRequest *)self requestData];
  [v3 setObject:requestData forKeyedSubscript:@"RequestDataKey"];

  bagKey = [objc_opt_class() bagKey];
  [v3 setObject:bagKey forKeyedSubscript:@"BagKeyKey"];

  uuid = [(GKInstanceScoreNetworkRequest *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"UUIDKey"];

  bundleID = [(GKInstanceScoreNetworkRequest *)self bundleID];
  [v3 setObject:bundleID forKeyedSubscript:@"BundleIDKey"];

  v9 = [NSNumber numberWithLongLong:[(GKInstanceScoreNetworkRequest *)self value]];
  [v3 setObject:v9 forKeyedSubscript:@"RequestValueKey"];

  leaderboardID = [(GKInstanceScoreNetworkRequest *)self leaderboardID];
  [v3 setObject:leaderboardID forKeyedSubscript:@"RequestLeaderboardIDKey"];

  return v3;
}

- (id)requestIdentifier
{
  v3 = networkRequestIdentifier(self);
  leaderboardID = [(GKInstanceScoreNetworkRequest *)self leaderboardID];
  v5 = [NSNumber numberWithLongLong:[(GKInstanceScoreNetworkRequest *)self value]];
  v6 = [NSString stringWithFormat:@"%@%@%@", v3, leaderboardID, v5];

  return v6;
}

@end
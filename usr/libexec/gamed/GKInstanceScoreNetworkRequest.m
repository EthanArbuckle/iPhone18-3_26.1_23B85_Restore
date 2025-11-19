@interface GKInstanceScoreNetworkRequest
- (BOOL)isDuplicateRequest:(id)a3;
- (GKInstanceScoreNetworkRequest)initWithInstanceScore:(id)a3 bundleID:(id)a4 challenges:(id)a5;
- (GKInstanceScoreNetworkRequest)initWithTask:(id)a3;
- (id)requestIdentifier;
- (id)taskInfo;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKInstanceScoreNetworkRequest

- (GKInstanceScoreNetworkRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKInstanceScoreNetworkRequest;
  v5 = [(GKInstanceScoreNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKInstanceScoreNetworkRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKInstanceScoreNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKInstanceScoreNetworkRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKInstanceScoreNetworkRequest *)self setPlayerID:v6];

  v7 = [v4 objectForKeyedSubscript:@"BundleIDKey"];
  [(GKInstanceScoreNetworkRequest *)self setBundleID:v7];

  v8 = [v4 objectForKeyedSubscript:@"RequestDataKey"];
  [(GKInstanceScoreNetworkRequest *)self setRequestData:v8];

  v9 = [v4 objectForKeyedSubscript:@"RequestValueKey"];
  -[GKInstanceScoreNetworkRequest setValue:](self, "setValue:", [v9 longValue]);

  v10 = [v4 objectForKeyedSubscript:@"RequestLeaderboardIDKey"];

  [(GKInstanceScoreNetworkRequest *)self setLeaderboardID:v10];
}

- (GKInstanceScoreNetworkRequest)initWithInstanceScore:(id)a3 bundleID:(id)a4 challenges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = GKInstanceScoreNetworkRequest;
  v11 = [(GKInstanceScoreNetworkRequest *)&v27 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    [(GKInstanceScoreNetworkRequest *)v11 setUuid:v13];

    v14 = _localPlayerID();
    [(GKInstanceScoreNetworkRequest *)v11 setPlayerID:v14];

    [(GKInstanceScoreNetworkRequest *)v11 setBundleID:v9];
    v15 = [v8 serverRepresentation];
    v16 = [v15 mutableCopy];
    [(GKInstanceScoreNetworkRequest *)v11 setRequestData:v16];

    v17 = [(GKInstanceScoreNetworkRequest *)v11 requestData];
    v30[0] = @"leaderboard-id";
    v18 = [v8 leaderboardIdentifier];
    v30[1] = @"player-id";
    v31[0] = v18;
    v19 = [(GKInstanceScoreNetworkRequest *)v11 playerID];
    v31[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v21 = mergeValuesForKeyWithDictionary(v17, v20);
    [(GKInstanceScoreNetworkRequest *)v11 setRequestData:v21];

    if (v10)
    {
      v22 = [(GKInstanceScoreNetworkRequest *)v11 requestData];
      v28 = @"challenges";
      v29 = v10;
      v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v24 = mergeValuesForKeyWithDictionary(v22, v23);
      [(GKInstanceScoreNetworkRequest *)v11 setRequestData:v24];
    }

    -[GKInstanceScoreNetworkRequest setValue:](v11, "setValue:", [v8 value]);
    v25 = [v8 leaderboardIdentifier];
    [(GKInstanceScoreNetworkRequest *)v11 setLeaderboardID:v25];
  }

  return v11;
}

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKInstanceScoreNetworkRequest *)self requestData];
  v6 = [v4 requestData];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKInstanceScoreNetworkRequest *)self playerID];
  [v3 setObject:v4 forKeyedSubscript:@"PlayerIDKey"];

  v5 = [(GKInstanceScoreNetworkRequest *)self requestData];
  [v3 setObject:v5 forKeyedSubscript:@"RequestDataKey"];

  v6 = [objc_opt_class() bagKey];
  [v3 setObject:v6 forKeyedSubscript:@"BagKeyKey"];

  v7 = [(GKInstanceScoreNetworkRequest *)self uuid];
  [v3 setObject:v7 forKeyedSubscript:@"UUIDKey"];

  v8 = [(GKInstanceScoreNetworkRequest *)self bundleID];
  [v3 setObject:v8 forKeyedSubscript:@"BundleIDKey"];

  v9 = [NSNumber numberWithLongLong:[(GKInstanceScoreNetworkRequest *)self value]];
  [v3 setObject:v9 forKeyedSubscript:@"RequestValueKey"];

  v10 = [(GKInstanceScoreNetworkRequest *)self leaderboardID];
  [v3 setObject:v10 forKeyedSubscript:@"RequestLeaderboardIDKey"];

  return v3;
}

- (id)requestIdentifier
{
  v3 = networkRequestIdentifier(self);
  v4 = [(GKInstanceScoreNetworkRequest *)self leaderboardID];
  v5 = [NSNumber numberWithLongLong:[(GKInstanceScoreNetworkRequest *)self value]];
  v6 = [NSString stringWithFormat:@"%@%@%@", v3, v4, v5];

  return v6;
}

@end
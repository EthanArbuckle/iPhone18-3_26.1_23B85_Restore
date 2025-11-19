@interface GKChallengeNetworkRequest
- (BOOL)isDuplicateRequest:(id)a3;
- (GKChallengeNetworkRequest)initWithChallenges:(id)a3 bundleID:(id)a4;
- (GKChallengeNetworkRequest)initWithTask:(id)a3;
- (NSString)description;
- (id)postBody;
- (id)taskInfo;
- (void)mergeRequestData:(id)a3;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKChallengeNetworkRequest

- (GKChallengeNetworkRequest)initWithChallenges:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = GKChallengeNetworkRequest;
  v8 = [(GKChallengeNetworkRequest *)&v13 init];
  if (v8)
  {
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    [(GKChallengeNetworkRequest *)v8 setUuid:v10];

    v11 = _localPlayerID();
    [(GKChallengeNetworkRequest *)v8 setPlayerID:v11];

    [(GKChallengeNetworkRequest *)v8 setChallenges:v6];
    [(GKChallengeNetworkRequest *)v8 setBundleID:v7];
  }

  return v8;
}

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKChallengeNetworkRequest *)self challenges];
  v6 = [v4 challenges];

  LOBYTE(v4) = [v5 isEqualToSet:v6];
  return v4;
}

- (void)mergeRequestData:(id)a3
{
  v4 = a3;
  v6 = [(GKChallengeNetworkRequest *)self challenges];
  v5 = [v4 challenges];

  [v6 unionSet:v5];
}

- (GKChallengeNetworkRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKChallengeNetworkRequest;
  v5 = [(GKChallengeNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKChallengeNetworkRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKChallengeNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKChallengeNetworkRequest *)self challenges];
  v5 = [v4 allObjects];
  [v3 setObject:v5 forKeyedSubscript:@"challenges"];

  return v3;
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKChallengeNetworkRequest *)self playerID];
  [v3 setObject:v4 forKeyedSubscript:@"PlayerIDKey"];

  v5 = [(GKChallengeNetworkRequest *)self challenges];
  v6 = [v5 allObjects];
  [v3 setObject:v6 forKeyedSubscript:@"ChallengesTaskKey"];

  v7 = [objc_opt_class() bagKey];
  [v3 setObject:v7 forKeyedSubscript:@"BagKeyKey"];

  v8 = [(GKChallengeNetworkRequest *)self uuid];
  [v3 setObject:v8 forKeyedSubscript:@"UUIDKey"];

  v9 = [(GKChallengeNetworkRequest *)self bundleID];
  [v3 setObject:v9 forKeyedSubscript:@"BundleIDKey"];

  return v3;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKChallengeNetworkRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKChallengeNetworkRequest *)self setPlayerID:v6];

  v7 = [v4 objectForKeyedSubscript:@"ChallengesTaskKey"];
  v8 = [NSSet setWithArray:v7];
  v9 = [v8 mutableCopy];
  [(GKChallengeNetworkRequest *)self setChallenges:v9];

  v10 = [v4 objectForKeyedSubscript:@"BundleIDKey"];

  [(GKChallengeNetworkRequest *)self setBundleID:v10];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(GKChallengeNetworkRequest *)self playerID];
  v5 = [(GKChallengeNetworkRequest *)self challenges];
  v6 = [NSString stringWithFormat:@"%@: PlayerID: %@ Challenges: %@", v3, v4, v5];

  return v6;
}

@end
@interface GKChallengeNetworkRequest
- (BOOL)isDuplicateRequest:(id)request;
- (GKChallengeNetworkRequest)initWithChallenges:(id)challenges bundleID:(id)d;
- (GKChallengeNetworkRequest)initWithTask:(id)task;
- (NSString)description;
- (id)postBody;
- (id)taskInfo;
- (void)mergeRequestData:(id)data;
- (void)updateWithTaskInfo:(id)info;
@end

@implementation GKChallengeNetworkRequest

- (GKChallengeNetworkRequest)initWithChallenges:(id)challenges bundleID:(id)d
{
  challengesCopy = challenges;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = GKChallengeNetworkRequest;
  v8 = [(GKChallengeNetworkRequest *)&v13 init];
  if (v8)
  {
    v9 = +[NSUUID UUID];
    uUIDString = [v9 UUIDString];
    [(GKChallengeNetworkRequest *)v8 setUuid:uUIDString];

    v11 = _localPlayerID();
    [(GKChallengeNetworkRequest *)v8 setPlayerID:v11];

    [(GKChallengeNetworkRequest *)v8 setChallenges:challengesCopy];
    [(GKChallengeNetworkRequest *)v8 setBundleID:dCopy];
  }

  return v8;
}

- (BOOL)isDuplicateRequest:(id)request
{
  requestCopy = request;
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  challenges2 = [requestCopy challenges];

  LOBYTE(requestCopy) = [challenges isEqualToSet:challenges2];
  return requestCopy;
}

- (void)mergeRequestData:(id)data
{
  dataCopy = data;
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  challenges2 = [dataCopy challenges];

  [challenges unionSet:challenges2];
}

- (GKChallengeNetworkRequest)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = GKChallengeNetworkRequest;
  v5 = [(GKChallengeNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKChallengeNetworkRequest *)v5 setNsurlTask:taskCopy];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    [(GKChallengeNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  allObjects = [challenges allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"challenges"];

  return v3;
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  playerID = [(GKChallengeNetworkRequest *)self playerID];
  [v3 setObject:playerID forKeyedSubscript:@"PlayerIDKey"];

  challenges = [(GKChallengeNetworkRequest *)self challenges];
  allObjects = [challenges allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"ChallengesTaskKey"];

  bagKey = [objc_opt_class() bagKey];
  [v3 setObject:bagKey forKeyedSubscript:@"BagKeyKey"];

  uuid = [(GKChallengeNetworkRequest *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"UUIDKey"];

  bundleID = [(GKChallengeNetworkRequest *)self bundleID];
  [v3 setObject:bundleID forKeyedSubscript:@"BundleIDKey"];

  return v3;
}

- (void)updateWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"UUIDKey"];
  [(GKChallengeNetworkRequest *)self setUuid:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKChallengeNetworkRequest *)self setPlayerID:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"ChallengesTaskKey"];
  v8 = [NSSet setWithArray:v7];
  v9 = [v8 mutableCopy];
  [(GKChallengeNetworkRequest *)self setChallenges:v9];

  v10 = [infoCopy objectForKeyedSubscript:@"BundleIDKey"];

  [(GKChallengeNetworkRequest *)self setBundleID:v10];
}

- (NSString)description
{
  v3 = objc_opt_class();
  playerID = [(GKChallengeNetworkRequest *)self playerID];
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  v6 = [NSString stringWithFormat:@"%@: PlayerID: %@ Challenges: %@", v3, playerID, challenges];

  return v6;
}

@end
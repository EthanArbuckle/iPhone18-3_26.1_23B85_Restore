@interface GKRemoveFriendNetworkRequest
- (BOOL)isDuplicateRequest:(id)request;
- (GKRemoveFriendNetworkRequest)initWithFriendPlayerID:(id)d;
- (GKRemoveFriendNetworkRequest)initWithTask:(id)task;
- (NSString)description;
- (id)postBody;
- (id)requestIdentifier;
- (id)taskInfo;
- (void)updateWithTaskInfo:(id)info;
@end

@implementation GKRemoveFriendNetworkRequest

- (id)postBody
{
  v5 = @"player-id";
  friendID = [(GKRemoveFriendNetworkRequest *)self friendID];
  v6 = friendID;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (GKRemoveFriendNetworkRequest)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = GKRemoveFriendNetworkRequest;
  v5 = [(GKRemoveFriendNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKRemoveFriendNetworkRequest *)v5 setNsurlTask:taskCopy];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    [(GKRemoveFriendNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (GKRemoveFriendNetworkRequest)initWithFriendPlayerID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = GKRemoveFriendNetworkRequest;
  v5 = [(GKRemoveFriendNetworkRequest *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    [(GKRemoveFriendNetworkRequest *)v5 setUuid:uUIDString];

    v8 = _localPlayerID();
    [(GKRemoveFriendNetworkRequest *)v5 setPlayerID:v8];

    [(GKRemoveFriendNetworkRequest *)v5 setFriendID:dCopy];
  }

  return v5;
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  playerID = [(GKRemoveFriendNetworkRequest *)self playerID];
  [v3 setObject:playerID forKeyedSubscript:@"PlayerIDKey"];

  friendID = [(GKRemoveFriendNetworkRequest *)self friendID];
  [v3 setObject:friendID forKeyedSubscript:@"FriendPlayerIDKey"];

  bagKey = [objc_opt_class() bagKey];
  [v3 setObject:bagKey forKeyedSubscript:@"BagKeyKey"];

  uuid = [(GKRemoveFriendNetworkRequest *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"UUIDKey"];

  return v3;
}

- (void)updateWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"UUIDKey"];
  [(GKRemoveFriendNetworkRequest *)self setUuid:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"FriendPlayerIDKey"];
  [(GKRemoveFriendNetworkRequest *)self setFriendID:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"PlayerIDKey"];

  [(GKRemoveFriendNetworkRequest *)self setPlayerID:v7];
}

- (id)requestIdentifier
{
  friendID = [(GKRemoveFriendNetworkRequest *)self friendID];
  playerID = [(GKRemoveFriendNetworkRequest *)self playerID];
  bagKey = [objc_opt_class() bagKey];
  v6 = [NSString stringWithFormat:@"%@+%@+%@", friendID, playerID, bagKey];

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  playerID = [(GKRemoveFriendNetworkRequest *)self playerID];
  friendID = [(GKRemoveFriendNetworkRequest *)self friendID];
  v6 = [NSString stringWithFormat:@"%@: PlayerID: %@ FriendPlayerID: %@", v3, playerID, friendID];

  return v6;
}

- (BOOL)isDuplicateRequest:(id)request
{
  requestCopy = request;
  friendID = [(GKRemoveFriendNetworkRequest *)self friendID];
  friendID2 = [requestCopy friendID];

  LOBYTE(requestCopy) = [friendID isEqualToString:friendID2];
  return requestCopy;
}

@end
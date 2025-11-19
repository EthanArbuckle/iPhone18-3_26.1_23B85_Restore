@interface GKRemoveFriendNetworkRequest
- (BOOL)isDuplicateRequest:(id)a3;
- (GKRemoveFriendNetworkRequest)initWithFriendPlayerID:(id)a3;
- (GKRemoveFriendNetworkRequest)initWithTask:(id)a3;
- (NSString)description;
- (id)postBody;
- (id)requestIdentifier;
- (id)taskInfo;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKRemoveFriendNetworkRequest

- (id)postBody
{
  v5 = @"player-id";
  v2 = [(GKRemoveFriendNetworkRequest *)self friendID];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (GKRemoveFriendNetworkRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKRemoveFriendNetworkRequest;
  v5 = [(GKRemoveFriendNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKRemoveFriendNetworkRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKRemoveFriendNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (GKRemoveFriendNetworkRequest)initWithFriendPlayerID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GKRemoveFriendNetworkRequest;
  v5 = [(GKRemoveFriendNetworkRequest *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    [(GKRemoveFriendNetworkRequest *)v5 setUuid:v7];

    v8 = _localPlayerID();
    [(GKRemoveFriendNetworkRequest *)v5 setPlayerID:v8];

    [(GKRemoveFriendNetworkRequest *)v5 setFriendID:v4];
  }

  return v5;
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKRemoveFriendNetworkRequest *)self playerID];
  [v3 setObject:v4 forKeyedSubscript:@"PlayerIDKey"];

  v5 = [(GKRemoveFriendNetworkRequest *)self friendID];
  [v3 setObject:v5 forKeyedSubscript:@"FriendPlayerIDKey"];

  v6 = [objc_opt_class() bagKey];
  [v3 setObject:v6 forKeyedSubscript:@"BagKeyKey"];

  v7 = [(GKRemoveFriendNetworkRequest *)self uuid];
  [v3 setObject:v7 forKeyedSubscript:@"UUIDKey"];

  return v3;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKRemoveFriendNetworkRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"FriendPlayerIDKey"];
  [(GKRemoveFriendNetworkRequest *)self setFriendID:v6];

  v7 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];

  [(GKRemoveFriendNetworkRequest *)self setPlayerID:v7];
}

- (id)requestIdentifier
{
  v3 = [(GKRemoveFriendNetworkRequest *)self friendID];
  v4 = [(GKRemoveFriendNetworkRequest *)self playerID];
  v5 = [objc_opt_class() bagKey];
  v6 = [NSString stringWithFormat:@"%@+%@+%@", v3, v4, v5];

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(GKRemoveFriendNetworkRequest *)self playerID];
  v5 = [(GKRemoveFriendNetworkRequest *)self friendID];
  v6 = [NSString stringWithFormat:@"%@: PlayerID: %@ FriendPlayerID: %@", v3, v4, v5];

  return v6;
}

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKRemoveFriendNetworkRequest *)self friendID];
  v6 = [v4 friendID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

@end
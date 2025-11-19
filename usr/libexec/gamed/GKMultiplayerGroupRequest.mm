@interface GKMultiplayerGroupRequest
- (BOOL)isDuplicateRequest:(id)a3;
- (GKMultiplayerGroupRequest)initWithGroupID:(id)a3;
- (GKMultiplayerGroupRequest)initWithTask:(id)a3;
- (id)postBody;
- (id)requestIdentifier;
- (id)taskInfo;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKMultiplayerGroupRequest

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKMultiplayerGroupRequest *)self playerGroupID];
  v6 = [v4 playerGroupID];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(GKMultiplayerGroupRequest *)self participants];
    v8 = [v4 participants];
    v9 = [v7 isEqualToSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (GKMultiplayerGroupRequest)initWithGroupID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GKMultiplayerGroupRequest;
  v5 = [(GKMultiplayerGroupRequest *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    [(GKMultiplayerGroupRequest *)v5 setUuid:v7];

    [(GKMultiplayerGroupRequest *)v5 setPlayerGroupID:v4];
    v8 = _localPlayerID();
    [(GKMultiplayerGroupRequest *)v5 setPlayerID:v8];
  }

  return v5;
}

- (GKMultiplayerGroupRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKMultiplayerGroupRequest;
  v5 = [(GKMultiplayerGroupRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKMultiplayerGroupRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKMultiplayerGroupRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKMultiplayerGroupRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"BundleIDKey"];
  [(GKMultiplayerGroupRequest *)self setBundleID:v6];

  v7 = [v4 objectForKeyedSubscript:@"RequestDataKey"];
  [(GKMultiplayerGroupRequest *)self setRequestData:v7];

  v8 = [v4 objectForKeyedSubscript:@"RequestParticipantsKey"];
  v9 = [NSSet setWithArray:v8];
  [(GKMultiplayerGroupRequest *)self setParticipants:v9];

  v10 = [v4 objectForKeyedSubscript:@"RequestPlayerGroupIDKey"];
  [(GKMultiplayerGroupRequest *)self setPlayerGroupID:v10];

  v11 = [v4 objectForKeyedSubscript:@"RequestPlayedAtKey"];
  -[GKMultiplayerGroupRequest setPlayedAt:](self, "setPlayedAt:", [v11 longValue]);

  v12 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];

  [(GKMultiplayerGroupRequest *)self setPlayerID:v12];
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKMultiplayerGroupRequest *)self uuid];
  [v3 setObject:v4 forKeyedSubscript:@"UUIDKey"];

  v5 = [(GKMultiplayerGroupRequest *)self bundleID];
  [v3 setObject:v5 forKeyedSubscript:@"BundleIDKey"];

  v6 = [(GKMultiplayerGroupRequest *)self requestData];
  [v3 setObject:v6 forKeyedSubscript:@"RequestDataKey"];

  v7 = [(GKMultiplayerGroupRequest *)self participants];
  v8 = [v7 allObjects];
  [v3 setObject:v8 forKeyedSubscript:@"RequestParticipantsKey"];

  v9 = [(GKMultiplayerGroupRequest *)self playerGroupID];
  [v3 setObject:v9 forKeyedSubscript:@"RequestPlayerGroupIDKey"];

  v10 = [NSNumber numberWithInteger:[(GKMultiplayerGroupRequest *)self playedAt]];
  [v3 setObject:v10 forKeyedSubscript:@"RequestPlayedAtKey"];

  v11 = [(GKMultiplayerGroupRequest *)self playerID];
  [v3 setObject:v11 forKeyedSubscript:@"PlayerIDKey"];

  v12 = [objc_opt_class() bagKey];
  [v3 setObject:v12 forKeyedSubscript:@"BagKeyKey"];

  return v3;
}

- (id)postBody
{
  v17[0] = @"player-group-id";
  v3 = [(GKMultiplayerGroupRequest *)self playerGroupID];
  v18[0] = v3;
  v17[1] = @"participants";
  v4 = [(GKMultiplayerGroupRequest *)self participants];
  v5 = [v4 allObjects];
  v18[1] = v5;
  v17[2] = @"game";
  bundleID = self->bundleID;
  v15 = @"bundle-id";
  v16 = bundleID;
  v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[2] = v7;
  v17[3] = @"played-at";
  v8 = [NSNumber numberWithInteger:[(GKMultiplayerGroupRequest *)self playedAt]];
  v18[3] = v8;
  v17[4] = @"properties";
  v9 = [(GKMultiplayerGroupRequest *)self requestData];
  v18[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  v11 = [v10 mutableCopy];

  v12 = [(GKMultiplayerGroupRequest *)self groupRelationshipType];

  if (v12)
  {
    v13 = [(GKMultiplayerGroupRequest *)self groupRelationshipType];
    [v11 setObject:v13 forKeyedSubscript:@"group-relation-type"];
  }

  return v11;
}

- (id)requestIdentifier
{
  v3 = [(GKMultiplayerGroupRequest *)self playerGroupID];
  v4 = [(GKMultiplayerGroupRequest *)self playerID];
  v5 = [objc_opt_class() bagKey];
  v6 = [NSString stringWithFormat:@"%@+%@+%@", v3, v4, v5];

  return v6;
}

@end
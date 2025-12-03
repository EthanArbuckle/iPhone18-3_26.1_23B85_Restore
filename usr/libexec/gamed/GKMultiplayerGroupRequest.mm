@interface GKMultiplayerGroupRequest
- (BOOL)isDuplicateRequest:(id)request;
- (GKMultiplayerGroupRequest)initWithGroupID:(id)d;
- (GKMultiplayerGroupRequest)initWithTask:(id)task;
- (id)postBody;
- (id)requestIdentifier;
- (id)taskInfo;
- (void)updateWithTaskInfo:(id)info;
@end

@implementation GKMultiplayerGroupRequest

- (BOOL)isDuplicateRequest:(id)request
{
  requestCopy = request;
  playerGroupID = [(GKMultiplayerGroupRequest *)self playerGroupID];
  playerGroupID2 = [requestCopy playerGroupID];
  if ([playerGroupID isEqualToString:playerGroupID2])
  {
    participants = [(GKMultiplayerGroupRequest *)self participants];
    participants2 = [requestCopy participants];
    v9 = [participants isEqualToSet:participants2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (GKMultiplayerGroupRequest)initWithGroupID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = GKMultiplayerGroupRequest;
  v5 = [(GKMultiplayerGroupRequest *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    [(GKMultiplayerGroupRequest *)v5 setUuid:uUIDString];

    [(GKMultiplayerGroupRequest *)v5 setPlayerGroupID:dCopy];
    v8 = _localPlayerID();
    [(GKMultiplayerGroupRequest *)v5 setPlayerID:v8];
  }

  return v5;
}

- (GKMultiplayerGroupRequest)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = GKMultiplayerGroupRequest;
  v5 = [(GKMultiplayerGroupRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKMultiplayerGroupRequest *)v5 setNsurlTask:taskCopy];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    [(GKMultiplayerGroupRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (void)updateWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"UUIDKey"];
  [(GKMultiplayerGroupRequest *)self setUuid:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"BundleIDKey"];
  [(GKMultiplayerGroupRequest *)self setBundleID:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"RequestDataKey"];
  [(GKMultiplayerGroupRequest *)self setRequestData:v7];

  v8 = [infoCopy objectForKeyedSubscript:@"RequestParticipantsKey"];
  v9 = [NSSet setWithArray:v8];
  [(GKMultiplayerGroupRequest *)self setParticipants:v9];

  v10 = [infoCopy objectForKeyedSubscript:@"RequestPlayerGroupIDKey"];
  [(GKMultiplayerGroupRequest *)self setPlayerGroupID:v10];

  v11 = [infoCopy objectForKeyedSubscript:@"RequestPlayedAtKey"];
  -[GKMultiplayerGroupRequest setPlayedAt:](self, "setPlayedAt:", [v11 longValue]);

  v12 = [infoCopy objectForKeyedSubscript:@"PlayerIDKey"];

  [(GKMultiplayerGroupRequest *)self setPlayerID:v12];
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  uuid = [(GKMultiplayerGroupRequest *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"UUIDKey"];

  bundleID = [(GKMultiplayerGroupRequest *)self bundleID];
  [v3 setObject:bundleID forKeyedSubscript:@"BundleIDKey"];

  requestData = [(GKMultiplayerGroupRequest *)self requestData];
  [v3 setObject:requestData forKeyedSubscript:@"RequestDataKey"];

  participants = [(GKMultiplayerGroupRequest *)self participants];
  allObjects = [participants allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"RequestParticipantsKey"];

  playerGroupID = [(GKMultiplayerGroupRequest *)self playerGroupID];
  [v3 setObject:playerGroupID forKeyedSubscript:@"RequestPlayerGroupIDKey"];

  v10 = [NSNumber numberWithInteger:[(GKMultiplayerGroupRequest *)self playedAt]];
  [v3 setObject:v10 forKeyedSubscript:@"RequestPlayedAtKey"];

  playerID = [(GKMultiplayerGroupRequest *)self playerID];
  [v3 setObject:playerID forKeyedSubscript:@"PlayerIDKey"];

  bagKey = [objc_opt_class() bagKey];
  [v3 setObject:bagKey forKeyedSubscript:@"BagKeyKey"];

  return v3;
}

- (id)postBody
{
  v17[0] = @"player-group-id";
  playerGroupID = [(GKMultiplayerGroupRequest *)self playerGroupID];
  v18[0] = playerGroupID;
  v17[1] = @"participants";
  participants = [(GKMultiplayerGroupRequest *)self participants];
  allObjects = [participants allObjects];
  v18[1] = allObjects;
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
  requestData = [(GKMultiplayerGroupRequest *)self requestData];
  v18[4] = requestData;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  v11 = [v10 mutableCopy];

  groupRelationshipType = [(GKMultiplayerGroupRequest *)self groupRelationshipType];

  if (groupRelationshipType)
  {
    groupRelationshipType2 = [(GKMultiplayerGroupRequest *)self groupRelationshipType];
    [v11 setObject:groupRelationshipType2 forKeyedSubscript:@"group-relation-type"];
  }

  return v11;
}

- (id)requestIdentifier
{
  playerGroupID = [(GKMultiplayerGroupRequest *)self playerGroupID];
  playerID = [(GKMultiplayerGroupRequest *)self playerID];
  bagKey = [objc_opt_class() bagKey];
  v6 = [NSString stringWithFormat:@"%@+%@+%@", playerGroupID, playerID, bagKey];

  return v6;
}

@end
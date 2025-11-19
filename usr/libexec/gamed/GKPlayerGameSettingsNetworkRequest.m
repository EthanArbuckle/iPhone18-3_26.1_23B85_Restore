@interface GKPlayerGameSettingsNetworkRequest
- (BOOL)isDuplicateRequest:(id)a3;
- (GKPlayerGameSettingsNetworkRequest)initWithBundleID:(id)a3 value:(id)a4;
- (GKPlayerGameSettingsNetworkRequest)initWithTask:(id)a3;
- (id)postBody;
- (id)taskInfo;
- (void)handleNetworkRequest:(id)a3 session:(id)a4 clientProxy:(id)a5;
- (void)removeFromStore:(id)a3;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKPlayerGameSettingsNetworkRequest

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKPlayerGameSettingsNetworkRequest *)self settingValue];
  v6 = [v4 settingValue];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (GKPlayerGameSettingsNetworkRequest)initWithBundleID:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = GKPlayerGameSettingsNetworkRequest;
  v8 = [(GKPlayerGameSettingsNetworkRequest *)&v13 init];
  if (v8)
  {
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    [(GKPlayerGameSettingsNetworkRequest *)v8 setUuid:v10];

    v11 = _localPlayerID();
    [(GKPlayerGameSettingsNetworkRequest *)v8 setPlayerID:v11];

    [(GKPlayerGameSettingsNetworkRequest *)v8 setBundleID:v6];
    [(GKPlayerGameSettingsNetworkRequest *)v8 setSettingValue:v7];
  }

  return v8;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKPlayerGameSettingsNetworkRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"BundleIDKey"];
  [(GKPlayerGameSettingsNetworkRequest *)self setBundleID:v6];

  v7 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKPlayerGameSettingsNetworkRequest *)self setPlayerID:v7];

  v8 = [v4 objectForKeyedSubscript:@"playerGameSettingsKey"];

  [(GKPlayerGameSettingsNetworkRequest *)self setSettingValue:v8];
}

- (void)handleNetworkRequest:(id)a3 session:(id)a4 clientProxy:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKPlayerGameSettingsNetworkRequest *)self nsurlRequest];
  v14 = [v11 mutableCopy];

  v12 = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  [v14 setValue:v12 forHTTPHeaderField:@"x-gk-bundle-id"];

  v13 = [v14 copy];
  [(GKPlayerGameSettingsNetworkRequest *)self setNsurlRequest:v13];

  handleStandardRequest(self, v10, v9, v8);
}

- (GKPlayerGameSettingsNetworkRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKPlayerGameSettingsNetworkRequest;
  v5 = [(GKPlayerGameSettingsNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKPlayerGameSettingsNetworkRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKPlayerGameSettingsNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (id)postBody
{
  v7[0] = @"allow-friend-list-access";
  v3 = [(GKPlayerGameSettingsNetworkRequest *)self settingValue];
  v7[1] = @"for-bundle-id";
  v8[0] = v3;
  v4 = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)removeFromStore:(id)a3
{
  v4 = a3;
  v5 = [(GKPlayerGameSettingsNetworkRequest *)self playerID];
  v6 = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  v9 = [v5 stringByAppendingString:v6];

  v7 = [v4 currentTasks];
  [v7 removeObjectForKey:v9];

  v8 = [v4 pendingRequests];

  [v8 removeObjectForKey:v9];
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKPlayerGameSettingsNetworkRequest *)self playerID];
  [v3 setObject:v4 forKeyedSubscript:@"PlayerIDKey"];

  v5 = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  [v3 setObject:v5 forKeyedSubscript:@"BundleIDKey"];

  v6 = [objc_opt_class() bagKey];
  [v3 setObject:v6 forKeyedSubscript:@"BagKeyKey"];

  v7 = [(GKPlayerGameSettingsNetworkRequest *)self uuid];
  [v3 setObject:v7 forKeyedSubscript:@"UUIDKey"];

  v8 = [(GKPlayerGameSettingsNetworkRequest *)self settingValue];
  [v3 setObject:v8 forKeyedSubscript:@"playerGameSettingsKey"];

  return v3;
}

@end
@interface GKPlayerGameSettingsNetworkRequest
- (BOOL)isDuplicateRequest:(id)request;
- (GKPlayerGameSettingsNetworkRequest)initWithBundleID:(id)d value:(id)value;
- (GKPlayerGameSettingsNetworkRequest)initWithTask:(id)task;
- (id)postBody;
- (id)taskInfo;
- (void)handleNetworkRequest:(id)request session:(id)session clientProxy:(id)proxy;
- (void)removeFromStore:(id)store;
- (void)updateWithTaskInfo:(id)info;
@end

@implementation GKPlayerGameSettingsNetworkRequest

- (BOOL)isDuplicateRequest:(id)request
{
  requestCopy = request;
  settingValue = [(GKPlayerGameSettingsNetworkRequest *)self settingValue];
  settingValue2 = [requestCopy settingValue];

  LOBYTE(requestCopy) = [settingValue isEqualToString:settingValue2];
  return requestCopy;
}

- (GKPlayerGameSettingsNetworkRequest)initWithBundleID:(id)d value:(id)value
{
  dCopy = d;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = GKPlayerGameSettingsNetworkRequest;
  v8 = [(GKPlayerGameSettingsNetworkRequest *)&v13 init];
  if (v8)
  {
    v9 = +[NSUUID UUID];
    uUIDString = [v9 UUIDString];
    [(GKPlayerGameSettingsNetworkRequest *)v8 setUuid:uUIDString];

    v11 = _localPlayerID();
    [(GKPlayerGameSettingsNetworkRequest *)v8 setPlayerID:v11];

    [(GKPlayerGameSettingsNetworkRequest *)v8 setBundleID:dCopy];
    [(GKPlayerGameSettingsNetworkRequest *)v8 setSettingValue:valueCopy];
  }

  return v8;
}

- (void)updateWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"UUIDKey"];
  [(GKPlayerGameSettingsNetworkRequest *)self setUuid:v5];

  v6 = [infoCopy objectForKeyedSubscript:@"BundleIDKey"];
  [(GKPlayerGameSettingsNetworkRequest *)self setBundleID:v6];

  v7 = [infoCopy objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKPlayerGameSettingsNetworkRequest *)self setPlayerID:v7];

  v8 = [infoCopy objectForKeyedSubscript:@"playerGameSettingsKey"];

  [(GKPlayerGameSettingsNetworkRequest *)self setSettingValue:v8];
}

- (void)handleNetworkRequest:(id)request session:(id)session clientProxy:(id)proxy
{
  proxyCopy = proxy;
  sessionCopy = session;
  requestCopy = request;
  nsurlRequest = [(GKPlayerGameSettingsNetworkRequest *)self nsurlRequest];
  v14 = [nsurlRequest mutableCopy];

  bundleID = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  [v14 setValue:bundleID forHTTPHeaderField:@"x-gk-bundle-id"];

  v13 = [v14 copy];
  [(GKPlayerGameSettingsNetworkRequest *)self setNsurlRequest:v13];

  handleStandardRequest(self, requestCopy, sessionCopy, proxyCopy);
}

- (GKPlayerGameSettingsNetworkRequest)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = GKPlayerGameSettingsNetworkRequest;
  v5 = [(GKPlayerGameSettingsNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKPlayerGameSettingsNetworkRequest *)v5 setNsurlTask:taskCopy];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    [(GKPlayerGameSettingsNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (id)postBody
{
  v7[0] = @"allow-friend-list-access";
  settingValue = [(GKPlayerGameSettingsNetworkRequest *)self settingValue];
  v7[1] = @"for-bundle-id";
  v8[0] = settingValue;
  bundleID = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  v8[1] = bundleID;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)removeFromStore:(id)store
{
  storeCopy = store;
  playerID = [(GKPlayerGameSettingsNetworkRequest *)self playerID];
  bundleID = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  v9 = [playerID stringByAppendingString:bundleID];

  currentTasks = [storeCopy currentTasks];
  [currentTasks removeObjectForKey:v9];

  pendingRequests = [storeCopy pendingRequests];

  [pendingRequests removeObjectForKey:v9];
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  playerID = [(GKPlayerGameSettingsNetworkRequest *)self playerID];
  [v3 setObject:playerID forKeyedSubscript:@"PlayerIDKey"];

  bundleID = [(GKPlayerGameSettingsNetworkRequest *)self bundleID];
  [v3 setObject:bundleID forKeyedSubscript:@"BundleIDKey"];

  bagKey = [objc_opt_class() bagKey];
  [v3 setObject:bagKey forKeyedSubscript:@"BagKeyKey"];

  uuid = [(GKPlayerGameSettingsNetworkRequest *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"UUIDKey"];

  settingValue = [(GKPlayerGameSettingsNetworkRequest *)self settingValue];
  [v3 setObject:settingValue forKeyedSubscript:@"playerGameSettingsKey"];

  return v3;
}

@end
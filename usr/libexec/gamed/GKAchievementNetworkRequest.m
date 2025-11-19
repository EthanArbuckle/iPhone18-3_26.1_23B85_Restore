@interface GKAchievementNetworkRequest
- (GKAchievementNetworkRequest)initWithAchievements:(id)a3 bundleID:(id)a4;
- (GKAchievementNetworkRequest)initWithTask:(id)a3;
- (NSString)description;
- (id)mergeRequestData:(id)a3 additional:(id)a4;
- (id)postBody;
- (id)taskInfo;
- (int64_t)numberOfRequests;
- (void)removeFromStore:(id)a3;
- (void)updateWithTaskInfo:(id)a3;
@end

@implementation GKAchievementNetworkRequest

- (GKAchievementNetworkRequest)initWithTask:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKAchievementNetworkRequest;
  v5 = [(GKAchievementNetworkRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKAchievementNetworkRequest *)v5 setNsurlTask:v4];
    v7 = [GKNetworkRequestManager dictionaryFromTaskDescription:v4];
    [(GKAchievementNetworkRequest *)v6 updateWithTaskInfo:v7];
  }

  return v6;
}

- (GKAchievementNetworkRequest)initWithAchievements:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = GKAchievementNetworkRequest;
  v8 = [(GKAchievementNetworkRequest *)&v32 init];
  if (v8)
  {
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    [(GKAchievementNetworkRequest *)v8 setUuid:v10];

    v11 = _localPlayerID();
    [(GKAchievementNetworkRequest *)v8 setPlayerID:v11];

    v26 = v7;
    [(GKAchievementNetworkRequest *)v8 setBundleID:v7];
    v12 = objc_alloc_init(NSMutableDictionary);
    [(GKAchievementNetworkRequest *)v8 setRequestData:v12];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v18 identifier];

          if (v19)
          {
            v20 = [(GKAchievementNetworkRequest *)v8 requestData];
            v21 = [v18 identifier];
            v33 = v21;
            v22 = [v18 serverRepresentation];
            v34 = v22;
            v23 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v24 = mergeValuesForKeyWithDictionary(v20, v23);
            [(GKAchievementNetworkRequest *)v8 setRequestData:v24];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v15);
    }

    v7 = v26;
    v6 = v27;
  }

  return v8;
}

- (int64_t)numberOfRequests
{
  v2 = [(GKAchievementNetworkRequest *)self requestData];
  v3 = [v2 allKeys];
  v4 = [v3 count];

  return v4;
}

- (void)updateWithTaskInfo:(id)a3
{
  v4 = a3;
  [(GKAchievementNetworkRequest *)self setCoalescingAgent:0];
  [(GKAchievementNetworkRequest *)self setIssueRequests:0];
  v5 = [v4 objectForKeyedSubscript:@"UUIDKey"];
  [(GKAchievementNetworkRequest *)self setUuid:v5];

  v6 = [v4 objectForKeyedSubscript:@"PlayerIDKey"];
  [(GKAchievementNetworkRequest *)self setPlayerID:v6];

  v7 = [v4 objectForKeyedSubscript:@"BundleIDKey"];
  [(GKAchievementNetworkRequest *)self setBundleID:v7];

  v8 = [v4 objectForKeyedSubscript:@"RequestDataKey"];
  v9 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [v15 objectForKey:{@"achievement-id", v17}];
        if (v16)
        {
          [v9 setObject:v15 forKeyedSubscript:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(GKAchievementNetworkRequest *)self setRequestData:v9];
}

- (id)mergeRequestData:(id)a3 additional:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "GKScoreNetworkRequest no incoming data, skipping", buf, 2u);
    }

    v26 = &__NSDictionary0__struct;
    if (v5)
    {
      v26 = v5;
    }

    v27 = v26;
    goto LABEL_30;
  }

  if (!v5)
  {
    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    v29 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "GKAchievementNetworkRequest invalid original dictionary", buf, 2u);
    }

    v27 = [v6 copy];
LABEL_30:
    v23 = v27;
    goto LABEL_31;
  }

  v32 = v5;
  v7 = [v5 mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = v6;
  obj = [v6 allValues];
  v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v11 = @"achievement-id";
    do
    {
      v12 = 0;
      v33 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:v11];
        if (v14)
        {
          v15 = [v7 objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15)
          {
            v17 = v11;
            v18 = [v15 objectForKeyedSubscript:@"achievement-pct"];
            v19 = [v13 objectForKeyedSubscript:@"achievement-pct"];
            v20 = v7;
            v21 = [v19 longValue];
            v22 = v21 <= [v18 longValue];
            v7 = v20;
            if (!v22)
            {
              [v20 setObject:v13 forKeyedSubscript:v14];
            }

            v11 = v17;
            v9 = v33;
          }

          else
          {
            [v7 setObject:v13 forKeyedSubscript:v14];
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
  }

  v23 = [v7 copy];
  v6 = v31;
  v5 = v32;
LABEL_31:

  return v23;
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKAchievementNetworkRequest *)self requestData];
  v5 = [v4 allValues];
  [v3 setObject:v5 forKeyedSubscript:@"achievement-ids"];

  return v3;
}

- (void)removeFromStore:(id)a3
{
  v4 = a3;
  v5 = [v4 currentTasks];
  v6 = [(GKAchievementNetworkRequest *)self bundleID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && ([v7 requestData], v8 = objc_claimAutoreleasedReturnValue(), -[GKAchievementNetworkRequest requestData](self, "requestData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToDictionary:", v9), v9, v8, v10))
  {
    v11 = [v4 currentTasks];
    v12 = [(GKAchievementNetworkRequest *)self bundleID];
    [v11 removeObjectForKey:v12];

    v13 = [v4 pendingRequests];
    v14 = [(GKAchievementNetworkRequest *)self bundleID];
    [v13 removeObjectForKey:v14];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKAchievementNetworkRequest task completed that was not the current active task, skipping clean up", v17, 2u);
    }
  }
}

- (id)taskInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKAchievementNetworkRequest *)self playerID];
  [v3 setObject:v4 forKeyedSubscript:@"PlayerIDKey"];

  v5 = [(GKAchievementNetworkRequest *)self requestData];
  v6 = [v5 allValues];
  [v3 setObject:v6 forKeyedSubscript:@"RequestDataKey"];

  v7 = [objc_opt_class() bagKey];
  [v3 setObject:v7 forKeyedSubscript:@"BagKeyKey"];

  v8 = [(GKAchievementNetworkRequest *)self uuid];
  [v3 setObject:v8 forKeyedSubscript:@"UUIDKey"];

  v9 = [(GKAchievementNetworkRequest *)self bundleID];
  [v3 setObject:v9 forKeyedSubscript:@"BundleIDKey"];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(GKAchievementNetworkRequest *)self playerID];
  v5 = [NSNumber numberWithInteger:[(GKAchievementNetworkRequest *)self numberOfRequests]];
  v6 = [NSString stringWithFormat:@"%@: PlayerID: %@ Achievement Count: %@", v3, v4, v5];

  return v6;
}

@end
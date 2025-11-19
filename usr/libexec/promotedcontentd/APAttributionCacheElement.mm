@interface APAttributionCacheElement
+ (id)cachedElementForBundleIdentifier:(id)a3;
+ (id)elementWithToken:(id)a3 andBundle:(id)a4 andAppTrackingStatus:(BOOL)a5 andToroID:(id)a6;
+ (void)cacheStore;
+ (void)cleanCache;
+ (void)clearCache;
- (APAttributionCacheElement)initWith:(id)a3 andToken:(id)a4 andAppTrackingStatus:(BOOL)a5 andToroID:(id)a6;
- (BOOL)checkExpiry;
- (BOOL)didAppTrackingStateChange:(BOOL)a3;
- (BOOL)didToroIDChange:(id)a3;
- (BOOL)isExpired;
- (BOOL)isValidCheckWithToroID:(id)a3 andTrackingStatus:(BOOL)a4;
@end

@implementation APAttributionCacheElement

- (APAttributionCacheElement)initWith:(id)a3 andToken:(id)a4 andAppTrackingStatus:(BOOL)a5 andToroID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = APAttributionCacheElement;
  v14 = [(APAttributionCacheElement *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bundleID, a3);
    objc_storeStrong(&v15->_token, a4);
    v15->_appAdTrackingStatus = a5;
    objc_storeStrong(&v15->_toroID, a6);
    v16 = +[NSDate date];
    [v16 timeIntervalSince1970];
    v15->_timestamp = v17;
  }

  return v15;
}

+ (id)elementWithToken:(id)a3 andBundle:(id)a4 andAppTrackingStatus:(BOOL)a5 andToroID:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = a3;
  +[APAttributionCacheElement cacheStore];
  v12 = [[APAttributionCacheElement alloc] initWith:v9 andToken:v11 andAppTrackingStatus:v7 andToroID:v10];

  if (v12)
  {
    [qword_1004DF700 lock];
    [qword_1004DF708 setObject:v12 forKey:v9];
    [qword_1004DF700 unlock];
  }

  +[APAttributionCacheElement cleanCache];

  return v12;
}

+ (id)cachedElementForBundleIdentifier:(id)a3
{
  v3 = a3;
  +[APAttributionCacheElement cacheStore];
  [qword_1004DF700 lock];
  v4 = [qword_1004DF708 objectForKeyedSubscript:v3];

  if (v4)
  {
    v4 = [qword_1004DF708 objectForKeyedSubscript:v3];
  }

  [qword_1004DF700 unlock];

  return v4;
}

+ (void)cacheStore
{
  if (qword_1004DF710[0] != -1)
  {
    sub_100393A1C();
  }
}

- (BOOL)isExpired
{
  [qword_1004DF700 lock];
  v3 = qword_1004DF708;
  v4 = [(APAttributionCacheElement *)self bundleID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = qword_1004DF708;
    v10 = [(APAttributionCacheElement *)self bundleID];
    v11 = [v9 objectForKeyedSubscript:v10];
    [v11 timestamp];
    v13 = v8 - v12;

    if (v13 <= 300.0)
    {
      v16 = 0;
      goto LABEL_6;
    }

    v14 = qword_1004DF708;
    v15 = [(APAttributionCacheElement *)self bundleID];
    [v14 removeObjectForKey:v15];
  }

  v16 = 1;
LABEL_6:
  [qword_1004DF700 unlock];
  return v16;
}

- (BOOL)didAppTrackingStateChange:(BOOL)a3
{
  v4 = [(APAttributionCacheElement *)self appAdTrackingStatus]^ a3;
  if (v4 == 1)
  {
    [qword_1004DF700 lock];
    v5 = qword_1004DF708;
    v6 = [(APAttributionCacheElement *)self bundleID];
    [v5 removeObjectForKey:v6];

    [qword_1004DF700 unlock];
  }

  return v4;
}

- (BOOL)didToroIDChange:(id)a3
{
  v4 = a3;
  v5 = [(APAttributionCacheElement *)self toroID];
  if (v5 && (v6 = v5, -[APAttributionCacheElement toroID](self, "toroID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:v4], v7, v6, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    +[APAttributionCacheElement clearCache];
    v9 = 1;
  }

  return v9;
}

- (BOOL)checkExpiry
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;
  v6 = qword_1004DF708;
  v7 = [(APAttributionCacheElement *)self bundleID];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v8 timestamp];
  v10 = v5 - v9 > 300.0;

  return v10;
}

- (BOOL)isValidCheckWithToroID:(id)a3 andTrackingStatus:(BOOL)a4
{
  v4 = a4;
  if ([(APAttributionCacheElement *)self didToroIDChange:a3]|| [(APAttributionCacheElement *)self didAppTrackingStateChange:v4])
  {
    return 0;
  }

  else
  {
    return ![(APAttributionCacheElement *)self isExpired];
  }
}

+ (void)cleanCache
{
  [qword_1004DF700 lock];
  v2 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [qword_1004DF708 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 136643075;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [qword_1004DF708 objectForKeyedSubscript:{v9, v13}];
        v11 = [v10 checkExpiry];

        if (v11)
        {
          v12 = APLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v13;
            v19 = "+[APAttributionCacheElement cleanCache]";
            v20 = 2114;
            v21 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{sensitive}s Removing expired token from bundleID %{public}@", buf, 0x16u);
          }

          [v2 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  [qword_1004DF708 removeObjectsForKeys:v2];
  [qword_1004DF700 unlock];
}

+ (void)clearCache
{
  [qword_1004DF700 lock];
  [qword_1004DF708 removeAllObjects];
  v2 = qword_1004DF700;

  [v2 unlock];
}

@end
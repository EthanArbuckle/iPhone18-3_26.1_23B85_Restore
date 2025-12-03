@interface APAttributionCacheElement
+ (id)cachedElementForBundleIdentifier:(id)identifier;
+ (id)elementWithToken:(id)token andBundle:(id)bundle andAppTrackingStatus:(BOOL)status andToroID:(id)d;
+ (void)cacheStore;
+ (void)cleanCache;
+ (void)clearCache;
- (APAttributionCacheElement)initWith:(id)with andToken:(id)token andAppTrackingStatus:(BOOL)status andToroID:(id)d;
- (BOOL)checkExpiry;
- (BOOL)didAppTrackingStateChange:(BOOL)change;
- (BOOL)didToroIDChange:(id)change;
- (BOOL)isExpired;
- (BOOL)isValidCheckWithToroID:(id)d andTrackingStatus:(BOOL)status;
@end

@implementation APAttributionCacheElement

- (APAttributionCacheElement)initWith:(id)with andToken:(id)token andAppTrackingStatus:(BOOL)status andToroID:(id)d
{
  withCopy = with;
  tokenCopy = token;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = APAttributionCacheElement;
  v14 = [(APAttributionCacheElement *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bundleID, with);
    objc_storeStrong(&v15->_token, token);
    v15->_appAdTrackingStatus = status;
    objc_storeStrong(&v15->_toroID, d);
    v16 = +[NSDate date];
    [v16 timeIntervalSince1970];
    v15->_timestamp = v17;
  }

  return v15;
}

+ (id)elementWithToken:(id)token andBundle:(id)bundle andAppTrackingStatus:(BOOL)status andToroID:(id)d
{
  statusCopy = status;
  bundleCopy = bundle;
  dCopy = d;
  tokenCopy = token;
  +[APAttributionCacheElement cacheStore];
  v12 = [[APAttributionCacheElement alloc] initWith:bundleCopy andToken:tokenCopy andAppTrackingStatus:statusCopy andToroID:dCopy];

  if (v12)
  {
    [qword_1004DF700 lock];
    [qword_1004DF708 setObject:v12 forKey:bundleCopy];
    [qword_1004DF700 unlock];
  }

  +[APAttributionCacheElement cleanCache];

  return v12;
}

+ (id)cachedElementForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  +[APAttributionCacheElement cacheStore];
  [qword_1004DF700 lock];
  v4 = [qword_1004DF708 objectForKeyedSubscript:identifierCopy];

  if (v4)
  {
    v4 = [qword_1004DF708 objectForKeyedSubscript:identifierCopy];
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
  bundleID = [(APAttributionCacheElement *)self bundleID];
  v5 = [v3 objectForKeyedSubscript:bundleID];

  if (v5)
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = qword_1004DF708;
    bundleID2 = [(APAttributionCacheElement *)self bundleID];
    v11 = [v9 objectForKeyedSubscript:bundleID2];
    [v11 timestamp];
    v13 = v8 - v12;

    if (v13 <= 300.0)
    {
      v16 = 0;
      goto LABEL_6;
    }

    v14 = qword_1004DF708;
    bundleID3 = [(APAttributionCacheElement *)self bundleID];
    [v14 removeObjectForKey:bundleID3];
  }

  v16 = 1;
LABEL_6:
  [qword_1004DF700 unlock];
  return v16;
}

- (BOOL)didAppTrackingStateChange:(BOOL)change
{
  v4 = [(APAttributionCacheElement *)self appAdTrackingStatus]^ change;
  if (v4 == 1)
  {
    [qword_1004DF700 lock];
    v5 = qword_1004DF708;
    bundleID = [(APAttributionCacheElement *)self bundleID];
    [v5 removeObjectForKey:bundleID];

    [qword_1004DF700 unlock];
  }

  return v4;
}

- (BOOL)didToroIDChange:(id)change
{
  changeCopy = change;
  toroID = [(APAttributionCacheElement *)self toroID];
  if (toroID && (v6 = toroID, -[APAttributionCacheElement toroID](self, "toroID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:changeCopy], v7, v6, (v8 & 1) != 0))
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
  bundleID = [(APAttributionCacheElement *)self bundleID];
  v8 = [v6 objectForKeyedSubscript:bundleID];
  [v8 timestamp];
  v10 = v5 - v9 > 300.0;

  return v10;
}

- (BOOL)isValidCheckWithToroID:(id)d andTrackingStatus:(BOOL)status
{
  statusCopy = status;
  if ([(APAttributionCacheElement *)self didToroIDChange:d]|| [(APAttributionCacheElement *)self didAppTrackingStateChange:statusCopy])
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
  allKeys = [qword_1004DF708 allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [qword_1004DF708 objectForKeyedSubscript:{v9, v13}];
        checkExpiry = [v10 checkExpiry];

        if (checkExpiry)
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

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
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
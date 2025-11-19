@interface GKOnDeviceMultiplayerGameListCacheObject
- (id)bundleIDs;
- (id)multiplayerGames;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKOnDeviceMultiplayerGameListCacheObject

- (id)bundleIDs
{
  v2 = [(GKOnDeviceMultiplayerGameListCacheObject *)self entries];
  v3 = [v2 array];
  v4 = [v3 _gkMapWithBlock:&stru_100367DB0];

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "found cachedBundleIDs: %@", &v8, 0xCu);
  }

  return v4;
}

- (id)multiplayerGames
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(GKOnDeviceMultiplayerGameListCacheObject *)self entries];
  v5 = [v4 array];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100134E68;
  v8[3] = &unk_100367DD8;
  v6 = v3;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKOnDeviceMultiplayerGameListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKOnDeviceMultiplayerGameListCacheObject updateWithServerRepresentation:expirationDate:]", [v12 UTF8String], 3562);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKOnDeviceMultiplayerGameListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:v6 expirationDate:v7];
  v14 = [v6 objectForKeyedSubscript:@"game-features"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367DF8 reuseEntriesByIndex:1];
}

@end
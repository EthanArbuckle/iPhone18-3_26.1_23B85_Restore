@interface GKOnDeviceMultiplayerGameListCacheObject
- (id)bundleIDs;
- (id)multiplayerGames;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKOnDeviceMultiplayerGameListCacheObject

- (id)bundleIDs
{
  entries = [(GKOnDeviceMultiplayerGameListCacheObject *)self entries];
  array = [entries array];
  v4 = [array _gkMapWithBlock:&stru_100367DB0];

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
  entries = [(GKOnDeviceMultiplayerGameListCacheObject *)self entries];
  array = [entries array];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100134E68;
  v8[3] = &unk_100367DD8;
  v6 = v3;
  v9 = v6;
  [array enumerateObjectsUsingBlock:v8];

  return v6;
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKOnDeviceMultiplayerGameListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKOnDeviceMultiplayerGameListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 3562);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKOnDeviceMultiplayerGameListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"game-features"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367DF8 reuseEntriesByIndex:1];
}

@end
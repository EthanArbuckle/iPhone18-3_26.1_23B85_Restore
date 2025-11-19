@interface GKRecentGameListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKRecentGameListCacheObject

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentGameListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKRecentGameListCacheObject updateWithServerRepresentation:expirationDate:]", [v12 UTF8String], 3430);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKRecentGameListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:v6 expirationDate:v7];
  v14 = [v6 objectForKeyedSubscript:@"results"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367D08 reuseEntriesByIndex:1];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentGameListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKRecentGameListCacheObject internalRepresentation]", [v7 UTF8String], 3441);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKRecentGameListCacheObject *)self managedObjectContext];
  v10 = [(GKRecentGameListCacheObject *)self entries];
  v11 = [v10 _gkValuesForKeyPath:@"bundleIDs"];
  v12 = [GKGameCacheObject gamesForBundleIDs:v11 context:v9];

  v13 = [(GKRecentGameListCacheObject *)self otherPlayer];
  v14 = [GKGameRecordCacheObject recordsForGames:v12 playerProfile:v13];

  v15 = [v14 _gkMapDictionaryWithKeyPath:@"game.bundleID"];
  v16 = [(GKRecentGameListCacheObject *)self otherPlayer];
  v17 = [v16 internalRepresentation];

  v18 = [(GKRecentGameListCacheObject *)self entries];
  v19 = [v18 array];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100134614;
  v24[3] = &unk_100367D30;
  v25 = v15;
  v26 = v17;
  v20 = v17;
  v21 = v15;
  v22 = [v19 _gkMapWithBlock:v24];

  return v22;
}

@end
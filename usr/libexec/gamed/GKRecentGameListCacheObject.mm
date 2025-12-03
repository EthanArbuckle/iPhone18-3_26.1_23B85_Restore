@interface GKRecentGameListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKRecentGameListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentGameListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKRecentGameListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 3430);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKRecentGameListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"results"];
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKRecentGameListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 3441);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  managedObjectContext = [(GKRecentGameListCacheObject *)self managedObjectContext];
  entries = [(GKRecentGameListCacheObject *)self entries];
  v11 = [entries _gkValuesForKeyPath:@"bundleIDs"];
  v12 = [GKGameCacheObject gamesForBundleIDs:v11 context:managedObjectContext];

  otherPlayer = [(GKRecentGameListCacheObject *)self otherPlayer];
  v14 = [GKGameRecordCacheObject recordsForGames:v12 playerProfile:otherPlayer];

  v15 = [v14 _gkMapDictionaryWithKeyPath:@"game.bundleID"];
  otherPlayer2 = [(GKRecentGameListCacheObject *)self otherPlayer];
  internalRepresentation = [otherPlayer2 internalRepresentation];

  entries2 = [(GKRecentGameListCacheObject *)self entries];
  array = [entries2 array];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100134614;
  v24[3] = &unk_100367D30;
  v25 = v15;
  v26 = internalRepresentation;
  v20 = internalRepresentation;
  v21 = v15;
  v22 = [array _gkMapWithBlock:v24];

  return v22;
}

@end
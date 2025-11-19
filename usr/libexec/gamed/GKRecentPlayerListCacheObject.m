@interface GKRecentPlayerListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKRecentPlayerListCacheObject

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentPlayerListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKRecentPlayerListCacheObject updateWithServerRepresentation:expirationDate:]", [v12 UTF8String], 3352);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKRecentPlayerListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:v6 expirationDate:v7];
  v14 = [v6 objectForKeyedSubscript:@"results"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367CC0 reuseEntriesByIndex:1];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentPlayerListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKRecentPlayerListCacheObject internalRepresentation]", [v7 UTF8String], 3363);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKRecentPlayerListCacheObject *)self managedObjectContext];
  v10 = [(GKRecentPlayerListCacheObject *)self entries];
  v11 = [v10 _gkValuesForKeyPath:@"playerID"];
  v12 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v11 inManagedObjectContext:v9];

  v13 = [v12 _gkMapDictionaryWithKeyPath:@"playerID"];
  v14 = [(GKRecentPlayerListCacheObject *)self entries];
  v15 = [v14 array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100133D0C;
  v19[3] = &unk_100367CE8;
  v20 = v13;
  v21 = self;
  v16 = v13;
  v17 = [v15 _gkMapWithBlock:v19];

  return v17;
}

@end
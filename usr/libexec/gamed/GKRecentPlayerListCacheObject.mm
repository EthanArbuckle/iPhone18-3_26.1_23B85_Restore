@interface GKRecentPlayerListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKRecentPlayerListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentPlayerListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKRecentPlayerListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 3352);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKRecentPlayerListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"results"];
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKRecentPlayerListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 3363);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  managedObjectContext = [(GKRecentPlayerListCacheObject *)self managedObjectContext];
  entries = [(GKRecentPlayerListCacheObject *)self entries];
  v11 = [entries _gkValuesForKeyPath:@"playerID"];
  v12 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v11 inManagedObjectContext:managedObjectContext];

  v13 = [v12 _gkMapDictionaryWithKeyPath:@"playerID"];
  entries2 = [(GKRecentPlayerListCacheObject *)self entries];
  array = [entries2 array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100133D0C;
  v19[3] = &unk_100367CE8;
  v20 = v13;
  selfCopy = self;
  v16 = v13;
  v17 = [array _gkMapWithBlock:v19];

  return v17;
}

@end
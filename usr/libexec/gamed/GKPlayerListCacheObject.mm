@interface GKPlayerListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKPlayerListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKPlayerListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 4269);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKPlayerListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"results"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367EA8 reuseEntriesByIndex:1];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKPlayerListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 4279);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  managedObjectContext = [(GKPlayerListCacheObject *)self managedObjectContext];
  entries = [(GKPlayerListCacheObject *)self entries];
  v11 = [entries _gkValuesForKeyPath:@"playerID"];

  v12 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v11 inManagedObjectContext:managedObjectContext];
  v13 = [v12 _gkMapDictionaryWithKeyPath:@"playerID"];
  entries2 = [(GKPlayerListCacheObject *)self entries];
  array = [entries2 array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013909C;
  v19[3] = &unk_100367ED0;
  v20 = v13;
  v16 = v13;
  v17 = [array _gkMapWithBlock:v19];

  return v17;
}

@end
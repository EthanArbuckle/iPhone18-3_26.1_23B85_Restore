@interface GKLeaderboardSetCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardSetCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardSetCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKLeaderboardSetCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 2092);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v30.receiver = self;
  v30.super_class = GKLeaderboardSetCacheObject;
  [(GKCacheObject *)&v30 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"set-name"];
  [(GKLeaderboardSetCacheObject *)self setIdentifier:v11];

  v12 = [representationCopy objectForKey:@"set-group-name"];
  [(GKLeaderboardSetCacheObject *)self setGroupIdentifier:v12];

  v13 = [representationCopy objectForKey:@"set-title"];
  [(GKLeaderboardSetCacheObject *)self setTitle:v13];

  leaderboardTitleMapList = [(GKLeaderboardSetCacheObject *)self leaderboardTitleMapList];

  if (!leaderboardTitleMapList)
  {
    v15 = [GKLeaderboardTitleMapListCacheObject alloc];
    managedObjectContext = [(GKLeaderboardSetCacheObject *)self managedObjectContext];
    v17 = [(GKCacheObject *)v15 initWithManagedObjectContext:managedObjectContext];
    [(GKLeaderboardSetCacheObject *)self setLeaderboardTitleMapList:v17];
  }

  v18 = [representationCopy objectForKey:@"set-image-urls"];
  if (v18)
  {
    v19 = [(GKCacheObject *)self updateImagesWithImageURLs:v18];
  }

  v20 = [representationCopy objectForKey:@"leaderboards"];
  v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v20 count]);
  leaderboardTitleMapList2 = [(GKLeaderboardSetCacheObject *)self leaderboardTitleMapList];
  entries = [leaderboardTitleMapList2 entries];
  v24 = [entries _gkMapDictionaryWithKeyPath:@"identifier"];
  [v21 addEntriesFromDictionary:v24];

  leaderboardTitleMapList3 = [(GKLeaderboardSetCacheObject *)self leaderboardTitleMapList];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10012CAEC;
  v27[3] = &unk_100367BA8;
  v28 = v21;
  selfCopy = self;
  v26 = v21;
  [leaderboardTitleMapList3 updateEntriesWithRepresentations:v20 entryForRepresentation:v27 reuseEntriesByIndex:0];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardSetCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKLeaderboardSetCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2133);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[GKLeaderboardSetInternal internalRepresentation];
  identifier = [(GKLeaderboardSetCacheObject *)self identifier];
  [v9 setIdentifier:identifier];

  groupIdentifier = [(GKLeaderboardSetCacheObject *)self groupIdentifier];
  [v9 setGroupIdentifier:groupIdentifier];

  title = [(GKLeaderboardSetCacheObject *)self title];
  [v9 setTitle:title];

  leaderboardTitleMapList = [(GKLeaderboardSetCacheObject *)self leaderboardTitleMapList];
  entries = [leaderboardTitleMapList entries];
  v15 = [entries _gkMapDictionaryWithKeyPath:@"identifier" valueKeyPath:@"localizedTitle"];
  [v9 setLeaderboardIdentifiers:v15];

  imageURLDictionary = [(GKCacheObject *)self imageURLDictionary];
  [v9 setIcons:imageURLDictionary];

  return v9;
}

@end
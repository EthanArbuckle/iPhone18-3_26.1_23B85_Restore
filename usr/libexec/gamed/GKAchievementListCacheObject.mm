@interface GKAchievementListCacheObject
- (BOOL)isValid;
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKAchievementListCacheObject

- (BOOL)isValid
{
  v7.receiver = self;
  v7.super_class = GKAchievementListCacheObject;
  if (![(GKExpiringCacheObject *)&v7 isValid])
  {
    return 0;
  }

  game = [(GKAchievementListCacheObject *)self game];
  name = [game name];
  v5 = name != 0;

  return v5;
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKAchievementListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 1869);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKAchievementListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"results"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367AE8 reuseEntriesByIndex:1];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKAchievementListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 1879);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  game = [(GKAchievementListCacheObject *)self game];
  achievementDescriptionList = [game achievementDescriptionList];
  entries = [achievementDescriptionList entries];

  entries2 = [(GKAchievementListCacheObject *)self entries];
  player = [(GKAchievementListCacheObject *)self player];
  playerID = [player playerID];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10012B610;
  v25[3] = &unk_100367B10;
  v15 = [[NSMutableDictionary alloc] initWithCapacity:{2 * objc_msgSend(entries2, "count")}];
  v26 = v15;
  [entries2 enumerateObjectsUsingBlock:v25];
  array = [entries array];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10012B6A8;
  v22[3] = &unk_100367B38;
  v23 = v15;
  v24 = playerID;
  v17 = playerID;
  v18 = v15;
  v19 = [array _gkFilterWithBlock:v22];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

@end
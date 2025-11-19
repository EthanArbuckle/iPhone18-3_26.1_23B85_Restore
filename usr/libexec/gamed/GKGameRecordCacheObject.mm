@interface GKGameRecordCacheObject
+ (id)fetchSortDescriptors;
+ (id)recordForGame:(id)a3 playerProfile:(id)a4;
+ (id)recordsForGames:(id)a3 playerProfile:(id)a4;
- (id)internalRepresentation;
- (void)updateAchievementsWithServerRepresentation:(id)a3;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKGameRecordCacheObject

+ (id)recordsForGames:(id)a3 playerProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v7, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKGameRecordCacheObject recordsForGames:playerProfile:]", v8);
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "+[GKGameRecordCacheObject recordsForGames:playerProfile:]", [v11 UTF8String], 1967);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (v6 && [v5 count])
  {
    v13 = [v6 managedObjectContext];
    v14 = [v6 gameRecords];
    v15 = [v14 _gkMapDictionaryWithKeyPath:@"game.bundleID"];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10012BCA0;
    v20[3] = &unk_100367B60;
    v21 = v15;
    v22 = v13;
    v23 = v6;
    v16 = v13;
    v17 = v15;
    v18 = [v5 _gkMapWithBlock:v20];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)recordForGame:(id)a3 playerProfile:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v12 count:1];

  v9 = [a1 recordsForGames:v8 playerProfile:{v6, v12}];

  v10 = [v9 firstObject];

  return v10;
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameRecordCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKGameRecordCacheObject updateWithServerRepresentation:expirationDate:]", [v12 UTF8String], 1999);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v25.receiver = self;
  v25.super_class = GKGameRecordCacheObject;
  [(GKExpiringCacheObject *)&v25 updateWithServerRepresentation:v6 expirationDate:v7];
  v14 = [v6 objectForKey:@"timestamp"];
  v15 = [NSDate _gkDateFromServerTimestamp:v14];
  [(GKGameRecordCacheObject *)self setLastPlayedDate:v15];

  v16 = [v6 objectForKey:@"rank"];
  [(GKGameRecordCacheObject *)self setRank:v16];

  v17 = [v6 objectForKey:@"leaderboard-size"];
  [(GKGameRecordCacheObject *)self setMaxRank:v17];

  v18 = [v6 objectForKey:@"friend-rank"];
  [(GKGameRecordCacheObject *)self setFriendRank:v18];

  v19 = [v6 objectForKey:@"num-friends-ranked"];
  [(GKGameRecordCacheObject *)self setMaxFriendRank:v19];

  v20 = [v6 objectForKey:@"num-achieved"];
  [(GKGameRecordCacheObject *)self setAchievements:v20];

  v21 = [v6 objectForKey:@"achievements-score"];
  [(GKGameRecordCacheObject *)self setAchievementPoints:v21];

  v22 = [v6 objectForKey:@"user-default-leaderboard-category"];
  if ([v22 length])
  {
    [(GKGameRecordCacheObject *)self setDefaultLeaderboardIdentifier:v22];
  }

  else
  {
    v23 = [v6 objectForKey:@"game-metadata"];
    v24 = [v23 objectForKey:@"default-leaderboard-category"];
    [(GKGameRecordCacheObject *)self setDefaultLeaderboardIdentifier:v24];
  }
}

- (void)updateAchievementsWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameRecordCacheObject updateAchievementsWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKGameRecordCacheObject updateAchievementsWithServerRepresentation:]", [v9 UTF8String], 2023);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v15.receiver = self;
  v15.super_class = GKGameRecordCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:v4 expirationDate:0];
  v11 = [v4 objectForKey:@"timestamp"];
  v12 = [NSDate _gkDateFromServerTimestamp:v11];
  [(GKGameRecordCacheObject *)self setLastPlayedDate:v12];

  v13 = [v4 objectForKey:@"num-achieved"];
  [(GKGameRecordCacheObject *)self setAchievements:v13];

  v14 = [v4 objectForKey:@"achievements-score"];
  [(GKGameRecordCacheObject *)self setAchievementPoints:v14];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameRecordCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameRecordCacheObject internalRepresentation]", [v7 UTF8String], 2033);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  return [GKGameRecordInternal internalRepresentationForCacheObject:self];
}

+ (id)fetchSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:@"lastPlayedDate" ascending:0];
  v8[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"purchaseDate" ascending:0];
  v8[1] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"game.bundleID" ascending:1];
  v8[2] = v4;
  v5 = [NSSortDescriptor sortDescriptorWithKey:@"timeStamp" ascending:0];
  v8[3] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:4];

  return v6;
}

@end
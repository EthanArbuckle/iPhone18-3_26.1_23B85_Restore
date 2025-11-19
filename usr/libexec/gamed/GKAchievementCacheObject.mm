@interface GKAchievementCacheObject
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKAchievementCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKAchievementCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 1936);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v16.receiver = self;
  v16.super_class = GKAchievementCacheObject;
  [(GKCacheObject *)&v16 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKey:@"achievement-id"];
  [(GKAchievementCacheObject *)self setIdentifier:v11];

  v12 = [v4 objectForKey:@"group-achievement-id"];
  [(GKAchievementCacheObject *)self setGroupIdentifier:v12];

  v13 = [v4 objectForKey:@"achievement-pct"];
  [v13 floatValue];
  [(GKAchievementCacheObject *)self setPercentComplete:?];

  v14 = [v4 objectForKey:@"timestamp"];
  v15 = [NSDate _gkDateFromServerTimestamp:v14];
  [(GKAchievementCacheObject *)self setLastReportedDate:v15];
}

@end
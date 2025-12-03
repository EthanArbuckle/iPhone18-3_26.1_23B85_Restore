@interface GKAchievementCacheObject
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKAchievementCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKAchievementCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 1936);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v16.receiver = self;
  v16.super_class = GKAchievementCacheObject;
  [(GKCacheObject *)&v16 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"achievement-id"];
  [(GKAchievementCacheObject *)self setIdentifier:v11];

  v12 = [representationCopy objectForKey:@"group-achievement-id"];
  [(GKAchievementCacheObject *)self setGroupIdentifier:v12];

  v13 = [representationCopy objectForKey:@"achievement-pct"];
  [v13 floatValue];
  [(GKAchievementCacheObject *)self setPercentComplete:?];

  v14 = [representationCopy objectForKey:@"timestamp"];
  v15 = [NSDate _gkDateFromServerTimestamp:v14];
  [(GKAchievementCacheObject *)self setLastReportedDate:v15];
}

@end
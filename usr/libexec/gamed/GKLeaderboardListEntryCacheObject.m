@interface GKLeaderboardListEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKLeaderboardListEntryCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKLeaderboardListEntryCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 2206);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v13.receiver = self;
  v13.super_class = GKLeaderboardListEntryCacheObject;
  [(GKCacheObject *)&v13 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKeyedSubscript:@"global-alltime-info"];
  if (!v11)
  {
    v11 = v4;
  }

  v12 = [v11 objectForKeyedSubscript:@"base-leaderboard-id"];
  if (!v12)
  {
    v12 = [v11 objectForKeyedSubscript:@"category-name"];
  }

  [(GKLeaderboardListEntryCacheObject *)self setBaseLeaderboardID:v12];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardListEntryCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKLeaderboardListEntryCacheObject internalRepresentation]", [v7 UTF8String], 2222);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKLeaderboardListEntryCacheObject *)self leaderboard];
  v10 = [v9 internalRepresentation];

  return v10;
}

@end
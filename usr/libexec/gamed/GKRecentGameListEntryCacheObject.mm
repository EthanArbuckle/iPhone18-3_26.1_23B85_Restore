@interface GKRecentGameListEntryCacheObject
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKRecentGameListEntryCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKRecentGameListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKRecentGameListEntryCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 3472);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v14.receiver = self;
  v14.super_class = GKRecentGameListEntryCacheObject;
  [(GKCacheObject *)&v14 updateWithServerRepresentation:v4];
  v11 = [v4 valueForKeyPath:@"game.bundle-id"];
  if (v11)
  {
    [(GKRecentGameListEntryCacheObject *)self setBundleID:v11];
  }

  v12 = [v4 objectForKey:@"timestamp"];

  if (v12)
  {
    v13 = [NSDate _gkDateFromServerTimestamp:v12];
    [(GKRecentGameListEntryCacheObject *)self setDate:v13];
  }
}

@end
@interface GKPlayerEntryCacheObject
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKPlayerEntryCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKPlayerEntryCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 4299);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v14.receiver = self;
  v14.super_class = GKPlayerEntryCacheObject;
  [(GKCacheObject *)&v14 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"player-id"];
  [(GKPlayerEntryCacheObject *)self setPlayerID:v11];

  v12 = [representationCopy objectForKey:@"timestamp"];
  v13 = [NSDate _gkDateFromServerTimestamp:v12];
  [(GKPlayerEntryCacheObject *)self setDate:v13];
}

@end
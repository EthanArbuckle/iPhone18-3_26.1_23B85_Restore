@interface GKTopGamesListCacheObject
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKTopGamesListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTopGamesListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKTopGamesListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 3495);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v15.receiver = self;
  v15.super_class = GKTopGamesListCacheObject;
  [(GKExpiringCacheObject *)&v15 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"results"];
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:&stru_100367D70 reuseEntriesByIndex:1];
}

@end
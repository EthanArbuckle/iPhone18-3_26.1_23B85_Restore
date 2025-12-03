@interface GKCompatiblePlayerListCacheObject
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKCompatiblePlayerListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCompatiblePlayerListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKCompatiblePlayerListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 4774);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14.receiver = self;
  v14.super_class = GKCompatiblePlayerListCacheObject;
  [(GKPlayerListCacheObject *)&v14 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
}

@end
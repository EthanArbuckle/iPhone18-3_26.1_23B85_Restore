@interface GKFriendRequestListEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKFriendRequestListEntryCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRequestListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKFriendRequestListEntryCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 2998);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v20.receiver = self;
  v20.super_class = GKFriendRequestListEntryCacheObject;
  [(GKFriendListEntryCacheObject *)&v20 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKey:@"player-id"];
  [(GKFriendRequestListEntryCacheObject *)self setPlayerID:v11];

  v12 = [(GKFriendRequestListEntryCacheObject *)self playerID];

  if (v12)
  {
    v13 = [(GKFriendRequestListEntryCacheObject *)self playerID];
    v14 = [(GKFriendRequestListEntryCacheObject *)self managedObjectContext];
    v15 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v13 inManagedObjectContext:v14];
  }

  v16 = [v4 objectForKey:@"email"];
  [(GKFriendRequestListEntryCacheObject *)self setEmail:v16];

  v17 = [v4 objectForKey:@"msg"];
  [(GKFriendRequestListEntryCacheObject *)self setMessage:v17];

  v18 = [v4 objectForKey:@"timestamp"];
  v19 = [NSDate _gkDateFromServerTimestamp:v18];
  [(GKFriendRequestListEntryCacheObject *)self setDate:v19];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRequestListEntryCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendRequestListEntryCacheObject internalRepresentation]", [v7 UTF8String], 3012);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKFriendRequestListEntryCacheObject *)self managedObjectContext];
  v10 = [(GKFriendRequestListEntryCacheObject *)self playerID];
  v11 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v10 inManagedObjectContext:v9];

  if ([v11 familiarity] == 3)
  {
    v12 = [[GKFriendRequestInternal alloc] initWithCacheObject:v11];
    v13 = [(GKFriendRequestListEntryCacheObject *)self date];
    [v12 setDate:v13];

    v14 = [(GKFriendRequestListEntryCacheObject *)self message];
    [v12 setMessage:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
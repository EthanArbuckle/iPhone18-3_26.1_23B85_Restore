@interface GKFriendRequestListEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKFriendRequestListEntryCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRequestListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKFriendRequestListEntryCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 2998);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v20.receiver = self;
  v20.super_class = GKFriendRequestListEntryCacheObject;
  [(GKFriendListEntryCacheObject *)&v20 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"player-id"];
  [(GKFriendRequestListEntryCacheObject *)self setPlayerID:v11];

  playerID = [(GKFriendRequestListEntryCacheObject *)self playerID];

  if (playerID)
  {
    playerID2 = [(GKFriendRequestListEntryCacheObject *)self playerID];
    managedObjectContext = [(GKFriendRequestListEntryCacheObject *)self managedObjectContext];
    v15 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:playerID2 inManagedObjectContext:managedObjectContext];
  }

  v16 = [representationCopy objectForKey:@"email"];
  [(GKFriendRequestListEntryCacheObject *)self setEmail:v16];

  v17 = [representationCopy objectForKey:@"msg"];
  [(GKFriendRequestListEntryCacheObject *)self setMessage:v17];

  v18 = [representationCopy objectForKey:@"timestamp"];
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendRequestListEntryCacheObject internalRepresentation]", [lastPathComponent UTF8String], 3012);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  managedObjectContext = [(GKFriendRequestListEntryCacheObject *)self managedObjectContext];
  playerID = [(GKFriendRequestListEntryCacheObject *)self playerID];
  v11 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:playerID inManagedObjectContext:managedObjectContext];

  if ([v11 familiarity] == 3)
  {
    v12 = [[GKFriendRequestInternal alloc] initWithCacheObject:v11];
    date = [(GKFriendRequestListEntryCacheObject *)self date];
    [v12 setDate:date];

    message = [(GKFriendRequestListEntryCacheObject *)self message];
    [v12 setMessage:message];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
@interface GKFriendRecommendationListEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKFriendRecommendationListEntryCacheObject

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRecommendationListEntryCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendRecommendationListEntryCacheObject internalRepresentation]", [v7 UTF8String], 2883);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKFriendRecommendationListEntryCacheObject *)self managedObjectContext];
  v10 = [(GKFriendRecommendationListEntryCacheObject *)self playerID];
  v11 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v10 inManagedObjectContext:v9];

  v12 = [[GKFriendRecommendationInternal alloc] initWithCacheObject:v11];
  v13 = [(GKFriendRecommendationListEntryCacheObject *)self reason];
  [v12 setReason:v13];

  v14 = [(GKFriendRecommendationListEntryCacheObject *)self reason2];
  [v12 setReason2:v14];

  v15 = [(GKFriendRecommendationListEntryCacheObject *)self rid];
  [v12 setRid:{objc_msgSend(v15, "integerValue")}];

  v16 = [(GKFriendRecommendationListEntryCacheObject *)self source];
  [v12 setSource:{objc_msgSend(v16, "integerValue")}];

  return v12;
}

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRecommendationListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKFriendRecommendationListEntryCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 2902);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v17.receiver = self;
  v17.super_class = GKFriendRecommendationListEntryCacheObject;
  [(GKRecommendationEntryCacheObject *)&v17 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKey:GKPlayerIDKey];
  [(GKFriendRecommendationListEntryCacheObject *)self setPlayerID:v11];

  v12 = [v4 objectForKey:@"reason"];
  [(GKFriendRecommendationListEntryCacheObject *)self setReason:v12];

  v13 = [v4 objectForKey:@"alt-reason"];
  [(GKFriendRecommendationListEntryCacheObject *)self setReason2:v13];

  v14 = [v4 objectForKey:@"reason-id"];
  [(GKFriendRecommendationListEntryCacheObject *)self setReasonID:v14];

  v15 = [v4 objectForKey:@"rid"];
  [(GKFriendRecommendationListEntryCacheObject *)self setRid:v15];

  v16 = [v4 objectForKey:@"source"];
  [(GKFriendRecommendationListEntryCacheObject *)self setSource:v16];
}

@end
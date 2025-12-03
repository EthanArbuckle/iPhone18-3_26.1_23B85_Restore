@interface GKFriendListEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKFriendListEntryCacheObject

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendListEntryCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendListEntryCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2609);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  playerID = [(GKFriendListEntryCacheObject *)self playerID];
  managedObjectContext = [(GKFriendListEntryCacheObject *)self managedObjectContext];
  v11 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:playerID inManagedObjectContext:managedObjectContext];

  v12 = [[GKFriendPlayerInternal alloc] initWithCacheObject:v11];

  return v12;
}

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKFriendListEntryCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 2621);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v24.receiver = self;
  v24.super_class = GKFriendListEntryCacheObject;
  [(GKCacheObject *)&v24 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKeyedSubscript:@"player-id"];
  [(GKFriendListEntryCacheObject *)self setPlayerID:v11];

  v12 = [representationCopy objectForKeyedSubscript:@"played-with"];
  -[GKFriendListEntryCacheObject setFriendPlayedWith:](self, "setFriendPlayedWith:", [v12 BOOLValue]);

  v13 = [representationCopy objectForKeyedSubscript:@"bi-directional"];
  -[GKFriendListEntryCacheObject setFriendBiDirectional:](self, "setFriendBiDirectional:", [v13 BOOLValue]);

  v14 = [representationCopy objectForKeyedSubscript:@"played-nearby"];
  -[GKFriendListEntryCacheObject setFriendPlayedNearby:](self, "setFriendPlayedNearby:", [v14 BOOLValue]);

  v15 = [representationCopy objectForKeyedSubscript:@"accepted-game-invitation"];
  -[GKFriendListEntryCacheObject setAcceptedGameInviteFromThisFriend:](self, "setAcceptedGameInviteFromThisFriend:", [v15 BOOLValue]);

  v16 = [representationCopy objectForKeyedSubscript:@"initiated-game-invitation"];
  -[GKFriendListEntryCacheObject setInitiatedGameInviteToThisFriend:](self, "setInitiatedGameInviteToThisFriend:", [v16 BOOLValue]);

  v17 = [representationCopy objectForKeyedSubscript:@"automatched-together"];
  -[GKFriendListEntryCacheObject setAutomatchedTogether:](self, "setAutomatchedTogether:", [v17 BOOLValue]);

  v18 = [representationCopy objectForKeyedSubscript:@"challenged-together"];
  -[GKFriendListEntryCacheObject setChallengedTogether:](self, "setChallengedTogether:", [v18 BOOLValue]);

  v19 = [representationCopy objectForKeyedSubscript:@"last-challenged-timestamp"];
  v20 = [NSDate _gkDateFromServerTimestamp:v19];
  [(GKFriendListEntryCacheObject *)self setLastChallengedDate:v20];

  v21 = [representationCopy objectForKeyedSubscript:@"last-challenged-game"];
  [(GKFriendListEntryCacheObject *)self setLastChallengedGame:v21];

  v22 = [representationCopy objectForKeyedSubscript:GKContactsAssociationIDKey];
  v23 = [GKContactsIntegrationUserSettings associationIDFromServerResult:v22];
  [(GKFriendListEntryCacheObject *)self setContactAssociationID:v23];
}

@end
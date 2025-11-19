@interface GKPlayerInternal
+ (unsigned)piecesToLoad;
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKPlayerInternal

- (void)updateWithCacheObject:(id)a3
{
  v27 = a3;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKPlayerInternal(Cache) updateWithCacheObject:]", [v8 UTF8String], 156);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [v27 playerID];
  [(GKPlayerInternal *)self setPlayerID:v10];

  v11 = [v27 alias];
  [(GKPlayerInternal *)self setAlias:v11];

  v12 = [v27 avatarArtwork];
  v13 = [v12 internalRepresentation];
  [(GKPlayerInternal *)self setAvatarArtwork:v13];

  v14 = [v27 avatarType];
  [(GKPlayerInternal *)self setAvatarType:v14];

  v15 = [v27 friendLevel];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &off_1003826E8;
  }

  [(GKPlayerInternal *)self setFriendLevel:v17];

  v18 = [v27 friendBiDirectional];
  [(GKPlayerInternal *)self setFriendBiDirectional:v18];

  v19 = [v27 friendPlayedWith];
  [(GKPlayerInternal *)self setFriendPlayedWith:v19];

  v20 = [v27 friendPlayedNearby];
  [(GKPlayerInternal *)self setFriendPlayedNearby:v20];

  v21 = [v27 acceptedGameInviteFromThisFriend];
  [(GKPlayerInternal *)self setAcceptedGameInviteFromThisFriend:v21];

  v22 = [v27 initiatedGameInviteToThisFriend];
  [(GKPlayerInternal *)self setInitiatedGameInviteToThisFriend:v22];

  v23 = [v27 automatchedTogether];
  [(GKPlayerInternal *)self setAutomatchedTogether:v23];

  v24 = [v27 imageURLDictionary];
  [(GKPlayerInternal *)self setPhotos:v24];

  -[GKPlayerInternal setNumberOfFriends:](self, "setNumberOfFriends:", [v27 numberOfFriends]);
  -[GKPlayerInternal setNumberOfFriendsInCommon:](self, "setNumberOfFriendsInCommon:", [v27 numberOfFriendsInCommon]);
  -[GKPlayerInternal setNumberOfGames:](self, "setNumberOfGames:", [v27 numberOfGames]);
  -[GKPlayerInternal setNumberOfGamesInCommon:](self, "setNumberOfGamesInCommon:", [v27 numberOfGamesInCommon]);
  -[GKPlayerInternal setNumberOfAchievements:](self, "setNumberOfAchievements:", [v27 numberOfAchievements]);
  -[GKPlayerInternal setNumberOfAchievementPoints:](self, "setNumberOfAchievementPoints:", [v27 numberOfAchievementPoints]);
  -[GKPlayerInternal setAchievementsVisibility:](self, "setAchievementsVisibility:", [v27 achievementsVisibility]);
  -[GKPlayerInternal setFriendsVisibility:](self, "setFriendsVisibility:", [v27 friendsVisibility]);
  -[GKPlayerInternal setGamesPlayedVisibility:](self, "setGamesPlayedVisibility:", [v27 gamesPlayedVisibility]);
  -[GKPlayerInternal setGlobalFriendListAccess:](self, "setGlobalFriendListAccess:", [v27 globalFriendListAccess]);
  -[GKPlayerInternal setIsArcadeSubscriber:](self, "setIsArcadeSubscriber:", [v27 isArcadeSubscriber]);
  -[GKPlayerInternal setContactsIntegrationConsent:](self, "setContactsIntegrationConsent:", [v27 contactsIntegrationConsent]);
  v25 = [v27 contactsAssociationID];
  [(GKPlayerInternal *)self setContactsAssociationID:v25];

  v26 = [v27 serviceLastUpdatedTimestamp];
  [(GKPlayerInternal *)self setServiceLastUpdatedTimestamp:v26];

  -[GKPlayerInternal setAllowReceivingFriendInvites:](self, "setAllowReceivingFriendInvites:", [v27 allowReceivingFriendInvites]);
  -[GKPlayerInternal setAllowChallengeFriendInvites:](self, "setAllowChallengeFriendInvites:", [v27 allowChallengeFriendInvites]);
  -[GKPlayerInternal setAllowMultiplayerFriendInvites:](self, "setAllowMultiplayerFriendInvites:", [v27 allowMultiplayerFriendInvites]);
  -[GKPlayerInternal setIsChallengeable:](self, "setIsChallengeable:", [v27 isChallengeable]);
  -[GKPlayerInternal setSupportsMultiplayerActivities:](self, "setSupportsMultiplayerActivities:", [v27 supportsMultiplayerActivities]);
}

+ (unsigned)piecesToLoad
{
  v2 = [a1 familiarity];

  return [GKPlayerProfileCacheObject piecesToLoadForFamiliarity:v2];
}

@end
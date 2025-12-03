@interface GKPlayerInternal
+ (unsigned)piecesToLoad;
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKPlayerInternal

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKPlayerInternal(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 156);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  playerID = [objectCopy playerID];
  [(GKPlayerInternal *)self setPlayerID:playerID];

  alias = [objectCopy alias];
  [(GKPlayerInternal *)self setAlias:alias];

  avatarArtwork = [objectCopy avatarArtwork];
  internalRepresentation = [avatarArtwork internalRepresentation];
  [(GKPlayerInternal *)self setAvatarArtwork:internalRepresentation];

  avatarType = [objectCopy avatarType];
  [(GKPlayerInternal *)self setAvatarType:avatarType];

  friendLevel = [objectCopy friendLevel];
  v16 = friendLevel;
  if (friendLevel)
  {
    v17 = friendLevel;
  }

  else
  {
    v17 = &off_1003826E8;
  }

  [(GKPlayerInternal *)self setFriendLevel:v17];

  friendBiDirectional = [objectCopy friendBiDirectional];
  [(GKPlayerInternal *)self setFriendBiDirectional:friendBiDirectional];

  friendPlayedWith = [objectCopy friendPlayedWith];
  [(GKPlayerInternal *)self setFriendPlayedWith:friendPlayedWith];

  friendPlayedNearby = [objectCopy friendPlayedNearby];
  [(GKPlayerInternal *)self setFriendPlayedNearby:friendPlayedNearby];

  acceptedGameInviteFromThisFriend = [objectCopy acceptedGameInviteFromThisFriend];
  [(GKPlayerInternal *)self setAcceptedGameInviteFromThisFriend:acceptedGameInviteFromThisFriend];

  initiatedGameInviteToThisFriend = [objectCopy initiatedGameInviteToThisFriend];
  [(GKPlayerInternal *)self setInitiatedGameInviteToThisFriend:initiatedGameInviteToThisFriend];

  automatchedTogether = [objectCopy automatchedTogether];
  [(GKPlayerInternal *)self setAutomatchedTogether:automatchedTogether];

  imageURLDictionary = [objectCopy imageURLDictionary];
  [(GKPlayerInternal *)self setPhotos:imageURLDictionary];

  -[GKPlayerInternal setNumberOfFriends:](self, "setNumberOfFriends:", [objectCopy numberOfFriends]);
  -[GKPlayerInternal setNumberOfFriendsInCommon:](self, "setNumberOfFriendsInCommon:", [objectCopy numberOfFriendsInCommon]);
  -[GKPlayerInternal setNumberOfGames:](self, "setNumberOfGames:", [objectCopy numberOfGames]);
  -[GKPlayerInternal setNumberOfGamesInCommon:](self, "setNumberOfGamesInCommon:", [objectCopy numberOfGamesInCommon]);
  -[GKPlayerInternal setNumberOfAchievements:](self, "setNumberOfAchievements:", [objectCopy numberOfAchievements]);
  -[GKPlayerInternal setNumberOfAchievementPoints:](self, "setNumberOfAchievementPoints:", [objectCopy numberOfAchievementPoints]);
  -[GKPlayerInternal setAchievementsVisibility:](self, "setAchievementsVisibility:", [objectCopy achievementsVisibility]);
  -[GKPlayerInternal setFriendsVisibility:](self, "setFriendsVisibility:", [objectCopy friendsVisibility]);
  -[GKPlayerInternal setGamesPlayedVisibility:](self, "setGamesPlayedVisibility:", [objectCopy gamesPlayedVisibility]);
  -[GKPlayerInternal setGlobalFriendListAccess:](self, "setGlobalFriendListAccess:", [objectCopy globalFriendListAccess]);
  -[GKPlayerInternal setIsArcadeSubscriber:](self, "setIsArcadeSubscriber:", [objectCopy isArcadeSubscriber]);
  -[GKPlayerInternal setContactsIntegrationConsent:](self, "setContactsIntegrationConsent:", [objectCopy contactsIntegrationConsent]);
  contactsAssociationID = [objectCopy contactsAssociationID];
  [(GKPlayerInternal *)self setContactsAssociationID:contactsAssociationID];

  serviceLastUpdatedTimestamp = [objectCopy serviceLastUpdatedTimestamp];
  [(GKPlayerInternal *)self setServiceLastUpdatedTimestamp:serviceLastUpdatedTimestamp];

  -[GKPlayerInternal setAllowReceivingFriendInvites:](self, "setAllowReceivingFriendInvites:", [objectCopy allowReceivingFriendInvites]);
  -[GKPlayerInternal setAllowChallengeFriendInvites:](self, "setAllowChallengeFriendInvites:", [objectCopy allowChallengeFriendInvites]);
  -[GKPlayerInternal setAllowMultiplayerFriendInvites:](self, "setAllowMultiplayerFriendInvites:", [objectCopy allowMultiplayerFriendInvites]);
  -[GKPlayerInternal setIsChallengeable:](self, "setIsChallengeable:", [objectCopy isChallengeable]);
  -[GKPlayerInternal setSupportsMultiplayerActivities:](self, "setSupportsMultiplayerActivities:", [objectCopy supportsMultiplayerActivities]);
}

+ (unsigned)piecesToLoad
{
  familiarity = [self familiarity];

  return [GKPlayerProfileCacheObject piecesToLoadForFamiliarity:familiarity];
}

@end
@interface GKGameRecordInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKGameRecordInternal

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  game = [objectCopy game];
  v19.receiver = self;
  v19.super_class = GKGameRecordInternal;
  [(GKGameRecordInternal *)&v19 updateWithCacheObject:game];

  lastPlayedDate = [objectCopy lastPlayedDate];
  [(GKGameRecordInternal *)self setLastPlayedDate:lastPlayedDate];

  purchaseDate = [objectCopy purchaseDate];
  [(GKGameRecordInternal *)self setPurchaseDate:purchaseDate];

  rank = [objectCopy rank];
  -[GKGameRecordInternal setRank:](self, "setRank:", [rank unsignedIntegerValue]);

  maxRank = [objectCopy maxRank];
  -[GKGameRecordInternal setMaxRank:](self, "setMaxRank:", [maxRank unsignedIntegerValue]);

  friendRank = [objectCopy friendRank];
  -[GKGameRecordInternal setFriendRank:](self, "setFriendRank:", [friendRank unsignedIntegerValue]);

  maxFriendRank = [objectCopy maxFriendRank];
  -[GKGameRecordInternal setMaxFriendRank:](self, "setMaxFriendRank:", [maxFriendRank unsignedIntegerValue]);

  achievements = [objectCopy achievements];
  -[GKGameRecordInternal setAchievements:](self, "setAchievements:", [achievements unsignedIntegerValue]);

  achievementPoints = [objectCopy achievementPoints];
  -[GKGameRecordInternal setAchievementPoints:](self, "setAchievementPoints:", [achievementPoints unsignedIntegerValue]);

  defaultLeaderboardIdentifier = [objectCopy defaultLeaderboardIdentifier];
  if (!defaultLeaderboardIdentifier)
  {
    game2 = [objectCopy game];
    defaultLeaderboardIdentifier = [game2 defaultCategory];
  }

  [(GKGameRecordInternal *)self setDefaultLeaderboardIdentifier:defaultLeaderboardIdentifier];
  expirationDate = [objectCopy expirationDate];
  v17 = +[NSDate distantPast];
  [expirationDate timeIntervalSinceDate:v17];
  [(GKGameRecordInternal *)self setValid:v18 > 0.0];
}

@end
@interface GKGameRecordInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKGameRecordInternal

- (void)updateWithCacheObject:(id)a3
{
  v4 = a3;
  v5 = [v4 game];
  v19.receiver = self;
  v19.super_class = GKGameRecordInternal;
  [(GKGameRecordInternal *)&v19 updateWithCacheObject:v5];

  v6 = [v4 lastPlayedDate];
  [(GKGameRecordInternal *)self setLastPlayedDate:v6];

  v7 = [v4 purchaseDate];
  [(GKGameRecordInternal *)self setPurchaseDate:v7];

  v8 = [v4 rank];
  -[GKGameRecordInternal setRank:](self, "setRank:", [v8 unsignedIntegerValue]);

  v9 = [v4 maxRank];
  -[GKGameRecordInternal setMaxRank:](self, "setMaxRank:", [v9 unsignedIntegerValue]);

  v10 = [v4 friendRank];
  -[GKGameRecordInternal setFriendRank:](self, "setFriendRank:", [v10 unsignedIntegerValue]);

  v11 = [v4 maxFriendRank];
  -[GKGameRecordInternal setMaxFriendRank:](self, "setMaxFriendRank:", [v11 unsignedIntegerValue]);

  v12 = [v4 achievements];
  -[GKGameRecordInternal setAchievements:](self, "setAchievements:", [v12 unsignedIntegerValue]);

  v13 = [v4 achievementPoints];
  -[GKGameRecordInternal setAchievementPoints:](self, "setAchievementPoints:", [v13 unsignedIntegerValue]);

  v14 = [v4 defaultLeaderboardIdentifier];
  if (!v14)
  {
    v15 = [v4 game];
    v14 = [v15 defaultCategory];
  }

  [(GKGameRecordInternal *)self setDefaultLeaderboardIdentifier:v14];
  v16 = [v4 expirationDate];
  v17 = +[NSDate distantPast];
  [v16 timeIntervalSinceDate:v17];
  [(GKGameRecordInternal *)self setValid:v18 > 0.0];
}

@end
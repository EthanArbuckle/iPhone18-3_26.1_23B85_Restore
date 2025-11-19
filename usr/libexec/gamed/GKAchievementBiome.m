@interface GKAchievementBiome
+ (GKAchievementBiome)shared;
- (void)logEarnedWithAchievement:(id)a3;
@end

@implementation GKAchievementBiome

+ (GKAchievementBiome)shared
{
  v2 = static AchievementBiome.shared.getter();

  return v2;
}

- (void)logEarnedWithAchievement:(id)a3
{
  v4 = a3;
  v5 = self;
  AchievementBiome.logEarned(achievement:)(v4);
}

@end
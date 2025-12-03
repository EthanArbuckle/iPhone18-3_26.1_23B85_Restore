@interface GKAchievementBiome
+ (GKAchievementBiome)shared;
- (void)logEarnedWithAchievement:(id)achievement;
@end

@implementation GKAchievementBiome

+ (GKAchievementBiome)shared
{
  v2 = static AchievementBiome.shared.getter();

  return v2;
}

- (void)logEarnedWithAchievement:(id)achievement
{
  achievementCopy = achievement;
  selfCopy = self;
  AchievementBiome.logEarned(achievement:)(achievementCopy);
}

@end
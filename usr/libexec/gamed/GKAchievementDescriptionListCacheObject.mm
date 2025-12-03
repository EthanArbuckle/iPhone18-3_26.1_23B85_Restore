@interface GKAchievementDescriptionListCacheObject
- (BOOL)isValid;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKAchievementDescriptionListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  v8.receiver = self;
  v8.super_class = GKAchievementDescriptionListCacheObject;
  representationCopy = representation;
  [(GKExpiringCacheObject *)&v8 updateWithServerRepresentation:representationCopy expirationDate:date];
  v7 = [representationCopy objectForKeyedSubscript:{@"results", v8.receiver, v8.super_class}];

  [(GKListCacheObject *)self updateEntriesWithRepresentations:v7 entryForRepresentation:&stru_100367AC8 reuseEntriesByIndex:1];
}

- (BOOL)isValid
{
  v7.receiver = self;
  v7.super_class = GKAchievementDescriptionListCacheObject;
  if (![(GKExpiringCacheObject *)&v7 isValid])
  {
    return 0;
  }

  game = [(GKAchievementDescriptionListCacheObject *)self game];
  name = [game name];
  v5 = name != 0;

  return v5;
}

@end
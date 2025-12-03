@interface GKLeaderboardTitleMapListCacheObject
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKLeaderboardTitleMapListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  v8.receiver = self;
  v8.super_class = GKLeaderboardTitleMapListCacheObject;
  representationCopy = representation;
  [(GKExpiringCacheObject *)&v8 updateWithServerRepresentation:representationCopy expirationDate:date];
  v7 = [representationCopy objectForKeyedSubscript:{@"results", v8.receiver, v8.super_class}];

  [(GKListCacheObject *)self updateEntriesWithRepresentations:v7 entryForRepresentation:&stru_100367BC8 reuseEntriesByIndex:1];
}

@end
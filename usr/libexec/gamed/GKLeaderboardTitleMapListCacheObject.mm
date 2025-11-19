@interface GKLeaderboardTitleMapListCacheObject
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKLeaderboardTitleMapListCacheObject

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKLeaderboardTitleMapListCacheObject;
  v6 = a3;
  [(GKExpiringCacheObject *)&v8 updateWithServerRepresentation:v6 expirationDate:a4];
  v7 = [v6 objectForKeyedSubscript:{@"results", v8.receiver, v8.super_class}];

  [(GKListCacheObject *)self updateEntriesWithRepresentations:v7 entryForRepresentation:&stru_100367BC8 reuseEntriesByIndex:1];
}

@end
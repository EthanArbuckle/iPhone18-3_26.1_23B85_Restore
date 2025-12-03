@interface GKLeaderboardTitleMapCacheObject
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardTitleMapCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v7.receiver = self;
  v7.super_class = GKLeaderboardTitleMapCacheObject;
  [(GKCacheObject *)&v7 updateWithServerRepresentation:representationCopy];
  v5 = [representationCopy objectForKeyedSubscript:@"category-name"];
  if (v5)
  {
    [(GKLeaderboardTitleMapCacheObject *)self setIdentifier:v5];
  }

  v6 = [representationCopy objectForKeyedSubscript:@"category-title"];

  if (v6)
  {
    [(GKLeaderboardTitleMapCacheObject *)self setLocalizedTitle:v6];
  }
}

@end
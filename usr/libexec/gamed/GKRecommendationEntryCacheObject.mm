@interface GKRecommendationEntryCacheObject
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKRecommendationEntryCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  v4.receiver = self;
  v4.super_class = GKRecommendationEntryCacheObject;
  [(GKCacheObject *)&v4 updateWithServerRepresentation:representation];
  [(GKRecommendationEntryCacheObject *)self setViewed:0];
  [(GKRecommendationEntryCacheObject *)self setDisplayedToUser:0];
}

@end
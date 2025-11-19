@interface GKRecommendationEntryCacheObject
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKRecommendationEntryCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKRecommendationEntryCacheObject;
  [(GKCacheObject *)&v4 updateWithServerRepresentation:a3];
  [(GKRecommendationEntryCacheObject *)self setViewed:0];
  [(GKRecommendationEntryCacheObject *)self setDisplayedToUser:0];
}

@end
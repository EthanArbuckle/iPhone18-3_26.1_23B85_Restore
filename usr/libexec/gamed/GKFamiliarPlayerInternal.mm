@interface GKFamiliarPlayerInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKFamiliarPlayerInternal

- (void)updateWithCacheObject:(id)a3
{
  v8.receiver = self;
  v8.super_class = GKFamiliarPlayerInternal;
  v4 = a3;
  [(GKFamiliarPlayerInternal *)&v8 updateWithCacheObject:v4];
  v5 = [v4 firstName];
  v6 = [v4 lastName];

  [(GKFamiliarPlayerInternal *)self setFirstName:v5];
  [(GKFamiliarPlayerInternal *)self setLastName:v6];
  v7 = [objc_opt_class() compositeNameForFirstName:v5 lastName:v6];
  [(GKFamiliarPlayerInternal *)self setCompositeName:v7];
}

@end
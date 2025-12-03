@interface GKFamiliarPlayerInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKFamiliarPlayerInternal

- (void)updateWithCacheObject:(id)object
{
  v8.receiver = self;
  v8.super_class = GKFamiliarPlayerInternal;
  objectCopy = object;
  [(GKFamiliarPlayerInternal *)&v8 updateWithCacheObject:objectCopy];
  firstName = [objectCopy firstName];
  lastName = [objectCopy lastName];

  [(GKFamiliarPlayerInternal *)self setFirstName:firstName];
  [(GKFamiliarPlayerInternal *)self setLastName:lastName];
  v7 = [objc_opt_class() compositeNameForFirstName:firstName lastName:lastName];
  [(GKFamiliarPlayerInternal *)self setCompositeName:v7];
}

@end
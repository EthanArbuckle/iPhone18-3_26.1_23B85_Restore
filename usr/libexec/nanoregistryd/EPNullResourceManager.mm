@interface EPNullResourceManager
- (void)createResource;
@end

@implementation EPNullResourceManager

- (void)createResource
{
  v3.receiver = self;
  v3.super_class = EPNullResourceManager;
  [(EPResourceManager *)&v3 createResource];
  [(EPResourceManager *)self setAvailability:1 withError:0];
}

@end
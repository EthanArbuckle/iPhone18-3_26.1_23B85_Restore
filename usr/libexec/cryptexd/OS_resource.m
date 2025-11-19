@interface OS_resource
- (void)dealloc;
@end

@implementation OS_resource

- (void)dealloc
{
  _resource_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_resource;
  [(OS_resource *)&v3 dealloc];
}

@end
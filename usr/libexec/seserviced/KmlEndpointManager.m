@interface KmlEndpointManager
- (void)dealloc;
@end

@implementation KmlEndpointManager

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = KmlEndpointManager;
  [(KmlEndpointManager *)&v3 dealloc];
}

@end
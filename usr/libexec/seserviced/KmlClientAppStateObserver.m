@interface KmlClientAppStateObserver
- (void)dealloc;
@end

@implementation KmlClientAppStateObserver

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_monitor invalidate];
  v3.receiver = self;
  v3.super_class = KmlClientAppStateObserver;
  [(KmlClientAppStateObserver *)&v3 dealloc];
}

@end
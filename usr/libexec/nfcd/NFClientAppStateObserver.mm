@interface NFClientAppStateObserver
- (void)dealloc;
@end

@implementation NFClientAppStateObserver

- (void)dealloc
{
  if (self)
  {
    if (qword_10035D930 != -1)
    {
      dispatch_once(&qword_10035D930, &stru_100316098);
    }

    if (byte_10035D928 == 1)
    {
      [(RBSProcessMonitor *)self->_monitor invalidate];
    }
  }

  v3.receiver = self;
  v3.super_class = NFClientAppStateObserver;
  [(NFClientAppStateObserver *)&v3 dealloc];
}

@end
@interface CLDaemonLocationUpdaterLiveAdapter
- (CLDaemonLocationUpdaterLiveAdapter)init;
- (void)dealloc;
@end

@implementation CLDaemonLocationUpdaterLiveAdapter

- (CLDaemonLocationUpdaterLiveAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLDaemonLocationUpdaterLiveAdapter;
  result = [(CLDaemonLocationUpdaterLiveAdapter *)&v3 init];
  if (result)
  {
    result->_valid = 1;
  }

  return result;
}

- (void)dealloc
{
  self->_valid = 0;
  v2.receiver = self;
  v2.super_class = CLDaemonLocationUpdaterLiveAdapter;
  [(CLDaemonLocationUpdaterLiveAdapter *)&v2 dealloc];
}

@end
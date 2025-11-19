@interface OS_daemon
- (void)dealloc;
@end

@implementation OS_daemon

- (void)dealloc
{
  _daemon_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_daemon;
  [(OS_daemon *)&v3 dealloc];
}

@end
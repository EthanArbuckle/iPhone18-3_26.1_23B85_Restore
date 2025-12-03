@interface IOSGps
- (IOSGps)initWithDisableBackground:(BOOL)background;
- (void)start;
- (void)stop;
@end

@implementation IOSGps

- (IOSGps)initWithDisableBackground:(BOOL)background
{
  v4.receiver = self;
  v4.super_class = IOSGps;
  if ([(IOSGps *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100306CEC;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stop
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100306E84;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end
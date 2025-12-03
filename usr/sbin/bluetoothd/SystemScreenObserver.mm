@interface SystemScreenObserver
- (SystemScreenObserver)init;
- (void)activateWithSystemMonitor:(id)monitor;
- (void)dealloc;
- (void)invalidate;
- (void)screenStateChanged:(BOOL)changed;
@end

@implementation SystemScreenObserver

- (SystemScreenObserver)init
{
  v3.receiver = self;
  v3.super_class = SystemScreenObserver;
  result = [(SystemScreenObserver *)&v3 init];
  if (result)
  {
    result->_screenUndimmedChangeNotifyToken = -1;
  }

  return result;
}

- (void)dealloc
{
  [(SystemScreenObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = SystemScreenObserver;
  [(SystemScreenObserver *)&v3 dealloc];
}

- (void)activateWithSystemMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (self->_screenUndimmedChangeNotifyToken == -1)
  {
    objc_initWeak(&location, self);
    v6 = *(sub_100017F4C() + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004A2084;
    handler[3] = &unk_100AF8888;
    v7 = v6;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventUndimmed", &self->_screenUndimmedChangeNotifyToken, v7, handler);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  objc_storeStrong(&self->_systemMonitor, monitor);
  screenOn = [monitorCopy screenOn];
  v9 = sub_100017F4C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004A2124;
  v10[3] = &unk_100AE1750;
  v10[4] = self;
  v11 = screenOn;
  sub_10000CA94(v9, v10);
}

- (void)screenStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = sub_100017F4C();
  dispatch_assert_queue_V2(*(v5 + 8));
  v6 = sub_100017E6C();
  if ([(SystemScreenObserver *)self screenOn]!= changedCopy)
  {
    [(SystemScreenObserver *)self setScreenOn:changedCopy];
    if (v6)
    {

      sub_1000A3784(v6, changedCopy);
    }
  }
}

- (void)invalidate
{
  [(SystemScreenObserver *)self setSystemMonitor:0];
  screenUndimmedChangeNotifyToken = self->_screenUndimmedChangeNotifyToken;
  if (screenUndimmedChangeNotifyToken != -1)
  {
    notify_cancel(screenUndimmedChangeNotifyToken);
    self->_screenUndimmedChangeNotifyToken = -1;
  }
}

@end
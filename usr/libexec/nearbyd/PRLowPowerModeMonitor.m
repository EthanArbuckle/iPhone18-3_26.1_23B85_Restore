@interface PRLowPowerModeMonitor
- (BOOL)startMonitoring;
- (PRLowPowerModeMonitor)initWithQueue:(id)a3 stateChangeHandler:(id)a4;
- (void)_initLowPowerModeListner;
- (void)_lowPowerModeChanged:(id)a3;
- (void)dealloc;
- (void)stopMonitoring;
@end

@implementation PRLowPowerModeMonitor

- (PRLowPowerModeMonitor)initWithQueue:(id)a3 stateChangeHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PRLowPowerModeMonitor.mm" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v16.receiver = self;
  v16.super_class = PRLowPowerModeMonitor;
  v10 = [(PRLowPowerModeMonitor *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a3);
    v11->_monitoring = 0;
    v12 = objc_retainBlock(v9);
    modeChangeHandler = v11->_modeChangeHandler;
    v11->_modeChangeHandler = v12;

    v11->_lowPowerModeEnabled = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(PRLowPowerModeMonitor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = PRLowPowerModeMonitor;
  [(PRLowPowerModeMonitor *)&v3 dealloc];
}

- (void)_initLowPowerModeListner
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_lowPowerModeChanged:" name:NSProcessInfoPowerStateDidChangeNotification object:0];

  v4 = +[NSProcessInfo processInfo];
  self->_lowPowerModeEnabled = [v4 isLowPowerModeEnabled];

  modeChangeHandler = self->_modeChangeHandler;
  if (modeChangeHandler)
  {
    modeChangeHandler[2](modeChangeHandler, self->_lowPowerModeEnabled);
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_lowPowerModeEnabled)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#lpm-mon, Monitor initialized. LPM is %s", &v8, 0xCu);
  }
}

- (void)_lowPowerModeChanged:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100200338;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)startMonitoring
{
  if (!self->_monitoring)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002004F8;
    block[3] = &unk_10098BD28;
    block[4] = self;
    dispatch_async(queue, block);
    self->_monitoring = 1;
  }

  return 1;
}

- (void)stopMonitoring
{
  if (self->_monitoring)
  {
    location[5] = v2;
    location[6] = v3;
    objc_initWeak(location, self);
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10020062C;
    v6[3] = &unk_10098AB18;
    objc_copyWeak(&v7, location);
    dispatch_async(queue, v6);
    self->_monitoring = 0;
    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }
}

@end
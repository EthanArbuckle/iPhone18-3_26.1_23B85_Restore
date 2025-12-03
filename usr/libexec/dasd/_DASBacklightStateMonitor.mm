@interface _DASBacklightStateMonitor
+ (_DASBacklightStateMonitor)sharedInstance;
- (_DASBacklightStateMonitor)init;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)registerForBacklightUpdates;
@end

@implementation _DASBacklightStateMonitor

- (_DASBacklightStateMonitor)init
{
  v10.receiver = self;
  v10.super_class = _DASBacklightStateMonitor;
  v2 = [(_DASBacklightStateMonitor *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.duetactivityscheduler.backlightstatemonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_currentState = 0;
    v6 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001019B8;
    block[3] = &unk_1001B5668;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

+ (_DASBacklightStateMonitor)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101B40;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B8C8 != -1)
  {
    dispatch_once(&qword_10020B8C8, block);
  }

  v2 = qword_10020B8D0;

  return v2;
}

- (void)registerForBacklightUpdates
{
  v3 = +[BLSBacklight sharedBacklight];
  [v3 addObserver:self];

  v4 = [_DASDaemonLogger logForCategory:@"BacklightStateMonitor"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registered for backlight updates.", v5, 2u);
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    v6 = [_DASDaemonLogger logForCategory:@"BacklightStateMonitor"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      currentState = self->_currentState;
      *buf = 134217984;
      v12 = currentState;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BacklightState: %ld.", buf, 0xCu);
    }

    v8 = +[_DASDaemon sharedInstance];
    v10 = @"com.apple.das.restartpolicy.backlightOn";
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v8 handleTriggersBatched:v9];
  }
}

@end
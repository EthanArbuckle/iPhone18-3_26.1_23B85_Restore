@interface _DASTimer
+ (_DASTimer)timerWithCallback:(id)callback;
- (_DASTimer)initWithCallback:(id)callback;
- (void)cancelPreviousWakeRequest;
- (void)requestSystemWakeOnBehalfOf:(id)of at:(id)at withLeeway:(double)leeway cancelPrevious:(BOOL)previous;
- (void)scheduleOnBehalfOf:(id)of between:(double)between and:(double)and waking:(BOOL)waking;
@end

@implementation _DASTimer

- (void)cancelPreviousWakeRequest
{
  time_to_wake = [(NSDictionary *)self->_previousWakeRequestDictionary objectForKeyedSubscript:@"time"];
  v3 = [(NSDictionary *)self->_previousWakeRequestDictionary objectForKeyedSubscript:@"scheduledby"];
  if (time_to_wake)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    IOPMCancelScheduledPowerEvent(time_to_wake, v3, @"wake");
  }
}

- (_DASTimer)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v19.receiver = self;
  v19.super_class = _DASTimer;
  v5 = [(_DASTimer *)&v19 init];
  if (v5)
  {
    v6 = objc_retainBlock(callbackCopy);
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.das.dastimerqueue", v8);
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 2));
    v12 = *(v5 + 3);
    *(v5 + 3) = v11;

    v13 = *(v5 + 3);
    dispatch_set_qos_class_fallback();
    dispatch_source_set_timer(*(v5 + 3), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
    objc_initWeak(&location, v5);
    v14 = *(v5 + 3);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002BF94;
    v16[3] = &unk_1001B5468;
    objc_copyWeak(&v17, &location);
    dispatch_source_set_event_handler(v14, v16);
    dispatch_resume(*(v5 + 3));
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

+ (_DASTimer)timerWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = [objc_alloc(objc_opt_class()) initWithCallback:callbackCopy];

  return v4;
}

- (void)requestSystemWakeOnBehalfOf:(id)of at:(id)at withLeeway:(double)leeway cancelPrevious:(BOOL)previous
{
  previousCopy = previous;
  ofCopy = of;
  atCopy = at;
  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:atCopy forKeyedSubscript:@"time"];

  v13 = [NSNumber numberWithInteger:leeway];
  [v12 setObject:v13 forKeyedSubscript:@"leeway"];

  ofCopy = [NSString stringWithFormat:@"%@.%@", _DASDaemonServiceName, ofCopy];
  [v12 setObject:ofCopy forKeyedSubscript:@"scheduledby"];

  if (previousCopy)
  {
    [(_DASTimer *)self cancelPreviousWakeRequest];
    v15 = [NSDictionary dictionaryWithDictionary:v12];
    previousWakeRequestDictionary = self->_previousWakeRequestDictionary;
    self->_previousWakeRequestDictionary = v15;
  }

  if (IOPMRequestSysWake())
  {
    v17 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = ofCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to request system wake for %@", buf, 0xCu);
    }
  }
}

- (void)scheduleOnBehalfOf:(id)of between:(double)between and:(double)and waking:(BOOL)waking
{
  wakingCopy = waking;
  ofCopy = of;
  dispatch_suspend(self->_timer);
  v10 = and - between;
  if (wakingCopy)
  {
    v11 = [NSDate dateWithTimeIntervalSinceNow:between + 10.0];
    [(_DASTimer *)self requestSystemWakeOnBehalfOf:ofCopy at:v11 withLeeway:1 cancelPrevious:v10 + -10.0];

    v12 = 10;
  }

  else
  {
    v12 = fmax(v10, 1.0);
  }

  timer = self->_timer;
  v14 = dispatch_walltime(0, (between * 1000000000.0));
  dispatch_source_set_timer(timer, v14, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * v12);
  dispatch_resume(self->_timer);
}

@end
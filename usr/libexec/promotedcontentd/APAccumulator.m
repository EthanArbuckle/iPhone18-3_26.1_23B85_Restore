@interface APAccumulator
+ (id)_accumulationReasonToString:(int64_t)a3;
- (APAccumulator)initWithAccumulationTime:(unint64_t)a3 inactivityTime:(unint64_t)a4 itemLimit:(unint64_t)a5;
- (APAccumulator)initWithCoder:(id)a3;
- (NSArray)accumulatedItems;
- (void)_accumulationEventHandler;
- (void)_callAccumulationHandlerWithReason:(int64_t)a3;
- (void)_inactivityEventHandler;
- (void)_startAccumulationSource;
- (void)_startInactivitySource;
- (void)_stopAccumulationSource;
- (void)_stopInactivitySource;
- (void)accumulate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APAccumulator

- (APAccumulator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"accumulationTime"];
  v6 = [v5 unsignedIntegerValue];
  v7 = [v4 decodeObjectForKey:@"inactivityTime"];
  v8 = [v7 unsignedIntegerValue];
  v9 = [v4 decodeObjectForKey:@"itemLimit"];

  v10 = -[APAccumulator initWithAccumulationTime:inactivityTime:itemLimit:](self, "initWithAccumulationTime:inactivityTime:itemLimit:", v6, v8, [v9 unsignedIntegerValue]);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(APAccumulator *)self accumulationTime]];
  [v4 encodeObject:v5 forKey:@"accumulationTime"];

  v6 = [NSNumber numberWithUnsignedInteger:[(APAccumulator *)self inactivityTime]];
  [v4 encodeObject:v6 forKey:@"inactivityTime"];

  v7 = [NSNumber numberWithUnsignedInteger:[(APAccumulator *)self itemLimit]];
  [v4 encodeObject:v7 forKey:@"itemLimit"];
}

- (APAccumulator)initWithAccumulationTime:(unint64_t)a3 inactivityTime:(unint64_t)a4 itemLimit:(unint64_t)a5
{
  v17.receiver = self;
  v17.super_class = APAccumulator;
  v8 = [(APAccumulator *)&v17 init];
  if (v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      v19 = v8;
      v20 = 2048;
      v21 = a3;
      v22 = 2048;
      v23 = a4;
      v24 = 2048;
      v25 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%p: creating accumulator with time %lu, inactivity %lu, itemLimit %lu", buf, 0x2Au);
    }

    v8->_accumulationTime = a3;
    v8->_inactivityTime = a4;
    v8->_itemLimit = a5;
    v10 = [NSMutableArray arrayWithCapacity:a5];
    items = v8->_items;
    v8->_items = v10;

    v12 = [[APUnfairLock alloc] initWithOptions:1];
    lock = v8->_lock;
    v8->_lock = v12;

    v14 = dispatch_queue_create("apaccumulator_queue", 0);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v14;
  }

  return v8;
}

- (void)accumulate:(id)a3
{
  v4 = a3;
  v5 = [(APAccumulator *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002934B0;
  v7[3] = &unk_10047CC10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NSArray)accumulatedItems
{
  v3 = [(APAccumulator *)self lock];
  [v3 lock];

  v4 = [(APAccumulator *)self items];
  v5 = [v4 copy];

  v6 = [(APAccumulator *)self lock];
  [v6 unlock];

  return v5;
}

+ (id)_accumulationReasonToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Invalid reason";
  }

  else
  {
    return *(&off_10047CC30 + a3 - 1);
  }
}

- (void)_stopAccumulationSource
{
  v3 = [(APAccumulator *)self dispatchSourceAccumulation];

  if (v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: stopping accumulation timer.", &v7, 0xCu);
    }

    v5 = [(APAccumulator *)self dispatchSourceAccumulation];
    dispatch_source_cancel(v5);

    dispatchSourceAccumulation = self->_dispatchSourceAccumulation;
    self->_dispatchSourceAccumulation = 0;
  }
}

- (void)_startAccumulationSource
{
  if ([(APAccumulator *)self accumulationTime])
  {
    v3 = dispatch_time(0, 1000000 * [(APAccumulator *)self accumulationTime]);
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v12 = self;
      v13 = 2048;
      v14 = [(APAccumulator *)self accumulationTime];
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: starting accumulation timer for %lu mS (%llu nS).", buf, 0x20u);
    }

    v5 = [(APAccumulator *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v5);
    [(APAccumulator *)self setDispatchSourceAccumulation:v6];

    v7 = [(APAccumulator *)self dispatchSourceAccumulation];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100293A80;
    handler[3] = &unk_1004790A8;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v8 = [(APAccumulator *)self dispatchSourceAccumulation];
    dispatch_source_set_timer(v8, v3, 0xFFFFFFFFFFFFFFFFLL, 0x2710uLL);

    v9 = [(APAccumulator *)self dispatchSourceAccumulation];
    dispatch_resume(v9);

    [(APAccumulator *)self setStartTime:CFAbsoluteTimeGetCurrent()];
  }
}

- (void)_stopInactivitySource
{
  v3 = [(APAccumulator *)self dispatchSourceInactivity];

  if (v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: stopping inactivity timer.", &v6, 0xCu);
    }

    v5 = [(APAccumulator *)self dispatchSourceInactivity];
    dispatch_source_cancel(v5);

    [(APAccumulator *)self setDispatchSourceInactivity:0];
  }
}

- (void)_startInactivitySource
{
  if ([(APAccumulator *)self inactivityTime])
  {
    v3 = dispatch_time(0, 1000000 * [(APAccumulator *)self inactivityTime]);
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v12 = self;
      v13 = 2048;
      v14 = [(APAccumulator *)self inactivityTime];
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: starting inactivity timer for %lu mS (%llu nS).", buf, 0x20u);
    }

    v5 = [(APAccumulator *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v5);
    [(APAccumulator *)self setDispatchSourceInactivity:v6];

    v7 = [(APAccumulator *)self dispatchSourceInactivity];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100293D3C;
    handler[3] = &unk_1004790A8;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v8 = [(APAccumulator *)self dispatchSourceInactivity];
    dispatch_source_set_timer(v8, v3, 0xFFFFFFFFFFFFFFFFLL, 0x2710uLL);

    v9 = [(APAccumulator *)self dispatchSourceInactivity];
    dispatch_resume(v9);
  }
}

- (void)_callAccumulationHandlerWithReason:(int64_t)a3
{
  v5 = [(APAccumulator *)self items];
  v6 = [v5 copy];

  v7 = [(APAccumulator *)self items];
  [v7 removeAllObjects];

  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(APAccumulator *)self startTime];
    v11 = (Current - v10) * 1000.0;
    v12 = [APAccumulator _accumulationReasonToString:a3];
    v16 = 134218242;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Calling accumulation handler after %.0f mS with reason %{public}@", &v16, 0x16u);
  }

  v13 = [(APAccumulator *)self accumulationHandler];

  if (v13)
  {
    v14 = [(APAccumulator *)self accumulationHandler];
    (v14)[2](v14, v6, a3);
  }

  [(APAccumulator *)self setStartTime:0.0];
  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = *&self;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p: emptying accumulated items.", &v16, 0xCu);
  }
}

- (void)_inactivityEventHandler
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(APAccumulator *)self accumulatedItems];
    v5 = 134218240;
    v6 = self;
    v7 = 2048;
    v8 = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%p: Calling inactivity event handler with %ld items.", &v5, 0x16u);
  }

  [(APAccumulator *)self _stopAccumulationSource];
  [(APAccumulator *)self _callAccumulationHandlerWithReason:3];
  [(APAccumulator *)self _stopInactivitySource];
}

- (void)_accumulationEventHandler
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(APAccumulator *)self accumulatedItems];
    v5 = 134218240;
    v6 = self;
    v7 = 2048;
    v8 = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%p: Calling accumulation handler with %ld items.", &v5, 0x16u);
  }

  [(APAccumulator *)self _stopInactivitySource];
  [(APAccumulator *)self _callAccumulationHandlerWithReason:2];
  [(APAccumulator *)self _stopAccumulationSource];
}

@end
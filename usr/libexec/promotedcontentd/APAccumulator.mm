@interface APAccumulator
+ (id)_accumulationReasonToString:(int64_t)string;
- (APAccumulator)initWithAccumulationTime:(unint64_t)time inactivityTime:(unint64_t)inactivityTime itemLimit:(unint64_t)limit;
- (APAccumulator)initWithCoder:(id)coder;
- (NSArray)accumulatedItems;
- (void)_accumulationEventHandler;
- (void)_callAccumulationHandlerWithReason:(int64_t)reason;
- (void)_inactivityEventHandler;
- (void)_startAccumulationSource;
- (void)_startInactivitySource;
- (void)_stopAccumulationSource;
- (void)_stopInactivitySource;
- (void)accumulate:(id)accumulate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APAccumulator

- (APAccumulator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"accumulationTime"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  v7 = [coderCopy decodeObjectForKey:@"inactivityTime"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];
  v9 = [coderCopy decodeObjectForKey:@"itemLimit"];

  v10 = -[APAccumulator initWithAccumulationTime:inactivityTime:itemLimit:](self, "initWithAccumulationTime:inactivityTime:itemLimit:", unsignedIntegerValue, unsignedIntegerValue2, [v9 unsignedIntegerValue]);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:[(APAccumulator *)self accumulationTime]];
  [coderCopy encodeObject:v5 forKey:@"accumulationTime"];

  v6 = [NSNumber numberWithUnsignedInteger:[(APAccumulator *)self inactivityTime]];
  [coderCopy encodeObject:v6 forKey:@"inactivityTime"];

  v7 = [NSNumber numberWithUnsignedInteger:[(APAccumulator *)self itemLimit]];
  [coderCopy encodeObject:v7 forKey:@"itemLimit"];
}

- (APAccumulator)initWithAccumulationTime:(unint64_t)time inactivityTime:(unint64_t)inactivityTime itemLimit:(unint64_t)limit
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
      timeCopy = time;
      v22 = 2048;
      inactivityTimeCopy = inactivityTime;
      v24 = 2048;
      limitCopy = limit;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%p: creating accumulator with time %lu, inactivity %lu, itemLimit %lu", buf, 0x2Au);
    }

    v8->_accumulationTime = time;
    v8->_inactivityTime = inactivityTime;
    v8->_itemLimit = limit;
    v10 = [NSMutableArray arrayWithCapacity:limit];
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

- (void)accumulate:(id)accumulate
{
  accumulateCopy = accumulate;
  dispatchQueue = [(APAccumulator *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002934B0;
  v7[3] = &unk_10047CC10;
  v7[4] = self;
  v8 = accumulateCopy;
  v6 = accumulateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (NSArray)accumulatedItems
{
  lock = [(APAccumulator *)self lock];
  [lock lock];

  items = [(APAccumulator *)self items];
  v5 = [items copy];

  lock2 = [(APAccumulator *)self lock];
  [lock2 unlock];

  return v5;
}

+ (id)_accumulationReasonToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Invalid reason";
  }

  else
  {
    return *(&off_10047CC30 + string - 1);
  }
}

- (void)_stopAccumulationSource
{
  dispatchSourceAccumulation = [(APAccumulator *)self dispatchSourceAccumulation];

  if (dispatchSourceAccumulation)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: stopping accumulation timer.", &v7, 0xCu);
    }

    dispatchSourceAccumulation2 = [(APAccumulator *)self dispatchSourceAccumulation];
    dispatch_source_cancel(dispatchSourceAccumulation2);

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
      selfCopy = self;
      v13 = 2048;
      accumulationTime = [(APAccumulator *)self accumulationTime];
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: starting accumulation timer for %lu mS (%llu nS).", buf, 0x20u);
    }

    dispatchQueue = [(APAccumulator *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, dispatchQueue);
    [(APAccumulator *)self setDispatchSourceAccumulation:v6];

    dispatchSourceAccumulation = [(APAccumulator *)self dispatchSourceAccumulation];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100293A80;
    handler[3] = &unk_1004790A8;
    handler[4] = self;
    dispatch_source_set_event_handler(dispatchSourceAccumulation, handler);

    dispatchSourceAccumulation2 = [(APAccumulator *)self dispatchSourceAccumulation];
    dispatch_source_set_timer(dispatchSourceAccumulation2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x2710uLL);

    dispatchSourceAccumulation3 = [(APAccumulator *)self dispatchSourceAccumulation];
    dispatch_resume(dispatchSourceAccumulation3);

    [(APAccumulator *)self setStartTime:CFAbsoluteTimeGetCurrent()];
  }
}

- (void)_stopInactivitySource
{
  dispatchSourceInactivity = [(APAccumulator *)self dispatchSourceInactivity];

  if (dispatchSourceInactivity)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: stopping inactivity timer.", &v6, 0xCu);
    }

    dispatchSourceInactivity2 = [(APAccumulator *)self dispatchSourceInactivity];
    dispatch_source_cancel(dispatchSourceInactivity2);

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
      selfCopy = self;
      v13 = 2048;
      inactivityTime = [(APAccumulator *)self inactivityTime];
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%p: starting inactivity timer for %lu mS (%llu nS).", buf, 0x20u);
    }

    dispatchQueue = [(APAccumulator *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, dispatchQueue);
    [(APAccumulator *)self setDispatchSourceInactivity:v6];

    dispatchSourceInactivity = [(APAccumulator *)self dispatchSourceInactivity];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100293D3C;
    handler[3] = &unk_1004790A8;
    handler[4] = self;
    dispatch_source_set_event_handler(dispatchSourceInactivity, handler);

    dispatchSourceInactivity2 = [(APAccumulator *)self dispatchSourceInactivity];
    dispatch_source_set_timer(dispatchSourceInactivity2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x2710uLL);

    dispatchSourceInactivity3 = [(APAccumulator *)self dispatchSourceInactivity];
    dispatch_resume(dispatchSourceInactivity3);
  }
}

- (void)_callAccumulationHandlerWithReason:(int64_t)reason
{
  items = [(APAccumulator *)self items];
  v6 = [items copy];

  items2 = [(APAccumulator *)self items];
  [items2 removeAllObjects];

  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(APAccumulator *)self startTime];
    v11 = (Current - v10) * 1000.0;
    v12 = [APAccumulator _accumulationReasonToString:reason];
    v16 = 134218242;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Calling accumulation handler after %.0f mS with reason %{public}@", &v16, 0x16u);
  }

  accumulationHandler = [(APAccumulator *)self accumulationHandler];

  if (accumulationHandler)
  {
    accumulationHandler2 = [(APAccumulator *)self accumulationHandler];
    (accumulationHandler2)[2](accumulationHandler2, v6, reason);
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
    accumulatedItems = [(APAccumulator *)self accumulatedItems];
    v5 = 134218240;
    selfCopy = self;
    v7 = 2048;
    v8 = [accumulatedItems count];
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
    accumulatedItems = [(APAccumulator *)self accumulatedItems];
    v5 = 134218240;
    selfCopy = self;
    v7 = 2048;
    v8 = [accumulatedItems count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%p: Calling accumulation handler with %ld items.", &v5, 0x16u);
  }

  [(APAccumulator *)self _stopInactivitySource];
  [(APAccumulator *)self _callAccumulationHandlerWithReason:2];
  [(APAccumulator *)self _stopAccumulationSource];
}

@end
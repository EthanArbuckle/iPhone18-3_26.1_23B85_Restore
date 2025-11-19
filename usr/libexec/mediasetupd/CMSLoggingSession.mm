@interface CMSLoggingSession
- (CMSLogger)belongedLogger;
- (id)eventDurations;
- (id)eventOccurance;
- (id)initForType:(id)a3 withMetadata:(id)a4;
- (void)_endSession;
- (void)dealloc;
- (void)recordEvent:(id)a3;
- (void)recordEvent:(id)a3 occuredAt:(id)a4;
@end

@implementation CMSLoggingSession

- (id)initForType:(id)a3 withMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CMSLoggingSession;
  v8 = [(CMSLoggingSession *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sessionType = v8->_sessionType;
    v8->_sessionType = v9;

    objc_storeStrong(&v8->_metadata, a4);
    v11 = objc_opt_new();
    events = v8->events;
    v8->events = v11;
  }

  return v8;
}

- (void)recordEvent:(id)a3 occuredAt:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_sessionEnded)
  {
    NSLog(@"Error: CMSLoggerSession has ended already. %s", "[CMSLoggingSession recordEvent:occuredAt:]");
  }

  else
  {
    v8 = +[CMSLogger _LoggingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000329C4;
    block[3] = &unk_100052128;
    block[4] = self;
    v9 = v6;
    v11 = v9;
    v12 = v7;
    dispatch_async(v8, block);

    if ([v9 isEqualToString:@"End"])
    {
      [(CMSLoggingSession *)self _endSession];
    }
  }
}

- (void)recordEvent:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  [(CMSLoggingSession *)self recordEvent:v4 occuredAt:v5];
}

- (id)eventDurations
{
  v3 = objc_opt_new();
  if ([(NSMutableArray *)self->events count]>= 2)
  {
    v4 = [(NSMutableArray *)self->events firstObject];
    if ([(NSMutableArray *)self->events count]< 2)
    {
      v6 = v4;
    }

    else
    {
      v5 = 1;
      do
      {
        v6 = [(NSMutableArray *)self->events objectAtIndexedSubscript:v5];
        v7 = [v4 eventType];
        v8 = [v6 eventType];
        v9 = [NSString stringWithFormat:@"%@-%@", v7, v8];

        v10 = [v6 timestamp];
        v11 = [v4 timestamp];
        [v10 timeIntervalSinceDate:v11];
        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v9];

        if (v14)
        {
          v15 = [v4 eventType];
          v16 = [v6 eventType];
          NSLog(@"Warning: CMSLogger currently only support every edge on the FSM only go though once. We have passed %@ -> %@ before. The newer measurement will be used right now %s", v15, v16, "[CMSLoggingSession eventDurations]");
        }

        v17 = [NSNumber numberWithDouble:v13];
        [v3 setObject:v17 forKeyedSubscript:v9];

        ++v5;
        v4 = v6;
      }

      while ([(NSMutableArray *)self->events count]> v5);
    }
  }

  return v3;
}

- (id)eventOccurance
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 eventType];
        v11 = [v3 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 unsignedIntegerValue] + 1);
        }

        else
        {
          v12 = &off_100053988;
        }

        v13 = [v9 eventType];
        [v3 setObject:v12 forKeyedSubscript:v13];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_endSession
{
  if (self->_sessionEnded)
  {
    NSLog(@"Error: CMSLoggerSession %@ has ended already. %s", a2, self, "[CMSLoggingSession _endSession]");
  }

  else
  {
    v3 = +[CMSLogger _LoggingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100032F80;
    block[3] = &unk_100050AC0;
    block[4] = self;
    dispatch_async(v3, block);

    self->_sessionEnded = 1;
  }
}

- (void)dealloc
{
  if (!self->_sessionEnded)
  {
    NSLog(@"Warning: CMSLoggerSession %@ has not been closed, so it wasn't added as part of the log. %s", a2, self, "[CMSLoggingSession dealloc]");
  }

  v3.receiver = self;
  v3.super_class = CMSLoggingSession;
  [(CMSLoggingSession *)&v3 dealloc];
}

- (CMSLogger)belongedLogger
{
  WeakRetained = objc_loadWeakRetained(&self->_belongedLogger);

  return WeakRetained;
}

@end
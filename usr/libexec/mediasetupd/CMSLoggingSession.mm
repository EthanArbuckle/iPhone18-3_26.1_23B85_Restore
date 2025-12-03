@interface CMSLoggingSession
- (CMSLogger)belongedLogger;
- (id)eventDurations;
- (id)eventOccurance;
- (id)initForType:(id)type withMetadata:(id)metadata;
- (void)_endSession;
- (void)dealloc;
- (void)recordEvent:(id)event;
- (void)recordEvent:(id)event occuredAt:(id)at;
@end

@implementation CMSLoggingSession

- (id)initForType:(id)type withMetadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = CMSLoggingSession;
  v8 = [(CMSLoggingSession *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    sessionType = v8->_sessionType;
    v8->_sessionType = v9;

    objc_storeStrong(&v8->_metadata, metadata);
    v11 = objc_opt_new();
    events = v8->events;
    v8->events = v11;
  }

  return v8;
}

- (void)recordEvent:(id)event occuredAt:(id)at
{
  eventCopy = event;
  atCopy = at;
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
    v9 = eventCopy;
    v11 = v9;
    v12 = atCopy;
    dispatch_async(v8, block);

    if ([v9 isEqualToString:@"End"])
    {
      [(CMSLoggingSession *)self _endSession];
    }
  }
}

- (void)recordEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSDate date];
  [(CMSLoggingSession *)self recordEvent:eventCopy occuredAt:v5];
}

- (id)eventDurations
{
  v3 = objc_opt_new();
  if ([(NSMutableArray *)self->events count]>= 2)
  {
    firstObject = [(NSMutableArray *)self->events firstObject];
    if ([(NSMutableArray *)self->events count]< 2)
    {
      v6 = firstObject;
    }

    else
    {
      v5 = 1;
      do
      {
        v6 = [(NSMutableArray *)self->events objectAtIndexedSubscript:v5];
        eventType = [firstObject eventType];
        eventType2 = [v6 eventType];
        v9 = [NSString stringWithFormat:@"%@-%@", eventType, eventType2];

        timestamp = [v6 timestamp];
        timestamp2 = [firstObject timestamp];
        [timestamp timeIntervalSinceDate:timestamp2];
        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v9];

        if (v14)
        {
          eventType3 = [firstObject eventType];
          eventType4 = [v6 eventType];
          NSLog(@"Warning: CMSLogger currently only support every edge on the FSM only go though once. We have passed %@ -> %@ before. The newer measurement will be used right now %s", eventType3, eventType4, "[CMSLoggingSession eventDurations]");
        }

        v17 = [NSNumber numberWithDouble:v13];
        [v3 setObject:v17 forKeyedSubscript:v9];

        ++v5;
        firstObject = v6;
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
        eventType = [v9 eventType];
        v11 = [v3 objectForKeyedSubscript:eventType];

        if (v11)
        {
          v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 unsignedIntegerValue] + 1);
        }

        else
        {
          v12 = &off_100053988;
        }

        eventType2 = [v9 eventType];
        [v3 setObject:v12 forKeyedSubscript:eventType2];
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
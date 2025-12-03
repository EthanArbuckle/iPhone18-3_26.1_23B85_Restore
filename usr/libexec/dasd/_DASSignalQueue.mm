@interface _DASSignalQueue
- (_DASSignalQueue)initWithCount:(unint64_t)count;
- (double)mean;
- (double)rate;
- (id)allObjects;
- (id)top;
- (unint64_t)count;
- (void)addObject:(id)object;
@end

@implementation _DASSignalQueue

- (_DASSignalQueue)initWithCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = _DASSignalQueue;
  v4 = [(_DASSignalQueue *)&v8 init];
  if (v4)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:count];
    signalQueueDictionary = v4->_signalQueueDictionary;
    v4->_signalQueueDictionary = v5;

    v4->_limit = count;
    v4->_queueLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_queueLock);
  allValues = [(NSMutableDictionary *)self->_signalQueueDictionary allValues];
  v6 = [allValues count];
  limit = self->_limit;

  if (v6 >= limit)
  {
    allKeys = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
    v9 = [allKeys sortedArrayUsingSelector:"compare:"];
    firstObject = [v9 firstObject];

    [(NSMutableDictionary *)self->_signalQueueDictionary removeObjectForKey:firstObject];
  }

  signalQueueDictionary = self->_signalQueueDictionary;
  v12 = +[NSDate date];
  [(NSMutableDictionary *)signalQueueDictionary setObject:objectCopy forKeyedSubscript:v12];

  os_unfair_lock_unlock(&self->_queueLock);
}

- (id)allObjects
{
  os_unfair_lock_lock(&self->_queueLock);
  allKeys = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
  v4 = [allKeys sortedArrayUsingSelector:"compare:"];

  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027ACC;
  v9[3] = &unk_1001B5BA0;
  v5 = v9[4] = self;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];
  os_unfair_lock_unlock(&self->_queueLock);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)top
{
  os_unfair_lock_lock(&self->_queueLock);
  allKeys = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
  v4 = [allKeys sortedArrayUsingSelector:"compare:"];

  lastObject = [v4 lastObject];
  os_unfair_lock_unlock(&self->_queueLock);
  v6 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:lastObject];

  return v6;
}

- (double)mean
{
  os_unfair_lock_lock(&self->_queueLock);
  allValues = [(NSMutableDictionary *)self->_signalQueueDictionary allValues];
  if ([allValues count] && (objc_msgSend(allValues, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = allValues;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v15 + 1) + 8 * i) doubleValue];
          v10 = v10 + v12;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    v13 = v10 / [v6 count];
    os_unfair_lock_unlock(&self->_queueLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_queueLock);
    v13 = 0.0;
  }

  return v13;
}

- (double)rate
{
  os_unfair_lock_lock(&self->_queueLock);
  allKeys = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
  if ([allKeys count])
  {
    v4 = [allKeys sortedArrayUsingSelector:"compare:"];

    firstObject = [v4 firstObject];
    v6 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:firstObject];
      [v7 doubleValue];
      v9 = v8;

      lastObject = [v4 lastObject];
      v11 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:lastObject];
      [v11 doubleValue];
      v13 = v12;

      os_unfair_lock_unlock(&self->_queueLock);
      v14 = os_log_create("com.apple.clas", "signals");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [lastObject timeIntervalSinceDate:firstObject];
        v19 = 134218496;
        v20 = v9;
        v21 = 2048;
        v22 = v13;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "First %lf, Last %lf, timeInterval %lf", &v19, 0x20u);
      }

      [lastObject timeIntervalSinceDate:firstObject];
      v17 = (v13 - v9) / v16;
    }

    else
    {
      os_unfair_lock_unlock(&self->_queueLock);
      v17 = 0.0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_queueLock);
    v17 = 0.0;
    v4 = allKeys;
  }

  return v17;
}

- (unint64_t)count
{
  allValues = [(NSMutableDictionary *)self->_signalQueueDictionary allValues];
  v3 = [allValues count];

  return v3;
}

@end
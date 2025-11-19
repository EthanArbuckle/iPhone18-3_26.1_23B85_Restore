@interface _DASSignalQueue
- (_DASSignalQueue)initWithCount:(unint64_t)a3;
- (double)mean;
- (double)rate;
- (id)allObjects;
- (id)top;
- (unint64_t)count;
- (void)addObject:(id)a3;
@end

@implementation _DASSignalQueue

- (_DASSignalQueue)initWithCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _DASSignalQueue;
  v4 = [(_DASSignalQueue *)&v8 init];
  if (v4)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:a3];
    signalQueueDictionary = v4->_signalQueueDictionary;
    v4->_signalQueueDictionary = v5;

    v4->_limit = a3;
    v4->_queueLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_queueLock);
  v5 = [(NSMutableDictionary *)self->_signalQueueDictionary allValues];
  v6 = [v5 count];
  limit = self->_limit;

  if (v6 >= limit)
  {
    v8 = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
    v9 = [v8 sortedArrayUsingSelector:"compare:"];
    v10 = [v9 firstObject];

    [(NSMutableDictionary *)self->_signalQueueDictionary removeObjectForKey:v10];
  }

  signalQueueDictionary = self->_signalQueueDictionary;
  v12 = +[NSDate date];
  [(NSMutableDictionary *)signalQueueDictionary setObject:v4 forKeyedSubscript:v12];

  os_unfair_lock_unlock(&self->_queueLock);
}

- (id)allObjects
{
  os_unfair_lock_lock(&self->_queueLock);
  v3 = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

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
  v3 = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

  v5 = [v4 lastObject];
  os_unfair_lock_unlock(&self->_queueLock);
  v6 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:v5];

  return v6;
}

- (double)mean
{
  os_unfair_lock_lock(&self->_queueLock);
  v3 = [(NSMutableDictionary *)self->_signalQueueDictionary allValues];
  if ([v3 count] && (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v3;
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
  v3 = [(NSMutableDictionary *)self->_signalQueueDictionary allKeys];
  if ([v3 count])
  {
    v4 = [v3 sortedArrayUsingSelector:"compare:"];

    v5 = [v4 firstObject];
    v6 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:v5];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v4 lastObject];
      v11 = [(NSMutableDictionary *)self->_signalQueueDictionary objectForKeyedSubscript:v10];
      [v11 doubleValue];
      v13 = v12;

      os_unfair_lock_unlock(&self->_queueLock);
      v14 = os_log_create("com.apple.clas", "signals");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [v10 timeIntervalSinceDate:v5];
        v19 = 134218496;
        v20 = v9;
        v21 = 2048;
        v22 = v13;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "First %lf, Last %lf, timeInterval %lf", &v19, 0x20u);
      }

      [v10 timeIntervalSinceDate:v5];
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
    v4 = v3;
  }

  return v17;
}

- (unint64_t)count
{
  v2 = [(NSMutableDictionary *)self->_signalQueueDictionary allValues];
  v3 = [v2 count];

  return v3;
}

@end
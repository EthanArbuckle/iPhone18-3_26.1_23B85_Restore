@interface KTNearFutureScheduler
- (KTNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay continuingDelay:(unint64_t)continuingDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code block:(id)block;
- (KTNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay exponentialBackoff:(double)backoff maximumDelay:(unint64_t)maximumDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code block:(id)block;
- (NSDate)nextFireTime;
- (id)description;
- (id)makeOperationDependency;
- (id)status;
- (void)_onqueueTimerTick;
- (void)_onqueueTrigger:(unint64_t)trigger maximumDelay:(unint64_t)delay;
- (void)cancel;
- (void)changeDelays:(unint64_t)delays continuingDelay:(unint64_t)delay;
- (void)trigger;
- (void)triggerAt:(unint64_t)at;
- (void)waitUntil:(unint64_t)until;
@end

@implementation KTNearFutureScheduler

- (KTNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay continuingDelay:(unint64_t)continuingDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code block:(id)block
{
  if (delay)
  {
    v8 = continuingDelay / delay;
  }

  else
  {
    v8 = 1;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  return [KTNearFutureScheduler initWithName:"initWithName:initialDelay:exponentialBackoff:maximumDelay:keepProcessAlive:dependencyDescriptionCode:block:" initialDelay:name exponentialBackoff:v8 maximumDelay:? keepProcessAlive:? dependencyDescriptionCode:? block:?];
}

- (KTNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay exponentialBackoff:(double)backoff maximumDelay:(unint64_t)maximumDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v36.receiver = self;
  v36.super_class = KTNearFutureScheduler;
  v19 = [(KTNearFutureScheduler *)&v36 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, name);
    nameCopy = [NSString stringWithFormat:@"near-future-scheduler-%@", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String, v23);
    queue = v20->_queue;
    v20->_queue = v24;

    v20->_initialDelay = delay;
    v20->_currentDelay = delay;
    v20->_maximumDelay = maximumDelay;
    v20->_backoff = backoff;
    v26 = objc_retainBlock(blockCopy);
    futureBlock = v20->_futureBlock;
    v20->_futureBlock = v26;

    v20->_liveRequest = 0;
    v28 = objc_alloc_init(KTCondition);
    liveRequestReceived = v20->_liveRequestReceived;
    v20->_liveRequestReceived = v28;

    predictedNextFireTime = v20->_predictedNextFireTime;
    v20->_predictedNextFireTime = 0;

    v20->_keepProcessAlive = alive;
    v31 = objc_alloc_init(NSOperationQueue);
    operationQueue = v20->_operationQueue;
    v20->_operationQueue = v31;

    v20->_operationDependencyDescriptionCode = code;
    makeOperationDependency = [(KTNearFutureScheduler *)v20 makeOperationDependency];
    operationDependency = v20->_operationDependency;
    v20->_operationDependency = makeOperationDependency;
  }

  return v20;
}

- (void)changeDelays:(unint64_t)delays continuingDelay:(unint64_t)delay
{
  queue = [(KTNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA50;
  block[3] = &unk_100095A10;
  block[4] = self;
  block[5] = delays;
  block[6] = delay;
  dispatch_sync(queue, block);
}

- (id)makeOperationDependency
{
  name = [(KTNearFutureScheduler *)self name];
  v4 = [NSString stringWithFormat:@"nfs-%@", name];
  v5 = [KTResultOperation named:v4 withBlock:&stru_100095A30];

  [v5 setDescriptionErrorCode:{-[KTNearFutureScheduler operationDependencyDescriptionCode](self, "operationDependencyDescriptionCode")}];

  return v5;
}

- (id)description
{
  nextFireTime = [(KTNearFutureScheduler *)self nextFireTime];
  if (nextFireTime)
  {
    name2 = objc_alloc_init(NSDateFormatter);
    [name2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    name = [(KTNearFutureScheduler *)self name];
    v6 = [name2 stringFromDate:nextFireTime];
    v7 = [NSString stringWithFormat:@"<KTNearFutureScheduler(%@): next at %@", name, v6];
  }

  else
  {
    name2 = [(KTNearFutureScheduler *)self name];
    v7 = [NSString stringWithFormat:@"<KTNearFutureScheduler(%@): no pending attempts", name2];
  }

  return v7;
}

- (NSDate)nextFireTime
{
  if (-[KTNearFutureScheduler liveRequest](self, "liveRequest") || (-[KTNearFutureScheduler liveRequestReceived](self, "liveRequestReceived"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 wait:50000], v3, !v4))
  {
    predictedNextFireTime = [(KTNearFutureScheduler *)self predictedNextFireTime];
  }

  else
  {
    predictedNextFireTime = 0;
  }

  return predictedNextFireTime;
}

- (void)waitUntil:(unint64_t)until
{
  queue = [(KTNearFutureScheduler *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001BD98;
  v6[3] = &unk_100095A58;
  v6[4] = self;
  v6[5] = until;
  dispatch_sync(queue, v6);
}

- (void)triggerAt:(unint64_t)at
{
  objc_initWeak(&location, self);
  queue = [(KTNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BE80;
  block[3] = &unk_100095A80;
  objc_copyWeak(v7, &location);
  v7[1] = at;
  dispatch_async(queue, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_onqueueTimerTick
{
  queue = [(KTNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(KTNearFutureScheduler *)self liveRequest])
  {
    operationDependency = [(KTNearFutureScheduler *)self operationDependency];
    makeOperationDependency = [(KTNearFutureScheduler *)self makeOperationDependency];
    [(KTNearFutureScheduler *)self setOperationDependency:makeOperationDependency];

    futureBlock = [(KTNearFutureScheduler *)self futureBlock];
    futureBlock[2]();

    [(KTNearFutureScheduler *)self setLiveRequest:0];
    v6 = objc_alloc_init(KTCondition);
    [(KTNearFutureScheduler *)self setLiveRequestReceived:v6];

    [(KTNearFutureScheduler *)self setTransaction:0];
    if ([(KTNearFutureScheduler *)self currentDelay])
    {
      currentDelay = [(KTNearFutureScheduler *)self currentDelay];
      [(KTNearFutureScheduler *)self backoff];
      v9 = v8 * currentDelay;
      maximumDelay = [(KTNearFutureScheduler *)self maximumDelay];
      if (v9 < maximumDelay)
      {
        maximumDelay = v9;
      }

      maximumDelay2 = maximumDelay;
    }

    else
    {
      maximumDelay2 = [(KTNearFutureScheduler *)self maximumDelay];
    }

    [(KTNearFutureScheduler *)self setCurrentDelay:maximumDelay2];
    timer = [(KTNearFutureScheduler *)self timer];
    v15 = dispatch_walltime(0, [(KTNearFutureScheduler *)self currentDelay]);
    dispatch_source_set_timer(timer, v15, [(KTNearFutureScheduler *)self currentDelay], 0x2FAF080uLL);

    operationQueue = [(KTNearFutureScheduler *)self operationQueue];
    [operationQueue addOperation:operationDependency];

    v17 = [NSDate dateWithTimeIntervalSinceNow:[(KTNearFutureScheduler *)self currentDelay]/ 1000000000.0];
    [(KTNearFutureScheduler *)self setPredictedNextFireTime:v17];
  }

  else
  {
    timer2 = [(KTNearFutureScheduler *)self timer];
    dispatch_source_cancel(timer2);

    [(KTNearFutureScheduler *)self setPredictedNextFireTime:0];
    initialDelay = [(KTNearFutureScheduler *)self initialDelay];

    [(KTNearFutureScheduler *)self setCurrentDelay:initialDelay];
  }
}

- (void)trigger
{
  objc_initWeak(&location, self);
  queue = [(KTNearFutureScheduler *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C210;
  v4[3] = &unk_100094BA8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_onqueueTrigger:(unint64_t)trigger maximumDelay:(unint64_t)delay
{
  queue = [(KTNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([(KTNearFutureScheduler *)self keepProcessAlive])
  {
    transaction = [(KTNearFutureScheduler *)self transaction];

    if (!transaction)
    {
      name = [(KTNearFutureScheduler *)self name];
      v10 = [NSString stringWithFormat:@"com.apple.transparencyd.%@", name];
      [v10 UTF8String];
      v11 = os_transaction_create();
      [(KTNearFutureScheduler *)self setTransaction:v11];
    }
  }

  if (trigger)
  {
    predictedNextFireTime = [(KTNearFutureScheduler *)self predictedNextFireTime];

    if (predictedNextFireTime)
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:trigger / 1000000000.0];
      predictedNextFireTime2 = [(KTNearFutureScheduler *)self predictedNextFireTime];
      v15 = [v13 compare:predictedNextFireTime2];

      if (v15 == 1)
      {
        timer = [(KTNearFutureScheduler *)self timer];
        dispatch_source_cancel(timer);

        [(KTNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  if (delay != -1)
  {
    predictedNextFireTime3 = [(KTNearFutureScheduler *)self predictedNextFireTime];

    if (predictedNextFireTime3)
    {
      v18 = [NSDate dateWithTimeIntervalSinceNow:trigger / 1000000000.0];
      predictedNextFireTime4 = [(KTNearFutureScheduler *)self predictedNextFireTime];
      v20 = [v18 compare:predictedNextFireTime4];

      if (v20 != 1)
      {
        timer2 = [(KTNearFutureScheduler *)self timer];
        dispatch_source_cancel(timer2);

        [(KTNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  timer3 = [(KTNearFutureScheduler *)self timer];
  if (!timer3 || ([(KTNearFutureScheduler *)self timer], v23 = objc_claimAutoreleasedReturnValue(), v24 = dispatch_source_testcancel(v23), v23, timer3, v24))
  {
    queue2 = [(KTNearFutureScheduler *)self queue];
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
    [(KTNearFutureScheduler *)self setTimer:v26];

    timer4 = [(KTNearFutureScheduler *)self timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001C664;
    handler[3] = &unk_100094BA8;
    objc_copyWeak(&v37, &location);
    dispatch_source_set_event_handler(timer4, handler);

    currentDelay = [(KTNearFutureScheduler *)self currentDelay];
    if (currentDelay <= trigger)
    {
      triggerCopy = trigger;
    }

    else
    {
      triggerCopy = currentDelay;
    }

    if (!trigger)
    {
      triggerCopy = currentDelay;
    }

    if (triggerCopy >= delay)
    {
      delayCopy = delay;
    }

    else
    {
      delayCopy = triggerCopy;
    }

    if (delay == -1)
    {
      v31 = triggerCopy;
    }

    else
    {
      v31 = delayCopy;
    }

    timer5 = [(KTNearFutureScheduler *)self timer];
    v33 = dispatch_walltime(0, v31);
    dispatch_source_set_timer(timer5, v33, [(KTNearFutureScheduler *)self currentDelay], 0x2FAF080uLL);

    timer6 = [(KTNearFutureScheduler *)self timer];
    dispatch_resume(timer6);

    v35 = [NSDate dateWithTimeIntervalSinceNow:v31 / 1000000000.0];
    [(KTNearFutureScheduler *)self setPredictedNextFireTime:v35];

    objc_destroyWeak(&v37);
  }

  objc_destroyWeak(&location);
}

- (void)cancel
{
  queue = [(KTNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C72C;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)status
{
  v10 = @"currentDelay";
  0x3B9ACA00 = [NSNumber numberWithUnsignedLongLong:[(KTNearFutureScheduler *)self currentDelay]/ 0x3B9ACA00];
  v11 = 0x3B9ACA00;
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v5 = [v4 mutableCopy];

  predictedNextFireTime = [(KTNearFutureScheduler *)self predictedNextFireTime];

  if (predictedNextFireTime)
  {
    predictedNextFireTime2 = [(KTNearFutureScheduler *)self predictedNextFireTime];
    [predictedNextFireTime2 timeIntervalSinceNow];
    v8 = [NSNumber numberWithDouble:?];
    [v5 setObject:v8 forKeyedSubscript:@"nextFire"];
  }

  return v5;
}

@end
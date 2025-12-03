@interface CKKSNearFutureScheduler
- (CKKSNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay continuingDelay:(unint64_t)continuingDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code block:(id)block;
- (CKKSNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay startingBackoff:(unint64_t)backoff exponentialBackoff:(double)exponentialBackoff maximumDelay:(unint64_t)maximumDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code qosClass:(unsigned int)self0 block:(id)self1;
- (NSDate)nextFireTime;
- (id)description;
- (id)makeOperationDependency;
- (void)_onqueueTimerTick;
- (void)_onqueueTrigger:(unint64_t)trigger maximumDelay:(unint64_t)delay;
- (void)cancel;
- (void)changeDelays:(unint64_t)delays continuingDelay:(unint64_t)delay;
- (void)trigger;
- (void)triggerAt:(unint64_t)at;
- (void)waitUntil:(unint64_t)until;
@end

@implementation CKKSNearFutureScheduler

- (void)cancel
{
  queue = [(CKKSNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001061E8;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onqueueTrigger:(unint64_t)trigger maximumDelay:(unint64_t)delay
{
  queue = [(CKKSNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([(CKKSNearFutureScheduler *)self keepProcessAlive])
  {
    transaction = [(CKKSNearFutureScheduler *)self transaction];

    if (!transaction)
    {
      name = [(CKKSNearFutureScheduler *)self name];
      v10 = [NSString stringWithFormat:@"com.apple.securityd.%@", name];
      [v10 UTF8String];
      v11 = os_transaction_create();
      [(CKKSNearFutureScheduler *)self setTransaction:v11];
    }
  }

  if (trigger)
  {
    predictedNextFireTime = [(CKKSNearFutureScheduler *)self predictedNextFireTime];

    if (predictedNextFireTime)
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:trigger / 1000000000.0];
      predictedNextFireTime2 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];
      v15 = [v13 compare:predictedNextFireTime2];

      if (v15 == 1)
      {
        timer = [(CKKSNearFutureScheduler *)self timer];
        dispatch_source_cancel(timer);

        [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  if (delay != -1)
  {
    predictedNextFireTime3 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];

    if (predictedNextFireTime3)
    {
      v18 = [NSDate dateWithTimeIntervalSinceNow:trigger / 1000000000.0];
      predictedNextFireTime4 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];
      v20 = [v18 compare:predictedNextFireTime4];

      if (v20 != 1)
      {
        timer2 = [(CKKSNearFutureScheduler *)self timer];
        dispatch_source_cancel(timer2);

        [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  timer3 = [(CKKSNearFutureScheduler *)self timer];
  if (!timer3 || ([(CKKSNearFutureScheduler *)self timer], v23 = objc_claimAutoreleasedReturnValue(), v24 = dispatch_source_testcancel(v23), v23, timer3, v24))
  {
    queue2 = [(CKKSNearFutureScheduler *)self queue];
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
    [(CKKSNearFutureScheduler *)self setTimer:v26];

    timer4 = [(CKKSNearFutureScheduler *)self timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100106680;
    handler[3] = &unk_1003452E8;
    objc_copyWeak(&v38, &location);
    dispatch_source_set_event_handler(timer4, handler);

    currentDelay = [(CKKSNearFutureScheduler *)self currentDelay];
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

    timer5 = [(CKKSNearFutureScheduler *)self timer];
    v33 = dispatch_walltime(0, v31);
    if ([(CKKSNearFutureScheduler *)self currentDelay])
    {
      currentDelay2 = [(CKKSNearFutureScheduler *)self currentDelay];
    }

    else
    {
      currentDelay2 = 1;
    }

    dispatch_source_set_timer(timer5, v33, currentDelay2, 0x2FAF080uLL);

    timer6 = [(CKKSNearFutureScheduler *)self timer];
    dispatch_resume(timer6);

    v36 = [NSDate dateWithTimeIntervalSinceNow:v31 / 1000000000.0];
    [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:v36];

    objc_destroyWeak(&v38);
  }

  objc_destroyWeak(&location);
}

- (void)trigger
{
  objc_initWeak(&location, self);
  queue = [(CKKSNearFutureScheduler *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100106788;
  v4[3] = &unk_1003452E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_onqueueTimerTick
{
  queue = [(CKKSNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CKKSNearFutureScheduler *)self liveRequest])
  {
    operationDependency = [(CKKSNearFutureScheduler *)self operationDependency];
    makeOperationDependency = [(CKKSNearFutureScheduler *)self makeOperationDependency];
    [(CKKSNearFutureScheduler *)self setOperationDependency:makeOperationDependency];

    futureBlock = [(CKKSNearFutureScheduler *)self futureBlock];
    futureBlock[2]();

    [(CKKSNearFutureScheduler *)self setLiveRequest:0];
    v6 = objc_alloc_init(CKKSCondition);
    [(CKKSNearFutureScheduler *)self setLiveRequestReceived:v6];

    [(CKKSNearFutureScheduler *)self setTransaction:0];
    currentDelay = [(CKKSNearFutureScheduler *)self currentDelay];
    if (currentDelay == [(CKKSNearFutureScheduler *)self initialDelay])
    {
      if ([(CKKSNearFutureScheduler *)self startingBackoff]&& (v8 = [(CKKSNearFutureScheduler *)self startingBackoff], v8 < [(CKKSNearFutureScheduler *)self maximumDelay]))
      {
        startingBackoff = [(CKKSNearFutureScheduler *)self startingBackoff];
      }

      else
      {
        startingBackoff = [(CKKSNearFutureScheduler *)self maximumDelay];
      }

      v17 = startingBackoff;
    }

    else
    {
      currentDelay2 = [(CKKSNearFutureScheduler *)self currentDelay];
      [(CKKSNearFutureScheduler *)self backoff];
      if (v13 * currentDelay2 >= [(CKKSNearFutureScheduler *)self maximumDelay])
      {
        maximumDelay = [(CKKSNearFutureScheduler *)self maximumDelay];
      }

      else
      {
        currentDelay3 = [(CKKSNearFutureScheduler *)self currentDelay];
        [(CKKSNearFutureScheduler *)self backoff];
        maximumDelay = v15 * currentDelay3;
      }

      v17 = maximumDelay;
    }

    [(CKKSNearFutureScheduler *)self setCurrentDelay:v17];
    timer = [(CKKSNearFutureScheduler *)self timer];
    v19 = dispatch_walltime(0, [(CKKSNearFutureScheduler *)self currentDelay]);
    if ([(CKKSNearFutureScheduler *)self currentDelay])
    {
      currentDelay4 = [(CKKSNearFutureScheduler *)self currentDelay];
    }

    else
    {
      currentDelay4 = 1;
    }

    dispatch_source_set_timer(timer, v19, currentDelay4, 0x2FAF080uLL);

    operationQueue = [(CKKSNearFutureScheduler *)self operationQueue];
    [operationQueue addOperation:operationDependency];

    v22 = [NSDate dateWithTimeIntervalSinceNow:[(CKKSNearFutureScheduler *)self currentDelay]/ 1000000000.0];
    [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:v22];
  }

  else
  {
    timer2 = [(CKKSNearFutureScheduler *)self timer];
    dispatch_source_cancel(timer2);

    [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:0];
    initialDelay = [(CKKSNearFutureScheduler *)self initialDelay];

    [(CKKSNearFutureScheduler *)self setCurrentDelay:initialDelay];
  }
}

- (void)triggerAt:(unint64_t)at
{
  objc_initWeak(&location, self);
  queue = [(CKKSNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106B9C;
  block[3] = &unk_100337130;
  objc_copyWeak(v7, &location);
  v7[1] = at;
  dispatch_async(queue, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)waitUntil:(unint64_t)until
{
  queue = [(CKKSNearFutureScheduler *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100106CAC;
  v6[3] = &unk_100338138;
  v6[4] = self;
  v6[5] = until;
  dispatch_sync(queue, v6);
}

- (NSDate)nextFireTime
{
  if (-[CKKSNearFutureScheduler liveRequest](self, "liveRequest") || (-[CKKSNearFutureScheduler liveRequestReceived](self, "liveRequestReceived"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 wait:50000], v3, !v4))
  {
    predictedNextFireTime = [(CKKSNearFutureScheduler *)self predictedNextFireTime];
  }

  else
  {
    predictedNextFireTime = 0;
  }

  return predictedNextFireTime;
}

- (id)description
{
  nextFireTime = [(CKKSNearFutureScheduler *)self nextFireTime];
  if (nextFireTime)
  {
    name2 = objc_alloc_init(NSDateFormatter);
    [name2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    name = [(CKKSNearFutureScheduler *)self name];
    v6 = [name2 stringFromDate:nextFireTime];
    v7 = [NSString stringWithFormat:@"<CKKSNearFutureScheduler(%@): next at %@", name, v6];
  }

  else
  {
    name2 = [(CKKSNearFutureScheduler *)self name];
    v7 = [NSString stringWithFormat:@"<CKKSNearFutureScheduler(%@): no pending attempts", name2];
  }

  return v7;
}

- (id)makeOperationDependency
{
  name = [(CKKSNearFutureScheduler *)self name];
  v4 = [NSString stringWithFormat:@"nfs-%@", name];
  v5 = [CKKSResultOperation named:v4 withBlock:&stru_100337108];

  [v5 setDescriptionErrorCode:{-[CKKSNearFutureScheduler operationDependencyDescriptionCode](self, "operationDependencyDescriptionCode")}];

  return v5;
}

- (void)changeDelays:(unint64_t)delays continuingDelay:(unint64_t)delay
{
  queue = [(CKKSNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106F90;
  block[3] = &unk_1003370E8;
  block[4] = self;
  block[5] = delays;
  block[6] = delay;
  dispatch_sync(queue, block);
}

- (CKKSNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay startingBackoff:(unint64_t)backoff exponentialBackoff:(double)exponentialBackoff maximumDelay:(unint64_t)maximumDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code qosClass:(unsigned int)self0 block:(id)self1
{
  nameCopy = name;
  blockCopy = block;
  v38.receiver = self;
  v38.super_class = CKKSNearFutureScheduler;
  v21 = [(CKKSNearFutureScheduler *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, name);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, class, 0);

    nameCopy = [NSString stringWithFormat:@"near-future-scheduler-%@", nameCopy];
    v26 = dispatch_queue_create([nameCopy UTF8String], v24);
    queue = v22->_queue;
    v22->_queue = v26;

    v22->_initialDelay = delay;
    v22->_currentDelay = delay;
    v22->_maximumDelay = maximumDelay;
    v22->_backoff = exponentialBackoff;
    v28 = objc_retainBlock(blockCopy);
    futureBlock = v22->_futureBlock;
    v22->_futureBlock = v28;

    v22->_liveRequest = 0;
    v30 = objc_alloc_init(CKKSCondition);
    liveRequestReceived = v22->_liveRequestReceived;
    v22->_liveRequestReceived = v30;

    predictedNextFireTime = v22->_predictedNextFireTime;
    v22->_predictedNextFireTime = 0;

    v22->_keepProcessAlive = alive;
    v33 = objc_alloc_init(NSOperationQueue);
    operationQueue = v22->_operationQueue;
    v22->_operationQueue = v33;

    v22->_operationDependencyDescriptionCode = code;
    makeOperationDependency = [(CKKSNearFutureScheduler *)v22 makeOperationDependency];
    operationDependency = v22->_operationDependency;
    v22->_operationDependency = makeOperationDependency;

    v22->_startingBackoff = backoff;
  }

  return v22;
}

- (CKKSNearFutureScheduler)initWithName:(id)name initialDelay:(unint64_t)delay continuingDelay:(unint64_t)continuingDelay keepProcessAlive:(BOOL)alive dependencyDescriptionCode:(int64_t)code block:(id)block
{
  if (delay)
  {
    v8 = continuingDelay / delay;
    if (continuingDelay / delay <= 1)
    {
      v8 = 1;
    }

    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  return [CKKSNearFutureScheduler initWithName:"initWithName:initialDelay:exponentialBackoff:maximumDelay:keepProcessAlive:dependencyDescriptionCode:block:" initialDelay:name exponentialBackoff:v9 maximumDelay:? keepProcessAlive:? dependencyDescriptionCode:? block:?];
}

@end
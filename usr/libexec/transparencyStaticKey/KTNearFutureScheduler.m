@interface KTNearFutureScheduler
- (KTNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 continuingDelay:(unint64_t)a5 keepProcessAlive:(BOOL)a6 dependencyDescriptionCode:(int64_t)a7 block:(id)a8;
- (KTNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 exponentialBackoff:(double)a5 maximumDelay:(unint64_t)a6 keepProcessAlive:(BOOL)a7 dependencyDescriptionCode:(int64_t)a8 block:(id)a9;
- (NSDate)nextFireTime;
- (id)description;
- (id)makeOperationDependency;
- (id)status;
- (void)_onqueueTimerTick;
- (void)_onqueueTrigger:(unint64_t)a3 maximumDelay:(unint64_t)a4;
- (void)cancel;
- (void)changeDelays:(unint64_t)a3 continuingDelay:(unint64_t)a4;
- (void)trigger;
- (void)triggerAt:(unint64_t)a3;
- (void)waitUntil:(unint64_t)a3;
@end

@implementation KTNearFutureScheduler

- (KTNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 continuingDelay:(unint64_t)a5 keepProcessAlive:(BOOL)a6 dependencyDescriptionCode:(int64_t)a7 block:(id)a8
{
  if (a4)
  {
    v8 = a5 / a4;
  }

  else
  {
    v8 = 1;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  return [KTNearFutureScheduler initWithName:"initWithName:initialDelay:exponentialBackoff:maximumDelay:keepProcessAlive:dependencyDescriptionCode:block:" initialDelay:a3 exponentialBackoff:v8 maximumDelay:? keepProcessAlive:? dependencyDescriptionCode:? block:?];
}

- (KTNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 exponentialBackoff:(double)a5 maximumDelay:(unint64_t)a6 keepProcessAlive:(BOOL)a7 dependencyDescriptionCode:(int64_t)a8 block:(id)a9
{
  v17 = a3;
  v18 = a9;
  v36.receiver = self;
  v36.super_class = KTNearFutureScheduler;
  v19 = [(KTNearFutureScheduler *)&v36 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, a3);
    v21 = [NSString stringWithFormat:@"near-future-scheduler-%@", v17];
    v22 = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);
    queue = v20->_queue;
    v20->_queue = v24;

    v20->_initialDelay = a4;
    v20->_currentDelay = a4;
    v20->_maximumDelay = a6;
    v20->_backoff = a5;
    v26 = objc_retainBlock(v18);
    futureBlock = v20->_futureBlock;
    v20->_futureBlock = v26;

    v20->_liveRequest = 0;
    v28 = objc_alloc_init(KTCondition);
    liveRequestReceived = v20->_liveRequestReceived;
    v20->_liveRequestReceived = v28;

    predictedNextFireTime = v20->_predictedNextFireTime;
    v20->_predictedNextFireTime = 0;

    v20->_keepProcessAlive = a7;
    v31 = objc_alloc_init(NSOperationQueue);
    operationQueue = v20->_operationQueue;
    v20->_operationQueue = v31;

    v20->_operationDependencyDescriptionCode = a8;
    v33 = [(KTNearFutureScheduler *)v20 makeOperationDependency];
    operationDependency = v20->_operationDependency;
    v20->_operationDependency = v33;
  }

  return v20;
}

- (void)changeDelays:(unint64_t)a3 continuingDelay:(unint64_t)a4
{
  v7 = [(KTNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA50;
  block[3] = &unk_100095A10;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(v7, block);
}

- (id)makeOperationDependency
{
  v3 = [(KTNearFutureScheduler *)self name];
  v4 = [NSString stringWithFormat:@"nfs-%@", v3];
  v5 = [KTResultOperation named:v4 withBlock:&stru_100095A30];

  [v5 setDescriptionErrorCode:{-[KTNearFutureScheduler operationDependencyDescriptionCode](self, "operationDependencyDescriptionCode")}];

  return v5;
}

- (id)description
{
  v3 = [(KTNearFutureScheduler *)self nextFireTime];
  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v5 = [(KTNearFutureScheduler *)self name];
    v6 = [v4 stringFromDate:v3];
    v7 = [NSString stringWithFormat:@"<KTNearFutureScheduler(%@): next at %@", v5, v6];
  }

  else
  {
    v4 = [(KTNearFutureScheduler *)self name];
    v7 = [NSString stringWithFormat:@"<KTNearFutureScheduler(%@): no pending attempts", v4];
  }

  return v7;
}

- (NSDate)nextFireTime
{
  if (-[KTNearFutureScheduler liveRequest](self, "liveRequest") || (-[KTNearFutureScheduler liveRequestReceived](self, "liveRequestReceived"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 wait:50000], v3, !v4))
  {
    v5 = [(KTNearFutureScheduler *)self predictedNextFireTime];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)waitUntil:(unint64_t)a3
{
  v5 = [(KTNearFutureScheduler *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001BD98;
  v6[3] = &unk_100095A58;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)triggerAt:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(KTNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BE80;
  block[3] = &unk_100095A80;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_onqueueTimerTick
{
  v3 = [(KTNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(KTNearFutureScheduler *)self liveRequest])
  {
    v18 = [(KTNearFutureScheduler *)self operationDependency];
    v4 = [(KTNearFutureScheduler *)self makeOperationDependency];
    [(KTNearFutureScheduler *)self setOperationDependency:v4];

    v5 = [(KTNearFutureScheduler *)self futureBlock];
    v5[2]();

    [(KTNearFutureScheduler *)self setLiveRequest:0];
    v6 = objc_alloc_init(KTCondition);
    [(KTNearFutureScheduler *)self setLiveRequestReceived:v6];

    [(KTNearFutureScheduler *)self setTransaction:0];
    if ([(KTNearFutureScheduler *)self currentDelay])
    {
      v7 = [(KTNearFutureScheduler *)self currentDelay];
      [(KTNearFutureScheduler *)self backoff];
      v9 = v8 * v7;
      v10 = [(KTNearFutureScheduler *)self maximumDelay];
      if (v9 < v10)
      {
        v10 = v9;
      }

      v11 = v10;
    }

    else
    {
      v11 = [(KTNearFutureScheduler *)self maximumDelay];
    }

    [(KTNearFutureScheduler *)self setCurrentDelay:v11];
    v14 = [(KTNearFutureScheduler *)self timer];
    v15 = dispatch_walltime(0, [(KTNearFutureScheduler *)self currentDelay]);
    dispatch_source_set_timer(v14, v15, [(KTNearFutureScheduler *)self currentDelay], 0x2FAF080uLL);

    v16 = [(KTNearFutureScheduler *)self operationQueue];
    [v16 addOperation:v18];

    v17 = [NSDate dateWithTimeIntervalSinceNow:[(KTNearFutureScheduler *)self currentDelay]/ 1000000000.0];
    [(KTNearFutureScheduler *)self setPredictedNextFireTime:v17];
  }

  else
  {
    v12 = [(KTNearFutureScheduler *)self timer];
    dispatch_source_cancel(v12);

    [(KTNearFutureScheduler *)self setPredictedNextFireTime:0];
    v13 = [(KTNearFutureScheduler *)self initialDelay];

    [(KTNearFutureScheduler *)self setCurrentDelay:v13];
  }
}

- (void)trigger
{
  objc_initWeak(&location, self);
  v3 = [(KTNearFutureScheduler *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C210;
  v4[3] = &unk_100094BA8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_onqueueTrigger:(unint64_t)a3 maximumDelay:(unint64_t)a4
{
  v7 = [(KTNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(v7);

  objc_initWeak(&location, self);
  if ([(KTNearFutureScheduler *)self keepProcessAlive])
  {
    v8 = [(KTNearFutureScheduler *)self transaction];

    if (!v8)
    {
      v9 = [(KTNearFutureScheduler *)self name];
      v10 = [NSString stringWithFormat:@"com.apple.transparencyd.%@", v9];
      [v10 UTF8String];
      v11 = os_transaction_create();
      [(KTNearFutureScheduler *)self setTransaction:v11];
    }
  }

  if (a3)
  {
    v12 = [(KTNearFutureScheduler *)self predictedNextFireTime];

    if (v12)
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:a3 / 1000000000.0];
      v14 = [(KTNearFutureScheduler *)self predictedNextFireTime];
      v15 = [v13 compare:v14];

      if (v15 == 1)
      {
        v16 = [(KTNearFutureScheduler *)self timer];
        dispatch_source_cancel(v16);

        [(KTNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  if (a4 != -1)
  {
    v17 = [(KTNearFutureScheduler *)self predictedNextFireTime];

    if (v17)
    {
      v18 = [NSDate dateWithTimeIntervalSinceNow:a3 / 1000000000.0];
      v19 = [(KTNearFutureScheduler *)self predictedNextFireTime];
      v20 = [v18 compare:v19];

      if (v20 != 1)
      {
        v21 = [(KTNearFutureScheduler *)self timer];
        dispatch_source_cancel(v21);

        [(KTNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  v22 = [(KTNearFutureScheduler *)self timer];
  if (!v22 || ([(KTNearFutureScheduler *)self timer], v23 = objc_claimAutoreleasedReturnValue(), v24 = dispatch_source_testcancel(v23), v23, v22, v24))
  {
    v25 = [(KTNearFutureScheduler *)self queue];
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v25);
    [(KTNearFutureScheduler *)self setTimer:v26];

    v27 = [(KTNearFutureScheduler *)self timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001C664;
    handler[3] = &unk_100094BA8;
    objc_copyWeak(&v37, &location);
    dispatch_source_set_event_handler(v27, handler);

    v28 = [(KTNearFutureScheduler *)self currentDelay];
    if (v28 <= a3)
    {
      v29 = a3;
    }

    else
    {
      v29 = v28;
    }

    if (!a3)
    {
      v29 = v28;
    }

    if (v29 >= a4)
    {
      v30 = a4;
    }

    else
    {
      v30 = v29;
    }

    if (a4 == -1)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = [(KTNearFutureScheduler *)self timer];
    v33 = dispatch_walltime(0, v31);
    dispatch_source_set_timer(v32, v33, [(KTNearFutureScheduler *)self currentDelay], 0x2FAF080uLL);

    v34 = [(KTNearFutureScheduler *)self timer];
    dispatch_resume(v34);

    v35 = [NSDate dateWithTimeIntervalSinceNow:v31 / 1000000000.0];
    [(KTNearFutureScheduler *)self setPredictedNextFireTime:v35];

    objc_destroyWeak(&v37);
  }

  objc_destroyWeak(&location);
}

- (void)cancel
{
  v3 = [(KTNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C72C;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)status
{
  v10 = @"currentDelay";
  v3 = [NSNumber numberWithUnsignedLongLong:[(KTNearFutureScheduler *)self currentDelay]/ 0x3B9ACA00];
  v11 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v5 = [v4 mutableCopy];

  v6 = [(KTNearFutureScheduler *)self predictedNextFireTime];

  if (v6)
  {
    v7 = [(KTNearFutureScheduler *)self predictedNextFireTime];
    [v7 timeIntervalSinceNow];
    v8 = [NSNumber numberWithDouble:?];
    [v5 setObject:v8 forKeyedSubscript:@"nextFire"];
  }

  return v5;
}

@end
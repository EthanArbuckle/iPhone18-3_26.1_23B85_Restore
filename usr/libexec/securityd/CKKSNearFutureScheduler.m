@interface CKKSNearFutureScheduler
- (CKKSNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 continuingDelay:(unint64_t)a5 keepProcessAlive:(BOOL)a6 dependencyDescriptionCode:(int64_t)a7 block:(id)a8;
- (CKKSNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 startingBackoff:(unint64_t)a5 exponentialBackoff:(double)a6 maximumDelay:(unint64_t)a7 keepProcessAlive:(BOOL)a8 dependencyDescriptionCode:(int64_t)a9 qosClass:(unsigned int)a10 block:(id)a11;
- (NSDate)nextFireTime;
- (id)description;
- (id)makeOperationDependency;
- (void)_onqueueTimerTick;
- (void)_onqueueTrigger:(unint64_t)a3 maximumDelay:(unint64_t)a4;
- (void)cancel;
- (void)changeDelays:(unint64_t)a3 continuingDelay:(unint64_t)a4;
- (void)trigger;
- (void)triggerAt:(unint64_t)a3;
- (void)waitUntil:(unint64_t)a3;
@end

@implementation CKKSNearFutureScheduler

- (void)cancel
{
  v3 = [(CKKSNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001061E8;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_onqueueTrigger:(unint64_t)a3 maximumDelay:(unint64_t)a4
{
  v7 = [(CKKSNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(v7);

  objc_initWeak(&location, self);
  if ([(CKKSNearFutureScheduler *)self keepProcessAlive])
  {
    v8 = [(CKKSNearFutureScheduler *)self transaction];

    if (!v8)
    {
      v9 = [(CKKSNearFutureScheduler *)self name];
      v10 = [NSString stringWithFormat:@"com.apple.securityd.%@", v9];
      [v10 UTF8String];
      v11 = os_transaction_create();
      [(CKKSNearFutureScheduler *)self setTransaction:v11];
    }
  }

  if (a3)
  {
    v12 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];

    if (v12)
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:a3 / 1000000000.0];
      v14 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];
      v15 = [v13 compare:v14];

      if (v15 == 1)
      {
        v16 = [(CKKSNearFutureScheduler *)self timer];
        dispatch_source_cancel(v16);

        [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  if (a4 != -1)
  {
    v17 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];

    if (v17)
    {
      v18 = [NSDate dateWithTimeIntervalSinceNow:a3 / 1000000000.0];
      v19 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];
      v20 = [v18 compare:v19];

      if (v20 != 1)
      {
        v21 = [(CKKSNearFutureScheduler *)self timer];
        dispatch_source_cancel(v21);

        [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:0];
      }
    }
  }

  v22 = [(CKKSNearFutureScheduler *)self timer];
  if (!v22 || ([(CKKSNearFutureScheduler *)self timer], v23 = objc_claimAutoreleasedReturnValue(), v24 = dispatch_source_testcancel(v23), v23, v22, v24))
  {
    v25 = [(CKKSNearFutureScheduler *)self queue];
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v25);
    [(CKKSNearFutureScheduler *)self setTimer:v26];

    v27 = [(CKKSNearFutureScheduler *)self timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100106680;
    handler[3] = &unk_1003452E8;
    objc_copyWeak(&v38, &location);
    dispatch_source_set_event_handler(v27, handler);

    v28 = [(CKKSNearFutureScheduler *)self currentDelay];
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

    v32 = [(CKKSNearFutureScheduler *)self timer];
    v33 = dispatch_walltime(0, v31);
    if ([(CKKSNearFutureScheduler *)self currentDelay])
    {
      v34 = [(CKKSNearFutureScheduler *)self currentDelay];
    }

    else
    {
      v34 = 1;
    }

    dispatch_source_set_timer(v32, v33, v34, 0x2FAF080uLL);

    v35 = [(CKKSNearFutureScheduler *)self timer];
    dispatch_resume(v35);

    v36 = [NSDate dateWithTimeIntervalSinceNow:v31 / 1000000000.0];
    [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:v36];

    objc_destroyWeak(&v38);
  }

  objc_destroyWeak(&location);
}

- (void)trigger
{
  objc_initWeak(&location, self);
  v3 = [(CKKSNearFutureScheduler *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100106788;
  v4[3] = &unk_1003452E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_onqueueTimerTick
{
  v3 = [(CKKSNearFutureScheduler *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(CKKSNearFutureScheduler *)self liveRequest])
  {
    v23 = [(CKKSNearFutureScheduler *)self operationDependency];
    v4 = [(CKKSNearFutureScheduler *)self makeOperationDependency];
    [(CKKSNearFutureScheduler *)self setOperationDependency:v4];

    v5 = [(CKKSNearFutureScheduler *)self futureBlock];
    v5[2]();

    [(CKKSNearFutureScheduler *)self setLiveRequest:0];
    v6 = objc_alloc_init(CKKSCondition);
    [(CKKSNearFutureScheduler *)self setLiveRequestReceived:v6];

    [(CKKSNearFutureScheduler *)self setTransaction:0];
    v7 = [(CKKSNearFutureScheduler *)self currentDelay];
    if (v7 == [(CKKSNearFutureScheduler *)self initialDelay])
    {
      if ([(CKKSNearFutureScheduler *)self startingBackoff]&& (v8 = [(CKKSNearFutureScheduler *)self startingBackoff], v8 < [(CKKSNearFutureScheduler *)self maximumDelay]))
      {
        v9 = [(CKKSNearFutureScheduler *)self startingBackoff];
      }

      else
      {
        v9 = [(CKKSNearFutureScheduler *)self maximumDelay];
      }

      v17 = v9;
    }

    else
    {
      v12 = [(CKKSNearFutureScheduler *)self currentDelay];
      [(CKKSNearFutureScheduler *)self backoff];
      if (v13 * v12 >= [(CKKSNearFutureScheduler *)self maximumDelay])
      {
        v16 = [(CKKSNearFutureScheduler *)self maximumDelay];
      }

      else
      {
        v14 = [(CKKSNearFutureScheduler *)self currentDelay];
        [(CKKSNearFutureScheduler *)self backoff];
        v16 = v15 * v14;
      }

      v17 = v16;
    }

    [(CKKSNearFutureScheduler *)self setCurrentDelay:v17];
    v18 = [(CKKSNearFutureScheduler *)self timer];
    v19 = dispatch_walltime(0, [(CKKSNearFutureScheduler *)self currentDelay]);
    if ([(CKKSNearFutureScheduler *)self currentDelay])
    {
      v20 = [(CKKSNearFutureScheduler *)self currentDelay];
    }

    else
    {
      v20 = 1;
    }

    dispatch_source_set_timer(v18, v19, v20, 0x2FAF080uLL);

    v21 = [(CKKSNearFutureScheduler *)self operationQueue];
    [v21 addOperation:v23];

    v22 = [NSDate dateWithTimeIntervalSinceNow:[(CKKSNearFutureScheduler *)self currentDelay]/ 1000000000.0];
    [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:v22];
  }

  else
  {
    v10 = [(CKKSNearFutureScheduler *)self timer];
    dispatch_source_cancel(v10);

    [(CKKSNearFutureScheduler *)self setPredictedNextFireTime:0];
    v11 = [(CKKSNearFutureScheduler *)self initialDelay];

    [(CKKSNearFutureScheduler *)self setCurrentDelay:v11];
  }
}

- (void)triggerAt:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(CKKSNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106B9C;
  block[3] = &unk_100337130;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)waitUntil:(unint64_t)a3
{
  v5 = [(CKKSNearFutureScheduler *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100106CAC;
  v6[3] = &unk_100338138;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (NSDate)nextFireTime
{
  if (-[CKKSNearFutureScheduler liveRequest](self, "liveRequest") || (-[CKKSNearFutureScheduler liveRequestReceived](self, "liveRequestReceived"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 wait:50000], v3, !v4))
  {
    v5 = [(CKKSNearFutureScheduler *)self predictedNextFireTime];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [(CKKSNearFutureScheduler *)self nextFireTime];
  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v5 = [(CKKSNearFutureScheduler *)self name];
    v6 = [v4 stringFromDate:v3];
    v7 = [NSString stringWithFormat:@"<CKKSNearFutureScheduler(%@): next at %@", v5, v6];
  }

  else
  {
    v4 = [(CKKSNearFutureScheduler *)self name];
    v7 = [NSString stringWithFormat:@"<CKKSNearFutureScheduler(%@): no pending attempts", v4];
  }

  return v7;
}

- (id)makeOperationDependency
{
  v3 = [(CKKSNearFutureScheduler *)self name];
  v4 = [NSString stringWithFormat:@"nfs-%@", v3];
  v5 = [CKKSResultOperation named:v4 withBlock:&stru_100337108];

  [v5 setDescriptionErrorCode:{-[CKKSNearFutureScheduler operationDependencyDescriptionCode](self, "operationDependencyDescriptionCode")}];

  return v5;
}

- (void)changeDelays:(unint64_t)a3 continuingDelay:(unint64_t)a4
{
  v7 = [(CKKSNearFutureScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106F90;
  block[3] = &unk_1003370E8;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(v7, block);
}

- (CKKSNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 startingBackoff:(unint64_t)a5 exponentialBackoff:(double)a6 maximumDelay:(unint64_t)a7 keepProcessAlive:(BOOL)a8 dependencyDescriptionCode:(int64_t)a9 qosClass:(unsigned int)a10 block:(id)a11
{
  v19 = a3;
  v20 = a11;
  v38.receiver = self;
  v38.super_class = CKKSNearFutureScheduler;
  v21 = [(CKKSNearFutureScheduler *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, a3);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, a10, 0);

    v25 = [NSString stringWithFormat:@"near-future-scheduler-%@", v19];
    v26 = dispatch_queue_create([v25 UTF8String], v24);
    queue = v22->_queue;
    v22->_queue = v26;

    v22->_initialDelay = a4;
    v22->_currentDelay = a4;
    v22->_maximumDelay = a7;
    v22->_backoff = a6;
    v28 = objc_retainBlock(v20);
    futureBlock = v22->_futureBlock;
    v22->_futureBlock = v28;

    v22->_liveRequest = 0;
    v30 = objc_alloc_init(CKKSCondition);
    liveRequestReceived = v22->_liveRequestReceived;
    v22->_liveRequestReceived = v30;

    predictedNextFireTime = v22->_predictedNextFireTime;
    v22->_predictedNextFireTime = 0;

    v22->_keepProcessAlive = a8;
    v33 = objc_alloc_init(NSOperationQueue);
    operationQueue = v22->_operationQueue;
    v22->_operationQueue = v33;

    v22->_operationDependencyDescriptionCode = a9;
    v35 = [(CKKSNearFutureScheduler *)v22 makeOperationDependency];
    operationDependency = v22->_operationDependency;
    v22->_operationDependency = v35;

    v22->_startingBackoff = a5;
  }

  return v22;
}

- (CKKSNearFutureScheduler)initWithName:(id)a3 initialDelay:(unint64_t)a4 continuingDelay:(unint64_t)a5 keepProcessAlive:(BOOL)a6 dependencyDescriptionCode:(int64_t)a7 block:(id)a8
{
  if (a4)
  {
    v8 = a5 / a4;
    if (a5 / a4 <= 1)
    {
      v8 = 1;
    }

    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  return [CKKSNearFutureScheduler initWithName:"initWithName:initialDelay:exponentialBackoff:maximumDelay:keepProcessAlive:dependencyDescriptionCode:block:" initialDelay:a3 exponentialBackoff:v9 maximumDelay:? keepProcessAlive:? dependencyDescriptionCode:? block:?];
}

@end
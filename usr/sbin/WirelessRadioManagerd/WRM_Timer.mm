@interface WRM_Timer
+ (unint64_t)getTimeStamp;
- (WRM_Timer)initWithFireTimeIntervalSinceNow:(double)now queue:(id)queue block:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WRM_Timer

+ (unint64_t)getTimeStamp
{
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  return 1000 * v3.tv_sec + v3.tv_usec / 0x3E8uLL;
}

- (WRM_Timer)initWithFireTimeIntervalSinceNow:(double)now queue:(id)queue block:(id)block
{
  if (!queue)
  {
    sub_10015F384(a2, self);
  }

  v16.receiver = self;
  v16.super_class = WRM_Timer;
  v10 = [(WRM_Timer *)&v16 init];
  if (v10)
  {
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    *(v10 + 1) = v11;
    if (!v11)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:v10 lineNumber:@"WRM_Timer.m" description:17, @"Cannot create dispatch timer"];
      v11 = *(v10 + 1);
    }

    v12 = dispatch_walltime(0, (now * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v13 = *(v10 + 1);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100068034;
    v15[3] = &unk_10023F188;
    v15[4] = v10;
    v15[5] = block;
    dispatch_source_set_event_handler(v13, v15);
    *(v10 + 4) = 1;
    dispatch_resume(*(v10 + 1));
  }

  return v10;
}

- (void)dealloc
{
  [(WRM_Timer *)self invalidate];
  v3.receiver = self;
  v3.super_class = WRM_Timer;
  [(WRM_Timer *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(&self->_valid, &v3, 0, memory_order_relaxed, memory_order_relaxed);
  if (v3 == 1)
  {
    dispatch_source_cancel(self->_source);
  }

  source = self->_source;
  if (source)
  {
    dispatch_release(source);
    self->_source = 0;
  }
}

@end
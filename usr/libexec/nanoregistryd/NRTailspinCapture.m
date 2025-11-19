@interface NRTailspinCapture
+ (id)sharedInstance;
- (BOOL)_gateCheckOk;
- (NRTailspinCapture)init;
- (void)captureForApp:(id)a3 startEdge:(unint64_t)a4;
@end

@implementation NRTailspinCapture

+ (id)sharedInstance
{
  if (qword_1001B38A8 != -1)
  {
    sub_10010166C();
  }

  v3 = qword_1001B38B0;

  return v3;
}

- (NRTailspinCapture)init
{
  v11.receiver = self;
  v11.super_class = NRTailspinCapture;
  v2 = [(NRTailspinCapture *)&v11 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 integerForKey:@"minRestSec"];
    v5 = 30;
    if (v4)
    {
      v5 = v4;
    }

    [(NRTailspinCapture *)v2 setMinRestSec:v5];
    v6 = objc_alloc_init(NSDateFormatter);
    [(NRTailspinCapture *)v2 setFormatter:v6];

    v7 = [(NRTailspinCapture *)v2 formatter];
    [v7 setDateFormat:@"yyyyMMdd_HHmmSS"];

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("nanoregistry.tailspin", v8);
    [(NRTailspinCapture *)v2 setQueue:v9];

    [(NRTailspinCapture *)v2 setGateLock:0];
  }

  return v2;
}

- (void)captureForApp:(id)a3 startEdge:(unint64_t)a4
{
  v6 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if ([(NRTailspinCapture *)self _gateCheckOk])
  {
    v8 = [(NRTailspinCapture *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100089088;
    v9[3] = &unk_100178608;
    v10 = v6;
    v11 = self;
    v12 = a4;
    v13 = Current;
    dispatch_async(v8, v9);
  }
}

- (BOOL)_gateCheckOk
{
  v3 = os_unfair_lock_trylock(&self->_gateLock);
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(NRTailspinCapture *)self gateTime];
    if (Current <= v5)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      [(NRTailspinCapture *)self minRestSec];
      [(NRTailspinCapture *)self setGateTime:Current + v6];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

@end
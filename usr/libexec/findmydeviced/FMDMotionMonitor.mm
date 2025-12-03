@interface FMDMotionMonitor
- (id)_deviceMotionFrom:(id)from;
- (void)startMotionMonitoring;
- (void)stopMotionMonitoring;
@end

@implementation FMDMotionMonitor

- (void)startMotionMonitoring
{
  if (!self->_motionActivityManager)
  {
    v6[3] = v2;
    v6[4] = v3;
    objc_initWeak(v6, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10016D9AC;
    v4[3] = &unk_1002CD518;
    objc_copyWeak(&v5, v6);
    dispatch_async(&_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(v6);
  }
}

- (void)stopMotionMonitoring
{
  if (self->_motionActivityManager)
  {
    objc_initWeak(&location, self);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10016DC1C;
    v2[3] = &unk_1002CD518;
    objc_copyWeak(&v3, &location);
    dispatch_async(&_dispatch_main_q, v2);
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

- (id)_deviceMotionFrom:(id)from
{
  fromCopy = from;
  v4 = objc_alloc_init(FMDDeviceMotion);
  if ([fromCopy automotive])
  {
    stationary = 5;
  }

  else if ([fromCopy cycling])
  {
    stationary = 4;
  }

  else if ([fromCopy running])
  {
    stationary = 3;
  }

  else if ([fromCopy walking])
  {
    stationary = 2;
  }

  else
  {
    stationary = [fromCopy stationary];
  }

  [(FMDDeviceMotion *)v4 setActivityState:stationary];
  startDate = [fromCopy startDate];
  [(FMDDeviceMotion *)v4 setActivityStartDate:startDate];

  return v4;
}

@end
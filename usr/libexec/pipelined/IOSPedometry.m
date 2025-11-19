@interface IOSPedometry
- (BOOL)sensorPresent;
- (IOSPedometry)init;
- (void)start;
@end

@implementation IOSPedometry

- (IOSPedometry)init
{
  v6.receiver = self;
  v6.super_class = IOSPedometry;
  v2 = [(IOSPedometry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CMPedometer);
    pedometer = v2->_pedometer;
    v2->_pedometer = v3;

    operator new();
  }

  return 0;
}

- (void)start
{
  pedometer = self->_pedometer;
  v4 = objc_alloc_init(NSDate);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10030DD50;
  v5[3] = &unk_100449108;
  v5[4] = self;
  [(CMPedometer *)pedometer startPedometerUpdatesFromDate:v4 withHandler:v5];
}

- (BOOL)sensorPresent
{
  if (+[CMPedometer isStepCountingAvailable](CMPedometer, "isStepCountingAvailable") || +[CMPedometer isDistanceAvailable])
  {
    return 1;
  }

  return +[CMPedometer isFloorCountingAvailable];
}

@end
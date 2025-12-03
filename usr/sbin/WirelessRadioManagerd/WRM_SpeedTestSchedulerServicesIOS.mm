@interface WRM_SpeedTestSchedulerServicesIOS
- (BOOL)ifScheduleSpeedTestAfterReboot:(BOOL)reboot probability:(int)probability;
- (WRM_SpeedTestSchedulerServicesIOS)initWithWaitTime:(double)time;
- (void)abort;
- (void)dealloc;
- (void)scheduleTests:(int)tests :(id)a4;
@end

@implementation WRM_SpeedTestSchedulerServicesIOS

- (WRM_SpeedTestSchedulerServicesIOS)initWithWaitTime:(double)time
{
  v6.receiver = self;
  v6.super_class = WRM_SpeedTestSchedulerServicesIOS;
  v4 = [(WRM_SpeedTestSchedulerServicesIOS *)&v6 init];
  if (v4)
  {
    [WCM_Logging logLevel:22 message:@"CellularThroughput: In WRM_SpeedTestSchedulerServicesIOS"];
    v4->waitTime = time;
    v4->mQueue = dispatch_queue_create("com.apple.wirelessdataanalytics.SpeedTestScheduler", 0);
  }

  return v4;
}

- (BOOL)ifScheduleSpeedTestAfterReboot:(BOOL)reboot probability:(int)probability
{
  if (!reboot)
  {
    return 1;
  }

  v5 = arc4random_uniform(0xAu);
  v6 = probability / -10 + 9;
  v7 = v5 <= v6;
  v8 = v5 > v6;
  v9 = "NO";
  if (!v7)
  {
    v9 = "YES";
  }

  [WCM_Logging logLevel:22 message:@"CellularThroughput ifScheduleSpeedTestAfterReboot: %s", v9];
  return v8;
}

- (void)scheduleTests:(int)tests :(id)a4
{
  v7 = dispatch_time(0, 120000000000);
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006254C;
  block[3] = &unk_10023EFF0;
  testsCopy = tests;
  block[4] = self;
  block[5] = a4;
  dispatch_after(v7, mQueue, block);
}

- (void)abort
{
  cellularTestStartRef = self->cellularTestStartRef;
  if (cellularTestStartRef)
  {
    [(WRM_SpeedTestConfigIOS *)cellularTestStartRef abort];
  }
}

- (void)dealloc
{
  cellularTestStartRef = self->cellularTestStartRef;
  if (cellularTestStartRef)
  {

    self->cellularTestStartRef = 0;
  }

  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
    self->mQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = WRM_SpeedTestSchedulerServicesIOS;
  [(WRM_SpeedTestSchedulerServicesIOS *)&v5 dealloc];
}

@end
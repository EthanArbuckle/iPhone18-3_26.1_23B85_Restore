@interface WiFiManagerMotionServices
- (WiFiManagerMotionServices)init;
- (void)dealloc;
- (void)dispatchMotionCallback;
- (void)setupDrivingEndedAlarm;
- (void)setupDrivingStartedAlarm;
- (void)setupWalkingEndedAlarm;
- (void)setupWalkingStartedAlarm;
- (void)startMonitoringMotionState;
- (void)stopMonitoringMotionState;
@end

@implementation WiFiManagerMotionServices

- (WiFiManagerMotionServices)init
{
  if (objc_opt_class())
  {
    if (+[CMMotionActivityManager isActivityAvailable])
    {
      v4.receiver = self;
      v4.super_class = WiFiManagerMotionServices;
      result = [(WiFiManagerMotionServices *)&v4 init];
      if (result)
      {
        return result;
      }

      self = 0;
    }

    else
    {
      sub_1001738E4();
    }
  }

  return 0;
}

- (void)startMonitoringMotionState
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiManagerMotionServices startMonitoringMotionState]"}];
  }

  objc_autoreleasePoolPop(v4);
  self->_activityManager = objc_alloc_init(CMMotionActivityManager);
  v5 = objc_alloc_init(NSOperationQueue);
  self->_motionQ = v5;
  [(NSOperationQueue *)v5 setName:@"WiFiManagerMotionServicesQueue"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100095FF4;
  v6[3] = &unk_100260EE8;
  v6[4] = self;
  [(CMMotionActivityManager *)[(WiFiManagerMotionServices *)self activityManager] startActivityUpdatesToQueue:[(WiFiManagerMotionServices *)self motionQ] withHandler:v6];
  objc_autoreleasePoolPop(v3);
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  serialActivityDispatchQ = self->_serialActivityDispatchQ;
  if (serialActivityDispatchQ)
  {
    dispatch_release(serialActivityDispatchQ);
  }

  v5.receiver = self;
  v5.super_class = WiFiManagerMotionServices;
  [(WiFiManagerMotionServices *)&v5 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (void)dispatchMotionCallback
{
  v3 = objc_autoreleasePoolPush();
  if ([(WiFiManagerMotionServices *)self motionStateChangeCb])
  {
    v4 = [(WiFiManagerMotionServices *)self motionStateChangeCb];
    v5 = [(WiFiManagerMotionServices *)self manager];
    v6 = [(WiFiManagerMotionServices *)self motionState];
    [(WiFiManagerMotionServices *)self motionStartTime];
    v4(v5, v6);
  }

  else
  {
    sub_100173950();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)stopMonitoringMotionState
{
  v3 = objc_autoreleasePoolPush();
  [(CMMotionActivityManager *)[(WiFiManagerMotionServices *)self activityManager] stopActivityUpdates];

  objc_autoreleasePoolPop(v3);
}

- (void)setupWalkingStartedAlarm
{
  v3 = objc_autoreleasePoolPush();
  if ((+[CMActivityAlarm activityAlarmAvailable]& 1) != 0)
  {
    if (!self->_serialActivityDispatchQ)
    {
      v4 = off_1002978A0;
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      self->_serialActivityDispatchQ = dispatch_queue_create(v4, v5);
    }

    [(WiFiManagerMotionServices *)self walkingStartedAlarmTriggerDuration];
    v7 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100096494;
    v10[3] = &unk_100260F10;
    v10[4] = self;
    self->_walkingAlarm = [[CMActivityAlarm alloc] initWithTrigger:2 duration:-[WiFiManagerMotionServices serialActivityDispatchQ](self onQueue:"serialActivityDispatchQ") withHandler:{v10, v6}];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] Setting up Walking Started Alarm, dur:%.1fsecs", "-[WiFiManagerMotionServices setupWalkingStartedAlarm]", *&v7}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] activity alarm is not available", "-[WiFiManagerMotionServices setupWalkingStartedAlarm]", v9}];
    }
  }

  objc_autoreleasePoolPop(v8);
  objc_autoreleasePoolPop(v3);
}

- (void)setupWalkingEndedAlarm
{
  v3 = objc_autoreleasePoolPush();
  if ((+[CMActivityAlarm activityAlarmAvailable]& 1) != 0)
  {
    if (!self->_serialActivityDispatchQ)
    {
      v4 = off_1002978A0;
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      self->_serialActivityDispatchQ = dispatch_queue_create(v4, v5);
    }

    [(WiFiManagerMotionServices *)self walkingEndedAlarmTriggerDuration];
    v7 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000966FC;
    v10[3] = &unk_100260F10;
    v10[4] = self;
    self->_walkingAlarm = [[CMActivityAlarm alloc] initWithTrigger:0 duration:-[WiFiManagerMotionServices serialActivityDispatchQ](self onQueue:"serialActivityDispatchQ") withHandler:{v10, v6}];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] Setting up Walking Ended Alarm, dur:%.1fsecs", "-[WiFiManagerMotionServices setupWalkingEndedAlarm]", *&v7}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] activity alarm is not available", "-[WiFiManagerMotionServices setupWalkingEndedAlarm]", v9}];
    }
  }

  objc_autoreleasePoolPop(v8);
  objc_autoreleasePoolPop(v3);
}

- (void)setupDrivingStartedAlarm
{
  v3 = objc_autoreleasePoolPush();
  if ((+[CMActivityAlarm activityAlarmAvailable]& 1) != 0)
  {
    if (!self->_serialActivityDispatchQ)
    {
      v4 = off_1002978A0;
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      self->_serialActivityDispatchQ = dispatch_queue_create(v4, v5);
    }

    [(WiFiManagerMotionServices *)self drivingStartedAlarmTriggerDuration];
    v7 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100096964;
    v10[3] = &unk_100260F10;
    v10[4] = self;
    self->_drivingAlarm = [[CMActivityAlarm alloc] initWithTrigger:4 duration:-[WiFiManagerMotionServices serialActivityDispatchQ](self onQueue:"serialActivityDispatchQ") withHandler:{v10, v6}];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] Setting up Driving Started Alarm, dur:%.1fsecs", "-[WiFiManagerMotionServices setupDrivingStartedAlarm]", *&v7}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] activity alarm is not available", "-[WiFiManagerMotionServices setupDrivingStartedAlarm]", v9}];
    }
  }

  objc_autoreleasePoolPop(v8);
  objc_autoreleasePoolPop(v3);
}

- (void)setupDrivingEndedAlarm
{
  v3 = objc_autoreleasePoolPush();
  if ((+[CMActivityAlarm activityAlarmAvailable]& 1) != 0)
  {
    if (!self->_serialActivityDispatchQ)
    {
      v4 = off_1002978A0;
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      self->_serialActivityDispatchQ = dispatch_queue_create(v4, v5);
    }

    [(WiFiManagerMotionServices *)self drivingEndedAlarmTriggerDuration];
    v7 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100096BCC;
    v10[3] = &unk_100260F10;
    v10[4] = self;
    self->_drivingAlarm = [[CMActivityAlarm alloc] initWithTrigger:10 duration:-[WiFiManagerMotionServices serialActivityDispatchQ](self onQueue:"serialActivityDispatchQ") withHandler:{v10, v6}];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] Setting up Driving Ended Alarm, dur:%.1fsecs", "-[WiFiManagerMotionServices setupDrivingEndedAlarm]", *&v7}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: [MOTION] activity alarm is not available", "-[WiFiManagerMotionServices setupDrivingEndedAlarm]", v9}];
    }
  }

  objc_autoreleasePoolPop(v8);
  objc_autoreleasePoolPop(v3);
}

@end
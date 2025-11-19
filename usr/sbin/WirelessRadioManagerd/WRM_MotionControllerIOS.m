@interface WRM_MotionControllerIOS
+ (id)singleton;
- (WRM_MotionControllerIOS)init;
- (void)dealloc;
- (void)notifyHandoverManager:(int)a3;
- (void)startMonitoringAlarms;
- (void)stopAllAlarms;
- (void)stopMonitoringAlarms;
- (void)stopPendingAlarms;
- (void)waitForActivityState:(unint64_t)a3 :(int)a4;
- (void)waitForDrivingState:(unint64_t)a3;
- (void)waitForPedestrianState:(unint64_t)a3;
- (void)waitForRunningState:(unint64_t)a3;
- (void)waitForStaticState:(unint64_t)a3;
- (void)waitForWalkingState:(unint64_t)a3;
@end

@implementation WRM_MotionControllerIOS

+ (id)singleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008CC20;
  block[3] = &unk_10023DB28;
  block[4] = a1;
  if (qword_1002B7E90 != -1)
  {
    dispatch_once(&qword_1002B7E90, block);
  }

  return qword_1002B7E88;
}

- (WRM_MotionControllerIOS)init
{
  v4.receiver = self;
  v4.super_class = WRM_MotionControllerIOS;
  v2 = [(WRM_MotionController *)&v4 init];
  if (v2)
  {
    v2->mAlarmQueue = dispatch_queue_create("com.apple.WirelessRadioManager.Motion", 0);
    v2->myMobilityState = 5;
    v2->myPrevMobilityState = 5;
    v2->mMotionControllerState = 0;
    v2->mStaticAlarm = 0;
    v2->mWalkingAlarm = 0;
    v2->mRunningAlarm = 0;
    v2->mDrivingAlarm = 0;
    v2->mPedestrianAfterStatic = 0;
    v2->mDefaultAlarmDuration = 1;
    [WCM_Logging logLevel:21 message:@"Motion Controller: initialized\n"];
  }

  return v2;
}

- (void)dealloc
{
  mAlarmQueue = self->mAlarmQueue;
  if (mAlarmQueue)
  {
    dispatch_release(mAlarmQueue);
  }

  self->mAlarmQueue = 0;
  [WCM_Logging logLevel:21 message:@"Handover Manager: Dealloc called for handover manager "];
  [WCM_Logging logLevel:21 message:@"Handover Manager: Dealloc called for handover manager \n"];
  [(WRM_MotionControllerIOS *)self stopMonitoringAlarms];
  self->myMobilityState = 5;
  self->myPrevMobilityState = 5;
  self->mMotionControllerState = 0;
  self->mStaticAlarm = 0;
  self->mWalkingAlarm = 0;
  self->mRunningAlarm = 0;
  self->mDrivingAlarm = 0;
  self->mPedestrianAfterStatic = 0;
  v4.receiver = self;
  v4.super_class = WRM_MotionControllerIOS;
  [(WRM_MotionController *)&v4 dealloc];
}

- (void)startMonitoringAlarms
{
  mAlarmQueue = self->mAlarmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008CEC8;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mAlarmQueue, block);
}

- (void)stopMonitoringAlarms
{
  if (+[CMActivityAlarm activityAlarmAvailable])
  {

    [(WRM_MotionControllerIOS *)self stopPendingAlarms];
  }

  else
  {

    [WCM_Logging logLevel:21 message:@"Alarm: Motion activity not supported on the platform \n"];
  }
}

- (void)stopAllAlarms
{
  mAlarmQueue = self->mAlarmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D05C;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(mAlarmQueue, block);
}

- (void)stopPendingAlarms
{
  [WCM_Logging logLevel:18 message:@"Alarm: Inside stopPendingAlarms"];
  if (+[CMActivityAlarm activityAlarmAvailable])
  {
    mStaticAlarm = self->mStaticAlarm;
    if (mStaticAlarm)
    {
      [(CMActivityAlarm *)mStaticAlarm invalidate];

      self->mStaticAlarm = 0;
    }

    mWalkingAlarm = self->mWalkingAlarm;
    if (mWalkingAlarm)
    {
      [(CMActivityAlarm *)mWalkingAlarm invalidate];

      self->mWalkingAlarm = 0;
    }

    mRunningAlarm = self->mRunningAlarm;
    if (mRunningAlarm)
    {
      [(CMActivityAlarm *)mRunningAlarm invalidate];

      self->mRunningAlarm = 0;
    }

    mDrivingAlarm = self->mDrivingAlarm;
    if (mDrivingAlarm)
    {
      [(CMActivityAlarm *)mDrivingAlarm invalidate];

      self->mDrivingAlarm = 0;
    }

    mPedestrianAfterStatic = self->mPedestrianAfterStatic;
    if (mPedestrianAfterStatic)
    {
      [(CMActivityAlarm *)mPedestrianAfterStatic invalidate];

      self->mPedestrianAfterStatic = 0;
    }

    self->mMotionControllerState = 0;
  }
}

- (void)waitForStaticState:(unint64_t)a3
{
  [WCM_Logging logLevel:18 message:@"Alarm: setting up static state alarm "];
  mStaticAlarm = self->mStaticAlarm;
  if (mStaticAlarm)
  {

    self->mStaticAlarm = 0;
  }

  v6 = [CMActivityAlarm alloc];
  mAlarmQueue = self->mAlarmQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D368;
  v8[3] = &unk_10023FA70;
  v8[4] = self;
  v8[5] = a3;
  self->mStaticAlarm = [v6 initWithTrigger:0 duration:mAlarmQueue onQueue:v8 withHandler:a3];
}

- (void)waitForPedestrianState:(unint64_t)a3
{
  [WCM_Logging logLevel:18 message:@"Alarm: setting up pedestrian state alarm "];
  mPedestrianAfterStatic = self->mPedestrianAfterStatic;
  if (mPedestrianAfterStatic)
  {

    self->mPedestrianAfterStatic = 0;
  }

  v6 = [CMActivityAlarm alloc];
  mAlarmQueue = self->mAlarmQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D4C0;
  v8[3] = &unk_10023FA70;
  v8[4] = self;
  v8[5] = a3;
  self->mPedestrianAfterStatic = [v6 initWithTrigger:11 duration:mAlarmQueue onQueue:v8 withHandler:a3];
}

- (void)waitForWalkingState:(unint64_t)a3
{
  [WCM_Logging logLevel:18 message:@"Alarm: setting up walking state alarm "];
  mWalkingAlarm = self->mWalkingAlarm;
  if (mWalkingAlarm)
  {

    self->mWalkingAlarm = 0;
  }

  v6 = [CMActivityAlarm alloc];
  mAlarmQueue = self->mAlarmQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D61C;
  v8[3] = &unk_10023FA70;
  v8[4] = self;
  v8[5] = a3;
  self->mWalkingAlarm = [v6 initWithTrigger:2 duration:mAlarmQueue onQueue:v8 withHandler:a3];
}

- (void)waitForRunningState:(unint64_t)a3
{
  [WCM_Logging logLevel:18 message:@"Alarm: setting up running state alarm "];
  mRunningAlarm = self->mRunningAlarm;
  if (mRunningAlarm)
  {

    self->mRunningAlarm = 0;
  }

  v6 = [CMActivityAlarm alloc];
  mAlarmQueue = self->mAlarmQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D778;
  v8[3] = &unk_10023FA70;
  v8[4] = self;
  v8[5] = a3;
  self->mRunningAlarm = [v6 initWithTrigger:3 duration:mAlarmQueue onQueue:v8 withHandler:a3];
}

- (void)waitForDrivingState:(unint64_t)a3
{
  [WCM_Logging logLevel:18 message:@"Alarm: setting up driving state alarm "];
  mDrivingAlarm = self->mDrivingAlarm;
  if (mDrivingAlarm)
  {

    self->mDrivingAlarm = 0;
  }

  v6 = [CMActivityAlarm alloc];
  mAlarmQueue = self->mAlarmQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D8D4;
  v8[3] = &unk_10023FA70;
  v8[4] = self;
  v8[5] = a3;
  self->mDrivingAlarm = [v6 initWithTrigger:4 duration:mAlarmQueue onQueue:v8 withHandler:a3];
}

- (void)waitForActivityState:(unint64_t)a3 :(int)a4
{
  [(WRM_MotionControllerIOS *)self stopPendingAlarms];
  if (a4 <= 2)
  {
    if (!a4)
    {
      [(WRM_MotionControllerIOS *)self waitForWalkingState:a3];
      [(WRM_MotionControllerIOS *)self waitForRunningState:a3];
      [(WRM_MotionControllerIOS *)self waitForDrivingState:a3];
      [(WRM_MotionControllerIOS *)self waitForPedestrianState:a3];
      self->mMotionControllerState = 2;
      v7 = @"Alarm State: ALARM_WALKING_RUNNING_DRIVING_PEDESTRIAN";
      goto LABEL_18;
    }

    if (a4 != 1)
    {
      if (a4 == 2)
      {
        [(WRM_MotionControllerIOS *)self waitForStaticState:a3];
        [(WRM_MotionControllerIOS *)self waitForDrivingState:a3];
        [(WRM_MotionControllerIOS *)self waitForWalkingState:a3];
        [(WRM_MotionControllerIOS *)self waitForPedestrianState:a3];
        self->mMotionControllerState = 4;
        v7 = @"Alarm State: ALARM_DRIVING_STATIONARY_WALKING_PEDSTRIAN";
LABEL_18:
        v8 = 18;
        goto LABEL_19;
      }

LABEL_14:
      v7 = @"Alarm: Motion State Invalid \n";
      v8 = 16;
LABEL_19:

      [WCM_Logging logLevel:v8 message:v7];
      return;
    }

    [(WRM_MotionControllerIOS *)self waitForStaticState:a3];
    [(WRM_MotionControllerIOS *)self waitForRunningState:a3];
    [(WRM_MotionControllerIOS *)self waitForDrivingState:a3];
    [(WRM_MotionControllerIOS *)self waitForPedestrianState:a3];
LABEL_17:
    self->mMotionControllerState = 3;
    v7 = @"Alarm State: ALARM_RUNNING_DRIVING_STATIONARY_PEDESTRIAN";
    goto LABEL_18;
  }

  if (a4 == 3)
  {
    [(WRM_MotionControllerIOS *)self waitForStaticState:a3];
    [(WRM_MotionControllerIOS *)self waitForRunningState:a3];
    [(WRM_MotionControllerIOS *)self waitForWalkingState:a3];
    [(WRM_MotionControllerIOS *)self waitForPedestrianState:a3];
    self->mMotionControllerState = 5;
    v7 = @"Alarm State: ALARM_STATIONARY_WALKING_RUNNING_PEDSTRIAN";
    goto LABEL_18;
  }

  if (a4 == 4)
  {
    [(WRM_MotionControllerIOS *)self waitForStaticState:a3];
    [(WRM_MotionControllerIOS *)self waitForRunningState:a3];
    [(WRM_MotionControllerIOS *)self waitForDrivingState:a3];
    [(WRM_MotionControllerIOS *)self waitForWalkingState:a3];
    goto LABEL_17;
  }

  if (a4 != 5)
  {
    goto LABEL_14;
  }

  [(WRM_MotionControllerIOS *)self waitForStaticState:a3];
}

- (void)notifyHandoverManager:(int)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "kWRMM_MOTION_STATE", a3);
  *keys = *off_10023FA90;
  values[0] = xpc_uint64_create(0x3E9uLL);
  values[1] = v4;
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v8 = *off_10023FAA0;
  object[0] = xpc_uint64_create(0x3E8uLL);
  object[1] = v5;
  v6 = xpc_dictionary_create(v8, object, 2uLL);
  [WCM_Logging logLevel:21 message:@"%s: ready to send a xpc message: %@.", "[WRM_MotionControllerIOS notifyHandoverManager:]", v6];
  [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"updateControllerState:" FT:v6HandoverManagerSingleton")];
  xpc_release(object[0]);
  xpc_release(v6);
  xpc_release(values[0]);
  xpc_release(v5);
  xpc_release(v4);
}

@end
@interface WRM_MotionController
+ (id)singleton;
- (WRM_MotionController)init;
- (void)dealloc;
@end

@implementation WRM_MotionController

- (WRM_MotionController)init
{
  v4.receiver = self;
  v4.super_class = WRM_MotionController;
  v2 = [(WRM_MotionController *)&v4 init];
  if (v2)
  {
    v2->mAlarmQueue = dispatch_queue_create("com.apple.WirelessRadioManager.Motion", 0);
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
  v4.receiver = self;
  v4.super_class = WRM_MotionController;
  [(WRM_MotionController *)&v4 dealloc];
}

+ (id)singleton
{
  if (qword_1002B7E78 != -1)
  {
    sub_10015F520();
  }

  return qword_1002B7E70;
}

@end
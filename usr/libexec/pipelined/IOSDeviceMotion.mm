@interface IOSDeviceMotion
- (BOOL)sensorPresent;
- (IOSDeviceMotion)initWithMotionManager:(id)manager andHandler:(id)handler usingReferenceFrame:(unint64_t)frame;
- (void)start;
- (void)stop;
@end

@implementation IOSDeviceMotion

- (IOSDeviceMotion)initWithMotionManager:(id)manager andHandler:(id)handler usingReferenceFrame:(unint64_t)frame
{
  managerCopy = manager;
  handlerCopy = handler;
  [managerCopy deviceMotionUpdateInterval];
  v13.receiver = self;
  v13.super_class = IOSDeviceMotion;
  v10 = [(IOSAbstractInertialSensor *)&v13 initWithMotionManager:managerCopy andHandler:handlerCopy andType:8 andRate:?];
  v10->_referenceFrame = frame;
  v11 = v10;

  return v11;
}

- (BOOL)sensorPresent
{
  v5.receiver = self;
  v5.super_class = IOSDeviceMotion;
  motionManager = [(IOSAbstractInertialSensor *)&v5 motionManager];
  isDeviceMotionAvailable = [motionManager isDeviceMotionAvailable];

  return isDeviceMotionAvailable;
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = IOSDeviceMotion;
  motionManager = [(IOSAbstractInertialSensor *)&v8 motionManager];
  referenceFrame = self->_referenceFrame;
  v7.receiver = self;
  v7.super_class = IOSDeviceMotion;
  motionEventProcessor = [(IOSAbstractInertialSensor *)&v7 motionEventProcessor];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003027C0;
  v6[3] = &unk_100448AA8;
  v6[4] = self;
  [motionManager startDeviceMotionUpdatesUsingReferenceFrame:referenceFrame toQueue:motionEventProcessor withHandler:v6];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = IOSDeviceMotion;
  motionManager = [(IOSAbstractInertialSensor *)&v3 motionManager];
  [motionManager stopDeviceMotionUpdates];
}

@end
@interface IOSDeviceMotion
- (BOOL)sensorPresent;
- (IOSDeviceMotion)initWithMotionManager:(id)a3 andHandler:(id)a4 usingReferenceFrame:(unint64_t)a5;
- (void)start;
- (void)stop;
@end

@implementation IOSDeviceMotion

- (IOSDeviceMotion)initWithMotionManager:(id)a3 andHandler:(id)a4 usingReferenceFrame:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 deviceMotionUpdateInterval];
  v13.receiver = self;
  v13.super_class = IOSDeviceMotion;
  v10 = [(IOSAbstractInertialSensor *)&v13 initWithMotionManager:v8 andHandler:v9 andType:8 andRate:?];
  v10->_referenceFrame = a5;
  v11 = v10;

  return v11;
}

- (BOOL)sensorPresent
{
  v5.receiver = self;
  v5.super_class = IOSDeviceMotion;
  v2 = [(IOSAbstractInertialSensor *)&v5 motionManager];
  v3 = [v2 isDeviceMotionAvailable];

  return v3;
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = IOSDeviceMotion;
  v3 = [(IOSAbstractInertialSensor *)&v8 motionManager];
  referenceFrame = self->_referenceFrame;
  v7.receiver = self;
  v7.super_class = IOSDeviceMotion;
  v5 = [(IOSAbstractInertialSensor *)&v7 motionEventProcessor];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003027C0;
  v6[3] = &unk_100448AA8;
  v6[4] = self;
  [v3 startDeviceMotionUpdatesUsingReferenceFrame:referenceFrame toQueue:v5 withHandler:v6];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = IOSDeviceMotion;
  v2 = [(IOSAbstractInertialSensor *)&v3 motionManager];
  [v2 stopDeviceMotionUpdates];
}

@end
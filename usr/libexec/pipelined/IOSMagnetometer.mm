@interface IOSMagnetometer
- (BOOL)sensorPresent;
- (IOSMagnetometer)initWithMotionManager:(id)manager andHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation IOSMagnetometer

- (IOSMagnetometer)initWithMotionManager:(id)manager andHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = IOSMagnetometer;
  return [(IOSAbstractInertialSensor *)&v5 initWithMotionManager:manager andHandler:handler andType:15 andRate:0.0166666675];
}

- (BOOL)sensorPresent
{
  v5.receiver = self;
  v5.super_class = IOSMagnetometer;
  motionManager = [(IOSAbstractInertialSensor *)&v5 motionManager];
  isMagnetometerAvailable = [motionManager isMagnetometerAvailable];

  return isMagnetometerAvailable;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = IOSMagnetometer;
  [(IOSAbstractInertialSensor *)&v12 updateInterval];
  v4 = v3;
  v11.receiver = self;
  v11.super_class = IOSMagnetometer;
  motionManager = [(IOSAbstractInertialSensor *)&v11 motionManager];
  [motionManager setMagnetometerUpdateInterval:v4];

  v10.receiver = self;
  v10.super_class = IOSMagnetometer;
  motionManager2 = [(IOSAbstractInertialSensor *)&v10 motionManager];
  v9.receiver = self;
  v9.super_class = IOSMagnetometer;
  motionEventProcessor = [(IOSAbstractInertialSensor *)&v9 motionEventProcessor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100308784;
  v8[3] = &unk_100448E40;
  v8[4] = self;
  [motionManager2 startMagnetometerUpdatesToQueue:motionEventProcessor withHandler:v8];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = IOSMagnetometer;
  motionManager = [(IOSAbstractInertialSensor *)&v3 motionManager];
  [motionManager stopMagnetometerUpdates];
}

@end
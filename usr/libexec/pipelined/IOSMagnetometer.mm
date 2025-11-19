@interface IOSMagnetometer
- (BOOL)sensorPresent;
- (IOSMagnetometer)initWithMotionManager:(id)a3 andHandler:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation IOSMagnetometer

- (IOSMagnetometer)initWithMotionManager:(id)a3 andHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = IOSMagnetometer;
  return [(IOSAbstractInertialSensor *)&v5 initWithMotionManager:a3 andHandler:a4 andType:15 andRate:0.0166666675];
}

- (BOOL)sensorPresent
{
  v5.receiver = self;
  v5.super_class = IOSMagnetometer;
  v2 = [(IOSAbstractInertialSensor *)&v5 motionManager];
  v3 = [v2 isMagnetometerAvailable];

  return v3;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = IOSMagnetometer;
  [(IOSAbstractInertialSensor *)&v12 updateInterval];
  v4 = v3;
  v11.receiver = self;
  v11.super_class = IOSMagnetometer;
  v5 = [(IOSAbstractInertialSensor *)&v11 motionManager];
  [v5 setMagnetometerUpdateInterval:v4];

  v10.receiver = self;
  v10.super_class = IOSMagnetometer;
  v6 = [(IOSAbstractInertialSensor *)&v10 motionManager];
  v9.receiver = self;
  v9.super_class = IOSMagnetometer;
  v7 = [(IOSAbstractInertialSensor *)&v9 motionEventProcessor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100308784;
  v8[3] = &unk_100448E40;
  v8[4] = self;
  [v6 startMagnetometerUpdatesToQueue:v7 withHandler:v8];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = IOSMagnetometer;
  v2 = [(IOSAbstractInertialSensor *)&v3 motionManager];
  [v2 stopMagnetometerUpdates];
}

@end
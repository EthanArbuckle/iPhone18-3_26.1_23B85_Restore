@interface IOSAbstractInertialSensor
- (BOOL)sensorPresent;
- (IOSAbstractInertialSensor)init;
- (IOSAbstractInertialSensor)initWithMotionManager:(id)manager andHandler:(id)handler andType:(int)type andRate:(double)rate;
- (void)start;
- (void)stop;
@end

@implementation IOSAbstractInertialSensor

- (IOSAbstractInertialSensor)init
{
  if (qword_10045B050 != -1)
  {
    sub_100387348();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[IOSAbstractInertialSensor init]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to access unimplemented function %s", &v6, 0xCu);
  }

  [(IOSAbstractInertialSensor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IOSAbstractInertialSensor)initWithMotionManager:(id)manager andHandler:(id)handler andType:(int)type andRate:(double)rate
{
  managerCopy = manager;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = IOSAbstractInertialSensor;
  v11 = [(IOSAbstractInertialSensor *)&v14 init];
  if (v11)
  {
    v12 = v11;
    objc_storeStrong(&v11->_motionManager, manager);
    objc_storeStrong(&v12->_motionEventProcessor, handler);
    operator new();
  }

  return 0;
}

- (BOOL)sensorPresent
{
  if (qword_10045B050 != -1)
  {
    sub_100387348();
    v4 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    v6 = 136315138;
    v7 = "[IOSAbstractInertialSensor sensorPresent]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to access unimplemented function %s", &v6, 0xCu);
  }

LABEL_4:
  [(IOSAbstractInertialSensor *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (void)start
{
  if (qword_10045B050 != -1)
  {
    sub_100387348();
    v4 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    v5 = 136315138;
    v6 = "[IOSAbstractInertialSensor start]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to access unimplemented function %s", &v5, 0xCu);
  }

LABEL_4:
  [(IOSAbstractInertialSensor *)self doesNotRecognizeSelector:a2];
}

- (void)stop
{
  if (qword_10045B050 != -1)
  {
    sub_100387348();
    v4 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    v5 = 136315138;
    v6 = "[IOSAbstractInertialSensor stop]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to access unimplemented function %s", &v5, 0xCu);
  }

LABEL_4:
  [(IOSAbstractInertialSensor *)self doesNotRecognizeSelector:a2];
}

@end
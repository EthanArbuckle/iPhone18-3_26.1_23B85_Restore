@interface IOSActivityState
- (IOSActivityState)init;
- (IOSActivityState)initWithMotionActivityManager:(id)manager andHandler:(id)handler;
- (void)start;
@end

@implementation IOSActivityState

- (IOSActivityState)init
{
  if (qword_10045B050 != -1)
  {
    sub_1003872E4();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[IOSActivityState init]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to access unimplemented function %s", &v6, 0xCu);
  }

  [(IOSActivityState *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IOSActivityState)initWithMotionActivityManager:(id)manager andHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = IOSActivityState;
  v9 = [(IOSActivityState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_motionActivityManager, manager);
    objc_storeStrong(&v10->_motionEventProcessor, handler);
    operator new();
  }

  return 0;
}

- (void)start
{
  motionActivityManager = self->_motionActivityManager;
  motionEventProcessor = self->_motionEventProcessor;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100301FDC;
  v4[3] = &unk_100448A48;
  v4[4] = self;
  [(CMMotionActivityManager *)motionActivityManager startActivityUpdatesToQueue:motionEventProcessor withHandler:v4];
}

@end
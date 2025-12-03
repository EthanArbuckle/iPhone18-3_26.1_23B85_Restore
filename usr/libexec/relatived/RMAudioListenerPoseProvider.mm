@interface RMAudioListenerPoseProvider
- (RMAudioListenerPoseProvider)initWithConfiguration:(id)configuration receiverQueue:(id)queue;
- (id)startProducingDataWithCallback:(id)callback;
- (void)stopProducingData;
@end

@implementation RMAudioListenerPoseProvider

- (RMAudioListenerPoseProvider)initWithConfiguration:(id)configuration receiverQueue:(id)queue
{
  configurationCopy = configuration;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = RMAudioListenerPoseProvider;
  v8 = [(RMAudioListenerPoseProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RMAudioListenerPoseProvider *)v8 setConfiguration:configurationCopy];
    [(RMAudioListenerPoseProvider *)v9 setReceiverQueue:queueCopy];
    atomic_store(0, &v9->isRunning);
  }

  return v9;
}

- (id)startProducingDataWithCallback:(id)callback
{
  callbackCopy = callback;
  if (qword_10002C0C8 != -1)
  {
    sub_100011FD8();
  }

  v5 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startProducingData: %{private}p", buf, 0xCu);
  }

  configuration = [(RMAudioListenerPoseProvider *)self configuration];
  tempestOptions = [configuration tempestOptions];

  configuration2 = [(RMAudioListenerPoseProvider *)self configuration];
  forceSessionRestart = [configuration2 forceSessionRestart];

  v10 = +[RMAudioListenerPoseEngine sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000037DC;
  v14[3] = &unk_100024AF0;
  v14[4] = self;
  v15 = callbackCopy;
  v11 = callbackCopy;
  v12 = [v10 startProducingDataForObject:self tempestOptions:tempestOptions forceSessionRestart:forceSessionRestart callback:v14];

  if (!v12)
  {
    atomic_store(1u, &self->isRunning);
  }

  return v12;
}

- (void)stopProducingData
{
  if (qword_10002C0C8 != -1)
  {
    sub_100011FD8();
  }

  v3 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134283521;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopProducingData: %{private}p", &v5, 0xCu);
  }

  v4 = +[RMAudioListenerPoseEngine sharedInstance];
  [v4 stopProducingDataForObject:self];

  atomic_store(0, &self->isRunning);
}

@end
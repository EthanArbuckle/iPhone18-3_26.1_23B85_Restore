@interface RMAudioListenerPoseProvider
- (RMAudioListenerPoseProvider)initWithConfiguration:(id)a3 receiverQueue:(id)a4;
- (id)startProducingDataWithCallback:(id)a3;
- (void)stopProducingData;
@end

@implementation RMAudioListenerPoseProvider

- (RMAudioListenerPoseProvider)initWithConfiguration:(id)a3 receiverQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RMAudioListenerPoseProvider;
  v8 = [(RMAudioListenerPoseProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RMAudioListenerPoseProvider *)v8 setConfiguration:v6];
    [(RMAudioListenerPoseProvider *)v9 setReceiverQueue:v7];
    atomic_store(0, &v9->isRunning);
  }

  return v9;
}

- (id)startProducingDataWithCallback:(id)a3
{
  v4 = a3;
  if (qword_10002C0C8 != -1)
  {
    sub_100011FD8();
  }

  v5 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startProducingData: %{private}p", buf, 0xCu);
  }

  v6 = [(RMAudioListenerPoseProvider *)self configuration];
  v7 = [v6 tempestOptions];

  v8 = [(RMAudioListenerPoseProvider *)self configuration];
  v9 = [v8 forceSessionRestart];

  v10 = +[RMAudioListenerPoseEngine sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000037DC;
  v14[3] = &unk_100024AF0;
  v14[4] = self;
  v15 = v4;
  v11 = v4;
  v12 = [v10 startProducingDataForObject:self tempestOptions:v7 forceSessionRestart:v9 callback:v14];

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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopProducingData: %{private}p", &v5, 0xCu);
  }

  v4 = +[RMAudioListenerPoseEngine sharedInstance];
  [v4 stopProducingDataForObject:self];

  atomic_store(0, &self->isRunning);
}

@end
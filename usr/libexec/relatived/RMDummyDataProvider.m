@interface RMDummyDataProvider
- (RMDummyDataProvider)initWithConfiguration:(id)a3 receiverQueue:(id)a4;
- (id)startProducingDataWithCallback:(id)a3;
- (void)stopProducingData;
@end

@implementation RMDummyDataProvider

- (RMDummyDataProvider)initWithConfiguration:(id)a3 receiverQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = RMDummyDataProvider;
  v8 = [(RMDummyDataProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(RMDummyDataProvider *)v8 setConfiguration:v6];
    [(RMDummyDataProvider *)v9 setReceiverQueue:v7];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("RMDummyDataProviderQueue", v10);
    [(RMDummyDataProvider *)v9 setProducerQueue:v11];
  }

  return v9;
}

- (id)startProducingDataWithCallback:(id)a3
{
  v4 = a3;
  [(RMDummyDataProvider *)self setRunning:1];
  v5 = [(RMDummyDataProvider *)self producerQueue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v5);
  [(RMDummyDataProvider *)self setProducerTimer:v6];

  v7 = [(RMDummyDataProvider *)self producerTimer];
  dispatch_source_set_timer(v7, 0, [(RMDummyDataProviderConfiguration *)self->_configuration intervalInNanoSeconds], 0);

  v8 = [(RMDummyDataProvider *)self producerTimer];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100008AA0;
  v15 = &unk_100024D78;
  v16 = self;
  v17 = v4;
  v9 = v4;
  dispatch_source_set_event_handler(v8, &v12);

  v10 = [(RMDummyDataProvider *)self producerTimer:v12];
  dispatch_resume(v10);

  return 0;
}

- (void)stopProducingData
{
  [(RMDummyDataProvider *)self setRunning:0];
  v3 = [(RMDummyDataProvider *)self producerTimer];
  dispatch_source_cancel(v3);

  [(RMDummyDataProvider *)self setProducerTimer:0];
}

@end
@interface RMDummyDataProvider
- (RMDummyDataProvider)initWithConfiguration:(id)configuration receiverQueue:(id)queue;
- (id)startProducingDataWithCallback:(id)callback;
- (void)stopProducingData;
@end

@implementation RMDummyDataProvider

- (RMDummyDataProvider)initWithConfiguration:(id)configuration receiverQueue:(id)queue
{
  configurationCopy = configuration;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = RMDummyDataProvider;
  v8 = [(RMDummyDataProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(RMDummyDataProvider *)v8 setConfiguration:configurationCopy];
    [(RMDummyDataProvider *)v9 setReceiverQueue:queueCopy];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("RMDummyDataProviderQueue", v10);
    [(RMDummyDataProvider *)v9 setProducerQueue:v11];
  }

  return v9;
}

- (id)startProducingDataWithCallback:(id)callback
{
  callbackCopy = callback;
  [(RMDummyDataProvider *)self setRunning:1];
  producerQueue = [(RMDummyDataProvider *)self producerQueue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, producerQueue);
  [(RMDummyDataProvider *)self setProducerTimer:v6];

  producerTimer = [(RMDummyDataProvider *)self producerTimer];
  dispatch_source_set_timer(producerTimer, 0, [(RMDummyDataProviderConfiguration *)self->_configuration intervalInNanoSeconds], 0);

  producerTimer2 = [(RMDummyDataProvider *)self producerTimer];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100008AA0;
  v15 = &unk_100024D78;
  selfCopy = self;
  v17 = callbackCopy;
  v9 = callbackCopy;
  dispatch_source_set_event_handler(producerTimer2, &v12);

  v10 = [(RMDummyDataProvider *)self producerTimer:v12];
  dispatch_resume(v10);

  return 0;
}

- (void)stopProducingData
{
  [(RMDummyDataProvider *)self setRunning:0];
  producerTimer = [(RMDummyDataProvider *)self producerTimer];
  dispatch_source_cancel(producerTimer);

  [(RMDummyDataProvider *)self setProducerTimer:0];
}

@end
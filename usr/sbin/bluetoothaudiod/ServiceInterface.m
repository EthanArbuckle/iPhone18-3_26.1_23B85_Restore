@interface ServiceInterface
- (AcceptorInterface)manager;
- (ServiceInterface)initWithPeripheral:(id)a3 service:(id)a4;
- (void)notifyDidStart;
- (void)start;
- (void)startDidTimeout;
- (void)stop;
@end

@implementation ServiceInterface

- (void)start
{
  [(ServiceInterface *)self startTimeout];
  if (v3 != 0.0)
  {
    [(ServiceInterface *)self startTimeout];
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"startDidTimeout" selector:0 userInfo:0 repeats:?];
    [(ServiceInterface *)self setStartTimer:v4];
  }
}

- (void)stop
{
  v2 = [(ServiceInterface *)self startTimer];
  [v2 invalidate];
}

- (ServiceInterface)initWithPeripheral:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ServiceInterface;
  v9 = [(ServiceInterface *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peripheral, a3);
    objc_storeStrong(&v10->_service, a4);
    *&v10->_isPrimary = 0;
    v10->_parentServiceInterface = 0;
    v10->_startTimeout = 10.0;
    startTimer = v10->_startTimer;
    v10->_startTimer = 0;

    serviceEventHandler = v10->_serviceEventHandler;
    v10->_serviceEventHandler = 0;
  }

  return v10;
}

- (void)notifyDidStart
{
  if (![(ServiceInterface *)self isStarted])
  {
    v3 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      service = self->_service;
      v5 = v3;
      v6 = [(CBService *)service UUID];
      v7 = [(CBPeripheral *)self->_peripheral name];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Service %@ has started on peripheral %@", &v11, 0x16u);
    }

    [(ServiceInterface *)self setIsStarted:1];
    v8 = [(ServiceInterface *)self startTimer];
    [v8 invalidate];

    v9 = [(ServiceInterface *)self serviceEventHandler];

    if (v9)
    {
      v10 = [(ServiceInterface *)self serviceEventHandler];
      (v10)[2](v10, 0, self);
    }
  }
}

- (void)startDidTimeout
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B308(self, v3);
  }

  v4 = [(ServiceInterface *)self manager];
  [v4 clientServiceDidStart:self];
}

- (AcceptorInterface)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end
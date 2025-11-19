@interface ClientService
- (ClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (ClientServiceManager)manager;
- (void)notifyDidStart;
- (void)start;
- (void)startDidTimeout;
- (void)stop;
@end

@implementation ClientService

- (void)start
{
  [(ClientService *)self startTimeout];
  if (v3 != 0.0)
  {
    [(ClientService *)self startTimeout];
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"startDidTimeout" selector:0 userInfo:0 repeats:?];
    [(ClientService *)self setStartTimer:v4];
  }
}

- (void)stop
{
  v2 = [(ClientService *)self startTimer];
  [v2 invalidate];
}

- (ClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ClientService;
  v11 = [(ClientService *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_manager, v8);
    objc_storeStrong(&v12->_peripheral, a4);
    objc_storeStrong(&v12->_service, a5);
    *&v12->_isPrimary = 0;
    v12->_startTimeout = 10.0;
    startTimer = v12->_startTimer;
    v12->_priority = 11;
    v12->_startTimer = 0;
  }

  return v12;
}

- (void)notifyDidStart
{
  if (![(ClientService *)self isStarted])
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      service = self->_service;
      v5 = v3;
      v6 = [(CBService *)service UUID];
      v7 = [(CBPeripheral *)self->_peripheral name];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Service %@ has started on peripheral %@", &v10, 0x16u);
    }

    [(ClientService *)self setIsStarted:1];
    v8 = [(ClientService *)self startTimer];
    [v8 invalidate];

    v9 = [(ClientService *)self manager];
    [v9 clientServiceDidStart:self];
  }
}

- (void)startDidTimeout
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076454(self, v3);
  }

  v4 = [(ClientService *)self manager];
  [v4 clientServiceDidStart:self];
}

- (ClientServiceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end
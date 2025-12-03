@interface ClientService
- (ClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
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
  startTimer = [(ClientService *)self startTimer];
  [startTimer invalidate];
}

- (ClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = ClientService;
  v11 = [(ClientService *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_manager, managerCopy);
    objc_storeStrong(&v12->_peripheral, peripheral);
    objc_storeStrong(&v12->_service, service);
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
      uUID = [(CBService *)service UUID];
      name = [(CBPeripheral *)self->_peripheral name];
      v10 = 138412546;
      v11 = uUID;
      v12 = 2112;
      v13 = name;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Service %@ has started on peripheral %@", &v10, 0x16u);
    }

    [(ClientService *)self setIsStarted:1];
    startTimer = [(ClientService *)self startTimer];
    [startTimer invalidate];

    manager = [(ClientService *)self manager];
    [manager clientServiceDidStart:self];
  }
}

- (void)startDidTimeout
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100076454(self, v3);
  }

  manager = [(ClientService *)self manager];
  [manager clientServiceDidStart:self];
}

- (ClientServiceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end
@interface ServerService
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)respondToRequest:(id)request withResult:(int64_t)result;
- (void)start;
- (void)stop;
- (void)updateValue:(id)value forCharacteristic:(id)characteristic onSubscribedCentrals:(id)centrals;
@end

@implementation ServerService

- (void)start
{
  v4 = +[ServerServiceManager instance];
  service = [(ServerService *)self service];
  [v4 addService:service];
}

- (void)stop
{
  v4 = +[ServerServiceManager instance];
  service = [(ServerService *)self service];
  [v4 removeService:service];
}

- (void)respondToRequest:(id)request withResult:(int64_t)result
{
  requestCopy = request;
  v6 = +[ServerServiceManager instance];
  [v6 respondToRequest:requestCopy withResult:result];
}

- (void)updateValue:(id)value forCharacteristic:(id)characteristic onSubscribedCentrals:(id)centrals
{
  centralsCopy = centrals;
  characteristicCopy = characteristic;
  valueCopy = value;
  v10 = +[ServerServiceManager instance];
  [v10 updateValue:valueCopy forCharacteristic:characteristicCopy onSubscribedCentrals:centralsCopy];
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  if ([state state] == 10)
  {
    v4 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_100078C74(v4);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  self->_restrictedMode = v5;
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  managerCopy = manager;
  serviceCopy = service;
  errorCopy = error;
  v10 = qword_1000DDBC8;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100078CB8(v10, serviceCopy, errorCopy);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    uUID = [serviceCopy UUID];
    v13 = 138412290;
    v14 = uUID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Service %@ has been published", &v13, 0xCu);
  }
}

@end
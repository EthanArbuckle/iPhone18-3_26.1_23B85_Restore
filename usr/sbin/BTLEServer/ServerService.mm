@interface ServerService
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)respondToRequest:(id)a3 withResult:(int64_t)a4;
- (void)start;
- (void)stop;
- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5;
@end

@implementation ServerService

- (void)start
{
  v4 = +[ServerServiceManager instance];
  v3 = [(ServerService *)self service];
  [v4 addService:v3];
}

- (void)stop
{
  v4 = +[ServerServiceManager instance];
  v3 = [(ServerService *)self service];
  [v4 removeService:v3];
}

- (void)respondToRequest:(id)a3 withResult:(int64_t)a4
{
  v5 = a3;
  v6 = +[ServerServiceManager instance];
  [v6 respondToRequest:v5 withResult:a4];
}

- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ServerServiceManager instance];
  [v10 updateValue:v9 forCharacteristic:v8 onSubscribedCentrals:v7];
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  if ([a3 state] == 10)
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

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = qword_1000DDBC8;
  if (v9)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100078CB8(v10, v8, v9);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v8 UUID];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Service %@ has been published", &v13, 0xCu);
  }
}

@end
@interface EPPeripheralManagerManager
- (EPPeripheralManagerManager)init;
- (void)createResource;
- (void)destroyResource;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3;
@end

@implementation EPPeripheralManagerManager

- (EPPeripheralManagerManager)init
{
  v3 = +[EPFactory queue];
  v6.receiver = self;
  v6.super_class = EPPeripheralManagerManager;
  v4 = [(EPResourceManager *)&v6 initWithQueue:v3];

  return v4;
}

- (void)createResource
{
  v7.receiver = self;
  v7.super_class = EPPeripheralManagerManager;
  [(EPResourceManager *)&v7 createResource];
  v3 = [CBPeripheralManager alloc];
  v4 = [(EPResourceManager *)self queue];
  v5 = [v3 initWithDelegate:self queue:v4];
  manager = self->_manager;
  self->_manager = v5;
}

- (void)destroyResource
{
  v4.receiver = self;
  v4.super_class = EPPeripheralManagerManager;
  [(EPResourceManager *)&v4 destroyResource];
  manager = self->_manager;
  self->_manager = 0;
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = 0;
  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Bluetooth is not supported";
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v9 = 3;
    }

    else
    {
      v7 = 0;
      if (v5 != 3)
      {
        goto LABEL_12;
      }

      v14 = NSLocalizedDescriptionKey;
      v15 = @"Bluetooth is unauthorized";
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = 4;
    }

    v7 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.peripheralmanager" code:v9 userInfo:v8];

    v6 = 2;
    goto LABEL_12;
  }

  if (v5 == 4)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Bluetooth is powered off";
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = 2;
    v7 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.peripheralmanager" code:2 userInfo:v10];
  }

  else if (v5 == 10 || (v7 = 0, v5 == 5))
  {
    v7 = 0;
    v6 = 1;
  }

LABEL_12:
  [(EPResourceManager *)self setAvailability:v6 withError:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100096658;
  v12[3] = &unk_1001785C0;
  v13 = v4;
  v11 = v4;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v12];
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096744;
  v11[3] = &unk_1001759C0;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100096810;
  v8[3] = &unk_100175998;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000968D8;
  v8[3] = &unk_100175998;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000969A0;
  v8[3] = &unk_100175998;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100096A40;
  v5[3] = &unk_1001785C0;
  v6 = a3;
  v4 = v6;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v5];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096B2C;
  v11[3] = &unk_1001759C0;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096C1C;
  v11[3] = &unk_1001759C0;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

@end
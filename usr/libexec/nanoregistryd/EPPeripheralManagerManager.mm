@interface EPPeripheralManagerManager
- (EPPeripheralManagerManager)init;
- (void)createResource;
- (void)destroyResource;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
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
  queue = [(EPResourceManager *)self queue];
  v5 = [v3 initWithDelegate:self queue:queue];
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

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  state = [stateCopy state];
  v6 = 0;
  if (state <= 3)
  {
    if (state == 2)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Bluetooth is not supported";
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v9 = 3;
    }

    else
    {
      v7 = 0;
      if (state != 3)
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

  if (state == 4)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Bluetooth is powered off";
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = 2;
    v7 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.peripheralmanager" code:2 userInfo:v10];
  }

  else if (state == 10 || (v7 = 0, state == 5))
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
  v13 = stateCopy;
  v11 = stateCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v12];
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096744;
  v11[3] = &unk_1001759C0;
  managerCopy = manager;
  serviceCopy = service;
  errorCopy = error;
  v8 = errorCopy;
  v9 = serviceCopy;
  v10 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100096810;
  v8[3] = &unk_100175998;
  managerCopy = manager;
  requestCopy = request;
  v6 = requestCopy;
  v7 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000968D8;
  v8[3] = &unk_100175998;
  managerCopy = manager;
  requestsCopy = requests;
  v6 = requestsCopy;
  v7 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000969A0;
  v8[3] = &unk_100175998;
  advertisingCopy = advertising;
  errorCopy = error;
  v6 = errorCopy;
  v7 = advertisingCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100096A40;
  v5[3] = &unk_1001785C0;
  subscribersCopy = subscribers;
  v4 = subscribersCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v5];
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096B2C;
  v11[3] = &unk_1001759C0;
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  v8 = characteristicCopy;
  v9 = centralCopy;
  v10 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096C1C;
  v11[3] = &unk_1001759C0;
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  v8 = characteristicCopy;
  v9 = centralCopy;
  v10 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

@end
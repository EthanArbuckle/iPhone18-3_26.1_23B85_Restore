@interface CDProviderSession
- (CDProviderSession)initWithDeviceIdentifier:(id)identifier discoveryType:(int64_t)type;
- (CDProviderSession)initWithLocalAuthenticationRequest:(id)request;
- (void)activate;
- (void)invalidate;
@end

@implementation CDProviderSession

- (CDProviderSession)initWithDeviceIdentifier:(id)identifier discoveryType:(int64_t)type
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CDProviderSession;
  v7 = [(CDProviderSession *)&v15 init];
  if (v7)
  {
    v8 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v8;

    objc_storeStrong(&v7->_dispatchQueue, &_dispatch_main_q);
    v7->_activateCalledAtomic = 0;
    v10 = [identifierCopy copy];
    deviceIdentifier = v7->_deviceIdentifier;
    v7->_deviceIdentifier = v10;

    v7->_discoveryType = type;
    v16 = RPOptionBTHighPriority;
    v17 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    rapportOptions = v7->_rapportOptions;
    v7->_rapportOptions = v12;
  }

  return v7;
}

- (CDProviderSession)initWithLocalAuthenticationRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = CDProviderSession;
  v6 = [(CDProviderSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localAuthenticationRequest, request);
    v8 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v8;

    objc_storeStrong(&v7->_dispatchQueue, &_dispatch_main_q);
    v7->_activateCalledAtomic = 0;
  }

  return v7;
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000733C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000073C4;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end
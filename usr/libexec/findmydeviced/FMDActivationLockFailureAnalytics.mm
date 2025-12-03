@interface FMDActivationLockFailureAnalytics
- (FMDAccount)account;
- (FMDActivationLockFailureAnalytics)initWithAccountAndError:(id)error error:(id)a4;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDActivationLockFailureAnalytics

- (FMDActivationLockFailureAnalytics)initWithAccountAndError:(id)error error:(id)a4
{
  v7 = a4;
  if (self)
  {
    errorCopy = error;
    objc_storeWeak(&self->_account, errorCopy);
    objc_storeStrong(&self->_error, a4);
    v10.receiver = self;
    v10.super_class = FMDActivationLockFailureAnalytics;
    self = [(FMDRequest *)&v10 initWithAccount:errorCopy];
  }

  return self;
}

- (id)requestUrl
{
  v3 = +[FMSystemInfo sharedInstance];
  deviceUDID = [v3 deviceUDID];
  v5 = objc_alloc_init(RequestTemplateURL);
  WeakRetained = objc_loadWeakRetained(&self->_account);
  v7 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/findme/metrics" account:WeakRetained udid:deviceUDID];

  return v7;
}

- (id)requestBody
{
  v19.receiver = self;
  v19.super_class = FMDActivationLockFailureAnalytics;
  requestBody = [(FMDRequest *)&v19 requestBody];
  v4 = +[FMDSystemConfig sharedInstance];
  [requestBody setObject:@"findmyd" forKeyedSubscript:@"source"];
  v5 = +[NSDate date];
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 fm_epoch]);
  [requestBody setObject:v6 forKeyedSubscript:@"timestamp"];

  deviceUDID = [v4 deviceUDID];
  [requestBody fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v8 = objc_alloc_init(NSMutableDictionary);
  serialNumber = [v4 serialNumber];
  [v8 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  productType = [v4 productType];
  [v8 fm_safelyMapKey:@"productType" toObject:productType];

  internationalMobileEquipmentIdentity = [v4 internationalMobileEquipmentIdentity];
  [v8 fm_safelyMapKey:@"imei" toObject:internationalMobileEquipmentIdentity];

  internationalMobileEquipmentIdentityTwo = [v4 internationalMobileEquipmentIdentityTwo];
  [v8 fm_safelyMapKey:@"imei2" toObject:internationalMobileEquipmentIdentityTwo];

  mobileEquipmentIdentifier = [v4 mobileEquipmentIdentifier];
  [v8 fm_safelyMapKey:@"meid" toObject:mobileEquipmentIdentifier];

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = [NSNumber numberWithInteger:[(NSError *)self->_error code]];
  [v14 fm_safelyMapKey:@"errorCode" toObject:v15];

  v16 = [(NSError *)self->_error description];
  [v14 fm_safelyMapKey:@"errorMessage" toObject:v16];

  domain = [(NSError *)self->_error domain];
  [v14 fm_safelyMapKey:@"errorCategory" toObject:domain];

  [v8 fm_safelyMapKey:@"errorDetails" toObject:v14];
  [requestBody fm_safelyMapKey:@"activationLockFailure" toObject:v8];

  return requestBody;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDActivationLockFailureAnalytics;
  requestHeaders = [(FMDRequest *)&v4 requestHeaders];

  return requestHeaders;
}

- (FMDAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end
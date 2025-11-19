@interface FMDActivationLockFailureAnalytics
- (FMDAccount)account;
- (FMDActivationLockFailureAnalytics)initWithAccountAndError:(id)a3 error:(id)a4;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDActivationLockFailureAnalytics

- (FMDActivationLockFailureAnalytics)initWithAccountAndError:(id)a3 error:(id)a4
{
  v7 = a4;
  if (self)
  {
    v8 = a3;
    objc_storeWeak(&self->_account, v8);
    objc_storeStrong(&self->_error, a4);
    v10.receiver = self;
    v10.super_class = FMDActivationLockFailureAnalytics;
    self = [(FMDRequest *)&v10 initWithAccount:v8];
  }

  return self;
}

- (id)requestUrl
{
  v3 = +[FMSystemInfo sharedInstance];
  v4 = [v3 deviceUDID];
  v5 = objc_alloc_init(RequestTemplateURL);
  WeakRetained = objc_loadWeakRetained(&self->_account);
  v7 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/findme/metrics" account:WeakRetained udid:v4];

  return v7;
}

- (id)requestBody
{
  v19.receiver = self;
  v19.super_class = FMDActivationLockFailureAnalytics;
  v3 = [(FMDRequest *)&v19 requestBody];
  v4 = +[FMDSystemConfig sharedInstance];
  [v3 setObject:@"findmyd" forKeyedSubscript:@"source"];
  v5 = +[NSDate date];
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 fm_epoch]);
  [v3 setObject:v6 forKeyedSubscript:@"timestamp"];

  v7 = [v4 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:v7];

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v4 serialNumber];
  [v8 fm_safelyMapKey:@"serialNumber" toObject:v9];

  v10 = [v4 productType];
  [v8 fm_safelyMapKey:@"productType" toObject:v10];

  v11 = [v4 internationalMobileEquipmentIdentity];
  [v8 fm_safelyMapKey:@"imei" toObject:v11];

  v12 = [v4 internationalMobileEquipmentIdentityTwo];
  [v8 fm_safelyMapKey:@"imei2" toObject:v12];

  v13 = [v4 mobileEquipmentIdentifier];
  [v8 fm_safelyMapKey:@"meid" toObject:v13];

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = [NSNumber numberWithInteger:[(NSError *)self->_error code]];
  [v14 fm_safelyMapKey:@"errorCode" toObject:v15];

  v16 = [(NSError *)self->_error description];
  [v14 fm_safelyMapKey:@"errorMessage" toObject:v16];

  v17 = [(NSError *)self->_error domain];
  [v14 fm_safelyMapKey:@"errorCategory" toObject:v17];

  [v8 fm_safelyMapKey:@"errorDetails" toObject:v14];
  [v3 fm_safelyMapKey:@"activationLockFailure" toObject:v8];

  return v3;
}

- (id)requestHeaders
{
  v4.receiver = self;
  v4.super_class = FMDActivationLockFailureAnalytics;
  v2 = [(FMDRequest *)&v4 requestHeaders];

  return v2;
}

- (FMDAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end
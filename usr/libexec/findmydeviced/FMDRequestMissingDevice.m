@interface FMDRequestMissingDevice
- (BOOL)canReplace:(id)a3;
- (FMDRequestMissingDevice)initWithAccount:(id)a3 token:(id)a4 andMissingDeviceInfo:(id)a5;
- (id)requestBody;
@end

@implementation FMDRequestMissingDevice

- (FMDRequestMissingDevice)initWithAccount:(id)a3 token:(id)a4 andMissingDeviceInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FMDRequestMissingDevice;
  v11 = [(FMDRequest *)&v14 initWithAccount:v8];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestMissingDevice *)v11 setAccount:v8];
    objc_storeStrong(&v12->_missingDeviceInfo, a5);
    objc_storeStrong(&v12->_shortLivedToken, a4);
  }

  return v12;
}

- (id)requestBody
{
  v18.receiver = self;
  v18.super_class = FMDRequestMissingDevice;
  v3 = [(FMDRequest *)&v18 requestBody];
  v4 = objc_alloc_init(FMDActingRequestDecorator);
  v5 = [(FMDActingRequestDecorator *)v4 standardDeviceContext];

  [v3 fm_safelyMapKey:@"deviceContext" toObject:v5];
  v6 = [(FMDRequestMissingDevice *)self missingDeviceInfo];
  v7 = +[NSMutableDictionary dictionary];
  v8 = [v6 udid];
  [v7 fm_safelyMapKey:@"udid" toObject:v8];

  v9 = [v6 productType];
  [v7 fm_safelyMapKey:@"productType" toObject:v9];

  v10 = [v6 buildVersion];
  [v7 fm_safelyMapKey:@"buildVersion" toObject:v10];

  v11 = [v6 productVersion];
  [v7 fm_safelyMapKey:@"productVersion" toObject:v11];

  [v3 setObject:v7 forKeyedSubscript:@"deviceInfo"];
  v12 = [v6 imei];
  [v3 fm_safelyMapKey:@"imei" toObject:v12];

  v13 = [v6 meid];
  [v3 fm_safelyMapKey:@"meid" toObject:v13];

  v14 = [v6 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 deviceUDID];
  [v3 fm_safelyMapKey:@"hostDeviceUdid" toObject:v16];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
    }
  }

  return v4;
}

@end
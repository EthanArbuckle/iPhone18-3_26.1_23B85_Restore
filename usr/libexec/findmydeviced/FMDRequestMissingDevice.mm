@interface FMDRequestMissingDevice
- (BOOL)canReplace:(id)replace;
- (FMDRequestMissingDevice)initWithAccount:(id)account token:(id)token andMissingDeviceInfo:(id)info;
- (id)requestBody;
@end

@implementation FMDRequestMissingDevice

- (FMDRequestMissingDevice)initWithAccount:(id)account token:(id)token andMissingDeviceInfo:(id)info
{
  accountCopy = account;
  tokenCopy = token;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = FMDRequestMissingDevice;
  v11 = [(FMDRequest *)&v14 initWithAccount:accountCopy];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestMissingDevice *)v11 setAccount:accountCopy];
    objc_storeStrong(&v12->_missingDeviceInfo, info);
    objc_storeStrong(&v12->_shortLivedToken, token);
  }

  return v12;
}

- (id)requestBody
{
  v18.receiver = self;
  v18.super_class = FMDRequestMissingDevice;
  requestBody = [(FMDRequest *)&v18 requestBody];
  v4 = objc_alloc_init(FMDActingRequestDecorator);
  standardDeviceContext = [(FMDActingRequestDecorator *)v4 standardDeviceContext];

  [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
  missingDeviceInfo = [(FMDRequestMissingDevice *)self missingDeviceInfo];
  v7 = +[NSMutableDictionary dictionary];
  udid = [missingDeviceInfo udid];
  [v7 fm_safelyMapKey:@"udid" toObject:udid];

  productType = [missingDeviceInfo productType];
  [v7 fm_safelyMapKey:@"productType" toObject:productType];

  buildVersion = [missingDeviceInfo buildVersion];
  [v7 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  productVersion = [missingDeviceInfo productVersion];
  [v7 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [requestBody setObject:v7 forKeyedSubscript:@"deviceInfo"];
  imei = [missingDeviceInfo imei];
  [requestBody fm_safelyMapKey:@"imei" toObject:imei];

  meid = [missingDeviceInfo meid];
  [requestBody fm_safelyMapKey:@"meid" toObject:meid];

  serialNumber = [missingDeviceInfo serialNumber];
  [requestBody fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  v15 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v15 deviceUDID];
  [requestBody fm_safelyMapKey:@"hostDeviceUdid" toObject:deviceUDID];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
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
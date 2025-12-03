@interface FMDRequestFMIPUnregister
- (BOOL)canReplace:(id)replace;
- (FMDRequestFMIPUnregister)initWithAccount:(id)account device:(id)device otherDevices:(id)devices;
- (id)authToken;
- (id)requestBody;
- (void)_dumpInfoForDevice:(id)device into:(id)into host:(BOOL)host;
@end

@implementation FMDRequestFMIPUnregister

- (FMDRequestFMIPUnregister)initWithAccount:(id)account device:(id)device otherDevices:(id)devices
{
  accountCopy = account;
  deviceCopy = device;
  devicesCopy = devices;
  v14.receiver = self;
  v14.super_class = FMDRequestFMIPUnregister;
  v11 = [(FMDRequest *)&v14 initWithAccount:accountCopy];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestFMIPUnregister *)v11 setAccount:accountCopy];
    [(FMDRequestFMIPUnregister *)v12 setDevice:deviceCopy];
    [(FMDRequestFMIPUnregister *)v12 setOtherDevices:devicesCopy];
  }

  return v12;
}

- (id)requestBody
{
  v37.receiver = self;
  v37.super_class = FMDRequestFMIPUnregister;
  requestBody = [(FMDRequest *)&v37 requestBody];
  device = [(FMDRequestFMIPUnregister *)self device];
  serialNumber = [device serialNumber];

  if (serialNumber)
  {
    v6 = [requestBody valueForKey:@"deviceInfo"];
    v7 = +[FMDSharedConfigurationManager sharedInstance];
    device2 = [(FMDRequestFMIPUnregister *)self device];
    serialNumber2 = [device2 serialNumber];
    v10 = [v7 theftAndLossCoverageWithSerialNumber:serialNumber2];

    if (v10)
    {
      v11 = @"true";
    }

    else
    {
      v11 = @"false";
    }

    [v6 fm_safelyMapKey:@"brassStatus" toObject:v11];
    [requestBody setValue:v6 forKey:@"deviceInfo"];
  }

  v12 = objc_alloc_init(FMDActingRequestDecorator);
  standardDeviceContext = [(FMDActingRequestDecorator *)v12 standardDeviceContext];

  [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
  v14 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v14 deviceUDID];

  if (deviceUDID)
  {
    device3 = [(FMDRequestFMIPUnregister *)self device];
    udid = [device3 udid];
    v18 = [udid isEqualToString:deviceUDID];
  }

  else
  {
    v18 = 1;
  }

  device4 = [(FMDRequestFMIPUnregister *)self device];
  [(FMDRequestFMIPUnregister *)self _dumpInfoForDevice:device4 into:requestBody host:v18];

  otherDevices = [(FMDRequestFMIPUnregister *)self otherDevices];
  v21 = [otherDevices count];

  if (v21)
  {
    v31 = standardDeviceContext;
    v32 = requestBody;
    v22 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    otherDevices2 = [(FMDRequestFMIPUnregister *)self otherDevices];
    v24 = [otherDevices2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(otherDevices2);
          }

          v28 = *(*(&v33 + 1) + 8 * i);
          v29 = +[NSMutableDictionary dictionary];
          [(FMDRequestFMIPUnregister *)self _dumpInfoForDevice:v28 into:v29 host:0];
          [v22 addObject:v29];
        }

        v25 = [otherDevices2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v25);
    }

    requestBody = v32;
    [v32 setObject:v22 forKeyedSubscript:@"otherDevices"];

    standardDeviceContext = v31;
  }

  if ((v18 & 1) == 0)
  {
    [requestBody fm_safeSetObject:deviceUDID forKey:@"hostDeviceUdid"];
  }

  return requestBody;
}

- (id)authToken
{
  account = [(FMDRequestFMIPUnregister *)self account];
  oneTimeRemoveAuthToken = [account oneTimeRemoveAuthToken];

  return oneTimeRemoveAuthToken;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_dumpInfoForDevice:(id)device into:(id)into host:(BOOL)host
{
  deviceCopy = device;
  intoCopy = into;
  v8 = +[NSMutableDictionary dictionary];
  udid = [deviceCopy udid];
  [v8 fm_safelyMapKey:@"udid" toObject:udid];

  productType = [deviceCopy productType];
  [v8 fm_safelyMapKey:@"productType" toObject:productType];

  buildVersion = [deviceCopy buildVersion];
  [v8 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  productVersion = [deviceCopy productVersion];
  [v8 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  unregisterToken = [deviceCopy unregisterToken];
  [v8 fm_safelyMapKey:@"unregisterToken" toObject:unregisterToken];

  pairingId = [deviceCopy pairingId];
  [v8 fm_safelyMapKey:@"pairingId" toObject:pairingId];

  if (!host)
  {
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy paired]);
    [v8 fm_safelyMapKey:@"paired" toObject:v15];

    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy migrationConfirmed]);
    [v8 fm_safelyMapKey:@"migrationConfirmed" toObject:v16];
  }

  disableContext = [deviceCopy disableContext];
  if (disableContext)
  {
    v18 = [NSNumber numberWithUnsignedInteger:disableContext];
    [v8 setObject:v18 forKeyedSubscript:@"fmipDisableReason"];
  }

  [intoCopy setObject:v8 forKeyedSubscript:@"deviceInfo"];
  imei = [deviceCopy imei];
  [intoCopy fm_safelyMapKey:@"imei" toObject:imei];

  imei2 = [deviceCopy imei2];
  [intoCopy fm_safelyMapKey:@"imei2" toObject:imei2];

  meid = [deviceCopy meid];
  [intoCopy fm_safelyMapKey:@"meid" toObject:meid];

  serialNumber = [deviceCopy serialNumber];
  [intoCopy fm_safelyMapKey:@"serialNumber" toObject:serialNumber];
}

@end
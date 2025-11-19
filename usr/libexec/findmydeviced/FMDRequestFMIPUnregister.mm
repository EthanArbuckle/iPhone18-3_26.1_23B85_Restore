@interface FMDRequestFMIPUnregister
- (BOOL)canReplace:(id)a3;
- (FMDRequestFMIPUnregister)initWithAccount:(id)a3 device:(id)a4 otherDevices:(id)a5;
- (id)authToken;
- (id)requestBody;
- (void)_dumpInfoForDevice:(id)a3 into:(id)a4 host:(BOOL)a5;
@end

@implementation FMDRequestFMIPUnregister

- (FMDRequestFMIPUnregister)initWithAccount:(id)a3 device:(id)a4 otherDevices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FMDRequestFMIPUnregister;
  v11 = [(FMDRequest *)&v14 initWithAccount:v8];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestFMIPUnregister *)v11 setAccount:v8];
    [(FMDRequestFMIPUnregister *)v12 setDevice:v9];
    [(FMDRequestFMIPUnregister *)v12 setOtherDevices:v10];
  }

  return v12;
}

- (id)requestBody
{
  v37.receiver = self;
  v37.super_class = FMDRequestFMIPUnregister;
  v3 = [(FMDRequest *)&v37 requestBody];
  v4 = [(FMDRequestFMIPUnregister *)self device];
  v5 = [v4 serialNumber];

  if (v5)
  {
    v6 = [v3 valueForKey:@"deviceInfo"];
    v7 = +[FMDSharedConfigurationManager sharedInstance];
    v8 = [(FMDRequestFMIPUnregister *)self device];
    v9 = [v8 serialNumber];
    v10 = [v7 theftAndLossCoverageWithSerialNumber:v9];

    if (v10)
    {
      v11 = @"true";
    }

    else
    {
      v11 = @"false";
    }

    [v6 fm_safelyMapKey:@"brassStatus" toObject:v11];
    [v3 setValue:v6 forKey:@"deviceInfo"];
  }

  v12 = objc_alloc_init(FMDActingRequestDecorator);
  v13 = [(FMDActingRequestDecorator *)v12 standardDeviceContext];

  [v3 fm_safelyMapKey:@"deviceContext" toObject:v13];
  v14 = +[FMDSystemConfig sharedInstance];
  v15 = [v14 deviceUDID];

  if (v15)
  {
    v16 = [(FMDRequestFMIPUnregister *)self device];
    v17 = [v16 udid];
    v18 = [v17 isEqualToString:v15];
  }

  else
  {
    v18 = 1;
  }

  v19 = [(FMDRequestFMIPUnregister *)self device];
  [(FMDRequestFMIPUnregister *)self _dumpInfoForDevice:v19 into:v3 host:v18];

  v20 = [(FMDRequestFMIPUnregister *)self otherDevices];
  v21 = [v20 count];

  if (v21)
  {
    v31 = v13;
    v32 = v3;
    v22 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = [(FMDRequestFMIPUnregister *)self otherDevices];
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * i);
          v29 = +[NSMutableDictionary dictionary];
          [(FMDRequestFMIPUnregister *)self _dumpInfoForDevice:v28 into:v29 host:0];
          [v22 addObject:v29];
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v25);
    }

    v3 = v32;
    [v32 setObject:v22 forKeyedSubscript:@"otherDevices"];

    v13 = v31;
  }

  if ((v18 & 1) == 0)
  {
    [v3 fm_safeSetObject:v15 forKey:@"hostDeviceUdid"];
  }

  return v3;
}

- (id)authToken
{
  v2 = [(FMDRequestFMIPUnregister *)self account];
  v3 = [v2 oneTimeRemoveAuthToken];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_dumpInfoForDevice:(id)a3 into:(id)a4 host:(BOOL)a5
{
  v23 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [v23 udid];
  [v8 fm_safelyMapKey:@"udid" toObject:v9];

  v10 = [v23 productType];
  [v8 fm_safelyMapKey:@"productType" toObject:v10];

  v11 = [v23 buildVersion];
  [v8 fm_safelyMapKey:@"buildVersion" toObject:v11];

  v12 = [v23 productVersion];
  [v8 fm_safelyMapKey:@"productVersion" toObject:v12];

  v13 = [v23 unregisterToken];
  [v8 fm_safelyMapKey:@"unregisterToken" toObject:v13];

  v14 = [v23 pairingId];
  [v8 fm_safelyMapKey:@"pairingId" toObject:v14];

  if (!a5)
  {
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 paired]);
    [v8 fm_safelyMapKey:@"paired" toObject:v15];

    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 migrationConfirmed]);
    [v8 fm_safelyMapKey:@"migrationConfirmed" toObject:v16];
  }

  v17 = [v23 disableContext];
  if (v17)
  {
    v18 = [NSNumber numberWithUnsignedInteger:v17];
    [v8 setObject:v18 forKeyedSubscript:@"fmipDisableReason"];
  }

  [v7 setObject:v8 forKeyedSubscript:@"deviceInfo"];
  v19 = [v23 imei];
  [v7 fm_safelyMapKey:@"imei" toObject:v19];

  v20 = [v23 imei2];
  [v7 fm_safelyMapKey:@"imei2" toObject:v20];

  v21 = [v23 meid];
  [v7 fm_safelyMapKey:@"meid" toObject:v21];

  v22 = [v23 serialNumber];
  [v7 fm_safelyMapKey:@"serialNumber" toObject:v22];
}

@end
@interface FMDGainsboroughPairedDeviceSimulation
- (BOOL)isPairedDeviceSimulationActive;
- (id)connectionStatusString:(id)string;
- (id)lastActiveDate:(id)date;
- (id)pairedDeviceInfo;
- (id)udid:(id)udid;
- (id)wristStatusString:(id)string;
@end

@implementation FMDGainsboroughPairedDeviceSimulation

- (BOOL)isPairedDeviceSimulationActive
{
  v2 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v2 isInternalBuild];

  if (!isInternalBuild)
  {
    return 0;
  }

  return [FMPreferencesUtil BOOLForKey:@"GainsboroughSimulationPhone" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
}

- (id)udid:(id)udid
{
  v3 = [@"GainsboroughWatchUDID" stringByAppendingString:udid];
  v4 = [FMPreferencesUtil stringForKey:v3 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];

  return v4;
}

- (id)connectionStatusString:(id)string
{
  v3 = [@"GainsboroughConnectionStatus" stringByAppendingString:string];
  v4 = @"unknown";
  v5 = [FMPreferencesUtil integerForKey:v3 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if (v5 <= 3)
  {
    v6 = *(&off_10005E4C0)[v5];

    v4 = v6;
  }

  return v4;
}

- (id)wristStatusString:(id)string
{
  v3 = [@"GainsboroughWristStatus" stringByAppendingString:string];
  v4 = @"Unknown";
  v5 = [FMPreferencesUtil integerForKey:v3 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = &off_10005E200;
  }

  else
  {
    v6 = &off_10005E208;
  }

  v7 = *v6;

  v4 = v7;
LABEL_6:

  return v4;
}

- (id)lastActiveDate:(id)date
{
  v3 = [@"GainsboroughLastActiveTime" stringByAppendingString:date];
  v4 = [FMPreferencesUtil integerForKey:v3 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if ((v4 - 1) > 3)
  {
    v5 = -0.0;
  }

  else
  {
    v5 = dbl_100044D48[(v4 - 1)];
  }

  v6 = [NSDate dateWithTimeIntervalSinceNow:v5];

  return v6;
}

- (id)pairedDeviceInfo
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDGainsboroughPairedDeviceSimulation simulation active", buf, 2u);
  }

  v19 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [&off_1000631D8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(&off_1000631D8);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(FMDGainsboroughPairedDeviceSimulation *)self udid:v8];
        v10 = v9;
        if (v9 && [v9 length])
        {
          v11 = +[NSMutableDictionary dictionary];
          v12 = [(FMDGainsboroughPairedDeviceSimulation *)self lastActiveDate:v8];
          v13 = v12;
          if (v12)
          {
            v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 fm_epoch]);
          }

          else
          {
            v14 = &off_100062FB8;
          }

          [v11 fm_safelyMapKey:@"lastActiveTime" toObject:v14];
          [v11 fm_safelyMapKey:@"udid" toObject:v10];
          [v11 fm_safelyMapKey:@"pairingId" toObject:v10];
          [v11 fm_safelyMapKey:@"productType" toObject:{@"Watch3, 1"}];
          [v11 fm_safelyMapKey:@"deviceClass" toObject:@"Watch"];
          [v11 fm_safelyMapKey:@"platform" toObject:@"watchos"];
          v15 = [NSString stringWithFormat:@"Watch%@", v8];
          [v11 fm_safelyMapKey:@"deviceName" toObject:v15];

          v16 = [(FMDGainsboroughPairedDeviceSimulation *)self connectionStatusString:v8];
          [v11 fm_safelyMapKey:@"connectionStatus" toObject:v16];

          [v19 addObject:v11];
        }
      }

      v5 = [&off_1000631D8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  v17 = sub_100002830();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDGainsboroughPairedDeviceSimulation simulated paired devices %@", buf, 0xCu);
  }

  return v19;
}

@end
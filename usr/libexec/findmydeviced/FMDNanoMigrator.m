@interface FMDNanoMigrator
- (FMDNanoMigrator)initWithCompanionRegistry:(id)a3 unregisterTokenStore:(id)a4 serverInteractionController:(id)a5;
- (id)deviceInfoForHostDevice;
- (id)lastScheduledJanitorDate;
- (id)unregisterDeviceInfoAdaptors;
- (void)addObservers;
- (void)scheduleJanitor:(double)a3;
- (void)setJanitorScheduledDate:(id)a3;
- (void)unregisterAccessoriesIfNeeded;
@end

@implementation FMDNanoMigrator

- (FMDNanoMigrator)initWithCompanionRegistry:(id)a3 unregisterTokenStore:(id)a4 serverInteractionController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = FMDNanoMigrator;
  v11 = [(FMDNanoMigrator *)&v26 init];
  v12 = v11;
  if (v11)
  {
    [(FMDNanoMigrator *)v11 setRegistry:v8];
    [(FMDNanoMigrator *)v12 setUnregisterTokenStore:v9];
    [(FMDNanoMigrator *)v12 setServerInteractionController:v10];
    [(FMDNanoMigrator *)v12 addObservers];
    objc_initWeak(&location, v12);
    v13 = +[FMSystemInfo sharedInstance];
    v14 = [v13 isInternalBuild];

    if (v14)
    {
      v15 = [FMPreferencesUtil integerForKey:@"NanoMigratorRetryInterval" inDomain:kFMDNotBackedUpPrefDomain];
      if (v15 <= 0)
      {
        v16 = 10800.0;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      v16 = 10800.0;
    }

    v17 = [FMDXPCJanitor alloc];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10017BFA8;
    v23 = &unk_1002CD518;
    objc_copyWeak(&v24, &location);
    v18 = [(FMDXPCJanitor *)v17 initWithName:@"FMDNanoMigratorJanitor" gracePeriod:&v20 cleanupTask:v16];
    [(FMDNanoMigrator *)v12 setJanitor:v18, v20, v21, v22, v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)unregisterAccessoriesIfNeeded
{
  v3 = +[FMSystemInfo sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = [FMPreferencesUtil integerForKey:@"NanoMigratorRetryInterval" inDomain:kFMDNotBackedUpPrefDomain];
    if (v5 <= 0)
    {
      v6 = 3600.0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 3600.0;
  }

  [(FMDNanoMigrator *)self scheduleJanitor:v6];
  v7 = [(FMDNanoMigrator *)self unregisterDeviceInfoAdaptors];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator will attempt to unregister %li", buf, 0xCu);
    }

    v11 = sub_10017DFC4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Watch Migration: Unregister device count %li", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10017C318;
    v14[3] = &unk_1002CF8C0;
    v14[4] = self;
    *&v14[5] = v6;
    [v7 enumerateObjectsUsingBlock:v14];
  }

  else
  {
    v12 = sub_10017DFC4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Watch Migration: There were no devices or no tokens to unregister.", buf, 2u);
    }

    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator there were no devices or no tokens to unregister.", buf, 2u);
    }
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceDidPair:" name:@"nano.devicedidpair" object:0];
}

- (void)scheduleJanitor:(double)a3
{
  v5 = [(FMDNanoMigrator *)self unregisterTokenStore];
  v6 = [v5 accessoriesNeedUnregister];

  if (a3 <= 0.0 || v6 == 0)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator deactivating janitor", &v22, 2u);
    }

    v9 = sub_10017DFC4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Watch Migration: deactivating janitor", &v22, 2u);
    }

    [(FMDNanoMigrator *)self setJanitorScheduledDate:0];
    v10 = [(FMDNanoMigrator *)self janitor];
    [v10 deactivate];
  }

  else
  {
    v10 = [(FMDNanoMigrator *)self lastScheduledJanitorDate];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;
    v13 = +[NSDate date];
    [v13 timeIntervalSinceReferenceDate];
    v15 = v12 - v14;

    v16 = v10;
    if (v15 < 60.0)
    {
      v17 = sub_100002880();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator The last scheduled time is too short, rescheduling.", &v22, 2u);
      }

      v16 = [NSDate dateWithTimeIntervalSinceNow:a3];
    }

    v18 = sub_100002880();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FMDNanoMigrator scheduling janitor to run %@", &v22, 0xCu);
    }

    v19 = sub_10017DFC4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v16 fm_epoch];
      v22 = 134217984;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Watch Migration: scheduling janitor to run %lli", &v22, 0xCu);
    }

    [(FMDNanoMigrator *)self setJanitorScheduledDate:v16];
    v21 = [(FMDNanoMigrator *)self janitor];
    [v21 schedule:v16 requireClass:1];
  }
}

- (id)deviceInfoForHostDevice
{
  v2 = objc_alloc_init(FMDFMIPUnregisterDeviceInfo);
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 deviceUDID];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setUdid:v4];

  v5 = +[FMDSystemConfig sharedInstance];
  v6 = [v5 internationalMobileEquipmentIdentity];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setImei:v6];

  v7 = +[FMDSystemConfig sharedInstance];
  v8 = [v7 mobileEquipmentIdentifier];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setMeid:v8];

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = [v9 serialNumber];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setSerialNumber:v10];

  v11 = +[FMDSystemConfig sharedInstance];
  v12 = [v11 productType];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setProductType:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  v14 = [v13 productVersion];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setProductVersion:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 buildVersion];
  [(FMDFMIPUnregisterDeviceInfo *)v2 setBuildVersion:v16];

  [(FMDFMIPUnregisterDeviceInfo *)v2 setDisableContext:7];

  return v2;
}

- (id)unregisterDeviceInfoAdaptors
{
  v3 = +[NSMutableArray array];
  v4 = [(FMDNanoMigrator *)self registry];
  v5 = [v4 pairedAccessories];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017CF90;
  v10[3] = &unk_1002CF8E8;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

- (id)lastScheduledJanitorDate
{
  v2 = +[FMDProtectedContextManager sharedManager];
  v3 = [v2 contextForKey:@"FMDNanoMigratorLastScheduledJanitorDateKey" contextUUID:0 error:0];

  return v3;
}

- (void)setJanitorScheduledDate:(id)a3
{
  v6 = a3;
  v3 = +[FMDProtectedContextManager sharedManager];
  v4 = v3;
  if (v6)
  {
    v5 = [v3 saveContext:v6 forContextKey:@"FMDNanoMigratorLastScheduledJanitorDateKey" dataProtectionClass:4];
  }

  else
  {
    [v3 cleanupAllContextsForKey:@"FMDNanoMigratorLastScheduledJanitorDateKey"];
  }
}

@end
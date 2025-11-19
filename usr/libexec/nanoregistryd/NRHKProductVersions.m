@interface NRHKProductVersions
+ (id)UDIDeviceIdentifierForProductWithName:(id)a3 error:(id *)a4;
+ (id)_productBuildVersion;
+ (id)_updateVersionForMajorVersion:(id)a3 productBuildVersion:(id)a4;
+ (id)majorVersionForProductWithName:(id)a3 error:(id *)a4;
+ (id)versionForProductWithName:(id)a3 error:(id *)a4;
@end

@implementation NRHKProductVersions

+ (id)versionForProductWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 isEqualToString:@"ElectrocardiogramRecording"])
  {
    v16 = 0;
    v7 = [a1 majorVersionForProductWithName:v6 error:&v16];
    v8 = v16;
    if (v8)
    {
      v9 = nr_daemon_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100102CC8();
        }
      }

      if (a4)
      {
        v12 = v8;
        *a4 = v8;
      }
    }

    v13 = [a1 _productBuildVersion];
    v14 = [a1 _updateVersionForMajorVersion:v7 productBuildVersion:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_productBuildVersion
{
  v2 = +[NRHKProductUtilities systemRootDirectory];
  v3 = [v2 stringByAppendingString:@"/System/Library/CoreServices/SystemVersion.plist"];
  v4 = [NSURL fileURLWithPath:v3];

  v12 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100102D30();
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = [v5 objectForKey:@"ProductBuildVersion"];
  }

  return v10;
}

+ (id)majorVersionForProductWithName:(id)a3 error:(id *)a4
{
  if ([a3 isEqualToString:@"ElectrocardiogramRecording"])
  {
    v5 = objc_alloc_init(HKHealthStore);
    v14 = 0;
    v6 = [HKElectrocardiogramActiveAlgorithmVersion versionWithHealthStore:v5 error:&v14];
    v7 = v14;
    if (v7)
    {
      v8 = nr_daemon_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (v9)
      {
        v10 = nr_daemon_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100102D98(v7, v10);
        }
      }

      if (a4)
      {
        v11 = v7;
        *a4 = v7;
      }
    }

    if (v6)
    {
      v12 = [v6 stringValue];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_updateVersionForMajorVersion:(id)a3 productBuildVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [NSString stringWithFormat:@"%@.%@", v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)UDIDeviceIdentifierForProductWithName:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (![v7 isEqualToString:@"ElectrocardiogramRecording"])
  {
    goto LABEL_14;
  }

  v8 = HKElectrocardiogramRecordingV1iOSDeviceIdentifierPortion;
  v18 = 0;
  v9 = [a1 majorVersionForProductWithName:v7 error:&v18];
  v10 = v18;
  if (v10)
  {
    v4 = nr_daemon_log();
    v11 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100102CC8();
      }
    }

    if (a4)
    {
      v12 = v10;
      *a4 = v10;
    }
  }

  v13 = [a1 _productBuildVersion];
  v14 = [a1 _updateVersionForMajorVersion:v9 productBuildVersion:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v15 = [NSString stringWithFormat:@"%@%@", @"(10)", v14];
    v4 = [NSString stringWithFormat:@"%@%@", v8, v15];

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_14:
    v4 = 0;
  }

  return v4;
}

@end
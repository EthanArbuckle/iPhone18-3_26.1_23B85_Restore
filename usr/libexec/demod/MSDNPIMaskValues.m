@interface MSDNPIMaskValues
+ (id)sharedInstance;
- (MSDNPIMaskValues)initWithPreferencesFile:(id)a3;
- (id)getMaskValueForKey:(id)a3;
- (void)initMaskValuesLookUpTable;
- (void)populateLookupTableUsingDeviceInfo:(id)a3;
- (void)saveDeviceInfo:(id)a3;
@end

@implementation MSDNPIMaskValues

+ (id)sharedInstance
{
  if (qword_1001A57B0 != -1)
  {
    sub_1000D51EC();
  }

  v3 = qword_1001A57A8;

  return v3;
}

- (MSDNPIMaskValues)initWithPreferencesFile:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDNPIMaskValues;
  v5 = [(MSDNPIMaskValues *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MSDNPIMaskValues *)v5 setPreferencesFile:v4];
    [(MSDNPIMaskValues *)v6 setIsNPIDevice:0];
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MSDNPIMaskValues *)v6 setMaskValuesLookUpTable:v7];

    [(MSDNPIMaskValues *)v6 initMaskValuesLookUpTable];
  }

  return v6;
}

- (void)saveDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDNPIMaskValues saveDeviceInfo:]";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - deviceInfo:  %{public}@", &v8, 0x16u);
  }

  if (v4)
  {
    v6 = [(MSDNPIMaskValues *)self preferencesFile];
    [v6 setObject:v4 forKey:@"device_info"];

    [(MSDNPIMaskValues *)self populateLookupTableUsingDeviceInfo:v4];
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[MSDNPIMaskValues saveDeviceInfo:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - Missing deviceInfo.", &v8, 0xCu);
    }
  }
}

- (id)getMaskValueForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[MSDNPIMaskValues getMaskValueForKey:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - key is nil.", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)populateLookupTableUsingDeviceInfo:(id)a3
{
  v15 = a3;
  if ([v15 count])
  {
    [(MSDNPIMaskValues *)self setIsNPIDevice:1];
    v4 = [v15 objectForKey:@"product_type"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v4 length])
        {
          v5 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
          [v5 setObject:v4 forKey:@"ProductType"];
        }
      }
    }

    v6 = [v15 objectForKey:@"part_description"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 length])
        {
          v7 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
          [v7 setObject:v6 forKey:@"MSDDemoPartDescription"];
        }
      }
    }

    v8 = [v15 objectForKey:@"product_description"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = v8, [v8 length]) || v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = v6, objc_msgSend(v6, "length")))
    {
      v10 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
      [v10 setObject:v9 forKey:@"MSDDemoProductDescription"];
    }

    v11 = [v15 objectForKey:@"device_family"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 length])
        {
          v12 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
          [v12 setObject:v11 forKey:@"MSDDemoDeviceFamily"];
        }
      }
    }

    v13 = [v15 objectForKey:@"part_number"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v13 length])
    {

      v13 = @"A-123/A";
    }

    v14 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
    [v14 setObject:v13 forKey:@"PartNumber"];
  }

  else
  {
    [(MSDNPIMaskValues *)self setIsNPIDevice:0];
  }
}

- (void)initMaskValuesLookUpTable
{
  v3 = [(MSDNPIMaskValues *)self preferencesFile];
  v4 = [v3 objectForKey:@"device_info"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDNPIMaskValues *)self populateLookupTableUsingDeviceInfo:v4];
    }
  }

  v5 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
  [v5 setObject:&off_10017B0B0 forKey:@"MSDDemoNANDSize"];

  v6 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
  v8[0] = kMGQDiskUsageTotalSystemCapacity;
  v8[1] = kMGQDiskUsageTotalSystemAvailable;
  v9[0] = &off_10017B0C8;
  v9[1] = &off_10017B0C8;
  v8[2] = kMGQDiskUsageTotalDataCapacity;
  v8[3] = kMGQDiskUsageTotalDataAvailable;
  v9[2] = &off_10017B0C8;
  v9[3] = &off_10017B0C8;
  v8[4] = kMGQDiskUsageTotalDiskCapacity;
  v8[5] = kMGQDiskUsageAmountDataReserved;
  v9[4] = &off_10017B0C8;
  v9[5] = &off_10017B0C8;
  v8[6] = kMGQDiskUsageAmountDataAvailable;
  v8[7] = kMGQDiskUsageAmountRestoreAvailable;
  v9[6] = &off_10017B0C8;
  v9[7] = &off_10017B0C8;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:8];
  [v6 setObject:v7 forKey:@"DiskUsage"];
}

@end
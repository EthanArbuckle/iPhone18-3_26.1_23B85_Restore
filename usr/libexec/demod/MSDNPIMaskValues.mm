@interface MSDNPIMaskValues
+ (id)sharedInstance;
- (MSDNPIMaskValues)initWithPreferencesFile:(id)file;
- (id)getMaskValueForKey:(id)key;
- (void)initMaskValuesLookUpTable;
- (void)populateLookupTableUsingDeviceInfo:(id)info;
- (void)saveDeviceInfo:(id)info;
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

- (MSDNPIMaskValues)initWithPreferencesFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = MSDNPIMaskValues;
  v5 = [(MSDNPIMaskValues *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MSDNPIMaskValues *)v5 setPreferencesFile:fileCopy];
    [(MSDNPIMaskValues *)v6 setIsNPIDevice:0];
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MSDNPIMaskValues *)v6 setMaskValuesLookUpTable:v7];

    [(MSDNPIMaskValues *)v6 initMaskValuesLookUpTable];
  }

  return v6;
}

- (void)saveDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MSDNPIMaskValues saveDeviceInfo:]";
    v10 = 2114;
    v11 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - deviceInfo:  %{public}@", &v8, 0x16u);
  }

  if (infoCopy)
  {
    preferencesFile = [(MSDNPIMaskValues *)self preferencesFile];
    [preferencesFile setObject:infoCopy forKey:@"device_info"];

    [(MSDNPIMaskValues *)self populateLookupTableUsingDeviceInfo:infoCopy];
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

- (id)getMaskValueForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    maskValuesLookUpTable = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
    v6 = [maskValuesLookUpTable objectForKey:keyCopy];
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

- (void)populateLookupTableUsingDeviceInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    [(MSDNPIMaskValues *)self setIsNPIDevice:1];
    v4 = [infoCopy objectForKey:@"product_type"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v4 length])
        {
          maskValuesLookUpTable = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
          [maskValuesLookUpTable setObject:v4 forKey:@"ProductType"];
        }
      }
    }

    v6 = [infoCopy objectForKey:@"part_description"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 length])
        {
          maskValuesLookUpTable2 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
          [maskValuesLookUpTable2 setObject:v6 forKey:@"MSDDemoPartDescription"];
        }
      }
    }

    v8 = [infoCopy objectForKey:@"product_description"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = v8, [v8 length]) || v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = v6, objc_msgSend(v6, "length")))
    {
      maskValuesLookUpTable3 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
      [maskValuesLookUpTable3 setObject:v9 forKey:@"MSDDemoProductDescription"];
    }

    v11 = [infoCopy objectForKey:@"device_family"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 length])
        {
          maskValuesLookUpTable4 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
          [maskValuesLookUpTable4 setObject:v11 forKey:@"MSDDemoDeviceFamily"];
        }
      }
    }

    v13 = [infoCopy objectForKey:@"part_number"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v13 length])
    {

      v13 = @"A-123/A";
    }

    maskValuesLookUpTable5 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
    [maskValuesLookUpTable5 setObject:v13 forKey:@"PartNumber"];
  }

  else
  {
    [(MSDNPIMaskValues *)self setIsNPIDevice:0];
  }
}

- (void)initMaskValuesLookUpTable
{
  preferencesFile = [(MSDNPIMaskValues *)self preferencesFile];
  v4 = [preferencesFile objectForKey:@"device_info"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDNPIMaskValues *)self populateLookupTableUsingDeviceInfo:v4];
    }
  }

  maskValuesLookUpTable = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
  [maskValuesLookUpTable setObject:&off_10017B0B0 forKey:@"MSDDemoNANDSize"];

  maskValuesLookUpTable2 = [(MSDNPIMaskValues *)self maskValuesLookUpTable];
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
  [maskValuesLookUpTable2 setObject:v7 forKey:@"DiskUsage"];
}

@end
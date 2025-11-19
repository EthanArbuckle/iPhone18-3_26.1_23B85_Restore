@interface FMDMagSafeDataStore
+ (id)defaultStorageLocation;
+ (id)deprecatedLostModeStorageLocation;
+ (id)deprecatedStorageLocation;
+ (id)lostModeStorageLocation;
+ (id)magSafeContainerURL;
+ (id)sharedInstance;
- (FMDMagSafeDataStore)init;
- (id)_writeAccessoriesToDisk:(id)a3;
- (id)readAllAccessoriesFromDisk;
- (id)readLostModeAccessoriesList;
- (id)readLostModeAccessoriesListVersion;
- (id)writeLostModeInfo:(id)a3 version:(id)a4;
- (void)addAccessory:(id)a3 withCompletion:(id)a4;
- (void)clearDataStore;
- (void)migrateDataStore;
- (void)removeAccessoryWithId:(id)a3 withCompletion:(id)a4;
- (void)removeAccessoryWithSerialNumber:(id)a3 withCompletion:(id)a4;
- (void)updateLostModeKeyRollTimeFor:(id)a3 lastLostModeKeyRollTime:(id)a4 withCompletion:(id)a5;
@end

@implementation FMDMagSafeDataStore

+ (id)sharedInstance
{
  if (qword_100314A20 != -1)
  {
    sub_10022F528();
  }

  v3 = qword_100314A18;

  return v3;
}

- (id)readLostModeAccessoriesListVersion
{
  [(FMDMagSafeDataStore *)self migrateDataStore];
  v3 = [(FMDMagSafeDataStore *)self lostModeDataArchiver];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  v15 = 0;
  v7 = [v3 readDictionaryAndClasses:v6 error:&v15];
  v8 = v15;

  if (([v8 fm_isFileNotFoundError] & 1) == 0 && (!v7 || v8))
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022F5D4();
    }
  }

  v10 = sub_10000BE38();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 objectForKeyedSubscript:@"accessoryList"];
    v12 = [v11 count];
    *buf = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "readLostModeAccessoriesList total = %lu accessories = %@", buf, 0x16u);
  }

  v13 = [v7 objectForKeyedSubscript:@"version"];

  return v13;
}

+ (id)magSafeContainerURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.icloud.findmydevice.magsafe"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022F4E4(v6);
    }
  }

  return v4;
}

+ (id)defaultStorageLocation
{
  v2 = [a1 magSafeContainerURL];
  v3 = [v2 fm_preferencesPathURLForDomain:@"fmdMagSafeDevices"];

  return v3;
}

+ (id)lostModeStorageLocation
{
  v2 = [a1 magSafeContainerURL];
  v3 = [v2 fm_preferencesPathURLForDomain:@"fmdMagSafeLostDevices"];

  return v3;
}

+ (id)deprecatedStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"fmdMagSafeDevices"];

  return v5;
}

+ (id)deprecatedLostModeStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"fmdMagSafeLostDevices"];

  return v5;
}

- (FMDMagSafeDataStore)init
{
  v18.receiver = self;
  v18.super_class = FMDMagSafeDataStore;
  v2 = [(FMDMagSafeDataStore *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDMagSafeDataStore.serialQueue", 0);
    [(FMDMagSafeDataStore *)v2 setSerialQueue:v3];

    v4 = [FMDataArchiver alloc];
    v5 = [objc_opt_class() defaultStorageLocation];
    v6 = [v4 initWithFileURL:v5];
    [(FMDMagSafeDataStore *)v2 setDataArchiver:v6];

    v7 = [(FMDMagSafeDataStore *)v2 dataArchiver];
    [v7 setDataProtectionClass:4];

    v8 = [(FMDMagSafeDataStore *)v2 dataArchiver];
    [v8 setBackedUp:0];

    v9 = [(FMDMagSafeDataStore *)v2 dataArchiver];
    [v9 setCreateDirectories:1];

    v10 = [FMDataArchiver alloc];
    v11 = [objc_opt_class() lostModeStorageLocation];
    v12 = [v10 initWithFileURL:v11];
    [(FMDMagSafeDataStore *)v2 setLostModeDataArchiver:v12];

    v13 = [(FMDMagSafeDataStore *)v2 lostModeDataArchiver];
    [v13 setDataProtectionClass:4];

    v14 = [(FMDMagSafeDataStore *)v2 lostModeDataArchiver];
    [v14 setBackedUp:0];

    v15 = [(FMDMagSafeDataStore *)v2 lostModeDataArchiver];
    [v15 setCreateDirectories:1];

    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F53C(v2, v16);
    }
  }

  return v2;
}

- (void)clearDataStore
{
  v3 = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC05C;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)addAccessory:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC228;
  block[3] = &unk_1002CE278;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeAccessoryWithId:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC448;
  block[3] = &unk_1002CE278;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeAccessoryWithSerialNumber:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeDataStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC64C;
  block[3] = &unk_1002CE278;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)readAllAccessoriesFromDisk
{
  [(FMDMagSafeDataStore *)self migrateDataStore];
  v3 = [(FMDMagSafeDataStore *)self dataArchiver];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v13 = 0;
  v6 = [v3 readDictionaryAndClasses:v5 error:&v13];
  v7 = v13;

  if (([v7 fm_isFileNotFoundError] & 1) == 0 && (!v6 || v7 != 0))
  {

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022F5D4();
    }

    v6 = &__NSDictionary0__struct;
  }

  v10 = sub_10000BE38();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 count];
    *buf = 134218242;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "readAllAccessoriesFromDisk total = %lu accessories = %@", buf, 0x16u);
  }

  return v6;
}

- (id)_writeAccessoriesToDisk:(id)a3
{
  v4 = a3;
  v5 = [(FMDMagSafeDataStore *)self dataArchiver];
  v6 = [v5 saveDictionary:v4];

  return v6;
}

- (id)writeLostModeInfo:(id)a3 version:(id)a4
{
  v13[0] = @"accessoryList";
  v13[1] = @"version";
  v14[0] = a3;
  v14[1] = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = [(FMDMagSafeDataStore *)self lostModeDataArchiver];
  v10 = [v9 saveDictionary:v8];

  if (!v10)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.findmydeviced.findkit.magSafe.added", 0, 0, 1u);
  }

  return v10;
}

- (id)readLostModeAccessoriesList
{
  [(FMDMagSafeDataStore *)self migrateDataStore];
  v3 = [(FMDMagSafeDataStore *)self lostModeDataArchiver];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  v15 = 0;
  v7 = [v3 readDictionaryAndClasses:v6 error:&v15];
  v8 = v15;

  if (([v8 fm_isFileNotFoundError] & 1) == 0 && (!v7 || v8))
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022F5D4();
    }
  }

  v10 = sub_10000BE38();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 objectForKeyedSubscript:@"accessoryList"];
    v12 = [v11 count];
    *buf = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "readLostModeAccessoriesList total = %lu accessories = %@", buf, 0x16u);
  }

  v13 = [v7 objectForKeyedSubscript:@"accessoryList"];

  return v13;
}

- (void)updateLostModeKeyRollTimeFor:(id)a3 lastLostModeKeyRollTime:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FMDMagSafeDataStore *)self serialQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DD030;
  v15[3] = &unk_1002D0F28;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)migrateDataStore
{
  v2 = [objc_opt_class() deprecatedStorageLocation];
  v3 = [objc_opt_class() defaultStorageLocation];
  v4 = +[NSFileManager defaultManager];
  [v4 fm_migrateFileFromURL:v2 toURL:v3];

  v7 = [objc_opt_class() deprecatedLostModeStorageLocation];

  v5 = [objc_opt_class() lostModeStorageLocation];

  v6 = +[NSFileManager defaultManager];
  [v6 fm_migrateFileFromURL:v7 toURL:v5];
}

@end
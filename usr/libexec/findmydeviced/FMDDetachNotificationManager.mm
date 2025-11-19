@interface FMDDetachNotificationManager
+ (id)defaultStorageLocation;
+ (id)deprecatedStorageLocation;
- (FMDAccessoryLocationStore)locationStore;
- (FMDDetachNotificationManager)init;
- (FMDDetachNotificationManager)initWithCoder:(id)a3;
- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry;
- (id)_writeToDisk;
- (void)_loadFromDisk;
- (void)accessoryDidConnect:(id)a3;
- (void)accessoryDidDisconnect:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getLocationFor:(id)a3 withCompletion:(id)a4;
- (void)updateAccessoryIds:(id)a3 version:(id)a4 withCompletion:(id)a5;
@end

@implementation FMDDetachNotificationManager

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"FMDDetachNotificationManager"];

  return v4;
}

+ (id)deprecatedStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"FMDDetachNotificationManager"];

  return v5;
}

- (FMDDetachNotificationManager)init
{
  v11.receiver = self;
  v11.super_class = FMDDetachNotificationManager;
  v2 = [(FMDDetachNotificationManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDDetachNotificationManager.serialQueue", 0);
    [(FMDDetachNotificationManager *)v2 setSerialQueue:v3];

    v4 = [FMDataArchiver alloc];
    v5 = [objc_opt_class() defaultStorageLocation];
    v6 = [v4 initWithFileURL:v5];
    [(FMDDetachNotificationManager *)v2 setDataArchiver:v6];

    v7 = [(FMDDetachNotificationManager *)v2 dataArchiver];
    [v7 setDataProtectionClass:4];

    v8 = [(FMDDetachNotificationManager *)v2 dataArchiver];
    [v8 setBackedUp:0];

    v9 = [(FMDDetachNotificationManager *)v2 dataArchiver];
    [v9 setCreateDirectories:1];

    [(FMDDetachNotificationManager *)v2 _loadFromDisk];
  }

  return v2;
}

- (void)updateAccessoryIds:(id)a3 version:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FMDDetachNotificationManager *)self serialQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C644C;
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

- (void)_loadFromDisk
{
  v3 = [objc_opt_class() deprecatedStorageLocation];
  v4 = [objc_opt_class() defaultStorageLocation];
  v5 = +[NSFileManager defaultManager];
  [v5 fm_migrateFileFromURL:v3 toURL:v4];

  v6 = [(FMDDetachNotificationManager *)self dataArchiver];
  v7 = [NSSet setWithObjects:objc_opt_class(), 0];
  v20 = 0;
  v8 = [v6 readArrayAndClasses:v7 error:&v20];
  v9 = v20;

  if (([v9 fm_isFileNotFoundError] & 1) != 0 || v8 && !v9)
  {
    v10 = [v8 firstObject];
    v11 = [v10 notifWhenDetachedListVersion];
    [(FMDDetachNotificationManager *)self setNotifWhenDetachedListVersion:v11];

    v12 = [v10 notifyWhenDetachedAccessoryIds];
    [(FMDDetachNotificationManager *)self setNotifyWhenDetachedAccessoryIds:v12];

    v13 = [v10 notificationIdbyAccessoryIds];
    [(FMDDetachNotificationManager *)self setNotificationIdbyAccessoryIds:v13];

    v14 = sub_10000BE38();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 notifWhenDetachedListVersion];
      v16 = [v10 notifyWhenDetachedAccessoryIds];
      v17 = [v16 count];
      *buf = 138412802;
      v22 = v10;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notification manager %@ loaded version = %@ accessories count = %lu", buf, 0x20u);
    }
  }

  else
  {

    [(FMDDetachNotificationManager *)self setNotifWhenDetachedListVersion:@"0"];
    v18 = objc_alloc_init(NSSet);
    [(FMDDetachNotificationManager *)self setNotifyWhenDetachedAccessoryIds:v18];

    v19 = objc_alloc_init(NSDictionary);
    [(FMDDetachNotificationManager *)self setNotificationIdbyAccessoryIds:v19];

    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022DFEC(v9, v10);
    }

    v8 = &__NSArray0__struct;
  }
}

- (id)_writeToDisk
{
  v3 = [(FMDDetachNotificationManager *)self dataArchiver];
  v7 = self;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 saveArray:v4];

  return v5;
}

- (void)getLocationFor:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDDetachNotificationManager *)self locationStore];
  v9 = [v8 historicalLocationForAccessory:v6];
  v10 = v9;
  if (v9 && ([v9 timeStamp], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceNow"), v13 = fabs(v12), v11, v13 <= 1.0))
  {
    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "using old location %@", buf, 0xCu);
    }

    v7[2](v7, v10);
  }

  else
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fetching new location", buf, 2u);
    }

    v15 = [(FMDDetachNotificationManager *)self supportedAccessoryRegistry];
    v16 = [v15 locatorForAccessory:v6];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001C6C48;
    v18[3] = &unk_1002D08D0;
    v19 = v7;
    [v8 retreiveLocationForAccessory:v6 forEvent:2 locator:v16 completion:v18];
  }
}

- (void)accessoryDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryIdentifier];
  v6 = [v5 stringValue];

  v7 = [(FMDDetachNotificationManager *)self notifyWhenDetachedAccessoryIds];
  if ([v7 containsObject:v6])
  {
  }

  else
  {
    v8 = [FMPreferencesUtil stringForKey:@"notificationAccessoryId" inDomain:kFMDNotBackedUpPrefDomain];
    v9 = [v6 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 name];
    *buf = 138412290;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: Accessory %@ disconnected postig notificaiton", buf, 0xCu);
  }

  v12 = +[NSDate now];
  v13 = [NSMutableDictionary alloc];
  v14 = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
  v15 = [v13 initWithDictionary:v14];

  v16 = +[NSUUID UUID];
  v17 = [v16 UUIDString];

  [v15 setObject:v17 forKeyedSubscript:v6];
  [(FMDDetachNotificationManager *)self setNotificationIdbyAccessoryIds:v15];
  v18 = sub_100002880();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: Accessory disconnected %@", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001C7008;
  v22[3] = &unk_1002D0FA0;
  v23 = v12;
  v24 = v4;
  v25 = self;
  v26 = v6;
  v27 = v17;
  v28 = v15;
  v19 = v15;
  v20 = v17;
  v21 = v12;
  [(FMDDetachNotificationManager *)self getLocationFor:v24 withCompletion:v22];

LABEL_9:
}

- (void)accessoryDidConnect:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryIdentifier];
  v6 = [v5 stringValue];

  v7 = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 name];
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: removing notificaiton for %@", &v15, 0xCu);
    }

    v11 = [NSMutableDictionary alloc];
    v12 = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
    v13 = [v11 initWithDictionary:v12];

    [v13 setObject:0 forKeyedSubscript:v6];
    [(FMDDetachNotificationManager *)self setNotificationIdbyAccessoryIds:v13];
    v14 = +[FMDFMIPManager sharedInstance];
    [v14 removeNotificationWithIdentifier:v8 completion:&stru_1002D0FC0];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDDetachNotificationManager *)self notifyWhenDetachedAccessoryIds];
  [v4 encodeObject:v5 forKey:@"notifyWhenDetachedAccessoryIds"];

  v6 = [(FMDDetachNotificationManager *)self notifWhenDetachedListVersion];
  [v4 encodeObject:v6 forKey:@"notifWhenDetachListVersion"];

  v7 = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
  [v4 encodeObject:v7 forKey:@"notificationIdbyAccessoryIds"];
}

- (FMDDetachNotificationManager)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FMDDetachNotificationManager;
  v5 = [(FMDDetachNotificationManager *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"notifyWhenDetachedAccessoryIds"];
    notifyWhenDetachedAccessoryIds = v5->_notifyWhenDetachedAccessoryIds;
    v5->_notifyWhenDetachedAccessoryIds = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notifWhenDetachListVersion"];
    notifWhenDetachedListVersion = v5->_notifWhenDetachedListVersion;
    v5->_notifWhenDetachedListVersion = v11;

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"notificationIdbyAccessoryIds"];
    notificationIdbyAccessoryIds = v5->_notificationIdbyAccessoryIds;
    v5->_notificationIdbyAccessoryIds = v13;
  }

  return v5;
}

- (FMDAccessoryLocationStore)locationStore
{
  WeakRetained = objc_loadWeakRetained(&self->_locationStore);

  return WeakRetained;
}

- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_supportedAccessoryRegistry);

  return WeakRetained;
}

@end
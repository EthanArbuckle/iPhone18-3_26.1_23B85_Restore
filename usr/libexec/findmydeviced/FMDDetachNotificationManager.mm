@interface FMDDetachNotificationManager
+ (id)defaultStorageLocation;
+ (id)deprecatedStorageLocation;
- (FMDAccessoryLocationStore)locationStore;
- (FMDDetachNotificationManager)init;
- (FMDDetachNotificationManager)initWithCoder:(id)coder;
- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry;
- (id)_writeToDisk;
- (void)_loadFromDisk;
- (void)accessoryDidConnect:(id)connect;
- (void)accessoryDidDisconnect:(id)disconnect;
- (void)encodeWithCoder:(id)coder;
- (void)getLocationFor:(id)for withCompletion:(id)completion;
- (void)updateAccessoryIds:(id)ids version:(id)version withCompletion:(id)completion;
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
    defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
    v6 = [v4 initWithFileURL:defaultStorageLocation];
    [(FMDDetachNotificationManager *)v2 setDataArchiver:v6];

    dataArchiver = [(FMDDetachNotificationManager *)v2 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDDetachNotificationManager *)v2 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDDetachNotificationManager *)v2 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    [(FMDDetachNotificationManager *)v2 _loadFromDisk];
  }

  return v2;
}

- (void)updateAccessoryIds:(id)ids version:(id)version withCompletion:(id)completion
{
  idsCopy = ids;
  versionCopy = version;
  completionCopy = completion;
  serialQueue = [(FMDDetachNotificationManager *)self serialQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C644C;
  v15[3] = &unk_1002D0F28;
  v15[4] = self;
  v16 = idsCopy;
  v17 = versionCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = versionCopy;
  v14 = idsCopy;
  dispatch_async(serialQueue, v15);
}

- (void)_loadFromDisk
{
  deprecatedStorageLocation = [objc_opt_class() deprecatedStorageLocation];
  defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
  v5 = +[NSFileManager defaultManager];
  [v5 fm_migrateFileFromURL:deprecatedStorageLocation toURL:defaultStorageLocation];

  dataArchiver = [(FMDDetachNotificationManager *)self dataArchiver];
  v7 = [NSSet setWithObjects:objc_opt_class(), 0];
  v20 = 0;
  v8 = [dataArchiver readArrayAndClasses:v7 error:&v20];
  v9 = v20;

  if (([v9 fm_isFileNotFoundError] & 1) != 0 || v8 && !v9)
  {
    firstObject = [v8 firstObject];
    notifWhenDetachedListVersion = [firstObject notifWhenDetachedListVersion];
    [(FMDDetachNotificationManager *)self setNotifWhenDetachedListVersion:notifWhenDetachedListVersion];

    notifyWhenDetachedAccessoryIds = [firstObject notifyWhenDetachedAccessoryIds];
    [(FMDDetachNotificationManager *)self setNotifyWhenDetachedAccessoryIds:notifyWhenDetachedAccessoryIds];

    notificationIdbyAccessoryIds = [firstObject notificationIdbyAccessoryIds];
    [(FMDDetachNotificationManager *)self setNotificationIdbyAccessoryIds:notificationIdbyAccessoryIds];

    v14 = sub_10000BE38();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      notifWhenDetachedListVersion2 = [firstObject notifWhenDetachedListVersion];
      notifyWhenDetachedAccessoryIds2 = [firstObject notifyWhenDetachedAccessoryIds];
      v17 = [notifyWhenDetachedAccessoryIds2 count];
      *buf = 138412802;
      v22 = firstObject;
      v23 = 2112;
      v24 = notifWhenDetachedListVersion2;
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

    firstObject = sub_100002880();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      sub_10022DFEC(v9, firstObject);
    }

    v8 = &__NSArray0__struct;
  }
}

- (id)_writeToDisk
{
  dataArchiver = [(FMDDetachNotificationManager *)self dataArchiver];
  selfCopy = self;
  v4 = [NSArray arrayWithObjects:&selfCopy count:1];
  v5 = [dataArchiver saveArray:v4];

  return v5;
}

- (void)getLocationFor:(id)for withCompletion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  locationStore = [(FMDDetachNotificationManager *)self locationStore];
  v9 = [locationStore historicalLocationForAccessory:forCopy];
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

    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fetching new location", buf, 2u);
    }

    supportedAccessoryRegistry = [(FMDDetachNotificationManager *)self supportedAccessoryRegistry];
    v16 = [supportedAccessoryRegistry locatorForAccessory:forCopy];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001C6C48;
    v18[3] = &unk_1002D08D0;
    v19 = completionCopy;
    [locationStore retreiveLocationForAccessory:forCopy forEvent:2 locator:v16 completion:v18];
  }
}

- (void)accessoryDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  accessoryIdentifier = [disconnectCopy accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];

  notifyWhenDetachedAccessoryIds = [(FMDDetachNotificationManager *)self notifyWhenDetachedAccessoryIds];
  if ([notifyWhenDetachedAccessoryIds containsObject:stringValue])
  {
  }

  else
  {
    v8 = [FMPreferencesUtil stringForKey:@"notificationAccessoryId" inDomain:kFMDNotBackedUpPrefDomain];
    v9 = [stringValue isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [disconnectCopy name];
    *buf = 138412290;
    v30 = name;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: Accessory %@ disconnected postig notificaiton", buf, 0xCu);
  }

  v12 = +[NSDate now];
  v13 = [NSMutableDictionary alloc];
  notificationIdbyAccessoryIds = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
  v15 = [v13 initWithDictionary:notificationIdbyAccessoryIds];

  v16 = +[NSUUID UUID];
  uUIDString = [v16 UUIDString];

  [v15 setObject:uUIDString forKeyedSubscript:stringValue];
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
  v24 = disconnectCopy;
  selfCopy = self;
  v26 = stringValue;
  v27 = uUIDString;
  v28 = v15;
  v19 = v15;
  v20 = uUIDString;
  v21 = v12;
  [(FMDDetachNotificationManager *)self getLocationFor:v24 withCompletion:v22];

LABEL_9:
}

- (void)accessoryDidConnect:(id)connect
{
  connectCopy = connect;
  accessoryIdentifier = [connectCopy accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];

  notificationIdbyAccessoryIds = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
  v8 = [notificationIdbyAccessoryIds objectForKeyedSubscript:stringValue];

  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name = [connectCopy name];
      v15 = 138412290;
      v16 = name;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDDetachNotificationManager: removing notificaiton for %@", &v15, 0xCu);
    }

    v11 = [NSMutableDictionary alloc];
    notificationIdbyAccessoryIds2 = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
    v13 = [v11 initWithDictionary:notificationIdbyAccessoryIds2];

    [v13 setObject:0 forKeyedSubscript:stringValue];
    [(FMDDetachNotificationManager *)self setNotificationIdbyAccessoryIds:v13];
    v14 = +[FMDFMIPManager sharedInstance];
    [v14 removeNotificationWithIdentifier:v8 completion:&stru_1002D0FC0];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notifyWhenDetachedAccessoryIds = [(FMDDetachNotificationManager *)self notifyWhenDetachedAccessoryIds];
  [coderCopy encodeObject:notifyWhenDetachedAccessoryIds forKey:@"notifyWhenDetachedAccessoryIds"];

  notifWhenDetachedListVersion = [(FMDDetachNotificationManager *)self notifWhenDetachedListVersion];
  [coderCopy encodeObject:notifWhenDetachedListVersion forKey:@"notifWhenDetachListVersion"];

  notificationIdbyAccessoryIds = [(FMDDetachNotificationManager *)self notificationIdbyAccessoryIds];
  [coderCopy encodeObject:notificationIdbyAccessoryIds forKey:@"notificationIdbyAccessoryIds"];
}

- (FMDDetachNotificationManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FMDDetachNotificationManager;
  v5 = [(FMDDetachNotificationManager *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"notifyWhenDetachedAccessoryIds"];
    notifyWhenDetachedAccessoryIds = v5->_notifyWhenDetachedAccessoryIds;
    v5->_notifyWhenDetachedAccessoryIds = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notifWhenDetachListVersion"];
    notifWhenDetachedListVersion = v5->_notifWhenDetachedListVersion;
    v5->_notifWhenDetachedListVersion = v11;

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"notificationIdbyAccessoryIds"];
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
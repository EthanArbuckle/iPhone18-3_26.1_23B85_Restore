@interface FMDAccessoryLocationStore
+ (id)defaultStorageLocation;
- (BOOL)canRetrieveLockedRecords;
- (BOOL)shouldRetrieveLocationForAccessory:(id)accessory;
- (FMDAccessoryLocationStore)init;
- (FMDAccessoryLocationStore)initWithSupportedAccessoryRegistry:(id)registry accessoryRegistry:(id)accessoryRegistry;
- (FMDAccessoryRegistry)accessoryRegistry;
- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry;
- (id)contextKeyForAccessory:(id)accessory protectionClass:(int64_t)class;
- (id)historicalLocationForAccessory:(id)accessory;
- (id)saveLocationToDisk:(id)disk accessory:(id)accessory protection:(unint64_t)protection;
- (void)accessoryDidDisconnect:(id)disconnect;
- (void)accessoryDidUnpair:(id)unpair;
- (void)clearAccessoryLocationStore;
- (void)clearAllRecords;
- (void)expungeAccessoryLocationStore;
- (void)expungeRecordsForAccessory:(id)accessory allRecords:(BOOL)records;
- (void)locationForAccessory:(id)accessory locator:(id)locator completion:(id)completion;
- (void)readLocationsFromDisk;
- (void)removeOrphanedLocationFiles;
- (void)retreiveLocationForAccessory:(id)accessory forEvent:(int64_t)event locator:(id)locator completion:(id)completion;
- (void)saveLocation:(id)location forAccessory:(id)accessory;
- (void)scheduleJanitor:(id)janitor;
- (void)setup;
@end

@implementation FMDAccessoryLocationStore

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.accessories.locations"];

  return v4;
}

- (FMDAccessoryLocationStore)init
{
  v5.receiver = self;
  v5.super_class = FMDAccessoryLocationStore;
  v2 = [(FMDAccessoryLocationStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDAccessoryLocationStore *)v2 setup];
  }

  return v3;
}

- (FMDAccessoryLocationStore)initWithSupportedAccessoryRegistry:(id)registry accessoryRegistry:(id)accessoryRegistry
{
  registryCopy = registry;
  accessoryRegistryCopy = accessoryRegistry;
  v11.receiver = self;
  v11.super_class = FMDAccessoryLocationStore;
  v8 = [(FMDAccessoryLocationStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDAccessoryLocationStore *)v8 setSupportedAccessoryRegistry:registryCopy];
    [(FMDAccessoryLocationStore *)v9 setAccessoryRegistry:accessoryRegistryCopy];
    [(FMDAccessoryLocationStore *)v9 setup];
  }

  return v9;
}

- (void)setup
{
  v3 = [FMDataArchiver alloc];
  defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
  v5 = [v3 initWithFileURL:defaultStorageLocation];
  [(FMDAccessoryLocationStore *)self setDataArchiver:v5];

  dataArchiver = [(FMDAccessoryLocationStore *)self dataArchiver];
  [dataArchiver setDataProtectionClass:4];

  dataArchiver2 = [(FMDAccessoryLocationStore *)self dataArchiver];
  [dataArchiver2 setBackedUp:0];

  dataArchiver3 = [(FMDAccessoryLocationStore *)self dataArchiver];
  [dataArchiver3 setCreateDirectories:1];

  v9 = dispatch_queue_create("FMDAccessoryLocationStoreSerialQueue", 0);
  [(FMDAccessoryLocationStore *)self setSerialQueue:v9];

  [(FMDAccessoryLocationStore *)self readLocationsFromDisk];
  objc_initWeak(&location, self);
  v10 = [FMDXPCJanitor alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001B0B70;
  v17[3] = &unk_1002CD518;
  objc_copyWeak(&v18, &location);
  v11 = [(FMDXPCJanitor *)v10 initWithName:@"FMDAccessoryLocationStoreJanitor" gracePeriod:v17 cleanupTask:10800.0];
  [(FMDAccessoryLocationStore *)self setJanitor:v11];

  v12 = +[FMDSystemConfig sharedInstance];
  LOBYTE(defaultStorageLocation) = [v12 isLocationServicesEnabled];

  if (defaultStorageLocation)
  {
    [(FMDAccessoryLocationStore *)self expungeAccessoryLocationStore];
  }

  else
  {
    [(FMDAccessoryLocationStore *)self clearAccessoryLocationStore];
  }

  v13 = objc_alloc_init(FMStateCapture);
  [(FMDAccessoryLocationStore *)self setStateCapture:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B0C74;
  v15[3] = &unk_1002D08A8;
  objc_copyWeak(&v16, &location);
  stateCapture = [(FMDAccessoryLocationStore *)self stateCapture];
  [stateCapture setStateCaptureBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)locationForAccessory:(id)accessory locator:(id)locator completion:(id)completion
{
  accessoryCopy = accessory;
  locatorCopy = locator;
  completionCopy = completion;
  v11 = [(FMDAccessoryLocationStore *)self historicalLocationForAccessory:accessoryCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11, 0);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B10C0;
  v13[3] = &unk_1002D08D0;
  v14 = completionCopy;
  v12 = completionCopy;
  [(FMDAccessoryLocationStore *)self retreiveLocationForAccessory:accessoryCopy forEvent:3 locator:locatorCopy completion:v13];
}

- (id)historicalLocationForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AB24;
  v16 = sub_100002B5C;
  v17 = 0;
  serialQueue = [(FMDAccessoryLocationStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B12D4;
  block[3] = &unk_1002CD450;
  block[4] = self;
  v10 = accessoryCopy;
  v11 = &v12;
  v6 = accessoryCopy;
  dispatch_sync(serialQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clearAccessoryLocationStore
{
  serialQueue = [(FMDAccessoryLocationStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B1740;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)expungeAccessoryLocationStore
{
  objc_initWeak(&location, self);
  accessoryRegistry = [(FMDAccessoryLocationStore *)self accessoryRegistry];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B1910;
  v4[3] = &unk_1002D0960;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [accessoryRegistry accessories:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)removeOrphanedLocationFiles
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore checking for orphaned files", buf, 2u);
  }

  recordsByAccessoryIdentifier = [(FMDAccessoryLocationStore *)self recordsByAccessoryIdentifier];
  allValues = [recordsByAccessoryIdentifier allValues];

  +[NSMutableSet set];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B1D38;
  v6 = v15[3] = &unk_1002D0988;
  v16 = v6;
  [allValues enumerateObjectsUsingBlock:v15];
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    *buf = 134217984;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore found %lu active location records", buf, 0xCu);
  }

  v9 = +[FMDProtectedContextManager sharedManager];
  v10 = [v9 contextKeysForType:@"AccessoryLocation" enumerationOption:1];

  allObjects = [v10 allObjects];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B1E1C;
  v13[3] = &unk_1002CDA48;
  v14 = v6;
  v12 = v6;
  [allObjects enumerateObjectsUsingBlock:v13];
}

- (void)retreiveLocationForAccessory:(id)accessory forEvent:(int64_t)event locator:(id)locator completion:(id)completion
{
  accessoryCopy = accessory;
  locatorCopy = locator;
  completionCopy = completion;
  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore retreiveLocationForAccessory %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14 = [AccessoryCurrentLocationAction alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B20D4;
  v21[3] = &unk_1002D09B0;
  objc_copyWeak(&v24, buf);
  v15 = accessoryCopy;
  v22 = v15;
  v16 = completionCopy;
  v23 = v16;
  v17 = [(AccessoryCurrentLocationAction *)v14 initWithAccessory:v15 locator:locatorCopy event:event completion:v21];
  accessoryRegistry = [(FMDAccessoryLocationStore *)self accessoryRegistry];
  [accessoryRegistry registerDelegate:v17];

  v19 = +[ActionManager sharedManager];
  v20 = [v19 enqueueAction:v17];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (BOOL)shouldRetrieveLocationForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = [(FMDAccessoryLocationStore *)self historicalLocationForAccessory:accessoryCopy];
  if (v5)
  {
    supportedAccessoryRegistry = [(FMDAccessoryLocationStore *)self supportedAccessoryRegistry];
    location = [v5 location];
    speed = [location speed];
    [speed doubleValue];
    [supportedAccessoryRegistry locationThrottleTimeIntervalForAccessory:accessoryCopy speed:?];
    v10 = v9;

    timeStamp = [v5 timeStamp];
    v12 = [timeStamp dateByAddingTimeInterval:v10];

    if (v12)
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [v12 timeIntervalSinceNow];
        v21 = 134217984;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore next allowed locate cycle in %f", &v21, 0xCu);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v16 = v15;
      [v12 timeIntervalSinceReferenceDate];
      v18 = v16 > v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_100002880();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = accessoryCopy;
    v23 = 1024;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore : Retrieve a location for accessory %@? %i", &v21, 0x12u);
  }

  return v18;
}

- (void)saveLocation:(id)location forAccessory:(id)accessory
{
  locationCopy = location;
  accessoryCopy = accessory;
  if (locationCopy)
  {
    objc_initWeak(location, self);
    serialQueue = [(FMDAccessoryLocationStore *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B2498;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v13, location);
    v11 = accessoryCopy;
    v12 = locationCopy;
    dispatch_async(serialQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying to save nil location to location store.", location, 2u);
    }
  }
}

- (id)saveLocationToDisk:(id)disk accessory:(id)accessory protection:(unint64_t)protection
{
  accessoryCopy = accessory;
  protectionCopy = protection;
  if (protection == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  diskCopy = disk;
  v11 = [(FMDAccessoryLocationStore *)self contextKeyForAccessory:accessoryCopy protectionClass:v9];
  recordsByAccessoryIdentifier = [(FMDAccessoryLocationStore *)self recordsByAccessoryIdentifier];
  v13 = [recordsByAccessoryIdentifier mutableCopy];

  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  v15 = [v13 objectForKeyedSubscript:accessoryIdentifier];
  v16 = [v15 mutableCopy];

  v17 = [NSPredicate predicateWithFormat:@"SELF.recordName contains[cd] %@", v11];
  v18 = [v16 filteredArrayUsingPredicate:v17];

  if (v18)
  {
    [v16 removeObjectsInArray:v18];
    accessoryIdentifier2 = [accessoryCopy accessoryIdentifier];
    [v13 setObject:v16 forKeyedSubscript:accessoryIdentifier2];

    [(FMDAccessoryLocationStore *)self setRecordsByAccessoryIdentifier:v13];
  }

  v20 = +[FMDProtectedContextManager sharedManager];
  [v20 cleanupContextsForKey:v11 contextUUID:0];

  if (+[FMDProtectedContext isUnittest])
  {
    v21 = 4;
  }

  else
  {
    v21 = v9;
  }

  v22 = +[FMDProtectedContextManager sharedManager];
  dictionaryValue = [diskCopy dictionaryValue];

  v24 = [v22 saveContext:dictionaryValue forContextKey:v11 dataProtectionClass:v21];

  v25 = sub_100002880();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v11;
    v33 = 2048;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "AccessoryLocationStore Saving location to disk %@ protection %li", buf, 0x16u);
  }

  v26 = [FMDAccessoryLocationStoreRecord alloc];
  v27 = +[NSDate date];
  v28 = [(FMDAccessoryLocationStoreRecord *)v26 initWithRecordName:v11 contextUUID:v24 creationDate:v27 protection:protectionCopy];

  return v28;
}

- (void)expungeRecordsForAccessory:(id)accessory allRecords:(BOOL)records
{
  accessoryCopy = accessory;
  supportedAccessoryRegistry = [(FMDAccessoryLocationStore *)self supportedAccessoryRegistry];
  v8 = supportedAccessoryRegistry;
  unsignedIntegerValue = 1;
  v10 = 0x47EFFFFFE0000000;
  v11 = 0x47EFFFFFE0000000;
  if (supportedAccessoryRegistry && !records)
  {
    v12 = [supportedAccessoryRegistry longTermLocationExpiryTimeIntervalForAccessory:accessoryCopy];
    [v12 doubleValue];
    v11 = v13;

    v14 = [v8 shortTermLocationExpiryTimeIntervalForAccessory:accessoryCopy];
    [v14 doubleValue];
    v10 = v15;

    v16 = [v8 maximumHistoricalLocationsForAccessory:accessoryCopy];
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  v17 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v17 isInternalBuild];

  if (isInternalBuild)
  {
    v19 = [FMPreferencesUtil objectForKey:@"LocationStoreCleanup" inDomain:kFMDNotBackedUpPrefDomain];
    v20 = v19;
    if (v19)
    {
      [v19 doubleValue];
      v10 = v21;
    }
  }

  v22 = sub_100002880();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v65 = unsignedIntegerValue;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Expunging accessory locations older than (short) %f (long) %f, maxlocates %li", buf, 0x20u);
  }

  recordsByAccessoryIdentifier = [(FMDAccessoryLocationStore *)self recordsByAccessoryIdentifier];
  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  v25 = [recordsByAccessoryIdentifier objectForKeyedSubscript:accessoryIdentifier];
  v26 = [v25 copy];

  v27 = [NSPredicate predicateWithFormat:@"class == %@", objc_opt_class()];
  v28 = [v26 filteredArrayUsingPredicate:v27];

  v29 = [v28 sortedArrayUsingComparator:&stru_1002D09D0];

  v30 = +[NSDate date];
  [v30 timeIntervalSinceReferenceDate];
  v32 = v31;

  v33 = sub_100002880();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v29 count];
    *buf = 134218242;
    *&buf[4] = v34;
    *&buf[12] = 2112;
    *&buf[14] = v29;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore found %lu records %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = sub_10000AB24;
  v66 = sub_100002B5C;
  v67 = +[NSMutableDictionary dictionary];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_10000AB24;
  v58 = sub_100002B5C;
  v59 = +[NSMutableArray array];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10000AB24;
  v52 = sub_100002B5C;
  v53 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001B304C;
  v46[3] = &unk_1002D09F8;
  recordsCopy = records;
  v46[8] = v10;
  v46[9] = v32;
  v46[10] = v11;
  v46[4] = buf;
  v46[5] = &v54;
  v46[6] = &v48;
  v46[7] = unsignedIntegerValue;
  [v29 enumerateObjectsUsingBlock:v46];
  recordsByAccessoryIdentifier2 = [(FMDAccessoryLocationStore *)self recordsByAccessoryIdentifier];
  v36 = [recordsByAccessoryIdentifier2 mutableCopy];

  v37 = sub_100002880();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v55[5] count];
    v39 = v55[5];
    *v60 = 134218242;
    v61 = v38;
    v62 = 2112;
    v63 = v39;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "FMDAccessoryLocationStore keeping %lu records %@", v60, 0x16u);
  }

  v40 = v55[5];
  accessoryIdentifier2 = [accessoryCopy accessoryIdentifier];
  [v36 setObject:v40 forKeyedSubscript:accessoryIdentifier2];

  [(FMDAccessoryLocationStore *)self setRecordsByAccessoryIdentifier:v36];
  dataArchiver = [(FMDAccessoryLocationStore *)self dataArchiver];
  recordsByAccessoryIdentifier3 = [(FMDAccessoryLocationStore *)self recordsByAccessoryIdentifier];
  v44 = [dataArchiver saveDictionary:recordsByAccessoryIdentifier3];

  if (v44)
  {
    v45 = sub_100002880();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }

  [(FMDAccessoryLocationStore *)self scheduleJanitor:v49[5]];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(buf, 8);
}

- (void)clearAllRecords
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting all accessory locations stored on disk.", v7, 2u);
  }

  [(FMDAccessoryLocationStore *)self readLocationsFromDisk];
  recordsByAccessoryIdentifier = [(FMDAccessoryLocationStore *)self recordsByAccessoryIdentifier];
  allValues = [recordsByAccessoryIdentifier allValues];
  v6 = [allValues copy];

  [v6 enumerateObjectsUsingBlock:&stru_1002D0A38];
}

- (void)readLocationsFromDisk
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDAccessoryLocationStore *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B35D0;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)canRetrieveLockedRecords
{
  v2 = +[FMDSystemConfig sharedInstance];
  isLocked = [v2 isLocked];

  return isLocked ^ 1;
}

- (id)contextKeyForAccessory:(id)accessory protectionClass:(int64_t)class
{
  v5 = @"classC";
  if (class == 2)
  {
    v5 = @"classB";
  }

  v6 = v5;
  accessoryIdentifier = [accessory accessoryIdentifier];
  v8 = [NSString stringWithFormat:@"%@:%@:%@", @"AccessoryLocation", accessoryIdentifier, v6];

  return v8;
}

- (void)scheduleJanitor:(id)janitor
{
  janitorCopy = janitor;
  if (janitorCopy)
  {
    nextScheduledJanitorDate = [(FMDAccessoryLocationStore *)self nextScheduledJanitorDate];
    if (!nextScheduledJanitorDate)
    {
      goto LABEL_4;
    }

    v6 = nextScheduledJanitorDate;
    nextScheduledJanitorDate2 = [(FMDAccessoryLocationStore *)self nextScheduledJanitorDate];
    [nextScheduledJanitorDate2 timeIntervalSinceReferenceDate];
    v9 = v8;
    [janitorCopy timeIntervalSinceReferenceDate];
    v11 = v10;

    if (v9 <= v11)
    {
      nextScheduledJanitorDate3 = [(FMDAccessoryLocationStore *)self nextScheduledJanitorDate];

      v16 = sub_100002880();
      janitor = v16;
      if (nextScheduledJanitorDate3)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10022D484(self, janitor);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10022D518(janitor);
      }
    }

    else
    {
LABEL_4:
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10022D55C();
      }

      [(FMDAccessoryLocationStore *)self setNextScheduledJanitorDate:janitorCopy];
      janitor = [(FMDAccessoryLocationStore *)self janitor];
      [janitor schedule:janitorCopy];
    }
  }

  else
  {
    v14 = sub_100002880();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10022D5D0(v14);
    }

    [(FMDAccessoryLocationStore *)self setNextScheduledJanitorDate:0];
    janitor = [(FMDAccessoryLocationStore *)self janitor];
    [janitor deactivate];
  }
}

- (void)accessoryDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  objc_initWeak(&location, self);
  serialQueue = [(FMDAccessoryLocationStore *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3A80;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = unpairCopy;
  v6 = unpairCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)accessoryDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "accesory disconnected storing last known location", &v10, 2u);
  }

  if ([(FMDAccessoryLocationStore *)self shouldRetrieveLocationForAccessory:disconnectCopy])
  {
    supportedAccessoryRegistry = [(FMDAccessoryLocationStore *)self supportedAccessoryRegistry];
    v7 = [supportedAccessoryRegistry locatorForAccessory:disconnectCopy];
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      name = [disconnectCopy name];
      v10 = 138412546;
      v11 = name;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accesory = %@, locator = %@", &v10, 0x16u);
    }

    [(FMDAccessoryLocationStore *)self retreiveLocationForAccessory:disconnectCopy forEvent:2 locator:v7 completion:0];
  }
}

- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_supportedAccessoryRegistry);

  return WeakRetained;
}

- (FMDAccessoryRegistry)accessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryRegistry);

  return WeakRetained;
}

@end
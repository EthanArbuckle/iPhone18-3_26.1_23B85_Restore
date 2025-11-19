@interface FMDTrackedLocationsStore
- (FMDLocationTracker)locationTracker;
- (FMDTrackedLocationsStore)initWithLocationTracker:(id)a3;
- (id)_locationCacheFileName;
- (id)_serialQueue_readTrackedLocationsCache;
- (id)_trackedLocationsCacheFileURL;
- (id)lastLocation;
- (void)_serialQueue_addTrackedLocationNow:(id)a3;
- (void)_serialQueue_deleteTrackedLocationsCache;
- (void)_serialQueue_purgeOldTrackedLocationsNow;
- (void)_serialQueue_scheduleLocationPurgeTimer;
- (void)_serialQueue_scheduleLocationPurgeTimer_internal;
- (void)_serialQueue_updateTrackedLocationsCache:(id)a3;
- (void)actOnTrackedLocationsUsingBlock:(id)a3;
- (void)dealloc;
- (void)deleteAllTrackedLocations;
- (void)logLocation:(id)a3;
@end

@implementation FMDTrackedLocationsStore

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022C990(self);
  }

  v4 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  if (v4)
  {
    v5 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];
    [(FMDTrackedLocationsStore *)self setLocationPurgeTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A8DC4;
    block[3] = &unk_1002CD4C8;
    v11 = v5;
    v6 = v5;
    dispatch_async(&_dispatch_main_q, block);
    v7 = +[FMXPCTransactionManager sharedInstance];
    v8 = [(FMDTrackedLocationsStore *)self locationPurgeTimerXPCTransactionName];
    [v7 endTransaction:v8];
  }

  v9.receiver = self;
  v9.super_class = FMDTrackedLocationsStore;
  [(FMDTrackedLocationsStore *)&v9 dealloc];
}

- (FMDTrackedLocationsStore)initWithLocationTracker:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FMDTrackedLocationsStore;
  v5 = [(FMDTrackedLocationsStore *)&v20 init];
  if (v5)
  {
    v6 = [FMDataArchiver alloc];
    v7 = [(FMDTrackedLocationsStore *)v5 _trackedLocationsCacheFileURL];
    v8 = [v6 initWithFileURL:v7];
    [(FMDTrackedLocationsStore *)v5 setDataArchiver:v8];

    v9 = [(FMDTrackedLocationsStore *)v5 dataArchiver];
    [v9 setDataProtectionClass:4];

    v10 = [(FMDTrackedLocationsStore *)v5 dataArchiver];
    [v10 setBackedUp:0];

    v11 = [(FMDTrackedLocationsStore *)v5 dataArchiver];
    [v11 setCreateDirectories:1];

    [(FMDTrackedLocationsStore *)v5 setLocationTracker:v4];
    v12 = +[NSMutableArray array];
    [(FMDTrackedLocationsStore *)v5 setTrackedLocations:v12];

    v13 = [(FMDTrackedLocationsStore *)v5 _serialQueue_readTrackedLocationsCache];
    if (v13)
    {
      v14 = [(FMDTrackedLocationsStore *)v5 trackedLocations];
      [v14 addObjectsFromArray:v13];
    }

    v15 = off_100313390;
    v16 = +[FMDLocationTracker stringForLocationTrackerType:](FMDLocationTracker, "stringForLocationTrackerType:", [v4 locationTrackerType]);
    v17 = [NSString stringWithFormat:@"%@-%@", v15, v16];

    v18 = dispatch_queue_create([v17 cStringUsingEncoding:4], 0);
    [(FMDTrackedLocationsStore *)v5 setStore_ops_queue:v18];

    [(FMDTrackedLocationsStore *)v5 _serialQueue_scheduleLocationPurgeTimer];
  }

  return v5;
}

- (void)_serialQueue_updateTrackedLocationsCache:(id)a3
{
  v4 = a3;
  v5 = [(FMDTrackedLocationsStore *)self dataArchiver];
  v6 = [v5 saveArray:v4];

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022CA14();
    }
  }
}

- (id)_trackedLocationsCacheFileURL
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 stringByAppendingPathComponent:@"Preferences"];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:1 relativeToURL:0];
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10022CA88();
    }

    v6 = 0;
  }

  v8 = [(FMDTrackedLocationsStore *)self _locationCacheFileName];
  v9 = [v6 URLByAppendingPathComponent:v8 isDirectory:0];

  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CAC8();
  }

  return v9;
}

- (id)_serialQueue_readTrackedLocationsCache
{
  v2 = [(FMDTrackedLocationsStore *)self dataArchiver];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
  v14 = 0;
  v6 = [v2 readArrayAndClasses:v5 error:&v14];
  v7 = v14;

  if ([v7 fm_isFileNotFoundError])
  {
    goto LABEL_9;
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022CB38();
    }

    v10 = +[FMDEventLoggerGeneral sharedInstance];
    [v10 sendError:v7 forEventName:@"FMDTrackedLocationsStoreFailedReadEventName"];

LABEL_9:
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  v11 = sub_100002880();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CBAC(v6);
  }

  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CC24(v6);
  }

LABEL_15:

  return v6;
}

- (void)_serialQueue_deleteTrackedLocationsCache
{
  v3 = [(FMDTrackedLocationsStore *)self _trackedLocationsCacheFileURL];
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022CCA8(self);
    }

    v8 = +[NSFileManager defaultManager];
    v11 = 0;
    [v8 removeItemAtURL:v3 error:&v11];
    v9 = v11;

    if (v9 && ([v9 fm_isFileNotFoundError] & 1) == 0)
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete tracked locations file (%@): %@", buf, 0x16u);
      }
    }
  }
}

- (id)_locationCacheFileName
{
  v2 = [(FMDTrackedLocationsStore *)self locationTracker];
  v3 = +[FMDLocationTracker stringForLocationTrackerType:](FMDLocationTracker, "stringForLocationTrackerType:", [v2 locationTrackerType]);
  v4 = [NSString stringWithFormat:@"%@.%@", v3, off_100313388];

  return v4;
}

- (void)logLocation:(id)a3
{
  v3 = a3;
  v4 = [[FMDEventLoggerEventLocate alloc] initWithEventName:@"FMDLocatorLocateEvent"];
  [(FMDEventLoggerEventLocate *)v4 setLocation:v3 reason:&stru_1002DCE08];

  v5 = +[FMDEventLogger sharedLogger];
  v6 = +[FMDEventLoggerFacilityOnDiskStats facilityName];
  v9[0] = v6;
  v7 = +[FMDEventLoggerFacilityOnDisk facilityName];
  v9[1] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [v5 logEvent:v4 toFacilitiesNamed:v8];
}

- (void)deleteAllTrackedLocations
{
  objc_initWeak(&location, self);
  v3 = [(FMDTrackedLocationsStore *)self store_ops_queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A9AEC;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)actOnTrackedLocationsUsingBlock:(id)a3
{
  v20 = a3;
  v3 = [(FMDTrackedLocationsStore *)self trackedLocations];
  v4 = [v3 copy];

  v5 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = +[NSMutableDictionary dictionary];
        v12 = [v10 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
        v13 = [v10 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDBatteryInfo"];
        v14 = [v12 dictionaryValue];
        [v11 addEntriesFromDictionary:v14];

        v15 = [v13 dictionaryValue];
        [v11 addEntriesFromDictionary:v15];

        [v5 fm_safeAddObject:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [(FMDTrackedLocationsStore *)self store_ops_queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9DC4;
  block[3] = &unk_1002CD8B0;
  v23 = v5;
  v24 = v20;
  v17 = v5;
  v18 = v20;
  dispatch_async(v16, block);
}

- (id)lastLocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AAF4;
  v11 = sub_100002B44;
  v12 = 0;
  v3 = [(FMDTrackedLocationsStore *)self store_ops_queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A9EF4;
  v6[3] = &unk_1002CE5F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_serialQueue_scheduleLocationPurgeTimer
{
  v3 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  [(FMDTrackedLocationsStore *)self _serialQueue_scheduleLocationPurgeTimer_internal];
  v4 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  if (v4)
  {
    if (v3)
    {
      return;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    v5 = [(FMDTrackedLocationsStore *)self locationPurgeTimerXPCTransactionName];
    [v6 beginTransaction:v5];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    v5 = [(FMDTrackedLocationsStore *)self locationPurgeTimerXPCTransactionName];
    [v6 endTransaction:v5];
  }
}

- (void)_serialQueue_scheduleLocationPurgeTimer_internal
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CD2C();
  }

  v3 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];

  if (v3)
  {
    v4 = [(FMDTrackedLocationsStore *)self locationPurgeTimer];
    [(FMDTrackedLocationsStore *)self setLocationPurgeTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001AA4D0;
    block[3] = &unk_1002CD4C8;
    v38 = v4;
    v5 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  v6 = [(FMDTrackedLocationsStore *)self trackedLocations];
  v7 = [v6 count] == 0;

  if (v7)
  {
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10022CE14();
    }
  }

  else
  {
    v8 = [vala locationTracker];
    [v8 keepAlive];
    v10 = v9;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [vala trackedLocations];
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = *v34;
      do
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v33 + 1) + 8 * v15) objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
          v17 = [v16 timeStamp];
          v18 = [v17 dateByAddingTimeInterval:v10];
          v19 = v18;
          if (v12)
          {
            v20 = [v18 earlierDate:v12];

            v12 = v20;
          }

          else
          {
            v12 = v18;
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v13);
    }

    v21 = +[NSDate date];
    v22 = [v12 compare:v21]== -1;

    v23 = sub_100002880();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v22)
    {
      if (v24)
      {
        sub_10022CDD8();
      }

      objc_initWeak(&location, vala);
      v26 = [vala store_ops_queue];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1001AA4D8;
      v30[3] = &unk_1002CD518;
      objc_copyWeak(&v31, &location);
      dispatch_async(v26, v30);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v24)
      {
        sub_10022CD68();
      }

      v25 = [[PCPersistentTimer alloc] initWithFireDate:v12 serviceIdentifier:@"com.apple.icloud.findmydeviced.trackedLocationsPurgeTimer" target:vala selector:"_serialQueue_purgeOldTrackedLocationsNow" userInfo:0];
      [vala setLocationPurgeTimer:v25];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1001AA540;
      v29[3] = &unk_1002CD4C8;
      v29[4] = vala;
      dispatch_async(&_dispatch_main_q, v29);
    }
  }
}

- (void)_serialQueue_purgeOldTrackedLocationsNow
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022CE50();
  }

  v4 = [(FMDTrackedLocationsStore *)self locationTracker];
  [v4 keepAlive];
  v6 = v5;
  v23 = v4;
  v22 = [v4 maxLocations];
  v25 = +[NSMutableArray array];
  v7 = +[NSDate date];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = self;
  v8 = [(FMDTrackedLocationsStore *)self trackedLocations];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
        v15 = [v14 timeStamp];
        v16 = [v15 dateByAddingTimeInterval:v6];
        if ([v16 compare:v7] == 1)
        {
          [v25 addObject:v13];
        }

        else
        {
          v17 = sub_100002880();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Purging location with timestamp %@ since it was very old", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v10);
  }

  while ([v25 count] > v22)
  {
    v18 = [v25 objectAtIndexedSubscript:0];
    v19 = [v18 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
    v20 = [v19 timeStamp];
    v21 = sub_100002880();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Purging location with timestamp %@ since there were too many locations", buf, 0xCu);
    }

    [v25 removeObjectAtIndex:0];
  }

  [(FMDTrackedLocationsStore *)v24 setTrackedLocations:v25];
  [(FMDTrackedLocationsStore *)v24 _serialQueue_scheduleLocationPurgeTimer];
}

- (void)_serialQueue_addTrackedLocationNow:(id)a3
{
  v4 = a3;
  v5 = [(FMDTrackedLocationsStore *)self trackedLocations];
  v6 = [v5 lastObject];
  v7 = [v6 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];

  v8 = [v4 objectForKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
  v9 = [v7 location];
  v10 = [v8 location];

  v11 = sub_100002880();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9 == v10)
  {
    if (v12)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New location does not have a better accuracy. Copying the new timestamp to the last location...", v21, 2u);
    }

    v14 = [FMDLocation alloc];
    v15 = [v7 location];
    v13 = -[FMDLocation initWithLocation:eventType:positionType:](v14, "initWithLocation:eventType:positionType:", v15, [v7 eventType], objc_msgSend(v7, "positionType"));

    v16 = [(FMDTrackedLocationsStore *)self trackedLocations];
    v17 = [v16 lastObject];
    v18 = [v17 mutableCopy];

    [v18 setObject:v13 forKeyedSubscript:@"kFMDTrackedLocationsStoreTrackFMDLocation"];
    v19 = [(FMDTrackedLocationsStore *)self trackedLocations];
    [v19 removeLastObject];

    v20 = [(FMDTrackedLocationsStore *)self trackedLocations];
    [v20 addObject:v18];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New location. Recording this location...", buf, 2u);
    }

    v13 = [(FMDTrackedLocationsStore *)self trackedLocations];
    [(FMDLocation *)v13 addObject:v4];
  }
}

- (FMDLocationTracker)locationTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_locationTracker);

  return WeakRetained;
}

@end
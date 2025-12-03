@interface CDDataMigrator
+ (BOOL)dkcMigration;
+ (BOOL)logMigration;
+ (BOOL)performMigration;
+ (BOOL)remoteHistogramMigration;
+ (BOOL)spotlightViewerEventsMigration;
+ (CDDataMigrator)sharedInstance;
+ (void)_migrateSpotlightEvents;
+ (void)removeFileAtPath:(id)path;
- (CDDataMigrator)init;
@end

@implementation CDDataMigrator

+ (CDDataMigrator)sharedInstance
{
  if (qword_100044620 != -1)
  {
    sub_100022FDC();
  }

  v3 = qword_100044618;

  return v3;
}

- (CDDataMigrator)init
{
  v8.receiver = self;
  v8.super_class = CDDataMigrator;
  v2 = [(CDDataMigrator *)&v8 init];
  if (v2 && (out_token = 0, dispatch_get_global_queue(-32768, 0), v3 = objc_claimAutoreleasedReturnValue(), v4 = notify_register_dispatch("com.apple.datamigrator.migrationDidFinish", &out_token, v3, &stru_10003D370), v3, v4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100022FF0();
    }

    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

+ (BOOL)performMigration
{
  v2 = _os_activity_create(&_mh_execute_header, "CoreDuet: CDDataMigrator performMigration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v2, &v14);
  os_activity_scope_leave(&v14);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14.opaque[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Beginning CoreDuet Migration....", &v14, 2u);
  }

  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = !+[CDDataMigrator logMigration];
  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  v7 = !+[CDDataMigrator dkcMigration]+ v5;
  objc_autoreleasePoolPop(v6);
  v8 = objc_autoreleasePoolPush();
  v9 = !+[CDDataMigrator spotlightViewerEventsMigration];
  objc_autoreleasePoolPop(v8);
  v10 = objc_autoreleasePoolPush();
  v11 = v7 + v9 + !+[CDDataMigrator remoteHistogramMigration];
  objc_autoreleasePoolPop(v10);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [NSNumber numberWithInt:v11];
    LODWORD(v14.opaque[0]) = 138412290;
    *(v14.opaque + 4) = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished CoreDuet migration with %@ errors.", &v14, 0xCu);
  }

  return v11 == 0;
}

+ (BOOL)logMigration
{
  v2 = _os_activity_create(&_mh_execute_header, "CoreDuet: CDDataMigrator logMigration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  [CDDataMigrator removeFileAtPath:@"/var/log/CoreDuet/coreduetd.log"];
  [CDDataMigrator removeFileAtPath:@"/var/log/CoreDuet/duetknowledged.log"];
  [CDDataMigrator removeFileAtPath:@"/var/log/CoreDuet/duetexpertd.log"];
  v3 = 0;
  do
  {
    v4 = [NSString stringWithFormat:@"%@.%d.gz", @"/var/log/CoreDuet/coreduetd.log", v3];
    [CDDataMigrator removeFileAtPath:v4];

    v5 = [NSString stringWithFormat:@"%@.%d.gz", @"/var/log/CoreDuet/duetknowledged.log", v3];
    [CDDataMigrator removeFileAtPath:v5];

    v6 = [NSString stringWithFormat:@"%@.%d.gz", @"/var/log/CoreDuet/duetexpertd.log", v3];
    [CDDataMigrator removeFileAtPath:v6];

    v3 = (v3 + 1);
  }

  while (v3 != 15);
  return 1;
}

+ (void)removeFileAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:pathCopy];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v8 = 0;
    [v6 removeItemAtPath:pathCopy error:&v8];
    v7 = v8;

    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002306C();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000230F0();
    }
  }
}

+ (BOOL)dkcMigration
{
  v2 = _os_activity_create(&_mh_execute_header, "CoreDuet: CDDataMigrator dkcMigration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  v3 = +[_DKKnowledgeStore knowledgeStoreWithDirectReadOnlyAccess];
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002316C();
  }

  return v3 != 0;
}

+ (void)_migrateSpotlightEvents
{
  v2 = +[NSMutableArray array];
  v3 = +[NSDate date];
  v14 = 0;
  ppDb = 0;
  sqlite3_open("/var/mobile/Library/CoreDuet/coreduetdClassD.db", &ppDb);
  uTF8String = [@"SELECT ZINTEGERID from ZCDDMATTRIBUTENAMEMAPPER where ZNAME==com.apple.spotlightviewer.events;" UTF8String];
  sqlite3_exec(ppDb, uTF8String, sub_10001E100, 0, 0);
  sqlite3_close(ppDb);
  ppDb = 0;
  if (!qword_100044628)
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Couldn't find spotlight viewer events", buf, 2u);
    }

    goto LABEL_12;
  }

  sqlite3_open("/var/mobile/Library/CoreDuet/coreduetd.db", &v14);
  qword_100044628 = [NSString stringWithFormat:@"SELECT ZVALUE, ZCREATIONDATE from ZCDDMSTRINGATTRIBUTE where ZINTEGERID==%lld", qword_100044628];
  uTF8String2 = [qword_100044628 UTF8String];

  sqlite3_exec(v14, uTF8String2, sub_10001E180, v2, 0);
  sqlite3_close(v14);
  v14 = 0;
  if ([v2 count])
  {
    v7 = +[_DKKnowledgeStore knowledgeStore];
    v13 = 0;
    [v7 saveObjects:v2 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000231B0();
      }
    }

    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v3 timeIntervalSinceNow];
      v12 = [NSNumber numberWithDouble:-v11];
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Migration took %@", buf, 0xCu);
    }

LABEL_12:
  }
}

+ (BOOL)spotlightViewerEventsMigration
{
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: CDDataMigrator spotlightViewerEventsMigration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  v4 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating spotlight events!", &state, 2u);
  }

  v15 = +[NSFileManager defaultManager];
  v5 = [v15 fileExistsAtPath:@"/var/mobile/Library/CoreDuet/coreduetd.db"];
  v6 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(state.opaque[0]) = 67109120;
    HIDWORD(state.opaque[0]) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Old DB Exists: %u", &state, 8u);
  }

  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    [self _migrateSpotlightEvents];
    objc_autoreleasePoolPop(v7);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [&off_10003FA88 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(&off_10003FA88);
          }

          v12 = [NSString stringWithFormat:@"/var/mobile/Library/CoreDuet/%@", *(*(&v16 + 1) + 8 * i)];
          v13 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(state.opaque[0]) = 138412290;
            *(state.opaque + 4) = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting file: %@", &state, 0xCu);
          }

          [CDDataMigrator removeFileAtPath:v12];
        }

        v9 = [&off_10003FA88 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return 1;
}

+ (BOOL)remoteHistogramMigration
{
  v2 = _os_activity_create(&_mh_execute_header, "CoreDuet: CDDataMigrator remoteHistogramMigration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  v3 = +[CDDPaths knowledgeDatabaseDirectory];
  v4 = [_DKKnowledgeStorage storageWithDirectory:v3 readOnly:0];

  v5 = [NSDateInterval alloc];
  v6 = +[NSDate distantPast];
  v7 = +[NSDate distantFuture];
  v8 = [v5 initWithStartDate:v6 endDate:v7];

  v9 = +[_DKSystemEventStreams pairedDeviceForecastStream];
  v10 = [NSPredicate predicateWithValue:1];
  v11 = [_DKHistogramQuery histogramQueryForStream:v9 interval:v8 withPredicate:v10];

  [v11 setIncludeLocalResults:0];
  [v11 setIncludeRemoteResults:1];
  [v11 setRemoteHistogramLimit:1];
  v12 = [v4 executeQuery:v11 error:0];
  identifier = [v12 identifier];

  if (identifier)
  {
    v34 = v8;
    v14 = +[NSMutableArray array];
    identifier2 = [v12 identifier];
    v16 = [NSPredicate predicateWithFormat:@"identifier != %@", identifier2];
    [v14 addObject:v16];

    stream = [v12 stream];

    if (stream)
    {
      stream2 = [v12 stream];
      name = [stream2 name];
      v20 = [NSPredicate predicateWithFormat:@"streamName = %@", name];
      [v14 addObject:v20];
    }

    deviceIdentifiers = [v12 deviceIdentifiers];
    v22 = [deviceIdentifiers count];

    if (v22)
    {
      deviceIdentifiers2 = [v12 deviceIdentifiers];
      firstObject = [deviceIdentifiers2 firstObject];
      v25 = [NSPredicate predicateWithFormat:@"deviceIdentifier = %@", firstObject];
      [v14 addObject:v25];
    }

    v26 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
    storage = [v4 storage];
    v28 = [storage managedObjectContextFor:NSFileProtectionCompleteUntilFirstUserAuthentication identifier:@"com.apple.coreduet.datamigrator"];
    LOBYTE(v33) = 1;
    v29 = [_DKCoreDataStorage deleteObjectsInContext:v28 entityName:@"Histogram" predicate:v26 sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:1 includePendingChanges:v33];

    v30 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [NSNumber numberWithUnsignedInteger:v29];
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Removed %@ stale PairedDeviceForecast histograms.", &state, 0xCu);
    }

    v8 = v34;
  }

  return identifier != 0;
}

@end
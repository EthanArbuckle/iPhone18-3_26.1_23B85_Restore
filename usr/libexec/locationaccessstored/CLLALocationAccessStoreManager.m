@interface CLLALocationAccessStoreManager
+ (id)sharedInstance;
- (BOOL)clearAllLocationAccessStore;
- (BOOL)generateJsonDataWith:(id)a3 outputFile:(id)a4;
- (BOOL)generateLocationAccessRecordBasedOnLastRecordingTime;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)saveLocationAccessStoreClients:(id)a3 toFile:(id)a4;
- (BOOL)startOrStopRecording;
- (CLLALocationAccessStoreManager)init;
- (id)dateOfLastRecording;
- (id)generateFilenameSinceLastRecording;
- (id)getLocalizedNameForBundleID:(id)a3 bundlePath:(id)a4;
- (id)getLocationAccessRecordSinceDate:(id)a3;
- (id)getLocationAccessStoredDirectoryPath;
- (id)getOrDefaultLastRecordingTimestampString;
- (id)todaysDateString;
- (void)exportLocationAccessActivity:(id)a3;
- (void)getLocationAccessRecordStateWithReplyBlock:(id)a3;
- (void)pruneLocationAccessRecordOlderThanAllowedAge;
- (void)saveClientsReceivingLocationsToDisk;
- (void)setLocationAccessRecordAsActiveForDays:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation CLLALocationAccessStoreManager

+ (id)sharedInstance
{
  if (qword_1000107F0 != -1)
  {
    sub_100004920();
  }

  v3 = qword_1000107F8;

  return v3;
}

- (CLLALocationAccessStoreManager)init
{
  v31.receiver = self;
  v31.super_class = CLLALocationAccessStoreManager;
  v2 = [(CLLALocationAccessStoreManager *)&v31 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.locationaccessstored.registration"];
    locationAccessStoreManager = v2->_locationAccessStoreManager;
    v2->_locationAccessStoreManager = v3;

    [(NSXPCListener *)v2->_locationAccessStoreManager setDelegate:v2];
    [(NSXPCListener *)v2->_locationAccessStoreManager resume];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 objectForKey:@"LocationAccessRecordsAge"];
    v7 = v6 == 0;

    if (v7)
    {
      if (qword_100010808 != -1)
      {
        sub_100004934();
      }

      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v8 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v33) = byte_100010800;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CLLA isKoreaSKU: %d", buf, 8u);
        if (byte_100010800)
        {
          v9 = 180;
        }

        else
        {
          v9 = 0;
        }

        if (qword_1000106B0 != -1)
        {
          sub_10000495C();
        }
      }

      else if (byte_100010800)
      {
        v9 = 180;
      }

      else
      {
        v9 = 0;
      }

      v10 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v33) = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#CLLA(init) setting age(default) to %d days", buf, 8u);
      }

      v11 = +[NSUserDefaults standardUserDefaults];
      [v11 setInteger:v9 forKey:@"LocationAccessRecordsAge"];
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 objectForKey:@"LastRecordingTime"];
    v14 = v13 == 0;

    if (v14)
    {
      v15 = [(CLLALocationAccessStoreManager *)v2 todaysDateString];
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v16 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#CLLA(init) setting LastRecordingTime to Now : %@", buf, 0xCu);
      }

      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 setObject:v15 forKey:@"LastRecordingTime"];
    }

    v18 = +[NSFileManager defaultManager];
    v19 = [(CLLALocationAccessStoreManager *)v2 getLocationAccessStoredDirectoryPath];
    v30 = 0;
    [v18 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v30];
    v20 = v30;

    if (v20)
    {
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v21 = qword_1000106B8;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [(CLLALocationAccessStoreManager *)v2 getLocationAccessStoredDirectoryPath];
        *buf = 138412546;
        v33 = v22;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#warning #CLLA(init) failed to create the directory %@ error: %@", buf, 0x16u);
      }
    }

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1000016C8;
    v28 = &unk_10000C318;
    v23 = v2;
    v29 = v23;
    xpc_set_event_stream_handler("com.apple.locationd.appreset", 0, &v25);
    [(CLLALocationAccessStoreManager *)v23 startOrStopRecording:v25];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLLALocationAcessStoreServerProtocol];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v7 = [v5 valueForEntitlement:@"com.apple.private.locationaccessstore.administer"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [v5 resume];
  }

  else
  {
    if (qword_1000106B0 != -1)
    {
      sub_100004984();
    }

    v9 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#warning #CLLA entitlement missing", v11, 2u);
    }

    [v5 invalidate];
  }

  return v8;
}

- (BOOL)startOrStopRecording
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"LocationAccessRecordsAge"];

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:@"com.apple.locationaccessstored.task"];

  if (v4 < 1)
  {
    if (v6)
    {
      v8 = +[BGSystemTaskScheduler sharedScheduler];
      [v8 deregisterTaskWithIdentifier:@"com.apple.locationaccessstored.task"];
    }
  }

  else if (!v6)
  {
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001974;
    v10[3] = &unk_10000C360;
    v10[4] = self;
    [v7 registerForTaskWithIdentifier:@"com.apple.locationaccessstored.task" usingQueue:0 launchHandler:v10];
  }

  return v4 > 0;
}

- (void)setLocationAccessRecordAsActiveForDays:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 integerForKey:@"LocationAccessRecordsAge"];

  if (a3 >= 1)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 setInteger:v9 forKey:@"LocationAccessRecordsAge"];

  v11 = [(CLLALocationAccessStoreManager *)self startOrStopRecording];
  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v12 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "N";
    v14[0] = 67109634;
    v14[1] = v9;
    if (v11)
    {
      v13 = "Y";
    }

    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#CLLA set location access record age(in days) newAge:%d currentAge:%d isActive? %s", v14, 0x18u);
  }

  v6[2](v6, v11);
  if (a3 <= 0)
  {
    [(CLLALocationAccessStoreManager *)self clearAllLocationAccessStore];
  }

  else
  {
    [(CLLALocationAccessStoreManager *)self pruneLocationAccessRecordOlderThanAllowedAge];
  }
}

- (void)getLocationAccessRecordStateWithReplyBlock:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 integerForKey:@"LocationAccessRecordsAge"];

  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v6 = qword_1000106B8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CLLA is Location Access Recording? %@", &v8, 0xCu);
  }

  v3[2](v3, v5);
}

- (BOOL)saveLocationAccessStoreClients:(id)a3 toFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v8 = qword_1000106B8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315138;
    *&v19[4] = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CLLA (%s)", v19, 0xCu);
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v7];

  if (v10)
  {
    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v11 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 138412290;
      *&v19[4] = v7;
      v12 = "#CLLA file already exists. Updating Existing file %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v19, 0xCu);
    }
  }

  else
  {
    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v11 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 138412290;
      *&v19[4] = v7;
      v12 = "#CLLA file doesn't exist yet, attempting to create the file %@";
      goto LABEL_14;
    }
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 createFileAtPath:v7 contents:0 attributes:0];

  if (v14)
  {
    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v15 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 138412290;
      *&v19[4] = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#CLLA writing to file %@", v19, 0xCu);
    }

    v16 = [(CLLALocationAccessStoreManager *)self generateJsonDataWith:v6 outputFile:v7];
  }

  else
  {
    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v17 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
    {
      *v19 = 138412290;
      *&v19[4] = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#warning #CLLA failed to create file: %@", v19, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)generateJsonDataWith:(id)a3 outputFile:(id)a4
{
  v5 = a4;
  v11 = 0;
  v6 = [NSJSONSerialization dataWithJSONObject:a3 options:3 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [v6 writeToFile:v5 atomically:1];
  }

  else
  {
    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v9 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#warning #CLLA file is created but there is no data filepath:%@ error:%@", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)generateLocationAccessRecordBasedOnLastRecordingTime
{
  v3 = [(CLLALocationAccessStoreManager *)self dateOfLastRecording];
  v4 = [(CLLALocationAccessStoreManager *)self getLocationAccessRecordSinceDate:v3];

  v5 = [(CLLALocationAccessStoreManager *)self generateFilenameSinceLastRecording];
  v6 = [(CLLALocationAccessStoreManager *)self getLocationAccessStoredDirectoryPath];
  v7 = [v5 stringByAppendingString:@".json"];
  v8 = [v6 stringByAppendingPathComponent:v7];

  if ([v8 length])
  {
    v9 = [(CLLALocationAccessStoreManager *)self saveLocationAccessStoreClients:v4 toFile:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getLocationAccessRecordSinceDate:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  +[CLLocationManager userLocationClientsWithInfo];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002454;
  v13 = v12[3] = &unk_10000C388;
  v6 = v4;
  v14 = v6;
  v15 = self;
  v7 = v5;
  v16 = v7;
  v8 = v13;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v16;
  v10 = v7;

  return v7;
}

- (BOOL)clearAllLocationAccessStore
{
  v3 = objc_alloc_init(NSFileManager);
  v4 = [(CLLALocationAccessStoreManager *)self getLocationAccessStoredDirectoryPath];
  v5 = [v3 enumeratorAtPath:v4];
  v6 = 0;
  v7 = 1;
  *&v8 = 138412546;
  v18 = v8;
  while (1)
  {
    v9 = [v5 nextObject];

    if (!v9)
    {
      break;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = [v4 stringByAppendingPathComponent:v9];
    v19 = 0;
    v12 = [v3 removeItemAtPath:v11 error:&v19];
    v13 = v19;

    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v15 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
      {
        *buf = v18;
        v21 = v9;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#warning #CLLA error when removing file during clearAll file:%@ error:%@", buf, 0x16u);
      }

      v7 = 0;
    }

    v6 = v9;
    objc_autoreleasePoolPop(v10);
  }

  if (qword_1000106B0 != -1)
  {
    sub_10000495C();
  }

  v16 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#CLLA Finished clearing all location access store records", buf, 2u);
  }

  return v7 & 1;
}

- (id)getLocationAccessStoredDirectoryPath
{
  v2 = +[NSFileManager defaultManager];
  v15 = 0;
  v3 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v15];
  v4 = v15;

  if (v4)
  {
    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v5 = qword_1000106B8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 136446210;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#CLLA could not get the URL directory (%{public}s)", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = [v3 path];
    v10 = [v9 stringByAppendingPathComponent:@"locationaccessstored/"];

    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v11 = qword_1000106B8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v13 = [v10 UTF8String];
      *buf = 136315138;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#CLLA userpath %s", buf, 0xCu);
    }

    v8 = v10;
  }

  return v8;
}

- (id)getOrDefaultLastRecordingTimestampString
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"LastRecordingTime"];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(CLLALocationAccessStoreManager *)self todaysDateString];
    if (qword_1000106B0 != -1)
    {
      sub_100004984();
    }

    v6 = qword_1000106B8;
    if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLLA(getLastRecordingTimestampString) setting LastRecordingTime to Now because it was unexpectedly missing, today:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v7 = qword_1000106B8;
    if (os_signpost_enabled(qword_1000106B8))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLLA(getLastRecordingTimestampString) setting LastRecordingTime to Now because it was unexpectedly missing", "{msg%{public}.0s:#CLLA(getLastRecordingTimestampString) setting LastRecordingTime to Now because it was unexpectedly missing, today:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:v5 forKey:@"LastRecordingTime"];
  }

  return v5;
}

- (id)todaysDateString
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v3 = +[NSTimeZone localTimeZone];
  [v2 setTimeZone:v3];

  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (void)saveClientsReceivingLocationsToDisk
{
  v3 = [(CLLALocationAccessStoreManager *)self todaysDateString];
  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v4 = qword_1000106B8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 stringForKey:@"LastRecordingTime"];
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CLLA-BGTask trigger now : %@ , LastRecordingTime: %@", &v14, 0x16u);
  }

  v7 = +[NSCalendar currentCalendar];
  v8 = [(CLLALocationAccessStoreManager *)self dateOfLastRecording];
  v9 = +[NSDate date];
  v10 = [v7 isDate:v8 inSameDayAsDate:v9];

  if (v10)
  {
    goto LABEL_12;
  }

  if (qword_1000106B0 != -1)
  {
    sub_10000495C();
  }

  v11 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#CLLA-BGTask LRT and Now are in different day - Recording", &v14, 2u);
  }

  if ([(CLLALocationAccessStoreManager *)self generateLocationAccessRecordBasedOnLastRecordingTime])
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 setObject:v3 forKey:@"LastRecordingTime"];

LABEL_12:
    [(CLLALocationAccessStoreManager *)self pruneLocationAccessRecordOlderThanAllowedAge];
    goto LABEL_13;
  }

  if (qword_1000106B0 != -1)
  {
    sub_10000495C();
  }

  v13 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#CLLA-BGTask we failed to generate data. Skip updating lastRecordingTime", &v14, 2u);
  }

LABEL_13:
}

- (id)getLocalizedNameForBundleID:(id)a3 bundlePath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [NSBundle bundleWithIdentifier:v5];
  }

  else
  {
    if (!v6)
    {
      v9 = 0;
LABEL_22:
      if (v5)
      {
        v17 = v5;
      }

      else
      {
        v17 = v7;
      }

      v12 = v17;
      goto LABEL_26;
    }

    v8 = [NSBundle bundleWithPath:v6];
  }

  v9 = v8;
  if (!v8)
  {
    v12 = 0;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v10 = [v8 localizedInfoDictionary];
  v11 = _kCFBundleDisplayNameKey;
  v12 = [v10 objectForKeyedSubscript:_kCFBundleDisplayNameKey];

  if (v12)
  {
    goto LABEL_26;
  }

  v13 = [v9 infoDictionary];
  v12 = [v13 objectForKeyedSubscript:v11];

  if (v5)
  {
LABEL_10:
    if (!v12)
    {
      v19 = 0;
      v14 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v19];
      v15 = v19;
      if (v15)
      {
        if (qword_1000106B0 != -1)
        {
          sub_10000495C();
        }

        v16 = qword_1000106B8;
        if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v21 = v5;
          v22 = 2112;
          v23 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#warning #CLLA application record could not find bundleID:%@ Returning localized name as %@", buf, 0x16u);
        }
      }

      v12 = [v14 localizedName];
      if (!v12)
      {
        v12 = [v14 localizedShortName];
      }
    }
  }

LABEL_19:
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_26:

  return v12;
}

- (void)exportLocationAccessActivity:(id)a3
{
  v48 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"LocationAccessRecordsAge"];

  if (v4)
  {
    [(CLLALocationAccessStoreManager *)self pruneLocationAccessRecordOlderThanAllowedAge];
    v46 = +[NSFileManager defaultManager];
    v5 = [(CLLALocationAccessStoreManager *)self getLocationAccessStoredDirectoryPath];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:0];

    v44 = v6;
    if (!v6)
    {
      if (qword_1000106B0 != -1)
      {
        sub_100004984();
      }

      v9 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#warning #CLLA LocationAccessReport - Failed to retrieve a valid URL path.", buf, 2u);
      }

      v48[2](v48, &stru_10000C5A8);
      v45 = 0;
      goto LABEL_75;
    }

    v58 = 0;
    v43 = [v46 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:4 error:&v58];
    v45 = v58;
    if (v45)
    {
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v7 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v60 = v45;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#warning #CLLA LocationAccessReport - Failed to retrieve LocationAccessRecords. Error : %@", buf, 0xCu);
      }

      v48[2](v48, &stru_10000C5A8);
LABEL_74:

LABEL_75:
      goto LABEL_76;
    }

    if (qword_1000106B0 != -1)
    {
      sub_10000495C();
    }

    v10 = qword_1000106B8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v43 count];
      *buf = 67109120;
      *v60 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#CLLA Creating LocationAccessReport - allJsonFilesInDirectoryCount : %d", buf, 8u);
    }

    v12 = [(CLLALocationAccessStoreManager *)self dateOfLastRecording];
    v41 = [(CLLALocationAccessStoreManager *)self getLocationAccessRecordSinceDate:v12];

    v42 = [(CLLALocationAccessStoreManager *)self generateFilenameSinceLastRecording];
    v50 = +[NSMutableDictionary dictionary];
    [v50 setObject:v41 forKey:v42];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v43;
    v13 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (!v13)
    {
LABEL_69:

      v35 = [(CLLALocationAccessStoreManager *)self todaysDateString];
      v36 = [@"AllLocationAccessRecord_" stringByAppendingString:v35];
      v37 = [v36 stringByAppendingString:@".json"];

      v38 = [(CLLALocationAccessStoreManager *)self getLocationAccessStoredDirectoryPath];
      v39 = [v38 stringByAppendingPathComponent:v37];

      [(CLLALocationAccessStoreManager *)self generateJsonDataWith:v50 outputFile:v39];
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v40 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v60 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#CLLA LocationAccessReport created - outputFilePath : %@", buf, 0xCu);
      }

      v48[2](v48, v39);

      goto LABEL_74;
    }

    v14 = *v55;
LABEL_25:
    v15 = 0;
    while (1)
    {
      if (*v55 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v54 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = [v16 path];
      if (([v18 containsString:@"AllLocationAccessRecord_"] & 1) == 0)
      {
        break;
      }

      v19 = 0;
LABEL_67:

      objc_autoreleasePoolPop(v17);
      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (!v13)
        {
          goto LABEL_69;
        }

        goto LABEL_25;
      }
    }

    v20 = [NSData dataWithContentsOfFile:v18];
    if (!v20)
    {
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v24 = qword_1000106B8;
      if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v60 = v18;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#warning #CLLA Failed to read file at path: %@", buf, 0xCu);
      }

      v19 = 0;
      goto LABEL_66;
    }

    v53 = 0;
    v21 = [NSJSONSerialization JSONObjectWithData:v20 options:0 error:&v53];
    v19 = v53;
    if (v19)
    {
      if (qword_1000106B0 != -1)
      {
        sub_10000495C();
      }

      v22 = qword_1000106B8;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v19 localizedDescription];
        *buf = 138412546;
        *v60 = v18;
        *&v60[8] = 2112;
        *&v60[10] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#warning #CLLA Failed to parse JSON at path: %@ jsonDataError:%@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1000106B0 != -1)
        {
          sub_10000495C();
        }

        v32 = qword_1000106B8;
        if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289282;
          *v60 = 0;
          *&v60[4] = 2082;
          *&v60[6] = "";
          *&v60[14] = 2114;
          *&v60[16] = v18;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLLA JSON data is not an array, path:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        if (qword_1000106B0 != -1)
        {
          sub_10000495C();
        }

        v33 = qword_1000106B8;
        if (os_signpost_enabled(qword_1000106B8))
        {
          *buf = 68289282;
          *v60 = 0;
          *&v60[4] = 2082;
          *&v60[6] = "";
          *&v60[14] = 2114;
          *&v60[16] = v18;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLLA JSON data is not an array", "{msg%{public}.0s:#CLLA JSON data is not an array, path:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        goto LABEL_65;
      }

      v25 = [v16 lastPathComponent];
      if (([v25 hasSuffix:@".json"]& 1) != 0)
      {
        v51 = [v25 stringByReplacingOccurrencesOfString:@".json" withString:&stru_10000C5A8];

        v26 = [v50 objectForKey:?];
        v27 = v26 == 0;

        if (v27)
        {
          v22 = v51;
          [v50 setObject:v21 forKey:v51];
        }

        else
        {
          if (qword_1000106B0 != -1)
          {
            sub_10000495C();
          }

          v28 = qword_1000106B8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v16 lastPathComponent];
            *buf = 138412290;
            *v60 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#warning #CLLA clients already exists in results dictionary for file : %@", buf, 0xCu);
          }

          v49 = [v50 objectForKey:v51];
          v30 = [[NSMutableSet alloc] initWithArray:v49];
          [v30 addObjectsFromArray:v21];
          v31 = [v30 allObjects];
          [v50 setObject:v31 forKey:v51];

          v22 = v51;
        }
      }

      else
      {
        if (qword_1000106B0 != -1)
        {
          sub_10000495C();
        }

        v34 = qword_1000106B8;
        if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v60 = v25;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#warning #CLLA filename does not ends with .json - filename : %@", buf, 0xCu);
        }

        v22 = v25;
      }
    }

LABEL_65:
LABEL_66:

    goto LABEL_67;
  }

  if (qword_1000106B0 != -1)
  {
    sub_100004984();
  }

  v8 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CLLA Creating LocationAccessReport bailing out - Age is 0", buf, 2u);
  }

  v48[2](v48, &stru_10000C5A8);
LABEL_76:
}

- (void)pruneLocationAccessRecordOlderThanAllowedAge
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"LocationAccessRecordsAge"];

  v27 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v27 components:28 fromDate:v5];

  [v6 setDay:{objc_msgSend(v6, "day") - v4}];
  v30 = [v27 dateFromComponents:v6];
  v7 = +[NSDate date];
  v8 = [v27 components:124 fromDate:v7];

  [v8 setMinute:{objc_msgSend(v8, "minute") - 5}];
  v28 = [v27 dateFromComponents:v8];
  v26 = v8;
  v29 = objc_alloc_init(NSFileManager);
  v32 = [(CLLALocationAccessStoreManager *)self getLocationAccessStoredDirectoryPath];
  v31 = [v29 enumeratorAtPath:?];
  v9 = 0;
  while (1)
  {
    v10 = [v31 nextObject];

    if (!v10)
    {
      break;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = [v32 stringByAppendingPathComponent:v10];
    v13 = [NSURL fileURLWithPath:v12];
    v34 = 0;
    v35 = 0;
    [v13 getResourceValue:&v35 forKey:NSURLContentModificationDateKey error:&v34];
    v14 = v35;
    v15 = v34;
    if (!v15)
    {
      v16 = v30;
      if ([v10 hasPrefix:@"AllLocationAccessRecord_"])
      {
        v17 = v28;

        v16 = v17;
      }

      [v14 timeIntervalSinceReferenceDate];
      v19 = v18;
      [v16 timeIntervalSinceReferenceDate];
      if (v19 >= v20)
      {
        v15 = 0;
      }

      else
      {
        v21 = [v32 stringByAppendingPathComponent:v10];
        v33 = 0;
        v22 = [v29 removeItemAtPath:v21 error:&v33];
        v15 = v33;

        if (v15)
        {
          v23 = v22;
        }

        else
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          if (qword_1000106B0 != -1)
          {
            sub_10000495C();
          }

          v24 = qword_1000106B8;
          if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v10;
            v38 = 2112;
            v39 = v15;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#warning #CLLA error when removing file during pruning file:%@ error:%@", buf, 0x16u);
          }
        }
      }
    }

    v9 = v10;
    objc_autoreleasePoolPop(v11);
  }

  if (qword_1000106B0 != -1)
  {
    sub_10000495C();
  }

  v25 = qword_1000106B8;
  if (os_log_type_enabled(qword_1000106B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#CLLA Finished pruning location access store records", buf, 2u);
  }
}

- (id)dateOfLastRecording
{
  v2 = [(CLLALocationAccessStoreManager *)self getOrDefaultLastRecordingTimestampString];
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v4 = [v3 dateFromString:v2];

  return v4;
}

- (id)generateFilenameSinceLastRecording
{
  v3 = [(CLLALocationAccessStoreManager *)self getOrDefaultLastRecordingTimestampString];
  v4 = [v3 componentsSeparatedByString:@"T"];
  v5 = [v4 objectAtIndex:0];

  v6 = [(CLLALocationAccessStoreManager *)self todaysDateString];
  v7 = [v6 componentsSeparatedByString:@"T"];
  v8 = [v7 objectAtIndex:0];
  v9 = [@" - " stringByAppendingString:v8];

  v10 = [v5 stringByAppendingString:v9];

  return v10;
}

@end
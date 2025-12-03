@interface MDRStateRecorder
+ (id)sharedInstance;
- (BOOL)recordDeviceID:(id)d;
- (BOOL)recordParingVersion:(int64_t)version;
- (BOOL)recordState:(int64_t)state;
- (BOOL)recordTimestamp:(id)timestamp;
- (BOOL)updateRecords:(id)records;
- (MDRStateRecorder)init;
- (id)returnSavedKey:(id)key;
- (int64_t)returnSavedParingVersion;
- (int64_t)returnSavedState;
- (void)deleteAllRecords;
@end

@implementation MDRStateRecorder

- (MDRStateRecorder)init
{
  v13.receiver = self;
  v13.super_class = MDRStateRecorder;
  v2 = [(MDRBaseObject *)&v13 init];
  if (v2)
  {
    v3 = [NSString pathWithComponents:&off_100023738];
    filePath = v2->_filePath;
    v2->_filePath = v3;

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v2->_filePath];

    if (v6)
    {
      v7 = [NSMutableDictionary dictionaryWithContentsOfFile:v2->_filePath];
      cacheDB = v2->_cacheDB;
      v2->_cacheDB = v7;
    }

    if (!v2->_cacheDB)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = v2->_cacheDB;
      v2->_cacheDB = v9;
    }

    v11 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100026520 != -1)
  {
    sub_100013AF0();
  }

  v3 = qword_100026518;

  return v3;
}

- (BOOL)updateRecords:(id)records
{
  recordsCopy = records;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[NSFileManager defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)selfCopy->_filePath stringByDeletingLastPathComponent];
  v29 = NSFileProtectionKey;
  v30 = NSFileProtectionCompleteUnlessOpen;
  v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  if ([v6 fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v9 = 0;
  }

  else
  {
    v28 = 0;
    v14 = [v6 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v28];
    v15 = v28;
    v12 = v15;
    if ((v14 & 1) == 0)
    {
      localizedDescription = [v15 localizedDescription];
      v20 = [NSString stringWithFormat:@"Failed to create parent folder %@ with error: %@", stringByDeletingLastPathComponent, localizedDescription];

      logger = [(MDRBaseObject *)selfCopy logger];
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        sub_100013B04();
      }

      v13 = 0;
      goto LABEL_20;
    }

    v27 = v15;
    v16 = [v6 setAttributes:v8 ofItemAtPath:stringByDeletingLastPathComponent error:&v27];
    v9 = v27;

    if ((v16 & 1) == 0)
    {
      localizedDescription2 = [v9 localizedDescription];
      v18 = [NSString stringWithFormat:@"Failed to set attributes for %@ with error: %@", stringByDeletingLastPathComponent, localizedDescription2];

      logger2 = [(MDRBaseObject *)selfCopy logger];
      if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
      {
        sub_100013B04();
      }
    }
  }

  [(NSMutableDictionary *)selfCopy->_cacheDB addEntriesFromDictionary:recordsCopy];
  if (([(NSMutableDictionary *)selfCopy->_cacheDB writeToFile:selfCopy->_filePath atomically:1]& 1) == 0)
  {
    v20 = [NSString stringWithFormat:@"Failed to write %@", selfCopy->_filePath];
    logger = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100013B04();
    }

    v13 = 0;
    v12 = v9;
    goto LABEL_20;
  }

  filePath = selfCopy->_filePath;
  v26 = v9;
  v11 = [v6 setAttributes:v8 ofItemAtPath:filePath error:&v26];
  v12 = v26;

  if ((v11 & 1) == 0)
  {
    v23 = selfCopy->_filePath;
    localizedDescription3 = [v12 localizedDescription];
    v20 = [NSString stringWithFormat:@"Failed to set attributes for %@ with error: %@", v23, localizedDescription3];

    logger = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100013B04();
    }

    v13 = 1;
LABEL_20:

    goto LABEL_21;
  }

  v13 = 1;
LABEL_21:

  objc_sync_exit(selfCopy);
  return v13;
}

- (id)returnSavedKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableDictionary *)selfCopy->_cacheDB count])
  {
    v6 = [(NSMutableDictionary *)selfCopy->_cacheDB objectForKeyedSubscript:keyCopy];

    if (v6)
    {
      v7 = [(NSMutableDictionary *)selfCopy->_cacheDB objectForKeyedSubscript:keyCopy];
      goto LABEL_10;
    }

    keyCopy = [NSString stringWithFormat:@"Key %@ not exist", keyCopy];
    logger = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = keyCopy;
      goto LABEL_8;
    }
  }

  else
  {
    keyCopy = [NSString stringWithFormat:@"State DB is empty"];
    logger = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = keyCopy;
LABEL_8:
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_10:
  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)recordState:(int64_t)state
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [NSNumber numberWithInteger:state];
  [v5 setObject:v6 forKeyedSubscript:@"StateNumber"];

  v7 = sub_100008DF8(state);
  [v5 setObject:v7 forKeyedSubscript:@"StateString"];

  LOBYTE(v7) = [(MDRStateRecorder *)self updateRecords:v5];
  return v7;
}

- (BOOL)recordParingVersion:(int64_t)version
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [NSNumber numberWithInteger:version];
  [v5 setObject:v6 forKeyedSubscript:@"ParingVersion"];

  LOBYTE(v6) = [(MDRStateRecorder *)self updateRecords:v5];
  return v6;
}

- (BOOL)recordDeviceID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:dCopy forKeyedSubscript:@"DeviceID"];

  LOBYTE(self) = [(MDRStateRecorder *)self updateRecords:v5];
  return self;
}

- (BOOL)recordTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:timestampCopy forKeyedSubscript:@"Timestamp"];

  LOBYTE(self) = [(MDRStateRecorder *)self updateRecords:v5];
  return self;
}

- (int64_t)returnSavedState
{
  v2 = [(MDRStateRecorder *)self returnSavedKey:@"StateNumber"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int64_t)returnSavedParingVersion
{
  v2 = [(MDRStateRecorder *)self returnSavedKey:@"ParingVersion"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)deleteAllRecords
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stringByDeletingLastPathComponent = [(NSString *)selfCopy->_filePath stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:stringByDeletingLastPathComponent];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtPath:stringByDeletingLastPathComponent error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      localizedDescription = [v8 localizedDescription];
      v10 = [NSString stringWithFormat:@"Can't remove file %@ with error: %@", stringByDeletingLastPathComponent, localizedDescription];

      logger = [(MDRBaseObject *)selfCopy logger];
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        sub_100013B78();
      }
    }
  }

  objc_sync_exit(selfCopy);
}

@end
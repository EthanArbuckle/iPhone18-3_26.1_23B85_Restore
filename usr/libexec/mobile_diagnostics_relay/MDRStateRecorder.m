@interface MDRStateRecorder
+ (id)sharedInstance;
- (BOOL)recordDeviceID:(id)a3;
- (BOOL)recordParingVersion:(int64_t)a3;
- (BOOL)recordState:(int64_t)a3;
- (BOOL)recordTimestamp:(id)a3;
- (BOOL)updateRecords:(id)a3;
- (MDRStateRecorder)init;
- (id)returnSavedKey:(id)a3;
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

- (BOOL)updateRecords:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = +[NSFileManager defaultManager];
  v7 = [(NSString *)v5->_filePath stringByDeletingLastPathComponent];
  v29 = NSFileProtectionKey;
  v30 = NSFileProtectionCompleteUnlessOpen;
  v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  if ([v6 fileExistsAtPath:v7])
  {
    v9 = 0;
  }

  else
  {
    v28 = 0;
    v14 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v28];
    v15 = v28;
    v12 = v15;
    if ((v14 & 1) == 0)
    {
      v22 = [v15 localizedDescription];
      v20 = [NSString stringWithFormat:@"Failed to create parent folder %@ with error: %@", v7, v22];

      v21 = [(MDRBaseObject *)v5 logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100013B04();
      }

      v13 = 0;
      goto LABEL_20;
    }

    v27 = v15;
    v16 = [v6 setAttributes:v8 ofItemAtPath:v7 error:&v27];
    v9 = v27;

    if ((v16 & 1) == 0)
    {
      v17 = [v9 localizedDescription];
      v18 = [NSString stringWithFormat:@"Failed to set attributes for %@ with error: %@", v7, v17];

      v19 = [(MDRBaseObject *)v5 logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100013B04();
      }
    }
  }

  [(NSMutableDictionary *)v5->_cacheDB addEntriesFromDictionary:v4];
  if (([(NSMutableDictionary *)v5->_cacheDB writeToFile:v5->_filePath atomically:1]& 1) == 0)
  {
    v20 = [NSString stringWithFormat:@"Failed to write %@", v5->_filePath];
    v21 = [(MDRBaseObject *)v5 logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100013B04();
    }

    v13 = 0;
    v12 = v9;
    goto LABEL_20;
  }

  filePath = v5->_filePath;
  v26 = v9;
  v11 = [v6 setAttributes:v8 ofItemAtPath:filePath error:&v26];
  v12 = v26;

  if ((v11 & 1) == 0)
  {
    v23 = v5->_filePath;
    v24 = [v12 localizedDescription];
    v20 = [NSString stringWithFormat:@"Failed to set attributes for %@ with error: %@", v23, v24];

    v21 = [(MDRBaseObject *)v5 logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100013B04();
    }

    v13 = 1;
LABEL_20:

    goto LABEL_21;
  }

  v13 = 1;
LABEL_21:

  objc_sync_exit(v5);
  return v13;
}

- (id)returnSavedKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSMutableDictionary *)v5->_cacheDB count])
  {
    v6 = [(NSMutableDictionary *)v5->_cacheDB objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [(NSMutableDictionary *)v5->_cacheDB objectForKeyedSubscript:v4];
      goto LABEL_10;
    }

    v8 = [NSString stringWithFormat:@"Key %@ not exist", v4];
    v9 = [(MDRBaseObject *)v5 logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [NSString stringWithFormat:@"State DB is empty"];
    v9 = [(MDRBaseObject *)v5 logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v8;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_10:
  objc_sync_exit(v5);

  return v7;
}

- (BOOL)recordState:(int64_t)a3
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [NSNumber numberWithInteger:a3];
  [v5 setObject:v6 forKeyedSubscript:@"StateNumber"];

  v7 = sub_100008DF8(a3);
  [v5 setObject:v7 forKeyedSubscript:@"StateString"];

  LOBYTE(v7) = [(MDRStateRecorder *)self updateRecords:v5];
  return v7;
}

- (BOOL)recordParingVersion:(int64_t)a3
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [NSNumber numberWithInteger:a3];
  [v5 setObject:v6 forKeyedSubscript:@"ParingVersion"];

  LOBYTE(v6) = [(MDRStateRecorder *)self updateRecords:v5];
  return v6;
}

- (BOOL)recordDeviceID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v4 forKeyedSubscript:@"DeviceID"];

  LOBYTE(self) = [(MDRStateRecorder *)self updateRecords:v5];
  return self;
}

- (BOOL)recordTimestamp:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v4 forKeyedSubscript:@"Timestamp"];

  LOBYTE(self) = [(MDRStateRecorder *)self updateRecords:v5];
  return self;
}

- (int64_t)returnSavedState
{
  v2 = [(MDRStateRecorder *)self returnSavedKey:@"StateNumber"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)returnSavedParingVersion
{
  v2 = [(MDRStateRecorder *)self returnSavedKey:@"ParingVersion"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)deleteAllRecords
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_filePath stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = [v8 localizedDescription];
      v10 = [NSString stringWithFormat:@"Can't remove file %@ with error: %@", v3, v9];

      v11 = [(MDRBaseObject *)v2 logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100013B78();
      }
    }
  }

  objc_sync_exit(v2);
}

@end
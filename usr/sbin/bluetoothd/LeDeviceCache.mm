@interface LeDeviceCache
+ (id)sharedInstance;
- (BOOL)createDatabase:(sqlite3 *)database type:(unint64_t)type path:(const char *)path flags:(int)flags;
- (BOOL)initializeDatabases:(LeDeviceCacheEventListener *)databases queue:(dispatch_queue_s *)queue;
- (BOOL)json:(id)json hasAllProperties:(id)properties;
- (BOOL)json:(id)json hasAnyProperty:(id)property;
- (BOOL)loadDatabase:(unint64_t)database;
- (BOOL)readIntFromDatabase:(sqlite3 *)database statement:(id)statement value:(int *)value;
- (LeDeviceCache)init;
- (const)friendlyNameForType:(unint64_t)type;
- (const)tableNameForType:(unint64_t)type;
- (id)customPropertiesJSONFromDevice:(const void *)device;
- (id)databaseContainerURL;
- (id)nameFromSanitizedName:(id)name;
- (id)readCustomPropertiesJSONForDeviceUUID:(id)d inDatabase:(sqlite3 *)database;
- (int)_genericExecute:(id)execute inDatabase:(sqlite3 *)database;
- (int)duplicatePairedDevicesForAddress:(unint64_t)address originalUuid:(id)uuid;
- (vector<std::string,)findUUIDsWithAllCustomProperties:(LeDeviceCache *)self;
- (vector<std::string,)findUUIDsWithCustomProperties:(LeDeviceCache *)self;
- (void)clearAllDatabases;
- (void)createTablesForDatabase:(sqlite3 *)database type:(unint64_t)type;
- (void)customPropertiesToDevice:(void *)device fromJSON:(id)n;
- (void)evictIfNeeded:(BOOL)needed;
- (void)loadPairedDevice:(id)device address:(unint64_t)address ifMissing:(BOOL)missing;
- (void)migratePlistData:(id)data database:(sqlite3 *)database type:(unint64_t)type;
- (void)printDatabase:(unint64_t)database;
- (void)printDebug;
- (void)readCustomPropertiesJSONForDevice:(void *)device inDatabase:(sqlite3 *)database;
- (void)readDevice:(id)device;
- (void)readDeviceByAddress:(unint64_t)address;
- (void)readDeviceFromDatabase:(sqlite3 *)database statement:(id)statement readResolvedAddress:(BOOL)address;
- (void)removeCustomPropertiesJSONForDeviceUUID:(id)d inDatabase:(sqlite3 *)database;
- (void)removeDevice:(const void *)device internal:(BOOL)internal;
- (void)removeDevicesDuplicatesOf:(unint64_t)of originalUuid:(id)uuid;
- (void)tryLoadProtectedCache;
- (void)updateProtectedCacheMetrics;
- (void)wipeDatabaseNameOrigin:(unint64_t)origin;
- (void)writeCustomPropertiesJSONForDevice:(const void *)device inDatabase:(sqlite3 *)database;
- (void)writeDevice:(const void *)device;
@end

@implementation LeDeviceCache

+ (id)sharedInstance
{
  if (qword_100B6D798 != -1)
  {
    sub_10082A594();
  }

  v3 = qword_100B6D790;

  return v3;
}

- (void)tryLoadProtectedCache
{
  if (!self->_otherDatabase && MKBDeviceUnlockedSinceBoot() == 1 && [(LeDeviceCache *)self loadDatabase:1])
  {

    [(LeDeviceCache *)self updateProtectedCacheMetrics];
  }
}

- (LeDeviceCache)init
{
  v16.receiver = self;
  v16.super_class = LeDeviceCache;
  v2 = [(LeDeviceCache *)&v16 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *&v2->_maxSeenDevices = xmmword_1008A6BC0;
  v2->_pairedDatabase = 0;
  v2->_otherDatabase = 0;
  v15 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "LeDeviceCache");
  sub_100007E30(__p, "MaxConnectedOnDisk");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v18 & 0x80000000) == 0)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_8:
    v6 = v15;
    v7 = qword_100BCE900;
    if (v15 < 1)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082A5A8();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of connected devices to be cached on disk", buf, 8u);
        v6 = v15;
      }

      v3->_maxSeenDevices = v6;
    }

    goto LABEL_14;
  }

  operator delete(*buf);
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_14:
  v8 = sub_10000E92C();
  sub_100007E30(buf, "LeDeviceCache");
  sub_100007E30(__p, "MaxSeenOnDisk");
  v9 = (*(*v8 + 88))(v8, buf, __p, &v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      return v3;
    }
  }

  else if (!v9)
  {
    return v3;
  }

  v10 = v15;
  v11 = qword_100BCE900;
  if (v15 < 1)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082A618();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of seen devices to be cached on disk", buf, 8u);
      v10 = v15;
    }

    v3->_maxConnectedDevices = v10;
  }

  return v3;
}

- (int)_genericExecute:(id)execute inDatabase:(sqlite3 *)database
{
  executeCopy = execute;
  ppStmt = 0;
  v6 = sqlite3_prepare_v2(database, [executeCopy UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    v7 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v8 = executeCopy;
      uTF8String = [executeCopy UTF8String];
      v10 = sqlite3_errmsg(database);
      v11 = sqlite3_extended_errcode(database);
      *buf = 136315906;
      v20 = uTF8String;
      v21 = 1024;
      v22 = v6;
      v23 = 2082;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to prepare statement %s with error %d (%{public}s, %d)", buf, 0x22u);
    }
  }

  else
  {
    v6 = sqlite3_step(ppStmt);
    if (v6 != 101)
    {
      v12 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v14 = executeCopy;
        uTF8String2 = [executeCopy UTF8String];
        v16 = sqlite3_errmsg(database);
        v17 = sqlite3_extended_errcode(database);
        *buf = 136315906;
        v20 = uTF8String2;
        v21 = 1024;
        v22 = v6;
        v23 = 2082;
        v24 = v16;
        v25 = 1024;
        v26 = v17;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to execute statement %s with error %d (%{public}s, %d)", buf, 0x22u);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v6;
}

- (void)clearAllDatabases
{
  v3 = [NSString stringWithFormat:@"DELETE FROM %s", "CustomProperties"];
  v4 = [(LeDeviceCache *)self _genericExecute:v3 inDatabase:self->_pairedDatabase];
  v5 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Executing %@ on _pairedDatabase devices returned %d", buf, 0x12u);
  }

  v6 = [(LeDeviceCache *)self _genericExecute:v3 inDatabase:self->_otherDatabase];
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v3;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Executing %@ on _otherDatabase devices returned %d", buf, 0x12u);
  }

  v8 = [NSString stringWithFormat:@"DELETE FROM %s", [(LeDeviceCache *)self tableNameForType:0]];

  v9 = v8;
  v10 = [(LeDeviceCache *)self _genericExecute:v8 inDatabase:self->_pairedDatabase];
  v11 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Executing %@ on _pairedDatabase devices returned %d", buf, 0x12u);
  }

  v12 = [NSString stringWithFormat:@"DELETE FROM %s", [(LeDeviceCache *)self tableNameForType:1]];

  v13 = [(LeDeviceCache *)self _genericExecute:v12 inDatabase:self->_otherDatabase];
  v14 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v12;
    v17 = 1024;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Executing %@ on _otherDatabase devices returned %d", buf, 0x12u);
  }
}

- (BOOL)initializeDatabases:(LeDeviceCacheEventListener *)databases queue:(dispatch_queue_s *)queue
{
  v7 = objc_autoreleasePoolPush();
  self->_listener = databases;
  v8 = +[NSFileManager defaultManager];
  databaseContainerURL = [(LeDeviceCache *)self databaseContainerURL];
  path = [databaseContainerURL path];
  v11 = [v8 fileExistsAtPath:path];

  if ((v11 & 1) == 0)
  {
    v12 = +[NSFileManager defaultManager];
    databaseContainerURL2 = [(LeDeviceCache *)self databaseContainerURL];
    v39 = 0;
    v14 = [v12 createDirectoryAtURL:databaseContainerURL2 withIntermediateDirectories:1 attributes:0 error:&v39];
    v15 = v39;

    if ((v14 & 1) == 0)
    {
      v16 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        databaseContainerURL3 = [(LeDeviceCache *)self databaseContainerURL];
        path2 = [databaseContainerURL3 path];
        v29 = path2;
        uTF8String = [path2 UTF8String];
        localizedDescription = [v15 localizedDescription];
        v32 = localizedDescription;
        uTF8String2 = [localizedDescription UTF8String];
        *buf = 136315394;
        *&buf[4] = uTF8String;
        v41 = 2082;
        v42 = uTF8String2;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not create directory at path %s with error %{public}s", buf, 0x16u);
      }
    }
  }

  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004211BC;
  handler[3] = &unk_100ADF848;
  handler[4] = self;
  v17 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, queue, handler);
  v18 = qword_100BCE900;
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082A688();
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", buf, 2u);
  }

  if (![(LeDeviceCache *)self loadDatabase:0])
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082A6F8([(LeDeviceCache *)self friendlyNameForType:0], buf);
    }

    goto LABEL_20;
  }

  LODWORD(__p[0]) = 0;
  if ([(LeDeviceCache *)self readIntFromDatabase:self->_pairedDatabase statement:@"SELECT COUNT() FROM PairedDevices" value:__p])
  {
    v19 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = __p[0];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Paired device cache contains %d device(s)", buf, 8u);
    }
  }

  v36 = 0;
  v20 = sub_100017E6C();
  (*(*v20 + 112))(v20, &v36);
  if (v36 != 1)
  {
    v23 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(LeDeviceCache *)self friendlyNameForType:1];
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring request to load '%{public}s' cache as we're before first unlock", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (![(LeDeviceCache *)self loadDatabase:1])
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082A6F8([(LeDeviceCache *)self friendlyNameForType:1], buf);
    }

LABEL_20:
    v22 = 0;
    goto LABEL_28;
  }

  [(LeDeviceCache *)self updateProtectedCacheMetrics];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"SystemKeybagUnlocked", 0, 0, 1u);
LABEL_23:
  v25 = sub_10000E92C();
  sub_100007E30(buf, "LeDeviceCache");
  sub_100007E30(__p, "WipeNameOrigin");
  (*(*v25 + 80))(v25, buf, __p, 0);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v22 = 1;
LABEL_28:
  objc_autoreleasePoolPop(v7);
  return v22;
}

- (id)databaseContainerURL
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v2 = sub_100017E6C();
  (*(*v2 + 176))(v2, __p);
  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = [v4 stringByAppendingPathComponent:@"/Library/Database"];

  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (void)removeDevicesDuplicatesOf:(unint64_t)of originalUuid:(id)uuid
{
  uuidCopy = uuid;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
  {
    v8 = sub_100063D0C();
    *buf = 138543618;
    v33 = uuidCopy;
    v34 = 2114;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing duplicates of %{public}@ (%{public}@)", buf, 0x16u);
  }

  v9 = [(LeDeviceCache *)self duplicatePairedDevicesForAddress:of originalUuid:uuidCopy];
  if (v9)
  {
    v10 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_100063D0C();
      sub_10082A7F0(v11, v31, v9, v10);
    }

    v12 = [(LeDeviceCache *)self tableNameForType:0];
    uUIDString = [uuidCopy UUIDString];
    v14 = sub_100063D0C();
    v15 = sub_100063D0C();
    v16 = [NSString stringWithFormat:@"SELECT Uuid FROM %s WHERE Uuid != '%@' AND (Address = '%@' OR ResolvedAddress = '%@')", v12, uUIDString, v14, v15];

    ppStmt = 0;
    pairedDatabase = self->_pairedDatabase;
    v18 = v16;
    if (!sqlite3_prepare_v2(pairedDatabase, [v16 UTF8String], -1, &ppStmt, 0))
    {
      while (sqlite3_step(ppStmt) == 100)
      {
        v19 = sqlite3_column_text(ppStmt, 0);
        if (v19)
        {
          v20 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            v22 = [(LeDeviceCache *)self friendlyNameForType:0];
            *buf = 136315394;
            v33 = v19;
            v34 = 2080;
            v35 = v22;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Removing stale device %s from '%s' cache", buf, 0x16u);
          }

          v21 = [NSString stringWithUTF8String:v19];
          [(LeDeviceCache *)self removeCustomPropertiesJSONForDeviceUUID:v21 inDatabase:self->_pairedDatabase];
        }
      }

      sqlite3_finalize(ppStmt);
    }

    v23 = [(LeDeviceCache *)self tableNameForType:0];
    uUIDString2 = [uuidCopy UUIDString];
    v25 = sub_100063D0C();
    v26 = sub_100063D0C();
    v27 = [NSString stringWithFormat:@"DELETE FROM %s WHERE Uuid != '%@' AND (Address = '%@' OR ResolvedAddress = '%@')", v23, uUIDString2, v25, v26];

    v28 = self->_pairedDatabase;
    v29 = v27;
    sqlite3_exec(v28, [v27 UTF8String], 0, 0, 0);
  }
}

- (void)loadPairedDevice:(id)device address:(unint64_t)address ifMissing:(BOOL)missing
{
  missingCopy = missing;
  deviceCopy = device;
  if (deviceCopy)
  {
    v9 = [(LeDeviceCache *)self tableNameForType:0];
    uUIDString = [deviceCopy UUIDString];
    v11 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Uuid = '%@'", v9, uUIDString];
  }

  else
  {
    v12 = [(LeDeviceCache *)self tableNameForType:0];
    uUIDString = sub_100063D0C();
    v13 = sub_100063D0C();
    v11 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Address = '%@' OR ResolvedAddress = '%@'", v12, uUIDString, v13];
  }

  v14 = [(LeDeviceCache *)self readDeviceFromDatabase:self->_pairedDatabase statement:v11 readResolvedAddress:1];
  otherDatabase = self->_otherDatabase;
  if (v14)
  {
    if (otherDatabase)
    {
      goto LABEL_20;
    }
  }

  else if (otherDatabase)
  {
    v16 = [(LeDeviceCache *)self tableNameForType:1];
    if (deviceCopy)
    {
      uUIDString2 = [deviceCopy UUIDString];
      [NSString stringWithFormat:@"SELECT * FROM %s WHERE Uuid = '%@'", v16, uUIDString2];
      v11 = v18 = v11;
    }

    else
    {
      uUIDString2 = sub_100063D0C();
      v18 = sub_100063D0C();
      v20 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Address = '%@' OR ResolvedAddress = '%@'", v16, uUIDString2, v18];

      v11 = v20;
    }

    v14 = [(LeDeviceCache *)self readDeviceFromDatabase:self->_otherDatabase statement:v11 readResolvedAddress:1];
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_16:
    v21 = qword_100BCE900;
    if (missingCopy)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_100063D0C();
        v23 = [(LeDeviceCache *)self friendlyNameForType:0];
        *buf = 138543874;
        *&buf[4] = deviceCopy;
        *&buf[12] = 2114;
        *&buf[14] = v22;
        v35 = 2082;
        v36 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to load paired device %{public}@ (%{public}@) from '%{public}s' cache, but thats ok.", buf, 0x20u);
      }

      v14 = 0;
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_100063D0C();
      v26 = [(LeDeviceCache *)self friendlyNameForType:0];
      *buf = 138543874;
      *&buf[4] = deviceCopy;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      v35 = 2082;
      v36 = v26;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to load paired device %{public}@ (%{public}@) from '%{public}s' cache", buf, 0x20u);

      v21 = qword_100BCE900;
      if (deviceCopy)
      {
        goto LABEL_31;
      }
    }

    else if (deviceCopy)
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = sub_100063D0C();
      sub_10082A858(v27, v33);
    }

    *buf = 0;
    *&buf[8] = 0;
    uuid_clear(buf);
    v28 = sub_10009A66C(address);
    v30 = v28;
    v32 = BYTE6(v28);
    v31 = WORD2(v28);
    if (uuid_is_null(buf))
    {
      v29 = 7;
    }

    else
    {
      v29 = 0;
    }

    sub_10009A698(buf, &v30, v29);
    sub_10004DF60(buf);
    objc_claimAutoreleasedReturnValue();
    v21 = qword_100BCE900;
LABEL_31:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100063D0C();
      objc_claimAutoreleasedReturnValue();
      sub_10082A8A4();
    }

    operator new();
  }

  v19 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    *&buf[4] = [(LeDeviceCache *)self friendlyNameForType:1];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Ignoring read as '%{public}s' cache has not been loaded yet", buf, 0xCu);
  }

  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_20:
  [(LeDeviceCache *)self removeDevicesDuplicatesOf:address originalUuid:deviceCopy];

  return v14;
}

- (void)readDevice:(id)device
{
  deviceCopy = device;
  v5 = [(LeDeviceCache *)self tableNameForType:0];
  uUIDString = [deviceCopy UUIDString];
  v7 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Uuid = '%@'", v5, uUIDString];

  v8 = [(LeDeviceCache *)self readDeviceFromDatabase:self->_pairedDatabase statement:v7];
  if (!v8)
  {
    v9 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v17 = deviceCopy;
      v18 = 2082;
      v19 = [(LeDeviceCache *)self friendlyNameForType:0];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Unable to locate device %{public}@ in '%{public}s' cache", buf, 0x16u);
    }

    if (self->_otherDatabase)
    {
      deviceCopy = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Uuid = '%@'", [(LeDeviceCache *)self tableNameForType:1], deviceCopy];

      v8 = [(LeDeviceCache *)self readDeviceFromDatabase:self->_otherDatabase statement:deviceCopy];
      if (!v8)
      {
        v11 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          v12 = [(LeDeviceCache *)self friendlyNameForType:1];
          *buf = 138543618;
          v17 = deviceCopy;
          v18 = 2082;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unable to locate device %{public}@ in '%{public}s' cache", buf, 0x16u);
        }

        v8 = 0;
      }

      v7 = deviceCopy;
    }

    else
    {
      v13 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        v14 = [(LeDeviceCache *)self friendlyNameForType:1];
        *buf = 136446210;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Ignoring read as '%{public}s' cache has not been loaded yet", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)readDeviceByAddress:(unint64_t)address
{
  v4 = [(LeDeviceCache *)self tableNameForType:0];
  v5 = sub_100063D0C();
  v6 = sub_100063D0C();
  v7 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Address = '%@' OR ResolvedAddress = '%@'", v4, v5, v6];

  v8 = [(LeDeviceCache *)self readDeviceFromDatabase:self->_pairedDatabase statement:v7];
  if (!v8)
  {
    v9 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      v10 = sub_100063D0C();
      *buf = 138543618;
      v21 = v10;
      v22 = 2082;
      v23 = [(LeDeviceCache *)self friendlyNameForType:0];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Unable to locate device address %{public}@ in '%{public}s' cache", buf, 0x16u);
    }

    if (self->_otherDatabase)
    {
      v11 = [(LeDeviceCache *)self tableNameForType:1];
      v12 = sub_100063D0C();
      v13 = [NSString stringWithFormat:@"SELECT * FROM %s WHERE Address = '%@'", v11, v12];

      v8 = [(LeDeviceCache *)self readDeviceFromDatabase:self->_otherDatabase statement:v13];
      if (!v8)
      {
        v14 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          v15 = sub_100063D0C();
          v16 = [(LeDeviceCache *)self friendlyNameForType:1];
          *buf = 138543618;
          v21 = v15;
          v22 = 2082;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Unable to locate device address %{public}@ in '%{public}s' cache", buf, 0x16u);
        }

        v8 = 0;
      }

      v7 = v13;
    }

    else
    {
      v17 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        v18 = [(LeDeviceCache *)self friendlyNameForType:1];
        *buf = 136446210;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Ignoring read as '%{public}s' cache has not been loaded yet", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (int)duplicatePairedDevicesForAddress:(unint64_t)address originalUuid:(id)uuid
{
  uuidCopy = uuid;
  v12 = 0;
  v6 = [(LeDeviceCache *)self tableNameForType:0];
  uUIDString = [uuidCopy UUIDString];
  v8 = sub_100063D0C();
  v9 = sub_100063D0C();
  v10 = [NSString stringWithFormat:@"SELECT COUNT() FROM %s WHERE Uuid != '%@' AND (Address = '%@' OR ResolvedAddress = '%@')", v6, uUIDString, v8, v9];

  [(LeDeviceCache *)self readIntFromDatabase:self->_pairedDatabase statement:v10 value:&v12];
  LODWORD(self) = v12;

  return self;
}

- (void)writeDevice:(const void *)device
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(device + 160);
  v7 = v6 ^ 1u;
  v8 = 24;
  if (*(device + 160))
  {
    v8 = 16;
  }

  v48 = *(&self->super.isa + v8);
  context = v5;
  v9 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
  {
    v10 = *device;
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2082;
    *&buf[14] = [(LeDeviceCache *)self friendlyNameForType:v6 ^ 1u];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Writing device %{public}@ to '%{public}s' cache", buf, 0x16u);
  }

  if (self->_otherDatabase || (v6 & 1) != 0)
  {
    [(LeDeviceCache *)self removeDevice:device internal:1, v48, context];
    if ((v6 & 1) == 0)
    {
      [(LeDeviceCache *)self evictIfNeeded:*(device + 34) != 0];
    }

    if (*(device + 24))
    {
      v13 = [NSMutableArray arrayWithCapacity:?];
      v14 = *(device + 22);
      if (v14 != (device + 184))
      {
        do
        {
          v15 = v14 + 4;
          if (*(v14 + 55) < 0)
          {
            v15 = *v15;
          }

          v16 = [NSString stringWithUTF8String:v15];
          [v13 addObject:v16];

          v17 = v14[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v14[2];
              v19 = *v18 == v14;
              v14 = v18;
            }

            while (!v19);
          }

          v14 = v18;
        }

        while (v18 != (device + 184));
      }

      v20 = [v13 componentsJoinedByString:{@", "}];
    }

    else
    {
      v20 = 0;
    }

    if (v6)
    {
      v21 = 32;
    }

    else
    {
      v21 = 40;
    }

    v22 = *(&self->super.isa + v21);
    v23 = *device;
    uUIDString = [v23 UUIDString];
    v25 = uUIDString;
    sqlite3_bind_text(v22, 1, [uUIDString UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    v26 = *(&self->super.isa + v21);
    if (*(device + 127) < 0)
    {
      sub_100008904(buf, *(device + 13), *(device + 14));
    }

    else
    {
      *buf = *(device + 104);
      *&buf[16] = *(device + 15);
    }

    if (buf[23] >= 0)
    {
      v27 = buf;
    }

    else
    {
      v27 = *buf;
    }

    sqlite3_bind_text(v26, 2, v27, -1, 0xFFFFFFFFFFFFFFFFLL);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sqlite3_bind_int(*(&self->super.isa + v21), 3, *(device + 32));
    v28 = *(&self->super.isa + v21);
    v29 = sub_100063D0C();
    v30 = v29;
    sqlite3_bind_text(v28, 4, [v29 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    v31 = *(&self->super.isa + v21);
    v32 = *(device + 3);
    if (v32)
    {
      v29 = sub_100063D0C();
      v33 = v29;
      uTF8String = [v29 UTF8String];
    }

    else
    {
      uTF8String = 0;
    }

    sqlite3_bind_text(v31, 5, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
    if (v32)
    {
    }

    sqlite3_bind_int(*(&self->super.isa + v21), 6, *(device + 33));
    sqlite3_bind_int(*(&self->super.isa + v21), 7, *(device + 34));
    sqlite3_bind_int(*(&self->super.isa + v21), 8, *(device + 162));
    v35 = *(&self->super.isa + v21);
    v36 = v20;
    sqlite3_bind_text(v35, 9, [v20 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v37 = *(&self->super.isa + v21);
    if (*(device + 231) < 0)
    {
      sub_100008904(buf, *(device + 26), *(device + 27));
    }

    else
    {
      *buf = *(device + 13);
      *&buf[16] = *(device + 28);
    }

    if (buf[23] >= 0)
    {
      v38 = buf;
    }

    else
    {
      v38 = *buf;
    }

    sqlite3_bind_text(v37, 10, v38, -1, 0xFFFFFFFFFFFFFFFFLL);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v39 = sqlite3_step(*(&self->super.isa + v21));
    if (v39 == 101)
    {
      [(LeDeviceCache *)self writeCustomPropertiesJSONForDevice:device inDatabase:v49];
      if ((v6 & 1) == 0)
      {
        if (*(device + 34))
        {
          [(LeDeviceCache *)self setConnectedDeviceCount:[(LeDeviceCache *)self connectedDeviceCount]+ 1];
        }

        else
        {
          [(LeDeviceCache *)self setSeenDeviceCount:[(LeDeviceCache *)self seenDeviceCount]+ 1];
        }
      }

      v45 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        v46 = *device;
        v47 = [(LeDeviceCache *)self friendlyNameForType:v7];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2082;
        *&buf[14] = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Successfully wrote device %{public}@ into '%{public}s' cache", buf, 0x16u);
      }
    }

    else
    {
      v40 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v41 = *device;
        v42 = [(LeDeviceCache *)self friendlyNameForType:v6 ^ 1u];
        v43 = sqlite3_errmsg(v49);
        v44 = sqlite3_extended_errcode(v49);
        *buf = 138544386;
        *&buf[4] = v41;
        *&buf[12] = 2082;
        *&buf[14] = v42;
        *&buf[22] = 1024;
        v52 = v39;
        v53 = 2082;
        v54 = v43;
        v55 = 1024;
        v56 = v44;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to write device %{public}@ into '%{public}s' cache with error %d (%{public}s, %d)", buf, 0x2Cu);
      }
    }

    sqlite3_reset(*(&self->super.isa + v21));
    sqlite3_clear_bindings(*(&self->super.isa + v21));
  }

  else
  {
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      context = [(LeDeviceCache *)self friendlyNameForType:1, v48, context];
      *buf = 136446210;
      *&buf[4] = context;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring write as '%{public}s' cache has not been loaded yet", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)removeDevice:(const void *)device internal:(BOOL)internal
{
  v37 = 0;
  v7 = [(LeDeviceCache *)self tableNameForType:0];
  uUIDString = [*device UUIDString];
  v9 = [NSString stringWithFormat:@"SELECT COUNT() FROM %s WHERE Uuid = '%@'", v7, uUIDString];

  [(LeDeviceCache *)self readIntFromDatabase:self->_pairedDatabase statement:v9 value:&v37];
  if (v37)
  {
    v10 = [(LeDeviceCache *)self tableNameForType:0];
    uUIDString2 = [*device UUIDString];
    v12 = [NSString stringWithFormat:@"DELETE FROM %s WHERE Uuid = '%@'", v10, uUIDString2];

    pairedDatabase = self->_pairedDatabase;
    v14 = v12;
    v15 = sqlite3_exec(pairedDatabase, [v12 UTF8String], 0, 0, 0);
    if (!internal && !v15)
    {
      v16 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *device;
        uUIDString3 = [v17 UUIDString];
        v19 = [(LeDeviceCache *)self friendlyNameForType:0];
        *buf = 138543618;
        v39 = uUIDString3;
        v40 = 2082;
        v41 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removed device %{public}@ from '%{public}s' cache", buf, 0x16u);
      }
    }

    v20 = *device;
    uUIDString4 = [v20 UUIDString];
    [(LeDeviceCache *)self removeCustomPropertiesJSONForDeviceUUID:uUIDString4 inDatabase:self->_pairedDatabase];

    goto LABEL_23;
  }

  if (!self->_otherDatabase)
  {
    v31 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      v32 = [(LeDeviceCache *)self friendlyNameForType:1];
      *buf = 136446210;
      v39 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Ignoring read as '%{public}s' cache has not been loaded yet", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v36 = 0;
  v22 = [(LeDeviceCache *)self tableNameForType:1];
  uUIDString5 = [*device UUIDString];
  v12 = [NSString stringWithFormat:@"SELECT LastConnectionTime FROM %s WHERE Uuid = '%@'", v22, uUIDString5];

  if ([(LeDeviceCache *)self readIntFromDatabase:self->_otherDatabase statement:v12 value:&v36])
  {
    v24 = *device;
    uUIDString6 = [v24 UUIDString];
    [(LeDeviceCache *)self removeCustomPropertiesJSONForDeviceUUID:uUIDString6 inDatabase:self->_otherDatabase];

    v26 = [(LeDeviceCache *)self tableNameForType:1];
    uUIDString7 = [*device UUIDString];
    v9 = [NSString stringWithFormat:@"DELETE FROM %s WHERE Uuid = '%@'", v26, uUIDString7];

    otherDatabase = self->_otherDatabase;
    v29 = v9;
    if (sqlite3_exec(otherDatabase, [v9 UTF8String], 0, 0, 0))
    {
      v12 = v9;
      goto LABEL_11;
    }

    if (!internal)
    {
      v33 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *device;
        v35 = [(LeDeviceCache *)self friendlyNameForType:1];
        *buf = 138543618;
        v39 = v34;
        v40 = 2082;
        v41 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Removed device %{public}@ from '%{public}s' cache", buf, 0x16u);
      }
    }

    if (v36)
    {
      [(LeDeviceCache *)self setConnectedDeviceCount:[(LeDeviceCache *)self connectedDeviceCount]- 1];
    }

    else
    {
      [(LeDeviceCache *)self setSeenDeviceCount:[(LeDeviceCache *)self seenDeviceCount]- 1];
    }

LABEL_22:
    v12 = v9;
    goto LABEL_23;
  }

LABEL_11:
  if (!internal)
  {
    v30 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082A900(device, v30);
    }
  }

LABEL_23:
}

- (BOOL)createDatabase:(sqlite3 *)database type:(unint64_t)type path:(const char *)path flags:(int)flags
{
  v10 = sqlite3_open_v2(path, database, flags | 4, 0);
  if (v10)
  {
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v13 = [(LeDeviceCache *)self friendlyNameForType:type];
      v14 = sqlite3_errmsg(*database);
      v15 = sqlite3_extended_errcode(*database);
      v16 = 136447234;
      v17 = v13;
      v18 = 2080;
      pathCopy = path;
      v20 = 1024;
      v21 = v10;
      v22 = 2082;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create '%{public}s' cache at %s with error %d (%{public}s, %d)", &v16, 0x2Cu);
    }

    if (*database)
    {
      sqlite3_close_v2(*database);
      *database = 0;
    }
  }

  else
  {
    [(LeDeviceCache *)self createTablesForDatabase:*database type:type];
  }

  return v10 == 0;
}

- (BOOL)loadDatabase:(unint64_t)database
{
  v93 = +[NSFileManager defaultManager];
  if (database)
  {
    databaseContainerURL = [(LeDeviceCache *)self databaseContainerURL];
    v6 = [databaseContainerURL URLByAppendingPathComponent:@"com.apple.MobileBluetooth.ledevices.other.db"];

    path = [v6 path];
    uTF8String = [path UTF8String];

    path2 = [v6 path];
    p_otherDatabase = &self->_otherDatabase;
    ppStmt = &self->_writeOtherDeviceStmt;
    if ([v93 fileExistsAtPath:path2])
    {
      flags = 3145730;
    }

    else
    {
      v14 = [v93 fileExistsAtPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db"];
      flags = 3145730;

      if (v14)
      {
        v15 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          path3 = [v6 path];
          buf.st_dev = 136315394;
          *&buf.st_mode = "/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = [path3 UTF8String];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Moving LE database from %s to %s", &buf, 0x16u);
        }

        chmod("/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db", 0x1B6u);
        path4 = [v6 path];
        v98 = 0;
        v18 = [v93 copyItemAtPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db" toPath:path4 error:&v98];
        v19 = v98;

        if (v18)
        {
          [v93 removeItemAtPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db" error:0];
        }

        else
        {
          v26 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v19 localizedDescription];
            v83 = localizedDescription;
            uTF8String2 = [localizedDescription UTF8String];
            buf.st_dev = 136446210;
            *&buf.st_mode = uTF8String2;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to move old database to new path: %{public}s", &buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    databaseContainerURL2 = [(LeDeviceCache *)self databaseContainerURL];
    v6 = [databaseContainerURL2 URLByAppendingPathComponent:@"com.apple.MobileBluetooth.ledevices.paired.db"];

    path5 = [v6 path];
    uTF8String = [path5 UTF8String];

    path6 = [v6 path];
    p_otherDatabase = &self->_pairedDatabase;
    ppStmt = &self->_writePairedDeviceStmt;
    if ([v93 fileExistsAtPath:path6])
    {
    }

    else
    {
      v20 = [v93 fileExistsAtPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.paired.db"];

      if (v20)
      {
        v21 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          path7 = [v6 path];
          buf.st_dev = 136315394;
          *&buf.st_mode = "/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.paired.db";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = [path7 UTF8String];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Moving LE database from %s to %s", &buf, 0x16u);
        }

        chmod("/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.paired.db", 0x1B6u);
        path8 = [v6 path];
        v99 = 0;
        v24 = [v93 copyItemAtPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.paired.db" toPath:path8 error:&v99];
        v25 = v99;

        if (v24)
        {
          [v93 removeItemAtPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.paired.db" error:0];
        }

        else
        {
          v27 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            localizedDescription2 = [v25 localizedDescription];
            v86 = localizedDescription2;
            uTF8String3 = [localizedDescription2 UTF8String];
            buf.st_dev = 136446210;
            *&buf.st_mode = uTF8String3;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to move old database to new path: %{public}s", &buf, 0xCu);
          }
        }
      }
    }

    flags = 4194306;
  }

  v28 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.MobileBluetooth.ledevices.plist"];
  v97 = v28 != 0;
  memset(&buf, 0, sizeof(buf));
  if (!stat(uTF8String, &buf))
  {
    if (v97 == 1 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_10082A994();
    }

    v29 = sqlite3_open_v2(uTF8String, p_otherDatabase, flags, 0);
    if (v29)
    {
      v30 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v31 = [(LeDeviceCache *)self friendlyNameForType:database];
        *v100 = 136446722;
        *&v100[4] = v31;
        *&v100[12] = 2080;
        *&v100[14] = uTF8String;
        *&v100[22] = 1024;
        *&v100[24] = v29;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to open '%{public}s' cache at %s, result is %d", v100, 0x1Cu);
      }
    }

    else
    {
      v90 = objc_opt_new();
      [v90 setDateFormat:@"HH:mm:ss_MM-dd-yyyy"];
      if ([(LeDeviceCache *)self readIntFromDatabase:*p_otherDatabase statement:@"SELECT value FROM _SqliteDatabaseProperties WHERE key = '_ClientVersion'" value:&v97])
      {
        v32 = [NSString stringWithFormat:@"SELECT COUNT() FROM sqlite_master WHERE type='table' AND name='%s'", [(LeDeviceCache *)self tableNameForType:database]];;
        v103[0] = 0;
        v89 = v32;
        v33 = [(LeDeviceCache *)self readIntFromDatabase:*p_otherDatabase statement:v32 value:v103];
        if (v103[0])
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        if (v34)
        {
          v35 = [NSString stringWithFormat:@"CREATE INDEX IF NOT EXISTS UuidIndex ON %s(Uuid)", [(LeDeviceCache *)self tableNameForType:database]];;
          v36 = *p_otherDatabase;
          v37 = v35;
          v38 = sqlite3_exec(v36, [v35 UTF8String], 0, 0, 0);
          v39 = qword_100BCE900;
          if (v38)
          {
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              v40 = sqlite3_errmsg(*p_otherDatabase);
              v41 = sqlite3_extended_errcode(*p_otherDatabase);
              *v100 = 67109634;
              *&v100[4] = v38;
              *&v100[8] = 2080;
              *&v100[10] = v40;
              *&v100[18] = 1024;
              *&v100[20] = v41;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to create Uuid index with error %d (%s, %d)", v100, 0x18u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
            {
              v54 = [(LeDeviceCache *)self friendlyNameForType:database];
              *v100 = 136446210;
              *&v100[4] = v54;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Created index for '%{public}s'", v100, 0xCu);
            }

            v55 = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %s (%s TEXT, %s TEXT, UNIQUE(%s))CREATE INDEX IF NOT EXISTS %s ON %s (%s);", "CustomProperties", "Uuid", "JSON", "Uuid", "CustomPropertiesIndex", "CustomProperties", "Uuid"];;
            v56 = *p_otherDatabase;
            v88 = v55;
            v57 = v55;
            v58 = v88;
            v59 = sqlite3_exec(v56, [v88 UTF8String], 0, 0, 0);
            v60 = qword_100BCE900;
            if (v59)
            {
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
              {
                v61 = sqlite3_errmsg(*p_otherDatabase);
                v62 = sqlite3_extended_errcode(*p_otherDatabase);
                *v100 = 67109634;
                *&v100[4] = v59;
                *&v100[8] = 2080;
                *&v100[10] = v61;
                *&v100[18] = 1024;
                *&v100[20] = v62;
                _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to create CustomProperties table and index with error %d (%s, %d)", v100, 0x18u);
                v58 = v88;
              }
            }

            else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
            {
              v63 = [(LeDeviceCache *)self friendlyNameForType:database];
              *v100 = 136446210;
              *&v100[4] = v63;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Verified CustomProperties table is ready and indexed for '%{public}s'", v100, 0xCu);
            }
          }
        }

        else
        {
          v48 = +[NSDate date];
          v49 = [v90 stringFromDate:v48];
          v50 = [NSString stringWithFormat:@"%s.%@.corrupt", uTF8String, v49];
          v51 = v50;
          uTF8String4 = [v50 UTF8String];
          rename(uTF8String, uTF8String4, v53);

          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
          {
            [(LeDeviceCache *)self friendlyNameForType:database];
            sub_10082AA08();
          }

          v97 = 0;
          sqlite3_close_v2(*p_otherDatabase);
          *p_otherDatabase = 0;
        }
      }

      else
      {
        v42 = +[NSDate date];
        v43 = [v90 stringFromDate:v42];
        v44 = [NSString stringWithFormat:@"%s.%@.corrupt", uTF8String, v43];
        v45 = v44;
        uTF8String5 = [v44 UTF8String];
        rename(uTF8String, uTF8String5, v47);

        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
        {
          [(LeDeviceCache *)self friendlyNameForType:database];
          sub_10082A9C8();
        }

        sqlite3_close_v2(*p_otherDatabase);
        *p_otherDatabase = 0;
      }
    }
  }

  v64 = qword_100BCE900;
  if (!v97)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [(LeDeviceCache *)self friendlyNameForType:database];
      *v100 = 136446210;
      *&v100[4] = v67;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Current '%{public}s' cache version is: none", v100, 0xCu);
    }

    if ([(LeDeviceCache *)self createDatabase:p_otherDatabase type:database path:uTF8String flags:flags])
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  if (v97 != 1)
  {
    if (v97 == 2)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [(LeDeviceCache *)self friendlyNameForType:database];
        *v100 = 136446466;
        *&v100[4] = v65;
        *&v100[12] = 1024;
        *&v100[14] = v97;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Current '%{public}s' cache version is: up-to-date (v%d)", v100, 0x12u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      [(LeDeviceCache *)self friendlyNameForType:database];
      sub_10082AA48();
    }

    goto LABEL_70;
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v66 = [(LeDeviceCache *)self friendlyNameForType:database];
    *v100 = 136446210;
    *&v100[4] = v66;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Current '%{public}s' cache version is: legacy plist", v100, 0xCu);
  }

  if (![(LeDeviceCache *)self createDatabase:p_otherDatabase type:database path:uTF8String flags:flags])
  {
LABEL_67:
    v68 = 0;
    goto LABEL_89;
  }

  [(LeDeviceCache *)self migratePlistData:v28 database:*p_otherDatabase type:database];
LABEL_70:
  if (*p_otherDatabase)
  {
    sqlite3_extended_result_codes(*p_otherDatabase, 1);
    sqlite3_exec(*p_otherDatabase, "PRAGMA journal_mode = 'wal'", 0, 0, 0);
  }

  v69 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v70 = [(LeDeviceCache *)self friendlyNameForType:database];
    *v100 = 136446210;
    *&v100[4] = v70;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Successfully loaded '%{public}s' cache from disk", v100, 0xCu);
  }

  v71 = [NSString stringWithFormat:@"INSERT INTO %s (Uuid, Name, NameOrigin, Address, ResolvedAddress, LastSeenTime, LastConnectionTime, GATTServiceChangeConfig, Tags, iCloudIdentifier) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10)", [(LeDeviceCache *)self tableNameForType:database]];
  v72 = *p_otherDatabase;
  v73 = v71;
  v74 = sqlite3_prepare_v2(v72, [v71 UTF8String], -1, ppStmt, 0);
  if (v74)
  {
    v75 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v79 = [(LeDeviceCache *)self friendlyNameForType:database];
      v80 = sqlite3_errmsg(*p_otherDatabase);
      v81 = sqlite3_extended_errcode(*p_otherDatabase);
      *v100 = 136446978;
      *&v100[4] = v79;
      *&v100[12] = 1024;
      *&v100[14] = v74;
      *&v100[18] = 2082;
      *&v100[20] = v80;
      v101 = 1024;
      v102 = v81;
      _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Failed to create prepared write statement for '%{public}s' cache with error %d (%{public}s, %d)", v100, 0x22u);
    }
  }

  v96 = 0;
  v76 = sub_10000E92C();
  sub_100007E30(v100, "LeDeviceCache");
  sub_100007E30(__p, "WipeNameOrigin");
  (*(*v76 + 72))(v76, v100, __p, &v96);
  if (v95 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v100[23] & 0x80000000) != 0)
  {
    operator delete(*v100);
  }

  if (qword_100B50910 != -1)
  {
    sub_10082AAA8();
  }

  if ((sub_1005BBA10(off_100B50908) & 1) != 0 || v96 == 1)
  {
    v77 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "LeDeviceCache Wipe Name Origin for all LE devices", v100, 2u);
    }

    [(LeDeviceCache *)self wipeDatabaseNameOrigin:database];
  }

  v68 = 1;
LABEL_89:

  return v68;
}

- (void)createTablesForDatabase:(sqlite3 *)database type:(unint64_t)type
{
  v7 = [NSString stringWithFormat:@"DROP TABLE IF EXISTS _SqliteDatabasePropertiesCREATE TABLE _SqliteDatabaseProperties(key TEXT, value TEXT, UNIQUE(key));INSERT INTO _SqliteDatabaseProperties (key, value) VALUES ('_ClientVersion', %d);DROP TABLE IF EXISTS %s;CREATE TABLE %s(Uuid TEXT, Name TEXT, NameOrigin INT, Address TEXT, ResolvedAddress TEXT, LastSeenTime INT, LastConnectionTime INT, GATTServiceChangeConfig INT, Tags TEXT, iCloudIdentifier TEXT);DROP INDEX IF EXISTS %s;DROP TABLE IF EXISTS %s;CREATE TABLE %s (%s TEXT, %s TEXT, UNIQUE(%s));CREATE INDEX IF NOT EXISTS %s ON %s (%s);", 2, [(LeDeviceCache *)self tableNameForType:type], [(LeDeviceCache *)self tableNameForType:type], "CustomPropertiesIndex", "CustomProperties", "CustomProperties", "Uuid", "JSON", "Uuid", "CustomPropertiesIndex", "CustomProperties", "Uuid"];;
  v8 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *v15 = [(LeDeviceCache *)self friendlyNameForType:type];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating new '%{public}s' cache", buf, 0xCu);
  }

  v9 = v7;
  v10 = sqlite3_exec(database, [v7 UTF8String], 0, 0, 0);
  if (v10)
  {
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg(database);
      v13 = sqlite3_extended_errcode(database);
      *buf = 67109634;
      *v15 = v10;
      *&v15[4] = 2082;
      *&v15[6] = v12;
      v16 = 1024;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create tables with error %d (%{public}s, %d)", buf, 0x18u);
    }
  }
}

- (void)migratePlistData:(id)data database:(sqlite3 *)database type:(unint64_t)type
{
  dataCopy = data;
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *v86 = [(LeDeviceCache *)self friendlyNameForType:type];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrating '%{public}s' cache from legacy plist", buf, 0xCu);
  }

  v7 = sqlite3_exec(database, "CREATE TABLE Temp(Uuid TEXT, Name TEXT, NameOrigin INT, Address TEXT, ResolvedAddress TEXT, LastSeenTime INT, LastConnectionTime INT, GATTServiceChangeConfig INT, Tags TEXT, iCloudIdentifier TEXT)", 0, 0, 0);
  if (v7)
  {
    v8 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v64 = sqlite3_errmsg(database);
      v65 = sqlite3_extended_errcode(database);
      *buf = 67109634;
      *v86 = v7;
      *&v86[4] = 2082;
      *&v86[6] = v64;
      *&v86[14] = 1024;
      *&v86[16] = v65;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create temporary table with error %d (%{public}s, %d)", buf, 0x18u);
    }
  }

  v9 = [NSString stringWithUTF8String:[(LeDeviceCache *)self tableNameForType:type]];
  v81 = [dataCopy objectForKeyedSubscript:v9];

  keyEnumerator = [v81 keyEnumerator];
  ppStmt = 0;
  v10 = sqlite3_prepare_v2(database, "INSERT INTO Temp (Uuid, Name, NameOrigin, Address, ResolvedAddress, LastSeenTime, LastConnectionTime, GATTServiceChangeConfig, Tags, iCloudIdentifier) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10)", -1, &ppStmt, 0);
  db = database;
  if (v10)
  {
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg(database);
      v13 = sqlite3_extended_errcode(database);
      *buf = 67109634;
      *v86 = v10;
      *&v86[4] = 2082;
      *&v86[6] = v12;
      *&v86[14] = 1024;
      *&v86[16] = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create prepared write statement for temporary cache with error %d (%{public}s, %d)", buf, 0x18u);
    }
  }

  else
  {
    while (1)
    {
      nextObject = [keyEnumerator nextObject];
      if (!nextObject)
      {
        break;
      }

      v15 = nextObject;
      v16 = [v81 objectForKeyedSubscript:v15];
      v17 = ppStmt;
      v18 = v15;
      sqlite3_bind_text(v17, 1, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      v19 = ppStmt;
      v20 = [v16 objectForKeyedSubscript:@"Name"];
      v21 = v20;
      sqlite3_bind_text(v19, 2, [v20 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v22 = ppStmt;
      v23 = [v16 objectForKeyedSubscript:@"NameOrigin"];
      sqlite3_bind_int(v22, 3, [v23 intValue]);

      v24 = ppStmt;
      v25 = [v16 objectForKeyedSubscript:@"Address"];
      v26 = v25;
      sqlite3_bind_text(v24, 4, [v25 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v27 = ppStmt;
      v28 = [v16 objectForKeyedSubscript:@"ResolvedAddress"];
      v29 = v28;
      sqlite3_bind_text(v27, 5, [v28 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v30 = ppStmt;
      v31 = [v16 objectForKeyedSubscript:@"LastSeenTime"];
      sqlite3_bind_int(v30, 6, [v31 intValue]);

      v32 = ppStmt;
      v33 = [v16 objectForKeyedSubscript:@"LastConnectionTime"];
      sqlite3_bind_int(v32, 7, [v33 intValue]);

      v34 = ppStmt;
      v35 = [v16 objectForKeyedSubscript:@"GATTServiceChangeConfig"];
      sqlite3_bind_int(v34, 8, [v35 intValue]);

      v36 = ppStmt;
      v37 = [v16 objectForKeyedSubscript:@"Tags"];
      v38 = [v37 componentsJoinedByString:{@", "}];
      v39 = v38;
      sqlite3_bind_text(v36, 9, [v38 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v40 = ppStmt;
      v41 = [v16 objectForKeyedSubscript:@"iCloudIdentifier"];
      v42 = v41;
      sqlite3_bind_text(v40, 10, [v41 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v43 = sqlite3_step(ppStmt);
      if (v43 != 101)
      {
        v44 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          v45 = v15;
          uTF8String = [v15 UTF8String];
          v47 = sqlite3_errmsg(db);
          v48 = sqlite3_extended_errcode(db);
          *buf = 136446978;
          *v86 = uTF8String;
          *&v86[8] = 1024;
          *&v86[10] = v43;
          *&v86[14] = 2082;
          *&v86[16] = v47;
          v87 = 1024;
          v88 = v48;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to migrate device %{public}s with error %d (%{public}s, %d)", buf, 0x22u);
        }
      }

      sqlite3_reset(ppStmt);
      sqlite3_clear_bindings(ppStmt);
    }

    sqlite3_finalize(ppStmt);
  }

  v49 = [NSString stringWithFormat:@"INSERT INTO %s SELECT * FROM Temp ORDER BY LastConnectionTime, LastSeenTime ASC DROP TABLE Temp", [(LeDeviceCache *)self tableNameForType:type]];;
  v50 = v49;
  v51 = sqlite3_exec(db, [v49 UTF8String], 0, 0, 0);
  if (v51)
  {
    v52 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v66 = sqlite3_errmsg(db);
      v67 = sqlite3_extended_errcode(db);
      *buf = 67109634;
      *v86 = v51;
      *&v86[4] = 2082;
      *&v86[6] = v66;
      *&v86[14] = 1024;
      *&v86[16] = v67;
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to insert from temporary table with error %d (%{public}s, %d)", buf, 0x18u);
    }
  }

  v53 = [NSString stringWithFormat:@"UPDATE %s SET LastSeenTime = ROWID WHERE LastSeenTime > 0 UPDATE %s SET LastConnectionTime = ROWID WHERE LastConnectionTime > 0", [(LeDeviceCache *)self tableNameForType:type], [(LeDeviceCache *)self tableNameForType:type]];;

  v54 = v53;
  v55 = sqlite3_exec(db, [v53 UTF8String], 0, 0, 0);
  if (v55)
  {
    v56 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v68 = sqlite3_errmsg(db);
      v69 = sqlite3_extended_errcode(db);
      *buf = 67109634;
      *v86 = v55;
      *&v86[4] = 2082;
      *&v86[6] = v68;
      *&v86[14] = 1024;
      *&v86[16] = v69;
      _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to update from temporary table with error %d (%{public}s, %d)", buf, 0x18u);
    }
  }

  if (type == 1)
  {
    v57 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v86 = "/var/mobile/Library/Preferences/com.apple.MobileBluetooth.ledevices.plist";
      *&v86[8] = 2080;
      *&v86[10] = "/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.plist";
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Backing up legacy plist from %s to %s", buf, 0x16u);
    }

    v58 = +[NSFileManager defaultManager];
    v83 = 0;
    [v58 copyItemAtPath:@"/var/mobile/Library/Preferences/com.apple.MobileBluetooth.ledevices.plist" toPath:@"/var/mobile/Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.plist" error:&v83];
    v59 = v83;

    if (v59)
    {
      v60 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v59 localizedDescription];
        v71 = localizedDescription;
        uTF8String2 = [localizedDescription UTF8String];
        *buf = 136446210;
        *v86 = uTF8String2;
        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to backup legacy plist with error %{public}s", buf, 0xCu);
      }
    }

    v61 = +[NSFileManager defaultManager];
    v82 = 0;
    [v61 removeItemAtPath:@"/var/mobile/Library/Preferences/com.apple.MobileBluetooth.ledevices.plist" error:&v82];
    v62 = v82;

    if (v62)
    {
      v63 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v62 localizedDescription];
        v74 = localizedDescription2;
        uTF8String3 = [localizedDescription2 UTF8String];
        *buf = 136446210;
        *v86 = uTF8String3;
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to clean up legacy plist with error %{public}s", buf, 0xCu);
      }
    }
  }
}

- (void)wipeDatabaseNameOrigin:(unint64_t)origin
{
  v5 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Other";
    if (!origin)
    {
      v6 = "Paired";
    }

    *buf = 136446210;
    *v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wipe Name Origin of %{public}s LE Device Database", buf, 0xCu);
  }

  v7 = 24;
  if (!origin)
  {
    v7 = 16;
  }

  v8 = *(&self->super.isa + v7);
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"UPDATE %s SET NameOrigin = %d WHERE iCloudIdentifier = ''", [(LeDeviceCache *)self tableNameForType:origin], 1];
    v10 = v9;
    v11 = sqlite3_exec(v8, [v9 UTF8String], 0, 0, 0);
    if (v11)
    {
      v12 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v13 = sqlite3_errmsg(v8);
        v14 = sqlite3_extended_errcode(v8);
        *buf = 67109634;
        *v16 = v11;
        *&v16[4] = 2082;
        *&v16[6] = v13;
        v17 = 1024;
        v18 = v14;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to wipe name origin column of the table with error %d (%{public}s, %d)", buf, 0x18u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10082AAD0();
  }
}

- (void)updateProtectedCacheMetrics
{
  v11 = 0;
  if (![(LeDeviceCache *)self readIntFromDatabase:self->_otherDatabase statement:@"SELECT COUNT() FROM OtherDevices WHERE LastSeenTime > 0 AND LastConnectionTime = 0" value:&self->_seenDeviceCount]&& os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10082AB0C();
  }

  if (![(LeDeviceCache *)self readIntFromDatabase:self->_otherDatabase statement:@"SELECT COUNT() FROM OtherDevices WHERE LastConnectionTime > 0" value:&self->_connectedDeviceCount]&& os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10082AB48();
  }

  if (![(LeDeviceCache *)self readIntFromDatabase:self->_otherDatabase statement:@"SELECT MAX(LastSeenTime) FROM OtherDevices" value:&v11 + 4]&& os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10082AB84();
  }

  v3 = [(LeDeviceCache *)self readIntFromDatabase:self->_otherDatabase statement:@"SELECT MAX(LastConnectionTime) FROM OtherDevices" value:&v11];
  v4 = qword_100BCE900;
  if ((v3 & 1) == 0 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to find the maximum last connected time", buf, 2u);
    v4 = qword_100BCE900;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    connectedDeviceCount = [(LeDeviceCache *)self connectedDeviceCount];
    seenDeviceCount = [(LeDeviceCache *)self seenDeviceCount];
    *buf = 67109376;
    v13 = connectedDeviceCount;
    v14 = 1024;
    v15 = seenDeviceCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpaired device cache contains %d connected device(s) and %d seen device(s)", buf, 0xEu);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100425488;
  block[3] = &unk_100AE1200;
  block[4] = self;
  v9 = HIDWORD(v11);
  v10 = v11;
  dispatch_async(global_queue, block);
}

- (const)tableNameForType:(unint64_t)type
{
  if (type)
  {
    return "OtherDevices";
  }

  else
  {
    return "PairedDevices";
  }
}

- (const)friendlyNameForType:(unint64_t)type
{
  if (type)
  {
    return "other devices";
  }

  else
  {
    return "paired devices";
  }
}

- (BOOL)readIntFromDatabase:(sqlite3 *)database statement:(id)statement value:(int *)value
{
  statementCopy = statement;
  ppStmt = 0;
  if (sqlite3_prepare_v2(database, [statementCopy UTF8String], -1, &ppStmt, 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = sqlite3_step(ppStmt);
    v8 = v9 == 100;
    if (v9 == 100)
    {
      *value = sqlite3_column_int(ppStmt, 0);
    }

    sqlite3_finalize(ppStmt);
  }

  return v8;
}

- (vector<std::string,)findUUIDsWithCustomProperties:(LeDeviceCache *)self
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v7 = [NSString stringWithFormat:@"SELECT * FROM %s", "CustomProperties"];
  ppStmt = 0;
  if (!sqlite3_prepare_v2(self->_otherDatabase, [v7 UTF8String], -1, &ppStmt, 0))
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      v8 = sqlite3_column_text(ppStmt, 0);
      v9 = sqlite3_column_text(ppStmt, 1);
      if (v9 && v8)
      {
        v10 = [NSString stringWithUTF8String:v9];
        v11 = [NSString stringWithUTF8String:v8];
        if ([(LeDeviceCache *)self json:v10 hasAnyProperty:v6])
        {
          sub_100007E30(__p, [v11 UTF8String]);
          sub_10034A52C(retstr, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (!sqlite3_prepare_v2(self->_pairedDatabase, [v7 UTF8String], -1, &ppStmt, 0))
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      v12 = sqlite3_column_text(ppStmt, 0);
      v13 = sqlite3_column_text(ppStmt, 1);
      if (v13 && v12)
      {
        v14 = [NSString stringWithUTF8String:v13];
        v15 = [NSString stringWithUTF8String:v12];
        if ([(LeDeviceCache *)self json:v14 hasAnyProperty:v6])
        {
          sub_100007E30(__p, [v15 UTF8String]);
          sub_10034A52C(retstr, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return result;
}

- (vector<std::string,)findUUIDsWithAllCustomProperties:(LeDeviceCache *)self
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v7 = [NSString stringWithFormat:@"SELECT * FROM %s", "CustomProperties"];
  ppStmt = 0;
  if (!sqlite3_prepare_v2(self->_otherDatabase, [v7 UTF8String], -1, &ppStmt, 0))
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      v8 = sqlite3_column_text(ppStmt, 0);
      v9 = sqlite3_column_text(ppStmt, 1);
      if (v9 && v8)
      {
        v10 = [NSString stringWithUTF8String:v9];
        v11 = [NSString stringWithUTF8String:v8];
        if ([(LeDeviceCache *)self json:v10 hasAllProperties:v6])
        {
          sub_100007E30(__p, [v11 UTF8String]);
          sub_10034A52C(retstr, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (!sqlite3_prepare_v2(self->_pairedDatabase, [v7 UTF8String], -1, &ppStmt, 0))
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      v12 = sqlite3_column_text(ppStmt, 0);
      v13 = sqlite3_column_text(ppStmt, 1);
      if (v13 && v12)
      {
        v14 = [NSString stringWithUTF8String:v13];
        v15 = [NSString stringWithUTF8String:v12];
        if ([(LeDeviceCache *)self json:v14 hasAllProperties:v6])
        {
          sub_100007E30(__p, [v15 UTF8String]);
          sub_10034A52C(retstr, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return result;
}

- (id)customPropertiesJSONFromDevice:(const void *)device
{
  deviceCopy = device;
  if (device)
  {
    v4 = sub_1000C7A04(device);
    v5 = v4;
    if (!v4 || ![v4 count])
    {
      deviceCopy = 0;
LABEL_23:

      goto LABEL_24;
    }

    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = sub_10077C3B8(deviceCopy, v11);
          if (v13)
          {
            [v6 setValue:v13 forKey:v11];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if ([NSJSONSerialization isValidJSONObject:v6])
    {
      v14 = [NSString alloc];
      v18 = 0;
      v15 = [NSJSONSerialization dataWithJSONObject:v6 options:3 error:&v18];
      v16 = v18;
      deviceCopy = [v14 initWithData:v15 encoding:4];

      if (!v16)
      {
        v5 = v7;
        goto LABEL_22;
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082AC30();
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082ABC0();
    }

    deviceCopy = 0;
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:

  return deviceCopy;
}

- (BOOL)json:(id)json hasAnyProperty:(id)property
{
  jsonCopy = json;
  propertyCopy = property;
  if (jsonCopy)
  {
    v7 = [jsonCopy dataUsingEncoding:4];
    v22 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:17 error:&v22];
    v9 = v22;

    if (v9)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082ACAC();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = propertyCopy;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v12)
        {
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              allKeys = [v9 allKeys];
              LOBYTE(v15) = [allKeys containsObject:v15];

              if (v15)
              {

                v10 = 1;
                goto LABEL_19;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082AD28();
      }
    }

    v10 = 0;
LABEL_19:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)json:(id)json hasAllProperties:(id)properties
{
  jsonCopy = json;
  propertiesCopy = properties;
  if (jsonCopy)
  {
    v7 = [jsonCopy dataUsingEncoding:4];
    v16 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:17 error:&v16];
    v9 = v16;

    if (v9)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082ADA4();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v8;
        allKeys = [v11 allKeys];
        v13 = [NSSet setWithArray:allKeys];

        v14 = [NSSet setWithArray:propertiesCopy];
        v10 = [v14 isSubsetOfSet:v13];

LABEL_11:
        goto LABEL_12;
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082AE20();
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)customPropertiesToDevice:(void *)device fromJSON:(id)n
{
  nCopy = n;
  v6 = nCopy;
  if (device && nCopy)
  {
    v7 = [nCopy dataUsingEncoding:4];
    v21 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:17 error:&v21];
    v16 = v21;

    if (v16 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082AE9C();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      allKeys = [v9 allKeys];
      v11 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v11)
      {
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(allKeys);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            v15 = [v9 objectForKey:v14];
            sub_10077C454(device, v14, v15);
          }

          v11 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v11);
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082AF18();
    }
  }
}

- (void)writeCustomPropertiesJSONForDevice:(const void *)device inDatabase:(sqlite3 *)database
{
  if (device && database)
  {
    v7 = *device;
    if (v7)
    {
      v8 = [(LeDeviceCache *)self customPropertiesJSONFromDevice:device];
      if (v8)
      {
        ppStmt = 0;
        v9 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO %s (%s, %s) VALUES (?1, ?2)", "CustomProperties", "Uuid", "JSON"];
        if (sqlite3_prepare_v2(database, [v9 UTF8String], -1, &ppStmt, 0))
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_10082B03C();
          }
        }

        else
        {
          v11 = ppStmt;
          uUIDString = [v7 UUIDString];
          v13 = uUIDString;
          sqlite3_bind_text(v11, 1, [uUIDString UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

          v14 = ppStmt;
          v15 = v8;
          sqlite3_bind_text(v14, 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          v16 = sqlite3_step(ppStmt);
          if (v16 != 101)
          {
            v17 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              v18 = sqlite3_errmsg(database);
              v19 = sqlite3_extended_errcode(database);
              *buf = 67109634;
              v22 = v16;
              v23 = 2082;
              v24 = v18;
              v25 = 1024;
              v26 = v19;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create prepared write statement for Custom Properties cache with error %d (%{public}s, %d)", buf, 0x18u);
            }
          }

          sqlite3_reset(ppStmt);
          sqlite3_clear_bindings(ppStmt);
          sqlite3_finalize(ppStmt);
        }
      }

      else
      {
        uUIDString2 = [v7 UUIDString];
        [(LeDeviceCache *)self removeCustomPropertiesJSONForDeviceUUID:uUIDString2 inDatabase:database];
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082B0AC();
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10082AF94();
  }
}

- (void)removeCustomPropertiesJSONForDeviceUUID:(id)d inDatabase:(sqlite3 *)database
{
  dCopy = d;
  v7 = [(LeDeviceCache *)self readCustomPropertiesJSONForDeviceUUID:dCopy inDatabase:database];

  if (v7)
  {
    dCopy = [NSString stringWithFormat:@"DELETE FROM %s WHERE %s = '%@'", "CustomProperties", "Uuid", dCopy];
    ppStmt = 0;
    v9 = sqlite3_prepare_v2(database, [dCopy UTF8String], -1, &ppStmt, 0);
    if (v9)
    {
      v10 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v11 = dCopy;
        uTF8String = [dCopy UTF8String];
        v13 = sqlite3_errmsg(database);
        v14 = sqlite3_extended_errcode(database);
        *buf = 136315906;
        v23 = uTF8String;
        v24 = 1024;
        v25 = v9;
        v26 = 2082;
        v27 = v13;
        v28 = 1024;
        v29 = v14;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to prepare statement %s with error %d (%{public}s, %d)", buf, 0x22u);
      }
    }

    else
    {
      v15 = sqlite3_step(ppStmt);
      if (v15 != 101)
      {
        v16 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          v17 = dCopy;
          uTF8String2 = [dCopy UTF8String];
          v19 = sqlite3_errmsg(database);
          v20 = sqlite3_extended_errcode(database);
          *buf = 136315906;
          v23 = uTF8String2;
          v24 = 1024;
          v25 = v15;
          v26 = 2082;
          v27 = v19;
          v28 = 1024;
          v29 = v20;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to execute statement %s with error %d (%{public}s, %d)", buf, 0x22u);
        }
      }

      sqlite3_finalize(ppStmt);
    }
  }
}

- (id)readCustomPropertiesJSONForDeviceUUID:(id)d inDatabase:(sqlite3 *)database
{
  dCopy = d;
  v6 = 0;
  if (dCopy && database)
  {
    dCopy = [NSString stringWithFormat:@"SELECT * FROM %s WHERE %s = '%@'", "CustomProperties", "Uuid", dCopy];
    ppStmt = 0;
    v8 = sqlite3_prepare_v2(database, [dCopy UTF8String], -1, &ppStmt, 0);
    if (v8)
    {
      v9 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v13 = dCopy;
        uTF8String = [dCopy UTF8String];
        v15 = sqlite3_errmsg(database);
        v16 = sqlite3_extended_errcode(database);
        *buf = 136315906;
        v19 = uTF8String;
        v20 = 1024;
        v21 = v8;
        v22 = 2082;
        v23 = v15;
        v24 = 1024;
        v25 = v16;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to execute statement %s with error %d (%{public}s, %d)", buf, 0x22u);
      }

      v6 = 0;
      goto LABEL_15;
    }

    v10 = sqlite3_step(ppStmt);
    if (v10 != 101)
    {
      if (v10 == 100)
      {
        v11 = sqlite3_column_text(ppStmt, 1);
        if (v11)
        {
          v6 = [NSString stringWithUTF8String:v11];
LABEL_14:
          sqlite3_finalize(ppStmt);
LABEL_15:

          goto LABEL_16;
        }
      }

      else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082B0E8();
      }
    }

    v6 = 0;
    goto LABEL_14;
  }

LABEL_16:

  return v6;
}

- (void)readCustomPropertiesJSONForDevice:(void *)device inDatabase:(sqlite3 *)database
{
  if (device && database)
  {
    v7 = *device;
    v8 = v7;
    if (v7)
    {
      uUIDString = [v7 UUIDString];
      v10 = [(LeDeviceCache *)self readCustomPropertiesJSONForDeviceUUID:uUIDString inDatabase:database];

      if (v10)
      {
        [(LeDeviceCache *)self customPropertiesToDevice:device fromJSON:v10];
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10082B158();
    }
  }
}

- (void)readDeviceFromDatabase:(sqlite3 *)database statement:(id)statement readResolvedAddress:(BOOL)address
{
  statementCopy = statement;
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(database, [statementCopy UTF8String], -1, &ppStmt, 0);
  if (v7)
  {
    v8 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v19 = statementCopy;
      uTF8String = [statementCopy UTF8String];
      v21 = sqlite3_errmsg(database);
      v22 = sqlite3_extended_errcode(database);
      *buf = 136315906;
      *&buf[4] = uTF8String;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2082;
      *&buf[20] = v21;
      *&buf[28] = 1024;
      *&buf[30] = v22;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to execute statement %s with error %d (%{public}s, %d)", buf, 0x22u);
    }

    goto LABEL_30;
  }

  v9 = sqlite3_step(ppStmt);
  if (v9 == 101)
  {
    goto LABEL_29;
  }

  if (v9 == 100)
  {
    v10 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    *buf = &v33;
    *&buf[8] = &v32;
    *&buf[16] = &v27;
    *&buf[24] = &v31;
    *&buf[32] = &v30;
    v37 = &v26;
    v38 = &v25;
    v39 = &v24;
    v40 = &v29;
    v41 = &v28;
    v24 = 0;
    while (1)
    {
      v11 = qword_100BCE4E0[v10];
      if (v11 == objc_opt_class())
      {
        v15 = sqlite3_column_text(ppStmt, v10);
        if (!v15)
        {
          goto LABEL_16;
        }

        v13 = *&buf[8 * v10];
        if (*v13)
        {
          goto LABEL_16;
        }

        v14 = [NSString stringWithUTF8String:v15];
      }

      else
      {
        v12 = qword_100BCE4E0[v10];
        if (v12 != objc_opt_class())
        {
          goto LABEL_16;
        }

        v13 = *&buf[8 * v10];
        if (*v13)
        {
          goto LABEL_16;
        }

        v14 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, v10)];
      }

      v16 = *v13;
      *v13 = v14;

LABEL_16:
      if (++v10 == 10)
      {
        v17 = [NSUUID alloc];
        v18 = [v17 initWithUUIDString:v33];
        if (!v31 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
        {
          sub_10082B194([v33 UTF8String], v35);
        }

        if (v18)
        {
          if (v31)
          {
            operator new();
          }
        }

        else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
        {
          [v31 UTF8String];
          [v33 UTF8String];
          sub_10082B1D8();
        }

        goto LABEL_29;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10082B218();
  }

LABEL_29:
  sqlite3_finalize(ppStmt);
LABEL_30:

  return 0;
}

- (id)nameFromSanitizedName:(id)name
{
  v3 = [name componentsSeparatedByString:@"///900"];
  v4 = [v3 componentsJoinedByString:@"’"];

  v5 = [v4 componentsSeparatedByString:@"///901"];
  v6 = [v5 componentsJoinedByString:@"'"];

  v7 = [v6 componentsSeparatedByString:@"///902"];
  v8 = objc_claimAutoreleasedReturnValue();

  return v8;
}

- (void)evictIfNeeded:(BOOL)needed
{
  ppStmt = 0;
  if (needed)
  {
    connectedDeviceCount = [(LeDeviceCache *)self connectedDeviceCount];
    if (connectedDeviceCount >= [(LeDeviceCache *)self maxConnectedDevices]&& !sqlite3_prepare_v2(self->_otherDatabase, "SELECT Uuid FROM OtherDevices WHERE ROWID = (SELECT ROWID FROM OtherDevices WHERE LastConnectionTime != 0 ORDER BY LastConnectionTime ASC LIMIT 1)", -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v5 = sqlite3_column_text(ppStmt, 0);
        if (v5)
        {
          v6 = [NSString stringWithUTF8String:v5];
        }

        else
        {
          v6 = 0;
        }

        otherDatabase = self->_otherDatabase;
        v10 = [NSString stringWithFormat:@"DELETE FROM OtherDevices WHERE Uuid = '%s'", v5];
        v11 = v10;
        v12 = sqlite3_exec(otherDatabase, [v10 UTF8String], 0, 0, 0);

        v13 = qword_100BCE900;
        if (v12)
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            v14 = [(LeDeviceCache *)self friendlyNameForType:1];
            v15 = sqlite3_errmsg(self->_otherDatabase);
            v16 = sqlite3_extended_errcode(self->_otherDatabase);
            *buf = 136447234;
            v29 = v5;
            v30 = 2082;
            v31 = v14;
            v32 = 1024;
            v33 = v12;
            v34 = 2082;
            v35 = v15;
            v36 = 1024;
            v37 = v16;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to delete the oldest connected device %{public}s from '%{public}s' cache with error %d (%{public}s, %d)", buf, 0x2Cu);
          }
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            v25 = [(LeDeviceCache *)self friendlyNameForType:1];
            *buf = 136446466;
            v29 = v5;
            v30 = 2082;
            v31 = v25;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully evicted oldest connected device %{public}s from '%{public}s' cache", buf, 0x16u);
          }

          [(LeDeviceCache *)self setConnectedDeviceCount:[(LeDeviceCache *)self connectedDeviceCount]- 1];
        }

        if (v6)
        {
LABEL_24:
          [(LeDeviceCache *)self removeCustomPropertiesJSONForDeviceUUID:v6 inDatabase:self->_otherDatabase];
LABEL_34:

          goto LABEL_35;
        }

        if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

LABEL_33:
        sub_10082B2A0();
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  else
  {
    seenDeviceCount = [(LeDeviceCache *)self seenDeviceCount];
    if (seenDeviceCount >= [(LeDeviceCache *)self maxSeenDevices]&& !sqlite3_prepare_v2(self->_otherDatabase, "SELECT Uuid FROM OtherDevices WHERE ROWID = (SELECT ROWID FROM OtherDevices WHERE LastConnectionTime = 0 ORDER BY LastSeenTime ASC LIMIT 1)", -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v8 = sqlite3_column_text(ppStmt, 0);
        if (v8)
        {
          v6 = [NSString stringWithUTF8String:v8];
        }

        else
        {
          v6 = 0;
        }

        v17 = self->_otherDatabase;
        v18 = [NSString stringWithFormat:@"DELETE FROM OtherDevices WHERE Uuid = '%s'", v8];
        v19 = v18;
        v20 = sqlite3_exec(v17, [v18 UTF8String], 0, 0, 0);

        v21 = qword_100BCE900;
        if (v20)
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            v22 = [(LeDeviceCache *)self friendlyNameForType:1];
            v23 = sqlite3_errmsg(self->_otherDatabase);
            v24 = sqlite3_extended_errcode(self->_otherDatabase);
            *buf = 136447234;
            v29 = v8;
            v30 = 2082;
            v31 = v22;
            v32 = 1024;
            v33 = v20;
            v34 = 2082;
            v35 = v23;
            v36 = 1024;
            v37 = v24;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to delete the oldest seen device %{public}s from '%{public}s' cache with error %d (%{public}s, %d)", buf, 0x2Cu);
          }
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            v26 = [(LeDeviceCache *)self friendlyNameForType:1];
            *buf = 136446466;
            v29 = v8;
            v30 = 2082;
            v31 = v26;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Successfully evicted oldest seen device %{public}s from '%{public}s' cache", buf, 0x16u);
          }

          [(LeDeviceCache *)self setSeenDeviceCount:[(LeDeviceCache *)self seenDeviceCount]- 1];
        }

        if (v6)
        {
          goto LABEL_24;
        }

        if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_35:
      sqlite3_finalize(ppStmt);
    }
  }
}

- (void)printDebug
{
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- LE Device Database ----------------", v4, 2u);
  }

  [(LeDeviceCache *)self printDatabase:0];
  [(LeDeviceCache *)self printDatabase:1];
}

- (void)printDatabase:(unint64_t)database
{
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v66[0] = &v48;
  v66[1] = &v47;
  v66[2] = &v42;
  v66[3] = &v46;
  v66[4] = &v45;
  v66[5] = &v41;
  v66[6] = &v40;
  v66[7] = &v39;
  v66[8] = &v44;
  v66[9] = &v43;
  v5 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Other devices";
    if (!database)
    {
      v6 = "Paired devices";
    }

    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s:", buf, 0xCu);
  }

  v7 = 24;
  if (!database)
  {
    v7 = 16;
  }

  v8 = *(&self->super.isa + v7);
  if (v8)
  {
    ppStmt = 0;
    v9 = [NSString stringWithFormat:@"SELECT * FROM %s", [(LeDeviceCache *)self tableNameForType:database]];
    v10 = v9;
    v11 = sqlite3_prepare_v2(v8, [v9 UTF8String], -1, &ppStmt, 0);

    if (!v11)
    {
      while (1)
      {
        if (sqlite3_step(ppStmt) != 100)
        {
          sqlite3_finalize(ppStmt);
          break;
        }

        v12 = objc_autoreleasePoolPush();
        for (i = 0; i != 10; ++i)
        {
          v14 = qword_100BCE4E0[i];
          if (v14 == objc_opt_class())
          {
            v17 = sqlite3_column_text(ppStmt, i);
            if (v17)
            {
              v16 = [NSString stringWithUTF8String:v17];
            }

            else
            {
              v16 = &stru_100B0F9E0;
            }
          }

          else
          {
            v15 = qword_100BCE4E0[i];
            if (v15 != objc_opt_class())
            {
              continue;
            }

            v16 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, i)];
          }

          v18 = v66[i];
          v19 = *v18;
          *v18 = v16;
        }

        v65 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *v53 = 0u;
        v54 = 0u;
        *buf = 0u;
        memset(v52, 0, sizeof(v52));
        sub_100008760(buf);
        if (v48)
        {
          strlen([v48 UTF8String]);
          sub_100007774(buf);
        }

        sub_100007774(buf);
        if ([v46 length])
        {
          strlen([v46 UTF8String]);
          sub_100007774(buf);
          if ([v45 length])
          {
            if (([v46 isEqualToString:v45] & 1) == 0)
            {
              v20 = sub_100007774(buf);
              strlen([v45 UTF8String]);
              v21 = sub_100007774(v20);
              sub_100007774(v21);
            }
          }
        }

        if ([v47 length])
        {
          sub_100007774(buf);
          if ([v42 intValue] == 2 || objc_msgSend(v42, "intValue") == 1 || objc_msgSend(v42, "intValue") == 4 || objc_msgSend(v42, "intValue") == 3)
          {
            sub_100007774(buf);
          }

          v22 = sub_100007774(buf);
          v23 = sub_100007774(v22);
          v24 = sub_10000E92C();
          uTF8String = "";
          if ((*(*v24 + 8))(v24))
          {
            uTF8String = [v47 UTF8String];
          }

          strlen(uTF8String);
          v26 = sub_100007774(v23);
          sub_100007774(v26);
        }

        if ([v41 intValue])
        {
          sub_100007774(buf);
          [v41 intValue];
          std::ostream::operator<<();
        }

        if ([v40 intValue])
        {
          sub_100007774(buf);
          [v40 intValue];
          std::ostream::operator<<();
        }

        if ([v43 length])
        {
          v27 = sub_100007774(buf);
          strlen([v43 UTF8String]);
          sub_100007774(v27);
        }

        if ([v39 BOOLValue])
        {
          sub_100007774(buf);
        }

        if ([v44 length])
        {
          v28 = sub_100007774(buf);
          v29 = [v44 stringByReplacingOccurrencesOfString:@" withString:{", @", "}];
          v30 = v29;
          strlen([v29 UTF8String]);
          sub_100007774(v28);
        }

        v31 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          std::stringbuf::str();
          p_p = &__p;
          if (v37 < 0)
          {
            p_p = __p;
          }

          *v49 = 136446210;
          v50 = p_p;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v49, 0xCu);
          if (v37 < 0)
          {
            operator delete(__p);
          }
        }

        *buf = v35;
        *&buf[*(v35 - 24)] = v34;
        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[1]);
        }

        std::locale::~locale(v52);
        std::ostream::~ostream();
        std::ios::~ios();
        objc_autoreleasePoolPop(v12);
      }
    }
  }

  else
  {
    v33 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "statedump:    Cache has not been loaded", buf, 2u);
    }
  }
}

@end
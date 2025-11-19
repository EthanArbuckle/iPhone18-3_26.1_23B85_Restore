@interface NWActivityDistributionStoreDescriptor
+ (id)withGroupAndOptions:(int64_t)a3 groupTarget:(id)a4;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (id)_initWithGroupAndOptions:(int64_t)a3 groupTarget:(id)a4;
- (void)findInterpolatedPercentileFromWiFiStats:(id)a3 andReply:(id)a4;
@end

@implementation NWActivityDistributionStoreDescriptor

+ (id)withGroupAndOptions:(int64_t)a3 groupTarget:(id)a4
{
  v5 = a4;
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "+[NWActivityDistributionStoreDescriptor withGroupAndOptions:groupTarget:]";
    v11 = 1024;
    v12 = 58;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Initiating store descriptor for %ld and options %@", &v9, 0x26u);
  }

  v7 = [[NWActivityDistributionStoreDescriptor alloc] _initWithGroupAndOptions:a3 groupTarget:v5];

  return v7;
}

- (id)_initWithGroupAndOptions:(int64_t)a3 groupTarget:(id)a4
{
  v5 = a4;
  v42.receiver = self;
  v42.super_class = NWActivityDistributionStoreDescriptor;
  v6 = [(NWActivityDistributionStoreDescriptor *)&v42 init];
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = +[WAUtil resourcePath];
  v9 = NSSQLiteStoreType;
  v10 = NSFileProtectionNone;
  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v45 = "_Bool createPolicy(_Bool, _Bool, NSString *__autoreleasing *, NSString *__autoreleasing *)";
    v46 = 1024;
    v47 = 29;
    v48 = 2112;
    v49 = @"LEGACY";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NWActivityDistributionStoreDescriptor is running in %@ MODE", buf, 0x1Cu);
  }

  v12 = NSSQLiteStoreType;
  v13 = NSFileProtectionNone;
  if (!v8)
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v45 = "[NWActivityDistributionStoreDescriptor _initWithGroupAndOptions:groupTarget:]";
      v46 = 1024;
      v47 = 79;
      v48 = 2112;
      v49 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to access bundle path %@", buf, 0x1Cu);
    }

    goto LABEL_39;
  }

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 contentsOfDirectoryAtPath:v8 error:0];

  if (![v15 count])
  {
    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v45 = "[NWActivityDistributionStoreDescriptor _initWithGroupAndOptions:groupTarget:]";
      v46 = 1024;
      v47 = 83;
      v48 = 2112;
      v49 = v8;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s::%d:Found no files in %@", buf, 0x1Cu);
    }

LABEL_39:
    v27 = 0;
    LOBYTE(v16) = 0;
    goto LABEL_26;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v15;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v16)
  {
    v32 = v13;
    v33 = v12;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v17 = *v39;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = [v19 componentsSeparatedByString:{@".", v32, v33, v34, v35}];
        v21 = [v20 firstObject];

        if ([v19 hasSuffix:@"sqlite"] && -[__CFString hasPrefix:](v21, "hasPrefix:", @"NWActivity_"))
        {
          if (a3)
          {
            v22 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v45 = "[NWActivityDistributionStoreDescriptor _initWithGroupAndOptions:groupTarget:]";
              v46 = 1024;
              v47 = 106;
              v48 = 2048;
              v49 = a3;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unsupported Group %ld", buf, 0x1Cu);
            }
          }

          else if ([(__CFString *)v21 hasSuffix:@"cdf_allActivities"])
          {
            v16 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v45 = "[NWActivityDistributionStoreDescriptor _initWithGroupAndOptions:groupTarget:]";
              v46 = 1024;
              v47 = 99;
              v48 = 2112;
              v49 = v21;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found file %@", buf, 0x1Cu);
            }

            v23 = [NSString stringWithString:v19];
            v6 = v36;
            backingStore = v36->backingStore;
            v36->backingStore = v23;

            v25 = [NSString stringWithString:v21];
            sqlTable = v36->sqlTable;
            v36->sqlTable = v25;

            LOBYTE(v16) = 1;
            goto LABEL_24;
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v6 = v36;
LABEL_24:
    v8 = v34;
    v7 = v35;
    v13 = v32;
    v12 = v33;
  }

  v27 = 1;
LABEL_26:

  objc_autoreleasePoolPop(v7);
  if (!v27)
  {
LABEL_32:
    v28 = 0;
    goto LABEL_33;
  }

  if ((v16 & 1) == 0)
  {
LABEL_29:
    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v45 = "[NWActivityDistributionStoreDescriptor _initWithGroupAndOptions:groupTarget:]";
      v46 = 1024;
      v47 = 112;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find distribution", buf, 0x12u);
    }

    goto LABEL_32;
  }

  v28 = v6;
LABEL_33:

  return v28;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v3 = +[NSMutableDictionary dictionary];
  v15 = [NSURL fileURLWithPath:self->backingStore];
  [v3 addEntriesFromDictionary:&off_100102C88];
  storeProt = self->storeProt;
  v5 = [NSNumber numberWithBool:1];
  v6 = [NSNumber numberWithBool:1];
  v7 = [NSNumber numberWithBool:1];
  v8 = v3;
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v3, NSSQLitePragmasOption, storeProt, NSPersistentStoreFileProtectionKey, v5, NSMigratePersistentStoresAutomaticallyOption, v6, NSInferMappingModelAutomaticallyOption, v7, NSReadOnlyPersistentStoreOption, 0];

  storeKind = self->storeKind;
  v16 = 0;
  v11 = [0 addPersistentStoreWithType:storeKind configuration:0 URL:v15 options:v9 error:&v16];
  v12 = v16;

  if (v11)
  {
    persistentStoreCoordinator = self->__persistentStoreCoordinator;
    self->__persistentStoreCoordinator = 0;
  }

  return 0;
}

- (void)findInterpolatedPercentileFromWiFiStats:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  ppDb = 0;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = &WAXPCRequestDelegateInterface_ptr;
  v10 = [NSString stringWithFormat:@"/System/Library/PrivateFrameworks/WiFiAnalytics.framework/%@", self->backingStore];
  if (sqlite3_open_v2([v10 UTF8String], &ppDb, 1, 0))
  {
    sqlite3_close_v2(ppDb);
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sqlite3_errmsg(ppDb);
      v13 = [v10 UTF8String];
      *buf = 136446978;
      v62 = "[NWActivityDistributionStoreDescriptor findInterpolatedPercentileFromWiFiStats:andReply:]";
      v63 = 1024;
      v64 = 166;
      v65 = 2080;
      v66 = v12;
      v67 = 2080;
      v68 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to open database with message '%s' for file %s", buf, 0x26u);
    }

    v70 = NSLocalizedFailureReasonErrorKey;
    v71 = @"WAErrorCodeSQLiteNotOK";
    v14 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9020 userInfo:v14];

    v7[2](v7, 0, v15);
  }

  else
  {
    v37 = v10;
    v38 = v7;
    v40 = v8;
    ppStmt = 0;
    context = objc_autoreleasePoolPush();
    bzero(buf, 0x320uLL);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v39 = v6;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v41 = *v43;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v43 != v41)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          v21 = [v16 objectForKeyedSubscript:v20];
          [v21 doubleValue];
          v23 = v22;
          v24 = v9;
          v25 = [v9[401] stringWithFormat:@"SELECT %@ from %@", v20, self->sqlTable];;
          v26 = sqlite3_prepare_v2(ppDb, [v25 UTF8String], -1, &ppStmt, 0);
          if (v26)
          {
            v27 = v26;
            v28 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              backingStore = self->backingStore;
              sqlTable = self->sqlTable;
              *v48 = 136447490;
              v49 = "[NWActivityDistributionStoreDescriptor findInterpolatedPercentileFromWiFiStats:andReply:]";
              v50 = 1024;
              v51 = 187;
              v52 = 2112;
              v53 = v20;
              v54 = 2112;
              v55 = backingStore;
              v56 = 2112;
              v57 = sqlTable;
              v58 = 1024;
              v59 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Parameter %@ not found in file %@ table %@ returned %d", v48, 0x36u);
            }
          }

          else
          {
            v31 = 100;
            v32 = &v69;
            while (sqlite3_step(ppStmt) == 100)
            {
              v33 = sqlite3_column_double(ppStmt, 0);
              *(v32 - 1) = v33;
              if (v23 >= v33)
              {
                v34 = 99.0;
                if (v31 <= 0x63)
                {
                  v34 = v31 - (v23 - *v32) / (v33 - *v32);
                }

                v35 = [NSNumber numberWithDouble:v34];
                [v40 setObject:v35 forKey:v20];

                break;
              }

              --v32;
              if (--v31 == 1)
              {
                break;
              }
            }

            sqlite3_finalize(ppStmt);
          }

          v9 = v24;
        }

        v18 = [v16 countByEnumeratingWithState:&v42 objects:v60 count:16];
      }

      while (v18);
    }

    objc_autoreleasePoolPop(context);
    v7 = v38;
    v8 = v40;
    (v38)[2](v38, v40, 0);
    v6 = v39;
    v10 = v37;
  }
}

@end
@interface APEventDatabaseTelemetryDelivery
- (APEventDatabaseTelemetryDelivery)initWithManager:(id)a3 telemetryClass:(Class)a4;
- (id)_databaseDirectorySizeInKB;
- (id)_totalAdInstanceCount;
- (id)_totalEventsCount;
- (unint64_t)_folderSizeAtPath:(id)a3;
- (void)sendEventDatabaseCoreAnalytics;
@end

@implementation APEventDatabaseTelemetryDelivery

- (APEventDatabaseTelemetryDelivery)initWithManager:(id)a3 telemetryClass:(Class)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = APEventDatabaseTelemetryDelivery;
  v8 = [(APEventDatabaseTelemetryDelivery *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseManager, a3);
    objc_storeStrong(&v9->_telemetryClass, a4);
  }

  return v9;
}

- (void)sendEventDatabaseCoreAnalytics
{
  v3 = objc_alloc_init(APLegacyFeatureFlags);
  if ([v3 actionStoreEnabled])
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = [(APEventDatabaseTelemetryDelivery *)self _totalEventsCount];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"TotalEvents"];
    }

    v6 = [(APEventDatabaseTelemetryDelivery *)self _totalAdInstanceCount];
    if (v6)
    {
      [v4 setObject:v6 forKey:@"TotalAds"];
    }

    v7 = [(APEventDatabaseTelemetryDelivery *)self _databaseDirectorySizeInKB];
    if (v7)
    {
      [v4 setObject:v7 forKey:@"DBFilesize"];
    }

    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Event Database Core Analytics, payload: %{public}@", &v11, 0xCu);
    }

    v9 = [(APEventDatabaseTelemetryDelivery *)self telemetryClass];
    v10 = [NSDictionary dictionaryWithDictionary:v4];
    [(objc_class *)v9 sendEvent:@"EventCollectionDatabase" customPayload:v10];
  }

  else
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Action Store disabled.", &v11, 2u);
    }
  }
}

- (id)_databaseDirectorySizeInKB
{
  v3 = [APDatabasePath pathForName:@"APDatabase"];
  v4 = [v3 databaseDirectory];
  v5 = [(APEventDatabaseTelemetryDelivery *)self _folderSizeAtPath:v4];

  if (v5)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:v5 >> 10];
  }

  return v5;
}

- (unint64_t)_folderSizeAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v38 = 0;
  if ([v4 fileExistsAtPath:v3])
  {
    v37 = 0;
    v31 = v4;
    v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v37];
    v6 = v37;
    v7 = [v5 mutableCopy];

    if (v6)
    {
      v8 = APLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 description];
        *buf = 138543362;
        v41 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error getting contents of directory, error: %{public}@", buf, 0xCu);
      }

LABEL_24:

      v10 = 0;
      v11 = v6;
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v28 = v7;
        v10 = 0;
        v14 = *v34;
        v15 = @".DS_Store";
        v30 = v11;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            if ([v17 rangeOfString:v15] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = [v3 stringByAppendingPathComponent:v17];
              if ([v4 fileExistsAtPath:v18 isDirectory:&v38] && v38 == 1)
              {
                v19 = [(APEventDatabaseTelemetryDelivery *)self _folderSizeAtPath:v18];
              }

              else
              {
                v20 = v3;
                v21 = v15;
                v22 = v20;
                v32 = 0;
                v23 = [v4 attributesOfItemAtPath:v18 error:&v32];
                v6 = v32;
                v19 = [v23 fileSize];

                if (v6)
                {
                  v25 = APLogForCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v26 = [v6 description];
                    *buf = 138543362;
                    v41 = v26;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error couldn't get file size, error: %{public}@", buf, 0xCu);
                  }

                  v3 = v22;
                  v7 = v28;
                  v8 = v30;
                  goto LABEL_24;
                }

                v24 = v22;
                v11 = v30;
                v4 = v31;
                v15 = v21;
                v3 = v24;
              }

              v10 += v19;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v7 = v28;
        goto LABEL_26;
      }

      v10 = 0;
    }

    v4 = v31;
LABEL_26:

    goto LABEL_27;
  }

  v10 = 0;
LABEL_27:

  return v10;
}

- (id)_totalEventsCount
{
  v2 = [(APEventDatabaseTelemetryDelivery *)self databaseManager];
  v3 = [v2 getTableForClass:objc_opt_class()];

  if (v3)
  {
    v4 = [v3 allEventsCount];
    v5 = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v5;
    }

    else
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to get Events count.", v9, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to get APDBEvent Table.", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_totalAdInstanceCount
{
  v2 = [(APEventDatabaseTelemetryDelivery *)self databaseManager];
  v3 = [v2 getTableForClass:objc_opt_class()];

  if (v3)
  {
    v4 = [v3 allAdInstanceCount];
    v5 = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v5;
    }

    else
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to get AdInstance count.", v9, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to get APDBAdInstance Table.", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

@end
@interface UARPAssetMTIC
- (BOOL)processAsset:(id)a3 tmapSnapshot:(id)a4;
- (BOOL)writeSysdiagnoseMetrics:(id)a3 fileHandle:(id)a4 error:(id *)a5;
- (UARPAssetMTIC)init;
- (id)setupEventFolder:(id)a3 sysdiagnoseFolder:(id)a4;
- (void)contributeSysdiagnoseMetrics:(id)a3 eventFileURL:(id)a4;
- (void)postToCoreAnalytics;
- (void)prepareEventForSysdiagnose:(id)a3 sysdiagnoseFolder:(id)a4;
- (void)prepareForSysdiagnose:(id)a3;
@end

@implementation UARPAssetMTIC

- (UARPAssetMTIC)init
{
  v8.receiver = self;
  v8.super_class = UARPAssetMTIC;
  v2 = [(UARPAssetMTIC *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    coreAnalyticsEvents = v2->_coreAnalyticsEvents;
    v2->_coreAnalyticsEvents = v3;

    v5 = os_log_create("com.apple.uarp", "mtic");
    log = v2->_log;
    v2->_log = v5;
  }

  return v2;
}

- (BOOL)processAsset:(id)a3 tmapSnapshot:(id)a4
{
  v6 = a3;
  v32 = a4;
  v33 = self;
  p_coreAnalyticsEvents = &self->_coreAnalyticsEvents;
  [(NSMutableArray *)self->_coreAnalyticsEvents removeAllObjects];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = v6;
  obj = [v6 payloads];
  v35 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v35)
  {
    v34 = *v50;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = [v8 containsTLV:objc_opt_class()];
        v10 = v9;
        if (v9)
        {
          v36 = v9;
          v11 = v9;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v12 = v32;
          v13 = [v12 countByEnumeratingWithState:&v43 objects:v53 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v44;
LABEL_9:
            v16 = 0;
            while (1)
            {
              if (*v44 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v43 + 1) + 8 * v16);
              v18 = [v11 appleModelNumber];
              v19 = [v17 isEqualAppleModel:v18];

              if (v19)
              {
                break;
              }

              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v43 objects:v53 count:16];
                if (v14)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v20 = v17;

            if (!v20)
            {
              goto LABEL_22;
            }

            v21 = [v8 containsTLV:objc_opt_class()];
            if (v21)
            {
              v22 = [v8 payloadData];
              v10 = v36;
              if (v22)
              {
                v23 = [v20 expandMticData:v22 withEventID:{objc_msgSend(v21, "eventID")}];
                v24 = v23;
                if (v23)
                {
                  v25 = [v23 mutableCopy];
                  v26 = [v11 appleModelNumber];
                  [v25 setObject:v26 forKeyedSubscript:@"AppleModelNumber"];

                  [(NSMutableArray *)*p_coreAnalyticsEvents addObject:v25];
                }
              }

              else if (os_log_type_enabled(v33->_log, OS_LOG_TYPE_ERROR))
              {
                sub_100079FD8(&v37, v38);
              }
            }

            else
            {
              v10 = v36;
              if (os_log_type_enabled(v33->_log, OS_LOG_TYPE_ERROR))
              {
                sub_10007A004(&v39, v40);
              }
            }
          }

          else
          {
LABEL_15:

LABEL_22:
            v10 = v36;
            if (os_log_type_enabled(v33->_log, OS_LOG_TYPE_ERROR))
            {
              sub_10007A030(&v41, v42);
            }
          }
        }

        else if (os_log_type_enabled(v33->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10007A004(&v47, v48);
        }
      }

      v35 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v35);
  }

  log = v33->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10007A05C(p_coreAnalyticsEvents, log);
  }

  return 1;
}

- (void)postToCoreAnalytics
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = self->_coreAnalyticsEvents;
  v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"EventName"];
        v8 = [v6 mutableCopy];
        [v8 removeObjectForKey:@"AppleModelNumber"];
        v11 = [NSDictionary dictionaryWithDictionary:v8];
        v9 = v11;
        AnalyticsSendEventLazy();
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (void)prepareForSysdiagnose:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_coreAnalyticsEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UARPAssetMTIC *)self prepareEventForSysdiagnose:*(*(&v10 + 1) + 8 * v9) sysdiagnoseFolder:v4, v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)prepareEventForSysdiagnose:(id)a3 sysdiagnoseFolder:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v19 objectForKeyedSubscript:@"EventName"];

    if (v7)
    {
      v8 = [(UARPAssetMTIC *)self setupEventFolder:v19 sysdiagnoseFolder:v6];
      if (v8)
      {
        v18 = objc_alloc_init(NSDateFormatter);
        [v18 setDateFormat:@"yyyy-MM-dd-hh-mm-ss"];
        v9 = +[NSDate date];
        v10 = [v18 stringFromDate:v9];

        v11 = [v19 mutableCopy];
        v12 = [v11 objectForKeyedSubscript:@"AppleModelNumber"];
        [v11 removeObjectForKey:@"AppleModelNumber"];
        v13 = [NSDictionary dictionaryWithDictionary:v11];
        v14 = objc_opt_new();
        [v14 appendString:v12];
        [v14 appendString:@"-"];
        [v14 appendString:v10];
        [v14 appendString:@"-"];
        v15 = [v19 objectForKeyedSubscript:@"EventName"];
        [v14 appendString:v15];

        [v14 appendString:@".log"];
        v16 = [NSURL fileURLWithPath:v8 isDirectory:1];
        v17 = [NSURL fileURLWithPath:v14 isDirectory:0 relativeToURL:v16];
        [(UARPAssetMTIC *)self contributeSysdiagnoseMetrics:v13 eventFileURL:v17];
      }
    }
  }
}

- (id)setupEventFolder:(id)a3 sysdiagnoseFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 addObject:v7];

  [v8 addObject:@"assets"];
  v9 = [v6 objectForKeyedSubscript:@"EventName"];
  [v8 addObject:v9];

  v10 = [NSString pathWithComponents:v8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    v13 = [v6 objectForKeyedSubscript:@"EventName"];
    *buf = 136315650;
    v24 = "[UARPAssetMTIC setupEventFolder:sysdiagnoseFolder:]";
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Event Folder Name for %@ is %@", buf, 0x20u);
  }

  v14 = +[NSFileManager defaultManager];
  if ([v14 fileExistsAtPath:v10])
  {
    v15 = v10;
  }

  else
  {
    v22 = 0;
    v16 = [v14 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v22];
    v17 = v22;
    if (v16)
    {
      v15 = v10;
    }

    else
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = v18;
        v21 = [v6 objectForKeyedSubscript:@"EventName"];
        *buf = 136315906;
        v24 = "[UARPAssetMTIC setupEventFolder:sysdiagnoseFolder:]";
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v17;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: failed to create directory %@ for event %@; %@", buf, 0x2Au);
      }

      v15 = 0;
    }
  }

  return v15;
}

- (void)contributeSysdiagnoseMetrics:(id)a3 eventFileURL:(id)a4
{
  v6 = a4;
  v29 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:a3 options:0 error:&v29];
  v8 = v29;
  if (v7)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [v6 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v12 = objc_claimAutoreleasedReturnValue(), [v6 path], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "createFileAtPath:contents:attributes:", v13, 0, 0), v13, v12, (v14))
    {
      v28 = 0;
      v15 = [NSFileHandle fileHandleForWritingToURL:v6 error:&v28];
      v16 = v28;
      if (v15)
      {
        v27 = 0;
        v17 = [(UARPAssetMTIC *)self writeSysdiagnoseMetrics:v7 fileHandle:v15 error:&v27];
        v18 = v27;
        if ((v17 & 1) == 0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_10007A150(log, v6);
          }
        }

        v26 = 0;
        v20 = [v15 closeAndReturnError:&v26];
        v21 = v26;
        if ((v20 & 1) == 0)
        {
          v22 = self->_log;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10007A1F0(v22, v6);
          }
        }
      }

      else
      {
        v24 = self->_log;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10007A290(v24, v6);
        }
      }
    }

    else
    {
      v25 = self->_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10007A0D8(v8, v25);
      }
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007A330(v8, v23);
    }
  }
}

- (BOOL)writeSysdiagnoseMetrics:(id)a3 fileHandle:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v16 = 0;
  v17 = 0;
  v9 = [v8 seekToEndReturningOffset:&v17 error:&v16];
  v10 = v16;
  if ((v9 & 1) == 0)
  {
    v12 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v13 = v10;
    *a5 = v10;
    goto LABEL_7;
  }

  v15 = 0;
  v11 = [v8 writeData:v7 error:&v15];
  v12 = v11;
  if (a5 && (v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

@end
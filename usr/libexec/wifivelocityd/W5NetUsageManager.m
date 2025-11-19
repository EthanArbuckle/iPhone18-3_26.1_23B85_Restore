@interface W5NetUsageManager
+ (void)copyPeriodicNetUsageToDir:(id)a3 uuid:(id)a4;
+ (void)writeProcNetUsage:(id)a3 ToFile:(id)a4;
- (W5NetUsageManager)init;
- (id)_getCurrentUsage;
- (id)_getProcNetUsageWithName:(id)a3 inUsageData:(id)a4;
- (id)calculateUsageDelta:(id)a3;
- (void)recordUsageToDate:(id)a3;
- (void)startPeriodicUsageMonitor:(double)a3 maxEntries:(unint64_t)a4 uuid:(id)a5;
- (void)stopPeriodicUsageMonitor:(id)a3;
@end

@implementation W5NetUsageManager

- (W5NetUsageManager)init
{
  v18.receiver = self;
  v18.super_class = W5NetUsageManager;
  v2 = [(W5NetUsageManager *)&v18 init];
  if (objc_opt_class() && objc_opt_class())
  {
    v3 = [AnalyticsWorkspace alloc];
    v4 = [v3 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
    if (v4 && (v5 = [[UsageFeed alloc] initWithWorkspace:v4], usageFeed = v2->_usageFeed, v2->_usageFeed = v5, usageFeed, v2->_usageFeed))
    {
      v7 = [[NSMutableDictionary alloc] initWithCapacity:10];
      usageSnaphots = v2->_usageSnaphots;
      v2->_usageSnaphots = v7;

      v9 = [[NSMutableDictionary alloc] initWithCapacity:10];
      periodicUsageFiles = v2->_periodicUsageFiles;
      v2->_periodicUsageFiles = v9;

      v11 = [[NSMutableDictionary alloc] initWithCapacity:10];
      periodicBufferHead = v2->_periodicBufferHead;
      v2->_periodicBufferHead = v11;

      v13 = [[NSMutableDictionary alloc] initWithCapacity:10];
      netUsageTimer = v2->_netUsageTimer;
      v2->_netUsageTimer = v13;

      p_super = sub_100098A04();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "[W5NetUsageManager init]";
        v21 = 2080;
        v22 = "W5NetUsageManager.m";
        v23 = 1024;
        v24 = 72;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      p_super = &v4->super;
      v4 = v2;
      v2 = 0;
    }

    v16 = v2;

    v2 = v4;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_getCurrentUsage
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100010588;
  v19 = sub_100010598;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  usageFeed = self->_usageFeed;
  v27[0] = kSymptomAnalyticsServiceRefreshUsage;
  v27[1] = kSymptomAnalyticsServiceExtensionUsage;
  v28[0] = &__kCFBooleanTrue;
  v28[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v6 = kUsageProcessProcName;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000105A0;
  v12[3] = &unk_1000E1410;
  v14 = &v15;
  v7 = v3;
  v13 = v7;
  LOBYTE(usageFeed) = [(UsageFeed *)usageFeed usageToDateWithOptionsFor:0 nameKind:v6 options:v5 reply:v12];

  if ((usageFeed & 1) == 0)
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "[W5NetUsageManager _getCurrentUsage]";
      v23 = 2080;
      v24 = "W5NetUsageManager.m";
      v25 = 1024;
      v26 = 104;
      _os_log_send_and_compose_impl();
    }
  }

  v9 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v7, v9) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v22 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)recordUsageToDate:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_usageSnaphots objectForKey:v4];

  if (!v5)
  {
    v6 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_usageSnaphots setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:v4];
  v8 = [v7 count];

  if (v8 <= 1)
  {
    v9 = [(W5NetUsageManager *)self _getCurrentUsage];
    v10 = +[NSDate date];
    v11 = [[W5WiFiNetUsageRecord alloc] init:v10 usageData:v9];
    if (v9)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [v9 count];
        _os_log_send_and_compose_impl();
      }

      v13 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:v4];
      [v13 addObject:v11];
    }
  }
}

- (void)startPeriodicUsageMonitor:(double)a3 maxEntries:(unint64_t)a4 uuid:(id)a5
{
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_netUsageTimer objectForKey:v8];

  if (v9)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315906;
      v32 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]";
      v33 = 2080;
      v34 = "W5NetUsageManager.m";
      v35 = 1024;
      v36 = 133;
      v37 = 2112;
      v38 = v8;
      _os_log_send_and_compose_impl();
    }

    v11 = [(NSMutableDictionary *)self->_netUsageTimer objectForKeyedSubscript:v8];
    [v11 invalidate];
  }

  v12 = [NSURL alloc];
  v13 = [v8 UUIDString];
  v14 = [NSString stringWithFormat:@"/tmp/com.apple.wifivelocity/%@/netusage", v13];
  v15 = [v12 initFileURLWithPath:v14];

  v16 = +[NSFileManager defaultManager];
  v30 = 0;
  v17 = [v16 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v30];
  v18 = v30;

  v19 = sub_100098A04();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136316418;
    v32 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]";
    v33 = 2080;
    v34 = "W5NetUsageManager.m";
    v35 = 1024;
    v36 = 144;
    v37 = 2112;
    v38 = v15;
    v39 = 1024;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    _os_log_send_and_compose_impl();
  }

  v20 = [[NSMutableArray alloc] initWithCapacity:a4];
  [(NSMutableDictionary *)self->_periodicUsageFiles setObject:v20 forKeyedSubscript:v8];

  v21 = [NSNumber numberWithUnsignedInteger:0];
  [(NSMutableDictionary *)self->_periodicBufferHead setObject:v21 forKeyedSubscript:v8];

  v22 = sub_100098A04();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315906;
    v32 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]";
    v33 = 2080;
    v34 = "W5NetUsageManager.m";
    v35 = 1024;
    v36 = 149;
    v37 = 2112;
    v38 = v8;
    _os_log_send_and_compose_impl();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010D94;
  block[3] = &unk_1000E1460;
  block[4] = self;
  v26 = v8;
  v28 = a3;
  v27 = v15;
  v29 = a4;
  v23 = v15;
  v24 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stopPeriodicUsageMonitor:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_netUsageTimer objectForKey:v4];

  if (v5)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v7 = [(NSMutableDictionary *)self->_netUsageTimer objectForKeyedSubscript:v4];
    [v7 invalidate];

    [(NSMutableDictionary *)self->_netUsageTimer removeObjectForKey:v4];
    v8 = [(NSMutableDictionary *)self->_periodicUsageFiles objectForKeyedSubscript:v4];
    [v8 removeAllObjects];

    [(NSMutableDictionary *)self->_periodicUsageFiles removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_periodicBufferHead removeObjectForKey:v4];
  }
}

- (id)_getProcNetUsageWithName:(id)a3 inUsageData:(id)a4
{
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKey:{@"procName", v16}];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)calculateUsageDelta:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_usageSnaphots objectForKey:v4];

  if (!v5)
  {
    v27 = sub_100098A04();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315906;
      v43 = "[W5NetUsageManager calculateUsageDelta:]";
      v44 = 2080;
      v45 = "W5NetUsageManager.m";
      v46 = 1024;
      v47 = 214;
      v48 = 2112;
      v49 = v4;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_21;
  }

  v6 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:v4];
  v7 = [v6 count];

  if (v7 != 2)
  {
    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:v4];
      v43 = "[W5NetUsageManager calculateUsageDelta:]";
      v44 = 2080;
      v42 = 136316162;
      v45 = "W5NetUsageManager.m";
      v46 = 1024;
      v47 = 220;
      v48 = 2048;
      v49 = [v30 count];
      v50 = 2112;
      v51 = v4;
      _os_log_send_and_compose_impl();
    }

LABEL_21:
    v33 = 0;
    goto LABEL_22;
  }

  v33 = objc_alloc_init(NSMutableArray);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:v4];
  v9 = [v8 objectAtIndex:1];
  v10 = [v9 usageData];

  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v32 = *v38;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [v14 objectForKey:@"procName"];
        v16 = v4;
        v17 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:v4];
        v18 = [v17 objectAtIndex:0];
        v19 = [v18 usageData];
        v20 = self;
        v21 = [(W5NetUsageManager *)self _getProcNetUsageWithName:v15 inUsageData:v19];

        if (v21)
        {
          v22 = objc_alloc_init(NSMutableDictionary);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100011BD4;
          v34[3] = &unk_1000E1488;
          v34[4] = v14;
          v35 = v21;
          v36 = v22;
          v23 = v22;
          [v14 enumerateKeysAndObjectsUsingBlock:v34];
          [v33 addObject:v23];
        }

        else
        {
          v23 = [v14 copy];
          [v33 addObject:v23];
        }

        v4 = v16;
        self = v20;
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v12);
  }

  v24 = sub_100098A04();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v33 count];
    v43 = "[W5NetUsageManager calculateUsageDelta:]";
    v44 = 2080;
    v42 = 136316162;
    v45 = "W5NetUsageManager.m";
    v46 = 1024;
    v47 = 249;
    v48 = 2048;
    v49 = v25;
    v50 = 2112;
    v51 = v4;
    _os_log_send_and_compose_impl();
  }

  v26 = sub_100098A04();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315906;
    v43 = "[W5NetUsageManager calculateUsageDelta:]";
    v44 = 2080;
    v45 = "W5NetUsageManager.m";
    v46 = 1024;
    v47 = 251;
    v48 = 2112;
    v49 = v4;
    _os_log_send_and_compose_impl();
  }

  [(NSMutableDictionary *)self->_usageSnaphots removeObjectForKey:v4];
LABEL_22:

  return v33;
}

+ (void)copyPeriodicNetUsageToDir:(id)a3 uuid:(id)a4
{
  v35 = a3;
  v5 = a4;
  v6 = [NSURL alloc];
  v7 = [v5 UUIDString];
  v8 = [NSString stringWithFormat:@"/tmp/com.apple.wifivelocity/%@/netusage", v7];
  v9 = [v6 initFileURLWithPath:v8];

  v10 = +[NSFileManager defaultManager];
  v42 = 0;
  v11 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:4 error:&v42];
  v12 = v42;

  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 count];
    v43 = 136315906;
    v44 = "+[W5NetUsageManager copyPeriodicNetUsageToDir:uuid:]";
    v45 = 2080;
    v46 = "W5NetUsageManager.m";
    v47 = 1024;
    v48 = 268;
    v49 = 2048;
    v50 = v14;
    LODWORD(v31) = 38;
    v30 = &v43;
    _os_log_send_and_compose_impl();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v38 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v32 = v9;
    v33 = v5;
    v17 = 0;
    v18 = *v39;
    do
    {
      v19 = 0;
      v20 = v12;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * v19);
        v22 = [v21 lastPathComponent];
        v23 = [v35 URLByAppendingPathComponent:v22];

        v24 = +[NSFileManager defaultManager];
        v37 = v20;
        v25 = [v24 copyItemAtURL:v21 toURL:v23 error:&v37];
        v12 = v37;

        v26 = sub_100098A04();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 136316674;
          v44 = "+[W5NetUsageManager copyPeriodicNetUsageToDir:uuid:]";
          v45 = 2080;
          v46 = "W5NetUsageManager.m";
          v47 = 1024;
          v48 = 274;
          v49 = 2112;
          v50 = v21;
          v51 = 2112;
          *v52 = v23;
          *&v52[8] = 1024;
          *&v52[10] = v25;
          v53 = 2112;
          v54 = v12;
          LODWORD(v31) = 64;
          v30 = &v43;
          _os_log_send_and_compose_impl();
        }

        v17 += v25;
        v19 = v19 + 1;
        v20 = v12;
      }

      while (v16 != v19);
      v16 = [obj countByEnumeratingWithState:&v38 objects:v55 count:16];
    }

    while (v16);
    v9 = v32;
    v5 = v33;
  }

  else
  {
    v17 = 0;
    v25 = 0;
  }

  if (v17 == [obj count])
  {
    v27 = +[NSFileManager defaultManager];
    v36 = v12;
    [v27 removeItemAtURL:v9 error:&v36];
    v28 = v36;

    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136316418;
      v44 = "+[W5NetUsageManager copyPeriodicNetUsageToDir:uuid:]";
      v45 = 2080;
      v46 = "W5NetUsageManager.m";
      v47 = 1024;
      v48 = 281;
      v49 = 2112;
      v50 = v9;
      v51 = 1024;
      *v52 = v25;
      *&v52[4] = 2112;
      *&v52[6] = v28;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v28 = v12;
  }
}

+ (void)writeProcNetUsage:(id)a3 ToFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "+[W5NetUsageManager writeProcNetUsage:ToFile:]";
    v18 = 2080;
    v16 = 136316162;
    v19 = "W5NetUsageManager.m";
    v20 = 1024;
    v21 = 287;
    v22 = 2048;
    v23 = [v5 count];
    v24 = 2114;
    v25 = v6;
    _os_log_send_and_compose_impl();
  }

  if ([v5 count])
  {
    +[NSMutableString string];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100012460;
    v8 = v14[3] = &unk_1000E14B0;
    v15 = v8;
    [v5 enumerateObjectsUsingBlock:v14];
    v9 = +[NSFileManager defaultManager];
    v10 = [v6 path];
    v11 = [v8 dataUsingEncoding:4];
    v12 = [v9 createFileAtPath:v10 contents:v11 attributes:0];

    if (v12)
    {
      v13 = sub_100098A04();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = "+[W5NetUsageManager writeProcNetUsage:ToFile:]";
        v18 = 2080;
        v19 = "W5NetUsageManager.m";
        v20 = 1024;
        v21 = 303;
        v22 = 2114;
        v23 = v6;
        _os_log_send_and_compose_impl();
      }
    }
  }
}

@end
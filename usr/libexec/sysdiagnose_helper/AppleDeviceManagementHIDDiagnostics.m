@interface AppleDeviceManagementHIDDiagnostics
+ (OS_os_log)log;
+ (void)collectDiagnosticsAndWriteToDirectory:(id)a3;
- (AppleDeviceManagementHIDDiagnostics)initWithOutputDirectory:(id)a3;
- (BOOL)collectErrorStats;
- (BOOL)handleExtractedErrorStats:(id)a3;
@end

@implementation AppleDeviceManagementHIDDiagnostics

+ (void)collectDiagnosticsAndWriteToDirectory:(id)a3
{
  v4 = a3;
  v5 = [a1 log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Collecting HID device diagnostics and saving it to directory %@", &v10, 0xCu);
  }

  v6 = [[AppleDeviceManagementHIDDiagnostics alloc] initWithOutputDirectory:v4];
  v7 = [(AppleDeviceManagementHIDDiagnostics *)v6 collectErrorStats];
  v8 = [a1 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"failure";
    if (v7)
    {
      v9 = @"success";
    }

    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Collected HID device diagnostics - %@", &v10, 0xCu);
  }
}

+ (OS_os_log)log
{
  if (qword_1000794E0 != -1)
  {
    sub_10003A044();
  }

  v3 = qword_1000794D8;

  return v3;
}

- (AppleDeviceManagementHIDDiagnostics)initWithOutputDirectory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AppleDeviceManagementHIDDiagnostics;
  v6 = [(AppleDeviceManagementHIDDiagnostics *)&v11 init];
  if (v6)
  {
    v7 = dispatch_group_create();
    dispatchGroup = v6->_dispatchGroup;
    v6->_dispatchGroup = v7;

    objc_storeStrong(&v6->_directory, a3);
    v9 = v6;
  }

  return v6;
}

- (BOOL)collectErrorStats
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(AppleDeviceManagementHIDDiagnostics *)self directory];
    *buf = 138412290;
    v56 = *&v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Collecting error stats and writing to directory %@", buf, 0xCu);
  }

  v43 = +[NSDate date];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100039D84, @"com.apple.hidswdebug.AppleDeviceManagementHIDFilter.CrashlogExtracted", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v60[0] = @"PrimaryUsagePage";
  v60[1] = @"PrimaryUsage";
  v61[0] = &off_100076CA0;
  v61[1] = &off_100076CB8;
  v6 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v7 = [[HIDEventSystemClient alloc] initWithType:2];
  v42 = v6;
  [v7 setMatching:v6];
  v8 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = v7;
  v9 = [v7 services];
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = [(AppleDeviceManagementHIDDiagnostics *)self dispatchGroup];
        dispatch_group_enter(v15);

        v16 = [v14 propertyForKey:@"PalmspringCrashlogRequestErrorStats"];
        v17 = v16;
        if (v16)
        {
          if ([v16 intValue])
          {
            v18 = [(AppleDeviceManagementHIDDiagnostics *)self dispatchGroup];
            dispatch_group_leave(v18);
          }

          [v8 addObject:v14];
          v19 = [v17 intValue];
        }

        else
        {
          v20 = [(AppleDeviceManagementHIDDiagnostics *)self dispatchGroup];
          dispatch_group_leave(v20);

          [v8 addObject:v14];
          v19 = -536870201;
        }

        v21 = [objc_opt_class() log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v14 serviceID];
          v23 = mach_error_string(v19);
          *buf = 134218242;
          v56 = *&v22;
          v57 = 2080;
          v58 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Get property on service 0x%llX performed to collect error stats, ret: %s", buf, 0x16u);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v11);
  }

  v24 = [objc_opt_class() log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Waiting to receive notifications from crashlog extraction...", buf, 2u);
  }

  v25 = [(AppleDeviceManagementHIDDiagnostics *)self dispatchGroup];
  v26 = dispatch_time(0, 3000000000);
  v40 = dispatch_group_wait(v25, v26);

  v27 = [objc_opt_class() log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    [v43 timeIntervalSinceNow];
    *buf = 134217984;
    v56 = v28 * -1000.0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Done waiting for crashlog extraction notifications, total time elapsed: %f ms", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = v8;
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v44 + 1) + 8 * j);
        v35 = [v34 propertyForKey:{@"PalmspringCrashlogFetchLastCrashlog", v40}];
        if (v35 && [(AppleDeviceManagementHIDDiagnostics *)self handleExtractedErrorStats:v35])
        {
          v36 = [objc_opt_class() log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v34 serviceID];
            *buf = 134217984;
            v56 = *&v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Successful extraction of error stats from service 0x%llX", buf, 0xCu);
          }
        }

        else
        {
          v36 = [objc_opt_class() log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10003A058(v52, v34, &v53, v36);
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v31);
  }

  v38 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v38, self, @"com.apple.hidswdebug.AppleDeviceManagementHIDFilter.CrashlogExtracted", 0);

  return v40 == 0;
}

- (BOOL)handleExtractedErrorStats:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"crashlogData"];
  v6 = [v4 objectForKeyedSubscript:@"crashlogName"];
  v7 = [v4 objectForKeyedSubscript:@"crashlogType"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003A0C4(v12);
    }

    v11 = 0;
    goto LABEL_11;
  }

  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Crashlog %@ with type %@ received via notification", buf, 0x16u);
  }

  v9 = [(AppleDeviceManagementHIDDiagnostics *)self directory];
  v14 = 0;
  v10 = 1;
  [PalmspringCrashlog writeToDirectory:v9 crashlogData:v5 options:1 error:&v14];
  v11 = v14;

  if (([v7 isEqualToNumber:&off_100076CD0] & 1) == 0)
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

@end
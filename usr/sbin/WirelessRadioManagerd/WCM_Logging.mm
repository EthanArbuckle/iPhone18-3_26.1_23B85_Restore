@interface WCM_Logging
+ (id)stringFromXPCObjectWithPrefix:(id)a3 prefix:(id)a4;
+ (int)getNumberOfSavedLogFiles:(int *)a3 new:(int *)a4;
+ (void)initSettingsFromPreferences;
+ (void)logToFile:(id)a3;
+ (void)reloadLogSettingsFromPreferences;
+ (void)reloadiRATSettingsFromPreferences;
+ (void)setLogSettingsToPreferences;
+ (void)setiRATSettingsToPreferences:(BOOL)a3;
@end

@implementation WCM_Logging

+ (void)initSettingsFromPreferences
{
  v2 = qword_1002B8028;
  if (!qword_1002B8028)
  {
    v2 = objc_alloc_init(NSDateFormatter);
    qword_1002B8028 = v2;
  }

  [v2 setDateFormat:@"MM/dd/yy HH:mm:ss.SSS"];
  qword_1002B8030 = os_log_create("com.apple.WirelessRadioManager.Coex", "Error");
  qword_1002B8038 = os_log_create("com.apple.WirelessRadioManager.Coex", "Warning");
  qword_1002B8040 = os_log_create("com.apple.WirelessRadioManager.Coex", "Info");
  qword_1002B8048 = os_log_create("com.apple.WirelessRadioManager.Coex", "Trace");
  qword_1002B8050 = os_log_create("com.apple.WirelessRadioManager.Coex", "Detail");
  qword_1002B8058 = os_log_create("com.apple.WirelessRadioManager.Coex", "Public");
  qword_1002B8060 = os_log_create("com.apple.WirelessRadioManager.iRAT", "Error");
  qword_1002B8068 = os_log_create("com.apple.WirelessRadioManager.iRAT", "Warning");
  qword_1002B8070 = os_log_create("com.apple.WirelessRadioManager.iRAT", "Info");
  qword_1002B8078 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceWifi");
  qword_1002B8080 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceSymptom");
  qword_1002B8088 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceMotion");
  qword_1002B8090 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceCellular");
  qword_1002B8098 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceRTP");
  qword_1002B80A0 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceHandoverManager");
  qword_1002B80A8 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceMetrics");
  qword_1002B80B0 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceOther");
  qword_1002B80B8 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceIDS");
  qword_1002B80C0 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceMediaStreaming");
  qword_1002B80C8 = os_log_create("com.apple.WirelessRadioManager.iRAT", "TraceFTHandoverManager");
  out_token = 0;
  notify_register_dispatch("com.apple.WirelessRadioManager.PrefChangeNotification", &out_token, &_dispatch_main_q, &stru_100241580);
  +[WCM_Logging reloadLogSettingsFromPreferences];
  _set_user_dir_suffix();
  NSTemporaryDirectory();
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = v3;
  if (!qword_1002B80D0)
  {
    qword_1002B80D0 = [-[NSArray objectAtIndex:](v3 objectAtIndex:{0), "stringByAppendingPathComponent:", @"Logs/WirelessRadioManager/"}];
  }

  v5 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v5 fileExistsAtPath:qword_1002B80D0])
  {
    v6 = +[NSFileManager defaultManager];
    if ([(NSFileManager *)v6 createDirectoryAtPath:qword_1002B80D0 withIntermediateDirectories:0 attributes:0 error:0])
    {
      NSLog(@"Created %@", v4);
    }
  }

  if (!qword_1002B80D8)
  {
    qword_1002B80D8 = [qword_1002B80D0 stringByAppendingPathComponent:@"WirelessRadioManager.log"];
  }

  v7 = 1;
  do
  {
    v8 = [qword_1002B80D0 stringByAppendingFormat:@"/WirelessRadioManager%i.log", v7];
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      NSLog(@"Remove old-style log file %@", v8);
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, 0];
    }

    v7 = (v7 + 1);
  }

  while (v7 != 10);
  if (!qword_1002B80E0)
  {
    qword_1002B80E0 = dispatch_queue_create("com.apple.WirelessRadioManager.Log", 0);
  }
}

+ (void)setLogSettingsToPreferences
{
  if (byte_1002B8020)
  {
    v2 = "TRUE";
  }

  else
  {
    v2 = "FALSE";
  }

  *keys = *off_1002415A0;
  values[0] = [NSString stringWithFormat:@"%s", v2];
  values[1] = [NSString stringWithFormat:@"0x%08x", *asc_1002B7A10];
  v3 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v3)
  {
    v4 = v3;
    CFPreferencesSetAppValue(@"LogInfo", v3, @"com.apple.WirelessRadioManager.debug");
    CFRelease(v4);
  }

  if (!CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
  {
    NSLog(@"%s: Failed to sync the preferences.", "+[WCM_Logging setLogSettingsToPreferences]");
  }
}

+ (void)reloadLogSettingsFromPreferences
{
  v2 = CFPreferencesCopyAppValue(@"LogInfo", @"com.apple.WirelessRadioManager.debug");
  if (!v2)
  {
    NSLog(@"LogInfo not Found");
    byte_1002B8020 = 0;
    *asc_1002B7A10 = 458759;
LABEL_17:
    +[WCM_Logging setLogSettingsToPreferences];
    return;
  }

  v3 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    NSLog(@"LogInfo not Found");
    byte_1002B8020 = 0;
LABEL_16:
    *asc_1002B7A10 = 458759;
    CFRelease(v3);
    goto LABEL_17;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v3, @"LogToFile", &value) && (v5 = CFStringGetTypeID(), v5 == CFGetTypeID(value)))
  {
    v6 = CFStringCompare(@"TRUE", value, 0);
    byte_1002B8020 = v6 == kCFCompareEqualTo;
    v7 = "FALSE";
    if (v6 == kCFCompareEqualTo)
    {
      v7 = "TRUE";
    }

    NSLog(@"LogToFile read from preference %s", v7);
    v8 = 0;
  }

  else
  {
    NSLog(@"LogToFile not found");
    byte_1002B8020 = 0;
    v8 = 1;
  }

  if (!CFDictionaryGetValueIfPresent(v3, @"LogLevels", &value) || (v9 = CFStringGetTypeID(), v9 != CFGetTypeID(value)))
  {
    NSLog(@"LogLevels not found");
    goto LABEL_16;
  }

  sscanf([value UTF8String], "0x%08x", asc_1002B7A10);
  NSLog(@"LogLevels read from preference 0x%08x", *asc_1002B7A10);
  CFRelease(v3);
  if (v8)
  {
    goto LABEL_17;
  }
}

+ (int)getNumberOfSavedLogFiles:(int *)a3 new:(int *)a4
{
  v30 = 0;
  v6 = +[NSDate distantFuture];
  v7 = +[NSDate distantPast];
  v8 = +[NSFileManager defaultManager];
  v9 = [(NSFileManager *)v8 contentsOfDirectoryAtPath:qword_1002B80D0 error:0];
  if (v9)
  {
    v26 = a3;
    v27 = a4;
    v10 = [(NSArray *)v9 filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF like %@", @"WirelessRadioManager-????.log"]];
    v11 = [(NSArray *)v10 count];
    v25 = v11;
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = v11 & 0x7FFFFFFF;
      v28 = -1;
      v29 = -1;
      while (1)
      {
        v14 = [(NSArray *)v10 objectAtIndex:v12];
        v15 = [qword_1002B80D0 stringByAppendingPathComponent:v14];
        v16 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:v15, 0];
        if (!v16)
        {
          NSLog(@"Failed to get attributes for %@", v15);
          goto LABEL_11;
        }

        v17 = v16;
        v18 = [NSScanner scannerWithString:v14];
        [(NSScanner *)v18 scanString:@"WirelessRadioManager-" intoString:0];
        if (![(NSScanner *)v18 scanInt:&v30])
        {
          NSLog(@"Failed to get index number from %@", v14);
          goto LABEL_11;
        }

        v19 = [(NSDictionary *)v17 objectForKey:NSFileCreationDate];
        v20 = [(NSDate *)v19 compare:v6];
        if (v20)
        {
          if (v20 != -1)
          {
            goto LABEL_16;
          }

          v21 = v30;
        }

        else
        {
          v21 = v30;
          if (v30 >= v29)
          {
            goto LABEL_16;
          }
        }

        v6 = v19;
        v29 = v21;
LABEL_16:
        v22 = [(NSDate *)v19 compare:v7];
        if (v22)
        {
          if (v22 == 1)
          {
            v23 = v30;
LABEL_20:
            v28 = v23;
            goto LABEL_12;
          }
        }

        else
        {
          v23 = v30;
          if (v30 > v28)
          {
            goto LABEL_20;
          }
        }

LABEL_11:
        v19 = v7;
LABEL_12:
        ++v12;
        v7 = v19;
        if (v13 == v12)
        {
          goto LABEL_23;
        }
      }
    }

    v28 = -1;
    v29 = -1;
LABEL_23:
    *v26 = v29;
    *v27 = v28;
    return v25;
  }

  else
  {
    NSLog(@"Failed to get contents of %@", qword_1002B80D0);
    return -1;
  }
}

+ (void)logToFile:(id)a3
{
  v5 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v5 fileExistsAtPath:qword_1002B80D8])
  {
    v6 = qword_1002B80E8;
    if (qword_1002B80E8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    [(NSFileManager *)v7 createFileAtPath:qword_1002B80D8 contents:0 attributes:0];
    if (qword_1002B80E8)
    {
      [qword_1002B80E8 closeFile];

      qword_1002B80E8 = 0;
    }
  }

  v8 = [NSFileHandle fileHandleForWritingAtPath:qword_1002B80D8];
  qword_1002B80E8 = v8;
  if (!v8)
  {
    NSLog(@"Failed to open handle to %@", qword_1002B80D8);
    return;
  }

  v9 = v8;
  v6 = qword_1002B80E8;
LABEL_8:
  [v6 writeData:{objc_msgSend(a3, "dataUsingEncoding:", 4)}];
  if ([qword_1002B80E8 seekToEndOfFile] >= 0x989681)
  {
    v14 = 0;
    v10 = [a1 getNumberOfSavedLogFiles:&v14 + 4 new:&v14];
    if ((v10 & 0x80000000) != 0)
    {
      NSLog(@"Just return because of numberOfSavedLogFiles(%d)", v10);
    }

    else
    {
      if (v10 >= 3)
      {
        -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [qword_1002B80D0 stringByAppendingFormat:@"/WirelessRadioManager-%04i.log", HIDWORD(v14)], 0);
      }

      if (v14 == 9999)
      {
        v11 = 0;
      }

      else
      {
        v11 = (v14 + 1);
      }

      v12 = [qword_1002B80D0 stringByAppendingFormat:@"/WirelessRadioManager-%04i.log", v11];
      if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        NSLog(@"Remove %@ existing already", v12);
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v12, 0];
      }

      v13 = [qword_1002B80D0 stringByAppendingPathComponent:@"WirelessRadioManager.log"];
      if ([+[NSFileManager copyItemAtPath:"copyItemAtPath:toPath:error:"]
      {
        [qword_1002B80E8 truncateFileAtOffset:0];
      }

      else
      {
        NSLog(@"Failed to copy %@ to %@", v13, v12);
      }
    }
  }
}

+ (void)reloadiRATSettingsFromPreferences
{
  v2 = CFPreferencesCopyAppValue(@"iRATDebug", @"com.apple.WirelessRadioManager.debug");
  if (!v2)
  {
    NSLog(@"iRATDebug not Found");
    sub_1000D5DB0(0);
    v7 = 0;
LABEL_25:
    [WCM_Logging setiRATSettingsToPreferences:v7];
    return;
  }

  v3 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(v3))
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(v3, @"HandoverAlert", &value) && (v5 = CFStringGetTypeID(), v5 == CFGetTypeID(value)))
    {
      v6 = CFStringCompare(@"TRUE", value, 0);
      v7 = v6 == kCFCompareEqualTo;
      v8 = "FALSE";
      if (v6 == kCFCompareEqualTo)
      {
        v8 = "TRUE";
      }

      NSLog(@"HandoverAlert read from preference %s", v8);
      v9 = 0;
    }

    else
    {
      NSLog(@"HandoverAlert not found");
      v7 = 0;
      v9 = 1;
    }

    cf = 0;
    if (CFDictionaryGetValueIfPresent(v3, @"iRATPolicy", &cf) && (v10 = CFStringGetTypeID(), v10 == CFGetTypeID(cf)))
    {
      if (CFStringCompare(@"DYNAMICPOLICY", cf, 0))
      {
        if (CFStringCompare(@"WIFIPREFERRED", cf, 0))
        {
          if (CFStringCompare(@"IMSPREFERRED", cf, 0))
          {
            if (CFStringCompare(@"CELLULARPREFERRED", cf, 0))
            {
              v11 = 0;
            }

            else
            {
              v11 = 3;
            }
          }

          else
          {
            v11 = 2;
          }
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }

      NSLog(@"reloadiRATSettingsFromPreferences iRATPolicy = %lu", v11);
      sub_1000D5E0C(v11);
    }

    else
    {
      NSLog(@"stored iRAT Policy not found");
    }
  }

  else
  {
    NSLog(@"iRATDebug not Found");
    v7 = 0;
    v9 = 1;
  }

  CFRelease(v3);
  sub_1000D5DB0(v7);
  if (v9)
  {
    goto LABEL_25;
  }
}

+ (void)setiRATSettingsToPreferences:(BOOL)a3
{
  v3 = "FALSE";
  if (a3)
  {
    v3 = "TRUE";
  }

  values = [NSString stringWithFormat:@"%s", v3];
  keys = @"HandoverAlert";
  v4 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v4)
  {
    v5 = v4;
    CFPreferencesSetAppValue(@"iRATDebug", v4, @"com.apple.WirelessRadioManager.debug");
    CFRelease(v5);
  }

  if (!CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
  {
    NSLog(@"%s: Failed to sync the preferences.", "+[WCM_Logging setiRATSettingsToPreferences:]");
  }
}

+ (id)stringFromXPCObjectWithPrefix:(id)a3 prefix:(id)a4
{
  v4 = 0;
  if (a3)
  {
    if (a4)
    {
      v4 = xpc_copy_description(a3);
      if (v4)
      {
        v6 = [NSString stringWithUTF8String:v4];
        free(v4);
        v7 = [(NSString *)v6 componentsSeparatedByString:@"\n"];
        v4 = +[NSMutableString string];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v14 + 1) + 8 * i);
              if ([v12 length])
              {
                [v4 appendFormat:@"%@%@\n", a4, v12];
              }
            }

            v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v9);
        }
      }
    }
  }

  return v4;
}

@end
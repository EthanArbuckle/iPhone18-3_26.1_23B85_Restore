@interface SEUpdaterEvents
+ (id)getLoggedEvents;
@end

@implementation SEUpdaterEvents

+ (id)getLoggedEvents
{
  v2 = +[MSUDataAccessor sharedDataAccessor];
  v18 = 0;
  v3 = [v2 copyPathForPersonalizedData:7 error:&v18];
  v4 = v18;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = [v3 stringByAppendingString:@"//private/var/wireless/Library/Logs/CrashReporter/updater_output/SE/SEUpdaterEventsLog.plist"];

    v9 = +[NSFileManager defaultManager];
    v10 = [v9 isReadableFileAtPath:v8];

    if (!v10)
    {
      v7 = 0;
      goto LABEL_28;
    }

    v4 = [NSData dataWithContentsOfFile:v8];
    if (v4)
    {
      v17 = 0;
      v11 = [NSPropertyListSerialization propertyListWithData:v4 options:2 format:0 error:&v17];
      v12 = v17;
      v6 = v12;
      if (!v11 || v12)
      {
        v13 = SESDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "EVENT LOGGING: Could not recreate event properties from file\n", buf, 2u);
        }

        v7 = 0;
      }

      else
      {
        v13 = [v11 objectForKeyedSubscript:@"events"];
        v14 = SESDefaultLogObject();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
        if (v13)
        {
          if (v15)
          {
            *buf = 138412290;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "EVENT LOGGING: All logged events:\n%@", buf, 0xCu);
          }

          v13 = v13;
          v7 = v13;
        }

        else
        {
          if (v15)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "EVENT LOGGING: Could not recreate logged events from event properties\n", buf, 2u);
          }

          v7 = 0;
        }
      }
    }

    else
    {
      v6 = SESDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "EVENT LOGGING: Unable to read file data", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "EVENT LOGGING: Unable to get path", buf, 2u);
    }

    v7 = 0;
    v8 = v3;
  }

LABEL_28:

  return v7;
}

@end
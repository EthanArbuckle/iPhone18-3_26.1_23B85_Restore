@interface DeviceUtility
+ (id)sharedInstance;
- (BOOL)isBuddySetupDone;
- (BOOL)isMigrationDone;
- (DeviceUtility)init;
- (id)createTimer:(unsigned int)timer repeat:(BOOL)repeat callback:(id)callback;
- (id)getLocalProductType;
- (id)getRemoteProductType:(id)type;
- (id)getRemoteUDID:(id)d;
- (id)queryFromLockdown:(id)lockdown key:(id)key;
- (void)cancelTimer:(id)timer;
@end

@implementation DeviceUtility

- (DeviceUtility)init
{
  v6.receiver = self;
  v6.super_class = DeviceUtility;
  v2 = [(MDRBaseObject *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1000264C0 != -1)
  {
    sub_100012F1C();
  }

  v3 = qword_1000264B8;

  return v3;
}

- (id)queryFromLockdown:(id)lockdown key:(id)key
{
  lockdownCopy = lockdown;
  keyCopy = key;
  if (lockdown_connect())
  {
    v8 = 3;
    while (1)
    {
      v9 = lockdown_copy_value();
      if (v9)
      {
        break;
      }

      sleep(1u);
      if (!--v8)
      {
        lockdownCopy = [NSString stringWithFormat:@"Failed to read lockdown %@ domain", lockdownCopy];
        logger = [(MDRBaseObject *)self logger];
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          sub_100012F30();
        }

        break;
      }
    }

    lockdown_disconnect();
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Failed to connect to lockdown daemon"];
    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
    {
      sub_100012F30();
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)isBuddySetupDone
{
  v3 = [(DeviceUtility *)self queryFromLockdown:@"com.apple.PurpleBuddy" key:@"SetupDone"];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"Read PurpleBuddy status: %@", v3];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v6 = [v3 objectForKeyedSubscript:@"SetupDone"];

    if (v6)
    {
      v7 = [v3 objectForKeyedSubscript:@"SetupDone"];
      LOBYTE(v6) = [v7 BOOLValue];
    }

    v8 = [v3 objectForKeyedSubscript:@"SetupFinishedAllSteps"];

    if (v8)
    {
      v9 = [v3 objectForKeyedSubscript:@"SetupFinishedAllSteps"];
      LOBYTE(v8) = [v9 BOOLValue];
    }

    v10 = v6 | v8;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"Failed to read PurpleBuddy status"];
    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
    {
      sub_100012FA4();
    }

    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isMigrationDone
{
  v3 = [(DeviceUtility *)self queryFromLockdown:@"com.apple.lockdown.datamigrator" key:@"MigrationDone"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
    v6 = "NO";
    if (bOOLValue)
    {
      v6 = "YES";
    }

    v7 = [NSString stringWithFormat:@"Read Migration Done: %s", v6];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [NSString stringWithFormat:@"Failed to read Migration status"];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100013018();
    }

    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (id)getLocalProductType
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = +[NSCharacterSet decimalDigitCharacterSet];
    v4 = [v2 rangeOfCharacterFromSet:v3];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v2 substringToIndex:v4];

      v2 = v5;
    }
  }

  return v2;
}

- (id)getRemoteProductType:(id)type
{
  v3 = remote_device_copy_property();
  v4 = v3;
  if (v3 && (string_ptr = xpc_string_get_string_ptr(v3)) != 0)
  {
    v6 = [NSString stringWithUTF8String:string_ptr];
    if (v6)
    {
      v7 = +[NSCharacterSet decimalDigitCharacterSet];
      v8 = [v6 rangeOfCharacterFromSet:v7];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v6 substringToIndex:v8];

        v6 = v9;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getRemoteUDID:(id)d
{
  v3 = remote_device_copy_property();
  v4 = v3;
  if (v3 && (string_ptr = xpc_string_get_string_ptr(v3)) != 0)
  {
    v6 = [NSString stringWithUTF8String:string_ptr];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createTimer:(unsigned int)timer repeat:(BOOL)repeat callback:(id)callback
{
  repeatCopy = repeat;
  callbackCopy = callback;
  v9 = dispatch_get_global_queue(0, 0);
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

  if (v10)
  {
    v11 = 1000000000 * timer;
    v12 = dispatch_time(0, v11);
    if (repeatCopy)
    {
      v13 = v11;
    }

    else
    {
      v13 = -1;
    }

    dispatch_source_set_timer(v10, v12, v13, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100005058;
    handler[3] = &unk_100020960;
    v14 = v10;
    v35 = v14;
    selfCopy = self;
    v37 = callbackCopy;
    dispatch_source_set_event_handler(v14, handler);
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000050F0;
    v31 = &unk_100020918;
    v15 = v14;
    v32 = v15;
    selfCopy2 = self;
    dispatch_source_set_cancel_handler(v15, &v28);
    dispatch_resume(v15);
    v16 = [NSString stringWithFormat:@"Timer %p started", v15, v28, v29, v30, v31];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10001308C(v16, logger, v18, v19, v20, v21, v22, v23);
    }

    v24 = v15;
    v25 = v35;
  }

  else
  {
    v25 = [NSString stringWithFormat:@"Failed to create a timer!"];
    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
    {
      sub_1000130F8();
    }
  }

  return v10;
}

- (void)cancelTimer:(id)timer
{
  if (timer)
  {
    dispatch_source_cancel(timer);
  }
}

@end
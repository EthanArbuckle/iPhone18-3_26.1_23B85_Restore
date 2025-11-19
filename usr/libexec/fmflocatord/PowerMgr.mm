@interface PowerMgr
+ (id)sharedInstance;
- (void)_disableAssertion:(unsigned int)a3 withName:(id)a4;
- (void)powerAssertionDisableWithReason:(id)a3;
- (void)powerAssertionEnableWithReason:(id)a3 type:(id)a4 timeout:(int64_t)a5;
@end

@implementation PowerMgr

+ (id)sharedInstance
{
  if (qword_100070138 != -1)
  {
    sub_10003708C();
  }

  v3 = qword_100070130;

  return v3;
}

- (void)powerAssertionEnableWithReason:(id)a3 type:(id)a4 timeout:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  context = objc_autoreleasePoolPush();
  v10 = +[NSBundle mainBundle];
  v11 = [v10 bundleIdentifier];

  v12 = [NSString stringWithFormat:@"%@-%@", v11, v8];
  v13 = [(PowerMgr *)self assertionsDict];
  if (![v13 count])
  {

    v15 = 0;
    goto LABEL_7;
  }

  v14 = [(PowerMgr *)self assertionsDict];
  v15 = [v14 objectForKeyedSubscript:v12];

  if (!v15)
  {
LABEL_7:
    v18 = 0;
    v16 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v16 = [v15 intValue];
  v17 = sub_100002830();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1000370A0();
  }

  v18 = 1;
LABEL_8:
  v19 = sub_100002830();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v12;
    v33 = 2112;
    v34 = v9;
    v35 = 2048;
    v36 = a5;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Enable power assertion %@ with type %@ & timeout %ld", buf, 0x20u);
  }

  v20 = +[NSMutableDictionary dictionary];
  if ([v9 isEqualToString:@"ApplePushServiceTask"])
  {
    [v20 setObject:v12 forKeyedSubscript:@"AssertName"];
    v21 = [NSNumber numberWithInteger:a5];
    [v20 setObject:v21 forKeyedSubscript:@"TimeoutSeconds"];

    [v20 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
    if (v9)
    {
      [v20 setObject:v9 forKeyedSubscript:@"AssertType"];
    }

    [v20 setObject:&off_100062F58 forKeyedSubscript:@"AssertLevel"];
  }

  else
  {
    [v20 setObject:v12 forKeyedSubscript:@"AssertName"];
    v22 = [NSNumber numberWithInteger:a5];
    [v20 setObject:v22 forKeyedSubscript:@"TimeoutSeconds"];

    [v20 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
    if (v9)
    {
      [v20 setObject:v9 forKeyedSubscript:@"AssertType"];
    }

    [v20 setObject:&off_100062F58 forKeyedSubscript:@"AssertLevel"];
    [v20 setObject:kCFBooleanTrue forKeyedSubscript:@"AppliesToLimitedPower"];
  }

  AssertionID = 0;
  v23 = IOPMAssertionCreateWithProperties(v20, &AssertionID);
  if (v23)
  {
    v24 = sub_100002830();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = SCErrorString(v23);
      *buf = 138412802;
      v32 = v20;
      v33 = 2080;
      v34 = v25;
      v35 = 1024;
      LODWORD(v36) = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v26 = sub_100002830();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100037108(v12, &AssertionID, v26);
    }

    if (v18)
    {
      v27 = sub_100002830();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100037184();
      }

      [(PowerMgr *)self _disableAssertion:v16 withName:v12];
    }

    v24 = [NSNumber numberWithUnsignedInt:AssertionID];
    v28 = [(PowerMgr *)self assertionsDict];
    [v28 setObject:v24 forKeyedSubscript:v12];
  }

  objc_autoreleasePoolPop(context);
}

- (void)powerAssertionDisableWithReason:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = [NSString stringWithFormat:@"%@-%@", v6, v4];
  v8 = [(PowerMgr *)self assertionsDict];
  if ([v8 count])
  {
    v9 = [(PowerMgr *)self assertionsDict];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (v10)
    {
      -[PowerMgr _disableAssertion:withName:](self, "_disableAssertion:withName:", [v10 intValue], v7);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = sub_100002830();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find any existing assertion with name %@ when trying to disable it", buf, 0xCu);
  }

  v10 = 0;
LABEL_8:
}

- (void)_disableAssertion:(unsigned int)a3 withName:(id)a4
{
  v6 = a4;
  v7 = [(PowerMgr *)self assertionsDict];
  [v7 removeObjectForKey:v6];

  v8 = sub_100002830();
  v9 = v8;
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000371EC();
    }

    v10 = IOPMAssertionRelease(a3);
    v11 = sub_100002830();
    v9 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138413058;
        v16 = v6;
        v17 = 1024;
        v18 = a3;
        v19 = 2080;
        v20 = SCErrorString(v10);
        v21 = 1024;
        v22 = v10;
        v12 = "IOPMAssertionRelease failed for assertion %@ with ID 0x%x: %s (%d)";
        v13 = v9;
        v14 = 34;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v15, v14);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100037254();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    v12 = "Found Null assertionID for assertion with name %@ when trying to disable it";
    v13 = v9;
    v14 = 12;
    goto LABEL_9;
  }
}

@end
@interface FMDPowerMgr
+ (id)sharedInstance;
- (FMDPowerMgr)init;
- (void)_disableAssertion:(unsigned int)a3 withName:(id)a4;
- (void)powerAssertionDisableWithReason:(id)a3;
- (void)powerAssertionEnableWithReason:(id)a3 type:(id)a4 timeout:(int64_t)a5 appliesOnLidClose:(BOOL)a6;
@end

@implementation FMDPowerMgr

+ (id)sharedInstance
{
  if (qword_1003149E8 != -1)
  {
    sub_10022E064();
  }

  v3 = qword_1003149E0;

  return v3;
}

- (FMDPowerMgr)init
{
  v6.receiver = self;
  v6.super_class = FMDPowerMgr;
  v2 = [(FMDPowerMgr *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FMDConcurrentMutableDictionary);
    assertionsDict = v2->_assertionsDict;
    v2->_assertionsDict = v3;
  }

  return v2;
}

- (void)powerAssertionEnableWithReason:(id)a3 type:(id)a4 timeout:(int64_t)a5 appliesOnLidClose:(BOOL)a6
{
  v27 = a3;
  v9 = a4;
  context = objc_autoreleasePoolPush();
  v10 = +[NSBundle mainBundle];
  v11 = [v10 bundleIdentifier];

  v12 = [NSString stringWithFormat:@"%@-%@", v11, v27];
  v13 = [(FMDPowerMgr *)self assertionsDict];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = [v14 intValue];
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E078();
    }
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v17 = sub_100002880();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = v12;
    v31 = 2112;
    v32 = v9;
    v33 = 2048;
    v34 = a5;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Enable power assertion %@ with type %@ & timeout %ld", buf, 0x20u);
  }

  v18 = +[NSMutableDictionary dictionary];
  [v18 setObject:v12 forKeyedSubscript:@"AssertName"];
  v19 = [NSNumber numberWithInteger:a5];
  [v18 setObject:v19 forKeyedSubscript:@"TimeoutSeconds"];

  [v18 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
  if (v9)
  {
    [v18 setObject:v9 forKeyedSubscript:@"AssertType"];
  }

  [v18 setObject:&off_1002E7C30 forKeyedSubscript:@"AssertLevel"];
  if (([v9 isEqualToString:@"ApplePushServiceTask"] & 1) == 0)
  {
    [v18 setObject:kCFBooleanTrue forKeyedSubscript:@"AppliesToLimitedPower"];
  }

  AssertionID = 0;
  v20 = IOPMAssertionCreateWithProperties(v18, &AssertionID);
  if (v20)
  {
    v21 = sub_100002880();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = SCErrorString(v20);
      *buf = 138412802;
      v30 = v18;
      v31 = 2080;
      v32 = v22;
      v33 = 1024;
      LODWORD(v34) = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E0E0(v12, &AssertionID, v23);
    }

    if (v14)
    {
      v24 = sub_100002880();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_10022E15C();
      }

      [(FMDPowerMgr *)self _disableAssertion:v15 withName:v12];
    }

    v21 = [NSNumber numberWithUnsignedInt:AssertionID];
    v25 = [(FMDPowerMgr *)self assertionsDict];
    [v25 setObject:v21 forKeyedSubscript:v12];
  }

  objc_autoreleasePoolPop(context);
}

- (void)powerAssertionDisableWithReason:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = [NSString stringWithFormat:@"%@-%@", v6, v4];
  v8 = [(FMDPowerMgr *)self assertionsDict];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    -[FMDPowerMgr _disableAssertion:withName:](self, "_disableAssertion:withName:", [v9 intValue], v7);
  }

  else
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Did not find any existing assertion with name %@ when trying to disable it", buf, 0xCu);
    }
  }
}

- (void)_disableAssertion:(unsigned int)a3 withName:(id)a4
{
  v6 = a4;
  v7 = [(FMDPowerMgr *)self assertionsDict];
  [v7 removeObjectForKey:v6];

  v8 = sub_100002880();
  v9 = v8;
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E1C4();
    }

    v10 = IOPMAssertionRelease(a3);
    v11 = sub_100002880();
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
      sub_10022E22C();
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
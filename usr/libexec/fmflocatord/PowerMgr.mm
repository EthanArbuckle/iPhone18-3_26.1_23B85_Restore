@interface PowerMgr
+ (id)sharedInstance;
- (void)_disableAssertion:(unsigned int)assertion withName:(id)name;
- (void)powerAssertionDisableWithReason:(id)reason;
- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout;
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

- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout
{
  reasonCopy = reason;
  typeCopy = type;
  context = objc_autoreleasePoolPush();
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(PowerMgr *)self assertionsDict];
  if (![assertionsDict count])
  {

    v15 = 0;
    goto LABEL_7;
  }

  assertionsDict2 = [(PowerMgr *)self assertionsDict];
  v15 = [assertionsDict2 objectForKeyedSubscript:reasonCopy];

  if (!v15)
  {
LABEL_7:
    v18 = 0;
    intValue = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  intValue = [v15 intValue];
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
    v32 = reasonCopy;
    v33 = 2112;
    v34 = typeCopy;
    v35 = 2048;
    timeoutCopy = timeout;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Enable power assertion %@ with type %@ & timeout %ld", buf, 0x20u);
  }

  v20 = +[NSMutableDictionary dictionary];
  if ([typeCopy isEqualToString:@"ApplePushServiceTask"])
  {
    [v20 setObject:reasonCopy forKeyedSubscript:@"AssertName"];
    v21 = [NSNumber numberWithInteger:timeout];
    [v20 setObject:v21 forKeyedSubscript:@"TimeoutSeconds"];

    [v20 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
    if (typeCopy)
    {
      [v20 setObject:typeCopy forKeyedSubscript:@"AssertType"];
    }

    [v20 setObject:&off_100062F58 forKeyedSubscript:@"AssertLevel"];
  }

  else
  {
    [v20 setObject:reasonCopy forKeyedSubscript:@"AssertName"];
    v22 = [NSNumber numberWithInteger:timeout];
    [v20 setObject:v22 forKeyedSubscript:@"TimeoutSeconds"];

    [v20 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
    if (typeCopy)
    {
      [v20 setObject:typeCopy forKeyedSubscript:@"AssertType"];
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
      LODWORD(timeoutCopy) = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v26 = sub_100002830();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100037108(reasonCopy, &AssertionID, v26);
    }

    if (v18)
    {
      v27 = sub_100002830();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100037184();
      }

      [(PowerMgr *)self _disableAssertion:intValue withName:reasonCopy];
    }

    v24 = [NSNumber numberWithUnsignedInt:AssertionID];
    assertionsDict3 = [(PowerMgr *)self assertionsDict];
    [assertionsDict3 setObject:v24 forKeyedSubscript:reasonCopy];
  }

  objc_autoreleasePoolPop(context);
}

- (void)powerAssertionDisableWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(PowerMgr *)self assertionsDict];
  if ([assertionsDict count])
  {
    assertionsDict2 = [(PowerMgr *)self assertionsDict];
    v10 = [assertionsDict2 objectForKeyedSubscript:reasonCopy];

    if (v10)
    {
      -[PowerMgr _disableAssertion:withName:](self, "_disableAssertion:withName:", [v10 intValue], reasonCopy);
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
    v13 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find any existing assertion with name %@ when trying to disable it", buf, 0xCu);
  }

  v10 = 0;
LABEL_8:
}

- (void)_disableAssertion:(unsigned int)assertion withName:(id)name
{
  nameCopy = name;
  assertionsDict = [(PowerMgr *)self assertionsDict];
  [assertionsDict removeObjectForKey:nameCopy];

  v8 = sub_100002830();
  v9 = v8;
  if (assertion)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000371EC();
    }

    v10 = IOPMAssertionRelease(assertion);
    v11 = sub_100002830();
    v9 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138413058;
        v16 = nameCopy;
        v17 = 1024;
        assertionCopy = assertion;
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
    v16 = nameCopy;
    v12 = "Found Null assertionID for assertion with name %@ when trying to disable it";
    v13 = v9;
    v14 = 12;
    goto LABEL_9;
  }
}

@end
@interface FMDPowerMgr
+ (id)sharedInstance;
- (FMDPowerMgr)init;
- (void)_disableAssertion:(unsigned int)assertion withName:(id)name;
- (void)powerAssertionDisableWithReason:(id)reason;
- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout appliesOnLidClose:(BOOL)close;
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

- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout appliesOnLidClose:(BOOL)close
{
  reasonCopy = reason;
  typeCopy = type;
  context = objc_autoreleasePoolPush();
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(FMDPowerMgr *)self assertionsDict];
  v14 = [assertionsDict objectForKeyedSubscript:reasonCopy];

  if (v14)
  {
    intValue = [v14 intValue];
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E078();
    }
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v17 = sub_100002880();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = reasonCopy;
    v31 = 2112;
    v32 = typeCopy;
    v33 = 2048;
    timeoutCopy = timeout;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Enable power assertion %@ with type %@ & timeout %ld", buf, 0x20u);
  }

  v18 = +[NSMutableDictionary dictionary];
  [v18 setObject:reasonCopy forKeyedSubscript:@"AssertName"];
  v19 = [NSNumber numberWithInteger:timeout];
  [v18 setObject:v19 forKeyedSubscript:@"TimeoutSeconds"];

  [v18 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
  if (typeCopy)
  {
    [v18 setObject:typeCopy forKeyedSubscript:@"AssertType"];
  }

  [v18 setObject:&off_1002E7C30 forKeyedSubscript:@"AssertLevel"];
  if (([typeCopy isEqualToString:@"ApplePushServiceTask"] & 1) == 0)
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
      LODWORD(timeoutCopy) = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E0E0(reasonCopy, &AssertionID, v23);
    }

    if (v14)
    {
      v24 = sub_100002880();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_10022E15C();
      }

      [(FMDPowerMgr *)self _disableAssertion:intValue withName:reasonCopy];
    }

    v21 = [NSNumber numberWithUnsignedInt:AssertionID];
    assertionsDict2 = [(FMDPowerMgr *)self assertionsDict];
    [assertionsDict2 setObject:v21 forKeyedSubscript:reasonCopy];
  }

  objc_autoreleasePoolPop(context);
}

- (void)powerAssertionDisableWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(FMDPowerMgr *)self assertionsDict];
  v9 = [assertionsDict objectForKeyedSubscript:reasonCopy];

  if (v9)
  {
    -[FMDPowerMgr _disableAssertion:withName:](self, "_disableAssertion:withName:", [v9 intValue], reasonCopy);
  }

  else
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Did not find any existing assertion with name %@ when trying to disable it", buf, 0xCu);
    }
  }
}

- (void)_disableAssertion:(unsigned int)assertion withName:(id)name
{
  nameCopy = name;
  assertionsDict = [(FMDPowerMgr *)self assertionsDict];
  [assertionsDict removeObjectForKey:nameCopy];

  v8 = sub_100002880();
  v9 = v8;
  if (assertion)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E1C4();
    }

    v10 = IOPMAssertionRelease(assertion);
    v11 = sub_100002880();
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
      sub_10022E22C();
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
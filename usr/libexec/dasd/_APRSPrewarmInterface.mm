@interface _APRSPrewarmInterface
+ (id)sharedInstance;
- (BOOL)hasPrewarmAssertionForApplication:(id)a3;
- (_APRSPrewarmInterface)init;
- (id)prelaunchAppFromBundleID:(id)a3 isClosure:(BOOL)a4;
- (void)appendPrewarmAssertion:(id)a3 withAssertion:(id)a4;
- (void)invalidatePrewarmAssertionForApplication:(id)a3 onInvalidation:(id)a4;
- (void)prewarmRecommendations:(id)a3;
@end

@implementation _APRSPrewarmInterface

+ (id)sharedInstance
{
  if (qword_10020B318 != -1)
  {
    sub_100120750();
  }

  v3 = qword_10020B310;

  return v3;
}

- (_APRSPrewarmInterface)init
{
  v15.receiver = self;
  v15.super_class = _APRSPrewarmInterface;
  v2 = [(_APRSPrewarmInterface *)&v15 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.aprs", "appResume.prewarmInterface");
    log = v2->_log;
    v2->_log = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = +[NSMutableDictionary dictionary];
    prewarmedAssertions = v2->_prewarmedAssertions;
    v2->_prewarmedAssertions = v5;

    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.aprs"];
    v2->_userDrainBehavior = [v7 integerForKey:@"drainBehavior"];
    v8 = dispatch_time(0, 300000000000);
    v9 = dispatch_get_global_queue(-32768, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100062D9C;
    v12[3] = &unk_1001B56E0;
    v13 = v2;
    v14 = v7;
    v10 = v7;
    dispatch_after(v8, v9, v12);
  }

  return v2;
}

- (void)prewarmRecommendations:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Prewarm recommendations: %@", buf, 0xCu);
  }

  v6 = 3;
  if (_os_feature_enabled_impl())
  {
    v7 = +[_DASLowPowerModePolicy policyInstance];
    v8 = [v7 isChallengedForBatteryLife];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }
  }

  v9 = self->_userDrainBehavior == 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = v6 << v9;
    v16 = *v23;
    *&v12 = 138412290;
    v21 = v12;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v10);
      }

      if (v14 >= v15)
      {
        break;
      }

      v18 = *(*(&v22 + 1) + 8 * v17);
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v21;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting prewarm for %@", buf, 0xCu);
      }

      v20 = [(_APRSPrewarmInterface *)self prewarmLaunchAppFromBundleID:v18, v21, v22];
      if (!v20)
      {
        ++v14;
      }

      if (v13 == ++v17)
      {
        v13 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }
}

- (void)appendPrewarmAssertion:(id)a3 withAssertion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_prewarmedAssertions objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_prewarmedAssertions objectForKeyedSubscript:v6];
    [v9 invalidate];
  }

  [(NSMutableDictionary *)self->_prewarmedAssertions setObject:v7 forKey:v6];
  os_unfair_lock_unlock(&self->_lock);
  v10 = dispatch_time(0, 500000000);
  v11 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006323C;
  v13[3] = &unk_1001B56E0;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  dispatch_after(v10, v11, v13);
}

- (BOOL)hasPrewarmAssertionForApplication:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_prewarmedAssertions objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5 != 0;
}

- (void)invalidatePrewarmAssertionForApplication:(id)a3 onInvalidation:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Requesting prewarm termination for %@", &v13, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_prewarmedAssertions objectForKeyedSubscript:v6];
  v10 = v9;
  if (v9)
  {
    [v9 invalidateSyncWithError:0];
    [(NSMutableDictionary *)self->_prewarmedAssertions removeObjectForKey:v6];
    os_unfair_lock_unlock(&self->_lock);
    v11 = self->_log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = 138412290;
    v14 = v6;
    v12 = "Prewarm terminated for %@";
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v11 = self->_log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = 138412290;
    v14 = v6;
    v12 = "Prewarm assertion lost for %@";
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
LABEL_9:
  if (v7)
  {
    v7[2](v7, v10 != 0);
  }
}

- (id)prelaunchAppFromBundleID:(id)a3 isClosure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(RBSLaunchContext);
  v8 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:v6];
  [v7 setIdentity:v8];

  v9 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"DYLDLaunch"];
  v35 = v9;
  v10 = [NSArray arrayWithObjects:&v35 count:1];
  [v7 setAttributes:v10];

  if (v4)
  {
    v11 = @"DAS DYLD3 Closure Generation";
  }

  else
  {
    v11 = @"DAS Prewarm launch";
  }

  if (v4)
  {
    v12 = &off_1001CAE78;
  }

  else
  {
    v12 = &off_1001CAEA0;
  }

  [v7 setExplanation:v11];
  [v7 _setAdditionalEnvironment:v12];
  v13 = [[RBSLaunchRequest alloc] initWithContext:v7];
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v14 = [v13 execute:&v30 assertion:&v29 error:&v28];
  v15 = v30;
  v16 = v29;
  v17 = v28;
  log = self->_log;
  v19 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v19)
    {
      *buf = 138412546;
      *v32 = v6;
      *&v32[8] = 1024;
      *&v32[10] = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Prelaunched app: %@ (%u)", buf, 0x12u);
    }

    if (v16)
    {
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100063778;
      v26 = &unk_1001B6B00;
      v27 = v15;
      [v27 monitorForDeath:&v23];
      [(_APRSPrewarmInterface *)self appendPrewarmAssertion:v6 withAssertion:v16, v23, v24, v25, v26];
    }

    v20 = +[_APRSMetricRecorder sharedInstance];
    [v20 startLoggingForApp:v6 pid:objc_msgSend(v15 forEvent:{"pid"), 0}];
  }

  else if (v19)
  {
    *buf = 67109634;
    *v32 = v4;
    *&v32[4] = 2112;
    *&v32[6] = v6;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Encountered error with prelaunch (%u) of %@: %@", buf, 0x1Cu);
  }

  v21 = v17;

  return v17;
}

@end
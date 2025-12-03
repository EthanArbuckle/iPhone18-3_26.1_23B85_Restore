@interface _DASRuntimeLimiter
+ (BOOL)activityRequiresLeniencyCaps:(id)caps;
+ (BOOL)activityRequiresStrictCaps:(id)caps;
+ (id)sharedLimiter;
- (BOOL)containsFullRuntimeOverridesForActivity:(id)activity;
- (BOOL)deleteLimitForActivity:(id)activity;
- (BOOL)featureDurationLimitAppliesToActivity:(id)activity;
- (BOOL)featureHasNoRemainingRuntimeForActivity:(id)activity;
- (BOOL)hasDynamicOverrides:(id)overrides;
- (BOOL)hasStaticOverrides:(id)overrides;
- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses;
- (BOOL)limitsApplyToActivity:(id)activity;
- (BOOL)setLimit:(double)limit forActivity:(id)activity;
- (_DASRuntimeLimiter)init;
- (double)defaultRuntimeForActivity:(id)activity;
- (double)durationWithActivityType:(unint64_t)type;
- (double)dynamicDurationForActivity:(id)activity;
- (double)immediateDurationForActivity:(id)activity;
- (double)maximumRemainingFeatureDurationForActivity:(id)activity;
- (double)maximumRuntimeForActivity:(id)activity;
- (double)remainingAggregatedRuntimeForActivity:(id)activity;
- (double)remainingDurationForFeature:(id)feature;
- (double)staticDurationForActivity:(id)activity;
- (double)uninterruptibleDurationForActivity:(id)activity;
- (id)exhaustedRuntimeFeatureCodesAssociatedWithActivity:(id)activity;
- (id)shouldLimitActivityAtRuntime:(id)runtime whileBlockingOtherTasks:(BOOL)tasks withStartDate:(id)date atDate:(id)atDate withContext:(id)context;
- (void)dasTrialManager:(id)manager hasUpdatedParametersForNamespace:(id)namespace;
- (void)loadCustomDurations;
- (void)loadTrialParameters;
- (void)resetOnlyPreemptiveSuspend;
@end

@implementation _DASRuntimeLimiter

+ (id)sharedLimiter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D0B4;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020ADE0 != -1)
  {
    dispatch_once(&qword_10020ADE0, block);
  }

  v2 = qword_10020ADE8;

  return v2;
}

- (_DASRuntimeLimiter)init
{
  v10.receiver = self;
  v10.super_class = _DASRuntimeLimiter;
  v2 = [(_DASRuntimeLimiter *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[_DASDynamicRuntimeAllocator sharedAllocator];
    dynamicRuntimeAllocator = v3->_dynamicRuntimeAllocator;
    v3->_dynamicRuntimeAllocator = v4;

    [(_DASRuntimeLimiter *)v3 loadCustomDurations];
    objc_storeStrong(&v3->_limitationName, kDASRuntimeLimitationName);
    v6 = +[_DASTrialManager sharedInstance];
    trialManager = v3->_trialManager;
    v3->_trialManager = v6;

    [(_DASTrialManager *)v3->_trialManager addDelegate:v3];
    [(_DASRuntimeLimiter *)v3 resetOnlyPreemptiveSuspend];
    [(_DASRuntimeLimiter *)v3 loadTrialParameters];
    if (v3->_defaultRuntime == 0.0)
    {
      v3->_defaultRuntime = 180.0;
    }

    if (v3->_leniencyRuntime == 0.0)
    {
      v3->_leniencyRuntime = 600.0;
    }

    if (v3->_limitedRuntime == 0.0)
    {
      v3->_limitedRuntime = 60.0;
    }

    if (v3->_roundRobinRuntime == 0.0)
    {
      v3->_roundRobinRuntime = 600.0;
    }

    if (v3->_immediateRuntime == 0.0)
    {
      v3->_immediateRuntime = 60.0;
    }

    testingOverride = v3->_testingOverride;
    v3->_testingOverride = 0;
  }

  return v3;
}

+ (BOOL)activityRequiresStrictCaps:(id)caps
{
  capsCopy = caps;
  v6 = 1;
  if (([capsCopy preventDeviceSleep] & 1) == 0)
  {
    [capsCopy interval];
    if (v4 == 0.0 || ([capsCopy interval], v5 > 10800.0))
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (BOOL)activityRequiresLeniencyCaps:(id)caps
{
  capsCopy = caps;
  if ([capsCopy isIntensive] & 1) != 0 || (objc_msgSend(capsCopy, "requiresDeviceInactivity") & 1) != 0 || (objc_msgSend(capsCopy, "requiresPlugin"))
  {
    v4 = 1;
  }

  else
  {
    fastPass = [capsCopy fastPass];

    v4 = fastPass != 0;
  }

  return v4;
}

- (BOOL)hasDynamicOverrides:(id)overrides
{
  overridesCopy = overrides;
  if ([overridesCopy noTransferSizeSpecified])
  {
    v4 = +[_DASPlistParser sharedInstance];
    v5 = [v4 containsOverrideForActivity:overridesCopy withLimitation:kDASDynamicRuntimeLimitationName];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (double)durationWithActivityType:(unint64_t)type
{
  if (!type)
  {
    return 0.0;
  }

  if (type >= 0xB)
  {
    result = -1.0;
    if (type > 0x1D)
    {
      return result;
    }

    v3 = 48;
  }

  else
  {
    v3 = 40;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)hasStaticOverrides:(id)overrides
{
  identifier = [overrides identifier];
  customDurations = self->_customDurations;
  if (customDurations)
  {
    v6 = [(NSDictionary *)customDurations objectForKeyedSubscript:identifier];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)dynamicDurationForActivity:(id)activity
{
  activityCopy = activity;
  identifier = [activityCopy identifier];
  v6 = 0.0;
  if (![(_DASRuntimeLimiter *)self hasDynamicOverrides:activityCopy])
  {
LABEL_10:
    v11 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10011BE68();
    }

    goto LABEL_12;
  }

  v7 = +[_DASPlistParser sharedInstance];
  v8 = [v7 containsOverrideForActivity:activityCopy withLimitation:kDASDynamicRuntimeLimitationName];

  duration = 0.0;
  if (v8)
  {
    duration = [activityCopy duration];
  }

  if ([activityCopy noTransferSizeSpecified])
  {
    v6 = duration;
    goto LABEL_10;
  }

  -[_DASRuntimeLimiter durationWithActivityType:](self, "durationWithActivityType:", [activityCopy transferSizeType]);
  v6 = -1.0;
  if (v10 != -1.0)
  {
    if (duration >= v10)
    {
      v6 = duration;
    }

    else
    {
      v6 = v10;
    }

    goto LABEL_10;
  }

  v11 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10011BDF4();
  }

LABEL_12:

  return v6;
}

- (double)staticDurationForActivity:(id)activity
{
  activityCopy = activity;
  identifier = [activityCopy identifier];
  v6 = 0.0;
  if (![(_DASRuntimeLimiter *)self hasStaticOverrides:activityCopy])
  {
    goto LABEL_6;
  }

  name = [activityCopy name];
  if ([name containsString:@"com.apple.softwareupdate.autoinstall.startInstall"])
  {

    v8 = -1.0;
    goto LABEL_9;
  }

  name2 = [activityCopy name];
  v10 = [name2 containsString:@"com.apple.SUOSUScheduler.tonight.install"];

  v8 = -1.0;
  if ((v10 & 1) == 0)
  {
    v11 = [(NSDictionary *)self->_customDurations objectForKeyedSubscript:identifier];
    [v11 doubleValue];
    v6 = v12;

    if (v6 > 0.0)
    {
LABEL_6:
      v13 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_10011BF00();
      }

      v8 = v6;
    }
  }

LABEL_9:

  return v8;
}

- (double)uninterruptibleDurationForActivity:(id)activity
{
  activityCopy = activity;
  identifier = [activityCopy identifier];
  v6 = +[_DASPlistParser sharedInstance];
  v7 = [v6 containsOverrideForActivity:activityCopy withLimitation:kDASUninterruptibleRuntimeLimitationName];

  if (!v7 || (-[NSDictionary objectForKeyedSubscript:](self->_customUninterruptibleDurations, "objectForKeyedSubscript:", identifier), v8 = objc_claimAutoreleasedReturnValue(), [v8 doubleValue], duration = v9, v8, duration <= 0.0))
  {
    if ([(_DASRuntimeLimiter *)self hasStaticOverrides:activityCopy])
    {
      [(_DASRuntimeLimiter *)self staticDurationForActivity:activityCopy];
      duration = v11;
    }

    else
    {
      v12 = +[_DASPlistParser sharedInstance];
      v13 = [v12 containsOverrideForActivity:activityCopy withLimitation:kDASDynamicRuntimeLimitationName];

      duration = 0.0;
      if (v13)
      {
        duration = [activityCopy duration];
      }
    }
  }

  return duration;
}

- (double)immediateDurationForActivity:(id)activity
{
  identifier = [activity identifier];
  customImmediateDurations = self->_customImmediateDurations;
  if (!customImmediateDurations || ([(NSDictionary *)customImmediateDurations objectForKey:identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, customImmediateDurations = self->_customImmediateDurations, !v6))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = customImmediateDurations;
    v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v24;
      *&v13 = 138412290;
      v22 = v13;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([identifier containsString:{v17, v22, v23}])
          {
            v18 = [(NSDictionary *)self->_customImmediateDurations objectForKeyedSubscript:v17];
            [v18 doubleValue];
            v9 = v19;

            v20 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v22;
              v28 = identifier;
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Prefix of activity name %@ found in BPG allowlist", buf, 0xCu);
            }

            if (v9 > 0.0)
            {

              goto LABEL_21;
            }
          }
        }

        v14 = [(NSDictionary *)v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_19;
  }

  v7 = [(NSDictionary *)customImmediateDurations objectForKeyedSubscript:identifier];
  [v7 doubleValue];
  v9 = v8;

  v10 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10011BF98();
  }

  if (v9 <= 0.0)
  {
LABEL_19:
    v9 = 0.0;
  }

LABEL_21:

  return v9;
}

- (void)loadCustomDurations
{
  v3 = +[_DASPlistParser sharedInstance];
  loadOverrides = [v3 loadOverrides];

  if (loadOverrides)
  {
    selfCopy = self;
    v5 = kDASRuntimeLimitationName;
    v44 = loadOverrides;
    v6 = [loadOverrides objectForKeyedSubscript:kDASRuntimeLimitationName];
    v7 = +[_DASPlistParser sharedInstance];
    v8 = [v7 dictionaryForPlist:1];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v55;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v16 = [v8 objectForKeyedSubscript:v15];
          v17 = [v16 objectForKeyedSubscript:v5];

          if (v17)
          {
            if (!v12)
            {
              v12 = +[NSMutableDictionary dictionary];
            }

            [v12 setObject:v17 forKeyedSubscript:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v18 = kDASUninterruptibleRuntimeLimitationName;
    v19 = [v44 objectForKeyedSubscript:kDASUninterruptibleRuntimeLimitationName];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v63 count:16];
    v42 = v12;
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v51;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v50 + 1) + 8 * j);
          v27 = [v8 objectForKeyedSubscript:{v26, v42}];
          v28 = [v27 objectForKeyedSubscript:v18];

          if (v28)
          {
            if (!v23)
            {
              v23 = +[NSMutableDictionary dictionary];
            }

            [v23 setObject:v28 forKeyedSubscript:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v29 = kDASImmediateRuntimeLimitationName;
    v30 = [v44 objectForKeyedSubscript:kDASImmediateRuntimeLimitationName];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v30;
    v31 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v47;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v46 + 1) + 8 * k);
          v37 = [v8 objectForKeyedSubscript:{v36, v42}];
          v38 = [v37 objectForKeyedSubscript:v29];

          if (v38)
          {
            if (!v33)
            {
              v33 = +[NSMutableDictionary dictionary];
            }

            [v33 setObject:v38 forKeyedSubscript:v36];
          }
        }

        v32 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    objc_storeStrong(&selfCopy->_customDurations, v42);
    objc_storeStrong(&selfCopy->_customUninterruptibleDurations, v23);
    objc_storeStrong(&selfCopy->_customImmediateDurations, v33);
    v39 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      customDurations = selfCopy->_customDurations;
      customUninterruptibleDurations = selfCopy->_customUninterruptibleDurations;
      *buf = 138412546;
      v59 = customUninterruptibleDurations;
      v60 = 2112;
      v61 = customDurations;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Loaded Exceptions for uninterruptible duration %@, static duration %@", buf, 0x16u);
    }

    loadOverrides = v44;
  }
}

- (double)defaultRuntimeForActivity:(id)activity
{
  activityCopy = activity;
  immediateRuntime = -1.0;
  if ([(_DASRuntimeLimiter *)self limitsApplyToActivity:activityCopy])
  {
    identifier = [activityCopy identifier];
    v7 = [(NSMutableDictionary *)self->_testingOverride objectForKeyedSubscript:identifier];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_testingOverride objectForKeyedSubscript:identifier];
      [v8 doubleValue];
      immediateRuntime = v9;

      v10 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [NSNumber numberWithDouble:immediateRuntime];
        v13 = 138543618;
        v14 = activityCopy;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ has testing overrides to %@ seconds", &v13, 0x16u);
      }
    }

    else if ([_DASRuntimeLimiter activityRequiresImmediateRuntimeCaps:activityCopy])
    {
      immediateRuntime = self->_immediateRuntime;
    }

    else if ([_DASRuntimeLimiter activityRequiresLeniencyCaps:activityCopy])
    {
      immediateRuntime = self->_leniencyRuntime;
    }

    else if ([_DASRuntimeLimiter activityRequiresStrictCaps:activityCopy])
    {
      immediateRuntime = self->_limitedRuntime;
    }

    else
    {
      immediateRuntime = self->_defaultRuntime;
    }
  }

  return immediateRuntime;
}

- (double)remainingAggregatedRuntimeForActivity:(id)activity
{
  activityCopy = activity;
  if (![(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isEnabled]|| ![(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isRuntimeAllocatedForActivity:activityCopy]|| ([(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator remainingAllocatedRuntimeForActivity:activityCopy], v6 = v5, v5 < 0.0))
  {
    v6 = 9.22337204e18;
  }

  return v6;
}

- (double)maximumRuntimeForActivity:(id)activity
{
  activityCopy = activity;
  immediateRuntime = -1.0;
  if ([(_DASRuntimeLimiter *)self limitsApplyToActivity:activityCopy])
  {
    identifier = [activityCopy identifier];
    v7 = [(NSMutableDictionary *)self->_testingOverride objectForKeyedSubscript:identifier];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_testingOverride objectForKeyedSubscript:identifier];
      [v8 doubleValue];
      immediateRuntime = v9;

      v10 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [NSNumber numberWithDouble:immediateRuntime];
        v18 = 138543618;
        v19 = activityCopy;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ has testing overrides to %@ seconds", &v18, 0x16u);
      }

      goto LABEL_25;
    }

    if ([activityCopy maximumRuntime] < 1)
    {
      if ([activityCopy requestsImmediateRuntime])
      {
        immediateRuntime = self->_immediateRuntime;
      }

      else
      {
        if (![(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isEnabled]|| ![(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isRuntimeAllocatedForActivity:activityCopy])
        {
          goto LABEL_16;
        }

        [(_DASRuntimeLimiter *)self remainingAggregatedRuntimeForActivity:activityCopy];
        immediateRuntime = v12;
        if (v12 != 9.22337204e18 && v12 != 0.0)
        {
          goto LABEL_25;
        }

        if (v12 != 0.0)
        {
LABEL_16:
          v13 = 0.0;
          if (![(_DASRuntimeLimiter *)self hasDynamicOverrides:activityCopy]|| ([(_DASRuntimeLimiter *)self dynamicDurationForActivity:activityCopy], v13 = v14, immediateRuntime = -1.0, v14 != -1.0))
          {
            if ([(_DASRuntimeLimiter *)self hasStaticOverrides:activityCopy])
            {
              [(_DASRuntimeLimiter *)self staticDurationForActivity:activityCopy];
              if (v13 < v15)
              {
                v13 = v15;
              }
            }

            immediateRuntime = -1.0;
            if (v13 != -1.0)
            {
              [(_DASRuntimeLimiter *)self defaultRuntimeForActivity:activityCopy];
              if (v13 >= v16)
              {
                immediateRuntime = v13;
              }

              else
              {
                immediateRuntime = v16;
              }
            }
          }

          goto LABEL_25;
        }

        immediateRuntime = fmax(self->_roundRobinRuntime, 0.0);
      }
    }

    else
    {
      immediateRuntime = [activityCopy maximumRuntime];
    }

LABEL_25:
  }

  return immediateRuntime;
}

- (BOOL)containsFullRuntimeOverridesForActivity:(id)activity
{
  activityCopy = activity;
  name = [activityCopy name];
  if (![name containsString:@"com.apple.softwareupdate.autoinstall.startInstall"])
  {
    name2 = [activityCopy name];
    v7 = [name2 containsString:@"com.apple.SUOSUScheduler.tonight.install"];

    if (v7)
    {
      goto LABEL_14;
    }

    if ([(_DASRuntimeLimiter *)self hasStaticOverrides:activityCopy]&& ([(_DASRuntimeLimiter *)self staticDurationForActivity:activityCopy], v8 == -1.0))
    {
      v9 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = 138412290;
      v15 = activityCopy;
      v10 = "Unlimited runtime due to static overrides: %@";
    }

    else
    {
      if (![(_DASRuntimeLimiter *)self hasDynamicOverrides:activityCopy]|| ([(_DASRuntimeLimiter *)self dynamicDurationForActivity:activityCopy], v11 != -1.0))
      {
        v12 = 0;
        goto LABEL_15;
      }

      v9 = [_DASDaemonLogger logForCategory:@"runtimeLimits"];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v14 = 138412290;
      v15 = activityCopy;
      v10 = "Unlimited runtime due to dynamic overrides: %@";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
    goto LABEL_13;
  }

LABEL_14:
  v12 = 1;
LABEL_15:

  return v12;
}

- (BOOL)limitsApplyToActivity:(id)activity
{
  activityCopy = activity;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority > _DASSchedulingPriorityDefault)
  {
    goto LABEL_7;
  }

  if ([activityCopy userRequestedBackupTask])
  {
    goto LABEL_7;
  }

  groupName = [activityCopy groupName];
  if (groupName)
  {
    v7 = groupName;
    groupName2 = [activityCopy groupName];
    v9 = [groupName2 isEqualToString:@"NSURLSessionBackgroundPoolName"];

    if (v9)
    {
      goto LABEL_7;
    }
  }

  name = [activityCopy name];

  if (!name || [(_DASRuntimeLimiter *)self containsFullRuntimeOverridesForActivity:activityCopy])
  {
LABEL_7:
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = [activityCopy isBackgroundTaskActivity] ^ 1;
  }

  return v11;
}

- (BOOL)featureDurationLimitAppliesToActivity:(id)activity
{
  activityCopy = activity;
  fastPass = [activityCopy fastPass];
  if (fastPass)
  {
    featureCodes = [activityCopy featureCodes];
    if (featureCodes)
    {
      featureCodes2 = [activityCopy featureCodes];
      v7 = [featureCodes2 count] != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)featureHasNoRemainingRuntimeForActivity:(id)activity
{
  activityCopy = activity;
  featureCodes = [activityCopy featureCodes];
  if (featureCodes)
  {
    v6 = featureCodes;
    featureCodes2 = [activityCopy featureCodes];
    v8 = [featureCodes2 count];

    if (v8)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = activityCopy;
      obj = [activityCopy featureCodes];
      v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v28 = *v30;
        LOBYTE(v8) = 1;
        p_info = &OBJC_METACLASS____DASDaemonLogger.info;
        do
        {
          v12 = 0;
          v26 = v10;
          do
          {
            if (*v30 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v29 + 1) + 8 * v12);
            v14 = [(_DASRuntimeLimiter *)self featureHasRunTime:v13];
            v15 = [p_info + 1 logForCategory:@"featureDurationTracker"];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = p_info;
              selfCopy = self;
              intValue = [v13 intValue];
              v19 = +[_DASFeatureDurationTracker sharedInstance];
              [v19 durationForFeature:v13];
              v21 = v20;
              v22 = +[_DASFeatureDurationTracker sharedInstance];
              [v22 maximumDurationForFeature:v13];
              *buf = 67109632;
              v34 = intValue;
              self = selfCopy;
              p_info = v16;
              v35 = 2048;
              v36 = v21;
              v37 = 2048;
              v38 = v23;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Feature code %d has utilized %f < %f", buf, 0x1Cu);

              v10 = v26;
            }

            LOBYTE(v8) = (v14 ^ 1) & v8;

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v10);
      }

      else
      {
        LOBYTE(v8) = 1;
      }

      activityCopy = v25;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)exhaustedRuntimeFeatureCodesAssociatedWithActivity:(id)activity
{
  activityCopy = activity;
  featureCodes = [activityCopy featureCodes];
  if (featureCodes && (v6 = featureCodes, [activityCopy featureCodes], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    v9 = +[NSMutableSet set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    featureCodes2 = [activityCopy featureCodes];
    v11 = [featureCodes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(featureCodes2);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (![(_DASRuntimeLimiter *)self featureHasRunTime:v15])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [featureCodes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v16 = [v9 copy];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (double)remainingDurationForFeature:(id)feature
{
  featureCopy = feature;
  v4 = +[_DASFeatureDurationTracker sharedInstance];
  [v4 maximumDurationForFeature:featureCopy];
  v6 = v5;

  v7 = +[_DASFeatureDurationTracker sharedInstance];
  [v7 durationForFeature:featureCopy];
  v9 = v8;

  v10 = v6 - v9;
  v11 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = featureCopy;
    v15 = 2048;
    v16 = v9;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Feature %@ has consumed %.1fs, remaining run time budget %.1fs", &v13, 0x20u);
  }

  return v10;
}

- (double)maximumRemainingFeatureDurationForActivity:(id)activity
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  featureCodes = [activity featureCodes];
  v5 = [featureCodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(featureCodes);
        }

        [(_DASRuntimeLimiter *)self remainingDurationForFeature:*(*(&v12 + 1) + 8 * i)];
        if (v10 > v8)
        {
          v8 = v10;
        }
      }

      v6 = [featureCodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)shouldLimitActivityAtRuntime:(id)runtime whileBlockingOtherTasks:(BOOL)tasks withStartDate:(id)date atDate:(id)atDate withContext:(id)context
{
  tasksCopy = tasks;
  runtimeCopy = runtime;
  dateCopy = date;
  atDateCopy = atDate;
  contextCopy = context;
  suspendRequestDate = [runtimeCopy suspendRequestDate];

  v17 = 0;
  if (dateCopy && !suspendRequestDate)
  {
    if (!-[_DASRuntimeLimiter limitsApplyToActivity:](self, "limitsApplyToActivity:", runtimeCopy) || [runtimeCopy maximumRuntime] == -1)
    {
      goto LABEL_11;
    }

    if ([_DASPhotosPolicy isiCPLActivity:runtimeCopy]&& [_DASPhotosPolicy isPhotosSyncOverriddenWithContext:contextCopy])
    {
      v18 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = runtimeCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Runtime limit doesn't apply because User initiated Sync Now %{public}@", buf, 0xCu);
      }

      v17 = 0;
      goto LABEL_34;
    }

    [atDateCopy timeIntervalSinceDate:dateCopy];
    v20 = v19;
    if (v19 < [runtimeCopy maximumRuntime])
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (![(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isEngaged])
    {
      goto LABEL_24;
    }

    if ([runtimeCopy uninterruptibleDuration] && !tasksCopy && v20 < objc_msgSend(runtimeCopy, "uninterruptibleDuration"))
    {
      goto LABEL_11;
    }

    if ([(_DASDynamicRuntimeAllocator *)self->_dynamicRuntimeAllocator isRuntimeAllocatedForActivity:runtimeCopy]&& ([(_DASRuntimeLimiter *)self remainingAggregatedRuntimeForActivity:runtimeCopy], tasksCopy) && v22 != 9.22337204e18 && (v22 <= 0.0 || v20 >= v22))
    {
      v37 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [runtimeCopy maximumRuntime] / 60.0);
        v39 = [NSNumber numberWithDouble:v20 / 60.0];
        v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [runtimeCopy uninterruptibleDuration]);
        *buf = 138544130;
        v44 = runtimeCopy;
        v45 = 2112;
        v46 = v38;
        v47 = 2114;
        v48 = v39;
        v49 = 2112;
        v50 = v40;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ exhausted runtime limit %@ mins, running for %{public}@ mins with uninterruptible duration %@", buf, 0x2Au);
      }

      v35 = kDASRuntimeLimitationName;
      v36 = @"Exceed Activity Aggregated Runtime Limit";
    }

    else
    {
LABEL_24:
      if (v20 < [runtimeCopy maximumRuntime])
      {
        if (![(_DASRuntimeLimiter *)self featureDurationLimitAppliesToActivity:runtimeCopy])
        {
          goto LABEL_11;
        }

        [(_DASRuntimeLimiter *)self maximumRemainingFeatureDurationForActivity:runtimeCopy];
        if (v20 < v23)
        {
          goto LABEL_11;
        }

        v24 = v23;
        v25 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
        v26 = v20 / 60.0;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [NSNumber numberWithDouble:v26];
          v28 = v24 / 60.0;
          v29 = [NSNumber numberWithDouble:v28];
          *buf = 138543874;
          v44 = runtimeCopy;
          v45 = 2114;
          v46 = v27;
          v47 = 2112;
          v48 = v29;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ should suspend, running for %{public}@ mins (remaining feature runtime limit %@) mins", buf, 0x20u);
        }

        else
        {
          v28 = v24 / 60.0;
        }

        v35 = kDASRuntimeLimitationName;
        [NSString stringWithFormat:@"Exceed Feature Runtime %f mins > %f mins", *&v26, *&v28];
        v18 = LABEL_33:;
        v17 = [_DASLimiterResponse limitResponseWithDecision:3 withLimiter:v35 validityDuration:v18 rationale:600.0];
LABEL_34:

        goto LABEL_12;
      }

      v30 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
      v31 = v20 / 60.0;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [NSNumber numberWithDouble:v31];
        v33 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [runtimeCopy maximumRuntime] / 60.0);
        v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [runtimeCopy isIntensive]);
        *buf = 138544130;
        v44 = runtimeCopy;
        v45 = 2114;
        v46 = v32;
        v47 = 2112;
        v48 = v33;
        v49 = 2112;
        v50 = v34;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ ran for %{public}@ mins > max runtime %@ isIntensive %@", buf, 0x2Au);
      }

      v35 = kDASRuntimeLimitationName;
      v41 = v31;
      v42 = [runtimeCopy maximumRuntime] / 60.0;
      v36 = @"Exceed Activity Runtime %f mins > %f mins";
    }

    [NSString stringWithFormat:v36, *&v41, *&v42];
    goto LABEL_33;
  }

LABEL_12:

  return v17;
}

- (void)loadTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"runtimeDefaultLimit"];
  [v3 doubleValue];
  v5 = v4;

  self->_defaultRuntime = v5;
  v6 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    defaultRuntime = self->_defaultRuntime;
    v28 = 134217984;
    v29 = defaultRuntime;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trial: runtimeDefaultLimit %ld", &v28, 0xCu);
  }

  v8 = [(_DASTrialManager *)self->_trialManager factorWithName:@"runtimeLenientLimit"];
  [v8 doubleValue];
  v10 = v9;

  self->_leniencyRuntime = v10;
  v11 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    leniencyRuntime = self->_leniencyRuntime;
    v28 = 134217984;
    v29 = leniencyRuntime;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Trial: runtimeLenientLimit %ld", &v28, 0xCu);
  }

  v13 = [(_DASTrialManager *)self->_trialManager factorWithName:@"runtimeLimitedLimit"];
  [v13 doubleValue];
  v15 = v14;

  self->_limitedRuntime = v15;
  v16 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    limitedRuntime = self->_limitedRuntime;
    v28 = 134217984;
    v29 = limitedRuntime;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Trial: runtimeLimitedLimit %ld", &v28, 0xCu);
  }

  v18 = [(_DASTrialManager *)self->_trialManager factorWithName:@"runtimeImmediateLimit"];
  [v18 doubleValue];
  v20 = v19;

  self->_immediateRuntime = v20;
  v21 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    immediateRuntime = self->_immediateRuntime;
    v28 = 134217984;
    v29 = immediateRuntime;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Trial: runtimeImmediateLimit %ld", &v28, 0xCu);
  }

  v23 = [(_DASTrialManager *)self->_trialManager factorWithName:@"runtimeRoundRobinLimit"];
  [v23 doubleValue];
  v25 = v24;

  self->_roundRobinRuntime = v25;
  v26 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    roundRobinRuntime = self->_roundRobinRuntime;
    v28 = 134217984;
    v29 = roundRobinRuntime;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Trial: runtimeRoundRobinLimit %ld", &v28, 0xCu);
  }
}

- (void)dasTrialManager:(id)manager hasUpdatedParametersForNamespace:(id)namespace
{
  if ([namespace isEqualToString:@"COREOS_DAS"])
  {

    [(_DASRuntimeLimiter *)self loadTrialParameters];
  }
}

- (void)resetOnlyPreemptiveSuspend
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"isPreemptiveSuspendOnly"];
  bOOLeanValue = [v3 BOOLeanValue];

  self->_onlyPreemptiveSuspend = bOOLeanValue;
  v5 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = bOOLeanValue;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trial: isPreemptiveSuspendOnly %d", v6, 8u);
  }
}

- (BOOL)deleteLimitForActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(NSMutableDictionary *)self->_testingOverride objectForKeyedSubscript:activityCopy];

  if (v5)
  {
    [(NSMutableDictionary *)self->_testingOverride removeObjectForKey:activityCopy];
    v6 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = activityCopy;
      v7 = "Removing override for %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
    }
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = activityCopy;
      v7 = "Failed to remove override for %@";
      goto LABEL_6;
    }
  }

  return v5 != 0;
}

- (BOOL)setLimit:(double)limit forActivity:(id)activity
{
  activityCopy = activity;
  if (!self->_testingOverride)
  {
    v7 = +[NSMutableDictionary dictionary];
    testingOverride = self->_testingOverride;
    self->_testingOverride = v7;
  }

  v9 = [NSNumber numberWithDouble:limit];
  [(NSMutableDictionary *)self->_testingOverride setObject:v9 forKeyedSubscript:activityCopy];

  v10 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithDouble:limit];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = activityCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set limit %@ seconds for %@", &v13, 0x16u);
  }

  return 1;
}

- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses
{
  activityCopy = activity;
  responsesCopy = responses;
  if (![(_DASRuntimeLimiter *)self limitsApplyToActivity:activityCopy])
  {
    goto LABEL_9;
  }

  startDate = [activityCopy startDate];

  if (!startDate)
  {
    v10 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10011C080();
    }

    goto LABEL_8;
  }

  suspendRequestDate = [activityCopy suspendRequestDate];

  if (suspendRequestDate)
  {
    v10 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10011C00C();
    }

LABEL_8:

LABEL_9:
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  identifier = [activityCopy identifier];
  if (!identifier)
  {
    goto LABEL_20;
  }

  v14 = [(NSMutableDictionary *)self->_testingOverride objectForKeyedSubscript:identifier];

  if (!v14 || (-[_DASRuntimeLimiter testingOverride](self, "testingOverride"), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKeyedSubscript:identifier], v16 = objc_claimAutoreleasedReturnValue(), v15, v11 = objc_msgSend(v16, "intValue"), v16, v11))
  {
LABEL_20:
    if ([_DASLimiterResponse queryActivityDecision:3 fromResponses:responsesCopy])
    {
      [_DASLimiterResponse updateActivity:activityCopy withLimitResponse:responsesCopy];
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

LABEL_10:
  return v11;
}

@end
@interface _DASPhotosPolicy
+ (BOOL)isActivity:(id)a3 consideredNonDiscretionary:(id)a4;
+ (BOOL)isAppLibraryActivity:(id)a3;
+ (BOOL)isCMMActivity:(id)a3;
+ (BOOL)isPhotosForegroundWithContext:(id)a3;
+ (BOOL)isPhotosMessagesAppForegroundWithContext:(id)a3;
+ (BOOL)isPhotosSyncActivity:(id)a3;
+ (BOOL)isPhotosSyncOverriddenWithContext:(id)a3;
+ (BOOL)isiCPLActivity:(id)a3;
+ (BOOL)shouldOverrideForIntentSync:(unint64_t)a3 activity:(id)a4;
+ (id)photosFocalAppStateChangedPredicate;
+ (id)policyInstance;
+ (void)initialize;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)haveSignificantWorkRemaining:(id)a3;
- (BOOL)isDataBudgetAvailableForPhotos:(id)a3;
- (BOOL)isEnergyBudgetAvailableForPhotos:(id)a3;
- (BOOL)isLowPowerModeOverriddenForPhotos:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (BOOL)shouldOverrideAll:(id)a3;
- (BOOL)shouldOverrideBudgets:(id)a3;
- (BOOL)shouldOverrideSignificantWork:(id)a3;
- (_DASPhotosPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASPhotosPolicy

+ (id)photosFocalAppStateChangedPredicate
{
  v2 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v3 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v4 = +[_CDContextQueries appUsageBundleID];
  v5 = [_CDContextualPredicate predicateForKeyPath:v2 withFormat:@"ANY SELF.%@.value.%K == %@", v3, v4, @"com.apple.mobileslideshow"];

  return v5;
}

+ (void)initialize
{
  v2 = [_CDContextualKeyPath keyPathWithKey:@"/app/photos/significantWork"];
  v3 = qword_10020B368;
  qword_10020B368 = v2;

  v4 = [_CDContextualKeyPath keyPathWithKey:@"/app/photos/budgetOverride"];
  v5 = qword_10020B370;
  qword_10020B370 = v4;

  v6 = [_CDContextualKeyPath keyPathWithKey:@"/app/photos/isBlocked"];
  v7 = qword_10020B378;
  qword_10020B378 = v6;

  v8 = [_CDContextualKeyPath keyPathWithKey:@"/app/photos/isBlocked/start"];
  v9 = qword_10020B380;
  qword_10020B380 = v8;

  v10 = [_CDContextualKeyPath keyPathWithKey:@"/app/photos/isUnBlocked"];
  v11 = qword_10020B388;
  qword_10020B388 = v10;

  _objc_release_x1(v10, v11);
}

- (id)initializeTriggers
{
  v9 = [_CDContextualPredicate predicateForChangeAtKeyPath:qword_10020B368];
  v8 = [_CDContextualPredicate predicateForChangeAtKeyPath:qword_10020B370];
  v7 = [objc_opt_class() photosFocalAppStateChangedPredicate];
  v14[0] = @"identifier";
  v14[1] = @"predicate";
  v15[0] = @"com.apple.dueatctivityscheduler.photospolicy.photoswork";
  v15[1] = v9;
  v14[2] = @"deviceSet";
  v14[3] = @"mustWake";
  v15[2] = &off_1001C9A90;
  v15[3] = &__kCFBooleanTrue;
  v14[4] = @"qualityOfService";
  v15[4] = &off_1001C9AA8;
  v2 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v16[0] = v2;
  v12[0] = @"identifier";
  v12[1] = @"predicate";
  v13[0] = @"com.apple.duetactivityscheduler.photospolicy.budgetOverride";
  v13[1] = v8;
  v12[2] = @"deviceSet";
  v12[3] = @"mustWake";
  v13[2] = &off_1001C9A90;
  v13[3] = &__kCFBooleanTrue;
  v12[4] = @"qualityOfService";
  v13[4] = &off_1001C9AA8;
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  v16[1] = v3;
  v10[0] = @"identifier";
  v10[1] = @"predicate";
  v11[0] = @"com.apple.duetactivityscheduler.photospolicy.appchanged";
  v11[1] = v7;
  v10[2] = @"deviceSet";
  v10[3] = @"mustWake";
  v11[2] = &off_1001C9A90;
  v11[3] = &__kCFBooleanTrue;
  v10[4] = @"qualityOfService";
  v11[4] = &off_1001C9AA8;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  v16[2] = v4;
  v5 = [NSArray arrayWithObjects:v16 count:3];

  return v5;
}

- (_DASPhotosPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASPhotosPolicy;
  v2 = [(_DASPhotosPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Photos Policy";

    v5 = [(_DASPhotosPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v5;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000686F0;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B390 != -1)
  {
    dispatch_once(&qword_10020B390, block);
  }

  v2 = qword_10020B398;

  return v2;
}

+ (BOOL)isiCPLActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"com.apple.dasd.DataCollection.PoliciesBlockingCriteria"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 name];
    if ([v7 containsString:@"com.apple.cloudphotod.sync.discretionary"])
    {
      v6 = 1;
    }

    else
    {
      v8 = [v3 name];
      if ([v8 containsString:@"com.apple.KeyValueService.Production.Private.sync"] & 1) != 0 || !objc_msgSend(v3, "requiresNetwork") || (objc_msgSend(v3, "requestsApplicationLaunch"))
      {
        v6 = 0;
      }

      else
      {
        v10 = [v3 relatedApplications];
        if ([v10 containsObject:@"com.apple.mobileslideshow"])
        {
          v6 = 1;
        }

        else
        {
          v11 = [v3 relatedApplications];
          v6 = [v11 containsObject:@"com.apple.mobileslideshow.PhotosMessagesApp"];
        }
      }
    }
  }

  return v6;
}

+ (BOOL)isPhotosSyncActivity:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 containsString:@"com.apple.cloudphotod.sync.discretionary"];

  return v4;
}

+ (BOOL)isAppLibraryActivity:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 containsString:@"com.apple.cloudphotod.sync.AppLibrary"];

  return v4;
}

+ (BOOL)isCMMActivity:(id)a3
{
  v3 = a3;
  if ([v3 requiresNetwork] && (objc_msgSend(v3, "requestsApplicationLaunch") & 1) == 0)
  {
    v5 = [v3 relatedApplications];
    v4 = [v5 containsObject:@"com.apple.mobileslideshow.PhotosMessagesApp"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldOverrideForIntentSync:(unint64_t)a3 activity:(id)a4
{
  v5 = a4;
  v6 = [v5 uploadSize];
  if (v6 == _DASActivityTransferSizeZero || [v5 uploadSize] > 0x19000)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (a3 && (a3 & 0xFFFFFFFFFFFFFAFDLL) == 0)
    {
      v9 = v5;
      objc_sync_enter(v9);
      v10 = [v9 policyResponseMetadata];
      v11 = +[_DASNetworkQualityPolicy policyInstance];
      v12 = [v11 policyName];
      v13 = [v10 objectForKeyedSubscript:v12];
      v14 = [v13 reason];

      objc_sync_exit(v9);
      v7 = (a3 & 0x100) == 0 || v14 == 4;
    }
  }

  return v7;
}

- (BOOL)haveSignificantWorkRemaining:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:qword_10020B368];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldOverrideBudgets:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:qword_10020B370];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldOverrideSignificantWork:(id)a3
{
  v3 = a3;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntegerValue];
  return (v6 >> 2) & 1;
}

- (BOOL)shouldOverrideAll:(id)a3
{
  v3 = a3;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntegerValue];
  return (v6 >> 14) & 1;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.photospolicy.appchanged"])
  {
    v8 = [_DASPhotosPolicy isPhotosForegroundWithContext:v7];
  }

  else if ([v6 isEqualToString:@"com.apple.dueatctivityscheduler.photospolicy.photoswork"])
  {
    v8 = [(_DASPhotosPolicy *)self haveSignificantWorkRemaining:v7];
  }

  else
  {
    if (![v6 isEqualToString:@"com.apple.duetactivityscheduler.photospolicy.budgetOverride"])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [(_DASPhotosPolicy *)self shouldOverrideBudgets:v7];
  }

  v9 = v8 ^ 1;
LABEL_8:

  return v9;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isiCPLActivity:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [objc_opt_class() isCMMActivity:v3];
  }

  return v4;
}

+ (BOOL)isPhotosForegroundWithContext:(id)a3
{
  v3 = [_DASApplicationPolicy focalApplicationsWithContext:a3];
  v4 = [v3 containsObject:@"com.apple.mobileslideshow"];

  return v4;
}

+ (BOOL)isPhotosMessagesAppForegroundWithContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:qword_10020B370];
  v4 = ([v3 unsignedIntegerValue] >> 3) & 1;

  return v4;
}

+ (BOOL)isActivity:(id)a3 consideredNonDiscretionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v5) && (+[_DASPhotosPolicy isPhotosSyncOverriddenWithContext:](_DASPhotosPolicy, "isPhotosSyncOverriddenWithContext:", v6) || +[_DASPhotosPolicy isPhotosForegroundWithContext:](_DASPhotosPolicy, "isPhotosForegroundWithContext:", v6) || ([v5 requestsImmediateRuntime] & 1) != 0) || +[_DASPhotosPolicy isCMMActivity:](_DASPhotosPolicy, "isCMMActivity:", v5) && +[_DASPhotosPolicy isPhotosMessagesAppForegroundWithContext:](_DASPhotosPolicy, "isPhotosMessagesAppForegroundWithContext:", v6);

  return v7;
}

- (BOOL)isLowPowerModeOverriddenForPhotos:(id)a3
{
  v3 = a3;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntegerValue];
  return (v6 >> 5) & 1;
}

- (BOOL)isDataBudgetAvailableForPhotos:(id)a3
{
  v3 = a3;
  if ([_DASDataBudgetPolicy isBudgetAvailable:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v6 = [v3 objectForKeyedSubscript:v5];
    v4 = [v6 unsignedIntegerValue];
  }

  return v4 & 1;
}

- (BOOL)isEnergyBudgetAvailableForPhotos:(id)a3
{
  v3 = a3;
  if ([_DASEnergyBudgetPolicy isBudgetAvailable:v3])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v6 = [v3 objectForKeyedSubscript:v5];
    v7 = [v6 unsignedIntegerValue];

    v4 = (v7 >> 1) & 1;
  }

  return v4;
}

+ (BOOL)isPhotosSyncOverriddenWithContext:(id)a3
{
  v3 = a3;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntegerValue];
  return (v6 >> 14) & 1;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Photos Policy"];
  if (+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v6) && (+[_DASLowPowerModePolicy policyInstance](_DASLowPowerModePolicy, "policyInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isLowPowerModePolicyEnforced:v7], v9, v10))
  {
    v11 = [(_DASPhotosPolicy *)self isLowPowerModeOverriddenForPhotos:v7];
    v12 = [NSNumber numberWithBool:v11];
    v13 = [NSPredicate predicateWithFormat:@"isLowPowerModeOverriddenForPhotos == %@", v12];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v13];

    if (!v11)
    {
      [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 1];
      goto LABEL_17;
    }

    v14 = 67;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(_DASPhotosPolicy *)self isDataBudgetAvailableForPhotos:v7];
  v16 = [(_DASPhotosPolicy *)self isEnergyBudgetAvailableForPhotos:v7];
  if ([_DASPhotosPolicy isCMMActivity:v6])
  {
    v17 = [_DASPhotosPolicy isPhotosMessagesAppForegroundWithContext:v7];
    v32 = v14;
    v33 = v6;
    v18 = v17;
    v19 = [NSNumber numberWithBool:v17];
    v20 = [NSNumber numberWithBool:v15];
    v21 = [NSNumber numberWithBool:v16];
    v22 = [NSPredicate predicateWithFormat:@"isCMMActivity == 1 && isPhotosMessagesAppForeground == %@ && isDataBudgetAvailable == %@ && isEnergyBudgetAvailable == %@", v19, v20, v21];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v22];

    v14 = v32;
    v23 = v18 && v15 && v16;
    v6 = v33;
    if (v23)
    {
LABEL_14:
      v14 = 67;
      goto LABEL_18;
    }
  }

  v24 = [(_DASPhotosPolicy *)self shouldOverrideSignificantWork:v7];
  v25 = [_DASSystemContext isPluggedIn:v7];
  if (![(_DASPhotosPolicy *)self haveSignificantWorkRemaining:v7]|| (v25 & 1) != 0)
  {
LABEL_12:
    if (![(_DASPhotosPolicy *)self shouldOverrideAll:v7])
    {
      goto LABEL_18;
    }

    v28 = [NSPredicate predicateWithFormat:@"shouldOverrideAll == 1"];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v28];

    goto LABEL_14;
  }

  if (v24)
  {
    v26 = [NSNumber numberWithBool:1];
    v27 = [NSPredicate predicateWithFormat:@"shouldOverrideSignificantWork == %@", v26];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v27];

    goto LABEL_12;
  }

  [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 2];
  v29 = [NSPredicate predicateWithFormat:@"significantWorkRemaining == 1 && pluggedIn == 0"];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v29];

LABEL_17:
  v14 = 33;
LABEL_18:
  v30 = [_DASPolicyResponse policyResponseWithDecision:v14 validityDuration:v8 rationale:0x384uLL];

  return v30;
}

@end
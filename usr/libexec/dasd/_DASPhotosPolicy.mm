@interface _DASPhotosPolicy
+ (BOOL)isActivity:(id)activity consideredNonDiscretionary:(id)discretionary;
+ (BOOL)isAppLibraryActivity:(id)activity;
+ (BOOL)isCMMActivity:(id)activity;
+ (BOOL)isPhotosForegroundWithContext:(id)context;
+ (BOOL)isPhotosMessagesAppForegroundWithContext:(id)context;
+ (BOOL)isPhotosSyncActivity:(id)activity;
+ (BOOL)isPhotosSyncOverriddenWithContext:(id)context;
+ (BOOL)isiCPLActivity:(id)activity;
+ (BOOL)shouldOverrideForIntentSync:(unint64_t)sync activity:(id)activity;
+ (id)photosFocalAppStateChangedPredicate;
+ (id)policyInstance;
+ (void)initialize;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)haveSignificantWorkRemaining:(id)remaining;
- (BOOL)isDataBudgetAvailableForPhotos:(id)photos;
- (BOOL)isEnergyBudgetAvailableForPhotos:(id)photos;
- (BOOL)isLowPowerModeOverriddenForPhotos:(id)photos;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (BOOL)shouldOverrideAll:(id)all;
- (BOOL)shouldOverrideBudgets:(id)budgets;
- (BOOL)shouldOverrideSignificantWork:(id)work;
- (_DASPhotosPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
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
  photosFocalAppStateChangedPredicate = [objc_opt_class() photosFocalAppStateChangedPredicate];
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
  v11[1] = photosFocalAppStateChangedPredicate;
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

    initializeTriggers = [(_DASPhotosPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000686F0;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B390 != -1)
  {
    dispatch_once(&qword_10020B390, block);
  }

  v2 = qword_10020B398;

  return v2;
}

+ (BOOL)isiCPLActivity:(id)activity
{
  activityCopy = activity;
  name = [activityCopy name];
  v5 = [name isEqualToString:@"com.apple.dasd.DataCollection.PoliciesBlockingCriteria"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    name2 = [activityCopy name];
    if ([name2 containsString:@"com.apple.cloudphotod.sync.discretionary"])
    {
      v6 = 1;
    }

    else
    {
      name3 = [activityCopy name];
      if ([name3 containsString:@"com.apple.KeyValueService.Production.Private.sync"] & 1) != 0 || !objc_msgSend(activityCopy, "requiresNetwork") || (objc_msgSend(activityCopy, "requestsApplicationLaunch"))
      {
        v6 = 0;
      }

      else
      {
        relatedApplications = [activityCopy relatedApplications];
        if ([relatedApplications containsObject:@"com.apple.mobileslideshow"])
        {
          v6 = 1;
        }

        else
        {
          relatedApplications2 = [activityCopy relatedApplications];
          v6 = [relatedApplications2 containsObject:@"com.apple.mobileslideshow.PhotosMessagesApp"];
        }
      }
    }
  }

  return v6;
}

+ (BOOL)isPhotosSyncActivity:(id)activity
{
  name = [activity name];
  v4 = [name containsString:@"com.apple.cloudphotod.sync.discretionary"];

  return v4;
}

+ (BOOL)isAppLibraryActivity:(id)activity
{
  name = [activity name];
  v4 = [name containsString:@"com.apple.cloudphotod.sync.AppLibrary"];

  return v4;
}

+ (BOOL)isCMMActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy requiresNetwork] && (objc_msgSend(activityCopy, "requestsApplicationLaunch") & 1) == 0)
  {
    relatedApplications = [activityCopy relatedApplications];
    v4 = [relatedApplications containsObject:@"com.apple.mobileslideshow.PhotosMessagesApp"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldOverrideForIntentSync:(unint64_t)sync activity:(id)activity
{
  activityCopy = activity;
  uploadSize = [activityCopy uploadSize];
  if (uploadSize == _DASActivityTransferSizeZero || [activityCopy uploadSize] > 0x19000)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (sync && (sync & 0xFFFFFFFFFFFFFAFDLL) == 0)
    {
      v9 = activityCopy;
      objc_sync_enter(v9);
      policyResponseMetadata = [v9 policyResponseMetadata];
      v11 = +[_DASNetworkQualityPolicy policyInstance];
      policyName = [v11 policyName];
      v13 = [policyResponseMetadata objectForKeyedSubscript:policyName];
      reason = [v13 reason];

      objc_sync_exit(v9);
      v7 = (sync & 0x100) == 0 || reason == 4;
    }
  }

  return v7;
}

- (BOOL)haveSignificantWorkRemaining:(id)remaining
{
  v3 = [remaining objectForKeyedSubscript:qword_10020B368];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldOverrideBudgets:(id)budgets
{
  v3 = [budgets objectForKeyedSubscript:qword_10020B370];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldOverrideSignificantWork:(id)work
{
  workCopy = work;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [workCopy objectForKeyedSubscript:v4];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return (unsignedIntegerValue >> 2) & 1;
}

- (BOOL)shouldOverrideAll:(id)all
{
  allCopy = all;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [allCopy objectForKeyedSubscript:v4];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return (unsignedIntegerValue >> 14) & 1;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  triggerCopy = trigger;
  stateCopy = state;
  if ([triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.photospolicy.appchanged"])
  {
    v8 = [_DASPhotosPolicy isPhotosForegroundWithContext:stateCopy];
  }

  else if ([triggerCopy isEqualToString:@"com.apple.dueatctivityscheduler.photospolicy.photoswork"])
  {
    v8 = [(_DASPhotosPolicy *)self haveSignificantWorkRemaining:stateCopy];
  }

  else
  {
    if (![triggerCopy isEqualToString:@"com.apple.duetactivityscheduler.photospolicy.budgetOverride"])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [(_DASPhotosPolicy *)self shouldOverrideBudgets:stateCopy];
  }

  v9 = v8 ^ 1;
LABEL_8:

  return v9;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  if ([objc_opt_class() isiCPLActivity:activityCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [objc_opt_class() isCMMActivity:activityCopy];
  }

  return v4;
}

+ (BOOL)isPhotosForegroundWithContext:(id)context
{
  v3 = [_DASApplicationPolicy focalApplicationsWithContext:context];
  v4 = [v3 containsObject:@"com.apple.mobileslideshow"];

  return v4;
}

+ (BOOL)isPhotosMessagesAppForegroundWithContext:(id)context
{
  v3 = [context objectForKeyedSubscript:qword_10020B370];
  v4 = ([v3 unsignedIntegerValue] >> 3) & 1;

  return v4;
}

+ (BOOL)isActivity:(id)activity consideredNonDiscretionary:(id)discretionary
{
  activityCopy = activity;
  discretionaryCopy = discretionary;
  v7 = +[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", activityCopy) && (+[_DASPhotosPolicy isPhotosSyncOverriddenWithContext:](_DASPhotosPolicy, "isPhotosSyncOverriddenWithContext:", discretionaryCopy) || +[_DASPhotosPolicy isPhotosForegroundWithContext:](_DASPhotosPolicy, "isPhotosForegroundWithContext:", discretionaryCopy) || ([activityCopy requestsImmediateRuntime] & 1) != 0) || +[_DASPhotosPolicy isCMMActivity:](_DASPhotosPolicy, "isCMMActivity:", activityCopy) && +[_DASPhotosPolicy isPhotosMessagesAppForegroundWithContext:](_DASPhotosPolicy, "isPhotosMessagesAppForegroundWithContext:", discretionaryCopy);

  return v7;
}

- (BOOL)isLowPowerModeOverriddenForPhotos:(id)photos
{
  photosCopy = photos;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [photosCopy objectForKeyedSubscript:v4];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return (unsignedIntegerValue >> 5) & 1;
}

- (BOOL)isDataBudgetAvailableForPhotos:(id)photos
{
  photosCopy = photos;
  if ([_DASDataBudgetPolicy isBudgetAvailable:photosCopy])
  {
    unsignedIntegerValue = 1;
  }

  else
  {
    v5 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v6 = [photosCopy objectForKeyedSubscript:v5];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  return unsignedIntegerValue & 1;
}

- (BOOL)isEnergyBudgetAvailableForPhotos:(id)photos
{
  photosCopy = photos;
  if ([_DASEnergyBudgetPolicy isBudgetAvailable:photosCopy])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v6 = [photosCopy objectForKeyedSubscript:v5];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    v4 = (unsignedIntegerValue >> 1) & 1;
  }

  return v4;
}

+ (BOOL)isPhotosSyncOverriddenWithContext:(id)context
{
  contextCopy = context;
  v4 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
  v5 = [contextCopy objectForKeyedSubscript:v4];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return (unsignedIntegerValue >> 14) & 1;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Photos Policy"];
  if (+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", activityCopy) && (+[_DASLowPowerModePolicy policyInstance](_DASLowPowerModePolicy, "policyInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isLowPowerModePolicyEnforced:stateCopy], v9, v10))
  {
    v11 = [(_DASPhotosPolicy *)self isLowPowerModeOverriddenForPhotos:stateCopy];
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

  v15 = [(_DASPhotosPolicy *)self isDataBudgetAvailableForPhotos:stateCopy];
  v16 = [(_DASPhotosPolicy *)self isEnergyBudgetAvailableForPhotos:stateCopy];
  if ([_DASPhotosPolicy isCMMActivity:activityCopy])
  {
    v17 = [_DASPhotosPolicy isPhotosMessagesAppForegroundWithContext:stateCopy];
    v32 = v14;
    v33 = activityCopy;
    v18 = v17;
    v19 = [NSNumber numberWithBool:v17];
    v20 = [NSNumber numberWithBool:v15];
    v21 = [NSNumber numberWithBool:v16];
    v22 = [NSPredicate predicateWithFormat:@"isCMMActivity == 1 && isPhotosMessagesAppForeground == %@ && isDataBudgetAvailable == %@ && isEnergyBudgetAvailable == %@", v19, v20, v21];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v22];

    v14 = v32;
    v23 = v18 && v15 && v16;
    activityCopy = v33;
    if (v23)
    {
LABEL_14:
      v14 = 67;
      goto LABEL_18;
    }
  }

  v24 = [(_DASPhotosPolicy *)self shouldOverrideSignificantWork:stateCopy];
  v25 = [_DASSystemContext isPluggedIn:stateCopy];
  if (![(_DASPhotosPolicy *)self haveSignificantWorkRemaining:stateCopy]|| (v25 & 1) != 0)
  {
LABEL_12:
    if (![(_DASPhotosPolicy *)self shouldOverrideAll:stateCopy])
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
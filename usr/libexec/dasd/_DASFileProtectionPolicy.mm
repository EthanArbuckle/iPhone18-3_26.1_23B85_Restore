@interface _DASFileProtectionPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)deviceRecentlyLocked:(id)locked since:(id)since;
- (_DASFileProtectionPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASFileProtectionPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005520C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B1F8 != -1)
  {
    dispatch_once(&qword_10020B1F8, block);
  }

  v2 = qword_10020B200;

  return v2;
}

- (id)initializeTriggers
{
  v2 = +[_CDContextQueries keyPathForDeviceLockStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  v4 = +[_CDContextQueries keyPathForKeybagLockStatus];
  v5 = [_CDContextualPredicate predicateForChangeAtKeyPath:v4];

  v12[0] = @"identifier";
  v12[1] = @"predicate";
  v13[0] = @"com.apple.das.fileprotectionpolicy.statuschanged";
  v13[1] = v3;
  v12[2] = @"deviceSet";
  v12[3] = @"mustWake";
  v13[2] = &off_1001C99A0;
  v13[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
  v14[0] = v6;
  v10[0] = @"identifier";
  v10[1] = @"predicate";
  v11[0] = @"com.apple.das.fileprotectionpolicy.kbstatuschanged";
  v11[1] = v5;
  v10[2] = @"deviceSet";
  v10[3] = @"mustWake";
  v11[2] = &off_1001C99A0;
  v11[3] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v14[1] = v7;
  v8 = [NSArray arrayWithObjects:v14 count:2];

  return v8;
}

- (_DASFileProtectionPolicy)init
{
  v25.receiver = self;
  v25.super_class = _DASFileProtectionPolicy;
  v2 = [(_DASFileProtectionPolicy *)&v25 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"File Protection Policy";

    initializeTriggers = [(_DASFileProtectionPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;

    v7 = dispatch_queue_create("com.apple.duetactivityscheduler.fileprotectionpolicy.queue", 0);
    handleUnlockQueue = v3->_handleUnlockQueue;
    v3->_handleUnlockQueue = v7;

    v9 = v3->_handleUnlockQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100055180;
    handler[3] = &unk_1001B5B78;
    v10 = v3;
    v24 = v10;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v3->_classCLockedToken, v9, handler);
    v11 = MGCopyAnswer();
    v12 = v11;
    if (v11)
    {
      CFRelease(v11);
    }

    v13 = kCFBooleanTrue == v12 && MKBDeviceUnlockedSinceBoot() == 0;
    v10->_isClassCLocked = v13;
    v10->_isClassCXExpiring = 0;
    v10->_isClassCXExpired = v13;
    v14 = v3->_handleUnlockQueue;
    v22 = v10;
    v15 = AKSEventsRegister();
    v22->_aksEvent = v15;
    if (!v15)
    {
      v16 = [_DASDaemonLogger logForCategory:@"fileProtection"];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10011FA24();
      }
    }

    if (AKSIdentityGetSessionTimeWindows())
    {
      v10->_isClassCXExpiring = 0;
      v10->_isClassCXExpired = 1;
      v17 = [_DASDaemonLogger logForCategory:@"fileProtection", 0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        isClassCXExpiring = v10->_isClassCXExpiring;
        isClassCXExpired = v10->_isClassCXExpired;
        *buf = 67109888;
        v27 = isClassCXExpiring;
        v28 = 1024;
        v29 = isClassCXExpired;
        v30 = 2048;
        v31 = 0;
        v32 = 2048;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Class CX, Expring: %u, Expired: %u, w_locked: %llu s, w_remaining, %llu s", buf, 0x22u);
      }
    }

    else
    {
      v17 = [_DASDaemonLogger logForCategory:@"fileProtection"];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10011FA64();
      }
    }
  }

  return v3;
}

- (BOOL)deviceRecentlyLocked:(id)locked since:(id)since
{
  lockedCopy = locked;
  v5 = +[_CDContextQueries keyPathForDeviceLockStatus];
  v6 = [lockedCopy objectForKeyedSubscript:v5];
  bOOLValue = [v6 BOOLValue];

  v8 = +[_CDContextQueries keyPathForKeybagLockStatus];
  v9 = [lockedCopy objectForKeyedSubscript:v8];

  LOBYTE(lockedCopy) = [v9 BOOLValue];
  return bOOLValue & (lockedCopy ^ 1);
}

- (BOOL)appliesToActivity:(id)activity
{
  fileProtection = [activity fileProtection];
  indicatesProtection = [fileProtection indicatesProtection];

  return indicatesProtection;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  isClassCLocked = self->_isClassCLocked;
  isClassCXExpired = self->_isClassCXExpired;
  v10 = +[_CDContextQueries keyPathForKeybagLockStatus];
  v40 = stateCopy;
  v11 = [stateCopy objectForKeyedSubscript:v10];
  bOOLValue = [v11 BOOLValue];

  v13 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"File Protection Policy"];
  if (bOOLValue)
  {
    fileProtection = [activityCopy fileProtection];
    v15 = +[_DASFileProtection complete];
    v16 = [fileProtection isEqual:v15];

    if (v16)
    {
      v17 = [NSNumber numberWithBool:1];
      fileProtection2 = [activityCopy fileProtection];
      [NSPredicate predicateWithFormat:@"classALocked == %@ && activityFileProtection == %@", v17, fileProtection2];
      fileProtection6 = LABEL_10:;
      [(_DASPolicyResponseRationale *)v13 addRationaleWithCondition:fileProtection6];
      v26 = v40;
      goto LABEL_11;
    }
  }

  if (isClassCXExpired)
  {
    fileProtection3 = [activityCopy fileProtection];
    v20 = +[_DASFileProtection completeWhenUserInactive];
    v21 = [fileProtection3 isEqual:v20];

    if (v21)
    {
      v17 = [NSNumber numberWithBool:1];
      fileProtection2 = [activityCopy fileProtection];
      [NSPredicate predicateWithFormat:@"classCExpired == %@ && activityFileProtection == %@", v17, fileProtection2];
      goto LABEL_10;
    }
  }

  if (isClassCLocked)
  {
    fileProtection4 = [activityCopy fileProtection];
    v23 = +[_DASFileProtection completeUntilFirstUserAuthentication];
    v24 = [fileProtection4 isEqual:v23];

    if (v24)
    {
      v17 = [NSNumber numberWithBool:1];
      fileProtection2 = [activityCopy fileProtection];
      [NSPredicate predicateWithFormat:@"classCLocked == %@ && activityFileProtection == %@", v17, fileProtection2];
      goto LABEL_10;
    }
  }

  fileProtection5 = [activityCopy fileProtection];
  v30 = +[_DASFileProtection completeUnlessOpen];
  v31 = [fileProtection5 isEqual:v30];

  if (v31)
  {
    v17 = +[NSDate date];
    v26 = v40;
    if (-[_DASFileProtectionPolicy deviceRecentlyLocked:since:](self, "deviceRecentlyLocked:since:", v40, v17) || ([activityCopy startDate], v32 = objc_claimAutoreleasedReturnValue(), v32, v32) || (bOOLValue & 1) == 0 && (objc_msgSend(activityCopy, "overdueAtDate:", v17) & 1) != 0)
    {
      v27 = 0;
      v28 = 0;
      goto LABEL_16;
    }

    startBefore = [activityCopy startBefore];
    [startBefore timeIntervalSinceDate:v17];
    v37 = v36;

    fileProtection2 = [NSNumber numberWithBool:bOOLValue];
    fileProtection6 = [activityCopy fileProtection];
    v38 = [NSNumber numberWithDouble:v37];
    v39 = [NSPredicate predicateWithFormat:@"classALocked == %@ && activityFileProtection == %@ && timeUntilDeadline == %@", fileProtection2, fileProtection6, v38];
    [(_DASPolicyResponseRationale *)v13 addRationaleWithCondition:v39];

LABEL_11:
    v27 = 100;
    v28 = v13;
LABEL_16:

    goto LABEL_18;
  }

  v27 = 0;
  v28 = 0;
  v26 = v40;
LABEL_18:
  v33 = [_DASPolicyResponse policyResponseWithDecision:v27 validityDuration:v28 rationale:0x384uLL];

  return v33;
}

@end
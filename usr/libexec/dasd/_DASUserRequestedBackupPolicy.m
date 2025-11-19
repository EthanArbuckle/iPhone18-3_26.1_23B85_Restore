@interface _DASUserRequestedBackupPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASUserRequestedBackupPolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASUserRequestedBackupPolicy

- (id)initializeTriggers
{
  v2 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_userRequestedBackup];
  v6[0] = @"identifier";
  v6[1] = @"predicate";
  v7[0] = @"com.apple.das.userRequestedBackup";
  v7[1] = v2;
  v6[2] = @"deviceSet";
  v6[3] = @"mustWake";
  v7[2] = &off_1001C9B98;
  v7[3] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];

  return v4;
}

- (_DASUserRequestedBackupPolicy)init
{
  v10.receiver = self;
  v10.super_class = _DASUserRequestedBackupPolicy;
  v2 = [(_DASUserRequestedBackupPolicy *)&v10 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"User Requested Backup Policy";

    v5 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
    userRequestedBackup = v3->_userRequestedBackup;
    v3->_userRequestedBackup = v5;

    v7 = [(_DASUserRequestedBackupPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v7;
  }

  return v3;
}

+ (id)policyInstance
{
  if (qword_10020B480 != -1)
  {
    sub_100121CC0();
  }

  v3 = qword_10020B488;

  return v3;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 schedulingPriority];
  if (v4 >= _DASSchedulingPriorityUserInitiated)
  {
    v5 = 0;
  }

  else if ([v3 userRequestedBackupTask])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 requiresNetwork];
  }

  return v5;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a4;
  v9 = 1;
  if ([a3 isEqualToString:@"com.apple.das.userRequestedBackup"])
  {
    v7 = [v6 objectForKeyedSubscript:self->_userRequestedBackup];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:self->_userRequestedBackup];
  v8 = [v7 BOOLValue];

  v9 = +[_DASDaemon sharedInstance];
  v10 = [v9 backupTaskManager];

  v11 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"User Requested Backup Policy"];
  v12 = [v6 userRequestedBackupTask];
  if (v12)
  {
    v13 = [v6 startDate];
    if (v13)
    {
    }

    else if (([v10 activityEligibleForRunning:v6] & 1) == 0)
    {
      v17 = [NSPredicate predicateWithFormat:@"eligibleForRunning == %@", &__kCFBooleanFalse];
      [(_DASPolicyResponseRationale *)v11 addRationaleWithCondition:v17];

      v16 = 33;
      goto LABEL_15;
    }
  }

  v14 = [NSNumber numberWithBool:v8];
  v15 = [NSPredicate predicateWithFormat:@"userRequestedBackup == %@", v14];
  [(_DASPolicyResponseRationale *)v11 addRationaleWithCondition:v15];

  if (v8)
  {
    if (v12)
    {
      v16 = 67;
    }

    else if ([v6 requiresNetwork])
    {
      v16 = 67;
    }

    else
    {
      v16 = 33;
    }
  }

  else if (v12)
  {
    v16 = 33;
  }

  else
  {
    v16 = 0;
  }

LABEL_15:
  v18 = [_DASPolicyResponse policyResponseWithDecision:v16 validityDuration:v11 rationale:0x384uLL];

  return v18;
}

@end
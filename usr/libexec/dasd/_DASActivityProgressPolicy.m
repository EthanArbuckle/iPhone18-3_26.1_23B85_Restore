@interface _DASActivityProgressPolicy
+ (id)policyInstance;
- (BOOL)doSiblingTrackersOfActivity:(id)a3 satisfyMinimumHealth:(int64_t)a4;
- (_DASActivityProgressPolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASActivityProgressPolicy

+ (id)policyInstance
{
  if (qword_10020B3E0 != -1)
  {
    sub_100120C50();
  }

  v3 = qword_10020B3E8;

  return v3;
}

- (_DASActivityProgressPolicy)init
{
  v8.receiver = self;
  v8.super_class = _DASActivityProgressPolicy;
  v2 = [(_DASActivityProgressPolicy *)&v8 init];
  if (v2)
  {
    v3 = +[_DASProgressReportingMonitor sharedMonitor];
    progressReportingMonitor = v2->_progressReportingMonitor;
    v2->_progressReportingMonitor = v3;

    v5 = os_log_create("com.apple.DuetActivityScheduler", "ActivityProgressPolicy");
    log = v2->_log;
    v2->_log = v5;
  }

  return v2;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = [(_DASProgressReportingMonitor *)self->_progressReportingMonitor trackerForActivity:v5];
  v7 = [_DASPolicyResponseRationale alloc];
  v8 = [(_DASActivityProgressPolicy *)self policyName];
  v9 = [(_DASPolicyResponseRationale *)v7 initWithPolicyName:v8];

  if (!v6)
  {
    [NSPredicate predicateWithFormat:@"tracker == nil", v15];
    goto LABEL_6;
  }

  if ([v6 health] != 2)
  {
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 health]);
    v11 = [NSPredicate predicateWithFormat:@"tracker.health == %@", v10];
    [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v11];

    goto LABEL_8;
  }

  if ([(_DASActivityProgressPolicy *)self doSiblingTrackersOfActivity:v5 satisfyMinimumHealth:1])
  {
    [NSPredicate predicateWithFormat:@"tracker.siblingTrackers.health >= %@", &off_1001C9AD8];
    v10 = LABEL_6:;
    [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v10];
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v10 = [NSPredicate predicateWithFormat:@"tracker.health == %@", &off_1001C9AF0];
  [(_DASPolicyResponseRationale *)v9 addRationaleWithCondition:v10];
  v12 = 100;
LABEL_9:

  v13 = [_DASPolicyResponse policyResponseWithDecision:v12 validityDuration:v9 rationale:0x384uLL];

  return v13;
}

- (BOOL)doSiblingTrackersOfActivity:(id)a3 satisfyMinimumHealth:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = -[_DASProgressReportingMonitor trackersForPID:](self->_progressReportingMonitor, "trackersForPID:", [v6 pid]);
    v9 = [(_DASProgressReportingMonitor *)self->_progressReportingMonitor trackerForActivity:v7];
    if (v8 && [v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if (v15 != v9 && -[_DASActivityProgressPolicy isHealthState:atLeastAsHealthyAs:](self, "isHealthState:atLeastAsHealthyAs:", [*(*(&v19 + 1) + 8 * i) health], a4))
            {
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
              {
                sub_100120C64(v15, log);
              }

              v16 = 1;
              goto LABEL_19;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
LABEL_19:
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

@end
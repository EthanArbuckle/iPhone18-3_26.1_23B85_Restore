@interface _DASConsoleModePolicy
+ (id)policyInstance;
- (_DASConsoleModePolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)consoleModeChangedHandler:(BOOL)handler;
@end

@implementation _DASConsoleModePolicy

- (_DASConsoleModePolicy)init
{
  v11.receiver = self;
  v11.super_class = _DASConsoleModePolicy;
  v2 = [(_DASConsoleModePolicy *)&v11 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Console Mode Policy";

    v5 = +[_DASConsoleModeMonitor sharedMonitor];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000397A4;
    v9[3] = &unk_1001B6190;
    v6 = v3;
    v10 = v6;
    v7 = [v5 registerStateChangeHandler:v9 forConsoleModeType:10];
    v6->_isConsoleModeActive = [v5 queryConsoleModeState:10];
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039850;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AF80 != -1)
  {
    dispatch_once(&qword_10020AF80, block);
  }

  v2 = qword_10020AF88;

  return v2;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Console Mode Policy"];
  if (self->_isConsoleModeActive)
  {
    v9 = [_DASApplicationPolicy focalApplicationsWithContext:stateCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    relatedApplications = [activityCopy relatedApplications];
    v11 = [relatedApplications countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(relatedApplications);
          }

          if ([v9 containsObject:*(*(&v20 + 1) + 8 * i)])
          {

            [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"app foreground." withRequiredValue:1.0 withCurrentValue:1.0];
            v17 = 0;
            goto LABEL_13;
          }
        }

        v12 = [relatedApplications countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v15 = [NSNumber numberWithBool:self->_isConsoleModeActive];
    v16 = [NSPredicate predicateWithFormat:@"consoleModeStatus = %@", v15];
    [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v16];

    [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 1];
    v17 = 33;
LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  v18 = [_DASPolicyResponse policyResponseWithDecision:v17 validityDuration:v8 rationale:0x384uLL];

  return v18;
}

- (void)consoleModeChangedHandler:(BOOL)handler
{
  self->_isConsoleModeActive = handler;
  if (handler)
  {
    v3 = +[_DASDaemon sharedInstance];
    v5 = @"com.apple.system.console_mode_changed";
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [v3 handleTriggersBatched:v4];
  }
}

@end
@interface _DASDiskSpacePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASDiskSpacePolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASDiskSpacePolicy

- (_DASDiskSpacePolicy)init
{
  v6.receiver = self;
  v6.super_class = _DASDiskSpacePolicy;
  v2 = [(_DASDiskSpacePolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Disk Space Policy";
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B6A8;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B0F8 != -1)
  {
    dispatch_once(&qword_10020B0F8, block);
  }

  v2 = qword_10020B100;

  return v2;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 diskVolume];
  if (v4)
  {
    v5 = [v3 downloadSize] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = +[_DASDaemon sharedInstance];
  v7 = [_DASDiskSpaceMonitor sharedMonitorWithDaemon:v6];

  LODWORD(v6) = [v7 isDiskSpaceAvailableForActivity:v5];
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v9 = v8;
  v10 = 1.0;
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0.0;
    v11 = 33;
  }

  [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"diskSpaceAvailable" withRequiredValue:1.0 withCurrentValue:v10];
  v12 = [_DASPolicyResponse policyResponseWithDecision:v11 validityDuration:v9 rationale:0x384uLL];

  return v12;
}

@end
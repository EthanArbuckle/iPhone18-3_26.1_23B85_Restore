@interface _DASRemoteDeviceWakePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (_DASRemoteDeviceWakePolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASRemoteDeviceWakePolicy

- (_DASRemoteDeviceWakePolicy)init
{
  v6.receiver = self;
  v6.super_class = _DASRemoteDeviceWakePolicy;
  v2 = [(_DASRemoteDeviceWakePolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Remote Device Wake Policy";
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BA78;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020ADC0 != -1)
  {
    dispatch_once(&qword_10020ADC0, block);
  }

  v2 = qword_10020ADC8;

  return v2;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  remoteDevice = [activityCopy remoteDevice];
  if (remoteDevice && [activityCopy requiresRemoteDeviceWake])
  {
    v5 = [activityCopy requestsImmediateRuntime] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  remoteDevice = [activityCopy remoteDevice];
  v7 = +[_DASDaemon sharedInstance];
  v8 = [_DASRemoteDeviceWakeMonitor sharedMonitorWithDaemon:v7];

  [v8 registerRemoteDeviceWakeStateWithActivity:activityCopy];
  LODWORD(activityCopy) = [v8 isRemoteDeviceAwake:remoteDevice];
  v9 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v10 = v9;
  v11 = 1.0;
  if (activityCopy)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0.0;
    v12 = 33;
  }

  [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"remoteDeviceAwake" withRequiredValue:1.0 withCurrentValue:v11];
  v13 = [_DASPolicyResponse policyResponseWithDecision:v12 validityDuration:v10 rationale:0x384uLL];

  return v13;
}

@end
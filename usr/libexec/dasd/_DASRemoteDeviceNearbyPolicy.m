@interface _DASRemoteDeviceNearbyPolicy
+ (id)policyInstance;
- (_DASRemoteDeviceNearbyPolicy)init;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASRemoteDeviceNearbyPolicy

- (_DASRemoteDeviceNearbyPolicy)init
{
  v6.receiver = self;
  v6.super_class = _DASRemoteDeviceNearbyPolicy;
  v2 = [(_DASRemoteDeviceNearbyPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Remote Device Nearby Policy";
  }

  return v3;
}

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011A030;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B990 != -1)
  {
    dispatch_once(&qword_10020B990, block);
  }

  v2 = qword_10020B998;

  return v2;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = [v5 remoteDevice];
  v7 = +[_DASDaemon sharedInstance];
  v8 = [_DASRemoteDeviceNearbyMonitor sharedMonitorWithDaemon:v7];

  [v8 registerForRemoteDeviceWithActivity:v5];
  LODWORD(v5) = [v8 isRemoteDeviceNearby:v6];
  v9 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v10 = v9;
  v11 = 1.0;
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0.0;
    v12 = 33;
  }

  [(_DASPolicyResponseRationale *)v9 addRationaleForCondition:@"remoteDeviceNearby" withRequiredValue:1.0 withCurrentValue:v11];
  v13 = [_DASPolicyResponse policyResponseWithDecision:v12 validityDuration:v10 rationale:0x384uLL];

  return v13;
}

@end
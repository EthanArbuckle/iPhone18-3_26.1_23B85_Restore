@interface _DASPeakPowerPressurePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (BOOL)isUnderPeakPowerPressureWithContext:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (_DASPeakPowerPressurePolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
@end

@implementation _DASPeakPowerPressurePolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000940C8;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B608 != -1)
  {
    dispatch_once(&qword_10020B608, block);
  }

  v2 = qword_10020B610;

  return v2;
}

- (_DASPeakPowerPressurePolicy)init
{
  v10.receiver = self;
  v10.super_class = _DASPeakPowerPressurePolicy;
  v2 = [(_DASPeakPowerPressurePolicy *)&v10 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Peak Power Pressure Policy";

    v5 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/peakPowerPressureLevel"];
    peakPowerPressureKeyPath = v3->_peakPowerPressureKeyPath;
    v3->_peakPowerPressureKeyPath = v5;

    v7 = [(_DASPeakPowerPressurePolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v7;
  }

  return v3;
}

- (id)initializeTriggers
{
  v2 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_peakPowerPressureKeyPath];
  v6[0] = @"identifier";
  v6[1] = @"predicate";
  v7[0] = @"com.apple.duetactivityscheduler.peakpowerpressurepolicy.peakpowerpressurechange";
  v7[1] = v2;
  v6[2] = @"deviceSet";
  v6[3] = @"mustWake";
  v7[2] = &off_1001CA108;
  v7[3] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];

  return v4;
}

- (BOOL)isUnderPeakPowerPressureWithContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:self->_peakPowerPressureKeyPath];
  v4 = [v3 integerValue] != 0;

  return v4;
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.duetactivityscheduler.peakpowerpressurepolicy.peakpowerpressurechange"])
  {
    v7 = [(_DASPeakPowerPressurePolicy *)self isUnderPeakPowerPressureWithContext:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)appliesToActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:_DASCTSBypassPeakPowerPressureKey];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 schedulingPriority];
    v7 = v8 < _DASSchedulingPriorityUserInitiated;
  }

  return v7;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a4;
  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Peak Power Pressure Policy"];
  LODWORD(self) = [(_DASPeakPowerPressurePolicy *)self isUnderPeakPowerPressureWithContext:v5];

  if (self)
  {
    v7 = [NSPredicate predicateWithFormat:@"peakPowerPressure == %@", &__kCFBooleanTrue];
    [(_DASPolicyResponseRationale *)v6 addRationaleWithCondition:v7];

    v8 = 100;
  }

  else
  {
    v8 = 0;
  }

  v9 = [_DASPolicyResponse policyResponseWithDecision:v8 validityDuration:v6 rationale:0x384uLL];

  return v9;
}

@end
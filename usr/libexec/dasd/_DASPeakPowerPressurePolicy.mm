@interface _DASPeakPowerPressurePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)isUnderPeakPowerPressureWithContext:(id)context;
- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state;
- (_DASPeakPowerPressurePolicy)init;
- (id)initializeTriggers;
- (id)responseForActivity:(id)activity withState:(id)state;
@end

@implementation _DASPeakPowerPressurePolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000940C8;
  block[3] = &unk_1001B54A0;
  block[4] = self;
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

    initializeTriggers = [(_DASPeakPowerPressurePolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = initializeTriggers;
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

- (BOOL)isUnderPeakPowerPressureWithContext:(id)context
{
  v3 = [context objectForKeyedSubscript:self->_peakPowerPressureKeyPath];
  v4 = [v3 integerValue] != 0;

  return v4;
}

- (BOOL)shouldIgnoreTrigger:(id)trigger withState:(id)state
{
  stateCopy = state;
  if ([trigger isEqualToString:@"com.apple.duetactivityscheduler.peakpowerpressurepolicy.peakpowerpressurechange"])
  {
    v7 = [(_DASPeakPowerPressurePolicy *)self isUnderPeakPowerPressureWithContext:stateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:_DASCTSBypassPeakPowerPressureKey];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 0;
  }

  else
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v7 = schedulingPriority < _DASSchedulingPriorityUserInitiated;
  }

  return v7;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  stateCopy = state;
  v6 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Peak Power Pressure Policy"];
  LODWORD(self) = [(_DASPeakPowerPressurePolicy *)self isUnderPeakPowerPressureWithContext:stateCopy];

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
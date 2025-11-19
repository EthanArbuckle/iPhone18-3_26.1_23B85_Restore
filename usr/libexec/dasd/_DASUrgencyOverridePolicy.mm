@interface _DASUrgencyOverridePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)a3;
- (_DASUrgencyOverridePolicy)init;
- (id)rationaleWithUrgencyOverride:(id)a3;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (int64_t)makeDecisionBasedOnUrgencyOverride:(id)a3;
- (void)addActivity:(id)a3 urgencyLevel:(int64_t)a4;
- (void)removeActivity:(id)a3;
@end

@implementation _DASUrgencyOverridePolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057B0C;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B228 != -1)
  {
    dispatch_once(&qword_10020B228, block);
  }

  v2 = qword_10020B230;

  return v2;
}

- (_DASUrgencyOverridePolicy)init
{
  v12.receiver = self;
  v12.super_class = _DASUrgencyOverridePolicy;
  v2 = [(_DASUrgencyOverridePolicy *)&v12 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Urgency Override Policy";

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v6 = [v5 dictionaryForKey:@"urgentActivities"];
    v7 = [v6 mutableCopy];
    urgentActivities = v3->_urgentActivities;
    v3->_urgentActivities = v7;

    if (!v3->_urgentActivities)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = v3->_urgentActivities;
      v3->_urgentActivities = v9;
    }

    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)addActivity:(id)a3 urgencyLevel:(int64_t)a4
{
  v6 = a3;
  v7 = [_DASDaemonLogger logForCategory:@"UrgencyOverride"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding %@ to _urgentActivities", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  urgentActivities = self->_urgentActivities;
  v9 = [NSNumber numberWithInteger:a4];
  [(NSMutableDictionary *)urgentActivities setValue:v9 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  [v10 setObject:self->_urgentActivities forKey:@"urgentActivities"];
}

- (void)removeActivity:(id)a3
{
  v4 = a3;
  v5 = [_DASDaemonLogger logForCategory:@"UrgencyOverride"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing %@ from _urgentActivities", &v7, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_urgentActivities removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  [v6 setObject:self->_urgentActivities forKey:@"urgentActivities"];
}

- (BOOL)appliesToActivity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  urgentActivities = self->_urgentActivities;
  v6 = [v4 name];

  v7 = [(NSMutableDictionary *)urgentActivities objectForKey:v6];
  LOBYTE(v4) = v7 != 0;

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = [(_DASUrgencyOverridePolicy *)self makeDecisionBasedOnUrgencyOverride:v5];
  v7 = [(_DASUrgencyOverridePolicy *)self rationaleWithUrgencyOverride:v5];

  v8 = [_DASPolicyResponse policyResponseWithDecision:v6 validityDuration:v7 rationale:0x384uLL];

  return v8;
}

- (int64_t)makeDecisionBasedOnUrgencyOverride:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  urgentActivities = self->_urgentActivities;
  v6 = [v4 name];

  v7 = [(NSMutableDictionary *)urgentActivities valueForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if ([v7 intValue] == 2)
  {
    v8 = 200;
  }

  else if ([v7 intValue] == 1)
  {
    v8 = 67;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rationaleWithUrgencyOverride:(id)a3
{
  v4 = a3;
  v5 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Urgency Override Policy"];
  os_unfair_lock_lock(&self->_lock);
  urgentActivities = self->_urgentActivities;
  v7 = [v4 name];

  v8 = [(NSMutableDictionary *)urgentActivities valueForKey:v7];

  os_unfair_lock_unlock(&self->_lock);
  v9 = [NSString stringWithFormat:@"urgencylevel == %@", v8];
  [(_DASPolicyResponseRationale *)v5 addRationaleForCondition:v9 withRequiredValue:1.0 withCurrentValue:1.0];

  return v5;
}

@end
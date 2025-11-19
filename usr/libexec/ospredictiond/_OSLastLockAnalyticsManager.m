@interface _OSLastLockAnalyticsManager
+ (id)sharedInstance;
- (_OSLastLockAnalyticsManager)init;
- (void)submitPredictionEventForLastLockWithOutput:(id)a3;
- (void)submitTask;
@end

@implementation _OSLastLockAnalyticsManager

+ (id)sharedInstance
{
  if (qword_1000B6A00 != -1)
  {
    sub_10005B7A8();
  }

  v3 = qword_1000B69F8;

  return v3;
}

- (_OSLastLockAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = _OSLastLockAnalyticsManager;
  return [(_OSLastLockAnalyticsManager *)&v3 init];
}

- (void)submitTask
{
  v2 = os_log_type_enabled(0, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    sub_10005B7BC(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)submitPredictionEventForLastLockWithOutput:(id)a3
{
  v3 = os_log_type_enabled(0, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    sub_10005B7BC(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

@end
@interface REMCDSharedToMeReminderPlaceholder
- (BOOL)isConnectedToAccountObject:(id)a3;
@end

@implementation REMCDSharedToMeReminderPlaceholder

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100766460(v5);
  }

  v6 = [(REMCDSharedToMeReminderPlaceholder *)self reminder];
  v7 = [v6 isConnectedToAccountObject:v4];

  return v7;
}

@end
@interface REMCDSharedToMeReminderPlaceholder
- (BOOL)isConnectedToAccountObject:(id)object;
@end

@implementation REMCDSharedToMeReminderPlaceholder

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100766460(v5);
  }

  reminder = [(REMCDSharedToMeReminderPlaceholder *)self reminder];
  v7 = [reminder isConnectedToAccountObject:objectCopy];

  return v7;
}

@end
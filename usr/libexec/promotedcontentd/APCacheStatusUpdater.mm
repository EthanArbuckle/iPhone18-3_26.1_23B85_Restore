@interface APCacheStatusUpdater
- (APCacheStatusUpdater)initWithNotificationRegister:(id)register;
@end

@implementation APCacheStatusUpdater

- (APCacheStatusUpdater)initWithNotificationRegister:(id)register
{
  registerCopy = register;
  v7.receiver = self;
  v7.super_class = APCacheStatusUpdater;
  v5 = [(APCacheStatusUpdater *)&v7 init];
  if (v5)
  {
    [registerCopy registerHandlerForPurpose:100 andMetric:1405 closure:&stru_100480810];
  }

  return v5;
}

@end
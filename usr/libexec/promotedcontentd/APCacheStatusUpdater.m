@interface APCacheStatusUpdater
- (APCacheStatusUpdater)initWithNotificationRegister:(id)a3;
@end

@implementation APCacheStatusUpdater

- (APCacheStatusUpdater)initWithNotificationRegister:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = APCacheStatusUpdater;
  v5 = [(APCacheStatusUpdater *)&v7 init];
  if (v5)
  {
    [v4 registerHandlerForPurpose:100 andMetric:1405 closure:&stru_100480810];
  }

  return v5;
}

@end
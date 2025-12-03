@interface RDMigrationClient
- (void)reachabilityChangedWithNotification:(id)notification;
@end

@implementation RDMigrationClient

- (void)reachabilityChangedWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_10031D5C0();
}

@end
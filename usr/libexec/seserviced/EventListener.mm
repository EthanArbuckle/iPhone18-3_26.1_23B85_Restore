@interface EventListener
- (void)onNotificationWithNotification:(id)notification;
@end

@implementation EventListener

- (void)onNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1000B9CA0(notificationCopy);
}

@end
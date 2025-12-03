@interface UnwantedTrackingUserNotificationDelegate
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation UnwantedTrackingUserNotificationDelegate

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_1000D4918(v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1000D5280(responseCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end
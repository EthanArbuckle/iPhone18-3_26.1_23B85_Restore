@interface RDDataAccessUserNotificationPresentingProvider
- (id)rem_notificationPresentingForDataAccess;
@end

@implementation RDDataAccessUserNotificationPresentingProvider

- (id)rem_notificationPresentingForDataAccess
{
  v2 = *self->userNotificationCenter;
  v3 = swift_unknownObjectRetain();

  return v3;
}

@end
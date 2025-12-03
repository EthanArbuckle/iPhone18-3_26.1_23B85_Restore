@interface BulletinHelpersBridge
+ (void)formatBulletinStringsForPushNotification:(NSDictionary *)notification completionHandler:(id)handler;
@end

@implementation BulletinHelpersBridge

+ (void)formatBulletinStringsForPushNotification:(NSDictionary *)notification completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = notification;
  v7[3] = v6;
  v7[4] = self;
  notificationCopy = notification;

  sub_10028022C(&unk_1002C6AA0, v7);
}

@end
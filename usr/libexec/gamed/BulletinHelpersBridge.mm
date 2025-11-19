@interface BulletinHelpersBridge
+ (void)formatBulletinStringsForPushNotification:(NSDictionary *)a3 completionHandler:(id)a4;
@end

@implementation BulletinHelpersBridge

+ (void)formatBulletinStringsForPushNotification:(NSDictionary *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_10028022C(&unk_1002C6AA0, v7);
}

@end
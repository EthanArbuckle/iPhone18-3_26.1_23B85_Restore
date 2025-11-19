@interface DarwinNotificationWatcher
+ (id)monitorNotificationKey:(id)a3 forReason:(id)a4 queue:(id)a5 handler:(id)a6;
@end

@implementation DarwinNotificationWatcher

+ (id)monitorNotificationKey:(id)a3 forReason:(id)a4 queue:(id)a5 handler:(id)a6
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10 = [a3 UTF8String];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000095B8;
  v14[3] = &unk_100085010;
  v14[4] = a6;
  sub_1000333D4(v10, v16 + 6, a5, v14);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000960C;
  v13[3] = &unk_100085038;
  v13[4] = &v15;
  v11 = [[TMSimpleAssertion alloc] initWithIdentifier:[NSString forReason:"stringWithFormat:" invalidationBlock:@"DarwinNotification (%@)" stringWithFormat:a3], a4, v13];
  _Block_object_dispose(&v15, 8);
  return v11;
}

@end
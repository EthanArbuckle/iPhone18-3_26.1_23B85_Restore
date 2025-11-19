@interface NFCardMigrationPaymentSessionInterface
+ (id)interface;
@end

@implementation NFCardMigrationPaymentSessionInterface

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCardMigrationPaymentSessionInterface];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
  [v2 setClasses:v5 forSelector:"generateMigrationTokenWithCompletion:" argumentIndex:0 ofReply:1];

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v6, v7, v8, v9, objc_opt_class(), 0];
  [v2 setClasses:v10 forSelector:"performCardMigrationPaymentRequest:request:completion:" argumentIndex:1 ofReply:0];

  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v11, v12, v13, v14, v15, objc_opt_class(), 0];
  [v2 setClasses:v16 forSelector:"performCardMigrationPaymentRequest:request:completion:" argumentIndex:0 ofReply:1];

  return v2;
}

@end
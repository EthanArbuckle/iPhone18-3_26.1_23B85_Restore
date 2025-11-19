@interface NFECommercePaymentSessionInterface
+ (id)interface;
@end

@implementation NFECommercePaymentSessionInterface

+ (id)interface
{
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFECommercePaymentSessionInterface];
  [v6 setClasses:v5 forSelector:"getAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  v7 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:"performECommercePayment:request:completion:" argumentIndex:0 ofReply:0];

  v8 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v8 forSelector:"performECommercePayment:request:completion:" argumentIndex:1 ofReply:0];

  v9 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:"performECommercePayment:request:completion:" argumentIndex:0 ofReply:1];

  v10 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v10 forSelector:"validateEcommercePaymentRequest:completion:" argumentIndex:0 ofReply:0];

  return v6;
}

@end
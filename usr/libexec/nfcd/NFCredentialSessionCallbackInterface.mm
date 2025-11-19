@interface NFCredentialSessionCallbackInterface
+ (id)interface;
@end

@implementation NFCredentialSessionCallbackInterface

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCredentialSessionCallbackInterface];
  v3 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v3 forSelector:"didExpireTransactionForApplet:" argumentIndex:0 ofReply:0];

  return v2;
}

@end
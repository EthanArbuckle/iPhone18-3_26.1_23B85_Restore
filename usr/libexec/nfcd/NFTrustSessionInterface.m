@interface NFTrustSessionInterface
+ (id)interface;
@end

@implementation NFTrustSessionInterface

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFTrustSessionInterface];
  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:"listKeysWithCompletion:" argumentIndex:0 ofReply:1];

  return v2;
}

@end
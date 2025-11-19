@interface NFFieldDetectSessionInterfaceCallbacks
+ (id)interface;
@end

@implementation NFFieldDetectSessionInterfaceCallbacks

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFFieldDetectSessionCallbacks];
  v3 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:"didDetectFieldNotification:" argumentIndex:0 ofReply:0];

  return v2;
}

@end
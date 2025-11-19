@interface NFContactlessSessionInterface
+ (id)interface;
@end

@implementation NFContactlessSessionInterface

+ (id)interface
{
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFContactlessSessionInterface];
  [v7 setClasses:v6 forSelector:"setActiveApplet:completion:" argumentIndex:0 ofReply:0];
  [v7 setClasses:v6 forSelector:"setActiveApplet:completion:" argumentIndex:0 ofReply:1];
  [v7 setClasses:v5 forSelector:"setActiveAppletsForTest:withCardType:completion:" argumentIndex:0 ofReply:0];
  [v7 setClasses:v5 forSelector:"setActiveAppletsForTest:withCardType:completion:" argumentIndex:0 ofReply:1];
  [v7 setClasses:v5 forSelector:"getAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  [v7 setClasses:v6 forSelector:"getAppletsWithCompletion:" argumentIndex:1 ofReply:1];

  return v7;
}

@end
@interface NFCredentialSessionInterface
+ (id)interface;
@end

@implementation NFCredentialSessionInterface

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCredentialSessionInterface];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"requestApplets:selectOnStart:AIDAllowList:externalAuth:mode:ceType:completion:" argumentIndex:0 ofReply:0];
  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v5 forSelector:"requestApplets:selectOnStart:AIDAllowList:externalAuth:mode:ceType:completion:" argumentIndex:1 ofReply:0];

  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v2 setClasses:v7 forSelector:"requestApplets:selectOnStart:AIDAllowList:externalAuth:mode:ceType:completion:" argumentIndex:2 ofReply:0];

  [v2 setClasses:v4 forSelector:"deleteApplets:completion:" argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:"listAppletsAndRefreshCache:completion:" argumentIndex:0 ofReply:1];

  return v2;
}

@end
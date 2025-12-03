@interface NFSecureElementReaderSessionInterface
+ (id)interface;
+ (void)_configureInterface:(id)interface;
@end

@implementation NFSecureElementReaderSessionInterface

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementReaderSessionInterface];
  [NFSecureElementReaderSessionInterface _configureInterface:v2];

  return v2;
}

+ (void)_configureInterface:(id)interface
{
  interfaceCopy = interface;
  v14 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:"selectApplets:completion:" argumentIndex:0 ofReply:0];

  [interfaceCopy setClasses:v14 forSelector:"connect:completion:" argumentIndex:0 ofReply:0];
  v7 = [NSSet alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 initWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v13 forSelector:"performVAS:select:completion:" argumentIndex:0 ofReply:0];
  [interfaceCopy setClasses:v13 forSelector:"performVAS:select:completion:" argumentIndex:1 ofReply:1];
}

@end
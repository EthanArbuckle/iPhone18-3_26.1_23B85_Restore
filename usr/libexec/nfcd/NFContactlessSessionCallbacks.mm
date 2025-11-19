@interface NFContactlessSessionCallbacks
+ (id)interface;
@end

@implementation NFContactlessSessionCallbacks

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFContactlessSessionCallbacks];
  v3 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:"didDetectFieldNotification:" argumentIndex:0 ofReply:0];

  v16 = [NSSet alloc];
  v15 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v16 initWithObjects:{v15, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:"didFelicaStateChange:" argumentIndex:0 ofReply:0];

  return v2;
}

@end
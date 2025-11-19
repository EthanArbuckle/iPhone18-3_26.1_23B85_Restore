@interface NFReaderSessionCallbacks
+ (id)interface;
@end

@implementation NFReaderSessionCallbacks

+ (id)interface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFReaderSessionCallbacks];
  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:"didDetectTags:connectedTagIndex:" argumentIndex:0 ofReply:0];

  v6 = [NSSet alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:"didDetectNDEFMessages:fromTags:connectedTagIndex:updateUICallback:" argumentIndex:0 ofReply:0];

  v9 = [NSSet alloc];
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:"didDetectNDEFMessages:fromTags:connectedTagIndex:updateUICallback:" argumentIndex:1 ofReply:0];

  return v2;
}

@end
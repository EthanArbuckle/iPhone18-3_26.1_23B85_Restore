@interface CLHomeKitProviderAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLHomeKitProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
@end

@implementation CLHomeKitProviderAdapter

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656EA8 != -1)
  {
    sub_1018C38B0();
  }

  return qword_102656EA0;
}

- (CLHomeKitProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLHomeKitProviderAdapter;
  return [(CLHomeKitProviderAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLHomeKitProviderProtocol outboundProtocol:&OBJC_PROTOCOL___CLHomeKitProviderClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100566D50([(CLHomeKitProviderAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018C38C4();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)async
{
  adaptee = [(CLHomeKitProviderAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLHomeKitProviderAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

@end
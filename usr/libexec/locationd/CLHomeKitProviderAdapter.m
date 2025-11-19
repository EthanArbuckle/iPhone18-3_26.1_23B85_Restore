@interface CLHomeKitProviderAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLHomeKitProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
@end

@implementation CLHomeKitProviderAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
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

- (void)doAsync:(id)a3
{
  v4 = [(CLHomeKitProviderAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLHomeKitProviderAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

@end
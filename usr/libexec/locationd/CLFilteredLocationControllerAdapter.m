@interface CLFilteredLocationControllerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLFilteredLocationControllerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
@end

@implementation CLFilteredLocationControllerAdapter

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
  if (qword_1026590B8 != -1)
  {
    sub_101919A08();
  }

  return qword_1026590B0;
}

- (CLFilteredLocationControllerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLFilteredLocationControllerAdapter;
  return [(CLFilteredLocationControllerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLFilteredLocationControllerProtocol outboundProtocol:&OBJC_PROTOCOL___CLFilteredLocationControllerClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10070F720([(CLFilteredLocationControllerAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_101919A1C();
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
  v4 = [(CLFilteredLocationControllerAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLFilteredLocationControllerAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

@end
@interface CLFilteredLocationControllerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLFilteredLocationControllerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
@end

@implementation CLFilteredLocationControllerAdapter

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

- (void)doAsync:(id)async
{
  adaptee = [(CLFilteredLocationControllerAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLFilteredLocationControllerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

@end
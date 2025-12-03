@interface CLTimeManagerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLTimeManagerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)setGpsTime:(unint64_t)time;
@end

@implementation CLTimeManagerAdapter

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
  if (qword_102658560 != -1)
  {
    sub_1018F620C();
  }

  return qword_102658558;
}

- (CLTimeManagerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLTimeManagerAdapter;
  return [(CLTimeManagerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLTimeManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLTimeManagerClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100668504([(CLTimeManagerAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018F6220();
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
  adaptee = [(CLTimeManagerAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLTimeManagerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)setGpsTime:(unint64_t)time
{
  adaptee = [(CLTimeManagerAdapter *)self adaptee];

  sub_1006687F4(adaptee, time);
}

@end
@interface CLTimeManagerAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLTimeManagerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)setGpsTime:(unint64_t)a3;
@end

@implementation CLTimeManagerAdapter

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

- (void)doAsync:(id)a3
{
  v4 = [(CLTimeManagerAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLTimeManagerAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)setGpsTime:(unint64_t)a3
{
  v4 = [(CLTimeManagerAdapter *)self adaptee];

  sub_1006687F4(v4, a3);
}

@end
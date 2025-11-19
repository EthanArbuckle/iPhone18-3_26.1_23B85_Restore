@interface CLCachedLocationControllerAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLCachedLocationControllerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
@end

@implementation CLCachedLocationControllerAdapter

+ (BOOL)isSupported
{
  if (qword_10265A650 != -1)
  {
    sub_10195155C();
  }

  return (byte_10265A648 & 1) == 0;
}

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
  if (qword_10265A660 != -1)
  {
    sub_101951570();
  }

  return qword_10265A658;
}

- (CLCachedLocationControllerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLCachedLocationControllerAdapter;
  return [(CLCachedLocationControllerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLCachedLocationControllerProtocol outboundProtocol:&OBJC_PROTOCOL___CLCachedLocationControllerClientProtocol];
}

- (void)beginService
{
  v3 = sub_10083C0D8([(CLCachedLocationControllerAdapter *)self universe]);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:v4];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_101951584();
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
  v4 = [(CLCachedLocationControllerAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLCachedLocationControllerAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

@end
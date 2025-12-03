@interface CLCachedLocationControllerAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLCachedLocationControllerAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
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

- (void)doAsync:(id)async
{
  adaptee = [(CLCachedLocationControllerAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLCachedLocationControllerAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

@end
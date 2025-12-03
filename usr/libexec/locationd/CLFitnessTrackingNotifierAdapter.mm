@interface CLFitnessTrackingNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLFitnessTrackingNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
@end

@implementation CLFitnessTrackingNotifierAdapter

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
  if (qword_10265AE38 != -1)
  {
    sub_10195E994();
  }

  return qword_10265AE30;
}

- (CLFitnessTrackingNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLFitnessTrackingNotifierAdapter;
  return [(CLFitnessTrackingNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLFitnessTrackingNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLFitnessTrackingNotifierClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100866E50([(CLFitnessTrackingNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10195E9A8();
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
  adaptee = [(CLFitnessTrackingNotifierAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLFitnessTrackingNotifierAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

+ (BOOL)isSupported
{
  sub_10001A3E8();

  return sub_10071C8FC();
}

@end
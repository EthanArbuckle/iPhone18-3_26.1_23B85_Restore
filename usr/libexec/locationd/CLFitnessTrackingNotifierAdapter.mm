@interface CLFitnessTrackingNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLFitnessTrackingNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
@end

@implementation CLFitnessTrackingNotifierAdapter

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

- (void)doAsync:(id)a3
{
  v4 = [(CLFitnessTrackingNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLFitnessTrackingNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

+ (BOOL)isSupported
{
  sub_10001A3E8();

  return sub_10071C8FC();
}

@end
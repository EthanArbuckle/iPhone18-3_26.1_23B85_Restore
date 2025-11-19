@interface CLWatchOrientationSettingsNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLWatchOrientationSettingsNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
@end

@implementation CLWatchOrientationSettingsNotifierAdapter

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
  if (qword_10265A510 != -1)
  {
    sub_10194AFEC();
  }

  return qword_10265A508;
}

- (CLWatchOrientationSettingsNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLWatchOrientationSettingsNotifierAdapter;
  return [(CLWatchOrientationSettingsNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLWatchOrientationSettingsNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLWatchOrientationSettingsNotifierClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1008270C4([(CLWatchOrientationSettingsNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10194B000();
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
  v4 = [(CLWatchOrientationSettingsNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLWatchOrientationSettingsNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

+ (BOOL)isSupported
{
  if (qword_10265A520 != -1)
  {
    sub_10194B194();
  }

  return byte_10265A518;
}

@end
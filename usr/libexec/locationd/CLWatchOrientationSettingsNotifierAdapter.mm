@interface CLWatchOrientationSettingsNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLWatchOrientationSettingsNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
@end

@implementation CLWatchOrientationSettingsNotifierAdapter

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

- (void)doAsync:(id)async
{
  adaptee = [(CLWatchOrientationSettingsNotifierAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLWatchOrientationSettingsNotifierAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
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
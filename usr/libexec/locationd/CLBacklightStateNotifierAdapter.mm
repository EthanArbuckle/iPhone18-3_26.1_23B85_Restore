@interface CLBacklightStateNotifierAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLBacklightStateNotifierAdapter)init;
- (CLBacklightStateNotifierAdapter)initWithCLBacklightStateNotifier:(void *)notifier;
- (void)adaptee;
- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
@end

@implementation CLBacklightStateNotifierAdapter

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
  if (qword_10265A3B8 != -1)
  {
    sub_1019493E0();
  }

  return qword_10265A3B0;
}

- (CLBacklightStateNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLBacklightStateNotifierAdapter;
  return [(CLBacklightStateNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLBacklightStateNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLBacklightStateNotifierClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1008175B4([(CLBacklightStateNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1019493F4();
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
  adaptee = [(CLBacklightStateNotifierAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLBacklightStateNotifierAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (CLBacklightStateNotifierAdapter)initWithCLBacklightStateNotifier:(void *)notifier
{
  v5.receiver = self;
  v5.super_class = CLBacklightStateNotifierAdapter;
  result = [(CLNotifierServiceAdapter *)&v5 init];
  if (result)
  {
    result->_backlightStateNotifier = notifier;
  }

  return result;
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  stateCopy = state;
  changeRequest = [objc_msgSend(event changeRequest];
  if (objc_opt_class())
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      changeRequest = 0;
    }
  }

  else
  {
    changeRequest = 0;
  }

  [objc_msgSend(event "changeRequest")];
  v9 = NSStringFromBLSBacklightChangeSourceEvent();
  if (changeRequest && ([changeRequest type] == 1 || objc_msgSend(changeRequest, "type") == 2))
  {
    [changeRequest reason];
    v10 = NSStringFromBLSAlwaysOnSuppressionReason();
  }

  else
  {
    v10 = &stru_1025052F8;
  }

  backlightStateNotifier = self->_backlightStateNotifier;
  sub_10000EC00(v14, [v9 UTF8String]);
  sub_10000EC00(__p, [(__CFString *)v10 UTF8String]);
  sub_10081798C(backlightStateNotifier, stateCopy, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled
{
  backlightStateNotifier = self->_backlightStateNotifier;
  v5 = backlightStateNotifier[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100818264;
  v6[3] = &unk_102460CC8;
  v6[4] = backlightStateNotifier;
  enabledCopy = enabled;
  [v5 async:v6];
}

@end
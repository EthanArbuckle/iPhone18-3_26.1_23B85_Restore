@interface CLBacklightStateNotifierAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLBacklightStateNotifierAdapter)init;
- (CLBacklightStateNotifierAdapter)initWithCLBacklightStateNotifier:(void *)a3;
- (void)adaptee;
- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
@end

@implementation CLBacklightStateNotifierAdapter

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

- (void)doAsync:(id)a3
{
  v4 = [(CLBacklightStateNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLBacklightStateNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (CLBacklightStateNotifierAdapter)initWithCLBacklightStateNotifier:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLBacklightStateNotifierAdapter;
  result = [(CLNotifierServiceAdapter *)&v5 init];
  if (result)
  {
    result->_backlightStateNotifier = a3;
  }

  return result;
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  v6 = a4;
  v8 = [objc_msgSend(a5 changeRequest];
  if (objc_opt_class())
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  [objc_msgSend(a5 "changeRequest")];
  v9 = NSStringFromBLSBacklightChangeSourceEvent();
  if (v8 && ([v8 type] == 1 || objc_msgSend(v8, "type") == 2))
  {
    [v8 reason];
    v10 = NSStringFromBLSAlwaysOnSuppressionReason();
  }

  else
  {
    v10 = &stru_1025052F8;
  }

  backlightStateNotifier = self->_backlightStateNotifier;
  sub_10000EC00(v14, [v9 UTF8String]);
  sub_10000EC00(__p, [(__CFString *)v10 UTF8String]);
  sub_10081798C(backlightStateNotifier, v6, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4
{
  backlightStateNotifier = self->_backlightStateNotifier;
  v5 = backlightStateNotifier[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100818264;
  v6[3] = &unk_102460CC8;
  v6[4] = backlightStateNotifier;
  v7 = a4;
  [v5 async:v6];
}

@end
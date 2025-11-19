@interface CLCompanionNotifierAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLCompanionNotifierAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)setSilo:(id)a3;
@end

@implementation CLCompanionNotifierAdapter

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
  if (qword_102658358 != -1)
  {
    sub_1018E4228();
  }

  return qword_102658350;
}

- (CLCompanionNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLCompanionNotifierAdapter;
  return [(CLCompanionNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLCompanionNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLCompanionNotifierClientProtocol];
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
  v4 = [(CLCompanionNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLCompanionNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1005F3AF4([(CLCompanionNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018E4788();
  }

  v3 = [(CLNotifierServiceAdapter *)self notifier];
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018E4670();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = qword_102658368;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "companion idsService (beginService) %p", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E4684();
  }

  sub_1005F48B0(v4, qword_102658368);
}

- (void)endService
{
  v2 = [(CLNotifierServiceAdapter *)self notifier];
  (*(v2->var0 + 2))(v2);

  qword_102658368 = 0;
}

- (void)setSilo:(id)a3
{
  if (qword_1025D4200 != -1)
  {
    sub_1018E4670();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLCompanionNotifier suspending silo until IDS becomes available (CLCompanionTransport)}", buf, 0x12u);
  }

  [a3 suspend];
  v8.receiver = self;
  v8.super_class = CLCompanionNotifierAdapter;
  [(CLCompanionNotifierAdapter *)&v8 setSilo:a3];
  if (qword_1025D4200 != -1)
  {
    sub_1018E48FC();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLCompanionNotifier waiting on IDS to become available (CLCompanionTransport)}", buf, 0x12u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005F5DA4;
  v7[3] = &unk_102463950;
  v7[4] = a3;
  [IDSService serviceWithIdentifier:@"com.apple.private.alloy.location.motion" completion:v7];
}

@end
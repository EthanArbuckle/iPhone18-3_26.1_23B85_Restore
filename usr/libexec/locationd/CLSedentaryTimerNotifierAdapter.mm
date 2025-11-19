@interface CLSedentaryTimerNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLSedentaryTimerNotifierAdapter)init;
- (int)syncgetSedentaryAlarmData:(void *)a3 since:(double)a4;
- (int)syncgetStartTimerForClient:(id)a3 andOptions:(id)a4;
- (int)syncgetStopTimerForClient:(id)a3;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)timeZoneDidChange:(id)a3;
@end

@implementation CLSedentaryTimerNotifierAdapter

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
  if (qword_102656958 != -1)
  {
    sub_1018AF6A4();
  }

  return qword_102656950;
}

- (CLSedentaryTimerNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLSedentaryTimerNotifierAdapter;
  return [(CLSedentaryTimerNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLSedentaryTimerNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLSedentaryTimerNotifierClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10050CF50([(CLSedentaryTimerNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018AF6B8();
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
  v4 = [(CLSedentaryTimerNotifierAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLSedentaryTimerNotifierAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (int)syncgetStartTimerForClient:(id)a3 andOptions:(id)a4
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v7 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543362;
    *&__p[4] = a3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm, syncgetStartTimerForClient starting timer for client,%{public}@!", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AF860(a3);
  }

  sub_10000EC00(__p, [a3 UTF8String]);
  v8 = sub_10050D2D4([(CLSedentaryTimerNotifierAdapter *)self adaptee], __p, a4);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  return v8;
}

- (int)syncgetStopTimerForClient:(id)a3
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543362;
    *&__p[4] = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm, syncgetStopTimerForClient stopping timer for client,%{public}@!", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AFBB0(a3);
  }

  sub_10000EC00(__p, [a3 UTF8String]);
  sub_10050DA68([(CLSedentaryTimerNotifierAdapter *)self adaptee]);
  if (v8 < 0)
  {
    operator delete(*__p);
  }

  return 100;
}

- (int)syncgetSedentaryAlarmData:(void *)a3 since:(double)a4
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v7 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134349056;
    v10 = a4;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm, syncgetSedentaryAlarmData with start time,%{public}f!", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AFDA4(a4);
  }

  return sub_10124BBAC(*([(CLSedentaryTimerNotifierAdapter *)self adaptee]+ 23), a3, a4);
}

- (void)timeZoneDidChange:(id)a3
{
  v3 = *([(CLSedentaryTimerNotifierAdapter *)self adaptee]+ 47);
  if (v3)
  {

    sub_1004A9728(v3);
  }
}

+ (BOOL)isSupported
{
  if (qword_102656968 != -1)
  {
    sub_1018AFEBC();
  }

  return byte_102656960;
}

@end
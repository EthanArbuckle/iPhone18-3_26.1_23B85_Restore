@interface CLSedentaryTimerNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLSedentaryTimerNotifierAdapter)init;
- (int)syncgetSedentaryAlarmData:(void *)data since:(double)since;
- (int)syncgetStartTimerForClient:(id)client andOptions:(id)options;
- (int)syncgetStopTimerForClient:(id)client;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)timeZoneDidChange:(id)change;
@end

@implementation CLSedentaryTimerNotifierAdapter

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

- (void)doAsync:(id)async
{
  adaptee = [(CLSedentaryTimerNotifierAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLSedentaryTimerNotifierAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (int)syncgetStartTimerForClient:(id)client andOptions:(id)options
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v7 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543362;
    *&__p[4] = client;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm, syncgetStartTimerForClient starting timer for client,%{public}@!", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AF860(client);
  }

  sub_10000EC00(__p, [client UTF8String]);
  v8 = sub_10050D2D4([(CLSedentaryTimerNotifierAdapter *)self adaptee], __p, options);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  return v8;
}

- (int)syncgetStopTimerForClient:(id)client
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543362;
    *&__p[4] = client;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm, syncgetStopTimerForClient stopping timer for client,%{public}@!", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AFBB0(client);
  }

  sub_10000EC00(__p, [client UTF8String]);
  sub_10050DA68([(CLSedentaryTimerNotifierAdapter *)self adaptee]);
  if (v8 < 0)
  {
    operator delete(*__p);
  }

  return 100;
}

- (int)syncgetSedentaryAlarmData:(void *)data since:(double)since
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v7 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134349056;
    sinceCopy = since;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm, syncgetSedentaryAlarmData with start time,%{public}f!", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AFDA4(since);
  }

  return sub_10124BBAC(*([(CLSedentaryTimerNotifierAdapter *)self adaptee]+ 23), data, since);
}

- (void)timeZoneDidChange:(id)change
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
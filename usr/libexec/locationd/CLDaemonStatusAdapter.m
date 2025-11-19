@interface CLDaemonStatusAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetBatterySaverMode;
- (BOOL)syncgetRegisterPowerKeepAlive:(BOOL)a3 client:(unint64_t)a4 dbgMessage:(id)a5;
- (CLDaemonStatusAdapter)init;
- (int)syncgetReachability;
- (int)syncgetThermalLevel;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchIsAirplaneModeEnabledWithReply:(id)a3;
- (void)fetchIsBatteryConnectedWithReply:(id)a3;
- (void)fetchReachabilityWithReply:(id)a3;
- (void)fetchWirelessModemClientCountWithReply:(id)a3;
- (void)notifyMigrationPerformed;
- (void)triggerMetricHeartbeatNotification;
@end

@implementation CLDaemonStatusAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (int)syncgetReachability
{
  v2 = *([(CLDaemonStatusAdapter *)self adaptee]+ 14);

  return [v2 reachability];
}

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
  if (qword_102658378 != -1)
  {
    sub_1018E6504();
  }

  return qword_102658370;
}

- (CLDaemonStatusAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLDaemonStatusAdapter;
  return [(CLDaemonStatusAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLDaemonStatusProtocol outboundProtocol:&OBJC_PROTOCOL___CLDaemonStatusClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10061B43C([(CLDaemonStatusAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018E6518();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)a3
{
  v4 = [(CLDaemonStatusAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLDaemonStatusAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)fetchIsAirplaneModeEnabledWithReply:(id)a3
{
  v4 = [*(-[CLDaemonStatusAdapter adaptee](self "adaptee") + 14)];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)fetchReachabilityWithReply:(id)a3
{
  v4 = [*(-[CLDaemonStatusAdapter adaptee](self "adaptee") + 14)];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)fetchIsBatteryConnectedWithReply:(id)a3
{
  v8 = 7;
  v4 = [(CLDaemonStatusAdapter *)self adaptee:0xBFF0000000000000];
  v5 = (*(*v4 + 128))(v4, &v8, &v6);
  (*(a3 + 2))(a3, (v5 & BYTE1(v7)));
}

- (void)fetchWirelessModemClientCountWithReply:(id)a3
{
  v7 = 12;
  LOBYTE(v6[0]) = 0;
  v4 = [(CLDaemonStatusAdapter *)self adaptee];
  if ((*(*v4 + 128))(v4, &v7, v6))
  {
    v5 = v6[0];
  }

  else
  {
    v5 = 0;
  }

  (*(a3 + 2))(a3, v5);
}

- (void)notifyMigrationPerformed
{
  v2 = [(CLDaemonStatusAdapter *)self adaptee];

  sub_10061B82C(v2);
}

- (BOOL)syncgetRegisterPowerKeepAlive:(BOOL)a3 client:(unint64_t)a4 dbgMessage:(id)a5
{
  v7 = a3;
  v8 = [(CLDaemonStatusAdapter *)self adaptee];
  v9 = [a5 UTF8String];

  return sub_1001B7568(v8, v7, a4, v9);
}

- (void)triggerMetricHeartbeatNotification
{
  v2 = [(CLDaemonStatusAdapter *)self adaptee];

  sub_10061B988(v2);
}

- (int)syncgetThermalLevel
{
  v2 = *([(CLDaemonStatusAdapter *)self adaptee]+ 14);

  return [v2 thermalLevel];
}

- (BOOL)syncgetBatterySaverMode
{
  v2 = *([(CLDaemonStatusAdapter *)self adaptee]+ 14);

  return [v2 batterySaverModeEnabled];
}

@end
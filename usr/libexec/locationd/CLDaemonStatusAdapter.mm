@interface CLDaemonStatusAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetBatterySaverMode;
- (BOOL)syncgetRegisterPowerKeepAlive:(BOOL)alive client:(unint64_t)client dbgMessage:(id)message;
- (CLDaemonStatusAdapter)init;
- (int)syncgetReachability;
- (int)syncgetThermalLevel;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)fetchIsAirplaneModeEnabledWithReply:(id)reply;
- (void)fetchIsBatteryConnectedWithReply:(id)reply;
- (void)fetchReachabilityWithReply:(id)reply;
- (void)fetchWirelessModemClientCountWithReply:(id)reply;
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

- (void)doAsync:(id)async
{
  adaptee = [(CLDaemonStatusAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLDaemonStatusAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)fetchIsAirplaneModeEnabledWithReply:(id)reply
{
  v4 = [*(-[CLDaemonStatusAdapter adaptee](self "adaptee") + 14)];
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (void)fetchReachabilityWithReply:(id)reply
{
  v4 = [*(-[CLDaemonStatusAdapter adaptee](self "adaptee") + 14)];
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (void)fetchIsBatteryConnectedWithReply:(id)reply
{
  v8 = 7;
  v4 = [(CLDaemonStatusAdapter *)self adaptee:0xBFF0000000000000];
  v5 = (*(*v4 + 128))(v4, &v8, &v6);
  (*(reply + 2))(reply, (v5 & BYTE1(v7)));
}

- (void)fetchWirelessModemClientCountWithReply:(id)reply
{
  v7 = 12;
  LOBYTE(v6[0]) = 0;
  adaptee = [(CLDaemonStatusAdapter *)self adaptee];
  if ((*(*adaptee + 128))(adaptee, &v7, v6))
  {
    v5 = v6[0];
  }

  else
  {
    v5 = 0;
  }

  (*(reply + 2))(reply, v5);
}

- (void)notifyMigrationPerformed
{
  adaptee = [(CLDaemonStatusAdapter *)self adaptee];

  sub_10061B82C(adaptee);
}

- (BOOL)syncgetRegisterPowerKeepAlive:(BOOL)alive client:(unint64_t)client dbgMessage:(id)message
{
  aliveCopy = alive;
  adaptee = [(CLDaemonStatusAdapter *)self adaptee];
  uTF8String = [message UTF8String];

  return sub_1001B7568(adaptee, aliveCopy, client, uTF8String);
}

- (void)triggerMetricHeartbeatNotification
{
  adaptee = [(CLDaemonStatusAdapter *)self adaptee];

  sub_10061B988(adaptee);
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
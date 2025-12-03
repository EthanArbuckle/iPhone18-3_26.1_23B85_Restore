@interface CLTelephonyServiceAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetActiveCall:(BOOL *)call;
- (BOOL)syncgetCampOnlyState;
- (BOOL)syncgetCopyServingOperator:(id *)operator;
- (BOOL)syncgetCopyServingProvider:(id *)provider;
- (BOOL)syncgetCopyServingProviderFromCarrierBundle:(id *)bundle;
- (BOOL)syncgetDetectedCells:(void *)cells;
- (BOOL)syncgetIsRegisteredOnCell;
- (BOOL)syncgetServingCells:(void *)cells addNeighborCells:(BOOL)neighborCells;
- (BOOL)syncgetServingGsmCell:(Cell *)cell;
- (BOOL)syncgetSignalStrength:(int *)strength;
- (BOOL)syncgetUplinkFrequency:(float *)frequency andBandwidth:(float *)bandwidth;
- (CLTelephonyServiceAdapter)init;
- (id)syncgetCopyServingOperatorForSim:(int)sim;
- (id)syncgetCopyServingProviderFromCarrierBundleForSim:(int)sim;
- (id)syncgetRegistrationInfoDictionary;
- (int)syncgetRadioAccessTechnology;
- (int)syncgetRadioAccessTechnologyForSim:(int)sim;
- (int)syncgetRegistrationStatus;
- (int)syncgetRegistrationStatusForSim:(int)sim;
- (int)syncgetSignalStrengthForSim:(int)sim;
- (void)adaptee;
- (void)assertCommCenter:(int)center with:(int)with;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)dumpLogWithReason:(id)reason;
- (void)endService;
- (void)fetchIratStreamingInfoWithReply:(id)reply;
- (void)fetchIsCellAvailableWithReply:(id)reply;
- (void)fetchSignalStrengthMeasurementForSim:(int)sim withReply:(id)reply;
- (void)fetchUmtsApnForInstance:(int)instance WithReply:(id)reply;
- (void)fetchUmtsApnWithReply:(id)reply;
- (void)requestCamping:(BOOL)camping;
- (void)resetModemWithReason:(id)reason;
- (void)sendNotificationToClients:(id)clients notificationData:(id)data;
- (void)updateTAInfo:(TAData *)info;
@end

@implementation CLTelephonyServiceAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
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
  if (qword_102656F00 != -1)
  {
    sub_1018C69E4();
  }

  return qword_102656EF8;
}

- (CLTelephonyServiceAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLTelephonyServiceAdapter;
  return [(CLTelephonyServiceAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLTelephonyServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLTelephonyServiceClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10057D86C([(CLTelephonyServiceAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018C69F8();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)async
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLTelephonyServiceAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)fetchIsCellAvailableWithReply:(id)reply
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = (*(*adaptee + 216))(adaptee);
  v6 = *(reply + 2);

  v6(reply, v5);
}

- (void)requestCamping:(BOOL)camping
{
  campingCopy = camping;
  if (*([(CLTelephonyServiceAdapter *)self adaptee]+ 18))
  {
    v4 = _CTServerConnectionSetCampOnlyMode() == 0;
  }

  else
  {
    v4 = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1018C6B8C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = campingCopy;
    v11 = 1026;
    v12 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#camp request, campRequest:%{public}hhd, success:%{public}hhd}", v6, 0x1Eu);
  }
}

- (BOOL)syncgetCampOnlyState
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057DBB8(adaptee);
}

- (void)updateTAInfo:(TAData *)info
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = *&info->var8.var3;
  v7[2] = *&info->var6;
  v7[3] = v5;
  v8 = *&info->var9.var3;
  v6 = *&info->var4;
  v7[0] = *&info->var0;
  v7[1] = v6;
  sub_10057DEB4(adaptee, v7);
}

- (void)assertCommCenter:(int)center with:(int)with
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  sub_10057E33C(adaptee, center, with);
}

- (BOOL)syncgetUplinkFrequency:(float *)frequency andBandwidth:(float *)bandwidth
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];
  *frequency = adaptee[41];
  *bandwidth = adaptee[42];
  return 1;
}

- (id)syncgetRegistrationInfoDictionary
{
  v2 = sub_10057E534([(CLTelephonyServiceAdapter *)self adaptee]);

  return v2;
}

- (void)fetchUmtsApnWithReply:(id)reply
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  sub_100912BD4(v4, reply);
}

- (void)fetchUmtsApnForInstance:(int)instance WithReply:(id)reply
{
  v6 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  sub_100913074(v6, instance, reply);
}

- (void)fetchIratStreamingInfoWithReply:(id)reply
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  sub_10057E700(adaptee, reply);
}

- (BOOL)syncgetDetectedCells:(void *)cells
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057E81C(adaptee, cells);
}

- (BOOL)syncgetIsRegisteredOnCell
{
  v2 = *(*[(CLTelephonyServiceAdapter *)self adaptee]+ 216);

  return v2();
}

- (int)syncgetRadioAccessTechnology
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057F5A0(adaptee);
}

- (int)syncgetRadioAccessTechnologyForSim:(int)sim
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057F614(adaptee, sim);
}

- (void)fetchSignalStrengthMeasurementForSim:(int)sim withReply:(id)reply
{
  v5 = *&sim;
  v6 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  sub_100084F30(v6, v5, reply);
}

- (int)syncgetRegistrationStatus
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_1000EC7AC(adaptee);
}

- (int)syncgetRegistrationStatusForSim:(int)sim
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057F70C(adaptee, sim);
}

- (BOOL)syncgetActiveCall:(BOOL *)call
{
  [*(-[CLTelephonyServiceAdapter adaptee](self "adaptee") + 88)];
  *call = 0;
  return 1;
}

- (BOOL)syncgetCopyServingOperator:(id *)operator
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v4 = sub_10057F934([(CLTelephonyServiceAdapter *)self adaptee], __p);
  v5 = [NSString alloc];
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *operator = [v5 initWithUTF8String:v6];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (id)syncgetCopyServingOperatorForSim:(int)sim
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  return sub_1009138AC(v4, sim);
}

- (BOOL)syncgetCopyServingProvider:(id *)provider
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v4 = sub_10057F934([(CLTelephonyServiceAdapter *)self adaptee], __p);
  v5 = [NSString alloc];
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *provider = [v5 initWithUTF8String:v6];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (BOOL)syncgetCopyServingProviderFromCarrierBundle:(id *)bundle
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v4 = sub_10057FCBC([(CLTelephonyServiceAdapter *)self adaptee], __p);
  v5 = [NSString alloc];
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *bundle = [v5 initWithUTF8String:v6];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (id)syncgetCopyServingProviderFromCarrierBundleForSim:(int)sim
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  return sub_1009138BC(v4, sim);
}

- (BOOL)syncgetSignalStrength:(int *)strength
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057FF4C(adaptee);
}

- (int)syncgetSignalStrengthForSim:(int)sim
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  return sub_100913878(v4, sim);
}

- (void)resetModemWithReason:(id)reason
{
  v4 = sub_100580340(-[CLTelephonyServiceAdapter adaptee](self, "adaptee"), [reason UTF8String]);
  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
  {
    v8 = 68289539;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v4;
    v14 = 2081;
    uTF8String = [reason UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:attempt to reset modem, success:%{public}hhd, reason:%{private, location:escape_only}s}", &v8, 0x22u);
    if (qword_1025D4600 != -1)
    {
      sub_1018C79A0();
    }
  }

  v6 = qword_1025D4608;
  if (os_signpost_enabled(qword_1025D4608))
  {
    uTF8String2 = [reason UTF8String];
    v8 = 68289539;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v4;
    v14 = 2081;
    uTF8String = uTF8String2;
    _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "attempt to reset modem", "{msg%{public}.0s:attempt to reset modem, success:%{public}hhd, reason:%{private, location:escape_only}s}", &v8, 0x22u);
  }
}

- (void)dumpLogWithReason:(id)reason
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];
  uTF8String = [reason UTF8String];

  sub_1005805A4(adaptee, uTF8String);
}

- (BOOL)syncgetServingCells:(void *)cells addNeighborCells:(BOOL)neighborCells
{
  neighborCellsCopy = neighborCells;
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_1005807FC(adaptee, cells, neighborCellsCopy);
}

- (BOOL)syncgetServingGsmCell:(Cell *)cell
{
  adaptee = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_1005808E8(adaptee, cell);
}

- (void)sendNotificationToClients:(id)clients notificationData:(id)data
{
  v4 = *(*[(CLTelephonyServiceAdapter *)self adaptee]+ 272);

  v4();
}

@end
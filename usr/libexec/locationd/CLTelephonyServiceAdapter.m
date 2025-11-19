@interface CLTelephonyServiceAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetActiveCall:(BOOL *)a3;
- (BOOL)syncgetCampOnlyState;
- (BOOL)syncgetCopyServingOperator:(id *)a3;
- (BOOL)syncgetCopyServingProvider:(id *)a3;
- (BOOL)syncgetCopyServingProviderFromCarrierBundle:(id *)a3;
- (BOOL)syncgetDetectedCells:(void *)a3;
- (BOOL)syncgetIsRegisteredOnCell;
- (BOOL)syncgetServingCells:(void *)a3 addNeighborCells:(BOOL)a4;
- (BOOL)syncgetServingGsmCell:(Cell *)a3;
- (BOOL)syncgetSignalStrength:(int *)a3;
- (BOOL)syncgetUplinkFrequency:(float *)a3 andBandwidth:(float *)a4;
- (CLTelephonyServiceAdapter)init;
- (id)syncgetCopyServingOperatorForSim:(int)a3;
- (id)syncgetCopyServingProviderFromCarrierBundleForSim:(int)a3;
- (id)syncgetRegistrationInfoDictionary;
- (int)syncgetRadioAccessTechnology;
- (int)syncgetRadioAccessTechnologyForSim:(int)a3;
- (int)syncgetRegistrationStatus;
- (int)syncgetRegistrationStatusForSim:(int)a3;
- (int)syncgetSignalStrengthForSim:(int)a3;
- (void)adaptee;
- (void)assertCommCenter:(int)a3 with:(int)a4;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)dumpLogWithReason:(id)a3;
- (void)endService;
- (void)fetchIratStreamingInfoWithReply:(id)a3;
- (void)fetchIsCellAvailableWithReply:(id)a3;
- (void)fetchSignalStrengthMeasurementForSim:(int)a3 withReply:(id)a4;
- (void)fetchUmtsApnForInstance:(int)a3 WithReply:(id)a4;
- (void)fetchUmtsApnWithReply:(id)a3;
- (void)requestCamping:(BOOL)a3;
- (void)resetModemWithReason:(id)a3;
- (void)sendNotificationToClients:(id)a3 notificationData:(id)a4;
- (void)updateTAInfo:(TAData *)a3;
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

- (void)doAsync:(id)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLTelephonyServiceAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)fetchIsCellAvailableWithReply:(id)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = (*(*v4 + 216))(v4);
  v6 = *(a3 + 2);

  v6(a3, v5);
}

- (void)requestCamping:(BOOL)a3
{
  v3 = a3;
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
    v10 = v3;
    v11 = 1026;
    v12 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#camp request, campRequest:%{public}hhd, success:%{public}hhd}", v6, 0x1Eu);
  }
}

- (BOOL)syncgetCampOnlyState
{
  v2 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057DBB8(v2);
}

- (void)updateTAInfo:(TAData *)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = *&a3->var8.var3;
  v7[2] = *&a3->var6;
  v7[3] = v5;
  v8 = *&a3->var9.var3;
  v6 = *&a3->var4;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  sub_10057DEB4(v4, v7);
}

- (void)assertCommCenter:(int)a3 with:(int)a4
{
  v6 = [(CLTelephonyServiceAdapter *)self adaptee];

  sub_10057E33C(v6, a3, a4);
}

- (BOOL)syncgetUplinkFrequency:(float *)a3 andBandwidth:(float *)a4
{
  v6 = [(CLTelephonyServiceAdapter *)self adaptee];
  *a3 = v6[41];
  *a4 = v6[42];
  return 1;
}

- (id)syncgetRegistrationInfoDictionary
{
  v2 = sub_10057E534([(CLTelephonyServiceAdapter *)self adaptee]);

  return v2;
}

- (void)fetchUmtsApnWithReply:(id)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  sub_100912BD4(v4, a3);
}

- (void)fetchUmtsApnForInstance:(int)a3 WithReply:(id)a4
{
  v6 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  sub_100913074(v6, a3, a4);
}

- (void)fetchIratStreamingInfoWithReply:(id)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];

  sub_10057E700(v4, a3);
}

- (BOOL)syncgetDetectedCells:(void *)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057E81C(v4, a3);
}

- (BOOL)syncgetIsRegisteredOnCell
{
  v2 = *(*[(CLTelephonyServiceAdapter *)self adaptee]+ 216);

  return v2();
}

- (int)syncgetRadioAccessTechnology
{
  v2 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057F5A0(v2);
}

- (int)syncgetRadioAccessTechnologyForSim:(int)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057F614(v4, a3);
}

- (void)fetchSignalStrengthMeasurementForSim:(int)a3 withReply:(id)a4
{
  v5 = *&a3;
  v6 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  sub_100084F30(v6, v5, a4);
}

- (int)syncgetRegistrationStatus
{
  v2 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_1000EC7AC(v2);
}

- (int)syncgetRegistrationStatusForSim:(int)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057F70C(v4, a3);
}

- (BOOL)syncgetActiveCall:(BOOL *)a3
{
  [*(-[CLTelephonyServiceAdapter adaptee](self "adaptee") + 88)];
  *a3 = 0;
  return 1;
}

- (BOOL)syncgetCopyServingOperator:(id *)a3
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

  *a3 = [v5 initWithUTF8String:v6];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (id)syncgetCopyServingOperatorForSim:(int)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  return sub_1009138AC(v4, a3);
}

- (BOOL)syncgetCopyServingProvider:(id *)a3
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

  *a3 = [v5 initWithUTF8String:v6];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (BOOL)syncgetCopyServingProviderFromCarrierBundle:(id *)a3
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

  *a3 = [v5 initWithUTF8String:v6];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (id)syncgetCopyServingProviderFromCarrierBundleForSim:(int)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  return sub_1009138BC(v4, a3);
}

- (BOOL)syncgetSignalStrength:(int *)a3
{
  v3 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_10057FF4C(v3);
}

- (int)syncgetSignalStrengthForSim:(int)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee]+ 176;

  return sub_100913878(v4, a3);
}

- (void)resetModemWithReason:(id)a3
{
  v4 = sub_100580340(-[CLTelephonyServiceAdapter adaptee](self, "adaptee"), [a3 UTF8String]);
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
    v15 = [a3 UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:attempt to reset modem, success:%{public}hhd, reason:%{private, location:escape_only}s}", &v8, 0x22u);
    if (qword_1025D4600 != -1)
    {
      sub_1018C79A0();
    }
  }

  v6 = qword_1025D4608;
  if (os_signpost_enabled(qword_1025D4608))
  {
    v7 = [a3 UTF8String];
    v8 = 68289539;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v4;
    v14 = 2081;
    v15 = v7;
    _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "attempt to reset modem", "{msg%{public}.0s:attempt to reset modem, success:%{public}hhd, reason:%{private, location:escape_only}s}", &v8, 0x22u);
  }
}

- (void)dumpLogWithReason:(id)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];
  v5 = [a3 UTF8String];

  sub_1005805A4(v4, v5);
}

- (BOOL)syncgetServingCells:(void *)a3 addNeighborCells:(BOOL)a4
{
  v4 = a4;
  v6 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_1005807FC(v6, a3, v4);
}

- (BOOL)syncgetServingGsmCell:(Cell *)a3
{
  v4 = [(CLTelephonyServiceAdapter *)self adaptee];

  return sub_1005808E8(v4, a3);
}

- (void)sendNotificationToClients:(id)a3 notificationData:(id)a4
{
  v4 = *(*[(CLTelephonyServiceAdapter *)self adaptee]+ 272);

  v4();
}

@end
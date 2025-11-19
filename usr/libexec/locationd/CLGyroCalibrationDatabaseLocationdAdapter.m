@interface CLGyroCalibrationDatabaseLocationdAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetBiasFit:(id *)a3;
- (BOOL)syncgetGyroStatsWithBias:(id *)a3 slope:(id *)a4 l2Error:(id *)a5 isDynamic:(BOOL)a6 deltaBias:(id *)a7 deltaSlope:(id *)a8 deltaError:(id *)a9 isDeltaDynamic:(BOOL)a10;
- (BOOL)syncgetInsertWithBias:(id *)a3 variance:(id *)a4 temperature:(float)a5 timestamp:(double)a6;
- (BOOL)syncgetSupportsMiniCalibration;
- (BOOL)syncgetWipeDatabase;
- (CLGyroCalibrationDatabaseLocationdAdapter)init;
- (double)syncgetLastMiniCalibration;
- (int)syncgetMaxDynamicTemperature;
- (int)syncgetNonFactoryRoundCount;
- (int)syncgetNumTemperatures;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)dumpDatabase:(id)a3 onCompletion:(id)a4;
- (void)endService;
- (void)getBiasFitWithReply:(id)a3;
- (void)startFactoryGYTT;
@end

@implementation CLGyroCalibrationDatabaseLocationdAdapter

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
  if (qword_102658290 != -1)
  {
    sub_1018E0DF8();
  }

  return qword_102658288;
}

- (CLGyroCalibrationDatabaseLocationdAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLGyroCalibrationDatabaseLocationdAdapter;
  return [(CLGyroCalibrationDatabaseLocationdAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLGyroCalibrationDatabaseProtocol outboundProtocol:&OBJC_PROTOCOL___CLGyroCalibrationDatabaseClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10182BDD8([(CLGyroCalibrationDatabaseLocationdAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018E0E0C();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)a3
{
  v4 = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

+ (BOOL)isSupported
{
  if (qword_1026582A0 != -1)
  {
    sub_1018E0FA0();
  }

  return byte_102658298;
}

- (BOOL)syncgetGyroStatsWithBias:(id *)a3 slope:(id *)a4 l2Error:(id *)a5 isDynamic:(BOOL)a6 deltaBias:(id *)a7 deltaSlope:(id *)a8 deltaError:(id *)a9 isDeltaDynamic:(BOOL)a10
{
  v10 = a6;
  v15 = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v16 = (*(*v15 + 256))(v15, a3, a4, a5, v10);
  if (v16)
  {
    v17 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 256);

    LOBYTE(v16) = v17();
  }

  return v16;
}

- (int)syncgetMaxDynamicTemperature
{
  v2 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 264);

  return v2();
}

- (void)startFactoryGYTT
{
  v2 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 248);

  v2();
}

- (BOOL)syncgetBiasFit:(id *)a3
{
  v3 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 216);

  return v3();
}

- (void)getBiasFitWithReply:(id)a3
{
  memset(__src, 0, sizeof(__src));
  v4 = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v5 = (*(*v4 + 216))(v4, __src);
  memcpy(v6, __src, sizeof(v6));
  (*(a3 + 2))(a3, v5, v6);
}

- (int)syncgetNonFactoryRoundCount
{
  v2 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 296);

  return v2();
}

- (BOOL)syncgetSupportsMiniCalibration
{
  v2 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 272);

  return v2();
}

- (double)syncgetLastMiniCalibration
{
  v4 = 0.0;
  v2 = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  (*(*v2 + 288))(v2, &v4);
  return v4;
}

- (BOOL)syncgetInsertWithBias:(id *)a3 variance:(id *)a4 temperature:(float)a5 timestamp:(double)a6
{
  v8 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 208);
  v9.n128_f32[0] = a5;
  v10.n128_f64[0] = a6;

  return v8(v9, v10);
}

- (void)dumpDatabase:(id)a3 onCompletion:(id)a4
{
  v6 = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v7 = (*(*v6 + 224))(v6, a3);
  v8 = *(a4 + 2);

  v8(a4, v7);
}

- (BOOL)syncgetWipeDatabase
{
  v2 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 232);

  return v2();
}

- (int)syncgetNumTemperatures
{
  v2 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 240);

  return v2();
}

@end
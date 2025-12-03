@interface CLGyroCalibrationDatabaseLocationdAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetBiasFit:(id *)fit;
- (BOOL)syncgetGyroStatsWithBias:(id *)bias slope:(id *)slope l2Error:(id *)error isDynamic:(BOOL)dynamic deltaBias:(id *)deltaBias deltaSlope:(id *)deltaSlope deltaError:(id *)deltaError isDeltaDynamic:(BOOL)self0;
- (BOOL)syncgetInsertWithBias:(id *)bias variance:(id *)variance temperature:(float)temperature timestamp:(double)timestamp;
- (BOOL)syncgetSupportsMiniCalibration;
- (BOOL)syncgetWipeDatabase;
- (CLGyroCalibrationDatabaseLocationdAdapter)init;
- (double)syncgetLastMiniCalibration;
- (int)syncgetMaxDynamicTemperature;
- (int)syncgetNonFactoryRoundCount;
- (int)syncgetNumTemperatures;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)dumpDatabase:(id)database onCompletion:(id)completion;
- (void)endService;
- (void)getBiasFitWithReply:(id)reply;
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

- (void)doAsync:(id)async
{
  adaptee = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

+ (BOOL)isSupported
{
  if (qword_1026582A0 != -1)
  {
    sub_1018E0FA0();
  }

  return byte_102658298;
}

- (BOOL)syncgetGyroStatsWithBias:(id *)bias slope:(id *)slope l2Error:(id *)error isDynamic:(BOOL)dynamic deltaBias:(id *)deltaBias deltaSlope:(id *)deltaSlope deltaError:(id *)deltaError isDeltaDynamic:(BOOL)self0
{
  dynamicCopy = dynamic;
  adaptee = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v16 = (*(*adaptee + 256))(adaptee, bias, slope, error, dynamicCopy);
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

- (BOOL)syncgetBiasFit:(id *)fit
{
  v3 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 216);

  return v3();
}

- (void)getBiasFitWithReply:(id)reply
{
  memset(__src, 0, sizeof(__src));
  adaptee = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v5 = (*(*adaptee + 216))(adaptee, __src);
  memcpy(v6, __src, sizeof(v6));
  (*(reply + 2))(reply, v5, v6);
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
  adaptee = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  (*(*adaptee + 288))(adaptee, &v4);
  return v4;
}

- (BOOL)syncgetInsertWithBias:(id *)bias variance:(id *)variance temperature:(float)temperature timestamp:(double)timestamp
{
  v8 = *(*[(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee]+ 208);
  v9.n128_f32[0] = temperature;
  v10.n128_f64[0] = timestamp;

  return v8(v9, v10);
}

- (void)dumpDatabase:(id)database onCompletion:(id)completion
{
  adaptee = [(CLGyroCalibrationDatabaseLocationdAdapter *)self adaptee];
  v7 = (*(*adaptee + 224))(adaptee, database);
  v8 = *(completion + 2);

  v8(completion, v7);
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
@interface OSChargingPhoneOnPluginPredictorWithSignals
- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7;
@end

@implementation OSChargingPhoneOnPluginPredictorWithSignals

- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7
{
  v14 = a5;
  v15 = a7;
  v16 = a8;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138412290;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ Querying model", buf, 0xCu);
  }

  v19 = +[OSChargingSignals sharedInstance];
  [(OSChargingPhoneOnPluginPredictorWithSignals *)self setSignals:v19];

  *&retstr->var0 = 0;
  retstr->var1 = 0.0;
  retstr->var2 = 0.0;
  v27.receiver = self;
  v27.super_class = OSChargingPhoneOnPluginPredictorWithSignals;
  [(OSChargingTwoStagePredictorQueryResult *)&v27 chargingDecision:a4 withPluginDate:v14 withPluginBatteryLevel:v15 forDate:v16 withLog:a6];
  v20 = [(OSChargingPhoneOnPluginPredictorWithSignals *)self signals];
  v21 = [v20 determineNextEvent];

  v22 = +[NSDate distantPast];
  LODWORD(v19) = [v21 isEqualToDate:v22];

  if (v19)
  {
    retstr->var0 = 0;
  }

  else
  {
    v23 = +[NSDate distantFuture];
    v24 = [v21 isEqualToDate:v23];

    if ((v24 & 1) == 0)
    {
      [v21 timeIntervalSinceNow];
      retstr->var1 = v25;
    }
  }

  return result;
}

@end
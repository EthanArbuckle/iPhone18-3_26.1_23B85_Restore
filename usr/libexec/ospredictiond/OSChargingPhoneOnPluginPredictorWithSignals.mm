@interface OSChargingPhoneOnPluginPredictorWithSignals
- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)decision withPluginDate:(unint64_t)date withPluginBatteryLevel:(id)level forDate:(double)forDate withLog:(id)log;
@end

@implementation OSChargingPhoneOnPluginPredictorWithSignals

- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)decision withPluginDate:(unint64_t)date withPluginBatteryLevel:(id)level forDate:(double)forDate withLog:(id)log
{
  levelCopy = level;
  logCopy = log;
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
  [(OSChargingTwoStagePredictorQueryResult *)&v27 chargingDecision:date withPluginDate:levelCopy withPluginBatteryLevel:logCopy forDate:v16 withLog:forDate];
  signals = [(OSChargingPhoneOnPluginPredictorWithSignals *)self signals];
  determineNextEvent = [signals determineNextEvent];

  v22 = +[NSDate distantPast];
  LODWORD(v19) = [determineNextEvent isEqualToDate:v22];

  if (v19)
  {
    retstr->var0 = 0;
  }

  else
  {
    v23 = +[NSDate distantFuture];
    v24 = [determineNextEvent isEqualToDate:v23];

    if ((v24 & 1) == 0)
    {
      [determineNextEvent timeIntervalSinceNow];
      retstr->var1 = v25;
    }
  }

  return result;
}

@end
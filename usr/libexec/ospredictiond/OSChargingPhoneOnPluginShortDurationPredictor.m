@interface OSChargingPhoneOnPluginShortDurationPredictor
- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7;
@end

@implementation OSChargingPhoneOnPluginShortDurationPredictor

- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = os_transaction_create();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Getting predictions for short duration or not, with on plugin model", &v30, 2u);
  }

  v17 = [(OSChargingTwoStagePredictor *)self getInputFeaturesWithPluginDate:v15 withPluginBatteryLevel:v14 forDate:v13 withLog:a6];

  *&retstr->var0 = 0;
  retstr->var1 = -99999.0;
  retstr->var2 = 0.0;
  v18 = [(OSChargingPhoneOnPluginPredictor *)self engageOnPluginModel];
  v19 = [v18 predictionFromFeatures:v17 error:0];

  v20 = [v19 featureValueForName:@"classProbability"];
  v21 = [v20 dictionaryValue];

  v22 = v13;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 description];
    v30 = 138412290;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "On plugin engagement model raw output %@", &v30, 0xCu);
  }

  v24 = [v21 objectForKeyedSubscript:&off_10009B520];
  [v24 doubleValue];
  v26 = v25;

  retstr->var2 = v26;
  v27 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v26 <= 0.7125)
  {
    if (v27)
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Engagement model says we are in a short charging duration.", &v30, 2u);
    }

    v28 = 1;
  }

  else
  {
    if (v27)
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Engagement model says we are not in a short charging duration.", &v30, 2u);
    }

    v28 = 0;
  }

  retstr->var0 = v28;

  return result;
}

@end
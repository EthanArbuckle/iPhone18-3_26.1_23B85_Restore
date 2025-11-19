@interface _OSHighBatteryDrainHighChargeDurationModelInput
- (_OSHighBatteryDrainHighChargeDurationModelInput)initWithActivity:(double)a3 n_events_prior:(double)a4 batt_weekday_percentile_prior:(double)a5 dist_from_total_mean:(double)a6 drain_since_last_plugin:(double)a7 max_batt_12:(double)a8 mean_activity:(double)a9 mean_daily_plugins:(double)a10 net_drain_since_max:(double)a11 recent_drain_1:(double)a12 recent_drain_15min:(double)a13 recent_drain_3:(double)a14 start_time_secs:(double)a15 user_mean_drain:(double)a16 value:(double)a17;
- (id)featureValueForName:(id)a3;
@end

@implementation _OSHighBatteryDrainHighChargeDurationModelInput

- (_OSHighBatteryDrainHighChargeDurationModelInput)initWithActivity:(double)a3 n_events_prior:(double)a4 batt_weekday_percentile_prior:(double)a5 dist_from_total_mean:(double)a6 drain_since_last_plugin:(double)a7 max_batt_12:(double)a8 mean_activity:(double)a9 mean_daily_plugins:(double)a10 net_drain_since_max:(double)a11 recent_drain_1:(double)a12 recent_drain_15min:(double)a13 recent_drain_3:(double)a14 start_time_secs:(double)a15 user_mean_drain:(double)a16 value:(double)a17
{
  v26.receiver = self;
  v26.super_class = _OSHighBatteryDrainHighChargeDurationModelInput;
  result = [(_OSHighBatteryDrainHighChargeDurationModelInput *)&v26 init];
  if (result)
  {
    result->_activity = a3;
    result->_n_events_prior = a4;
    result->_batt_weekday_percentile_prior = a5;
    result->_dist_from_total_mean = a6;
    result->_drain_since_last_plugin = a7;
    result->_max_batt_12 = a8;
    result->_mean_activity = a9;
    result->_mean_daily_plugins = a10;
    result->_net_drain_since_max = a11;
    result->_recent_drain_1 = a12;
    result->_recent_drain_15min = a13;
    result->_recent_drain_3 = a14;
    result->_start_time_secs = a15;
    result->_user_mean_drain = a16;
    result->_value = a17;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"activity"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self activity];
LABEL_30:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"n_events_prior"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self n_events_prior];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"batt_weekday_percentile_prior"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self batt_weekday_percentile_prior];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"dist_from_total_mean"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self dist_from_total_mean];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"drain_since_last_plugin"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self drain_since_last_plugin];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"max_batt_12"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self max_batt];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"mean_activity"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self mean_activity];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"mean_daily_plugins"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self mean_daily_plugins];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"net_drain_since_max"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self net_drain_since_max];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"recent_drain_1"])
  {
    goto LABEL_20;
  }

  if ([v4 isEqualToString:@"recent_drain_15min"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self recent_drain_15min];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"recent_drain_3"])
  {
LABEL_20:
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self recent_drain];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"start_time_secs"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self start_time_secs];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"user_mean_drain"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self user_mean_drain];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"value"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self value];
    goto LABEL_30;
  }

  v5 = 0;
LABEL_31:

  return v5;
}

@end
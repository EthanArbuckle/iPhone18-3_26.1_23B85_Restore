@interface _OSHighBatteryDrainHighChargeDurationModelInput
- (_OSHighBatteryDrainHighChargeDurationModelInput)initWithActivity:(double)activity n_events_prior:(double)n_events_prior batt_weekday_percentile_prior:(double)batt_weekday_percentile_prior dist_from_total_mean:(double)dist_from_total_mean drain_since_last_plugin:(double)drain_since_last_plugin max_batt_12:(double)max_batt_12 mean_activity:(double)mean_activity mean_daily_plugins:(double)self0 net_drain_since_max:(double)self1 recent_drain_1:(double)self2 recent_drain_15min:(double)self3 recent_drain_3:(double)self4 start_time_secs:(double)self5 user_mean_drain:(double)self6 value:(double)self7;
- (id)featureValueForName:(id)name;
@end

@implementation _OSHighBatteryDrainHighChargeDurationModelInput

- (_OSHighBatteryDrainHighChargeDurationModelInput)initWithActivity:(double)activity n_events_prior:(double)n_events_prior batt_weekday_percentile_prior:(double)batt_weekday_percentile_prior dist_from_total_mean:(double)dist_from_total_mean drain_since_last_plugin:(double)drain_since_last_plugin max_batt_12:(double)max_batt_12 mean_activity:(double)mean_activity mean_daily_plugins:(double)self0 net_drain_since_max:(double)self1 recent_drain_1:(double)self2 recent_drain_15min:(double)self3 recent_drain_3:(double)self4 start_time_secs:(double)self5 user_mean_drain:(double)self6 value:(double)self7
{
  v26.receiver = self;
  v26.super_class = _OSHighBatteryDrainHighChargeDurationModelInput;
  result = [(_OSHighBatteryDrainHighChargeDurationModelInput *)&v26 init];
  if (result)
  {
    result->_activity = activity;
    result->_n_events_prior = n_events_prior;
    result->_batt_weekday_percentile_prior = batt_weekday_percentile_prior;
    result->_dist_from_total_mean = dist_from_total_mean;
    result->_drain_since_last_plugin = drain_since_last_plugin;
    result->_max_batt_12 = max_batt_12;
    result->_mean_activity = mean_activity;
    result->_mean_daily_plugins = mean_daily_plugins;
    result->_net_drain_since_max = net_drain_since_max;
    result->_recent_drain_1 = recent_drain_1;
    result->_recent_drain_15min = recent_drain_15min;
    result->_recent_drain_3 = recent_drain_3;
    result->_start_time_secs = start_time_secs;
    result->_user_mean_drain = user_mean_drain;
    result->_value = value;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"activity"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self activity];
LABEL_30:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_31;
  }

  if ([nameCopy isEqualToString:@"n_events_prior"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self n_events_prior];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"batt_weekday_percentile_prior"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self batt_weekday_percentile_prior];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"dist_from_total_mean"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self dist_from_total_mean];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"drain_since_last_plugin"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self drain_since_last_plugin];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"max_batt_12"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self max_batt];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"mean_activity"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self mean_activity];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"mean_daily_plugins"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self mean_daily_plugins];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"net_drain_since_max"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self net_drain_since_max];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"recent_drain_1"])
  {
    goto LABEL_20;
  }

  if ([nameCopy isEqualToString:@"recent_drain_15min"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self recent_drain_15min];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"recent_drain_3"])
  {
LABEL_20:
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self recent_drain];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"start_time_secs"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self start_time_secs];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"user_mean_drain"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self user_mean_drain];
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"value"])
  {
    [(_OSHighBatteryDrainHighChargeDurationModelInput *)self value];
    goto LABEL_30;
  }

  v5 = 0;
LABEL_31:

  return v5;
}

@end
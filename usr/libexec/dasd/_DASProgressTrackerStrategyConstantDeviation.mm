@interface _DASProgressTrackerStrategyConstantDeviation
- (BOOL)isDeviated;
- (_DASProgressTrackerStrategyConstantDeviation)initWithBaselineRateOfProgress:(double)progress deviatedThresholdPercent:(double)percent sustainedDeviationDurationSeconds:(double)seconds;
- (void)ingestRateUpdate:(double)update;
@end

@implementation _DASProgressTrackerStrategyConstantDeviation

- (_DASProgressTrackerStrategyConstantDeviation)initWithBaselineRateOfProgress:(double)progress deviatedThresholdPercent:(double)percent sustainedDeviationDurationSeconds:(double)seconds
{
  v13.receiver = self;
  v13.super_class = _DASProgressTrackerStrategyConstantDeviation;
  v8 = [(_DASProgressTrackerStrategyConstantDeviation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_expectedProgressRate = progress;
    v8->_deviatedThresholdPercent = percent;
    v8->_sustainedDeviationDurationSeconds = seconds;
    v10 = [_DASDaemonLogger logForCategory:@"ProgressTrackerConstantDeviation"];
    log = v9->_log;
    v9->_log = v10;
  }

  return v9;
}

- (void)ingestRateUpdate:(double)update
{
  deviationStartDate = self->_deviationStartDate;
  if (self->_expectedProgressRate * (1.0 - self->_deviatedThresholdPercent) <= update)
  {
    if (!deviationStartDate)
    {
      v6 = 0;
      goto LABEL_12;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Tracker is no longer deviated, setting start date to nil", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    if (deviationStartDate)
    {
      return;
    }

    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Tracker is now in a deviated state", v8, 2u);
    }

    v6 = +[NSDate now];
  }

  deviationStartDate = self->_deviationStartDate;
LABEL_12:
  self->_deviationStartDate = v6;
}

- (BOOL)isDeviated
{
  deviationStartDate = self->_deviationStartDate;
  if (deviationStartDate)
  {
    LOBYTE(deviationStartDate) = [(NSDate *)deviationStartDate haveNSecondsElapsed:self->_sustainedDeviationDurationSeconds];
  }

  return deviationStartDate;
}

@end
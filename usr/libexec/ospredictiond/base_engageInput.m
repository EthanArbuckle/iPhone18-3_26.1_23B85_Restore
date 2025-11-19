@interface base_engageInput
- (base_engageInput)initWithClassic_time_between_uses_med_dur_1:(double)a3 classic_time_between_uses_med_dur_2:(double)a4 classic_time_between_uses_med_dur_4:(double)a5 classic_time_between_uses_med_dur_24:(double)a6 classic_time_between_uses_std_dur_1:(double)a7 classic_time_between_uses_std_dur_2:(double)a8 classic_time_between_uses_std_dur_4:(double)a9 classic_time_between_uses_std_dur_24:(double)a10 hour:(double)a11 is_weekend:(double)a12 hour_plus_0:(double)a13 hour_plus_1:(double)a14 hour_plus_2:(double)a15 hour_plus_3:(double)a16 hour_plus_4:(double)a17 hour_plus_5:(double)a18 hours_until_use:(double)a19 meaningful_undercharge_rolling_average:(double)a20;
- (id)featureValueForName:(id)a3;
@end

@implementation base_engageInput

- (base_engageInput)initWithClassic_time_between_uses_med_dur_1:(double)a3 classic_time_between_uses_med_dur_2:(double)a4 classic_time_between_uses_med_dur_4:(double)a5 classic_time_between_uses_med_dur_24:(double)a6 classic_time_between_uses_std_dur_1:(double)a7 classic_time_between_uses_std_dur_2:(double)a8 classic_time_between_uses_std_dur_4:(double)a9 classic_time_between_uses_std_dur_24:(double)a10 hour:(double)a11 is_weekend:(double)a12 hour_plus_0:(double)a13 hour_plus_1:(double)a14 hour_plus_2:(double)a15 hour_plus_3:(double)a16 hour_plus_4:(double)a17 hour_plus_5:(double)a18 hours_until_use:(double)a19 meaningful_undercharge_rolling_average:(double)a20
{
  v29.receiver = self;
  v29.super_class = base_engageInput;
  result = [(base_engageInput *)&v29 init];
  if (result)
  {
    result->_classic_time_between_uses_med_dur_1 = a3;
    result->_classic_time_between_uses_med_dur_2 = a4;
    result->_classic_time_between_uses_med_dur_4 = a5;
    result->_classic_time_between_uses_med_dur_24 = a6;
    result->_classic_time_between_uses_std_dur_1 = a7;
    result->_classic_time_between_uses_std_dur_2 = a8;
    result->_classic_time_between_uses_std_dur_4 = a9;
    result->_classic_time_between_uses_std_dur_24 = a10;
    result->_hour = a11;
    result->_is_weekend = a12;
    result->_hour_plus_0 = a13;
    result->_hour_plus_1 = a14;
    result->_hour_plus_2 = a15;
    result->_hour_plus_3 = a16;
    result->_hour_plus_4 = a17;
    result->_hour_plus_5 = a18;
    result->_hours_until_use = a19;
    result->_meaningful_undercharge_rolling_average = a20;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"classic_time_between_uses_med_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"classic_time_between_uses_med_dur_2") || objc_msgSend(v4, "isEqualToString:", @"classic_time_between_uses_med_dur_4") || objc_msgSend(v4, "isEqualToString:", @"classic_time_between_uses_med_dur_24"))
  {
    [(base_engageInput *)self classic_time_between_uses_med_dur];
LABEL_30:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"classic_time_between_uses_std_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"classic_time_between_uses_std_dur_2") || objc_msgSend(v4, "isEqualToString:", @"classic_time_between_uses_std_dur_4") || objc_msgSend(v4, "isEqualToString:", @"classic_time_between_uses_std_dur_24"))
  {
    [(base_engageInput *)self classic_time_between_uses_std_dur];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"hour"])
  {
    [(base_engageInput *)self hour];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"is_weekend"])
  {
    [(base_engageInput *)self is_weekend];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"hour_plus_0"] || objc_msgSend(v4, "isEqualToString:", @"hour_plus_1") || objc_msgSend(v4, "isEqualToString:", @"hour_plus_2") || objc_msgSend(v4, "isEqualToString:", @"hour_plus_3") || objc_msgSend(v4, "isEqualToString:", @"hour_plus_4") || objc_msgSend(v4, "isEqualToString:", @"hour_plus_5"))
  {
    [(base_engageInput *)self hour_plus];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"hours_until_use"])
  {
    [(base_engageInput *)self hours_until_use];
    goto LABEL_30;
  }

  if ([v4 isEqualToString:@"meaningful_undercharge_rolling_average"])
  {
    [(base_engageInput *)self meaningful_undercharge_rolling_average];
    goto LABEL_30;
  }

  v5 = 0;
LABEL_31:

  return v5;
}

@end
@interface longDurationModelInput
- (id)featureValueForName:(id)a3;
- (longDurationModelInput)initWithPlugin_battery_level:(double)a3 time_from_plugin:(double)a4 med_dur_1:(double)a5 med_dur_2:(double)a6 med_dur_4:(double)a7 med_dur_8:(double)a8 med_dur_16:(double)a9 med_dur_24:(double)a10 cnt_dur_1:(double)a11 cnt_dur_2:(double)a12 cnt_dur_4:(double)a13 cnt_dur_8:(double)a14 cnt_dur_16:(double)a15 cnt_dur_24:(double)a16 std_dur_1:(double)a17 std_dur_2:(double)a18 std_dur_4:(double)a19 std_dur_8:(double)a20 std_dur_16:(double)a21 std_dur_24:(double)a22 weekday_med_dur_1:(double)a23 weekday_med_dur_2:(double)a24 weekday_med_dur_4:(double)a25 weekday_med_dur_8:(double)a26 weekday_med_dur_24:(double)a27 weekday_std_dur_4:(double)a28;
@end

@implementation longDurationModelInput

- (longDurationModelInput)initWithPlugin_battery_level:(double)a3 time_from_plugin:(double)a4 med_dur_1:(double)a5 med_dur_2:(double)a6 med_dur_4:(double)a7 med_dur_8:(double)a8 med_dur_16:(double)a9 med_dur_24:(double)a10 cnt_dur_1:(double)a11 cnt_dur_2:(double)a12 cnt_dur_4:(double)a13 cnt_dur_8:(double)a14 cnt_dur_16:(double)a15 cnt_dur_24:(double)a16 std_dur_1:(double)a17 std_dur_2:(double)a18 std_dur_4:(double)a19 std_dur_8:(double)a20 std_dur_16:(double)a21 std_dur_24:(double)a22 weekday_med_dur_1:(double)a23 weekday_med_dur_2:(double)a24 weekday_med_dur_4:(double)a25 weekday_med_dur_8:(double)a26 weekday_med_dur_24:(double)a27 weekday_std_dur_4:(double)a28
{
  v37.receiver = self;
  v37.super_class = longDurationModelInput;
  result = [(longDurationModelInput *)&v37 init];
  if (result)
  {
    result->_plugin_battery_level = a3;
    result->_time_from_plugin = a4;
    result->_med_dur_1 = a5;
    result->_med_dur_2 = a6;
    result->_med_dur_4 = a7;
    result->_med_dur_8 = a8;
    result->_med_dur_16 = a9;
    result->_med_dur_24 = a10;
    result->_cnt_dur_1 = a11;
    result->_cnt_dur_2 = a12;
    result->_cnt_dur_4 = a13;
    result->_cnt_dur_8 = a14;
    result->_cnt_dur_16 = a15;
    result->_cnt_dur_24 = a16;
    result->_std_dur_1 = a17;
    result->_std_dur_2 = a18;
    result->_std_dur_4 = a19;
    result->_std_dur_8 = a20;
    result->_std_dur_16 = a21;
    result->_std_dur_24 = a22;
    result->_weekday_med_dur_1 = a23;
    result->_weekday_med_dur_2 = a24;
    result->_weekday_med_dur_4 = a25;
    result->_weekday_med_dur_8 = a26;
    result->_weekday_med_dur_24 = a27;
    result->_weekday_std_dur_4 = a28;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"plugin_battery_level"])
  {
    [(longDurationModelInput *)self plugin_battery_level];
LABEL_42:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_43;
  }

  if ([v4 isEqualToString:@"time_from_plugin"])
  {
    [(longDurationModelInput *)self time_from_plugin];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:@"med_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"med_dur_2") || objc_msgSend(v4, "isEqualToString:", @"med_dur_4") || objc_msgSend(v4, "isEqualToString:", @"med_dur_8") || objc_msgSend(v4, "isEqualToString:", @"med_dur_16") || objc_msgSend(v4, "isEqualToString:", @"med_dur_24"))
  {
    [(longDurationModelInput *)self med_dur];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:@"cnt_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_2") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_4") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_8") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_16") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_24"))
  {
    [(longDurationModelInput *)self cnt_dur];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:@"std_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"std_dur_2") || objc_msgSend(v4, "isEqualToString:", @"std_dur_4") || objc_msgSend(v4, "isEqualToString:", @"std_dur_8") || objc_msgSend(v4, "isEqualToString:", @"std_dur_16") || objc_msgSend(v4, "isEqualToString:", @"std_dur_24"))
  {
    [(longDurationModelInput *)self std_dur];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:@"weekday_med_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"weekday_med_dur_2") || objc_msgSend(v4, "isEqualToString:", @"weekday_med_dur_4") || objc_msgSend(v4, "isEqualToString:", @"weekday_med_dur_8") || objc_msgSend(v4, "isEqualToString:", @"weekday_med_dur_24"))
  {
    [(longDurationModelInput *)self weekday_med_dur];
    goto LABEL_42;
  }

  if ([v4 isEqualToString:@"weekday_std_dur_4"])
  {
    [(longDurationModelInput *)self weekday_std_dur];
    goto LABEL_42;
  }

  v5 = 0;
LABEL_43:

  return v5;
}

@end
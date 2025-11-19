@interface watch_durationInput
- (id)featureValueForName:(id)a3;
- (watch_durationInput)initWithHour:(double)a3 plugin_battery_level:(double)a4 time_from_plugin:(double)a5 med_dur_1:(double)a6 med_dur_2:(double)a7 med_dur_4:(double)a8 med_dur_8:(double)a9 med_dur_16:(double)a10 med_dur_24:(double)a11 cnt_dur_1:(double)a12 cnt_dur_2:(double)a13 cnt_dur_4:(double)a14 cnt_dur_8:(double)a15 cnt_dur_16:(double)a16 cnt_dur_24:(double)a17 std_dur_1:(double)a18 std_dur_2:(double)a19 std_dur_4:(double)a20 std_dur_8:(double)a21 std_dur_16:(double)a22 std_dur_24:(double)a23;
@end

@implementation watch_durationInput

- (watch_durationInput)initWithHour:(double)a3 plugin_battery_level:(double)a4 time_from_plugin:(double)a5 med_dur_1:(double)a6 med_dur_2:(double)a7 med_dur_4:(double)a8 med_dur_8:(double)a9 med_dur_16:(double)a10 med_dur_24:(double)a11 cnt_dur_1:(double)a12 cnt_dur_2:(double)a13 cnt_dur_4:(double)a14 cnt_dur_8:(double)a15 cnt_dur_16:(double)a16 cnt_dur_24:(double)a17 std_dur_1:(double)a18 std_dur_2:(double)a19 std_dur_4:(double)a20 std_dur_8:(double)a21 std_dur_16:(double)a22 std_dur_24:(double)a23
{
  v32.receiver = self;
  v32.super_class = watch_durationInput;
  result = [(watch_durationInput *)&v32 init];
  if (result)
  {
    result->_hour = a3;
    result->_plugin_battery_level = a4;
    result->_time_from_plugin = a5;
    result->_med_dur_1 = a6;
    result->_med_dur_2 = a7;
    result->_med_dur_4 = a8;
    result->_med_dur_8 = a9;
    result->_med_dur_16 = a10;
    result->_med_dur_24 = a11;
    result->_cnt_dur_1 = a12;
    result->_cnt_dur_2 = a13;
    result->_cnt_dur_4 = a14;
    result->_cnt_dur_8 = a15;
    result->_cnt_dur_16 = a16;
    result->_cnt_dur_24 = a17;
    result->_std_dur_1 = a18;
    result->_std_dur_2 = a19;
    result->_std_dur_4 = a20;
    result->_std_dur_8 = a21;
    result->_std_dur_16 = a22;
    result->_std_dur_24 = a23;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"hour"])
  {
    [(watch_durationInput *)self hour];
LABEL_34:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_35;
  }

  if ([v4 isEqualToString:@"plugin_battery_level"])
  {
    [(watch_durationInput *)self plugin_battery_level];
    goto LABEL_34;
  }

  if ([v4 isEqualToString:@"time_from_plugin"])
  {
    [(watch_durationInput *)self time_from_plugin];
    goto LABEL_34;
  }

  if ([v4 isEqualToString:@"med_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"med_dur_2") || objc_msgSend(v4, "isEqualToString:", @"med_dur_4") || objc_msgSend(v4, "isEqualToString:", @"med_dur_8") || objc_msgSend(v4, "isEqualToString:", @"med_dur_16") || objc_msgSend(v4, "isEqualToString:", @"med_dur_24"))
  {
    [(watch_durationInput *)self med_dur];
    goto LABEL_34;
  }

  if ([v4 isEqualToString:@"cnt_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_2") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_4") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_8") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_16") || objc_msgSend(v4, "isEqualToString:", @"cnt_dur_24"))
  {
    [(watch_durationInput *)self cnt_dur];
    goto LABEL_34;
  }

  if ([v4 isEqualToString:@"std_dur_1"] || objc_msgSend(v4, "isEqualToString:", @"std_dur_2") || objc_msgSend(v4, "isEqualToString:", @"std_dur_4") || objc_msgSend(v4, "isEqualToString:", @"std_dur_8") || objc_msgSend(v4, "isEqualToString:", @"std_dur_16") || objc_msgSend(v4, "isEqualToString:", @"std_dur_24"))
  {
    [(watch_durationInput *)self std_dur];
    goto LABEL_34;
  }

  v5 = 0;
LABEL_35:

  return v5;
}

@end
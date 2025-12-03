@interface watch_durationInput
- (id)featureValueForName:(id)name;
- (watch_durationInput)initWithHour:(double)hour plugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)self0 med_dur_24:(double)self1 cnt_dur_1:(double)self2 cnt_dur_2:(double)self3 cnt_dur_4:(double)self4 cnt_dur_8:(double)self5 cnt_dur_16:(double)self6 cnt_dur_24:(double)self7 std_dur_1:(double)self8 std_dur_2:(double)self9 std_dur_4:(double)std_dur_4 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24;
@end

@implementation watch_durationInput

- (watch_durationInput)initWithHour:(double)hour plugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)self0 med_dur_24:(double)self1 cnt_dur_1:(double)self2 cnt_dur_2:(double)self3 cnt_dur_4:(double)self4 cnt_dur_8:(double)self5 cnt_dur_16:(double)self6 cnt_dur_24:(double)self7 std_dur_1:(double)self8 std_dur_2:(double)self9 std_dur_4:(double)std_dur_4 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24
{
  v32.receiver = self;
  v32.super_class = watch_durationInput;
  result = [(watch_durationInput *)&v32 init];
  if (result)
  {
    result->_hour = hour;
    result->_plugin_battery_level = plugin_battery_level;
    result->_time_from_plugin = time_from_plugin;
    result->_med_dur_1 = med_dur_1;
    result->_med_dur_2 = med_dur_2;
    result->_med_dur_4 = med_dur_4;
    result->_med_dur_8 = med_dur_8;
    result->_med_dur_16 = med_dur_16;
    result->_med_dur_24 = med_dur_24;
    result->_cnt_dur_1 = cnt_dur_1;
    result->_cnt_dur_2 = cnt_dur_2;
    result->_cnt_dur_4 = cnt_dur_4;
    result->_cnt_dur_8 = cnt_dur_8;
    result->_cnt_dur_16 = cnt_dur_16;
    result->_cnt_dur_24 = cnt_dur_24;
    result->_std_dur_1 = std_dur_1;
    result->_std_dur_2 = std_dur_2;
    result->_std_dur_4 = std_dur_4;
    result->_std_dur_8 = std_dur_8;
    result->_std_dur_16 = std_dur_16;
    result->_std_dur_24 = std_dur_24;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"hour"])
  {
    [(watch_durationInput *)self hour];
LABEL_34:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_35;
  }

  if ([nameCopy isEqualToString:@"plugin_battery_level"])
  {
    [(watch_durationInput *)self plugin_battery_level];
    goto LABEL_34;
  }

  if ([nameCopy isEqualToString:@"time_from_plugin"])
  {
    [(watch_durationInput *)self time_from_plugin];
    goto LABEL_34;
  }

  if ([nameCopy isEqualToString:@"med_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_16") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_24"))
  {
    [(watch_durationInput *)self med_dur];
    goto LABEL_34;
  }

  if ([nameCopy isEqualToString:@"cnt_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_16") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_24"))
  {
    [(watch_durationInput *)self cnt_dur];
    goto LABEL_34;
  }

  if ([nameCopy isEqualToString:@"std_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_16") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_24"))
  {
    [(watch_durationInput *)self std_dur];
    goto LABEL_34;
  }

  v5 = 0;
LABEL_35:

  return v5;
}

@end
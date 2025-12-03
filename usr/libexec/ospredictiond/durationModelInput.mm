@interface durationModelInput
- (durationModelInput)initWithPlugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)med_dur_16 med_dur_24:(double)self0 cnt_dur_1:(double)self1 cnt_dur_2:(double)self2 cnt_dur_4:(double)self3 cnt_dur_8:(double)self4 cnt_dur_16:(double)self5 cnt_dur_24:(double)self6 std_dur_1:(double)self7 std_dur_2:(double)self8 std_dur_4:(double)self9 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24 weekday_med_dur_1:(double)weekday_med_dur_1 weekday_med_dur_2:(double)weekday_med_dur_2 weekday_med_dur_4:(double)weekday_med_dur_4 weekday_med_dur_8:(double)weekday_med_dur_8 weekday_med_dur_24:(double)weekday_med_dur_24 weekday_std_dur_4:(double)weekday_std_dur_4;
- (id)featureValueForName:(id)name;
@end

@implementation durationModelInput

- (durationModelInput)initWithPlugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)med_dur_16 med_dur_24:(double)self0 cnt_dur_1:(double)self1 cnt_dur_2:(double)self2 cnt_dur_4:(double)self3 cnt_dur_8:(double)self4 cnt_dur_16:(double)self5 cnt_dur_24:(double)self6 std_dur_1:(double)self7 std_dur_2:(double)self8 std_dur_4:(double)self9 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24 weekday_med_dur_1:(double)weekday_med_dur_1 weekday_med_dur_2:(double)weekday_med_dur_2 weekday_med_dur_4:(double)weekday_med_dur_4 weekday_med_dur_8:(double)weekday_med_dur_8 weekday_med_dur_24:(double)weekday_med_dur_24 weekday_std_dur_4:(double)weekday_std_dur_4
{
  v37.receiver = self;
  v37.super_class = durationModelInput;
  result = [(durationModelInput *)&v37 init];
  if (result)
  {
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
    result->_weekday_med_dur_1 = weekday_med_dur_1;
    result->_weekday_med_dur_2 = weekday_med_dur_2;
    result->_weekday_med_dur_4 = weekday_med_dur_4;
    result->_weekday_med_dur_8 = weekday_med_dur_8;
    result->_weekday_med_dur_24 = weekday_med_dur_24;
    result->_weekday_std_dur_4 = weekday_std_dur_4;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"plugin_battery_level"])
  {
    [(durationModelInput *)self plugin_battery_level];
LABEL_42:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_43;
  }

  if ([nameCopy isEqualToString:@"time_from_plugin"])
  {
    [(durationModelInput *)self time_from_plugin];
    goto LABEL_42;
  }

  if ([nameCopy isEqualToString:@"med_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_16") || objc_msgSend(nameCopy, "isEqualToString:", @"med_dur_24"))
  {
    [(durationModelInput *)self med_dur];
    goto LABEL_42;
  }

  if ([nameCopy isEqualToString:@"cnt_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_16") || objc_msgSend(nameCopy, "isEqualToString:", @"cnt_dur_24"))
  {
    [(durationModelInput *)self cnt_dur];
    goto LABEL_42;
  }

  if ([nameCopy isEqualToString:@"std_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_16") || objc_msgSend(nameCopy, "isEqualToString:", @"std_dur_24"))
  {
    [(durationModelInput *)self std_dur];
    goto LABEL_42;
  }

  if ([nameCopy isEqualToString:@"weekday_med_dur_1"] || objc_msgSend(nameCopy, "isEqualToString:", @"weekday_med_dur_2") || objc_msgSend(nameCopy, "isEqualToString:", @"weekday_med_dur_4") || objc_msgSend(nameCopy, "isEqualToString:", @"weekday_med_dur_8") || objc_msgSend(nameCopy, "isEqualToString:", @"weekday_med_dur_24"))
  {
    [(durationModelInput *)self weekday_med_dur];
    goto LABEL_42;
  }

  if ([nameCopy isEqualToString:@"weekday_std_dur_4"])
  {
    [(durationModelInput *)self weekday_std_dur];
    goto LABEL_42;
  }

  v5 = 0;
LABEL_43:

  return v5;
}

@end
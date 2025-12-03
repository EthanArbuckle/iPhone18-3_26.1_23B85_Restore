@interface _OSDischargeETAInput
- (_OSDischargeETAInput)initWithStart_soc:(double)start_soc end_soc:(double)end_soc temperature:(double)temperature power:(double)power prev_median_tt10:(double)prev_median_tt10;
- (id)featureValueForName:(id)name;
@end

@implementation _OSDischargeETAInput

- (_OSDischargeETAInput)initWithStart_soc:(double)start_soc end_soc:(double)end_soc temperature:(double)temperature power:(double)power prev_median_tt10:(double)prev_median_tt10
{
  v13.receiver = self;
  v13.super_class = _OSDischargeETAInput;
  result = [(_OSDischargeETAInput *)&v13 init];
  if (result)
  {
    result->_start_soc = start_soc;
    result->_end_soc = end_soc;
    result->_temperature = temperature;
    result->_power = power;
    result->_prev_median_tt10 = prev_median_tt10;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"start_soc"])
  {
    [(_OSDischargeETAInput *)self start_soc];
LABEL_11:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"end_soc"])
  {
    [(_OSDischargeETAInput *)self end_soc];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"temperature"])
  {
    [(_OSDischargeETAInput *)self temperature];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"power"])
  {
    [(_OSDischargeETAInput *)self power];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"prev_median_tt10"])
  {
    [(_OSDischargeETAInput *)self prev_median_tt10];
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

@end
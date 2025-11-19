@interface _OSDischargeETAInput
- (_OSDischargeETAInput)initWithStart_soc:(double)a3 end_soc:(double)a4 temperature:(double)a5 power:(double)a6 prev_median_tt10:(double)a7;
- (id)featureValueForName:(id)a3;
@end

@implementation _OSDischargeETAInput

- (_OSDischargeETAInput)initWithStart_soc:(double)a3 end_soc:(double)a4 temperature:(double)a5 power:(double)a6 prev_median_tt10:(double)a7
{
  v13.receiver = self;
  v13.super_class = _OSDischargeETAInput;
  result = [(_OSDischargeETAInput *)&v13 init];
  if (result)
  {
    result->_start_soc = a3;
    result->_end_soc = a4;
    result->_temperature = a5;
    result->_power = a6;
    result->_prev_median_tt10 = a7;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"start_soc"])
  {
    [(_OSDischargeETAInput *)self start_soc];
LABEL_11:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"end_soc"])
  {
    [(_OSDischargeETAInput *)self end_soc];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"temperature"])
  {
    [(_OSDischargeETAInput *)self temperature];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"power"])
  {
    [(_OSDischargeETAInput *)self power];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"prev_median_tt10"])
  {
    [(_OSDischargeETAInput *)self prev_median_tt10];
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

@end
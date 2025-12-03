@interface tte_v1Input
- (id)featureValueForName:(id)name;
- (tte_v1Input)initWithStateOfCharge:(double)charge Curr_SoC_Median:(double)median Curr_SoC_SD:(double)d Curr_SoC_10th_Percentile:(double)percentile Curr_SoC_IQ1:(double)q1 Curr_SoC_IQ3:(double)q3 Curr_SoC_90th_Percentile:(double)c_90th_Percentile;
@end

@implementation tte_v1Input

- (tte_v1Input)initWithStateOfCharge:(double)charge Curr_SoC_Median:(double)median Curr_SoC_SD:(double)d Curr_SoC_10th_Percentile:(double)percentile Curr_SoC_IQ1:(double)q1 Curr_SoC_IQ3:(double)q3 Curr_SoC_90th_Percentile:(double)c_90th_Percentile
{
  v17.receiver = self;
  v17.super_class = tte_v1Input;
  result = [(tte_v1Input *)&v17 init];
  if (result)
  {
    result->_StateOfCharge = charge;
    result->_Curr_SoC_Median = median;
    result->_Curr_SoC_SD = d;
    result->_Curr_SoC_10th_Percentile = percentile;
    result->_Curr_SoC_IQ1 = q1;
    result->_Curr_SoC_IQ3 = q3;
    result->_Curr_SoC_90th_Percentile = c_90th_Percentile;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"StateOfCharge"])
  {
    [(tte_v1Input *)self StateOfCharge];
LABEL_15:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"Curr_SoC_Median"])
  {
    [(tte_v1Input *)self Curr_SoC_Median];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"Curr_SoC_SD"])
  {
    [(tte_v1Input *)self Curr_SoC_SD];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"Curr_SoC_10th_Percentile"])
  {
    [(tte_v1Input *)self Curr_SoC_10th_Percentile];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"Curr_SoC_IQ1"])
  {
    [(tte_v1Input *)self Curr_SoC_IQ1];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"Curr_SoC_IQ3"])
  {
    [(tte_v1Input *)self Curr_SoC_IQ3];
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"Curr_SoC_90th_Percentile"])
  {
    [(tte_v1Input *)self Curr_SoC_90th_Percentile];
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v5;
}

@end
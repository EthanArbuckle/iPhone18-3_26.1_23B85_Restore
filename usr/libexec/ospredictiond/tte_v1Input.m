@interface tte_v1Input
- (id)featureValueForName:(id)a3;
- (tte_v1Input)initWithStateOfCharge:(double)a3 Curr_SoC_Median:(double)a4 Curr_SoC_SD:(double)a5 Curr_SoC_10th_Percentile:(double)a6 Curr_SoC_IQ1:(double)a7 Curr_SoC_IQ3:(double)a8 Curr_SoC_90th_Percentile:(double)a9;
@end

@implementation tte_v1Input

- (tte_v1Input)initWithStateOfCharge:(double)a3 Curr_SoC_Median:(double)a4 Curr_SoC_SD:(double)a5 Curr_SoC_10th_Percentile:(double)a6 Curr_SoC_IQ1:(double)a7 Curr_SoC_IQ3:(double)a8 Curr_SoC_90th_Percentile:(double)a9
{
  v17.receiver = self;
  v17.super_class = tte_v1Input;
  result = [(tte_v1Input *)&v17 init];
  if (result)
  {
    result->_StateOfCharge = a3;
    result->_Curr_SoC_Median = a4;
    result->_Curr_SoC_SD = a5;
    result->_Curr_SoC_10th_Percentile = a6;
    result->_Curr_SoC_IQ1 = a7;
    result->_Curr_SoC_IQ3 = a8;
    result->_Curr_SoC_90th_Percentile = a9;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"StateOfCharge"])
  {
    [(tte_v1Input *)self StateOfCharge];
LABEL_15:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"Curr_SoC_Median"])
  {
    [(tte_v1Input *)self Curr_SoC_Median];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Curr_SoC_SD"])
  {
    [(tte_v1Input *)self Curr_SoC_SD];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Curr_SoC_10th_Percentile"])
  {
    [(tte_v1Input *)self Curr_SoC_10th_Percentile];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Curr_SoC_IQ1"])
  {
    [(tte_v1Input *)self Curr_SoC_IQ1];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Curr_SoC_IQ3"])
  {
    [(tte_v1Input *)self Curr_SoC_IQ3];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Curr_SoC_90th_Percentile"])
  {
    [(tte_v1Input *)self Curr_SoC_90th_Percentile];
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v5;
}

@end
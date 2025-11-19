@interface Prev12Next12DrainInput
- (Prev12Next12DrainInput)initWithCurrentCapacity:(double)a3 drainOnly:(double)a4 _12hour_only_drain_before:(double)a5 _24hour_only_drain_before:(double)a6 _6hour_only_drain_before:(double)a7 _3hour_only_drain_before:(double)a8 total_drain_before:(double)a9 rolling_mean_24hour_drain_before:(double)a10 rolling_median_24hour_drain_before:(double)a11 rolling_mean_12hour_drain_before:(double)a12 rolling_median_12hour_drain_before:(double)a13 mean_12hour_drain_before:(double)a14 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)a15 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)a16 countsPast24hour_only_drain_before_100_last7Days:(double)a17 countsPast24hour_only_drain_before_100_last30Days:(double)a18 _12HourOnlyDrainBeforePercentileCategory:(double)a19 _24HourOnlyDrainBeforePercentileCategory:(double)a20;
- (id)featureValueForName:(id)a3;
@end

@implementation Prev12Next12DrainInput

- (Prev12Next12DrainInput)initWithCurrentCapacity:(double)a3 drainOnly:(double)a4 _12hour_only_drain_before:(double)a5 _24hour_only_drain_before:(double)a6 _6hour_only_drain_before:(double)a7 _3hour_only_drain_before:(double)a8 total_drain_before:(double)a9 rolling_mean_24hour_drain_before:(double)a10 rolling_median_24hour_drain_before:(double)a11 rolling_mean_12hour_drain_before:(double)a12 rolling_median_12hour_drain_before:(double)a13 mean_12hour_drain_before:(double)a14 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)a15 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)a16 countsPast24hour_only_drain_before_100_last7Days:(double)a17 countsPast24hour_only_drain_before_100_last30Days:(double)a18 _12HourOnlyDrainBeforePercentileCategory:(double)a19 _24HourOnlyDrainBeforePercentileCategory:(double)a20
{
  v29.receiver = self;
  v29.super_class = Prev12Next12DrainInput;
  result = [(Prev12Next12DrainInput *)&v29 init];
  if (result)
  {
    result->_CurrentCapacity = a3;
    result->_drainOnly = a4;
    result->__12hour_only_drain_before = a5;
    result->__24hour_only_drain_before = a6;
    result->__6hour_only_drain_before = a7;
    result->__3hour_only_drain_before = a8;
    result->_total_drain_before = a9;
    result->_rolling_mean_24hour_drain_before = a10;
    result->_rolling_median_24hour_drain_before = a11;
    result->_rolling_mean_12hour_drain_before = a12;
    result->_rolling_median_12hour_drain_before = a13;
    result->_mean_12hour_drain_before = a14;
    result->__24HourOnlyDrainBeforePercentileCategoryByUser = a15;
    result->_rolling30DaysAvgOf24hourOnlyDrainBefore = a16;
    result->_countsPast24hour_only_drain_before_100_last7Days = a17;
    result->_countsPast24hour_only_drain_before_100_last30Days = a18;
    result->__12HourOnlyDrainBeforePercentileCategory = a19;
    result->__24HourOnlyDrainBeforePercentileCategory = a20;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"CurrentCapacity"])
  {
    [(Prev12Next12DrainInput *)self CurrentCapacity];
LABEL_37:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_38;
  }

  if ([v4 isEqualToString:@"drainOnly"])
  {
    [(Prev12Next12DrainInput *)self drainOnly];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"12hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _12hour_only_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"24hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _24hour_only_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"6hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _6hour_only_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"3hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _3hour_only_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"total_drain_before"])
  {
    [(Prev12Next12DrainInput *)self total_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"rolling_mean_24hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_mean_24hour_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"rolling_median_24hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_median_24hour_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"rolling_mean_12hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_mean_12hour_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"rolling_median_12hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_median_12hour_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"mean_12hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self mean_12hour_drain_before];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"24HourOnlyDrainBeforePercentileCategoryByUser"])
  {
    [(Prev12Next12DrainInput *)self _24HourOnlyDrainBeforePercentileCategoryByUser];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"rolling30DaysAvgOf24hourOnlyDrainBefore"])
  {
    [(Prev12Next12DrainInput *)self rolling30DaysAvgOf24hourOnlyDrainBefore];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"countsPast24hour_only_drain_before_100_last7Days"])
  {
    [(Prev12Next12DrainInput *)self countsPast24hour_only_drain_before_100_last7Days];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"countsPast24hour_only_drain_before_100_last30Days"])
  {
    [(Prev12Next12DrainInput *)self countsPast24hour_only_drain_before_100_last30Days];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"12HourOnlyDrainBeforePercentileCategory"])
  {
    [(Prev12Next12DrainInput *)self _12HourOnlyDrainBeforePercentileCategory];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"24HourOnlyDrainBeforePercentileCategory"])
  {
    [(Prev12Next12DrainInput *)self _24HourOnlyDrainBeforePercentileCategory];
    goto LABEL_37;
  }

  v5 = 0;
LABEL_38:

  return v5;
}

@end
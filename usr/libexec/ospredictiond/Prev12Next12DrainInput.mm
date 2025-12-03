@interface Prev12Next12DrainInput
- (Prev12Next12DrainInput)initWithCurrentCapacity:(double)capacity drainOnly:(double)only _12hour_only_drain_before:(double)_12hour_only_drain_before _24hour_only_drain_before:(double)_24hour_only_drain_before _6hour_only_drain_before:(double)_6hour_only_drain_before _3hour_only_drain_before:(double)_3hour_only_drain_before total_drain_before:(double)total_drain_before rolling_mean_24hour_drain_before:(double)self0 rolling_median_24hour_drain_before:(double)self1 rolling_mean_12hour_drain_before:(double)self2 rolling_median_12hour_drain_before:(double)self3 mean_12hour_drain_before:(double)self4 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)self5 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)self6 countsPast24hour_only_drain_before_100_last7Days:(double)self7 countsPast24hour_only_drain_before_100_last30Days:(double)self8 _12HourOnlyDrainBeforePercentileCategory:(double)self9 _24HourOnlyDrainBeforePercentileCategory:(double)percentileCategory;
- (id)featureValueForName:(id)name;
@end

@implementation Prev12Next12DrainInput

- (Prev12Next12DrainInput)initWithCurrentCapacity:(double)capacity drainOnly:(double)only _12hour_only_drain_before:(double)_12hour_only_drain_before _24hour_only_drain_before:(double)_24hour_only_drain_before _6hour_only_drain_before:(double)_6hour_only_drain_before _3hour_only_drain_before:(double)_3hour_only_drain_before total_drain_before:(double)total_drain_before rolling_mean_24hour_drain_before:(double)self0 rolling_median_24hour_drain_before:(double)self1 rolling_mean_12hour_drain_before:(double)self2 rolling_median_12hour_drain_before:(double)self3 mean_12hour_drain_before:(double)self4 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)self5 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)self6 countsPast24hour_only_drain_before_100_last7Days:(double)self7 countsPast24hour_only_drain_before_100_last30Days:(double)self8 _12HourOnlyDrainBeforePercentileCategory:(double)self9 _24HourOnlyDrainBeforePercentileCategory:(double)percentileCategory
{
  v29.receiver = self;
  v29.super_class = Prev12Next12DrainInput;
  result = [(Prev12Next12DrainInput *)&v29 init];
  if (result)
  {
    result->_CurrentCapacity = capacity;
    result->_drainOnly = only;
    result->__12hour_only_drain_before = _12hour_only_drain_before;
    result->__24hour_only_drain_before = _24hour_only_drain_before;
    result->__6hour_only_drain_before = _6hour_only_drain_before;
    result->__3hour_only_drain_before = _3hour_only_drain_before;
    result->_total_drain_before = total_drain_before;
    result->_rolling_mean_24hour_drain_before = rolling_mean_24hour_drain_before;
    result->_rolling_median_24hour_drain_before = rolling_median_24hour_drain_before;
    result->_rolling_mean_12hour_drain_before = rolling_mean_12hour_drain_before;
    result->_rolling_median_12hour_drain_before = rolling_median_12hour_drain_before;
    result->_mean_12hour_drain_before = mean_12hour_drain_before;
    result->__24HourOnlyDrainBeforePercentileCategoryByUser = user;
    result->_rolling30DaysAvgOf24hourOnlyDrainBefore = before;
    result->_countsPast24hour_only_drain_before_100_last7Days = days;
    result->_countsPast24hour_only_drain_before_100_last30Days = past24hour_only_drain_before_100_last30Days;
    result->__12HourOnlyDrainBeforePercentileCategory = category;
    result->__24HourOnlyDrainBeforePercentileCategory = percentileCategory;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"CurrentCapacity"])
  {
    [(Prev12Next12DrainInput *)self CurrentCapacity];
LABEL_37:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_38;
  }

  if ([nameCopy isEqualToString:@"drainOnly"])
  {
    [(Prev12Next12DrainInput *)self drainOnly];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"12hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _12hour_only_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"24hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _24hour_only_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"6hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _6hour_only_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"3hour_only_drain_before"])
  {
    [(Prev12Next12DrainInput *)self _3hour_only_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"total_drain_before"])
  {
    [(Prev12Next12DrainInput *)self total_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"rolling_mean_24hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_mean_24hour_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"rolling_median_24hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_median_24hour_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"rolling_mean_12hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_mean_12hour_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"rolling_median_12hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self rolling_median_12hour_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"mean_12hour_drain_before"])
  {
    [(Prev12Next12DrainInput *)self mean_12hour_drain_before];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"24HourOnlyDrainBeforePercentileCategoryByUser"])
  {
    [(Prev12Next12DrainInput *)self _24HourOnlyDrainBeforePercentileCategoryByUser];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"rolling30DaysAvgOf24hourOnlyDrainBefore"])
  {
    [(Prev12Next12DrainInput *)self rolling30DaysAvgOf24hourOnlyDrainBefore];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"countsPast24hour_only_drain_before_100_last7Days"])
  {
    [(Prev12Next12DrainInput *)self countsPast24hour_only_drain_before_100_last7Days];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"countsPast24hour_only_drain_before_100_last30Days"])
  {
    [(Prev12Next12DrainInput *)self countsPast24hour_only_drain_before_100_last30Days];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"12HourOnlyDrainBeforePercentileCategory"])
  {
    [(Prev12Next12DrainInput *)self _12HourOnlyDrainBeforePercentileCategory];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"24HourOnlyDrainBeforePercentileCategory"])
  {
    [(Prev12Next12DrainInput *)self _24HourOnlyDrainBeforePercentileCategory];
    goto LABEL_37;
  }

  v5 = 0;
LABEL_38:

  return v5;
}

@end
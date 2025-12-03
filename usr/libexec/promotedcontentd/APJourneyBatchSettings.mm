@interface APJourneyBatchSettings
- (APJourneyBatchSettings)init;
- (double)periodicDelayTimeInterval;
- (unint64_t)batchSizeUInteger;
@end

@implementation APJourneyBatchSettings

- (APJourneyBatchSettings)init
{
  v13.receiver = self;
  v13.super_class = APJourneyBatchSettings;
  v2 = [(APJourneyBatchSettings *)&v13 init];
  if (v2)
  {
    v3 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    batchSize = v2->_batchSize;
    v2->_batchSize = &off_100492E98;

    periodicDelay = v2->_periodicDelay;
    v2->_periodicDelay = &off_100492EB0;

    if (v3)
    {
      periodicDelay = [v3 periodicDelay];

      if (periodicDelay)
      {
        periodicDelay2 = [v3 periodicDelay];
        v8 = v2->_periodicDelay;
        v2->_periodicDelay = periodicDelay2;
      }

      periodicDelay3 = [v3 periodicDelay];

      if (periodicDelay3)
      {
        batchSize = [v3 batchSize];
        v11 = v2->_batchSize;
        v2->_batchSize = batchSize;
      }
    }
  }

  return v2;
}

- (unint64_t)batchSizeUInteger
{
  batchSize = [(APJourneyBatchSettings *)self batchSize];
  integerValue = [batchSize integerValue];

  return integerValue;
}

- (double)periodicDelayTimeInterval
{
  periodicDelay = [(APJourneyBatchSettings *)self periodicDelay];
  [periodicDelay doubleValue];
  v4 = v3;

  return v4;
}

@end
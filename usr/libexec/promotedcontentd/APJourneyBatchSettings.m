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
      v6 = [v3 periodicDelay];

      if (v6)
      {
        v7 = [v3 periodicDelay];
        v8 = v2->_periodicDelay;
        v2->_periodicDelay = v7;
      }

      v9 = [v3 periodicDelay];

      if (v9)
      {
        v10 = [v3 batchSize];
        v11 = v2->_batchSize;
        v2->_batchSize = v10;
      }
    }
  }

  return v2;
}

- (unint64_t)batchSizeUInteger
{
  v2 = [(APJourneyBatchSettings *)self batchSize];
  v3 = [v2 integerValue];

  return v3;
}

- (double)periodicDelayTimeInterval
{
  v2 = [(APJourneyBatchSettings *)self periodicDelay];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

@end
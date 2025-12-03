@interface CLPeopleDensityMediumSignalClassifierConfig
- (CLPeopleDensityMediumSignalClassifierConfig)initWithRssiLowerBound:(int64_t)bound RssiUpperBound:(int64_t)upperBound deviceThreshold:(unint64_t)threshold;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLPeopleDensityMediumSignalClassifierConfig

- (CLPeopleDensityMediumSignalClassifierConfig)initWithRssiLowerBound:(int64_t)bound RssiUpperBound:(int64_t)upperBound deviceThreshold:(unint64_t)threshold
{
  v11.receiver = self;
  v11.super_class = CLPeopleDensityMediumSignalClassifierConfig;
  v8 = [(CLPeopleDensityMediumSignalClassifierConfig *)&v11 init];
  v9 = 0;
  if (bound <= upperBound && v8)
  {
    v8->_midRangRssiLowerBound = bound;
    v8->_midRangRssiUpperBound = upperBound;
    v9 = v8;
    v8->_midRangRssiDeviceThreshold = threshold;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLPeopleDensityMediumSignalClassifierConfig allocWithZone:zone];
  midRangRssiLowerBound = [(CLPeopleDensityMediumSignalClassifierConfig *)self midRangRssiLowerBound];
  midRangRssiUpperBound = [(CLPeopleDensityMediumSignalClassifierConfig *)self midRangRssiUpperBound];
  midRangRssiDeviceThreshold = [(CLPeopleDensityMediumSignalClassifierConfig *)self midRangRssiDeviceThreshold];

  return [(CLPeopleDensityMediumSignalClassifierConfig *)v4 initWithRssiLowerBound:midRangRssiLowerBound RssiUpperBound:midRangRssiUpperBound deviceThreshold:midRangRssiDeviceThreshold];
}

@end
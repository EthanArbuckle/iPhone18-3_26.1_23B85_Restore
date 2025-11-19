@interface CLPeopleDensityMediumSignalClassifierConfig
- (CLPeopleDensityMediumSignalClassifierConfig)initWithRssiLowerBound:(int64_t)a3 RssiUpperBound:(int64_t)a4 deviceThreshold:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLPeopleDensityMediumSignalClassifierConfig

- (CLPeopleDensityMediumSignalClassifierConfig)initWithRssiLowerBound:(int64_t)a3 RssiUpperBound:(int64_t)a4 deviceThreshold:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = CLPeopleDensityMediumSignalClassifierConfig;
  v8 = [(CLPeopleDensityMediumSignalClassifierConfig *)&v11 init];
  v9 = 0;
  if (a3 <= a4 && v8)
  {
    v8->_midRangRssiLowerBound = a3;
    v8->_midRangRssiUpperBound = a4;
    v9 = v8;
    v8->_midRangRssiDeviceThreshold = a5;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CLPeopleDensityMediumSignalClassifierConfig allocWithZone:a3];
  v5 = [(CLPeopleDensityMediumSignalClassifierConfig *)self midRangRssiLowerBound];
  v6 = [(CLPeopleDensityMediumSignalClassifierConfig *)self midRangRssiUpperBound];
  v7 = [(CLPeopleDensityMediumSignalClassifierConfig *)self midRangRssiDeviceThreshold];

  return [(CLPeopleDensityMediumSignalClassifierConfig *)v4 initWithRssiLowerBound:v5 RssiUpperBound:v6 deviceThreshold:v7];
}

@end
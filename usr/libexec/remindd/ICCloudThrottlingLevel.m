@interface ICCloudThrottlingLevel
- (ICCloudThrottlingLevel)initWithBatchInterval:(double)a3 numberOfBatches:(unint64_t)a4;
@end

@implementation ICCloudThrottlingLevel

- (ICCloudThrottlingLevel)initWithBatchInterval:(double)a3 numberOfBatches:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = ICCloudThrottlingLevel;
  v6 = [(ICCloudThrottlingLevel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ICCloudThrottlingLevel *)v6 setBatchInterval:a3];
    [(ICCloudThrottlingLevel *)v7 setNumberOfBatches:a4];
  }

  return v7;
}

@end
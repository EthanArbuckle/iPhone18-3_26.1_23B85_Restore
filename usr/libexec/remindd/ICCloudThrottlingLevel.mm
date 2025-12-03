@interface ICCloudThrottlingLevel
- (ICCloudThrottlingLevel)initWithBatchInterval:(double)interval numberOfBatches:(unint64_t)batches;
@end

@implementation ICCloudThrottlingLevel

- (ICCloudThrottlingLevel)initWithBatchInterval:(double)interval numberOfBatches:(unint64_t)batches
{
  v9.receiver = self;
  v9.super_class = ICCloudThrottlingLevel;
  v6 = [(ICCloudThrottlingLevel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ICCloudThrottlingLevel *)v6 setBatchInterval:interval];
    [(ICCloudThrottlingLevel *)v7 setNumberOfBatches:batches];
  }

  return v7;
}

@end
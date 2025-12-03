@interface CLFenceAnalyticsMotionActivityHistogramBin
- (CLFenceAnalyticsMotionActivityHistogramBin)initWithInterval:(double)interval motionActivityType:(unint64_t)type motionActivityConfidence:(int64_t)confidence;
- (void)addInterval:(double)interval;
- (void)updateConfidence:(int64_t)confidence;
@end

@implementation CLFenceAnalyticsMotionActivityHistogramBin

- (CLFenceAnalyticsMotionActivityHistogramBin)initWithInterval:(double)interval motionActivityType:(unint64_t)type motionActivityConfidence:(int64_t)confidence
{
  v9.receiver = self;
  v9.super_class = CLFenceAnalyticsMotionActivityHistogramBin;
  result = [(CLFenceAnalyticsMotionActivityHistogramBin *)&v9 init];
  if (result)
  {
    result->_motionActivityType = type;
    result->_motionActivityConfidence = confidence;
    result->_interval = interval;
  }

  return result;
}

- (void)updateConfidence:(int64_t)confidence
{
  if ([(CLFenceAnalyticsMotionActivityHistogramBin *)self motionActivityConfidence]< confidence)
  {

    [(CLFenceAnalyticsMotionActivityHistogramBin *)self setMotionActivityConfidence:confidence];
  }
}

- (void)addInterval:(double)interval
{
  [(CLFenceAnalyticsMotionActivityHistogramBin *)self interval];
  v6 = v5 + interval;

  [(CLFenceAnalyticsMotionActivityHistogramBin *)self setInterval:v6];
}

@end
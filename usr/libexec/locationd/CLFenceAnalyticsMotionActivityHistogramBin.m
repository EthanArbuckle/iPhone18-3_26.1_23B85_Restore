@interface CLFenceAnalyticsMotionActivityHistogramBin
- (CLFenceAnalyticsMotionActivityHistogramBin)initWithInterval:(double)a3 motionActivityType:(unint64_t)a4 motionActivityConfidence:(int64_t)a5;
- (void)addInterval:(double)a3;
- (void)updateConfidence:(int64_t)a3;
@end

@implementation CLFenceAnalyticsMotionActivityHistogramBin

- (CLFenceAnalyticsMotionActivityHistogramBin)initWithInterval:(double)a3 motionActivityType:(unint64_t)a4 motionActivityConfidence:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = CLFenceAnalyticsMotionActivityHistogramBin;
  result = [(CLFenceAnalyticsMotionActivityHistogramBin *)&v9 init];
  if (result)
  {
    result->_motionActivityType = a4;
    result->_motionActivityConfidence = a5;
    result->_interval = a3;
  }

  return result;
}

- (void)updateConfidence:(int64_t)a3
{
  if ([(CLFenceAnalyticsMotionActivityHistogramBin *)self motionActivityConfidence]< a3)
  {

    [(CLFenceAnalyticsMotionActivityHistogramBin *)self setMotionActivityConfidence:a3];
  }
}

- (void)addInterval:(double)a3
{
  [(CLFenceAnalyticsMotionActivityHistogramBin *)self interval];
  v6 = v5 + a3;

  [(CLFenceAnalyticsMotionActivityHistogramBin *)self setInterval:v6];
}

@end
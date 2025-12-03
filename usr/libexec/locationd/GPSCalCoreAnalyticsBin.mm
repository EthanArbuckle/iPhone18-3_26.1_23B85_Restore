@interface GPSCalCoreAnalyticsBin
- (GPSCalCoreAnalyticsBin)initWithCoder:(id)coder;
- (GPSCalCoreAnalyticsBin)initWithSpeedLB:(double)b speedUB:(double)uB mean:(double)mean variance:(double)variance updateCount:(int)count;
- (GPSCalCoreAnalyticsBin)initWithSpeeds:(double)speeds speedUB:(double)b;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GPSCalCoreAnalyticsBin

- (GPSCalCoreAnalyticsBin)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = GPSCalCoreAnalyticsBin;
  v4 = [(GPSCalCoreAnalyticsBin *)&v10 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"speedLB"];
    v4->_speedLB = v5;
    [coder decodeDoubleForKey:@"speedUB"];
    v4->_speedUB = v6;
    [coder decodeDoubleForKey:@"mean"];
    v4->_mean = v7;
    [coder decodeDoubleForKey:@"variance"];
    v4->_variance = v8;
    v4->_updateCount = [coder decodeInt32ForKey:@"updateCount"];
    v4->_lastUpdateTime = [coder decodeInt32ForKey:@"lastUpdateTime"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"speedLB" forKey:self->_speedLB];
  [coder encodeDouble:@"speedUB" forKey:self->_speedUB];
  [coder encodeDouble:@"mean" forKey:self->_mean];
  [coder encodeDouble:@"variance" forKey:self->_variance];
  [coder encodeInt32:self->_updateCount forKey:@"updateCount"];
  lastUpdateTime = self->_lastUpdateTime;

  [coder encodeInt32:lastUpdateTime forKey:@"lastUpdateTime"];
}

- (GPSCalCoreAnalyticsBin)initWithSpeeds:(double)speeds speedUB:(double)b
{
  v9.receiver = self;
  v9.super_class = GPSCalCoreAnalyticsBin;
  v6 = [(GPSCalCoreAnalyticsBin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_speedLB = speeds;
    v6->_speedUB = b;
    *&v6->_mean = xmmword_101C76100;
    v6->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    v7->_updateCount = 0;
  }

  return v7;
}

- (GPSCalCoreAnalyticsBin)initWithSpeedLB:(double)b speedUB:(double)uB mean:(double)mean variance:(double)variance updateCount:(int)count
{
  v15.receiver = self;
  v15.super_class = GPSCalCoreAnalyticsBin;
  v12 = [(GPSCalCoreAnalyticsBin *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_speedLB = b;
    v12->_speedUB = uB;
    v12->_mean = mean;
    v12->_variance = variance;
    v12->_updateCount = count;
    v12->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
  }

  return v13;
}

@end
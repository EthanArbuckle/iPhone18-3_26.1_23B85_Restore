@interface GPSCalCoreAnalyticsBin
- (GPSCalCoreAnalyticsBin)initWithCoder:(id)a3;
- (GPSCalCoreAnalyticsBin)initWithSpeedLB:(double)a3 speedUB:(double)a4 mean:(double)a5 variance:(double)a6 updateCount:(int)a7;
- (GPSCalCoreAnalyticsBin)initWithSpeeds:(double)a3 speedUB:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GPSCalCoreAnalyticsBin

- (GPSCalCoreAnalyticsBin)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = GPSCalCoreAnalyticsBin;
  v4 = [(GPSCalCoreAnalyticsBin *)&v10 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"speedLB"];
    v4->_speedLB = v5;
    [a3 decodeDoubleForKey:@"speedUB"];
    v4->_speedUB = v6;
    [a3 decodeDoubleForKey:@"mean"];
    v4->_mean = v7;
    [a3 decodeDoubleForKey:@"variance"];
    v4->_variance = v8;
    v4->_updateCount = [a3 decodeInt32ForKey:@"updateCount"];
    v4->_lastUpdateTime = [a3 decodeInt32ForKey:@"lastUpdateTime"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"speedLB" forKey:self->_speedLB];
  [a3 encodeDouble:@"speedUB" forKey:self->_speedUB];
  [a3 encodeDouble:@"mean" forKey:self->_mean];
  [a3 encodeDouble:@"variance" forKey:self->_variance];
  [a3 encodeInt32:self->_updateCount forKey:@"updateCount"];
  lastUpdateTime = self->_lastUpdateTime;

  [a3 encodeInt32:lastUpdateTime forKey:@"lastUpdateTime"];
}

- (GPSCalCoreAnalyticsBin)initWithSpeeds:(double)a3 speedUB:(double)a4
{
  v9.receiver = self;
  v9.super_class = GPSCalCoreAnalyticsBin;
  v6 = [(GPSCalCoreAnalyticsBin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_speedLB = a3;
    v6->_speedUB = a4;
    *&v6->_mean = xmmword_101C76100;
    v6->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
    v7->_updateCount = 0;
  }

  return v7;
}

- (GPSCalCoreAnalyticsBin)initWithSpeedLB:(double)a3 speedUB:(double)a4 mean:(double)a5 variance:(double)a6 updateCount:(int)a7
{
  v15.receiver = self;
  v15.super_class = GPSCalCoreAnalyticsBin;
  v12 = [(GPSCalCoreAnalyticsBin *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_speedLB = a3;
    v12->_speedUB = a4;
    v12->_mean = a5;
    v12->_variance = a6;
    v12->_updateCount = a7;
    v12->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
  }

  return v13;
}

@end
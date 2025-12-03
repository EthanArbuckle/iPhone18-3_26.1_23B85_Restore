@interface MOPerformanceMetric
- (MOPerformanceMetric)initWithDisplayName:(id)name pcMetricID:(unint64_t)d unit:(id)unit denominator:(double)denominator;
- (double)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionary;
@end

@implementation MOPerformanceMetric

- (MOPerformanceMetric)initWithDisplayName:(id)name pcMetricID:(unint64_t)d unit:(id)unit denominator:(double)denominator
{
  nameCopy = name;
  unitCopy = unit;
  v16.receiver = self;
  v16.super_class = MOPerformanceMetric;
  v13 = [(MOPerformanceMetric *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayName, name);
    objc_storeStrong(&v14->_unit, unit);
    v14->_denominator = denominator;
    v14->_pcMetricID = d;
    v14->_initializedWithValue = 0;
    v14->_rawValue = 0.0;
  }

  return v14;
}

- (id)dictionary
{
  v8[0] = @"MOPerformanceMetricName";
  displayName = [(MOPerformanceMetric *)self displayName];
  v9[0] = displayName;
  v8[1] = @"MOPerformanceMetricUnit";
  unit = [(MOPerformanceMetric *)self unit];
  v9[1] = unit;
  v8[2] = @"MOPerformanceMetricValue";
  [(MOPerformanceMetric *)self value];
  v5 = [NSNumber numberWithDouble:?];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  displayName = [(MOPerformanceMetric *)self displayName];
  unit = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self value];
  v6 = [NSString stringWithFormat:@" Metric Name: %@, Metric Unit: %@, Value: %.2f", displayName, unit, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOPerformanceMetric alloc];
  displayName = [(MOPerformanceMetric *)self displayName];
  pcMetricID = [(MOPerformanceMetric *)self pcMetricID];
  unit = [(MOPerformanceMetric *)self unit];
  [(MOPerformanceMetric *)self denominator];
  v8 = [(MOPerformanceMetric *)v4 initWithDisplayName:displayName pcMetricID:pcMetricID unit:unit denominator:?];

  return v8;
}

- (double)value
{
  result = -1.0;
  if (self->_initializedWithValue)
  {
    return self->_rawValue / self->_denominator;
  }

  return result;
}

@end
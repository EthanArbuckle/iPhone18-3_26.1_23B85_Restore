@interface CLAbsoluteAltitudeSubHarvesterPoiClientLocal
- (CLAbsoluteAltitudeSubHarvesterPoiClientLocal)initWithElevationSubscription:(void *)a3;
@end

@implementation CLAbsoluteAltitudeSubHarvesterPoiClientLocal

- (CLAbsoluteAltitudeSubHarvesterPoiClientLocal)initWithElevationSubscription:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLAbsoluteAltitudeSubHarvesterPoiClientLocal;
  result = [(CLAbsoluteAltitudeSubHarvesterPoiClientLocal *)&v5 init];
  if (result)
  {
    result->_elevationSubscription = a3;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

@end
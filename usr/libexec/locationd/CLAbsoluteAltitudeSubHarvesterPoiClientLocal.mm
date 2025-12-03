@interface CLAbsoluteAltitudeSubHarvesterPoiClientLocal
- (CLAbsoluteAltitudeSubHarvesterPoiClientLocal)initWithElevationSubscription:(void *)subscription;
@end

@implementation CLAbsoluteAltitudeSubHarvesterPoiClientLocal

- (CLAbsoluteAltitudeSubHarvesterPoiClientLocal)initWithElevationSubscription:(void *)subscription
{
  v5.receiver = self;
  v5.super_class = CLAbsoluteAltitudeSubHarvesterPoiClientLocal;
  result = [(CLAbsoluteAltitudeSubHarvesterPoiClientLocal *)&v5 init];
  if (result)
  {
    result->_elevationSubscription = subscription;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

@end
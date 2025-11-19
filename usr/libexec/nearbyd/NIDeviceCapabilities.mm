@interface NIDeviceCapabilities
- (NIDeviceCapabilities)initWithFineRangingSupport:(BOOL)a3 coarseRangingSupport:(BOOL)a4 aoaSupport:(BOOL)a5 extendedDistanceMeasurementSupport:(BOOL)a6 syntheticApertureSupport:(BOOL)a7;
- (unsigned)toBitmap;
@end

@implementation NIDeviceCapabilities

- (NIDeviceCapabilities)initWithFineRangingSupport:(BOOL)a3 coarseRangingSupport:(BOOL)a4 aoaSupport:(BOOL)a5 extendedDistanceMeasurementSupport:(BOOL)a6 syntheticApertureSupport:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = NIDeviceCapabilities;
  result = [(NIDeviceCapabilities *)&v13 init];
  if (result)
  {
    result->_supportsPreciseDistanceMeasurement = a3;
    result->_supportsDirectionMeasurement = a5;
    result->_supportsCameraAssistance = a7;
    result->_supportsCoarseDistanceMeasurement = a4;
    result->_supportsDLTDOAMeasurement = a3;
    result->_supportsExtendedDistanceMeasurement = a6;
  }

  return result;
}

- (unsigned)toBitmap
{
  if (self->_supportsCoarseDistanceMeasurement)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | self->_supportsPreciseDistanceMeasurement;
  if (self->_supportsDirectionMeasurement)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (self->_supportsCameraAssistance)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  if (self->_supportsExtendedDistanceMeasurement)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  return (v6 | v7) & 0x1F;
}

@end
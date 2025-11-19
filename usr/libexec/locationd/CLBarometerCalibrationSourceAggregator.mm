@interface CLBarometerCalibrationSourceAggregator
- (BOOL)isWorkoutElevationProfileEnabled;
- (double)getLastAltitudeTime;
@end

@implementation CLBarometerCalibrationSourceAggregator

- (BOOL)isWorkoutElevationProfileEnabled
{
  result = [(CLBarometerCalibrationAggregatorClient *)[(CLBarometerCalibrationSourceAggregator *)self delegate] isWorkoutElevationProfileEnabled];
  self->_enableWorkoutElevationProfile = result;
  return result;
}

- (double)getLastAltitudeTime
{
  [(CLBarometerCalibrationAggregatorClient *)[(CLBarometerCalibrationSourceAggregator *)self delegate] getLastAltitudeTime];
  self->_lastAltitudeTime = result;
  return result;
}

@end
@interface CLBarometerCalibrationClientLocal
- (CLBarometerCalibrationClientLocal)initWithOdometerNotifier:(void *)notifier;
- (void)onBarometerElevationSpectatorUpdate:(CLElevationChangeEntry *)update;
@end

@implementation CLBarometerCalibrationClientLocal

- (CLBarometerCalibrationClientLocal)initWithOdometerNotifier:(void *)notifier
{
  v5.receiver = self;
  v5.super_class = CLBarometerCalibrationClientLocal;
  result = [(CLBarometerCalibrationClientLocal *)&v5 init];
  if (result)
  {
    result->_odometerNotifier = notifier;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

- (void)onBarometerElevationSpectatorUpdate:(CLElevationChangeEntry *)update
{
  memset(&v5[4], 0, 128);
  v3 = *&update->var2;
  v5[0] = *&update->var0;
  v5[1] = v3;
  v4 = *&update->var8;
  v5[2] = *&update->var5;
  v5[3] = v4;
  sub_1000A7610(self->_odometerNotifier, v5);
}

@end
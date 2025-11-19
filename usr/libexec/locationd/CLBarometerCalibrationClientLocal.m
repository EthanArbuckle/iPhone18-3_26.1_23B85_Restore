@interface CLBarometerCalibrationClientLocal
- (CLBarometerCalibrationClientLocal)initWithOdometerNotifier:(void *)a3;
- (void)onBarometerElevationSpectatorUpdate:(CLElevationChangeEntry *)a3;
@end

@implementation CLBarometerCalibrationClientLocal

- (CLBarometerCalibrationClientLocal)initWithOdometerNotifier:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLBarometerCalibrationClientLocal;
  result = [(CLBarometerCalibrationClientLocal *)&v5 init];
  if (result)
  {
    result->_odometerNotifier = a3;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

- (void)onBarometerElevationSpectatorUpdate:(CLElevationChangeEntry *)a3
{
  memset(&v5[4], 0, 128);
  v3 = *&a3->var2;
  v5[0] = *&a3->var0;
  v5[1] = v3;
  v4 = *&a3->var8;
  v5[2] = *&a3->var5;
  v5[3] = v4;
  sub_1000A7610(self->_odometerNotifier, v5);
}

@end
@interface CLBarometerCalibrationSourcePressure
- (void)enableSource;
@end

@implementation CLBarometerCalibrationSourcePressure

- (void)enableSource
{
  if (!self->super._sourceEnabled)
  {
    if (sub_100023ED4(0))
    {
      v3 = sub_100023ED4(0);
      sub_100178498(v3, 30, self->_kfFilteredPressureDispatcher.__ptr_, -1.0);
    }

    ptr = self->fOdometerClient.__ptr_;
    if (ptr)
    {
      [*(ptr + 2) register:*(ptr + 1) forNotification:8 registrationInfo:0];
    }

    self->super._sourceEnabled = 1;
  }
}

@end
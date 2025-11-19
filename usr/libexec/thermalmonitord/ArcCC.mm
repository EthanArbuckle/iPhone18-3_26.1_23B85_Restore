@interface ArcCC
- (ArcCC)initWithParams:(__CFDictionary *)a3 product:(id)a4;
- (int)numberOfFields;
- (void)defaultAction;
- (void)refreshTGraphTelemetry;
@end

@implementation ArcCC

- (ArcCC)initWithParams:(__CFDictionary *)a3 product:(id)a4
{
  v11.receiver = self;
  v11.super_class = ArcCC;
  v6 = [(ComponentControl *)&v11 initWithCC:11];
  v7 = v6;
  if (v6)
  {
    *(v6 + 140) = a4;
    *(v6 + 18) = 100;
    *(v6 + 39) = 1065353216;
    *(v6 + 40) = -1082130432;
    *(v6 + 6) = CFStringCreateWithFormat(0, 0, @"%d Arc ", 11);
    v7->super.previousValue = v7->super.currentLoadingIndex;
    sub_100002A20(a3, @"thresholdModule", kCFNumberIntType, &v7->_product + 4);
    if (byte_1000AB2F8 == 1)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        product_high = HIDWORD(v7->_product);
        *buf = 67109120;
        v13 = product_high;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Got ArcCC module threshold: %d", buf, 8u);
      }
    }
  }

  return v7;
}

- (void)defaultAction
{
  v3 = [*(&self->super.currentPower + 1) arcModuleTemperature];
  self->_thresholdModuleTemperature = v3;
  if (*(&self->super.currentPower + 1))
  {
    if (v3 <= SHIDWORD(self->_product))
    {
      v6 = *&self->_latestModuleTemperature;
      v7 = 1.0;
      if (v6 < 1.0)
      {
        self->_latestModuleTemperature = 1065353216;
        v6 = 1.0;
      }
    }

    else
    {
      LODWORD(v4) = self->super.currentLoadingIndex;
      v5 = v4 / 100.0;
      *&v4 = v5 * v5;
      if (*&v4 <= 1.0)
      {
        v6 = *&v4;
      }

      else
      {
        v6 = 1.0;
      }

      *&self->_latestModuleTemperature = v6;
      v7 = v6;
    }

    if (self->_currentHapticGain != v6)
    {
      if (byte_1000AB2F8 == 1)
      {
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134217984;
          v13 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> ArcCC: setting gain %.4f", &v12, 0xCu);
        }
      }

      v9 = +[AVAudioSession sharedInstance];
      *&v10 = v7;
      if (([(AVAudioSession *)v9 setHapticThermalGain:0 error:v10]& 1) == 0)
      {
        v11 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005754C(v11);
        }
      }
    }

    LODWORD(self->_currentHapticGain) = self->_latestModuleTemperature;
  }
}

- (void)refreshTGraphTelemetry
{
  [+[AVAudioSession sharedInstance](AVAudioSession hapticThermalGain];
  v4 = v3;
  if (v3 < 0.0 || v3 > 1.0)
  {
    *&self->super.allowLIOverride = 0;
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057590(v6, v4);
    }
  }

  else
  {
    self->_targetHapticGain = v3;
    *&self->super.allowLIOverride = (fabsf(sqrtf(v3)) * 100.0);
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = ArcCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

@end
@interface ArcPowerCC
- (ArcPowerCC)initWithParams:(__CFDictionary *)params product:(id)product;
- (int)numberOfFields;
- (void)defaultAction;
- (void)refreshTGraphTelemetry;
- (void)updatePowerTarget;
@end

@implementation ArcPowerCC

- (ArcPowerCC)initWithParams:(__CFDictionary *)params product:(id)product
{
  v16.receiver = self;
  v16.super_class = ArcPowerCC;
  v6 = [(ComponentControl *)&v16 initWithCC:11];
  v7 = v6;
  if (v6)
  {
    *(v6 + 140) = product;
    *(v6 + 18) = 100;
    *(v6 + 42) = -1;
    *(v6 + 6) = CFStringCreateWithFormat(0, 0, @"%d Arc ", 11);
    v7->super.previousValue = v7->super.currentLoadingIndex;
    v8 = sub_100002A20(params, @"thresholdModule", kCFNumberIntType, &v7->_product + 4);
    v9 = sub_100002A20(params, @"maxArcPower", kCFNumberIntType, &v7->_latestModuleTemperature);
    v10 = sub_100002A20(params, @"minArcPower", kCFNumberIntType, &v7->_maxArcPower);
    if (v8 && v9 && v10)
    {
      if (byte_1000AB2F8 == 1)
      {
        v11 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          product_high = HIDWORD(v7->_product);
          latestModuleTemperature = v7->_latestModuleTemperature;
          maxArcPower = v7->_maxArcPower;
          *buf = 67109632;
          v18 = product_high;
          v19 = 1024;
          v20 = latestModuleTemperature;
          v21 = 1024;
          v22 = maxArcPower;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> ArcPowerCC ModuleThreshold: %d, MaxPower: %d, MinPower: %d", buf, 0x14u);
        }
      }

      v7->_minArcPower = v7->_latestModuleTemperature;
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000534A0();
    }

    [(ComponentControl *)v7 updatePowerParameters:params];
    if (sub_100031D64(params, @"expectsCPMSSupport", 0))
    {
      [(ComponentControl *)v7 setCPMSMitigationState:1];
    }
  }

  return v7;
}

- (void)defaultAction
{
  self->_thresholdModuleTemperature = [*(&self->super.currentPower + 1) arcModuleTemperature];

  [(ArcPowerCC *)self updatePowerTarget];
}

- (void)updatePowerTarget
{
  currentLoadingIndex = self->super.currentLoadingIndex;
  if (self->super.maxLoadingIndex == currentLoadingIndex)
  {
    minArcPower = self->_minArcPower;
  }

  else
  {
    self->super.maxLoadingIndex = currentLoadingIndex;
    if (self->_thresholdModuleTemperature <= SHIDWORD(self->_product))
    {
      minArcPower = self->_latestModuleTemperature;
    }

    else
    {
      latestModuleTemperature = self->_latestModuleTemperature;
      minArcPower = latestModuleTemperature * self->super.currentLoadingIndex / 0x64;
      if (minArcPower >= latestModuleTemperature)
      {
        minArcPower = self->_latestModuleTemperature;
      }

      if (minArcPower <= self->_maxArcPower)
      {
        minArcPower = self->_maxArcPower;
      }
    }
  }

  if (minArcPower != self->_minArcPower)
  {
    self->_minArcPower = minArcPower;
    v6 = [[NSNumber alloc] initWithInt:self->_minArcPower];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:v7 forKey:@"HapticTargetPower"];
      v9 = +[AVSystemController sharedAVSystemController];
      if ([v9 setAttribute:v8 forKey:AVSystemController_ThermalControlInfoAttribute error:0])
      {
        if (byte_1000AB2F8 == 1)
        {
          v10 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            v11 = self->_minArcPower;
            v12[0] = 67109120;
            v12[1] = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> ArcPowerCC: Set the target power to %d", v12, 8u);
          }
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000534E0(&self->_minArcPower);
      }

      if (v8)
      {
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053558(&self->_minArcPower);
    }
  }
}

- (void)refreshTGraphTelemetry
{
  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 attributeForKey:AVSystemController_ThermalControlInfoAttribute];
  if (!v4 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000535D0();
  }

  if (![v4 count] && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053610();
  }

  v5 = [v4 objectForKey:@"HapticTargetPower"];
  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = -1;
  }

  self->_arcPowerTarget = intValue;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = ArcPowerCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

@end
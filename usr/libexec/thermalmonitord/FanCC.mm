@interface FanCC
- (FanCC)initWithParams:(__CFDictionary *)a3;
- (int)numberOfFields;
- (int)setFanRPM:(unsigned int)a3;
- (void)defaultAction;
@end

@implementation FanCC

- (FanCC)initWithParams:(__CFDictionary *)a3
{
  v13.receiver = self;
  v13.super_class = FanCC;
  v4 = [(ComponentControl *)&v13 initWithCC:8];
  v5 = v4;
  if (v4)
  {
    *(&v4->super.currentPower + 1) = 0;
    v4->fanRPM = 0;
    v4->previousFanRPM = 0;
    *&v4->super.allowLIOverride = 100;
    if ((sub_100002A20(a3, @"minRPM", kCFNumberIntType, &v4->currentFanRPM) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054978();
    }

    if ((sub_100002A20(a3, @"maxRPM", kCFNumberIntType, &v5->minRPM) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000549AC();
    }

    currentFanRPM = v5->currentFanRPM;
    minRPM = v5->minRPM;
    if (currentFanRPM > minRPM)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "<Error> FanCC: maxRPM not greater than minRPM", buf, 2u);
        minRPM = v5->minRPM;
        currentFanRPM = v5->currentFanRPM;
      }
    }

    *&v5->maxRPM = ((minRPM - currentFanRPM) / 0x64);
    v5->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d Fan ", 8);
    v5->super.maxLoadingIndex = 101;
    v9 = IOServiceMatching("ApplePMPThermal");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v9);
    if (!MatchingService && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000549E0();
    }

    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &v5->scalingFactor) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054A14();
    }

    IOObjectRelease(MatchingService);
    [(FanCC *)v5 setFanRPM:0];
  }

  return v5;
}

- (void)defaultAction
{
  previousValue = self->super.previousValue;
  if (previousValue == 101)
  {
    *(&self->super.currentPower + 1) = 0;
  }

  else if (previousValue != self->super.maxLoadingIndex)
  {
    currentFanRPM = self->currentFanRPM + (*&self->maxRPM * (100 - previousValue));
    if ((currentFanRPM & 0x80000000) != 0)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100054A48();
      }

      currentFanRPM = 0;
    }

    *(&self->super.currentPower + 1) = currentFanRPM;
    if (self->currentFanRPM > currentFanRPM)
    {
      currentFanRPM = self->currentFanRPM;
    }

    *(&self->super.currentPower + 1) = currentFanRPM;
    if (self->minRPM < currentFanRPM)
    {
      currentFanRPM = self->minRPM;
    }

    *(&self->super.currentPower + 1) = currentFanRPM;
    dword_1000ABCB8 = currentFanRPM;
  }

  self->super.maxLoadingIndex = self->super.previousValue;
  v5 = *(&self->super.currentPower + 1);
  fanRPM = self->fanRPM;
  if (v5 != fanRPM)
  {
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109376;
        v8[1] = v5;
        v9 = 1024;
        v10 = fanRPM;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> FanCC: cur RPM %u, prev RPM %u", v8, 0xEu);
        v5 = *(&self->super.currentPower + 1);
      }
    }

    [(FanCC *)self setFanRPM:v5];
  }
}

- (int)setFanRPM:(unsigned int)a3
{
  input = a3;
  v5 = IOConnectCallScalarMethod(LODWORD(self->scalingFactor), 0, &input, 1u, 0, 0);
  if (v5)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054A7C();
    }
  }

  else
  {
    self->fanRPM = a3;
    if (byte_1000AB2F8 == 1)
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(&self->super.currentPower + 1);
        *buf = 67109120;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> FanCC: set fan RPM to %u", buf, 8u);
      }
    }
  }

  return v5;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = FanCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

@end
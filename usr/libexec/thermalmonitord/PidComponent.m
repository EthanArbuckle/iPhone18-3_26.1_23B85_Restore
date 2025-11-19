@interface PidComponent
- (id)initPIDWith:(__CFDictionary *)a3;
- (void)applySeedToIntegratorFromControlEffort:(int)a3 currentTemperature:(float)a4;
- (void)calculateControlEffort:(float)a3;
- (void)dealloc;
@end

@implementation PidComponent

- (id)initPIDWith:(__CFDictionary *)a3
{
  v7.receiver = self;
  v7.super_class = PidComponent;
  v4 = [(PidComponent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      sub_100002A20(a3, @"kp", kCFNumberFloatType, &v4->kp);
      sub_100002A20(a3, @"ki", kCFNumberFloatType, &v5->ki);
      sub_100002A20(a3, @"ts", kCFNumberFloatType, &v5->ts);
      sub_100002A20(a3, @"intMin", kCFNumberFloatType, &v5->integratorMin);
      sub_100002A20(a3, @"intMax", kCFNumberFloatType, &v5->integratorMax);
      sub_100002A20(a3, @"target", kCFNumberFloatType, &v5->TARGET);
      v5->engageDelta = 0.0;
      sub_100002A20(a3, @"engageDelta", kCFNumberFloatType, &v5->engageDelta);
    }

    v5->allowCEOverride = 0;
    v5->mitigationType = -1;
    v5->nameofComponent = 0;
    *&v5->boundCheckLow = 0xFF00000000;
  }

  return v5;
}

- (void)dealloc
{
  nameofComponent = self->nameofComponent;
  if (nameofComponent)
  {
    CFRelease(nameofComponent);
  }

  v4.receiver = self;
  v4.super_class = PidComponent;
  [(PidComponent *)&v4 dealloc];
}

- (void)calculateControlEffort:(float)a3
{
  v3 = self->TARGET - a3;
  integratorMin = self->integratorMin;
  v5 = self->integrator + ((self->ki * self->ts) * v3);
  self->integrator = v5;
  if (v5 < integratorMin)
  {
    self->integrator = integratorMin;
    v5 = integratorMin;
  }

  integratorMax = self->integratorMax;
  if (v5 > integratorMax)
  {
    self->integrator = integratorMax;
    v5 = integratorMax;
  }

  if (!self->allowCEOverride)
  {
    boundCheckLow = (v5 + (self->kp * (v3 - self->engageDelta)));
    if (self->boundCheckLow > boundCheckLow)
    {
      boundCheckLow = self->boundCheckLow;
    }

    if (boundCheckLow >= self->boundCheckHigh)
    {
      boundCheckLow = self->boundCheckHigh;
    }

    self->controlEffort = boundCheckLow;
  }
}

- (void)applySeedToIntegratorFromControlEffort:(int)a3 currentTemperature:(float)a4
{
  boundCheckLow = self->boundCheckLow;
  if (boundCheckLow <= a3)
  {
    boundCheckLow = a3;
  }

  v5 = self->TARGET - a4;
  if (boundCheckLow >= self->boundCheckHigh)
  {
    boundCheckLow = self->boundCheckHigh;
  }

  v6 = (boundCheckLow - (v5 * self->kp));
  self->integrator = v6;
  integratorMin = self->integratorMin;
  if (integratorMin > v6)
  {
    self->integrator = integratorMin;
    v6 = integratorMin;
  }

  integratorMax = self->integratorMax;
  if (v6 > integratorMax)
  {
    self->integrator = integratorMax;
    v6 = integratorMax;
  }

  v9 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> Setting integral component to %f", &v10, 0xCu);
  }
}

@end
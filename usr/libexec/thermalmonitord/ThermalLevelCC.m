@interface ThermalLevelCC
- (ThermalLevelCC)initWithProduct:(id)a3;
- (void)defaultAction;
- (void)refreshFunctionalTelemetry;
@end

@implementation ThermalLevelCC

- (void)refreshFunctionalTelemetry
{
  previousValue = self->super.previousValue;
  if (previousValue == 100)
  {
    v3 = 0;
  }

  else
  {
    v3 = (100 - previousValue) / 0xA + 1;
  }

  HIDWORD(self->product) = v3;
}

- (ThermalLevelCC)initWithProduct:(id)a3
{
  v7.receiver = self;
  v7.super_class = ThermalLevelCC;
  v4 = [(ComponentControl *)&v7 initWithCC:5];
  v5 = v4;
  if (v4)
  {
    *(v4 + 18) = 100;
    *(v4 + 140) = a3;
    *(v4 + 22) = 2;
    *(v4 + 37) = 0;
    *(v4 + 38) = 0;
    *(v4 + 6) = CFStringCreateWithFormat(0, 0, @"%d Thermallevel ", 5);
  }

  return v5;
}

- (void)defaultAction
{
  if (HIDWORD(self->product) != self->currThermLevel)
  {
    [*(&self->super.currentPower + 1) setComponentThermalStatusLevel:?];
    self->currThermLevel = HIDWORD(self->product);
  }
}

@end
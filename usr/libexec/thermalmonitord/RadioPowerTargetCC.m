@interface RadioPowerTargetCC
- (RadioPowerTargetCC)initWithRunLoopAndParams:(__CFRunLoop *)a3 withParams:(__CFDictionary *)a4;
- (int)numberOfFields;
- (void)calculateAdditionalRadioMitigations;
@end

@implementation RadioPowerTargetCC

- (RadioPowerTargetCC)initWithRunLoopAndParams:(__CFRunLoop *)a3 withParams:(__CFDictionary *)a4
{
  v8.receiver = self;
  v8.super_class = RadioPowerTargetCC;
  v5 = [(RadioCC *)&v8 initWithRunLoopAndParams:a3 withParams:?];
  v6 = v5;
  if (v5)
  {
    *(&v5->super.maxLoadingIndexPrevious + 1) = -1;
    if (a4 && sub_100002A20(a4, @"maxRadioPower", kCFNumberIntType, &v5->super.maxLoadingIndexPrevious + 1) && (sub_100002A20(a4, @"minRadioPower", kCFNumberIntType, &v6->radioPowerTarget) & 1) == 0)
    {
      v6->radioPowerTarget = 0;
    }

    [(RadioPowerTargetCC *)v6 calculateAdditionalRadioMitigations];
    [(RadioPowerTargetCC *)v6 addRadioMitigations];
  }

  return v6;
}

- (void)calculateAdditionalRadioMitigations
{
  previousValue = self->super.super.previousValue;
  if (previousValue <= 99)
  {
    v4 = 1374389535 * *(&self->super.maxLoadingIndexPrevious + 1) * (previousValue & ~(previousValue >> 31));
    radioPowerTarget = (v4 >> 37) + (v4 >> 63);
    if (radioPowerTarget <= self->radioPowerTarget)
    {
      radioPowerTarget = self->radioPowerTarget;
    }
  }

  else
  {
    radioPowerTarget = 65000;
  }

  self->super.maxLoadingIndexPrevious = radioPowerTarget;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = RadioPowerTargetCC;
  return [(RadioCC *)&v3 numberOfFields]+ 1;
}

@end
@interface RadioTxDutyCycleCC
- (RadioTxDutyCycleCC)initWithRunLoopAndParams:(__CFRunLoop *)params withParams:(__CFDictionary *)withParams;
- (int)numberOfFields;
- (void)calculateAdditionalRadioMitigations;
@end

@implementation RadioTxDutyCycleCC

- (RadioTxDutyCycleCC)initWithRunLoopAndParams:(__CFRunLoop *)params withParams:(__CFDictionary *)withParams
{
  v9.receiver = self;
  v9.super_class = RadioTxDutyCycleCC;
  v5 = [(RadioCC *)&v9 initWithRunLoopAndParams:params withParams:?];
  v6 = v5;
  if (v5)
  {
    *(&v5->super.maxLoadingIndexPrevious + 1) = 250;
    if (withParams)
    {
      v8 = 0;
      if (sub_100002A20(withParams, @"minRadioTxDutyCycle", kCFNumberIntType, &v8))
      {
        *(&v6->super.maxLoadingIndexPrevious + 1) = v8;
      }
    }

    [(RadioTxDutyCycleCC *)v6 calculateAdditionalRadioMitigations];
    [(RadioTxDutyCycleCC *)v6 addRadioMitigations];
  }

  return v6;
}

- (void)calculateAdditionalRadioMitigations
{
  v2 = self->super.super.previousValue & ~(self->super.super.previousValue >> 31);
  if (v2 >= 100)
  {
    v2 = 100;
  }

  v3 = 10 * v2;
  if (v3 <= *(&self->super.maxLoadingIndexPrevious + 1))
  {
    v3 = *(&self->super.maxLoadingIndexPrevious + 1);
  }

  self->super.maxLoadingIndexPrevious = v3;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = RadioTxDutyCycleCC;
  return [(RadioCC *)&v3 numberOfFields]+ 1;
}

@end
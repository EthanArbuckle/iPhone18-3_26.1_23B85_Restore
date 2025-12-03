@interface SocCC
- (SocCC)initWithParams:(__CFDictionary *)params listID:(int)d;
- (int)numberOfFields;
- (void)defaultAction;
@end

@implementation SocCC

- (SocCC)initWithParams:(__CFDictionary *)params listID:(int)d
{
  v8.receiver = self;
  v8.super_class = SocCC;
  v5 = [(ComponentControl *)&v8 initWithCC:3];
  v6 = v5;
  if (v5)
  {
    v5->listIDPos = 101;
    *(&v5->super.currentPower + 1) = d;
    v5->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d SoC ", 3);
  }

  return v6;
}

- (void)defaultAction
{
  self->listIDPos = self->super.previousValue;
  v2 = *(&self->super.currentPower + 1);
  [qword_1000ABCB0 setGPUPowerCeiling:? fromDecisionSource:?];
  v3 = qword_1000ABCB0;

  [v3 updateGPU];
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = SocCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 1;
}

@end
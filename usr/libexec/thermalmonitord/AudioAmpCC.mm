@interface AudioAmpCC
- (AudioAmpCC)initWithParams:(__CFDictionary *)a3;
- (int)numberOfFields;
- (void)defaultAction;
@end

@implementation AudioAmpCC

- (AudioAmpCC)initWithParams:(__CFDictionary *)a3
{
  v7.receiver = self;
  v7.super_class = AudioAmpCC;
  v4 = [(ComponentControl *)&v7 initWithCC:10];
  v5 = v4;
  if (v4)
  {
    *&v4->super.allowLIOverride = 100;
    *(&v4->super.currentPower + 1) = 1109393408;
    v4->_targetPower = 0.0;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d AudioAmp ", 10);
    v5->super.previousValue = v5->super.currentLoadingIndex;
    if (a3)
    {
      sub_100002A20(a3, @"maxAudioAmpPower", kCFNumberFloatType, &v5->_currentPower);
    }
  }

  return v5;
}

- (void)defaultAction
{
  currentLoadingIndex = self->super.currentLoadingIndex;
  if (currentLoadingIndex != self->super.maxLoadingIndex)
  {
    *(&self->super.currentPower + 1) = (self->_currentPower * currentLoadingIndex) / 100.0;
    self->super.maxLoadingIndex = currentLoadingIndex;
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = AudioAmpCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

@end
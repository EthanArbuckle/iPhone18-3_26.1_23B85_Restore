@interface AntBlockPowerLimitUwbPriorityClassPolicy
- (AntBlockPowerLimitUwbPriorityClassPolicy)init;
- (void)setParameterEnable:(BOOL)a3 PriorityClass:(unsigned __int8)a4 MitigationRequired:(BOOL)a5 DenyVoiceProtect:(BOOL)a6 MitigationTimer:(unsigned int)a7;
@end

@implementation AntBlockPowerLimitUwbPriorityClassPolicy

- (AntBlockPowerLimitUwbPriorityClassPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitUwbPriorityClassPolicy;
  result = [(AntBlockPowerLimitUwbPriorityClassPolicy *)&v3 init];
  result->_mEnable = 0;
  return result;
}

- (void)setParameterEnable:(BOOL)a3 PriorityClass:(unsigned __int8)a4 MitigationRequired:(BOOL)a5 DenyVoiceProtect:(BOOL)a6 MitigationTimer:(unsigned int)a7
{
  self->_mEnable = a3;
  self->_mPriorityClass = a4;
  self->_mMitigationRequired = a5;
  self->_mDenyVoiceProtect = a6;
  self->_mMitigationTimer = a7;
}

@end
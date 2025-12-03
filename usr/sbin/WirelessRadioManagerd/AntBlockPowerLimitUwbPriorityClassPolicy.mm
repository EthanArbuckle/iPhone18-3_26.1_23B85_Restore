@interface AntBlockPowerLimitUwbPriorityClassPolicy
- (AntBlockPowerLimitUwbPriorityClassPolicy)init;
- (void)setParameterEnable:(BOOL)enable PriorityClass:(unsigned __int8)class MitigationRequired:(BOOL)required DenyVoiceProtect:(BOOL)protect MitigationTimer:(unsigned int)timer;
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

- (void)setParameterEnable:(BOOL)enable PriorityClass:(unsigned __int8)class MitigationRequired:(BOOL)required DenyVoiceProtect:(BOOL)protect MitigationTimer:(unsigned int)timer
{
  self->_mEnable = enable;
  self->_mPriorityClass = class;
  self->_mMitigationRequired = required;
  self->_mDenyVoiceProtect = protect;
  self->_mMitigationTimer = timer;
}

@end
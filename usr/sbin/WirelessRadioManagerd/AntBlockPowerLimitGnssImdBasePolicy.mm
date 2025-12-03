@interface AntBlockPowerLimitGnssImdBasePolicy
- (AntBlockPowerLimitGnssImdBasePolicy)init;
- (void)setParameter:(BOOL)parameter ImdType:(unsigned int)type GnssL5TunerAllowed:(BOOL)allowed ParallelMitigationAllowed:(BOOL)mitigationAllowed GnssVictimFreq_KHz:(unsigned int)hz GnssVictimBw_KHz:(unsigned int)kHz;
@end

@implementation AntBlockPowerLimitGnssImdBasePolicy

- (AntBlockPowerLimitGnssImdBasePolicy)init
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitGnssImdBasePolicy;
  v2 = [(AntBlockPowerLimitGnssImdBasePolicy *)&v6 init];
  *&v2->_mEnable = 1;
  v2->_mImdType = 0;
  mCellAggressor1 = v2->_mCellAggressor1;
  *&v2->_mGnssVictimFreq_KHz = 0;
  v2->_mCellAggressor1 = 0;

  mCellAggressor2 = v2->_mCellAggressor2;
  v2->_mCellAggressor2 = 0;

  v2->_mParallelMitigationAllowed = 1;
  return v2;
}

- (void)setParameter:(BOOL)parameter ImdType:(unsigned int)type GnssL5TunerAllowed:(BOOL)allowed ParallelMitigationAllowed:(BOOL)mitigationAllowed GnssVictimFreq_KHz:(unsigned int)hz GnssVictimBw_KHz:(unsigned int)kHz
{
  self->_mEnable = parameter;
  self->_mGnssL5TunerAllowed = allowed;
  self->_mImdType = type;
  self->_mGnssVictimFreq_KHz = hz;
  self->_mGnssVictimBw_KHz = kHz;
  self->_mParallelMitigationAllowed = mitigationAllowed;
}

@end
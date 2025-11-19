@interface AntBlockPowerLimitGnssImdBasePolicy
- (AntBlockPowerLimitGnssImdBasePolicy)init;
- (void)setParameter:(BOOL)a3 ImdType:(unsigned int)a4 GnssL5TunerAllowed:(BOOL)a5 ParallelMitigationAllowed:(BOOL)a6 GnssVictimFreq_KHz:(unsigned int)a7 GnssVictimBw_KHz:(unsigned int)a8;
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

- (void)setParameter:(BOOL)a3 ImdType:(unsigned int)a4 GnssL5TunerAllowed:(BOOL)a5 ParallelMitigationAllowed:(BOOL)a6 GnssVictimFreq_KHz:(unsigned int)a7 GnssVictimBw_KHz:(unsigned int)a8
{
  self->_mEnable = a3;
  self->_mGnssL5TunerAllowed = a5;
  self->_mImdType = a4;
  self->_mGnssVictimFreq_KHz = a7;
  self->_mGnssVictimBw_KHz = a8;
  self->_mParallelMitigationAllowed = a6;
}

@end
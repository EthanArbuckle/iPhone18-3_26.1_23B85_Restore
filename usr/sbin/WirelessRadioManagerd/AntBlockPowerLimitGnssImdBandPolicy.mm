@interface AntBlockPowerLimitGnssImdBandPolicy
- (AntBlockPowerLimitGnssImdBandPolicy)init;
- (void)setParameterEnable:(BOOL)a3 CellularAntBitmap:(unsigned int)a4 MitigationType:(unsigned int)a5 CellularTxPowerCap:(int)a6;
@end

@implementation AntBlockPowerLimitGnssImdBandPolicy

- (AntBlockPowerLimitGnssImdBandPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitGnssImdBandPolicy;
  result = [(AntBlockPowerLimitGnssImdBandPolicy *)&v3 init];
  result->_mEnable = 0;
  *&result->_mCellularAntBitmap = &_mh_execute_header;
  result->_mCellularTxPowerCap = 0;
  return result;
}

- (void)setParameterEnable:(BOOL)a3 CellularAntBitmap:(unsigned int)a4 MitigationType:(unsigned int)a5 CellularTxPowerCap:(int)a6
{
  self->_mEnable = a3;
  self->_mCellularAntBitmap = a4;
  self->_mMitigationType = a5;
  self->_mCellularTxPowerCap = a6;
}

@end
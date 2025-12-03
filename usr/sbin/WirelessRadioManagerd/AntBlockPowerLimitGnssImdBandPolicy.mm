@interface AntBlockPowerLimitGnssImdBandPolicy
- (AntBlockPowerLimitGnssImdBandPolicy)init;
- (void)setParameterEnable:(BOOL)enable CellularAntBitmap:(unsigned int)bitmap MitigationType:(unsigned int)type CellularTxPowerCap:(int)cap;
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

- (void)setParameterEnable:(BOOL)enable CellularAntBitmap:(unsigned int)bitmap MitigationType:(unsigned int)type CellularTxPowerCap:(int)cap
{
  self->_mEnable = enable;
  self->_mCellularAntBitmap = bitmap;
  self->_mMitigationType = type;
  self->_mCellularTxPowerCap = cap;
}

@end
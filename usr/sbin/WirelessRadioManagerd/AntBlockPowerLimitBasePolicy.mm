@interface AntBlockPowerLimitBasePolicy
- (AntBlockPowerLimitBasePolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)policy;
- (void)setParameterEnable:(BOOL)enable CellularAntBitmap:(unsigned int)bitmap MitigationType:(unsigned int)type CellularTxPowerCap:(int)cap CoexTech:(unsigned int)tech CellularBand:(unsigned int)band CellFreq:(unsigned int)freq CellBW:(unsigned int)self0;
@end

@implementation AntBlockPowerLimitBasePolicy

- (AntBlockPowerLimitBasePolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitBasePolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mEnable = 0;
  return result;
}

- (void)setParameterEnable:(BOOL)enable CellularAntBitmap:(unsigned int)bitmap MitigationType:(unsigned int)type CellularTxPowerCap:(int)cap CoexTech:(unsigned int)tech CellularBand:(unsigned int)band CellFreq:(unsigned int)freq CellBW:(unsigned int)self0
{
  self->_mEnable = enable;
  self->_mCellularAntBitmap = bitmap;
  self->_mMitigationType = type;
  self->_mCellularTxPowerCap = cap;
  self->_mCellularCoexTech = tech;
  self->_mCellularBand = band;
  self->_mCellularFrequencyKHz = freq;
  self->_mCellularBandwidthKHz = w;
}

- (void)extractPolicy:(id)policy
{
  policyCopy = policy;
  v20 = [policyCopy objectForKey:@"Enable"];
  bOOLValue = [v20 BOOLValue];
  v19 = [policyCopy objectForKey:@"Cellular_Ant_Bitmap"];
  integerValue = [v19 integerValue];
  v17 = [policyCopy objectForKey:@"Mitigation_Type"];
  integerValue2 = [v17 integerValue];
  v5 = [policyCopy objectForKey:@"Cellular_TX_Power_Cap"];
  [v5 doubleValue];
  LODWORD(v3) = vcvtd_n_s64_f64(v6, 4uLL);
  v7 = [policyCopy objectForKey:@"Coex_Tech"];
  integerValue3 = [v7 integerValue];
  v9 = [policyCopy objectForKey:@"Cellular_Band"];
  integerValue4 = [v9 integerValue];
  v11 = [policyCopy objectForKey:@"Cellular_Center_Frequency_KHz"];
  integerValue5 = [v11 integerValue];
  v13 = [policyCopy objectForKey:@"Cellular_Bandwidth_KHz"];

  -[AntBlockPowerLimitBasePolicy setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:CoexTech:CellularBand:CellFreq:CellBW:](self, "setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:CoexTech:CellularBand:CellFreq:CellBW:", bOOLValue, integerValue, integerValue2, v3, integerValue3, integerValue4, __PAIR64__([v13 integerValue], integerValue5));
}

- (id)constructXpcMessage
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "kWCMCellularSetAntBlocking_Policy_Enable", self->_mEnable);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap", self->_mCellularAntBitmap);
  xpc_dictionary_set_int64(v3, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap", self->_mCellularTxPowerCap);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_MitigationType", self->_mMitigationType);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Band", self->_mCellularBand);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech", self->_mCellularCoexTech);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq", self->_mCellularFrequencyKHz);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth", self->_mCellularBandwidthKHz);

  return v3;
}

@end
@interface AntBlockPowerLimitBasePolicy
- (AntBlockPowerLimitBasePolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)a3;
- (void)setParameterEnable:(BOOL)a3 CellularAntBitmap:(unsigned int)a4 MitigationType:(unsigned int)a5 CellularTxPowerCap:(int)a6 CoexTech:(unsigned int)a7 CellularBand:(unsigned int)a8 CellFreq:(unsigned int)a9 CellBW:(unsigned int)a10;
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

- (void)setParameterEnable:(BOOL)a3 CellularAntBitmap:(unsigned int)a4 MitigationType:(unsigned int)a5 CellularTxPowerCap:(int)a6 CoexTech:(unsigned int)a7 CellularBand:(unsigned int)a8 CellFreq:(unsigned int)a9 CellBW:(unsigned int)a10
{
  self->_mEnable = a3;
  self->_mCellularAntBitmap = a4;
  self->_mMitigationType = a5;
  self->_mCellularTxPowerCap = a6;
  self->_mCellularCoexTech = a7;
  self->_mCellularBand = a8;
  self->_mCellularFrequencyKHz = a9;
  self->_mCellularBandwidthKHz = a10;
}

- (void)extractPolicy:(id)a3
{
  v4 = a3;
  v20 = [v4 objectForKey:@"Enable"];
  v16 = [v20 BOOLValue];
  v19 = [v4 objectForKey:@"Cellular_Ant_Bitmap"];
  v15 = [v19 integerValue];
  v17 = [v4 objectForKey:@"Mitigation_Type"];
  v14 = [v17 integerValue];
  v5 = [v4 objectForKey:@"Cellular_TX_Power_Cap"];
  [v5 doubleValue];
  LODWORD(v3) = vcvtd_n_s64_f64(v6, 4uLL);
  v7 = [v4 objectForKey:@"Coex_Tech"];
  v8 = [v7 integerValue];
  v9 = [v4 objectForKey:@"Cellular_Band"];
  v10 = [v9 integerValue];
  v11 = [v4 objectForKey:@"Cellular_Center_Frequency_KHz"];
  v12 = [v11 integerValue];
  v13 = [v4 objectForKey:@"Cellular_Bandwidth_KHz"];

  -[AntBlockPowerLimitBasePolicy setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:CoexTech:CellularBand:CellFreq:CellBW:](self, "setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:CoexTech:CellularBand:CellFreq:CellBW:", v16, v15, v14, v3, v8, v10, __PAIR64__([v13 integerValue], v12));
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
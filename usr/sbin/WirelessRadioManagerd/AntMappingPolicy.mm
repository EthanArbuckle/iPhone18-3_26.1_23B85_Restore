@interface AntMappingPolicy
- (AntMappingPolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)policy;
@end

@implementation AntMappingPolicy

- (AntMappingPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntMappingPolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mPhysicalAntId = 0;
  result->_mSPMIAntId = 0;
  return result;
}

- (void)extractPolicy:(id)policy
{
  policyCopy = policy;
  v5 = [policyCopy objectForKey:@"Physical_Antenna_Index"];
  -[AntMappingPolicy setMPhysicalAntId:](self, "setMPhysicalAntId:", [v5 integerValue]);

  v6 = [policyCopy objectForKey:@"SPMI_Antenna_Index"];

  -[AntMappingPolicy setMSPMIAntId:](self, "setMSPMIAntId:", [v6 integerValue]);
}

- (id)constructXpcMessage
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", [(AntMappingPolicy *)self mPhysicalAntId]);
  xpc_dictionary_set_uint64(v3, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", [(AntMappingPolicy *)self mSPMIAntId]);

  return v3;
}

@end
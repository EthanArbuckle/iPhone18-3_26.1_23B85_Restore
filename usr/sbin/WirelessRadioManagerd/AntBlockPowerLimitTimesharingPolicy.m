@interface AntBlockPowerLimitTimesharingPolicy
- (AntBlockPowerLimitTimesharingPolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)a3;
@end

@implementation AntBlockPowerLimitTimesharingPolicy

- (AntBlockPowerLimitTimesharingPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitTimesharingPolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_m2GWifiChannelStart = 0;
  result->_m2GWifiChannelEnd = 0;
  return result;
}

- (void)extractPolicy:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Enable"];
  -[AntBlockPowerLimitBasePolicy setMEnable:](self, "setMEnable:", [v5 BOOLValue]);

  v6 = [v4 objectForKey:@"Cellular_Band"];
  -[AntBlockPowerLimitBasePolicy setMCellularBand:](self, "setMCellularBand:", [v6 integerValue]);

  v7 = [v4 objectForKey:@"Cellular_Center_Frequency_KHz"];
  -[AntBlockPowerLimitBasePolicy setMCellularFrequencyKHz:](self, "setMCellularFrequencyKHz:", [v7 integerValue]);

  v8 = [v4 objectForKey:@"Cellular_Bandwidth_KHz"];
  -[AntBlockPowerLimitBasePolicy setMCellularBandwidthKHz:](self, "setMCellularBandwidthKHz:", [v8 integerValue]);

  v9 = [v4 objectForKey:@"Wifi_2G_Channel_Start"];
  -[AntBlockPowerLimitTimesharingPolicy setM2GWifiChannelStart:](self, "setM2GWifiChannelStart:", [v9 integerValue]);

  v10 = [v4 objectForKey:@"Wifi_2G_Channel_End"];

  -[AntBlockPowerLimitTimesharingPolicy setM2GWifiChannelEnd:](self, "setM2GWifiChannelEnd:", [v10 integerValue]);
}

- (id)constructXpcMessage
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "kWCMCellularTImeShareConfig_BandSet_Frequency", [(AntBlockPowerLimitBasePolicy *)self mCellularFrequencyKHz]);
  xpc_dictionary_set_int64(v3, "kWCMCellularTImeShareConfig_BandSet_BW", [(AntBlockPowerLimitBasePolicy *)self mCellularBandwidthKHz]);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTImeShareConfig_BandSet_2GWifi_Channel_Start", [(AntBlockPowerLimitTimesharingPolicy *)self m2GWifiChannelStart]);
  xpc_dictionary_set_uint64(v3, "kWCMCellularTImeShareConfig_BandSet_2GWifi_Channel_End", [(AntBlockPowerLimitTimesharingPolicy *)self m2GWifiChannelEnd]);

  return v3;
}

@end
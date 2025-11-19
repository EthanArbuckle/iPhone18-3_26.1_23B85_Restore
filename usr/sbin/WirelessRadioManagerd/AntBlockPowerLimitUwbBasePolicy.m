@interface AntBlockPowerLimitUwbBasePolicy
- (AntBlockPowerLimitUwbBasePolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)a3;
@end

@implementation AntBlockPowerLimitUwbBasePolicy

- (AntBlockPowerLimitUwbBasePolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitUwbBasePolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mUwbChannel = 256;
  result->_mUwbAntBitmap = 0;
  return result;
}

- (void)extractPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = AntBlockPowerLimitUwbBasePolicy;
  v4 = a3;
  [(AntBlockPowerLimitBasePolicy *)&v8 extractPolicy:v4];
  v5 = [v4 objectForKey:{@"Uwb_Channel", v8.receiver, v8.super_class}];
  v6 = [v5 integerValue];
  v7 = [v4 objectForKey:@"Uwb_Ant_Bitmap"];

  -[AntBlockPowerLimitUwbBasePolicy setParameterUwbChannel:UwbAntBitmap:](self, "setParameterUwbChannel:UwbAntBitmap:", v6, [v7 integerValue]);
}

- (id)constructXpcMessage
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitUwbBasePolicy;
  v3 = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_UwbChannel", self->_mUwbChannel);
    xpc_dictionary_set_uint64(v4, "kWCMCellularSetAntBlocking_Policy_UwbAntBitmap", self->_mUwbAntBitmap);
  }

  return v4;
}

@end
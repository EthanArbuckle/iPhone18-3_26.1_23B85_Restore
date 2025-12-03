@interface AntBlockPowerLimitUwbBasePolicy
- (AntBlockPowerLimitUwbBasePolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)policy;
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

- (void)extractPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = AntBlockPowerLimitUwbBasePolicy;
  policyCopy = policy;
  [(AntBlockPowerLimitBasePolicy *)&v8 extractPolicy:policyCopy];
  v5 = [policyCopy objectForKey:{@"Uwb_Channel", v8.receiver, v8.super_class}];
  integerValue = [v5 integerValue];
  v7 = [policyCopy objectForKey:@"Uwb_Ant_Bitmap"];

  -[AntBlockPowerLimitUwbBasePolicy setParameterUwbChannel:UwbAntBitmap:](self, "setParameterUwbChannel:UwbAntBitmap:", integerValue, [v7 integerValue]);
}

- (id)constructXpcMessage
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitUwbBasePolicy;
  constructXpcMessage = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = constructXpcMessage;
  if (constructXpcMessage)
  {
    xpc_dictionary_set_uint64(constructXpcMessage, "kWCMCellularSetAntBlocking_Policy_UwbChannel", self->_mUwbChannel);
    xpc_dictionary_set_uint64(v4, "kWCMCellularSetAntBlocking_Policy_UwbAntBitmap", self->_mUwbAntBitmap);
  }

  return v4;
}

@end
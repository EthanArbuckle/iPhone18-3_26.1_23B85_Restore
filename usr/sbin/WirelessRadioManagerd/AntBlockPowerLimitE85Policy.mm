@interface AntBlockPowerLimitE85Policy
- (AntBlockPowerLimitE85Policy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)policy;
@end

@implementation AntBlockPowerLimitE85Policy

- (AntBlockPowerLimitE85Policy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitE85Policy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mUsbRate = 0;
  return result;
}

- (void)extractPolicy:(id)policy
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitE85Policy;
  policyCopy = policy;
  [(AntBlockPowerLimitBasePolicy *)&v6 extractPolicy:policyCopy];
  v5 = [policyCopy objectForKey:{@"USB_Rate", v6.receiver, v6.super_class}];

  -[AntBlockPowerLimitE85Policy setParameterUsbRate:](self, "setParameterUsbRate:", [v5 integerValue]);
}

- (id)constructXpcMessage
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitE85Policy;
  constructXpcMessage = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = constructXpcMessage;
  if (constructXpcMessage)
  {
    xpc_dictionary_set_uint64(constructXpcMessage, "kWCMCellularSetAntBlocking_Policy_UsbRate", self->_mUsbRate);
  }

  return v4;
}

@end
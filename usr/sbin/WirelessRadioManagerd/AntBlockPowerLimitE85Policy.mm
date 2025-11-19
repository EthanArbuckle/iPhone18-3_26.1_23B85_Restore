@interface AntBlockPowerLimitE85Policy
- (AntBlockPowerLimitE85Policy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)a3;
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

- (void)extractPolicy:(id)a3
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitE85Policy;
  v4 = a3;
  [(AntBlockPowerLimitBasePolicy *)&v6 extractPolicy:v4];
  v5 = [v4 objectForKey:{@"USB_Rate", v6.receiver, v6.super_class}];

  -[AntBlockPowerLimitE85Policy setParameterUsbRate:](self, "setParameterUsbRate:", [v5 integerValue]);
}

- (id)constructXpcMessage
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitE85Policy;
  v3 = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_Policy_UsbRate", self->_mUsbRate);
  }

  return v4;
}

@end
@interface CBDevice
- (NSUUID)deviceIdentifier;
- (NSUUID)pairingAgentDeviceIdentifier;
@end

@implementation CBDevice

- (NSUUID)deviceIdentifier
{
  v3 = [(CBDevice *)self identifier];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CBDevice *)self identifier];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSUUID)pairingAgentDeviceIdentifier
{
  v3 = [(CBDevice *)self identifier];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CBDevice *)self identifier];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
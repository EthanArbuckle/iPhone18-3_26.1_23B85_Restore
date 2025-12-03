@interface CBDevice
- (NSUUID)deviceIdentifier;
- (NSUUID)pairingAgentDeviceIdentifier;
@end

@implementation CBDevice

- (NSUUID)deviceIdentifier
{
  identifier = [(CBDevice *)self identifier];
  if (identifier)
  {
    v4 = [NSUUID alloc];
    identifier2 = [(CBDevice *)self identifier];
    v6 = [v4 initWithUUIDString:identifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSUUID)pairingAgentDeviceIdentifier
{
  identifier = [(CBDevice *)self identifier];
  if (identifier)
  {
    v4 = [NSUUID alloc];
    identifier2 = [(CBDevice *)self identifier];
    v6 = [v4 initWithUUIDString:identifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface IDSDevice
- (id)nr_device;
@end

@implementation IDSDevice

- (id)nr_device
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 nonActiveDeviceForIDSDevice:self];

  return v4;
}

@end
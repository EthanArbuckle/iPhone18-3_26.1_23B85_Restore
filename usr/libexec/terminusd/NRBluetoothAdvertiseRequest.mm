@interface NRBluetoothAdvertiseRequest
- (id)description;
@end

@implementation NRBluetoothAdvertiseRequest

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    serviceUUIDs = self->super._serviceUUIDs;
  }

  else
  {
    serviceUUIDs = 0;
  }

  serviceUUIDs = [v3 initWithFormat:@"NRBluetoothAdvertiseRequest[services: %@]", serviceUUIDs];

  return serviceUUIDs;
}

@end
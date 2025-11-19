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

  v5 = [v3 initWithFormat:@"NRBluetoothAdvertiseRequest[services: %@]", serviceUUIDs];

  return v5;
}

@end
@interface NRBluetoothScanRequest
- (id)description;
@end

@implementation NRBluetoothScanRequest

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"NRBluetoothScanRequest[services: %@]", self->_serviceUUIDs];

  return v2;
}

@end
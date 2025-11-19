@interface CBDeviceEntry
- (CBDeviceEntry)init;
@end

@implementation CBDeviceEntry

- (CBDeviceEntry)init
{
  v6.receiver = self;
  v6.super_class = CBDeviceEntry;
  v2 = [(CBDeviceEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    hostMap = v2->_hostMap;
    v2->_hostMap = v3;
  }

  return v2;
}

@end
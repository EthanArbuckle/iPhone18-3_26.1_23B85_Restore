@interface CBWHBHostEntry
- (CBWHBHostEntry)init;
@end

@implementation CBWHBHostEntry

- (CBWHBHostEntry)init
{
  v9.receiver = self;
  v9.super_class = CBWHBHostEntry;
  v2 = [(CBWHBHostEntry *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_cpuUsage = 1;
    v4 = objc_alloc_init(CBWHBCoexUsage);
    coexUsage = v3->_coexUsage;
    v3->_coexUsage = v4;

    v3->_estimatedConnections = 0;
    v3->_estimatedConnectionsLastUpdatedTicks = 0;
    v6 = objc_alloc_init(NSMutableDictionary);
    deviceList = v3->_deviceList;
    v3->_deviceList = v6;
  }

  return v3;
}

@end
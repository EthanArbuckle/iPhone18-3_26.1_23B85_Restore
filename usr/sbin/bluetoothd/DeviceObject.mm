@interface DeviceObject
- (DeviceObject)initWithDevice:(id)device andBundleIdentifier:(id)identifier;
@end

@implementation DeviceObject

- (DeviceObject)initWithDevice:(id)device andBundleIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = DeviceObject;
  v9 = [(DeviceObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    v11 = +[NSMutableArray array];
    bundleIdentifiers = v10->_bundleIdentifiers;
    v10->_bundleIdentifiers = v11;

    if (identifierCopy)
    {
      [(NSMutableArray *)v10->_bundleIdentifiers addObject:identifierCopy];
    }
  }

  return v10;
}

@end
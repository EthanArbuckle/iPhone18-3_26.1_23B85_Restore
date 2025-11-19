@interface DeviceObject
- (DeviceObject)initWithDevice:(id)a3 andBundleIdentifier:(id)a4;
@end

@implementation DeviceObject

- (DeviceObject)initWithDevice:(id)a3 andBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DeviceObject;
  v9 = [(DeviceObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    v11 = +[NSMutableArray array];
    bundleIdentifiers = v10->_bundleIdentifiers;
    v10->_bundleIdentifiers = v11;

    if (v8)
    {
      [(NSMutableArray *)v10->_bundleIdentifiers addObject:v8];
    }
  }

  return v10;
}

@end
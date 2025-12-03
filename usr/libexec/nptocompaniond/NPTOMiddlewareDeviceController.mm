@interface NPTOMiddlewareDeviceController
- (NPTOMiddlewareDeviceController)init;
- (NPTOMiddlewareDeviceController)initWithDevice:(id)device service:(id)service;
@end

@implementation NPTOMiddlewareDeviceController

- (NPTOMiddlewareDeviceController)initWithDevice:(id)device service:(id)service
{
  deviceCopy = device;
  serviceCopy = service;
  v7 = sub_100023D78(deviceCopy, serviceCopy);

  return v7;
}

- (NPTOMiddlewareDeviceController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
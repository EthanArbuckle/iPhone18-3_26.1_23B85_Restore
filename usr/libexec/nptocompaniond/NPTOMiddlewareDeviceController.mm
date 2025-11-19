@interface NPTOMiddlewareDeviceController
- (NPTOMiddlewareDeviceController)init;
- (NPTOMiddlewareDeviceController)initWithDevice:(id)a3 service:(id)a4;
@end

@implementation NPTOMiddlewareDeviceController

- (NPTOMiddlewareDeviceController)initWithDevice:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100023D78(v5, v6);

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
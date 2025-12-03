@interface SWTransparencyXPCService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15swtransparencyd24SWTransparencyXPCService)init;
@end

@implementation SWTransparencyXPCService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100069138(connectionCopy);

  return v9 & 1;
}

- (_TtC15swtransparencyd24SWTransparencyXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
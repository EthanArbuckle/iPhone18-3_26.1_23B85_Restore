@interface SWTransparencyXPCService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15swtransparencyd24SWTransparencyXPCService)init;
@end

@implementation SWTransparencyXPCService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100069138(v7);

  return v9 & 1;
}

- (_TtC15swtransparencyd24SWTransparencyXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
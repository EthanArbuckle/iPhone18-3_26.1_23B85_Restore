@interface Server
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC13frauddefensed6Server)init;
@end

@implementation Server

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10002CF8C(v7);

  return v9 & 1;
}

- (_TtC13frauddefensed6Server)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface DebugServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14dockaccessoryd20DebugServiceDelegate)init;
@end

@implementation DebugServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001E258C(v7);

  return v9 & 1;
}

- (_TtC14dockaccessoryd20DebugServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DebugServiceDelegate();
  return [(DebugServiceDelegate *)&v3 init];
}

@end
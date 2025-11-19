@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC12wifip2pdCore9XPCServer)init;
- (void)endpointForType:(unint64_t)a3 processName:(id)a4 completionHandler:(id)a5;
@end

@implementation XPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000175CC(v6, v7);

  return v9 & 1;
}

- (void)endpointForType:(unint64_t)a3 processName:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_100018BA0(a3, v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (_TtC12wifip2pdCore9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
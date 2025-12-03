@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC12wifip2pdCore9XPCServer)init;
- (void)endpointForType:(unint64_t)type processName:(id)name completionHandler:(id)handler;
@end

@implementation XPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000175CC(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (void)endpointForType:(unint64_t)type processName:(id)name completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_100018BA0(type, v8, v10, selfCopy, v7);
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
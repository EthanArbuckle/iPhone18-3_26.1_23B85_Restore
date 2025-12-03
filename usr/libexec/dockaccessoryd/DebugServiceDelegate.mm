@interface DebugServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd20DebugServiceDelegate)init;
@end

@implementation DebugServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1001E258C(connectionCopy);

  return v9 & 1;
}

- (_TtC14dockaccessoryd20DebugServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DebugServiceDelegate();
  return [(DebugServiceDelegate *)&v3 init];
}

@end
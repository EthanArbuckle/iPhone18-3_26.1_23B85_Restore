@interface PresentmentListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC7idcredd19PresentmentListener)init;
@end

@implementation PresentmentListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000942F4(connectionCopy);

  return v9 & 1;
}

- (_TtC7idcredd19PresentmentListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
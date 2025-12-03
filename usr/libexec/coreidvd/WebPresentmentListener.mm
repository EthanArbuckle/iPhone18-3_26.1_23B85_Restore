@interface WebPresentmentListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC8coreidvd22WebPresentmentListener)init;
@end

@implementation WebPresentmentListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1004F6FB8(connectionCopy);

  return v9 & 1;
}

- (_TtC8coreidvd22WebPresentmentListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
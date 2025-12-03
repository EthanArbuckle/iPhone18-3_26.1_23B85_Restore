@interface DigitalPresentmentListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC8coreidvd26DigitalPresentmentListener)init;
@end

@implementation DigitalPresentmentListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1004845CC(connectionCopy);

  return v9 & 1;
}

- (_TtC8coreidvd26DigitalPresentmentListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
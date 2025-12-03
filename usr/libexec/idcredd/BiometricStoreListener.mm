@interface BiometricStoreListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC7idcredd22BiometricStoreListener)init;
@end

@implementation BiometricStoreListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100072934(connectionCopy);

  return v9 & 1;
}

- (_TtC7idcredd22BiometricStoreListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
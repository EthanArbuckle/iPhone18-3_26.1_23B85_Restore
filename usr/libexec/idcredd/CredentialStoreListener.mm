@interface CredentialStoreListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC7idcredd23CredentialStoreListener)init;
@end

@implementation CredentialStoreListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10008B8E4(connectionCopy);

  return v9 & 1;
}

- (_TtC7idcredd23CredentialStoreListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
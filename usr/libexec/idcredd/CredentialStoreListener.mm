@interface CredentialStoreListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC7idcredd23CredentialStoreListener)init;
@end

@implementation CredentialStoreListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10008B8E4(v7);

  return v9 & 1;
}

- (_TtC7idcredd23CredentialStoreListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
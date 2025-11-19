@interface WebPresentmentRemoteAlertListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC8coreidvd33WebPresentmentRemoteAlertListener)init;
@end

@implementation WebPresentmentRemoteAlertListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1004F83FC(v7);

  return v9 & 1;
}

- (_TtC8coreidvd33WebPresentmentRemoteAlertListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
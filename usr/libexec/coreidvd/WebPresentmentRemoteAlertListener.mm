@interface WebPresentmentRemoteAlertListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC8coreidvd33WebPresentmentRemoteAlertListener)init;
@end

@implementation WebPresentmentRemoteAlertListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1004F83FC(connectionCopy);

  return v9 & 1;
}

- (_TtC8coreidvd33WebPresentmentRemoteAlertListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
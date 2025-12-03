@interface CAFDSessionBoostServiceAgent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13caraccessoryd28CAFDSessionBoostServiceAgent)init;
@end

@implementation CAFDSessionBoostServiceAgent

- (_TtC13caraccessoryd28CAFDSessionBoostServiceAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

@end
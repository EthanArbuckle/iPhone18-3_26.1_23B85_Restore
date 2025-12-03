@interface Server
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13frauddefensed6Server)init;
@end

@implementation Server

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10002CF8C(connectionCopy);

  return v9 & 1;
}

- (_TtC13frauddefensed6Server)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
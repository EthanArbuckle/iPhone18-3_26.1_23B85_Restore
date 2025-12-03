@interface ATRawAssortmentServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
@end

@implementation ATRawAssortmentServer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener);
  selfCopy = self;
  [v4 setDelegate:0];
  [*(&self->super.isa + v3) invalidate];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ATRawAssortmentServer();
  [(ATRawAssortmentServer *)&v6 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100001CF0(connectionCopy);

  return v9 & 1;
}

@end
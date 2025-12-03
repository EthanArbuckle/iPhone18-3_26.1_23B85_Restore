@interface RDClientConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC7remindd26RDClientConnectionListener)init;
- (void)dealloc;
@end

@implementation RDClientConnectionListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000033A4(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener);
  selfCopy = self;
  [v2 invalidate];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive) invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for RDClientConnectionListener();
  [(RDClientConnectionListener *)&v4 dealloc];
}

- (_TtC7remindd26RDClientConnectionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
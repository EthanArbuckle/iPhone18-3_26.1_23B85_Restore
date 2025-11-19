@interface RDClientConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC7remindd26RDClientConnectionListener)init;
- (void)dealloc;
@end

@implementation RDClientConnectionListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000033A4(v6, v7);

  return v9 & 1;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener);
  v3 = self;
  [v2 invalidate];
  [*(&v3->super.isa + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive) invalidate];
  v4.receiver = v3;
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
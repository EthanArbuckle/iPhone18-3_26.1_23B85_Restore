@interface ATRawAssortmentServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
@end

@implementation ATRawAssortmentServer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12textcontextd21ATRawAssortmentServer_listener);
  v5 = self;
  [v4 setDelegate:0];
  [*(&self->super.isa + v3) invalidate];
  v6.receiver = v5;
  v6.super_class = type metadata accessor for ATRawAssortmentServer();
  [(ATRawAssortmentServer *)&v6 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100001CF0(v7);

  return v9 & 1;
}

@end
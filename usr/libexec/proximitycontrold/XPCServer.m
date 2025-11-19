@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (_TtC17proximitycontrold9XPCServer)init;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation XPCServer

- (void)setDispatchQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue);
  *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue) = a3;
  v3 = a3;
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001042DC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10002689C(v8);
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100104014;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler);
  v8 = *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler);
  v9 = *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10002689C(v8);
}

- (_TtC17proximitycontrold9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100102124(sub_100104000, v5);
}

- (void)invalidate
{
  v2 = self;
  sub_100102758();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100102B8C(v6, v7);

  return v9 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_1001037AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end
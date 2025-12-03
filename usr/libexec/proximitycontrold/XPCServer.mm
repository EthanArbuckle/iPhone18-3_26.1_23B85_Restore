@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSString)description;
- (_TtC17proximitycontrold9XPCServer)init;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)setDispatchQueue:(id)queue;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation XPCServer

- (void)setDispatchQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue);
  *(self + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue) = queue;
  queueCopy = queue;
}

- (void)setInterruptionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10002689C(v8);
}

- (void)setInvalidationHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10002689C(v8);
}

- (_TtC17proximitycontrold9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)activateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100102124(sub_100104000, v5);
}

- (void)invalidate
{
  selfCopy = self;
  sub_100102758();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100102B8C(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_1001037AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end
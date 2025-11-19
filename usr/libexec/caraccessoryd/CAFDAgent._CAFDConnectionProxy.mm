@interface CAFDAgent._CAFDConnectionProxy
- (NSString)description;
- (_TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy)init;
- (void)fetchAppLinksSnapshotWithReply:(id)a3;
- (void)fetchNowPlayingSnapshotWithReply:(id)a3;
- (void)invalidate;
- (void)refreshAppLinksSnapshot;
- (void)refreshNowPlayingSnapshot;
@end

@implementation CAFDAgent._CAFDConnectionProxy

- (void)fetchAppLinksSnapshotWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CAFAppLinksSnapshot, @unowned NSError?) -> (), v5);
}

- (void)refreshAppLinksSnapshot
{
  v2 = self;
  CAFDAgent._CAFDConnectionProxy.refreshAppLinksSnapshot()();
}

- (void)fetchNowPlayingSnapshotWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CAFAppLinksSnapshot, @unowned NSError?) -> (), v5);
}

- (void)refreshNowPlayingSnapshot
{
  v2 = self;
  CAFDAgent._CAFDConnectionProxy.refreshNowPlayingSnapshot()();
}

- (NSString)description
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection);
  swift_getObjectType();
  v4 = self;
  BSServiceConnectionHost.CAFDDescription.getter();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (_TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  v2 = self;
  CAFDAgent._CAFDConnectionProxy.activate()("invalidate proxy %@", &selRef_invalidate);
}

@end
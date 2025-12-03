@interface CAFDAgent._CAFDConnectionProxy
- (NSString)description;
- (_TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy)init;
- (void)fetchAppLinksSnapshotWithReply:(id)reply;
- (void)fetchNowPlayingSnapshotWithReply:(id)reply;
- (void)invalidate;
- (void)refreshAppLinksSnapshot;
- (void)refreshNowPlayingSnapshot;
@end

@implementation CAFDAgent._CAFDConnectionProxy

- (void)fetchAppLinksSnapshotWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CAFAppLinksSnapshot, @unowned NSError?) -> (), v5);
}

- (void)refreshAppLinksSnapshot
{
  selfCopy = self;
  CAFDAgent._CAFDConnectionProxy.refreshAppLinksSnapshot()();
}

- (void)fetchNowPlayingSnapshotWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CAFAppLinksSnapshot, @unowned NSError?) -> (), v5);
}

- (void)refreshNowPlayingSnapshot
{
  selfCopy = self;
  CAFDAgent._CAFDConnectionProxy.refreshNowPlayingSnapshot()();
}

- (NSString)description
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection);
  swift_getObjectType();
  selfCopy = self;
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
  selfCopy = self;
  CAFDAgent._CAFDConnectionProxy.activate()("invalidate proxy %@", &selRef_invalidate);
}

@end
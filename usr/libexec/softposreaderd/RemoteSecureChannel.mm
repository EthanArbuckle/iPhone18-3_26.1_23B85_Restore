@interface RemoteSecureChannel
- (_TtC14softposreaderd19RemoteSecureChannel)init;
- (void)securingRequest:(id)request force:(BOOL)force reply:(id)reply;
@end

@implementation RemoteSecureChannel

- (void)securingRequest:(id)request force:(BOOL)force reply:(id)reply
{
  forceCopy = force;
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(reply);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  sub_100192AE0(v12, forceCopy, sub_100193210, v14);

  (*(v9 + 8))(v12, v8);
}

- (_TtC14softposreaderd19RemoteSecureChannel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
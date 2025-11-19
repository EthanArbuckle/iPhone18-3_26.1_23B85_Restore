@interface RemoteSecureChannel
- (_TtC14softposreaderd19RemoteSecureChannel)init;
- (void)securingRequest:(id)a3 force:(BOOL)a4 reply:(id)a5;
@end

@implementation RemoteSecureChannel

- (void)securingRequest:(id)a3 force:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self;
  sub_100192AE0(v12, v6, sub_100193210, v14);

  (*(v9 + 8))(v12, v8);
}

- (_TtC14softposreaderd19RemoteSecureChannel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
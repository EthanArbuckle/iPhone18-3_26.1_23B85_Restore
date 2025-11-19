@interface WebPresentmentCABLEClient
- (_TtC8coreidvd25WebPresentmentCABLEClient)init;
- (void)encodeDigitalCredentialJSONCommandForAuthenticatorWithAuthenticatorSupportedExtensions:(id)a3 completionHandler:(id)a4;
@end

@implementation WebPresentmentCABLEClient

- (void)encodeDigitalCredentialJSONCommandForAuthenticatorWithAuthenticatorSupportedExtensions:(id)a3 completionHandler:(id)a4
{
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v11;
  v14[6] = sub_10043E99C;
  v14[7] = v12;

  sub_1003E653C(0, 0, v9, &unk_1006E2D10, v14);
}

- (_TtC8coreidvd25WebPresentmentCABLEClient)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
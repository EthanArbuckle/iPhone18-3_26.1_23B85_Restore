@interface WebPresentmentCABLEAuthenticator
- (_TtC8coreidvd32WebPresentmentCABLEAuthenticator)init;
- (void)authenticator:(id)a3 didCompleteTransactionWithError:(id)a4;
@end

@implementation WebPresentmentCABLEAuthenticator

- (void)authenticator:(id)a3 didCompleteTransactionWithError:(id)a4
{
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = a4;

  v12 = a4;
  sub_1003E653C(0, 0, v9, &unk_1006E2C08, v11);
}

- (_TtC8coreidvd32WebPresentmentCABLEAuthenticator)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
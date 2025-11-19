@interface GSASTeardown
- (NSData)data;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey12GSASTeardown)init;
- (int64_t)reason;
- (void)setReason:(int64_t)a3;
- (void)setSessionId:(id)a3;
@end

@implementation GSASTeardown

- (NSData)sessionId
{
  v3 = type metadata accessor for SASTeardown(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();

  v9 = *v6;
  v10 = v6[1];
  sub_10005F0F8(*v6, v10);
  sub_10006CDDC(v6, type metadata accessor for SASTeardown);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v10);

  return v11.super.isa;
}

- (void)setSessionId:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & v5->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *v11;
  v13 = v11[1];
  *v11 = v6;
  v11[1] = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (int64_t)reason
{
  v3 = type metadata accessor for SASTeardown(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();
  v9 = *(v6 + 2);
  LOBYTE(v7) = v6[24];
  sub_10006CDDC(v6, type metadata accessor for SASTeardown);
  sub_100057054(v9, v7);

  return 0;
}

- (void)setReason:(int64_t)a3
{
  v3 = self;
  sub_100057040();
  if ((v5 & 0x100) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v5 | ((v5 & 0x100) >> 8);
  v8 = (*((swift_isaMask & v3->super.isa) + 0x68))(v10);
  *(v9 + 16) = v6;
  *(v9 + 24) = v7 & 1;
  v8(v10, 0);
}

- (_TtC21transparencyStaticKey12GSASTeardown)init
{
  v3 = type metadata accessor for SASTeardown(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057BCC(v6);
  sub_10006CEA4(v6, self + OBJC_IVAR____TtC21transparencyStaticKey12GSASTeardown_teardown, type metadata accessor for SASTeardown);
  v7 = type metadata accessor for GSASTeardown(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(GSASTeardown *)&v9 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASTeardown(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();
  sub_10006CE3C(&qword_1000AE3E8, type metadata accessor for SASTeardown);
  v9 = Message.serializedData(partial:)();
  v11 = v10;

  sub_10006CDDC(v6, type metadata accessor for SASTeardown);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v11);

  return v12.super.isa;
}

@end
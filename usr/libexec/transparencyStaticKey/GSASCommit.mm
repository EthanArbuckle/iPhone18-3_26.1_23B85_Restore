@interface GSASCommit
- (NSData)aCommitRandom;
- (NSData)data;
- (NSData)publicInfo;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey10GSASCommit)init;
- (void)setACommitRandom:(id)random;
- (void)setPublicInfo:(id)info;
- (void)setSessionId:(id)id;
@end

@implementation GSASCommit

- (NSData)sessionId
{
  v3 = type metadata accessor for SASCommit(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();

  v9 = *v6;
  v10 = v6[1];
  sub_10005F0F8(*v6, v10);
  sub_10006CDDC(v6, type metadata accessor for SASCommit);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v10);

  return v11.super.isa;
}

- (void)setSessionId:(id)id
{
  idCopy = id;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
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

- (NSData)publicInfo
{
  v3 = type metadata accessor for SASCommit(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();

  v9 = *(v6 + 2);
  v10 = *(v6 + 3);
  sub_10005F0F8(v9, v10);
  sub_10006CDDC(v6, type metadata accessor for SASCommit);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v10);

  return v11.super.isa;
}

- (void)setPublicInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (NSData)aCommitRandom
{
  v3 = type metadata accessor for SASCommit(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();

  v9 = *(v6 + 4);
  v10 = *(v6 + 5);
  sub_10005F0F8(v9, v10);
  sub_10006CDDC(v6, type metadata accessor for SASCommit);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v10);

  return v11.super.isa;
}

- (void)setACommitRandom:(id)random
{
  randomCopy = random;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (_TtC21transparencyStaticKey10GSASCommit)init
{
  v3 = type metadata accessor for SASCommit(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000579A0(v6);
  sub_10006CEA4(v6, self + OBJC_IVAR____TtC21transparencyStaticKey10GSASCommit_commit, type metadata accessor for SASCommit);
  v7 = type metadata accessor for GSASCommit(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(GSASCommit *)&v9 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASCommit(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();
  sub_10006CE3C(&qword_1000AE3B8, type metadata accessor for SASCommit);
  v9 = Message.serializedData(partial:)();
  v11 = v10;

  sub_10006CDDC(v6, type metadata accessor for SASCommit);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v11);

  return v12.super.isa;
}

@end
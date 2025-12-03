@interface GSASConfirm
- (NSData)data;
- (NSData)peerSessionId;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey11GSASConfirm)init;
- (int64_t)sentTime;
- (void)setPeerSessionId:(id)id;
- (void)setSentTime:(int64_t)time;
- (void)setSessionId:(id)id;
@end

@implementation GSASConfirm

- (NSData)sessionId
{
  v3 = type metadata accessor for SASConfirm(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();

  v9 = *v6;
  v10 = v6[1];
  sub_10005F0F8(*v6, v10);
  sub_10006CDDC(v6, type metadata accessor for SASConfirm);
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

- (NSData)peerSessionId
{
  v3 = type metadata accessor for SASConfirm(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();

  v9 = *(v6 + 3);
  v10 = *(v6 + 4);
  sub_10005F0F8(v9, v10);
  sub_10006CDDC(v6, type metadata accessor for SASConfirm);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v10);

  return v11.super.isa;
}

- (void)setPeerSessionId:(id)id
{
  idCopy = id;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (int64_t)sentTime
{
  v3 = type metadata accessor for SASConfirm(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();

  v9 = *(v6 + 2);
  sub_10006CDDC(v6, type metadata accessor for SASConfirm);
  return v9;
}

- (void)setSentTime:(int64_t)time
{
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v8);
  *(v7 + 16) = time;
  v6(v8, 0);
}

- (_TtC21transparencyStaticKey11GSASConfirm)init
{
  v3 = type metadata accessor for SASConfirm(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058068(v6);
  sub_10006CEA4(v6, self + OBJC_IVAR____TtC21transparencyStaticKey11GSASConfirm_confirm, type metadata accessor for SASConfirm);
  v7 = type metadata accessor for GSASConfirm(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(GSASConfirm *)&v9 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASConfirm(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v7();
  sub_10006CE3C(&qword_1000AE430, type metadata accessor for SASConfirm);
  v9 = Message.serializedData(partial:)();
  v11 = v10;

  sub_10006CDDC(v6, type metadata accessor for SASConfirm);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v11);

  return v12.super.isa;
}

@end
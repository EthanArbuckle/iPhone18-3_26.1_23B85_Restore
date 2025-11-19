@interface GSASAnnounce
- (NSData)data;
- (NSData)peerSessionId;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey12GSASAnnounce)init;
- (void)aProtocolVersionArrayWithAddValue:(int64_t)a3;
- (void)setPeerSessionId:(id)a3;
- (void)setSessionId:(id)a3;
@end

@implementation GSASAnnounce

- (void)aProtocolVersionArrayWithAddValue:(int64_t)a3
{
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v13);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_10006CB38(0, *(v9 + 2) + 1, 1, v9);
    *v8 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_10006CB38((v11 > 1), v12 + 1, 1, v9);
    *v8 = v9;
  }

  *(v9 + 2) = v12 + 1;
  *&v9[8 * v12 + 32] = a3;
  v6(v13, 0);
}

- (NSData)sessionId
{
  v3 = type metadata accessor for SASAnnounce(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();

  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  sub_10005F0F8(v9, v10);
  sub_10006CDDC(v6, type metadata accessor for SASAnnounce);
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
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  *(v11 + 8) = v6;
  *(v11 + 16) = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (NSData)peerSessionId
{
  v3 = type metadata accessor for SASAnnounce(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();

  v9 = *(v6 + 3);
  v10 = *(v6 + 4);
  sub_10005F0F8(v9, v10);
  sub_10006CDDC(v6, type metadata accessor for SASAnnounce);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v10);

  return v11.super.isa;
}

- (void)setPeerSessionId:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & v5->super.isa) + 0x68);
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

- (_TtC21transparencyStaticKey12GSASAnnounce)init
{
  v3 = type metadata accessor for SASAnnounce(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000576BC(v6);
  sub_10006CEA4(v6, self + OBJC_IVAR____TtC21transparencyStaticKey12GSASAnnounce_announce, type metadata accessor for SASAnnounce);
  v7 = type metadata accessor for GSASAnnounce(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(GSASAnnounce *)&v9 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASAnnounce(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();
  sub_10006CE3C(&qword_1000AE3A0, type metadata accessor for SASAnnounce);
  v9 = Message.serializedData(partial:)();
  v11 = v10;

  sub_10006CDDC(v6, type metadata accessor for SASAnnounce);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v11);

  return v12.super.isa;
}

@end
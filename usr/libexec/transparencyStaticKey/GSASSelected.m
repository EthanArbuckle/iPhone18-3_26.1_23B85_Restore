@interface GSASSelected
- (NSData)data;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey12GSASSelected)init;
- (void)setSessionId:(id)a3;
@end

@implementation GSASSelected

- (NSData)sessionId
{
  v3 = type metadata accessor for SASSelected(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();

  v9 = *v6;
  v10 = v6[1];
  sub_10005F0F8(*v6, v10);
  sub_10006CDDC(v6, type metadata accessor for SASSelected);
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

- (_TtC21transparencyStaticKey12GSASSelected)init
{
  v3 = type metadata accessor for SASSelected(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100057A30(v6);
  sub_10006CEA4(v6, self + OBJC_IVAR____TtC21transparencyStaticKey12GSASSelected_selected, type metadata accessor for SASSelected);
  v7 = type metadata accessor for GSASSelected(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(GSASSelected *)&v9 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASSelected(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v7();
  sub_10006CE3C(&qword_1000AE3D0, type metadata accessor for SASSelected);
  v9 = Message.serializedData(partial:)();
  v11 = v10;

  sub_10006CDDC(v6, type metadata accessor for SASSelected);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v9, v11);

  return v12.super.isa;
}

@end
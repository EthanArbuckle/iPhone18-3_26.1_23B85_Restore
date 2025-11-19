@interface RPPairingBonjourResolveResponse
- (NSData)serverPublicKey;
- (NSUUID)bonjourServiceID;
- (_TtC8rapportd31RPPairingBonjourResolveResponse)init;
- (_TtC8rapportd31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)a3 bonjourServiceID:(id)a4;
@end

@implementation RPPairingBonjourResolveResponse

- (NSData)serverPublicKey
{
  v2 = *(self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey);
  v3 = *(self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  sub_1000C61D4(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000C4AA4(v2, v3);

  return v4.super.isa;
}

- (NSUUID)bonjourServiceID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8rapportd31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)a3 bonjourServiceID:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3;
  v14 = a4;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = (self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey);
  *v18 = v15;
  v18[1] = v17;
  (*(v9 + 16))(self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID, v12, v8);
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(RPPairingBonjourResolveResponse *)&v21 init];
  (*(v9 + 8))(v12, v8);
  return v19;
}

- (_TtC8rapportd31RPPairingBonjourResolveResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
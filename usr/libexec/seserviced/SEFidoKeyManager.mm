@interface SEFidoKeyManager
+ (_TtC10seserviced16SEFidoKeyManager)singleton;
- (BOOL)deleteKeyWithRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 error:(id *)a6;
- (BOOL)storeKeyWithRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 keyData:(id)a6 error:(id *)a7;
- (_TtC10seserviced16SEFidoKeyManager)init;
- (id)createFidoAttestationWithSecureElement:(id)a3 instanceAID:(id)a4 fidoKey:(id)a5 relyingParty:(id)a6 relyingPartyAccountHash:(id)a7 challenge:(id)a8 error:(id *)a9;
- (id)findKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 secureElement:(id)a6 error:(id *)a7;
- (id)performFidoSignatureWithSecureElement:(id)a3 instanceAID:(id)a4 loadedKey:(id)a5 relyingParty:(id)a6 relyingPartyAccountHash:(id)a7 challenge:(id)a8 ptaEndPointIdentifierForExtension:(id)a9 externalizedAuth:(id)a10 error:(id *)a11;
- (id)performFidoVerificationWithPublicKey:(id)a3 signedChallenge:(id)a4 error:(id *)a5;
- (void)reportCAEvent:(id)a3;
- (void)reportCAEvent:(id)a3 count:(int64_t)a4;
@end

@implementation SEFidoKeyManager

- (void)reportCAEvent:(id)a3 count:(int64_t)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a4;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_1000B6158(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC84(v5, isa);
}

- (void)reportCAEvent:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_1000B6158(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC84(v3, isa);
}

+ (_TtC10seserviced16SEFidoKeyManager)singleton
{
  if (qword_100501D60 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B7D8;

  return v3;
}

- (id)createFidoAttestationWithSecureElement:(id)a3 instanceAID:(id)a4 fidoKey:(id)a5 relyingParty:(id)a6 relyingPartyAccountHash:(id)a7 challenge:(id)a8 error:(id *)a9
{
  v38 = a3;
  v15 = a4;
  v37 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = self;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = sub_10031CD40(v38, v20, v22, v37, v36, v24, v25, v27);
  v33 = v32;

  sub_10006A178(v28, v30);

  sub_10006A178(v20, v22);
  v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v31, v33);

  return v34.super.isa;
}

- (id)performFidoSignatureWithSecureElement:(id)a3 instanceAID:(id)a4 loadedKey:(id)a5 relyingParty:(id)a6 relyingPartyAccountHash:(id)a7 challenge:(id)a8 ptaEndPointIdentifierForExtension:(id)a9 externalizedAuth:(id)a10 error:(id *)a11
{
  v49 = a3;
  v44 = a4;
  v48 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v46 = self;
  v21 = a9;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v25;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = v22;
  v30 = v24;
  if (v21)
  {
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v32;
    v45 = v31;
  }

  else
  {
    v43 = 0xF000000000000000;
    v45 = 0;
  }

  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = sub_100323540(v49, v29, v30, v48, v42, v47);
  v40 = v37;
  v41 = v36;

  sub_10006A178(v33, v35);
  sub_10006A2D0(v45, v43);
  sub_10006A178(v26, v28);

  sub_10006A178(v29, v30);
  v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v41, v40);

  return v38.super.isa;
}

- (id)performFidoVerificationWithPublicKey:(id)a3 signedChallenge:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = sub_10031E3AC(v10, v12);
  sub_10006A178(v13, v15);
  sub_10006A178(v10, v12);

  return v16;
}

- (id)findKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 secureElement:(id)a6 error:(id *)a7
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a6;
  v18 = self;
  if (a5)
  {
    v19 = a5;
    a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xF000000000000000;
  }

  sub_10031EFE8(v11, v13, v14, v16, a5, v21, a6);
  v23 = v22;
  v25 = v24;

  if (v23 >> 60 == 15)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    sub_10030990C(0, 1, 0x20746F6E2079654BLL, 0xEE003F646E756F66, 0);
    swift_willThrow();

    sub_10006A2D0(a5, v21);
    if (a7)
    {
      v26 = _convertErrorToNSError(_:)();

      v27 = v26;
      v28 = 0;
      *a7 = v26;
    }

    else
    {

      v28 = 0;
    }
  }

  else
  {

    sub_10006A2D0(a5, v21);
    v29 = v25;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v29, v23);
    v28 = isa;
  }

  return v28;
}

- (BOOL)storeKeyWithRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 keyData:(id)a6 error:(id *)a7
{
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a5;
  v16 = a6;
  v17 = self;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_10031FC68(v25, v11, v12, v14, v18, v20, v21, v23);
  sub_10006A178(v21, v23);
  sub_10006A178(v18, v20);

  return 1;
}

- (BOOL)deleteKeyWithRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 error:(id *)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = a5;
  v15 = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_1003203A4(v8, v10, v11, v13, v16, v18);
  sub_10006A178(v16, v18);

  return 1;
}

- (_TtC10seserviced16SEFidoKeyManager)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainGroup);
  *v3 = 0xD000000000000026;
  v3[1] = 0x800000010046ED50;
  v4 = OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_keychainWrapper;
  *(&self->super.isa + v4) = [objc_opt_self() sharedInstance];
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SEFidoKeyManager();
  return [(SEFidoKeyManager *)&v6 init];
}

@end
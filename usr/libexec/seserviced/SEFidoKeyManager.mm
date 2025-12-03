@interface SEFidoKeyManager
+ (_TtC10seserviced16SEFidoKeyManager)singleton;
- (BOOL)deleteKeyWithRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash error:(id *)error;
- (BOOL)storeKeyWithRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash keyData:(id)data error:(id *)error;
- (_TtC10seserviced16SEFidoKeyManager)init;
- (id)createFidoAttestationWithSecureElement:(id)element instanceAID:(id)d fidoKey:(id)key relyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge error:(id *)error;
- (id)findKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash secureElement:(id)element error:(id *)error;
- (id)performFidoSignatureWithSecureElement:(id)element instanceAID:(id)d loadedKey:(id)key relyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge ptaEndPointIdentifierForExtension:(id)extension externalizedAuth:(id)self0 error:(id *)self1;
- (id)performFidoVerificationWithPublicKey:(id)key signedChallenge:(id)challenge error:(id *)error;
- (void)reportCAEvent:(id)event;
- (void)reportCAEvent:(id)event count:(int64_t)count;
@end

@implementation SEFidoKeyManager

- (void)reportCAEvent:(id)event count:(int64_t)count
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = count;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_1000B6158(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC84(v5, isa);
}

- (void)reportCAEvent:(id)event
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

- (id)createFidoAttestationWithSecureElement:(id)element instanceAID:(id)d fidoKey:(id)key relyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge error:(id *)error
{
  elementCopy = element;
  dCopy = d;
  keyCopy = key;
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  selfCopy = self;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = sub_10031CD40(elementCopy, v20, v22, keyCopy, v36, v24, v25, v27);
  v33 = v32;

  sub_10006A178(v28, v30);

  sub_10006A178(v20, v22);
  v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v31, v33);

  return v34.super.isa;
}

- (id)performFidoSignatureWithSecureElement:(id)element instanceAID:(id)d loadedKey:(id)key relyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge ptaEndPointIdentifierForExtension:(id)extension externalizedAuth:(id)self0 error:(id *)self1
{
  elementCopy = element;
  dCopy = d;
  keyCopy = key;
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  authCopy = auth;
  selfCopy = self;
  extensionCopy = extension;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v25;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = v22;
  v30 = v24;
  if (extensionCopy)
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

  v36 = sub_100323540(elementCopy, v29, v30, keyCopy, v42, v47);
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

- (id)performFidoVerificationWithPublicKey:(id)key signedChallenge:(id)challenge error:(id *)error
{
  keyCopy = key;
  challengeCopy = challenge;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = sub_10031E3AC(v10, v12);
  sub_10006A178(v13, v15);
  sub_10006A178(v10, v12);

  return v16;
}

- (id)findKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash secureElement:(id)element error:(id *)error
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  elementCopy = element;
  selfCopy = self;
  if (keyHash)
  {
    keyHashCopy = keyHash;
    keyHash = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xF000000000000000;
  }

  sub_10031EFE8(v11, v13, v14, v16, keyHash, v21, element);
  v23 = v22;
  v25 = v24;

  if (v23 >> 60 == 15)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    sub_10030990C(0, 1, 0x20746F6E2079654BLL, 0xEE003F646E756F66, 0);
    swift_willThrow();

    sub_10006A2D0(keyHash, v21);
    if (error)
    {
      v26 = _convertErrorToNSError(_:)();

      v27 = v26;
      v28 = 0;
      *error = v26;
    }

    else
    {

      v28 = 0;
    }
  }

  else
  {

    sub_10006A2D0(keyHash, v21);
    v29 = v25;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v29, v23);
    v28 = isa;
  }

  return v28;
}

- (BOOL)storeKeyWithRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash keyData:(id)data error:(id *)error
{
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  keyHashCopy = keyHash;
  dataCopy = data;
  selfCopy = self;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_10031FC68(v25, v11, v12, v14, v18, v20, v21, v23);
  sub_10006A178(v21, v23);
  sub_10006A178(v18, v20);

  return 1;
}

- (BOOL)deleteKeyWithRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash error:(id *)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  keyHashCopy = keyHash;
  selfCopy = self;
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
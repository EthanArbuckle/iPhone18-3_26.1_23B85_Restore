@interface AccessoryKeystore
- (BOOL)deleteAllPeripheralIdentifiers:(id *)identifiers;
- (BOOL)deletePeripheralIdentifierForAccessoryIdentifier:(id)identifier error:(id *)error;
- (BOOL)establishRelationshipBetweenAccessoryAndControllerKey:(id)key error:(id *)error;
- (BOOL)getControllerPublicKey:(id *)key secretKey:(id *)secretKey username:(id *)username allowCreation:(BOOL)creation forAccessory:(id)accessory error:(id *)error;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)key controllerID:(id *)d;
- (BOOL)removeAccessoryKeyForName:(id)name error:(id *)error;
- (BOOL)removeAllAccessoryKeys:(id *)keys;
- (BOOL)removeControllerKeyPairForIdentifier:(id)identifier leaveTombstone:(BOOL)tombstone error:(id *)error;
- (BOOL)removeControllerKeyPairLeaveTombstone:(BOOL)tombstone error:(id *)error;
- (BOOL)removeControllerKeyPairWithError:(id *)error;
- (BOOL)saveLocalPairingIdentity:(id)identity syncable:(BOOL)syncable error:(id *)error;
- (BOOL)savePeripheralIdentifier:(id)identifier forAccessoryIdentifier:(id)accessoryIdentifier error:(id *)error;
- (BOOL)savePublicKey:(id)key forAccessoryName:(id)name error:(id *)error;
- (BOOL)updateActiveControllerPairingIdentifier:(id)identifier;
- (BOOL)updatePeripheralIdentifier:(id)identifier forAccessoryIdentifier:(id)accessoryIdentifier protocolVersion:(unint64_t)version previousVersion:(unint64_t *)previousVersion resumeSessionID:(unint64_t)d error:(id *)error;
- (NSString)activeControllerPairingIdentifier;
- (id)getAssociatedControllerKeyForAccessory:(id)accessory;
- (id)readControllerPairingKeyForAccessory:(id)accessory error:(id *)error;
- (id)readPeripheralIdentifierForAccessoryIdentifier:(id)identifier protocolVersion:(unint64_t *)version resumeSessionID:(unint64_t *)d error:(id *)error;
- (id)readPublicKeyForAccessoryName:(id)name registeredWithHomeKit:(BOOL *)kit error:(id *)error;
@end

@implementation AccessoryKeystore

- (BOOL)saveLocalPairingIdentity:(id)identity syncable:(BOOL)syncable error:(id *)error
{
  identityCopy = identity;
  selfCopy = self;
  sub_10017D4B0(identity);

  return 1;
}

- (BOOL)getControllerPublicKey:(id *)key secretKey:(id *)secretKey username:(id *)username allowCreation:(BOOL)creation forAccessory:(id)accessory error:(id *)error
{
  if (accessory)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  selfCopy = self;
  sub_10017905C(key, secretKey, username, creation, v13, v15);

  return 1;
}

- (BOOL)updateActiveControllerPairingIdentifier:(id)identifier
{
  if (identifier && (v3 = self, self = static String._unconditionallyBridgeFromObjectiveC(_:)(), v4))
  {
    selfCopy = self;
    v6 = v4;
    v7 = (v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
    v8 = *(&v3->super.isa + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
    v9 = *&v3->keyGroup[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController];
    v10 = v8 == selfCopy && v4 == v9;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      LOBYTE(self) = 0;
    }

    else
    {
      *v7 = selfCopy;
      v7[1] = v6;

      LOBYTE(self) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSString)activeControllerPairingIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
  v3 = *&self->keyGroup[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController];

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (BOOL)removeControllerKeyPairWithError:(id *)error
{
  selfCopy = self;
  sub_100178478(0, 0);

  return 1;
}

- (BOOL)removeControllerKeyPairLeaveTombstone:(BOOL)tombstone error:(id *)error
{
  selfCopy = self;
  sub_100178478(0, 0);

  return 1;
}

- (BOOL)removeControllerKeyPairForIdentifier:(id)identifier leaveTombstone:(BOOL)tombstone error:(id *)error
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_100178478(v6, v8);

  return 1;
}

- (id)readControllerPairingKeyForAccessory:(id)accessory error:(id *)error
{
  if (accessory)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    selfCopy = self;
    sub_100177B54(v6, v8, 0);
    v11 = v10;

    v15 = *(v11 + 32);

    v16 = v15;
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
    if (error)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v16 = 0;
      *error = v12;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

- (id)readPublicKeyForAccessoryName:(id)name registeredWithHomeKit:(BOOL *)kit error:(id *)error
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10 = sub_10017DA48(v6, v8);
  v12 = v11;

  v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v10, v12);

  return v13.super.isa;
}

- (BOOL)savePublicKey:(id)key forAccessoryName:(id)name error:(id *)error
{
  keyCopy = key;
  if (!key)
  {
    nameCopy = name;
    selfCopy = self;
    v12 = 0xF000000000000000;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  nameCopy2 = name;
  selfCopy2 = self;
  v10 = keyCopy;
  keyCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

LABEL_6:
  sub_1001796F4(keyCopy, v12, v13, v15);

  sub_1000A452C(keyCopy, v12);
  return 1;
}

- (BOOL)establishRelationshipBetweenAccessoryAndControllerKey:(id)key error:(id *)error
{
  keyCopy = key;
  selfCopy = self;
  sub_100179980(key);

  return 1;
}

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)key controllerID:(id *)d
{
  if (key)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10 = sub_100179C94(v6, v8, d);

  return v10 & 1;
}

- (BOOL)removeAccessoryKeyForName:(id)name error:(id *)error
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_1001780D0(v5, v7);

  return 1;
}

- (BOOL)removeAllAccessoryKeys:(id *)keys
{
  selfCopy = self;
  sub_1001780D0(0, 0);

  return 1;
}

- (BOOL)savePeripheralIdentifier:(id)identifier forAccessoryIdentifier:(id)accessoryIdentifier error:(id *)error
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v21[-v15];
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v16, v12, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  if (accessoryIdentifier)
  {
    accessoryIdentifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  selfCopy = self;
  sub_100179F78(v16, accessoryIdentifier, v18);
  sub_100095C84(v16, &qword_1002A7AF0, &qword_10023C9D0);

  return 1;
}

- (BOOL)deletePeripheralIdentifierForAccessoryIdentifier:(id)identifier error:(id *)error
{
  if (identifier)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_10017A924(v5, v7);

  return 1;
}

- (BOOL)deleteAllPeripheralIdentifiers:(id *)identifiers
{
  selfCopy = self;
  sub_10017ABD8();

  return 1;
}

- (id)getAssociatedControllerKeyForAccessory:(id)accessory
{
  if (accessory)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    selfCopy = self;
    sub_100177B54(v5, v7, 0);
    v11 = v10;

    v12 = *(v11 + 32);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)readPeripheralIdentifierForAccessoryIdentifier:(id)identifier protocolVersion:(unint64_t *)version resumeSessionID:(unint64_t *)d error:(id *)error
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  selfCopy = self;
  sub_10017AF58(identifier, v14, v12);

  v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);

  return v16.super.isa;
}

- (BOOL)updatePeripheralIdentifier:(id)identifier forAccessoryIdentifier:(id)accessoryIdentifier protocolVersion:(unint64_t)version previousVersion:(unint64_t *)previousVersion resumeSessionID:(unint64_t)d error:(id *)error
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v26[-v20];
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v14 + 32))(v21, v17, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v21, 1, 1, v13);
  }

  if (accessoryIdentifier)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    accessoryIdentifier = v23;
  }

  else
  {
    v22 = 0;
  }

  selfCopy = self;
  sub_10017DBCC(v21, v22, accessoryIdentifier, version, d);
  sub_100095C84(v21, &qword_1002A7AF0, &qword_10023C9D0);

  return 1;
}

@end
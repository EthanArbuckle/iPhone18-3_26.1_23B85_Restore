@interface AccessoryKeystore
- (BOOL)deleteAllPeripheralIdentifiers:(id *)a3;
- (BOOL)deletePeripheralIdentifierForAccessoryIdentifier:(id)a3 error:(id *)a4;
- (BOOL)establishRelationshipBetweenAccessoryAndControllerKey:(id)a3 error:(id *)a4;
- (BOOL)getControllerPublicKey:(id *)a3 secretKey:(id *)a4 username:(id *)a5 allowCreation:(BOOL)a6 forAccessory:(id)a7 error:(id *)a8;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3 controllerID:(id *)a4;
- (BOOL)removeAccessoryKeyForName:(id)a3 error:(id *)a4;
- (BOOL)removeAllAccessoryKeys:(id *)a3;
- (BOOL)removeControllerKeyPairForIdentifier:(id)a3 leaveTombstone:(BOOL)a4 error:(id *)a5;
- (BOOL)removeControllerKeyPairLeaveTombstone:(BOOL)a3 error:(id *)a4;
- (BOOL)removeControllerKeyPairWithError:(id *)a3;
- (BOOL)saveLocalPairingIdentity:(id)a3 syncable:(BOOL)a4 error:(id *)a5;
- (BOOL)savePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 error:(id *)a5;
- (BOOL)savePublicKey:(id)a3 forAccessoryName:(id)a4 error:(id *)a5;
- (BOOL)updateActiveControllerPairingIdentifier:(id)a3;
- (BOOL)updatePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 previousVersion:(unint64_t *)a6 resumeSessionID:(unint64_t)a7 error:(id *)a8;
- (NSString)activeControllerPairingIdentifier;
- (id)getAssociatedControllerKeyForAccessory:(id)a3;
- (id)readControllerPairingKeyForAccessory:(id)a3 error:(id *)a4;
- (id)readPeripheralIdentifierForAccessoryIdentifier:(id)a3 protocolVersion:(unint64_t *)a4 resumeSessionID:(unint64_t *)a5 error:(id *)a6;
- (id)readPublicKeyForAccessoryName:(id)a3 registeredWithHomeKit:(BOOL *)a4 error:(id *)a5;
@end

@implementation AccessoryKeystore

- (BOOL)saveLocalPairingIdentity:(id)a3 syncable:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  sub_10017D4B0(a3);

  return 1;
}

- (BOOL)getControllerPublicKey:(id *)a3 secretKey:(id *)a4 username:(id *)a5 allowCreation:(BOOL)a6 forAccessory:(id)a7 error:(id *)a8
{
  if (a7)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = self;
  sub_10017905C(a3, a4, a5, a6, v13, v15);

  return 1;
}

- (BOOL)updateActiveControllerPairingIdentifier:(id)a3
{
  if (a3 && (v3 = self, self = static String._unconditionallyBridgeFromObjectiveC(_:)(), v4))
  {
    v5 = self;
    v6 = v4;
    v7 = (v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
    v8 = *(&v3->super.isa + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
    v9 = *&v3->keyGroup[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController];
    v10 = v8 == v5 && v4 == v9;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      LOBYTE(self) = 0;
    }

    else
    {
      *v7 = v5;
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

- (BOOL)removeControllerKeyPairWithError:(id *)a3
{
  v3 = self;
  sub_100178478(0, 0);

  return 1;
}

- (BOOL)removeControllerKeyPairLeaveTombstone:(BOOL)a3 error:(id *)a4
{
  v4 = self;
  sub_100178478(0, 0);

  return 1;
}

- (BOOL)removeControllerKeyPairForIdentifier:(id)a3 leaveTombstone:(BOOL)a4 error:(id *)a5
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_100178478(v6, v8);

  return 1;
}

- (id)readControllerPairingKeyForAccessory:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = self;
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
    if (a4)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v16 = 0;
      *a4 = v12;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

- (id)readPublicKeyForAccessoryName:(id)a3 registeredWithHomeKit:(BOOL *)a4 error:(id *)a5
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  v10 = sub_10017DA48(v6, v8);
  v12 = v11;

  v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v10, v12);

  return v13.super.isa;
}

- (BOOL)savePublicKey:(id)a3 forAccessoryName:(id)a4 error:(id *)a5
{
  v6 = a3;
  if (!a3)
  {
    v16 = a4;
    v17 = self;
    v12 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  v8 = a4;
  v9 = self;
  v10 = v6;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

LABEL_6:
  sub_1001796F4(v6, v12, v13, v15);

  sub_1000A452C(v6, v12);
  return 1;
}

- (BOOL)establishRelationshipBetweenAccessoryAndControllerKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  sub_100179980(a3);

  return 1;
}

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3 controllerID:(id *)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  v10 = sub_100179C94(v6, v8, a4);

  return v10 & 1;
}

- (BOOL)removeAccessoryKeyForName:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self;
  sub_1001780D0(v5, v7);

  return 1;
}

- (BOOL)removeAllAccessoryKeys:(id *)a3
{
  v3 = self;
  sub_1001780D0(0, 0);

  return 1;
}

- (BOOL)savePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 error:(id *)a5
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
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v16, v12, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = self;
  sub_100179F78(v16, a4, v18);
  sub_100095C84(v16, &qword_1002A7AF0, &qword_10023C9D0);

  return 1;
}

- (BOOL)deletePeripheralIdentifierForAccessoryIdentifier:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self;
  sub_10017A924(v5, v7);

  return 1;
}

- (BOOL)deleteAllPeripheralIdentifiers:(id *)a3
{
  v3 = self;
  sub_10017ABD8();

  return 1;
}

- (id)getAssociatedControllerKeyForAccessory:(id)a3
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = self;
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

- (id)readPeripheralIdentifierForAccessoryIdentifier:(id)a3 protocolVersion:(unint64_t *)a4 resumeSessionID:(unint64_t *)a5 error:(id *)a6
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = self;
  sub_10017AF58(a3, v14, v12);

  v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);

  return v16.super.isa;
}

- (BOOL)updatePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 previousVersion:(unint64_t *)a6 resumeSessionID:(unint64_t)a7 error:(id *)a8
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
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v14 + 32))(v21, v17, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v21, 1, 1, v13);
  }

  if (a4)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v23;
  }

  else
  {
    v22 = 0;
  }

  v24 = self;
  sub_10017DBCC(v21, v22, a4, a5, a7);
  sub_100095C84(v21, &qword_1002A7AF0, &qword_10023C9D0);

  return 1;
}

@end
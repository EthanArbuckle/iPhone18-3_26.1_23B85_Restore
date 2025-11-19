@interface AccessoryManager
- (BOOL)isPaired:(id)a3;
- (id)cachedAccessoryForIdentifier:(id)a3;
- (id)pairSetupSession:(id)a3 pairSetupType:(unint64_t)a4 enhancedEncryption:(BOOL)a5;
- (void)connectToBTLEAccessoryServer:(id)a3;
- (void)disconnectFromBTLEAccessoryServer:(id)a3;
- (void)pauseScans;
- (void)saveCacheToDisk:(id)a3;
- (void)setConnectionLatency:(int64_t)a3 forPeripheral:(id)a4;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
- (void)updateBroadcastKeyForIdentifer:(id)a3 key:(id)a4 keyUpdatedStateNumber:(id)a5 keyUpdatedTime:(double)a6;
- (void)updateCachedStateForIdentifier:(id)a3 stateNumber:(id)a4;
@end

@implementation AccessoryManager

- (void)startDiscoveringAccessoryServers
{
  v2 = self;
  sub_1000D828C();
}

- (void)stopDiscoveringAccessoryServers
{
  v2 = self;
  sub_1000D82E0();
}

- (void)connectToBTLEAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E49D4("HAP requested BLE connect, ignoring.");
}

- (void)disconnectFromBTLEAccessoryServer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000D8A6C(a3);
}

- (void)setConnectionLatency:(int64_t)a3 forPeripheral:(id)a4
{
  v7 = a4;
  v8 = self;
  sub_1000D8F90(a3, a4);
}

- (id)cachedAccessoryForIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_1000D9230(v4, v6);

  return v8;
}

- (void)saveCacheToDisk:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000DA6AC(a3);
}

- (void)updateBroadcastKeyForIdentifer:(id)a3 key:(id)a4 keyUpdatedStateNumber:(id)a5 keyUpdatedTime:(double)a6
{
  v7 = a4;
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v7)
    {
LABEL_3:
      v12 = v7;
      v13 = a5;
      v14 = self;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = a5;
  v18 = self;
  v16 = 0xF000000000000000;
LABEL_6:
  sub_1000E4B34(v9, v11, "updateBroadcastKey(%s)");
  sub_1000A452C(v7, v16);
}

- (void)updateCachedStateForIdentifier:(id)a3 stateNumber:(id)a4
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

  v9 = a4;
  v10 = self;
  sub_1000DB4BC(v6, v8, a4);
}

- (void)pauseScans
{
  *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan) = 0;
  v2 = qword_1002A67A0;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1000E4E98();
}

- (BOOL)isPaired:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_1000DBA24(v4, v6);

  return v8;
}

- (id)pairSetupSession:(id)a3 pairSetupType:(unint64_t)a4 enhancedEncryption:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v8 = self;
    v9 = swift_dynamicCastObjCProtocolUnconditional();
    objc_allocWithZone(type metadata accessor for DKPairSetupSession());
    v10 = a3;
    v11 = v8;
    v12 = sub_1000B2F34(0, a4, v5, v9);
    v13 = *&v11[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingSetup];
    *&v11[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingSetup] = v12;

    v14 = v12;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return self;
}

@end
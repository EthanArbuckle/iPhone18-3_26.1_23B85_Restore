@interface AccessoryManager
- (BOOL)isPaired:(id)paired;
- (id)cachedAccessoryForIdentifier:(id)identifier;
- (id)pairSetupSession:(id)session pairSetupType:(unint64_t)type enhancedEncryption:(BOOL)encryption;
- (void)connectToBTLEAccessoryServer:(id)server;
- (void)disconnectFromBTLEAccessoryServer:(id)server;
- (void)pauseScans;
- (void)saveCacheToDisk:(id)disk;
- (void)setConnectionLatency:(int64_t)latency forPeripheral:(id)peripheral;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
- (void)updateBroadcastKeyForIdentifer:(id)identifer key:(id)key keyUpdatedStateNumber:(id)number keyUpdatedTime:(double)time;
- (void)updateCachedStateForIdentifier:(id)identifier stateNumber:(id)number;
@end

@implementation AccessoryManager

- (void)startDiscoveringAccessoryServers
{
  selfCopy = self;
  sub_1000D828C();
}

- (void)stopDiscoveringAccessoryServers
{
  selfCopy = self;
  sub_1000D82E0();
}

- (void)connectToBTLEAccessoryServer:(id)server
{
  serverCopy = server;
  selfCopy = self;
  sub_1000E49D4("HAP requested BLE connect, ignoring.");
}

- (void)disconnectFromBTLEAccessoryServer:(id)server
{
  serverCopy = server;
  selfCopy = self;
  sub_1000D8A6C(server);
}

- (void)setConnectionLatency:(int64_t)latency forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_1000D8F90(latency, peripheral);
}

- (id)cachedAccessoryForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1000D9230(v4, v6);

  return v8;
}

- (void)saveCacheToDisk:(id)disk
{
  diskCopy = disk;
  selfCopy = self;
  sub_1000DA6AC(disk);
}

- (void)updateBroadcastKeyForIdentifer:(id)identifer key:(id)key keyUpdatedStateNumber:(id)number keyUpdatedTime:(double)time
{
  keyCopy = key;
  if (identifer)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (keyCopy)
    {
LABEL_3:
      v12 = keyCopy;
      numberCopy = number;
      selfCopy = self;
      keyCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (key)
    {
      goto LABEL_3;
    }
  }

  numberCopy2 = number;
  selfCopy2 = self;
  v16 = 0xF000000000000000;
LABEL_6:
  sub_1000E4B34(v9, v11, "updateBroadcastKey(%s)");
  sub_1000A452C(keyCopy, v16);
}

- (void)updateCachedStateForIdentifier:(id)identifier stateNumber:(id)number
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

  numberCopy = number;
  selfCopy = self;
  sub_1000DB4BC(v6, v8, number);
}

- (void)pauseScans
{
  *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan) = 0;
  v2 = qword_1002A67A0;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1000E4E98();
}

- (BOOL)isPaired:(id)paired
{
  if (paired)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1000DBA24(v4, v6);

  return v8;
}

- (id)pairSetupSession:(id)session pairSetupType:(unint64_t)type enhancedEncryption:(BOOL)encryption
{
  if (session)
  {
    encryptionCopy = encryption;
    selfCopy = self;
    v9 = swift_dynamicCastObjCProtocolUnconditional();
    objc_allocWithZone(type metadata accessor for DKPairSetupSession());
    sessionCopy = session;
    v11 = selfCopy;
    v12 = sub_1000B2F34(0, type, encryptionCopy, v9);
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
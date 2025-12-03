@interface SDB332SetupAgent
+ (_TtC16DaemoniOSLibrary16SDB332SetupAgent)shared;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (NSString)machServiceName;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (void)activate;
- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types;
- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d;
- (void)blePairingDataUpdate:(id)update pairType:(int)type pairData:(id)data accessory:(id)accessory blePairingUUID:(id)d;
- (void)blePairingInfoUpdate:(id)update pairType:(int)type pairInfoList:(id)list accessory:(id)accessory blePairingUUID:(id)d;
- (void)blePairingStateUpdate:(id)update validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn accessory:(id)accessory blePairingUUID:(id)d;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)enableBluetoothTapped;
- (void)pairTapped;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)resetUIUpdatesFlagWithUndimScreen:(BOOL)screen;
- (void)showEducationUIIfNecessary;
- (void)startBatteryScannerForPeripheral:(id)peripheral;
- (void)startScanning;
- (void)stopBatteryScanner;
- (void)stopScanning;
@end

@implementation SDB332SetupAgent

+ (_TtC16DaemoniOSLibrary16SDB332SetupAgent)shared
{
  if (qword_100973B70 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A0D78;

  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for SDB332SetupAgent(0);
  [(SDXPCDaemon *)&v4 dealloc];
}

- (void)activate
{
  selfCopy = self;
  sub_1005F3E3C();
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_100620D24(&unk_1008EAF18, sub_100625244, &unk_1008EAF30);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_1006159F4(handleCopy, error);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_100620FE4();
}

- (void)pairTapped
{
  selfCopy = self;
  sub_100616038();
}

- (void)showEducationUIIfNecessary
{
  selfCopy = self;
  sub_100620D24(&unk_1008EAE78, sub_100625230, &unk_1008EAE90);
}

- (NSString)machServiceName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSXPCInterface)exportedInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SDB332AgentProtocol];

  return v2;
}

- (NSXPCInterface)remoteObjectInterface
{
  v2 = sub_1006212B0();

  return v2;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  v6 = sub_10062144C(connectionCopy);

  return v6 & 1;
}

- (void)connectionEstablished:(id)established
{
  establishedCopy = established;
  selfCopy = self;
  sub_10061661C(establishedCopy);
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  selfCopy = self;
  sub_1006169C8(invalidatedCopy);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100616D20(stateCopy);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_1006216B0(peripheralCopy);
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_100621804(peripheralCopy);
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_100621E8C(peripheralCopy);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_1006224DC(managerCopy);
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  selfCopy = self;
  sub_100622838(agentCopy, pairingCopy, type);
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  selfCopy = self;
  sub_1006230A0(pairingCopy);
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  sub_1006177F0(agentCopy, pairingCopy);
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  selfCopy = self;
  sub_10061917C(agentCopy, unpairCopy);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_100623718(peripheralCopy);
}

- (void)resetUIUpdatesFlagWithUndimScreen:(BOOL)screen
{
  selfCopy = self;
  sub_100619CA4(screen);
}

- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  pairingCopy = pairing;
  dCopy = d;
  dictCopy = dict;
  typesCopy = types;
  selfCopy = self;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  sub_1006239F0(v12, v14, v20, v22, v23, v24, v26);
  sub_100026AC0(v24, v26);

  sub_100026AC0(v20, v22);
}

- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  pairingCopy = pairing;
  dCopy = d;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100623D2C(v8, v10, v14, v16);
  sub_100026AC0(v14, v16);
}

- (void)blePairingStateUpdate:(id)update validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn accessory:(id)accessory blePairingUUID:(id)d
{
  updateCopy = update;
  dCopy = d;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_100624028(mask, on, state, modeOn);
  sub_100026AC0(v16, v18);
}

- (void)blePairingInfoUpdate:(id)update pairType:(int)type pairInfoList:(id)list accessory:(id)accessory blePairingUUID:(id)d
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  updateCopy = update;
  dCopy = d;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10062430C(v10);
  sub_100026AC0(v14, v16);
}

- (void)blePairingDataUpdate:(id)update pairType:(int)type pairData:(id)data accessory:(id)accessory blePairingUUID:(id)d
{
  updateCopy = update;
  dataCopy = data;
  accessoryCopy = accessory;
  dCopy = d;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_1006245E8(type, v16, v18);
  sub_100026AC0(v19, v21);
  sub_100026AC0(v16, v18);
}

- (void)startScanning
{
  selfCopy = self;
  sub_10061D5E0();
}

- (void)stopScanning
{
  selfCopy = self;
  sub_10061D8B8();
}

- (void)startBatteryScannerForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_10061DA24(peripheralCopy);
}

- (void)stopBatteryScanner
{
  selfCopy = self;
  sub_10061F94C();
}

- (void)enableBluetoothTapped
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "enableBluetoothTapped", v3, 2u);
  }

  sharedMonitor = [objc_opt_self() sharedMonitor];
  if (sharedMonitor)
  {
    v5 = sharedMonitor;
    [sharedMonitor setBluetoothEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

@end
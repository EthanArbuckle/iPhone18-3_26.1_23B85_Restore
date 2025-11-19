@interface SDB332SetupAgent
+ (_TtC16DaemoniOSLibrary16SDB332SetupAgent)shared;
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (NSString)machServiceName;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (void)activate;
- (void)blePairing:(id)a3 accessoryAttached:(id)a4 blePairingUUID:(id)a5 accInfoDict:(id)a6 supportedPairTypes:(id)a7;
- (void)blePairing:(id)a3 accessoryDetached:(id)a4 blePairingUUID:(id)a5;
- (void)blePairingDataUpdate:(id)a3 pairType:(int)a4 pairData:(id)a5 accessory:(id)a6 blePairingUUID:(id)a7;
- (void)blePairingInfoUpdate:(id)a3 pairType:(int)a4 pairInfoList:(id)a5 accessory:(id)a6 blePairingUUID:(id)a7;
- (void)blePairingStateUpdate:(id)a3 validMask:(unsigned int)a4 btRadioOn:(BOOL)a5 pairingState:(int)a6 pairingModeOn:(BOOL)a7 accessory:(id)a8 blePairingUUID:(id)a9;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)dealloc;
- (void)enableBluetoothTapped;
- (void)pairTapped;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)resetUIUpdatesFlagWithUndimScreen:(BOOL)a3;
- (void)showEducationUIIfNecessary;
- (void)startBatteryScannerForPeripheral:(id)a3;
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
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for SDB332SetupAgent(0);
  [(SDXPCDaemon *)&v4 dealloc];
}

- (void)activate
{
  v2 = self;
  sub_1005F3E3C();
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100620D24(&unk_1008EAF18, sub_100625244, &unk_1008EAF30);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1006159F4(v6, a4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100620FE4();
}

- (void)pairTapped
{
  v2 = self;
  sub_100616038();
}

- (void)showEducationUIIfNecessary
{
  v2 = self;
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

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10062144C(v4);

  return v6 & 1;
}

- (void)connectionEstablished:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10061661C(v4);
}

- (void)connectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006169C8(v4);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100616D20(v4);
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006216B0(v7);
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100621804(v9);
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100621E8C(v9);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = self;
  sub_1006224DC(v9);
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_100622838(v10, v11, a5);
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1006230A0(v9);
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006177F0(v6, v7);
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10061917C(v6, v7);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100623718(v6);
}

- (void)resetUIUpdatesFlagWithUndimScreen:(BOOL)a3
{
  v4 = self;
  sub_100619CA4(a3);
}

- (void)blePairing:(id)a3 accessoryAttached:(id)a4 blePairingUUID:(id)a5 accInfoDict:(id)a6 supportedPairTypes:(id)a7
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = self;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  sub_1006239F0(v12, v14, v20, v22, v23, v24, v26);
  sub_100026AC0(v24, v26);

  sub_100026AC0(v20, v22);
}

- (void)blePairing:(id)a3 accessoryDetached:(id)a4 blePairingUUID:(id)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100623D2C(v8, v10, v14, v16);
  sub_100026AC0(v14, v16);
}

- (void)blePairingStateUpdate:(id)a3 validMask:(unsigned int)a4 btRadioOn:(BOOL)a5 pairingState:(int)a6 pairingModeOn:(BOOL)a7 accessory:(id)a8 blePairingUUID:(id)a9
{
  v14 = a3;
  v15 = a9;
  v19 = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_100624028(a4, a5, a6, a7);
  sub_100026AC0(v16, v18);
}

- (void)blePairingInfoUpdate:(id)a3 pairType:(int)a4 pairInfoList:(id)a5 accessory:(id)a6 blePairingUUID:(id)a7
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a7;
  v13 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10062430C(v10);
  sub_100026AC0(v14, v16);
}

- (void)blePairingDataUpdate:(id)a3 pairType:(int)a4 pairData:(id)a5 accessory:(id)a6 blePairingUUID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22 = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_1006245E8(a4, v16, v18);
  sub_100026AC0(v19, v21);
  sub_100026AC0(v16, v18);
}

- (void)startScanning
{
  v2 = self;
  sub_10061D5E0();
}

- (void)stopScanning
{
  v2 = self;
  sub_10061D8B8();
}

- (void)startBatteryScannerForPeripheral:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10061DA24(v4);
}

- (void)stopBatteryScanner
{
  v2 = self;
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

  v4 = [objc_opt_self() sharedMonitor];
  if (v4)
  {
    v5 = v4;
    [v4 setBluetoothEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

@end
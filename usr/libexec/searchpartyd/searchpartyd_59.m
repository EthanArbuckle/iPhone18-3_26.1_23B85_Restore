uint64_t sub_100620924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccessoryInfoEndPoint();
  v32[4] = sub_100009774(&qword_1016A59D8, type metadata accessor for AccessoryInfoEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccessoryInfoEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100620D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for UnpairEndPoint();
  v32[4] = sub_100009774(&qword_1016A59F0, type metadata accessor for UnpairEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for UnpairEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100621154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for PairingLockCheckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5AC8, type metadata accessor for PairingLockCheckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for PairingLockCheckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10062156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AirPodsUnpairEndPoint();
  v32[4] = sub_100009774(&qword_1016A59E8, type metadata accessor for AirPodsUnpairEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AirPodsUnpairEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100621984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccessoryUnpairEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B68, type metadata accessor for AccessoryUnpairEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccessoryUnpairEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100621D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccessoryPairingLockCheckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5B70, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_1006221B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccessoryPairingLockAckEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B60, type metadata accessor for AccessoryPairingLockAckEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccessoryPairingLockAckEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_1006225CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for PairingLockAckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5A38, type metadata accessor for PairingLockAckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for PairingLockAckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_1006229E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for FetchEndpoint();
  v32[4] = sub_100009774(&qword_1016A59A8, type metadata accessor for FetchEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for FetchEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100622DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for PencilUnpairEndPoint();
  v32[4] = sub_100009774(&qword_1016A59C0, type metadata accessor for PencilUnpairEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for PencilUnpairEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100623214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for SubmitEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B50, type metadata accessor for SubmitEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for SubmitEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10062362C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AirPodsPairingLockCheckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5AA0, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100623A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AirPodsPairingLockAckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5A98, type metadata accessor for AirPodsPairingLockAckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AirPodsPairingLockAckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100623E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for RoleCategoriesEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B40, type metadata accessor for RoleCategoriesEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for RoleCategoriesEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100624274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for ConfigurationEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B48, type metadata accessor for ConfigurationEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for ConfigurationEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10062468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccountCheckEndpoint();
  v32[4] = sub_100009774(&qword_1016A59E0, type metadata accessor for AccountCheckEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccountCheckEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100624AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for SubmitUTInfoEndpoint(0);
  v32[4] = sub_100009774(&qword_1016A5AE0, type metadata accessor for SubmitUTInfoEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for SubmitUTInfoEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_100624EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for PairingLockUpdateEndPoint();
  v32[4] = sub_100009774(&qword_1016A5A30, type metadata accessor for PairingLockUpdateEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for PairingLockUpdateEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_1006252D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000280DC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10000A748(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10062536C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100DE8BCC(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1006254B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RawSearchResult();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v48 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v48 - v17;
  v49 = *(a1 + 16);
  if (v49)
  {
    v19 = 0;
    v48 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v20 = *(v16 + 72);
    v52 = v14;
    v53 = &v48 - v17;
    v50 = v2;
    while (1)
    {
      v51 = v19;
      sub_10062CD24(v48 + v20 * v19, v18, type metadata accessor for RawSearchResult);
      v21 = *v2;
      v22 = *(*v2 + 40);
      Hasher.init(_seed:)();
      sub_100D15128();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v21 + 32);
      v25 = v23 & ~v24;
      if ((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        v27 = *v18;
        do
        {
          sub_10062CD24(*(v21 + 48) + v25 * v20, v8, type metadata accessor for RawSearchResult);
          if (*v8 == v27 && (v28 = v4[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v8[v4[6]] == *&v53[v4[6]] && *&v8[v4[7]] == *&v53[v4[7]] && *&v8[v4[8]] == *&v53[v4[8]])
          {
            v29 = v4[12];
            v30 = static UUID.== infix(_:_:)();
            sub_10062CBB8(v8, type metadata accessor for RawSearchResult);
            if (v30)
            {
              v18 = v53;
              result = sub_10062CBB8(v53, type metadata accessor for RawSearchResult);
              v2 = v50;
              goto LABEL_35;
            }
          }

          else
          {
            sub_10062CBB8(v8, type metadata accessor for RawSearchResult);
          }

          v25 = (v25 + 1) & v26;
        }

        while (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
      }

      v2 = v50;
      v31 = *v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v52;
      v18 = v53;
      sub_10062CD24(v53, v52, type metadata accessor for RawSearchResult);
      v54 = *v2;
      v34 = v54;
      v35 = v54[2];
      if (v54[3] <= v35)
      {
        v36 = v35 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_100DF50BC(v36);
        }

        else
        {
          sub_100E08824(v36);
        }

        v34 = v54;
        v37 = v54[5];
        Hasher.init(_seed:)();
        sub_100D15128();
        v38 = Hasher._finalize()();
        v39 = -1 << *(v34 + 32);
        v25 = v38 & ~v39;
        if ((*(v34 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25))
        {
          v40 = ~v39;
          v41 = *v33;
          do
          {
            sub_10062CD24(v34[6] + v25 * v20, v11, type metadata accessor for RawSearchResult);
            if (*v11 == v41 && (v42 = v4[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v11[v4[6]] == *&v52[v4[6]] && *&v11[v4[7]] == *&v52[v4[7]] && *&v11[v4[8]] == *&v52[v4[8]])
            {
              v43 = v4[12];
              v44 = static UUID.== infix(_:_:)();
              sub_10062CBB8(v11, type metadata accessor for RawSearchResult);
              if (v44)
              {
                goto LABEL_38;
              }
            }

            else
            {
              sub_10062CBB8(v11, type metadata accessor for RawSearchResult);
            }

            v25 = (v25 + 1) & v40;
          }

          while (((*(v34 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) != 0);
          v2 = v50;
          v33 = v52;
        }

        v18 = v53;
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100E04FE0();
        v34 = v54;
      }

      *(v34 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v25;
      sub_10062CC64(v33, v34[6] + v25 * v20, type metadata accessor for RawSearchResult);
      result = sub_10062CBB8(v18, type metadata accessor for RawSearchResult);
      v45 = v34[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      v34[2] = v47;
      *v2 = v34;
LABEL_35:
      v19 = v51 + 1;
      if (v51 + 1 == v49)
      {
        return result;
      }
    }

    __break(1u);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100625A2C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_100DF0E40(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100625B10(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_100625BC8(char *__src, char *a2, unint64_t a3, char *__dst, uint64_t a5)
{
  v61 = a5;
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    if (__dst != a2 || &a2[40 * v12] <= __dst)
    {
      memmove(__dst, a2, 40 * v12);
    }

    v13 = &v5[40 * v12];
    if (v11 < 40 || v7 <= v8)
    {
      v51 = v7;
    }

    else
    {
      do
      {
        __dsta = v7;
        v29 = (v7 - 40);
        v30 = (v13 - 40);
        v6 -= 40;
        v31 = v61;
        while (1)
        {
          sub_10001F280(v30, v58);
          v7 = v29;
          sub_10001F280(v29, v55);
          v34 = v59;
          v35 = v60;
          sub_1000035D0(v58, v59);
          v36 = (*(v35 + 184))(v34, v35);
          v37 = sub_1005E47E8(v36, v31);
          LOBYTE(v35) = v38;

          if (v35)
          {
            v39 = 0;
          }

          else
          {
            v41 = v56;
            v40 = v57;
            sub_1000035D0(v55, v56);
            v42 = (*(v40 + 184))(v41, v40);
            v43 = sub_1005E47E8(v42, v61);
            v45 = v44;

            v33 = v37 < v43;
            v31 = v61;
            v46 = v33;
            v39 = (v45 & 1) == 0 && v46;
          }

          sub_100007BAC(v55);
          sub_100007BAC(v58);
          if (v39)
          {
            break;
          }

          if (v6 + 40 != v30 + 40)
          {
            v47 = *v30;
            v48 = *(v30 + 16);
            *(v6 + 32) = *(v30 + 32);
            *v6 = v47;
            *(v6 + 16) = v48;
          }

          v32 = v30 - 40;
          v6 -= 40;
          v33 = v30 > v5;
          v30 -= 40;
          v29 = v7;
          if (!v33)
          {
            v13 = (v32 + 40);
            v51 = __dsta;
            goto LABEL_45;
          }
        }

        v51 = v7;
        if ((v6 + 40) != __dsta)
        {
          v49 = *v7;
          v50 = *(v7 + 1);
          *(v6 + 32) = *(v7 + 4);
          *v6 = v49;
          *(v6 + 16) = v50;
        }

        v13 = (v30 + 40);
      }

      while (v30 + 40 > v5 && v7 > v8);
      v13 = (v30 + 40);
    }
  }

  else
  {
    if (__dst != __src || &__src[40 * v10] <= __dst)
    {
      memmove(__dst, __src, 40 * v10);
    }

    v13 = &v5[40 * v10];
    if (v9 >= 40 && v7 < v6)
    {
      while (1)
      {
        sub_10001F280(v7, v58);
        sub_10001F280(v5, v55);
        v14 = v59;
        v15 = v60;
        sub_1000035D0(v58, v59);
        v16 = (*(v15 + 184))(v14, v15);
        v17 = sub_1005E47E8(v16, v61);
        v19 = v18;

        if (v19)
        {
          break;
        }

        v20 = v56;
        v21 = v57;
        sub_1000035D0(v55, v56);
        v22 = (*(v21 + 184))(v20, v21);
        v23 = sub_1005E47E8(v22, v61);
        LOBYTE(v21) = v24;

        if (v21)
        {
          break;
        }

        sub_100007BAC(v55);
        sub_100007BAC(v58);
        if (v17 >= v23)
        {
          goto LABEL_10;
        }

        v25 = v7;
        v26 = v8 == v7;
        v7 += 40;
        if (!v26)
        {
          goto LABEL_11;
        }

LABEL_12:
        v8 += 40;
        if (v5 >= v13 || v7 >= v6)
        {
          goto LABEL_43;
        }
      }

      sub_100007BAC(v55);
      sub_100007BAC(v58);
LABEL_10:
      v25 = v5;
      v26 = v8 == v5;
      v5 += 40;
      if (v26)
      {
        goto LABEL_12;
      }

LABEL_11:
      v27 = *v25;
      v28 = *(v25 + 1);
      *(v8 + 4) = *(v25 + 4);
      *v8 = v27;
      *(v8 + 1) = v28;
      goto LABEL_12;
    }

LABEL_43:
    v51 = v8;
  }

LABEL_45:
  v52 = (v13 - v5) / 40;
  if (v51 != v5 || v51 >= &v5[40 * v52])
  {
    memmove(v51, v5, 40 * v52);
  }

  return 1;
}

uint64_t sub_100625FE0(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_100B31E68(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_100625BC8(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_10062618C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v145 = _swiftEmptyArrayStorage;
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v132 = _swiftEmptyArrayStorage;
    v138 = a5;
    v124 = a4;
    while (1)
    {
      v9 = v8;
      v10 = v8 + 1;
      v126 = v8;
      if (v8 + 1 < v6)
      {
        __dst = v6;
        v11 = *a3;
        sub_10001F280(*a3 + 40 * v10, &v142);
        sub_10001F280(v11 + 40 * v9, v139);
        v12 = v143;
        v13 = v144;
        sub_1000035D0(&v142, v143);
        v14 = (*(v13 + 184))(v12, v13);
        v15 = sub_1005E47E8(v14, a5);
        LOBYTE(v13) = v16;

        if (v13)
        {
          v133 = 0;
        }

        else
        {
          v17 = v140;
          v18 = v141;
          sub_1000035D0(v139, v140);
          v19 = (*(v18 + 184))(v17, v18);
          v20 = sub_1005E47E8(v19, a5);
          LOBYTE(v18) = v21;

          v22 = v15 < v20;
          if (v18)
          {
            v22 = 0;
          }

          v133 = v22;
        }

        sub_100007BAC(v139);
        sub_100007BAC(&v142);
        v23 = v126 + 2;
        v24 = v11 + 40 * v126 + 80;
        v25 = 40 * v126 + 40;
        v26 = v10;
        v27 = __dst;
        do
        {
          v10 = v23;
          v29 = v26;
          v30 = v25;
          if (v23 >= v27)
          {
            break;
          }

          sub_10001F280(v24, &v142);
          sub_10001F280(v24 - 40, v139);
          v31 = v143;
          v32 = v144;
          sub_1000035D0(&v142, v143);
          v33 = (*(v32 + 184))(v31, v32);
          v34 = sub_1005E47E8(v33, v138);
          LOBYTE(v32) = v35;

          if (v32)
          {
            v28 = 0;
          }

          else
          {
            v37 = v140;
            v36 = v141;
            sub_1000035D0(v139, v140);
            v38 = (*(v36 + 184))(v37, v36);
            v39 = sub_1005E47E8(v38, v138);
            LOBYTE(v37) = v40;

            v28 = (v37 & 1) == 0 && v34 < v39;
            v27 = __dst;
          }

          sub_100007BAC(v139);
          sub_100007BAC(&v142);
          v23 = v10 + 1;
          v24 += 40;
          v26 = v29 + 1;
          v25 = v30 + 40;
        }

        while (v133 == v28);
        if (v133)
        {
          v9 = v126;
          a4 = v124;
          if (v10 < v126)
          {
            goto LABEL_128;
          }

          if (v126 < v10)
          {
            v41 = v126;
            v42 = 40 * v126;
            do
            {
              if (v41 != v29)
              {
                v49 = *a3;
                if (!*a3)
                {
                  goto LABEL_133;
                }

                v43 = v49 + v42;
                v44 = v49 + v30;
                v45 = v42;
                sub_10000A748((v49 + v42), &v142);
                v46 = *(v44 + 32);
                v47 = *(v44 + 16);
                *v43 = *v44;
                *(v43 + 16) = v47;
                *(v43 + 32) = v46;
                sub_10000A748(&v142, v44);
                v42 = v45;
              }

              ++v41;
              v30 -= 40;
              v42 += 40;
            }

            while (v41 < v29--);
          }

          a5 = v138;
        }

        else
        {
          a5 = v138;
          a4 = v124;
          v9 = v126;
        }
      }

      v50 = a3[1];
      if (v10 < v50)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_127;
        }

        if (v10 - v9 < a4)
        {
          v51 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_129;
          }

          if (v51 >= v50)
          {
            v51 = a3[1];
          }

          if (v51 < v9)
          {
LABEL_130:
            __break(1u);
LABEL_131:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_132:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_133:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_134:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_135:
            result = swift_bridgeObjectRelease_n();
            __break(1u);
            return result;
          }

          if (v10 != v51)
          {
            v52 = *a3;
            v53 = *a3 + 40 * v10;
            v54 = v9 - v10;
            v127 = v51;
            do
            {
              v134 = v10;
              v128 = v54;
              __dsta = v53;
              v55 = v53;
              while (1)
              {
                sub_10001F280(v55, &v142);
                sub_10001F280(v55 - 40, v139);
                v56 = v143;
                v57 = v144;
                sub_1000035D0(&v142, v143);
                v58 = (*(v57 + 184))(v56, v57);
                v59 = sub_1005E47E8(v58, a5);
                LOBYTE(v56) = v60;

                v61 = a5;
                if (v56 & 1) != 0 || (v63 = v140, v62 = v141, sub_1000035D0(v139, v140), v64 = (*(v62 + 184))(v63, v62), v65 = sub_1005E47E8(v64, v61), LOBYTE(v63) = v66, v64, (v63))
                {
                  sub_100007BAC(v139);
                  sub_100007BAC(&v142);
                  a5 = v61;
                  goto LABEL_42;
                }

                sub_100007BAC(v139);
                sub_100007BAC(&v142);
                if (v59 >= v65)
                {
                  break;
                }

                a5 = v138;
                if (!v52)
                {
                  goto LABEL_131;
                }

                sub_10000A748(v55, &v142);
                v67 = *(v55 - 24);
                *v55 = *(v55 - 40);
                *(v55 + 16) = v67;
                *(v55 + 32) = *(v55 - 8);
                sub_10000A748(&v142, v55 - 40);
                v55 -= 40;
                if (__CFADD__(v54++, 1))
                {
                  goto LABEL_42;
                }
              }

              a5 = v138;
LABEL_42:
              v10 = v134 + 1;
              v53 = __dsta + 40;
              v54 = v128 - 1;
            }

            while (v134 + 1 != v127);
            v10 = v127;
            v9 = v126;
          }
        }
      }

      v69 = v132;
      if (v10 < v9)
      {
        goto LABEL_126;
      }

      v135 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_100A5B430(0, *(v132 + 2) + 1, 1, v132);
      }

      v71 = *(v69 + 2);
      v70 = *(v69 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v69 = sub_100A5B430((v70 > 1), v71 + 1, 1, v69);
      }

      *(v69 + 2) = v72;
      v73 = v69 + 32;
      v74 = &v69[16 * v71 + 32];
      *v74 = v126;
      *(v74 + 1) = v10;
      v145 = v69;
      __dstb = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      v132 = v69;
      if (v71)
      {
        while (1)
        {
          v75 = v72 - 1;
          if (v72 >= 4)
          {
            break;
          }

          if (v72 == 3)
          {
            v76 = *(v69 + 4);
            v77 = *(v69 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_74:
            if (v79)
            {
              goto LABEL_117;
            }

            v92 = &v69[16 * v72];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_120;
            }

            v98 = &v73[16 * v75];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_124;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v75 = v72 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v102 = &v69[16 * v72];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_88:
          if (v97)
          {
            goto LABEL_119;
          }

          v105 = &v73[16 * v75];
          v107 = *v105;
          v106 = *(v105 + 1);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_122;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_95:
          if (v75 - 1 >= v72)
          {
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v113 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v114 = &v73[16 * v75 - 16];
          v115 = *v114;
          v116 = &v73[16 * v75];
          v117 = *(v116 + 1);
          v118 = (v113 + 40 * *v114);
          v119 = (v113 + 40 * *v116);
          v120 = v113 + 40 * v117;

          sub_100625BC8(v118, v119, v120, __dstb, v138);
          if (v137)
          {

            v145 = v132;
            goto LABEL_108;
          }

          if (v117 < v115)
          {
            goto LABEL_112;
          }

          v69 = v132;
          v121 = *(v132 + 2);
          if (v75 > v121)
          {
            goto LABEL_113;
          }

          *v114 = v115;
          *(v114 + 1) = v117;
          if (v75 >= v121)
          {
            goto LABEL_114;
          }

          v72 = v121 - 1;
          memmove(&v73[16 * v75], v116 + 16, 16 * (v121 - 1 - v75));
          *(v132 + 2) = v121 - 1;
          if (v121 <= 2)
          {
LABEL_3:
            v145 = v69;
            goto LABEL_4;
          }
        }

        v80 = &v73[16 * v72];
        v81 = *(v80 - 8);
        v82 = *(v80 - 7);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_115;
        }

        v85 = *(v80 - 6);
        v84 = *(v80 - 5);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_116;
        }

        v87 = &v69[16 * v72];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_118;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_121;
        }

        if (v91 >= v83)
        {
          v109 = &v73[16 * v75];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_125;
          }

          if (v78 < v112)
          {
            v75 = v72 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

LABEL_4:
      v8 = v135;
      v6 = a3[1];
      a5 = v138;
      a4 = v124;
      if (v135 >= v6)
      {
        goto LABEL_105;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_105:
  v122 = *a1;
  if (!*a1)
  {
    goto LABEL_135;
  }

  sub_100625FE0(&v145, v122, a3, a5);
  if (v137)
  {

LABEL_108:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100626A70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_6:
    v30 = a3;
    v22 = v8;
    v23 = v7;
    while (1)
    {
      sub_10001F280(v7, &v27);
      sub_10001F280(v7 - 40, v24);
      v9 = v28;
      v10 = v29;
      sub_1000035D0(&v27, v28);
      v11 = (*(v10 + 184))(v9, v10);
      v12 = sub_1005E47E8(v11, a5);
      LOBYTE(v10) = v13;

      if (v10 & 1) != 0 || (v15 = v25, v14 = v26, sub_1000035D0(v24, v25), v16 = (*(v14 + 184))(v15, v14), v17 = sub_1005E47E8(v16, a5), LOBYTE(v15) = v18, v16, (v15))
      {
        sub_100007BAC(v24);
        result = sub_100007BAC(&v27);
LABEL_5:
        a3 = v30 + 1;
        v7 = v23 + 40;
        v8 = v22 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      sub_100007BAC(v24);
      result = sub_100007BAC(&v27);
      if (v12 >= v17)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      sub_10000A748(v7, &v27);
      v19 = *(v7 - 24);
      *v7 = *(v7 - 40);
      *(v7 + 16) = v19;
      *(v7 + 32) = *(v7 - 8);
      result = sub_10000A748(&v27, v7 - 40);
      v7 -= 40;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100626C20(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      sub_10062618C(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100626A70(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100626D78(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100B32110(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_100626C20(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100626FD4(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationFetcher() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1005D346C(a1, v1 + v5, v6);
}

uint64_t sub_1006270E0()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_101168330(v3, v4, v6, v5, v2);
}

uint64_t sub_10062719C()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_101167E20(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100627264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10062728C()
{
  v2 = *(type metadata accessor for LocationFetcher() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1005DBBB8(v4, v5, v6, v0 + v3);
}

uint64_t sub_100627394@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationFetcher() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005DF498((v1 + v4), a1);
}

uint64_t sub_100627584(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5, NSObject *a6, int64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void), void (*a15)(char *), void (*a16)(char *), uint64_t a17, unint64_t *a18, uint64_t *a19, char *a20, uint64_t a21, uint64_t a22, void *a23)
{
  v492 = a8;
  v474 = a7;
  v460 = a6;
  v495 = a5;
  v477 = a2;
  v490 = a1;
  v459 = type metadata accessor for FMNAccountType();
  v458 = *(v459 - 8);
  v25 = *(v458 + 64);
  __chkstk_darwin(v459);
  v450 = &v445 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Endpoint = type metadata accessor for FetchEndpoint();
  v27 = *(*(Endpoint - 8) + 64);
  v28 = __chkstk_darwin(Endpoint);
  v451 = &v445 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v452 = (&v445 - v30);
  v31 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v467 = &v445 - v33;
  v446 = type metadata accessor for OwnedDeviceFetchEndpoint();
  v34 = *(*(v446 - 8) + 64);
  v35 = __chkstk_darwin(v446);
  v447 = (&v445 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v448 = &v445 - v37;
  v38 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v445 - v40;
  v42 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v463 = &v445 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v472 = &v445 - v46;
  v47 = sub_1000BC4D4(&qword_1016A5840, &qword_1013B31C8);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v476 = &v445 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v475 = &v445 - v51;
  v494 = type metadata accessor for BeaconEstimatedLocation();
  v501 = *(v494 - 8);
  v52 = *(v501 + 64);
  v53 = __chkstk_darwin(v494);
  v497 = &v445 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v486 = &v445 - v56;
  v57 = __chkstk_darwin(v55);
  v481 = &v445 - v58;
  v59 = __chkstk_darwin(v57);
  v462 = &v445 - v60;
  v61 = __chkstk_darwin(v59);
  v498 = &v445 - v62;
  v63 = __chkstk_darwin(v61);
  v473 = &v445 - v64;
  v65 = __chkstk_darwin(v63);
  v487 = &v445 - v66;
  __chkstk_darwin(v65);
  v480 = &v445 - v67;
  v503 = type metadata accessor for UUID();
  v496 = *(v503 - 8);
  v68 = *(v496 + 64);
  v69 = __chkstk_darwin(v503);
  v453 = &v445 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v482 = &v445 - v72;
  v73 = __chkstk_darwin(v71);
  v491 = &v445 - v74;
  v75 = __chkstk_darwin(v73);
  v493 = &v445 - v76;
  v77 = __chkstk_darwin(v75);
  v485 = (&v445 - v78);
  __chkstk_darwin(v77);
  v502 = &v445 - v79;
  v80 = sub_1000BC4D4(&qword_1016A5848, &unk_1013B31D0);
  v81 = *(*(v80 - 8) + 64);
  v82 = __chkstk_darwin(v80 - 8);
  v488 = &v445 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v484 = &v445 - v84;
  v500 = type metadata accessor for LocalFindableAccessoryRecord();
  v85 = *(v500 - 1);
  v86 = *(v85 + 64);
  v87 = __chkstk_darwin(v500);
  v499 = (&v445 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v87);
  v90 = &v445 - v89;
  v91 = type metadata accessor for LocationFetcher();
  v92 = v91 - 8;
  v479 = *(v91 - 8);
  v93 = *(v479 + 64);
  v94 = __chkstk_darwin(v91);
  *&v483 = &v445 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = v95;
  __chkstk_darwin(v94);
  v97 = (&v445 - v96);
  v466 = type metadata accessor for Date();
  v465 = *(v466 - 8);
  v98 = *(v465 + 64);
  v99 = __chkstk_darwin(v466);
  v101 = &v445 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __chkstk_darwin(v99);
  v104 = &v445 - v103;
  __chkstk_darwin(v102);
  v106 = &v445 - v105;
  v107 = swift_allocObject();
  *(v107 + 16) = a3;
  *(v107 + 24) = a4;
  v461 = v107;
  v455 = a4;

  v468 = v106;
  static Date.trustedNow.getter(v106);
  v108 = swift_allocObject();
  v469 = v108;
  *(v108 + 16) = &_swiftEmptyDictionarySingleton;
  v478 = v108 + 16;
  v109 = swift_allocObject();
  v471 = v109;
  *(v109 + 16) = &_swiftEmptyDictionarySingleton;
  v457 = v109 + 16;
  v110 = *(v92 + 40);
  sub_10062CD24(v477, v97, type metadata accessor for LocationFetcher);
  v464 = v110;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  v113 = os_log_type_enabled(v111, v112);
  v454 = a3;
  v456 = v104;
  v445 = v101;
  if (v113)
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v511 = v115;
    *v114 = 136446210;
    v495 = v111;
    v116 = v97[7];
    sub_1000035D0(v97 + 3, v97[6]);
    v117 = *(v116 + 8);
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    sub_10062CBB8(v97, type metadata accessor for LocationFetcher);
    v121 = sub_1000136BC(v118, v120, &v511);

    *(v114 + 4) = v121;
    v122 = v495;
    _os_log_impl(&_mh_execute_header, v495, v112, "Begin location fetch with policy: %{public}s.", v114, 0xCu);
    sub_100007BAC(v115);
  }

  else
  {

    sub_10062CBB8(v97, type metadata accessor for LocationFetcher);
  }

  v123 = swift_allocObject();
  *(v123 + 16) = &_swiftEmptyDictionarySingleton;
  v124 = v123 + 16;
  v125 = v477;
  v126 = v477[6];
  v127 = v477[7];
  sub_1000035D0(v477 + 3, v126);
  v128 = (*(v127 + 24))(v126, v127);
  v470 = v123;
  if (v128)
  {
    v467 = 0;
  }

  else
  {
    v129 = v125[6];
    v130 = v125[7];
    sub_1000035D0(v125 + 3, v129);
    v131 = (*(v130 + 64))(v129, v130);
    v132 = *(v458 + 104);
    if (v131)
    {
      v133 = v448;
      v132(v448, enum case for FMNAccountType.ownedDeviceLocations(_:), v459);
      sub_10051482C(v133 + *(v446 + 20));
      MyAppURLSessionFactory = type metadata accessor for FindMyAppURLSessionFactory(0);
      v135 = *(MyAppURLSessionFactory + 48);
      v136 = *(MyAppURLSessionFactory + 52);
      swift_allocObject();
      v137 = type metadata accessor for FMNMockingPreferences();
      (*(*(v137 - 8) + 56))(v467, 1, 1, v137);
      v138 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      v139 = type metadata accessor for ServerInteractionController(0);
      v140 = *(v139 + 48);
      v141 = *(v139 + 52);
      v142 = swift_allocObject();
      v143 = v447;
      sub_10062CD24(v133, v447, type metadata accessor for OwnedDeviceFetchEndpoint);
      v467 = sub_10061F094(v143, v138, v142);
      v144 = type metadata accessor for OwnedDeviceFetchEndpoint;
      v145 = v133;
    }

    else
    {
      v146 = enum case for FMNAccountType.searchParty(_:);
      v147 = v450;
      v148 = v459;
      v132(v450, enum case for FMNAccountType.searchParty(_:), v459);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      v149 = sub_1010B32C8(v147);
      v150 = v452;
      *v452 = v149;
      v132((v150 + *(Endpoint + 20)), v146, v148);
      v151 = type metadata accessor for FindMyAppURLSessionFactory(0);
      v152 = *(v151 + 48);
      v153 = *(v151 + 52);
      swift_allocObject();
      v154 = type metadata accessor for FMNMockingPreferences();
      (*(*(v154 - 8) + 56))(v467, 1, 1, v154);
      v155 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      v156 = type metadata accessor for ServerInteractionController(0);
      v157 = *(v156 + 48);
      v158 = *(v156 + 52);
      v159 = swift_allocObject();
      v160 = v451;
      sub_10062CD24(v150, v451, type metadata accessor for FetchEndpoint);
      v467 = sub_1006229E4(v160, v155, v159);
      v144 = type metadata accessor for FetchEndpoint;
      v145 = v150;
    }

    sub_10062CBB8(v145, v144);
  }

  v161 = v477;
  v162 = v477[6];
  v163 = v477[7];
  sub_1000035D0(v477 + 3, v162);
  if ((*(v163 + 24))(v162, v163))
  {
    v164 = swift_allocObject();
    v165 = v461;
    *(v164 + 16) = v474;
    *(v164 + 24) = v165;
    type metadata accessor for Transaction();
    v166 = v161;
    v167 = v483;
    sub_10062CD24(v166, v483, type metadata accessor for LocationFetcher);
    v168 = (*(v479 + 80) + 40) & ~*(v479 + 80);
    v169 = swift_allocObject();
    v169[2] = a9;
    v169[3] = v164;
    v169[4] = v490;
    sub_10062CC64(v167, v169 + v168, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();

    (*(v465 + 8))(v468, v466);
  }

  v474 = v124;
  v170 = swift_allocObject();
  v460 = v170;
  v170[2].isa = &_swiftEmptyDictionarySingleton;
  v495 = v170 + 2;
  v171 = swift_allocObject();
  *(v171 + 16) = _swiftEmptyArrayStorage;
  v492 = (v171 + 16);
  sub_10062CD24(v161, v483, type metadata accessor for LocationFetcher);
  v172 = *(v479 + 80);
  v173 = (v172 + 32) & ~v172;
  v450 = (v489 + 7);
  v174 = (v489 + 7 + v173) & 0xFFFFFFFFFFFFFFF8;
  v175 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
  v479 = v172;
  v176 = swift_allocObject();
  v177 = v471;
  *(v176 + 16) = v470;
  *(v176 + 24) = v177;
  sub_10062CC64(v483, v176 + v173, type metadata accessor for LocationFetcher);
  *(v176 + v174) = v469;
  v459 = v171;
  *(v176 + v175) = v171;
  v458 = v176;
  *(v176 + ((v175 + 15) & 0xFFFFFFFFFFFFFFF8)) = v460;
  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    *v180 = 0;

    _os_log_impl(&_mh_execute_header, v178, v179, "Gathering beacon information for fetch.", v180, 2u);
  }

  else
  {
  }

  v182 = *(v490 + 16);
  if (v182)
  {
    v183 = v490 + 32;
    v184 = _swiftEmptyArrayStorage;
    v490 += 32;
    v489 = v182;
    do
    {
      sub_10001F280(v183, &v511);
      sub_10000A748(&v511, &v508);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v185 = v500;
      v186 = swift_dynamicCast();
      (*(v85 + 56))(v41, v186 ^ 1u, 1, v185);
      if ((*(v85 + 48))(v41, 1, v185) == 1)
      {
        sub_10000B3A8(v41, &qword_1016A9A30, &unk_1013BD120);
      }

      else
      {
        sub_10062CC64(v41, v499, type metadata accessor for LocalFindableAccessoryRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_100A5D050(0, v184[2] + 1, 1, v184);
        }

        v188 = v184[2];
        v187 = v184[3];
        if (v188 >= v187 >> 1)
        {
          v184 = sub_100A5D050(v187 > 1, v188 + 1, 1, v184);
        }

        v184[2] = v188 + 1;
        sub_10062CC64(v499, v184 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v188, type metadata accessor for LocalFindableAccessoryRecord);
      }

      v183 += 40;
      --v182;
    }

    while (v182);
    v189 = (v496 + 8);
    v500 = _swiftEmptyArrayStorage;
    do
    {
      v199 = v490 + 40 * v182++;
      sub_10001F280(v199, &v511);
      v200 = 0;
      v201 = v184[2];
      while (v201 != v200)
      {
        if (v200 >= v184[2])
        {
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        sub_10062CD24(v184 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v200++, v90, type metadata accessor for LocalFindableAccessoryRecord);
        v203 = v512;
        v202 = v513;
        sub_1000035D0(&v511, v512);
        v204 = v502;
        (*(*(*(v202 + 8) + 8) + 32))(v203);
        LOBYTE(v202) = static UUID.== infix(_:_:)();
        (*v189)(v204, v503);
        sub_10062CBB8(v90, type metadata accessor for LocalFindableAccessoryRecord);
        if (v202)
        {
          v181 = sub_100007BAC(&v511);
          goto LABEL_29;
        }
      }

      sub_10000A748(&v511, &v508);
      v205 = v500;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v506[0] = v205;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100025B1C(0, *(v205 + 2) + 1, 1);
        v205 = v506[0];
      }

      v191 = *(v205 + 2);
      v190 = *(v205 + 3);
      if (v191 >= v190 >> 1)
      {
        sub_100025B1C((v190 > 1), v191 + 1, 1);
      }

      v192 = v509;
      v193 = v510;
      v194 = sub_10015049C(&v508, v509);
      v195 = *(*(v192 - 8) + 64);
      __chkstk_darwin(v194);
      v197 = &v445 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v198 + 16))(v197);
      sub_1006252D4(v191, v197, v506, v192, v193);
      v181 = sub_100007BAC(&v508);
      v500 = v506[0];
LABEL_29:
      ;
    }

    while (v182 != v489);
    v207 = v500;
  }

  else
  {
    v184 = _swiftEmptyArrayStorage;
    v207 = _swiftEmptyArrayStorage;
  }

  v452 = a23;
  v451 = a22;
  Endpoint = a21;
  v448 = a20;
  v447 = a19;
  v499 = a18;
  v490 = a17;
  v500 = a16;
  __chkstk_darwin(v181);
  v208 = v477;
  *(&v445 - 2) = v477;

  v209 = sub_10013D298(a12, (&v445 - 4), v207);
  v507 = &_swiftEmptyDictionarySingleton;
  v210 = __chkstk_darwin(v209);
  *(&v445 - 8) = v492;
  *(&v445 - 7) = v208;
  v211 = v457;
  *(&v445 - 6) = v478;
  *(&v445 - 5) = v211;
  *(&v445 - 4) = &v507;
  *(&v445 - 3) = v467;
  *(&v445 - 2) = a13;
  *(&v445 - 1) = v458;
  sub_1005D2344(v210, a14, (&v445 - 10));

  v212 = v474;
  swift_beginAccess();
  v213 = *v212;

  v215 = sub_10061BDB0(v214);

  __chkstk_darwin(v216);
  *(&v445 - 4) = v211;
  *(&v445 - 3) = v208;
  *(&v445 - 2) = v469;
  sub_1005C684C(a15, (&v445 - 6), v215);

  v217 = *(v207 + 2);
  if (v217)
  {
    v489 = 0;
    v218 = v207;
    v506[0] = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v217, 0);
    v219 = v506[0];
    v220 = v218 + 32;
    v221 = v453;
    do
    {
      sub_10001F280(v220, &v511);
      v223 = v512;
      v222 = v513;
      sub_1000035D0(&v511, v512);
      (*(*(*(v222 + 8) + 8) + 32))(v223);
      sub_100007BAC(&v511);
      v506[0] = v219;
      v225 = *(v219 + 2);
      v224 = *(v219 + 3);
      if (v225 >= v224 >> 1)
      {
        sub_101123D4C(v224 > 1, v225 + 1, 1);
        v219 = v506[0];
      }

      *(v219 + 2) = v225 + 1;
      (*(v496 + 32))(v219 + ((*(v496 + 80) + 32) & ~*(v496 + 80)) + *(v496 + 72) * v225, v221, v503);
      v220 += 40;
      --v217;
    }

    while (v217);
  }

  else
  {

    v219 = _swiftEmptyArrayStorage;
  }

  v489 = ~v479;
  v226 = sub_10000954C(v219);

  v227 = v477;
  v228 = v477[6];
  v229 = v477[7];
  sub_1000035D0(v477 + 3, v228);
  (*(v229 + 24))(v228, v229);
  v230 = *(v227 + 6);
  v231 = *(v227 + 7);
  sub_1000035D0(v227 + 3, v230);
  v232 = (*(v231 + 40))(v230, v231);
  __chkstk_darwin(v232);
  v233 = v468;
  *(&v445 - 4) = v227;
  *(&v445 - 3) = v233;
  *(&v445 - 16) = v234;
  sub_1005C6534(v500, (&v445 - 6), v226);

  v235 = v478;
  swift_beginAccess();
  v236 = v227;
  v237 = 0;
  v238 = 0;
  v239 = *v235;
  v240 = *v235;
  v241 = 1 << *(*v235 + 32);
  v242 = -1;
  if (v241 < 64)
  {
    v242 = ~(-1 << v241);
  }

  v244 = *(v240 + 64);
  v243 = v240 + 64;
  v245 = v242 & v244;
  v246 = (v241 + 63) >> 6;
  v247 = v503;
  v248 = v485;
  v249 = v488;
  while (v245)
  {
    v250 = v237;
LABEL_55:
    v251 = __clz(__rbit64(v245));
    v245 &= v245 - 1;
    v252 = *(*(v239 + 56) + ((v250 << 9) | (8 * v251)));
    v253 = __OFADD__(v238, v252);
    v238 += v252;
    if (v253)
    {
      __break(1u);
      goto LABEL_58;
    }
  }

  while (1)
  {
    v250 = v237 + 1;
    if (__OFADD__(v237, 1))
    {
      goto LABEL_201;
    }

    if (v250 >= v246)
    {
      break;
    }

    v245 = *(v243 + 8 * v250);
    ++v237;
    if (v245)
    {
      v237 = v250;
      goto LABEL_55;
    }
  }

LABEL_58:
  v453 = v238;
  v457 = v239;
  v254 = v483;
  sub_10062CD24(v236, v483, type metadata accessor for LocationFetcher);
  v255 = (v479 + 16) & v489;
  v256 = &v450[v255] & 0xFFFFFFFFFFFFFFF8;
  v257 = swift_allocObject();
  sub_10062CC64(v254, v257 + v255, type metadata accessor for LocationFetcher);
  *(v257 + v256) = v184;
  sub_1000BC4D4(&qword_1016A5850, &qword_1013B31F0);
  unsafeFromAsyncTask<A>(_:)();

  v259 = (v506[0] + 64);
  v258 = *(v506[0] + 8);
  v479 = v506[0];
  v260 = 1 << *(v506[0] + 32);
  v261 = -1;
  if (v260 < 64)
  {
    v261 = ~(-1 << v260);
  }

  v262 = v261 & v258;
  swift_beginAccess();
  v263 = 0;
  v474 = (v260 + 63) >> 6;
  v500 = (v496 + 16);
  v499 = (v496 + 32);
  v490 = v496 + 8;
  v483 = xmmword_101385D80;
  v478 = v259;
  if (!v262)
  {
LABEL_62:
    if (v474 <= v263 + 1)
    {
      v265 = v263 + 1;
    }

    else
    {
      v265 = v474;
    }

    v266 = v265 - 1;
    while (1)
    {
      v264 = v263 + 1;
      if (__OFADD__(v263, 1))
      {
        goto LABEL_196;
      }

      if (v264 >= v474)
      {
        v277 = v247;
        v320 = sub_1000BC4D4(&qword_1016A5858, &qword_1013B31F8);
        (*(*(v320 - 8) + 56))(v249, 1, 1, v320);
        v262 = 0;
        v263 = v266;
        goto LABEL_71;
      }

      v262 = v259[v264];
      ++v263;
      if (v262)
      {
        v263 = v264;
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
    v264 = v263;
LABEL_70:
    v267 = __clz(__rbit64(v262));
    v262 &= v262 - 1;
    v268 = v267 | (v264 << 6);
    v269 = v479;
    v270 = v496;
    v271 = v502;
    (*(v496 + 16))(v502, *(v479 + 48) + *(v496 + 72) * v268, v247);
    v272 = v480;
    sub_10062CD24(*(v269 + 56) + *(v501 + 72) * v268, v480, type metadata accessor for BeaconEstimatedLocation);
    v273 = sub_1000BC4D4(&qword_1016A5858, &qword_1013B31F8);
    v274 = *(v273 + 48);
    v275 = *(v270 + 32);
    v249 = v488;
    v276 = v271;
    v277 = v247;
    v275(v488, v276, v247);
    sub_10062CC64(v272, v249 + v274, type metadata accessor for BeaconEstimatedLocation);
    (*(*(v273 - 8) + 56))(v249, 0, 1, v273);
    v248 = v485;
    v259 = v478;
LABEL_71:
    v278 = v484;
    sub_1000D2AD8(v249, v484, &qword_1016A5848, &unk_1013B31D0);
    v279 = sub_1000BC4D4(&qword_1016A5858, &qword_1013B31F8);
    if ((*(*(v279 - 8) + 48))(v278, 1, v279) == 1)
    {
      break;
    }

    v280 = *(v279 + 48);
    v247 = v277;
    v489 = *v499;
    (v489)(v248, v278, v277);
    v281 = v487;
    sub_10062CC64(v278 + v280, v487, type metadata accessor for BeaconEstimatedLocation);
    v282 = v495;
    swift_beginAccess();
    isa = v282->isa;
    if (*(isa + 2) && (v284 = sub_1000210EC(v248), (v285 & 1) != 0))
    {
      v286 = *(*(isa + 7) + 8 * v284);
      swift_endAccess();
      sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
      v287 = *(v501 + 72);
      v288 = (*(v501 + 80) + 32) & ~*(v501 + 80);
      v289 = swift_allocObject();
      *(v289 + 16) = v483;
      sub_10062CD24(v281, v289 + v288, type metadata accessor for BeaconEstimatedLocation);
      v505 = v286;

      sub_100399E1C(v289);
      v290 = v505;
      v291 = v495;
      swift_beginAccess();
      v292 = v291->isa;
      v293 = swift_isUniquelyReferenced_nonNull_native();
      v504 = v291->isa;
      sub_100FFDCB0(v290, v248, v293);
      v291->isa = v504;
      swift_endAccess();
      (*v500)(v491, v248, v277);
    }

    else
    {
      swift_endAccess();
      v294 = *v500;
      v295 = v493;
      (*v500)(v493, v248, v277);
      sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
      v296 = *(v501 + 72);
      v297 = (*(v501 + 80) + 32) & ~*(v501 + 80);
      v298 = swift_allocObject();
      *(v298 + 16) = v483;
      sub_10062CD24(v281, v298 + v297, type metadata accessor for BeaconEstimatedLocation);
      v299 = v495;
      swift_beginAccess();
      v300 = v299->isa;
      v301 = swift_isUniquelyReferenced_nonNull_native();
      v302 = v299->isa;
      v504 = v302;
      v303 = sub_1000210EC(v295);
      v305 = *(v302 + 16);
      v306 = (v304 & 1) == 0;
      v253 = __OFADD__(v305, v306);
      v307 = v305 + v306;
      if (v253)
      {
        goto LABEL_202;
      }

      v308 = v304;
      if (*(v302 + 24) >= v307)
      {
        if ((v301 & 1) == 0)
        {
          v321 = v303;
          sub_101008794();
          v303 = v321;
        }
      }

      else
      {
        sub_100FED8A4(v307, v301);
        v303 = sub_1000210EC(v493);
        if ((v308 & 1) != (v309 & 1))
        {
          goto LABEL_205;
        }
      }

      v247 = v503;
      v310 = v504;
      if (v308)
      {
        v311 = *(v504 + 7);
        v312 = *(v311 + 8 * v303);
        *(v311 + 8 * v303) = v298;
      }

      else
      {
        *(v504 + (v303 >> 6) + 8) |= 1 << v303;
        v313 = v303;
        v294(*(v310 + 6) + *(v496 + 72) * v303, v493, v247);
        *(*(v310 + 7) + 8 * v313) = v298;
        v314 = *(v310 + 2);
        v253 = __OFADD__(v314, 1);
        v315 = v314 + 1;
        if (v253)
        {
          goto LABEL_204;
        }

        *(v310 + 2) = v315;
      }

      (*v490)(v493, v247);
      v495->isa = v310;
      swift_endAccess();
      v281 = v487;
      v248 = v485;
      v294(v491, v485, v247);
    }

    v316 = *v492;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v316 = sub_100A5BFE0(0, v316[2] + 1, 1, v316);
    }

    v318 = v316[2];
    v317 = v316[3];
    if (v318 >= v317 >> 1)
    {
      v316 = sub_100A5BFE0(v317 > 1, v318 + 1, 1, v316);
    }

    v316[2] = v318 + 1;
    v319 = v496;
    (v489)(v316 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v318, v491, v247);
    *v492 = v316;
    sub_10062CBB8(v281, type metadata accessor for BeaconEstimatedLocation);
    (*(v319 + 8))(v248, v247);
    v249 = v488;
    if (!v262)
    {
      goto LABEL_62;
    }
  }

  v322 = v465;
  v323 = v456;
  v324 = v466;
  (*(v465 + 16))(v456, v468, v466);
  v325 = Logger.logObject.getter();
  v326 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v325, v326))
  {
    v327 = swift_slowAlloc();
    *v327 = 134218240;
    v328 = v445;
    static Date.trustedNow.getter(v445);
    Date.timeIntervalSince(_:)();
    v330 = v329;
    v331 = *(v322 + 8);
    v331(v328, v324);
    v485 = v331;
    v331(v323, v324);
    *(v327 + 4) = fabs(v330);
    *(v327 + 12) = 2048;
    *(v327 + 14) = v453;
    _os_log_impl(&_mh_execute_header, v325, v326, "Overall fetch took %f seconds. %ld round trip(s).", v327, 0x16u);
  }

  else
  {

    v485 = *(v322 + 8);
    v485(v323, v324);
  }

  v332 = v498;
  v333 = v477[6];
  v334 = v477[7];
  sub_1000035D0(v477 + 3, v333);
  if ((*(v334 + 24))(v333, v334))
  {
LABEL_191:
    v429 = Logger.logObject.getter();
    v430 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v429, v430))
    {
      v431 = swift_slowAlloc();
      v432 = swift_slowAlloc();
      v504 = v432;
      *v431 = 136315138;
      v433 = v495;
      swift_beginAccess();
      v434 = v433->isa;

      sub_1000BC4D4(&qword_101696970, &qword_10138C490);
      sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
      v435 = Dictionary.description.getter();
      v437 = v436;

      v438 = sub_1000136BC(v435, v437, &v504);

      *(v431 + 4) = v438;
      _os_log_impl(&_mh_execute_header, v429, v430, "TRACE: returning resultMap: %s", v431, 0xCu);
      sub_100007BAC(v432);
    }

    v439 = v455;
    v440 = v466;
    v441 = v485;
    swift_beginAccess();
    v442 = v460[2].isa;

    (v447)(v443, v454, v439);

    v441(v468, v440);
  }

  v335 = v495;
  swift_beginAccess();
  v336 = v335->isa;
  v337 = *(v335->isa + 8);
  v492 = v335->isa + 64;
  v338 = 1 << *(v336 + 32);
  if (v338 < 64)
  {
    v339 = ~(-1 << v338);
  }

  else
  {
    v339 = -1;
  }

  v340 = v339 & v337;
  v487 = (v338 + 63) >> 6;
  v488 = (v501 + 48);
  v484 = 0x800000010135B500;
  v489 = v336;

  v341 = 0;
  while (1)
  {
    v342 = v476;
    if (v340)
    {
      v343 = v341;
LABEL_113:
      v493 = (v340 - 1) & v340;
      v346 = __clz(__rbit64(v340)) | (v343 << 6);
      v347 = v489;
      v348 = v496;
      v349 = v502;
      v350 = v503;
      (*(v496 + 16))(v502, *(v489 + 48) + *(v496 + 72) * v346, v503);
      v351 = *(*(v347 + 56) + 8 * v346);
      v352 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
      v353 = *(v352 + 48);
      v354 = *(v348 + 32);
      v342 = v476;
      v354(v476, v349, v350);
      *(v342 + v353) = v351;
      (*(*(v352 - 8) + 56))(v342, 0, 1, v352);
    }

    else
    {
      if (v487 <= v341 + 1)
      {
        v344 = v341 + 1;
      }

      else
      {
        v344 = v487;
      }

      v345 = v344 - 1;
      while (1)
      {
        v343 = v341 + 1;
        if (__OFADD__(v341, 1))
        {
          goto LABEL_199;
        }

        if (v343 >= v487)
        {
          break;
        }

        v340 = *&v492[8 * v343];
        ++v341;
        if (v340)
        {
          v341 = v343;
          goto LABEL_113;
        }
      }

      v372 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
      (*(*(v372 - 8) + 56))(v342, 1, 1, v372);
      v493 = 0;
      v341 = v345;
    }

    v355 = v475;
    sub_1000D2AD8(v342, v475, &qword_1016A5840, &qword_1013B31C8);
    v356 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
    if ((*(*(v356 - 8) + 48))(v355, 1, v356) == 1)
    {

      goto LABEL_191;
    }

    v357 = *(v355 + *(v356 + 48));
    (*v499)(v482, v355, v503);
    v358 = objc_autoreleasePoolPush();
    v359 = v477[6];
    v360 = v477[7];
    sub_1000035D0(v477 + 3, v359);
    if (((*(v360 + 64))(v359, v360) & 1) == 0)
    {

      v370 = 0x61636F4C6E736361;
      v371 = 0xEC0000006E6F6974;
      goto LABEL_164;
    }

    v491 = v358;
    v361 = *(v357 + 16);
    v362 = v494;
    if (v361)
    {
      break;
    }

    v364 = _swiftEmptyArrayStorage;
LABEL_130:
    v373 = v472;
    sub_1012BAB18(v364, v472);

    v374 = *v488;
    if ((*v488)(v373, 1, v362) == 1)
    {

      v375 = v373;
LABEL_146:
      sub_10000B3A8(v375, &unk_101696940, &unk_10138B210);
      v370 = 0x61636F4C6E736361;
      v371 = 0xEC0000006E6F6974;
      v358 = v491;
      goto LABEL_164;
    }

    sub_10062CC64(v373, v473, type metadata accessor for BeaconEstimatedLocation);
    v376 = v481;
    if (v361)
    {
      v377 = 0;
      v378 = _swiftEmptyArrayStorage;
      while (v377 < *(v357 + 16))
      {
        v379 = (*(v501 + 80) + 32) & ~*(v501 + 80);
        v380 = *(v501 + 72);
        sub_10062CD24(v357 + v379 + v380 * v377, v376, type metadata accessor for BeaconEstimatedLocation);
        if (*(v376 + v362[11]) == 7)
        {
          sub_10062CC64(v376, v486, type metadata accessor for BeaconEstimatedLocation);
          v381 = swift_isUniquelyReferenced_nonNull_native();
          v504 = v378;
          if ((v381 & 1) == 0)
          {
            sub_101124A24(0, *(v378 + 2) + 1, 1);
            v378 = v504;
          }

          v383 = *(v378 + 2);
          v382 = *(v378 + 3);
          if (v383 >= v382 >> 1)
          {
            sub_101124A24(v382 > 1, v383 + 1, 1);
            v378 = v504;
          }

          *(v378 + 2) = v383 + 1;
          sub_10062CC64(v486, v378 + v379 + v383 * v380, type metadata accessor for BeaconEstimatedLocation);
          v362 = v494;
          v376 = v481;
        }

        else
        {
          sub_10062CBB8(v376, type metadata accessor for BeaconEstimatedLocation);
        }

        ++v377;
        v332 = v498;
        if (v361 == v377)
        {
          goto LABEL_144;
        }
      }

      goto LABEL_200;
    }

    v378 = _swiftEmptyArrayStorage;
LABEL_144:

    v384 = v463;
    sub_1012BAB18(v378, v463);

    if (v374(v384, 1, v362) == 1)
    {
      sub_10062CBB8(v473, type metadata accessor for BeaconEstimatedLocation);
      v375 = v384;
      goto LABEL_146;
    }

    v385 = v462;
    sub_10062CC64(v384, v462, type metadata accessor for BeaconEstimatedLocation);
    v386 = v362[10];
    v387 = v473;
    v388 = static Date.> infix(_:_:)();
    if (v388)
    {
      v370 = 0xD000000000000013;
    }

    else
    {
      v370 = 0x61636F4C6E736361;
    }

    if (v388)
    {
      v371 = v484;
    }

    else
    {
      v371 = 0xEC0000006E6F6974;
    }

    v389 = v362[9];
    v390 = *(v387 + v389);
    v391 = *(v385 + v389);
    if (v391 >= v390)
    {
      v392 = 0x61636F4C6E736361;
    }

    else
    {
      v392 = 0xD000000000000013;
    }

    if (v391 >= v390)
    {
      v393 = 0xEC0000006E6F6974;
    }

    else
    {
      v393 = v484;
    }

    v394 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v387 + v362[7]) longitude:*(v387 + v362[8])];
    v395 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v385 + v362[7]) longitude:*(v385 + v362[8])];
    [v394 distanceFromLocation:v395];
    v397 = v396;
    type metadata accessor for Transaction();
    v398 = swift_allocObject();
    *(v398 + 16) = v370;
    *(v398 + 24) = v371;
    *(v398 + 32) = v392;
    *(v398 + 40) = v393;
    *(v398 + 48) = v397;
    *(v398 + 56) = vabdd_f64(v390, v391);

    static Transaction.asyncTask(name:block:)();

    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v399 = type metadata accessor for Logger();
    sub_1000076D4(v399, qword_10177CE28);
    v400 = Logger.logObject.getter();
    v401 = static os_log_type_t.debug.getter();
    v402 = os_log_type_enabled(v400, v401);
    v358 = v491;
    if (v402)
    {
      v403 = swift_slowAlloc();
      *v403 = 0;
      _os_log_impl(&_mh_execute_header, v400, v401, "analytics: logged accuracy difference event to CA", v403, 2u);
    }

    sub_10062CBB8(v462, type metadata accessor for BeaconEstimatedLocation);
    sub_10062CBB8(v473, type metadata accessor for BeaconEstimatedLocation);
LABEL_164:
    v404 = v507;
    if (v507[2])
    {
      v405 = sub_1000210EC(v482);
      if (v406)
      {
        v407 = 0;
        v408 = 0;
        v409 = *(v404[7] + 8 * v405);
        v410 = 1 << *(v409 + 32);
        if (v410 < 64)
        {
          v411 = ~(-1 << v410);
        }

        else
        {
          v411 = -1;
        }

        v412 = v411 & *(v409 + 64);
        v413 = (v410 + 63) >> 6;
        while (v412)
        {
          v414 = v407;
LABEL_176:
          v415 = __clz(__rbit64(v412));
          v412 &= v412 - 1;
          v416 = *(*(v409 + 56) + ((v414 << 9) | (8 * v415)));
          v253 = __OFADD__(v408, v416);
          v408 += v416;
          if (v253)
          {
            goto LABEL_203;
          }
        }

        while (1)
        {
          v414 = v407 + 1;
          if (__OFADD__(v407, 1))
          {
            goto LABEL_198;
          }

          if (v414 >= v413)
          {
            break;
          }

          v412 = *(v409 + 64 + 8 * v414);
          ++v407;
          if (v412)
          {
            v407 = v414;
            goto LABEL_176;
          }
        }

        v417 = *(v409 + 16) / v408;
        if (v417 <= 1.001)
        {
          goto LABEL_101;
        }

        v418 = v457;
        if (*(v457 + 16))
        {
          v419 = v358;
          v420 = sub_1000210EC(v482);
          if (v421)
          {
            v422 = *(*(v418 + 56) + 8 * v420);
LABEL_185:
            type metadata accessor for Transaction();
            v423 = swift_allocObject();
            *(v423 + 16) = v417;
            *(v423 + 24) = v370;
            *(v423 + 32) = v371;
            *(v423 + 40) = v422;
            *(v423 + 48) = v408;
            static Transaction.asyncTask(name:block:)();

            if (qword_1016954F0 != -1)
            {
              swift_once();
            }

            v424 = type metadata accessor for Logger();
            sub_1000076D4(v424, qword_10177CE28);
            v425 = Logger.logObject.getter();
            v426 = static os_log_type_t.debug.getter();
            v427 = os_log_type_enabled(v425, v426);
            v340 = v493;
            v358 = v419;
            if (v427)
            {
              v428 = swift_slowAlloc();
              *v428 = 0;
              _os_log_impl(&_mh_execute_header, v425, v426, "analytics: logged fetch stats to CA", v428, 2u);
            }

            goto LABEL_102;
          }
        }

        else
        {
          v419 = v358;
        }

        v422 = 0;
        goto LABEL_185;
      }
    }

LABEL_101:

    v340 = v493;
LABEL_102:
    objc_autoreleasePoolPop(v358);
    (*v490)(v482, v503);
  }

  v363 = 0;
  v364 = _swiftEmptyArrayStorage;
  while (v363 < *(v357 + 16))
  {
    v365 = (*(v501 + 80) + 32) & ~*(v501 + 80);
    v366 = *(v501 + 72);
    sub_10062CD24(v357 + v365 + v366 * v363, v332, type metadata accessor for BeaconEstimatedLocation);
    if (*(v332 + v362[11]) == 15)
    {
      sub_10062CC64(v332, v497, type metadata accessor for BeaconEstimatedLocation);
      v367 = swift_isUniquelyReferenced_nonNull_native();
      v504 = v364;
      if ((v367 & 1) == 0)
      {
        sub_101124A24(0, *(v364 + 2) + 1, 1);
        v364 = v504;
      }

      v369 = *(v364 + 2);
      v368 = *(v364 + 3);
      if (v369 >= v368 >> 1)
      {
        sub_101124A24(v368 > 1, v369 + 1, 1);
        v364 = v504;
      }

      *(v364 + 2) = v369 + 1;
      sub_10062CC64(v497, v364 + v365 + v369 * v366, type metadata accessor for BeaconEstimatedLocation);
      v362 = v494;
      v332 = v498;
    }

    else
    {
      sub_10062CBB8(v332, type metadata accessor for BeaconEstimatedLocation);
    }

    if (v361 == ++v363)
    {
      goto LABEL_130;
    }
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10062AAFC(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationFetcher() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));
  v12 = *(v11 + *(v9 + 64));

  sub_1005F3630(a1, v10, v1 + v4, (v1 + v7), v11, v12);
}

uint64_t sub_10062ACA4()
{
  v2 = *(type metadata accessor for LocationFetcher() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for BeaconKeyManager.IndexInformation(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for RawSearchResult() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for Date() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v0 + v4;
  v17 = *(v0 + v4);
  v18 = *(v16 + 8);
  v19 = *(v0 + v7);
  v20 = swift_task_alloc();
  *(v1 + 16) = v20;
  *v20 = v1;
  v20[1] = sub_100014744;

  return sub_1005F7A88(v0 + v3, v17, v18, v0 + v6, v19, v0 + v9, v0 + v12, v0 + v15);
}

uint64_t sub_10062AF30(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_100029784(a1, a2);
  }

  return a1;
}

uint64_t sub_10062AF44(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_10001E524(a1, a2);
  }

  return a1;
}

uint64_t sub_10062AF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconEstimatedLocation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062AFF4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1005E4220(a1, v1 + v5);
}

unint64_t sub_10062B0D0()
{
  result = qword_1016A5908;
  if (!qword_1016A5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5908);
  }

  return result;
}

uint64_t sub_10062B124(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationFetcher() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1005F5558(a1, v1 + v5, v1 + v6);
}

void sub_10062B250(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationFetcher() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1005DFC44(a1, v1 + v4, v6, v7);
}

void sub_10062B2F8(uint64_t *a1)
{
  v3 = *(type metadata accessor for LocationFetcher() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1005DFDCC(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10062B3A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = type metadata accessor for UUID();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A5990, &qword_1013B3498);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v47 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v52 = a1;
  v53 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v54 = v19;
  v55 = 0;
  v56 = v22 & v20;
  v57 = a2;
  v58 = a3;
  v49 = v10;
  v50 = (v10 + 32);
  v48 = (v10 + 8);

  v47[1] = a3;

  while (1)
  {
    sub_10061DD1C(v17);
    v26 = sub_1000BC4D4(&qword_1016A5998, &unk_1013B34A0);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      sub_1000128F8();
    }

    v27 = a4;
    v28 = *(v26 + 48);
    v29 = *v50;
    (*v50)(v13, v17, v51);
    v30 = *&v17[v28];
    v31 = *a5;
    v33 = sub_1000210EC(v13);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((v27 & 1) == 0)
      {
        sub_101008794();
      }
    }

    else
    {
      sub_100FED8A4(v36, v27 & 1);
      v38 = *a5;
      v39 = sub_1000210EC(v13);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_20;
      }

      v33 = v39;
    }

    v41 = a5;
    v42 = *a5;
    if (v37)
    {
      v59 = *(v42[7] + 8 * v33);

      sub_100399E1C(v30);
      v23 = v59;
      (*v48)(v13, v51);
      v24 = v42[7];
      v25 = *(v24 + 8 * v33);
      *(v24 + 8 * v33) = v23;
    }

    else
    {
      v42[(v33 >> 6) + 8] |= 1 << v33;
      v29((v42[6] + *(v49 + 72) * v33), v13, v51);
      *(v42[7] + 8 * v33) = v30;
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_19;
      }

      v42[2] = v45;
    }

    a4 = 1;
    a5 = v41;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10062B710(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v48 = type metadata accessor for UUID();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A5910, &qword_1013B33A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v45 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;
  v22 = (v9 + 32);
  v46 = (v9 + 8);
  v47 = v9;

  v45 = a3;

  while (1)
  {
    sub_10061E100(v16);
    v25 = sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280);
    if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
    {
      sub_1000128F8();
    }

    v26 = *(v25 + 48);
    v27 = *v22;
    (*v22)(v12, v16, v48);
    v28 = *&v16[v26];
    v29 = *v56;
    v31 = sub_1000210EC(v12);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_101007198();
      }
    }

    else
    {
      v36 = v56;
      sub_100FEA770(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_1000210EC(v12);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v31 = v38;
    }

    v40 = *v56;
    if (v35)
    {
      (*v46)(v12, v48);
      v23 = v40[7];
      v24 = *(v23 + 8 * v31);
      *(v23 + 8 * v31) = v28;

      a4 = 1;
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v27((v40[6] + *(v47 + 72) * v31), v12, v48);
      *(v40[7] + 8 * v31) = v28;
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10062BA54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocationFetcher() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for BeaconKeyManager.IndexInformation(0) - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for RawSearchResult() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014744;

  return sub_1005EE304(a1, v16, v17, v1 + v6, v1 + v7, v1 + v9, v1 + v12, v1 + v15);
}

uint64_t sub_10062BC7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocationFetcher() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = *(v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_1005F6644(a1, v8, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_10062BDD0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = Future.finish(error:)();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10062BE04()
{
  result = qword_1016A5958;
  if (!qword_1016A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5958);
  }

  return result;
}

unint64_t sub_10062BE58()
{
  result = qword_1016A5960;
  if (!qword_1016A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5960);
  }

  return result;
}

uint64_t sub_10062BEAC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1005F7A28(a1);
}

unint64_t sub_10062BEB8()
{
  result = qword_1016A5968;
  if (!qword_1016A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5968);
  }

  return result;
}

uint64_t sub_10062BF0C(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10062BF68@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1005F7A28(a1);
}

uint64_t sub_10062BF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_10062C000(_BYTE *a1)
{
  if (v1[20])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[19])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v1[18])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1005E8F1C(a1, v1[16], v4 | v1[17] | v3 | v2);
}

uint64_t sub_10062C0A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result != 2)
  {
    sub_100016590(a3, a4);

    return sub_100016590(a5, a6);
  }

  return result;
}

uint64_t sub_10062C28C()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = (v0 + v2);
  v9 = *v8;

  v10 = v8[1];

  sub_100007BAC(v8 + 3);
  v11 = v1[10];
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = *(v8 + v1[11]);

  v14 = *(v8 + v1[12]);

  v15 = *(v8 + v1[13]);

  v16 = *(v8 + v1[14]);

  v17 = *(v0 + v3);

  v18 = *(v0 + v4);

  v19 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10062C408(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(type metadata accessor for LocationFetcher() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1005CB9A8(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v8), *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10062C50C()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v4 + 8);

  sub_100007BAC((v4 + 24));
  v7 = v1[10];
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(v4 + v1[11]);

  v10 = *(v4 + v1[12]);

  v11 = *(v4 + v1[13]);

  v12 = *(v4 + v1[14]);

  v13 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10062C650()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10062C690()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 8);

  sub_100007BAC((v0 + v2 + 24));
  v8 = v1[10];
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = *(v0 + v2 + v1[11]);

  v11 = *(v0 + v2 + v1[12]);

  v12 = *(v0 + v2 + v1[13]);

  v13 = *(v0 + v2 + v1[14]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10062C7D8()
{
  v2 = *(type metadata accessor for LocationFetcher() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1005D6BE4(v4, v5, v6, v0 + v3);
}

void sub_10062C8C8(void *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationFetcher() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1005DB724(v1 + v4, v7, a1);
}

uint64_t sub_10062C99C()
{
  v2 = *(type metadata accessor for LocationFetcher() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1005D4A30(v4, v5, v6, v0 + v3);
}

void sub_10062CA88(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100E6FCC4(v4, v5, a1);
}

uint64_t sub_10062CAFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationFetcher() - 8);
  result = sub_1005CEE64(*(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

uint64_t sub_10062CBB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10062CC18(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_100016590(result, a2);
  }

  return result;
}

uint64_t sub_10062CC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10062CD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10062CDC4()
{
  result = qword_1016A5BF0;
  if (!qword_1016A5BF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016A5BF0);
  }

  return result;
}

void sub_10062CE28()
{
  if (!qword_1016A5BF8)
  {
    type metadata accessor for UUID();
    sub_100008BB8(255, &unk_1016A5C00, SPLastOnlineLocationInfo_ptr);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A5BF8);
    }
  }
}

unint64_t sub_10062CEE8()
{
  result = qword_1016A5C50;
  if (!qword_1016A5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5C50);
  }

  return result;
}

uint64_t sub_10062CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  return _swift_task_switch(sub_10062CFF8, a4, 0);
}

uint64_t sub_10062CFF8()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 104) = *(v1 + 112);

  return _swift_task_switch(sub_10062D080, 0, 0);
}

uint64_t sub_10062D080()
{
  if (*(*(v0 + 104) + 16))
  {
    v1 = sub_100771D58(*(v0 + 72), *(v0 + 80));
    if (v2)
    {
      v3 = *(v0 + 96);
      v4 = *(v0 + 88);
      v5 = *(*(v0 + 104) + 56) + 16 * v1;
      v6 = *v5;
      *(v0 + 112) = *(v5 + 8);

      *(v0 + 40) = v4;
      *(v0 + 48) = v3;
      v12 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      *(v0 + 120) = v8;
      *v8 = v0;
      v8[1] = sub_10062D218;

      return v12();
    }

    v10 = *(v0 + 104);
  }

  **(v0 + 56) = 1;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10062D218()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_10062D330, 0, 0);
}

uint64_t sub_10062D370@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v9 = *(*(RequestBeacon - 8) + 64);
  __chkstk_darwin(RequestBeacon);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_10062E71C(v14, v12, type metadata accessor for FetchRequestBeacon);
      v16 = *&v12[*(RequestBeacon + 36)];
      if (*(v16 + 16))
      {
        v17 = sub_100772794(a1, a2);
        if (v18)
        {
          break;
        }
      }

      sub_10062E784(v12, type metadata accessor for FetchRequestBeacon);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    v19 = (*(v16 + 56) + 32 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = sub_1000BC4D4(&qword_1016A5948, &qword_1013B3450);
    v25 = (a4 + *(v24 + 48));
    v26 = (a4 + *(v24 + 64));
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 16))(a4, v12, v27);
    sub_100017D5C(v20, v21);
    sub_100017D5C(v22, v23);
    sub_10062E784(v12, type metadata accessor for FetchRequestBeacon);
    sub_100017D5C(v20, v21);
    sub_100017D5C(v22, v23);
    sub_100016590(v22, v23);
    sub_100016590(v20, v21);
    *v25 = v20;
    v25[1] = v21;
    *v26 = v22;
    v26[1] = v23;
    return (*(*(v24 - 8) + 56))(a4, 0, 1, v24);
  }

  else
  {
LABEL_7:
    v29 = sub_1000BC4D4(&qword_1016A5948, &qword_1013B3450);
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }
}

uint64_t sub_10062D61C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v9 = *(*(RequestBeacon - 8) + 64);
  __chkstk_darwin(RequestBeacon);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_10062E71C(v14, v12, type metadata accessor for FetchRequestBeacon);
      v16 = *&v12[*(RequestBeacon + 28)];
      if (*(v16 + 16))
      {
        v17 = sub_100772794(a1, a2);
        if (v18)
        {
          break;
        }
      }

      sub_10062E784(v12, type metadata accessor for FetchRequestBeacon);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    v19 = *(v16 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = sub_1000BC4D4(&qword_1016A5930, &qword_1013B33D0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 16))(a4, v12, v25);
    sub_10062E784(v12, type metadata accessor for FetchRequestBeacon);
    *(a4 + v23) = v20;
    *(a4 + v24) = v21;
    return (*(*(v22 - 8) + 56))(a4, 0, 1, v22);
  }

  else
  {
LABEL_7:
    v27 = sub_1000BC4D4(&qword_1016A5930, &qword_1013B33D0);
    return (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }
}

char *sub_10062D878(uint64_t a1)
{
  v98 = type metadata accessor for UUID();
  v2 = *(v98 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v98);
  v97 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v107 - 8) + 64);
  v6 = __chkstk_darwin(v107);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v103 = &v95 - v9;
  __chkstk_darwin(v8);
  v11 = &v95 - v10;
  v111 = type metadata accessor for LocalFindableAccessoryRecord();
  v106 = *(v111 - 8);
  v12 = *(v106 + 64);
  v13 = __chkstk_darwin(v111);
  v110 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v109 = &v95 - v16;
  __chkstk_darwin(v15);
  v113 = &v95 - v17;
  v115 = type metadata accessor for SharedBeaconRecord(0);
  v18 = *(*(v115 - 8) + 64);
  v19 = __chkstk_darwin(v115);
  v105 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v95 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v95 - v25;
  __chkstk_darwin(v24);
  v29 = *(a1 + 16);
  if (v29)
  {
    v116 = &v95 - v27;
    v102 = v11;
    v30 = a1 + 32;
    v96 = (v2 + 8);
    v31 = _swiftEmptyArrayStorage;
    *&v28 = 141558275;
    v95 = v28;
    v108 = _swiftEmptyArrayStorage;
    v114 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage;
    v33 = v113;
    v34 = v115;
    v100 = v23;
    v112 = v26;
    do
    {
      sub_10001F280(v30, &v122);
      sub_10001F280(&v122, v121);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v35 = v116;
      if (swift_dynamicCast())
      {
        sub_10002AB0C(v35, v26, type metadata accessor for SharedBeaconRecord);
        v36 = v26[*(v34 + 64)];
        if (v36 == 5)
        {
          sub_10062E71C(v26, v23, type metadata accessor for SharedBeaconRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1000084AC(0, v114[2] + 1, 1, v114);
          }

          v38 = v114[2];
          v37 = v114[3];
          if (v38 >= v37 >> 1)
          {
            v114 = sub_1000084AC((v37 > 1), v38 + 1, 1, v114);
          }

          sub_10062E784(v26, type metadata accessor for SharedBeaconRecord);
          sub_100007BAC(&v122);
          v39 = v115;
          v119 = v115;
          v120 = sub_10062E7E4(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
          v40 = sub_1000280DC(&v118);
          sub_10062E71C(v23, v40, type metadata accessor for SharedBeaconRecord);
          v41 = v114;
          v114[2] = v38 + 1;
          sub_100031694(&v118, &v41[5 * v38 + 4]);
          v34 = v39;
          v26 = v112;
          sub_10062E784(v23, type metadata accessor for SharedBeaconRecord);
          v33 = v113;
        }

        else if (v36 == 4 || v36 == 2)
        {
          sub_10062E71C(v26, v105, type metadata accessor for SharedBeaconRecord);
          v46 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1000084AC(0, v46[2] + 1, 1, v46);
          }

          v48 = v46[2];
          v47 = v46[3];
          if (v48 >= v47 >> 1)
          {
            v108 = sub_1000084AC((v47 > 1), v48 + 1, 1, v46);
          }

          else
          {
            v108 = v46;
          }

          sub_10062E784(v26, type metadata accessor for SharedBeaconRecord);
          sub_100007BAC(&v122);
          v49 = v115;
          v119 = v115;
          v120 = sub_10062E7E4(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
          v50 = sub_1000280DC(&v118);
          v51 = v105;
          sub_10062E71C(v105, v50, type metadata accessor for SharedBeaconRecord);
          v52 = v108;
          v108[2] = v48 + 1;
          sub_100031694(&v118, &v52[5 * v48 + 4]);
          v34 = v49;
          v26 = v112;
          sub_10062E784(v51, type metadata accessor for SharedBeaconRecord);
          v33 = v113;
          v23 = v100;
        }

        else
        {
          sub_10062E784(v26, type metadata accessor for SharedBeaconRecord);
          sub_100007BAC(&v122);
        }
      }

      else if (swift_dynamicCast())
      {
        v42 = v109;
        sub_10002AB0C(v33, v109, type metadata accessor for LocalFindableAccessoryRecord);
        sub_10062E71C(v42, v110, type metadata accessor for LocalFindableAccessoryRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100A5D050(0, v31[2] + 1, 1, v31);
        }

        v44 = v31[2];
        v43 = v31[3];
        if (v44 >= v43 >> 1)
        {
          v31 = sub_100A5D050(v43 > 1, v44 + 1, 1, v31);
        }

        sub_10062E784(v109, type metadata accessor for LocalFindableAccessoryRecord);
        sub_100007BAC(&v122);
        v31[2] = v44 + 1;
        sub_10002AB0C(v110, v31 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v44, type metadata accessor for LocalFindableAccessoryRecord);
        v34 = v115;
      }

      else
      {
        v53 = v102;
        if (swift_dynamicCast())
        {
          v54 = v103;
          sub_10002AB0C(v53, v103, type metadata accessor for OwnedBeaconRecord);
          sub_10062E71C(v54, v104, type metadata accessor for OwnedBeaconRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1000084AC(0, v32[2] + 1, 1, v32);
          }

          v56 = v32[2];
          v55 = v32[3];
          if (v56 >= v55 >> 1)
          {
            v32 = sub_1000084AC((v55 > 1), v56 + 1, 1, v32);
          }

          sub_10062E784(v103, type metadata accessor for OwnedBeaconRecord);
          sub_100007BAC(&v122);
          v119 = v107;
          v120 = sub_10062E7E4(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
          v57 = sub_1000280DC(&v118);
          v58 = v104;
          sub_10062E71C(v104, v57, type metadata accessor for OwnedBeaconRecord);
          v32[2] = v56 + 1;
          sub_100031694(&v118, &v32[5 * v56 + 4]);
          sub_10062E784(v58, type metadata accessor for OwnedBeaconRecord);
          v26 = v112;
          v33 = v113;
          v34 = v115;
        }

        else
        {
          v101 = v31;
          if (qword_1016947F0 != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          sub_1000076D4(v59, qword_10177AF88);
          sub_10001F280(&v122, &v118);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v99 = v32;
            v63 = v62;
            v117 = swift_slowAlloc();
            v64 = v117;
            *v63 = v95;
            *(v63 + 4) = 1752392040;
            *(v63 + 12) = 2081;
            v66 = v119;
            v65 = v120;
            sub_1000035D0(&v118, v119);
            v67 = v97;
            (*(*(*(v65 + 8) + 8) + 32))(v66);
            sub_10062E7E4(&qword_101696930, &type metadata accessor for UUID);
            v68 = v98;
            v69 = dispatch thunk of CustomStringConvertible.description.getter();
            v71 = v70;
            v72 = v68;
            v26 = v112;
            (*v96)(v67, v72);
            sub_100007BAC(&v118);
            v73 = sub_1000136BC(v69, v71, &v117);
            v33 = v113;

            *(v63 + 14) = v73;
            _os_log_impl(&_mh_execute_header, v60, v61, "Failed to map group for beacon record: %{private,mask.hash}s.", v63, 0x16u);
            sub_100007BAC(v64);
            v23 = v100;

            v32 = v99;

            v74 = &v122;
          }

          else
          {

            sub_100007BAC(&v122);
            v74 = &v118;
          }

          sub_100007BAC(v74);
          v34 = v115;
          v31 = v101;
        }
      }

      sub_100007BAC(v121);
      v30 += 40;
      --v29;
    }

    while (v29);
    v75 = v108;
    if (v108[2])
    {
      v76 = sub_100A5CF44(0, 1, 1, _swiftEmptyArrayStorage);
      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      if (v78 >= v77 >> 1)
      {
        v76 = sub_100A5CF44((v77 > 1), v78 + 1, 1, v76);
      }

      *(v76 + 2) = v78 + 1;
      v79 = &v76[16 * v78];
      *(v79 + 4) = v75;
      v79[40] = 1;
    }

    else
    {

      v76 = _swiftEmptyArrayStorage;
    }

    v84 = v114;
    if (v114[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_100A5CF44(0, *(v76 + 2) + 1, 1, v76);
      }

      v86 = *(v76 + 2);
      v85 = *(v76 + 3);
      if (v86 >= v85 >> 1)
      {
        v76 = sub_100A5CF44((v85 > 1), v86 + 1, 1, v76);
      }

      *(v76 + 2) = v86 + 1;
      v87 = &v76[16 * v86];
      *(v87 + 4) = v84;
      v87[40] = 3;
      if (v31[2])
      {
LABEL_56:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_100A5CF44(0, *(v76 + 2) + 1, 1, v76);
        }

        v89 = *(v76 + 2);
        v88 = *(v76 + 3);
        if (v89 >= v88 >> 1)
        {
          v76 = sub_100A5CF44((v88 > 1), v89 + 1, 1, v76);
        }

        *(v76 + 2) = v89 + 1;
        v90 = &v76[16 * v89];
        *(v90 + 4) = v31;
        v90[40] = 2;
        if (v32[2])
        {
          goto LABEL_61;
        }

        goto LABEL_68;
      }
    }

    else
    {

      if (v31[2])
      {
        goto LABEL_56;
      }
    }

    if (v32[2])
    {
LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_100A5CF44(0, *(v76 + 2) + 1, 1, v76);
      }

      v92 = *(v76 + 2);
      v91 = *(v76 + 3);
      if (v92 >= v91 >> 1)
      {
        v76 = sub_100A5CF44((v91 > 1), v92 + 1, 1, v76);
      }

      *(v76 + 2) = v92 + 1;
      v93 = &v76[16 * v92];
      *(v93 + 4) = v32;
      v93[40] = 0;
      return v76;
    }

LABEL_68:

    return v76;
  }

  if (qword_1016947F0 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_1000076D4(v80, qword_10177AF88);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "Skipping fetching locations from server. No beacons remaining to fetch.", v83, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10062E71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10062E784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10062E7E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyMapGenerator.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyMapGenerator.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10062E8EC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A5D30);
  v1 = sub_1000076D4(v0, qword_1016A5D30);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10062E9B4()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  v0[6] = _swiftEmptyDictionarySingleton;
  v0[7] = &_swiftEmptySetSingleton;
  v3 = type metadata accessor for DeviceIdentityUtility();
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = 0;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 8;
  v1[11] = v6;
  v9 = sub_1000BC4D4(&qword_1016A6018, &unk_1013B3B50);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v1[12] = PassthroughSubject.init()();
  *(v1 + 104) = 0;
  v12 = qword_1016A5D48;
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C0F0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "AccessoryDiscoverySession.init()", v17, 2u);
  }

  return sub_100F04FA4();
}

uint64_t sub_10062EBF4()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  return sub_10000B3A8(v0 + qword_1016A5D48, &qword_1016A40D0, &unk_10138BE70);
}

uint64_t sub_10062EC68()
{
  v1 = v0;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AccessoryDiscoverySession.deinit", v5, 2u);
  }

  v6 = *(v1 + 32);

  v7 = *(v1 + 40);

  v8 = *(v1 + 48);

  v9 = *(v1 + 56);

  v10 = *(v1 + 64);

  v11 = *(v1 + 72);

  v12 = *(v1 + 80);

  v13 = *(v1 + 88);

  v14 = *(v1 + 96);

  sub_10000B3A8(v1 + qword_1016A5D48, &qword_1016A40D0, &unk_10138BE70);
  return v1;
}

uint64_t sub_10062EDC0()
{
  sub_10062EC68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDiscoverySession()
{
  result = qword_1016A5D78;
  if (!qword_1016A5D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10062EE64()
{
  sub_10063E9D0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_10062EF30()
{
  v1 = v0;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop scanning", v5, 2u);
  }

  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  v6 = *&v17[0];
  if (*&v17[0])
  {
    sub_10131ECB4();
    v7 = *(v1 + 40);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v8 = *(v1 + 96);
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v19 = -1;

    PassthroughSubject.send(completion:)();

    sub_10000B3A8(v17, &unk_1016B1CB0, &qword_1013FB750);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (LOBYTE(v17[0]) == 1)
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Found pending scanning request. Starting discovery session...", v11, 2u);
      }

      sub_10062FBD0();
    }
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v12 = 16;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v2, qword_1016A5D30);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000136BC(0x6E616353706F7473, 0xEE002928676E696ELL, v17);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s Missing CentralManager!", v15, 0xCu);
      sub_100007BAC(v16);
    }
  }
}

uint64_t sub_10062F30C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A6018, &unk_1013B3B50);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = PassthroughSubject.init()();
  v6 = *(v0 + 96);
  *(v1 + 96) = v5;

  v7 = *(v1 + 40);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v14 == 1)
  {
    sub_10062FBD0();
  }

  else
  {
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C0F0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Existing discovery session in progress!", v11, 2u);
    }

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  sub_1000041A4(&qword_1016A63B0, &qword_1016A6018, &unk_1013B3B50);
  v12 = Publisher.eraseToAnyPublisher()();

  return v12;
}

uint64_t sub_10062F528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = qword_1016A5D48;
  swift_beginAccess();
  sub_1000E193C(v9, a1 + v12);
  result = swift_endAccess();
  *a3 = *(a1 + 72) == 0;
  return result;
}

void sub_10062F678()
{
  v1 = sub_1000BC4D4(&qword_1016A6380, &qword_1013B3CF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v18 - v5;
  if (!*(v0 + 64))
  {
    v7 = v4;
    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    v8 = v19;
    if (v19)
    {
      v9 = v0;
      v19 = sub_10131A394();
      sub_1000BC4D4(&qword_1016A6388, &unk_1013B3D00);
      sub_1000041A4(&qword_1016A6390, &qword_1016A6388, &unk_1013B3D00);
      sub_10063F9D8(&qword_1016A6398, type metadata accessor for CBManagerState);
      Publisher<>.removeDuplicates()();

      swift_allocObject();
      swift_weakInit();
      sub_1000041A4(&unk_1016A63A0, &qword_1016A6380, &qword_1013B3CF8);
      v10 = Publisher<>.sink(receiveValue:)();

      (*(v2 + 8))(v6, v7);
      v11 = *(v9 + 64);
      *(v9 + 64) = v10;
    }

    else
    {
      sub_100101B58();
      swift_allocError();
      *v12 = 16;
      *(v12 + 8) = 0u;
      *(v12 + 24) = 0u;
      *(v12 + 40) = 11;
      swift_willThrow();

      if (qword_101694810 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_1016A5D30);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1000136BC(0xD000000000000022, 0x800000010135BAF0, &v19);
        _os_log_impl(&_mh_execute_header, v14, v15, "%s Missing CentralManager!", v16, 0xCu);
        sub_100007BAC(v17);
      }
    }
  }
}

void *sub_10062FA44(void *result)
{
  if (*result == 4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v1 = result;
      type metadata accessor for SPAccessoryDiscoverySessionError(0);
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10063F9D8(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v2 = v1[2];
      sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      v3 = OS_dispatch_queue.sync<A>(execute:)();
      __chkstk_darwin(v3);
      os_activity(name:block:)();
    }
  }

  return result;
}

void sub_10062FBD0()
{
  v1 = sub_1000BC4D4(&qword_1016A61B0, &qword_1013B3C18);
  v82 = *(v1 - 8);
  v83 = v1;
  v2 = *(v82 + 64);
  __chkstk_darwin(v1);
  v81 = &v68 - v3;
  v4 = sub_1000BC4D4(&qword_1016A61B8, &qword_1013B3C20);
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  __chkstk_darwin(v4);
  v84 = &v68 - v6;
  v7 = sub_1000BC4D4(&qword_1016A6340, &qword_1013B3CD8);
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  __chkstk_darwin(v7);
  v87 = &v68 - v9;
  v10 = sub_1000BC4D4(&qword_1016A6348, &qword_1013B3CE0);
  v91 = *(v10 - 8);
  v11 = *(v91 + 64);
  __chkstk_darwin(v10);
  v13 = &v68 - v12;
  v14 = sub_1000BC4D4(&qword_1016A6350, &unk_1013B3CE8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v90 = &v68 - v17;
  v18 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v79 = *(v18 - 8);
  v19 = *(v79 + 64);
  v20 = __chkstk_darwin(v18);
  v80 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v68 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v68 - v25;
  __chkstk_darwin(v24);
  v28 = &v68 - v27;
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  if (v93[0])
  {
    v71 = v93[0];
    v75 = v15;
    v77 = v10;
    v29 = *(v0 + 40);
    v78 = v0;
    v73 = v29;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v72 = 0;
    sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10138B360;
    *(v30 + 56) = &type metadata for BAServiceIdentifier;
    *(v30 + 64) = &off_10162CAF0;
    *(v30 + 96) = &type metadata for BAServiceIdentifier;
    *(v30 + 104) = &off_10162CAF0;
    *(v30 + 72) = 1;
    *(v30 + 32) = 0;
    *(v30 + 136) = &type metadata for PoshServiceIdentifier;
    *(v30 + 144) = &off_10162CAC0;
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v74 = v13;
    v76 = v14;
    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C0F0);
    v92 = v28;
    sub_1000D2A70(v28, v26, &qword_1016A40D0, &unk_10138BE70);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      LODWORD(v70) = v33;
      v34 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v93[0] = v69;
      *v34 = 136315651;
      sub_1000BC4D4(&unk_1016CDCD0, &qword_1013B3C48);
      v35 = Array.description.getter();
      v37 = sub_1000136BC(v35, v36, v93);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      sub_1000D2A70(v26, v23, &qword_1016A40D0, &unk_10138BE70);
      v38 = type metadata accessor for MACAddress();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v23, 1, v38) == 1)
      {
        sub_10000B3A8(v23, &qword_1016A40D0, &unk_10138BE70);
        v40 = 0;
        v41 = 0xE000000000000000;
      }

      else
      {
        v40 = MACAddress.description.getter();
        v41 = v48;
        (*(v39 + 8))(v23, v38);
      }

      sub_10000B3A8(v26, &qword_1016A40D0, &unk_10138BE70);
      v49 = sub_1000136BC(v40, v41, v93);

      *(v34 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v32, v70, "Call centralManager.startScanning for %s macAddress: %{private,mask.hash}s", v34, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000B3A8(v26, &qword_1016A40D0, &unk_10138BE70);
    }

    v50 = v71;
    v70 = sub_10131E64C(v30);
    v93[0] = v70;
    sub_1000BC4D4(&qword_1016A61D8, &qword_1013B3C40);
    v69 = type metadata accessor for Peripheral();
    sub_1000041A4(&qword_1016A61E0, &qword_1016A61D8, &qword_1013B3C40);
    v51 = v81;
    Publisher.compactMap<A>(_:)();
    sub_1000041A4(&qword_1016A61E8, &qword_1016A61B0, &qword_1013B3C18);
    v52 = v83;
    v53 = v84;
    Publisher.filter(_:)();
    (*(v82 + 8))(v51, v52);
    v54 = v80;
    sub_1000D2A70(v92, v80, &qword_1016A40D0, &unk_10138BE70);
    v55 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v56 = swift_allocObject();
    sub_1000E18CC(v54, v56 + v55);
    *(v56 + ((v19 + v55 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
    sub_1000041A4(&qword_1016A61F0, &qword_1016A61B8, &qword_1013B3C20);
    v57 = v50;
    v58 = v86;
    v59 = v87;
    Publisher.first(where:)();

    (*(v85 + 8))(v53, v58);
    *(swift_allocObject() + 16) = v57;
    v60 = v57;
    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000041A4(&qword_1016A6358, &qword_1016A6340, &qword_1013B3CD8);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
    v61 = v74;
    v62 = v89;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v88 + 8))(v59, v62);
    *(swift_allocObject() + 16) = v30;
    static Subscribers.Demand.unlimited.getter();
    sub_1000041A4(&qword_1016A6360, &qword_1016A6348, &qword_1013B3CE0);
    v63 = v90;
    v64 = v77;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v91 + 8))(v61, v64);
    sub_1000041A4(&qword_1016A6368, &qword_1016A6350, &unk_1013B3CE8);
    v65 = v76;
    v66 = Publisher.eraseToAnyPublisher()();
    v67 = (*(v75 + 8))(v63, v65);
    __chkstk_darwin(v67);
    *(&v68 - 2) = v78;
    *(&v68 - 1) = v66;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    sub_10000B3A8(v92, &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v42 = 16;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    *(v42 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_1016A5D30);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v93[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010135BA90, v93);
      _os_log_impl(&_mh_execute_header, v44, v45, "%s Missing CentralManager!", v46, 0xCu);
      sub_100007BAC(v47);
    }
  }
}

uint64_t sub_100630974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11[-v6];
  v8 = qword_1016A5D48;
  swift_beginAccess();
  sub_1000D2A70(a1 + v8, a2, &qword_1016A40D0, &unk_10138BE70);
  *(a1 + 104) = 0;
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_beginAccess();
  sub_1000E193C(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_100630AC8(uint64_t *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UUID();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  v8 = __chkstk_darwin(v6);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = type metadata accessor for MACAddress();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v48 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  v23 = *a1;
  sub_1000D2A70(a2, v15, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016A40D0, &unk_10138BE70);
    v24 = 1;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C0F0);
    sub_100A245E8(0xD000000000000016, 0x800000010135BAB0);
    v26 = *&a3[OBJC_IVAR____TtC12searchpartyd14CentralManager_lock];
    __chkstk_darwin(v27);
    *(&v48 - 2) = v22;
    *(&v48 - 1) = a3;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v28 = v52;
    if (v52)
    {
      sub_100A245E8(0xD000000000000015, 0x800000010135BAD0);
      v29 = [*(v23 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = [*(v28 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
      v31 = v49;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = static UUID.== infix(_:_:)();
      v32 = *(v50 + 8);
      v33 = v31;
      v34 = v51;
      v32(v33, v51);
      v32(v11, v34);
      (*(v17 + 8))(v22, v16);
    }

    else
    {
      v35 = v48;
      (*(v17 + 16))(v48, v22, v16);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v38 = 141558275;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        sub_10063F9D8(&qword_1016A4210, &type metadata accessor for MACAddress);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v35;
        v43 = v42;
        v44 = *(v17 + 8);
        v44(v41, v16);
        v45 = sub_1000136BC(v40, v43, &v52);

        *(v38 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Missing peripheral for %{private,mask.hash}s", v38, 0x16u);
        sub_100007BAC(v39);

        v44(v22, v16);
      }

      else
      {

        v46 = *(v17 + 8);
        v46(v35, v16);
        v46(v22, v16);
      }

      v24 = 0;
    }
  }

  return v24 & 1;
}

uint64_t sub_1006310A0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1000BC4D4(&qword_1016A6210, &qword_1013B3C50);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = v32 - v6;
  v7 = sub_1000BC4D4(&qword_1016A6218, &qword_1013B3C58);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v35 = v32 - v10;
  v11 = sub_1000BC4D4(&qword_1016A6220, &qword_1013B3C60);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v36 = v32 - v14;
  v15 = sub_1000BC4D4(&qword_1016A6228, &unk_1013B3C68);
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v37 = v32 - v18;
  v46 = sub_10063EEE4(a2);

  v32[1] = static Subscribers.Demand.unlimited.getter();
  v32[0] = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_100008BB8(0, &unk_1016A6230, SPDiscoveredAccessory_ptr);
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70);
  v19 = v33;
  v20 = v34;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v21 = v19;

  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_1016A6248, &qword_1016A6210, &qword_1013B3C50);
  v22 = v35;
  v23 = v38;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v39 + 8))(v20, v23);
  sub_1000BC4D4(&qword_1016A6080, &qword_1013B3BB0);
  sub_1000041A4(&qword_1016A6250, &qword_1016A6218, &qword_1013B3C58);
  v24 = v36;
  v25 = v40;
  Publisher.map<A>(_:)();
  (*(v41 + 8))(v22, v25);
  sub_1000BC4D4(&qword_1016A6258, &qword_1013B3C78);
  sub_1000041A4(&qword_1016A6260, &qword_1016A6220, &qword_1013B3C60);
  sub_1000041A4(&qword_1016A6268, &qword_1016A6258, &qword_1013B3C78);
  v26 = v37;
  v27 = v42;
  Publisher.catch<A>(_:)();
  (*(v43 + 8))(v24, v27);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016A6270, &qword_1016A6228, &unk_1013B3C68);
  v28 = v44;
  v29 = Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v26, v28);
  v30 = *(v21 + 72);
  *(v21 + 72) = v29;
}

void sub_1006316D0(uint64_t a1)
{
  sub_1000D2A70(a1, &v24, &qword_1016A6080, &qword_1013B3BB0);
  if (v26)
  {
    v22 = v24;
    v23[0] = *v25;
    *(v23 + 9) = *&v25[9];
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177C0F0);
    sub_100101AA8(&v22, v21);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136446210;
      v6 = sub_1013181BC();
      v8 = v7;
      sub_100101B04(v21);
      v9 = sub_1000136BC(v6, v8, &v20);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Peripheral discovery error %{public}s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    else
    {

      sub_100101B04(v21);
    }

    sub_100101B04(&v22);
  }

  else
  {
    v10 = v24;
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C0F0);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Discovered %{public}@", v15, 0xCu);
      sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 96);

      v21[0] = v12;
      PassthroughSubject.send(_:)();
    }

    else
    {
    }
  }
}

void sub_1006319E8()
{
  v1 = sub_1000BC4D4(&qword_1016A61B0, &qword_1013B3C18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v49 - v4;
  v6 = sub_1000BC4D4(&qword_1016A61B8, &qword_1013B3C20);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v9 = v49 - v8;
  v10 = sub_1000BC4D4(&qword_1016A61C0, &qword_1013B3C28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v68 = v49 - v13;
  v14 = sub_1000BC4D4(&qword_1016A61C8, &unk_1013B3C30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v67 = v49 - v17;
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  v18 = v69[0];
  if (v69[0])
  {
    v60 = v15;
    v61 = v11;
    v62 = v14;
    v19 = *(v0 + 40);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (LOBYTE(v69[0]) == 1)
    {
      v58 = v5;
      v64 = v2;
      sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10138B360;
      *(v20 + 56) = &type metadata for BAServiceIdentifier;
      *(v20 + 64) = &off_10162CAF0;
      *(v20 + 96) = &type metadata for BAServiceIdentifier;
      *(v20 + 104) = &off_10162CAF0;
      *(v20 + 72) = 1;
      *(v20 + 32) = 0;
      *(v20 + 136) = &type metadata for PoshServiceIdentifier;
      *(v20 + 144) = &off_10162CAC0;
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v55 = v10;
      v56 = 0;
      v57 = v19;
      v63 = v1;
      v59 = v0;
      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_10177C0F0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v69[0] = v25;
        *v24 = 136315138;
        sub_1000BC4D4(&unk_1016CDCD0, &qword_1013B3C48);
        v26 = Array.description.getter();
        v28 = sub_1000136BC(v26, v27, v69);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Call centralManager.startScanning for %s", v24, 0xCu);
        sub_100007BAC(v25);
      }

      v54 = sub_10131E64C(v20);
      v69[0] = v54;
      v52 = sub_1000BC4D4(&qword_1016A61D8, &qword_1013B3C40);
      v49[1] = type metadata accessor for Peripheral();
      v51 = sub_1000041A4(&qword_1016A61E0, &qword_1016A61D8, &qword_1013B3C40);
      v29 = v58;
      Publisher.compactMap<A>(_:)();
      sub_1000041A4(&qword_1016A61E8, &qword_1016A61B0, &qword_1013B3C18);
      v30 = v63;
      Publisher.filter(_:)();
      v31 = *(v64 + 8);
      v64 += 8;
      v53 = v31;
      v31(v29, v30);
      *(swift_allocObject() + 16) = v18;
      v50 = v18;
      static Subscribers.Demand.unlimited.getter();
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      sub_1000041A4(&qword_1016A61F0, &qword_1016A61B8, &qword_1013B3C20);
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
      v32 = v68;
      v33 = v66;
      Publisher<>.flatMap<A>(maxPublishers:_:)();

      (*(v65 + 8))(v9, v33);
      *(swift_allocObject() + 16) = v20;
      static Subscribers.Demand.unlimited.getter();
      sub_1000041A4(&qword_1016A61F8, &qword_1016A61C0, &qword_1013B3C28);
      v34 = v67;
      v35 = v55;
      Publisher.flatMap<A, B>(maxPublishers:_:)();

      (*(v61 + 8))(v32, v35);
      sub_1000041A4(&unk_1016A6200, &qword_1016A61C8, &unk_1013B3C30);
      v36 = v62;
      v37 = Publisher.eraseToAnyPublisher()();
      (*(v60 + 8))(v34, v36);
      v69[0] = v54;
      v38 = Publisher.compactMap<A>(_:)();
      __chkstk_darwin(v38);
      v49[-4] = v59;
      v49[-3] = v37;
      v49[-2] = v29;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v53(v29, v63);
    }

    else
    {
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177C0F0);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Scanning in progress. Will try again once existing session stops scanning.", v48, 2u);
      }

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v39 = 16;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *(v39 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_1016A5D30);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v69[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x800000010135BA00, v69);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s Missing CentralManager!", v43, 0xCu);
      sub_100007BAC(v44);
    }
  }
}

uint64_t sub_1006324E8(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_lock);
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3 & 1;
}

uint64_t sub_100632574@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v6 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v7 = sub_10131F050(v3, v6);

  *a2 = v7;
  return result;
}

uint64_t *sub_100632658@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    v4 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    result = (v3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100632694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v36 = a1;
  v4 = sub_1000BC4D4(&qword_1016A6210, &qword_1013B3C50);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v35 - v7;
  v9 = sub_1000BC4D4(&qword_1016A6218, &qword_1013B3C58);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v38 = v35 - v12;
  v13 = sub_1000BC4D4(&qword_1016A6220, &qword_1013B3C60);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v39 = v35 - v16;
  v17 = sub_1000BC4D4(&qword_1016A6228, &unk_1013B3C68);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v40 = v35 - v20;
  v37 = sub_10063EEE4(a2);
  v50 = v37;

  v35[2] = static Subscribers.Demand.unlimited.getter();
  v35[1] = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_100008BB8(0, &unk_1016A6230, SPDiscoveredAccessory_ptr);
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70);
  v21 = v36;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v22 = v21;

  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_1016A6248, &qword_1016A6210, &qword_1013B3C50);
  v23 = v38;
  v24 = v41;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v42 + 8))(v8, v24);
  sub_1000BC4D4(&qword_1016A6080, &qword_1013B3BB0);
  sub_1000041A4(&qword_1016A6250, &qword_1016A6218, &qword_1013B3C58);
  v25 = v39;
  v26 = v43;
  Publisher.map<A>(_:)();
  (*(v44 + 8))(v23, v26);
  sub_1000BC4D4(&qword_1016A6258, &qword_1013B3C78);
  sub_1000041A4(&qword_1016A6260, &qword_1016A6220, &qword_1013B3C60);
  sub_1000041A4(&qword_1016A6268, &qword_1016A6258, &qword_1013B3C78);
  v27 = v40;
  v28 = v45;
  Publisher.catch<A>(_:)();
  (*(v46 + 8))(v25, v28);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016A6270, &qword_1016A6228, &unk_1013B3C68);
  v29 = v47;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v27, v29);
  v31 = *(v22 + 72);
  *(v22 + 72) = v30;

  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016A61B0, &qword_1013B3C18);
  sub_1000041A4(&qword_1016A61E8, &qword_1016A61B0, &qword_1013B3C18);
  v32 = Publisher<>.sink(receiveValue:)();

  v33 = *(v22 + 80);
  *(v22 + 80) = v32;
}

uint64_t sub_100632D6C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = sub_1000BC4D4(&qword_1016A6030, &unk_1013B3B70);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v7;

  Future.init(_:)();
  sub_1000041A4(&unk_1016A6038, &qword_1016A6030, &unk_1013B3B70);
  v13 = Publisher.eraseToAnyPublisher()();

  *a4 = v13;
  return result;
}

uint64_t sub_100632E7C@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v22[1] = a3;
  v22[2] = a4;
  v24 = a5;
  v7 = *a2;
  v23 = sub_1000BC4D4(&qword_1016A6280, &qword_1013B3C80);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = v22 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = v7;
  v14 = sub_1000BC4D4(&qword_1016A6288, &unk_1013B3C88);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v12;

  v25 = Future.init(_:)();
  *(swift_allocObject() + 16) = v17;
  sub_100008BB8(0, &unk_1016A6230, SPDiscoveredAccessory_ptr);
  sub_1000041A4(&qword_1016A6290, &qword_1016A6288, &unk_1013B3C88);
  v18 = v17;
  Publisher.map<A>(_:)();

  sub_1000041A4(&qword_1016A6298, &qword_1016A6280, &qword_1013B3C80);
  v19 = v23;
  v20 = Publisher.eraseToAnyPublisher()();
  result = (*(v8 + 8))(v11, v19);
  *v24 = v20;
  return result;
}

void sub_1006330F0(uint64_t a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000D2A70(a1, &v37, &qword_1016A6080, &qword_1013B3BB0);
  if ((v39 & 1) == 0)
  {
    v11 = v37;
    v12 = [v37 discoveredMetadata];
    v13 = [v12 productData];

    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100314594(v14, v16);
    if (v18 >> 60 != 15)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_100313A28(v17, v18);
      sub_100313B54(v19, v20);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (BYTE4(v35))
      {
        v22 = 0;
      }

      else
      {
        v22 = v35;
      }

      if (sub_100E0EA64(v21, v22))
      {
        if (qword_101694EC0 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177C0F0);
        v24 = v11;
        v11 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v24;
          *v27 = v24;
          v28 = v24;
          _os_log_impl(&_mh_execute_header, v11, v25, "Ignoring Apple audio accessory %@.", v26, 0xCu);
          sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

          sub_100006654(v19, v20);

          return;
        }

        sub_100006654(v19, v20);

LABEL_21:
        return;
      }

      sub_100006654(v19, v20);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v30 = *(Strong + 16);
      *&v33[-16] = __chkstk_darwin(Strong);
      *&v33[-8] = v11;
      sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      v31 = OS_dispatch_queue.sync<A>(execute:)();
      v32 = v34[0];
      __chkstk_darwin(v31);
      *&v33[-16] = v32;
      *&v33[-8] = v11;
      os_activity(name:block:)();

      return;
    }

    goto LABEL_21;
  }

  v35 = v37;
  v36[0] = *v38;
  *(v36 + 9) = *&v38[9];
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  sub_100101AA8(&v35, v34);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100101B58();
    swift_allocError();
    sub_100101AA8(v34, v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_100101B04(v34);
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Peripheral discovery error: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {

    sub_100101B04(v34);
  }

  sub_100101B04(&v35);
}

uint64_t sub_10063362C(void **a1)
{
  v1 = *a1;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "AccessoryDiscoverySession Lost %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10063E8C4();
  }

  return result;
}

uint64_t sub_1006337A8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = *a1;
  v31[3] = &type metadata for BAServiceIdentifier;
  v31[4] = &off_10162CAF0;
  LOBYTE(v31[0]) = 0;
  v16 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v17 = *&v15[v16];
  v30 = v31;

  v18 = sub_1012BBDB4(sub_1001DB3F8, v29, v17);

  sub_100007BAC(v31);
  if (v18)
  {
    v19 = sub_10039CF6C(a2);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    v31[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v24 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v31[0] = v15;
    type metadata accessor for Peripheral();
    v26 = v15;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v6 + 8))(v9, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v24 = Publisher.eraseToAnyPublisher()();
    result = (*(v11 + 8))(v14, v10);
  }

  *v28 = v24;
  return result;
}

uint64_t sub_100633B18@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = *a1;
  v31[3] = &type metadata for BAServiceIdentifier;
  v31[4] = &off_10162CAF0;
  LOBYTE(v31[0]) = 1;
  v16 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v17 = *&v15[v16];
  v30 = v31;

  v18 = sub_1012BBDB4(sub_1001DB3F8, v29, v17);

  sub_100007BAC(v31);
  if (v18)
  {
    v19 = sub_10039C428(a2);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    v31[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v24 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v31[0] = v15;
    type metadata accessor for Peripheral();
    v26 = v15;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v6 + 8))(v9, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v24 = Publisher.eraseToAnyPublisher()();
    result = (*(v11 + 8))(v14, v10);
  }

  *v28 = v24;
  return result;
}

uint64_t sub_100633E8C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26[-v7];
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26[-v12];
  v14 = *a1;
  v28[3] = &type metadata for PoshServiceIdentifier;
  v28[4] = &off_10162CAC0;
  v15 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v16 = *&v14[v15];
  v27 = v28;

  v17 = sub_1012BBDB4(sub_1001DB3F8, v26, v16);

  sub_100007BAC(v28);
  if (v17)
  {
    sub_1000BC4D4(&unk_1016A6320, &qword_1013B3CD0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = &type metadata for PoshCharacteristicIdentifier;
    *(v18 + 64) = &off_10162CAB0;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v28[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v23 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v28[0] = v14;
    type metadata accessor for Peripheral();
    v25 = v14;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v8, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v13, v9);
  }

  *a2 = v23;
  return result;
}

uint64_t sub_100634228(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a3;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a4;
  *(v15 + 64) = a5;
  v16 = a3;

  sub_10025EDD4(0, 0, v13, &unk_1013B3CC0, v15);
}

uint64_t sub_100634368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 62) = a8;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  v9 = type metadata accessor for CentralManager.Error();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v12 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v13 = type metadata accessor for RawAccessoryMetadata(0);
  *(v8 + 152) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v15 = type metadata accessor for MACAddress();
  *(v8 + 240) = v15;
  v16 = *(v15 - 8);
  *(v8 + 248) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v8 + 264) = v18;
  v19 = *(v18 - 8);
  *(v8 + 272) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1006345B0, 0, 0);
}

uint64_t sub_1006345B0()
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[36] = sub_1000076D4(v1, qword_10177C0F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reading posh metadata...", v4, 2u);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[31];
  v11 = v0[11];

  v12 = [objc_allocWithZone(SPDiscoveredAccessory) init];
  v0[37] = v12;
  v13 = [*(v11 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v5, v8);
  [v12 setIdentifier:isa];

  sub_100A22DF0(v7);
  v15 = MACAddress.data.getter();
  v17 = v16;
  (*(v10 + 8))(v7, v9);
  v18 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v15, v17);
  [v12 setMacAddress:v18];

  type metadata accessor for AccessoryMetadataManager();
  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = sub_100634830;
  v20 = v0[29];
  v21 = v0[11];

  return sub_10037EC80(v20, v21);
}

uint64_t sub_100634830()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_100635CB8;
  }

  else
  {
    v3 = sub_100634944;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100634944()
{
  v210 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = sub_100233168();
  [v1 setDiscoveredMetadata:v5];
  sub_10063F714(v3, v4, type metadata accessor for RawAccessoryMetadata);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  if (v8)
  {
    v10 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v209 = v12;
    *v11 = 136446210;
    v13 = (v9 + *(v10 + 20));
    if (v13[1] >> 60 == 15)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v16 = *v13;
      v14 = Data.hexString.getter();
      v15 = v17;
    }

    sub_10063F77C(*(v0 + 224), type metadata accessor for RawAccessoryMetadata);
    v18 = sub_1000136BC(v14, v15, &v209);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "productData: %{public}s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    sub_10063F77C(v9, type metadata accessor for RawAccessoryMetadata);
  }

  v19 = *(v0 + 288);
  sub_10063F714(*(v0 + 232), *(v0 + 216), type metadata accessor for RawAccessoryMetadata);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 216);
  if (v22)
  {
    v24 = *(v0 + 152);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v209 = v26;
    *v25 = 136446210;
    v27 = (v23 + *(v24 + 24));
    if (v27[1] >> 60 == 15)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    else
    {
      v30 = *v27;
      v28 = Data.hexString.getter();
      v29 = v31;
    }

    sub_10063F77C(*(v0 + 216), type metadata accessor for RawAccessoryMetadata);
    v32 = sub_1000136BC(v28, v29, &v209);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "manufacturerName: %{public}s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  else
  {

    sub_10063F77C(v23, type metadata accessor for RawAccessoryMetadata);
  }

  v33 = *(v0 + 288);
  sub_10063F714(*(v0 + 232), *(v0 + 208), type metadata accessor for RawAccessoryMetadata);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 208);
  if (v36)
  {
    v38 = *(v0 + 152);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v209 = v40;
    *v39 = 136446210;
    v41 = (v37 + *(v38 + 28));
    if (v41[1] >> 60 == 15)
    {
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    else
    {
      v44 = *v41;
      v42 = Data.hexString.getter();
      v43 = v45;
    }

    sub_10063F77C(*(v0 + 208), type metadata accessor for RawAccessoryMetadata);
    v46 = sub_1000136BC(v42, v43, &v209);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "modelName: %{public}s", v39, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_10063F77C(v37, type metadata accessor for RawAccessoryMetadata);
  }

  v47 = *(v0 + 288);
  sub_10063F714(*(v0 + 232), *(v0 + 200), type metadata accessor for RawAccessoryMetadata);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 200);
  if (v50)
  {
    v52 = *(v0 + 152);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v209 = v54;
    *v53 = 136446210;
    v55 = (v51 + *(v52 + 36));
    if (v55[1] >> 60 == 15)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    else
    {
      v58 = *v55;
      v56 = Data.hexString.getter();
      v57 = v59;
    }

    sub_10063F77C(*(v0 + 200), type metadata accessor for RawAccessoryMetadata);
    v60 = sub_1000136BC(v56, v57, &v209);

    *(v53 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v48, v49, "accessoryCategory: %{public}s", v53, 0xCu);
    sub_100007BAC(v54);
  }

  else
  {

    sub_10063F77C(v51, type metadata accessor for RawAccessoryMetadata);
  }

  v61 = *(v0 + 288);
  sub_10063F714(*(v0 + 232), *(v0 + 192), type metadata accessor for RawAccessoryMetadata);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = *(v0 + 192);
  if (v64)
  {
    v66 = *(v0 + 152);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v209 = v68;
    *v67 = 136446210;
    v69 = (v65 + *(v66 + 40));
    if (v69[1] >> 60 == 15)
    {
      v70 = 0;
      v71 = 0xE000000000000000;
    }

    else
    {
      v72 = *v69;
      v70 = Data.hexString.getter();
      v71 = v73;
    }

    sub_10063F77C(*(v0 + 192), type metadata accessor for RawAccessoryMetadata);
    v74 = sub_1000136BC(v70, v71, &v209);

    *(v67 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v62, v63, "accessoryCapabilities: %{public}s", v67, 0xCu);
    sub_100007BAC(v68);
  }

  else
  {

    sub_10063F77C(v65, type metadata accessor for RawAccessoryMetadata);
  }

  v75 = *(v0 + 288);
  sub_10063F714(*(v0 + 232), *(v0 + 184), type metadata accessor for RawAccessoryMetadata);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v0 + 184);
  if (v78)
  {
    v80 = *(v0 + 152);
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v209 = v82;
    *v81 = 136446210;
    v83 = (v79 + *(v80 + 44));
    if (v83[1] >> 60 == 15)
    {
      v84 = 0;
      v85 = 0xE000000000000000;
    }

    else
    {
      v86 = *v83;
      v84 = Data.hexString.getter();
      v85 = v87;
    }

    sub_10063F77C(*(v0 + 184), type metadata accessor for RawAccessoryMetadata);
    v88 = sub_1000136BC(v84, v85, &v209);

    *(v81 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v76, v77, "firmwareVersion: %{public}s", v81, 0xCu);
    sub_100007BAC(v82);
  }

  else
  {

    sub_10063F77C(v79, type metadata accessor for RawAccessoryMetadata);
  }

  v89 = *(v0 + 288);
  sub_10063F714(*(v0 + 232), *(v0 + 176), type metadata accessor for RawAccessoryMetadata);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  v92 = os_log_type_enabled(v90, v91);
  v93 = *(v0 + 176);
  if (v92)
  {
    v94 = *(v0 + 152);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v209 = v96;
    *v95 = 136446210;
    v97 = (v93 + *(v94 + 48));
    if (v97[1] >> 60 == 15)
    {
      v98 = 0;
      v99 = 0xE000000000000000;
    }

    else
    {
      v100 = *v97;
      v98 = Data.hexString.getter();
      v99 = v101;
    }

    sub_10063F77C(*(v0 + 176), type metadata accessor for RawAccessoryMetadata);
    v102 = sub_1000136BC(v98, v99, &v209);

    *(v95 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v90, v91, "protocolVersion: %{public}s", v95, 0xCu);
    sub_100007BAC(v96);
  }

  else
  {

    sub_10063F77C(v93, type metadata accessor for RawAccessoryMetadata);
  }

  v103 = *(v0 + 232);
  v104 = *(v0 + 152);
  v105 = v103 + *(v104 + 60);
  v106 = *(v105 + 8);
  if (v106 >> 60 == 15)
  {
    goto LABEL_46;
  }

  v107 = *v105;
  v108 = *(v0 + 144);
  sub_100017D5C(*v105, *(v105 + 8));
  sub_100017D5C(v107, v106);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (*(v0 + 59) == 1)
  {
    sub_100006654(v107, v106);
    v103 = *(v0 + 232);
LABEL_46:
    v109 = *(v0 + 288);
    sub_10063F714(v103, *(v0 + 160), type metadata accessor for RawAccessoryMetadata);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = *(v0 + 160);
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v113 = 136315138;
      v115 = (v112 + *(v104 + 60));
      v116 = v115[1] >> 60;
      v206 = v5;
      v209 = v114;
      if (v116 == 15)
      {
        v117 = 0;
        v118 = 0xE000000000000000;
      }

      else
      {
        v135 = *v115;
        v117 = Data.hexString.getter();
        v118 = v136;
      }

      v137 = *(v0 + 296);
      v138 = *(v0 + 232);
      sub_10063F77C(*(v0 + 160), type metadata accessor for RawAccessoryMetadata);
      v139 = sub_1000136BC(v117, v118, &v209);

      *(v113 + 4) = v139;
      _os_log_impl(&_mh_execute_header, v110, v111, "Could not convert batteryState data to UInt8 [%s]", v113, 0xCu);
      sub_100007BAC(v114);

      v121 = v138;
    }

    else
    {
      v119 = *(v0 + 232);
      v120 = *(v0 + 160);

      sub_10063F77C(v119, type metadata accessor for RawAccessoryMetadata);
      v121 = v120;
    }

    goto LABEL_66;
  }

  v122 = *(v0 + 58);
  v123 = *(v0 + 288);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v207 = v5;
    if (v122 >= 3)
    {
      v122 = 3;
    }

    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v209 = v127;
    v128 = 0xE700000000000000;
    *v126 = 136446210;
    v129 = 0x64657265776F70;
    v130 = 0xEB00000000656C62;
    v131 = 0x6167726168636572;
    if (v122 != 2)
    {
      v131 = 0x6E776F6E6B6E75;
      v130 = 0xE700000000000000;
    }

    if (v122)
    {
      v129 = 0x61686365526E6F6ELL;
      v128 = 0xEE00656C62616772;
    }

    if (v122 <= 1)
    {
      v132 = v129;
    }

    else
    {
      v132 = v131;
    }

    if (v122 <= 1)
    {
      v133 = v128;
    }

    else
    {
      v133 = v130;
    }

    v134 = sub_1000136BC(v132, v133, &v209);

    *(v126 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v124, v125, "batteryType: %{public}s", v126, 0xCu);
    sub_100007BAC(v127);

    v5 = v207;
  }

  else
  {
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v152 = qword_10177C218;
  v153 = [objc_opt_self() sharedInstance];
  v154 = [v153 isInternalBuild];

  if (v154)
  {
    v155 = String._bridgeToObjectiveC()();
    v156 = [v152 BOOLForKey:v155];
  }

  else
  {
    v156 = 0;
  }

  v157 = *(v0 + 232);
  v158 = *(v0 + 152);
  v159 = v157 + *(v158 + 64);
  v160 = *(v159 + 8);
  if (v160 >> 60 == 15)
  {
LABEL_78:
    v163 = *(v0 + 288);
    sub_10063F714(v157, *(v0 + 168), type metadata accessor for RawAccessoryMetadata);
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = *(v0 + 168);
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *v167 = 136315138;
      v169 = (v166 + *(v158 + 64));
      v170 = v169[1] >> 60;
      v209 = v168;
      if (v170 == 15)
      {
        v171 = 0;
        v172 = 0xE000000000000000;
      }

      else
      {
        v196 = *v169;
        v171 = Data.hexString.getter();
        v172 = v197;
      }

      bufb = *(v0 + 296);
      v205 = *(v0 + 232);
      sub_10063F77C(*(v0 + 168), type metadata accessor for RawAccessoryMetadata);
      v198 = sub_1000136BC(v171, v172, &v209);

      *(v167 + 4) = v198;
      _os_log_impl(&_mh_execute_header, v164, v165, "Could not convert batteryLevel data to UInt8 [%s]", v167, 0xCu);
      sub_100007BAC(v168);

      sub_100006654(v107, v106);
      v121 = v205;
    }

    else
    {
      v173 = *(v0 + 296);
      v174 = *(v0 + 232);
      v175 = *(v0 + 168);
      sub_100006654(v107, v106);

      sub_10063F77C(v174, type metadata accessor for RawAccessoryMetadata);
      v121 = v175;
    }

    goto LABEL_66;
  }

  v161 = *v159;
  v162 = *(v0 + 144);
  sub_100017D5C(*v159, *(v159 + 8));
  sub_100017D5C(v161, v160);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (*(v0 + 61) == 1)
  {
    sub_100006654(v161, v160);
    v157 = *(v0 + 232);
    goto LABEL_78;
  }

  v176 = *(v0 + 60);
  v177 = *(v0 + 288);
  [*(v0 + 296) setIsBatteryTooLow:v156 | (v176 < 4) & (8u >> (v176 & 0xF))];
  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v178, v179))
  {
    if (v176 >= 4)
    {
      v176 = 4;
    }

    buf = swift_slowAlloc();
    v204 = swift_slowAlloc();
    v209 = v204;
    v180 = 0xE400000000000000;
    v181 = 1819047270;
    *buf = 136446210;
    v182 = 0xE300000000000000;
    v183 = 7827308;
    v184 = 0xED0000776F4C796CLL;
    v185 = 0x6C61636974697263;
    if (v176 != 3)
    {
      v185 = 0x6E776F6E6B6E75;
      v184 = 0xE700000000000000;
    }

    if (v176 != 2)
    {
      v183 = v185;
      v182 = v184;
    }

    if (v176)
    {
      v181 = 0x6D756964656DLL;
      v180 = 0xE600000000000000;
    }

    if (v176 <= 1)
    {
      v186 = v181;
    }

    else
    {
      v186 = v183;
    }

    if (v176 <= 1)
    {
      v187 = v180;
    }

    else
    {
      v187 = v182;
    }

    v188 = v179;
    v189 = v5;
    v190 = sub_1000136BC(v186, v187, &v209);

    *(buf + 4) = v190;
    v5 = v189;
    _os_log_impl(&_mh_execute_header, v178, v188, "batteryState: %{public}s", buf, 0xCu);
    sub_100007BAC(v204);
  }

  v191 = *(v0 + 296);
  v192 = *(v0 + 232);
  v194 = *(v0 + 96);
  v193 = *(v0 + 104);
  *(v0 + 16) = v191;
  *(v0 + 57) = 0;
  v195 = v191;
  v194(v0 + 16);

  sub_100006654(v161, v160);
  sub_100006654(v107, v106);
  sub_10000B3A8(v0 + 16, &qword_1016A6080, &qword_1013B3BB0);
  v121 = v192;
LABEL_66:
  sub_10063F77C(v121, type metadata accessor for RawAccessoryMetadata);
  v140 = *(v0 + 280);
  v141 = *(v0 + 256);
  v143 = *(v0 + 224);
  v142 = *(v0 + 232);
  v145 = *(v0 + 208);
  v144 = *(v0 + 216);
  v147 = *(v0 + 192);
  v146 = *(v0 + 200);
  v149 = *(v0 + 176);
  v148 = *(v0 + 184);
  v199 = *(v0 + 168);
  bufa = *(v0 + 160);
  v203 = *(v0 + 144);
  v208 = *(v0 + 136);

  v150 = *(v0 + 8);

  return v150();
}

uint64_t sub_100635CB8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 128) + 88))(*(v0 + 136), *(v0 + 120)) == enum case for CentralManager.Error.missingService(_:))
    {
      v4 = *(v0 + 312);
      v5 = *(v0 + 288);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Missing Posh service, reading Hawkeye AIS...", v8, 2u);
      }

      v9 = *(v0 + 62);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);

      *(v0 + 80) = sub_1006360E0(v13, v9);
      sub_1000BC4D4(&qword_101699548, &unk_101391A70);
      sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70);
      Publisher.oneshot(_:)();

      v14 = *(v0 + 64);

      goto LABEL_10;
    }

    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 288);
  v17 = *(v0 + 64);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 312);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error reading metadata: %{public}@. Fallback to Hawkeye AIS...", v21, 0xCu);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
  }

  v24 = *(v0 + 312);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v28 = *(v0 + 88);
  v27 = *(v0 + 96);

  *(v0 + 72) = sub_1006360E0(v28, 0);
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70);
  Publisher.oneshot(_:)();

LABEL_10:
  v29 = *(v0 + 280);
  v30 = *(v0 + 256);
  v32 = *(v0 + 224);
  v31 = *(v0 + 232);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v36 = *(v0 + 192);
  v35 = *(v0 + 200);
  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v41 = *(v0 + 168);
  v42 = *(v0 + 160);
  v43 = *(v0 + 144);
  v44 = *(v0 + 136);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1006360E0(void *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for MACAddress();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C0F0);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v47 = v43;
    *v18 = 136315394;
    v19 = [*&v15[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    v42 = v17;
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10063F9D8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v7;
    v22 = v6;
    v23 = v3;
    v24 = a2;
    v26 = v25;
    (*(v44 + 8))(v13, v10);
    v27 = sub_1000136BC(v21, v26, &v47);
    a2 = v24;
    v3 = v23;
    v6 = v22;

    *(v18 + 4) = v27;
    *(v18 + 12) = 2080;
    v28 = v45;
    sub_100A22DF0(v45);
    v29 = MACAddress.hexString.getter();
    v31 = v30;
    (*(v46 + 8))(v28, v41);
    v32 = sub_1000136BC(v29, v31, &v47);

    *(v18 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v42, "createAccessory from peripheral: %s [%s]", v18, 0x16u);
    swift_arrayDestroy();
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v15;
  *(v33 + 24) = v3;
  *(v33 + 32) = a2 & 1;
  *(v33 + 40) = v6;
  v34 = sub_1000BC4D4(&qword_1016A6030, &unk_1013B3B70);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v15;

  v47 = Future.init(_:)();
  sub_1000041A4(&unk_1016A6038, &qword_1016A6030, &unk_1013B3B70);
  v38 = Publisher.eraseToAnyPublisher()();

  return v38;
}

uint64_t sub_100636570(void (*a1)(void), uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6)
{
  v150 = a6;
  v149 = a5;
  v152 = a4;
  v153 = a2;
  v133 = sub_1000BC4D4(&qword_1016A6048, &qword_101409EA0);
  v131 = *(v133 - 8);
  v8 = *(v131 + 64);
  __chkstk_darwin(v133);
  v132 = &v130 - v9;
  v140 = sub_1000BC4D4(&qword_1016A6050, &qword_1013B3B80);
  v138 = *(v140 - 8);
  v10 = *(v138 + 64);
  __chkstk_darwin(v140);
  v137 = &v130 - v11;
  v142 = sub_1000BC4D4(&qword_1016A6058, &qword_1013B3B88);
  v141 = *(v142 - 8);
  v12 = *(v141 + 64);
  __chkstk_darwin(v142);
  v139 = &v130 - v13;
  v145 = sub_1000BC4D4(&qword_1016A6060, &qword_1013B3B90);
  v144 = *(v145 - 8);
  v14 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v130 - v15;
  v148 = sub_1000BC4D4(&qword_1016A6068, &qword_1013B3B98);
  v147 = *(v148 - 8);
  v16 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = &v130 - v17;
  v162 = sub_1000BC4D4(&qword_1016A6070, &unk_1013B3BA0);
  v159 = *(v162 - 8);
  v18 = *(v159 + 64);
  v19 = __chkstk_darwin(v162);
  v163 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v160 = &v130 - v22;
  __chkstk_darwin(v21);
  v135 = &v130 - v23;
  v155 = sub_1000BC4D4(&qword_1016A6078, &unk_101409ED0);
  v154 = *(v155 - 8);
  v24 = *(v154 + 64);
  __chkstk_darwin(v155);
  v136 = &v130 - v25;
  v26 = type metadata accessor for MACAddress();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [objc_allocWithZone(SPDiscoveredAccessory) init];
  v37 = [*&a3[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v32 + 8))(v35, v31);
  [v36 setIdentifier:isa];

  v39 = v36;
  sub_100A22DF0(v30);
  v40 = MACAddress.data.getter();
  v42 = v41;
  (*(v27 + 8))(v30, v26);
  v43 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v40, v42);
  [v36 setMacAddress:v43];

  v168 = &type metadata for BAServiceIdentifier;
  v169 = &off_10162CAF0;
  LOBYTE(v167) = 0;
  v44 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v151 = a3;
  v45 = *&a3[v44];
  v165 = &v167;

  v46 = sub_1012BBDB4(sub_1001DB280, v164, v45);

  sub_100007BAC(&v167);
  if (v46)
  {
    v130 = v39;
    v134 = a1;
    if (qword_101694EC0 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_10177C0F0);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      v50 = os_log_type_enabled(v48, v49);
      v161 = v46;
      if (v50)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v167 = v52;
        *v51 = 136315138;

        v53 = sub_101103B5C();
        v55 = v54;

        v56 = sub_1000136BC(v53, v55, &v167);
        v46 = v161;

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "AccessoryInformationService: %s", v51, 0xCu);
        sub_100007BAC(v52);
      }

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v167 = v60;
        *v59 = 136315138;
        swift_beginAccess();
        Description = v46[2].Description;
        type metadata accessor for Characteristic();
        sub_10063F9D8(&qword_1016A5B28, type metadata accessor for Characteristic);

        v62 = Set.description.getter();
        v64 = v63;

        v65 = sub_1000136BC(v62, v64, &v167);

        *(v59 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v57, v58, "  characteristics: %s", v59, 0xCu);
        sub_100007BAC(v60);
      }

      isUniquelyReferenced_nonNull_native = swift_beginAccess();
      v67 = 0;
      v68 = _swiftEmptyArrayStorage;
      v46 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
      do
      {
        v70 = *(&off_101609968 + v67 + 32);
        v168 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
        v169 = &off_10162CAE0;
        LOBYTE(v167) = v70;
        v71 = v161[2].Description;
        __chkstk_darwin(isUniquelyReferenced_nonNull_native);
        *(&v130 - 2) = &v167;

        v72 = sub_1012BBE10(sub_1001DB2A0, (&v130 - 4), v71);

        isUniquelyReferenced_nonNull_native = sub_100007BAC(&v167);
        if (v72)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100A5D53C(0, v68[2] + 1, 1, v68);
            v68 = isUniquelyReferenced_nonNull_native;
          }

          v74 = v68[2];
          v73 = v68[3];
          if (v74 >= v73 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100A5D53C((v73 > 1), v74 + 1, 1, v68);
            v68 = isUniquelyReferenced_nonNull_native;
          }

          v68[2] = v74 + 1;
          v69 = &v68[2 * v74];
          *(v69 + 32) = v70;
          v69[5] = v72;
        }

        ++v67;
      }

      while (v67 != 9);
      v75 = v68[2];
      if (!v75)
      {
        break;
      }

      v167 = _swiftEmptyArrayStorage;
      sub_101124F10(0, v75, 0);
      v76 = 0;
      v156 = (v159 + 32);
      v77 = v167;
      v78 = v68 + 5;
      v79 = v163;
      v158 = v68;
      v157 = v75;
      while (v76 < v68[2])
      {
        v80 = *(v78 - 8);
        v81 = *v78;
        v82 = sub_1000BC4D4(&qword_1016A6088, &qword_1013B3BB8);
        v83 = *(v82 + 48);
        v84 = *(v82 + 52);
        swift_allocObject();
        swift_retain_n();
        v85 = Future.init(_:)();
        v163 = v77;
        v166 = v85;
        sub_1000041A4(&unk_1016A6090, &qword_1016A6088, &qword_1013B3BB8);
        v86 = Publisher.eraseToAnyPublisher()();

        v166 = v86;
        v87 = swift_allocObject();
        *(v87 + 16) = v80;
        *(v87 + 24) = v81;

        sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
        sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
        sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
        v77 = v163;
        Publisher.map<A>(_:)();

        v167 = v77;
        v89 = v77[2];
        v88 = v77[3];
        if (v89 >= v88 >> 1)
        {
          sub_101124F10(v88 > 1, v89 + 1, 1);
          v77 = v167;
        }

        ++v76;
        v77[2] = v89 + 1;
        v90 = v159;
        v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v92 = v77 + v91 + *(v159 + 72) * v89;
        v46 = v162;
        (*(v159 + 32))(v92, v79, v162);
        v78 += 2;
        v68 = v158;
        if (v157 == v76)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v90 = v159;
    v91 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v77 = _swiftEmptyArrayStorage;
    v46 = v162;
LABEL_24:
    v94 = v77[2];
    v95 = v153;
    v96 = v134;
    if (v94)
    {
      v97 = *(v90 + 16);
      v98 = v135;
      v159 = v90 + 16;
      v158 = v97;
      (v97)(v135, v77 + v91, v46);
      v99 = sub_1000BC4D4(&qword_1016A60B0, &qword_1013B3BD0);
      v100 = v136;
      v157 = v99;
      Publishers.Map.map<A>(_:)();
      v101 = v98;
      v102 = v90 + 8;
      v156 = *(v90 + 8);
      v156(v101, v46);
      v103 = sub_1000BC4D4(&qword_1016A60B8, &qword_1013B3BD8);
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      v106 = swift_allocObject();
      (*(v154 + 32))(&v106[*(*v106 + class metadata base offset for PublisherBox + 16)], v100, v155);
      v107 = v94 - 1;
      if (v107)
      {
        v108 = (v131 + 8);
        v109 = *(v90 + 72);
        v163 = v77;
        v155 = v109;
        v110 = v77 + v109 + v91;
        v111 = v133;
        v112 = v132;
        v154 = v102;
        v113 = v160;
        do
        {
          (v158)(v113, v110, v46);
          v167 = v106;
          sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
          sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0);
          sub_1000041A4(&qword_1016A60D0, &qword_1016A6070, &unk_1013B3BA0);
          v46 = v162;
          Publisher.zip<A, B>(_:_:)();

          sub_1000041A4(&qword_1016A60D8, &qword_1016A6048, &qword_101409EA0);
          v114 = Publisher.eraseToAnyPublisher()();
          v113 = v160;
          v106 = v114;
          (*v108)(v112, v111);
          v156(v113, v46);
          v110 += v155;
          --v107;
        }

        while (v107);

        v95 = v153;
        v96 = v134;
      }

      else
      {
      }

      v167 = v106;
      sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
      sub_100008BB8(0, &qword_1016A60E0, SPDiscoveredAccessoryMetadata_ptr);
      sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0);
      v115 = v137;
      Publisher.tryMap<A>(_:)();
      sub_1000041A4(&qword_1016A60E8, &qword_1016A6050, &qword_1013B3B80);
      sub_100101B58();
      v116 = v139;
      v117 = v140;
      Publisher.mapError<A>(_:)();
      (*(v138 + 8))(v115, v117);
      sub_1000BC4D4(&qword_1016A60F8, &qword_1013B3BE8);
      sub_1000041A4(&qword_1016A6100, &qword_1016A6058, &qword_1013B3B88);
      v118 = v143;
      v119 = v142;
      Publisher.map<A>(_:)();
      (*(v141 + 8))(v116, v119);
      sub_1000BC4D4(&qword_1016A6108, &unk_1013B3BF0);
      sub_1000041A4(&qword_1016A6110, &qword_1016A6060, &qword_1013B3B90);
      sub_1000041A4(&qword_1016A6118, &qword_1016A6108, &unk_1013B3BF0);
      v120 = v146;
      v121 = v145;
      Publisher.catch<A>(_:)();
      (*(v144 + 8))(v118, v121);
      v122 = swift_allocObject();
      swift_weakInit();
      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      v124 = v130;
      *(v123 + 24) = v130;
      *(v123 + 32) = v96;
      *(v123 + 40) = v95;
      *(v123 + 48) = v149 & 1;
      v125 = v151;
      v126 = v150;
      *(v123 + 56) = v151;
      *(v123 + 64) = v126;
      sub_1000041A4(&unk_1016A6120, &qword_1016A6068, &qword_1013B3B98);
      v127 = v124;

      v128 = v125;
      v129 = v148;
      Publisher<>.sink(receiveValue:)();

      (*(v147 + 8))(v120, v129);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v168 = &type metadata for BAServiceIdentifier;
    v169 = &off_10162CAF0;
    LOBYTE(v167) = 0;
    v170 = 257;
    a1(&v167);

    return sub_10000B3A8(&v167, &qword_1016A6080, &qword_1013B3BB0);
  }

  return result;
}

uint64_t sub_100637B2C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  sub_1000BC4D4(&qword_1016A61A8, &qword_1013B3C10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  *a2 = v7;

  return sub_100017D5C(v5, v6);
}

void *sub_100637BC4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  sub_1000BC4D4(&qword_1016A61A8, &qword_1013B3C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  sub_100017D5C(v7, v8);

  result = sub_100399F4C(inited);
  *a3 = v4;
  return result;
}

void sub_100637C80(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v155 = a2;
  v5 = type metadata accessor for Endianness();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v161 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v167 = [objc_allocWithZone(SPDiscoveredAccessoryMetadata) init];
  v9 = [objc_allocWithZone(SPRawAccessoryMetadata) init];
  v165 = *(v8 + 16);
  v166 = v9;
  if (!v165)
  {
LABEL_73:
    v90 = String._bridgeToObjectiveC()();
    v91 = v167;
    [v167 setProtocolVersion:v90];

    v92 = v166;
    [v91 setRawMetadata:v166];

    *v155 = v91;
    return;
  }

  v11 = 0;
  v12 = (v8 + 56);
  *&v10 = 136446210;
  v154 = v10;
  v163 = v8;
  while (1)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      swift_once();
LABEL_75:
      v93 = type metadata accessor for Logger();
      sub_1000076D4(v93, qword_10177C0F0);
      sub_100017D5C(v2, v3);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      sub_100016590(v2, v3);
      v18 = v2;
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v168 = v97;
        *v96 = 136315138;
        v98 = Data.hexString.getter();
        v100 = sub_1000136BC(v98, v99, &v168);

        *(v96 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v94, v95, "Could not convert findMyVersion data to VersionNumber [%s]", v96, 0xCu);
        sub_100007BAC(v97);
      }

      goto LABEL_118;
    }

    v13 = *(v12 - 2);
    v2 = *(v12 - 1);
    v3 = *v12;
    v14 = *(v12 - 24);
    if (v14 > 3)
    {
      if (*(v12 - 24) <= 5u)
      {
        if (v14 != 4)
        {
          v29 = v3 >> 62;
          v162 = *(v12 - 2);
          if ((v3 >> 62) > 1)
          {
            if (v29 != 2)
            {
              goto LABEL_84;
            }

            v37 = v2[2];
            v36 = v2[3];
            v30 = v36 - v37;
            if (__OFSUB__(v36, v37))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (!v29)
            {
              v30 = BYTE6(v3);
              goto LABEL_68;
            }

            if (__OFSUB__(HIDWORD(v2), v2))
            {
              goto LABEL_122;
            }

            v30 = HIDWORD(v2) - v2;
          }

          sub_100017D5C(v2, v3);
LABEL_68:
          if (v30 != 4)
          {
LABEL_84:

            sub_100017D5C(v2, v3);
            sub_100016590(v2, v3);
            if (qword_101694EC0 != -1)
            {
              swift_once();
            }

            v105 = type metadata accessor for Logger();
            sub_1000076D4(v105, qword_10177C0F0);
            sub_100017D5C(v2, v3);
            v94 = Logger.logObject.getter();
            v106 = static os_log_type_t.error.getter();
            sub_100016590(v2, v3);
            v18 = v2;
            if (os_log_type_enabled(v94, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v168 = v108;
              *v107 = 136315138;
              v109 = Data.hexString.getter();
              v111 = sub_1000136BC(v109, v110, &v168);

              *(v107 + 4) = v111;
              _os_log_impl(&_mh_execute_header, v94, v106, "Could not convert firmwareVersion data to VersionNumber [%s]", v107, 0xCu);
              sub_100007BAC(v108);
            }

LABEL_118:

LABEL_119:
            sub_100101B58();
            swift_allocError();
            v148 = v147;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            inited = swift_initStackObject();
            *(inited + 32) = 1635017060;
            *(inited + 16) = xmmword_101385D80;
            *(inited + 72) = &type metadata for Data;
            *(inited + 40) = 0xE400000000000000;
            *(inited + 48) = v18;
            *(inited + 56) = v3;
            sub_100017D5C(v18, v3);
            v150 = NSCocoaErrorDomain;
            sub_10090403C(inited);
            swift_setDeallocating();
            sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
            v151 = objc_allocWithZone(NSError);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v153 = [v151 initWithDomain:v150 code:2048 userInfo:isa];

            *v148 = v162;
            *(v148 + 8) = v153;
            *(v148 + 40) = 8;
            swift_willThrow();

            sub_100016590(v18, v3);

            return;
          }

          sub_100017D5C(v2, v3);
          v71 = Data.subdata(in:)();
          v157 = v72;
          v158 = v71;
          v73 = Data.subdata(in:)();
          v160 = v2;
          v156 = v73;
          v75 = v74;
          v76 = Data.subdata(in:)();
          v164 = v3;
          v78 = v77;
          v79 = Data._Representation.subscript.getter();
          v80 = Data._Representation.subscript.getter() | (v79 << 8);
          v81 = v75;
          v170 = Data._Representation.subscript.getter();
          v82 = v157;
          v83 = v158;
          LODWORD(v159) = Data._Representation.subscript.getter();
          sub_100016590(v76, v78);
          sub_100016590(v156, v81);
          sub_100016590(v83, v82);
          v3 = v160;
          sub_100016590(v160, v164);
          v171 = v80;
          v168 = dispatch thunk of CustomStringConvertible.description.getter();
          v169 = v84;
          v85._countAndFlagsBits = 46;
          v85._object = 0xE100000000000000;
          String.append(_:)(v85);
          LOBYTE(v171) = v170;
          v86 = v163;
          v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v87);

          v88._countAndFlagsBits = 46;
          v88._object = 0xE100000000000000;
          String.append(_:)(v88);
          LOBYTE(v171) = v159;
          v8 = v86;
          v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v89);

          v2 = String._bridgeToObjectiveC()();

          [v167 setFirmwareVersion:v2];

          v56 = v164;
          v57.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v166 setFirmwareVersion:v57.super.isa];
          v58 = v3;
LABEL_70:
          sub_100016590(v58, v56);

          goto LABEL_71;
        }

        sub_100017D5C(*(v12 - 1), *v12);

        sub_100017D5C(v2, v3);
        static Endianness.current.getter();
        sub_100101824();
        FixedWidthInteger.init(data:ofEndianness:)();
        if (BYTE4(v168))
        {
          v22 = 0;
        }

        else
        {
          v22 = v168;
        }

        v23 = v167;
        [v167 setAccessoryCapabilities:{v22, v154}];
        [v23 setCapabilities:sub_1010D92E0(v22)];
        v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
        [v166 setAccessoryCapabilities:{v17.super.isa, v154}];
        goto LABEL_35;
      }

      if (v14 != 6)
      {
        v15 = *(v12 - 1);
        v16 = *v12;
        if (v14 == 7)
        {
          sub_100017D5C(v15, v16);

          sub_100017D5C(v2, v3);
          static Endianness.current.getter();
          sub_1000198E8();
          FixedWidthInteger.init(data:ofEndianness:)();
          if ((v168 & 0x100) != 0)
          {
            v162 = v13;
            if (qword_101694EC0 != -1)
            {
              swift_once();
            }

            v136 = type metadata accessor for Logger();
            sub_1000076D4(v136, qword_10177C0F0);
            sub_100017D5C(v2, v3);
            v94 = Logger.logObject.getter();
            v137 = static os_log_type_t.error.getter();
            sub_100016590(v2, v3);
            v18 = v2;
            if (os_log_type_enabled(v94, v137))
            {
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v168 = v139;
              *v138 = 136315138;
              v140 = Data.hexString.getter();
              v142 = sub_1000136BC(v140, v141, &v168);

              *(v138 + 4) = v142;
              _os_log_impl(&_mh_execute_header, v94, v137, "Could not convert batteryType data to UInt8 [%s]", v138, 0xCu);
              sub_100007BAC(v139);
            }

            goto LABEL_118;
          }

          [v167 setBatteryType:v168];
          v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v166 setBatteryType:{v17.super.isa, v154}];
        }

        else
        {
          sub_100017D5C(v15, v16);

          sub_100017D5C(v2, v3);
          static Endianness.current.getter();
          sub_1000198E8();
          FixedWidthInteger.init(data:ofEndianness:)();
          if ((v168 & 0x100) != 0)
          {
            v162 = v13;
            if (qword_101694EC0 != -1)
            {
              swift_once();
            }

            v121 = type metadata accessor for Logger();
            sub_1000076D4(v121, qword_10177C0F0);
            sub_100017D5C(v2, v3);
            v94 = Logger.logObject.getter();
            v122 = static os_log_type_t.error.getter();
            sub_100016590(v2, v3);
            v18 = v2;
            if (os_log_type_enabled(v94, v122))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v168 = v124;
              *v123 = 136315138;
              v125 = Data.hexString.getter();
              v127 = sub_1000136BC(v125, v126, &v168);

              *(v123 + 4) = v127;
              _os_log_impl(&_mh_execute_header, v94, v122, "Could not convert batteryState data to UInt8 [%s]", v123, 0xCu);
              sub_100007BAC(v124);
            }

            goto LABEL_118;
          }

          [v167 setBatteryState:v168];
          v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v166 setBatteryLevel:{v17.super.isa, v154}];
        }

        goto LABEL_35;
      }

      v24 = v3 >> 62;
      v162 = *(v12 - 2);
      if ((v3 >> 62) > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_74;
        }

        v32 = v2[2];
        v31 = v2[3];
        v25 = v31 - v32;
        if (__OFSUB__(v31, v32))
        {
          goto LABEL_126;
        }
      }

      else
      {
        if (!v24)
        {
          v25 = BYTE6(v3);
LABEL_54:
          if (v25 != 4)
          {
LABEL_74:

            sub_100017D5C(v2, v3);
            sub_100016590(v2, v3);
            if (qword_101694EC0 == -1)
            {
              goto LABEL_75;
            }

            goto LABEL_127;
          }

          sub_100017D5C(v2, v3);
          v38 = Data.subdata(in:)();
          v157 = v39;
          v158 = v38;
          v40 = Data.subdata(in:)();
          v160 = v2;
          v156 = v40;
          v42 = v41;
          v43 = Data.subdata(in:)();
          v45 = v44;
          v46 = Data._Representation.subscript.getter();
          v47 = Data._Representation.subscript.getter();
          v164 = v3;
          v3 = v47 | (v46 << 8);
          v170 = Data._Representation.subscript.getter();
          v48 = v157;
          v49 = v158;
          LODWORD(v159) = Data._Representation.subscript.getter();
          sub_100016590(v43, v45);
          sub_100016590(v156, v42);
          sub_100016590(v49, v48);
          sub_100016590(v160, v164);
          v171 = v3;
          v168 = dispatch thunk of CustomStringConvertible.description.getter();
          v169 = v50;
          v51._countAndFlagsBits = 46;
          v51._object = 0xE100000000000000;
          String.append(_:)(v51);
          LOBYTE(v171) = v170;
          v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v52);

          v53._countAndFlagsBits = 46;
          v53._object = 0xE100000000000000;
          String.append(_:)(v53);
          LOBYTE(v171) = v159;
          v8 = v163;
          v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v54);

          v55 = String._bridgeToObjectiveC()();

          [v167 setFindMyVersion:v55];

          v2 = v160;
          v56 = v164;
          v57.super.isa = Data._bridgeToObjectiveC()().super.isa;
          [v166 setFindMyVersion:v57.super.isa];
          v58 = v2;
          goto LABEL_70;
        }

        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_125;
        }

        v25 = HIDWORD(v2) - v2;
      }

      sub_100017D5C(v2, v3);
      goto LABEL_54;
    }

    if (*(v12 - 24) <= 1u)
    {
      break;
    }

    if (v14 != 2)
    {
      sub_100017D5C(*(v12 - 1), *v12);

      sub_100017D5C(v2, v3);
      static Endianness.current.getter();
      sub_100235658();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v169)
      {
        v28 = 0;
      }

      else
      {
        v28 = v168;
      }

      [v167 setAccessoryCategory:{v28, v154}];
      v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
      [v166 setAccessoryCategory:{v17.super.isa, v154}];
LABEL_35:
      v27 = v2;
      goto LABEL_36;
    }

    v168 = *(v12 - 1);
    v169 = v3;

    sub_100017D5C(v2, v3);
    sub_1000E0A3C();
    DataProtocol.nullTerminatedUTF8String.getter();
    if (!v20)
    {
      v162 = v13;
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      sub_1000076D4(v112, qword_10177C0F0);
      sub_100017D5C(v2, v3);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      sub_100016590(v2, v3);
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v168 = v116;
        *v115 = 136315138;
        v117 = Data.hexString.getter();
        v18 = v2;
        v119 = v3;
        v120 = sub_1000136BC(v117, v118, &v168);

        *(v115 + 4) = v120;
        v3 = v119;
        _os_log_impl(&_mh_execute_header, v113, v114, "Could not convert modelName data to UTF8 [%s]", v115, 0xCu);
        sub_100007BAC(v116);

        goto LABEL_119;
      }

LABEL_108:

      v18 = v2;
      goto LABEL_119;
    }

    v21 = v2;
    v2 = String._bridgeToObjectiveC()();

    [v167 setModelName:v2];

    v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v166 setModelName:{v17.super.isa, v154}];
LABEL_28:
    v27 = v21;
    v8 = v163;
LABEL_36:
    sub_100016590(v27, v3);

LABEL_71:

LABEL_72:
    ++v11;
    v12 += 4;
    if (v165 == v11)
    {
      goto LABEL_73;
    }
  }

  if (*(v12 - 24))
  {
    v168 = *(v12 - 1);
    v169 = v3;

    sub_100017D5C(v2, v3);
    sub_1000E0A3C();
    DataProtocol.nullTerminatedUTF8String.getter();
    if (!v26)
    {
      v162 = v13;
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      sub_1000076D4(v128, qword_10177C0F0);
      sub_100017D5C(v2, v3);
      v113 = Logger.logObject.getter();
      v129 = static os_log_type_t.error.getter();
      sub_100016590(v2, v3);
      if (os_log_type_enabled(v113, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v168 = v131;
        *v130 = 136315138;
        v132 = Data.hexString.getter();
        v18 = v2;
        v134 = v3;
        v135 = sub_1000136BC(v132, v133, &v168);

        *(v130 + 4) = v135;
        v3 = v134;
        _os_log_impl(&_mh_execute_header, v113, v129, "Could not convert manufacturerName data to UTF8 [%s]", v130, 0xCu);
        sub_100007BAC(v131);

        goto LABEL_119;
      }

      goto LABEL_108;
    }

    v21 = v2;
    v2 = String._bridgeToObjectiveC()();

    [v167 setManufacturerName:v2];

    v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v166 setManufacturerName:{v17.super.isa, v154}];
    goto LABEL_28;
  }

  v18 = *(v12 - 1);
  v2 = (v3 >> 62);
  if ((v3 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_78;
    }

    v34 = *(v18 + 16);
    v33 = *(v18 + 24);
    v19 = v33 - v34;
    if (__OFSUB__(v33, v34))
    {
      goto LABEL_123;
    }

    v35 = *(v12 - 1);
  }

  else
  {
    if (!v2)
    {
      v19 = BYTE6(v3);
      goto LABEL_59;
    }

    v35 = *(v12 - 1);
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_124;
    }

    v19 = HIDWORD(v18) - v18;
  }

  sub_100017D5C(v35, *v12);
LABEL_59:
  if (v19 == 8)
  {

    sub_100017D5C(v18, v3);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000076D4(v59, qword_10177C0F0);
    sub_100017D5C(v18, v3);
    v60 = Logger.logObject.getter();
    v2 = v18;
    v61 = static os_log_type_t.default.getter();
    sub_100016590(v18, v3);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v170 = v61;
      v63 = v62;
      v159 = swift_slowAlloc();
      v168 = v159;
      *v63 = v154;
      sub_100017D5C(v18, v3);
      v64 = sub_100313D58(v18, v3);
      v162 = v13;
      v65 = v64;
      v67 = v66;
      sub_100016590(v2, v3);
      v68 = sub_1000136BC(v65, v67, &v168);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v170, "productData: %{public}s", v63, 0xCu);
      sub_100007BAC(v159);
    }

    v8 = v163;
    sub_100017D5C(v2, v3);
    v69 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v2, v3);
    [v167 setProductData:v69];

    v70 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v2, v3);
    [v166 setProductData:v70];

    sub_100016590(v2, v3);
    goto LABEL_72;
  }

LABEL_78:
  v162 = v13;

  sub_100017D5C(v18, v3);
  sub_100016590(v18, v3);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_1000076D4(v101, qword_10177C0F0);
  sub_100017D5C(v18, v3);
  v94 = Logger.logObject.getter();
  v102 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v94, v102))
  {
    sub_100016590(v18, v3);
    goto LABEL_118;
  }

  v103 = swift_slowAlloc();
  *v103 = 134217984;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      v104 = 0;
      goto LABEL_117;
    }

    v144 = *(v18 + 16);
    v143 = *(v18 + 24);
    v145 = __OFSUB__(v143, v144);
    v104 = v143 - v144;
    if (!v145)
    {
      goto LABEL_117;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v104 = BYTE6(v3);
LABEL_117:
    *(v103 + 4) = v104;
    v146 = v103;
    sub_100016590(v18, v3);
    _os_log_impl(&_mh_execute_header, v94, v102, "Invalid length for productData: [%ld]", v146, 0xCu);

    goto LABEL_118;
  }

  LODWORD(v104) = HIDWORD(v18) - v18;
  if (!__OFSUB__(HIDWORD(v18), v18))
  {
    v104 = v104;
    goto LABEL_117;
  }

  __break(1u);
}

uint64_t sub_100639390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v7 = *a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  result = swift_dynamicCast();
  if (result)
  {
    *&v9[9] = *&v6[25];
    v8 = *v6;
    *v9 = *&v6[16];
    v5 = *&v6[16];
    *a2 = *v6;
    *(a2 + 16) = v5;
    *(a2 + 25) = *&v9[9];
  }

  else
  {
    memset(v6, 0, 40);
    v6[40] = -1;
    sub_10000B3A8(v6, &unk_1016A6180, &unk_101409EE0);
    *a2 = v3;
    *(a2 + 40) = 0;
    return swift_errorRetain();
  }

  return result;
}

void sub_100639470(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, int a6, void *a7)
{
  v145 = a5;
  v146 = a4;
  v11 = sub_1000BC4D4(&qword_1016A6130, &qword_101409E90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v143 = &v133[-v14];
  v15 = sub_1000BC4D4(&qword_1016A6138, &unk_1013B3C00);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v133[-v18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_1000D2A70(a1, &v152, &qword_1016A60F8, &qword_1013B3BE8);
    v144 = v21;
    if (v154)
    {
      v150 = v152;
      v151[0] = *v153;
      *(v151 + 9) = *&v153[9];
      sub_100101AA8(&v150, v148);
      v149 = 1;
      v146(v148);
      sub_10000B3A8(v148, &qword_1016A6080, &qword_1013B3BB0);
      sub_100101B04(&v150);
      if ((a6 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v138 = v15;
      v139 = a7;
      v135 = v152;
      [a3 setDiscoveredMetadata:?];
      if (qword_101694EC0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      v23 = sub_1000076D4(v22, qword_10177C0F0);
      v24 = a3;
      v147 = v23;
      v25 = Logger.logObject.getter();
      LODWORD(v23) = static os_log_type_t.default.getter();

      v134 = v23;
      v26 = os_log_type_enabled(v25, v23);
      v140 = a6;
      v142 = v16;
      v141 = v19;
      v137 = v11;
      v136 = v12;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v148[0] = v28;
        *v27 = 136446210;
        v29 = [v24 discoveredMetadata];
        v30 = [v29 productData];

        v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = Data.hexString.getter();
        v36 = v35;
        sub_100016590(v31, v33);
        v37 = sub_1000136BC(v34, v36, v148);

        *(v27 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v25, v134, "productData: %{public}s", v27, 0xCu);
        sub_100007BAC(v28);
      }

      v38 = v24;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v148[0] = v42;
        *v41 = 136446210;
        v43 = [v38 discoveredMetadata];
        v44 = [v43 manufacturerName];

        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_1000136BC(v45, v47, v148);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "manufacturerName: %{public}s", v41, 0xCu);
        sub_100007BAC(v42);
      }

      v49 = v38;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v148[0] = v53;
        *v52 = 136446210;
        v54 = [v49 discoveredMetadata];
        v55 = [v54 modelName];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = sub_1000136BC(v56, v58, v148);

        *(v52 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v51, "modelName: %{public}s", v52, 0xCu);
        sub_100007BAC(v53);
      }

      v60 = v49;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 134349056;
        v64 = [v60 discoveredMetadata];
        v65 = [v64 accessoryCategory];

        *(v63 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "accessoryCategory: %{public}llu", v63, 0xCu);
      }

      else
      {

        v61 = v60;
      }

      v66 = v60;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 67240192;
        v70 = [v66 discoveredMetadata];
        v71 = [v70 accessoryCapabilities];

        *(v69 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v67, v68, "accessoryCapabilities: %{public}u", v69, 8u);
      }

      else
      {

        v67 = v66;
      }

      v72 = v66;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v148[0] = v76;
        *v75 = 136446210;
        v77 = [v72 discoveredMetadata];
        v78 = [v77 firmwareVersion];

        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = sub_1000136BC(v79, v81, v148);

        *(v75 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v73, v74, "firmwareVersion: %{public}s", v75, 0xCu);
        sub_100007BAC(v76);
      }

      v83 = v72;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v148[0] = v87;
        *v86 = 136446210;
        v88 = [v83 discoveredMetadata];
        v89 = [v88 protocolVersion];

        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        v93 = sub_1000136BC(v90, v92, v148);

        *(v86 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v84, v85, "protocolVersion: %{public}s", v86, 0xCu);
        sub_100007BAC(v87);
      }

      v94 = v140;
      v95 = v135;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v148[0] = v99;
        *v98 = 136446210;
        v100 = [v95 batteryType];
        if (v100)
        {
          v101 = 0xE700000000000000;
          v102 = 0x6E776F6E6B6E75;
          if (v100 == 1)
          {
            v102 = 0x61686365526E6F6ELL;
            v101 = 0xEE00656C62616772;
          }

          v103 = v100 == 2;
          if (v100 == 2)
          {
            v104 = 0x6167726168636572;
          }

          else
          {
            v104 = v102;
          }

          if (v103)
          {
            v105 = 0xEB00000000656C62;
          }

          else
          {
            v105 = v101;
          }
        }

        else
        {
          v105 = 0xE700000000000000;
          v104 = 0x64657265776F70;
        }

        v106 = sub_1000136BC(v104, v105, v148);

        *(v98 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v96, v97, "batteryType: %{public}s", v98, 0xCu);
        sub_100007BAC(v99);

        v94 = v140;
      }

      else
      {
      }

      if (qword_101694F58 != -1)
      {
        swift_once();
      }

      v107 = qword_10177C218;
      v108 = [objc_opt_self() sharedInstance];
      v109 = [v108 isInternalBuild];

      if (v109)
      {
        v110 = String._bridgeToObjectiveC()();
        v111 = [v107 BOOLForKey:v110];
      }

      else
      {
        v111 = 0;
      }

      v112 = [v95 batteryState];
      [v83 setIsBatteryTooLow:v111 | (v112 < 4) & (8u >> (v112 & 0xF))];
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      v115 = os_log_type_enabled(v113, v114);
      v19 = v141;
      v11 = v137;
      if (v115)
      {
        if (v112 >= 4)
        {
          v116 = 4;
        }

        else
        {
          v116 = v112;
        }

        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v148[0] = v118;
        *v117 = 136446210;
        if (v116 <= 1)
        {
          if (v116)
          {
            v119 = 0xE600000000000000;
            v120 = 0x6D756964656DLL;
          }

          else
          {
            v119 = 0xE400000000000000;
            v120 = 1819047270;
          }
        }

        else if (v116 == 2)
        {
          v119 = 0xE300000000000000;
          v120 = 7827308;
        }

        else if (v116 == 3)
        {
          v119 = 0xED0000776F4C796CLL;
          v120 = 0x6C61636974697263;
        }

        else
        {
          v119 = 0xE700000000000000;
          v120 = 0x6E776F6E6B6E75;
        }

        v121 = sub_1000136BC(v120, v119, v148);

        *(v117 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v113, v114, "batteryState: %{public}s", v117, 0xCu);
        sub_100007BAC(v118);

        v12 = v136;
        v94 = v140;
      }

      else
      {

        v12 = v136;
      }

      v148[0] = v83;
      v149 = 0;
      v122 = v83;
      v146(v148);

      sub_10000B3A8(v148, &qword_1016A6080, &qword_1013B3BB0);
      a7 = v139;
      v15 = v138;
      v16 = v142;
      if ((v94 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    if (v152)
    {
      v147 = v152;
      *&v152 = sub_10131FAE0(a7);
      v142 = v16;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      v141 = v19;
      sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
      v123 = v12;
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
      v124 = v143;
      Publisher.map<A>(_:)();

      sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
      sub_1000041A4(&qword_1016A6168, &qword_1016A6130, &qword_101409E90);
      sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
      v125 = v141;
      Publisher.catch<A>(_:)();
      (*(v123 + 8))(v124, v11);
      *(swift_allocObject() + 16) = a7;
      sub_1000041A4(&qword_1016A6178, &qword_1016A6138, &unk_1013B3C00);
      v126 = a7;
      Publisher<>.sink(receiveValue:)();

      (*(v142 + 8))(v125, v15);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

LABEL_59:

      return;
    }

    sub_100101B58();
    swift_allocError();
    *v127 = 16;
    *(v127 + 8) = 0u;
    *(v127 + 24) = 0u;
    *(v127 + 40) = 11;
    swift_willThrow();

    if (qword_101694810 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    sub_1000076D4(v128, qword_1016A5D30);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v152 = v132;
      *v131 = 136315138;
      *(v131 + 4) = sub_1000136BC(0xD000000000000034, 0x800000010135B9A0, &v152);
      _os_log_impl(&_mh_execute_header, v129, v130, "%s Missing CentralManager!", v131, 0xCu);
      sub_100007BAC(v132);
    }
  }
}

void sub_10063A750(uint64_t a1, void *a2)
{
  sub_1000D2A70(a1, &v22, &unk_1016A6150, &unk_10139DB30);
  if (v24)
  {
    v20 = v22;
    v21[0] = *v23;
    *(v21 + 9) = *&v23[9];
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C0F0);
    sub_100101AA8(&v20, v19);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2112;
      sub_100101B58();
      swift_allocError();
      sub_100101AA8(v19, v9);
      v10 = v4;
      v11 = _convertErrorToNSError(_:)();
      sub_100101B04(v19);

      *(v7 + 14) = v11;
      v8[1] = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to disconnect from %@: %@", v7, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();
    }

    else
    {

      sub_100101B04(v19);
    }

    sub_100101B04(&v20);
  }

  else
  {
    sub_10000B3A8(&v22, &unk_1016A6150, &unk_10139DB30);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C0F0);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully disconnected after readMetadata on %@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }
  }
}

uint64_t sub_10063AA70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a5;
  v16 = a3;

  sub_10025EDD4(0, 0, v13, &unk_1013B3CA0, v15);
}

uint64_t sub_10063ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v9 = *(*(type metadata accessor for AccessoryInfoEndPoint() - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = type metadata accessor for AccessoryMetadata(0);
  v7[17] = v11;
  v12 = *(v11 - 8);
  v7[18] = v12;
  v13 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v7[21] = v14;
  v15 = *(v14 - 8);
  v7[22] = v15;
  v16 = *(v15 + 64) + 15;
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_10063AD90, 0, 0);
}

uint64_t sub_10063AD90()
{
  v44 = v0;
  if (qword_101694810 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  *(v0 + 192) = v2;
  sub_1000076D4(v2, qword_1016A5D30);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136446210;
    v12 = [v9 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10063F9D8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1000136BC(v13, v15, &v43);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "retrieveProductInfo for accessory: %{public}s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  sub_100231730(*(v0 + 64), v19);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_10000B3A8(*(v0 + 128), &qword_1016A62A0, &unk_101396E10);
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 192), qword_10177C0F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "retrieveProductInfo: invalid parameters", v22, 2u);
    }

    v24 = *(v0 + 80);
    v23 = *(v0 + 88);

    *(v0 + 16) = 6;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 267;
    v24(v0 + 16);
    sub_10000B3A8(v0 + 16, &qword_1016A62A8, &qword_1013B3CA8);
    v25 = *(v0 + 184);
    v26 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 96);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 160);
    v36 = *(v0 + 144);
    v37 = *(v0 + 72);
    sub_10063F5C4(*(v0 + 128), v35, type metadata accessor for AccessoryMetadata);
    sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
    v38 = *(v36 + 72);
    v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    sub_10063F714(v35, v40 + v39, type metadata accessor for AccessoryMetadata);
    v41 = *(v37 + 88);

    v42 = swift_task_alloc();
    *(v0 + 200) = v42;
    *v42 = v0;
    v42[1] = sub_10063B288;

    return sub_100ED2090(v40, 0, 3, v41);
  }
}
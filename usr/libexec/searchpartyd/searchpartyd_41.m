uint64_t sub_1004476CC(char *a1)
{
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for Device();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v47 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = v14;
    v49 = v13;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AD08);
    sub_100A245E8(0xD000000000000018, 0x8000000101354F00);
    v26 = [*&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v23);
    swift_endAccess();
    sub_100A22DF0(v8);
    sub_10044DA44(v12);
    v27 = *(v3 + 8);
    v27(v8, v2);
    v29 = v48;
    v28 = v49;
    if ((*(v48 + 48))(v12, 1, v49) == 1)
    {
      v30 = v27;
      sub_10000B3A8(v12, &qword_101699860, &qword_1013A34D0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No BT device from BluetoothManager after pairing. Need to unpair", v33, 2u);
      }

      v34 = v50;
      sub_100A22DF0(v50);
      sub_10043B150(a1, v34);

      return v30(v34, v2);
    }

    else
    {
      v35 = v51;
      (*(v29 + 32))(v51, v12, v28);
      (*(v29 + 16))(v18, v35, v28);
      v36 = v28;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v52 = v40;
        *v39 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        v44 = *(v29 + 8);
        v44(v18, v36);
        v45 = sub_1000136BC(v41, v43, &v52);

        *(v39 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Found BT device from BluetoothManager after pairing as expected. %s", v39, 0xCu);
        sub_100007BAC(v40);

        return (v44)(v51, v49);
      }

      else
      {

        v46 = *(v29 + 8);
        v46(v18, v28);
        return (v46)(v35, v28);
      }
    }
  }

  return result;
}

uint64_t sub_100447E44@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v76 = a1;
  v68 = a2;
  v2 = type metadata accessor for UUID();
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v67 - v7;
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  unsafeFromAsyncTask<A>(_:)();
  v79 = v10;
  v84 = v13;
  v74 = v9;
  v75 = v18;
  v71 = v8;
  v25 = v85;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177AD08);

  v67[1] = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v84;
  v72 = v6;
  v73 = v2;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v85 = v33;
    *v32 = 134218242;
    *(v32 + 4) = *(v25 + 16);

    *(v32 + 12) = 2080;
    v34 = Array.description.getter();
    v83 = sub_1000136BC(v34, v35, &v85);

    *(v32 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v28, v29, "[sanitizedMAC] All paired devices [%ld]: %s", v32, 0x16u);
    sub_100007BAC(v33);
  }

  else
  {
  }

  v40 = v74;
  v41 = v75;
  v83 = *(v25 + 16);
  if (v83)
  {
    v42 = 0;
    v70 = OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject;
    v81 = v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v82 = v15;
    ++v79;
    v80 = v15 + 16;
    v43 = *(v78 + 32);
    v69 = (v77 + 8);
    v77 = v15 + 8;
    v78 = v43;
    do
    {
      if (v42 >= *(v25 + 16))
      {
        __break(1u);
        swift_once();
        v19 = type metadata accessor for Logger();
        sub_1000076D4(v19, qword_10177C418);
        swift_errorRetain();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138543362;
          swift_errorRetain();
          v24 = _swift_stdlib_bridgeErrorToNSError();
          *(v22 + 4) = v24;
          *v23 = v24;
          _os_log_impl(&_mh_execute_header, v20, v21, "Unable to retrieve paired devices: %{public}@", v22, 0xCu);
          sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {
        }

        v36 = v68;
        v37 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
        v38 = *(*(v37 - 8) + 56);
        v39 = v36;
        return v38(v39, 1, 1, v37);
      }

      v44 = v25;
      (*(v15 + 16))(v41, v81 + *(v15 + 72) * v42, v14);
      v45 = Device.btAddress.getter();
      v46 = v14;
      v47 = *(*(v78 + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
      __chkstk_darwin(v45);
      v67[-2] = v31;
      v67[-1] = v48;
      sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
      Lock.callAsFunction<A>(_:)();
      v49 = v85;
      (*v79)(v31, v40);
      if (v49)
      {
        v50 = [*(v49 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
        v51 = v71;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = [*(v76 + v70) identifier];
        v53 = v72;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v52) = static UUID.== infix(_:_:)();
        v54 = *v69;
        v55 = v53;
        v56 = v73;
        (*v69)(v55, v73);
        v54(v51, v56);
        if (v52)
        {

          v58 = v49;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138412290;
            *(v61 + 4) = v58;
            *v62 = v49;
            v63 = v58;
            _os_log_impl(&_mh_execute_header, v59, v60, "[sanitizedMAC] Found BT peripheral: %@", v61, 0xCu);
            sub_10000B3A8(v62, &qword_10169BB30, &unk_10138B3C0);
          }

          v64 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
          v65 = *(v64 + 48);
          v66 = v68;
          *v68 = v58;
          (*(v82 + 32))(&v66[v65], v75, v46);
          return (*(*(v64 - 8) + 56))(v66, 0, 1, v64);
        }

        v41 = v75;
        v14 = v46;
        (*v77)(v75, v46);

        v40 = v74;
      }

      else
      {
        (*v77)(v41, v14);
      }

      ++v42;
      v15 = v82;
      v31 = v84;
      v25 = v44;
    }

    while (v83 != v42);
  }

  v37 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  v38 = *(*(v37 - 8) + 56);
  v39 = v68;
  return v38(v39, 1, 1, v37);
}

uint64_t sub_100448730(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v53 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
  if ([v13 state] == 2)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177AD08);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Peripheral is already connected. No need to connect again.", v17, 2u);
    }

    v57 = a1;
    type metadata accessor for Peripheral();
    v18 = a1;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v4 + 8))(v7, v3);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v19 = Publisher.eraseToAnyPublisher()();
    (*(v9 + 8))(v12, v8);
    return v19;
  }

  v56 = v9;
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  v20 = unsafeFromAsyncTask<A>(_:)();
  v21 = v57;
  if (v57)
  {
    if (*(v57 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
    {
      v54 = v8;
      v55 = v1;
      v22 = *(v57 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
      __chkstk_darwin(v20);
      *(&v53 - 2) = v21;
      type metadata accessor for SharedPairingAgent();
      Lock.callAsFunction<A>(_:)();
      v23 = v57;
      LOBYTE(v22) = [*(v57 + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject) isPeerPaired:v13];

      if (v22)
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177AD08);
        v25 = a1;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v57 = v55;
          *v28 = 136315394;
          *(v28 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101354E50, &v57);
          *(v28 + 12) = 2112;
          *(v28 + 14) = v25;
          *v29 = v25;
          v30 = v25;
          _os_log_impl(&_mh_execute_header, v26, v27, "%s Not connecting to already paired peripheral: %@", v28, 0x16u);
          sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

          sub_100007BAC(v55);
        }

        v31 = v54;
        v57 = v25;
        type metadata accessor for Peripheral();
        v32 = v25;
        Just.init(_:)();
        sub_100101B58();
        Just.setFailureType<A>(to:)();
        (*(v4 + 8))(v7, v3);
        sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
        v19 = Publisher.eraseToAnyPublisher()();

        (*(v56 + 8))(v12, v31);
      }

      else
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_1000076D4(v43, qword_10177AD08);
        v44 = a1;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v57 = v49;
          *v47 = 136315394;
          *(v47 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101354E50, &v57);
          *(v47 + 12) = 2112;
          *(v47 + 14) = v44;
          *v48 = v44;
          v50 = v44;
          _os_log_impl(&_mh_execute_header, v45, v46, "%s Connecting to %@", v47, 0x16u);
          sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);

          sub_100007BAC(v49);
        }

        v51 = *(v55[4] + 24);
        v19 = sub_10131F050(v44, 0);
      }

      return v19;
    }

    __break(1u);
    goto LABEL_26;
  }

  v13 = sub_100101B58();
  swift_allocError();
  *v33 = 16;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 11;
  swift_willThrow();

  if (qword_1016946F0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177AD08);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v13;
    v39 = v8;
    v40 = v38;
    v57 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101354E50, &v57);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s Missing central manager service!", v37, 0xCu);
    sub_100007BAC(v40);
    v8 = v39;
  }

  v41 = v56;
  v57 = a1;
  type metadata accessor for Peripheral();
  v42 = a1;
  Just.init(_:)();
  Just.setFailureType<A>(to:)();
  (*(v4 + 8))(v7, v3);
  sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v41 + 8))(v12, v8);
  return v19;
}

void sub_1004490E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v6 = v5;
  v40 = a2;
  v41 = a5;
  v42 = a4;
  v39 = a3;
  v45 = a1;
  v38 = *v5;
  v7 = type metadata accessor for MACAddress();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SystemInfo.DeviceLockState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v46 = 0x7365547265646E75;
  v47 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v48 & 1) == 0)
  {
    v24 = v5[6];
    *v23 = v24;
    (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
    v25 = v24;
    LOBYTE(v24) = _dispatchPreconditionTest(_:)();
    (*(v20 + 8))(v23, v19);
    if ((v24 & 1) == 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    static SystemInfo.lockState.getter();
    (*(v12 + 104))(v16, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v11);
    sub_100019D54(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *(v12 + 8);
    v27(v16, v11);
    v27(v18, v11);
    if (v26)
    {
      if (qword_1016950D0 == -1)
      {
LABEL_7:
        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177C418);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v29, v30))
        {
LABEL_15:

          return;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "Not handling pairing/connection event before first unlock!";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);

        goto LABEL_15;
      }

LABEL_19:
      swift_once();
      goto LABEL_7;
    }

    v33 = v45;
    sub_100A22DF0(v10);
    v34 = MACAddress.isNull.getter();
    (*(v43 + 8))(v10, v44);
    if (v34)
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177AD08);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_15;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Void MAC address detected. Abort pairing!";
      goto LABEL_14;
    }

    v36 = type metadata accessor for Transaction();
    __chkstk_darwin(v36);
    *(&v38 - 8) = v33;
    *(&v38 - 7) = v6;
    *(&v38 - 48) = v39 & 1;
    v37 = v41;
    *(&v38 - 5) = v40;
    *(&v38 - 4) = v37;
    *(&v38 - 24) = v42 & 1;
    *(&v38 - 2) = v38;
    static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_10044969C(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v113 = a6;
  v110 = a4;
  v111 = a7;
  v106 = a5;
  v112 = a1;
  v9 = type metadata accessor for Device();
  v108 = *(v9 - 8);
  v109 = v9;
  v10 = *(v108 + 64);
  __chkstk_darwin(v9);
  v105 = v11;
  v107 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v78 - v14;
  v81 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v80 = *(v81 - 1);
  v16 = *(v80 + 64);
  __chkstk_darwin(v81);
  v18 = v78 - v17;
  v84 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v83 = *(v84 - 8);
  v19 = *(v83 + 64);
  __chkstk_darwin(v84);
  v79 = v78 - v20;
  v85 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v87 = *(v85 - 8);
  v21 = *(v87 + 64);
  __chkstk_darwin(v85);
  v82 = v78 - v22;
  v90 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v89 = *(v90 - 8);
  v23 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = v78 - v24;
  v94 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v93 = *(v94 - 8);
  v25 = *(v93 + 64);
  __chkstk_darwin(v94);
  v86 = v78 - v26;
  v97 = sub_1000BC4D4(&qword_1016A0520, &qword_1013A3520);
  v95 = *(v97 - 8);
  v27 = *(v95 + 64);
  __chkstk_darwin(v97);
  v91 = v78 - v28;
  v99 = sub_1000BC4D4(&qword_1016A0528, &qword_1013A3528);
  v96 = *(v99 - 8);
  v29 = *(v96 + 64);
  __chkstk_darwin(v99);
  v92 = v78 - v30;
  v102 = sub_1000BC4D4(&qword_1016A0530, &qword_1013A3530);
  v101 = *(v102 - 8);
  v31 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = v78 - v32;
  v33 = sub_1000BC4D4(&qword_1016A0538, &qword_1013A3538);
  v103 = *(v33 - 8);
  v104 = v33;
  v34 = *(v103 + 64);
  __chkstk_darwin(v33);
  v117 = v78 - v35;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_10177AD08);
  sub_100A245E8(0xD000000000000022, 0x8000000101354DC0);
  v120 = sub_100448730(a2);
  v121 = *(a3 + 48);
  v37 = v121;
  v114 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v38 = *(v114 - 8);
  v115 = *(v38 + 56);
  v78[4] = v38 + 56;
  v115(v15, 1, 1, v114);
  v39 = v37;
  v98 = a3;
  v40 = v39;
  v41 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v119 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v42 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v118 = sub_1004682F0();
  v78[3] = v41;
  v78[2] = v42;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v15, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v116 = type metadata accessor for Peripheral();
  v43 = v18;
  v78[1] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
  v44 = v79;
  v45 = v81;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v80 + 8))(v43, v45);
  v120 = v40;
  v115(v15, 1, 1, v114);
  v81 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500);
  v46 = v40;
  v47 = v82;
  v48 = v84;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v15, &unk_1016B0FE0, &unk_101391980);

  (*(v83 + 8))(v44, v48);
  *(swift_allocObject() + 16) = &off_101608EA8;
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40);
  v49 = v88;
  v50 = v85;
  v51 = v46;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  v52 = v47;
  v53 = v50;
  v54 = v114;
  v55 = v115;
  (*(v87 + 8))(v52, v53);
  v120 = v46;
  v55(v15, 1, 1, v54);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510);
  v56 = v86;
  v57 = v90;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v15, &unk_1016B0FE0, &unk_101391980);

  (*(v89 + 8))(v49, v57);
  v58 = v56;
  if (qword_101694700 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v59, qword_1016A00D0);
  v120 = v51;
  v55(v15, 1, 1, v54);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50);
  v60 = v91;
  v61 = v94;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v15, &unk_1016B0FE0, &unk_101391980);

  (*(v93 + 8))(v58, v61);
  sub_1000041A4(&qword_1016A0540, &qword_1016A0520, &qword_1013A3520);
  v62 = v92;
  v63 = v97;
  Publisher.compactMap<A>(_:)();
  (*(v95 + 8))(v60, v63);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v64 = v100;
  v65 = v99;
  Publishers.CompactMap.map<A>(_:)();
  (*(v96 + 8))(v62, v65);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016A0548, &qword_1016A0530, &qword_1013A3530);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v66 = v102;
  Publisher.catch<A>(_:)();
  (*(v101 + 8))(v64, v66);
  v67 = swift_allocObject();
  swift_weakInit();
  v69 = v107;
  v68 = v108;
  v70 = v109;
  (*(v108 + 16))(v107, v106, v109);
  v71 = (*(v68 + 80) + 33) & ~*(v68 + 80);
  v72 = (v105 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = v112;
  *(v73 + 24) = v67;
  *(v73 + 32) = v110 & 1;
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = v73 + v72;
  *v74 = v113;
  *(v74 + 8) = v111 & 1;
  sub_1000041A4(&qword_1016A0550, &qword_1016A0538, &qword_1013A3538);

  v75 = v104;
  v76 = v117;
  Publisher<>.sink(receiveValue:)();

  (*(v103 + 8))(v76, v75);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10044A624@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v47 = v46 - v8;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v48 = v46 - v12;
  v13 = *a1;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_1000076D4(v14, qword_10177AD08);
  v16 = v13;
  v46[1] = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46[0] = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v22 = v10;
    v23 = v5;
    v24 = v9;
    v25 = a3;
    v26 = swift_slowAlloc();
    v50[0] = v26;
    *v20 = 136315394;
    *(v20 + 4) = sub_1000136BC(0xD000000000000050, 0x8000000101354DF0, v50);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v16;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s Connected to %@", v20, 0x16u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
    a3 = v25;
    v9 = v24;
    v5 = v23;
    v10 = v22;

    v6 = v46[0];
  }

  v50[3] = &type metadata for BAServiceIdentifier;
  v50[4] = &off_10162CAF0;
  LOBYTE(v50[0]) = 1;
  v28 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v29 = swift_beginAccess();
  v30 = *&v16[v28];
  __chkstk_darwin(v29);
  v46[-2] = v50;

  v31 = sub_1012BBDB4(sub_1001DB3F8, &v46[-4], v30);

  sub_100007BAC(v50);
  if (v31)
  {
    v32 = sub_10039C428(v49);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    v34 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v50[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v37 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000136BC(0xD000000000000050, 0x8000000101354DF0, v50);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s No FindMy service", v41, 0xCu);
      sub_100007BAC(v42);
    }

    v50[0] = v16;
    type metadata accessor for Peripheral();
    v43 = v16;
    v44 = v47;
    Just.init(_:)();
    sub_100101B58();
    v45 = v48;
    Just.setFailureType<A>(to:)();
    (*(v6 + 8))(v44, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v37 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v45, v9);
  }

  *a3 = v37;
  return result;
}

uint64_t sub_10044AC28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000D2A70(a1, &v43, &unk_1016A6150, &unk_10139DB30);
    if (v45)
    {
      v41 = v43;
      *v42 = *v44;
      *&v42[9] = *&v44[9];
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177AD08);
      sub_100101AA8(&v41, v40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39 = v18;
        *v16 = 136315394;
        *(v16 + 4) = sub_1000136BC(0xD000000000000050, 0x8000000101354DF0, &v39);
        *(v16 + 12) = 2114;
        sub_100101B58();
        swift_allocError();
        sub_100101AA8(v40, v19);
        v20 = _swift_stdlib_bridgeErrorToNSError();
        sub_100101B04(v40);
        *(v16 + 14) = v20;
        *v17 = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s error: %{public}@", v16, 0x16u);
        sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v18);
      }

      else
      {

        sub_100101B04(v40);
      }

      return sub_100101B04(&v41);
    }

    else
    {
      v21 = v43;
      *&v42[8] = &type metadata for BAServiceIdentifier;
      *&v42[16] = &off_10162CAF0;
      LOBYTE(v41) = 1;
      v22 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
      v23 = swift_beginAccess();
      v24 = *&v21[v22];
      __chkstk_darwin(v23);
      v38[2] = &v41;

      v25 = sub_1012BBDB4(sub_1001DB280, v38, v24);

      sub_100007BAC(&v41);
      if (v25)
      {
        if (a4)
        {
          if (qword_1016946F0 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          sub_1000076D4(v26, qword_10177AD08);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v27, v28, "Bypassing Privacy Alert and force pairing", v29, 2u);
          }

          sub_10044C750(v25, v21, a5, 1, a6);
        }

        else
        {
          if (qword_1016946F0 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_1000076D4(v34, qword_10177AD08);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "Owner characteristic available. Proceed with privacy alert.", v37, 2u);
          }

          sub_10044B1D4(v25, v21, a5, a7 & 1);
        }
      }

      else
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000076D4(v30, qword_10177AD08);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "No FindMy service", v33, 2u);
        }
      }
    }
  }

  return result;
}

void sub_10044B1D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + 48);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v26[3] = &type metadata for BACharacteristicIdentifier.FindMy;
  v26[4] = &off_10162CAD0;
  LOBYTE(v26[0]) = 3;
  v16 = swift_beginAccess();
  v17 = *(a1 + 40);
  __chkstk_darwin(v16);
  *&v25[-16] = v26;

  v18 = sub_1012BBE10(sub_10038C458, &v25[-32], v17);

  sub_100007BAC(v26);
  if (v18)
  {
    v19 = sub_100437674();
    v20 = type metadata accessor for Transaction();
    __chkstk_darwin(v20);
    *&v25[-64] = v19;
    *&v25[-56] = a2;
    *&v25[-48] = v18;
    *&v25[-40] = a3;
    v25[-32] = a4 & 1;
    *&v25[-24] = v4;
    *&v25[-16] = a1;
    static Transaction.named<A>(_:with:)();

    return;
  }

  if (qword_1016946F0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177AD08);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Missing Paired Owner Characteristic!", v24, 2u);
  }
}

uint64_t sub_10044B4F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v42 = a7;
  v9 = a6;
  v46 = a6;
  v44 = a5;
  v45 = a3;
  v54 = a1;
  v51 = type metadata accessor for Device();
  v48 = *(v51 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v51);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v42 - v17;
  v19 = sub_1000BC4D4(&qword_1016A0500, &qword_1013A34D8);
  v20 = *(v19 - 8);
  v52 = v19;
  v53 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v43 = &v42 - v22;
  v23 = *(a2 + 24);
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = v9;
  sub_1000BC4D4(&qword_1016A0508, &qword_1013A34E0);
  v24 = v50;
  OS_dispatch_queue.sync<A>(execute:)();
  v50 = v24;
  v61 = *(a7 + 48);
  v25 = v61;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0510, &qword_1016A0508, &qword_1013A34E0);
  sub_1004682F0();
  v27 = v25;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  v28 = swift_allocObject();
  swift_weakInit();
  v30 = v47;
  v29 = v48;
  v31 = v51;
  (*(v48 + 16))(v47, v44, v51);
  v32 = v29;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v45;
  *(v35 + 16) = v28;
  *(v35 + 24) = v36;
  (*(v32 + 32))(v35 + v33, v30, v31);
  *(v35 + v34) = v54;
  v37 = v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v37 = v55;
  *(v37 + 8) = v46;
  sub_1000041A4(&qword_1016A0518, &qword_1016A0500, &qword_1013A34D8);
  v38 = v36;

  v39 = v52;
  v40 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v53 + 8))(v40, v39);
  AnyCancellable.store(in:)();
}

uint64_t sub_10044B998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v27 = a7;
  v11 = type metadata accessor for Device();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v26 = type metadata accessor for Transaction();
    v17 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24 = a6;
    v25 = v16;
    v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = a3;
    (*(v12 + 32))(v20 + v18, v14, v11);
    *(v20 + v19) = a5;
    v21 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = v24;
    *(v21 + 8) = v27 & 1;

    v22 = a3;

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_10044BBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 240) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v6 + 160) = v10;
  v11 = *(v10 - 8);
  *(v6 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v13 = type metadata accessor for Device();
  *(v6 + 184) = v13;
  v14 = *(v13 - 8);
  *(v6 + 192) = v14;
  *(v6 + 200) = *(v14 + 64);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10044BD58, 0, 0);
}

uint64_t sub_10044BD58()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_10044BE7C;
    v4 = v0[13];

    return sub_10044DEFC(v4);
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[22];
    v9 = v0[19];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10044BE7C(char a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 241) = a1;

  return _swift_task_switch(sub_10044BF7C, 0, 0);
}

uint64_t sub_10044BF7C()
{
  v52 = v0;
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 216);
    v39 = *(v0 + 224);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v43 = *(v0 + 176);
    v48 = *(v0 + 168);
    v49 = *(v0 + 160);
    v44 = *(v0 + 152);
    v45 = *(v0 + 136);
    v42 = *(v0 + 240);
    v5 = *(v0 + 120);
    v40 = *(v0 + 104);
    v41 = *(v0 + 128);
    v46 = *(v39 + 48);
    v47 = *(v0 + 144);
    (*(v3 + 16))(v1, *(v0 + 112), v4);
    v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    (*(v3 + 32))(v9 + v6, v1, v4);
    *(v9 + v7) = v39;
    *(v9 + v8) = v41;
    v10 = v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v10 = v40;
    *(v10 + 8) = v42;
    *(v0 + 48) = sub_1004686D4;
    *(v0 + 56) = v9;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100006684;
    *(v0 + 40) = &unk_10161D4C8;
    v11 = _Block_copy((v0 + 16));

    v12 = v40;
    static DispatchQoS.unspecified.getter();
    *(v0 + 88) = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v47 + 8))(v44, v45);
    (*(v48 + 8))(v43, v49);

    v13 = *(v0 + 56);
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    v17 = *(v0 + 112);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177AD08);
    (*(v16 + 16))(v14, v17, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    if (v21)
    {
      v50 = *(v0 + 224);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136446210;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_1000136BC(v28, v30, &v51);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "FindMy pairing has been completed for %{public}s.", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {
      v32 = *(v0 + 224);

      (*(v24 + 8))(v23, v25);
    }
  }

  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v35 = *(v0 + 176);
  v36 = *(v0 + 152);

  v37 = *(v0 + 8);

  return v37();
}

void sub_10044C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char a6)
{
  v31 = a4;
  v10 = type metadata accessor for Device();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177AD08);
  (*(v11 + 16))(v14, a2, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = a3;
    v28 = v20;
    v32 = v20;
    *v19 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = a6;
    v23 = a5;
    v25 = v24;
    (*(v11 + 8))(v14, v10);
    v26 = sub_1000136BC(v21, v25, &v32);
    a5 = v23;
    a6 = v22;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "FindMy pairing is not completed for %{public}s. Attempt to pair...", v19, 0xCu);
    sub_100007BAC(v28);

    a2 = v29;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_10044C750(v31, a5, a2, a6 & 1, _swiftEmptyArrayStorage);
}

void sub_10044C750(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v65 = a3;
  v66 = a5;
  v64 = a4;
  v67 = a2;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v60 - v9;
  v11 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v60 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v5 + 48);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v63 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_10;
  }

  v70 = &type metadata for BACharacteristicIdentifier.FindMy;
  v71 = &off_10162CAD0;
  LOBYTE(v69[0]) = 0;
  v22 = swift_beginAccess();
  v23 = *(a1 + 40);
  __chkstk_darwin(v22);
  v60[-2] = v69;

  v24 = sub_1012BBE10(sub_1001DB2A0, &v60[-4], v23);

  sub_100007BAC(v69);
  if (v24)
  {
    My = type metadata accessor for Feature.FindMy();
    v70 = My;
    v71 = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v26 = sub_1000280DC(v69);
    (*(*(My - 8) + 104))(v26, enum case for Feature.FindMy.baAirpods(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    v27 = sub_100007BAC(v69);
    if (My)
    {
      v28 = *(v5 + 72);
      __chkstk_darwin(v27);
      v62 = v5;
      v29 = v67;
      v60[-2] = v5;
      v60[-1] = v29;
      QueueSynchronizer.conditionalSync<A>(_:)();
      if (v69[0])
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000076D4(v30, qword_10177AD08);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_18;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Pairing in progress. Not pairing.";
        goto LABEL_17;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177AD08);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      v43 = os_log_type_enabled(v41, v42);
      v60[1] = 0;
      v61 = v12;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v69[0] = v45;
        *v44 = 136446210;

        v47 = sub_100A5AADC(v46);
        v60[0] = v11;
        v49 = v48;

        v50 = sub_1000136BC(v47, v49, v69);
        v11 = v60[0];

        *(v44 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v41, v42, "Pairing characteristic %{public}s available. Proceed with FindMy pairing.", v44, 0xCu);
        sub_100007BAC(v45);
      }

      v51 = sub_100436F60(v67);
      if (v51)
      {
        v52 = *(v51 + 16);
        v53 = __chkstk_darwin(v51);
        v60[-6] = v53;
        LOBYTE(v60[-5]) = v64 & 1;
        v54 = v66;
        v60[-4] = v65;
        v60[-3] = v54;
        v60[-2] = v24;
        v67 = v53;
        v66 = sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
        OS_dispatch_queue.sync<A>(execute:)();
        v55 = v63;
        v68 = v63;
        v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v56 - 8) + 56))(v10, 1, 1, v56);
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8);
        sub_1004682F0();
        v57 = v55;
        Publisher.receive<A>(on:options:)();
        sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

        v58 = swift_allocObject();
        swift_weakInit();
        v59 = swift_allocObject();
        *(v59 + 16) = sub_100468358;
        *(v59 + 24) = v58;
        sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0);
        Publisher<>.sink(receiveValue:)();

        (*(v61 + 8))(v15, v11);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        return;
      }

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_18;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Unable to create a new pairing manager to pair AirPods!";
    }

    else
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177AD08);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_18;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Internal Settings -> Feature Flags -> FindMy -> baAirpods is disabled.";
    }

LABEL_17:
    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_18:

    return;
  }

  if (qword_1016946F0 != -1)
  {
    goto LABEL_28;
  }

LABEL_10:
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177AD08);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Missing FindMy Pairing Characteristic!", v38, 2u);
  }
}

uint64_t sub_10044D134(char *a1)
{
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v59 - v8;
  v9 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v69 = (&v59 - v11);
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v59 - v18;
  v67 = type metadata accessor for UUID();
  v20 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v64 = v7;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v63 = v17;
    v25 = type metadata accessor for Logger();
    v26 = sub_1000076D4(v25, qword_10177AD08);
    sub_100A245E8(0xD000000000000015, 0x8000000101354C80);
    v27 = [*&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v22);
    swift_endAccess();

    v66 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v65 = v19;
      v31 = v30;
      v32 = swift_slowAlloc();
      v60 = a1;
      v33 = v32;
      v70[0] = v32;
      *v31 = 136315138;
      v61 = v3;
      v34 = *(v24 + 192);
      type metadata accessor for AirPodsPairingManager();
      v62 = v13;
      sub_100019D54(&qword_1016967B0, &type metadata accessor for UUID);

      v35 = Dictionary.description.getter();
      v37 = v36;
      v3 = v61;

      v38 = sub_1000136BC(v35, v37, v70);
      v13 = v62;

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "pairingManagers: %s", v31, 0xCu);
      sub_100007BAC(v33);
      a1 = v60;

      v19 = v65;
    }

    v39 = v68;
    sub_100A22DF0(v68);
    v40 = v69;
    sub_10044DA44(v69);
    v41 = v39;
    v42 = a1;
    v43 = *(v3 + 8);
    v43(v41, v2);
    if ((*(v13 + 48))(v40, 1, v12) == 1)
    {
      sub_10000B3A8(v40, &qword_101699860, &qword_1013A34D0);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "No BT device from BluetoothManager after pairing. Need to unpair", v46, 2u);
      }

      v47 = v64;
      sub_100A22DF0(v64);
      sub_10043B150(v42, v47);

      return (v43)(v47, v2);
    }

    else
    {
      (*(v13 + 32))(v19, v40, v12);
      v48 = v63;
      (*(v13 + 16))(v63, v19, v12);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v65 = v19;
        v52 = v51;
        v69 = swift_slowAlloc();
        v70[0] = v69;
        *v52 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v56 = *(v13 + 8);
        v56(v48, v12);
        v57 = sub_1000136BC(v53, v55, v70);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v49, v50, "Found BT device from BluetoothManager after pairing as expected. %s", v52, 0xCu);
        sub_100007BAC(v69);

        return (v56)(v65, v12);
      }

      else
      {

        v58 = *(v13 + 8);
        v58(v48, v12);
        return (v58)(v19, v12);
      }
    }
  }

  return result;
}

uint64_t sub_10044DA44@<X0>(uint64_t a1@<X8>)
{
  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  unsafeFromAsyncTask<A>(_:)();
  if (v1)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C418);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 136315394;
      *(v6 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101354C00, &v22);
      *(v6 + 12) = 2114;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v9;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Unable to retrieve paired devices: %{public}@", v6, 0x16u);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v8);
    }

    return swift_willThrow();
  }

  else
  {
    v11 = v22;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177AD08);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v15 = 134218242;
      *(v15 + 4) = *(v11 + 16);

      *(v15 + 12) = 2080;
      type metadata accessor for Device();
      v16 = Array.description.getter();
      v18 = a1;
      v19 = sub_1000136BC(v16, v17, &v22);

      *(v15 + 14) = v19;
      a1 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "All paired devices [%ld]: %s", v15, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {
    }

    __chkstk_darwin(v20);
    sub_1012BC1FC(sub_10046828C, v11, a1);
  }
}

uint64_t sub_10044DE10()
{
  v0 = type metadata accessor for MACAddress();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Device.btAddress.getter();
  v5 = static MACAddress.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_10044DEFC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10044DFF8, 0, 0);
}

uint64_t sub_10044DFF8()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10044E0B0;
  v3 = v0[2];
  v4 = v0[3];

  return (sub_10044EA7C)(v3, v1);
}

uint64_t sub_10044E0B0(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 113) = a1;

  return _swift_task_switch(sub_10044E1B0, 0, 0);
}

uint64_t sub_10044E1B0()
{
  if (*(v0 + 113) == 1)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177AD08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "isPairingPending: standalone pairing is required.", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_10044E3AC;
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);

    return sub_10044F97C(v6);
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = async function pointer to unsafeBlocking<A>(_:)[1];

    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_10044E4E8;
    v12 = *(v0 + 24);

    return unsafeBlocking<A>(_:)(v0 + 112, sub_100468204, v12, &type metadata for Bool);
  }
}

uint64_t sub_10044E3AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v9 = *v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 40);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_10044E4E8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10044E600, 0, 0);
}

uint64_t sub_10044E600()
{
  v19 = v0;
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v3 = swift_allocObject();
    *(v0 + 96) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = async function pointer to unsafeBlocking<A>(_:)[1];

    v5 = v2;
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_10044E85C;
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);

    return unsafeBlocking<A>(_:)(v7, sub_10046820C, v3, v8);
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177AD08);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101354C20, &v18);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s BeaconStore is not available. Not allowing pairing", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v14 = *(v0 + 64);
    v15 = *(v0 + 40);

    v16 = *(v0 + 8);

    return v16(0);
  }
}

uint64_t sub_10044E85C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_10044E974, 0, 0);
}

uint64_t sub_10044E974()
{
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v2 = 1;
  }

  else
  {
    v3 = v0[8];
    sub_10046B7F0(v1, v3, type metadata accessor for OwnedBeaconGroup);
    v4 = sub_100518118();
    sub_10046B858(v3, type metadata accessor for OwnedBeaconGroup);
    v2 = v4 ^ 1;
  }

  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7(v2 & 1);
}

uint64_t sub_10044EA7C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10044EB88, 0, 0);
}

uint64_t sub_10044EB88()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  v3 = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if ((v3 & 1) == 0)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C418);
    v19 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v26))
    {
      goto LABEL_28;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Requires standalone pairing [false], feature disabled.";
    v29 = v26;
    v30 = v19;
    v31 = v27;
    v32 = 2;
    goto LABEL_27;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultStore];
  if (!v5)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = v5;
  v14 = [v5 aa_primaryAppleAccount];

  if (!v14)
  {
    goto LABEL_7;
  }

  v5 = [v4 defaultStore];
  if (!v5)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v15 = v5;
  v16 = [v5 aa_primaryAppleAccount];

  if (!v16 || (v17 = sub_10051441C(), v16, v17 != 2))
  {
    v33 = *(v0[9] + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v34 = v0[7];
    v0[17] = v34;
    v35 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v36 = swift_task_alloc();
    v0[18] = v36;
    *v36 = v0;
    v36[1] = sub_10044F0A0;
    v12 = &type metadata for Bool;
    v10 = sub_10046825C;
    v5 = v0 + 21;
    v9 = 0x8000000101354C60;
    v6 = 0;
    v7 = 0;
    v8 = 0xD000000000000014;
    v11 = v34;

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
  }

LABEL_7:
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_28;
  }

  v21 = swift_slowAlloc();
  *v21 = 67109376;
  v5 = [v4 defaultStore];
  if (!v5)
  {
    goto LABEL_33;
  }

  v22 = v5;
  v23 = [v5 aa_primaryAppleAccount];

  if (v23)
  {

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  *(v21 + 4) = v24;
  *(v21 + 8) = 1024;
  v5 = [v4 defaultStore];
  if (!v5)
  {
    goto LABEL_34;
  }

  v37 = v5;
  v38 = [v5 aa_primaryAppleAccount];

  v40 = 0;
  if (v38)
  {
    v39 = sub_10051441C();

    if (v39 == 2)
    {
      v40 = 1;
    }
  }

  *(v21 + 10) = v40;
  v28 = "Requires standalone pairing [true] isiCloudSignedIn: %{BOOL}d isiCloudAccountStandard %{BOOL}d.";
  v29 = v20;
  v30 = v19;
  v31 = v21;
  v32 = 14;
LABEL_27:
  _os_log_impl(&_mh_execute_header, v30, v29, v28, v31, v32);

LABEL_28:

  v42 = v0[15];
  v41 = v0[16];
  v43 = v0[12];

  v44 = v0[1];

  return v44(v3 & 1);
}

uint64_t sub_10044F0A0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10044F19C, 0, 0);
}

uint64_t sub_10044F19C()
{
  v1 = *(v0 + 136);

  if (*(v0 + 168) == 1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_allocObject();
    *(v0 + 152) = v5;
    v5[2] = v3;
    v5[3] = v4;
    v5[4] = v2;
    v6 = async function pointer to unsafeBlocking<A>(_:)[1];

    v7 = v4;

    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_10044F3C0;
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);

    return unsafeBlocking<A>(_:)(v9, sub_100468264, v5, v10);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C418);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Requires standalone pairing [true], manatee is not available.", v14, 2u);
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 96);

    v18 = *(v0 + 8);

    return v18(1);
  }
}

uint64_t sub_10044F3C0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10044F4D8, 0, 0);
}

uint64_t sub_10044F4D8()
{
  v31 = v0;
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8B0, &unk_1013A0700);
LABEL_5:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C418);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Requires standalone pairing [false] group not found, isFindMyNetworkEnabled: true (default).", v7, 2u);
    }

    v8 = 0;
    goto LABEL_16;
  }

  v3 = v0[16];
  sub_10046B7F0(v2, v3, type metadata accessor for OwnedBeaconGroup);
  if (*(v3 + *(v1 + 32)))
  {
    sub_10046B858(v0[16], type metadata accessor for OwnedBeaconGroup);
    goto LABEL_5;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v9 = v0[15];
  v10 = v0[16];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  sub_10046A814(v10, v9, type metadata accessor for OwnedBeaconGroup);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[15];
  v15 = v0[16];
  if (v14)
  {
    v17 = v0[13];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446210;
    v20 = *(v17 + 24);
    type metadata accessor for UUID();
    sub_100019D54(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_10046B858(v16, type metadata accessor for OwnedBeaconGroup);
    v24 = sub_1000136BC(v21, v23, &v30);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requires standalone pairing [true] group: %{public}s, isFindMyNetworkEnabled: false.", v18, 0xCu);
    sub_100007BAC(v19);
  }

  else
  {

    sub_10046B858(v16, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10046B858(v15, type metadata accessor for OwnedBeaconGroup);
  v8 = 1;
LABEL_16:
  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[12];

  v28 = v0[1];

  return v28(v8);
}

uint64_t sub_10044F8B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v4 = *(v6 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  *a2 = v6;
  return result;
}

uint64_t sub_10044F97C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10044FAF4, 0, 0);
}

uint64_t sub_10044FAF4()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  v3 = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];

    v21 = v0[1];

    return v21((v3 & 1) == 0);
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[20] = sub_1000076D4(v4, qword_10177AD08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Checking standalone beacons...", v7, 2u);
  }

  v8 = v0[14];
  v10 = v0[8];
  v9 = v0[9];

  sub_100447E44(v10, v8);
  v11 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_10000B3A8(v0[14], &qword_1016A04D0, &qword_1013A34A8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to sanitize MAC address for pairing pending check", v14, 2u);
    }

    goto LABEL_10;
  }

  v23 = v0[19];
  v24 = v0[15];
  v25 = v0[16];
  v26 = v0[14];

  (*(v25 + 32))(v23, v26 + *(v11 + 48), v24);
  v27 = async function pointer to daemon.getter[1];
  v28 = swift_task_alloc();
  v0[21] = v28;
  *v28 = v0;
  v28[1] = sub_10044FE90;

  return daemon.getter();
}

uint64_t sub_10044FE90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_10045006C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10045006C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v7 = *(v3 + 176);
  if (v1)
  {

    v8 = sub_100450954;
  }

  else
  {

    v8 = sub_1004501BC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1004501BC()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[13];
  Device.btAddress.getter();

  return _swift_task_switch(sub_10045022C, v1, 0);
}

uint64_t sub_10045022C()
{
  v1 = v0[25];
  sub_100F85A84(v0[13], *(v0[24] + 128));
  v0[26] = v1;
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  if (v1)
  {
    v5 = *(v4 + 8);
    v0[30] = v5;
    v0[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    v6 = sub_100450610;
  }

  else
  {
    v0[27] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v7 = *(v4 + 8);
    v0[28] = v7;
    v0[29] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v2, v3);
    v6 = sub_100450328;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100450328()
{
  v39 = v0;
  v1 = v0[27];
  v2 = v0[20];
  (*(v0[16] + 16))(v0[18], v0[19], v0[15]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = v0[27];
    v35 = v0[29];
    v36 = v0[24];
    v37 = v0[19];
    v32 = v0[18];
    v33 = v0[16];
    v34 = v0[15];
    v7 = v0[12];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 134218242;
    *(v9 + 4) = *(v6 + 16);

    *(v9 + 12) = 2082;
    Device.btAddress.getter();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v5(v7, v8);
    v14 = *(v33 + 8);
    v14(v32, v34);
    v15 = sub_1000136BC(v11, v13, &v38);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Found %ld existing standlone beacons matching %{public}s", v9, 0x16u);
    sub_100007BAC(v10);

    v14(v37, v34);
  }

  else
  {
    v16 = v0[27];
    v17 = v0[24];
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[15];
    v21 = v0[16];

    v22 = *(v21 + 8);
    v22(v19, v20);
    v22(v18, v20);
  }

  v23 = *(v0[27] + 16);

  v25 = v0[18];
  v24 = v0[19];
  v26 = v0[17];
  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[12];

  v30 = v0[1];

  return v30(v23 == 0);
}

uint64_t sub_100450610()
{
  v40 = v0;
  v1 = v0[26];
  v2 = v0[20];
  (*(v0[16] + 16))(v0[17], v0[19], v0[15]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v34 = v0[30];
    v35 = v0[31];
    v36 = v0[26];
    v37 = v0[24];
    v38 = v0[19];
    v5 = v0[17];
    v33 = v0[16];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v9 = 136446466;
    Device.btAddress.getter();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v34(v7, v8);
    v13 = *(v33 + 8);
    v13(v5, v6);
    v14 = sub_1000136BC(v10, v12, &v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    v0[7] = v36;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000136BC(v15, v16, &v39);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve standalone beacons for %{public}s. %{public}s", v9, 0x16u);
    swift_arrayDestroy();

    v13(v38, v6);
  }

  else
  {
    v18 = v0[26];
    v19 = v0[24];
    v20 = v0[19];
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];

    v24 = *(v22 + 8);
    v24(v21, v23);
    v24(v20, v23);
  }

  v26 = v0[18];
  v25 = v0[19];
  v27 = v0[17];
  v29 = v0[13];
  v28 = v0[14];
  v30 = v0[12];

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_100450954()
{
  v1 = v0[20];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];

  v15 = v0[1];

  return v15(0);
}

void sub_100450A8C(uint64_t a1)
{
  v3 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v225 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v235 = &v209 - v9;
  v10 = __chkstk_darwin(v8);
  *&v246 = &v209 - v11;
  v12 = __chkstk_darwin(v10);
  v221 = &v209 - v13;
  v14 = __chkstk_darwin(v12);
  v247 = &v209 - v15;
  v16 = __chkstk_darwin(v14);
  *&v245 = &v209 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v209 - v19;
  v21 = __chkstk_darwin(v18);
  v244 = &v209 - v22;
  __chkstk_darwin(v21);
  v24 = &v209 - v23;
  v239 = type metadata accessor for OwnedBeaconGroup(0);
  v231 = *(v239 - 8);
  v25 = *(v231 + 64);
  v26 = __chkstk_darwin(v239);
  v212 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v219 = &v209 - v29;
  v30 = __chkstk_darwin(v28);
  v210 = &v209 - v31;
  v32 = __chkstk_darwin(v30);
  v213 = &v209 - v33;
  v34 = __chkstk_darwin(v32);
  v230 = &v209 - v35;
  v36 = __chkstk_darwin(v34);
  v233 = &v209 - v37;
  v38 = __chkstk_darwin(v36);
  v227 = &v209 - v39;
  v40 = __chkstk_darwin(v38);
  v229 = &v209 - v41;
  v42 = __chkstk_darwin(v40);
  v226 = &v209 - v43;
  __chkstk_darwin(v42);
  v241 = &v209 - v44;
  v218 = type metadata accessor for MACAddress();
  v220 = *(v218 - 8);
  v45 = *(v220 + 64);
  __chkstk_darwin(v218);
  v217 = &v209 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v50 = (&v209 - v49);
  v51 = type metadata accessor for Device();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = __chkstk_darwin(v51);
  v243 = &v209 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v211 = &v209 - v57;
  __chkstk_darwin(v56);
  v59 = &v209 - v58;
  sub_100447E44(a1, v50);
  v60 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
  if ((*(*(v60 - 8) + 48))(v50, 1, v60) == 1)
  {
    sub_10000B3A8(v50, &qword_1016A04D0, &qword_1013A34A8);
    if (qword_1016946F0 == -1)
    {
LABEL_3:
      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177AD08);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Unable to sanitize MAC address for beacon group cleanup", v64, 2u);
      }

      return;
    }

LABEL_144:
    swift_once();
    goto LABEL_3;
  }

  v65 = *(v60 + 48);
  v215 = v52;
  v66 = *(v52 + 32);
  v214 = v51;
  v66(v59, v50 + v65, v51);
  v67 = *(v1 + 16);
  v68 = v217;
  v216 = v59;
  Device.btAddress.getter();
  v228 = v67;
  v69 = sub_100AC607C(v68);
  v70 = *(v220 + 8);
  v220 += 8;
  v70(v68, v218);
  v237 = v69[2];
  v209 = v70;
  if (v237 >= 2)
  {
    v236 = v69;
    v71 = 0;
    v242 = v20 + 2;
    v232 = _swiftEmptyArrayStorage;
    v72 = v244;
    do
    {
      if (v71 >= v236[2])
      {
        goto LABEL_132;
      }

      v238 = (*(v231 + 80) + 32) & ~*(v231 + 80);
      v243 = *(v231 + 72);
      v234 = v236 + v238;
      v240 = v71;
      v75 = v241;
      sub_10046A814(v236 + v238 + v243 * v71, v241, type metadata accessor for OwnedBeaconGroup);
      v76 = *(v75 + *(v239 + 40));
      v77 = *(v76 + 16);
      if (*(v75 + *(v239 + 32)) == 1)
      {
        if (v77)
        {
          v78 = sub_1003A8624(*(v76 + 16), 0);
          v79 = sub_1003A9374(&v248, v78 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v77, v76);
          v224 = v249;
          v223 = v250;
          v222 = v251;

          sub_1000128F8();
          if (v79 != v77)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v78 = _swiftEmptyArrayStorage;
        }

        v87 = 0;
        v88 = v78[2];
        while (1)
        {
          if (v88 == v87)
          {
            v73 = v235;
            v72 = v244;
            goto LABEL_10;
          }

          if (v87 >= v78[2])
          {
            goto LABEL_130;
          }

          sub_10046A814(v78 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v87, v24, type metadata accessor for OwnedBeaconGroup.PairingState);
          v89 = v245;
          sub_10046A814(v24, v245, type metadata accessor for OwnedBeaconGroup.PairingState);
          if (!swift_getEnumCaseMultiPayload())
          {
            break;
          }

          ++v87;
          sub_10046B858(v89, type metadata accessor for OwnedBeaconGroup.PairingState);
          v90 = v247;
          swift_storeEnumTagMultiPayload();
          v91 = sub_100524658(v24, v90);
          sub_10046B858(v90, type metadata accessor for OwnedBeaconGroup.PairingState);
          sub_10046B858(v24, type metadata accessor for OwnedBeaconGroup.PairingState);
          if (v91)
          {

            goto LABEL_45;
          }
        }

        sub_10046B858(v24, type metadata accessor for OwnedBeaconGroup.PairingState);

        sub_10046B858(v89, type metadata accessor for OwnedBeaconGroup.PairingState);
LABEL_45:
        v72 = v244;
LABEL_46:
        sub_10046B7F0(v241, v229, type metadata accessor for OwnedBeaconGroup);
        v96 = v232;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v252 = v96;
        v73 = v235;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124940(0, *(v96 + 2) + 1, 1);
          v96 = v252;
        }

        v98 = v238;
        v100 = *(v96 + 2);
        v99 = *(v96 + 3);
        if (v100 >= v99 >> 1)
        {
          sub_101124940(v99 > 1, v100 + 1, 1);
          v98 = v238;
          v96 = v252;
        }

        *(v96 + 2) = v100 + 1;
        v232 = v96;
        sub_10046B7F0(v229, &v96[v98 + v100 * v243], type metadata accessor for OwnedBeaconGroup);
      }

      else
      {
        if (v77)
        {
          sub_1000BC4D4(&qword_10169EF68, &unk_10139FC78);
          v80 = *(v4 + 72);
          v81 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v82 = swift_allocObject();
          v83 = j__malloc_size(v82);
          if (!v80)
          {
            goto LABEL_136;
          }

          if (v83 - v81 == 0x8000000000000000 && v80 == -1)
          {
            goto LABEL_141;
          }

          v82[2] = v77;
          v82[3] = 2 * ((v83 - v81) / v80);
          v85 = sub_1003A9374(&v248, v82 + v81, v77, v76);
          v224 = v249;
          v223 = v250;
          v222 = v251;

          sub_1000128F8();
          if (v85 != v77)
          {
            goto LABEL_137;
          }

          v72 = v244;
          v86 = v82[2];
          if (v86)
          {
LABEL_34:
            v92 = 0;
            v93 = v82 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            while (v92 < v82[2])
            {
              sub_10046A814(&v93[*(v4 + 72) * v92], v72, type metadata accessor for OwnedBeaconGroup.PairingState);
              sub_10046B7F0(v72, v20, type metadata accessor for OwnedBeaconGroup.PairingState);
              if (swift_getEnumCaseMultiPayload())
              {
                sub_10046B858(v20, type metadata accessor for OwnedBeaconGroup.PairingState);
              }

              else
              {
                v94 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
                v95 = v242[*(v94 + 48)];
                if (v95 == 3)
                {
                  sub_10000B3A8(v20, &qword_1016A40D0, &unk_10138BE70);
                  v72 = v244;
                }

                else
                {
                  sub_10000B3A8(v20, &qword_1016A40D0, &unk_10138BE70);
                  v72 = v244;
                  if (v95 == 2)
                  {

                    goto LABEL_46;
                  }
                }
              }

              if (v86 == ++v92)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }
        }

        else
        {
          v82 = _swiftEmptyArrayStorage;
          v86 = _swiftEmptyArrayStorage[2];
          if (v86)
          {
            goto LABEL_34;
          }
        }

LABEL_9:
        v73 = v235;
LABEL_10:

        sub_10046B858(v241, type metadata accessor for OwnedBeaconGroup);
      }

      v71 = v240 + 1;
    }

    while (v240 + 1 != v237);
    v120 = v232;
    v121 = *(v232 + 2);
    v122 = v227;
    v123 = v226;
    if (!v121)
    {
LABEL_64:

      v136 = 0;
      *&v245 = v73 + 2;
      v137 = _swiftEmptyArrayStorage;
      v138 = v225;
      v139 = v236;
      while (v136 < v139[2])
      {
        v244 = v137;
        v242 = v136;
        v140 = v233;
        sub_10046A814(&v234[v243 * v136], v233, type metadata accessor for OwnedBeaconGroup);
        v141 = *(v140 + *(v239 + 40));
        v142 = *(v141 + 16);
        if (*(v140 + *(v239 + 32)) == 1)
        {
          if (v142)
          {
            v143 = sub_1003A8624(*(v141 + 16), 0);
            v144 = sub_1003A9374(&v248, v143 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v142, v141);
            v241 = v251;

            sub_1000128F8();
            if (v144 != v142)
            {
              goto LABEL_138;
            }

            v138 = v225;
          }

          else
          {
            v143 = _swiftEmptyArrayStorage;
          }

          v151 = 0;
          v152 = v143[2];
          v153 = v221;
          while (v152 != v151)
          {
            if (v151 >= v143[2])
            {
              goto LABEL_131;
            }

            sub_10046A814(v143 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v151, v153, type metadata accessor for OwnedBeaconGroup.PairingState);
            sub_10046A814(v153, v138, type metadata accessor for OwnedBeaconGroup.PairingState);
            if (!swift_getEnumCaseMultiPayload())
            {
              sub_10046B858(v153, type metadata accessor for OwnedBeaconGroup.PairingState);

              sub_10046B858(v138, type metadata accessor for OwnedBeaconGroup.PairingState);
              goto LABEL_66;
            }

            ++v151;
            sub_10046B858(v138, type metadata accessor for OwnedBeaconGroup.PairingState);
            v154 = v247;
            swift_storeEnumTagMultiPayload();
            v155 = sub_100524658(v153, v154);
            sub_10046B858(v154, type metadata accessor for OwnedBeaconGroup.PairingState);
            sub_10046B858(v153, type metadata accessor for OwnedBeaconGroup.PairingState);
            if (v155)
            {
              goto LABEL_98;
            }
          }
        }

        else
        {
          if (v142)
          {
            sub_1000BC4D4(&qword_10169EF68, &unk_10139FC78);
            v145 = *(v4 + 72);
            v146 = (*(v4 + 80) + 32) & ~*(v4 + 80);
            v147 = swift_allocObject();
            v148 = j__malloc_size(v147);
            if (!v145)
            {
              goto LABEL_139;
            }

            if (v148 - v146 == 0x8000000000000000 && v145 == -1)
            {
              goto LABEL_143;
            }

            v147[2] = v142;
            v147[3] = 2 * ((v148 - v146) / v145);
            v150 = sub_1003A9374(&v248, v147 + v146, v142, v141);
            v241 = v251;

            sub_1000128F8();
            if (v150 != v142)
            {
              goto LABEL_140;
            }

            v138 = v225;
          }

          else
          {
            v147 = _swiftEmptyArrayStorage;
          }

          v156 = v147[2];
          v157 = v235;
          if (v156)
          {
            v158 = 0;
            v159 = v147 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            while (v158 < v147[2])
            {
              v160 = v246;
              sub_10046A814(&v159[*(v4 + 72) * v158], v246, type metadata accessor for OwnedBeaconGroup.PairingState);
              sub_10046B7F0(v160, v157, type metadata accessor for OwnedBeaconGroup.PairingState);
              if (swift_getEnumCaseMultiPayload())
              {
                sub_10046B858(v157, type metadata accessor for OwnedBeaconGroup.PairingState);
              }

              else
              {
                v161 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
                v162 = *(v245 + *(v161 + 48));
                if (v162 == 3)
                {
                  sub_10000B3A8(v157, &qword_1016A40D0, &unk_10138BE70);
                }

                else
                {
                  sub_10000B3A8(v157, &qword_1016A40D0, &unk_10138BE70);
                  if (v162 == 2)
                  {
LABEL_98:

LABEL_66:
                    sub_10046B858(v233, type metadata accessor for OwnedBeaconGroup);
                    v139 = v236;
                    v137 = v244;
                    goto LABEL_67;
                  }
                }
              }

              if (v156 == ++v158)
              {
                goto LABEL_99;
              }
            }

            goto LABEL_129;
          }
        }

LABEL_99:

        sub_10046B7F0(v233, v230, type metadata accessor for OwnedBeaconGroup);
        v137 = v244;
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v252 = v137;
        v139 = v236;
        if ((v163 & 1) == 0)
        {
          sub_101124940(0, *(v137 + 2) + 1, 1);
          v137 = v252;
        }

        v164 = v238;
        v166 = *(v137 + 2);
        v165 = *(v137 + 3);
        if (v166 >= v165 >> 1)
        {
          sub_101124940(v165 > 1, v166 + 1, 1);
          v164 = v238;
          v137 = v252;
        }

        *(v137 + 2) = v166 + 1;
        sub_10046B7F0(v230, &v137[v164 + v166 * v243], type metadata accessor for OwnedBeaconGroup);
LABEL_67:
        v136 = v242 + 1;
        if (v242 + 1 == v237)
        {

          if (*(v137 + 2) <= 1uLL)
          {

            v193 = v215;
            v105 = v214;
            if (qword_1016950D0 != -1)
            {
              swift_once();
            }

            v194 = type metadata accessor for Logger();
            sub_1000076D4(v194, qword_10177C418);
            v195 = v211;
            v196 = v216;
            (*(v193 + 16))(v211, v216, v105);
            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v106, v107))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v248 = v111;
              *v110 = 141558275;
              *(v110 + 4) = 1752392040;
              *(v110 + 12) = 2081;
              v197 = v217;
              Device.btAddress.getter();
              sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
              v198 = v218;
              v199 = dispatch thunk of CustomStringConvertible.description.getter();
              v200 = v198;
              v202 = v201;
              v209(v197, v200);
              v117 = *(v193 + 8);
              v117(v195, v105);
              v203 = sub_1000136BC(v199, v202, &v248);

              *(v110 + 14) = v203;
              v119 = "No more than one complete beacon group matching %{private,mask.hash}s.";
              goto LABEL_120;
            }

            v204 = *(v193 + 8);
            v204(v195, v105);
            v204(v196, v105);
            return;
          }

          v248 = v137;

          sub_100460728(&v248);
          v167 = v215;
          v168 = v214;
          v169 = v216;
          v170 = v212;
          if (!*(v248 + 2))
          {

            if (qword_1016950D0 != -1)
            {
              swift_once();
            }

            v205 = type metadata accessor for Logger();
            sub_1000076D4(v205, qword_10177C418);
            v206 = Logger.logObject.getter();
            v207 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v206, v207))
            {
              v208 = swift_slowAlloc();
              *v208 = 0;
              _os_log_impl(&_mh_execute_header, v206, v207, "Unable to extract the most recent beacon group!", v208, 2u);
            }

            (*(v167 + 8))(v169, v168);
            return;
          }

          v171 = v238;
          v172 = v210;
          sub_10046A814(&v248[v238], v210, type metadata accessor for OwnedBeaconGroup);

          v173 = v213;
          v174 = sub_10046B7F0(v172, v213, type metadata accessor for OwnedBeaconGroup);
          __chkstk_darwin(v174);
          *(&v209 - 2) = v173;
          v175 = sub_10013D56C(sub_1004681E4, (&v209 - 4), v137);
          v177 = v175;
          v178 = v219;
          v247 = *(v175 + 16);
          if (!v247)
          {
LABEL_121:
            (*(v167 + 8))(v169, v168);

            sub_10046B858(v213, type metadata accessor for OwnedBeaconGroup);
            return;
          }

          v179 = 0;
          v180 = v175 + v171;
          *&v176 = 136315138;
          v246 = v176;
          while (v179 < *(v177 + 16))
          {
            sub_10046A814(v180, v178, type metadata accessor for OwnedBeaconGroup);
            if (qword_1016950D0 != -1)
            {
              swift_once();
            }

            v182 = type metadata accessor for Logger();
            sub_1000076D4(v182, qword_10177C418);
            sub_10046A814(v178, v170, type metadata accessor for OwnedBeaconGroup);
            v183 = Logger.logObject.getter();
            v184 = v170;
            v185 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v183, v185))
            {
              v186 = swift_slowAlloc();
              v187 = swift_slowAlloc();
              v248 = v187;
              *v186 = v246;
              v188 = sub_10051F7B0(v187);
              v190 = v189;
              sub_10046B858(v184, type metadata accessor for OwnedBeaconGroup);
              v191 = sub_1000136BC(v188, v190, &v248);

              *(v186 + 4) = v191;
              _os_log_impl(&_mh_execute_header, v183, v185, "Clean up older complete beacon group %s", v186, 0xCu);
              sub_100007BAC(v187);

              v169 = v216;
              v168 = v214;
              v167 = v215;
            }

            else
            {

              sub_10046B858(v184, type metadata accessor for OwnedBeaconGroup);
            }

            v170 = v184;
            ++v179;
            v181 = v219;
            sub_100B92BA4(v219);
            v178 = v181;
            sub_10046B858(v181, type metadata accessor for OwnedBeaconGroup);
            v180 += v243;
            if (v247 == v179)
            {
              goto LABEL_121;
            }
          }

          goto LABEL_142;
        }
      }

      goto LABEL_133;
    }

    v124 = 0;
    v125 = &v232[v238];
    *&v74 = 136315138;
    v245 = v74;
    v244 = v121;
    while (v124 < *(v120 + 2))
    {
      sub_10046A814(v125, v123, type metadata accessor for OwnedBeaconGroup);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      sub_1000076D4(v126, qword_10177C418);
      sub_10046A814(v123, v122, type metadata accessor for OwnedBeaconGroup);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v248 = v130;
        v131 = v130;
        *v129 = v245;
        v132 = sub_10051F7B0(v130);
        v134 = v133;
        sub_10046B858(v227, type metadata accessor for OwnedBeaconGroup);
        v135 = sub_1000136BC(v132, v134, &v248);
        v122 = v227;

        *(v129 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v127, v128, "Clean up incomplete beacon group %s", v129, 0xCu);
        sub_100007BAC(v131);
        v121 = v244;

        v73 = v235;
      }

      else
      {

        sub_10046B858(v122, type metadata accessor for OwnedBeaconGroup);
      }

      ++v124;
      v123 = v226;
      sub_100B92BA4(v226);
      sub_10046B858(v123, type metadata accessor for OwnedBeaconGroup);
      v125 += v243;
      v120 = v232;
      if (v121 == v124)
      {
        goto LABEL_64;
      }
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_1000076D4(v101, qword_10177C418);
  v102 = v215;
  v103 = v243;
  v104 = v216;
  v105 = v214;
  (*(v215 + 16))(v243, v216, v214);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v109 = v218;
  if (v108)
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v248 = v111;
    *v110 = 141558275;
    *(v110 + 4) = 1752392040;
    *(v110 + 12) = 2081;
    v112 = v217;
    Device.btAddress.getter();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v109;
    v116 = v115;
    v209(v112, v114);
    v117 = *(v102 + 8);
    v117(v103, v105);
    v118 = sub_1000136BC(v113, v116, &v248);

    *(v110 + 14) = v118;
    v119 = "No more than one beacon group matching %{private,mask.hash}s.";
LABEL_120:
    _os_log_impl(&_mh_execute_header, v106, v107, v119, v110, 0x16u);
    sub_100007BAC(v111);

    v117(v216, v105);
  }

  else
  {

    v192 = *(v102 + 8);
    v192(v103, v105);
    v192(v104, v105);
  }
}

BOOL sub_1004527C8()
{
  v0 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  type metadata accessor for UUID();
  sub_100019D54(&qword_1016984A0, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100452870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v62 = a2;
  v3 = type metadata accessor for UUID();
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v61 - v8;
  v10 = type metadata accessor for MACAddress();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  unsafeFromAsyncTask<A>(_:)();
  if (v2)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_3:
      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177C418);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v79 = v24;
        *v22 = 136315394;
        *(v22 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101354C00, &v79);
        *(v22 + 12) = 2114;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 14) = v25;
        *v23 = v25;
        _os_log_impl(&_mh_execute_header, v20, v21, "%s Unable to retrieve paired devices %{public}@", v22, 0x16u);
        sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v24);
      }

      return swift_willThrow();
    }

LABEL_21:
    swift_once();
    goto LABEL_3;
  }

  v76 = v18;
  v77 = v15;
  v65 = v9;
  v66 = v7;
  v67 = v3;
  v68 = v10;
  v75 = v13;
  v27 = v79;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177AD08);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v76;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v79 = v34;
    *v33 = 134218242;
    *(v33 + 4) = *(v27 + 16);

    *(v33 + 12) = 2080;
    v35 = Array.description.getter();
    v78 = sub_1000136BC(v35, v36, &v79);

    *(v33 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v29, v30, "All paired devices [%ld]: %s", v33, 0x16u);
    sub_100007BAC(v34);
  }

  else
  {
  }

  v37 = v75;
  v78 = 0;
  v74 = *(v27 + 16);
  if (v74)
  {
    v38 = 0;
    v64 = OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject;
    v73 = v27 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v71 += 8;
    v72 = v77 + 16;
    v70 = *(v70 + 32);
    v63 += 8;
    v39 = (v77 + 8);
    v40 = v68;
    while (v38 < *(v27 + 16))
    {
      v41 = v27;
      v42 = v14;
      (*(v77 + 16))(v32, v73 + *(v77 + 72) * v38, v14);
      v43 = v37;
      v44 = Device.btAddress.getter();
      v45 = *(*(v70 + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
      __chkstk_darwin(v44);
      *(&v61 - 2) = v43;
      *(&v61 - 1) = v46;
      sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
      v47 = v78;
      Lock.callAsFunction<A>(_:)();
      v78 = v47;
      v48 = v79;
      (*v71)(v43, v40);
      if (v48)
      {
        v49 = [*(v48 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
        v50 = v65;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = [*(v69 + v64) identifier];
        v52 = v66;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v51) = static UUID.== infix(_:_:)();
        v53 = *v63;
        v54 = v52;
        v55 = v67;
        (*v63)(v54, v67);
        v56 = v50;
        v40 = v68;
        v53(v56, v55);
        if (v51)
        {

          v57 = v77;
          v58 = v62;
          v14 = v42;
          (*(v77 + 32))(v62, v76, v42);
          v59 = v58;
          v60 = 0;
          return (*(v57 + 56))(v59, v60, 1, v14);
        }
      }

      ++v38;
      v32 = v76;
      v14 = v42;
      (*v39)(v76, v42);
      v37 = v75;
      v27 = v41;
      if (v74 == v38)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_18:

  v60 = 1;
  v59 = v62;
  v57 = v77;
  return (*(v57 + 56))(v59, v60, 1, v14);
}

uint64_t sub_100453028()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 128);

  v13 = *(v0 + 136);

  v14 = *(v0 + 144);

  v15 = *(v0 + 152);

  v16 = *(v0 + 168);

  v17 = *(v0 + 192);

  return v0;
}

uint64_t sub_1004530E0()
{
  sub_100453028();

  return swift_deallocClassInstance();
}

unint64_t sub_10045314C()
{
  result = qword_1016A04B8;
  if (!qword_1016A04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A04B8);
  }

  return result;
}

uint64_t sub_1004531A0@<X0>(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(18);

  *&v12[0] = 0xD000000000000010;
  *(&v12[0] + 1) = 0x8000000101354BE0;
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10000B3A8(v12, &unk_1016A0B10, &qword_10139BF40);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100453380(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v182 = a3;
  v183 = a2;
  v164 = *v5;
  v163 = type metadata accessor for BeaconIdentifier();
  v8 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v166 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v165 = &v157 - v12;
  v178 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v177 = *(v178 - 8);
  v13 = *(v177 + 64);
  __chkstk_darwin(v178);
  v162 = &v157 - v14;
  v175 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v15 = *(*(v175 - 8) + 64);
  v16 = __chkstk_darwin(v175);
  v176 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v179 = &v157 - v18;
  v19 = type metadata accessor for OwnedBeaconGroup(0);
  v171 = *(v19 - 8);
  v20 = *(v171 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v22;
  __chkstk_darwin(v21);
  v173 = &v157 - v24;
  v25 = type metadata accessor for Endianness();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v195 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for StableIdentifier();
  v28 = *(*(v203 - 8) + 64);
  v29 = __chkstk_darwin(v203);
  v209 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v208 = &v157 - v31;
  v202 = type metadata accessor for SystemInfo.DeviceLockState();
  v207 = *(v202 - 8);
  v32 = v207[8];
  v33 = __chkstk_darwin(v202);
  v201 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v200 = &v157 - v35;
  v36 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v199 = &v157 - v38;
  v39 = type metadata accessor for UUID();
  v205 = *(v39 - 8);
  v206 = v39;
  v40 = *(v205 + 8);
  __chkstk_darwin(v39);
  v42 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OwnedBeaconRecord();
  v210 = *(v43 - 8);
  v211 = v43;
  v44 = *(v210 + 64);
  v45 = __chkstk_darwin(v43);
  v170 = &v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v196 = &v157 - v48;
  v49 = __chkstk_darwin(v47);
  v169 = &v157 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v157 - v52;
  v54 = __chkstk_darwin(v51);
  v181 = &v157 - v55;
  v56 = __chkstk_darwin(v54);
  v180 = &v157 - v57;
  v58 = __chkstk_darwin(v56);
  v167 = &v157 - v59;
  v168 = v60;
  __chkstk_darwin(v58);
  v174 = &v157 - v61;
  v64 = *(v5 + 16);
  v62 = swift_allocObject();
  v62[2] = v5;
  v62[3] = a1;
  v62[4] = v64;

  v63 = a1;
  v197 = v64;

  unsafeFromAsyncTask<A>(_:)();

  LODWORD(v64) = v213;
  if (qword_101694940 != -1)
  {
    goto LABEL_63;
  }

LABEL_2:
  v65 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v198 = 0;
  v66 = sub_1010748C0(v213);

  if ((v66 & 1) == 0)
  {
    return result;
  }

  if (v64)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177AD08);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Checking if legacy LE force pair is needed when FMN is off", v71, 2u);
    }

    type metadata accessor for Transaction();
    v72 = swift_allocObject();
    *(v72 + 16) = v5;
    *(v72 + 24) = v63;

    v73 = v63;
    static Transaction.asyncTask(name:block:)();
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v160 = a4;
  v157 = v5;
  v74 = type metadata accessor for Logger();
  v159 = sub_1000076D4(v74, qword_10177AD08);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "Checking if legacy LE force pair is needed when we have a group and FMN is on", v77, 2u);
  }

  v78 = sub_100519FB0();
  v79 = v78;
  a4 = v78 + 56;
  v80 = 1 << *(v78 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v5 = v81 & *(v78 + 56);
  v82 = (v80 + 63) >> 6;
  v192 = (v205 + 16);
  v190 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v189 = v207 + 13;
  v188 = (v207 + 1);
  v161 = (v210 + 56);
  v204 = (v205 + 8);
  v187 = (v210 + 48);

  v194 = v79;

  v64 = 0;
  v185 = xmmword_101385D80;
  v207 = _swiftEmptyArrayStorage;
  v158 = v23;
  v63 = v211;
  v191 = a4;
  v193 = v82;
  v186 = v53;
  v184 = v42;
LABEL_16:
  v83 = v64;
  if (!v5)
  {
    goto LABEL_18;
  }

  do
  {
    v64 = v83;
LABEL_21:
    (*(v205 + 2))(v42, *(v194 + 48) + *(v205 + 9) * (__clz(__rbit64(v5)) | (v64 << 6)), v206);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v84 = swift_allocObject();
    *(v84 + 16) = v185;
    v85 = UUID.uuidString.getter();
    v87 = v86;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = sub_100008C00();
    *(v84 + 32) = v85;
    *(v84 + 40) = v87;
    os_log(_:dso:log:_:_:)();

    v88 = v200;
    static SystemInfo.lockState.getter();
    v23 = v201;
    v89 = v202;
    (*v189)(v201, v190, v202);
    sub_100019D54(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v188;
    (*v188)(v23, v89);
    v90(v88, v89);
    if (v85)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v91 = v199;
      v63 = v211;
      (*v161)(v199, 1, 1, v211);
      v42 = v184;
    }

    else
    {
      v92 = sub_100025044();
      __chkstk_darwin(v92);
      v42 = v184;
      *(&v157 - 2) = v184;
      v93 = v198;
      v91 = v199;
      sub_1012BBBD0(sub_100406F84, v92, v199);
      v198 = v93;

      v63 = v211;
    }

    v5 &= v5 - 1;
    (*v204)(v42, v206);
    v94 = (*v187)(v91, 1, v63);
    v82 = v193;
    v53 = v186;
    if (v94 != 1)
    {
      v95 = v91;
      v96 = v180;
      sub_10046B7F0(v95, v180, type metadata accessor for OwnedBeaconRecord);
      sub_10046B7F0(v96, v181, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v207 = sub_100A5C050(0, v207[2] + 1, 1, v207);
      }

      a4 = v191;
      v98 = v207[2];
      v97 = v207[3];
      if (v98 >= v97 >> 1)
      {
        v207 = sub_100A5C050(v97 > 1, v98 + 1, 1, v207);
      }

      v99 = v207;
      v207[2] = v98 + 1;
      sub_10046B7F0(v181, v99 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v98, type metadata accessor for OwnedBeaconRecord);
      v82 = v193;
      goto LABEL_16;
    }

    sub_10000B3A8(v91, &unk_1016A9A20, &qword_10138B280);
    v83 = v64;
    a4 = v191;
  }

  while (v5);
  while (1)
  {
LABEL_18:
    v64 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_2;
    }

    if (v64 >= v82)
    {
      break;
    }

    v5 = *(a4 + 8 * v64);
    ++v83;
    if (v5)
    {
      goto LABEL_21;
    }
  }

  a4 = v207[2];
  LODWORD(v64) = v203;
  if (a4)
  {
    v5 = 0;
    v100 = *(v210 + 80);
    v201 = ~v100;
    v202 = v100;
    v205 = v207 + ((v100 + 32) & ~v100);
    v42 = v209 + 8;
    do
    {
      if (v5 >= v207[2])
      {
        goto LABEL_62;
      }

      sub_10046A814(&v205[*(v210 + 72) * v5], v53, type metadata accessor for OwnedBeaconRecord);
      v101 = v63[6];
      v102 = v208;
      sub_10046A814(&v53[v101], v208, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10046B858(v102, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload != 1)
      {
        sub_10046A814(&v53[v101], v209, type metadata accessor for StableIdentifier);
        v104 = swift_getEnumCaseMultiPayload();
        if (v104 == 2)
        {
          v109 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v110 = *&v42[v109[12]];

          v111 = *&v42[v109[16]];

          v112 = *&v42[v109[20]];

          v108 = v109[28];
        }

        else
        {
          if (v104 != 3)
          {
            sub_10046B858(v209, type metadata accessor for StableIdentifier);
            goto LABEL_37;
          }

          v105 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v106 = *&v42[v105[12]];

          v107 = *&v42[v105[16]];

          v108 = v105[20];
        }

        v113 = *&v42[v108];

        (*v204)(v209, v206);
      }

      v114 = sub_100314604(*&v53[v63[16]], *&v53[v63[17]]);
      if (v115 >> 60 != 15)
      {
        v23 = v114;
        v116 = v115;
        v213 = sub_101129A64(&off_101608ED0);
        sub_100DE9B10(&v212, 8216);
        sub_100DE9B10(&v212, 8220);
        sub_100DE9B10(&v212, 8233);
        if (sub_100313A28(v23, v116) == 76)
        {
          v117 = v213;
          sub_100313B54(v23, v116);
          static Endianness.current.getter();
          sub_10012BF24();
          LODWORD(v64) = v203;
          FixedWidthInteger.init(data:ofEndianness:)();
          if (BYTE4(v212))
          {
            v118 = 0;
          }

          else
          {
            v118 = v212;
          }

          v119 = sub_10111F5D4(v118, v117);
          sub_100006654(v23, v116);
          v120 = v196;

          if (v119)
          {

            v124 = v53;
            v125 = v167;
            sub_10046B7F0(v124, v167, type metadata accessor for OwnedBeaconRecord);
            v126 = v174;
            sub_10046B7F0(v125, v174, type metadata accessor for OwnedBeaconRecord);
            v127 = v169;
            sub_10046A814(v126, v169, type metadata accessor for OwnedBeaconRecord);
            v128 = v173;
            sub_10046A814(v183, v173, type metadata accessor for OwnedBeaconGroup);
            sub_10046A814(v127, v120, type metadata accessor for OwnedBeaconRecord);
            sub_10046A814(v128, v158, type metadata accessor for OwnedBeaconGroup);
            v129 = (v202 + 16) & v201;
            v208 = v202 | 7;
            v209 = (v129 + v168);
            v130 = (v129 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = (v130 + *(v171 + 80) + 8) & ~*(v171 + 80);
            v132 = (v172 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
            v133 = swift_allocObject();
            sub_10046B7F0(v127, v133 + v129, type metadata accessor for OwnedBeaconRecord);
            v134 = v157;
            *(v133 + v130) = v157;
            sub_10046B7F0(v128, v133 + v131, type metadata accessor for OwnedBeaconGroup);
            v210 = v133;
            v135 = (v133 + v132);
            v136 = v126;
            v137 = v182;
            v138 = v160;
            *v135 = v182;
            v135[1] = v138;
            v139 = v126;
            v140 = v170;
            sub_10046A814(v139, v170, type metadata accessor for OwnedBeaconRecord);
            v141 = v134;
            v142 = swift_allocObject();
            sub_10046B7F0(v140, v142 + v129, type metadata accessor for OwnedBeaconRecord);

            v143 = v179;
            unsafeFromAsyncTask<A>(_:)();

            v144 = v176;
            sub_1000D2A70(v143, v176, &unk_1016AF8A0, &unk_10139D7C0);
            v145 = v178;
            if ((*(v177 + 48))(v144, 1, v178) == 1)
            {
              sub_10000B3A8(v144, &unk_1016AF8A0, &unk_10139D7C0);
              sub_100468184();
              v146 = swift_allocError();
              *v147 = 0;
              v148 = v196;
              v149 = v158;
              sub_100454AF8(v146, 1, v196, v141, v158, v137);

              sub_10000B3A8(v143, &unk_1016AF8A0, &unk_10139D7C0);
              sub_10046B858(v149, type metadata accessor for OwnedBeaconGroup);
              sub_10046B858(v148, type metadata accessor for OwnedBeaconRecord);
            }

            else
            {
              sub_10046B858(v158, type metadata accessor for OwnedBeaconGroup);
              sub_10046B858(v196, type metadata accessor for OwnedBeaconRecord);
              v150 = v162;
              sub_1000D2AD8(v144, v162, &unk_1016C8FC0, &unk_10139D7D0);
              v151 = v211;
              v152 = v211[5];
              v153 = v165;
              v154 = v145;
              sub_1004531A0(v165);
              v155 = v166;
              (*v192)(&v166[*(v163 + 20)], v136 + v152, v206);
              v156 = getuid();
              sub_1000294F0(v156);
              sub_100469990(v155, v150 + *(v154 + 36), v136 + v151[8], v153, sub_100469790, v210);

              sub_10046B858(v155, type metadata accessor for BeaconIdentifier);
              sub_10000B3A8(v153, &unk_101696900, &unk_10138B1E0);
              sub_10000B3A8(v150, &unk_1016C8FC0, &unk_10139D7D0);
              sub_10000B3A8(v143, &unk_1016AF8A0, &unk_10139D7C0);
            }

            return sub_10046B858(v136, type metadata accessor for OwnedBeaconRecord);
          }
        }

        else
        {
          sub_100006654(v23, v116);
        }
      }

LABEL_37:
      ++v5;
      sub_10046B858(v53, type metadata accessor for OwnedBeaconRecord);
      v63 = v211;
    }

    while (a4 != v5);
  }

  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "Not legacy LE force pairing, it's not alphawasp", v123, 2u);
  }

  return v182();
}

void sub_100454AF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v40 = a5;
  v41 = a3;
  v43 = a2;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v42 = sub_1000076D4(v18, qword_10177AD08);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a4;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Starting legacy LE force pairing", v21, 2u);
  }

  if (v43)
  {
    v44 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_1000BB584(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "legacy LE forcePair error: %@", v24, 0xCu);
      sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

      sub_1000BB584(a1, 1);
    }

    else
    {

      sub_1000BB584(a1, 1);
    }
  }

  else if (a1)
  {
    v27 = type metadata accessor for OwnedBeaconRecord();
    (*(v14 + 16))(v17, v41 + *(v27 + 20), v13);
    v28 = sub_100D605C4();
    if (v29 >> 60 == 15)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Invalid serial number. Cannot force pair!", v32, 2u);
      }
    }

    else
    {
      v36 = v28;
      v37 = v29;
      sub_100456B10(v28, v29, v40, sub_100455038, 0);
      static Date.trustedNow.getter(v12);
      v38 = type metadata accessor for Date();
      (*(*(v38 - 8) + 56))(v12, 0, 1, v38);
      sub_100466E88(v17, v12);
      sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
      sub_100006654(v36, v37);
    }

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Should not legacy LE force pair", v35, 2u);
    }

    a6();
  }
}

void sub_100455058(uint64_t a1, char a2, uint64_t (*a3)(void), const char *a4)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD08);
  v7 = Logger.logObject.getter();
  v8 = a3();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }
}

uint64_t sub_100455170(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100455204;

  return daemon.getter();
}

uint64_t sub_100455204(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1004553E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004553E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[5];

    return _swift_task_switch(sub_1004555A8, 0, 0);
  }

  else
  {
    v8 = v4[5];
    v9 = v4[3];

    v4[7] = a1;
    v10 = type metadata accessor for OwnedBeaconRecord();
    v11 = *(v10 + 20);
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v4[8] = v13;
    *v13 = v6;
    v13[1] = sub_10045570C;
    v14 = v4[2];

    return sub_1010CD424(v14, v9 + v11, v9 + v12);
  }
}

uint64_t sub_1004555A8()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService!", v4, 2u);
  }

  v5 = *(v0 + 16);
  v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10045570C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100455808, 0, 0);
}

uint64_t sub_100455808()
{
  v1 = v0[7];

  v2 = v0[2];
  v3 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1004558B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v8[21] = v16;
  v17 = *(v16 - 8);
  v8[22] = v17;
  v18 = *(v17 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v19 = type metadata accessor for BeaconIdentifier();
  v8[25] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v8[30] = v23;
  *v23 = v8;
  v23[1] = sub_100455B2C;

  return daemon.getter();
}

uint64_t sub_100455B2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v12 = *v1;
  *(v3 + 248) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 256) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100455D08;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100455D08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v5 = *v2;
  *(*v2 + 264) = a1;

  v6 = *(v3 + 248);
  if (v1)
  {

    v7 = sub_100455E58;
  }

  else
  {

    v7 = sub_1004561D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100455E58()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService!", v4, 2u);
  }

  sub_100468184();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v7 = v0[19];
  v8 = v0[16];
  v28 = v0[18];
  v29 = v0[17];
  v9 = v0[14];
  v27 = v0[15];
  v10 = v0[11];
  v11 = v0[12];
  v26 = *(v0[10] + 64);
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v10;
  v12[4] = v11;
  v0[6] = sub_10046AA5C;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10161DBA8;
  v13 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v27 + 8))(v8, v9);
  (*(v28 + 8))(v7, v29);
  v14 = v0[7];

  v16 = v0[28];
  v15 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v20 = v0[23];
  v19 = v0[24];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[16];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1004561D8()
{
  v1 = v0[27];
  v2 = v0[9];
  v3 = *(v0[25] + 20);
  v4 = type metadata accessor for UUID();
  v0[34] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v0[35] = v6;
  v0[36] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1 + v3, v2, v4);
  v7 = getuid();
  sub_1000294F0(v7);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_1004562E4;
  v9 = v0[33];
  v10 = v0[29];
  v11 = v0[27];

  return sub_1010CD810(v10, v11);
}

uint64_t sub_1004562E4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  sub_10046B858(*(v2 + 216), type metadata accessor for BeaconIdentifier);
  if (v0)
  {
    v5 = sub_1004566FC;
  }

  else
  {
    v5 = sub_10045642C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10045642C()
{
  v1 = v0[28];
  sub_1000D2A70(v0[29], v1, &unk_10169BB50, &unk_101395760);
  v2 = type metadata accessor for ObservedAdvertisement(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[28];
  if (v3 == 1)
  {
    v5 = v0[22];
    v6 = v0[9];
    sub_10000B3A8(v4, &unk_10169BB50, &unk_101395760);
    v7 = v6 + *(type metadata accessor for StandaloneBeacon() + 32);
    v8 = (v5 + 16);
  }

  else
  {
    v9 = v0[22];
    v10 = v4 + *(v2 + 44);
    v11 = v0[28];
    (*(v9 + 16))(v0[23], v10, v0[21]);
    sub_10046B858(v11, type metadata accessor for ObservedAdvertisement);
    v8 = (v9 + 32);
    v7 = v0[23];
  }

  v12 = v0[35];
  v13 = v0[34];
  v38 = v0[33];
  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[24];
  v17 = v0[21];
  v18 = v0[22];
  v39 = v17;
  v40 = v0[29];
  v19 = v0[20];
  v20 = v0[13];
  v37 = v0[12];
  v35 = v0[36];
  v36 = v0[11];
  v21 = v0[9];
  (*v8)(v16, v7);
  sub_1004531A0(v19);
  v12(v15 + *(v14 + 20), v21, v13);
  v22 = getuid();
  sub_1000294F0(v22);
  v23 = type metadata accessor for StandaloneBeacon();
  sub_100469990(v15, v16, v21 + *(v23 + 32), v19, v36, v37);

  sub_10046B858(v15, type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
  (*(v18 + 8))(v16, v39);
  sub_10000B3A8(v40, &unk_10169BB50, &unk_101395760);
  v25 = v0[28];
  v24 = v0[29];
  v27 = v0[26];
  v26 = v0[27];
  v29 = v0[23];
  v28 = v0[24];
  v31 = v0[19];
  v30 = v0[20];
  v32 = v0[16];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1004566FC()
{
  v1 = v0[33];

  v2 = v0[38];
  v3 = v0[19];
  v4 = v0[16];
  v24 = v0[18];
  v25 = v0[17];
  v5 = v0[14];
  v23 = v0[15];
  v6 = v0[11];
  v7 = v0[12];
  v22 = *(v0[10] + 64);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v6;
  v8[4] = v7;
  v0[6] = sub_10046AA5C;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_10161DBA8;
  v9 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v23 + 8))(v4, v5);
  (*(v24 + 8))(v3, v25);
  v10 = v0[7];

  v12 = v0[28];
  v11 = v0[29];
  v14 = v0[26];
  v13 = v0[27];
  v16 = v0[23];
  v15 = v0[24];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004569A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error in shouldForcePair: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  return a2(a1, 1);
}

uint64_t sub_100456B10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v29 = *(v5 + 48);
  sub_10046A814(a3, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconGroup);
  v19 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v21 = v26;
  v20[4] = v26;
  sub_10046B7F0(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for OwnedBeaconGroup);
  v22 = (v20 + ((v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  aBlock[4] = sub_10046A508;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161D9C8;
  v24 = _Block_copy(aBlock);

  sub_100017D5C(a1, v21);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v32 + 8))(v11, v8);
  (*(v30 + 8))(v15, v31);
}

uint64_t sub_100456EE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v165 = a5;
  v166 = a6;
  v164 = a4;
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v157 = &v147 - v11;
  v12 = type metadata accessor for MACAddress();
  v161 = *(v12 - 8);
  v162 = v12;
  v13 = *(v161 + 64);
  v14 = __chkstk_darwin(v12);
  v155 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v153 = &v147 - v17;
  v154 = v18;
  __chkstk_darwin(v16);
  v160 = &v147 - v19;
  v20 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v148 = &v147 - v22;
  v151 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v150 = *(v151 - 8);
  v23 = *(v150 + 64);
  __chkstk_darwin(v151);
  v149 = &v147 - v24;
  v163 = type metadata accessor for OwnedBeaconGroup(0);
  v25 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v147 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Endianness();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v156 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StableIdentifier();
  v31 = *(*(v30 - 1) + 64);
  v32 = __chkstk_darwin(v30);
  v34 = (&v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v36 = &v147 - v35;
  v37 = type metadata accessor for OwnedBeaconRecord();
  v38 = *(v37 - 1);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = a1;
  v42 = *(a1 + 16);
  v158 = a2;
  v159 = a3;
  v43 = sub_100AA372C(a2, a3);
  v44 = v43[2];
  if (v44)
  {
    v172 = v37[6];
    v45 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v152 = v43;
    v46 = v43 + v45;
    v168 = v34 + 8;
    v47 = _swiftEmptyArrayStorage;
    v48 = *(v38 + 72);
    v170 = v30;
    v171 = v48;
    v49 = v34;
    v169 = v34;
    while (1)
    {
      sub_10046A814(v46, v41, type metadata accessor for OwnedBeaconRecord);
      sub_10046A814(&v41[v172], v36, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10046B858(v36, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_11;
      }

      sub_10046A814(&v41[v172], v49, type metadata accessor for StableIdentifier);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51 == 2)
      {
        break;
      }

      if (v51 == 3)
      {
        v52 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v53 = v168;
        v54 = *(v168 + v52[12]);

        v55 = *(v53 + v52[16]);

        v56 = v52[20];
LABEL_10:
        v61 = *(v53 + v56);

        v62 = type metadata accessor for UUID();
        (*(*(v62 - 8) + 8))(v49, v62);
LABEL_11:
        v63 = sub_100314604(*&v41[v37[16]], *&v41[v37[17]]);
        v65 = v64;
        sub_10046B858(v41, type metadata accessor for OwnedBeaconRecord);
        if (v65 >> 60 != 15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100A5CCC0(0, *(v47 + 2) + 1, 1, v47);
          }

          v67 = *(v47 + 2);
          v66 = *(v47 + 3);
          if (v67 >= v66 >> 1)
          {
            v47 = sub_100A5CCC0((v66 > 1), v67 + 1, 1, v47);
          }

          *(v47 + 2) = v67 + 1;
          v68 = &v47[16 * v67];
          *(v68 + 4) = v63;
          *(v68 + 5) = v65;
          v49 = v169;
        }

        goto LABEL_4;
      }

      sub_10046B858(v41, type metadata accessor for OwnedBeaconRecord);
      sub_10046B858(v49, type metadata accessor for StableIdentifier);
LABEL_4:
      v46 += v171;
      if (!--v44)
      {

        goto LABEL_19;
      }
    }

    v57 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v53 = v168;
    v58 = *(v168 + v57[12]);

    v59 = *(v53 + v57[16]);

    v60 = *(v53 + v57[20]);

    v56 = v57[28];
    goto LABEL_10;
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_19:
  v70 = v163;
  v69 = v164;
  if (!*(v47 + 2))
  {

    v72 = 0;
    v71 = 0xF000000000000000;
LABEL_24:
    v73 = 1;
    goto LABEL_25;
  }

  v72 = *(v47 + 4);
  v71 = *(v47 + 5);
  sub_100017D5C(v72, v71);

  sub_100017D5C(v72, v71);
  if (sub_100313A28(v72, v71) != 76)
  {
    sub_100016590(v72, v71);
    goto LABEL_24;
  }

  sub_100313B54(v72, v71);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  sub_100016590(v72, v71);
  v73 = BYTE4(v174[0]) | (LODWORD(v174[0]) != 8220);
LABEL_25:
  v74 = v167;
  My = type metadata accessor for Feature.FindMy();
  v174[3] = My;
  v174[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v76 = sub_1000280DC(v174);
  (*(*(My - 8) + 104))(v76, enum case for Feature.FindMy.smilingWheel(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v77 = sub_100007BAC(v174);
  if (My & 1) == 0 || (v73)
  {
    v87 = v69 + *(v70 + 28);
    v88 = *(*(*(v74 + 32) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
    __chkstk_darwin(v77);
    *(&v147 - 2) = v87;
    *(&v147 - 1) = v89;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v90 = v174[0];
    if (v174[0])
    {
      v91 = sub_100436F60(v174[0]);
      if (v91)
      {
        v92 = *(v91 + 16);
        v93 = __chkstk_darwin(v91);
        *(&v147 - 4) = v93;
        *(&v147 - 3) = v87;
        v94 = v159;
        *(&v147 - 2) = v158;
        *(&v147 - 1) = v94;
        v171 = v93;
        sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
        OS_dispatch_queue.sync<A>(execute:)();
        v173 = *(v74 + 48);
        v95 = v173;
        v96 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v97 = *(*(v96 - 8) + 56);
        v172 = v71;
        v98 = v148;
        v97(v148, 1, 1, v96);
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8);
        sub_1004682F0();
        v99 = v95;
        v170 = v90;
        v100 = v149;
        Publisher.receive<A>(on:options:)();
        sub_10000B3A8(v98, &unk_1016B0FE0, &unk_101391980);

        v101 = swift_allocObject();
        swift_weakInit();
        v102 = swift_allocObject();
        v103 = v165;
        v104 = v166;
        v102[2] = v101;
        v102[3] = v103;
        v102[4] = v104;
        v105 = swift_allocObject();
        *(v105 + 16) = sub_10046A5A0;
        *(v105 + 24) = v102;
        sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0);

        v106 = v151;
        Publisher<>.sink(receiveValue:)();

        (*(v150 + 8))(v100, v106);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v107 = v72;
        v108 = v172;
        return sub_100006654(v107, v108);
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v141 = type metadata accessor for Logger();
      sub_1000076D4(v141, qword_10177AD08);
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&_mh_execute_header, v142, v143, "Missing pairing manager to force pair!", v144, 2u);
      }

      sub_100468184();
      swift_allocError();
      *v145 = 0;
      v165();
    }

    else
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v129 = type metadata accessor for Logger();
      sub_1000076D4(v129, qword_10177AD08);
      v130 = v147;
      sub_10046A814(v69, v147, type metadata accessor for OwnedBeaconGroup);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v174[0] = v134;
        *v133 = 136446210;
        v135 = *(v70 + 28);
        sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
        v136 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v130;
        v139 = v138;
        sub_10046B858(v137, type metadata accessor for OwnedBeaconGroup);
        v140 = sub_1000136BC(v136, v139, v174);

        *(v133 + 4) = v140;
        _os_log_impl(&_mh_execute_header, v131, v132, "Missing peripheral for %{public}s to force pair!", v133, 0xCu);
        sub_100007BAC(v134);
      }

      else
      {

        sub_10046B858(v130, type metadata accessor for OwnedBeaconGroup);
      }

      sub_100468184();
      swift_allocError();
      *v146 = 0;
      v165();
    }

    v107 = v72;
    v108 = v71;
    return sub_100006654(v107, v108);
  }

  v78 = v157;
  sub_10051A590(v158, v159, v157);
  v80 = v161;
  v79 = v162;
  if ((*(v161 + 48))(v78, 1, v162) == 1)
  {
    sub_10000B3A8(v78, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_1000076D4(v81, qword_10177AD08);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Invalid state. No MAC address to start LE pairing", v84, 2u);
    }

    sub_100468184();
    swift_allocError();
    *v85 = 0;
    v165();
    sub_100006654(v72, v71);
  }

  else
  {
    v169 = *(v80 + 32);
    v170 = (v80 + 32);
    v169(v160, v78, v79);
    v109 = *(v70 + 28);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v171 = v72;
    v172 = v71;
    v110 = type metadata accessor for Logger();
    sub_1000076D4(v110, qword_10177AD08);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Starting AirPods LE force pair using FindMyBluetooth", v113, 2u);
    }

    v168 = type metadata accessor for Transaction();
    v114 = v161;
    v115 = v162;
    v116 = *(v161 + 16);
    v117 = v153;
    v116(v153, v69 + v109, v162);
    v118 = v155;
    v116(v155, v160, v115);
    v119 = *(v114 + 80);
    v120 = (v119 + 24) & ~v119;
    v121 = (v154 + v119 + v120) & ~v119;
    v122 = v121 + v154;
    v123 = (v121 + v154) & 0xFFFFFFFFFFFFFFF8;
    v124 = swift_allocObject();
    *(v124 + 16) = v167;
    v125 = v117;
    v126 = v169;
    v169((v124 + v120), v125, v115);
    v126(v124 + v121, v118, v115);
    *(v124 + v122) = 0;
    v127 = v124 + v123;
    v128 = v166;
    *(v127 + 8) = v165;
    *(v127 + 16) = v128;

    static Transaction.asyncTask(name:block:)();

    sub_100006654(v171, v172);
    return (*(v114 + 8))(v160, v115);
  }
}

uint64_t sub_100458158(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v67 = a4;
  v7 = type metadata accessor for MACAddress();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  v9 = __chkstk_darwin(v7);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v59 - v11;
  v13 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v59 - v15;
  v17 = type metadata accessor for Device();
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  v19 = __chkstk_darwin(v17);
  v61 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v59 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v65 = v7;
    v60 = v17;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AD08);
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = v27;
      v33 = v32;
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v29;
      *v34 = v29;
      v35 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "LE Pairing completed for %@.", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

      v27 = v59;
    }

    v36 = [*&v29[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v25);
    swift_endAccess();
    sub_100A22DF0(v12);
    sub_10044DA44(v16);
    v37 = *(v66 + 8);
    v37(v12, v65);
    v38 = v64;
    v39 = v60;
    if ((*(v64 + 48))(v16, 1, v60) == 1)
    {
      sub_10000B3A8(v16, &qword_101699860, &qword_1013A34D0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No BT device from BluetoothManager after pairing. Need to unpair", v42, 2u);
      }

      v43 = v62;
      sub_100A22DF0(v62);
      sub_10043B150(v29, v43);
      v37(v43, v65);
    }

    else
    {
      v44 = v63;
      (*(v38 + 32))(v63, v16, v39);
      v45 = v61;
      (*(v38 + 16))(v61, v44, v39);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v38;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v59 = v27;
        v66 = a5;
        v51 = v50;
        v68[0] = v50;
        *v49 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
        v52 = v47;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v56 = *(v48 + 8);
        v56(v45, v39);
        v57 = sub_1000136BC(v53, v55, v68);

        *(v49 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v46, v52, "Found BT device from BluetoothManager after pairing as expected. %s", v49, 0xCu);
        sub_100007BAC(v51);

        v56(v63, v39);
      }

      else
      {

        v58 = *(v38 + 8);
        v58(v45, v39);
        v58(v44, v39);
      }
    }

    v67(0, 0);
  }

  return result;
}

uint64_t sub_1004589B8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v122 = a3;
  v123 = a4;
  v127 = a2;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v120 = &v113 - v7;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v116 = &v113 - v10;
  v11 = sub_1000BC4D4(&qword_1016A04E0, &qword_1013A34C0);
  v118 = *(v11 - 8);
  v119 = v11;
  v12 = *(v118 + 64);
  __chkstk_darwin(v11);
  v117 = &v113 - v13;
  v14 = type metadata accessor for Endianness();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for MACAddress();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v124 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v113 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v113 - v24;
  __chkstk_darwin(v23);
  v27 = &v113 - v26;
  v28 = type metadata accessor for StandaloneBeacon();
  v29 = v28[6];
  v125 = v17;
  v126 = v16;
  v30 = *(v17 + 16);
  v128 = v27;
  v30(v27, a1 + v29, v16);
  v31 = v28[9];
  v121 = a1;
  v32 = (a1 + v31);
  v33 = *v32;
  v34 = v32[1];
  if (sub_100313A28(*v32, v34) == 76)
  {
    sub_100313B54(v33, v34);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    v35 = BYTE4(v130[0]) | (LODWORD(v130[0]) != 8220);
  }

  else
  {
    v35 = 1;
  }

  My = type metadata accessor for Feature.FindMy();
  v130[3] = My;
  v130[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v37 = sub_1000280DC(v130);
  (*(*(My - 8) + 104))(v37, enum case for Feature.FindMy.smilingWheel(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v38 = sub_100007BAC(v130);
  if (My & 1) == 0 || (v35)
  {
    v55 = v127;
    v56 = *(*(*(v127 + 32) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
    __chkstk_darwin(v38);
    *(&v113 - 2) = v128;
    *(&v113 - 1) = v57;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v58 = v130[0];
    if (v130[0])
    {
      v124 = sub_100436F60(v130[0]);
      if (v124)
      {
        v59 = (v121 + v28[7]);
        v60 = *v59;
        v61 = v59[1];
        v62 = String.utf8Data.getter();
        v64 = v63;
        v130[0] = v62;
        v130[1] = v63;
        sub_1000E0A3C();
        if ((DataProtocol.isNull.getter() & 1) == 0)
        {
          v87 = Data.trimmed.getter();
          v89 = v88;
          v90 = sub_100016590(v62, v64);
          v91 = *(v124 + 2);
          __chkstk_darwin(v90);
          v92 = v128;
          *(&v113 - 4) = v93;
          *(&v113 - 3) = v92;
          *(&v113 - 2) = v87;
          *(&v113 - 1) = v89;
          v94 = v89;
          v95 = v87;
          v96 = v87;
          v115 = v87;
          v97 = v94;
          v114 = v94;
          sub_100017D5C(v95, v94);
          sub_1000BC4D4(&qword_1016A04E8, &qword_1013A34C8);
          OS_dispatch_queue.sync<A>(execute:)();
          sub_100016590(v96, v97);
          v129 = *(v55 + 48);
          v98 = v129;
          v99 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v100 = v116;
          (*(*(v99 - 8) + 56))(v116, 1, 1, v99);
          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          sub_1000041A4(&qword_1016A04F0, &qword_1016A04E8, &qword_1013A34C8);
          sub_1004682F0();
          v101 = v98;
          v113 = v58;
          v102 = v101;
          v103 = v117;
          Publisher.receive<A>(on:options:)();
          sub_10000B3A8(v100, &unk_1016B0FE0, &unk_101391980);

          v104 = swift_allocObject();
          swift_weakInit();
          v105 = swift_allocObject();
          v106 = v122;
          v107 = v123;
          v105[2] = v104;
          v105[3] = v106;
          v105[4] = v107;
          v108 = swift_allocObject();
          *(v108 + 16) = sub_10046AD64;
          *(v108 + 24) = v105;
          sub_1000041A4(&qword_1016A04F8, &qword_1016A04E0, &qword_1013A34C0);

          v109 = v119;
          Publisher<>.sink(receiveValue:)();

          (*(v118 + 8))(v103, v109);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v110 = v120;
          static Date.trustedNow.getter(v120);
          v111 = type metadata accessor for Date();
          (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
          sub_100466E88(v121, v110);

          sub_100016590(v115, v114);
          sub_10000B3A8(v110, &unk_101696900, &unk_10138B1E0);
          return (*(v125 + 8))(v128, v126);
        }

        sub_100016590(v62, v64);
        v65 = v126;
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_1000076D4(v66, qword_10177AD08);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "Invalid serial number. Cannot force pair!", v69, 2u);
        }
      }

      else
      {
        v65 = v126;
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_1000076D4(v82, qword_10177AD08);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Missing pairing manager to force pair!", v85, 2u);
        }

        sub_100468184();
        swift_allocError();
        *v86 = 0;
        v122();
      }

      return (*(v125 + 8))(v128, v65);
    }

    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177AD08);
    v71 = v128;
    v72 = v126;
    v30(v25, v128, v126);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v130[0] = v76;
      *v75 = 136446210;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      v80 = *(v125 + 8);
      v80(v25, v72);
      v81 = sub_1000136BC(v77, v79, v130);

      *(v75 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v73, v74, "Missing peripheral for %{public}s to force pair!", v75, 0xCu);
      sub_100007BAC(v76);
      v71 = v128;
    }

    else
    {

      v80 = *(v125 + 8);
      v80(v25, v72);
    }

    sub_100468184();
    swift_allocError();
    *v112 = 0;
    v122();

    return (v80)(v71, v72);
  }

  else
  {
    v39 = v28[5];
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177AD08);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Starting AirPods LE force pair using FindMyBluetooth", v43, 2u);
    }

    v120 = type metadata accessor for Transaction();
    v115 = v22;
    v44 = v126;
    v30(v22, v128, v126);
    v30(v124, v121 + v39, v44);
    v45 = v125;
    v46 = *(v125 + 80);
    v47 = (v46 + 24) & ~v46;
    v48 = (v18 + v46 + v47) & ~v46;
    v49 = v48 + v18;
    v50 = swift_allocObject();
    *(v50 + 16) = v127;
    v51 = *(v45 + 32);
    v51(v50 + v47, v115, v44);
    v51(v50 + v48, v124, v44);
    *(v50 + v49) = 1;
    v52 = v50 + (v49 & 0xFFFFFFFFFFFFFFF8);
    v53 = v123;
    *(v52 + 8) = v122;
    *(v52 + 16) = v53;

    static Transaction.asyncTask(name:block:)();

    return (*(v45 + 8))(v128, v44);
  }
}

uint64_t sub_100459828(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v67 = a4;
  v7 = type metadata accessor for MACAddress();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  v9 = __chkstk_darwin(v7);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v59 - v11;
  v13 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v59 - v15;
  v17 = type metadata accessor for Device();
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  v19 = __chkstk_darwin(v17);
  v61 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v59 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v65 = v7;
    v60 = v17;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AD08);
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = v27;
      v33 = v32;
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v29;
      *v34 = v29;
      v35 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "LE Pairing completed for %@.", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

      v27 = v59;
    }

    v36 = [*&v29[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v25);
    swift_endAccess();
    sub_100A22DF0(v12);
    sub_10044DA44(v16);
    v37 = *(v66 + 8);
    v37(v12, v65);
    v38 = v64;
    v39 = v60;
    if ((*(v64 + 48))(v16, 1, v60) == 1)
    {
      sub_10000B3A8(v16, &qword_101699860, &qword_1013A34D0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No BT device from BluetoothManager after pairing. Need to unpair", v42, 2u);
      }

      v43 = v62;
      sub_100A22DF0(v62);
      sub_10043B150(v29, v43);
      v37(v43, v65);
    }

    else
    {
      v44 = v63;
      (*(v38 + 32))(v63, v16, v39);
      v45 = v61;
      (*(v38 + 16))(v61, v44, v39);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v38;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v59 = v27;
        v66 = a5;
        v51 = v50;
        v68[0] = v50;
        *v49 = 136315138;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
        v52 = v47;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v56 = *(v48 + 8);
        v56(v45, v39);
        v57 = sub_1000136BC(v53, v55, v68);

        *(v49 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v46, v52, "Found BT device from BluetoothManager after pairing as expected. %s", v49, 0xCu);
        sub_100007BAC(v51);

        v56(v63, v39);
      }

      else
      {

        v58 = *(v38 + 8);
        v58(v45, v39);
        v58(v44, v39);
      }
    }

    v67(0, 0);
  }

  return result;
}

uint64_t sub_10045A088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 225) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for MACAddress();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10045A180, 0, 0);
}

uint64_t sub_10045A180()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_10045A238;

  return daemon.getter();
}

uint64_t sub_10045A238(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AirPodsLEPairingService();
  v9 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019D54(&unk_1016B1150, type metadata accessor for AirPodsLEPairingService);
  *v6 = v12;
  v6[1] = sub_10045A414;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10045A414(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {
    v7 = sub_10045B390;
    v8 = 0;
  }

  else
  {
    v9 = v4[17];

    v7 = sub_10045A54C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10045A54C()
{
  v1 = v0[19];
  if (*(v1 + 273) == 1)
  {
    sub_100100904();
    v2 = swift_allocError();
    *v3 = 0x800000000000000ELL;
    v0[24] = v2;
    swift_willThrow();

    return _swift_task_switch(sub_10045A7AC, 0, 0);
  }

  else
  {
    *(v1 + 273) = 1;
    type metadata accessor for CentralManager();
    v4 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_10045A678;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_10045A678(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 152);
  if (v1)
  {
    v8 = sub_10045AD08;
  }

  else
  {
    v8 = sub_10045A9CC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10045A7AC()
{
  v1 = v0[19];

  v2 = v0[24];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AD08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "startDiscoveryAndPairingSession error: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[13];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  sub_10045B5B0(v13, v9);
  (*(v11 + 8))(v9, v10);
  if (v12)
  {
    v15 = v0[5];
    v14 = v0[6];
    swift_errorRetain();
    v15(v2, 1);
  }

  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[10];
  v18 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10045A9CC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v22 = v3;
  v23 = *(v0 + 176);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  v24 = *(v0 + 225);
  v8 = *(v0 + 32);
  v20 = *(v0 + 152);
  v21 = *(v0 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v2(v3, v8, v7);
  v2(v4, v21, v7);
  v10 = *(v6 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = (v5 + v10 + v11) & ~v10;
  v13 = swift_allocObject();
  *(v0 + 200) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = v23;
  v14 = *(v6 + 32);
  v14(v13 + v11, v22, v7);
  v14(v13 + v12, v4, v7);
  v15 = v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = xmmword_10138BBF0;
  *(v15 + 16) = v24;
  *(v15 + 17) = 1;
  v16 = async function pointer to withTimeout<A>(_:block:)[1];

  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  v18 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v17 = v0;
  v17[1] = sub_10045ABE0;

  return withTimeout<A>(_:block:)(v0 + 224, 0x40AAD21B3B700000, 3, &unk_1013A3580, v13, v18);
}

uint64_t sub_10045ABE0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_10045B1DC;
  }

  else
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 152);

    v5 = sub_10045AEA8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10045AD08()
{
  v1 = v0[23];
  *(v0[19] + 273) = 0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_101696FF8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsLEPairingService pairAirPods failed with error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[24] = v1;
  swift_willThrow();

  return _swift_task_switch(sub_10045A7AC, 0, 0);
}

uint64_t sub_10045AEA8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  *(v2 + 273) = 0;

  return _swift_task_switch(sub_10045AF18, 0, 0);
}

uint64_t sub_10045AF18()
{
  v32 = v0;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD08);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, &v31);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "LE Pairing completed for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v30);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v19 = v0[13];
  v20 = v0[7];
  v21 = v0[5];
  sub_10045B5B0(v0[2], v19);
  v17(v19, v20);
  v22 = v0[19];
  if (v21)
  {
    v23 = v0[6];
    (v0[5])(0, 0);
  }

  v25 = v0[12];
  v24 = v0[13];
  v27 = v0[10];
  v26 = v0[11];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10045B1DC()
{
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[27];
  *(v0[19] + 273) = 0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_101696FF8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "AirPodsLEPairingService pairAirPods failed with error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[24] = v3;
  swift_willThrow();

  return _swift_task_switch(sub_10045A7AC, 0, 0);
}

uint64_t sub_10045B390()
{
  v1 = v0[17];

  v2 = v0[20];
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AD08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "startDiscoveryAndPairingSession error: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[13];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  sub_10045B5B0(v13, v9);
  (*(v11 + 8))(v9, v10);
  if (v12)
  {
    v15 = v0[5];
    v14 = v0[6];
    swift_errorRetain();
    v15(v2, 1);
  }

  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[10];
  v18 = v0[11];

  v20 = v0[1];

  return v20();
}

void sub_10045B5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v36[-v10];
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(*(a1 + 32) + 24);
  v17 = *(v16 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v37 = a2;
  v38 = v16;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v18 = v39[0];
  if (v39[0])
  {
    v19 = [*(v39[0] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1001DE870(0, v15);
    swift_endAccess();
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AD08);
    (*(v5 + 16))(v11, a2, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v23 = 136446466;
      *(v23 + 4) = sub_1000136BC(0xD000000000000047, 0x8000000101354EB0, v39);
      *(v23 + 12) = 2082;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v5 + 8))(v11, v4);
      v27 = sub_1000136BC(v24, v26, v39);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s Cleaned pairing manager for %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AD08);
    (*(v5 + 16))(v9, a2, v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1000136BC(0xD000000000000047, 0x8000000101354EB0, v39);
      *(v31 + 12) = 2082;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v5 + 8))(v9, v4);
      v35 = sub_1000136BC(v32, v34, v39);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s Missing peripheral for %{public}s to clean the pairing manager", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_10045BB60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a1;
  v49 = a7;
  v39 = a6;
  v40 = a5;
  v41 = a3;
  v45 = type metadata accessor for Device();
  v13 = *(v45 - 8);
  v44 = *(v13 + 64);
  __chkstk_darwin(v45);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v39 - v17;
  v19 = sub_1000BC4D4(&qword_1016A0500, &qword_1013A34D8);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v50 = &v39 - v22;
  v23 = *(a2 + 24);
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = 0;
  sub_1000BC4D4(&qword_1016A0508, &qword_1013A34E0);
  OS_dispatch_queue.sync<A>(execute:)();
  v43 = v7;
  v56 = *(a6 + 48);
  v24 = v56;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0510, &qword_1016A0508, &qword_1013A34E0);
  sub_1004682F0();
  v26 = v24;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v42;
  v29 = v45;
  (*(v13 + 16))(v42, v40, v45);
  v30 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v48;
  *(v32 + 2) = v27;
  *(v32 + 3) = v33;
  v34 = v41;
  *(v32 + 4) = v41;
  (*(v13 + 32))(&v32[v30], v28, v29);
  *&v32[v31] = v49;
  sub_1000041A4(&qword_1016A0518, &qword_1016A0500, &qword_1013A34D8);

  v35 = v34;

  v36 = v46;
  v37 = v50;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v37, v36);
  AnyCancellable.store(in:)();
}

uint64_t sub_10045BFC8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Device();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v25[1] = type metadata accessor for Transaction();
    v17 = a3;
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
    v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v25[0] = v16;
    v20 = a6;
    v21 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = v18;
    *(v22 + 3) = v17;
    v23 = v26;
    *(v22 + 4) = a4;
    *(v22 + 5) = v23;
    (*(v12 + 32))(&v22[v19], v14, v11);
    *&v22[v21] = v20;

    v24 = a4;
    sub_1004692DC(v23);

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_10045C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v13 = type metadata accessor for Device();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v6[26] = *(v14 + 64);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_10045C378, 0, 0);
}

uint64_t sub_10045C378()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[26];
    v22 = v0[27];
    v4 = v0[24];
    v5 = v0[25];
    v24 = v0[23];
    v29 = v0[22];
    v30 = v0[21];
    v25 = v0[20];
    v26 = v0[18];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[13];
    v23 = v0[17];
    v27 = *(Strong + 48);
    v28 = v0[19];
    v9 = Strong;
    (*(v5 + 16))(v22, v0[16], v4);
    v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 2) = v8;
    *(v12 + 3) = v9;
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    v13 = v7;
    (*(v5 + 32))(&v12[v10], v22, v4);
    *&v12[v11] = v23;
    v0[6] = sub_1004693E4;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161D7E8;
    v14 = _Block_copy(v0 + 2);

    v15 = v6;
    sub_1004692DC(v13);

    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v28 + 8))(v25, v26);
    (*(v29 + 8))(v24, v30);

    v16 = v0[7];
  }

  v17 = v0[27];
  v18 = v0[23];
  v19 = v0[20];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10045C6A0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v270 = a5;
  v271 = a6;
  v277 = a4;
  v279 = a3;
  v280 = a2;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v238 = &v235 - v9;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v241 = &v235 - v12;
  v254 = type metadata accessor for UUID();
  v265 = *(v254 - 8);
  v13 = *(v265 + 64);
  __chkstk_darwin(v254);
  v240 = &v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_1000BC4D4(&qword_1016A05B0, &unk_1013A3608);
  v256 = *(v255 - 8);
  v15 = *(v256 + 64);
  v16 = __chkstk_darwin(v255);
  v239 = (&v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v253 = (&v235 - v18);
  v19 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v268 = *(v19 - 8);
  v269 = v19;
  v20 = *(v268 + 64);
  v21 = __chkstk_darwin(v19);
  v247 = &v235 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v276 = &v235 - v23;
  v272 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v250 = *(v272 - 8);
  v24 = *(v250 + 64);
  v25 = __chkstk_darwin(v272);
  v243 = &v235 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v244 = (&v235 - v28);
  v29 = __chkstk_darwin(v27);
  v242 = &v235 - v30;
  v31 = __chkstk_darwin(v29);
  v274 = &v235 - v32;
  v33 = __chkstk_darwin(v31);
  v275 = &v235 - v34;
  __chkstk_darwin(v33);
  v267 = (&v235 - v35);
  v36 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v249 = &v235 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v248 = &v235 - v40;
  v41 = sub_1000BC4D4(&qword_1016A05B8, &qword_1013A3618);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v273 = &v235 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v246 = &v235 - v46;
  __chkstk_darwin(v45);
  v266 = &v235 - v47;
  v263 = type metadata accessor for Device();
  v262 = *(v263 - 8);
  v48 = *(v262 + 64);
  __chkstk_darwin(v263);
  v260 = v49;
  v261 = &v235 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = 0;
  v50 = type metadata accessor for OwnedBeaconGroup(0);
  v51 = *(v50 - 1);
  v52 = *(v51 + 64);
  v53 = __chkstk_darwin(v50);
  v245 = &v235 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v258 = &v235 - v56;
  v57 = __chkstk_darwin(v55);
  v252 = &v235 - v58;
  __chkstk_darwin(v57);
  v251 = (&v235 - v59);
  v60 = &unk_1016AF8B0;
  v61 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v62 = *(*(v61 - 8) + 64);
  v63 = __chkstk_darwin(v61 - 8);
  v65 = &v235 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v63);
  v259 = &v235 - v67;
  v68 = __chkstk_darwin(v66);
  v70 = &v235 - v69;
  v71 = __chkstk_darwin(v68);
  v73 = &v235 - v72;
  v74 = __chkstk_darwin(v71);
  v76 = &v235 - v75;
  __chkstk_darwin(v74);
  v78 = &v235 - v77;
  v264 = a1;
  Transaction.capture()();
  v79 = *(v280 + 16);
  sub_100440548(v279, v78);
  v278 = v78;
  sub_1000D2A70(v78, v76, &unk_1016AF8B0, &unk_1013A0700);
  v80 = *(v51 + 48);
  if ((v80)(v76, 1, v50) != 1)
  {
    if (qword_1016946F0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_12;
  }

  sub_10000B3A8(v76, &unk_1016AF8B0, &unk_1013A0700);
  v81 = v277;
  while (v277)
  {
    if (v81 == 1)
    {
      v60 = v278;
      sub_1000D2A70(v278, v70, &unk_1016AF8B0, &unk_1013A0700);
      if ((v80)(v70, 1, v50) == 1)
      {
        v90 = v70;
        goto LABEL_19;
      }

      v100 = v70;
      v101 = v252;
      v102 = sub_10046B7F0(v100, v252, type metadata accessor for OwnedBeaconGroup);
      v281[0] = _swiftEmptyArrayStorage;
      v103 = *(v101 + *(v50 + 10));
      __chkstk_darwin(v102);
      *(&v235 - 2) = v101;
      *(&v235 - 1) = v281;

      sub_1005C6730(sub_1004696D8, (&v235 - 4), v103);

      sub_10044C750(v271, v279, v270, 1, v281[0]);
      sub_10000B3A8(v60, &unk_1016AF8B0, &unk_1013A0700);

      return sub_10046B858(v101, type metadata accessor for OwnedBeaconGroup);
    }

    if (v81 == 2)
    {
      sub_1000D2A70(v278, v65, v60, &unk_1013A0700);
      v82 = (v80)(v65, 1, v50);
      sub_10000B3A8(v65, v60, &unk_1013A0700);
      if (v82 == 1)
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_1000076D4(v83, qword_10177AD08);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        v86 = os_log_type_enabled(v84, v85);
        v60 = v278;
        if (v86)
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "All parts paired on verifyFindMyNetworkId but there is no beaconGroup. Attempt to re-pair...", v87, 2u);
        }

        sub_10044C750(v271, v279, v270, 0, _swiftEmptyArrayStorage);
        goto LABEL_24;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      sub_1000076D4(v113, qword_10177AD08);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&_mh_execute_header, v114, v115, "All parts paired on verifyFindMyNetworkId and we have beaconGroup. Check if pairing is pending...", v116, 2u);
      }

      type metadata accessor for Transaction();
      v117 = swift_allocObject();
      swift_weakInit();
      v118 = v262;
      v119 = v261;
      v120 = v263;
      (*(v262 + 16))(v261, v270, v263);
      v121 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v122 = (v260 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      v124 = v279;
      *(v123 + 16) = v117;
      *(v123 + 24) = v124;
      (*(v118 + 32))(v123 + v121, v119, v120);
      *(v123 + v122) = v264;
      *(v123 + ((v122 + 15) & 0xFFFFFFFFFFFFFFF8)) = v271;
      v125 = v124;

      static Transaction.asyncTask(name:block:)();

      sub_10000B3A8(v278, &unk_1016AF8B0, &unk_1013A0700);
    }

    v60 = v278;
    v91 = v259;
    sub_1000D2A70(v278, v259, &unk_1016AF8B0, &unk_1013A0700);
    if ((v80)(v91, 1, v50) == 1)
    {
      v90 = v91;
      goto LABEL_19;
    }

    v126 = v258;
    sub_10046B7F0(v91, v258, type metadata accessor for OwnedBeaconGroup);
    v127 = *(v126 + *(v50 + 10));
    v128 = v127 + 64;
    v129 = 1 << *(v127 + 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v80 = v130 & *(v127 + 64);
    v237 = v276 + 2;
    v50 = ((v129 + 63) >> 6);
    v236 = (v265 + 8);
    v259 = v127;

    v131 = 0;
    v73 = v273;
    v252 = v128;
    v251 = v50;
    v65 = v274;
    while (v80)
    {
LABEL_43:
      v133 = __clz(__rbit64(v80)) | (v131 << 6);
      v134 = (*(v259 + 48) + 16 * v133);
      v135 = *v134;
      v136 = v134[1];
      v137 = v267;
      v138 = v272;
      v70 = type metadata accessor for OwnedBeaconGroup.PairingState;
      sub_10046A814(*(v259 + 56) + *(v268 + 72) * v133, v267 + *(v272 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
      *v137 = v135;
      v137[1] = v136;
      v139 = v275;
      sub_1000D2AD8(v137, v275, &qword_1016A4190, &unk_1013A3550);
      sub_1000D2A70(v139, v65, &qword_1016A4190, &unk_1013A3550);
      v140 = *v65;
      v76 = *(v65 + 1);
      sub_100017D5C(v135, v136);
      sub_100016590(v140, v76);
      v60 = *(v138 + 48);
      sub_10046A814(&v65[v60], v276, type metadata accessor for OwnedBeaconGroup.PairingState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v73 = v273;
        if (EnumCaseMultiPayload != 1)
        {
          sub_10046B858(v276, type metadata accessor for OwnedBeaconGroup.PairingState);
          sub_10046B858(&v274[v60], type metadata accessor for OwnedBeaconGroup.PairingState);
          goto LABEL_37;
        }

        v142 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v143 = v276;
        sub_100006654(*(v276 + v142[16]), *(v276 + v142[16] + 8));
        v70 = *(v237 + v142[24]);
        sub_10000B3A8(v143 + v142[12], &qword_1016A40D0, &unk_10138BE70);
        (*v236)(v143, v254);
      }

      else
      {
        v144 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v70 = *(v237 + *(v144 + 48));
        sub_10000B3A8(v276, &qword_1016A40D0, &unk_10138BE70);
        v73 = v273;
      }

      sub_10046B858(&v274[v60], type metadata accessor for OwnedBeaconGroup.PairingState);
      if (v70 == 2)
      {

        v145 = v248;
        sub_1000D2AD8(v275, v248, &qword_1016A4190, &unk_1013A3550);
        v146 = v250;
        v147 = *(v250 + 56);
        v148 = v145;
        v149 = 0;
        goto LABEL_50;
      }

LABEL_37:
      v80 &= v80 - 1;
      sub_10000B3A8(v275, &qword_1016A4190, &unk_1013A3550);
      v128 = v252;
      v50 = v251;
    }

    while (1)
    {
      v132 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        goto LABEL_97;
      }

      if (v132 >= v50)
      {
        break;
      }

      v80 = *(v128 + 8 * v132);
      ++v131;
      if (v80)
      {
        v131 = v132;
        goto LABEL_43;
      }
    }

    v146 = v250;
    v147 = *(v250 + 56);
    v145 = v248;
    v148 = v248;
    v149 = 1;
LABEL_50:
    v150 = v272;
    v147(v148, v149, 1, v272);
    v151 = v249;
    sub_1000D2AD8(v145, v249, &unk_1016BBEA0, &unk_101395A80);
    v152 = 1;
    v153 = (*(v146 + 48))(v151, 1, v150);
    v70 = v266;
    v65 = v255;
    if (v153 != 1)
    {
      v154 = v242;
      sub_1000D2AD8(v151, v242, &qword_1016A4190, &unk_1013A3550);
      v155 = *(v65 + 12);
      v156 = v244;
      sub_1000D2A70(v154, v244, &qword_1016A4190, &unk_1013A3550);
      v60 = *(v150 + 48);
      *v70 = *v156;
      v157 = v154;
      v76 = v243;
      sub_1000D2AD8(v157, v243, &qword_1016A4190, &unk_1013A3550);
      sub_100016590(*v76, *(v76 + 1));
      sub_10046B7F0(&v76[*(v150 + 48)], v70 + v155, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B858(v156 + v60, type metadata accessor for OwnedBeaconGroup.PairingState);
      v152 = 0;
    }

    (*(v256 + 56))(v70, v152, 1, v65);
    v158 = 0;
    v159 = v277;
    v160 = *(v277 + 16);
    v80 = _swiftEmptyArrayStorage;
    v50 = _swiftEmptyArrayStorage;
    while (2)
    {
      v161 = v159 + 32 * v158;
LABEL_54:
      if (v160 == v158)
      {
        v169 = v50[2];
        if (v169)
        {
          v281[0] = _swiftEmptyArrayStorage;
          sub_1011244D8(0, v169, 0);
          v170 = v281[0];
          v171 = v50 + 6;
          do
          {
            v172 = *(v171 - 1);
            v173 = *v171;
            sub_100017D5C(v172, *v171);
            v281[0] = v170;
            v175 = v170[2];
            v174 = v170[3];
            if (v175 >= v174 >> 1)
            {
              sub_1011244D8((v174 > 1), v175 + 1, 1);
              v170 = v281[0];
            }

            v171 += 4;
            v170[2] = v175 + 1;
            v176 = &v170[2 * v175];
            v176[4] = v172;
            v176[5] = v173;
            --v169;
          }

          while (v169);

          v73 = v273;
        }

        else
        {

          v170 = _swiftEmptyArrayStorage;
        }

        __chkstk_darwin(v177);
        v178 = v266;
        *(&v235 - 2) = v266;

        v179 = sub_10013D5D4(sub_10046959C, (&v235 - 4), v170);
        v180 = v259;
        v181 = sub_100466360(v259, sub_1004668BC, sub_1004668BC);
        v182 = sub_10042BA48(v181);

        v276 = *(sub_100466360(v180, sub_1004664D0, sub_1004664D0) + 16);

        v281[0] = v179;
        sub_100398324(v182);
        sub_1004695BC();
        v277 = Array<A>.uniqued()();

        v183 = v246;
        sub_1000D2A70(v178, v246, &qword_1016A05B8, &qword_1013A3618);
        v184 = *(v256 + 48);
        v185 = v184(v183, 1, v65);
        v186 = v265;
        v187 = v247;
        if (v185 == 1)
        {

          sub_10000B3A8(v183, &qword_1016A05B8, &qword_1013A3618);
          goto LABEL_72;
        }

        sub_1000D2AD8(v183, v253, &qword_1016A05B0, &unk_1013A3608);
        sub_1000D2A70(v178, v73, &qword_1016A05B8, &qword_1013A3618);
        if (v184(v73, 1, v65) == 1)
        {

          sub_10000B3A8(v73, &qword_1016A05B8, &qword_1013A3618);
          v190 = v241;
          (*(v186 + 56))(v241, 1, 1, v254);
          goto LABEL_80;
        }

        sub_100016590(*v73, *(v73 + 1));
        v191 = *(v65 + 12);
        sub_10046A814(&v73[v191], v187, type metadata accessor for OwnedBeaconGroup.PairingState);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v192 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
          v193 = *(v192 + 48);
          sub_100006654(*(v187 + *(v192 + 64)), *(v187 + *(v192 + 64) + 8));
          v194 = *(v186 + 32);
          v195 = v187;
          v190 = v241;
          v196 = v254;
          v194(v241, v195, v254);
          (*(v265 + 56))(v190, 0, 1, v196);
          v197 = v195 + v193;
          v198 = v196;
          v186 = v265;
          sub_10000B3A8(v197, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          v199 = v187;
          v190 = v241;
          v198 = v254;
          (*(v186 + 56))(v241, 1, 1, v254);
          sub_10046B858(v199, type metadata accessor for OwnedBeaconGroup.PairingState);
        }

        sub_10046B858(&v273[v191], type metadata accessor for OwnedBeaconGroup.PairingState);
        if ((*(v186 + 48))(v190, 1, v198) == 1)
        {

LABEL_80:
          v189 = v245;
          sub_10000B3A8(v190, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v253, &qword_1016A05B0, &unk_1013A3608);
          v188 = v258;
LABEL_81:
          if (*(v277 + 16))
          {
            sub_10044C750(v271, v279, v270, 1, v277);

            sub_10000B3A8(v278, &unk_1016AF8B0, &unk_1013A0700);
            v200 = v188;
          }

          else
          {

            if (qword_1016946F0 != -1)
            {
              swift_once();
            }

            v201 = type metadata accessor for Logger();
            sub_1000076D4(v201, qword_10177AD08);
            sub_10046A814(v188, v189, type metadata accessor for OwnedBeaconGroup);
            v202 = Logger.logObject.getter();
            v203 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v202, v203))
            {
              v204 = swift_slowAlloc();
              v205 = swift_slowAlloc();
              v281[0] = v205;
              *v204 = 141558275;
              *(v204 + 4) = 1752392040;
              *(v204 + 12) = 2081;
              v206 = sub_10051F7B0(v205);
              v207 = v189;
              v209 = v208;
              sub_10046B858(v207, type metadata accessor for OwnedBeaconGroup);
              v210 = sub_1000136BC(v206, v209, v281);

              *(v204 + 14) = v210;
              v178 = v266;
              _os_log_impl(&_mh_execute_header, v202, v203, "Cannot force pair for beaconGroup: %{private,mask.hash}s", v204, 0x16u);
              sub_100007BAC(v205);
            }

            else
            {

              sub_10046B858(v189, type metadata accessor for OwnedBeaconGroup);
            }

            sub_10000B3A8(v278, &unk_1016AF8B0, &unk_1013A0700);
            v200 = v188;
          }

          sub_10046B858(v200, type metadata accessor for OwnedBeaconGroup);
        }

        else
        {
          (*(v186 + 32))(v240, v190, v198);
          v211 = v65;
          v212 = v239;
          sub_1000D2A70(v253, v239, &qword_1016A05B0, &unk_1013A3608);
          v213 = *v212;
          v214 = v212[1];
          v215 = *(v211 + 12);
          v216 = sub_100519EE8(*v212, v214);
          v218 = v217;
          v219 = sub_100016590(v213, v214);
          v281[0] = v216;
          v281[1] = v218;
          __chkstk_darwin(v219);
          *(&v235 - 2) = v281;
          LOBYTE(v213) = sub_1002EB6B8(sub_100469610, (&v235 - 4), v170);

          sub_100016590(v216, v218);
          sub_10046B858(v212 + v215, type metadata accessor for OwnedBeaconGroup.PairingState);
          if ((v213 & 1) == 0 && !v276)
          {
            (*v236)(v240, v254);
            sub_10000B3A8(v253, &qword_1016A05B0, &unk_1013A3608);
            v178 = v266;
LABEL_72:
            v188 = v258;
            v189 = v245;
            goto LABEL_81;
          }

          v220 = v253;
          v221 = *v253;
          v275 = v253[1];
          v276 = v221;
          v222 = v262;
          v223 = v261;
          v224 = v263;
          (*(v262 + 16))(v261, v270, v263);
          v225 = (*(v222 + 80) + 56) & ~*(v222 + 80);
          v226 = swift_allocObject();
          v228 = v279;
          v227 = v280;
          *(v226 + 2) = v277;
          *(v226 + 3) = v227;
          v229 = v271;
          *(v226 + 4) = v264;
          *(v226 + 5) = v229;
          *(v226 + 6) = v228;
          (*(v222 + 32))(&v226[v225], v223, v224);

          v230 = v228;

          v231 = v258;
          sub_100456B10(v276, v275, v258, sub_10046964C, v226);
          v232 = v238;
          static Date.trustedNow.getter(v238);
          v233 = type metadata accessor for Date();
          (*(*(v233 - 8) + 56))(v232, 0, 1, v233);
          v234 = v240;
          sub_100466E88(v240, v232);
          sub_10000B3A8(v232, &unk_101696900, &unk_10138B1E0);

          (*v236)(v234, v254);
          sub_10000B3A8(v278, &unk_1016AF8B0, &unk_1013A0700);
          sub_10046B858(v231, type metadata accessor for OwnedBeaconGroup);
          sub_10000B3A8(v220, &qword_1016A05B0, &unk_1013A3608);
          v178 = v266;
        }

        v96 = &qword_1016A05B8;
        v97 = &qword_1013A3618;
        v98 = v178;
        return sub_10000B3A8(v98, v96, v97);
      }

      if (v158 < v160)
      {
        v76 = (v158 + 1);
        if (__OFADD__(v158, 1))
        {
          goto LABEL_96;
        }

        v162 = *(v161 + 56);
        ++v158;
        v161 += 32;
        if (v162 == 2)
        {
          v163 = *v161;
          v164 = *(v161 + 8);
          v60 = *(v161 + 16);
          sub_100017D5C(v164, v60);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v281[0] = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124984(0, v50[2] + 1, 1);
            v159 = v277;
            v50 = v281[0];
          }

          v167 = v50[2];
          v166 = v50[3];
          v70 = v167 + 1;
          if (v167 >= v166 >> 1)
          {
            sub_101124984((v166 > 1), v167 + 1, 1);
            v159 = v277;
            v50 = v281[0];
          }

          v50[2] = v70;
          v168 = &v50[4 * v167];
          *(v168 + 32) = v163;
          v168[5] = v164;
          v168[6] = v60;
          *(v168 + 56) = 2;
          v158 = v76;
          v65 = v255;
          v73 = v273;
          continue;
        }

        goto LABEL_54;
      }

      break;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
LABEL_12:
    v88 = type metadata accessor for Logger();
    v89 = sub_1000076D4(v88, qword_10177AD08);
    sub_1005160CC(v89);
    sub_10046B858(v76, type metadata accessor for OwnedBeaconGroup);
    v81 = v277;
  }

  v60 = v278;
  sub_1000D2A70(v278, v73, &unk_1016AF8B0, &unk_1013A0700);
  if ((v80)(v73, 1, v50) == 1)
  {
    v90 = v73;
LABEL_19:
    sub_10000B3A8(v90, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_1000076D4(v92, qword_10177AD08);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Cannot force from verifyFindMyNetworkId without a beaconGroup", v95, 2u);
    }

LABEL_24:
    v96 = &unk_1016AF8B0;
    v97 = &unk_1013A0700;
    v98 = v60;
  }

  else
  {
    v104 = v251;
    sub_10046B7F0(v73, v251, type metadata accessor for OwnedBeaconGroup);
    v105 = v262;
    v106 = v261;
    v107 = v263;
    (*(v262 + 16))(v261, v270, v263);
    v108 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v109 = (v260 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    v111 = v279;
    *(v110 + 16) = v280;
    *(v110 + 24) = v111;
    (*(v105 + 32))(v110 + v108, v106, v107);
    *(v110 + v109) = v264;
    *(v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8)) = v271;

    v112 = v111;

    sub_100453380(v112, v104, sub_1004696F4, v110);

    sub_10046B858(v104, type metadata accessor for OwnedBeaconGroup);
    v96 = &unk_1016AF8B0;
    v97 = &unk_1013A0700;
    v98 = v278;
  }

  return sub_10000B3A8(v98, v96, v97);
}

uint64_t sub_10045E6E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Transaction();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v11, a3, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = a2;
  (*(v9 + 32))(v15 + v13, v11, v8);
  *(v15 + v14) = a4;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;

  v16 = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_10045E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = type metadata accessor for Device();
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v5[25] = *(v13 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10045EA54, 0, 0);
}

uint64_t sub_10045EA54()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_10045EB78;
    v4 = v0[13];

    return sub_10044DEFC(v4);
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[22];
    v9 = v0[19];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10045EB78(char a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10045EC78, 0, 0);
}

uint64_t sub_10045EC78()
{
  v50 = v0;
  if (*(v0 + 240) == 1)
  {
    v1 = v0[27];
    v38 = v0[28];
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    v41 = v0[22];
    v46 = v0[21];
    v47 = v0[20];
    v42 = v0[19];
    v43 = v0[17];
    v5 = v0[15];
    v39 = v0[13];
    v40 = v0[16];
    v44 = *(v38 + 48);
    v45 = v0[18];
    (*(v3 + 16))(v1, v0[14], v4);
    v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    (*(v3 + 32))(v9 + v6, v1, v4);
    *(v9 + v7) = v38;
    *(v9 + v8) = v40;
    *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
    v0[6] = sub_10046BC20;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161D978;
    v10 = _Block_copy(v0 + 2);

    v11 = v39;
    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v45 + 8))(v42, v43);
    (*(v46 + 8))(v41, v47);

    v12 = v0[7];
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[14];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AD08);
    (*(v15 + 16))(v13, v16, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[28];
    v22 = v0[26];
    v24 = v0[23];
    v23 = v0[24];
    if (v20)
    {
      v48 = v0[28];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v26;
      *v25 = 136446210;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_1000136BC(v27, v29, &v49);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "FindMy pairing has been completed for %{public}s.", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {
      v31 = v0[28];

      (*(v23 + 8))(v22, v24);
    }
  }

  v33 = v0[26];
  v32 = v0[27];
  v34 = v0[22];
  v35 = v0[19];

  v36 = v0[1];

  return v36();
}

uint64_t sub_10045F170(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v38 = a3;
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = *a1;
  v17 = a1[1];
  result = type metadata accessor for OwnedBeaconGroup(0);
  v19 = *(a2 + *(result + 40));
  if (*(v19 + 16))
  {
    result = sub_100771E30(v16, v17);
    if (v20)
    {
      sub_10046A814(*(v19 + 56) + *(v6 + 72) * result, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B7F0(v13, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10046B7F0(v15, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v21 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v22 = v21[12];
        sub_100006654(*&v10[v21[16]], *&v10[v21[16] + 8]);
        v23 = &v10[v21[24]];
        v24 = *v23;
        v25 = v23[1];
        sub_10000B3A8(&v10[v22], &qword_1016A40D0, &unk_10138BE70);
        v26 = type metadata accessor for UUID();
        result = (*(*(v26 - 8) + 8))(v10, v26);
        if (v25)
        {
          return result;
        }
      }

      else
      {
        v27 = &v10[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
        v24 = *v27;
        v28 = v27[1];
        result = sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
        if (v28)
        {
          return result;
        }
      }

      if (v24 <= 1)
      {
        v29 = sub_100519EE8(v16, v17);
        v31 = v30;
        v32 = v38;
        v33 = *v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v32 = v33;
        if ((result & 1) == 0)
        {
          result = sub_100A5B734(0, *(v33 + 16) + 1, 1, v33);
          v33 = result;
          *v32 = result;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_100A5B734((v34 > 1), v35 + 1, 1, v33);
          v33 = result;
          *v32 = result;
        }

        *(v33 + 16) = v35 + 1;
        v36 = v33 + 16 * v35;
        *(v36 + 32) = v29;
        *(v36 + 40) = v31;
      }
    }
  }

  return result;
}

uint64_t sub_10045F488(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A05B8, &qword_1013A3618);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v20 - v6);
  v9 = *a1;
  v8 = a1[1];
  sub_1000D2A70(a2, v20 - v6, &qword_1016A05B8, &qword_1013A3618);
  v10 = sub_1000BC4D4(&qword_1016A05B0, &unk_1013A3608);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    sub_100017D5C(v9, v8);
    sub_10000B3A8(v7, &qword_1016A05B8, &qword_1013A3618);
    if (v8 >> 60 != 15)
    {
      v11 = 0;
      v12 = 0xF000000000000000;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *v7;
    v14 = v7[1];
    v15 = *(v10 + 48);
    sub_100017D5C(v9, v8);
    v11 = sub_100519EE8(v13, v14);
    v12 = v16;
    sub_100016590(v13, v14);
    sub_10046B858(v7 + v15, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v8 >> 60 != 15)
    {
      if (v12 >> 60 != 15)
      {
        sub_100017D5C(v9, v8);
        sub_10002E98C(v11, v12);
        v19 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v8, v11, v12);
        sub_100006654(v11, v12);
        sub_100016590(v9, v8);
        sub_100006654(v11, v12);
        sub_100006654(v9, v8);
        v17 = v19 ^ 1;
        return v17 & 1;
      }

      goto LABEL_8;
    }

    if (v12 >> 60 != 15)
    {
LABEL_8:
      sub_100006654(v9, v8);
      sub_100006654(v11, v12);
      v17 = 1;
      return v17 & 1;
    }
  }

  sub_100006654(v9, v8);
  v17 = 0;
  return v17 & 1;
}

void sub_10045F6E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v44 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Device();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  if ((a2 & 1) == 0)
  {
    v37 = v11;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AD08);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v19;
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Done force pairing case from verifyFindMyNetworkId", v25, 2u);
      v19 = v36;
    }

    v11 = v37;
  }

  if (*(v44 + 16))
  {
    v37 = *(a4 + 48);
    (*(v20 + 16))(&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a8, v19);
    v26 = (*(v20 + 80) + 48) & ~*(v20 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = v38;
    *(v27 + 3) = a4;
    v34 = a4;
    v35 = v18;
    v36 = v14;
    v28 = v44;
    v29 = v40;
    *(v27 + 4) = v39;
    *(v27 + 5) = v29;
    (*(v20 + 32))(&v27[v26], &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    *&v27[(v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;
    aBlock[4] = sub_10046A5AC;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161DA90;
    v30 = _Block_copy(aBlock);

    v31 = v29;

    v32 = v35;
    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v33 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v43 + 8))(v33, v11);
    (*(v41 + 8))(v32, v42);
  }
}

uint64_t sub_10045FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = type metadata accessor for Device();
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v5[25] = *(v13 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10045FD4C, 0, 0);
}

uint64_t sub_10045FD4C()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_10045FE70;
    v4 = v0[13];

    return sub_10044DEFC(v4);
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[22];
    v9 = v0[19];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10045FE70(char a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10045FF70, 0, 0);
}

uint64_t sub_10045FF70()
{
  v50 = v0;
  if (*(v0 + 240) == 1)
  {
    v1 = v0[27];
    v38 = v0[28];
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    v41 = v0[22];
    v46 = v0[21];
    v47 = v0[20];
    v42 = v0[19];
    v43 = v0[17];
    v5 = v0[15];
    v39 = v0[13];
    v40 = v0[16];
    v44 = *(v38 + 48);
    v45 = v0[18];
    (*(v3 + 16))(v1, v0[14], v4);
    v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    (*(v3 + 32))(v9 + v6, v1, v4);
    *(v9 + v7) = v38;
    *(v9 + v8) = v40;
    *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
    v0[6] = sub_10046A774;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161DAE0;
    v10 = _Block_copy(v0 + 2);

    v11 = v39;
    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v45 + 8))(v42, v43);
    (*(v46 + 8))(v41, v47);

    v12 = v0[7];
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[14];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AD08);
    (*(v15 + 16))(v13, v16, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[28];
    v22 = v0[26];
    v24 = v0[23];
    v23 = v0[24];
    if (v20)
    {
      v48 = v0[28];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v26;
      *v25 = 136446210;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_1000136BC(v27, v29, &v49);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "FindMy pairing has been completed for %{public}s.", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {
      v31 = v0[28];

      (*(v23 + 8))(v22, v24);
    }
  }

  v33 = v0[26];
  v32 = v0[27];
  v34 = v0[22];
  v35 = v0[19];

  v36 = v0[1];

  return v36();
}

void sub_100460468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = type metadata accessor for Device();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AD08);
  (*(v10 + 16))(v13, a2, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = a3;
    v29 = v19;
    v26 = v19;
    *v18 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = a2;
    v22 = a5;
    v24 = v23;
    (*(v10 + 8))(v13, v9);
    v25 = sub_1000136BC(v20, v24, &v29);
    a5 = v22;
    a2 = v21;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "FindMy pairing is not completed for %{public}s. Attempt to pair...", v18, 0xCu);
    sub_100007BAC(v26);

    a4 = v27;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  sub_10044C750(a4, a5, a2, 1, _swiftEmptyArrayStorage);
}

Swift::Int sub_100460728(void **a1)
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320D4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100460B5C(v6, type metadata accessor for OwnedBeaconGroup, sub_100461BE0, sub_100460CAC);
  *a1 = v3;
  return result;
}

Swift::Int sub_10046080C(void **a1)
{
  v2 = *(type metadata accessor for StandaloneBeacon() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100460B5C(v6, type metadata accessor for StandaloneBeacon, sub_100463B54, sub_10046197C);
  *a1 = v3;
  return result;
}

uint64_t sub_1004608F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(*(a2 + 32) + 24);
  v17 = *(v16 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v25[4] = a1 + *(v15 + 28);
  v25[5] = v16;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v18 = v26;
  if (v26)
  {
    v25[1] = v3;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C418);
    sub_100A245E8(0xD00000000000001ALL, 0x8000000101354C40);
    v20 = [*&v18[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = [*(a3 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = static UUID.== infix(_:_:)();
    v23 = *(v8 + 8);
    v23(v12, v7);
    v23(v14, v7);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

Swift::Int sub_100460B5C(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_100460CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v108 = &v99 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v113 = &v99 - v18;
  v125 = type metadata accessor for Date();
  v19 = *(v125 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v125);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = &v99 - v24;
  v117 = type metadata accessor for OwnedBeaconGroup(0);
  v25 = *(*(v117 - 8) + 64);
  v26 = __chkstk_darwin(v117);
  v116 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v127 = (&v99 - v29);
  result = __chkstk_darwin(v28);
  v33 = (&v99 - v32);
  v101 = a2;
  if (a3 != a2)
  {
    v107 = v12;
    v123 = (v19 + 56);
    v126 = (v19 + 48);
    v34 = *a4;
    v106 = (v19 + 32);
    v119 = (v19 + 8);
    v35 = *(v31 + 72);
    v36 = v34 + v35 * (a3 - 1);
    v114 = -v35;
    v115 = v34;
    v37 = a1 - a3;
    v100 = v35;
    v38 = v34 + v35 * a3;
    v109 = xmmword_101385D80;
    v112 = v17;
    v39 = v113;
    v118 = v23;
    v120 = (&v99 - v32);
    do
    {
      v105 = a3;
      v102 = v38;
      v40 = v38;
      v103 = v37;
      v41 = v37;
      v104 = v36;
      while (1)
      {
        v122 = v41;
        sub_10046A814(v40, v33, type metadata accessor for OwnedBeaconGroup);
        sub_10046A814(v36, v127, type metadata accessor for OwnedBeaconGroup);
        v42 = objc_autoreleasePoolPush();
        v43 = *v33;
        v44 = v33[1];
        v45 = v44 >> 62;
        v121 = v40;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2 || *(v43 + 16) == *(v43 + 24))
          {
LABEL_18:
            v54 = v125;
LABEL_22:
            v64 = *v123;
            (*v123)(v39, 1, 1, v54);
            goto LABEL_23;
          }
        }

        else if (v45)
        {
          if (v43 == v43 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v44 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v43, v44);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v49 = [v47 initForReadingFromData:isa error:&v128];

        if (!v49)
        {
          v57 = v128;
          v58 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v43, v44);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v59 = swift_allocObject();
          *(v59 + 16) = v109;
          v128 = v58;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = sub_100008C00();
          *(v59 + 32) = v60;
          *(v59 + 40) = v62;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v49 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_21:
          v39 = v113;
          v54 = v125;

          objc_autoreleasePoolPop(v46);
          v17 = v112;
          goto LABEL_22;
        }

        v50 = v128;
        sub_100016590(v43, v44);
        [v49 _enableStrictSecureDecodingMode];
        v51 = [objc_allocWithZone(CKRecord) initWithCoder:v49];
        if (!v51)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v63 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_21;
        }

        v52 = v51;

        objc_autoreleasePoolPop(v46);
        v53 = [v52 creationDate];

        v39 = v113;
        v54 = v125;
        if (v53)
        {
          v55 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = 0;
        }

        else
        {
          v56 = 1;
          v55 = v108;
        }

        v17 = v112;
        v64 = *v123;
        (*v123)(v55, v56, 1, v54);
        sub_1000D2AD8(v55, v39, &unk_101696900, &unk_10138B1E0);
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          (*v106)(v124, v39, v54);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v42);
        v66 = objc_autoreleasePoolPush();
        v67 = v66;
        v68 = *v127;
        v69 = v127[1];
        v70 = v69 >> 62;
        if ((v69 >> 62) > 1)
        {
          if (v70 != 2 || *(v68 + 16) == *(v68 + 24))
          {
LABEL_36:
            v79 = v125;
LABEL_40:
            v64(v17, 1, 1, v79);
            v89 = v118;
            goto LABEL_41;
          }
        }

        else if (v70)
        {
          if (v68 == v68 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v69 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v111 = v66;
        v71 = objc_autoreleasePoolPush();
        v72 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v68, v69);
        v73 = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v74 = [v72 initForReadingFromData:v73 error:&v128];

        if (!v74)
        {
          v82 = v128;
          v83 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v68, v69);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v109;
          v128 = v83;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v74 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_39:
          v39 = v113;
          v79 = v125;

          objc_autoreleasePoolPop(v71);
          v67 = v111;
          v17 = v112;
          goto LABEL_40;
        }

        v75 = v128;
        sub_100016590(v68, v69);
        [v74 _enableStrictSecureDecodingMode];
        v76 = [objc_allocWithZone(CKRecord) initWithCoder:v74];
        if (!v76)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v88 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_39;
        }

        v77 = v76;

        objc_autoreleasePoolPop(v71);
        v78 = [v77 creationDate];

        v39 = v113;
        v79 = v125;
        if (v78)
        {
          v80 = v107;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = 0;
        }

        else
        {
          v81 = 1;
          v80 = v107;
        }

        v17 = v112;
        v64(v80, v81, 1, v79);
        sub_1000D2AD8(v80, v17, &unk_101696900, &unk_10138B1E0);
        if (v65(v17, 1, v79) != 1)
        {
          v90 = v39;
          v89 = v118;
          v91 = v17;
          (*v106)(v118, v17, v79);
          v67 = v111;
          goto LABEL_43;
        }

        v89 = v118;
        v67 = v111;
LABEL_41:
        v90 = v39;
        Date.init()();
        v91 = v17;
        if (v65(v17, 1, v79) != 1)
        {
          sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v67);
        v92 = v124;
        v93 = Date.compare(_:)();
        v94 = *v119;
        (*v119)(v89, v79);
        v94(v92, v79);
        sub_10046B858(v127, type metadata accessor for OwnedBeaconGroup);
        v33 = v120;
        result = sub_10046B858(v120, type metadata accessor for OwnedBeaconGroup);
        if (v93 != 1)
        {
          break;
        }

        v95 = v122;
        if (!v115)
        {
          __break(1u);
        }

        v96 = v121;
        v97 = v116;
        sub_10046B7F0(v121, v116, type metadata accessor for OwnedBeaconGroup);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10046B7F0(v97, v36, type metadata accessor for OwnedBeaconGroup);
        v36 += v114;
        v40 = v96 + v114;
        v98 = __CFADD__(v95, 1);
        v41 = v95 + 1;
        v17 = v91;
        v39 = v90;
        if (v98)
        {
          goto LABEL_5;
        }
      }

      v17 = v91;
      v39 = v90;
LABEL_5:
      a3 = v105 + 1;
      v36 = v104 + v100;
      v37 = v103 - 1;
      v38 = v102 + v100;
    }

    while (v105 + 1 != v101);
  }

  return result;
}

uint64_t sub_10046197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StandaloneBeacon();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_10046A814(v24, v18, type metadata accessor for StandaloneBeacon);
      sub_10046A814(v21, v14, type metadata accessor for StandaloneBeacon);
      v25 = *(v8 + 32);
      v26 = static Date.< infix(_:_:)();
      sub_10046B858(v14, type metadata accessor for StandaloneBeacon);
      result = sub_10046B858(v18, type metadata accessor for StandaloneBeacon);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10046B7F0(v24, v37, type metadata accessor for StandaloneBeacon);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10046B7F0(v27, v21, type metadata accessor for StandaloneBeacon);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100461BE0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v258 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v251 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v251 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v251 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v251 - v20;
  v22 = __chkstk_darwin(v19);
  v260 = &v251 - v23;
  v24 = __chkstk_darwin(v22);
  v259 = &v251 - v25;
  v26 = __chkstk_darwin(v24);
  v270 = &v251 - v27;
  __chkstk_darwin(v26);
  v269 = &v251 - v28;
  v290 = type metadata accessor for Date();
  v29 = *(v290 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v290);
  v288 = &v251 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v295 = &v251 - v34;
  v35 = __chkstk_darwin(v33);
  v275 = &v251 - v36;
  v37 = __chkstk_darwin(v35);
  v277 = &v251 - v38;
  v39 = __chkstk_darwin(v37);
  v254 = &v251 - v40;
  __chkstk_darwin(v39);
  v256 = &v251 - v41;
  v287 = type metadata accessor for OwnedBeaconGroup(0);
  v271 = *(v287 - 8);
  v42 = *(v271 + 64);
  v43 = __chkstk_darwin(v287);
  v263 = &v251 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v286 = &v251 - v46;
  v47 = __chkstk_darwin(v45);
  v298 = (&v251 - v48);
  v49 = __chkstk_darwin(v47);
  v294 = (&v251 - v50);
  v51 = __chkstk_darwin(v49);
  v281 = (&v251 - v52);
  v53 = __chkstk_darwin(v51);
  v276 = (&v251 - v54);
  v55 = __chkstk_darwin(v53);
  v253 = (&v251 - v56);
  __chkstk_darwin(v55);
  v255 = (&v251 - v57);
  v58 = a3[1];
  if (v58 >= 1)
  {
    v291 = v18;
    v59 = 0;
    v289 = (v29 + 8);
    v296 = (v29 + 56);
    v297 = (v29 + 48);
    v60 = _swiftEmptyArrayStorage;
    v274 = (v29 + 32);
    v279 = xmmword_101385D80;
    v252 = a3;
    v257 = a4;
    v273 = v12;
    v272 = v15;
    v283 = v21;
    v61 = v290;
LABEL_4:
    v264 = v60;
    v265 = v59;
    if (v59 + 1 >= v58)
    {
      v82 = v59 + 1;
      goto LABEL_69;
    }

    v278 = v58;
    v62 = *a3;
    v63 = *(v271 + 72);
    v64 = v5;
    v65 = *a3 + v63 * (v59 + 1);
    v66 = v255;
    sub_10046A814(v65, v255, type metadata accessor for OwnedBeaconGroup);
    v292 = v63;
    v67 = v62 + v63 * v59;
    v68 = v253;
    sub_10046A814(v67, v253, type metadata accessor for OwnedBeaconGroup);
    a4 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v66, v256);
    if (v64)
    {
      goto LABEL_225;
    }

    objc_autoreleasePoolPop(a4);
    v69 = objc_autoreleasePoolPush();
    v70 = v254;
    sub_100E7AB5C(v68, v254);
    v280 = 0;
    objc_autoreleasePoolPop(v69);
    v71 = v256;
    v285 = Date.compare(_:)();
    v72 = v290;
    v73 = *v289;
    (*v289)(v70, v290);
    v284 = v73;
    v73(v71, v72);
    v29 = type metadata accessor for OwnedBeaconGroup;
    sub_10046B858(v68, type metadata accessor for OwnedBeaconGroup);
    sub_10046B858(v255, type metadata accessor for OwnedBeaconGroup);
    v74 = v265 + 2;
    v75 = (v62 + v292 * (v265 + 2));
    v21 = v283;
    while (1)
    {
      v82 = v278;
      if (v278 == v74)
      {
LABEL_54:
        a3 = v252;
        a4 = v257;
        v5 = v280;
        if (v285 != 1)
        {
          goto LABEL_67;
        }

        if (v82 < v265)
        {
          goto LABEL_215;
        }

        if (v265 < v82)
        {
          v135 = v292 * (v82 - 1);
          v136 = v82 * v292;
          v137 = v82;
          v138 = v265;
          v139 = v265 * v292;
          do
          {
            if (v138 != --v137)
            {
              v140 = *a3;
              if (!*a3)
              {
                goto LABEL_221;
              }

              v141 = v82;
              v29 = v140 + v139;
              sub_10046B7F0(v140 + v139, v263, type metadata accessor for OwnedBeaconGroup);
              if (v139 < v135 || v29 >= v140 + v136)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v139 != v135)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10046B7F0(v263, v140 + v135, type metadata accessor for OwnedBeaconGroup);
              v21 = v283;
              v82 = v141;
            }

            ++v138;
            v135 -= v292;
            v136 -= v292;
            v139 += v292;
          }

          while (v138 < v137);
          a4 = v257;
          v61 = v290;
          v5 = v280;
        }

        else
        {
LABEL_67:
          v61 = v290;
        }

LABEL_69:
        v142 = a3[1];
        if (v82 >= v142)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v82, v265))
        {
          goto LABEL_214;
        }

        if (v82 - v265 >= a4)
        {
LABEL_78:
          v59 = v82;
          goto LABEL_79;
        }

        if (__OFADD__(v265, a4))
        {
          goto LABEL_216;
        }

        if ((v265 + a4) >= v142)
        {
          v143 = a3[1];
        }

        else
        {
          v143 = v265 + a4;
        }

        if (v143 >= v265)
        {
          if (v82 == v143)
          {
            goto LABEL_78;
          }

          v280 = v5;
          v188 = *a3;
          v189 = *(v271 + 72);
          v190 = (*a3 + v189 * (v82 - 1));
          v284 = -v189;
          v191 = v265 - v82;
          v285 = v188;
          v261 = v189;
          v192 = v188 + v82 * v189;
          v262 = v143;
LABEL_132:
          v278 = v82;
          v266 = v192;
          v267 = v191;
          v193 = v191;
          v268 = v190;
          while (2)
          {
            v292 = v193;
            v194 = v294;
            sub_10046A814(v192, v294, type metadata accessor for OwnedBeaconGroup);
            sub_10046A814(v190, v298, type metadata accessor for OwnedBeaconGroup);
            v293 = objc_autoreleasePoolPush();
            v195 = *v194;
            v196 = v194[1];
            v197 = v196 >> 62;
            if ((v196 >> 62) > 1)
            {
              v198 = v291;
              if (v197 == 2 && *(v195 + 16) != *(v195 + 24))
              {
                goto LABEL_141;
              }

LABEL_148:
              v216 = *v296;
              (*v296)(v21, 1, 1, v61);
              goto LABEL_149;
            }

            v198 = v291;
            if (v197)
            {
              if (v195 == v195 >> 32)
              {
                goto LABEL_148;
              }
            }

            else if ((v196 & 0xFF000000000000) == 0)
            {
              goto LABEL_148;
            }

LABEL_141:
            v199 = objc_autoreleasePoolPush();
            v200 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v195, v196);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v299 = 0;
            v202 = [v200 initForReadingFromData:isa error:&v299];

            if (v202)
            {
              v203 = v299;
              sub_100016590(v195, v196);
              [v202 _enableStrictSecureDecodingMode];
              v204 = [objc_allocWithZone(CKRecord) initWithCoder:v202];
              if (v204)
              {
                v205 = v204;

                objc_autoreleasePoolPop(v199);
                v206 = [v205 creationDate];

                v21 = v283;
                if (v206)
                {
                  v207 = v272;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v208 = 0;
                }

                else
                {
                  v208 = 1;
                  v207 = v272;
                }

                v61 = v290;
                v216 = *v296;
                (*v296)(v207, v208, 1, v290);
                sub_1000D2AD8(v207, v21, &unk_101696900, &unk_10138B1E0);
                v217 = *v297;
                if ((*v297)(v21, 1, v61) != 1)
                {
                  (*v274)(v295, v21, v61);
                  goto LABEL_151;
                }

LABEL_149:
                Date.init()();
                v217 = *v297;
                if ((*v297)(v21, 1, v61) != 1)
                {
                  sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
                }

LABEL_151:
                objc_autoreleasePoolPop(v293);
                v293 = objc_autoreleasePoolPush();
                v218 = *v298;
                v219 = v298[1];
                v220 = v219 >> 62;
                if ((v219 >> 62) > 1)
                {
                  if (v220 == 2 && *(v218 + 16) != *(v218 + 24))
                  {
                    goto LABEL_157;
                  }

LABEL_162:
                  v231 = v288;
                }

                else
                {
                  if (v220)
                  {
                    if (v218 == v218 >> 32)
                    {
                      goto LABEL_162;
                    }
                  }

                  else if ((v219 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_162;
                  }

LABEL_157:
                  v282 = v216;
                  v221 = objc_autoreleasePoolPush();
                  v222 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v218, v219);
                  v223 = Data._bridgeToObjectiveC()().super.isa;
                  v299 = 0;
                  v224 = [v222 initForReadingFromData:v223 error:&v299];

                  if (v224)
                  {
                    v225 = v299;
                    sub_100016590(v218, v219);
                    [v224 _enableStrictSecureDecodingMode];
                    v226 = [objc_allocWithZone(CKRecord) initWithCoder:v224];
                    if (v226)
                    {
                      v227 = v226;

                      objc_autoreleasePoolPop(v221);
                      v228 = [v227 creationDate];

                      v198 = v291;
                      v21 = v283;
                      if (v228)
                      {
                        v229 = v273;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v230 = 0;
                      }

                      else
                      {
                        v230 = 1;
                        v229 = v273;
                      }

                      v61 = v290;
                      v231 = v288;
                      v282(v229, v230, 1, v290);
                      sub_1000D2AD8(v229, v198, &unk_101696900, &unk_10138B1E0);
                      if (v217(v198, 1, v61) != 1)
                      {
                        v245 = v198;
                        v239 = v21;
                        (*v274)(v231, v245, v61);
                        goto LABEL_170;
                      }

LABEL_167:
                      Date.init()();
                      if (v217(v198, 1, v61) == 1)
                      {
                        v239 = v21;
                      }

                      else
                      {
                        v240 = v198;
                        v239 = v21;
                        sub_10000B3A8(v240, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_170:
                      objc_autoreleasePoolPop(v293);
                      v241 = v295;
                      v29 = Date.compare(_:)();
                      v242 = *v289;
                      (*v289)(v231, v61);
                      v242(v241, v61);
                      a4 = type metadata accessor for OwnedBeaconGroup;
                      sub_10046B858(v298, type metadata accessor for OwnedBeaconGroup);
                      sub_10046B858(v294, type metadata accessor for OwnedBeaconGroup);
                      if (v29 == 1)
                      {
                        v243 = v292;
                        if (!v285)
                        {
                          __break(1u);
LABEL_220:
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
                        }

                        v29 = type metadata accessor for OwnedBeaconGroup;
                        a4 = v286;
                        sub_10046B7F0(v192, v286, type metadata accessor for OwnedBeaconGroup);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_10046B7F0(a4, v190, type metadata accessor for OwnedBeaconGroup);
                        v190 = v284 + v190;
                        v192 += v284;
                        v244 = __CFADD__(v243, 1);
                        v193 = v243 + 1;
                        v21 = v239;
                        if (v244)
                        {
                          goto LABEL_131;
                        }

                        continue;
                      }

                      v21 = v239;
LABEL_131:
                      v82 = v278 + 1;
                      v190 = &v268[v261];
                      v191 = v267 - 1;
                      v192 = v266 + v261;
                      v59 = v262;
                      if (v278 + 1 != v262)
                      {
                        goto LABEL_132;
                      }

                      a3 = v252;
                      v5 = v280;
LABEL_79:
                      if (v59 < v265)
                      {
                        goto LABEL_213;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v60 = v264;
                      }

                      else
                      {
                        v60 = sub_100A5B430(0, *(v264 + 2) + 1, 1, v264);
                      }

                      v29 = *(v60 + 2);
                      v144 = *(v60 + 3);
                      a4 = v29 + 1;
                      v145 = v5;
                      if (v29 >= v144 >> 1)
                      {
                        v60 = sub_100A5B430((v144 > 1), v29 + 1, 1, v60);
                      }

                      *(v60 + 2) = a4;
                      v146 = &v60[16 * v29];
                      *(v146 + 4) = v265;
                      *(v146 + 5) = v59;
                      v5 = *v258;
                      if (!*v258)
                      {
                        goto LABEL_223;
                      }

                      if (v29)
                      {
                        while (2)
                        {
                          v29 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v151 = &v60[16 * a4 + 32];
                            v152 = *(v151 - 64);
                            v153 = *(v151 - 56);
                            v157 = __OFSUB__(v153, v152);
                            v154 = v153 - v152;
                            if (v157)
                            {
                              goto LABEL_200;
                            }

                            v156 = *(v151 - 48);
                            v155 = *(v151 - 40);
                            v157 = __OFSUB__(v155, v156);
                            v149 = v155 - v156;
                            v150 = v157;
                            if (v157)
                            {
                              goto LABEL_201;
                            }

                            v158 = &v60[16 * a4];
                            v160 = *v158;
                            v159 = *(v158 + 1);
                            v157 = __OFSUB__(v159, v160);
                            v161 = v159 - v160;
                            if (v157)
                            {
                              goto LABEL_203;
                            }

                            v157 = __OFADD__(v149, v161);
                            v162 = v149 + v161;
                            if (v157)
                            {
                              goto LABEL_206;
                            }

                            if (v162 >= v154)
                            {
                              v180 = &v60[16 * v29 + 32];
                              v182 = *v180;
                              v181 = *(v180 + 1);
                              v157 = __OFSUB__(v181, v182);
                              v183 = v181 - v182;
                              if (v157)
                              {
                                goto LABEL_210;
                              }

                              if (v149 < v183)
                              {
                                v29 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_99:
                              if (v150)
                              {
                                goto LABEL_202;
                              }

                              v163 = &v60[16 * a4];
                              v165 = *v163;
                              v164 = *(v163 + 1);
                              v166 = __OFSUB__(v164, v165);
                              v167 = v164 - v165;
                              v168 = v166;
                              if (v166)
                              {
                                goto LABEL_205;
                              }

                              v169 = &v60[16 * v29 + 32];
                              v171 = *v169;
                              v170 = *(v169 + 1);
                              v157 = __OFSUB__(v170, v171);
                              v172 = v170 - v171;
                              if (v157)
                              {
                                goto LABEL_208;
                              }

                              if (__OFADD__(v167, v172))
                              {
                                goto LABEL_209;
                              }

                              if (v167 + v172 < v149)
                              {
                                goto LABEL_113;
                              }

                              if (v149 < v172)
                              {
                                v29 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v147 = *(v60 + 4);
                              v148 = *(v60 + 5);
                              v157 = __OFSUB__(v148, v147);
                              v149 = v148 - v147;
                              v150 = v157;
                              goto LABEL_99;
                            }

                            v173 = &v60[16 * a4];
                            v175 = *v173;
                            v174 = *(v173 + 1);
                            v157 = __OFSUB__(v174, v175);
                            v167 = v174 - v175;
                            v168 = v157;
LABEL_113:
                            if (v168)
                            {
                              goto LABEL_204;
                            }

                            v176 = &v60[16 * v29];
                            v178 = *(v176 + 4);
                            v177 = *(v176 + 5);
                            v157 = __OFSUB__(v177, v178);
                            v179 = v177 - v178;
                            if (v157)
                            {
                              goto LABEL_207;
                            }

                            if (v179 < v167)
                            {
                              break;
                            }
                          }

                          v184 = v29 - 1;
                          if (v29 - 1 >= a4)
                          {
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
                            __break(1u);
LABEL_206:
                            __break(1u);
LABEL_207:
                            __break(1u);
LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
                            goto LABEL_217;
                          }

                          if (!*a3)
                          {
                            goto LABEL_220;
                          }

                          v185 = v60;
                          a4 = *&v60[16 * v184 + 32];
                          v186 = *&v60[16 * v29 + 40];
                          sub_1004644B8(*a3 + *(v271 + 72) * a4, *a3 + *(v271 + 72) * *&v60[16 * v29 + 32], *a3 + *(v271 + 72) * v186, v5);
                          if (v145)
                          {
                            goto LABEL_196;
                          }

                          if (v186 < a4)
                          {
                            goto LABEL_198;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v185 = sub_100B31E68(v185);
                          }

                          if (v184 >= *(v185 + 2))
                          {
                            goto LABEL_199;
                          }

                          v187 = &v185[16 * v184];
                          *(v187 + 4) = a4;
                          *(v187 + 5) = v186;
                          v300 = v185;
                          sub_100B31DDC(v29);
                          v60 = v300;
                          a4 = *(v300 + 2);
                          v61 = v290;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v58 = a3[1];
                      a4 = v257;
                      v5 = v145;
                      v21 = v283;
                      if (v59 >= v58)
                      {
                        goto LABEL_185;
                      }

                      goto LABEL_4;
                    }

                    static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v238 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();
                  }

                  else
                  {
                    v232 = v299;
                    v233 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v218, v219);
                    static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v234 = swift_allocObject();
                    *(v234 + 16) = v279;
                    v299 = v233;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v235 = String.init<A>(describing:)();
                    v237 = v236;
                    *(v234 + 56) = &type metadata for String;
                    *(v234 + 64) = sub_100008C00();
                    *(v234 + 32) = v235;
                    *(v234 + 40) = v237;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v224 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();

                    v280 = 0;
                  }

                  v198 = v291;
                  v21 = v283;

                  objc_autoreleasePoolPop(v221);
                  v61 = v290;
                  v231 = v288;
                  v216 = v282;
                }

                v216(v198, 1, 1, v61);
                goto LABEL_167;
              }

              static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v215 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();
            }

            else
            {
              v209 = v299;
              v210 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v195, v196);
              static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v211 = swift_allocObject();
              *(v211 + 16) = v279;
              v299 = v210;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v212 = String.init<A>(describing:)();
              v214 = v213;
              *(v211 + 56) = &type metadata for String;
              *(v211 + 64) = sub_100008C00();
              *(v211 + 32) = v212;
              *(v211 + 40) = v214;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v202 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              v198 = v291;

              v280 = 0;
            }

            break;
          }

          v21 = v283;

          objc_autoreleasePoolPop(v199);
          v61 = v290;
          goto LABEL_148;
        }

LABEL_217:
        __break(1u);
LABEL_218:
        v246 = sub_100B31E68(a4);
        goto LABEL_188;
      }

      v293 = v75;
      v83 = v276;
      sub_10046A814(v75, v276, type metadata accessor for OwnedBeaconGroup);
      sub_10046A814(v65, v281, type metadata accessor for OwnedBeaconGroup);
      v84 = objc_autoreleasePoolPush();
      v85 = v84;
      v86 = *v83;
      v87 = v83[1];
      v88 = v87 >> 62;
      v89 = v290;
      if ((v87 >> 62) > 1)
      {
        if (v88 != 2 || *(v86 + 16) == *(v86 + 24))
        {
LABEL_21:
          v101 = v269;
LABEL_25:
          v109 = *v296;
          (*v296)(v101, 1, 1, v89);
          goto LABEL_26;
        }
      }

      else if (v88)
      {
        if (v86 == v86 >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((v87 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v90 = v84;
      v91 = objc_autoreleasePoolPush();
      v92 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v86, v87);
      v93 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v94 = [v92 initForReadingFromData:v93 error:&v299];

      if (!v94)
      {
        break;
      }

      v95 = v299;
      sub_100016590(v86, v87);
      [v94 _enableStrictSecureDecodingMode];
      v96 = [objc_allocWithZone(CKRecord) initWithCoder:v94];
      if (!v96)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v108 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_24;
      }

      v97 = v96;

      objc_autoreleasePoolPop(v91);
      v98 = [v97 creationDate];

      v21 = v283;
      v89 = v290;
      if (v98)
      {
        v99 = v259;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = 0;
      }

      else
      {
        v100 = 1;
        v99 = v259;
      }

      v85 = v90;
      v109 = *v296;
      (*v296)(v99, v100, 1, v89);
      v133 = v99;
      v101 = v269;
      sub_1000D2AD8(v133, v269, &unk_101696900, &unk_10138B1E0);
      v110 = *v297;
      if ((*v297)(v101, 1, v89) != 1)
      {
        (*v274)(v277, v101, v89);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v110 = *v297;
      if ((*v297)(v101, 1, v89) != 1)
      {
        sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v85);
      v111 = objc_autoreleasePoolPush();
      v112 = v111;
      v114 = *v281;
      v113 = v281[1];
      v115 = v113 >> 62;
      if ((v113 >> 62) > 1)
      {
        if (v115 != 2 || *(v114 + 16) == *(v114 + 24))
        {
LABEL_39:
          v125 = v270;
LABEL_43:
          v109(v125, 1, 1, v89);
LABEL_44:
          v76 = v65;
          Date.init()();
          if (v110(v125, 1, v89) != 1)
          {
            sub_10000B3A8(v125, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v115)
      {
        if (v114 == v114 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v113 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v282 = v111;
      v268 = objc_autoreleasePoolPush();
      v116 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v114, v113);
      v117 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v118 = [v116 initForReadingFromData:v117 error:&v299];

      if (!v118)
      {
        v126 = v299;
        v127 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v114, v113);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v128 = swift_allocObject();
        *(v128 + 16) = v279;
        v299 = v127;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        *(v128 + 56) = &type metadata for String;
        *(v128 + 64) = sub_100008C00();
        *(v128 + 32) = v129;
        *(v128 + 40) = v131;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v118 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v21 = v283;

        v280 = 0;
LABEL_42:
        v112 = v282;

        objc_autoreleasePoolPop(v268);
        v125 = v270;
        v89 = v290;
        goto LABEL_43;
      }

      v119 = v299;
      sub_100016590(v114, v113);
      [v118 _enableStrictSecureDecodingMode];
      v120 = [objc_allocWithZone(CKRecord) initWithCoder:v118];
      if (!v120)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v132 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_42;
      }

      v121 = v120;

      objc_autoreleasePoolPop(v268);
      v122 = [v121 creationDate];

      v112 = v282;
      if (v122)
      {
        v123 = v260;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = 0;
      }

      else
      {
        v124 = 1;
        v123 = v260;
      }

      v89 = v290;
      v109(v123, v124, 1, v290);
      v134 = v123;
      v125 = v270;
      sub_1000D2AD8(v134, v270, &unk_101696900, &unk_10138B1E0);
      if (v110(v125, 1, v89) == 1)
      {
        goto LABEL_44;
      }

      v76 = v65;
      (*v274)(v275, v125, v89);
LABEL_8:
      v77 = v285 == 1;
      objc_autoreleasePoolPop(v112);
      v78 = v275;
      v79 = v277;
      v29 = Date.compare(_:)();
      v80 = v290;
      v81 = v284;
      v284(v78, v290);
      v81(v79, v80);
      sub_10046B858(v281, type metadata accessor for OwnedBeaconGroup);
      sub_10046B858(v276, type metadata accessor for OwnedBeaconGroup);
      ++v74;
      v75 = &v293[v292];
      v65 = v76 + v292;
      if (((v77 ^ (v29 != 1)) & 1) == 0)
      {
        v82 = v74 - 1;
        goto LABEL_54;
      }
    }

    v102 = v299;
    v103 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v86, v87);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v104 = swift_allocObject();
    *(v104 + 16) = v279;
    v299 = v103;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v105 = String.init<A>(describing:)();
    v107 = v106;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_100008C00();
    *(v104 + 32) = v105;
    *(v104 + 40) = v107;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v94 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v280 = 0;
LABEL_24:
    v21 = v283;
    v89 = v290;

    objc_autoreleasePoolPop(v91);
    v101 = v269;
    v85 = v90;
    goto LABEL_25;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_185:
  v29 = *v258;
  if (*v258)
  {
    a4 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_218;
    }

    v246 = a4;
LABEL_188:
    v300 = v246;
    a4 = *(v246 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v247 = *&v246[16 * a4];
        v248 = v246;
        v249 = *&v246[16 * a4 + 24];
        sub_1004644B8(*a3 + *(v271 + 72) * v247, *a3 + *(v271 + 72) * *&v246[16 * a4 + 16], *a3 + *(v271 + 72) * v249, v29);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v249 < v247)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_100B31E68(v248);
        }

        if (a4 - 2 >= *(v248 + 2))
        {
          goto LABEL_212;
        }

        v250 = &v248[16 * a4];
        *v250 = v247;
        *(v250 + 1) = v249;
        v300 = v248;
        sub_100B31DDC(a4 - 1);
        v246 = v300;
        a4 = *(v300 + 2);
        if (a4 <= 1)
        {
          goto LABEL_196;
        }
      }

      goto LABEL_222;
    }

LABEL_196:
  }

  else
  {
    __break(1u);
LABEL_225:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}
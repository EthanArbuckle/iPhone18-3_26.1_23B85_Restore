uint64_t sub_1000E3568()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v2[13];
  v9(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  result = v11(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v13 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  swift_beginAccess();
  if (*(*(v0 + v13) + 16))
  {
    v14 = *(v0 + v6);
    *v5 = v14;
    v9(v5, v8, v1);
    v15 = v14;
    v16 = _dispatchPreconditionTest(_:)();
    result = v11(v5, v1);
    if (v16)
    {
      return *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible);
    }

    goto LABEL_8;
  }

  return 0;
}

void sub_1000E372C()
{
  v1 = sub_1000C4810(&qword_1001D55C0, &unk_10014B200);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v74 = &v71 - v3;
  v4 = type metadata accessor for NWEndpoint.Port();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWListener.Service();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  __chkstk_darwin(v7);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C4810(&qword_1001D55C8, &qword_10014B2C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v75 = (&v71 - v12);
  v80 = type metadata accessor for NWListener.Service.PairingConfiguration();
  v78 = *(v80 - 8);
  v13 = *(v78 + 64);
  v14 = __chkstk_darwin(v80);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v71 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v21 = (&v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v84 = v22;
  v23 = *&v0[v22];
  *v21 = v23;
  v24 = enum case for DispatchPredicate.onQueue(_:);
  v25 = v18[13];
  v25(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v26 = v23;
  v27 = _dispatchPreconditionTest(_:)();
  v28 = v18[1];
  v28(v21, v17);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted])
  {
    return;
  }

  v73 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted;
  v29 = *&v0[v84];
  *v21 = v29;
  v25(v21, v24, v17);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v28(v21, v17);
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8];
  v25 = aBlock[11];
  if (v17)
  {
    v72 = v0;
    v24 = *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue];
    v31 = qword_1001D8898;

    if (v31 == -1)
    {
LABEL_6:
      v32 = type metadata accessor for Logger();
      sub_10000BB0C(v32, qword_1001D88A0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Starting Bonjour listener", v35, 2u);
      }

      sub_1000C4810(&qword_1001D55D0, &qword_10014B210);
      v36 = type metadata accessor for NWPairingType();
      v37 = *(v36 - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10014A0A0;
      (*(v37 + 104))(v40 + v39, enum case for NWPairingType.pin(_:), v36);
      v41 = v75;
      *v75 = v24;
      v41[1] = v17;
      v42 = enum case for NWPairingValue.pin(_:);
      v43 = type metadata accessor for NWPairingValue();
      v44 = *(v43 - 8);
      (*(v44 + 104))(v41, v42, v43);
      (*(v44 + 56))(v41, 0, 1, v43);
      v45 = v79;
      NWListener.Service.PairingConfiguration.init(supportedPairingTypes:pairingValue:generatePairingValueImmediately:)();
      v46 = RPPairingReceiverAppServiceName.unsafeMutableAddressor();
      countAndFlagsBits = v46->_countAndFlagsBits;
      object = v46->_object;
      v49 = v78;
      v50 = v80;
      (*(v78 + 16))(v76, v45, v80);

      v51 = v81;
      NWListener.Service.init(name:pairingConfiguration:)();
      type metadata accessor for NWParameters();
      static NWParameters.applicationService.getter();

      static NWEndpoint.Port.any.getter();
      v52 = type metadata accessor for NWListener();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = NWListener.init(using:on:)();
      if (v25)
      {

        (*(v82 + 8))(v51, v83);
        (*(v49 + 8))(v45, v50);
      }

      else
      {
        v60 = v55;
        v61 = v83;
        v62 = v82;
        v63 = v74;
        (*(v82 + 16))(v74, v51, v83);
        (*(v62 + 56))(v63, 0, 1, v61);
        NWListener.service.setter();
        NWListener.stateUpdateHandler.setter();
        NWListener.newConnectionHandler.setter();
        v64 = NWListener.nw.getter();
        v65 = swift_allocObject();
        v66 = v72;
        *(v65 + 16) = v72;
        aBlock[4] = sub_1000E9978;
        aBlock[5] = v65;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000E5748;
        aBlock[3] = &unk_1001B0638;
        v67 = _Block_copy(aBlock);
        v68 = v66;

        nw_listener_set_advertised_endpoint_changed_handler(v64, v67);
        _Block_release(v67);
        swift_unknownObjectRelease();
        v69 = *&v66[v84];
        NWListener.start(queue:)();

        (*(v82 + 8))(v81, v83);
        (*(v49 + 8))(v79, v80);
        v66[v73] = 1;
        v70 = *&v68[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener];
        *&v68[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener] = v60;
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000BB0C(v56, qword_1001D88A0);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Pairing listener tried to start without a pairing value", v59, 2u);
  }
}

uint64_t sub_1000E4070(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *v6 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v3[13];
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v3[1];
  result = v13(v6, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v1 + v7);
  *v6 = v15;
  v10(v6, v9, v2);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = v13(v6, v2);
  if ((v17 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v18 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8);
  if (v18)
  {
    v19 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue);
    v20 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8);

    sub_1000E13E0(v19, v18);
  }

  return sub_10000BB44();
}

void sub_1000E4240(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v15 = *(v2 + v14);
  *v13 = v15;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_20;
  }

  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = [a1 deviceActionType];
    v20 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
    swift_beginAccess();
    v21 = *(v2 + v20);
    if (*(v21 + 16) && (v22 = sub_1000E65E8(v8), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      swift_endAccess();
      if (v19 == 94)
      {
        v25 = qword_1001D8898;
        v26 = v24;
        if (v25 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000BB0C(v27, qword_1001D88A0);
        v28 = a1;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v56 = v29;
          v33 = v32;
          *v31 = 138412290;
          *(v31 + 4) = v28;
          *v32 = v28;
          v34 = v28;
          _os_log_impl(&_mh_execute_header, v56, v30, "AdHocPairing Device changed: %@", v31, 0xCu);
          sub_1000C59E0(v33, &qword_1001D55A0, &unk_100149890);
          v29 = v56;
        }

        swift_beginAccess();
        v35 = v28;
        v36 = *(v2 + v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v2 + v20);
        *(v2 + v20) = 0x8000000000000000;
        sub_1000E7F1C(v35, v8, isUniquelyReferenced_nonNull_native);
        *(v2 + v20) = v57;
        v38 = swift_endAccess();
      }

      else
      {
        v26 = v24;
        sub_1000E4934(a1);
      }
    }

    else
    {
      v38 = swift_endAccess();
      if (v19 == 94)
      {
        if (qword_1001D8898 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_10000BB0C(v39, qword_1001D88A0);
        v40 = a1;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "AdHocPairing Device found: %@", v43, 0xCu);
          sub_1000C59E0(v44, &qword_1001D55A0, &unk_100149890);
        }

        swift_beginAccess();
        v46 = v40;
        v47 = *(v2 + v20);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v2 + v20);
        *(v2 + v20) = 0x8000000000000000;
        sub_1000E7F1C(v46, v8, v48);
        *(v2 + v20) = v57;
        v38 = swift_endAccess();
      }

      v26 = 0;
    }

    sub_10000BB44(v38);

    (*(v5 + 8))(v8, v4);
    return;
  }

  if (qword_1001D8898 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  v49 = type metadata accessor for Logger();
  sub_10000BB0C(v49, qword_1001D88A0);
  v50 = a1;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "Discovered device has no identifier: %@", v53, 0xCu);
    sub_1000C59E0(v54, &qword_1001D55A0, &unk_100149890);
  }
}

void sub_1000E48C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000E4934(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v15 = *(v2 + v14);
  *v13 = v15;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v9 = sub_1000E5010(v8);
    v19 = swift_endAccess();
    if (!v9)
    {
LABEL_8:
      sub_10000BB44(v19);
      (*(v5 + 8))(v8, v4);
      return;
    }

    if (qword_1001D8898 == -1)
    {
LABEL_5:
      v20 = type metadata accessor for Logger();
      sub_10000BB0C(v20, qword_1001D88A0);
      v21 = v9;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v9;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "AdHocPairing Device lost: %@", v24, 0xCu);
        sub_1000C59E0(v25, &qword_1001D55A0, &unk_100149890);

        v21 = v22;
        v22 = v26;
      }

      goto LABEL_8;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000BB0C(v27, qword_1001D88A0);
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Device lost with no identifier: %@", v31, 0xCu);
    sub_1000C59E0(v32, &qword_1001D55A0, &unk_100149890);
  }
}

void sub_1000E4DC0(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000BB0C(v6, qword_1001D88A0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "BLE discovery started", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D88A0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to activate BLE Discovery: %@)", v3, 0xCu);
    sub_1000C59E0(v4, &qword_1001D55A0, &unk_100149890);

LABEL_10:

    return;
  }
}

uint64_t sub_1000E5010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000E65E8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000E81A0();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1000E7BF8(v6, v9);
  *v2 = v9;
  return v12;
}

void sub_1000E50D8(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000BB0C(v7, qword_1001D88A0);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1000DC030(v6, v2);
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1000C3440(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing listener state changed: %s", v10, 0xCu);
    sub_1000C5604(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

void sub_1000E5310(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D88A0);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = a1;
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_1000DC030(&v11, v2);
    v9 = sub_1000C3440(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Pairing listener new connection: %s", v5, 0xCu);
    sub_1000C5604(v6);
  }

  else
  {
  }
}

void sub_1000E54C0(uint64_t a1)
{
  v2 = sub_1000C4810(&qword_1001D55D8, &unk_10014B218);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  swift_unknownObjectRetain();
  NWEndpoint.init(_:)();
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000C59E0(v5, &qword_1001D55D8, &unk_10014B218);
  }

  else
  {
    v8 = NWEndpoint.deviceID.getter();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    if (v10)
    {
      sub_1000E0E70(v8, v10);
      return;
    }
  }

  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000BB0C(v11, qword_1001D88A0);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = a1;
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_1000C4810(&qword_1001D5640, &qword_10014B228);
    v17 = sub_1000DC030(&v20, v16);
    v19 = sub_1000C3440(v17, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Advertised endpoint changed without device ID: %s", v14, 0xCu);
    sub_1000C5604(v15);
  }
}

uint64_t sub_1000E5748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = swift_unknownObjectRetain();
  v5(v6, a3);

  return swift_unknownObjectRelease();
}

id sub_1000E5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver] = 0;
  v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible] = 0;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcID] = 0;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon] = a1;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue] = a2;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000E5900(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    sub_1000E5AD8();
    swift_beginAccess();
    v13 = sub_1000E73A0(a2);
    swift_endAccess();

    return sub_10000BB44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E5AD8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1001D8898 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000BB0C(v8, qword_1001D88A0);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [*(&v9->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "Connection invalidated from %d", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  v13 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver;
  v14 = *(&v9->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver);
  if (v14)
  {
    v15 = v14;
    RPPairingReceiverController.stop()();

    v14 = *(&v9->isa + v13);
  }

  *(&v9->isa + v13) = 0;
}

void sub_1000E5FD8(objc_class *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    if (qword_1001D8898 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000BB0C(v11, qword_1001D88A0);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = [*(&v12->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) processIdentifier];

    _os_log_impl(&_mh_execute_header, v13, v14, "Start pairing receiver controller from %d", v15, 8u);
  }

  else
  {

    v13 = v12;
  }

  v16 = *(&v12->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver);
  *(&v12->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver) = a1;

  v17 = a1;
  RPPairingReceiverController.queue.setter();
  v18 = *(&v12->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon);
  sub_1000E4070(v12);
}

void sub_1000E629C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1001D8898 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000BB0C(v10, qword_1001D88A0);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = [*(&v11->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) processIdentifier];

    _os_log_impl(&_mh_execute_header, v12, v13, "Pairing value UI visible updated: %{BOOL}d for %d", v14, 0xEu);
  }

  else
  {

    v12 = v11;
  }

  v15 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible;
  swift_beginAccess();
  *(&v11->isa + v15) = a1 & 1;
  v16 = *(&v11->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon);
  sub_10000BB44();
}

unint64_t sub_1000E65E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1000E9980(&qword_1001D55A8, 255, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000E6684(a1, v5);
}

unint64_t sub_1000E6684(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000E9980(&qword_1001D55B8, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1000E6848(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for RPPairingDaemonXPCConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000E6A58(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000E6C34(v21 + 1);
    }

    v19 = v8;
    sub_1000E6E5C(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for RPPairingDaemonXPCConnection();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000E6EE0(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_1000E6A58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000C4810(&qword_1001D5658, &qword_10014B238);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for RPPairingDaemonXPCConnection();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000E6C34(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000E6C34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C4810(&qword_1001D5658, &qword_10014B238);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1000E6E5C(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1000E6EE0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000E6C34(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000E703C();
      goto LABEL_12;
    }

    sub_1000E718C(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for RPPairingDaemonXPCConnection();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1000E703C()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5658, &qword_10014B238);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000E718C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C4810(&qword_1001D5658, &qword_10014B238);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000E73A0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1000E7524();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for RPPairingDaemonXPCConnection();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000E703C();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1000E7678(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_1000E7524()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1000E6A58(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for RPPairingDaemonXPCConnection();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1000E7678(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000E7678(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000E7818(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000C4810(&qword_1001D55B0, &qword_10014B1F8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1000E9980(&qword_1001D55A8, 255, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1000E7BF8(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000E9980(&qword_1001D55A8, 255, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void sub_1000E7F1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000E65E8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000E81A0();
      goto LABEL_7;
    }

    sub_1000E7818(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1000E65E8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1000E80E8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1000E80E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_1000E81A0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D55B0, &qword_10014B1F8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_1000E8414(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000C4810(&qword_1001D5658, &qword_10014B238);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for RPPairingDaemonXPCConnection();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for RPPairingDaemonXPCConnection();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1000E86D8(uint64_t a1)
{
  v2 = sub_1000C4810(&unk_1001D5670, &unk_10014B250);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000C4810(&qword_1001D55B0, &qword_10014B1F8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000E9C1C(v10, v6);
      result = sub_1000E65E8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000E8DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E8DF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000E8E5C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();

    sub_1000D80FC(&v6, v1, v3);
    swift_endAccess();

    sub_10000BB44();
  }
}

uint64_t sub_1000E8F08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000E8F48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    sub_1000D8A78(v1, v3);
    swift_endAccess();

    sub_10000BB44();
  }
}

void sub_1000E8FEC(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BB0C(v4, qword_1001D88A0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000E90E4(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v10 = *(&v2->isa + v9);
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v12 = *(&v2->isa + v9);
    v13 = type metadata accessor for RPPairingDaemonXPCConnection();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver] = 0;
    v14[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible] = 0;
    *&v14[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcID] = 0;
    *&v14[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon] = v2;
    *&v14[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue] = v12;
    *&v14[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx] = a1;
    v38.receiver = v14;
    v38.super_class = v13;
    v15 = v12;
    v16 = v2;
    a1 = a1;
    v17 = objc_msgSendSuper2(&v38, "init");
    v18 = *(&v16->isa + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcLastID);
    v19 = (v18 + 1);
    if (!__OFADD__(v18, 1))
    {
      v20 = v17;
      *(&v16->isa + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcLastID) = v19;
      v21 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcID;
      swift_beginAccess();
      *&v20[v21] = v19;
      swift_beginAccess();
      v22 = v20;
      sub_1000E6848(&v37, v22);
      swift_endAccess();

      [a1 rp_setQueue:*(&v2->isa + v9)];
      v23 = objc_opt_self();
      v24 = [v23 interfaceWithProtocol:&OBJC_PROTOCOL____TtP8rapportd27RPPairingDaemonXPCInterface_];
      [a1 setExportedInterface:v24];

      [a1 setExportedObject:v22];
      v25 = swift_allocObject();
      *(v25 + 16) = v16;
      *(v25 + 24) = v22;
      aBlock[4] = sub_1000E9C14;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D36FC;
      aBlock[3] = &unk_1001B06B0;
      v26 = _Block_copy(aBlock);
      v27 = v16;
      v2 = v22;

      [a1 setInvalidationHandler:v26];
      _Block_release(v26);
      v28 = [v23 interfaceWithProtocol:&OBJC_PROTOCOL____TtP8rapportd45RPPairingReceiverControllerXPCClientInterface_];
      [a1 setRemoteObjectInterface:v28];

      [a1 resume];
      if (qword_1001D8898 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v29 = type metadata accessor for Logger();
  sub_10000BB0C(v29, qword_1001D88A0);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = [v30 processIdentifier];

    _os_log_impl(&_mh_execute_header, v31, v32, "XPC connection started from %d", v33, 8u);
  }

  else
  {

    v2 = v31;
    v31 = v30;
  }

  return 1;
}

void sub_1000E95E0(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1();
  }
}

void sub_1000E9658(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BB0C(v4, qword_1001D88A0);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "BLE Device changed: %@", v8, 0xCu);
      sub_1000C59E0(v9, &qword_1001D55A0, &unk_100149890);
    }

    sub_1000E4240(v5);
  }
}

void sub_1000E97F0(void *a1, const char *a2, void (*a3)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BB0C(v8, qword_1001D88A0);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
      sub_1000C59E0(v13, &qword_1001D55A0, &unk_100149890);
    }

    a3(v9);
  }
}

uint64_t sub_1000E9980(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000E99C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a1)
    {
      swift_errorRetain();
      if (qword_1001D8898 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000BB0C(v3, qword_1001D88A0);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v4, v5, "Failed to activate BLE advertiser: %@", v6, 0xCu);
        sub_1000C59E0(v7, &qword_1001D55A0, &unk_100149890);
      }

      else
      {
      }
    }

    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000BB0C(v9, qword_1001D88A0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "BLE advertiser started", v12, 2u);
    }
  }
}

uint64_t sub_1000E9C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&unk_1001D5670, &unk_10014B250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9D00()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D88C8);
  v1 = sub_10000BB0C(v0, qword_1001D88C8);
  v2 = sub_1001061B0();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1000E9D8C()
{
  result = sub_1000EF954(_swiftEmptyArrayStorage);
  qword_1001DA6D0 = result;
  return result;
}

id sub_1000E9FA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  *(v15 + 152) = 0;
  sub_1000C4810(&qword_1001D56E0, &unk_10014B280);
  v21 = sub_1000EFB3C(_swiftEmptyArrayStorage);
  *(v15 + 160) = sub_1000DE8D8(&v21);
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0u;
  *(v15 + 112) = a1;
  *(v15 + 120) = a2;
  *(v15 + 200) = a8;
  *(v15 + 208) = a9;
  *(v15 + 128) = a3;
  v20.receiver = v15;
  v20.super_class = v9;
  v16 = a3;
  v17 = objc_msgSendSuper2(&v20, "init");
  sub_1000134D4(a6);
  sub_1000134D4(a4);

  return v17;
}

void sub_1000EA238(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RPPairingPINInfo();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_1000EA2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = (*(a3 + 16))(a3, isa);

  return v5;
}

void sub_1000EA2F4(uint64_t a1, uint64_t a2)
{
  sub_1000C5AF8(0, &qword_1001D5720, off_1001A9AA0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1000EA370(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C48EC;

  return sub_1000EFD18(a1, a2);
}

void *sub_1000EA428(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v48 = a1;
  v49 = a2;
  v9 = type metadata accessor for NWTXTRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v45[2] = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWListener.Service();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v46 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.Encoding();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v6[21];
  if (v20)
  {
    v45[0] = v12;
    v45[1] = v5;
    type metadata accessor for NWParameters();
    v21 = v6[16];

    v22 = v20;
    v23 = sub_100108D14(v48, v49, a3, a4);

    if (v23)
    {
      static String.Encoding.utf8.getter();
      v49 = String.data(using:allowLossyConversion:)();
      v25 = v24;
      (*(v16 + 8))(v19, v15);
      if (v25 >> 60 == 15)
      {
        v26 = 0x8000000100179E70;
        sub_1000DB7B8();
        swift_allocError();
        *v27 = 0xD000000000000012;
        *(v27 + 8) = 0x8000000100179E70;
        *(v27 + 16) = 0xD000000000000060;
        *(v27 + 24) = 0x8000000100179B20;
        *(v27 + 32) = 228;
        *(v27 + 40) = 2;
        swift_willThrow();
LABEL_10:

        return v26;
      }

      v48 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v50 = 0;
      v31 = [v22 authTagForData:isa type:6 error:&v50];

      v32 = v50;
      if (!v31)
      {
        v26 = v32;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_1000C5928(v49, v48);
        goto LABEL_10;
      }

      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v37 = v6[14];
      v36 = v6[15];
      sub_1000C61D4(v33, v35);

      v44.n128_u64[0] = a3;
      v44.n128_u64[1] = a4;
      v38 = v35;
      sub_1000CBF5C(v33, v35, 0, 0, 0, 0, 0, 0, v51, v44, v37, v36);
      v39 = RPPairingBonjourServiceName.unsafeMutableAddressor();
      countAndFlagsBits = v39->_countAndFlagsBits;
      object = v39->_object;

      sub_1000CC6E4();
      v42 = v46;
      NWListener.Service.init(name:type:domain:txtRecord:)();
      type metadata accessor for NWActorSystem();
      v26 = sub_1001089F0(v42);
      sub_1000C5928(v49, v48);
      sub_1000F1908(v51);

      sub_1000C4AA4(v33, v38);
      (*(v47 + 8))(v42, v45[0]);
    }

    else
    {
      v26 = 0x8000000100179E50;
      sub_1000DB7B8();
      swift_allocError();
      *v29 = 0xD000000000000012;
      *(v29 + 8) = 0x8000000100179E50;
      *(v29 + 16) = 0xD000000000000060;
      *(v29 + 24) = 0x8000000100179B20;
      *(v29 + 32) = 225;
      *(v29 + 40) = 2;
      swift_willThrow();
    }
  }

  else
  {
    v26 = 0x8000000100179B20;
    sub_1000DB7B8();
    swift_allocError();
    *v28 = xmmword_10014B260;
    *(v28 + 16) = 0xD000000000000060;
    *(v28 + 24) = 0x8000000100179B20;
    *(v28 + 32) = 218;
    *(v28 + 40) = 2;
    swift_willThrow();
  }

  return v26;
}

uint64_t sub_1000EA9A4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1000EAA8C;

    return sub_1000EABA0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000EAA8C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000EABC0()
{
  v20 = v0;
  v1 = v0[2];
  v2 = v1[17];
  v0[3] = v2;
  if (v2 && (v3 = v1[18], (v0[4] = v3) != 0) && (v4 = v1[23]) != 0)
  {
    v5 = v1[22];
    v6 = qword_1001D88C0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[5] = sub_10000BB0C(v7, qword_1001D88C8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = sub_1000C3440(v5, v4, &v19);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting advertising for pairing session with server identity: %s", v10, 0xCu);
      sub_1000C5604(v11);
    }

    else
    {
    }

    v15 = async function pointer to NWActorSystem.publish<A>(_:)[1];
    v16 = swift_task_alloc();
    v0[6] = v16;
    v17 = type metadata accessor for RPPairingDistributedActor();
    v18 = sub_1000F16F0(&qword_1001D5748, type metadata accessor for RPPairingDistributedActor);
    *v16 = v0;
    v16[1] = sub_1000EAE70;

    return NWActorSystem.publish<A>(_:)(v3, v17, v18);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000EAE70()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1000EB080;
  }

  else
  {
    v6 = sub_1000EAF9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000EAF9C()
{
  v1 = v0[5];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished advertising for pairing session", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000EB080()
{
  v1 = v0[7];
  v2 = v0[5];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to publish pairing actor %@", v7, 0xCu);
    sub_1000C59E0(v8, &qword_1001D55A0, &unk_100149890);
  }

  else
  {
  }

  v10 = v0[5];
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Finished advertising for pairing session", v13, 2u);
  }

  v15 = v0[3];
  v14 = v0[4];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000EB3F8(uint64_t a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v4[4] = v7;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000EB4F0;

  return sub_1000EFD18(a1, v7);
}

uint64_t sub_1000EB4F0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000EB6B4()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144))
  {
    if (qword_1001D88C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D88C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping bonjour advertising", v5, 2u);
    }

    v6 = *(v0 + 16);

    if (*(v6 + 152))
    {
      v7 = *(v6 + 152);

      sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
      Task.cancel()();

      v8 = *(v6 + 152);
    }

    *(v6 + 152) = 0;

    v9 = *(v0 + 16);
    if (*(v1 + 144) && v9[17])
    {
      v10 = *(v1 + 144);
      type metadata accessor for RPPairingDistributedActor();
      sub_1000F16F0(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);

      NWActorSystem.invalidateActor<A>(_:)();

      v11 = *(v1 + 144);
      v9 = *(v0 + 16);
    }

    *(v1 + 144) = 0;

    v12 = v9[23];
    v9[22] = 0;
    v9[23] = 0;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000EBA60(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000EBB08;

  return sub_1000EB694();
}

uint64_t sub_1000EBB08()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000EBC44(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = v1;
  return _swift_task_switch(sub_1000EBC64, v1, 0);
}

uint64_t sub_1000EBC64()
{
  if (qword_1001D88C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D88C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activate browsing", v4, 2u);
  }

  v5 = v0[30];

  sub_1000C5AF8(0, &qword_1001D5030, RPClient_ptr);
  v6 = *(v5 + 128);
  v0[31] = v6;
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_1000EBDDC;

  return sub_100108600(v6);
}

uint64_t sub_1000EBDDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 240);
    *(v4 + 264) = a1;

    return _swift_task_switch(sub_1000EBF28, v9, 0);
  }
}

uint64_t sub_1000EBF28()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v2 + 168);
  *(v2 + 168) = v1;
  v4 = v1;

  if (!v1)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_100106274(v5, (v0 + 80));
  v6 = *(v0 + 88);
  if (!v6)
  {

LABEL_9:
    sub_1000DB7B8();
    swift_allocError();
    *v25 = xmmword_10014B260;
    *(v25 + 16) = 0xD000000000000060;
    *(v25 + 24) = 0x8000000100179B20;
    *(v25 + 32) = 166;
    *(v25 + 40) = 2;
    swift_willThrow();
    v24 = *(v0 + 8);
    goto LABEL_10;
  }

  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = v6;
  v10 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v10;
  *(v0 + 64) = *(v0 + 128);
  type metadata accessor for RPPairingClient();
  v11 = v8[14];
  v12 = v8[15];

  v13 = v7;
  sub_1000C5808(v0 + 80, v0 + 144, &qword_1001D5010, &qword_10014B2B0);
  v14 = sub_1000BDAB4(v9, v11, v12, v13, (v0 + 16));
  v15 = v8[24];
  v8[24] = v14;

  v16 = v8[24];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = *(v0 + 240);
  v18 = &v16[OBJC_IVAR____TtC8rapportd15RPPairingClient_endpointsChangedHandler];
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = sub_1000F0614;
  v18[1] = v17;
  v21 = v16;

  sub_1000134D4(v19);

  v22 = v8[24];
  if (v22)
  {
    v23 = v22;
    sub_1000BDCF0();

    sub_1000C59E0(v0 + 80, &qword_1001D5010, &qword_10014B2B0);
  }

  else
  {
LABEL_6:

    sub_1000C59E0(v0 + 80, &qword_1001D5010, &qword_10014B2B0);
  }

  v24 = *(v0 + 8);
LABEL_10:

  return v24();
}

uint64_t sub_1000EC30C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000EC3C8;

  return sub_1000EBC44(a1);
}

uint64_t sub_1000EC3C8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000EC570()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3(0, 0xF000000000000000);
}

uint64_t sub_1000EC7C0(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a5;
  v9 = *(*(sub_1000C4810(&qword_1001D5718, &qword_10014B418) - 8) + 64) + 15;
  v5[3] = swift_task_alloc();
  v5[4] = swift_task_alloc();
  v5[5] = _Block_copy(a4);
  v10 = a3;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000C4AA4(v11, v12);

  return _swift_task_switch(sub_1000EC8A8, a5, 0);
}

uint64_t sub_1000EC8A8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1, 1, 1, v4);
  sub_1000F1330(v1, v2);
  isa = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v7 = v0[3];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
  }

  v8 = v0[5];
  v9 = v0[3];
  (v8)[2](v8, 0, isa, 0);
  _Block_release(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000ECA0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ECA30, v2, 0);
}

uint64_t sub_1000ECA30()
{
  v1 = *(v0[4] + 192);
  v0[5] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1000ECB1C;
    v4 = v0[2];
    v3 = v0[3];

    return sub_1000BE7E0(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_1000ECB1C(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1000ECC34, v3, 0);
}

uint64_t sub_1000ECC34()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000ECE24(int a1, void *aBlock, uint64_t a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;

  return _swift_task_switch(sub_1000ECEB8, a3, 0);
}

uint64_t sub_1000ECEB8()
{
  v1 = *(v0[4] + 192);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[2];
    v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1000ECFE0;
    v4 = v0[6];

    return sub_1000BE7E0(v2, v4);
  }

  else
  {
    v6 = v0[6];

    v7 = v0[5];
    v7[2](v7, 0);
    _Block_release(v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000ECFE0(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000ED114, v4, 0);
}

uint64_t sub_1000ED114()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  v3[2](v3, *(v0 + 72));
  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000ED340(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1000ED3DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 192);
  if (v2)
  {
    v3 = v2;
    sub_1000BE618();

    v2 = *(v1 + 192);
  }

  *(v1 + 192) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000ED5D4(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000ED650, a2, 0);
}

uint64_t sub_1000ED650()
{
  v1 = v0[2];
  v2 = *(v1 + 192);
  if (v2)
  {
    v3 = v2;
    sub_1000BE618();

    v2 = *(v1 + 192);
  }

  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 192) = 0;

  v5[2](v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000ED708(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED7C8, 0, 0);
}

uint64_t sub_1000ED7C8()
{
  v43 = v0;
  v1 = [objc_allocWithZone(RPIdentity) initWithType:15];
  v2 = v0[7];
  if (v1)
  {
    v3 = v1;
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[7];
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v2, v4);
    [v3 setDateAdded:isa];

    v9 = v6[4];
    v10 = v6[5];
    v11 = Data._bridgeToObjectiveC()().super.isa;
    [v3 setDeviceIRKData:v11];

    v12 = v6[6];
    v13 = v6[7];
    v14 = Data._bridgeToObjectiveC()().super.isa;
    [v3 setEdPKData:v14];

    v15 = v6[2];
    v16 = v6[3];
    v17 = String._bridgeToObjectiveC()();
    [v3 setIdentifier:v17];

    v18 = *v6;
    v19 = v6[1];
    v20 = String._bridgeToObjectiveC()();
    [v3 setName:v20];

    v21 = [objc_opt_self() sharedIdentityDaemon];
    [v21 addOrUpdateAdHocPairedIdentity:v3];
    if (qword_1001D88C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000BB0C(v22, qword_1001D88C8);
    v23 = v3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      v28 = [v23 identifier];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v0[2] = v30;
      v0[3] = v32;
      v35 = sub_1000C4810(&qword_1001D5650, &qword_10014B230);
      v36 = sub_1000DC030((v0 + 2), v35);
      v38 = v37;

      v39 = sub_1000C3440(v36, v38, &v42);

      *(v26 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v24, v25, "Added/updated identity: %s", v26, 0xCu);
      sub_1000C5604(v27);
    }

    else
    {
    }

    v40 = v0[7];

    v34 = v0[1];
  }

  else
  {
    sub_1000DB7B8();
    swift_allocError();
    *v33 = xmmword_10014B270;
    *(v33 + 16) = 0xD000000000000060;
    *(v33 + 24) = 0x8000000100179B20;
    *(v33 + 32) = 318;
    *(v33 + 40) = 2;
    swift_willThrow();

    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_1000EDBB4()
{
  v46 = v0;
  v1 = [objc_allocWithZone(RPIdentity) initWithType:15];
  if (v1)
  {
    v2 = v1;
    v3 = v0[4];
    if (v3[1])
    {
      v4 = *v3;
      v5 = String._bridgeToObjectiveC()();
      v3 = v0[4];
    }

    else
    {
      v5 = 0;
    }

    [v2 setContactID:v5];

    v8 = type metadata accessor for RPPairingTemporaryIdentity(0);
    v9 = v3 + v8[6];
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v2 setDateAdded:isa];

    v11 = (v3 + v8[11]);
    v12 = *v11;
    v13 = v11[1];
    v14 = Data._bridgeToObjectiveC()().super.isa;
    [v2 setDeviceIRKData:v14];

    v15 = (v3 + v8[12]);
    v16 = *v15;
    v17 = v15[1];
    v18 = Data._bridgeToObjectiveC()().super.isa;
    [v2 setEdPKData:v18];

    v19 = (v3 + v8[8]);
    v20 = *v19;
    v21 = v19[1];
    v22 = String._bridgeToObjectiveC()();
    [v2 setIdentifier:v22];

    v23 = (v3 + v8[7]);
    v24 = *v23;
    v25 = v23[1];
    v26 = String._bridgeToObjectiveC()();
    [v2 setName:v26];

    v27 = [objc_opt_self() sharedIdentityDaemon];
    [v27 addOrUpdateAdHocPairedIdentity:v2];
    if (qword_1001D88C0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000BB0C(v28, qword_1001D88C8);
    v29 = v2;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = 136315138;
      v34 = [v29 identifier];
      if (v34)
      {
        v35 = v34;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v0[2] = v36;
      v0[3] = v38;
      v39 = sub_1000C4810(&qword_1001D5650, &qword_10014B230);
      v40 = sub_1000DC030((v0 + 2), v39);
      v42 = v41;

      v43 = sub_1000C3440(v40, v42, &v45);

      *(v32 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Added/updated temporary identity: %s", v32, 0xCu);
      sub_1000C5604(v33);
    }

    else
    {
    }

    v7 = v0[1];
  }

  else
  {
    sub_1000DB7B8();
    swift_allocError();
    *v6 = xmmword_10014B270;
    *(v6 + 16) = 0xD000000000000060;
    *(v6 + 24) = 0x8000000100179B20;
    *(v6 + 32) = 333;
    *(v6 + 40) = 2;
    swift_willThrow();
    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_1000EE140@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C4810(&qword_1001D56E8, qword_10014B2C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  if (nw_agent_client_copy_advertise_descriptor())
  {
    v20 = 0;
    v6 = nw_advertise_descriptor_copy_custom_service();
    v7 = sub_1000F0644(v6, v20);
    v9 = v8;

    v10 = type metadata accessor for JSONDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v13 = type metadata accessor for NWListener.Service.PairingConfiguration();
    sub_1000F16F0(&qword_1001D5728, &type metadata accessor for NWListener.Service.PairingConfiguration);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000C4AA4(v7, v9);

    swift_unknownObjectRelease();
    v16 = *(v13 - 8);
    v17 = *(v16 + 56);
    v17(v5, 0, 1, v13);
    (*(v16 + 32))(a1, v5, v13);
    return (v17)(a1, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for NWListener.Service.PairingConfiguration();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t sub_1000EE488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t sub_1000EE4D0()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C4810(&qword_1001D55C8, &qword_10014B2C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = sub_1000C4810(&qword_1001D56E8, qword_10014B2C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for NWListener.Service.PairingConfiguration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE140(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000C59E0(v15, &qword_1001D56E8, qword_10014B2C8);
    return 0;
  }

  v36 = v1;
  v37 = v0;
  (*(v17 + 32))(v20, v15, v16);
  v21 = NWListener.Service.PairingConfiguration.pairingData.getter();
  v23 = v22;
  NWListener.Service.PairingConfiguration.pairingValue.getter();
  v24 = type metadata accessor for NWPairingValue();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) != 1)
  {
    sub_1000C5808(v11, v9, &qword_1001D55C8, &qword_10014B2C0);
    if ((*(v25 + 88))(v9, v24) == enum case for NWPairingValue.pin(_:))
    {
      (*(v25 + 96))(v9, v24);
      v27 = *v9;
      v26 = v9[1];
      static String.Encoding.utf8.getter();
      v28 = String.data(using:allowLossyConversion:)();
      v30 = v29;
      sub_1000C5928(v21, v23);
      result = (*(v36 + 8))(v4, v37);
      if (v30 >> 60 == 15)
      {
        goto LABEL_14;
      }

      v21 = v28;
      v23 = v30;
    }

    else
    {
      (*(v25 + 8))(v9, v24);
    }
  }

  sub_1000C59E0(v11, &qword_1001D55C8, &qword_10014B2C0);
  if ((NWListener.Service.PairingConfiguration.generatePairingValueImmediately.getter() & 1) == 0)
  {
LABEL_11:
    (*(v17 + 8))(v20, v16);
    return v21;
  }

  v32 = sub_1000DB608();
  sub_1000DB610(v32);
  static String.Encoding.utf8.getter();
  v33 = String.data(using:allowLossyConversion:)();
  v35 = v34;

  sub_1000C5928(v21, v23);
  result = (*(v36 + 8))(v4, v37);
  if (v35 >> 60 != 15)
  {
    v21 = v33;
    goto LABEL_11;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000EEA9C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 160);

  v6 = *(v0 + 184);

  v7 = *(v0 + 208);
  sub_1000134D4(*(v0 + 200));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000EEB0C()
{
  sub_1000EEA9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000EEB38(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000C5EF0;

  return v7();
}

uint64_t sub_1000EEC20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000C48EC;

  return v8();
}

uint64_t sub_1000EED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000C5808(a3, v25 - v11, &qword_1001D4F68, &qword_100149690);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000C59E0(v12, &qword_1001D4F68, &qword_100149690);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);

    return v23;
  }

LABEL_8:
  sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_1000EF004(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C4810(&qword_1001D5750, &qword_10014B4B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000EF12C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000C4810(&qword_1001D5740, &unk_10014B488);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1000F16F0(&qword_1001D55A8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000EF508(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000E65E8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000EF6D4();
      goto LABEL_7;
    }

    sub_1000EF12C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1000E65E8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1000E80E8(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

char *sub_1000EF6D4()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5740, &unk_10014B488);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_1000EF954(uint64_t a1)
{
  v2 = sub_1000C4810(&qword_1001D5760, &qword_10014B4C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000C4810(&qword_1001D5740, &unk_10014B488);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000C5808(v10, v6, &qword_1001D5760, &qword_10014B4C8);
      result = sub_1000E65E8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000EFB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5758, &qword_10014B4C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000C39E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1000EFC40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  sub_1000C4810(&qword_1001D56E0, &unk_10014B280);
  v15 = sub_1000EFB3C(_swiftEmptyArrayStorage);
  *(v5 + 160) = sub_1000DE8D8(&v15);
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 200) = a4;
  *(v5 + 208) = a5;
  *(v5 + 128) = a3;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = a3;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1000EFD18(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(sub_1000C4810(&qword_1001D4F68, &qword_100149690) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for String.Encoding();
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000EFE70, v2, 0);
}

uint64_t sub_1000EFE70()
{
  v1 = v0[28];
  if (v1[17] || v1[18] || v1[23])
  {
    sub_1000DB7B8();
    swift_allocError();
    *v2 = 0xD000000000000027;
    *(v2 + 8) = 0x8000000100179E20;
    *(v2 + 16) = 0xD000000000000060;
    *(v2 + 24) = 0x8000000100179B20;
    *(v2 + 32) = 76;
    *(v2 + 40) = 1;
    swift_willThrow();
    v3 = v0[35];
    v4 = v0[32];
    v5 = v0[29];

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1000C5AF8(0, &qword_1001D5030, RPClient_ptr);
    v8 = v1[16];
    v0[36] = v8;
    v9 = swift_task_alloc();
    v0[37] = v9;
    *v9 = v0;
    v9[1] = sub_1000F000C;

    return sub_100108600(v8);
  }
}

uint64_t sub_1000F000C(uint64_t a1)
{
  v4 = *(*v2 + 296);
  v5 = *v2;
  v5[38] = v1;

  if (v1)
  {
    v6 = v5[35];
    v7 = v5[32];
    v8 = v5[29];

    v9 = v5[1];

    return v9();
  }

  else
  {
    v11 = v5[28];
    v5[39] = a1;

    return _swift_task_switch(sub_1000F0174, v11, 0);
  }
}

uint64_t sub_1000F0174()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v2 + 168);
  *(v2 + 168) = v1;
  v4 = v1;

  if (!v1)
  {
    sub_1000DB7B8();
    swift_allocError();
    *v17 = xmmword_10014B260;
    *(v17 + 16) = 0xD000000000000060;
    *(v17 + 24) = 0x8000000100179B20;
    *(v17 + 32) = 81;
    *(v17 + 40) = 2;
    swift_willThrow();
    goto LABEL_5;
  }

  v53 = v4;
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 264);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 208);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v6 + 8))(v7, v8);
  v15 = *(v9 + 184);
  *(v9 + 176) = v12;
  *(v9 + 184) = v14;

  v16 = sub_1000EA428(v11, v10, v12, v14);
  if (v5)
  {

LABEL_5:
    v18 = *(v0 + 280);
    v19 = *(v0 + 256);
    v20 = *(v0 + 232);

    v21 = *(v0 + 8);
    goto LABEL_6;
  }

  v23 = *(v0 + 224);
  v24 = *(v23 + 136);
  *(v23 + 136) = v16;
  v25 = v16;

  v26 = v53;
  sub_100106274(v26, (v0 + 80));
  v27 = *(v0 + 88);
  if (!v27)
  {

    sub_1000DB7B8();
    swift_allocError();
    *v37 = 0xD000000000000013;
    *(v37 + 8) = 0x8000000100178ED0;
    *(v37 + 16) = 0xD000000000000060;
    *(v37 + 24) = 0x8000000100179B20;
    *(v37 + 32) = 98;
    *(v37 + 40) = 2;
    swift_willThrow();

    goto LABEL_5;
  }

  v52 = *(v0 + 80);
  v54 = v26;
  v28 = *(v0 + 288);
  if (*(v0 + 216))
  {
    v29 = *(v0 + 248);
    v30 = *(v0 + 256);
    v31 = *(v0 + 240);
    v32 = *(v0 + 208);
    v33 = v28;
    static String.Encoding.utf8.getter();
    v34 = String.data(using:allowLossyConversion:)();
    v36 = v35;
    result = (*(v29 + 8))(v30, v31);
    if (v36 >> 60 == 15)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v38 = v28;

    v34 = 0;
    v36 = 0xF000000000000000;
  }

  v40 = *(v0 + 280);
  v39 = *(v0 + 288);
  v51 = *(v0 + 256);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);
  type metadata accessor for RPPairingDistributedActor();
  v43 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v43;
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 16) = v52;
  *(v0 + 24) = v27;

  sub_1000C5808(v0 + 80, v0 + 144, &qword_1001D5010, &qword_10014B2B0);
  v44 = sub_1000C8A8C(v25, v39, v34, v36, (v0 + 16), variable initialization expression of RPPairingDaemon.xpcLastID, 0, 0, 0);
  v45 = *(v42 + 144);
  *(v42 + 144) = v44;

  v46 = type metadata accessor for TaskPriority();
  (*(*(v46 - 8) + 56))(v41, 1, 1, v46);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v47;
  v49 = sub_1000BE36C(0, 0, v41, &unk_10014B4A0, v48);

  sub_1000C59E0(v0 + 80, &qword_1001D5010, &qword_10014B2B0);
  v50 = *(v42 + 152);
  *(v42 + 152) = v49;

  v21 = *(v0 + 8);
LABEL_6:

  return v21();
}

uint64_t sub_1000F0614()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 208);
    return v1();
  }

  return result;
}

uint64_t sub_1000F0644(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000CDAB4(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000F06F4()
{
  v0 = sub_1000C4810(&qword_1001D5730, &qword_10014B480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  if (!nw_agent_client_copy_browse_descriptor())
  {
    return 0;
  }

  v15 = 0;
  v4 = nw_browse_descriptor_copy_custom_service();
  v5 = sub_1000F0644(v4, v15);
  v7 = v6;

  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v11 = type metadata accessor for NWBrowser.Descriptor.PairingConfiguration();
  sub_1000F16F0(&qword_1001D5738, &type metadata accessor for NWBrowser.Descriptor.PairingConfiguration);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v12 = 1;
  sub_1000C4AA4(v5, v7);

  swift_unknownObjectRelease();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  sub_1000C59E0(v3, &qword_1001D5730, &qword_10014B480);
  return v12;
}

uint64_t sub_1000F0900()
{
  v0 = sub_1000C4810(&qword_1001D56E8, qword_10014B2C8);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v20[-v5];
  if (!nw_agent_client_copy_advertise_descriptor())
  {
    v15 = type metadata accessor for NWListener.Service.PairingConfiguration();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v21 = 0;
  v7 = nw_advertise_descriptor_copy_custom_service();
  v8 = sub_1000F0644(v7, v21);
  v10 = v9;

  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v14 = type metadata accessor for NWListener.Service.PairingConfiguration();
  sub_1000F16F0(&qword_1001D5728, &type metadata accessor for NWListener.Service.PairingConfiguration);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000C4AA4(v8, v10);

  swift_unknownObjectRelease();
  v16 = *(v14 - 8);
  v17 = *(v16 + 56);
  v17(v4, 0, 1, v14);
  (*(v16 + 32))(v6, v4, v14);
  v17(v6, 0, 1, v14);
  v18 = 1;
  if ((*(v16 + 48))(v6, 1, v14) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1000C59E0(v6, &qword_1001D56E8, qword_10014B2C8);
  return v18;
}

uint64_t sub_1000F0C60(uint64_t a1)
{
  v2 = type metadata accessor for NWTXTRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = swift_unknownObjectRetain();
    if (nw_endpoint_copy_txt_record(v7))
    {
      swift_unknownObjectRetain();
      NWTXTRecord.init(nw:)();
      v8 = NWTXTRecord.subscript.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1000F0DC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C5EF0;

  return sub_1000ED5D4(v2, v3);
}

uint64_t sub_1000F0E74()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000C5EF0;

  return sub_1000EEB38(v2, v3, v5);
}

uint64_t sub_1000F0F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C5EF0;

  return sub_1000EEC20(a1, v4, v5, v7);
}

uint64_t sub_1000F1000(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C5EF0;

  return sub_1000C3250(a1, v5);
}

uint64_t sub_1000F10B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1000ED340(v2, v3);
}

uint64_t sub_1000F116C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F11B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1000ECE24(v2, v3, v4);
}

uint64_t sub_1000F1268()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C5EF0;

  return sub_1000EC7C0(v2, v3, v4, v5, v6);
}

uint64_t sub_1000F1330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5718, &qword_10014B418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F13A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1000EC30C(v2, v3, v4);
}

uint64_t sub_1000F1454()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F1494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C48EC;

  return sub_1000EBA60(v2, v3);
}

uint64_t sub_1000F1540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000C5EF0;

  return sub_1000EB3F8(v2, v3, v5, v4);
}

uint64_t sub_1000F1604()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000F165C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000EA984(v3, v4, v5, v2);
}

uint64_t sub_1000F16F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F1738()
{
  v1 = *(v0 + 160);

  sub_1000DE818(&v34);

  v2 = v34;
  v3 = v34 + 64;
  v4 = 1 << *(v34 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v34 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      do
      {
LABEL_8:
        v12 = (*(*(v2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6))))) + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake);
        v14 = v12[1];
        v13 = v12[2];
        v27 = *v12;
        v28 = v14;
        v29 = v13;
        v15 = v12[6];
        v17 = v12[3];
        v16 = v12[4];
        v32 = v12[5];
        v33 = v15;
        v30 = v17;
        v31 = v16;
        sub_1000DFBB8(&v27, &v26);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000EF004(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          result = sub_1000EF004((v18 > 1), v19 + 1, 1, v10);
          v10 = result;
        }

        v6 &= v6 - 1;
        *(v10 + 2) = v19 + 1;
        v20 = &v10[112 * v19];
        v21 = v27;
        v22 = v29;
        *(v20 + 3) = v28;
        *(v20 + 4) = v22;
        *(v20 + 2) = v21;
        v23 = v30;
        v24 = v31;
        v25 = v33;
        *(v20 + 7) = v32;
        *(v20 + 8) = v25;
        *(v20 + 5) = v23;
        *(v20 + 6) = v24;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F195C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D8978);
  v1 = sub_10000BB0C(v0, qword_1001D8978);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1000F19E8()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1000F1A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000100179EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100179F10 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000F1B14(uint64_t a1)
{
  v2 = sub_1000F1D84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1B50(uint64_t a1)
{
  v2 = sub_1000F1D84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1B8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = sub_1000C4810(&qword_1001D5768, &qword_10014B4E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_1000F1D84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000C61D4(a2, a3);
  sub_1000C9F54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000C4AA4(v17, v18);
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    sub_1000C4810(&qword_1001D5770, &qword_10014B4E8);
    sub_1000F5D34(&qword_1001D5778, sub_1000C9F54);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1000F1D84()
{
  result = qword_1001D8990[0];
  if (!qword_1001D8990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8990);
  }

  return result;
}

uint64_t sub_1000F1DD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000F5724(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000F1E28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000F1E4C, v2, 0);
}

uint64_t sub_1000F1E4C()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D8978);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing self IRK", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1000C61D4(v0[2], v1);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_1000F1FEC;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return sub_1000F20FC(v11, v9);
  }
}

uint64_t sub_1000F1FEC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000F5DAC, v2, 0);
}

uint64_t sub_1000F20FC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(sub_1000C4810(&qword_1001D5780, &qword_10014B508) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000F221C, v2, 0);
}

uint64_t sub_1000F221C()
{
  v55 = v0;
  v1 = v0[7];
  if (*(v1 + 128))
  {
LABEL_8:
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  sub_1000F5A00();
  sub_1000CEBE4(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000C59E0(v0[8], &qword_1001D5780, &qword_10014B508);
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000BB0C(v5, qword_1001D8978);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing protected container", v8, 2u);
    }

    goto LABEL_8;
  }

  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  (*(v19 + 32))(v0[14], v0[8], v18);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v20 = *(v19 + 8);
  v0[15] = v20;
  v0[16] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v18);
  if (qword_1001D8970 != -1)
  {
    swift_once();
  }

  v21 = v0[13];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[9];
  v25 = type metadata accessor for Logger();
  v0[17] = sub_10000BB0C(v25, qword_1001D8978);
  (*(v23 + 16))(v22, v21, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[11];
  v30 = v0[9];
  if (v28)
  {
    buf = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *buf = 136315138;
    sub_1000F5AA0();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v20(v29, v30);
    v34 = sub_1000C3440(v31, v33, &v54);

    *(buf + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Loading sync cache from URL %s", buf, 0xCu);
    sub_1000C5604(v53);
  }

  else
  {

    v20(v29, v30);
  }

  v35 = v0[13];
  v36 = Data.init(contentsOf:options:)();
  v38 = v37;
  v39 = type metadata accessor for PropertyListDecoder();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000F5CE0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v46 = v0[7];
  sub_1000C4AA4(v36, v38);

  v47 = v0[3];
  v48 = v0[4];
  v49 = *(v1 + 112);
  v50 = *(v46 + 120);
  v51 = *(v1 + 128);
  *(v1 + 112) = v0[2];
  *(v46 + 120) = v47;
  *(v1 + 128) = v48;
  sub_1000F59C0(v49, v50, v51);
  v42 = swift_task_alloc();
  v0[18] = v42;
  *v42 = v0;
  v42[1] = sub_1000F2864;
  v43 = v0[6];
  v44 = v0[7];
  v45 = v0[5];

  return sub_1000F42C4(v45, v43, 0);
}

uint64_t sub_1000F2864(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1000F297C, v3, 0);
}

uint64_t sub_1000F297C()
{
  if (*(v0 + 152))
  {
    v2 = *(v0 + 120);
    v1 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = *(v0 + 72);
    v2(*(v0 + 104), v4);
    v2(v3, v4);
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 72);
    if (v8)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Sync cache initialized", v14, 2u);
    }

    v10(v12, v13);
    v10(v11, v13);
  }

  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 64);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000F2ADC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D8978);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missing peer IRK data", v6, 2u);
    }

LABEL_15:
    v14 = 0;
    return v14 & 1;
  }

  v9 = v2[16];
  if (!v9)
  {
    sub_1000C61D4(a1, a2);
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000BB0C(v15, qword_1001D8978);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing cached sync info", v18, 2u);
    }

    sub_1000C5928(a1, a2);

    goto LABEL_15;
  }

  v10 = v2[14];
  v11 = v2[15];
  swift_beginAccess();
  v12 = v2[17];
  sub_1000C66E4(a1, a2);
  sub_1000F5980(v10, v11, v9);

  v13 = sub_1000F2D78(a1, a2, v12);

  if (v13)
  {
    sub_1000C5928(a1, a2);
    sub_1000F59C0(v10, v11, v9);
    v14 = 1;
  }

  else
  {
    v14 = sub_1000F2D78(a1, a2, v9);
    sub_1000F59C0(v10, v11, v9);
    sub_1000C5928(a1, a2);
  }

  return v14 & 1;
}

uint64_t sub_1000F2D78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = a3 + 56;
    v9 = -1 << *(a3 + 32);
    v10 = v7 & ~v9;
    if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      if (a1)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2 == 0xC000000000000000;
      }

      v13 = !v12;
      v43 = v13;
      v14 = a2 >> 62;
      v15 = __OFSUB__(HIDWORD(a1), a1);
      v40 = v15;
      v38 = a2;
      v39 = HIDWORD(a1) - a1;
      v41 = v11;
      v42 = BYTE6(a2);
      v37 = a1;
      while (1)
      {
        v16 = (*(a3 + 48) + 16 * v10);
        v18 = *v16;
        v17 = v16[1];
        v19 = v17 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 != 2)
          {
            goto LABEL_37;
          }

          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          v26 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (v26)
          {
            goto LABEL_67;
          }

          if (v14 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v19)
        {
          LODWORD(v23) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_68;
          }

          v23 = v23;
          if (v14 <= 1)
          {
LABEL_34:
            v27 = v42;
            if (v14)
            {
              v27 = v39;
              if (v40)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v23 = BYTE6(v17);
          if (v14 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v14 != 2)
        {
          if (!v23)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v23 == v27)
        {
          if (v23 < 1)
          {
            return 1;
          }

          if (v19 <= 1)
          {
            if (!v19)
            {
              *v45 = v18;
              *&v45[8] = v17;
              v45[10] = BYTE2(v17);
              v45[11] = BYTE3(v17);
              v45[12] = BYTE4(v17);
              v45[13] = BYTE5(v17);
              sub_1000C61D4(v18, v17);
              sub_1000CB48C(v45, a1, a2, v44);
              sub_1000C4AA4(v18, v17);
              if (v44[0])
              {
                return 1;
              }

LABEL_61:
              v11 = v41;
              goto LABEL_14;
            }

            if (v18 >> 32 < v18)
            {
              goto LABEL_69;
            }

            sub_1000C61D4(v18, v17);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v18, v34))
              {
                goto LABEL_72;
              }

              v32 += v18 - v34;
            }

LABEL_59:
            __DataStorage._length.getter();
            v35 = v32;
            a1 = v37;
            a2 = v38;
            sub_1000CB48C(v35, v37, v38, v45);
            sub_1000C4AA4(v18, v17);
            if (v45[0])
            {
              return 1;
            }

            v8 = a3 + 56;
            goto LABEL_61;
          }

          if (v19 == 2)
          {
            v31 = *(v18 + 16);
            v30 = *(v18 + 24);
            sub_1000C61D4(v18, v17);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v31, v33))
              {
                goto LABEL_71;
              }

              v32 += v31 - v33;
            }

            if (__OFSUB__(v30, v31))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v45[6] = 0;
          *v45 = 0;
          sub_1000C61D4(v18, v17);
          sub_1000CB48C(v45, a1, a2, v44);
          sub_1000C4AA4(v18, v17);
          if (v44[0])
          {
            return 1;
          }
        }

LABEL_14:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          return 0;
        }
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v43) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

void sub_1000F319C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D8978);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Missing peer IRK data", v4, 2u);
    }
  }

  else
  {
    sub_1000C61D4(a1, a2);
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BB0C(v7, qword_1001D8978);
    sub_1000C61D4(a1, a2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_1000C5928(a1, a2);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_1000CC910(a1, a2);
      v14 = sub_1000C3440(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Staging verified known peer IRK %s", v10, 0xCu);
      sub_1000C5604(v11);
    }

    swift_beginAccess();
    sub_1000C61D4(a1, a2);
    sub_1000F482C(v17, a1, a2);
    swift_endAccess();
    sub_1000C5928(a1, a2);
    sub_1000C4AA4(v17[0], v17[1]);
  }
}

uint64_t sub_1000F3458(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 128) = a1;
  v3 = *(*(sub_1000C4810(&qword_1001D5780, &qword_10014B508) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v4 = type metadata accessor for URL();
  *(v2 + 80) = v4;
  v5 = *(v4 - 8);
  *(v2 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1000F3578, v1, 0);
}

uint64_t sub_1000F3578()
{
  v81 = v0;
  v1 = *(v0 + 64);
  v2 = v1[16];
  if (v2)
  {
    v4 = v1[14];
    v3 = v1[15];
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    sub_1000F5A00();
    sub_1000C61D4(v4, v3);

    sub_1000CEBE4(v7);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_1000C59E0(*(v0 + 72), &qword_1001D5780, &qword_10014B508);
      if (qword_1001D8970 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000BB0C(v8, qword_1001D8978);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Missing protected container", v11, 2u);
      }

      sub_1000F59C0(v4, v3, v2);
    }

    else
    {
      v16 = *(v0 + 64);
      v17 = *(v0 + 128);
      (*(*(v0 + 88) + 32))(*(v0 + 120), *(v0 + 72), *(v0 + 80));
      swift_beginAccess();
      if (*(*(v16 + 136) + 16))
      {
        v18 = 0;
      }

      else
      {
        v18 = v17 == 0;
      }

      if (v18)
      {
        if (qword_1001D8970 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_10000BB0C(v26, qword_1001D8978);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 120);
        v31 = *(v0 + 80);
        v32 = *(v0 + 88);
        if (v29)
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "No staged changes, skipping cache store", v33, 2u);

          sub_1000F59C0(v4, v3, v2);
        }

        else
        {
          sub_1000F59C0(v4, v3, v2);
        }

        (*(v32 + 8))(v30, v31);
      }

      else
      {
        if (qword_1001D8970 != -1)
        {
          swift_once();
        }

        v19 = *(v0 + 64);
        v20 = type metadata accessor for Logger();
        sub_10000BB0C(v20, qword_1001D8978);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        v23 = os_log_type_enabled(v21, v22);
        v24 = *(v0 + 64);
        v78 = v3;
        v79 = v4;
        if (v23)
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = *(*(v16 + 136) + 16);

          _os_log_impl(&_mh_execute_header, v21, v22, "Updating sync cache with %ld additions", v25, 0xCu);
        }

        else
        {
        }

        v35 = *(v0 + 112);
        v34 = *(v0 + 120);
        v36 = *(v0 + 104);
        v74 = v16;
        v75 = *(v0 + 96);
        v38 = *(v0 + 80);
        v37 = *(v0 + 88);
        v39 = *(v16 + 136);
        sub_1000C61D4(v79, v78);

        v77 = sub_1000F3E84(v40, v39);
        URL.appendingPathComponent(_:)();
        URL.appendingPathExtension(_:)();
        v41 = *(v37 + 8);
        v41(v36, v38);
        (*(v37 + 16))(v75, v35, v38);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 96);
        v46 = *(v0 + 80);
        if (v44)
        {
          v47 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v80 = v76;
          *v47 = 136315138;
          sub_1000F5AA0();
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v43;
          v50 = v49;
          v41(v45, v46);
          v51 = sub_1000C3440(v48, v50, &v80);

          *(v47 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v42, v73, "Storing sync cache to URL %s", v47, 0xCu);
          sub_1000C5604(v76);
        }

        else
        {

          v41(v45, v46);
        }

        v52 = type metadata accessor for PropertyListEncoder();
        v53 = *(v52 + 48);
        v54 = *(v52 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        *(v0 + 40) = v79;
        *(v0 + 48) = v78;
        *(v0 + 56) = v77;
        sub_1000F5A4C();
        v55 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v57 = v56;
        v58 = *(v0 + 112);

        Data.write(to:options:)();
        v66 = *(v0 + 112);
        v67 = *(v0 + 120);
        v68 = *(v0 + 80);
        sub_1000C4AA4(v55, v57);
        sub_1000F59C0(v79, v78, v2);
        v41(v66, v68);
        v41(v67, v68);
        v69 = v1[14];
        v70 = v1[15];
        v71 = v1[16];
        v1[14] = v79;
        v1[15] = v78;
        v1[16] = v77;
        sub_1000F59C0(v69, v70, v71);
        v72 = *(v74 + 136);
        *(v74 + 136) = &_swiftEmptySetSingleton;
      }
    }
  }

  else
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000BB0C(v12, qword_1001D8978);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing cached sync info", v15, 2u);
    }
  }

  v60 = *(v0 + 112);
  v59 = *(v0 + 120);
  v62 = *(v0 + 96);
  v61 = *(v0 + 104);
  v63 = *(v0 + 72);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1000F3E84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000C4AA4(v14[0], v14[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1000C61D4(*v11, v13);
    sub_1000F482C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F3F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000F3FB0, v2, 0);
}

uint64_t sub_1000F3FB0()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D8978);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing self IRK", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1000C61D4(v0[2], v1);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_1000F4154;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return sub_1000F42C4(v11, v9, 0);
  }
}

uint64_t sub_1000F4154()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000F4264, v2, 0);
}

uint64_t sub_1000F4264()
{
  sub_1000C5928(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F42C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 72) = a3;
  *(v4 + 40) = a1;
  return _swift_task_switch(sub_1000F42EC, v3, 0);
}

uint64_t sub_1000F42EC()
{
  v1 = *(v0 + 56);
  if (v1[16])
  {
    v3 = v1[14];
    v2 = v1[15];
    sub_1000C61D4(v3, v2);
    if (v2 >> 60 != 15)
    {
      v4 = *(v0 + 48);
      if (v4 >> 60 != 15)
      {
        v5 = *(v0 + 40);
        sub_1000C61D4(v5, *(v0 + 48));
        sub_1000C66E4(v3, v2);
        v6 = sub_1000CB904(v3, v2, v5, v4);
        sub_1000C5928(v3, v2);
        sub_1000C5928(v5, v4);
        sub_1000C5928(v3, v2);
        v7 = v6 ^ 1;
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0xF000000000000000;
  }

  v4 = *(v0 + 48);
  if (v4 >> 60 == 15)
  {
    sub_1000C61D4(*(v0 + 40), *(v0 + 48));
    sub_1000C5928(v3, v2);
    v7 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v8 = *(v0 + 40);
  sub_1000C61D4(v8, v4);
  sub_1000C5928(v3, v2);
  sub_1000C5928(v8, v4);
  v7 = 1;
LABEL_9:
  v9 = v1[16];
  if (v9)
  {
    if ((v7 | *(v0 + 72)))
    {
LABEL_11:
      if (qword_1001D8970 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000BB0C(v10, qword_1001D8978);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 72);
        v14 = swift_slowAlloc();
        *v14 = 67109632;
        *(v14 + 4) = v7 & 1;
        *(v14 + 8) = 1024;
        *(v14 + 10) = v9 == 0;
        *(v14 + 14) = 1024;
        *(v14 + 16) = v13;
        _os_log_impl(&_mh_execute_header, v11, v12, "Clearing cached info - selfIdentityChange: %{BOOL}d cacheEmpty: %{BOOL}d force: %{BOOL}d", v14, 0x14u);
      }

      v15 = *(v0 + 48);
      v16 = *(v0 + 56);
      v17 = *(v0 + 40);

      v18 = v1[14];
      v19 = *(v16 + 120);
      v20 = v1[16];
      v1[14] = v17;
      *(v16 + 120) = v15;
      v1[16] = &_swiftEmptySetSingleton;
      sub_1000C61D4(v17, v15);
      sub_1000F59C0(v18, v19, v20);
      swift_beginAccess();
      v21 = *(v16 + 136);
      *(v16 + 136) = &_swiftEmptySetSingleton;

      v22 = swift_task_alloc();
      *(v0 + 64) = v22;
      *v22 = v0;
      v22[1] = sub_1000F4634;
      v23 = *(v0 + 56);

      return sub_1000F3458(1);
    }
  }

  else if (*(v0 + 72))
  {
    goto LABEL_11;
  }

  v25 = *(v0 + 8);

  return v25(0);
}

uint64_t sub_1000F4634()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(1);
}

id sub_1000F472C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  v1[17] = &_swiftEmptySetSingleton;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1000F47E8()
{
  sub_1000F59C0(v0[14], v0[15], v0[16]);
  v1 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F482C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = *v42;
    sub_1000C61D4(a2, a3);
    sub_1000F4F14(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v42 = *v52;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v50 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v47 = v16;
  v46 = a3;
  v48 = v12;
  v49 = BYTE6(a3);
  v44 = v6 + 56;
  v45 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v50) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_65;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_66;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v49;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v47)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v52 = v19;
        *&v52[8] = v18;
        v52[10] = BYTE2(v18);
        v52[11] = BYTE3(v18);
        v52[12] = BYTE4(v18);
        v52[13] = BYTE5(v18);
        sub_1000C61D4(v19, v18);
        v12 = v48;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_67;
      }

      sub_1000C61D4(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_70;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_1000C61D4(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_69;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v46;
    sub_1000CB48C(v33, a2, v46, v52);
    sub_1000C4AA4(v19, v18);
    v9 = v44;
    v6 = v45;
    v12 = v48;
    if (v52[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v52[6] = 0;
  *v52 = 0;
  sub_1000C61D4(v19, v18);
LABEL_60:
  sub_1000CB48C(v52, a2, a3, &v51);
  sub_1000C4AA4(v19, v18);
  if (!v51)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_1000C4AA4(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_1000C61D4(v41, *(&v41 + 1));
  return 0;
}

uint64_t sub_1000F4CB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C4810(&qword_1001D57C8, &qword_10014B778);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000F4F14(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000F4CB4(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1000F538C();
        goto LABEL_68;
      }

      sub_1000F54E8(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v46 = v18;
      v45 = HIDWORD(v7) - v7;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = v7;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_1000C61D4(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_1000C61D4(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1000C61D4(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v37 = __DataStorage._offset.getter();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v42;
              a2 = v43;
              sub_1000CB48C(v35, v42, v43, v51);
              result = sub_1000C4AA4(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_1000C61D4(v21, v20);
            v14 = v47;
          }

          sub_1000CB48C(v51, v7, a2, &v50);
          result = sub_1000C4AA4(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  return result;
}

void *sub_1000F538C()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D57C8, &qword_10014B778);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1000C61D4(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000F54E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C4810(&qword_1001D57C8, &qword_10014B778);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_1000C61D4(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000F5724(uint64_t *a1)
{
  v3 = sub_1000C4810(&qword_1001D57D8, &unk_10014B780);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[3];
  sub_1000CE97C(a1, v8);
  sub_1000F1D84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
  }

  else
  {
    v12 = 0;
    sub_1000C9F00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v10 = v14;
    sub_1000C4810(&qword_1001D5770, &qword_10014B4E8);
    v12 = 1;
    sub_1000F5D34(&qword_1001D57E0, sub_1000C9F00);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_1000C61D4(v8, v10);

    sub_1000C5604(a1);
    sub_1000C4AA4(v8, v10);
  }

  return v8;
}

uint64_t sub_1000F5980(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000C61D4(result, a2);
  }

  return result;
}

uint64_t sub_1000F59C0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000C4AA4(result, a2);
  }

  return result;
}

unint64_t sub_1000F5A00()
{
  result = qword_1001D5788;
  if (!qword_1001D5788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D5788);
  }

  return result;
}

unint64_t sub_1000F5A4C()
{
  result = qword_1001D5790;
  if (!qword_1001D5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5790);
  }

  return result;
}

unint64_t sub_1000F5AA0()
{
  result = qword_1001D5798;
  if (!qword_1001D5798)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5798);
  }

  return result;
}

__n128 sub_1000F5B1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000F5B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F5B78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F5BDC()
{
  result = qword_1001D8C20[0];
  if (!qword_1001D8C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8C20);
  }

  return result;
}

unint64_t sub_1000F5C34()
{
  result = qword_1001D8D30;
  if (!qword_1001D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D30);
  }

  return result;
}

unint64_t sub_1000F5C8C()
{
  result = qword_1001D8D38[0];
  if (!qword_1001D8D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8D38);
  }

  return result;
}

unint64_t sub_1000F5CE0()
{
  result = qword_1001D57D0;
  if (!qword_1001D57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D57D0);
  }

  return result;
}

uint64_t sub_1000F5D34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(&qword_1001D5770, &qword_10014B4E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F5DB0()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_1000F5DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000F5EC0(uint64_t a1)
{
  v2 = sub_1000FDA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F5EFC(uint64_t a1)
{
  v2 = sub_1000FDA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F5F38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = sub_1000C4810(&qword_1001D57E8, &qword_10014B7A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_1000FDA74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1000C66E4(v14, v15);
    sub_1000C9F54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000C5928(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000F60D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000FDAC8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000F6140()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D8DC8);
  sub_10000BB0C(v0, qword_1001D8DC8);
  return Logger.init(subsystem:category:)();
}

id sub_1000F61C0()
{
  result = [objc_allocWithZone(type metadata accessor for RPApplicationServiceMonitor()) init];
  qword_1001DA6D8 = result;
  return result;
}

uint64_t *sub_1000F61F0()
{
  if (qword_1001D8DE0 != -1)
  {
    swift_once();
  }

  return &qword_1001DA6D8;
}

uint64_t sub_1000F6240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_changeHandlers;
  swift_beginAccess();

  v12 = *(a1 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + v11);
  *(a1 + v11) = 0x8000000000000000;
  sub_1000FD3AC(sub_1000FEDAC, v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v11) = v15;
  return swift_endAccess();
}

uint64_t sub_1000F6418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_changeHandlers;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_1000C39E8(a2, a3);
  LOBYTE(v7) = v9;

  if (v7)
  {
    v10 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v6);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000FD534();
    }

    v13 = *(*(v12 + 48) + 16 * v8 + 8);

    v14 = *(*(v12 + 56) + 16 * v8 + 8);

    sub_1000FD1FC(v8, v12);
    *(a1 + v6) = v12;
  }

  return swift_endAccess();
}

uint64_t sub_1000F65A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1000FDD44(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1000F6620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v12 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_servicesByDeviceID;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16) && (v14 = sub_1000C39E8(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    result = swift_endAccess();
    v18 = *(v16 + 16);
    v19 = (v16 + 40);
    v20 = v18 + 1;
    do
    {
      v21 = --v20 != 0;
      if (!v20)
      {
        break;
      }

      result = *(v19 - 1);
      if (result == a4 && *v19 == a5)
      {
        break;
      }

      v19 += 4;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((result & 1) == 0);
  }

  else
  {
    result = swift_endAccess();
    v21 = 0;
  }

  *a6 = v21;
  return result;
}

void sub_1000F67DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = ObjectType;
  v8 = v0;
  v9 = sub_1000C1E34(0, 0, v5, &unk_10014B7C0, v7);
  v10 = *&v8[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask];
  *&v8[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask] = v9;

  out_token = 0;
  DiscoverableApplicationServiceChangedNotification.getter();
  sub_1000C5AF8(0, &qword_1001D54F0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000FDDF0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F6B68;
  aBlock[3] = &unk_1001B0C98;
  v13 = _Block_copy(aBlock);

  v14 = String.utf8CString.getter();

  notify_register_dispatch((v14 + 32), &out_token, v11, v13);

  _Block_release(v13);
}

uint64_t sub_1000F6A40()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = ObjectType;
  v8 = v0;
  v9 = sub_1000C1E34(0, 0, v5, &unk_10014B7C8, v7);
  v10 = *&v8[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask];
  *&v8[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask] = v9;
}

uint64_t sub_1000F6B68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000F6C04()
{
  if (*(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask);

    Task.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_observationTask))
  {
    v3 = *(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_observationTask);

    Task.cancel()();
  }

  return result;
}

uint64_t sub_1000F6D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for LSKStatusOptions.DeviceType();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000F6E94, 0, 0);
}

uint64_t sub_1000F6E94()
{
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_10000BB0C(v1, qword_1001D8DC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying for extensions", v4, 2u);
  }

  v5 = v0[9];

  v6 = type metadata accessor for _AppExtensionQuery();
  v0[22] = v6;
  v7 = *(v6 - 8);
  v0[23] = v7;
  v8 = *(v7 + 64) + 15;
  v0[24] = swift_task_alloc();
  _AppExtensionQuery.init(extensionPointIdentifier:)();
  v9 = type metadata accessor for _AppExtensionQuery.Results();
  v0[25] = v9;
  v10 = *(v9 - 8);
  v0[26] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v0[27] = v12;
  _AppExtensionQuery.results.getter();
  sub_1000C4810(&qword_1001D5868, &qword_10014BB58);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v5;
  v14 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_1000F7138;
  v16 = v0[18];

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 6);
}

uint64_t sub_1000F7138()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_1000F7D60;
  }

  else
  {
    v4 = sub_1000F7268;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F7268()
{
  v1 = v0[6];
  v2 = type metadata accessor for LSKLocalStatusClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = LSKLocalStatusClient.init()();
  v0[8] = &_swiftEmptyDictionarySingleton;
  v77 = v5;
  v0[31] = v5;
  v6 = *(v1 + 16);
  v89 = (v0 + 8);
  if (!v6)
  {

    v7 = 0;
LABEL_38:
    v0[32] = v7;
    v73 = v0[9];
    v74 = swift_task_alloc();
    v0[33] = v74;
    v74[2] = v89;
    v74[3] = v73;
    v74[4] = v77;
    v75 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v5 = swift_task_alloc();
    v0[34] = v5;
    *v5 = v0;
    v5[1] = sub_1000F7B40;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v5);
  }

  v7 = 0;
  v8 = 0;
  v76 = (v0 + 2);
  v9 = v0[19];
  v85 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v10 = v0[11];
  v87 = (v0[15] + 8);
  v82 = enum case for LSKStatusOptions.DeviceType.mac(_:);
  v81 = (v10 + 104);
  v96 = v10;
  v88 = (v10 + 8);
  v83 = (v9 + 8);
  v97 = v0;
  v79 = *(v1 + 16);
  v80 = v1;
  v78 = v9;
  while (1)
  {
    if (v8 >= *(v1 + 16))
    {
LABEL_45:
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)(v5);
    }

    v14 = v0[17];
    v15 = v0[16];
    v16 = v0[14];
    (*(v9 + 16))(v0[20], v85 + *(v9 + 72) * v8, v0[18]);
    DiscoverableApplicationServiceCoder.ExtensionConfiguration.deviceTypes.getter();
    NWBrowser.Descriptor.Options.DeviceType.init(rawValue:)();
    static NWBrowser.Descriptor.Options.DeviceType.mac.getter();
    sub_1000FE8AC(&qword_1001D5870, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType);
    v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v86 = *v87;
    (*v87)(v15, v16);
    v18 = _swiftEmptyArrayStorage;
    if (v17)
    {
      (*v81)(v0[13], v82, v0[10]);
      v18 = sub_1000FC98C(0, 1, 1, _swiftEmptyArrayStorage, &qword_1001D5878, &qword_10014BB88, &type metadata accessor for LSKStatusOptions.DeviceType);
      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1000FC98C(v19 > 1, v20 + 1, 1, v18, &qword_1001D5878, &qword_10014BB88, &type metadata accessor for LSKStatusOptions.DeviceType);
      }

      v0 = v97;
      v21 = v97[13];
      v22 = v97[10];
      v18[2] = v20 + 1;
      (*(v96 + 32))(v18 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v20, v21, v22);
    }

    v23 = v0[20];
    v94 = v18[2];
    if (v94)
    {
      break;
    }

    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[14];

    v86(v12, v13);
    v5 = (*v83)(v23, v11);
LABEL_4:
    if (++v8 == v6)
    {

      goto LABEL_38;
    }
  }

  v84 = v8;
  v91 = DiscoverableApplicationServiceCoder.ExtensionConfiguration.service.getter();
  v25 = v24;
  v5 = DiscoverableApplicationServiceCoder.ExtensionConfiguration.payload.getter();
  v26 = v5;
  v28 = v27;
  v29 = 0;
  v93 = v18 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  v30 = v0;
  v90 = v18;
  while (1)
  {
    if (v29 >= v18[2])
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v31 = v28;
    v32 = v30[12];
    v33 = *(v96 + 72);
    v34 = *(v96 + 16);
    v34(v32, &v93[v33 * v29], v30[10]);
    sub_1000134D4(v7);
    v35 = v30[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v35;
    v38 = sub_1000FC628(v32);
    v39 = v35[2];
    v40 = (v37 & 1) == 0;
    v5 = (v39 + v40);
    if (__OFADD__(v39, v40))
    {
      goto LABEL_43;
    }

    v41 = v37;
    if (v35[3] < v5)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      *v89 = v35;
      if ((v37 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1000FD6B4();
      v35 = v99;
      *v89 = v99;
      if ((v41 & 1) == 0)
      {
LABEL_20:
        v45 = v97[12];
        v46 = v97[10];
        v35[(v38 >> 6) + 8] |= 1 << v38;
        v5 = v34(v35[6] + v38 * v33, v45, v46);
        *(v35[7] + 8 * v38) = _swiftEmptyArrayStorage;
        v47 = v35[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_44;
        }

        v35[2] = v49;
      }
    }

LABEL_22:
    v50 = v35[7];
    v51 = *(v50 + 8 * v38);

    v28 = v31;
    sub_1000C66E4(v26, v31);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v50 + 8 * v38) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1000FC880(0, *(v51 + 2) + 1, 1, v51);
      *(v50 + 8 * v38) = v51;
    }

    v54 = *(v51 + 2);
    v53 = *(v51 + 3);
    if (v54 >= v53 >> 1)
    {
      *(v50 + 8 * v38) = sub_1000FC880((v53 > 1), v54 + 1, 1, v51);
    }

    ++v29;
    v30 = v97;
    v5 = (*v88)(v97[12], v97[10]);
    v55 = *(v50 + 8 * v38);
    *(v55 + 16) = v54 + 1;
    v56 = (v55 + 32 * v54);
    v18 = v90;
    v56[4] = v91;
    v56[5] = v25;
    v56[6] = v26;
    v56[7] = v31;
    v7 = sub_1000FA250;
    if (v94 == v29)
    {
      v57 = v97[21];

      sub_1000C66E4(v26, v31);
      v0 = v97;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      sub_1000C5928(v26, v28);
      v60 = os_log_type_enabled(v58, v59);
      v61 = v97[20];
      v62 = v97[17];
      v63 = v97[18];
      v64 = v97[14];
      if (v60)
      {
        v65 = v59;
        v66 = swift_slowAlloc();
        v95 = v63;
        v67 = swift_slowAlloc();
        v99 = v67;
        *v66 = 136315138;
        v97[2] = v91;
        v97[3] = v25;
        v97[4] = v26;
        v97[5] = v28;
        v68 = sub_1000DC030(v76, &type metadata for ServiceDefinition);
        v92 = v64;
        v70 = sub_1000C3440(v68, v69, &v99);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v58, v65, "Adding service definition: %s", v66, 0xCu);
        sub_1000C5604(v67);
        v0 = v97;

        sub_1000C5928(v26, v28);
        v86(v62, v92);
        v5 = (*v83)(v61, v95);
      }

      else
      {

        sub_1000C5928(v26, v28);
        v86(v62, v64);
        v5 = (*v83)(v61, v63);
      }

      v7 = sub_1000FA250;
      v6 = v79;
      v1 = v80;
      v8 = v84;
      v9 = v78;
      goto LABEL_4;
    }
  }

  v42 = v97[12];
  sub_1000FCE20(v5, isUniquelyReferenced_nonNull_native);
  v35 = v99;
  v43 = sub_1000FC628(v42);
  if ((v41 & 1) == (v44 & 1))
  {
    v38 = v43;
    *v89 = v35;
    if ((v41 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v71 = v97[10];

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1000F7B40()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_1000F7C58, 0, 0);
}

uint64_t sub_1000F7C58()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];

  (*(v8 + 8))(v6, v7);
  v9 = v0[8];

  (*(v4 + 8))(v3, v5);
  sub_1000134D4(v2);

  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  v14 = v0[12];
  v13 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000F7D60()
{
  v24 = v0;
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[21];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v3 + 8))(v2, v4);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v0[7] = v8;
    v11 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v12 = sub_1000DC030((v0 + 7), v11);
    v14 = sub_1000C3440(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed: %s", v9, 0xCu);
    sub_1000C5604(v10);
  }

  else
  {
    v15 = v0[30];
  }

  v16 = v0[20];
  v17 = v0[16];
  v18 = v0[17];
  v20 = v0[12];
  v19 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000F7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_1000C4810(&qword_1001D5900, &qword_10014BBF8) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v9 = sub_1000C4810(&qword_1001D5908, &qword_10014BC00);
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = *(*(sub_1000C4810(&qword_1001D4F68, &qword_100149690) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8118, 0, 0);
}

uint64_t sub_1000F8118()
{
  v1 = v0[13];
  v2 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
  v0[25] = v2;
  v3 = *(v2 - 8);
  v0[26] = v3;
  v4 = *(v3 + 64) + 15;
  v0[27] = swift_task_alloc();
  _AppExtensionQuery.Results.makeAsyncIterator()();
  v5 = sub_1000FE8F4();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_1000F8240;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9, v2, v5);
}

uint64_t sub_1000F8240()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1000F89DC;
  }

  else
  {
    v3 = sub_1000F8354;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F8378()
{
  v67 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  if (v2)
  {
    if (qword_1001D8DC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D8DC8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v66 = v7;
      *v6 = 136315138;
      type metadata accessor for _AppExtensionIdentity();
      v8 = Array.description.getter();
      v10 = sub_1000C3440(v8, v9, &v66);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received extensions: %s", v6, 0xCu);
      sub_1000C5604(v7);
    }

    v11 = *(type metadata accessor for _AppExtensionIdentity() - 8);
    v12 = *(v11 + 64) + 15;
    v60 = swift_task_alloc();
    v13 = *(v2 + 16);
    if (v13)
    {
      v15 = *(v11 + 16);
      v14 = v11 + 16;
      v58 = v15;
      v59 = **(v1 + 96);
      v16 = v2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v56 = (v1 + 16);
      v57 = *(v14 + 56);
      do
      {
        v65 = v13;
        v20 = *(v1 + 192);
        v61 = v20;
        v62 = *(v1 + 184);
        v21 = *(v1 + 112);
        v64 = v16;
        v58(v60);
        v22 = type metadata accessor for AppExtensionIdentity();
        v23 = *(v22 - 8);
        v24 = *(v23 + 64);
        v25 = swift_task_alloc();
        AppExtensionIdentity.init(_:)();
        v26 = type metadata accessor for TaskPriority();
        v27 = *(v26 - 8);
        (*(v27 + 56))(v20, 1, 1, v26);
        v28 = swift_task_alloc();
        v63 = v25;
        (*(v23 + 16))(v28, v25, v22);
        v29 = v1;
        v30 = (*(v23 + 80) + 40) & ~*(v23 + 80);
        v31 = swift_allocObject();
        v31[2] = 0;
        v32 = v31 + 2;
        v31[3] = 0;
        v31[4] = v21;
        v33 = v31 + v30;
        v1 = v29;
        v34 = v22;
        (*(v23 + 32))(v33, v28, v22);

        sub_1000C8770(v61, v62);
        LODWORD(v28) = (*(v27 + 48))(v62, 1, v26);
        v35 = v21;
        v36 = *(v1 + 184);
        if (v28 == 1)
        {
          sub_1000C59E0(*(v1 + 184), &qword_1001D4F68, &qword_100149690);
          if (!*v32)
          {
            goto LABEL_14;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v27 + 8))(v36, v26);
          if (!*v32)
          {
LABEL_14:
            v38 = 0;
            v40 = 0;
            goto LABEL_15;
          }
        }

        v37 = v31[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v38 = dispatch thunk of Actor.unownedExecutor.getter();
        v40 = v39;
        swift_unknownObjectRelease();
LABEL_15:

        if (v40 | v38)
        {
          v17 = v56;
          *v56 = 0;
          v56[1] = 0;
          *(v1 + 32) = v38;
          *(v1 + 40) = v40;
        }

        else
        {
          v17 = 0;
        }

        v18 = *(v1 + 192);
        v19 = *(v1 + 128);
        *(v1 + 48) = 1;
        *(v1 + 56) = v17;
        *(v1 + 64) = v59;
        swift_task_create();

        sub_1000C59E0(v18, &qword_1001D4F68, &qword_100149690);
        (*(v23 + 8))(v63, v34);

        v16 = v64 + v57;
        v13 = v65 - 1;
      }

      while (v65 != 1);
    }

    v42 = *(v1 + 208);
    v41 = *(v1 + 216);
    v43 = *(v1 + 200);

    (*(v42 + 8))(v41, v43);
  }

  else
  {
    (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));
  }

  v44 = *(v1 + 216);
  v45 = *(v1 + 176);
  v46 = *(v1 + 128);
  v47 = *(v1 + 96);

  v48 = *v47;
  sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v1 + 248) = _swiftEmptyArrayStorage;
  v49 = sub_1000FE940();
  v50 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v51 = swift_task_alloc();
  *(v1 + 256) = v51;
  *v51 = v1;
  v51[1] = sub_1000F8B3C;
  v52 = *(v1 + 176);
  v53 = *(v1 + 160);
  v54 = *(v1 + 120);

  return dispatch thunk of AsyncIteratorProtocol.next()(v54, v53, v49);
}

uint64_t sub_1000F89DC()
{
  *(v0 + 80) = *(v0 + 232);
  sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000F8A70, 0, 0);
}

uint64_t sub_1000F8A70()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F8B3C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[31];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v5 = sub_1000F8F58;
  }

  else
  {
    v5 = sub_1000F8C74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F8C74()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[31];
  if (v4 == 1)
  {
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[19];
    v9 = v0[18];
    v10 = v0[11];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_1000C59E0(v3, &qword_1001D5900, &qword_10014BBF8);
    *v10 = v5;

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[18];
    v13 = v0[19];
    v15 = *(v2 + 32);
    v15(v13, v3, v1);
    (*(v2 + 16))(v14, v13, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v0[31];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1000FC98C(0, v17[2] + 1, 1, v0[31], &qword_1001D5960, &qword_10014BC50, &type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1000FC98C(v18 > 1, v19 + 1, 1, v17, &qword_1001D5960, &qword_10014BC50, &type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration);
    }

    v20 = v0[18];
    v21 = v0[16];
    v22 = v0[17];
    (*(v22 + 8))(v0[19], v21);
    v17[2] = v19 + 1;
    v15(v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v20, v21);
    v0[31] = v17;
    v23 = sub_1000FE940();
    v24 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v25 = swift_task_alloc();
    v0[32] = v25;
    *v25 = v0;
    v25[1] = sub_1000F8B3C;
    v26 = v0[22];
    v27 = v0[20];
    v28 = v0[15];

    return dispatch thunk of AsyncIteratorProtocol.next()(v28, v27, v23);
  }
}

uint64_t sub_1000F8F58()
{
  v1 = v0[33];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F9000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1000F90A0;

  return sub_1000F9390(a1, a5);
}

uint64_t sub_1000F90A0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F91D4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000F91D4()
{
  v17 = v0;
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D8DC8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v8 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v9 = sub_1000DC030((v0 + 2), v8);
    v11 = sub_1000C3440(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch extension: %s", v6, 0xCu);
    sub_1000C5604(v7);
  }

  v12 = v0[4];
  swift_willThrow();
  v13 = v0[1];
  v14 = v0[4];

  return v13();
}

uint64_t sub_1000F9390(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_1000F93B0, 0, 0);
}

uint64_t sub_1000F93B0()
{
  v35 = v0;
  v1 = v0[7];
  v2 = type metadata accessor for AppExtensionProcess.Configuration();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v33 = v3;
  v0[9] = v3;
  v32 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();
  v4 = type metadata accessor for AppExtensionIdentity();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v0[12] = v5;
  v0[13] = *(v5 + 64);
  swift_task_alloc();
  v7 = *(v6 + 16);
  v0[14] = v7;
  v0[15] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7();
  v8 = swift_task_alloc();
  v30 = v7;
  (v7)(v8, v1, v4);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v4);
  AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)();

  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v11 = v0[7];
  v12 = type metadata accessor for Logger();
  v0[16] = sub_10000BB0C(v12, qword_1001D8DC8);
  v13 = swift_task_alloc();
  (v30)(v13, v11, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v16 = 136315138;
    v17 = sub_1000DC030(v13, v4);
    v19 = v18;
    v20 = *(v6 + 8);
    v20(v13, v4);
    v21 = sub_1000C3440(v17, v19, &v34);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching configuration from %s", v16, 0xCu);
    sub_1000C5604(v31);
  }

  else
  {

    v20 = *(v6 + 8);
    v20(v13, v4);
  }

  v0[17] = v20;

  v22 = type metadata accessor for AppExtensionProcess();
  v0[18] = v22;
  v23 = *(v22 - 8);
  v0[19] = v23;
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v0[20] = v25;
  v26 = swift_task_alloc();
  v0[21] = v26;
  (*(v33 + 16))();
  v27 = async function pointer to AppExtensionProcess.init(configuration:)[1];
  v28 = swift_task_alloc();
  v0[22] = v28;
  *v28 = v0;
  v28[1] = sub_1000F9838;

  return AppExtensionProcess.init(configuration:)(v25, v26);
}

uint64_t sub_1000F9838()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1000FA1BC;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1000F9954;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F9954()
{
  isa = v0[23].super.isa;
  v2 = v0[20].super.isa;
  v3.super.isa = AppExtensionProcess.makeXPCConnection()().super.isa;
  v0[24].super.isa = v3.super.isa;
  if (v4)
  {
    v6 = v0[9].super.isa;
    v5 = v0[10].super.isa;
    v7 = v0[8].super.isa;
    (*(v0[19].super.isa + 1))(v0[20].super.isa, v0[18].super.isa);
    (*(v6 + 1))(v5, v7);
    v8 = v0[20].super.isa;
    v9 = v0[10].super.isa;

    v10 = v0[1].super.isa;

    return v10();
  }

  else
  {
    v12 = v3.super.isa;
    v13 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7Network33DiscoverableApplicationServiceXPC_];
    sub_1000C4810(&qword_1001D5938, &qword_10014BC38);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10014B790;
    v15 = sub_1000C5AF8(0, &qword_1001D5940, NSError_ptr);
    *(v14 + 56) = sub_1000C4810(&qword_1001D5948, &qword_10014BC40);
    *(v14 + 32) = v15;
    v16 = sub_1000C5AF8(0, &qword_1001D5950, NSData_ptr);
    *(v14 + 88) = sub_1000C4810(&qword_1001D5958, &qword_10014BC48);
    *(v14 + 64) = v16;
    v17 = objc_allocWithZone(NSSet);
    v18 = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initWithArray:v18];

    static Set._conditionallyBridgeFromObjectiveC(_:result:)();
    [(objc_class *)v12 setRemoteObjectInterface:v13, 0];

    [(objc_class *)v12 resume];
    v20 = swift_task_alloc();
    v0[25].super.isa = v20;
    *(v20 + 16) = v12;
    v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v22 = swift_task_alloc();
    v0[26].super.isa = v22;
    *v22 = v0;
    *(v22 + 1) = sub_1000F9D04;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[2], 0, 0, 0xD00000000000001ALL, 0x800000010017A0B0, sub_1000FEAE8, v20, &type metadata for Data);
  }
}

uint64_t sub_1000F9D04()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1000FA0E8;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_1000F9E20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F9E20()
{
  v41 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = *(v0 + 104) + 15;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  [*(v0 + 192) invalidate];
  AppExtensionProcess.invalidate()();
  v10 = swift_task_alloc();
  v4(v10, v6, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v36 = *(v0 + 96);
    v37 = *(v0 + 88);
    v38 = *(v0 + 136);
    v13 = swift_slowAlloc();
    v39 = v8;
    v40 = swift_slowAlloc();
    v14 = v40;
    *v13 = 136315138;
    *(v0 + 32) = AppExtensionIdentity.extensionPointIdentifier.getter();
    *(v0 + 40) = v15;
    v16 = sub_1000DC030(v0 + 32, &type metadata for String);
    v17 = v9;
    v19 = v18;

    v38(v10, v37);
    v20 = sub_1000C3440(v16, v19, &v40);
    v9 = v17;

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received data from %s", v13, 0xCu);
    sub_1000C5604(v14);
    v8 = v39;
  }

  else
  {
    v21 = *(v0 + 136);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);

    v21(v10, v22);
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 48);

  static DiscoverableApplicationServiceCoder.createConfiguration(xpcData:)();
  v27 = *(v0 + 152);
  v26 = *(v0 + 160);
  v28 = *(v0 + 144);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 64);

  sub_1000C4AA4(v8, v9);
  (*(v27 + 8))(v26, v28);
  (*(v30 + 8))(v29, v31);
  if (v24)
  {
    v32 = *(v0 + 160);
    v33 = *(v0 + 80);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000FA0E8()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9 = v0[27];
  v10 = v0[20];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000FA1BC()
{
  v1 = v0[21];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000FA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(sub_1000C4810(&qword_1001D4F68, &qword_100149690) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for LSKStatusOptions.DeviceType();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v5[17] = *(v8 + 64);
  v5[18] = swift_task_alloc();
  v9 = *(*(sub_1000C4810(&qword_1001D5890, &qword_10014BB98) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000FA3B4, 0, 0);
}

uint64_t sub_1000FA3B4()
{
  v52 = (v0 + 16);
  v1 = **(v0 + 80);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(**(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v51 = (63 - v6) >> 6;
  v53 = **(v0 + 80);
  v57 = *(v0 + 128);
  v55 = *(v0 + 136) + 7;

  v9 = 0;
  v56 = v3;
  v54 = v0;
  while (v7)
  {
    v12 = v9;
LABEL_16:
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 120);
    v18 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v19 = v18 | (v12 << 6);
    (*(v57 + 16))(v16, *(v53 + 48) + *(v57 + 72) * v19, v17);
    v20 = *(*(v53 + 56) + 8 * v19);
    v21 = sub_1000C4810(&qword_1001D5898, &qword_10014BBA0);
    v22 = *(v21 + 48);
    (*(v57 + 32))(v15, v16, v17);
    *(v15 + v22) = v20;
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);

LABEL_17:
    v23 = *(v0 + 160);
    sub_1000FE500(*(v0 + 152), v23);
    v24 = sub_1000C4810(&qword_1001D5898, &qword_10014BBA0);
    v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
    v26 = *(v0 + 160);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    if (v25 == 1)
    {
      v49 = *(v0 + 144);
      v48 = *(v0 + 152);

      v50 = *(v0 + 8);

      return v50();
    }

    v29 = *(v0 + 144);
    v30 = *(v0 + 120);
    v58 = v29;
    v61 = *(v0 + 88);
    v62 = *(v26 + *(v24 + 48));
    v63 = *(v0 + 96);
    v31 = type metadata accessor for TaskPriority();
    v60 = *(v31 - 8);
    (*(v60 + 56))(v28, 1, 1, v31);
    v59 = v27;
    v32 = *(v57 + 32);
    v32(v29, v26, v30);
    v33 = v32;
    v34 = (*(v57 + 80) + 40) & ~*(v57 + 80);
    v35 = (v55 + v34) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v36[2] = 0;
    v64 = v36 + 2;
    v36[3] = 0;
    v36[4] = v61;
    v33(v36 + v34, v58, v30);
    *(v36 + v35) = v62;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
    sub_1000C8770(v28, v59);
    LODWORD(v33) = (*(v60 + 48))(v59, 1, v31);
    v37 = v61;

    v38 = *(v54 + 104);
    if (v33 == 1)
    {
      sub_1000C59E0(*(v54 + 104), &qword_1001D4F68, &qword_100149690);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v60 + 8))(v38, v31);
    }

    v0 = v54;
    if (*v64)
    {
      v39 = v36[3];
      v40 = *v64;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = **(v54 + 72);
    v45 = swift_allocObject();
    *(v45 + 16) = &unk_10014BBB0;
    *(v45 + 24) = v36;

    if (v43 | v41)
    {
      v10 = v52;
      *v52 = 0;
      v52[1] = 0;
      *(v54 + 32) = v41;
      *(v54 + 40) = v43;
    }

    else
    {
      v10 = 0;
    }

    v3 = v56;
    v11 = *(v54 + 112);
    *(v54 + 48) = 1;
    *(v54 + 56) = v10;
    *(v54 + 64) = v44;
    swift_task_create();

    result = sub_1000C59E0(v11, &qword_1001D4F68, &qword_100149690);
  }

  if (v51 <= v9 + 1)
  {
    v13 = v9 + 1;
  }

  else
  {
    v13 = v51;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v51)
    {
      v46 = *(v0 + 152);
      v47 = sub_1000C4810(&qword_1001D5898, &qword_10014BBA0);
      (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
      v7 = 0;
      v9 = v14;
      goto LABEL_17;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[4] = a5;
  v8 = *(*(sub_1000C4810(&qword_1001D58A0, &qword_10014BBC8) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = sub_1000C4810(&qword_1001D58A8, &qword_10014BBD0);
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = type metadata accessor for LSKStatusOptions.Scope();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();
  v15 = type metadata accessor for LSKStatusOptions();
  v7[14] = v15;
  v16 = *(v15 - 8);
  v7[15] = v16;
  v17 = *(v16 + 64) + 15;
  v7[16] = swift_task_alloc();
  v18 = type metadata accessor for LSKDomain();
  v7[17] = v18;
  v19 = *(v18 - 8);
  v7[18] = v19;
  v20 = *(v19 + 64) + 15;
  v7[19] = swift_task_alloc();
  v21 = type metadata accessor for LSKStatusOptions.DeviceType();
  v7[20] = v21;
  v22 = *(v21 - 8);
  v7[21] = v22;
  v23 = *(v22 + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v24 = sub_1000C4810(&qword_1001D58B0, &qword_10014BBD8);
  v7[27] = v24;
  v25 = *(v24 - 8);
  v7[28] = v25;
  v26 = *(v25 + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000FACB8, 0, 0);
}
void sub_100086414(uint64_t a1, unint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_1005018F8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  sub_100081644(0, a3);
  if (v3)
  {
    return;
  }

  v15 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) - 3 > 1)
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v21 = 136315394;
      LOBYTE(v110) = *(a3 + v15);
      v22 = String.init<A>(describing:)();
      v24 = sub_1002FFA0C(v22, v23, &v111);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;

      v25 = UUID.uuidString.getter();
      v27 = v26;

      v28 = sub_1002FFA0C(v25, v27, &v111);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cannot process access protocol completed in state %s for %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000755A4();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    return;
  }

  v16 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel);
  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a2);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v31 = *(a1 + 16);
  v30 = *(a1 + 24);
  v32 = __OFSUB__(v30, v31);
  v18 = v30 - v31;
  if (v32)
  {
    __break(1u);
LABEL_17:
    LODWORD(v18) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_39;
    }

    v18 = v18;
  }

LABEL_20:
  v33 = v18 - 16;
  if (__OFSUB__(v18, 16))
  {
    __break(1u);
    goto LABEL_63;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v33 >> 16)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v34 = sub_100090960(2, 3, v33);
  v36 = v35;
  v37 = sub_1002B1910(a1, a2, v34, v35);
  v39 = v38;
  sub_10006A178(v34, v36);
  v109 = 0;
  v40 = OBJC_IVAR____TtC10seserviced4Lyon_logger;
  sub_100069E2C(v37, v39);
  v106 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  sub_10006A178(v37, v39);
  v43 = os_log_type_enabled(v41, v42);
  v105 = v15;
  v107 = v37;
  v108 = v39;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v111 = v104;
    *v44 = 136315138;
    v45 = v109;
    v46 = sub_100288788(v37, v39);
    v109 = v45;
    v110 = v46;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v47 = BidirectionalCollection<>.joined(separator:)();
    v49 = v48;
    v39 = v108;

    v50 = sub_1002FFA0C(v47, v49, &v111);
    v37 = v107;

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "Access Protocol Completed payload : %s", v44, 0xCu);
    sub_1000752F4(v104);
  }

  sub_100069E2C(v37, v39);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v37, v39);
  v4 = [objc_opt_self() TLVWithData:isa];

  if (!v4)
  {
    sub_100069E2C(v37, v39);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    sub_10006A178(v37, v39);

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v111 = v106;
      *v61 = 136315394;
      v110 = sub_100288788(v37, v39);
      v62 = v37;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v63 = BidirectionalCollection<>.joined(separator:)();
      v65 = v64;

      v66 = sub_1002FFA0C(v63, v65, &v111);
      v37 = v62;

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
      v39 = v108;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = sub_1002FFA0C(v67, v68, &v111);

      *(v61 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "Could not process access protocol completed notification %s from peer %s", v61, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000755A4();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();
    v71 = v37;
    v72 = v39;
    goto LABEL_32;
  }

  v52 = [v4 value];
  if (!v52)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  v53 = v52;
  v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = v109;
  v58 = sub_100081B2C(v54, v56, 1, 0, 0);
  if (v57)
  {

    sub_10006A178(v107, v108);
    return;
  }

  v73 = OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) = v58;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatusAtConnection) = v58;
  v74 = [v4 value];
  if (!v74)
  {
    goto LABEL_68;
  }

  v75 = v74;
  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  v79 = sub_100081B2C(v76, v78, 0, 0, 0);
  v12 = 0;
  v80 = OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue) = v79 >> 5;

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 16777728;
    *(v83 + 4) = *(a3 + v73);
    *(v83 + 5) = 256;
    *(v83 + 7) = *(a3 + v80);

    _os_log_impl(&_mh_execute_header, v81, v82, "Received status update %hhu and reader status reporting value %hhu", v83, 8u);
  }

  else
  {
  }

  a2 = v105;
  if (*(a3 + v80) != 1)
  {

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v111 = v109;
      *v86 = 16777730;
      *(v86 + 4) = *(a3 + v80);

      *(v86 + 5) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = sub_1002FFA0C(v87, v88, &v111);

      *(v86 + 7) = v89;
      _os_log_impl(&_mh_execute_header, v84, v85, "unsolicitedReaderStatusReporting value %hhu is not 1 as expected for %s", v86, 0xFu);
      sub_1000752F4(v109);

      a2 = v105;
    }

    else
    {
    }

    goto LABEL_43;
  }

  if (qword_100501950 != -1)
  {
    goto LABEL_66;
  }

LABEL_39:
  sub_1000C8420(a3, 0);
LABEL_43:
  v90 = v107;
  *(a3 + a2) = 5;
  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4))
  {

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v111 = v94;
      *v93 = 136315138;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = sub_1002FFA0C(v95, v96, &v111);

      *(v93 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v91, v92, "No cached uwb session id for %s", v93, 0xCu);
      sub_1000752F4(v94);
    }

    v98 = v108;
    sub_1000755A4();
    swift_allocError();
    *v99 = 0;
    swift_willThrow();

    v71 = v90;
    v72 = v98;
LABEL_32:
    sub_10006A178(v71, v72);
    return;
  }

  v100 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  v101 = qword_10051B168;
  [*(&(*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper))->isa + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper) invalidate];
  if ((*(v101 + OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging) & 1) == 0)
  {
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_100194774(a3);
  }

  if (qword_100501950 != -1)
  {
    swift_once();
  }

  sub_1000C8608(a3, v100);
  if (v12)
  {
  }

  else
  {
    sub_1000C8B8C(a3);
    v102 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

    sub_1002F846C();
  }

  sub_10006A178(v90, v108);
}

void sub_1000872A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_100069E2C(a1, a2);
  v15 = sub_100090214(a1, a2, 0, 0, 1);
  if (v4)
  {
    sub_10006A178(a1, a2);
  }

  else
  {
    v16 = v15;
    sub_10006A178(a1, a2);
    if (!v16)
    {

      v69 = v3;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v71 = v43;
        *v42 = 136315138;

        v44 = UUID.uuidString.getter();
        v46 = v45;

        v47 = sub_1002FFA0C(v44, v46, &v71);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Received busy subevent from peer %s", v42, 0xCu);
        sub_1000752F4(v43);
      }

      if (*(*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension) + 64) <= 2u)
      {
        sub_10025D59C(0);
        v48 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        v49 = *(v48 + 72);
        v50 = __CFADD__(v49, 1);
        v51 = v49 + 1;
        if (!v50)
        {
          *(v48 + 72) = v51;
          return;
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v71 = v63;
        *v62 = 134218242;
        *(v62 + 4) = 3;

        *(v62 + 12) = 2080;

        v64 = UUID.uuidString.getter();
        v66 = v65;

        v67 = sub_1002FFA0C(v64, v66, &v71);

        *(v62 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Received more than %ld busy subevent from peer %s, disconnecting", v62, 0x16u);
        sub_1000752F4(v63);
      }

      else
      {
      }

LABEL_15:
      sub_1000755A4();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
      return;
    }
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [objc_opt_self() TLVWithData:isa];

  if (!v8)
  {
    sub_100069E2C(a1, a2);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v27 = 136315394;
      v70 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;

      v31 = sub_1002FFA0C(v28, v30, &v71);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = sub_1002FFA0C(v32, v33, &v71);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not process event notification %s from peer %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_15;
  }

  v18 = [v8 tag];
  if (v18 > 0xFF)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_28:
    sub_1000E67E4(a3);

    return;
  }

  if (v18 == 1)
  {
    v19 = [v8 value];
    if (v19)
    {
      v20 = v19;
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_100081B2C(v21, v23, 0, 0, 0);
      LODWORD(v69) = v24;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v71 = v55;
        *v54 = 136315394;
        type metadata accessor for UUID();
        sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = sub_1002FFA0C(v56, v57, &v71);

        *(v54 + 4) = v58;
        *(v54 + 12) = 256;
        *(v54 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v52, v53, "Received general error from peer %s with value %hhu", v54, 0xFu);
        sub_1000752F4(v55);
      }

      v59 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      *(v59 + 84) = 10;
      *(v59 + 88) = 0;
      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 0;
      if (qword_100501960 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v36 = v8;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    *(v39 + 4) = [v36 tag];

    _os_log_impl(&_mh_execute_header, v37, v38, "Unknown/Unsupported event TLV with tag: %u", v39, 8u);
  }

  else
  {
  }
}

uint64_t sub_100087E84(int64_t a1, char a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    a1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
    {
LABEL_22:
      v32 = 0;
LABEL_23:

      return v32;
    }

    if (a2)
    {
      v12 = OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension;
      if (*(*(Strong + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension) + 64) <= 2u)
      {
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Timer ended for outgoing message, sending busy subevent", v15, 2u);
        }

        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        sub_100093260(a1);
        v32 = 1;
        goto LABEL_23;
      }

      swift_retain_n();
      v16 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v24))
      {

LABEL_20:
        if (qword_1005018F8 == -1)
        {
LABEL_21:
          sub_100080E48(a1, 0);
          goto LABEL_22;
        }

LABEL_27:
        swift_once();
        goto LABEL_21;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 67109634;
      *(v25 + 4) = *(*(a1 + v12) + 64);

      *(v25 + 8) = 2080;

      v27 = UUID.uuidString.getter();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, &v34);

      *(v25 + 10) = v30;
      *(v25 + 18) = 2048;

      *(v25 + 20) = 3;

      _os_log_impl(&_mh_execute_header, v16, v24, "Sent %u busy subevent to peer %s, max events %ld disconnecting", v25, 0x1Cu);
      sub_1000752F4(v26);
    }

    else
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v16, v17))
      {
LABEL_19:

        goto LABEL_20;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;

      v20 = UUID.uuidString.getter();
      v22 = v21;

      v23 = sub_1002FFA0C(v20, v22, &v34);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Timer ended for incoming message, disconnecting %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    goto LABEL_19;
  }

  return 0;
}

void sub_10008843C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v6);
    if ((v11 & 1) == 0)
    {
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_5;
    }

    if (*(v3 + 16) != 1)
    {
      break;
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_48;
    }

LABEL_5:
    v13 = sub_1000CAAC4();
    if ((a1 & 1) == 0)
    {

      v22 = *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
      *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = _swiftEmptyArrayStorage;

      if (qword_100501B58 != -1)
      {
        swift_once();
      }

      v23 = qword_10051B588;
      if (*(qword_10051B588 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v23 + 17) = 0;
        sub_1002263E4();
      }

      return;
    }

    if (qword_100501BD8 != -1)
    {
      swift_once();
    }

    v14 = [a2 publicKeyIdentifier];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10027BD00(v15, v17);
    v65 = a2;
    v24 = v18;
    sub_10006A178(v15, v17);
    v25 = *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
    *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers) = v24;

    v70 = 0;
    if ((v13 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_10009388C(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v13 = v72[3];
      v27 = v72[4];
      v28 = v72[5];
      a2 = v72[6];
      v6 = v72[7];
    }

    else
    {
      a2 = 0;
      v29 = -1 << *(v13 + 32);
      v27 = v13 + 56;
      v28 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v6 = v31 & *(v13 + 56);
    }

    v66 = v28;
    v7 = (v28 + 64) >> 6;
    v10 = &OBJC_IVAR____TtC10seserviced4Peer_isConnected;
    *&v26 = 136315394;
    v64 = v26;
    v67 = v3;
    v68 = v13;
    while (1)
    {
      a1 = a2;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

      v36 = __CocoaSet.Iterator.next()();
      if (!v36 || (v71 = v36, type metadata accessor for Peer(), v35 = swift_dynamicCast(), (v34 = v72[0]) == 0))
      {
LABEL_43:
        sub_100093854();
        return;
      }

LABEL_37:
      if (*v34 == _TtC10seserviced8LyonPeer && *(v34 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
      {
        v69 = v6;
        v37 = *(v3 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
        v39 = *(v34 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8);
        v72[0] = *(v34 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
        v38 = v72[0];
        v72[1] = v39;
        __chkstk_darwin(v35);
        *&v60[-16] = v72;

        sub_100069E2C(v38, v39);
        v40 = v70;
        v41 = sub_1002F78F8(sub_100093990, &v60[-32], v37);

        sub_10006A178(v38, v39);
        v70 = v40;
        if (v41)
        {
          v42 = *(v34 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
          *(v42 + 84) = 4;
          *(v42 + 88) = 0;

          v43 = v65;
          v3 = v67;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v72[0] = v63;
            *v46 = v64;
            v62 = v44;

            v47 = UUID.uuidString.getter();
            v49 = v48;

            v50 = sub_1002FFA0C(v47, v49, v72);

            *(v46 + 4) = v50;
            *(v46 + 12) = 2080;
            v51 = [v43 publicKeyIdentifier];
            v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;

            v55 = Data.description.getter();
            v61 = v45;
            v56 = v3;
            v58 = v57;
            sub_10006A178(v52, v54);
            v59 = sub_1002FFA0C(v55, v58, v72);
            v3 = v56;

            *(v46 + 14) = v59;
            v44 = v62;
            _os_log_impl(&_mh_execute_header, v62, v61, "Disconnecting %s since %s is pre armed", v46, 0x16u);
            swift_arrayDestroy();
          }

          v13 = v68;
          v10 = &OBJC_IVAR____TtC10seserviced4Peer_isConnected;
          sub_100080E48(v34, 0);
        }

        else
        {
          v3 = v67;
          v13 = v68;
          v10 = &OBJC_IVAR____TtC10seserviced4Peer_isConnected;
        }

        v6 = v69;
      }
    }

    v32 = a2;
    v33 = v6;
    if (v6)
    {
LABEL_33:
      v6 = (v33 - 1) & v33;
      v34 = *(*(v13 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v33)))));

      if (!v34)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    while (1)
    {
      a2 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (a2 >= v7)
      {
        goto LABEL_43;
      }

      v33 = *(v27 + 8 * a2);
      ++v32;
      if (v33)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }
}

uint64_t sub_100088DE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (*(v2 + 16) == 1)
    {
      v13 = *(v2 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);
      v19[0] = a1;
      v19[1] = a2;
      __chkstk_darwin(result);
      *&v18[-16] = v19;

      v14 = sub_1002F78F8(sub_100093834, &v18[-32], v13);
    }

    else
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Not running", v17, 2u);
      }

      v14 = 0;
    }

    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100089040(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_15;
  }

  v14 = *(v2 + 16);
  v15 = Logger.logObject.getter();
  if (v14 != 1)
  {
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v15, v37, "Not running", v38, 2u);
    }

    return;
  }

  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Lyon onChannelOpen", v17, 2u);
  }

  v18 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v20 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8);
  v21 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier);
  v22 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8);
  v56 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
  v19 = v56;
  v57 = v20;
  v55[3] = &type metadata for Data;
  v55[4] = &protocol witness table for Data;
  v55[0] = v21;
  v55[1] = v22;
  v23 = sub_1000752B0(v55, &type metadata for Data);
  v24 = *v23;
  v25 = v23[1];

  sub_100069E2C(v19, v20);
  sub_100069E2C(v21, v22);
  v8 = 0;
  sub_10008E4C8(v24, v25);
  sub_1000752F4(v55);
  v26 = v56;
  v27 = v57;
  sub_1002FAC14(v56, v57);

  sub_10006A178(v26, v27);
  v28 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v11 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v11 >> 60 == 15)
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55[0] = v32;
      *v31 = 136315138;

      v33 = UUID.uuidString.getter();
      v35 = v34;

      v36 = sub_1002FFA0C(v33, v35, v55);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s connected without valid key identifier", v31, 0xCu);
      sub_1000752F4(v32);
    }

    sub_100080E48(a1, 0);
    return;
  }

  v12 = *v28;
  sub_100069E2C(*v28, *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  if (qword_100501BD8 != -1)
  {
    goto LABEL_31;
  }

LABEL_15:
  v39 = sub_10027C110(v12, v11);
  if (v39)
  {
    if (v39 == 1)
    {
      if (qword_100501950 != -1)
      {
        swift_once();
      }

      sub_1000CA2E8(a1);
      if (qword_1005018E8 != -1)
      {
        swift_once();
      }

      v40 = *(qword_10051B168 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
      v41 = qword_10051B168;
      sub_1000757C8(a1, v40, v41);
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 1;
      if (qword_100501BF0 != -1)
      {
        swift_once();
      }

      sub_1002A1220(a1);
      if (v8)
      {
        sub_100080E48(a1, 0);
        sub_10006A2D0(v12, v11);

        return;
      }
    }
  }

  else
  {
    sub_10006A2BC(v12, v11);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    sub_10006A2D0(v12, v11);

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55[0] = v54;
      *v44 = 136315394;
      v56 = sub_100288788(v12, v11);
      HIDWORD(v53) = v43;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v48 = sub_1002FFA0C(v45, v47, v55);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;

      v49 = UUID.uuidString.getter();
      v51 = v50;

      v52 = sub_1002FFA0C(v49, v51, v55);

      *(v44 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, BYTE4(v53), "%s is no longer express, disconnecting %s", v44, 0x16u);
      swift_arrayDestroy();
    }

    sub_100080E48(a1, 0);
  }

  sub_10006A2D0(v12, v11);
}

void sub_1000897F0(uint64_t a1)
{
  if (qword_100501960 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1000E67E4(a1);
}

void sub_100089854(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v53 = type metadata accessor for UUID();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v53);
  v52 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v8);
    if ((v13 & 1) == 0)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_5;
    }

    if (*(v3 + 16) != 1)
    {
      break;
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_35;
    }

LABEL_5:
    v12 = off_10050B110;
    v15 = sub_1000CAAC4();
    v17 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v12 = type metadata accessor for Peer();
      sub_10009388C(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v17 = v57[1];
      v18 = v57[2];
      v19 = v57[3];
      v8 = v57[4];
      v20 = v57[5];
    }

    else
    {
      v8 = 0;
      v24 = -1 << *(v15 + 32);
      v18 = v15 + 56;
      v19 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v20 = v26 & *(v15 + 56);
    }

    v43[1] = v19;
    v9 = (v19 + 64) >> 6;
    v45 = (v5 + 8);
    v46 = (v5 + 16);
    *&v16 = 136315394;
    v44 = v16;
    v47 = a2;
    v48 = v3;
    while (v17 < 0)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30 || (v56 = v30, type metadata accessor for Peer(), swift_dynamicCast(), v5 = v57[0], v29 = v8, v12 = v20, !v57[0]))
      {
LABEL_31:
        sub_100093854();
        return;
      }

LABEL_28:
      if (*v5 == _TtC10seserviced8LyonPeer)
      {
        v55 = v12;

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v57[0] = v51;
          *v33 = v44;
          v34 = *v46;
          v49 = v32;
          v35 = v52;
          v50 = v31;
          v36 = v53;
          v34(v52, v5 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v53);
          sub_10009388C(&qword_100504C70, &type metadata accessor for UUID);
          v37 = v17;
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          (*v45)(v35, v36);
          v41 = v38;
          v17 = v37;
          v42 = sub_1002FFA0C(v41, v40, v57);
          a2 = v47;

          *(v33 + 4) = v42;
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_1002FFA0C(v54, a2, v57);
          v31 = v50;
          _os_log_impl(&_mh_execute_header, v50, v49, "Disconnecting %s because %s", v33, 0x16u);
          swift_arrayDestroy();
          v3 = v48;
        }

        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        sub_100080E48(v5, 0);

        v12 = v55;
      }

      v8 = v29;
      v20 = v12;
    }

    v27 = v8;
    v28 = v20;
    v29 = v8;
    if (v20)
    {
LABEL_24:
      v12 = ((v28 - 1) & v28);
      v5 = *(*(v17 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

      if (!v5)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v9)
      {
        goto LABEL_31;
      }

      v28 = *(v18 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Not running", v23, 2u);
  }
}

void sub_100089F1C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    v41 = v12;
    swift_once();
    v12 = v41;
LABEL_18:
    sub_1002A1A18(a1, v12);
    v18 = v9[66];
    if ((*(a1 + v18) & 0x100) == 0)
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = *(a1 + v18);
        if ((v23 & 0xFF00) == 0x200)
        {
          v24 = 0;
          v25 = 0;
        }

        else
        {
          sub_1000755A4();
          swift_allocError();
          *v26 = v23;
          v26[1] = HIBYTE(v23) & 1;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          v25 = v24;
        }

        *(v21 + 4) = v24;
        *v22 = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Restarting scanning with error %@", v21, 0xCu);
        sub_100075768(v22, &unk_100503F70, &unk_10040B2E0);
      }

      if (qword_100501B58 != -1)
      {
        swift_once();
      }

      v27 = qword_10051B588;
      if (*(qword_10051B588 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v27 + 17) = 0;
        sub_1002263E4();
      }
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;

      v32 = UUID.uuidString.getter();
      v34 = v33;

      v35 = sub_1002FFA0C(v32, v34, &v43);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Lyon onDisconnection for %s", v30, 0xCu);
      sub_1000752F4(v31);
    }

    v36 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    v37 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_endpointType);
    v38 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus);
    v39 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue);
    v40 = *(a1 + v2);

    sub_1002F8758(v40, v37, v38, v39);

    if (qword_1005018E8 != -1)
    {
      swift_once();
    }

    sub_100073834(a1);
    if (qword_100501950 != -1)
    {
      swift_once();
    }

    sub_1000CA51C(a1);
    return;
  }

  if (*(v3 + 16) == 1)
  {
    v2 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    v9 = &unk_10051B000;
    if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) <= 9u && ((*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) & 0xFF00) != 0x200 ? (v13 = (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) & 0x100) == 0) : (v13 = 0), v13))
    {
      v12 = 1;
    }

    else
    {
      v14 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension);
      if (*(v14 + 40))
      {
        v12 = (*(v14 + 24) & 1) == 0;
      }

      else
      {
        v12 = 0;
      }
    }

    if (qword_100501BF0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Not running", v17, 2u);
  }
}

void *sub_10008A550()
{
  type metadata accessor for Lyon.SupportedProtocolVersions();
  swift_allocObject();
  result = sub_10008A58C();
  qword_10051B190 = result;
  return result;
}

void *sub_10008A58C()
{
  v0[2] = &off_1004C3538;
  v0[3] = &off_1004C3560;
  v0[4] = &off_1004C3588;
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  sub_100074970(0xD000000000000018, 0x8000000100461E20);
  if (v1)
  {
    v2 = v0[2];
    v0[2] = v1;
  }

  sub_100074970(0xD000000000000010, 0x8000000100461E00);
  if (v3)
  {
    v4 = v0[3];
    v0[3] = v3;
  }

  sub_100074970(0xD00000000000001ELL, 0x8000000100461DE0);
  if (v5)
  {
    v6 = v0[4];
    v0[4] = v5;
  }

  return v0;
}

uint64_t sub_10008A6A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_10008A6E8()
{
  v1 = OBJC_IVAR____TtC10seserviced4Lyon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced4Lyon_preArmedTruncatedReaderIdentifiers);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10008A7BC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008A898()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12[1] = qword_10051B7F0;
  aBlock[4] = sub_10008C164;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5CE0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10009388C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

unint64_t sub_10008AB80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100092ECC(*(a1 + 48) + 40 * v14, v29);
        sub_1000754F0(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100092ECC(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000754F0(v27 + 8, v22);
        sub_100075768(v26, &qword_100502C00, &qword_100409CA8);
        v23 = v20;
        sub_100075D50(v22, v24);
        v15 = v23;
        sub_100075D50(v24, v25);
        sub_100075D50(v25, &v23);
        result = sub_10008C934(v15, *(&v15 + 1), &String.hash(into:), sub_10008D664);
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1000752F4(v12);
          result = sub_100075D50(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100075D50(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_100075768(v26, &qword_100502C00, &qword_100409CA8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10008AE84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502CD8, &qword_100409DB8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_100092ECC(*(a1 + 48) + 40 * v13, v25);
        sub_1000754F0(*(a1 + 56) + 32 * v13, v26 + 8);
        v23[0] = v26[0];
        v23[1] = v26[1];
        v24 = v27;
        v22[0] = v25[0];
        v22[1] = v25[1];
        sub_100092ECC(v22, v21);
        if (!swift_dynamicCast())
        {
          sub_100075768(v22, &qword_100502C00, &qword_100409CA8);

          goto LABEL_23;
        }

        sub_1000754F0(v23 + 8, v21);
        sub_100075768(v22, &qword_100502C00, &qword_100409CA8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_10008C934(v19, v20, &String.hash(into:), sub_10008D664);
        if (v14)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v20;
          v11 = result;

          *(v2[7] + 8 * v11) = v19;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v15 = (v2[6] + 16 * result);
          *v15 = v19;
          v15[1] = v20;
          *(v2[7] + 8 * result) = v19;
          v16 = v2[2];
          v17 = __OFADD__(v16, 1);
          v18 = v16 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v2[2] = v18;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

double sub_10008B178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10008C934(a1, a2, &String.hash(into:), sub_10008D664), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1000754F0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

Swift::Int sub_10008B2F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008B36C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10008B3B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009385C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008B3E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel);

  v2 = *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension);

  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8));
  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8));
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
}

uint64_t sub_10008B484()
{
  v1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8));
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel);

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension);

  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8));
  sub_10006A178(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8));
  v6 = *(v0 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

  return v0;
}

uint64_t sub_10008B5E0()
{
  sub_10008B484();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10008B660(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonSessionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonSessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008B8D0()
{
  result = qword_100502BC0;
  if (!qword_100502BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502BC0);
  }

  return result;
}

void sub_10008B924(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v8 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (v11)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v13 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v13;
    v14 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    v16 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v17 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v16;
    *(inited + 88) = v17;
    *(inited + 120) = sub_100068FC4(&qword_100502BF0, &qword_100409C88);
    *(inited + 96) = a3;
    *(inited + 104) = a4;

    sub_10006A2BC(a3, a4);
    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = String._bridgeToObjectiveC()();
    [v11 setObject:isa forKey:v19];
  }

  else
  {
    __break(1u);
  }
}

void sub_10008BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v10 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v11 = objc_allocWithZone(NSUserDefaults);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithSuiteName:v12];

  if (v13)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v15 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v15;
    v17 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v16 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v17;
    *(inited + 56) = v16;
    v18 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v19 = *(v5 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v18;
    *(inited + 88) = v19;
    *(inited + 120) = sub_100068FC4(a4, a5);
    *(inited + 96) = a3;

    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = String._bridgeToObjectiveC()();
    [v13 setObject:isa forKey:v21];
  }

  else
  {
    __break(1u);
  }
}

void sub_10008BD40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v8 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (v11)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v13 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v13;
    v14 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    v16 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v17 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v16;
    *(inited + 88) = v17;
    *(inited + 120) = sub_100068FC4(&qword_100502D08, &qword_100409DE0);
    *(inited + 96) = a3;
    *(inited + 104) = a4 & 1;

    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = String._bridgeToObjectiveC()();
    [v11 setObject:isa forKey:v19];
  }

  else
  {
    __break(1u);
  }
}

void sub_10008BF48(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v6 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (v9)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v11 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8);
    *(inited + 32) = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey);
    *(inited + 40) = v11;
    v13 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID);
    v12 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8);
    *(inited + 72) = sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    *(inited + 48) = v13;
    *(inited + 56) = v12;
    v14 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey);
    v15 = *(v3 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8);
    *(inited + 80) = v14;
    *(inited + 88) = v15;
    *(inited + 120) = sub_100068FC4(&qword_100502C60, &qword_100409D38);
    *(inited + 96) = a3;

    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKey:v17];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008C168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_100069E2C(v7, v6);
          sub_100069E2C(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_100069E2C(v7, v6);
        sub_100069E2C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_100069E2C(v7, v6);
          sub_100069E2C(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_10019F024(v24, v25, v26, v33);
          sub_10006A178(v9, v8);
          sub_10006A178(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_100069E2C(v7, v6);
        sub_100069E2C(v9, v8);
      }

      sub_10019F024(v33, v9, v8, &v32);
      sub_10006A178(v9, v8);
      sub_10006A178(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_10008C58C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10008C678(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10008FA94(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10006A178(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10019F024(v13, a3, a4, &v12);
  v10 = v4;
  sub_10006A178(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10008C808(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10009388C(&unk_100507480, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10008DBAC(a1, v5, &type metadata accessor for UUID, &qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_10008C934(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_10008C9C8(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10008D71C(a1, v4);
}

unint64_t sub_10008CA34(unsigned __int16 a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10008D788(a1, v4);
}

unint64_t sub_10008CA7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10008D7F8(a1, v4);
}

unint64_t sub_10008CAC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10008D8C0(a1, v4);
}

unint64_t sub_10008CB58(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10008DE10(a1, v4, &qword_100504760, RBSAssertion_ptr);
}

unint64_t sub_10008CBA8(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10008D9C4(a1, v4);
}

unint64_t sub_10008CBF0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_10008DA30(a1, v4);
}

unint64_t sub_10008CC58(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10009388C(&qword_10050AB70, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10008DAA0(a1, v4);
}

unint64_t sub_10008CD0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CredentialType();
  sub_10009388C(&unk_10050ABE0, &type metadata accessor for CredentialType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10008DBAC(a1, v5, &type metadata accessor for CredentialType, &qword_100502CE0, &type metadata accessor for CredentialType, &protocol conformance descriptor for CredentialType);
}

unint64_t sub_10008CDE0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10008DD4C(a1, v4);
}

unint64_t sub_10008CE24(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10008DE10(a1, v4, &qword_100503EB0, CBUUID_ptr);
}

unint64_t sub_10008CE74(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10008DEDC(a1, v4);
}

unint64_t sub_10008CF34(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10008E07C(a1, v4);
}

unint64_t sub_10008D020(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10008E224(a1, v4);
}

unint64_t sub_10008D0F4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10008DE10(a1, v4, &qword_100504C80, NSNumber_ptr);
}

unint64_t sub_10008D144(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for URL();
  sub_10009388C(&unk_10050ABB0, &type metadata accessor for URL);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10008DBAC(a1, v5, &type metadata accessor for URL, &qword_100502CD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_10008D218(double a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10008E3CC(v4, a1);
}

unint64_t sub_10008D264(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100069E2C(v17, v16);
          sub_10019F024(v45, v9, v8, &v44);
          sub_10006A178(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100069E2C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100069E2C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_10019F024(v34, a1, a2, v45);
        sub_10006A178(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100069E2C(v17, v16);
      sub_10019F024(v45, v9, v8, &v44);
      sub_10006A178(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_10008D664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10008D71C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008D788(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008D7F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100092ECC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100092F28(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10008D8C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008D9C4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008DA30(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10008DAA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10009388C(&qword_10050AB70, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10008DBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10009388C(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10008DD4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CredentialInternal();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10008DE10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10009393C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10008DEDC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000016;
          v7 = 0x8000000100460D30;
          v8 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v6 = 0xD000000000000019;
          v7 = 0x8000000100460D50;
          v8 = a1;
          if (!a1)
          {
LABEL_17:
            v10 = 0xE200000000000000;
            if (v6 != 25705)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE200000000000000;
        v6 = 25705;
        v8 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v8 == 1)
      {
        v9 = 0xD000000000000016;
      }

      else
      {
        v9 = 0xD000000000000019;
      }

      if (v8 == 1)
      {
        v10 = 0x8000000100460D30;
      }

      else
      {
        v10 = 0x8000000100460D50;
      }

      if (v6 != v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v10)
      {

        return v4;
      }

LABEL_19:
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008E07C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = 0xD000000000000015;
      v8 = v6 == 2 ? 0xD000000000000013 : 0xD000000000000015;
      v9 = v6 == 2 ? 0x8000000100460D80 : 0x8000000100460DA0;
      v10 = *(*(v23 + 48) + v4) ? 0x656D614E707061 : 0x64496D616461;
      v11 = *(*(v23 + 48) + v4) ? 0xE700000000000000 : 0xE600000000000000;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v7 = 0xD000000000000013;
        v14 = 0x8000000100460D80;
      }

      else
      {
        v14 = 0x8000000100460DA0;
      }

      v15 = v5 ? 0x656D614E707061 : 0x64496D616461;
      v16 = v5 ? 0xE700000000000000 : 0xE600000000000000;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008E224(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6D617473656D6974;
          v8 = 0xEC00000079614470;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x7461676572676761;
          v8 = 0xEA00000000007365;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x644974726F706572)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x644974726F706572;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6D617473656D6974;
      }

      else
      {
        v10 = 0x7461676572676761;
      }

      if (v9 == 1)
      {
        v11 = 0xEC00000079614470;
      }

      else
      {
        v11 = 0xEA00000000007365;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008E3CC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

_BYTE *sub_10008E434@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10008FCD4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10008FD8C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10008FE08(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10008E4C8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10008E600(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_10008E600(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_10008E600(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008E694(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10008E6F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10008E7AC(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for DSKBLE.BLEScanRequest();
      swift_dynamicCast();
      return v15;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for DSKBLE.BLEScanRequest();
    swift_dynamicCast();
    v6 = *(a4 + 40);
    Hasher.init(_seed:)();
    v7 = *(v15 + 16);
    v8 = *(v15 + 24);
    String.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = -1 << *(a4 + 32);
    v5 = v9 & ~v10;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v5);
        v13 = *(v12 + 16) == *(v15 + 16) && *(v12 + 24) == *(v15 + 24);
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_20;
        }

        v5 = (v5 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_20:
  }

  v14 = *(*(a4 + 48) + 8 * v5);
}

void sub_10008E990(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_10008EBB4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for UWBSession();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for UWBSession();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10008EDB4(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for Peer();
      swift_dynamicCast();
      return v13;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for Peer();
    swift_dynamicCast();
    v6 = *(a4 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10009388C(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = -1 << *(a4 + 32);
    v5 = v7 & ~v8;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * v5);

        v11 = static UUID.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v9;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_10008F004(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      return v14;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v6 = *(a4 + 40);
    Hasher.init(_seed:)();
    v7 = *(v14 + 16);
    type metadata accessor for UUID();
    sub_10009388C(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v8 = Hasher._finalize()();
    v9 = -1 << *(a4 + 32);
    v5 = v8 & ~v9;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(*(a4 + 48) + 8 * v5) + 16);
        v12 = *(v14 + 16);

        LOBYTE(v11) = static UUID.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v13 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_10008F260(unint64_t a1, int a2, char a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v27 = __CocoaSet.element(at:)();
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      return v26;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    v14 = result;
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v27 = __CocoaSet.Index.element.getter();
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v6 = v26;
    v15 = *(a4 + 40);
    Hasher.init(_seed:)();
    v16 = [*(v6 + 24) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10009388C(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v13, v14);
    v17 = Hasher._finalize()();
    v18 = -1 << *(a4 + 32);
    a1 = v17 & ~v18;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v19 = ~v18;
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      do
      {
        v20 = *(*(*(a4 + 48) + 8 * a1) + 24);
        v21 = *(v6 + 24);

        v22 = v20;
        v23 = v21;
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v19;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != v6)
  {
    __break(1u);
LABEL_16:
  }

  v25 = *(*(a4 + 48) + 8 * a1);
}

uint64_t sub_10008F590(uint64_t result, int a2, char a3, uint64_t a4)
{
  v4 = a4;
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (__CocoaSet.Index.age.getter() != *(a4 + 36))
      {
        goto LABEL_74;
      }

      v44 = __CocoaSet.Index.element.getter();
      type metadata accessor for DSKExpress.ExpressKey();
      swift_dynamicCast();
      v6 = *v43;
      v7 = *(v4 + 40);
      Hasher.init(_seed:)();
      v8 = *(*v43 + 16);
      v9 = *(*v43 + 24);
      Data.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = v4 + 56;
      v12 = -1 << *(v4 + 32);
      v5 = v10 & ~v12;
      if ((*(v4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v13 = ~v12;
        v40 = v4 + 56;
        v41 = *v43;
        v42 = ~v12;
        v38 = v4;
        while (1)
        {
          v14 = *(*(v4 + 48) + 8 * v5);
          v15 = *(v14 + 16);
          v16 = *(v14 + 24);
          v18 = *(v6 + 16);
          v17 = *(v6 + 24);
          v19 = v16 >> 62;
          v20 = v17 >> 62;
          if (v16 >> 62 == 3)
          {
            break;
          }

          if (v19 <= 1)
          {
            if (!v19)
            {
              v22 = BYTE6(v16);
              if (v20 <= 1)
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }

            LODWORD(v22) = HIDWORD(v15) - v15;
            if (__OFSUB__(HIDWORD(v15), v15))
            {
              goto LABEL_69;
            }

            v22 = v22;
            goto LABEL_32;
          }

          if (v19 == 2)
          {
            v25 = *(v15 + 16);
            v24 = *(v15 + 24);
            v26 = __OFSUB__(v24, v25);
            v22 = v24 - v25;
            if (v26)
            {
              goto LABEL_68;
            }

            goto LABEL_32;
          }

          v22 = 0;
          if (v20 <= 1)
          {
LABEL_33:
            if (v20)
            {
              LODWORD(v27) = HIDWORD(v18) - v18;
              if (__OFSUB__(HIDWORD(v18), v18))
              {
                goto LABEL_67;
              }

              v27 = v27;
            }

            else
            {
              v27 = BYTE6(v17);
            }

            goto LABEL_40;
          }

LABEL_38:
          if (v20 != 2)
          {
            if (!v22)
            {
              goto LABEL_60;
            }

            goto LABEL_9;
          }

          v29 = *(v18 + 16);
          v28 = *(v18 + 24);
          v26 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v26)
          {
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
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_40:
          if (v22 != v27)
          {
            goto LABEL_9;
          }

          if (v22 < 1)
          {
            goto LABEL_60;
          }

          if (v19 > 1)
          {
            if (v19 == 2)
            {
              v30 = *(v15 + 16);
              v39 = *(v15 + 24);

              v31 = __DataStorage._bytes.getter();
              if (v31)
              {
                v32 = __DataStorage._offset.getter();
                if (__OFSUB__(v30, v32))
                {
                  goto LABEL_72;
                }

                v31 += v30 - v32;
              }

              if (__OFSUB__(v39, v30))
              {
                goto LABEL_71;
              }

              __DataStorage._length.getter();
              sub_10019F024(v31, v18, v17, v43);

              v33 = v43[0];
              goto LABEL_56;
            }

            *&v43[6] = 0;
            *v43 = 0;
          }

          else
          {
            if (v19)
            {
              v34 = v15;
              if (v15 >> 32 < v15)
              {
                goto LABEL_70;
              }

              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_73;
                }

                v35 += v34 - v36;
              }

              __DataStorage._length.getter();
              sub_10019F024(v35, v18, v17, v43);

              v33 = v43[0];
              v4 = v38;
LABEL_56:
              v11 = v40;
              v6 = v41;
              v13 = v42;
              if (v33)
              {
                goto LABEL_60;
              }

              goto LABEL_9;
            }

            *v43 = *(v14 + 16);
            *&v43[8] = v16;
            v43[10] = BYTE2(v16);
            v43[11] = BYTE3(v16);
            v43[12] = BYTE4(v16);
            v43[13] = BYTE5(v16);

            v13 = v42;
          }

          sub_10019F024(v43, v18, v17, &v44);

          if (v44)
          {
            goto LABEL_60;
          }

LABEL_9:
          v5 = (v5 + 1) & v13;
          if (((*(v11 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        if (v15)
        {
          v21 = 0;
        }

        else
        {
          v21 = v16 == 0xC000000000000000;
        }

        v22 = 0;
        v23 = v21 && v17 >> 62 == 3;
        if (v23 && !v18 && v17 == 0xC000000000000000)
        {
LABEL_60:

          goto LABEL_65;
        }

LABEL_32:
        if (v20 <= 1)
        {
          goto LABEL_33;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (result < 0 || 1 << *(a4 + 32) <= result)
      {
        goto LABEL_75;
      }

      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_65:
          v37 = *(*(v4 + 48) + 8 * v5);
        }
      }

      else
      {
LABEL_76:
        __break(1u);
      }

      __break(1u);
    }

LABEL_78:

    __break(1u);
  }

  if (a3)
  {
    v44 = __CocoaSet.element(at:)();
    type metadata accessor for DSKExpress.ExpressKey();
    swift_dynamicCast();
    return *v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10019F024(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10008FB4C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100069E2C(a3, a4);
          return sub_10008C678(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10008FCB4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008FCD4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10008FD8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10008FE08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10008FEB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_100069E2C(v7, v8);

      result = sub_10008C934(v7, v8, &Data.hash(into:), sub_10008D264);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10008FFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, &v13, &qword_100507D30, &unk_100409C90);
      v5 = v13;
      v6 = v14;
      result = sub_10008C934(v13, v14, &String.hash(into:), sub_10008D664);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100075D50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100090134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C78, &qword_100409D58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 34); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10008CA34(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_100090214(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 2))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if (((v6)(a3 + 2, v10) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_20:
    _StringGuts.grow(_:)(47);

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6164206D6F726620;
    v16._object = 0xEF206E656C206174;
    String.append(_:)(v16);
    if (v9 > 1)
    {
      if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_43;
    }

LABEL_36:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x2074657366666F20;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
    return swift_willThrow();
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v14 = v13 + a3;
    if (__OFADD__(v13, a3))
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v17 = __OFADD__(v13, a3);
  v18 = v13 + a3;
  if (v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __OFADD__(v18, 2);
  v19 = v18 + 2;
  if (v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100068FC4(&qword_100502C28, &qword_100409CF8);
  sub_1000937E0();
  sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8);
  DataProtocol.copyBytes<A>(to:from:)();
  v20 = bswap32(0) >> 16;
  if (a4)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_1000905BC(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 8))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if (((v6)(a3 + 8, v10) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_20:
    _StringGuts.grow(_:)(47);

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6164206D6F726620;
    v16._object = 0xEF206E656C206174;
    String.append(_:)(v16);
    if (v9 > 1)
    {
      if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_43;
    }

LABEL_36:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x2074657366666F20;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
    return swift_willThrow();
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v14 = v13 + a3;
    if (__OFADD__(v13, a3))
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v17 = __OFADD__(v13, a3);
  v18 = v13 + a3;
  if (v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __OFADD__(v18, 8);
  v19 = v18 + 8;
  if (v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100068FC4(&qword_100502C28, &qword_100409CF8);
  sub_1000937E0();
  sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8);
  DataProtocol.copyBytes<A>(to:from:)();
  v20 = bswap64(0);
  if (a4)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_100090960(char a1, char a2, unsigned int a3)
{
  v20 = 0;
  v21 = 0;
  LOBYTE(v15) = a1;
  v18 = &type metadata for UnsafeRawBufferPointer;
  v19 = &protocol witness table for UnsafeRawBufferPointer;
  v16 = &v15;
  v17 = (&v15 + 1);
  v5 = sub_1000752B0(&v16, &type metadata for UnsafeRawBufferPointer);
  v7 = *v5;
  v6 = v5[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v16);
  LOBYTE(v15) = a2;
  v18 = &type metadata for UnsafeRawBufferPointer;
  v19 = &protocol witness table for UnsafeRawBufferPointer;
  v16 = &v15;
  v17 = (&v15 + 1);
  v8 = sub_1000752B0(&v16, &type metadata for UnsafeRawBufferPointer);
  v10 = *v8;
  v9 = v8[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v16);
  v15 = bswap32(a3) >> 16;
  v18 = &type metadata for UnsafeRawBufferPointer;
  v19 = &protocol witness table for UnsafeRawBufferPointer;
  v16 = &v15;
  v17 = &v16;
  v11 = sub_1000752B0(&v16, &type metadata for UnsafeRawBufferPointer);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v16);
  return v20;
}

uint64_t sub_100090A8C(uint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  v4 = BYTE6(a4);
  v7 = result;
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v9 = v9;
  }

LABEL_11:
  result = v9 + 4;
  if (__OFADD__(v9, 4))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1001303A8(result);
  v19 = result;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_24;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v8)
  {
    LODWORD(v13) = v4;
LABEL_25:
    v16 = sub_100090960(v7, a2, v13);
    v18 = v17;
    Data.append(_:)();
    sub_10006A178(v16, v18);
    Data.append(_:)();
    return v19;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v13 = HIDWORD(a3) - a3;
LABEL_21:
    if ((v13 & 0x8000000000000000) == 0)
    {
      if (!(v13 >> 16))
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_24:
      LODWORD(v13) = 0;
      goto LABEL_25;
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100090BC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v13, &qword_100502C48, &qword_10040B2D0);
      result = sub_10008CA7C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100075D50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100090D4C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = sub_100157168;
  if (a5)
  {
    v6 = sub_10015715C;
  }

  if (__OFADD__(a3, 4))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v10 = HIDWORD(a1) - a1;
  }

LABEL_14:
  if (((v6)(a3 + 4, v10) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = a1;
    v14 = a1 + a3;
    if (!__OFADD__(a1, a3))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_20:
    _StringGuts.grow(_:)(47);

    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x6164206D6F726620;
    v16._object = 0xEF206E656C206174;
    String.append(_:)(v16);
    if (v9 > 1)
    {
      if (v9 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_43;
    }

LABEL_36:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x2074657366666F20;
    v23._object = 0xE800000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    sub_10030990C(0, 1, 0xD000000000000012, 0x8000000100461E90, 0);
    return swift_willThrow();
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v14 = v13 + a3;
    if (__OFADD__(v13, a3))
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v17 = __OFADD__(v13, a3);
  v18 = v13 + a3;
  if (v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __OFADD__(v18, 4);
  v19 = v18 + 4;
  if (v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_100068FC4(&qword_100502C28, &qword_100409CF8);
  sub_1000937E0();
  sub_100075C60(&qword_100502C38, &qword_100502C28, &qword_100409CF8);
  DataProtocol.copyBytes<A>(to:from:)();
  v20 = bswap32(0);
  if (a4)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

unint64_t sub_1000910F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10008C934(v5, v6, &String.hash(into:), sub_10008D664);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10009122C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C50, &qword_100409D18);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_100069E2C(v5, v6);
      result = sub_10008C934(v5, v6, &Data.hash(into:), sub_10008D264);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100091354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_10050AAE0, &qword_100409D10);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_100069E2C(v5, v6);
      sub_100069E2C(v7, v8);
      result = sub_10008C934(v5, v6, &Data.hash(into:), sub_10008D264);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1000914B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100068FC4(&unk_10050AAF0, &qword_100409D50);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_10008CA34(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return &_swiftEmptyDictionarySingleton;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 2 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_100069E2C(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 8);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_10008CA34(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000915E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = sub_10008CBF0(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
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

unint64_t sub_1000916C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C70, &qword_100409D48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10008CC58(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000917B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502D10, &qword_100409DE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10008C934(v5, v6, &String.hash(into:), sub_10008D664);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000918D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C80, &qword_100409D60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, &v11, &qword_100502C88, &qword_100409D68);
      v5 = v11;
      result = sub_10008CC58(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000919FC(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100502CF8, &qword_100409DD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100068FC4(&qword_100502D00, &qword_100409DD8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000938D4(v10, v6, &qword_100502CF8, &qword_100409DD0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10008C934(*v6, v13, &String.hash(into:), sub_10008D664);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Date();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_100091C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CE8, &qword_100409DC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10008C934(v5, v6, &String.hash(into:), sub_10008D664);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100091D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CC0, &qword_100409DA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, &v13, &qword_100502CC8, &qword_100409DA8);
      v5 = v13;
      v6 = v14;
      result = sub_10008C934(v13, v14, &String.hash(into:), sub_10008D664);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100075D50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100091E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100068FC4(&qword_100502CF0, &qword_100409DC8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10008CBA8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_10008CBA8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100091FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CB0, &unk_100409D90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v11, &qword_100502CB8, &qword_100410F70);
      v5 = v11[0];
      result = sub_10008CE74(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000920D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502CA0, &qword_100409D80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v11, &qword_100502CA8, &qword_100409D88);
      v5 = v11[0];
      result = sub_10008CF34(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100092200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502C90, &unk_100409D70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000938D4(v4, v11, &qword_100502C98, &qword_100410F40);
      v5 = v11[0];
      result = sub_10008D020(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100075D50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10009233C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10008C934(v7, v8, &String.hash(into:), sub_10008D664);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100092460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100068FC4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10008C934(v7, v8, &String.hash(into:), sub_10008D664);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10009257C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v13 = [objc_allocWithZone(SESConfigAliro) init];
  v47[0] = 0;
  v14 = [v13 getConfiguration:v47];

  v15 = v47[0];
  if (!v14)
  {
    v29 = v47[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v15;

  v18 = sub_10008AB80(v16);

  if (v18)
  {
    v0 = 0xD000000000000016;
    if (*(v18 + 16))
    {
      v20 = sub_10008C934(0xD000000000000016, 0x8000000100461D40, &String.hash(into:), sub_10008D664);
      if (v21)
      {
        sub_1000754F0(*(v18 + 56) + 32 * v20, v47);
        sub_100068FC4(&qword_100502428, &unk_100409C70);
        if (swift_dynamicCast())
        {
          v22 = v46;
          if (qword_100501900 != -1)
          {
            swift_once();
          }

          v23 = qword_10051B190;
          if ((sub_10008C58C(v22, *(qword_10051B190 + 16)) & 1) == 0)
          {
            *(v23 + 16) = v22;

            if (qword_100501A18 != -1)
            {
              swift_once();
            }

            sub_10008BB44(0xD000000000000018, 0x8000000100461E20, v22, &qword_100502BF8, &qword_100409CA0);

            v24 = 1;
            if (!*(v18 + 16))
            {
LABEL_28:
              if (*(v18 + 16))
              {
                v30 = sub_10008C934(0xD00000000000001CLL, 0x8000000100461D80, &String.hash(into:), sub_10008D664);
                if (v31)
                {
                  sub_1000754F0(*(v18 + 56) + 32 * v30, v47);
                  sub_100068FC4(&qword_100502428, &unk_100409C70);
                  if (swift_dynamicCast())
                  {
                    v32 = v46;
                    if (qword_100501900 != -1)
                    {
                      swift_once();
                    }

                    v33 = qword_10051B190;
                    if ((sub_10008C58C(v32, *(qword_10051B190 + 32)) & 1) == 0)
                    {
                      *(v33 + 32) = v32;

                      if (qword_100501A18 != -1)
                      {
                        swift_once();
                      }

                      sub_10008BB44(0xD00000000000001ELL, 0x8000000100461DE0, v32, &qword_100502BF8, &qword_100409CA0);

                      if (qword_1005018E8 != -1)
                      {
                        swift_once();
                      }

                      sub_10006CAB0();
                      goto LABEL_36;
                    }
                  }
                }
              }

              if (!v24)
              {
              }

LABEL_36:
              if (qword_100501D88 == -1)
              {
LABEL_37:
                (*(v2 + 16))(v5, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v1);

                v34 = Logger.logObject.getter();
                v35 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  v37 = swift_slowAlloc();
                  v47[0] = v37;
                  *v36 = 136315138;
                  v38 = Dictionary.description.getter();
                  v40 = v39;

                  v41 = sub_1002FFA0C(v38, v40, v47);
                  v0 = 0xD000000000000016;

                  *(v36 + 4) = v41;
                  _os_log_impl(&_mh_execute_header, v34, v35, "Aliro protocol versions updated %s", v36, 0xCu);
                  sub_1000752F4(v37);
                }

                else
                {
                }

                (*(v2 + 8))(v5, v1);
                v42 = sub_10013044C(v0 - 4, 0x8000000100461630);
                v44 = v43;
                sub_1003375E0(v0 + 39, 0x8000000100461DA0, v42, v43, 0, 0xF000000000000000, 0);
                return sub_10006A2D0(v42, v44);
              }

LABEL_49:
              swift_once();
              goto LABEL_37;
            }

LABEL_14:
            v25 = sub_10008C934(0xD000000000000016, 0x8000000100461D60, &String.hash(into:), sub_10008D664);
            if (v26)
            {
              sub_1000754F0(*(v18 + 56) + 32 * v25, v47);
              sub_100068FC4(&qword_100502428, &unk_100409C70);
              if (swift_dynamicCast())
              {
                v27 = v46;
                if (qword_100501900 != -1)
                {
                  swift_once();
                }

                v28 = qword_10051B190;
                if (sub_10008C58C(v27, *(qword_10051B190 + 24)))
                {
                }

                else
                {
                  *(v28 + 24) = v27;

                  if (qword_100501A18 != -1)
                  {
                    swift_once();
                  }

                  sub_10008BB44(0xD000000000000010, 0x8000000100461E00, v27, &qword_100502BF8, &qword_100409CA0);

                  v24 = 1;
                }
              }
            }

            goto LABEL_28;
          }
        }
      }
    }

    v24 = 0;
    if (!*(v18 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100092F7C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_100501B78 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = byte_10051B5B8;
  if ((byte_10051B5B8 & 1) == 0)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v1 + 16))(v4, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Lyon can't start because UWB is not supported on this device", v15, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v12;
}

void sub_100093260(int64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (*(v1 + 16) != 1)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
    }

    return;
  }

  if (qword_1005018F8 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v11 = [objc_opt_self() TLVWithTag:0 value:0];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  v13 = [v11 asData];

  if (!v13)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_100090A8C(2, 0, v14, v16);
  v19 = v18;
  sub_10006A178(v14, v16);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_1000E71A0(v17, v19, a1);
  sub_10006A178(v17, v19);
  if (!v2)
  {
    v20 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    v21 = *(v20 + 68);
    v22 = __CFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v20 + 68) = v23;
      return;
    }

    __break(1u);
    goto LABEL_20;
  }
}

id sub_10009357C(void *a1, uint64_t (*a2)(void *))
{
  v4 = [a1 appletIdentifier];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v9 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  v10 = v8;
  if (v7 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_10006A2D0(v5, v7);
LABEL_9:
      result = [a1 endPointType];
      if (result == 4)
      {
        if (qword_100501B00 != -1)
        {
          swift_once();
        }

        return a2(a1);
      }

      return result;
    }
  }

  else if (v8 >> 60 != 15)
  {
    sub_100069E2C(v5, v7);
    sub_10006A2BC(v9, v10);
    v12 = sub_10008FB4C(v5, v7, v9, v10);
    sub_10006A2D0(v9, v10);
    sub_10006A2D0(v9, v10);
    sub_10006A178(v5, v7);
    result = sub_10006A2D0(v5, v7);
    if ((v12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_10006A2D0(v5, v7);

  return sub_10006A2D0(v9, v10);
}

uint64_t sub_100093734()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009376C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000937B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return sub_100087E84(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1000937D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1000937E0()
{
  result = qword_100502C30;
  if (!qword_100502C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502C30);
  }

  return result;
}

uint64_t sub_10009385C(uint64_t result)
{
  if (result >= 0xFu)
  {
    return 15;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10009388C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000938D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100068FC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009393C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100093A54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100068FC4(&qword_100502D40, &unk_100409E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for SECMetadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v46 - v13;
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  v26 = [a1 productConfigId];
  if (v26)
  {
    v48 = v7;
    v49 = v9;
    v52 = a2;
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
      a2 = v52;
    }

    else
    {
      (*(v19 + 32))(v25, v17, v18);
      v28 = [a1 credentialMetadata];
      if (v28)
      {
        v29 = v28;
        v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = type metadata accessor for JSONDecoder();
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_100095A10(&qword_100502D48);
        v36 = v48;
        v46 = v30;
        v47 = v32;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        a2 = v52;

        v43 = v49;
        (*(v49 + 56))(v36, 0, 1, v8);
        v44 = v51;
        (*(v43 + 32))(v51, v36, v8);
        (*(v19 + 16))(v23, v25, v18);
        (*(v43 + 16))(v50, v44, v8);
        SECCredentialConfig.init(configUUID:metadata:)();
        sub_10006A178(v46, v47);

        (*(v43 + 8))(v44, v8);
        (*(v19 + 8))(v25, v18);
        v45 = 0;
        goto LABEL_12;
      }

      (*(v19 + 8))(v25, v18);
      a2 = v52;
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000958E4(v37, qword_10051B2C8);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Corrupted metadata entity", v40, 2u);
  }

  v45 = 1;
LABEL_12:
  v41 = type metadata accessor for SECCredentialConfig();
  return (*(*(v41 - 8) + 56))(a2, v45, 1, v41);
}

void sub_100094048(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SECMetadata();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CredentialMetadataEntity();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v39 = a1;
  v15 = [v14 initWithContext:a1];
  v16 = type metadata accessor for JSONEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v36 = a2;
  SECCredentialConfig.metadata.getter();
  sub_100095A10(&qword_100502D28);
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v21 = v19;
    v22 = v20;
    (*(v10 + 8))(v13, v9);

    v23 = v22;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v15 setCredentialMetadata:isa];

    SECCredentialConfig.configUUID.getter();
    UUID.uuidString.getter();
    (*(v37 + 8))(v8, v38);
    v25 = String._bridgeToObjectiveC()();

    [v15 setProductConfigId:v25];

    v40 = 0;
    if ([v39 save:&v40])
    {
      v26 = v40;
      sub_10006A178(v21, v22);

      return;
    }

    v27 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v21, v23);
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000958E4(v28, qword_10051B2C8);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_1002FFA0C(0xD000000000000019, 0x8000000100461FF0, &v40);
    *(v31 + 12) = 2080;
    swift_getErrorValue();
    v32 = Error.localizedDescription.getter();
    v34 = sub_1002FFA0C(v32, v33, &v40);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: CoreData error %s encountered while saving view context", v31, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v35 = 0;
  swift_willThrow();
}

void sub_10009453C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithEntityName:v7];

  sub_100095970();
  sub_100068FC4(&qword_100502440, &unk_10040B240);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004098F0;
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000959BC();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v13];

  v14 = sub_10035E904();
  if (v2)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100462030, &v28);
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1002FFA0C(v20, v21, &v28);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: CoreData error %s encountered while fetching entity", v19, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    return;
  }

  v15 = v14;
  type metadata accessor for CredentialMetadataEntity();
  v24 = NSManagedObjectContext.fetch<A>(_:)();

  if (v24 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

LABEL_15:

    v27 = type metadata accessor for SECCredentialConfig();
    (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
    return;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_13:
    v26 = v25;

    sub_100093A54(v26, a1);

    return;
  }

  __break(1u);
}

void *sub_100094934()
{
  v2 = sub_100068FC4(&qword_100502D50, &qword_100414C30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v72 - v4;
  v6 = type metadata accessor for SECCredentialConfig();
  v80 = *(v6 - 1);
  v7 = *(v80 + 64);
  __chkstk_darwin(v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  v15 = sub_10035E904();
  if (v1)
  {

    if (qword_1005019D8 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_4;
  }

  v16 = v15;
  v84 = v9;
  v78 = v5;
  v79 = v6;
  type metadata accessor for CredentialMetadataEntity();
  v81 = NSManagedObjectContext.fetch<A>(_:)();
  v77 = v14;

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_10051B2C8);
  v27 = v81;

  v28 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v27 >> 62;
  v34 = v78;
  v33 = v79;
  v35 = v80;
  v76 = 0;
  if (v31)
  {
    v36 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v86 = v75;
    *v36 = 136315394;
    *(v36 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100462070, &v86);
    *(v36 + 12) = 2080;
    if (v32)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v36;
    LODWORD(v82) = v30;
    if (v37)
    {
      v85 = _swiftEmptyArrayStorage;
      result = sub_10019F504(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
        __break(1u);
        return result;
      }

      v73 = v32;
      v74 = v29;
      v38 = v85;
      if ((v81 & 0xC000000000000001) != 0)
      {
        v39 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v40 = [swift_unknownObjectRetain() productConfigId];
          if (v40)
          {
            v41 = v40;
            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            v42 = 0;
            v44 = 0;
          }

          v85 = v38;
          v46 = v38[2];
          v45 = v38[3];
          if (v46 >= v45 >> 1)
          {
            sub_10019F504((v45 > 1), v46 + 1, 1);
            v38 = v85;
          }

          ++v39;
          v38[2] = v46 + 1;
          v47 = &v38[2 * v46];
          v47[4] = v42;
          v47[5] = v44;
        }

        while (v37 != v39);
      }

      else
      {
        v48 = (v81 + 32);
        do
        {
          v49 = *v48;
          v50 = [v49 productConfigId];
          if (v50)
          {
            v51 = v50;
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;
          }

          else
          {

            v52 = 0;
            v54 = 0;
          }

          v85 = v38;
          v56 = v38[2];
          v55 = v38[3];
          if (v56 >= v55 >> 1)
          {
            sub_10019F504((v55 > 1), v56 + 1, 1);
            v38 = v85;
          }

          v38[2] = v56 + 1;
          v57 = &v38[2 * v56];
          v57[4] = v52;
          v57[5] = v54;
          ++v48;
          --v37;
        }

        while (v37);
      }

      v34 = v78;
      v35 = v80;
      v32 = v73;
      v29 = v74;
    }

    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    v58 = Array.description.getter();
    v60 = v59;

    v61 = sub_1002FFA0C(v58, v60, &v86);

    v62 = v83;
    *(v83 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v29, v82, "%s: credential configs include %s", v62, 0x16u);
    swift_arrayDestroy();

    v33 = v79;
    v28 = v81;
  }

  else
  {
  }

  if (v32)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
    if (v63)
    {
      goto LABEL_36;
    }

LABEL_54:
    v6 = _swiftEmptyArrayStorage;
LABEL_55:

    return v6;
  }

  v63 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_54;
  }

LABEL_36:
  v64 = 0;
  v82 = v28 & 0xFFFFFFFFFFFFFF8;
  v83 = v28 & 0xC000000000000001;
  v65 = (v35 + 48);
  v66 = (v35 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (v83)
  {
    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v68 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_50;
    }

LABEL_42:
    sub_100093A54(v67, v34);
    if ((*v65)(v34, 1, v33) == 1)
    {
      sub_100075768(v34, &qword_100502D50, &qword_100414C30);
    }

    else
    {
      v69 = *v66;
      (*v66)(v84, v34, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10012EDA4(0, v6[2] + 1, 1, v6);
      }

      v71 = v6[2];
      v70 = v6[3];
      if (v71 >= v70 >> 1)
      {
        v6 = sub_10012EDA4(v70 > 1, v71 + 1, 1, v6);
      }

      v6[2] = v71 + 1;
      v33 = v79;
      v69(v6 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v71);
      v34 = v78;
      v28 = v81;
    }

    ++v64;
    if (v68 == v63)
    {
      goto LABEL_55;
    }
  }

  if (v64 >= *(v82 + 16))
  {
    goto LABEL_51;
  }

  v67 = *(v28 + 8 * v64 + 32);
  v68 = v64 + 1;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_42;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_4:
  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10051B2C8);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100462070, &v86);
    *(v20 + 12) = 2080;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_1002FFA0C(v21, v22, &v86);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: CoreData error %s encountered while fetching entity", v20, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();

  return v6;
}

void sub_1000951CC(uint64_t a1, void *a2, void *a3)
{
  v64 = a3;
  v5 = type metadata accessor for UUID();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SECCredentialConfig();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v17 = *(a1 + 160);
  v16 = *(a1 + 168);
  v18 = objc_allocWithZone(NSFetchRequest);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithEntityName:v19];

  type metadata accessor for CredentialMetadataEntity();
  v21 = v66;
  v22 = NSManagedObjectContext.fetch<A>(_:)();
  if (v21)
  {
  }

  else
  {
    v65 = v15;
    v58 = v13;
    v24 = v9;
    v53 = v8;
    v48 = v20;
    v54 = v5;
    v25 = v64[2];
    if (v25)
    {
      v66 = *(v59 + 16);
      v26 = v64 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v62 = *(v59 + 72);
      v63 = v22;
      v61 = (v59 + 8);
      v50 = (v57 + 8);
      v51 = "getCredentialMetadata(with:)";
      *&v23 = 136315394;
      v49 = v23;
      v27 = 0;
      v28 = v65;
      v52 = a2;
      v59 += 16;
      v60 = v24;
      for (i = v66(v65, v26, v24); ; i = v66(v28, v26, v24))
      {
        __chkstk_darwin(i);
        *(&v47 - 2) = v28;
        v31 = sub_10011F6D0(sub_100095A54, (&v47 - 4), v63);
        if (v31)
        {
          v64 = v31;
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_1000958E4(v32, qword_10051B2C8);
          v33 = v58;
          v66(v58, v65, v24);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v57 = v27;
            v37 = v36;
            v56 = swift_slowAlloc();
            v67 = v56;
            *v37 = v49;
            *(v37 + 4) = sub_1002FFA0C(0xD00000000000001BLL, v51 | 0x8000000000000000, &v67);
            *(v37 + 12) = 2080;
            v38 = v53;
            SECCredentialConfig.configUUID.getter();
            v55 = UUID.uuidString.getter();
            v40 = v39;
            (*v50)(v38, v54);
            v30 = *v61;
            (*v61)(v33, v60);
            v41 = sub_1002FFA0C(v55, v40, &v67);
            a2 = v52;

            *(v37 + 14) = v41;
            _os_log_impl(&_mh_execute_header, v34, v35, "%s deleting credential config %s", v37, 0x16u);
            swift_arrayDestroy();

            v27 = v57;

            v24 = v60;
          }

          else
          {

            v24 = v60;
            v30 = *v61;
            (*v61)(v33, v60);
          }

          v42 = v64;
          [a2 deleteObject:v64];

          v28 = v65;
        }

        else
        {
          v30 = *v61;
        }

        v30(v28, v24);
        v26 += v62;
        if (!--v25)
        {
          break;
        }
      }
    }

    v67 = 0;
    v43 = [a2 save:&v67];
    v44 = v48;
    if (v43)
    {
      v45 = v67;
    }

    else
    {
      v46 = v67;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100095770(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  SECCredentialConfig.configUUID.getter();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = [v7 productConfigId];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000958E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10009591C()
{
  result = qword_100504260;
  if (!qword_100504260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504260);
  }

  return result;
}

unint64_t sub_100095970()
{
  result = qword_100502D30;
  if (!qword_100502D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100502D30);
  }

  return result;
}

unint64_t sub_1000959BC()
{
  result = qword_100502D38;
  if (!qword_100502D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502D38);
  }

  return result;
}

uint64_t sub_100095A10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SECMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100095A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v63 = a2;
  v4 = sub_100068FC4(&qword_100502F10, &qword_10040A010);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v7 = &v55 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = v9[13];
  v15(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v64 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = v9[1];
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    v24 = swift_once();
    goto LABEL_13;
  }

  v57 = v16;
  v58 = v15;
  v59 = v14;
  v16 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 1)
  {
    sub_100099870(3);
  }

  v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  v17 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state);
  v18 = Logger.logObject.getter();
  if (v17)
  {
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Already running", v20, 2u);
    }

    v21 = 2;
    goto LABEL_31;
  }

  v56 = v8;
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v18, v22, "Starting Owner Pairing", v23, 2u);
  }

  v55 = v9 + 13;

  if (qword_1005019E8 != -1)
  {
    goto LABEL_39;
  }

LABEL_13:
  v25 = *(off_100504A68 + 3);
  __chkstk_darwin(v24);
  v26 = v64;
  *(&v55 - 2) = v3;
  *(&v55 - 1) = v26;
  os_unfair_lock_lock(v25 + 8);
  sub_1000B3FD8(&v25[4]);
  os_unfair_lock_unlock(v25 + 8);
  *(v16 + v3) = 2;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s");
  *(v15 + v3) = 1;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
  v27 = (v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v28 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v29 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
  v30 = v63;
  *v27 = v62;
  v27[1] = v30;
  sub_1000B2A4C(v28);
  v31 = qword_100501B78;

  if (v31 != -1)
  {
    swift_once();
  }

  if (byte_10051B5B8 != 1)
  {
    v21 = 4;
LABEL_31:
    sub_100099870(v21);
    return;
  }

  v62 = 0;
  *&v65[0] = 893797958;
  *(&v65[0] + 1) = 0xE400000000000000;
  v67 = 0;
  v68 = 0;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v32 = v61;
  UserDefaultBacked.wrappedValue.getter();
  (*(v60 + 8))(v7, v32);
  v60 = *(&v65[0] + 1);
  v61 = *&v65[0];
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v63 = qword_10051B288;
  sub_100068FC4(&unk_100504720, &qword_100414C40);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100409900;
  *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v33 + 40) = v34;
  *(v33 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v33 + 56) = v35;
  sub_100068FC4(&qword_100503F10, &qword_10040A008);
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100409A40;
  v41 = v40 + v39;
  if (qword_100501D30 != -1)
  {
    swift_once();
  }

  v42 = sub_1000958E4(v36, qword_10051B7A0);
  v43 = *(v37 + 16);
  v43(v41, v42, v36);
  if (qword_100501D20 != -1)
  {
    swift_once();
  }

  v44 = sub_1000958E4(v36, qword_10051B770);
  v43(v41 + v38, v44, v36);
  v45 = v41 + 2 * v38;
  if (qword_100501D28 != -1)
  {
    swift_once();
  }

  v46 = sub_1000958E4(v36, qword_10051B788);
  v43(v45, v46, v36);
  if (qword_100501B98 != -1)
  {
    swift_once();
  }

  v47 = *(qword_10051B5F8 + 16);
  type metadata accessor for DSKBLE.BLEScanRequest();
  v48 = swift_allocObject();
  v49 = v60;
  *(v48 + 16) = v61;
  *(v48 + 24) = v49;
  *(v48 + 32) = 196;
  *(v48 + 56) = 0;
  *(v48 + 64) = v47;
  *(v48 + 40) = v33;
  *(v48 + 48) = v40;
  *(v48 + 72) = 0;
  *(v48 + 80) = 0;
  *(v48 + 88) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = sub_1000B387C;
  *(v48 + 112) = v3;
  *(v48 + 120) = sub_1000B389C;
  *(v48 + 128) = v3;
  *(v48 + 136) = sub_1000B38B4;
  *(v48 + 144) = v3;
  *(v48 + 152) = sub_1000B38B8;
  *(v48 + 160) = v3;
  *(v48 + 168) = sub_1000B38BC;
  *(v48 + 176) = v3;
  *(v48 + 184) = sub_1000B38C0;
  *(v48 + 192) = v3;
  *(v48 + 200) = 0;
  *(v48 + 208) = 0;
  swift_retain_n();

  v50 = v62;
  sub_1000E7EB0(v48);

  if (!v50)
  {
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v51 = qword_10051B5A0;
    v52 = v64;
    *v12 = v64;
    v53 = v56;
    v58(v12, v59, v56);
    v54 = v52;
    LOBYTE(v52) = _dispatchPreconditionTest(_:)();
    v57(v12, v53);
    if (v52)
    {
      *(v51 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 1;
      if (qword_100501B70 == -1)
      {
LABEL_36:
        v66 = 0;
        memset(v65, 0, sizeof(v65));
        sub_1002400AC(0, v65);
        sub_100075768(v65, &qword_100502F08, &qword_10040A000);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_36;
  }

  *&v65[0] = v50;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast() && v67 == 3)
  {

    sub_100099870(0);
  }

  else
  {

    sub_100099870(2);
  }
}

void sub_100096454()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode);
    v10 = Logger.logObject.getter();
    if (v9 == 2)
    {
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Stopping", v12, 2u);
      }

      sub_100099870(2);
    }

    else
    {
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, v13, "Not running", v14, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000966A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "pairingEnded", v13, 2u);
      }

      if (a1)
      {
        swift_errorRetain();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          swift_errorRetain();
          v18 = _swift_stdlib_bridgeErrorToNSError();
          *(v16 + 4) = v18;
          *v17 = v18;
          _os_log_impl(&_mh_execute_header, v14, v15, "Pairing ended with error %@", v16, 0xCu);
          sub_100075768(v17, &unk_100503F70, &unk_10040B2E0);
        }

        sub_100099870(2);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10009695C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v18 = sub_100239160(0, 12, a1, a2);
    v20 = v19;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v18, v20, v10);
    sub_10006A178(v18, v20);

    return 0;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2)
  {
    sub_100069DD8();
    result = swift_allocError();
    *v21 = 2;
    return result;
  }

  v10 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  if (v10)
  {
    v13 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1002FFA0C(1430540353, 0xE400000000000000, v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "Sending %s", v16, 0xCu);
      sub_1000752F4(v17);
    }

    if (qword_100501B60 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Missing peer", v24, 2u);
  }

  sub_100099870(2);
  sub_100069DD8();
  result = swift_allocError();
  *v25 = 2;
  return result;
}

void sub_100096E44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Session ended", v10, 2u);
      }

      sub_100099870(6);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10009701C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v20 = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v44 = v5;
    v21 = __chkstk_darwin(v20);
    v13 = &v40[-32];
    *&v40[-16] = a1;
    *&v40[-8] = a2;
    if (qword_1005019E8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v21 = swift_once();
LABEL_5:
  v22 = __chkstk_darwin(v21);
  *&v40[-16] = sub_1000B3C64;
  *&v40[-8] = v13;
  v24 = *(v23 + 24);
  __chkstk_darwin(v22);
  *&v40[-32] = sub_1000B3FF8;
  *&v40[-24] = v25;
  *&v40[-16] = v26;
  os_unfair_lock_lock(v24 + 8);
  sub_1000B3F58(&v24[4], aBlock);
  os_unfair_lock_unlock(v24 + 8);
  v27 = aBlock[0];
  if (aBlock[0])
  {
    v28 = [aBlock[0] blePairingRequest];
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      sub_100069E2C(a1, a2);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v42 = v32;
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v32 = 136315138;
        v48 = sub_100288788(a1, a2);
        v41 = v31;
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v33 = BidirectionalCollection<>.joined(separator:)();
        v35 = v34;

        v36 = sub_1002FFA0C(v33, v35, aBlock);

        v37 = v42;
        *(v42 + 1) = v36;
        _os_log_impl(&_mh_execute_header, v30, v41, "Request to start First Approach for %s", v37, 0xCu);
        sub_1000752F4(v43);
      }

      if (qword_100501D98 != -1)
      {
        swift_once();
      }

      v38 = swift_allocObject();
      v38[2] = a1;
      v38[3] = a2;
      v38[4] = v47;
      aBlock[4] = sub_1000B3CAC;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C6348;
      v39 = _Block_copy(aBlock);
      sub_100069E2C(a1, a2);

      static DispatchQoS.unspecified.getter();
      v48 = &_swiftEmptyArrayStorage;
      sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v39);
      (*(v44 + 8))(v8, v4);
      (*(v45 + 8))(v12, v46);
    }
  }
}

void sub_1000976F4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (&v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = v7 + 13;
  v145 = v7[13];
  v145(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v144 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v16 = v7[1];
  v15 = v7 + 1;
  v14 = v16;
  v16(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:

    v49 = v130;
LABEL_84:
    swift_deallocUninitializedObject();

    goto LABEL_109;
  }

  v141 = v12;
  v142 = v13;
  v143 = v14;
  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
  {
    v17 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
    if (v17 && (v18 = [v17 keyIdentifier]) != 0)
    {
      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v22 >> 60 != 15)
      {
        if (a2 >> 60 != 15)
        {
          sub_100069E2C(a1, a2);
          sub_10006A2BC(v20, v22);
          v23 = sub_10008FB4C(v20, v22, a1, a2);
          sub_10006A2D0(v20, v22);
          sub_10006A2D0(a1, a2);
          sub_10006A2D0(v20, v22);
          if (v23)
          {
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        sub_100069E2C(a1, a2);
        sub_10006A2D0(v20, v22);
        sub_10006A2D0(a1, a2);
        goto LABEL_15;
      }
    }

    else
    {
      v20 = 0;
      v22 = 0xF000000000000000;
    }

    if (a2 >> 60 == 15)
    {
      sub_100069E2C(a1, a2);
      sub_10006A2D0(v20, v22);
      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  v24 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
  swift_beginAccess();
  v140 = v24;
  v25 = *(v3 + v24);

  v26 = sub_1000C66AC(a1, a2, v25);

  if (v26)
  {
    return;
  }

  v28 = __chkstk_darwin(v27);
  *(&v125 - 2) = a1;
  *(&v125 - 1) = a2;
  if (qword_1005019E8 != -1)
  {
    v28 = swift_once();
  }

  v29 = __chkstk_darwin(v28);
  *(&v125 - 2) = sub_1000B356C;
  *(&v125 - 1) = (&v125 - 4);
  v31 = *(v30 + 24);
  __chkstk_darwin(v29);
  *(&v125 - 4) = sub_10006A280;
  *(&v125 - 3) = v32;
  v138 = v33;
  *(&v125 - 2) = v33;
  os_unfair_lock_lock(v31 + 8);
  sub_1000B358C(&v31[4], v147);
  os_unfair_lock_unlock(v31 + 8);
  v34 = v147[0];
  if (!v147[0])
  {
    return;
  }

  v131 = v15;
  v35 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  sub_100069E2C(a1, a2);
  v139 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  sub_10006A178(a1, a2);
  v38 = os_log_type_enabled(v36, v37);
  v134 = a2;
  v133 = a1;
  v132 = v6;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v147[0] = v136;
    *v39 = 136315138;
    v40 = sub_100288788(a1, a2);
    v137 = 0;
    v146[0] = v40;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v41 = BidirectionalCollection<>.joined(separator:)();
    v43 = v42;

    v44 = sub_1002FFA0C(v41, v43, v147);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Starting First Approach for %s", v39, 0xCu);
    sub_1000752F4(v136);
  }

  else
  {
    v137 = 0;
  }

  v45 = [v34 deviceConfiguration];
  if (!v45)
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Missing device configuration", v62, 2u);
    }

    return;
  }

  v46 = v45;
  v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v52 = [v50 TLVsWithData:isa];

  v135 = v34;
  if (!v52)
  {
    goto LABEL_110;
  }

  v53 = sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v54 >> 62)
  {
    v55 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = v47;
  v130 = v49;
  if (!v55)
  {
LABEL_108:

    v49 = v130;
    goto LABEL_109;
  }

  v128 = v53;
  v56 = 0;
  while (1)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v57 = *(v54 + 8 * v56 + 32);
    }

    v58 = v57;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_94;
    }

    if ([v57 tag] == 32585)
    {
      break;
    }

    ++v56;
    if (v59 == v55)
    {
      goto LABEL_108;
    }
  }

  v63 = [v58 children];
  if (!v63)
  {
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    return;
  }

  v64 = v63;
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v65 >> 62)
  {
LABEL_106:
    v66 = _CocoaArrayWrapper.endIndex.getter();
    if (v66)
    {
      goto LABEL_43;
    }

    goto LABEL_107;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
LABEL_107:

    goto LABEL_108;
  }

LABEL_43:
  v67 = 0;
  v136 = v58;
  while ((v65 & 0xC000000000000001) == 0)
  {
    if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_98;
    }

    v68 = *(v65 + 8 * v67 + 32);
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_52;
    }

LABEL_47:
    v58 = v68;
    if ([v68 tag] == 32594)
    {
      goto LABEL_53;
    }

    ++v67;
    v58 = v136;
    if (v69 == v66)
    {
      goto LABEL_107;
    }
  }

  v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v69 = v67 + 1;
  if (!__OFADD__(v67, 1))
  {
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  v126 = v58;
  v70 = [v58 children];
  if (!v70)
  {
    goto LABEL_121;
  }

  v65 = v70;
  v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v71 >> 62)
  {
LABEL_116:
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v58 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = swift_allocObject();
  if (v58)
  {
    v72 = 0;
    v73 = v71 & 0xC000000000000001;
    v74 = v71 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v73)
      {
        v75 = v71;
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v72 >= *(v74 + 16))
        {
          goto LABEL_105;
        }

        v75 = v71;
        v76 = *(v71 + 8 * v72 + 32);
      }

      v65 = v76;
      v71 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if ([v76 tag] == 208)
      {
        break;
      }

      ++v72;
      v77 = v71 == v58;
      v71 = v75;
      if (v77)
      {
        goto LABEL_67;
      }
    }

    v78 = [v65 value];

    v49 = v130;
    if (!v78)
    {

      goto LABEL_68;
    }

    v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = v127;
    *(v127 + 16) = v79;
    *(v82 + 24) = v81;
    v83 = [v126 children];
    if (!v83)
    {
      goto LABEL_122;
    }

    v84 = v83;

    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v54 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v128 = swift_allocObject();
    if (!v65)
    {
LABEL_83:

      goto LABEL_84;
    }

    v85 = 0;
    while (1)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v85 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_115;
        }

        v86 = *(v54 + 8 * v85 + 32);
      }

      v87 = v86;
      v71 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if ([v86 tag] == 209)
      {
        break;
      }

      ++v85;
      v49 = v130;
      if (v71 == v65)
      {
        goto LABEL_83;
      }
    }

    v88 = [v87 value];

    if (!v88)
    {
      goto LABEL_96;
    }

    v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92 = v128;
    *(v128 + 16) = v89;
    *(v92 + 24) = v91;
    v93 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v147[3] = v93;
    v147[4] = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28);
    LOBYTE(v147[0]) = 0;
    LOBYTE(v146[0]) = *sub_1000752B0(v147, v93);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(v147);
    v94 = v127;
    sub_1000A517C();
    swift_beginAccess();
    v95 = v133;
    v96 = v134;
    sub_100069E2C(v133, v134);
    sub_1000D589C(v146, v95, v96);
    swift_endAccess();
    v97 = sub_10006A178(v146[0], v146[1]);
    v98 = *(v138 + 24);
    __chkstk_darwin(v97);
    v99 = v144;
    *(&v125 - 2) = v3;
    *(&v125 - 1) = v99;
    os_unfair_lock_lock(v98 + 8);
    sub_1000B35E4(&v98[4]);
    os_unfair_lock_unlock(v98 + 8);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v65 = qword_10051B288;
    v54 = swift_allocObject();
    *(v54 + 16) = v128;
    *(v54 + 24) = v3;
    *(v54 + 32) = v95;
    *(v54 + 40) = v96;
    *(v54 + 48) = v94;
    *v10 = v99;
    v100 = v99;
    v101 = v132;
    v145(v10, v141, v132);
    v102 = v100;
    v103 = v95;
    sub_100069E2C(v95, v96);

    v104 = _dispatchPreconditionTest(_:)();
    v143(v10, v101);
    if (v104)
    {
      v105 = *(v65 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
      if (v105 == 10 || v105 == 5)
      {
        v106 = v65;
        v107 = v128;
        swift_beginAccess();
        v108 = v107[2];
        v109 = v107[3];
        sub_100069E2C(v103, v96);
        v110 = v127;

        sub_100069E2C(v108, v109);
        sub_100111E28(v108, v109, v106, v103, v96, v3, v107, v110);

        sub_10006A178(v103, v96);
        sub_10006A178(v108, v109);
        v111 = v136;
        v112 = v130;
        goto LABEL_102;
      }

LABEL_98:
      v104 = swift_allocObject();
      *(v104 + 16) = sub_1000B3618;
      *(v104 + 24) = v54;
      v3 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
      swift_beginAccess();
      v95 = *(v65 + v3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v65;
      *(v65 + v3) = v95;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_99:
        v115 = v95[2];
        v114 = v95[3];
        if (v115 >= v114 >> 1)
        {
          v95 = sub_10012E6B0((v114 > 1), v115 + 1, 1, v95);
        }

        v95[2] = v115 + 1;
        v116 = &v95[3 * v115];
        *(v116 + 32) = 1;
        v116[5] = sub_1000B3FF0;
        v116[6] = v104;
        *(v101 + v3) = v95;
        swift_endAccess();
        v112 = v130;
        v111 = v136;
LABEL_102:

        sub_10006A178(v129, v112);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    v95 = sub_10012E6B0(0, v95[2] + 1, 1, v95);
    *(v101 + v3) = v95;
    goto LABEL_99;
  }

LABEL_67:

  v49 = v130;
LABEL_68:

  swift_deallocUninitializedObject();
LABEL_109:
  v47 = v129;
LABEL_110:
  sub_100069E2C(v47, v49);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();
  sub_10006A178(v47, v49);
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v147[0] = v120;
    *v119 = 136315138;
    v146[0] = sub_100288788(v47, v49);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v121 = BidirectionalCollection<>.joined(separator:)();
    v123 = v122;

    v124 = sub_1002FFA0C(v121, v123, v147);

    *(v119 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v117, v118, "Invalid device configuration %s", v119, 0xCu);
    sub_1000752F4(v120);

    sub_10006A178(v47, v49);
  }

  else
  {

    sub_10006A178(v47, v49);
  }
}
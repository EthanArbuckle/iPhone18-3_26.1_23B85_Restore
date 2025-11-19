void sub_1000F3B5C(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, uint64_t a5)
{
  v140 = a3;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v17 = *&v5[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager];
  if (v17)
  {
    v146 = a5;
    v138 = a2;
    v139 = a1;
    v136 = a4;
    v137 = a4;
    v18 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v143 = v17;
    v144 = v5;
    v142 = *&v5[v18];
    if ((v142 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v19 = v17;
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v20 = v151;
      v21 = v152;
      v22 = v153;
      v23 = v154;
      v24 = v155;
    }

    else
    {
      v28 = -1 << *(v142 + 32);
      v21 = v142 + 56;
      v22 = ~v28;
      v29 = -v28;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v24 = v30 & *(v142 + 56);
      v20 = v142;
      swift_bridgeObjectRetain_n();
      v31 = v17;
      v23 = 0;
    }

    v141 = v22;
    v32 = (v22 + 64) >> 6;
    if (v20 < 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v33 = v23;
    v34 = v24;
    v35 = v23;
    if (!v24)
    {
      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
          goto LABEL_26;
        }

        v34 = *(v21 + 8 * v35);
        ++v33;
        if (v34)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_19:
    v36 = (v34 - 1) & v34;
    v37 = *(*(v20 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));

    if (!v37)
    {
LABEL_26:
      sub_100093854();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v149 = v44;
        *v43 = 136315138;
        v45 = UUID.uuidString.getter();
        v47 = sub_1002FFA0C(v45, v46, &v149);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "Peripheral is not connected %s", v43, 0xCu);
        sub_1000752F4(v44);
      }

      return;
    }

    while (1)
    {
      v145 = v24;
      v39 = *(v37 + 16);

      v40 = static UUID.== infix(_:_:)();

      if (v40)
      {
        break;
      }

      v23 = v35;
      v24 = v36;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_21:
      v38 = __CocoaSet.Iterator.next()();
      if (v38)
      {
        *&v148[0] = v38;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v37 = v149;
        v35 = v23;
        v36 = v24;
        if (v149)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v48 = v140;
    v49 = v140 & 1;
    sub_100093854();

    v50 = v138;
    v51 = v139;
    *(v37 + 176) = v139;
    *(v37 + 184) = v50;
    *(v37 + 192) = v49;
    v21 = v37;
    if (v48)
    {

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v149 = v55;
        *v54 = 136315138;
        v56 = UUID.uuidString.getter();
        v58 = sub_1002FFA0C(v56, v57, &v149);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Disabling RSSI zone detection for %s", v54, 0xCu);
        sub_1000752F4(v55);
      }

      v59 = *(v37 + 24);
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v149 + 1) = v61;
      v62 = v59;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 0;
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v64 = v143;
      [v143 setRSSIStatisticsDetection:v62 options:isa];

      *(v21 + 168) = 2;

      return;
    }

    swift_beginAccess();
    v65 = *(v37 + 64);
    v66 = *(v37 + 72);
    v67 = sub_1000752B0((v37 + 40), v65);
    v68 = *(v65 - 8);
    v69 = *(v68 + 64);
    __chkstk_darwin(v67);
    v71 = &v135 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v68 + 16))(v71);
    LOBYTE(v66) = (*(v66 + 72))(v65, v66);
    (*(v68 + 8))(v71, v65);
    if (v66)
    {
      v72 = v50;
      v73 = v37;
      if (*(v37 + 168) == 2)
      {
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "Starting RSSI zone detection", v76, 2u);
        }

        *(v37 + 168) = 1;
      }

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 134218240;
        *(v79 + 4) = v51;
        *(v79 + 12) = 2048;
        *(v79 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v77, v78, "Enabling AOP based zone detection thresholds closer %ld further %ld", v79, 0x16u);
      }

      sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_10040A530;
      *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v80 + 40) = v81;
      *(v80 + 72) = &type metadata for Bool;
      *(v80 + 48) = 1;
      *(v80 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v80 + 88) = v82;
      *(v80 + 120) = &type metadata for Int;
      *(v80 + 96) = 3;
      *(v80 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v80 + 136) = v83;
      *(v80 + 168) = &type metadata for Int;
      *(v80 + 144) = 130;
      *(v80 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v80 + 184) = v84;
      *(v80 + 216) = &type metadata for Int;
      *(v80 + 192) = v51;
      *(v80 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v80 + 232) = v85;
      *(v80 + 264) = &type metadata for Int;
      *(v80 + 240) = v72;
      *(v80 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v80 + 280) = v86;
      *(v80 + 312) = &type metadata for Int;
      *(v80 + 288) = 1;
      v87 = sub_10008FFDC(v80);
      swift_setDeallocating();
      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if ((v137 & 0x100) == 0)
      {
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.info.getter();
        v90 = os_log_type_enabled(v88, v89);
        v91 = v136;
        if (v90)
        {
          v92 = swift_slowAlloc();
          *v92 = 16777472;
          v92[4] = v91;
          _os_log_impl(&_mh_execute_header, v88, v89, "Using peripheral TX power value %hhd", v92, 5u);
        }

        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;
        v150 = &type metadata for Int8;
        LOBYTE(v149) = v91;
        sub_100075D50(&v149, v148);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v87;
        sub_100315178(v148, v93, v95, isUniquelyReferenced_nonNull_native);

        v87 = v147;
      }

      v97 = *(v73 + 24);
      sub_1001950D4(v87);

      v98.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v99 = v143;
      [v143 setRSSIStatisticsDetection:v97 options:v98.super.isa];
      goto LABEL_63;
    }

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 134218240;
      *(v102 + 4) = v51;
      *(v102 + 12) = 2048;
      *(v102 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v100, v101, "Requested RSSI thresholds closer %ld further %ld", v102, 0x16u);
    }

    v24 = v50;

    if (*(v37 + 168) == 2)
    {
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Starting RSSI zone detection", v105, 2u);
      }

      *(v37 + 168) = 1;
      goto LABEL_53;
    }

    v106 = *(v37 + 24);
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1004098F0;
    *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v149 + 1) = v108;
    v109 = v106;
    AnyHashable.init<A>(_:)();
    *(v107 + 96) = &type metadata for Bool;
    *(v107 + 72) = 0;
    sub_100090BC4(v107);
    swift_setDeallocating();
    sub_100075768(v107 + 32, &qword_100502C48, &qword_10040B2D0);
    swift_deallocClassInstance();
    v110 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v143 setRSSIStatisticsDetection:v109 options:v110];

    v111 = *(v37 + 168);
    if (v111 != 2)
    {
      if ((v111 & 1) == 0)
      {
LABEL_58:
        v124 = v144;
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 134218240;
          *(v127 + 4) = 10;

          *(v127 + 12) = 2048;
          *(v127 + 14) = v24;
          _os_log_impl(&_mh_execute_header, v125, v126, "Current zone closer setting thresholds closer %ld further %ld", v127, 0x16u);
        }

        else
        {

          v125 = v124;
        }

        v128 = *(v21 + 24);
        sub_100068FC4(&unk_100503F50, &unk_10040D950);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_10040AA50;
        *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v149 + 1) = v130;
        v97 = v128;
        AnyHashable.init<A>(_:)();
        *(v129 + 96) = &type metadata for Bool;
        *(v129 + 72) = 1;
        *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v149 + 1) = v131;
        AnyHashable.init<A>(_:)();
        *(v129 + 168) = &type metadata for Int;
        *(v129 + 144) = 2;
        *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v149 + 1) = v132;
        AnyHashable.init<A>(_:)();
        *(v129 + 240) = &type metadata for Int;
        *(v129 + 216) = 10;
        *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v149 + 1) = v133;
        AnyHashable.init<A>(_:)();
        *(v129 + 312) = &type metadata for Int;
        *(v129 + 288) = v24;
        *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v149 + 1) = v134;
        AnyHashable.init<A>(_:)();
        *(v129 + 384) = &type metadata for Int;
        *(v129 + 360) = 1;
        sub_100090BC4(v129);
        swift_setDeallocating();
        sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_62;
      }

LABEL_53:
      v112 = v144;
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 134218240;
        v116 = v139;
        *(v115 + 4) = v139;
        *(v115 + 12) = 2048;
        *(v115 + 14) = -120;

        _os_log_impl(&_mh_execute_header, v113, v114, "Current zone further setting thresholds closer %ld further %ld", v115, 0x16u);
      }

      else
      {

        v113 = v112;
        v116 = v139;
      }

      v117 = *(v37 + 24);
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      v118 = swift_initStackObject();
      *(v118 + 16) = xmmword_10040AA50;
      *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v149 + 1) = v119;
      v97 = v117;
      AnyHashable.init<A>(_:)();
      *(v118 + 96) = &type metadata for Bool;
      *(v118 + 72) = 1;
      *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v149 + 1) = v120;
      AnyHashable.init<A>(_:)();
      *(v118 + 168) = &type metadata for Int;
      *(v118 + 144) = 2;
      *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v149 + 1) = v121;
      AnyHashable.init<A>(_:)();
      *(v118 + 240) = &type metadata for Int;
      *(v118 + 216) = v116;
      *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v149 + 1) = v122;
      AnyHashable.init<A>(_:)();
      *(v118 + 312) = &type metadata for Int;
      *(v118 + 288) = -120;
      *&v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v149 + 1) = v123;
      AnyHashable.init<A>(_:)();
      *(v118 + 384) = &type metadata for Int;
      *(v118 + 360) = 1;
      sub_100090BC4(v118);
      swift_setDeallocating();
      sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
      swift_arrayDestroy();
LABEL_62:
      v98.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v99 = v143;
      [v143 setRSSIStatisticsDetection:v97 options:v98.super.isa];
LABEL_63:

      return;
    }

LABEL_65:
    __break(1u);
    return;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Not running", v27, 2u);
  }
}

void sub_1000F4EB4(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v96 = a2;
  v97 = a3;
  v98 = a1;
  v7 = type metadata accessor for UUID();
  v100 = *(v7 - 8);
  v8 = v100[8];
  v9 = __chkstk_darwin(v7);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v91 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_43:
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v21 = v101;
  if (*(v101 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v22 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    v23 = swift_beginAccess();
    v24 = *(v21 + v22);
    __chkstk_darwin(v23);
    *(&v91 - 2) = a4;

    v25 = v5;
    v26 = sub_1000E3ABC(sub_100113B34, (&v91 - 4), v24);

    if (v26)
    {
      if (*(v26 + 32) - 3 <= 1)
      {
        v93 = v25;
        *(v26 + 32) = 4;
        swift_beginAccess();
        v27 = *(v26 + 64);
        v28 = *(v26 + 72);
        v29 = sub_1000752B0((v26 + 40), v27);
        v30 = *(v27 - 8);
        v31 = *(v30 + 64);
        __chkstk_darwin(v29);
        v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v30 + 16))(v33);
        v18 = (*(v28 + 8))(v27, v28);
        v13 = v34;
        (*(v30 + 8))(v33, v27);
        v35 = String._bridgeToObjectiveC()();

        a4 = objc_opt_self();
        v100 = [a4 UUIDWithString:v35];

        v95 = v26;
        v36 = [*(v26 + 24) services];
        if (v36)
        {
          v37 = v36;
          sub_10009393C(0, &unk_100503EE0, CBService_ptr);
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v94 = a4;
          if (v5 >> 62)
          {
            goto LABEL_47;
          }

          v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            while (1)
            {
              v7 = 0;
              v99 = (v5 & 0xC000000000000001);
              v15 = v5 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v99)
                {
                  v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_42;
                  }

                  v38 = *(v5 + 8 * v7 + 32);
                }

                v39 = v38;
                v11 = (v7 + 1);
                if (__OFADD__(v7, 1))
                {
                  __break(1u);
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v13 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
                v18 = [v39 UUID];
                a4 = static NSObject.== infix(_:_:)();

                if (a4)
                {
                  break;
                }

                ++v7;
                if (v11 == v14)
                {
                  goto LABEL_48;
                }
              }

              isa = UUID._bridgeToObjectiveC()().super.isa;
              v99 = [v94 UUIDWithNSUUID:isa];

              v92 = v39;
              v69 = [v39 characteristics];
              a4 = v101;
              if (!v69)
              {
                break;
              }

              v70 = v69;
              sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
              v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v5 >> 62)
              {
                v71 = _CocoaArrayWrapper.endIndex.getter();
                if (!v71)
                {
LABEL_54:

                  break;
                }
              }

              else
              {
                v71 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v71)
                {
                  goto LABEL_54;
                }
              }

              v72 = 0;
              v94 = (v5 & 0xC000000000000001);
              while (1)
              {
                if (v94)
                {
                  v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v72 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_46;
                  }

                  v73 = *(v5 + 8 * v72 + 32);
                }

                v74 = v73;
                v11 = (v72 + 1);
                if (__OFADD__(v72, 1))
                {
                  break;
                }

                v18 = [v73 UUID];
                v75 = static NSObject.== infix(_:_:)();

                if (v75)
                {

                  v76 = v95;
                  swift_beginAccess();
                  v78 = v96;
                  v77 = v97;
                  sub_100069E2C(v96, v97);
                  v79 = *(v76 + 96);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v104 = *(v76 + 96);
                  *(v76 + 96) = 0x8000000000000000;
                  sub_100315A7C(v78, v77, v98, isUniquelyReferenced_nonNull_native);
                  *(v76 + 96) = v104;
                  swift_endAccess();
                  v81 = *(v76 + 24);
                  v40 = Data._bridgeToObjectiveC()().super.isa;
                  [v81 writeValue:v40 forCharacteristic:v74 type:0];

                  goto LABEL_20;
                }

                ++v72;
                a4 = v101;
                if (v11 == v71)
                {
                  goto LABEL_54;
                }
              }

LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              v14 = _CocoaArrayWrapper.endIndex.getter();
              if (!v14)
              {
                goto LABEL_48;
              }
            }

            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&_mh_execute_header, v87, v88, "Peripheral's characteristic is null", v89, 2u);
            }

            sub_1000E1E2C();
            swift_allocError();
            *v90 = 2;
            swift_willThrow();

            v86 = v99;
            goto LABEL_52;
          }

LABEL_48:
        }

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "Peripheral's service is null", v84, 2u);
        }

        sub_1000E1E2C();
        swift_allocError();
        *v85 = 2;
        swift_willThrow();

        v86 = v100;
LABEL_52:

        return;
      }

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v103[0] = v61;
        *v60 = 136315138;
        v102 = *(v26 + 32);
        v62 = String.init<A>(describing:)();
        v64 = sub_1002FFA0C(v62, v63, v103);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "Writing a characteristic in a bad state %s", v60, 0xCu);
        sub_1000752F4(v61);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v65 = 2;
      swift_willThrow();
    }

    else
    {
      v43 = v100;
      v44 = v100[2];
      v44(v13, v98, v7);
      v44(v11, a4, v7);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v103[0] = v101;
        *v47 = 136315394;
        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        LODWORD(v99) = v46;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v98 = v45;
        v51 = v43[1];
        v51(v13, v7);
        v52 = sub_1002FFA0C(v48, v50, v103);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2080;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v51(v11, v7);
        v56 = sub_1002FFA0C(v53, v55, v103);

        *(v47 + 14) = v56;
        v57 = v98;
        _os_log_impl(&_mh_execute_header, v98, v99, "Writing characteristic %s for disconnected/unknown peripheral %s", v47, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v66 = v43[1];
        v66(v11, v7);
        v66(v13, v7);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v67 = 4;
      swift_willThrow();
    }
  }

  else
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Not running", v42, 2u);
    }

LABEL_20:
  }
}

uint64_t sub_1000F5BA8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_1000F5CB8(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v6);
    if ((v13 & 1) == 0)
    {
      __break(1u);
LABEL_49:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_50:

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v77[0] = v67;
          *v66 = 136315138;
          v68 = a1 + *v3;
          v69 = UUID.uuidString.getter();
          v71 = sub_1002FFA0C(v69, v70, v77);

          *(v66 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v64, v65, "Peripheral not found for %s", v66, 0xCu);
          sub_1000752F4(v67);
        }

        goto LABEL_45;
      }

LABEL_39:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_55;
        }

        v53 = *(v6 + 32);
      }

      v54 = v53;

      v55 = *(v13 + 56);
      *(v13 + 56) = v54;

LABEL_43:
      v56 = *(v13 + 48);
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;
      v78 = &type metadata for Bool;
      LOBYTE(v77[0]) = 1;
      sub_100075D50(v77, v76);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v56;
      sub_100315178(v76, v57, v59, isUniquelyReferenced_nonNull_native);

      v61 = *(v13 + 56);
      if (v61)
      {
        v62 = v61;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 connectPeripheral:v62 options:isa];

LABEL_45:
        return;
      }

LABEL_55:
      __break(1u);
      return;
    }

    v14 = *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v14 || (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) & 1) != 0)
    {
      return;
    }

    v15 = *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
    if (v15 != 10 && v15 != 5)
    {
      return;
    }

    v17 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    v18 = v14;

    v72[0] = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v73 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v79[0] = v23;
      *v22 = 136315138;
      v24 = UUID.uuidString.getter();
      v26 = sub_1002FFA0C(v24, v25, v79);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Resetting disconnection history for %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    v74 = a1;
    v27 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v7 = *(v4 + v27);
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v28 = *(v4 + v27);
      }

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v29, type metadata accessor for DSKBLE.BLEConnectionRequest);
      Set.Iterator.init(_cocoa:)();
      v3 = v79[0];
      v30 = v79[1];
      v31 = v79[2];
      v6 = v79[3];
      v32 = v79[4];
    }

    else
    {
      v33 = -1 << *(v7 + 32);
      v30 = v7 + 56;
      v31 = ~v33;
      v34 = -v33;
      v35 = v34 < 64 ? ~(-1 << v34) : -1;
      v32 = v35 & *(v7 + 56);
      v36 = *(v4 + v27);
      swift_bridgeObjectRetain_n();
      v6 = 0;
      v3 = v7;
    }

    v72[1] = v31;
    v2 = ((v31 + 64) >> 6);
    if (v3 < 0)
    {
      break;
    }

LABEL_21:
    v37 = v6;
    v38 = v32;
    v10 = v6;
    if (v32)
    {
LABEL_25:
      a1 = (v38 - 1) & v38;
      v13 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v38)))));

      if (v13)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    while (1)
    {
      v10 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_32;
      }

      v38 = *(v30 + 8 * v10);
      ++v37;
      if (v38)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  while (1)
  {
    v39 = __CocoaSet.Iterator.next()();
    if (!v39)
    {
      break;
    }

    *&v76[0] = v39;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v13 = v77[0];
    v10 = v6;
    a1 = v32;
    if (!v77[0])
    {
      break;
    }

LABEL_29:
    v40 = *(v13 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    if (static UUID.== infix(_:_:)())
    {
      sub_100093854();

      v2 = v73;
      if (*(v13 + 56))
      {
        goto LABEL_43;
      }

      sub_100068FC4(&qword_100503F10, &qword_10040A008);
      v46 = type metadata accessor for UUID();
      v47 = *(v46 - 8);
      v48 = *(v47 + 72);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1004098F0;
      v3 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      a1 = v74;
      (*(v47 + 16))(v50 + v49, v74 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v46);
      v51 = Array._bridgeToObjectiveC()().super.isa;

      v52 = [v2 retrievePeripheralsWithIdentifiers:v51];

      sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v6 >> 62)
      {
        goto LABEL_49;
      }

      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    v6 = v10;
    v32 = a1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_32:
  sub_100093854();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v73;
  if (v43)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Connection request not found", v45, 2u);
  }
}

void sub_1000F6564(Swift::UInt a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v52 = a2;
  v53 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    v12 = enum case for DispatchPredicate.onQueue(_:);
    v13 = *(v7 + 104);
    v13(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v51 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    v14 = *(v7 + 8);
    v14(v10, v6);
    if ((v11 & 1) == 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (!*(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      break;
    }

    v50 = v5;
    v5 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPairedPeripherals;
    swift_beginAccess();
    v15 = *(v4 + v5);
    if (*(v15 + 16) && (v16 = sub_10008C9C8(v53), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 16 * v16);
      swift_bridgeObjectRetain_n();
      swift_endAccess();
      v49 = v18;

      swift_beginAccess();
      v19 = *(v4 + v5);
      if (*(v19 + 16) && (v20 = sub_10008C9C8(v53), (v21 & 1) != 0))
      {
        v22 = *(v19 + 56) + 16 * v20;
        v23 = *v22;
        v47 = *(v22 + 8);

        swift_endAccess();

        v48 = sub_1002254AC(v49, v52);

        if ((v48 & 1) != 0 && v47 == v50)
        {
          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v49 = v14;
    v27 = v13;
    v28 = v52;

    v29 = *(v4 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v4 + v5);
    *(v4 + v5) = 0x8000000000000000;
    sub_100315C58(v28, v50, v53, isUniquelyReferenced_nonNull_native);
    *(v4 + v5) = v54;
    swift_endAccess();
    v31 = v51;
    *v10 = v51;
    v27(v10, v12, v6);
    v32 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    v49(v10, v6);
    if ((v31 & 1) == 0)
    {
      goto LABEL_35;
    }

    v55 = &_swiftEmptySetSingleton;
    v6 = *(v4 + v5);
    v10 = (v6 + 64);
    v33 = 1 << *(v6 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v6 + 64);
    v36 = (v33 + 63) >> 6;
    v37 = *(v4 + v5);
    swift_bridgeObjectRetain_n();
    v38 = 0;
    v7 = 0;
    while (v35)
    {
      v39 = v38;
LABEL_25:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = *(v6 + 56) + ((v39 << 10) | (16 * v40));
      v42 = *v41;
      LODWORD(v5) = *(v41 + 8);

      sub_1002A3450(v43);
      if (v5 >= v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v5;
      }
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        v44 = [objc_allocWithZone(CBDiscovery) init];
        [v44 setBleRSSIThresholdHint:v7];
        sub_1000E4A60(v55);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v44 setDeviceFilter:isa];

        [v44 setDiscoveryFlags:570425344];
        sub_1000F733C(*(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName), *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName + 8), v44);

        return;
      }

      v35 = v10[v39];
      ++v38;
      if (v35)
      {
        v38 = v39;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
  }
}

void sub_1000F6AA4(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a2;
  v64 = a5;
  v62 = a4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    if (*(v6 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      if (!a3)
      {
        v51 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests;
        swift_beginAccess();
        if (!*(*(v6 + v51) + 16) || (sub_10008C9C8(a1), (v52 & 1) == 0))
        {
          swift_endAccess();
          return;
        }

        swift_endAccess();
        swift_beginAccess();
        sub_1000C57E8(0, 0, 0, 0, a1);
        goto LABEL_40;
      }

      v17 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests;
      swift_beginAccess();
      v18 = *(v6 + v17);
      if (*(v18 + 16) && (v19 = sub_10008C9C8(a1), (v20 & 1) != 0))
      {
        v21 = *(v18 + 56) + 32 * v19;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        sub_100113C1C(v63, a3);
        swift_bridgeObjectRetain_n();

        swift_endAccess();
        sub_100113BD8(v23, v22);
      }

      else
      {
        swift_endAccess();

        v23 = 0;
        v22 = 0;
      }

      swift_beginAccess();
      v29 = *(v6 + v17);
      if (*(v29 + 16) && (v30 = sub_10008C9C8(a1), (v31 & 1) != 0))
      {
        v32 = *(v29 + 56) + 32 * v30;
        v33 = *v32;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        v36 = v23;
        v37 = *(v32 + 24);

        swift_endAccess();
        v23 = v36;
        v38 = v35;
        sub_100113BD8(v33, v34);
        v39 = 1;
      }

      else
      {
        swift_endAccess();
        v38 = 0;
        v39 = 0;
      }

      swift_beginAccess();
      v40 = *(v6 + v17);
      if (*(v40 + 16) && (v41 = sub_10008C9C8(a1), (v42 & 1) != 0))
      {
        v43 = *(v40 + 56) + 32 * v41;
        v60 = v38;
        v61 = a1;
        v38 = v23;
        v44 = *v43;
        v45 = *(v43 + 8);
        v46 = v39;
        v47 = *(v43 + 16);
        v48 = *(v43 + 24);

        swift_bridgeObjectRetain_n();
        swift_endAccess();
        v49 = v45;
        v23 = v38;
        v39 = v46;
        LODWORD(v38) = v60;
        a1 = v61;
        sub_100113BD8(v44, v49);
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
        v48 = 0;
        if (!v22)
        {
LABEL_38:

LABEL_39:
          swift_beginAccess();
          v57 = *(v6 + v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v6 + v17);
          *(v6 + v17) = 0x8000000000000000;
          sub_100315784(v63, a3, v62, v64, a1, isUniquelyReferenced_nonNull_native);
          *(v6 + v17) = v65;
LABEL_40:
          swift_endAccess();
          sub_1000F7014();
          return;
        }
      }

      if (v23 == v63 && v22 == a3)
      {

        if (v38 == v62)
        {
          v50 = v39;
        }

        else
        {
          v50 = 0;
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & v53) != 1 || v38 != v62)
        {
          goto LABEL_38;
        }
      }

      if (v48)
      {
        v54 = v64;

        v56 = sub_1002249A8(v55, v54);

        swift_bridgeObjectRelease_n();
        if (v56)
        {

          return;
        }
      }

      goto LABEL_39;
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Not running", v28, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000F7014()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_20:
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v8 = *(v2 + 8);
  v2 += 8;
  v8(v5, v1);
  if (v6)
  {
    v5 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests;
    swift_beginAccess();
    v9 = 0;
    v1 = 0;
    v10 = *(v5 + v0);
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;
    do
    {
      if (!v13)
      {
        while (1)
        {
          v15 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v15 >= v14)
          {
            goto LABEL_15;
          }

          v13 = *(v10 + 64 + 8 * v15);
          ++v9;
          if (v13)
          {
            v9 = v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

      v15 = v9;
LABEL_12:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(*(*(v10 + 56) + ((v15 << 11) | (32 * v16)) + 24) + 16);
      v18 = __OFADD__(v1, v17);
      v1 += v17;
    }

    while (!v18);
    __break(1u);
LABEL_15:
    v24 = 0;
    v23 = _swiftEmptyArrayStorage;
    v19 = *(v5 + v0);
    v0 = v0;

    sub_100113EC4(v20, &v24, v1, &v23);

    v1 = [objc_allocWithZone(CBDiscovery) init];
    [v1 setBleRSSIThresholdHint:v24];
    [v1 setDiscoveryFlags:0x2000000];
    if (v23 >> 62)
    {
      goto LABEL_22;
    }

    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_17:
    [v1 addDiscoveryType:27];
    sub_10009393C(0, &qword_100503F68, CBServiceUUIDParamInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 setServiceUUIDs:isa];
  }

LABEL_18:
  sub_1000F733C(*&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName], *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName + 8], v1);
}

uint64_t sub_1000F733C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = [a3 xpcSubscriberRepresentation];
    v15 = XPC_BOOL_TRUE.getter();
    xpc_dictionary_set_value(v14, "keepAlive", v15);
    swift_unknownObjectRelease();
    String.utf8CString.getter();
    swift_unknownObjectRetain();
    xpc_set_event();

    v16 = _CFXPCCreateCFObjectFromXPCObject();
    result = swift_unknownObjectRelease();
    if (v16)
    {
      v27 = v16;
      sub_100068FC4(&qword_100503F60, &qword_10040B2D8);
      if (swift_dynamicCast())
      {

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v17, v18))
        {

          goto LABEL_12;
        }

        v19 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v19 = 136315650;
        *(v19 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x80000001004632F0, &v27);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1002FFA0C(a1, a2, &v27);
        *(v19 + 22) = 2080;
        v20 = Dictionary.description.getter();
        v22 = v21;

        v23 = sub_1002FFA0C(v20, v22, &v27);

        *(v19 + 24) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Launch event %s %s configured with %s", v19, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v17 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v17, v24))
        {
LABEL_12:

          return swift_unknownObjectRelease();
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v17, v24, "Failed to convert discovery XPC object to Dictionary", v25, 2u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000F7750(void **a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t **a7)
{
  v114 = a7;
  v116 = a6;
  v11 = type metadata accessor for UUID();
  v115 = *(v11 - 8);
  v12 = *(v115 + 64);
  __chkstk_darwin(v11);
  v14 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [a2 retrievePairingInfoForPeripheral:v15];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v117 = 0xD000000000000016;
  v118 = 0x8000000100463250;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16))
  {
    goto LABEL_22;
  }

  v18 = sub_10008CA7C(v120);
  if ((v19 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1000754F0(*(v17 + 56) + 32 * v18, v119);
  sub_100092F28(v120);
  if (swift_dynamicCast())
  {
    v20 = v117;
    v21 = v118;
    v22 = v118 >> 62;
    if ((v118 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_60;
      }

      v24 = *(v117 + 16);
      v23 = *(v117 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
        if (v26 != 6)
        {
          goto LABEL_60;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (!v22)
      {
        if (BYTE6(v118) != 6)
        {
          goto LABEL_60;
        }

LABEL_14:
        v113 = v117;
        v117 = 0xD000000000000011;
        v118 = 0x8000000100463270;
        AnyHashable.init<A>(_:)();
        if (!*(v17 + 16) || (v112 = v21, v27 = sub_10008CA7C(v120), v21 = v112, (v28 & 1) == 0))
        {
          v33 = v113;
          v34 = v21;
          goto LABEL_21;
        }

        sub_1000754F0(*(v17 + 56) + 32 * v27, v119);
        sub_100092F28(v120);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_59;
        }

        v29 = v117;
        v30 = v118;
        v31 = v118 >> 62;
        if ((v118 >> 62) > 1)
        {
          if (v31 != 2)
          {
            v51 = v117;
            v52 = v113;
            v53 = v118;
            goto LABEL_42;
          }

          v44 = *(v117 + 16);
          v43 = *(v117 + 24);
          v25 = __OFSUB__(v43, v44);
          v32 = v43 - v44;
          if (!v25)
          {
LABEL_33:
            if (v32 != 16)
            {
LABEL_58:
              sub_10006A178(v29, v30);
LABEL_59:
              v20 = v113;
              goto LABEL_60;
            }

            v110 = v29;
            v111 = v30;
            v117 = 0xD000000000000016;
            v118 = 0x8000000100463290;
            AnyHashable.init<A>(_:)();
            if (!*(v17 + 16) || (v45 = sub_10008CA7C(v120), v21 = v112, (v46 & 1) == 0))
            {
              sub_10006A178(v113, v21);
              v33 = v110;
              v34 = v111;
              goto LABEL_21;
            }

            sub_1000754F0(*(v17 + 56) + 32 * v45, v119);
            sub_100092F28(v120);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_57:
              v29 = v110;
              v30 = v111;
              goto LABEL_58;
            }

            v47 = v117;
            v48 = v118;
            v49 = v118 >> 62;
            if ((v118 >> 62) <= 1)
            {
              if (!v49)
              {
                v50 = BYTE6(v118);
LABEL_49:
                if (v50 == 6)
                {
                  v108 = v47;
                  v109 = v48;
                  v117 = 0xD000000000000012;
                  v118 = 0x80000001004632B0;
                  AnyHashable.init<A>(_:)();
                  if (*(v17 + 16))
                  {
                    v21 = v17;
                    v57 = sub_10008CA7C(v120);
                    if (v58)
                    {
                      sub_1000754F0(*(v17 + 56) + 32 * v57, v119);
                      sub_100092F28(v120);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
LABEL_81:
                        sub_10006A178(v108, v109);
                        sub_10006A178(v110, v111);
                        v54 = v112;
                        v20 = v113;
                        goto LABEL_61;
                      }

                      v107 = v117;
                      v106 = v118;
                      v26 = v118 >> 62;
                      if ((v118 >> 62) <= 1)
                      {
                        if (!v26)
                        {
                          v59 = BYTE6(v106);
LABEL_72:
                          if (v59 != 16)
                          {
                            goto LABEL_79;
                          }

                          v117 = 0xD000000000000011;
                          v118 = 0x80000001004632D0;
                          AnyHashable.init<A>(_:)();
                          if (*(v17 + 16))
                          {
                            v21 = v17;
                            v62 = sub_10008CA7C(v120);
                            if (v63)
                            {
                              sub_1000754F0(*(v17 + 56) + 32 * v62, v119);
                              sub_100092F28(v120);
                              if (swift_dynamicCast())
                              {
                                v102 = v117;
                                v101 = v118;
                                v32 = v118 >> 62;
                                if ((v118 >> 62) <= 1)
                                {
                                  if (!v32)
                                  {
                                    v64 = BYTE6(v101);
LABEL_91:
                                    if (v64 == 16)
                                    {

                                      v69 = *a4;
                                      v70 = a4[1];
                                      v72 = v112;
                                      v71 = v113;
                                      *a4 = v113;
                                      a4[1] = v72;
                                      sub_100069E2C(v71, v72);
                                      sub_10006A2D0(v69, v70);
                                      a4 = *a5;
                                      v21 = *(a5 + 8);
                                      v73 = v110;
                                      v74 = v111;
                                      *a5 = v110;
                                      *(a5 + 8) = v74;
                                      sub_100069E2C(v73, v74);
                                      sub_10006A2D0(a4, v21);
                                      if ((v116 & 0xC000000000000001) != 0)
                                      {
                                        swift_unknownObjectRetain();
                                        a4 = __CocoaSet.makeIterator()();
                                        v21 = type metadata accessor for Peer();
                                        sub_1001081DC(&qword_100503F20, 255, type metadata accessor for Peer);
                                        Set.Iterator.init(_cocoa:)();
                                        v116 = v120[0];
                                        v105 = v120[1];
                                        v100[0] = v120[2];
                                        v103 = v120[3];
                                        v104 = v120[4];
                                      }

                                      else
                                      {
                                        v75 = -1 << *(v116 + 32);
                                        v76 = *(v116 + 56);
                                        v105 = v116 + 56;
                                        v100[0] = ~v75;
                                        v77 = -v75;
                                        if (v77 < 64)
                                        {
                                          v78 = ~(-1 << v77);
                                        }

                                        else
                                        {
                                          v78 = -1;
                                        }

                                        v104 = v78 & v76;

                                        v103 = 0;
                                      }

                                      v79 = (v100[0] + 64) >> 6;
                                      v80 = v115 + 8;
                                      for (i = &v121; ; i = &v123)
                                      {
                                        *(i - 32) = v80;
                                        if (v116 < 0)
                                        {
                                          v85 = __CocoaSet.Iterator.next()();
                                          if (!v85)
                                          {
                                            goto LABEL_113;
                                          }

                                          v117 = v85;
                                          type metadata accessor for Peer();
                                          swift_dynamicCast();
                                          v21 = v119[0];
                                          v82 = v103;
                                          v115 = v104;
                                        }

                                        else
                                        {
                                          v82 = v103;
                                          v83 = v103;
                                          for (j = v104; !j; ++v83)
                                          {
                                            v82 = v83 + 1;
                                            if (__OFADD__(v83, 1))
                                            {
                                              goto LABEL_121;
                                            }

                                            if (v82 >= v79)
                                            {
                                              v104 = 0;
                                              goto LABEL_113;
                                            }

                                            j = *(v105 + 8 * v82);
                                          }

                                          v115 = (j - 1) & j;
                                          v21 = *(*(v116 + 48) + ((v82 << 9) | (8 * __clz(__rbit64(j)))));
                                        }

                                        if (!v21)
                                        {
LABEL_113:
                                          sub_100093854();
                                          v35 = Logger.logObject.getter();
                                          v87 = static os_log_type_t.error.getter();
                                          if (os_log_type_enabled(v35, v87))
                                          {
                                            v88 = swift_slowAlloc();
                                            *v88 = 0;
                                            _os_log_impl(&_mh_execute_header, v35, v87, "Got invalid peripheral", v88, 2u);
                                          }

                                          sub_10006A178(v113, v112);
                                          sub_10006A178(v110, v111);
                                          sub_10006A178(v108, v109);
                                          sub_10006A178(v107, v106);
                                          sub_10006A178(v102, v101);
                                          goto LABEL_26;
                                        }

                                        a4 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
                                        v86 = [v15 identifier];
                                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                                        LOBYTE(v86) = static UUID.== infix(_:_:)();
                                        (*v100[1])(v14, v11);
                                        if (v86)
                                        {
                                          break;
                                        }

                                        v103 = v82;
                                        v80 = v115;
                                      }

                                      sub_100093854();
                                      v89 = v114;
                                      a4 = *v114;
                                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                      *v89 = a4;
                                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                      {
                                        goto LABEL_124;
                                      }

                                      goto LABEL_117;
                                    }

                                    sub_10006A178(v107, v106);
                                    v65 = v102;
                                    v66 = &v122;
                                    goto LABEL_80;
                                  }

                                  goto LABEL_89;
                                }

LABEL_85:
                                if (v32 != 2)
                                {
                                  sub_10006A178(v107, v106);
                                  sub_10006A178(v108, v109);
                                  sub_10006A178(v110, v111);
                                  sub_10006A178(v113, v112);
                                  v20 = v102;
                                  v54 = v101;
                                  goto LABEL_61;
                                }

                                v68 = *(v102 + 16);
                                v67 = *(v102 + 24);
                                v25 = __OFSUB__(v67, v68);
                                v64 = v67 - v68;
                                if (!v25)
                                {
                                  goto LABEL_91;
                                }

                                __break(1u);
LABEL_89:
                                LODWORD(v64) = HIDWORD(v102) - v102;
                                if (!__OFSUB__(HIDWORD(v102), v102))
                                {
                                  v64 = v64;
                                  goto LABEL_91;
                                }

LABEL_123:
                                __break(1u);
LABEL_124:
                                a4 = sub_10012EF2C(0, a4[2] + 1, 1, a4);
                                *v114 = a4;
LABEL_117:
                                v92 = a4[2];
                                v91 = a4[3];
                                if (v92 >= v91 >> 1)
                                {
                                  v99 = sub_10012EF2C((v91 > 1), v92 + 1, 1, a4);
                                  *v114 = v99;
                                }

                                sub_10006A178(v110, v111);
                                sub_10006A178(v113, v112);
                                v93 = *v114;
                                v93[2] = v92 + 1;
                                v94 = &v93[7 * v92];
                                v95 = v108;
                                v96 = v109;
                                v94[4] = v21;
                                v94[5] = v95;
                                v97 = v102;
                                v94[6] = v96;
                                v94[7] = v97;
                                v98 = v107;
                                v94[8] = v101;
                                v94[9] = v98;
                                v94[10] = v106;
                                return;
                              }

LABEL_79:
                              v65 = v107;
                              v66 = &v124;
LABEL_80:
                              sub_10006A178(v65, *(v66 - 32));
                              goto LABEL_81;
                            }
                          }

                          sub_10006A178(v113, v112);
                          sub_10006A178(v110, v111);
                          sub_10006A178(v108, v109);
                          v33 = v107;
                          v34 = v106;
                          goto LABEL_21;
                        }

                        goto LABEL_70;
                      }

LABEL_66:
                      if (v26 != 2)
                      {
                        sub_10006A178(v108, v109);
                        sub_10006A178(v110, v111);
                        sub_10006A178(v113, v112);
                        v20 = v107;
                        v54 = v106;
                        goto LABEL_61;
                      }

                      v61 = *(v107 + 16);
                      v60 = *(v107 + 24);
                      v25 = __OFSUB__(v60, v61);
                      v59 = v60 - v61;
                      if (!v25)
                      {
                        goto LABEL_72;
                      }

                      __break(1u);
LABEL_70:
                      LODWORD(v59) = HIDWORD(v107) - v107;
                      if (!__OFSUB__(HIDWORD(v107), v107))
                      {
                        v59 = v59;
                        goto LABEL_72;
                      }

LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }
                  }

                  sub_10006A178(v113, v112);
                  sub_10006A178(v110, v111);
                  v33 = v108;
                  v34 = v109;
LABEL_21:
                  sub_10006A178(v33, v34);
LABEL_22:
                  sub_100092F28(v120);
                  goto LABEL_23;
                }

                sub_10006A178(v47, v48);
                goto LABEL_57;
              }

LABEL_47:
              LODWORD(v50) = HIDWORD(v47) - v47;
              if (__OFSUB__(HIDWORD(v47), v47))
              {
                __break(1u);
LABEL_121:
                __break(1u);
                goto LABEL_122;
              }

              v50 = v50;
              goto LABEL_49;
            }

            if (v49 == 2)
            {
              v56 = *(v117 + 16);
              v55 = *(v117 + 24);
              v25 = __OFSUB__(v55, v56);
              v50 = v55 - v56;
              if (!v25)
              {
                goto LABEL_49;
              }

              __break(1u);
              goto LABEL_47;
            }

            v51 = v117;
            v53 = v118;
            sub_10006A178(v110, v111);
            v52 = v113;
LABEL_42:
            sub_10006A178(v52, v21);
            v20 = v51;
            v54 = v53;
LABEL_61:
            sub_10006A178(v20, v54);
            goto LABEL_23;
          }

          __break(1u);
        }

        else if (!v31)
        {
          v32 = BYTE6(v118);
          goto LABEL_33;
        }

        LODWORD(v32) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          __break(1u);
          goto LABEL_85;
        }

        v32 = v32;
        goto LABEL_33;
      }

      LODWORD(v26) = HIDWORD(v117) - v117;
      if (!__OFSUB__(HIDWORD(v117), v117))
      {
        if (v26 == 6)
        {
          goto LABEL_14;
        }

LABEL_60:
        v54 = v21;
        goto LABEL_61;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_23:

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v120[0] = v38;
    *v37 = 136315138;
    v39 = Dictionary.description.getter();
    v41 = v40;

    v42 = sub_1002FFA0C(v39, v41, v120);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Got invalid pairing info %s", v37, 0xCu);
    sub_1000752F4(v38);
  }

  else
  {
  }

LABEL_26:
}

void sub_1000F8460(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000F84D8()
{
  v1 = *(v0 + 16);

  sub_1000752F4((v0 + 40));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  sub_10006A2D0(*(v0 + 104), *(v0 + 112));

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);
  swift_unknownObjectRelease();
  v6 = *(v0 + 160);

  return v0;
}

uint64_t sub_1000F8548()
{
  sub_1000F84D8();

  return swift_deallocClassInstance();
}

Swift::Int sub_1000F8578()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  Hasher.init(_seed:)();
  v7 = [*(v6 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000F86C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*v0 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int sub_1000F87FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  Hasher.init(_seed:)();
  v7 = [*(v6 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000F8950(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10009393C(0, &qword_100502D20, NSObject_ptr);
  v4 = *(v3 + 24);
  v5 = *(v2 + 24);
  v6 = v4;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

void *sub_1000F89E4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];
  sub_1000B2A4C(v0[23]);
  v13 = v0[26];
  sub_1000B2A4C(v0[25]);
  return v0;
}

uint64_t sub_1000F8A64()
{
  sub_1000F89E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F8A98()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1000F8AE4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 128);

  return v1;
}

uint64_t sub_1000F8B18()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 144);

  return v1;
}

uint64_t sub_1000F8B4C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 160);

  return v1;
}

uint64_t sub_1000F8B80()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 176);

  return v1;
}

uint64_t sub_1000F8BB4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 192);
  sub_100113B54(v1);
  return v1;
}

uint64_t sub_1000F8BEC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 208);
  sub_100113B54(v1);
  return v1;
}

Swift::Int sub_1000F8C24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F8C6C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return String.hash(into:)();
}

Swift::Int sub_1000F8C78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F8CBC(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000F8CE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);
  sub_1000B2A4C(*(v0 + 152));
  v10 = *(v0 + 176);
  sub_1000B2A4C(*(v0 + 168));
  return v0;
}

uint64_t sub_1000F8D58()
{
  sub_1000F8CE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F8D8C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1000F8DCC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);

  return v1;
}

uint64_t sub_1000F8E00()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 112);

  return v1;
}

uint64_t sub_1000F8E34()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 160);
  sub_100113B54(v1);
  return v1;
}

uint64_t sub_1000F8E6C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 176);
  sub_100113B54(v1);
  return v1;
}

Swift::Int sub_1000F8EA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F8F50()
{
  v1 = *(*v0 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000F8FE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F908C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  return static UUID.== infix(_:_:)();
}

Swift::Int sub_1000F90B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F9100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return Data.hash(into:)();
}

Swift::Int sub_1000F9108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F92A0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1000F93E0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v112 = *(v4 - 8);
  v5 = *(v112 + 64);
  __chkstk_darwin(v4);
  v7 = (v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchQoS();
  i = *(v8 - 8);
  v10 = i[8];
  __chkstk_darwin(v8);
  v116 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v17 = qword_10051B7F0;
    *v16 = qword_10051B7F0;
    v18 = *(v13 + 104);
    v109 = enum case for DispatchPredicate.onQueue(_:);
    v110 = v13 + 104;
    v108 = v18;
    v18(v16);
    v113 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    v19 = *(v13 + 8);
    v111 = v13 + 8;
    v107 = v19;
    v19(v16, v12);
    if ((v17 & 1) == 0)
    {
      __break(1u);
LABEL_108:
      swift_once();
LABEL_57:
      sub_1000FA438(1);
      v13 = v116;
      v2 = v117;
      v20 = v102;
      i = &selRef_mockFleetIntermediateCert;
      goto LABEL_77;
    }

    v106 = v12;
    v12 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Not running", v52, 2u);
      }

      return;
    }

    v114 = i;
    v115 = v7;
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    v23 = os_log_type_enabled(v21, v22);
    i = &selRef_mockFleetIntermediateCert;
    v105 = v4;
    v104 = v8;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = [v20 state];
      v27 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E75;
      v29 = 0x4F64657265776F70;
      v30 = 0xEA00000000006666;
      v31 = 0x4F64657265776F70;
      v32 = 0xE90000000000006ELL;
      v33 = 0x7463697274736572;
      v34 = 0xEA00000000006465;
      if (v26 != 10)
      {
        v33 = 0x6E776F6E6B6E75;
        v34 = 0xE700000000000000;
      }

      if (v26 != 5)
      {
        v31 = v33;
        v32 = v34;
      }

      if (v26 != 4)
      {
        v29 = v31;
        v30 = v32;
      }

      if (v26 == 3)
      {
        v28 = 0x726F687475616E75;
        v27 = 0xEC00000064657A69;
      }

      if (v26 == 2)
      {
        v28 = 0x726F707075736E75;
        v27 = 0xEB00000000646574;
      }

      if (v26 == 1)
      {
        v28 = 0x6E69747465736572;
        v27 = 0xE900000000000067;
      }

      v35 = v26 <= 3;
      if (v26 <= 3)
      {
        v36 = v28;
      }

      else
      {
        v36 = v29;
      }

      if (v35)
      {
        v8 = v27;
      }

      else
      {
        v8 = v30;
      }

      v37 = v20;
      v38 = v12;
      v39 = v2;
      v40 = sub_1002FFA0C(v36, v8, aBlock);

      *(v24 + 4) = v40;
      v2 = v39;
      v12 = v38;
      v20 = v37;
      i = &selRef_mockFleetIntermediateCert;
      _os_log_impl(&_mh_execute_header, v21, v22, "Central manager changed state to %s", v24, 0xCu);
      sub_1000752F4(v25);
    }

    v41 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralState;
    v42 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
    v43 = [v20 state];
    *(v2 + v41) = v43;
    v13 = v116;
    v117 = v2;
    if (v43 == 10 || v43 == 5)
    {
      if (v42 == 5 || v42 == 10)
      {
        goto LABEL_77;
      }

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Central is powered on", v46, 2u);
      }

      v103 = v12;

      sub_1000EE338();
      v47 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
      swift_beginAccess();
      v4 = *(v2 + v47);
      v102 = v20;
      if ((v4 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for DSKBLE.BLEConnectionRequest();
        sub_1001081DC(&unk_100503E70, v48, type metadata accessor for DSKBLE.BLEConnectionRequest);
        Set.Iterator.init(_cocoa:)();
        v12 = v120;
        a1 = v121;
        v49 = v122;
        v16 = v123;
        v13 = v124;
      }

      else
      {
        v59 = -1 << *(v4 + 32);
        a1 = v4 + 56;
        v49 = ~v59;
        v60 = -v59;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        else
        {
          v61 = -1;
        }

        v13 = v61 & *(v4 + 56);
        swift_bridgeObjectRetain_n();
        v16 = 0;
        v12 = v4;
      }

      v111 = v49;
      v7 = ((v49 + 64) >> 6);
      if (v12 < 0)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v62 = v16;
        v63 = v13;
        v2 = v16;
        if (!v13)
        {
          break;
        }

LABEL_50:
        v8 = (v63 - 1) & v63;
        i = *(*(v12 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v63)))));

        if (!i)
        {
LABEL_56:
          sub_100093854();

          if (qword_100501968 == -1)
          {
            goto LABEL_57;
          }

          goto LABEL_108;
        }

        while (1)
        {
          sub_1000EA4CC(i, 0);

          v16 = v2;
          v13 = v8;
          if ((v12 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_52:
          v64 = __CocoaSet.Iterator.next()();
          if (v64)
          {
            v125 = v64;
            type metadata accessor for DSKBLE.BLEConnectionRequest();
            swift_dynamicCast();
            i = aBlock[0];
            v2 = v16;
            v8 = v13;
            if (aBlock[0])
            {
              continue;
            }
          }

          goto LABEL_56;
        }
      }

      while (1)
      {
        v2 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v2 >= v7)
        {
          goto LABEL_56;
        }

        v63 = *(a1 + 8 * v2);
        v62 = (v62 + 1);
        if (v63)
        {
          goto LABEL_50;
        }
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v42 != 10 && v42 != 5)
    {
      goto LABEL_77;
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Central is powered off", v55, 2u);
    }

    v56 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v57 = *(v2 + v56);
    v103 = v12;
    v102 = v20;
    v101[2] = v57;
    if ((v57 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      a1 = v120;
      v4 = v121;
      v58 = v122;
      i = v123;
      v8 = v124;
    }

    else
    {
      v65 = -1 << *(v57 + 32);
      v4 = v57 + 56;
      v58 = ~v65;
      v66 = -v65;
      v67 = v66 < 64 ? ~(-1 << v66) : -1;
      v8 = v67 & *(v57 + 56);
      a1 = v57;
      swift_bridgeObjectRetain_n();
      i = 0;
    }

    v101[1] = v58;
    v7 = ((v58 + 64) >> 6);
    if ((a1 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_63:
    v68 = i;
    v69 = v8;
    v2 = i;
    if (v8)
    {
LABEL_67:
      v12 = (v69 - 1) & v69;
      v13 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v69)))));

      if (v13)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    while (1)
    {
      v2 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v2 >= v7)
      {
        goto LABEL_73;
      }

      v69 = *(v4 + 8 * v2);
      v68 = (v68 + 1);
      if (v69)
      {
        goto LABEL_67;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  while (1)
  {
    v70 = __CocoaSet.Iterator.next()();
    if (!v70)
    {
      break;
    }

    v125 = v70;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v13 = aBlock[0];
    v2 = i;
    v12 = v8;
    if (!aBlock[0])
    {
      break;
    }

LABEL_71:
    v71 = *(v13 + 24);
    sub_1000EF594(v71, 0);

    i = v2;
    v8 = v12;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_73:
  sub_100093854();

  if (qword_100501968 != -1)
  {
    swift_once();
  }

  v72 = qword_10051B290;
  v73 = v113;
  *v16 = v113;
  v74 = v106;
  v108(v16, v109, v106);
  v75 = v73;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v107(v16, v74);
  v13 = v116;
  v2 = v117;
  v20 = v102;
  i = &selRef_mockFleetIntermediateCert;
  if ((v73 & 1) == 0)
  {
    __break(1u);
    return;
  }

  *(v72 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn) = 0;
LABEL_77:
  v76 = [v20 i[453]];
  v77 = v115;
  v78 = v114;
  if (v76 != 1)
  {
    goto LABEL_100;
  }

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "Detected possible BT crash", v81, 2u);
  }

  v82 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v4 = *(v2 + v82);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v83 = *(v2 + v82);
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    sub_1001081DC(&unk_100503E70, v84, type metadata accessor for DSKBLE.BLEConnectionRequest);
    Set.Iterator.init(_cocoa:)();
    v12 = v125;
    a1 = v126;
    v13 = v127;
    v2 = v128;
    v8 = v129;
  }

  else
  {
    v85 = -1 << *(v4 + 32);
    a1 = v4 + 56;
    v13 = ~v85;
    v86 = -v85;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v8 = v87 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v2 = 0;
    v12 = v4;
  }

  v7 = ((v13 + 64) >> 6);
  for (i = &type metadata for Swift.AnyObject; v12 < 0; v8 = v16)
  {
    v93 = __CocoaSet.Iterator.next()();
    if (!v93)
    {
      goto LABEL_99;
    }

    aBlock[6] = v93;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v92 = aBlock[0];
    v90 = v2;
    v16 = v8;
    if (!aBlock[0])
    {
      goto LABEL_99;
    }

LABEL_97:
    v94 = *(v92 + 56);
    *(v92 + 56) = 0;

    v2 = v90;
  }

  v88 = v2;
  v89 = v8;
  v90 = v2;
  if (!v8)
  {
    while (1)
    {
      v90 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v90 >= v7)
      {
        goto LABEL_99;
      }

      v89 = *(a1 + 8 * v90);
      ++v88;
      if (v89)
      {
        goto LABEL_93;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_93:
  v16 = ((v89 - 1) & v89);
  v91 = *(*(v12 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v89)))));

  if (v92)
  {
    goto LABEL_97;
  }

LABEL_99:
  sub_100093854();

  v77 = v115;
  v78 = v114;
  v13 = v116;
  v2 = v117;
LABEL_100:
  v95 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  if (*(*(v2 + v95) + 16))
  {
    v96 = swift_allocObject();
    *(v96 + 16) = v2;
    aBlock[4] = sub_10011F40C;
    aBlock[5] = v96;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004C78E0;
    v97 = _Block_copy(aBlock);
    v98 = v2;
    static DispatchQoS.unspecified.getter();
    v118 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    v99 = v13;
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v100 = v105;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v97);
    (*(v112 + 8))(v77, v100);
    (v78[1])(v99, v104);
  }
}

uint64_t sub_1000FA438(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v26 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v1[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v18 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v19 = *&v1[v18];
  if (v19 >> 62)
  {
LABEL_12:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v21 = *&v1[v20];
  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v21 < 0)
  {
    v25 = *&v1[v20];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
LABEL_9:
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    aBlock[4] = sub_10011F748;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004C7930;
    v23 = _Block_copy(aBlock);
    v24 = v1;
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v28 + 8))(v6, v3);
    (*(v27 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1000FA8C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v2 <= 0xA && ((1 << v2) & 0x430) != 0)
  {
    v45 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralState;
    v4 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
    result = swift_beginAccess();
    v5 = 0;
    v6 = *(v1 + v4);
    v7 = *(v6 + 16);
LABEL_6:
    v8 = (v6 + 32 + 24 * v5);
    while (v7 != v5)
    {
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      ++v5;
      v9 = v8 + 24;
      v10 = *v8;
      v8 += 24;
      if ((v10 & 1) == 0)
      {
        v12 = *(v9 - 2);
        v11 = *(v9 - 1);

        result = swift_isUniquelyReferenced_nonNull_native();
        v43 = v12;
        if ((result & 1) == 0)
        {
          result = sub_10019F574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          result = sub_10019F574((v13 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[3 * v14];
        *(v15 + 32) = 0;
        v15[5] = v43;
        v15[6] = v11;
        goto LABEL_6;
      }
    }

    result = sub_100110E54(v1 + v4);
    v16 = *(*(v1 + v4) + 16);
    if (v16 < result)
    {
      goto LABEL_46;
    }

    v17 = v1;
    sub_1001A2334(result, v16);
    result = swift_endAccess();
    v18 = _swiftEmptyArrayStorage[2];
    if (!v18)
    {
LABEL_20:

      v1 = v17;
      v2 = *(v17 + v45);
      goto LABEL_21;
    }

    v19 = 0;
    v20 = &_swiftEmptyArrayStorage[6];
    while (v19 < _swiftEmptyArrayStorage[2])
    {
      ++v19;
      v22 = *(v20 - 1);
      v21 = *v20;

      v22(v23);

      v20 += 3;
      if (v18 == v19)
      {
        goto LABEL_20;
      }
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_21:
  if (v2 == 10 || v2 == 5)
  {
    v25 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
    result = swift_beginAccess();
    v26 = 0;
    v27 = *(v1 + v25);
    v28 = *(v27 + 16);
LABEL_27:
    v29 = (v27 + 32 + 24 * v26);
    while (v28 != v26)
    {
      if (v26 >= *(v27 + 16))
      {
        goto LABEL_43;
      }

      ++v26;
      v30 = v29 + 24;
      v31 = *v29;
      v29 += 24;
      if (v31 == 1)
      {
        v32 = *(v30 - 1);
        v44 = *(v30 - 2);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10019F574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v34 = _swiftEmptyArrayStorage[2];
        v33 = _swiftEmptyArrayStorage[3];
        if (v34 >= v33 >> 1)
        {
          result = sub_10019F574((v33 > 1), v34 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v34 + 1;
        v35 = &_swiftEmptyArrayStorage[3 * v34];
        *(v35 + 32) = 1;
        v35[5] = v44;
        v35[6] = v32;
        goto LABEL_27;
      }
    }

    result = sub_100110FE4(v1 + v25);
    v36 = *(*(v1 + v25) + 16);
    if (v36 < result)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    sub_1001A2334(result, v36);
    result = swift_endAccess();
    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
    }

    v38 = 0;
    v39 = &_swiftEmptyArrayStorage[6];
    while (v38 < _swiftEmptyArrayStorage[2])
    {
      ++v38;
      v41 = *(v39 - 1);
      v40 = *v39;

      v41(v42);

      v39 += 3;
      if (v37 == v38)
      {
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_1000FAEBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 168);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *(a3 + 16);

    v4(v3 & 1, v5);
  }

  return result;
}

void sub_1000FB01C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

void sub_1000FB0B4(void *a1, uint64_t *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v143 = a2;
    v151 = a1;
    v144 = v9;
    v146 = v6;
    v17 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v149 = v2;
    v18 = *(v2 + v17);
    v145 = v5;
    v148 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v19 = v153[6];
      v20 = v153[7];
      v21 = v153[8];
      v22 = v153[9];
      v23 = v153[10];
    }

    else
    {
      v27 = -1 << *(v18 + 32);
      v19 = v18;
      v20 = (v18 + 56);
      v21 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v23 = (v29 & *(v18 + 56));
      swift_bridgeObjectRetain_n();
      v22 = 0;
    }

    v147 = v21;
    v30 = (v21 + 64) >> 6;
    if (v19 < 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v31 = v22;
    v32 = v23;
    v33 = v22;
    if (v23)
    {
LABEL_19:
      v34 = (v32 - 1) & v32;
      v35 = *(*(v19 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));

      if (v35)
      {
        while (1)
        {
          v150 = v23;
          v37 = v19;
          v38 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
          v39 = *(v35 + 24);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v22 = v33;
          v23 = v34;
          v19 = v37;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_21:
          v36 = __CocoaSet.Iterator.next()();
          if (v36)
          {
            v152 = v36;
            type metadata accessor for DSKBLE.BLEPeripheral();
            swift_dynamicCast();
            v35 = v153[0];
            v33 = v22;
            v34 = v23;
            if (v153[0])
            {
              continue;
            }
          }

          goto LABEL_26;
        }

        v141 = v38;
        v142 = v35;
        sub_100093854();

        if (v143)
        {
          swift_errorRetain();
          v53 = v151;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v153[0] = swift_slowAlloc();
            *v56 = 136315394;
            v57 = [v53 identifier];
            v58 = v144;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
            v59 = v145;
            v60 = dispatch thunk of CustomStringConvertible.description.getter();
            v62 = v61;
            (*(v146 + 8))(v58, v59);
            v63 = sub_1002FFA0C(v60, v62, v153);

            *(v56 + 4) = v63;
            *(v56 + 12) = 2080;
            swift_getErrorValue();
            v64 = Error.localizedDescription.getter();
            v66 = sub_1002FFA0C(v64, v65, v153);

            *(v56 + 14) = v66;
            _os_log_impl(&_mh_execute_header, v54, v55, "Error while discovering services for %s %s", v56, 0x16u);
            swift_arrayDestroy();
          }

          sub_1000EF154(v53);
        }

        else
        {
          v67 = v151;
          v68 = [v151 services];
          v69 = v142;
          if (v68)
          {
            v70 = v68;
            sub_10009393C(0, &unk_100503EE0, CBService_ptr);
            v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            swift_beginAccess();
            v71 = v69[8];
            v72 = v69[9];
            v73 = sub_1000752B0(v69 + 5, v71);
            v74 = *(v71 - 8);
            v75 = *(v74 + 64);
            __chkstk_darwin(v73);
            v77 = &v141 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v74 + 16))(v77);
            (*(v72 + 8))(v71, v72);
            (*(v74 + 8))(v77, v71);
            v78 = String._bridgeToObjectiveC()();

            v79 = objc_opt_self();
            v150 = [v79 UUIDWithString:v78];

            v147 = v79;
            if (v6 >> 62)
            {
              goto LABEL_61;
            }

            for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v81 = 0;
              while (1)
              {
                if ((v6 & 0xC000000000000001) != 0)
                {
                  v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v81 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_60;
                  }

                  v82 = *(v6 + 8 * v81 + 32);
                }

                v20 = v82;
                v83 = v81 + 1;
                if (__OFADD__(v81, 1))
                {
                  break;
                }

                v84 = [v82 UUID];
                v85 = static NSObject.== infix(_:_:)();

                if (v85)
                {

                  v121 = v142;
                  *(v142 + 32) = 2;
                  v123 = v121[8];
                  v122 = v121[9];
                  v124 = sub_1000752B0(v121 + 5, v123);
                  v125 = *(v123 - 8);
                  v126 = *(v125 + 64);
                  __chkstk_darwin(v124);
                  v128 = &v141 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v125 + 16))(v128);
                  v129 = (*(v122 + 16))(v123, v122);
                  (*(v125 + 8))(v128, v123);
                  v130 = *(v129 + 16);
                  if (v130)
                  {
                    v143 = &v141;
                    v152 = _swiftEmptyArrayStorage;
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v149 = *(v146 + 16);
                    v131 = (*(v146 + 80) + 32) & ~*(v146 + 80);
                    v141 = v129;
                    v132 = v129 + v131;
                    v148 = *(v146 + 72);
                    v146 += 16;
                    v133 = (v146 - 8);
                    v134 = v145;
                    v135 = v144;
                    v136 = v147;
                    do
                    {
                      v149(v135, v132, v134);
                      isa = UUID._bridgeToObjectiveC()().super.isa;
                      v138 = [v136 UUIDWithNSUUID:{isa, v141}];

                      (*v133)(v135, v134);
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v139 = v152[2];
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v132 += v148;
                      --v130;
                    }

                    while (v130);
                  }

                  goto LABEL_57;
                }

                ++v81;
                if (v83 == i)
                {
                  goto LABEL_46;
                }
              }

LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              ;
            }

LABEL_46:

            v86 = v151;
            v87 = v142;

            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v152 = v151;
              *v90 = 136315394;
              v91 = v87[8];
              v92 = v87[9];
              v93 = sub_1000752B0(v87 + 5, v91);
              v94 = *(v91 - 8);
              v95 = *(v94 + 64);
              __chkstk_darwin(v93);
              v97 = &v141 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v94 + 16))(v97);
              v98 = (*(v92 + 8))(v91, v92);
              v100 = v99;
              (*(v94 + 8))(v97, v91);
              v101 = sub_1002FFA0C(v98, v100, &v152);

              *(v90 + 4) = v101;
              *(v90 + 12) = 2080;
              v102 = [v86 identifier];
              v103 = v144;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
              v104 = v145;
              v105 = dispatch thunk of CustomStringConvertible.description.getter();
              v107 = v106;
              (*(v146 + 8))(v103, v104);
              v108 = sub_1002FFA0C(v105, v107, &v152);

              *(v90 + 14) = v108;
              _os_log_impl(&_mh_execute_header, v88, v89, "Target service UUID %s missing from %s", v90, 0x16u);
              swift_arrayDestroy();
            }

            sub_1000EF154(v86);
          }

          else
          {
            v109 = v67;
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v153[0] = v113;
              *v112 = 136315138;
              v114 = [v109 identifier];
              v115 = v144;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
              v116 = v145;
              v117 = dispatch thunk of CustomStringConvertible.description.getter();
              v119 = v118;
              (*(v146 + 8))(v115, v116);
              v120 = sub_1002FFA0C(v117, v119, v153);

              *(v112 + 4) = v120;
              _os_log_impl(&_mh_execute_header, v110, v111, "No services discovered for %s", v112, 0xCu);
              sub_1000752F4(v113);
            }

            sub_1000EF154(v109);
          }
        }
      }

      else
      {
LABEL_26:
        sub_100093854();

        v41 = v151;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v153[0] = v45;
          *v44 = 136315138;
          v46 = [v41 identifier];
          v47 = v144;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
          v48 = v145;
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          (*(v146 + 8))(v47, v48);
          v52 = sub_1002FFA0C(v49, v51, v153);

          *(v44 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v42, v43, "Discovered services for unknown peripheral %s", v44, 0xCu);
          sub_1000752F4(v45);
        }

        sub_1000EF154(v41);
      }
    }

    else
    {
      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= v30)
        {
          goto LABEL_26;
        }

        v32 = *(v20 + v33);
        ++v31;
        if (v32)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_57:

      sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
      v140 = Array._bridgeToObjectiveC()().super.isa;

      [v151 discoverCharacteristics:v140 forService:v20];
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
    }
  }
}

void sub_1000FC354(void *a1, unint64_t a2, void **a3)
{
  v191 = a1;
  v186 = type metadata accessor for DispatchWorkItemFlags();
  v185 = *(v186 - 1);
  v6 = *(v185 + 64);
  __chkstk_darwin(v186);
  v183 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for DispatchQoS();
  v182 = *(v184 - 8);
  v8 = *(v182 + 64);
  __chkstk_darwin(v184);
  v181 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for DispatchTime();
  v180 = *(v187 - 8);
  v10 = *(v180 + 64);
  v11 = __chkstk_darwin(v187);
  v177 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v179 = &v170 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = type metadata accessor for DispatchPredicate();
  v20 = *(i - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(i);
  v23 = (&v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v24 = qword_10051B7F0;
    *v23 = qword_10051B7F0;
    (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), i);
    v178 = v24;
    LOBYTE(v24) = _dispatchPreconditionTest(_:)();
    (*(v20 + 8))(v23, i);
    if ((v24 & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      break;
    }

    v173 = a3;
    v176 = v18;
    v175 = v15;
    v174 = v14;
    v25 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v190 = v3;
    v26 = *(v3 + v25);
    v172 = a2;
    v189 = v26;
    if ((v26 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v3 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v15 = v200[10];
      v23 = v200[11];
      v27 = v200[12];
      v18 = v200[13];
      v20 = v200[14];
    }

    else
    {
      v31 = -1 << *(v26 + 32);
      v23 = (v26 + 56);
      v3 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v20 = v33 & *(v26 + 56);
      v15 = v26;
      swift_bridgeObjectRetain_n();
      v27 = v3;
      v18 = 0;
    }

    v188 = v27;
    for (i = (v27 + 8) >> 6; (v15 & 0x8000000000000000) != 0; v20 = a2)
    {
      v36 = __CocoaSet.Iterator.next()();
      if (!v36)
      {
        goto LABEL_25;
      }

      v200[4] = v36;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      a3 = aBlock;
      v14 = v18;
      a2 = v20;
      if (!aBlock)
      {
        goto LABEL_25;
      }

LABEL_22:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v37 = a3[3];
      v3 = static NSObject.== infix(_:_:)();

      if (v3)
      {
        v171 = a3;
        sub_100093854();

        if (v173)
        {
          swift_errorRetain();
          v50 = v191;
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();

          v53 = os_log_type_enabled(v51, v52);
          v54 = v176;
          if (v53)
          {
            v55 = swift_slowAlloc();
            v189 = v50;
            v56 = v55;
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            aBlock = v58;
            *v56 = 136315394;
            v59 = [v189 identifier];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
            v60 = v174;
            v61 = dispatch thunk of CustomStringConvertible.description.getter();
            v63 = v62;
            (*(v175 + 8))(v54, v60);
            v64 = sub_1002FFA0C(v61, v63, &aBlock);

            *(v56 + 4) = v64;
            *(v56 + 12) = 2112;
            swift_errorRetain();
            v65 = _swift_stdlib_bridgeErrorToNSError();
            *(v56 + 14) = v65;
            *v57 = v65;
            _os_log_impl(&_mh_execute_header, v51, v52, "Failed to discover characteristics for %s error %@", v56, 0x16u);
            sub_100075768(v57, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v58);

            v50 = v189;
          }

          v66 = v171;
          v67 = v171[10];
          if (v67 > 2)
          {
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              *v95 = 0;
              _os_log_impl(&_mh_execute_header, v93, v94, "Retries exhausted for discovering characteristics", v95, 2u);
            }

            sub_1000EF154(v50);
          }

          else
          {
            v171[10] = (v67 + 1);

            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              *v70 = 134217984;
              *(v70 + 4) = v66[10];

              _os_log_impl(&_mh_execute_header, v68, v69, "Retry %ld for discovering characteristics", v70, 0xCu);
            }

            else
            {
            }

            v96 = v175;
            swift_beginAccess();
            v98 = v66[8];
            v97 = v66[9];
            v99 = sub_1000752B0(v66 + 5, v98);
            v100 = *(v98 - 8);
            v101 = *(v100 + 64);
            __chkstk_darwin(v99);
            v103 = &v170 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v100 + 16))(v103);
            v104 = v97[2](v98, v97);
            (*(v100 + 8))(v103, v98);
            v105 = *(v104 + 16);
            if (v105)
            {
              v188 = &v170;
              v189 = v50;
              aBlock = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v191 = objc_opt_self();
              v107 = *(v96 + 16);
              v106 = v96 + 16;
              v190 = v107;
              v108 = (*(v106 + 64) + 32) & ~*(v106 + 64);
              v175 = v104;
              v109 = v104 + v108;
              v110 = *(v106 + 56);
              v111 = (v106 - 8);
              v112 = v174;
              v113 = v176;
              do
              {
                v190(v113, v109, v112);
                isa = UUID._bridgeToObjectiveC()().super.isa;
                v115 = [v191 UUIDWithNSUUID:isa];

                (*v111)(v113, v112);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v116 = v106;
                v117 = aBlock[2];
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v106 = v116;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v109 += v110;
                --v105;
              }

              while (v105);

              v118 = aBlock;
              v50 = v189;
            }

            else
            {

              v118 = _swiftEmptyArrayStorage;
            }

            v133 = v177;
            static DispatchTime.now()();
            v134 = v179;
            + infix(_:_:)();
            v191 = *(v180 + 8);
            (v191)(v133, v187);
            v135 = swift_allocObject();
            v135[2] = v50;
            v135[3] = v118;
            v136 = v172;
            v135[4] = v172;
            v196 = sub_10011F2F8;
            v197 = v135;
            aBlock = _NSConcreteStackBlock;
            v193 = 1107296256;
            v194 = sub_100080830;
            v195 = &unk_1004C77F0;
            v137 = _Block_copy(&aBlock);
            v138 = v50;
            v139 = v136;
            v140 = v181;
            static DispatchQoS.unspecified.getter();
            v200[0] = _swiftEmptyArrayStorage;
            sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
            sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
            sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
            v141 = v183;
            v142 = v186;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v137);

            (*(v185 + 8))(v141, v142);
            (*(v182 + 8))(v140, v184);
            (v191)(v134, v187);
          }
        }

        else
        {
          v71 = [v172 characteristics];
          if (v71)
          {
            v72 = v71;
            v187 = sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
            a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v15 = v171;
            v171[10] = 0;
            *(v15 + 32) = 3;
            swift_beginAccess();
            v74 = *(v15 + 64);
            v73 = *(v15 + 72);
            v75 = sub_1000752B0((v15 + 40), v74);
            v76 = *(v74 - 8);
            v77 = *(v76 + 64);
            __chkstk_darwin(v75);
            v79 = &v170 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v76 + 16))(v79);
            v80 = (*(v73 + 16))(v74, v73);
            (*(v76 + 8))(v79, v74);
            v81 = *(v80 + 16);
            v82 = v175;
            v189 = a2;
            if (v81)
            {
              v186 = &v170;
              aBlock = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v190 = objc_opt_self();
              v84 = *(v82 + 16);
              v83 = v82 + 16;
              v188 = v84;
              v85 = (*(v83 + 64) + 32) & ~*(v83 + 64);
              v185 = v80;
              v86 = v80 + v85;
              v87 = *(v83 + 56);
              v88 = v174;
              v89 = v176;
              do
              {
                (v188)(v89, v86, v88);
                v90 = UUID._bridgeToObjectiveC()().super.isa;
                v91 = [v190 UUIDWithNSUUID:v90];

                (*(v83 - 8))(v89, v88);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v92 = aBlock[2];
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v86 += v87;
                --v81;
              }

              while (v81);

              v190 = aBlock;
              v15 = v171;
              a2 = v189;
            }

            else
            {

              v190 = _swiftEmptyArrayStorage;
            }

            aBlock = _swiftEmptyArrayStorage;
            if (a2 >> 62)
            {
              goto LABEL_72;
            }

            for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
            {
              v144 = 0;
              v15 = a2 & 0xC000000000000001;
              v145 = a2 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v15)
                {
                  v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v144 >= *(v145 + 16))
                  {
                    goto LABEL_71;
                  }

                  v146 = *(a2 + 8 * v144 + 32);
                }

                v147 = v146;
                v148 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  break;
                }

                v149 = [v146 UUID];
                v200[0] = v149;
                __chkstk_darwin(v149);
                *(&v170 - 2) = v200;
                v150 = sub_1002FB068(sub_10011F21C, (&v170 - 4), v190);

                if ((v150 & 1) != 0 && ([v147 properties] & 2) != 0)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v151 = aBlock[2];
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                a2 = v189;
                ++v144;
                if (v148 == j)
                {
                  v152 = aBlock;
                  v15 = v171;
                  goto LABEL_74;
                }
              }

LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              ;
            }

            v152 = _swiftEmptyArrayStorage;
LABEL_74:

            v153 = sub_1000E1FA8(v152);

            swift_beginAccess();
            v154 = *(v15 + 88);
            *(v15 + 88) = v153;

            if ((v153 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              __CocoaSet.makeIterator()();
              sub_10011F248();
              Set.Iterator.init(_cocoa:)();
              v155 = aBlock;
              v156 = v193;
              v157 = v194;
              v158 = v195;
              v159 = v196;
            }

            else
            {
              v160 = -1 << *(v153 + 32);
              v156 = v153 + 56;
              v157 = ~v160;
              v161 = -v160;
              if (v161 < 64)
              {
                v162 = ~(-1 << v161);
              }

              else
              {
                v162 = -1;
              }

              v159 = v162 & *(v153 + 56);

              v158 = 0;
              v155 = v153;
            }

            v190 = v157;
            v163 = (v157 + 64) >> 6;
            if ((v155 & 0x8000000000000000) != 0)
            {
              goto LABEL_86;
            }

LABEL_81:
            v164 = v158;
            v165 = v159;
            v166 = v158;
            if (v159)
            {
LABEL_85:
              v167 = (v165 - 1) & v165;
              v168 = *(*(v155 + 48) + ((v166 << 9) | (8 * __clz(__rbit64(v165)))));
              while (v168)
              {
                [v191 readValueForCharacteristic:v168];

                v158 = v166;
                v159 = v167;
                if ((v155 & 0x8000000000000000) == 0)
                {
                  goto LABEL_81;
                }

LABEL_86:
                v169 = __CocoaSet.Iterator.next()();
                if (!v169)
                {
                  break;
                }

                v198 = v169;
                swift_dynamicCast();
                v168 = v199;
                v166 = v158;
                v167 = v159;
              }

LABEL_91:
              sub_100093854();
            }

            else
            {
              while (1)
              {
                v166 = v164 + 1;
                if (__OFADD__(v164, 1))
                {
                  break;
                }

                if (v166 >= v163)
                {
                  goto LABEL_91;
                }

                v165 = *(v156 + 8 * v166);
                ++v164;
                if (v165)
                {
                  goto LABEL_85;
                }
              }

              __break(1u);
            }
          }

          else
          {
            v119 = v191;
            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.error.getter();

            v122 = os_log_type_enabled(v120, v121);
            v123 = v175;
            if (v122)
            {
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              aBlock = v125;
              *v124 = 136315138;
              v126 = [v119 identifier];
              v127 = v176;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
              v128 = v174;
              v129 = dispatch thunk of CustomStringConvertible.description.getter();
              v131 = v130;
              (*(v123 + 8))(v127, v128);
              v132 = sub_1002FFA0C(v129, v131, &aBlock);

              *(v124 + 4) = v132;
              _os_log_impl(&_mh_execute_header, v120, v121, "No characteristics discovered for %s", v124, 0xCu);
              sub_1000752F4(v125);
            }

            sub_1000EF154(v119);
          }
        }

        return;
      }

      v18 = v14;
    }

    v34 = v18;
    v35 = v20;
    v14 = v18;
    if (v20)
    {
LABEL_18:
      a2 = (v35 - 1) & v35;
      a3 = *(*(v15 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v35)))));

      if (a3)
      {
        goto LABEL_22;
      }

LABEL_25:
      sub_100093854();

      v38 = v191;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock = v42;
        *v41 = 136315138;
        v43 = [v38 identifier];
        v44 = v176;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v45 = v174;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        (*(v175 + 8))(v44, v45);
        v49 = sub_1002FFA0C(v46, v48, &aBlock);

        *(v41 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v39, v40, "Discovered characteristics for unknown peripheral %s", v41, 0xCu);
        sub_1000752F4(v42);
      }

      sub_1000EF154(v38);
      return;
    }

    while (1)
    {
      v14 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v14 >= i)
      {
        goto LABEL_25;
      }

      v35 = v23[v14];
      ++v34;
      if (v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Not running", v30, 2u);
  }
}

void sub_1000FDC28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 discoverCharacteristics:isa forService:a3];
}

void sub_1000FDCCC(uint64_t *a1, void *a2, uint64_t a3)
{
  v219 = a2;
  v221 = a1;
  v5 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v195 - v7;
  v211 = type metadata accessor for DispatchWorkItemFlags();
  v210 = *(v211 - 8);
  v9 = *(v210 + 64);
  __chkstk_darwin(v211);
  v208 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for DispatchQoS();
  v207 = *(v209 - 8);
  v11 = *(v207 + 64);
  __chkstk_darwin(v209);
  v206 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for DispatchTime();
  v205 = *(v212 - 8);
  v13 = *(v205 + 64);
  v14 = __chkstk_darwin(v212);
  v202 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v204 = &v195 - v16;
  v217 = type metadata accessor for UUID();
  v17 = *(v217 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v217);
  v213 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v195 - v22;
  __chkstk_darwin(v21);
  v25 = &v195 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v31 = qword_10051B7F0;
  *v30 = qword_10051B7F0;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v203 = v31;
  v32 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Not running", v42, 2u);
    }

    goto LABEL_9;
  }

  v200 = a3;
  v197 = v8;
  v201 = v25;
  v218 = v17;
  v33 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v216 = v3;
  v34 = *(v3 + v33);
  v198 = v23;
  v215 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    v35 = v225[6];
    v36 = v225[7];
    v37 = v225[8];
    v38 = v225[9];
    v39 = v225[10];
  }

  else
  {
    v43 = -1 << *(v34 + 32);
    v36 = v34 + 56;
    v37 = ~v43;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v39 = (v45 & *(v34 + 56));
    v35 = v34;
    swift_bridgeObjectRetain_n();
    v38 = 0;
  }

  v214 = v37;
  v46 = (v37 + 64) >> 6;
  if (v35 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v47 = v38;
  v48 = v39;
  v49 = v38;
  if (!v39)
  {
    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v46)
      {
        goto LABEL_26;
      }

      v48 = *(v36 + 8 * v49);
      ++v47;
      if (v48)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

LABEL_19:
  v50 = (v48 - 1) & v48;
  v32 = *(*(v35 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));

  if (!v32)
  {
LABEL_26:
    sub_100093854();

    v55 = v221;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136315138;
      v60 = [v55 identifier];
      v61 = v201;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v62 = v217;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v218 + 8))(v61, v62);
      v66 = sub_1002FFA0C(v63, v65, aBlock);

      *(v58 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Read characteristic for unknown peripheral %s", v58, 0xCu);
      sub_1000752F4(v59);
    }

    sub_1000EF154(v55);
    return;
  }

  while (1)
  {
    v220 = v39;
    v17 = v35;
    v52 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    v53 = *(v32 + 24);
    v54 = static NSObject.== infix(_:_:)();

    if (v54)
    {
      break;
    }

    v38 = v49;
    v39 = v50;
    v35 = v17;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v51 = __CocoaSet.Iterator.next()();
    if (v51)
    {
      v225[0] = v51;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v32 = aBlock[0];
      v49 = v38;
      v50 = v39;
      if (aBlock[0])
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  v199 = v52;
  v196 = v32;
  sub_100093854();

  v67 = v219;
  if (v200)
  {
    v68 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    swift_errorRetain();
    v69 = v67;
    v70 = v221;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v220 = v70;
      v74 = v73;
      v75 = swift_slowAlloc();
      v215 = v68;
      v76 = v75;
      v214 = swift_slowAlloc();
      aBlock[0] = v214;
      *v74 = 138412802;
      v77 = [v69 UUID];
      *(v74 + 4) = v77;
      *v76 = v77;
      *(v74 + 12) = 2080;
      v78 = [v220 identifier];
      v79 = v201;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v80 = v217;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v69;
      v84 = v83;
      (*(v218 + 8))(v79, v80);
      v85 = sub_1002FFA0C(v81, v84, aBlock);
      v69 = v82;

      *(v74 + 14) = v85;
      *(v74 + 22) = 2112;
      swift_errorRetain();
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 24) = v86;
      v76[1] = v86;
      _os_log_impl(&_mh_execute_header, v71, v72, "Failed to read characteristic %@ for %s error %@", v74, 0x20u);
      sub_100068FC4(&unk_100503F70, &unk_10040B2E0);
      swift_arrayDestroy();

      sub_1000752F4(v214);

      v70 = v220;
    }

    v87 = v196;
    v88 = v196[10];
    if (v88 < 3)
    {
      v196[10] = v88 + 1;

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 134217984;
        *(v91 + 4) = v87[10];

        _os_log_impl(&_mh_execute_header, v89, v90, "Retry %ld for reading characteristic", v91, 0xCu);
      }

      else
      {
      }

      v158 = v211;
      v159 = v210;
      v160 = v202;
      static DispatchTime.now()();
      v161 = v204;
      + infix(_:_:)();
      v221 = *(v205 + 8);
      (v221)(v160, v212);
      v162 = swift_allocObject();
      *(v162 + 16) = v70;
      *(v162 + 24) = v69;
      aBlock[4] = sub_10011F20C;
      aBlock[5] = v162;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C77A0;
      v163 = _Block_copy(aBlock);
      v164 = v69;
      v165 = v70;
      v166 = v206;
      static DispatchQoS.unspecified.getter();
      v225[0] = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v167 = v208;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v163);

      (*(v159 + 8))(v167, v158);
      (*(v207 + 8))(v166, v209);
      (v221)(v161, v212);

      return;
    }
  }

  v92 = v196;
  v196[10] = 0;
  swift_beginAccess();
  v94 = v92[8];
  v93 = v92[9];
  v95 = sub_1000752B0(v92 + 5, v94);
  v220 = &v195;
  v96 = *(v94 - 8);
  v97 = *(v96 + 64);
  __chkstk_darwin(v95);
  v99 = &v195 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v96 + 16))(v99);
  v100 = (*(v93 + 16))(v94, v93);
  (*(v96 + 8))(v99, v94);
  v101 = *(v100 + 16);
  v17 = v218;
  v102 = v217;
  v103 = v213;
  if (v101)
  {
    v104 = 0;
    v105 = (v218 + 8);
    while (v104 < *(v100 + 16))
    {
      (*(v17 + 16))(v103, v100 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v104, v102);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v107 = [objc_opt_self() UUIDWithNSUUID:isa];

      v108 = [v219 UUID];
      LOBYTE(isa) = static NSObject.== infix(_:_:)();

      if (isa)
      {

        v17 = v218;
        v110 = v197;
        (*(v218 + 32))(v197, v103, v102);
        v109 = 0;
        goto LABEL_43;
      }

      ++v104;
      (*v105)(v103, v102);
      v17 = v218;
      if (v101 == v104)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_82;
  }

LABEL_41:

  v109 = 1;
  v110 = v197;
LABEL_43:
  (*(v17 + 56))(v110, v109, 1, v102);
  v111 = (*(v17 + 48))(v110, 1, v102);
  v112 = v198;
  v113 = v219;
  if (v111 == 1)
  {
    sub_100075768(v110, &unk_10050BE80, &unk_10040B360);
    v114 = v113;
    v115 = v221;
    v40 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119 = v17;
      v120 = swift_slowAlloc();
      v225[0] = v120;
      *v117 = 138412546;
      v121 = [v114 UUID];
      *(v117 + 4) = v121;
      *v118 = v121;
      *(v117 + 12) = 2080;
      v122 = [v115 identifier];
      v123 = v201;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v124 = v217;
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v126;
      (*(v119 + 8))(v123, v124);
      v128 = sub_1002FFA0C(v125, v127, v225);

      *(v117 + 14) = v128;
      _os_log_impl(&_mh_execute_header, v40, v116, "Ignoring read characteristic which was not requested %@ for %s", v117, 0x16u);
      sub_100075768(v118, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v120);
    }

LABEL_9:

    return;
  }

  (*(v17 + 32))(v198, v110, v102);
  v129 = v196;
  swift_beginAccess();
  if (*(v129[12] + 16))
  {
    v130 = v129[12];

    sub_10008C808(v112);
    v132 = v131;

    if (v132)
    {
      v133 = v113;
      v35 = v221;
      v32 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v224 = v221;
        *v135 = 138412546;
        v137 = [v133 UUID];
        *(v135 + 4) = v137;
        *v136 = v137;
        *(v135 + 12) = 2080;
        v138 = [v35 identifier];
        v139 = v201;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v140 = v217;
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v143 = v142;
        (*(v218 + 8))(v139, v140);
        v144 = sub_1002FFA0C(v141, v143, &v224);

        *(v135 + 14) = v144;
        _os_log_impl(&_mh_execute_header, v32, v134, "Read characteristic %@ multiple times for %s", v135, 0x16u);
        sub_100075768(v136, &unk_100503F70, &unk_10040B2E0);

        sub_1000752F4(v221);
        v17 = v218;

LABEL_70:
        sub_1000EF154(v35);

        (*(v17 + 8))(v198, v140);
        return;
      }

LABEL_69:

      v140 = v217;
      goto LABEL_70;
    }
  }

  v145 = [v113 value];
  if (v145)
  {
    v146 = v145;
    v147 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v148;

    swift_beginAccess();
    sub_100069E2C(v147, v149);
    v150 = v129[12];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v223 = v129[12];
    v129[12] = 0x8000000000000000;
    sub_100315A7C(v147, v149, v112, isUniquelyReferenced_nonNull_native);
    v129[12] = v223;
    swift_endAccess();
    v152 = v147;
    v113 = v219;
    sub_10006A178(v152, v149);
  }

  swift_beginAccess();
  v153 = sub_10010E5EC(v113, &qword_100503668, CBCharacteristic_ptr, &unk_100504050, &qword_10040AA20);
  swift_endAccess();

  v154 = v129[11];
  if ((v154 & 0xC000000000000001) != 0)
  {
    if (v154 < 0)
    {
      v155 = v129[11];
    }

    v156 = v129[11];

    v157 = __CocoaSet.count.getter();
  }

  else
  {
    v157 = *(v154 + 16);
  }

  if (v157)
  {

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 134217984;
      v171 = v129[11];
      if ((v171 & 0xC000000000000001) != 0)
      {
        if (v171 < 0)
        {
          v172 = v129[11];
        }

        v173 = v129[11];

        v174 = __CocoaSet.count.getter();
      }

      else
      {
        v174 = *(v171 + 16);
      }

      *(v170 + 4) = v174;

      _os_log_impl(&_mh_execute_header, v168, v169, "Waiting to read %ld remaining characteristics", v170, 0xCu);

      v17 = v218;
    }

    else
    {
    }

    (*(v17 + 8))(v112, v217);
  }

  else
  {
    v175 = v129[12];
    v129[12] = &_swiftEmptyDictionarySingleton;
    v176 = v129[8];
    v177 = v129[9];
    v178 = sub_1000752B0(v129 + 5, v176);
    v179 = *(v176 - 8);
    v180 = *(v179 + 64);
    __chkstk_darwin(v178);
    v182 = &v195 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v179 + 16))(v182);
    v183 = (*(v177 + 80))(v176, v177);
    (*(v179 + 8))(v182, v176);
    v184 = v129[2];

    v185 = v183(v175, v184);

    *(v129 + 60) = v185;
    *(v129 + 122) = 0;
    v186 = v129;
    if (!*(v129[12] + 16))
    {
      v129[12] = &_swiftEmptyDictionarySingleton;

      *(v129 + 32) = 5;
      v193 = v218;
      v194 = v198;
      if ((*(v129 + 122) & 1) == 0)
      {
        [v129[3] openL2CAPChannel:*(v129 + 60)];

        (*(v193 + 8))(v194, v217);
        return;
      }

      goto LABEL_83;
    }

    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.info.getter();
    v189 = os_log_type_enabled(v187, v188);
    v190 = v218;
    v191 = v198;
    if (v189)
    {
      v192 = swift_slowAlloc();
      *v192 = 134217984;
      *(v192 + 4) = *(v186[12] + 16);

      _os_log_impl(&_mh_execute_header, v187, v188, "Waiting for acknowledgement of written characteristics pending %ld", v192, 0xCu);
    }

    else
    {
    }

    (*(v190 + 8))(v191, v217);
  }
}

void sub_1000FF920(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v215 = a2;
  v217 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v204 = *(v5 - 8);
  v6 = *(v204 + 64);
  __chkstk_darwin(v5);
  v202 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for DispatchQoS();
  v201 = *(v203 - 8);
  v8 = *(v201 + 64);
  __chkstk_darwin(v203);
  v200 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for DispatchTime();
  v207 = *(v206 - 8);
  v10 = *(v207 + 64);
  v11 = __chkstk_darwin(v206);
  v198 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v205 = &v192 - v13;
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v208 = &v192 - v16;
  v213 = type metadata accessor for UUID();
  v17 = *(v213 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v213);
  v21 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v209 = &v192 - v23;
  v197 = v24;
  __chkstk_darwin(v22);
  v26 = &v192 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v32 = qword_10051B7F0;
  *v31 = qword_10051B7F0;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v199 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (!*&v3[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager])
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Not running", v42, 2u);
LABEL_27:
    }

LABEL_28:

    return;
  }

  v193 = v5;
  v196 = v21;
  v194 = v26;
  v214 = v17;
  v33 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v212 = v3;
  v34 = *&v3[v33];
  v195 = a3;
  v211 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    v35 = v221;
    v36 = v222;
    v37 = v223;
    v38 = v224;
    v39 = v225;
  }

  else
  {
    v43 = -1 << *(v34 + 32);
    v36 = v34 + 56;
    v37 = ~v43;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v39 = v45 & *(v34 + 56);
    v35 = v34;
    swift_bridgeObjectRetain_n();
    v38 = 0;
  }

  v210 = v37;
  v46 = (v37 + 64) >> 6;
  if (v35 < 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v47 = v38;
  v48 = v39;
  v49 = v38;
  if (!v39)
  {
    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v46)
      {
        goto LABEL_25;
      }

      v48 = *(v36 + 8 * v49);
      ++v47;
      if (v48)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_18:
  v50 = (v48 - 1) & v48;
  v51 = *(*(v35 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));

  if (!v51)
  {
LABEL_25:
    sub_100093854();

    v56 = v215;
    v57 = v217;
    v40 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v59 = 138412546;
      v62 = [v56 UUID];
      *(v59 + 4) = v62;
      *v60 = v62;
      *(v59 + 12) = 2080;
      v63 = [v57 identifier];
      v64 = v196;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v65 = v213;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      (*(v214 + 8))(v64, v65);
      v69 = sub_1002FFA0C(v66, v68, aBlock);

      *(v59 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v40, v58, "Characteristic %@ written for disconnected/unknown peripheral %s", v59, 0x16u);
      sub_100075768(v60, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v61);

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v53 = v35;
    v54 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    v55 = *(v51 + 24);
    v216 = v54;
    v37 = static NSObject.== infix(_:_:)();

    if (v37)
    {
      break;
    }

    v38 = v49;
    v39 = v50;
    v35 = v53;
    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v52 = __CocoaSet.Iterator.next()();
    if (v52)
    {
      v220 = v52;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v51 = aBlock[0];
      v49 = v38;
      v50 = v39;
      if (aBlock[0])
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  sub_100093854();

  swift_beginAccess();
  v70 = *(v51 + 64);
  v71 = *(v51 + 72);
  v210 = v51;
  v72 = sub_1000752B0((v51 + 40), v70);
  v192 = &v192;
  v73 = *(v70 - 8);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72);
  v76 = &v192 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v76);
  v77 = (*(v71 + 16))(v70, v71);
  (*(v73 + 8))(v76, v70);
  v78 = *(v77 + 16);
  v79 = v213;
  v80 = v209;
  if (v78)
  {
    v81 = 0;
    v211 = (v214 + 16);
    v82 = (v214 + 8);
    while (v81 < *(v77 + 16))
    {
      (*(v214 + 16))(v80, v77 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v81, v79);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v84 = [objc_opt_self() UUIDWithNSUUID:{isa, v192}];

      v85 = [v215 UUID];
      LOBYTE(isa) = static NSObject.== infix(_:_:)();

      if (isa)
      {

        v87 = v214;
        v88 = v208;
        (*(v214 + 32))(v208, v80, v79);
        v86 = 0;
        goto LABEL_36;
      }

      ++v81;
      (*v82)(v80, v79);
      if (v78 == v81)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_66;
  }

LABEL_34:

  v86 = 1;
  v87 = v214;
  v88 = v208;
LABEL_36:
  (*(v87 + 56))(v88, v86, 1, v79);
  v89 = (*(v87 + 48))(v88, 1, v79);
  v90 = v195;
  if (v89 == 1)
  {
    sub_100075768(v88, &unk_10050BE80, &unk_10040B360);
    v91 = v215;
    v92 = v217;
    v40 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v93))
    {
      v94 = v79;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      aBlock[0] = v97;
      *v95 = 138412546;
      v98 = [v91 UUID];
      *(v95 + 4) = v98;
      *v96 = v98;
      *(v95 + 12) = 2080;
      v99 = [v92 identifier];
      v100 = v196;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v101 = v94;
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      (*(v87 + 8))(v100, v101);
      v105 = sub_1002FFA0C(v102, v104, aBlock);

      *(v95 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v40, v93, "Unknown characteristic %@ for %s", v95, 0x16u);
      sub_100075768(v96, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v97);
    }

    goto LABEL_28;
  }

  v106 = *(v87 + 32);
  v106(v194, v88, v79);
  if (!v90)
  {
    *(v210 + 80) = 0;
    v132 = v215;
    v133 = v217;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = v79;
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      aBlock[0] = v139;
      *v137 = 138412546;
      v140 = [v132 UUID];
      *(v137 + 4) = v140;
      *v138 = v140;
      *(v137 + 12) = 2080;
      v141 = [v133 identifier];
      v142 = v196;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v144;
      v36 = v214;
      (*(v214 + 8))(v142, v136);
      v146 = sub_1002FFA0C(v143, v145, aBlock);

      *(v137 + 14) = v146;
      _os_log_impl(&_mh_execute_header, v134, v135, "Characteristic %@ written for %s", v137, 0x16u);
      sub_100075768(v138, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v139);
    }

    else
    {

      v36 = v214;
    }

    v49 = v194;
    v150 = v210;
    swift_beginAccess();
    sub_100145508(v49, &v219);
    v37 = v150;
    sub_10006A2D0(v219, *(&v219 + 1));
    swift_endAccess();
    if (*(*(v150 + 96) + 16))
    {
      (*(v36 + 8))(v49, v213);

      return;
    }

LABEL_61:
    *(v37 + 96) = &_swiftEmptyDictionarySingleton;

    *(v37 + 32) = 5;
    v191 = v213;
    if ((*(v37 + 122) & 1) == 0)
    {
      [*(v37 + 24) openL2CAPChannel:*(v37 + 120)];

      (*(v36 + 8))(v49, v191);
      return;
    }

    goto LABEL_67;
  }

  v211 = v106;
  v107 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  swift_errorRetain();
  v108 = v215;
  v109 = v217;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();

  v112 = os_log_type_enabled(v110, v111);
  v216 = v108;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v217 = v107;
    v114 = v113;
    v115 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    aBlock[0] = v215;
    *v114 = 138412802;
    v116 = [v108 UUID];
    *(v114 + 4) = v116;
    *v115 = v116;
    *(v114 + 12) = 2080;
    v117 = [v109 identifier];
    v118 = v196;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v119 = v109;
    v120 = v213;
    v121 = dispatch thunk of CustomStringConvertible.description.getter();
    v123 = v122;
    v124 = v120;
    v109 = v119;
    (*(v214 + 8))(v118, v124);
    v125 = sub_1002FFA0C(v121, v123, aBlock);

    *(v114 + 14) = v125;
    *(v114 + 22) = 2112;
    swift_errorRetain();
    v126 = _swift_stdlib_bridgeErrorToNSError();
    *(v114 + 24) = v126;
    v115[1] = v126;
    _os_log_impl(&_mh_execute_header, v110, v111, "Failed to write characteristic %@ for %s error %@", v114, 0x20u);
    sub_100068FC4(&unk_100503F70, &unk_10040B2E0);
    swift_arrayDestroy();

    sub_1000752F4(v215);
  }

  v127 = v210;
  v128 = *(v210 + 80);
  if (v128 > 2)
  {
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&_mh_execute_header, v147, v148, "Retries exhausted for writing characteristics", v149, 2u);
    }

    sub_1000EF154(v109);

    (*(v214 + 8))(v194, v213);
  }

  else
  {
    *(v210 + 80) = v128 + 1;

    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 134217984;
      *(v131 + 4) = *(v127 + 80);

      _os_log_impl(&_mh_execute_header, v129, v130, "Retry %ld for writing characteristics", v131, 0xCu);
    }

    else
    {
    }

    swift_beginAccess();
    v151 = *(v127 + 96);
    if (*(v151 + 16) && (v152 = sub_10008C808(v194), (v153 & 1) != 0))
    {
      v154 = *(v151 + 56) + 16 * v152;
      v215 = *v154;
      v155 = v215;
      v216 = v109;
      v156 = *(v154 + 8);
      swift_endAccess();
      sub_100069E2C(v155, v156);
      v157 = v198;
      static DispatchTime.now()();
      + infix(_:_:)();
      v158 = *(v207 + 8);
      v207 += 8;
      v217 = v158;
      (v158)(v157, v206);
      v159 = v214;
      v160 = v196;
      v161 = v213;
      (*(v214 + 16))(v196, v194, v213);
      v162 = (*(v159 + 80) + 24) & ~*(v159 + 80);
      v163 = (v197 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
      v164 = swift_allocObject();
      v165 = v212;
      *(v164 + 16) = v212;
      v211(v164 + v162, v160, v161);
      v166 = (v164 + v163);
      v167 = v215;
      *v166 = v215;
      v166[1] = v156;
      v168 = v216;
      *(v164 + ((v163 + 23) & 0xFFFFFFFFFFFFFFF8)) = v216;
      aBlock[4] = sub_10011F12C;
      aBlock[5] = v164;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7750;
      v169 = _Block_copy(aBlock);
      v170 = v168;
      sub_100069E2C(v167, v156);
      v171 = v165;
      v172 = v200;
      static DispatchQoS.unspecified.getter();
      *&v219 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v173 = v202;
      v174 = v193;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v175 = v205;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v169);
      sub_10006A178(v167, v156);

      (*(v204 + 8))(v173, v174);
      (*(v201 + 8))(v172, v203);
      (v217)(v175, v206);
      (*(v159 + 8))(v194, v213);
    }

    else
    {
      swift_endAccess();
      v176 = v216;
      v177 = v109;
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        aBlock[0] = v217;
        *v180 = 138412546;
        v182 = [v176 UUID];
        *(v180 + 4) = v182;
        *v181 = v182;
        *(v180 + 12) = 2080;
        v183 = [v177 identifier];
        v184 = v196;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v185 = v213;
        v186 = dispatch thunk of CustomStringConvertible.description.getter();
        v188 = v187;
        v189 = v214;
        (*(v214 + 8))(v184, v185);
        v190 = sub_1002FFA0C(v186, v188, aBlock);

        *(v180 + 14) = v190;
        _os_log_impl(&_mh_execute_header, v178, v179, "Missing value for %@ for %s", v180, 0x16u);
        sub_100075768(v181, &unk_100503F70, &unk_10040B2E0);

        sub_1000752F4(v217);
      }

      else
      {

        v189 = v214;
        v185 = v213;
      }

      sub_1000EF154(v177);

      (*(v189 + 8))(v194, v185);
    }
  }
}

uint64_t sub_100101484(uint64_t a1, NSObject *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a5 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F4EB4(a2, a3, a4, v13);
  return (*(v10 + 8))(v13, v9);
}

void sub_1001015CC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

void sub_100101668(void *a1, void *a2, int64_t a3)
{
  v73 = a2;
  v77 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v15 = qword_10051B7F0;
    *v14 = qword_10051B7F0;
    (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v14, v10);
    if ((v15 & 1) == 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not running", v23, 2u);
      }

      return;
    }

    v68 = v16;
    v70 = v9;
    v71 = v6;
    v72 = v5;
    v17 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v76 = v3;
    v18 = *(v3 + v17);
    v69 = a3;
    v75 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v11 = v79[4];
      v19 = v79[5];
      v3 = v79[6];
      v20 = v79[7];
      v14 = v79[8];
    }

    else
    {
      v24 = -1 << *(v18 + 32);
      v19 = v18 + 56;
      v3 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v14 = (v26 & *(v18 + 56));
      v11 = v18;
      swift_bridgeObjectRetain_n();
      v20 = 0;
    }

    v74 = v3;
    a3 = (v3 + 64) >> 6;
    if (v11 < 0)
    {
      while (1)
      {
        v29 = __CocoaSet.Iterator.next()();
        if (!v29)
        {
          goto LABEL_25;
        }

        v78 = v29;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v5 = v79[0];
        v10 = v20;
        v9 = v14;
        if (!v79[0])
        {
          goto LABEL_25;
        }

LABEL_22:
        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v6 = *(v5 + 24);
        v3 = static NSObject.== infix(_:_:)();

        if (v3)
        {
          break;
        }

        v20 = v10;
        v14 = v9;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }
      }

      sub_100093854();

      if (v69)
      {
        swift_errorRetain();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v79[0] = v45;
          *v44 = 136315138;
          swift_getErrorValue();
          v46 = Error.localizedDescription.getter();
          v48 = sub_1002FFA0C(v46, v47, v79);

          *(v44 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v42, v43, "Failed to open channel error %s", v44, 0xCu);
          sub_1000752F4(v45);
        }

        sub_1000EF154(v77);

LABEL_32:

        return;
      }

      v49 = v76;
      v50 = v73;
      if (!v73)
      {
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "Opened channel is null", v66, 2u);
        }

        sub_1000EF154(v77);
        goto LABEL_32;
      }

      *(v5 + 32) = 6;
      v51 = *(v5 + 128);
      *(v5 + 128) = v50;
      v52 = v50;

      v53 = [v52 inputStream];
      if (v53)
      {
        v54 = v53;
        [v53 setDelegate:v49];

        v55 = [v52 outputStream];
        v56 = v68;
        if (v55)
        {
          v57 = v55;
          [v55 setDelegate:v49];

          v58 = [v52 inputStream];
          CFReadStreamSetDispatchQueue(v58, v56);

          v59 = [v52 outputStream];
          CFWriteStreamSetDispatchQueue(v59, v56);

          v60 = [v52 inputStream];
          if (v60)
          {
            v61 = v60;
            [v60 open];

            v62 = [v52 outputStream];
            if (v62)
            {
              v63 = v62;
              [v62 open];

              return;
            }

            goto LABEL_48;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_14:
    v27 = v20;
    v28 = v14;
    v10 = v20;
    if (v14)
    {
      break;
    }

    while (1)
    {
      v10 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v10 >= a3)
      {
        goto LABEL_25;
      }

      v28 = *(v19 + 8 * v10);
      ++v27;
      if (v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_18:
  v9 = ((v28 - 1) & v28);
  v5 = *(*(v11 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v28)))));

  if (v5)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_100093854();

  v30 = v77;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v79[0] = v34;
    *v33 = 136315138;
    v35 = [v30 identifier];
    v36 = v70;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v37 = v72;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (v71[1])(v36, v37);
    v41 = sub_1002FFA0C(v38, v40, v79);

    *(v33 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Channel open for disconnected/unknown peripheral %s", v33, 0xCu);
    sub_1000752F4(v34);
  }

  sub_1000EF154(v30);
}

void sub_100102044(void *a1, uint64_t a2)
{
  v129 = a2;
  v133 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v128 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for UUID();
  v125 = *(v126 - 8);
  v12 = *(v125 + 64);
  __chkstk_darwin(v126);
  v124 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v127 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_42:

      return;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not running";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

    goto LABEL_42;
  }

  v20 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v132 = v2;
  v21 = *(v2 + v20);
  v123 = v3;
  v122 = v8;
  v131 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    v23 = v143;
    v22 = v144;
    v24 = v145;
    v25 = v146;
    v26 = v147;
  }

  else
  {
    v31 = -1 << *(v21 + 32);
    v22 = (v21 + 56);
    v24 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v26 = v33 & *(v21 + 56);
    v23 = v21;
    swift_bridgeObjectRetain_n();
    v25 = 0;
  }

  v119 = v9;
  v120 = v7;
  v121 = v4;
  v130 = v24;
  v34 = (v24 + 64) >> 6;
  while (1)
  {
    v35 = v26;
    if (v23 < 0)
    {
      v39 = __CocoaSet.Iterator.next()();
      if (v39)
      {
        v142 = v39;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v38 = aBlock;
        if (aBlock)
        {
          goto LABEL_24;
        }
      }

LABEL_39:
      sub_100093854();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_42;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Received stream event for disconnected/unknown peripheral";
      goto LABEL_41;
    }

    v36 = v25;
    v37 = v26;
    if (!v26)
    {
      while (1)
      {
        v25 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v25 >= v34)
        {
          goto LABEL_39;
        }

        v37 = v22[v25];
        ++v36;
        if (v37)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_20:
    v26 = (v37 - 1) & v37;
    v38 = *(*(v23 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v37)))));

    if (!v38)
    {
      goto LABEL_39;
    }

LABEL_24:
    v40 = *(v38 + 128);
    if (v40)
    {
      v41 = [v40 inputStream];
      v134 = v38;
      if (v41)
      {
        v7 = v41;
        sub_10009393C(0, &qword_100504030, NSStream_ptr);
        v42 = v133;
        v43 = static NSObject.== infix(_:_:)();

        v38 = v134;
        if (v43)
        {
          break;
        }
      }

      v44 = *(v38 + 128);
      if (v44)
      {
        v45 = [v44 outputStream];
        if (v45)
        {
          v7 = v45;
          sub_10009393C(0, &qword_100504030, NSStream_ptr);
          v46 = v133;
          v47 = static NSObject.== infix(_:_:)();

          v38 = v134;
          if (v47)
          {
            break;
          }
        }
      }
    }
  }

  sub_100093854();

  LOBYTE(v26) = v129;
  if ((v129 & 8) != 0)
  {
    v57 = [v133 streamError];
    if (v57)
    {
      v58 = v57;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        v63 = v58;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v64;
        *v62 = v64;
        _os_log_impl(&_mh_execute_header, v59, v60, "Stream error %@", v61, 0xCu);
        sub_100075768(v62, &unk_100503F70, &unk_10040B2E0);

        v59 = v63;
      }

      else
      {
      }

      v38 = v134;
      goto LABEL_53;
    }

    v59 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "Stream unknown error";
      goto LABEL_50;
    }

LABEL_53:

    v27 = *(v38 + 24);
    sub_1000EF154(v27);
LABEL_54:

    goto LABEL_42;
  }

  v25 = v133;
  if ((v129 & 0x10) != 0)
  {
    v59 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "Stream ended";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v59, v65, v67, v66, 2u);
      v38 = v134;

      goto LABEL_53;
    }

    goto LABEL_53;
  }

  v35 = v123;
  v7 = v122;
  if ((v129 & 1) == 0)
  {
    goto LABEL_70;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v48 = *(v134 + 128)) == 0)
  {
LABEL_57:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v68 = *(v134 + 128);
      if (v68)
      {
        v69 = v25;
        v70 = [v68 outputStream];
        if (v70)
        {
          v71 = v70;
          sub_10009393C(0, &qword_100504038, NSOutputStream_ptr);
          v72 = v69;
          v73 = static NSObject.== infix(_:_:)();

          if (v73)
          {
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              v56 = "Output stream is now open";
LABEL_63:
              _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);
            }

            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }
    }

    goto LABEL_66;
  }

  v22 = v25;
  v49 = [v48 inputStream];
  if (!v49 || (v50 = v49, sub_10009393C(0, &unk_100504040, NSInputStream_ptr), v51 = v22, v52 = static NSObject.== infix(_:_:)(), v50, v51, (v52 & 1) == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Input stream is now open";
    goto LABEL_63;
  }

LABEL_64:

LABEL_65:
LABEL_66:
  v38 = v134;
  v74 = *(v134 + 32);
  if (v74 == 7)
  {
    *(v134 + 32) = 8;
    v75 = *(v38 + 16);

    v76 = v124;
    UUID.init()();
    v77 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
    swift_beginAccess();
    (*(v125 + 40))(v75 + v77, v76, v126);
    swift_endAccess();
    *(v75 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = 1;
    v78 = swift_allocObject();
    *(v78 + 16) = v134;
    *(v78 + 24) = v75;
    v140 = sub_10011F030;
    v141 = v78;
    aBlock = _NSConcreteStackBlock;
    v137 = 1107296256;
    v138 = sub_100080830;
    v139 = &unk_1004C7700;
    v79 = _Block_copy(&aBlock);

    v80 = v128;
    static DispatchQoS.unspecified.getter();
    v142 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v81 = v120;
    LOBYTE(v26) = v129;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v82 = v79;
    v38 = v134;
    _Block_release(v82);

    (*(v121 + 8))(v81, v35);
    v83 = v80;
    v7 = v122;
    (*(v119 + 8))(v83, v122);
  }

  else if (v74 == 6)
  {
    *(v134 + 32) = 7;
  }

LABEL_70:
  if ((v26 & 4) != 0)
  {
    sub_1000F22EC(v38);
  }

  if ((v26 & 2) == 0)
  {

    return;
  }

  objc_opt_self();
  v84 = swift_dynamicCastObjCClass();
  if (!v84)
  {
    v27 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v27, v105, "Unexpected stream", v106, 2u);
    }

    goto LABEL_54;
  }

  v85 = v84;
  swift_beginAccess();
  v86 = *(v38 + 136);
  v87 = v38;
  v88 = *(v86 + 2);
  swift_beginAccess();
  v89 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v87 + 136) = v86;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v86 = sub_10012F1C4(0, v88, 0, v86);
  }

  v91 = v134;
  *(v134 + 136) = v86;

  v92 = [v85 read:v86 + 32 maxLength:v88];
  swift_endAccess();

  if (v92 < 1)
  {
  }

  else
  {
    v133 = v89;
    v93 = v7;
    v94 = sub_1001E0BBC((*(v91 + 136) + 32), v92);
    v96 = v95;
    sub_100069E2C(v94, v95);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();
    sub_10006A178(v94, v96);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      aBlock = v132;
      *v99 = 136315138;
      v135 = sub_100288788(v94, v96);
      v100 = v93;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v101 = BidirectionalCollection<>.joined(separator:)();
      v103 = v102;

      v104 = sub_1002FFA0C(v101, v103, &aBlock);

      *(v99 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v97, v98, ">>> Received %s", v99, 0xCu);
      sub_1000752F4(v132);
    }

    else
    {

      v100 = v93;
    }

    v107 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v109 = v134;
    v110 = v125;
    v111 = v124;
    v112 = v126;
    (*(v125 + 16))(v124, *(v134 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v126);
    v113 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v110 + 8))(v111, v112);
    [v107 bleLogMessageReceived:isa peerUUID:v113];

    v114 = swift_allocObject();
    v114[2] = v109;
    v114[3] = v94;
    v114[4] = v96;
    v140 = sub_10011EFD4;
    v141 = v114;
    aBlock = _NSConcreteStackBlock;
    v137 = 1107296256;
    v138 = sub_100080830;
    v139 = &unk_1004C76B0;
    v115 = _Block_copy(&aBlock);

    sub_100069E2C(v94, v96);
    v116 = v128;
    static DispatchQoS.unspecified.getter();
    v135 = _swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v117 = v120;
    v118 = v123;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v115);

    sub_10006A178(v94, v96);
    (*(v121 + 8))(v117, v118);
    (*(v119 + 8))(v116, v100);
  }
}

uint64_t sub_100103398(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[8];
  v5 = a1[9];
  v6 = sub_1000752B0(a1 + 5, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (*(v5 + 88))(v4, v5);
  (*(v7 + 8))(v10, v4);
  v11(0, a2);
}

uint64_t sub_1001034DC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1[8];
  v7 = a1[9];
  v8 = sub_1000752B0(a1 + 5, v6);
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  v13 = (*(v7 + 96))(v6, v7);
  (*(v9 + 8))(v12, v6);
  v14 = a1[2];

  v13(a2, a3, v14);
}

void sub_1001036EC(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
      v16 = swift_beginAccess();
      v17 = *(v3 + v15);
      __chkstk_darwin(v16);
      *(&v23 - 2) = a1;

      v18 = v14;
      v19 = sub_1000E3ABC(a2, (&v23 - 4), v17);

      if (v19)
      {
        [v18 setDesiredConnectionLatency:a3 forPeripheral:*(v19 + 24)];
      }

      else
      {
      }
    }

    else
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100103978(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, *(*a1 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v2);
  v7 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

id sub_100103AB0(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  result = [objc_allocWithZone(a2(0)) init];
  *a3 = result;
  return result;
}

id sub_100103AF0()
{
  ObjectType = swift_getObjectType();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest] = 0;
  v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent] = 0;
  v0[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] = 0;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v9, "init");
  v3 = qword_100501D90;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v8[4] = sub_10011EF00;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100193978;
  v8[3] = &unk_1004C7660;
  v6 = _Block_copy(v8);

  os_state_add_handler();
  _Block_release(v6);

  return v4;
}

void *sub_100103CBC()
{
  v1 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v76 = v0;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_42;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = &type metadata for String;
    if (!v3)
    {
      break;
    }

    *&v81[0] = _swiftEmptyArrayStorage;
    v6 = v2;

    result = sub_10019F4C4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v4 = *&v81[0];
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    v8 = v6;
    v9 = 0;
    v77 = v3;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v8 + 8 * v9 + 32);
      }

      v84[0] = 0xD000000000000010;
      v84[1] = 0x8000000100463370;
      v11 = *(v10 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v84[2] = UUID.uuidString.getter();
      v84[3] = v12;
      v13 = v5;
      v84[5] = v5;
      v85[0] = 1936154996;
      v85[1] = 0xE400000000000000;
      v14 = *(v10 + 40);
      v85[5] = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v85[2] = v14;
      v15 = static _DictionaryStorage.allocate(capacity:)();

      sub_10011EF24(v84, &v82);
      v16 = v82;
      v2 = sub_10008C908(v82, *(&v82 + 1));
      if (v17)
      {
        break;
      }

      *(v15 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v2;
      *(v15[6] + 16 * v2) = v16;
      v2 = sub_100075D50(v83, (v15[7] + 32 * v2));
      v18 = v15[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_39;
      }

      v15[2] = v20;
      sub_10011EF24(v85, &v82);
      v21 = v82;
      v2 = sub_10008C908(v82, *(&v82 + 1));
      if (v22)
      {
        break;
      }

      *(v15 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v2;
      *(v15[6] + 16 * v2) = v21;
      v2 = sub_100075D50(v83, (v15[7] + 32 * v2));
      v23 = v15[2];
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_39;
      }

      v15[2] = v24;

      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();

      *&v81[0] = v4;
      v26 = v4[2];
      v25 = v4[3];
      if (v26 >= v25 >> 1)
      {
        sub_10019F4C4((v25 > 1), v26 + 1, 1);
        v4 = *&v81[0];
      }

      ++v9;
      v4[2] = v26 + 1;
      v4[v26 + 4] = v15;
      v8 = v6;
      v5 = v13;
      if (v77 == v9)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v74 = v2;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v74;
  }

LABEL_17:
  *(&v83[0] + 1) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *&v82 = v4;
  sub_100075D50(&v82, v81);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v81, 0x52676E6972696170, 0xEF73747365757165, isUniquelyReferenced_nonNull_native);
  v28 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v29 = *(v76 + v28);
  if (v29 >> 62)
  {
    v75 = *(v76 + v28);
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v75;
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0xEE00726569666974;
  v32 = _swiftEmptyArrayStorage;
  if (v30)
  {
    *&v82 = _swiftEmptyArrayStorage;
    v33 = v29;

    result = sub_10019F464(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      goto LABEL_45;
    }

    v32 = v82;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v34 = 0;
    v35 = v33;
    v80 = v33 & 0xC000000000000001;
    v78 = v30;
    v79 = v33;
    while (1)
    {
      if (v80)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v35 + 8 * v34 + 32);
      }

      v37 = UUID.uuidString.getter();
      v39 = v38;
      v40 = static _DictionaryStorage.allocate(capacity:)();

      v41 = sub_10008C908(0x6E65644972656570, v31);
      v43 = v42;

      if (v43)
      {
        goto LABEL_40;
      }

      v40[(v41 >> 6) + 8] |= 1 << v41;
      v44 = (v40[6] + 16 * v41);
      *v44 = 0x6E65644972656570;
      v44[1] = v31;
      v45 = (v40[7] + 16 * v41);
      *v45 = v37;
      v45[1] = v39;

      v46 = v40[2];
      v19 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v19)
      {
        goto LABEL_41;
      }

      v48 = v31;
      v40[2] = v47;
      *&v82 = v32;
      v50 = v32[2];
      v49 = v32[3];
      if (v50 >= v49 >> 1)
      {
        sub_10019F464((v49 > 1), v50 + 1, 1);
        v32 = v82;
      }

      ++v34;
      v32[2] = v50 + 1;
      v32[v50 + 4] = v40;
      v35 = v79;
      v31 = v48;
      if (v78 == v34)
      {

        v5 = &type metadata for String;
        break;
      }
    }
  }

  *(&v83[0] + 1) = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v82 = v32;
  sub_100075D50(&v82, v81);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v81, 0xD000000000000011, 0x8000000100463090, v51);
  v52 = *(v76 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (v52)
  {
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100409900;
    *(v53 + 32) = 0xD000000000000010;
    *(v53 + 40) = 0x8000000100463370;
    v54 = *(v52 + 32);

    *(v53 + 48) = UUID.uuidString.getter();
    *(v53 + 56) = v55;
    *(v53 + 72) = v5;
    *(v53 + 80) = 1936154996;
    *(v53 + 88) = 0xE400000000000000;
    v56 = *(v52 + 40);
    *(v53 + 120) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    *(v53 + 96) = v56;

    v57 = sub_10008FFDC(v53);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v83[0] + 1) = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    *&v82 = v57;
    sub_100075D50(&v82, v81);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v81, 0xD000000000000015, 0x80000001004630B0, v58);
  }

  else
  {
    *(&v83[0] + 1) = v5;
    *&v82 = 1701736302;
    *(&v82 + 1) = 0xE400000000000000;
    sub_100075D50(&v82, v81);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v81, 0xD000000000000015, 0x80000001004630B0, v59);
  }

  if (*(v76 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest))
  {
    sub_100068FC4(&unk_100507CD0, &unk_100414C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = 0x6E65644972656570;
    *(inited + 40) = v31;

    *(inited + 48) = UUID.uuidString.getter();
    *(inited + 56) = v61;
    v62 = sub_1000910F0(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &unk_100504020, &qword_100409CC0);
    *(&v83[0] + 1) = sub_100068FC4(&qword_100502600, &unk_100417140);
    *&v82 = v62;
    sub_100075D50(&v82, v81);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v81, 0xD000000000000017, 0x80000001004630D0, v63);
  }

  else
  {
    *(&v83[0] + 1) = v5;
    *&v82 = 1701736302;
    *(&v82 + 1) = 0xE400000000000000;
    sub_100075D50(&v82, v81);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v81, 0xD000000000000017, 0x80000001004630D0, v64);
  }

  v65 = *(v76 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn);
  *(&v83[0] + 1) = &type metadata for Bool;
  LOBYTE(v82) = v65;
  sub_100075D50(&v82, v81);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v81, 0xD000000000000019, 0x80000001004630F0, v66);
  v67 = *(v76 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent) != 0;
  *(&v83[0] + 1) = &type metadata for Bool;
  LOBYTE(v82) = v67;
  sub_100075D50(&v82, v81);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v81, 0x41676E6972696170, 0xEC000000746E6567, v68);
  LOBYTE(v82) = *(v76 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state);
  v69 = String.init<A>(describing:)();
  *(&v83[0] + 1) = v5;
  *&v82 = v69;
  *(&v82 + 1) = v70;
  sub_100075D50(&v82, v81);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v81, 0x6574617473, 0xE500000000000000, v71);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = sub_100015DA0("dskblepairing.state", isa);

  return v73;
}

void sub_1001047D0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v225 = *(v2 - 8);
  v3 = v225[8];
  __chkstk_darwin();
  v221 = (&v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchQoS();
  v224 = *(v5 - 8);
  v6 = v224[8];
  __chkstk_darwin();
  v222 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v220 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v19)
  {
    v223 = v5;
    if (qword_100501960 == -1)
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
  v20 = qword_10051B288;
  v21 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v21)
  {
    return;
  }

  v218 = v18;
  v217 = v2;
  v22 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;
  v23 = v1;
  v24 = v21;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v219 = v9;
    v216 = v8;
    v27 = v23;
    v28 = v22;
    v29 = v24;
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    v31 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
    swift_beginAccess();
    v32 = *(&v27->isa + v31);
    if (v32 >> 62)
    {
      if (v32 < 0)
      {
        v79 = *(&v27->isa + v31);
      }

      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v33;
    *(v30 + 12) = 2048;
    v34 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
    swift_beginAccess();
    v35 = *(&v27->isa + v34);
    if (v35 >> 62)
    {
      if (v35 < 0)
      {
        v80 = *(&v27->isa + v34);
      }

      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v29;
    *(v30 + 14) = v36;

    _os_log_impl(&_mh_execute_header, v25, v26, "Trying to process a pending queued request (pairing %ld unpairing %ld)", v30, 0x16u);

    v22 = v28;
    v23 = v27;
    v8 = v216;
    v9 = v219;
  }

  else
  {

    v25 = v23;
  }

  if (*(&v23->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_isCentralManagerPoweredOn) != 1)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_22;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Central manager is not running";
    goto LABEL_21;
  }

  if (*(&v23->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state) || *(&v23->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest) || *(&v23->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest))
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_22;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "A request is in progress";
    goto LABEL_21;
  }

  v214 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest;
  v210 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest;
  v211 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
  v41 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v42 = *(&v23->isa + v41);
  if (v42 >> 62)
  {
    goto LABEL_59;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  while (2)
  {
    v212 = v22;
    v208 = v41;
    if ((v42 & 0xC000000000000001) != 0)
    {
LABEL_99:

      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_110:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_62;
        }

        goto LABEL_111;
      }

      v22 = *(v42 + 32);
    }

    sub_100068FC4(&qword_100503F10, &qword_10040A008);
    v43 = *(v9 + 72);
    v44 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1004098F0;
    v20 = v9 + 16;
    v46 = *(v9 + 16);
    v205 = OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier;
    v214 = v22;
    v206 = v46;
    v46((v45 + v44), v22 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [v24 retrievePeripheralsWithIdentifiers:isa];

    sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v213 = v24;
    v207 = v9 + 16;
    v209 = v23;
    if (v42 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23)
      {
        goto LABEL_32;
      }

LABEL_101:

      v166 = v214;

      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.info.getter();

      v169 = os_log_type_enabled(v167, v168);
      v170 = v209;
      if (v169)
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        aBlock = v172;
        *v171 = 136315138;
        v173 = v166 + v205;
        v174 = v220;
        v206(v220, v173, v8);
        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v175 = dispatch thunk of CustomStringConvertible.description.getter();
        v177 = v176;
        (*(v9 + 8))(v174, v8);
        v178 = sub_1002FFA0C(v175, v177, &aBlock);

        *(v171 + 4) = v178;
        _os_log_impl(&_mh_execute_header, v167, v168, "No paired peripheral found for %s", v171, 0xCu);
        sub_1000752F4(v172);
      }

      v179 = v224;
      v180 = v208;
      swift_beginAccess();
      v181 = *(&v170->isa + v180);
      v182 = v181 >> 62;
      v183 = v225;
      if (v181 >> 62)
      {
        if (v181 < 0)
        {
          v186 = *(&v170->isa + v180);
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_128;
        }

        v187 = _CocoaArrayWrapper.endIndex.getter();
        v183 = v225;
        v179 = v224;
        if (v187)
        {
LABEL_105:
          if ((v181 & 0xC000000000000001) == 0)
          {
            v184 = v181 & 0xFFFFFFFFFFFFFF8;
            if (!*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
              return;
            }

            if (!v182)
            {
              goto LABEL_108;
            }

            goto LABEL_120;
          }

LABEL_119:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v184 = v181 & 0xFFFFFFFFFFFFFF8;
          if (!v182)
          {
LABEL_108:
            v185 = *(v184 + 16);
            goto LABEL_121;
          }

LABEL_120:
          v185 = _CocoaArrayWrapper.endIndex.getter();
LABEL_121:
          v188 = v214;
          if (v185)
          {
            sub_1001A16AC(0, 1);
            swift_endAccess();
            v189 = v188 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted;
            v190 = *(v188 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
            v191 = &unk_100408000;
            v192 = v217;
            v193 = v221;
            v194 = v222;
            if (v190)
            {
              v195 = *(v189 + 8);
              v196 = swift_allocObject();
              v196[2] = v190;
              v196[3] = v195;
              v196[4] = v214;
              v231 = sub_10011F738;
              v232 = v196;
              aBlock = _NSConcreteStackBlock;
              v228 = 1107296256;
              v229 = sub_100080830;
              v230 = &unk_1004C7278;
              v220 = _Block_copy(&aBlock);
              v219 = v195;
              sub_100113B54(v190);

              sub_100113B54(v190);
              static DispatchQoS.unspecified.getter();
              v233 = &_swiftEmptyArrayStorage;
              sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
              sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
              v197 = v224;
              sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v198 = v170;
              v199 = v220;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v191 = &unk_100408000;
              v200 = v199;
              v170 = v198;
              v179 = v197;
              _Block_release(v200);
              v183 = v225;
              sub_1000B2A4C(v190);
              (v183[1])(v193, v192);
              (v179[1])(v194, v223);
            }

            v201 = swift_allocObject();
            *(v201 + 16) = v170;
            v231 = sub_10011F748;
            v232 = v201;
            aBlock = _NSConcreteStackBlock;
            v228 = v191[386];
            v229 = sub_100080830;
            v230 = &unk_1004C7228;
            v202 = _Block_copy(&aBlock);
            v203 = v170;
            static DispatchQoS.unspecified.getter();
            v233 = &_swiftEmptyArrayStorage;
            sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
            sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
            sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v202);

            (v183[1])(v193, v192);
            (v179[1])(v194, v223);
            goto LABEL_125;
          }

          goto LABEL_127;
        }

        __break(1u);
      }

      else if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      __break(1u);
      goto LABEL_119;
    }

    v23 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_101;
    }

LABEL_32:
    v41 = 0;
    v49 = (v214 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
    v216 = v42 & 0xC000000000000001;
    v215 = v42 & 0xFFFFFFFFFFFFFF8;
    v219 = v9;
    while (v216)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v24 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        v225 = v22;

        v24 = v213;
        v55 = [v213 sharedPairingAgent];
        if (v55)
        {
          v56 = v55;
          v57 = v209;
          v58 = *(&v209->isa + v210);
          v59 = v214;
          *(&v209->isa + v210) = v214;

          *(&v57->isa + v211) = 3;
          v60 = *(&v57->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent);
          *(&v57->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent) = v56;
          v61 = v56;

          [(objc_class *)v61 setDelegate:v57];

          v62 = Logger.logObject.getter();
          v63 = v59;
          v64 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v62, v64))
          {
            v65 = swift_slowAlloc();
            v224 = v61;
            v66 = v65;
            v67 = swift_slowAlloc();
            aBlock = v67;
            *v66 = 136315138;
            v68 = v220;
            v206(v220, v63 + v205, v8);
            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
            v69 = v24;
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            v72 = v71;
            (*(v219 + 8))(v68, v8);
            v73 = v70;
            v24 = v69;
            v74 = sub_1002FFA0C(v73, v72, &aBlock);

            *(v66 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v62, v64, "Requesting unpairing for peripheral %s", v66, 0xCu);
            sub_1000752F4(v67);

            v61 = v224;
          }

          v75 = v225;
          [(objc_class *)v61 unpairPeer:v225];

          return;
        }

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "Failed to retrieve shared pairing agent", v78, 2u);
        }

        goto LABEL_23;
      }

LABEL_36:
      v20 = v42;
      v22 = v50;
      if (!v49[1])
      {
        goto LABEL_43;
      }

      v51 = *v49;
      v52 = v49;
      v53 = String._bridgeToObjectiveC()();
      v54 = [v22 hasTag:v53];

      if (v54)
      {
        goto LABEL_43;
      }

      v49 = v52;

      ++v41;
      v42 = v20;
      v9 = v219;
      if (v24 == v23)
      {
        goto LABEL_101;
      }
    }

    if (v41 < *(v215 + 16))
    {
      v50 = *(v42 + 8 * v41 + 32);
      v24 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_59:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      continue;
    }

    break;
  }

LABEL_60:
  v81 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v82 = *(&v23->isa + v81);
  if (v82 >> 62)
  {
    goto LABEL_110;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_111:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v37, v38))
    {
LABEL_22:

LABEL_23:
      return;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "No requests pending";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

    goto LABEL_22;
  }

LABEL_62:
  v212 = v22;
  swift_beginAccess();
  sub_1000E39E4();
  v219 = v83;
  swift_endAccess();
  v84 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v85 = *(v20 + v84);
  v213 = v24;
  v210 = v85;
  if ((v85 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    v8 = v233;
    v86 = v234;
    v88 = v235;
    v87 = v236;
    v9 = v237;
  }

  else
  {
    v89 = -1 << *(v85 + 32);
    v86 = v85 + 56;
    v88 = ~v89;
    v90 = -v89;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    else
    {
      v91 = -1;
    }

    v9 = v91 & *(v85 + 56);
    v8 = v85;
    swift_bridgeObjectRetain_n();
    v87 = 0;
  }

  v208 = v88;
  v92 = (v88 + 64) >> 6;
  v93 = v87;
  if (v8 < 0)
  {
LABEL_69:
    v94 = __CocoaSet.Iterator.next()();
    if (v94)
    {
      v226 = v94;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v95 = aBlock;
      v24 = v93;
      v96 = v9;
      goto LABEL_76;
    }

LABEL_80:
    sub_100093854();

    v103 = v219;

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    v106 = os_log_type_enabled(v104, v105);
    v107 = v222;
    if (v106)
    {
      v108 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v109 = aBlock;
      *v108 = 136315138;
      v110 = v103[4];

      v111 = UUID.uuidString.getter();
      v113 = v112;

      v114 = sub_1002FFA0C(v111, v113, &aBlock);

      *(v108 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v104, v105, "Peripheral not connected %s", v108, 0xCu);
      sub_1000752F4(v109);
      v107 = v222;
    }

    v115 = v221;
    v231 = sub_100113B64;
    v232 = v103;
    aBlock = _NSConcreteStackBlock;
    v228 = 1107296256;
    v221 = &v229;
    v229 = sub_100080830;
    v230 = &unk_1004C72A0;
    v116 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v226 = &_swiftEmptyArrayStorage;
    v220 = sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    v216 = sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v117 = v217;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v116);
    v225 = v225[1];
    (v225)(v115, v117);
    v224 = v224[1];
    v118 = v223;
    (v224)(v107, v223);

    v119 = swift_allocObject();
    *(v119 + 16) = v23;
    v231 = sub_10011F748;
    v232 = v119;
    aBlock = _NSConcreteStackBlock;
    v228 = 1107296256;
    v229 = sub_100080830;
    v230 = &unk_1004C72F0;
    v120 = _Block_copy(&aBlock);
    v121 = v23;
    static DispatchQoS.unspecified.getter();
    v226 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v120);

    (v225)(v115, v117);
    (v224)(v107, v118);
  }

  else
  {
    while (1)
    {
      v97 = v93;
      v98 = v9;
      v24 = v93;
      if (!v9)
      {
        while (1)
        {
          v24 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            break;
          }

          if (v24 >= v92)
          {
            goto LABEL_80;
          }

          v98 = *(v86 + 8 * v24);
          ++v97;
          if (v98)
          {
            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_99;
      }

LABEL_75:
      v96 = (v98 - 1) & v98;
      v99 = *(*(v8 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v98)))));

LABEL_76:
      if (!v95)
      {
        goto LABEL_80;
      }

      v215 = v93;
      v216 = v9;
      v100 = v95;
      v101 = *(v95 + 16);
      v220 = *(v219 + 32);

      v102 = static UUID.== infix(_:_:)();

      if (v102)
      {
        break;
      }

      v93 = v24;
      v9 = v96;
      if (v8 < 0)
      {
        goto LABEL_69;
      }
    }

    v225 = v100;
    sub_100093854();

    v122 = v213;
    v123 = [v213 sharedPairingAgent];
    if (v123)
    {
      v124 = *(&v23->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent);
      *(&v23->isa + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent) = v123;
      v125 = v123;

      [(objc_class *)v125 setDelegate:v23];
      v126 = v225;
      [(objc_class *)v125 setOOBPairingEnabled:1 forPeer:v225[3]];
      v127 = v126[14];
      if (v127 >> 60 != 15)
      {
        v128 = v126[13];
        v129 = v126[3];
        sub_100069E2C(v128, v127);
        v130 = [(objc_class *)v125 retrieveOOBDataForPeer:v129];
        if (v130)
        {
          v224 = v128;
          v131 = v130;
          v223 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v222 = v132;

          v133 = *(&v23->isa + v214);
          v134 = v219;
          *(&v23->isa + v214) = v219;

          *(&v23->isa + v211) = 1;

          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.info.getter();
          v137 = v134;

          if (os_log_type_enabled(v135, v136))
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            aBlock = v139;
            *v138 = 136315138;
            v140 = v137[4];

            v141 = UUID.uuidString.getter();
            v143 = v142;

            v144 = sub_1002FFA0C(v141, v143, &aBlock);

            *(v138 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v135, v136, "Pairing started for %s", v138, 0xCu);
            sub_1000752F4(v139);
          }

          v146 = v137[6];
          v145 = v137[7];
          v147 = v137[4];

          v148 = v224;
          v149 = v223;
          v150 = v222;
          v146(v224, v127, v223, v222, v147);

          sub_10006A178(v149, v150);
          sub_10006A2D0(v148, v127);

LABEL_97:

          return;
        }

        sub_10006A2D0(v128, v127);
      }

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&_mh_execute_header, v161, v162, "Failed to retrieve OOB data", v163, 2u);
      }

      sub_1000E1E2C();
      v164 = swift_allocError();
      *v165 = 2;
      sub_100106638(v164);

      goto LABEL_97;
    }

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    v153 = os_log_type_enabled(v151, v152);
    v154 = v219;
    if (v153)
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&_mh_execute_header, v151, v152, "Failed to retrieve shared pairing agent", v155, 2u);
    }

    v157 = v154[8];
    v156 = v154[9];
    sub_1000E1E2C();
    v158 = swift_allocError();
    *v159 = 2;
    v160 = v154[4];

    v157(v158, v160);
  }

LABEL_125:
}

uint64_t sub_100106638(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v62 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin();
  v60 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
    v59 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v8);
    if ((v13 & 1) == 0)
    {
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_6;
    }

    v14 = v63;
    if (!v65)
    {
      goto LABEL_26;
    }

    v15 = *&v63[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest];
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = swift_allocObject();
    v17 = v65;
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    v71 = sub_100113BA8;
    v72 = v16;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100080830;
    v70 = &unk_1004C7390;
    v18 = _Block_copy(&aBlock);
    swift_errorRetain();

    swift_errorRetain();
    v64 = v15;

    v19 = v60;
    static DispatchQoS.unspecified.getter();
    v73 = &_swiftEmptyArrayStorage;
    sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v20 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v2 + 8))(v20, v1);
    (*(v61 + 8))(v19, v5);

    if (qword_100501960 != -1)
    {
      goto LABEL_37;
    }

LABEL_6:
    v55 = v5;
    v57 = v1;
    v21 = qword_10051B288;
    v22 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v23 = *(v21 + v22);
    v56 = v2;
    v54[2] = v23;
    if ((v23 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v9 = v73;
      v24 = v74;
      v12 = v75;
      v2 = v76;
      v5 = v77;
    }

    else
    {
      v25 = -1 << *(v23 + 32);
      v24 = (v23 + 56);
      v12 = ~v25;
      v26 = -v25;
      v27 = v26 < 64 ? ~(-1 << v26) : -1;
      v5 = v27 & *(v23 + 56);
      v9 = v23;
      swift_bridgeObjectRetain_n();
      v2 = 0;
    }

    v28 = v64;
    v54[1] = v12;
    v29 = (v12 + 64) >> 6;
    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_13:
    v30 = v2;
    v31 = v5;
    v8 = v2;
    if (v5)
    {
LABEL_17:
      v1 = (v31 - 1) & v31;
      v32 = *(*(v9 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v31)))));

      if (v33)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v8 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v8 >= v29)
      {
        goto LABEL_24;
      }

      v31 = v24[v8];
      ++v30;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  while (1)
  {
    v34 = __CocoaSet.Iterator.next()();
    if (!v34)
    {
      break;
    }

    v66 = v34;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v33 = aBlock;
    v8 = v2;
    v1 = v5;
    if (!aBlock)
    {
      break;
    }

LABEL_21:
    v12 = v24;
    v58 = v5;
    v35 = v9;
    v36 = *(v33 + 16);
    v37 = *(v28 + 32);
    v38 = v33;

    LOBYTE(v37) = static UUID.== infix(_:_:)();

    if (v37)
    {
      sub_100093854();

      v14 = v63;
      v50 = *&v63[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent];
      if (v50)
      {
        v51 = *(v38 + 24);
        v52 = v50;
        v53 = v51;
        [v52 setOOBPairingEnabled:0 forPeer:v53];

        v14 = v63;
      }

      else
      {
      }

      v1 = v57;
      v2 = v56;
      v5 = v55;
      goto LABEL_25;
    }

    v2 = v8;
    v5 = v1;
    v28 = v64;
    v9 = v35;
    v24 = v12;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_24:
  sub_100093854();

  v1 = v57;
  v2 = v56;
  v5 = v55;
  v14 = v63;
LABEL_25:

LABEL_26:
  v39 = *&v14[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest];
  *&v14[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest] = 0;

  v40 = *&v14[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest];
  *&v14[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest] = 0;

  v41 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent;
  v42 = *&v14[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent];
  if (v42)
  {
    [v42 setDelegate:0];
    v43 = *&v14[v41];
  }

  else
  {
    v43 = 0;
  }

  *&v14[v41] = 0;

  v14[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = v14;
  v71 = sub_100113B6C;
  v72 = v44;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_100080830;
  v70 = &unk_1004C7340;
  v45 = _Block_copy(&aBlock);
  v46 = v14;
  v47 = v60;
  static DispatchQoS.unspecified.getter();
  v66 = &_swiftEmptyArrayStorage;
  sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v48 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);
  (*(v2 + 8))(v48, v1);
  (*(v61 + 8))(v47, v5);
}

uint64_t sub_100106FF8(void *a1)
{
  v3 = a1[8];
  v2 = a1[9];
  sub_1000E1E2C();
  v4 = swift_allocError();
  *v5 = 4;
  v3(v4, a1[4]);
}

void sub_10010706C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  v51 = a2;
  v52 = a3;
  v53 = type metadata accessor for UUID();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v53);
  v54 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v15 = qword_10051B7F0;
    *v14 = qword_10051B7F0;
    (v11[13])(v14, enum case for DispatchPredicate.onQueue(_:), v10);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (v11[1])(v14, v10);
    if (v15)
    {
      if (qword_100501960 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v17 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v17)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to retrieve central manager", v29, 2u);
      }

      return;
    }

    v11 = v17;
    v18 = [v11 sharedPairingAgent];
    if (!v18)
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Failed to retrieve shared pairing agent", v35, 2u);
      }

      return;
    }

    v19 = v18;
    v20 = [v18 retrievePairedPeers];
    if (!v20 || (v21 = v20, v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v14 = sub_1000F1970(v22), , !v14))
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to retrieve paired peers", v32, 2u);
      }

      return;
    }

    v47 = v19;
    v48 = a5;
    v49 = a4;
    v50 = v11;
    v55 = _swiftEmptyArrayStorage;
    v23 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a4 = v54;
    if (!v23)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v25 = *(v14 + 8 * v10 + 32);
      }

      a5 = v25;
      a4 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v26 = String._bridgeToObjectiveC()();
      v11 = [a5 hasTag:v26];

      if (v11)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = v55[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v10;
      v24 = a4 == v23;
      a4 = v54;
      if (v24)
      {
        v36 = v55;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    v37 = *(v36 + 16);
    if (v37)
    {
      goto LABEL_35;
    }

LABEL_51:

    v39 = _swiftEmptyArrayStorage;
LABEL_52:
    v45 = sub_1000E0348(v39);

    v49(v45);

    return;
  }

  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (!v37)
  {
    goto LABEL_51;
  }

LABEL_35:
  v55 = _swiftEmptyArrayStorage;
  sub_10019F420(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v55;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = [v40 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = v39;
      v44 = v39[2];
      v43 = v39[3];
      if (v44 >= v43 >> 1)
      {
        sub_10019F420(v43 > 1, v44 + 1, 1);
        v39 = v55;
      }

      ++v38;
      v39[2] = v44 + 1;
      (*(v7 + 32))(v39 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44, a4, v53);
    }

    while (v37 != v38);

    goto LABEL_52;
  }

  __break(1u);
}

uint64_t sub_100107708()
{
  sub_10006A2D0(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_100107760()
{
  v1 = OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted + 8);
  sub_1000B2A4C(*(v0 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10010790C()
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

uint64_t sub_100107A18()
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for Peer.PeerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Peer.PeerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100107E6C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100107E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100107ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100107F40()
{
  result = qword_100503E00;
  if (!qword_100503E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E00);
  }

  return result;
}

unint64_t sub_100107F98()
{
  result = qword_100503E08;
  if (!qword_100503E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E08);
  }

  return result;
}

unint64_t sub_100107FF0()
{
  result = qword_100503E10;
  if (!qword_100503E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E10);
  }

  return result;
}

unint64_t sub_100108048()
{
  result = qword_100503E18;
  if (!qword_100503E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E18);
  }

  return result;
}

unint64_t sub_1001080A0()
{
  result = qword_100503E20;
  if (!qword_100503E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E20);
  }

  return result;
}

unint64_t sub_1001080F8()
{
  result = qword_100503E28;
  if (!qword_100503E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503E28);
  }

  return result;
}

uint64_t sub_1001081DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1001082A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

Swift::Int sub_10010837C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_100068FC4(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10009393C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10010BC14(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10010857C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100507CE0, &unk_10040B260);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Peer();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100109BDC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
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

Swift::Int sub_1001087D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100507CF0, &qword_10040B270);
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSKBLE.BLEScanRequest();
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10010A5C0(v12 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
        }

        v2 = v18;
        v3 = *(v18 + 40);
        Hasher.init(_seed:)();
        v4 = *(v17 + 16);
        v5 = *(v17 + 24);
        String.hash(into:)();
        result = Hasher._finalize()();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
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

Swift::Int sub_100108A00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&unk_100503F40, &unk_1004101B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100109E88(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v15 + 16));
      result = Hasher._finalize()();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}
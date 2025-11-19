void sub_100118E98(void *a1, uint64_t a2)
{
  v87 = a2;
  v94 = a1;
  v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  v3 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v86 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v19 = qword_10051B7F0;
    *v18 = qword_10051B7F0;
    (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
    v85 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v18, v14);
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_48:
      v24 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v24, v78, "No callback registered for onTimeSyncEvent", v79, 2u);
LABEL_42:
      }

LABEL_43:

      goto LABEL_27;
    }

    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_27;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
      goto LABEL_26;
    }

    v80 = v11;
    v81 = v9;
    v82 = v10;
    v83 = v6;
    v20 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v90 = v2;
    v21 = *(v2 + v20);
    v84 = v5;
    v89 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v2 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v22 = v98[7];
      v14 = v98[8];
      v23 = v98[9];
      v15 = v98[10];
      v18 = v98[11];
    }

    else
    {
      v27 = -1 << *(v21 + 32);
      v14 = v21 + 56;
      v23 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v18 = (v29 & *(v21 + 56));
      v22 = v21;
      swift_bridgeObjectRetain_n();
      v15 = 0;
    }

    v88 = v23;
    v5 = (v23 + 64) >> 6;
    if (v22 < 0)
    {
      while (1)
      {
        v32 = __CocoaSet.Iterator.next()();
        if (!v32)
        {
          goto LABEL_24;
        }

        v98[0] = v32;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v11 = aBlock[0];
        v9 = v15;
        v6 = v18;
        if (!aBlock[0])
        {
          goto LABEL_24;
        }

LABEL_21:
        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v10 = *(v11 + 24);
        v2 = static NSObject.== infix(_:_:)();

        if (v2)
        {
          break;
        }

        v15 = v9;
        v18 = v6;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      sub_100093854();

      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v44;
      AnyHashable.init<A>(_:)();
      v45 = v87;
      if (!*(v87 + 16))
      {
        goto LABEL_39;
      }

      v46 = sub_10008CA7C(aBlock);
      if ((v47 & 1) == 0)
      {
        goto LABEL_39;
      }

      sub_1000754F0(*(v45 + 56) + 32 * v46, v98);
      sub_100092F28(aBlock);
      if (swift_dynamicCast())
      {
        v48 = v96;
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v49;
        AnyHashable.init<A>(_:)();
        if (!*(v45 + 16))
        {
          goto LABEL_39;
        }

        v50 = sub_10008CA7C(aBlock);
        if ((v51 & 1) == 0)
        {
          goto LABEL_39;
        }

        sub_1000754F0(*(v45 + 56) + 32 * v50, v98);
        sub_100092F28(aBlock);
        if (swift_dynamicCast())
        {
          v52 = v96;
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v53;
          AnyHashable.init<A>(_:)();
          if (*(v45 + 16))
          {
            v54 = sub_10008CA7C(aBlock);
            if (v55)
            {
              sub_1000754F0(*(v45 + 56) + 32 * v54, v98);
              sub_100092F28(aBlock);
              if (swift_dynamicCast())
              {
                v56 = v96;
                swift_beginAccess();
                v58 = *(v11 + 64);
                v57 = *(v11 + 72);
                v59 = sub_1000752B0((v11 + 40), v58);
                v60 = *(v58 - 8);
                v61 = *(v60 + 64);
                __chkstk_darwin(v59);
                v63 = &v80 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v60 + 16))(v63);
                v64 = (*(v57 + 112))(v58, v57);
                v66 = v65;
                (*(v60 + 8))(v63, v58);
                if (!v64)
                {
                  goto LABEL_48;
                }

                v67 = swift_allocObject();
                v67[2] = v64;
                v67[3] = v66;
                v67[4] = v48;
                v67[5] = v52;
                v67[6] = v56;
                v67[7] = v11;
                aBlock[4] = sub_10011F390;
                aBlock[5] = v67;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100080830;
                aBlock[3] = &unk_1004C7890;
                v68 = _Block_copy(aBlock);
                sub_100113B54(v64);

                v69 = v86;
                static DispatchQoS.unspecified.getter();
                v96 = _swiftEmptyArrayStorage;
                sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
                sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
                sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
                v70 = v81;
                v71 = v84;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v68);

                sub_1000B2A4C(v64);
                (*(v83 + 8))(v70, v71);
                (*(v80 + 8))(v69, v82);

                return;
              }

              goto LABEL_40;
            }
          }

LABEL_39:
          sub_100092F28(aBlock);
        }
      }

LABEL_40:

      v24 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v24, v72))
      {
        goto LABEL_43;
      }

      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 136315138;
      v75 = Dictionary.description.getter();
      v77 = sub_1002FFA0C(v75, v76, aBlock);

      *(v73 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v24, v72, "Invalid time sync data %s", v73, 0xCu);
      sub_1000752F4(v74);

      goto LABEL_42;
    }

LABEL_13:
    v30 = v15;
    v31 = v18;
    v9 = v15;
    if (v18)
    {
      break;
    }

    while (1)
    {
      v9 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_24;
      }

      v31 = *(v14 + 8 * v9);
      ++v30;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_17:
  v6 = (v31 - 1) & v31;
  v11 = *(*(v22 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v31)))));

  if (v11)
  {
    goto LABEL_21;
  }

LABEL_24:
  sub_100093854();

  v33 = v94;
  v24 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = [v33 identifier];
    v38 = v91;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v39 = v93;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    (*(v92 + 8))(v38, v39);
    v43 = sub_1002FFA0C(v40, v42, aBlock);

    *(v35 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v24, v34, "Got time sync event for unknown peripheral %s", v35, 0xCu);
    sub_1000752F4(v36);

LABEL_26:
  }

LABEL_27:
}

void sub_100119C28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v174 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchQoS();
  v173 = *(v175 - 8);
  v10 = *(v173 + 64);
  __chkstk_darwin(v175);
  v172 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for UUID();
  v178 = *(v179 - 8);
  v12 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    v60 = v167;
    if (v22)
    {
      v102 = *(v6 + 176);
      v181 = 0xD000000000000024;
      v182 = 0x80000001004633B0;
      AnyHashable.init<A>(_:)();
      v103 = v164;
      if (*(v164 + 16) && (v104 = sub_10008CA7C(aBlock), (v105 & 1) != 0))
      {
        sub_1000754F0(*(v103 + 56) + 32 * v104, v185);
        sub_100092F28(aBlock);
        if (swift_dynamicCast())
        {
          v106 = v181;
          if (v181 < v102)
          {
            goto LABEL_62;
          }

          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v107, v108))
          {
            v110 = 0;
            goto LABEL_77;
          }

          v109 = swift_slowAlloc();
          *v109 = 134218240;
          *(v109 + 4) = v106;
          *(v109 + 12) = 2048;
          *(v109 + 14) = v102;
          _os_log_impl(&_mh_execute_header, v107, v108, "Device detected in the closer zone RSSI %ld >= %ld", v109, 0x16u);
          v110 = 0;
LABEL_74:

LABEL_77:

          *(v6 + 168) = v110;
LABEL_78:
          swift_beginAccess();
          v127 = *(v6 + 64);
          v128 = *(v6 + 72);
          v129 = sub_1000752B0((v6 + 40), v127);
          v130 = *(v127 - 8);
          v131 = *(v130 + 64);
          __chkstk_darwin(v129);
          v133 = &v163 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v130 + 16))(v133);
          LOBYTE(v128) = (*(v128 + 72))(v127, v128);
          (*(v130 + 8))(v133, v127);
          if ((v128 & 1) == 0)
          {
            v134 = *(v6 + 176);
            v135 = *(v6 + 184);
            v136 = *(v6 + 192);
            v137 = *(v6 + 16);

            sub_1000F3B5C(v134, v135, v136, 0x100u, v137);
          }

          if (*(v6 + 32) == 8)
          {
            v139 = *(v6 + 64);
            v138 = *(v6 + 72);
            v140 = sub_1000752B0((v6 + 40), v139);
            v141 = *(v139 - 8);
            v142 = *(v141 + 64);
            __chkstk_darwin(v140);
            v144 = &v163 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v141 + 16))(v144);
            v145 = (*(v138 + 120))(v139, v138);
            v147 = v146;
            (*(v141 + 8))(v144, v139);
            if (v145)
            {
              v148 = swift_allocObject();
              v148[2] = v145;
              v148[3] = v147;
              v176 = v147;
              v148[4] = v6;
              aBlock[4] = sub_10011F344;
              aBlock[5] = v148;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100080830;
              aBlock[3] = &unk_1004C7840;
              v149 = _Block_copy(aBlock);
              sub_100113B54(v145);
              v150 = v6;

              v151 = v172;
              static DispatchQoS.unspecified.getter();
              v183 = _swiftEmptyArrayStorage;
              sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
              sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
              sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
              v152 = v174;
              v153 = v171;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v149);
              (*(v170 + 8))(v152, v153);
              (*(v173 + 8))(v151, v175);

              v154 = objc_opt_self();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;
              v156 = v178;
              v157 = *(v150 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
              v158 = v177;
              v159 = v179;
              (*(v178 + 16))(v177, v157, v179);
              v160 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v156 + 8))(v158, v159);
              [v154 bleLogRSSI:isa peerUUID:v160];

              sub_1000B2A4C(v145);

              return;
            }

            v121 = Logger.logObject.getter();
            v161 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v121, v161))
            {
              v162 = swift_slowAlloc();
              *v162 = 0;
              _os_log_impl(&_mh_execute_header, v121, v161, "No callback registered for onRSSIZoneUpdate", v162, 2u);
            }

LABEL_70:

            return;
          }

LABEL_62:

          return;
        }
      }

      else
      {
        sub_100092F28(aBlock);
      }

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v121, v122))
      {
        goto LABEL_70;
      }

      v123 = swift_slowAlloc();
      *v123 = 0;
      v124 = "Failed to retrieve kCBGetRssiStatisticsDetectionMaximum";
    }

    else
    {
      v23 = *(v6 + 184);
      v181 = 0xD000000000000024;
      v182 = 0x80000001004633E0;
      AnyHashable.init<A>(_:)();
      v111 = v164;
      if (*(v164 + 16) && (v112 = sub_10008CA7C(aBlock), (v113 & 1) != 0))
      {
        sub_1000754F0(*(v111 + 56) + 32 * v112, v185);
        sub_100092F28(aBlock);
        if (swift_dynamicCast())
        {
          v71 = v181;
          if (v23 < v181)
          {
            swift_beginAccess();
            v114 = *(v6 + 64);
            v115 = *(v6 + 72);
            v116 = sub_1000752B0((v6 + 40), v114);
            v117 = *(v114 - 8);
            v118 = *(v117 + 64);
            __chkstk_darwin(v116);
            v120 = &v163 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v117 + 16))(v120);
            LOBYTE(v115) = (*(v115 + 72))(v114, v115);
            (*(v117 + 8))(v120, v114);
            if ((v115 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_78;
          }

          goto LABEL_72;
        }
      }

      else
      {
        sub_100092F28(aBlock);
      }

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v121, v122))
      {
        goto LABEL_70;
      }

      v123 = swift_slowAlloc();
      *v123 = 0;
      v124 = "Failed to retrieve kCBGetRssiStatisticsDetectionMinimum";
    }

    _os_log_impl(&_mh_execute_header, v121, v122, v124, v123, 2u);

    goto LABEL_70;
  }

  v169 = v20;
  v23 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  v24 = a1;
  v25 = v180;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  v28 = os_log_type_enabled(v26, v27);
  v171 = v6;
  v170 = v7;
  v176 = v24;
  if (v28)
  {
    v6 = a2;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    v31 = [v24 identifier];
    v32 = v23;
    v33 = v31;
    v34 = v177;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = UUID.uuidString.getter();
    v37 = v36;
    (*(v178 + 8))(v34, v179);
    v38 = v35;
    v25 = v180;
    v39 = sub_1002FFA0C(v38, v37, aBlock);
    v23 = v32;

    *(v29 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v26, v27, "Received RSSI update %s", v29, 0xCu);
    sub_1000752F4(v30);

    a2 = v6;
  }

  v40 = *(v25 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v40)
  {
    v41 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v41, v49, "Not running", v50, 2u);
    }

    goto LABEL_12;
  }

  if (!a3)
  {
    v185[0] = 0x724167734D42436BLL;
    v185[1] = 0xEF746C7573655267;
    v51 = v40;
    AnyHashable.init<A>(_:)();
    if (*(a2 + 16) && (v52 = sub_10008CA7C(aBlock), (v53 & 1) != 0))
    {
      sub_1000754F0(*(a2 + 56) + 32 * v52, v186);
      sub_100092F28(aBlock);
      if ((swift_dynamicCast() & 1) != 0 && !v185[0])
      {
        v54 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
        swift_beginAccess();
        v55 = *(v25 + v54);
        v167 = v51;
        v166 = v55;
        if ((v55 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for DSKBLE.BLEPeripheral();
          sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
          Set.Iterator.init(_cocoa:)();
          v56 = v186[0];
          v57 = v186[1];
          v58 = v186[2];
          v59 = v186[3];
          v60 = v186[4];
        }

        else
        {
          v68 = -1 << *(v55 + 32);
          v57 = v55 + 56;
          v58 = ~v68;
          v69 = -v68;
          if (v69 < 64)
          {
            v70 = ~(-1 << v69);
          }

          else
          {
            v70 = -1;
          }

          v60 = (v70 & *(v55 + 56));
          v56 = v55;
          swift_bridgeObjectRetain_n();
          v59 = 0;
        }

        v164 = a2;
        v165 = v58;
        v71 = (v58 + 64) >> 6;
        v168 = v23;
        if (v56 < 0)
        {
          goto LABEL_34;
        }

LABEL_29:
        v72 = v59;
        v73 = v60;
        v74 = v59;
        if (v60)
        {
LABEL_33:
          v60 = ((v73 - 1) & v73);
          v6 = *(*(v56 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v73)))));

          while (v6)
          {
            sub_10009393C(0, &qword_100502D20, NSObject_ptr);
            v76 = *(v6 + 24);
            v77 = static NSObject.== infix(_:_:)();

            if (v77)
            {
              v90 = v176;
              sub_100093854();

              v22 = *(v6 + 168);
              if (v22 != 2 && (*(v6 + 192) & 1) == 0)
              {
                goto LABEL_50;
              }

              v91 = v90;
              v79 = Logger.logObject.getter();
              v92 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v79, v92))
              {
                v93 = swift_slowAlloc();
                v94 = swift_slowAlloc();
                aBlock[0] = v94;
                *v93 = 136315138;
                v95 = [v91 identifier];
                v96 = v177;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
                v97 = v179;
                v98 = dispatch thunk of CustomStringConvertible.description.getter();
                v100 = v99;
                (*(v178 + 8))(v96, v97);
                v101 = sub_1002FFA0C(v98, v100, aBlock);

                *(v93 + 4) = v101;
                _os_log_impl(&_mh_execute_header, v79, v92, "Got RSSI update while detection is disabled for %s", v93, 0xCu);
                sub_1000752F4(v94);
              }

              goto LABEL_48;
            }

            v59 = v74;
            v23 = v168;
            if ((v56 & 0x8000000000000000) == 0)
            {
              goto LABEL_29;
            }

LABEL_34:
            v75 = __CocoaSet.Iterator.next()();
            if (!v75)
            {
              break;
            }

            v185[0] = v75;
            type metadata accessor for DSKBLE.BLEPeripheral();
            swift_dynamicCast();
            v6 = aBlock[0];
            v74 = v59;
          }

LABEL_40:
          sub_100093854();

          v78 = v176;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            aBlock[0] = v82;
            *v81 = 136315138;
            v83 = [v78 identifier];
            v84 = v177;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
            v85 = v179;
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            (*(v178 + 8))(v84, v85);
            v89 = sub_1002FFA0C(v86, v88, aBlock);

            *(v81 + 4) = v89;
            _os_log_impl(&_mh_execute_header, v79, v80, "Got RSSI update for unknown peripheral %s", v81, 0xCu);
            sub_1000752F4(v82);
          }

LABEL_48:

          return;
        }

        while (1)
        {
          v74 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            break;
          }

          if (v74 >= v71)
          {
            goto LABEL_40;
          }

          v73 = *(v57 + 8 * v74);
          ++v72;
          if (v73)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_72:
        v107 = Logger.logObject.getter();
        v125 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v107, v125))
        {
          v110 = 1;
          goto LABEL_77;
        }

        v126 = swift_slowAlloc();
        *v126 = 134218240;
        *(v126 + 4) = v71;
        *(v126 + 12) = 2048;
        *(v126 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v107, v125, "Device detected in the further zone RSSI %ld <= %ld", v126, 0x16u);
        v110 = 1;
        goto LABEL_74;
      }
    }

    else
    {
      sub_100092F28(aBlock);
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315138;
      v65 = Dictionary.description.getter();
      v67 = sub_1002FFA0C(v65, v66, aBlock);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "RSSI detection failed %s", v63, 0xCu);
      sub_1000752F4(v64);
    }

    return;
  }

  swift_errorRetain();
  v41 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315138;
    swift_getErrorValue();
    v46 = Error.localizedDescription.getter();
    v48 = sub_1002FFA0C(v46, v47, aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Error on reception of RSSI update %s", v44, 0xCu);
    sub_1000752F4(v45);

LABEL_12:
    return;
  }
}

uint64_t sub_10011B3F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v32 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v28 = v7;
    v29 = v3;
    v27 = &v27;
    __chkstk_darwin(v9);
    v30 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v31 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v7 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v18 = *(*(*(a1 + 48) + 8 * v17) + 56);
      if (!v18)
      {
        goto LABEL_15;
      }

      v33 = v13;
      sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
      v19 = v32;

      v20 = v18;
      v8 = static NSObject.== infix(_:_:)();

      v13 = v33;
      if ((v8 & 1) == 0)
      {
LABEL_15:
        *&v30[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          v22 = sub_10024B00C(v30, v28, v31, a1);

          return v22;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_17;
      }

      v16 = *(v3 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v32;
  sub_100110574(v24, v7, a1, v25);
  v22 = v26;

  return v22;
}

Swift::Int sub_10011B6B4(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10011B3F0(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    do
    {
      swift_dynamicCast();
      v3 = v21;
      v4 = *(v21 + 56);
      if (v4 && (sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr), v5 = v2, v6 = v4, v7 = static NSObject.== infix(_:_:)(), v6, v5, v3 = v21, (v7 & 1) != 0))
      {
      }

      else
      {
        v8 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v8)
        {
          sub_10010A814(v8 + 1);
        }

        v9 = *(&_swiftEmptySetSingleton + 5);
        Hasher.init(_seed:)();
        v10 = *(v3 + 16);
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v12 = &_swiftEmptySetSingleton + 56;
        v13 = -1 << *(&_swiftEmptySetSingleton + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(&_swiftEmptySetSingleton + (v14 >> 6) + 7)) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(&_swiftEmptySetSingleton + (v14 >> 6) + 7))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *&v12[8 * v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v16) = v3;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

void sub_10011B958(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if (v15)
  {
    v17 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v17)
    {
      v19 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v19, v34, "Not running", v35, 2u);
      }

      goto LABEL_22;
    }

    v72 = v7;
    v73 = v6;
    v18 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    v19 = v17;
    v20 = a1;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v69 = v18;
      v70 = v3;
      v71 = v19;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v75[0] = v68;
      *v23 = 136315394;
      v25 = [v20 identifier];
      v26 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v27 = v73;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v72 + 8))(v26, v27);
      v31 = sub_1002FFA0C(v28, v30, v75);

      *(v23 + 4) = v31;
      *(v23 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v23 + 14) = v32;
      *v24 = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "Peripheral failed to connect %s error %@", v23, 0x16u);
      sub_100075768(v24, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v68);

      v3 = v70;
      v19 = v71;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!a2)
      {
        goto LABEL_19;
      }
    }

    swift_errorRetain();
    if (sub_100114EC4())
    {
      v36 = v20;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = v19;
        v75[0] = v70;
        *v39 = 136315138;
        v40 = [v36 identifier];
        v41 = v74;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v42 = v3;
        v43 = v73;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        v47 = v43;
        v3 = v42;
        (*(v72 + 8))(v41, v47);
        v48 = sub_1002FFA0C(v44, v46, v75);

        *(v39 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v37, v38, "Fatal failure %s", v39, 0xCu);
        sub_1000752F4(v70);
        v19 = v71;
      }

      v49 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
      swift_beginAccess();
      v50 = *(v3 + v49);
      v51 = v36;

      v53 = sub_10011B6B4(v52, v51);

      v54 = *(v3 + v49);
      *(v3 + v49) = v53;

      swift_errorRetain();
      sub_1000EF594(v51, a2);

LABEL_22:

      return;
    }

LABEL_19:
    v55 = v20;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v75[0] = v59;
      *v58 = 136315138;
      v60 = [v55 identifier];
      v61 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v62 = v73;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v72 + 8))(v61, v62);
      v66 = sub_1002FFA0C(v63, v65, v75);

      *(v58 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Retrying connection to %s", v58, 0xCu);
      sub_1000752F4(v59);
    }

    [v19 connectPeripheral:v55 options:0];
    goto LABEL_22;
  }

  __break(1u);
}

void sub_10011C174(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if (v15)
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      if (a2)
      {
        swift_errorRetain();
        v17 = a1;
        v34 = v2;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v33 = a1;
          v22 = v21;
          v32 = swift_slowAlloc();
          v35 = v32;
          *v20 = 136315394;
          v23 = [v17 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = UUID.uuidString.getter();
          v26 = v25;
          (*(v6 + 8))(v9, v5);
          v27 = sub_1002FFA0C(v24, v26, &v35);

          *(v20 + 4) = v27;
          *(v20 + 12) = 2112;
          swift_errorRetain();
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v28;
          *v22 = v28;
          _os_log_impl(&_mh_execute_header, v18, v19, "Disconnected %s with error %@", v20, 0x16u);
          sub_100075768(v22, &unk_100503F70, &unk_10040B2E0);
          a1 = v33;

          sub_1000752F4(v32);
        }

        else
        {
        }
      }

      sub_1000EF594(a1, 0);
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Not running", v31, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10011C594(void *a1, void *a2, uint64_t a3)
{
  v83 = a3;
  v82 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v22 = v84;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Peripheral did request pairing", v25, 2u);
    v22 = v84;
  }

  v26 = *&v22[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest];
  if (!v26)
  {
    goto LABEL_15;
  }

  (*(v5 + 16))(v14, *(v26 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v4);
  if (!a2)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v81 = a2;
  v27 = [a2 identifier];
  v28 = v26;
  v29 = v27;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v29) = static UUID.== infix(_:_:)();
  v30 = *(v5 + 8);
  v30(v12, v4);
  v30(v14, v4);
  if (v29)
  {
    v31 = v84;
    if (!*&v84[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent])
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Missing shared pairing agent";
        goto LABEL_24;
      }

LABEL_25:

      sub_1000E1E2C();
      v51 = swift_allocError();
      *v52 = 2;
      sub_100106638(v51);
LABEL_29:

LABEL_30:

      return;
    }

    v32 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
    if (v84[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] != 2)
    {
      v53 = v84;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v85[0] = v57;
        *v56 = 136315138;
        LOBYTE(v86) = v31[v32];
        v58 = String.init<A>(describing:)();
        v60 = sub_1002FFA0C(v58, v59, v85);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "Peripheral requested pairing in wrong state %s", v56, 0xCu);
        sub_1000752F4(v57);
      }

      sub_1000E1E2C();
      v61 = swift_allocError();
      *v62 = 2;
      sub_100106638(v61);
      goto LABEL_29;
    }

    v33 = *(v28 + 24);
    if (v33 >> 60 == 15)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Missing OOB data";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);

        goto LABEL_25;
      }

      goto LABEL_25;
    }

    v63 = *(v28 + 16);
    sub_100069E2C(v63, *(v28 + 24));
    v64 = Logger.logObject.getter();
    v65 = v83;
    if (v83 != 5)
    {
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v85[0] = v74;
        *v73 = 136315138;
        v86 = v65;
        type metadata accessor for CBPairingType(0);
        v75 = String.init<A>(describing:)();
        v77 = sub_1002FFA0C(v75, v76, v85);

        *(v73 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v64, v72, "Peer requested unsupported pairing type %s", v73, 0xCu);
        sub_1000752F4(v74);
      }

      sub_1000E1E2C();
      v78 = swift_allocError();
      *v79 = 2;
      sub_100106638(v78);

      goto LABEL_39;
    }

    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v64, v66, "Responding to pairing request with OOB data", v67, 2u);
    }

    v68 = v82;
    if (v82)
    {
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      v85[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85[1] = v70;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Data;
      *(inited + 72) = v63;
      *(inited + 80) = v33;
      sub_10006A2BC(v63, v33);
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v68 respondToPairingRequest:v81 type:5 accept:1 data:isa];

LABEL_39:
      sub_10006A2D0(v63, v33);
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  a2 = v81;
LABEL_15:
  v38 = a2;
  v39 = Logger.logObject.getter();
  v40 = a2;
  v41 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v39, v41))
  {

    goto LABEL_19;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v85[0] = v43;
  *v42 = 136315138;
  if (!v40)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v44 = v43;

  v45 = [v38 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  (*(v5 + 8))(v9, v4);
  v49 = sub_1002FFA0C(v46, v48, v85);

  *(v42 + 4) = v49;
  _os_log_impl(&_mh_execute_header, v39, v41, "Peripheral did request pairing for unknown request %s", v42, 0xCu);
  sub_1000752F4(v44);

LABEL_19:

  v50 = *&v84[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent];
  if (v50)
  {
    [v50 setOOBPairingEnabled:0 forPeer:v38];
  }

  sub_100106638(0);
}

void sub_10011CFA0(void *a1)
{
  v2 = v1;
  v77 = a1;
  v70 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v70 - 8);
  v4 = v3[8];
  __chkstk_darwin(v70);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  v10 = __chkstk_darwin(v8);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v62 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v24 = qword_10051B7F0;
    *v23 = qword_10051B7F0;
    (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
    v65 = v24;
    LOBYTE(v24) = _dispatchPreconditionTest(_:)();
    (*(v20 + 8))(v23, v19);
    if ((v24 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v75 = v8;
    v64 = v3;
    v25 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;
    v26 = v77;
    v19 = v77;
    v74 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v63 = v16;
      v72 = v2;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      if (!v26)
      {
        goto LABEL_25;
      }

      v31 = v30;

      v32 = [v19 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v33 = v75;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v76 + 8))(v18, v33);
      v37 = sub_1002FFA0C(v34, v36, aBlock);

      *(v29 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Pairing completed for %s", v29, 0xCu);
      sub_1000752F4(v31);

      v2 = v72;
      v26 = v77;
      v16 = v63;
    }

    else
    {
    }

    v18 = *(v2 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
    v38 = v76;
    if (!v18)
    {
      goto LABEL_16;
    }

    v39 = v75;
    (*(v76 + 16))(v16, *(v18 + 4) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v75);
    if (!v26)
    {
      goto LABEL_24;
    }

    v40 = [v19 identifier];
    v41 = v73;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v40) = static UUID.== infix(_:_:)();
    v42 = *(v38 + 8);
    v42(v41, v39);
    v42(v16, v39);
    if ((v40 & 1) == 0)
    {
      break;
    }

    v72 = v2;
    v23 = *(v18 + 5);
    v20 = v23[2];

    if (!v20)
    {
LABEL_14:

      sub_100106638(0);
      aBlock[4] = sub_10011EE94;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7610;
      v45 = _Block_copy(aBlock);

      v46 = v66;
      static DispatchQoS.unspecified.getter();
      v78 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v47 = v68;
      v48 = v70;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);

      (v64[1])(v47, v48);
      (*(v67 + 8))(v46, v69);

      return;
    }

    v8 = 0;
    v3 = v23 + 5;
    v2 = &selRef_retrievePeripheralsWithIdentifiers_;
    while (v8 < v23[2])
    {
      ++v8;
      v43 = *(v3 - 1);
      v16 = *v3;

      v44 = String._bridgeToObjectiveC()();
      [v19 tag:v44];

      v3 += 2;
      if (v20 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_16:
  v49 = v19;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v50, v51))
  {

    goto LABEL_20;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  aBlock[0] = v53;
  *v52 = 136315138;
  if (v77)
  {
    v54 = v53;

    v55 = [v49 identifier];
    v56 = v71;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v57 = v75;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    (*(v38 + 8))(v56, v57);
    v61 = sub_1002FFA0C(v58, v60, aBlock);

    *(v52 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v50, v51, "Peripheral pairing completed for unknown request %s", v52, 0xCu);
    sub_1000752F4(v54);

LABEL_20:

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10011D904(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v56 = &v53 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v54 = a2;
  v55 = v8;
  v23 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;
  v24 = a1;
  v57 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60 = v28;
    *v27 = 136315138;
    v53 = a1;
    if (!a1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v29 = v28;

    v30 = [v24 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v58 + 8))(v15, v4);
    v34 = sub_1002FFA0C(v31, v33, &v60);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Pairing failed for %s", v27, 0xCu);
    sub_1000752F4(v29);

    a1 = v53;
  }

  else
  {
  }

  v35 = v58;
  v36 = *(v59 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (v36)
  {
    (*(v58 + 16))(v13, *(v36 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v4);
    if (a1)
    {

      v37 = [v24 identifier];
      v38 = v56;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v37) = static UUID.== infix(_:_:)();
      v39 = *(v35 + 8);
      v39(v38, v4);
      v39(v13, v4);
      if (v37)
      {
        sub_100106638(v54);

        return;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_13:
  v40 = a1;
  v41 = v24;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v42, v43))
  {

    goto LABEL_17;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v60 = v45;
  *v44 = 136315138;
  if (v40)
  {
    v46 = v45;

    v47 = [v41 identifier];
    v48 = v55;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v35 + 8))(v48, v4);
    v52 = sub_1002FFA0C(v49, v51, &v60);

    *(v44 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v42, v43, "Got peerDidCompletePairing for unknown request %s", v44, 0xCu);
    sub_1000752F4(v46);

LABEL_17:

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_10011DF34(char *a1)
{
  v2 = v1;
  v118 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v118 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v118);
  v117 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v116 = *(v7 - 8);
  v8 = *(v116 + 64);
  __chkstk_darwin(v7);
  v115 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v124 = *(v10 - 8);
  v11 = *(v124 + 64);
  v12 = __chkstk_darwin(v10);
  v119 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v123 = v104 - v15;
  v16 = __chkstk_darwin(v14);
  v125 = v104 - v17;
  v18 = __chkstk_darwin(v16);
  v121 = v104 - v19;
  __chkstk_darwin(v18);
  v21 = v104 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  __chkstk_darwin(v22);
  v26 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v27 = qword_10051B7F0;
    *v26 = qword_10051B7F0;
    (*(v23 + 13))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
    v114 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v28 = *(v23 + 1);
    v23 += 8;
    v28(v26, v22);
    if ((v27 & 1) == 0)
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_12;
    }

    v126 = v10;
    v112 = v7;
    v113 = v4;
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v122 = v2;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136315138;
      v120 = a1;
      if (!a1)
      {
        goto LABEL_64;
      }

      v34 = v33;

      v35 = [v29 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
      v36 = v126;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v29;
      v40 = v39;
      (*(v124 + 8))(v21, v36);
      v41 = sub_1002FFA0C(v37, v40, aBlock);
      v29 = v38;

      *(v32 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Peripheral unpaired successfully %s", v32, 0xCu);
      sub_1000752F4(v34);

      v2 = v122;
      a1 = v120;
    }

    else
    {
    }

    v42 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
    if (v2[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] != 3)
    {
      break;
    }

    v26 = *&v2[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentUnpairingRequest];
    v43 = v126;
    v44 = v124;
    if (!v26)
    {
      goto LABEL_18;
    }

    v122 = v2;
    v45 = *(v124 + 16);
    v23 = v121;
    v111 = v124 + 16;
    v110 = v45;
    v45(v121, v26 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v126);
    if (!a1)
    {
      goto LABEL_65;
    }

    v120 = v29;
    v46 = [v29 identifier];
    v47 = v125;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v46) = static UUID.== infix(_:_:)();
    v2 = *(v44 + 8);
    (v2)(v47, v43);
    v121 = (v44 + 8);
    v109 = v2;
    (v2)(v23, v43);
    if ((v46 & 1) == 0)
    {

      v29 = v120;
LABEL_18:
      v60 = v29;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v61, v62))
      {

        return;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315138;
      if (a1)
      {
        v65 = v64;

        v66 = [v60 identifier];
        v67 = v119;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        (*(v44 + 8))(v67, v43);
        v71 = sub_1002FFA0C(v68, v70, aBlock);

        *(v63 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v61, v62, "Unexpected peripheral unpaired %s", v63, 0xCu);
        sub_1000752F4(v65);

        return;
      }

      goto LABEL_66;
    }

    if (qword_100501960 != -1)
    {
      goto LABEL_49;
    }

LABEL_12:
    v105 = v26;
    v48 = qword_10051B288;
    v49 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v104[1] = v48;
    v107 = *(v48 + v49);
    if ((v107 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v50, type metadata accessor for DSKBLE.BLEConnectionRequest);
      Set.Iterator.init(_cocoa:)();
      v22 = v129;
      v7 = v130;
      v26 = v131;
      v10 = v132;
      v51 = v133;
    }

    else
    {
      v72 = -1 << *(v107 + 32);
      v7 = v107 + 56;
      v26 = ~v72;
      v73 = -v72;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v51 = (v74 & *(v107 + 56));
      v22 = v107;
      swift_bridgeObjectRetain_n();
      v10 = 0;
    }

    v106 = v26;
    v4 = (v26 + 64) >> 6;
    if (v22 < 0)
    {
LABEL_27:
      v75 = __CocoaSet.Iterator.next()();
      if (v75)
      {
        v127 = v75;
        type metadata accessor for DSKBLE.BLEConnectionRequest();
        swift_dynamicCast();
        v76 = aBlock[0];
        v21 = v10;
        a1 = v51;
        if (aBlock[0])
        {
          goto LABEL_35;
        }
      }

LABEL_38:
      sub_100093854();

LABEL_39:
      v85 = v122;
      v86 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
      swift_beginAccess();
      v87 = *&v85[v86];
      v88 = v87 >> 62;
      v89 = v118;
      if (v87 >> 62)
      {
        if (v87 < 0)
        {
          v96 = *&v85[v86];
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_67;
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_41:
          if ((v87 & 0xC000000000000001) == 0)
          {
            if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
              return;
            }

            v90 = *(v87 + 32);

            if (!v88)
            {
              goto LABEL_44;
            }

            goto LABEL_57;
          }

LABEL_56:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v88)
          {
LABEL_44:
            v91 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_58;
          }

LABEL_57:
          v91 = _CocoaArrayWrapper.endIndex.getter();
LABEL_58:
          if (v91)
          {
            sub_1001A16AC(0, 1);
            swift_endAccess();

            sub_100106638(0);
            v97 = v105;
            v98 = *(v105 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
            if (v98)
            {
              v99 = *(v105 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted + 8);
              v100 = swift_allocObject();
              v100[2] = v98;
              v100[3] = v99;
              v100[4] = v97;
              aBlock[4] = sub_10011EE58;
              aBlock[5] = v100;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100080830;
              aBlock[3] = &unk_1004C75E8;
              v101 = _Block_copy(aBlock);
              sub_100113B54(v98);

              sub_100113B54(v98);
              v102 = v115;
              static DispatchQoS.unspecified.getter();
              v127 = _swiftEmptyArrayStorage;
              sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
              sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
              sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
              v103 = v117;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v101);

              sub_1000B2A4C(v98);
              (*(v113 + 8))(v103, v89);
              (*(v116 + 8))(v102, v112);
            }

            return;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      else if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_56;
    }

    while (1)
    {
      v77 = v10;
      v78 = v51;
      v21 = v10;
      if (!v51)
      {
        break;
      }

LABEL_34:
      a1 = ((v78 - 1) & v78);
      v79 = *(*(v22 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v78)))));

      if (!v76)
      {
        goto LABEL_38;
      }

LABEL_35:
      v108 = v10;
      v119 = v51;
      v124 = v76;
      v80 = v125;
      v23 = v126;
      v110(v125, *(v76 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v126);
      v81 = [v120 identifier];
      v82 = v123;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = static UUID.== infix(_:_:)();
      v83 = v82;
      v2 = v121;
      v84 = v109;
      v109(v83, v23);
      v84(v80, v23);
      if (v26)
      {
        sub_100093854();

        v92 = v124;
        v93 = *(v124 + 56);
        *(v124 + 56) = 0;

        v94 = *(v92 + 16);

        sub_1000E67E4(v95);

        sub_1000EA4CC(v92, 0);

        goto LABEL_39;
      }

      v10 = v21;
      v51 = a1;
      if (v22 < 0)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      v21 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v21 >= v4)
      {
        goto LABEL_38;
      }

      v78 = *(v7 + 8 * v21);
      ++v77;
      if (v78)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v52 = v2;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    LOBYTE(v129) = v2[v42];
    v57 = String.init<A>(describing:)();
    v59 = sub_1002FFA0C(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "Peripheral unpaired in wrong state %s", v55, 0xCu);
    sub_1000752F4(v56);
  }
}

uint64_t sub_10011EEC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10011EF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100507D30, &unk_100409C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011EF94()
{
  v1 = v0[2];

  sub_10006A178(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011EFE0(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10011F038()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_10006A178(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10011F12C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  return sub_100101484(v5, (v0 + v2), v8, v9, v7);
}

uint64_t sub_10011F1CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10011F248()
{
  result = qword_100503670;
  if (!qword_100503670)
  {
    sub_10009393C(255, &qword_100503668, CBCharacteristic_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503670);
  }

  return result;
}

uint64_t sub_10011F2B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011F304()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011F350()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10011F390()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0[7] + 16);

  v2(v3, v4, v5, v6);
}

uint64_t sub_10011F438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504090, &qword_10040B3A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for fileIEFs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for fileIEFs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10011F5FC()
{
  result = qword_100504098;
  if (!qword_100504098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504098);
  }

  return result;
}

id SECServer.__allocating_init(machServiceName:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithMachServiceName:v2];

  return v3;
}

id CredentialInternalServer.init(machServiceName:)()
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v2 = String._bridgeToObjectiveC()();

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "initWithMachServiceName:", v2);

  [v3 setDelegate:v3];
  return v3;
}

id SECServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CredentialInternalServer.init()()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

void sub_10011FA74(const char *a1)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10011FC30(void *a1)
{
  v2 = v1;
  v3 = a1;
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Accepting %@", v6, 0xCu);
    sub_1000C2998(v7);
  }

  v9 = sub_100280ED4();
  [v3 setExportedInterface:v9];

  [v3 setExportedObject:v2];
  v17 = sub_10011FA5C;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100080830;
  v16 = &unk_1004C7A38;
  v10 = _Block_copy(&v13);
  [v3 setInvalidationHandler:v10];
  _Block_release(v10);
  v17 = sub_10011FA68;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100080830;
  v16 = &unk_1004C7A60;
  v11 = _Block_copy(&v13);
  [v3 setInterruptionHandler:v11];
  _Block_release(v11);
  [v3 resume];
  return 1;
}

uint64_t type metadata accessor for CredentialInternalServer()
{
  result = qword_100504128;
  if (!qword_100504128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011FEBC()
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

uint64_t sub_10011FF4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10011FFF0(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    goto LABEL_81;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v7 = a1;
  if (v6)
  {
    v8 = 0;
    v46 = 0;
    v48 = v5 & 0xFFFFFFFFFFFFFF8;
    v49 = v5 & 0xC000000000000001;
    if (a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 == 0xC000000000000000;
    }

    v10 = !v9;
    v45 = v10;
    v11 = a2 >> 62;
    v12 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v12;
    v40 = a2;
    v43 = v5;
    v44 = BYTE6(a2);
    v47 = v6;
    while (1)
    {
      if (v49)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v48 + 16))
        {
          goto LABEL_76;
        }

        v13 = *(v5 + 8 * v8 + 32);
      }

      v14 = v13;
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v16 = [v13 keyIdentifier];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = v19 >> 62;
      if (v19 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_43;
        }

        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_79;
        }

        if (v11 <= 1)
        {
          goto LABEL_40;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_80;
        }

        v24 = v24;
        if (v11 <= 1)
        {
LABEL_40:
          v28 = v44;
          if (v11)
          {
            v28 = HIDWORD(a1) - a1;
            if (v41)
            {
              goto LABEL_77;
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v24 = BYTE6(v19);
        if (v11 <= 1)
        {
          goto LABEL_40;
        }
      }

LABEL_44:
      if (v11 != 2)
      {
        if (!v24)
        {
          goto LABEL_71;
        }

        goto LABEL_15;
      }

      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_78;
      }

LABEL_46:
      if (v24 == v28)
      {
        if (v24 < 1)
        {
LABEL_71:

          v37 = v17;
          v38 = v19;
          goto LABEL_72;
        }

        if (v20 > 1)
        {
          if (v20 != 2)
          {
            memset(v51, 0, 14);
            goto LABEL_67;
          }

          v32 = *(v17 + 16);
          v31 = *(v17 + 24);
          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v34 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_84;
            }

            v33 += v32 - v34;
          }

          if (__OFSUB__(v31, v32))
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (!v20)
          {
            v51[0] = v17;
            LOWORD(v51[1]) = v19;
            BYTE2(v51[1]) = BYTE2(v19);
            BYTE3(v51[1]) = BYTE3(v19);
            BYTE4(v51[1]) = BYTE4(v19);
            BYTE5(v51[1]) = BYTE5(v19);
LABEL_67:
            v36 = v46;
            sub_10019F024(v51, v7, a2, &v50);
            sub_10006A178(v17, v19);
            if (v50)
            {
LABEL_73:

              return v14;
            }

LABEL_68:
            v46 = v36;
            v5 = v43;

            goto LABEL_16;
          }

          if (v17 >> 32 < v17)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
          }

          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v35 = __DataStorage._offset.getter();
            if (__OFSUB__(v17, v35))
            {
              goto LABEL_85;
            }

            v33 += v17 - v35;
          }
        }

        __DataStorage._length.getter();
        v7 = a1;
        a2 = v40;
        v36 = v46;
        sub_10019F024(v33, a1, v40, v51);
        sub_10006A178(v17, v19);
        if (v51[0])
        {
          goto LABEL_73;
        }

        goto LABEL_68;
      }

LABEL_15:

      sub_10006A178(v17, v19);
LABEL_16:
      ++v8;
      if (v15 == v47)
      {
        goto LABEL_70;
      }
    }

    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19 == 0xC000000000000000;
    }

    v23 = !v21 || v11 < 3;
    if (((v23 | v45) & 1) == 0)
    {

      v37 = 0;
      v38 = 0xC000000000000000;
LABEL_72:
      sub_10006A178(v37, v38);
      return v14;
    }

LABEL_43:
    v24 = 0;
    if (v11 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_70:

  return 0;
}

uint64_t sub_10012050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v16 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
  swift_beginAccess();
  sub_100069E2C(a4, a5);
  v17 = sub_100121394((v12 + v16), a11, a4, a5);
  sub_10006A178(a4, a5);
  v18 = *(v12 + v16);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= v17)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 0)
  {
    v28 = *(v12 + v16);
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19 < v17)
  {
    goto LABEL_8;
  }

LABEL_3:
  v20 = a3;
  sub_1001A2540(v17, v19);
  swift_endAccess();
  v21 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = Data._bridgeToObjectiveC()().super.isa;
  v24 = Data._bridgeToObjectiveC()().super.isa;
  v25 = Data._bridgeToObjectiveC()().super.isa;
  v26 = [v21 withAID:isa slotNumber:v20 keyIdentifier:v23 assetACL:v24 assetACLAttestation:v25 operationApprovalVersion:a10 designation:a11];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v12 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_9:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = swift_endAccess();
  *(v12 + OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated) = 1;
  return result;
}

id sub_100120B58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESKeyDesignationStorageCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100120BAC()
{
  result = qword_100504138;
  if (!qword_100504138)
  {
    type metadata accessor for SecureElementType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504138);
  }

  return result;
}

unint64_t sub_100120C78(unint64_t a1, id a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 designation];

    if (v9 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_100120D70(unint64_t *a1, id a2)
{
  v5 = *a1;
  result = sub_100120C78(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 designation];

    if (v13 != a2)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_45;
          }

          if (v9 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v5 + 32 + 8 * v9);
          v14 = *(v5 + 32 + 8 * v8);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1001A291C(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = sub_1001A291C(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v9;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v24 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

id sub_100120FD0()
{
  v8 = 0;
  result = SESKeyGetDesignatedKeys();
  if (result)
  {
    v1 = result;
    sub_1001217D8();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;

    v4 = type metadata accessor for SESKeyDesignationStorageCoordinator();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated] = 0;
    *&v5[OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys] = v2;
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, "init");

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001210D4(unint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a1 >> 62)
  {
LABEL_62:
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 == 0xC000000000000000;
  }

  v8 = !v7;
  v35 = v8;
  v9 = a4 >> 62;
  v10 = __OFSUB__(HIDWORD(a3), a3);
  v33 = v10;
  v32 = HIDWORD(a3) - a3;
  while (1)
  {
    if (v38 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v36 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v12 = *(a1 + 8 * v6 + 32);
    }

    v13 = v12;
    if ([v12 designation] == a2)
    {
      goto LABEL_54;
    }

    v14 = [v13 keyIdentifier];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        LODWORD(v22) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_61;
        }

        v22 = v22;
      }

      else
      {
        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        v11 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v11)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v22 = BYTE6(v17);
    }

LABEL_39:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (!v22)
        {
          goto LABEL_51;
        }

        goto LABEL_14;
      }

      v27 = *(a3 + 16);
      v26 = *(a3 + 24);
      v11 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v11)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v25 = BYTE6(a4);
      if (v9)
      {
        v25 = v32;
        if (v33)
        {
          goto LABEL_59;
        }
      }
    }

    if (v22 == v25)
    {
      if (v22 < 1)
      {
LABEL_51:
        v30 = v15;
        v31 = v17;
        goto LABEL_53;
      }

      sub_100069E2C(a3, a4);
      v28 = sub_10008C678(v15, v17, a3, a4);
      sub_10006A178(v15, v17);

      if (v28)
      {
        return v6;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_10006A178(v15, v17);

LABEL_15:
    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_57;
    }
  }

  if (v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 == 0xC000000000000000;
  }

  v21 = !v19 || a4 >> 62 != 3;
  if ((v21 | v35))
  {
    v22 = 0;
    goto LABEL_39;
  }

  v30 = 0;
  v31 = 0xC000000000000000;
LABEL_53:
  sub_10006A178(v30, v31);
LABEL_54:

  return v6;
}

unint64_t sub_100121394(unint64_t *a1, id a2, uint64_t a3, unint64_t a4)
{
  v10 = *a1;
  result = sub_1001210D4(*a1, a2, a3, a4);
  if (v5)
  {
    return v4;
  }

  if (v12)
  {
    if (v10 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = result;
  v49 = a1;
  v50 = a4;
  v51 = a3;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = a4 == 0xC000000000000000;
  }

  v15 = !v14;
  v52 = v15;
  v16 = a4 >> 62;
  v17 = __OFSUB__(HIDWORD(a3), a3);
  v48 = v17;
  while (1)
  {
    if (v10 >> 62)
    {
      if (v13 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v13 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_26;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v21 = *(v10 + 8 * v13 + 32);
LABEL_26:
    v22 = v21;
    if ([v21 designation] == a2)
    {
      goto LABEL_18;
    }

    v23 = [v22 keyIdentifier];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v16 < 3;
      if (((v30 | v52) & 1) == 0)
      {
        v18 = 0;
        v19 = 0xC000000000000000;
LABEL_17:
        sub_10006A178(v18, v19);
LABEL_18:

        goto LABEL_19;
      }

      v31 = 0;
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        LODWORD(v31) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_92;
        }

        v31 = v31;
      }

      else
      {
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        v20 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v20)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v31 = BYTE6(v26);
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (!v31)
        {
LABEL_62:
          v18 = v24;
          v19 = v26;
          goto LABEL_17;
        }

LABEL_59:
        sub_10006A178(v24, v26);

        if (v4 == v13)
        {
          goto LABEL_55;
        }

        goto LABEL_60;
      }

      v36 = *(v51 + 16);
      v35 = *(v51 + 24);
      v20 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v20)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v34 = BYTE6(v50);
      if (v16)
      {
        v34 = HIDWORD(v51) - v51;
        if (v48)
        {
          goto LABEL_90;
        }
      }
    }

    if (v31 != v34)
    {
      goto LABEL_59;
    }

    if (v31 < 1)
    {
      goto LABEL_62;
    }

    sub_100069E2C(v51, v50);
    v16 = v50 >> 62;
    v37 = sub_10008C678(v24, v26, v51, v50);
    sub_10006A178(v24, v26);

    if (v37)
    {
      goto LABEL_19;
    }

    if (v4 == v13)
    {
LABEL_55:
      v20 = __OFADD__(v4++, 1);
      if (v20)
      {
        goto LABEL_88;
      }

      goto LABEL_19;
    }

LABEL_60:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v40)
      {
        goto LABEL_95;
      }

      if (v13 >= v40)
      {
        goto LABEL_96;
      }

      v41 = *(v10 + 32 + 8 * v13);
      v38 = *(v10 + 32 + 8 * v4);
      v39 = v41;
    }

    v42 = v39;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = sub_1001A291C(v10);
      v43 = (v10 >> 62) & 1;
    }

    else
    {
      LODWORD(v43) = 0;
    }

    v44 = v10 & 0xFFFFFFFFFFFFFF8;
    v45 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v42;

    if ((v10 & 0x8000000000000000) != 0 || v43)
    {
      v10 = sub_1001A291C(v10);
      v44 = v10 & 0xFFFFFFFFFFFFFF8;
      v16 = v50 >> 62;
      if ((v13 & 0x8000000000000000) != 0)
      {
LABEL_83:
        __break(1u);
        return v4;
      }
    }

    else
    {
      v16 = v50 >> 62;
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }
    }

    if (v13 >= *(v44 + 16))
    {
      goto LABEL_89;
    }

    v46 = v44 + 8 * v13;
    v47 = *(v46 + 32);
    *(v46 + 32) = v38;

    *v49 = v10;
    v20 = __OFADD__(v4++, 1);
    if (v20)
    {
      goto LABEL_88;
    }

LABEL_19:
    v20 = __OFADD__(v13++, 1);
    if (v20)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_1001217D8()
{
  result = qword_100504178;
  if (!qword_100504178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504178);
  }

  return result;
}

uint64_t sub_100121824(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_85:
    v49 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v50 = v4 & 0xC000000000000001;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3 == 0xC000000000000000;
  }

  v8 = !v7;
  v46 = v8;
  v9 = a3 >> 62;
  v10 = __OFSUB__(HIDWORD(a2), a2);
  v44 = v10;
  v43 = v5;
  v45 = BYTE6(a3);
  v41 = v4;
  v42 = a3;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if (v50)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v49 + 16))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v12 = *(v4 + 8 * v6 + 32);
    }

    v13 = v12;
    v14 = [v12 keyIdentifier];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17 == 0xC000000000000000;
      }

      v21 = !v19 || v9 < 3;
      if (((v21 | v46) & 1) == 0)
      {
        v38 = 0;
        v39 = 0xC000000000000000;
LABEL_75:
        sub_10006A178(v38, v39);

        return v6;
      }

LABEL_42:
      v22 = 0;
      if (v9 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_42;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      v11 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v11)
      {
        goto LABEL_81;
      }

      if (v9 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_82;
      }

      v22 = v22;
      if (v9 <= 1)
      {
LABEL_39:
        v25 = v45;
        if (v9)
        {
          v25 = HIDWORD(a2) - a2;
          if (v44)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v22 = BYTE6(v17);
      if (v9 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v9 != 2)
    {
      if (!v22)
      {
        goto LABEL_74;
      }

LABEL_14:
      sub_10006A178(v15, v17);

      goto LABEL_15;
    }

    v27 = *(a2 + 16);
    v26 = *(a2 + 24);
    v11 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v11)
    {
      goto LABEL_79;
    }

LABEL_45:
    if (v22 != v25)
    {
      goto LABEL_14;
    }

    if (v22 < 1)
    {
LABEL_74:
      v38 = v15;
      v39 = v17;
      goto LABEL_75;
    }

    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      v52[0] = v15;
      LOWORD(v52[1]) = v17;
      BYTE2(v52[1]) = BYTE2(v17);
      BYTE3(v52[1]) = BYTE3(v17);
      BYTE4(v52[1]) = BYTE4(v17);
      BYTE5(v52[1]) = BYTE5(v17);
      sub_100069E2C(a2, a3);
      sub_10019F024(v52, a2, a3, &v51);
      v28 = a2;
      if (v47)
      {
        goto LABEL_88;
      }

      sub_10006A178(a2, a3);
      sub_10006A178(v15, v17);

      if (v51)
      {
        return v6;
      }

      v4 = v41;
      goto LABEL_15;
    }

    v4 = v15;
    if (v15 >> 32 < v15)
    {
      goto LABEL_83;
    }

    sub_100069E2C(a2, a3);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v35))
      {
        goto LABEL_87;
      }

      v34 += v15 - v35;
    }

    __DataStorage._length.getter();
    v36 = v34;
    v33 = v47;
    v32 = a2;
    a3 = v42;
    sub_10019F024(v36, a2, v42, v52);
    v4 = v41;
LABEL_66:
    v47 = v33;
    v28 = v32;
    if (v33)
    {
      goto LABEL_88;
    }

    sub_10006A178(v32, a3);
    sub_10006A178(v15, v17);

    v5 = v43;
    if (v52[0])
    {
      return v6;
    }

LABEL_15:
    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_78;
    }
  }

  if (v18 == 2)
  {
    v29 = *(v15 + 16);
    v40 = *(v15 + 24);
    sub_100069E2C(a2, a3);
    a3 = __DataStorage._bytes.getter();
    if (a3)
    {
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v29, v30))
      {
        __break(1u);
LABEL_87:
        __break(1u);
      }

      a3 += v29 - v30;
    }

    if (__OFSUB__(v40, v29))
    {
      goto LABEL_84;
    }

    __DataStorage._length.getter();
    v31 = a3;
    v33 = v47;
    v32 = a2;
    a3 = v42;
    sub_10019F024(v31, a2, v42, v52);
    goto LABEL_66;
  }

  memset(v52, 0, 14);
  sub_100069E2C(a2, a3);
  sub_10019F024(v52, a2, a3, &v51);
  v28 = a2;
  if (!v47)
  {
    sub_10006A178(a2, a3);
    sub_10006A178(v15, v17);

    if (v51)
    {
      return v6;
    }

    goto LABEL_15;
  }

LABEL_88:
  result = sub_10006A178(v28, a3);
  __break(1u);
  return result;
}

uint64_t sub_100121D60(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v8 = *a1;
  v9 = sub_100121824(*a1, a2, a3);
  if (v3)
  {
    return v4;
  }

  if (v10)
  {
    if (v8 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v9;
  v57 = a1;
  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
  }

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5 == 0xC000000000000000;
  }

  v13 = !v12;
  v61 = v13;
  v62 = v5 >> 62;
  v14 = __OFSUB__(HIDWORD(v6), v6);
  v56 = v14;
  v55 = HIDWORD(v6) - v6;
  v59 = v5;
  v60 = BYTE6(v5);
  v58 = v6;
  while (1)
  {
    if (v8 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v11 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_24;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    v16 = *(v8 + 8 * v11 + 32);
LABEL_24:
    v17 = v16;
    v18 = [v16 keyIdentifier];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v21 >> 62;
    if (v21 >> 62 == 3)
    {
      if (v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == 0xC000000000000000;
      }

      v24 = v62;
      v26 = !v23 || v62 < 3;
      if (((v26 | v61) & 1) == 0)
      {
        v27 = 0;
        v28 = 0xC000000000000000;
LABEL_60:
        sub_10006A178(v27, v28);

        goto LABEL_17;
      }

LABEL_46:
      v29 = 0;
      if (v24 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    v24 = v62;
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_46;
      }

      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      v15 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v15)
      {
        goto LABEL_109;
      }

      if (v62 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v22)
    {
      LODWORD(v29) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_108;
      }

      v29 = v29;
      if (v62 <= 1)
      {
LABEL_43:
        v32 = v60;
        if (v24)
        {
          v32 = v55;
          if (v56)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v29 = BYTE6(v21);
      if (v62 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v24 != 2)
    {
      if (!v29)
      {
LABEL_59:
        v27 = v19;
        v28 = v21;
        goto LABEL_60;
      }

LABEL_55:
      sub_10006A178(v19, v21);

      goto LABEL_56;
    }

    v34 = *(v6 + 16);
    v33 = *(v6 + 24);
    v15 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (v15)
    {
      goto LABEL_107;
    }

LABEL_49:
    if (v29 != v32)
    {
      goto LABEL_55;
    }

    if (v29 < 1)
    {
      goto LABEL_59;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        memset(v64, 0, 14);
        sub_100069E2C(v6, v5);
LABEL_90:
        sub_10019F024(v64, v6, v5, &v63);
        sub_10006A178(v6, v5);
        sub_10006A178(v19, v21);

        if (v63)
        {
          goto LABEL_17;
        }

        goto LABEL_56;
      }

      v45 = v6;
      v46 = *(v19 + 16);
      v53 = *(v19 + 24);
      sub_100069E2C(v45, v5);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v46, v48))
        {
          goto LABEL_117;
        }

        v47 += v46 - v48;
      }

      if (__OFSUB__(v53, v46))
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (!v22)
      {
        v64[0] = v19;
        LOWORD(v64[1]) = v21;
        BYTE2(v64[1]) = BYTE2(v21);
        BYTE3(v64[1]) = BYTE3(v21);
        BYTE4(v64[1]) = BYTE4(v21);
        BYTE5(v64[1]) = BYTE5(v21);
        sub_100069E2C(v6, v5);
        goto LABEL_90;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_113;
      }

      sub_100069E2C(v58, v59);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v54 = v49;
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v50))
        {
          goto LABEL_118;
        }

        v47 = v19 - v50 + v54;
      }

      else
      {
        v47 = 0;
      }
    }

    __DataStorage._length.getter();
    v51 = v47;
    v6 = v58;
    v5 = v59;
    sub_10019F024(v51, v58, v59, v64);
    sub_10006A178(v58, v59);
    sub_10006A178(v19, v21);

    if (v64[0])
    {
      goto LABEL_17;
    }

LABEL_56:
    if (v4 != v11)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }

        v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v37)
        {
          goto LABEL_111;
        }

        if (v11 >= v37)
        {
          goto LABEL_112;
        }

        v38 = *(v8 + 32 + 8 * v11);
        v35 = *(v8 + 32 + 8 * v4);
        v36 = v38;
      }

      v39 = v36;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
      {
        v8 = sub_1001A291C(v8);
        v40 = (v8 >> 62) & 1;
      }

      else
      {
        LODWORD(v40) = 0;
      }

      v41 = v8 & 0xFFFFFFFFFFFFFF8;
      v42 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v39;

      if ((v8 & 0x8000000000000000) != 0 || v40)
      {
        v8 = sub_1001A291C(v8);
        v41 = v8 & 0xFFFFFFFFFFFFFF8;
        v5 = v59;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_99:
          __break(1u);
          return v4;
        }
      }

      else
      {
        v5 = v59;
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }
      }

      if (v11 >= *(v41 + 16))
      {
        goto LABEL_105;
      }

      v43 = v41 + 8 * v11;
      v44 = *(v43 + 32);
      *(v43 + 32) = v35;

      v6 = v58;
      *v57 = v8;
    }

    v15 = __OFADD__(v4++, 1);
    if (v15)
    {
      goto LABEL_104;
    }

LABEL_17:
    v15 = __OFADD__(v11++, 1);
    if (v15)
    {
      goto LABEL_103;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001223AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10012242C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SECNetworkConfiguration()
{
  result = qword_1005041E0;
  if (!qword_1005041E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001224E8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100122554(uint64_t a1)
{
  v1[35] = a1;
  v2 = *(*(sub_100068FC4(&unk_10050BEA0, &unk_10040F450) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[40] = v3;
  v4 = *(v3 - 8);
  v1[41] = v4;
  v5 = *(v4 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_100122688, 0, 0);
}

void sub_100122688()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  *(v0 + 16) = v28;
  *(v0 + 32) = v29;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 320);
      v7 = *(v0 + 328);
      v8 = *(v0 + 312);
      v9 = *(v0 + 240);
      v10 = *(v0 + 248);
      URL.init(string:)();
      v11 = *(v7 + 48);
      if (v11(v8, 1, v6) != 1)
      {
        v12 = *(v0 + 320);
        v13 = *(v0 + 304);
        v14 = *(*(v0 + 328) + 32);
        v14(*(v0 + 280), *(v0 + 312), v12);
        URL.init(string:)();
        if (v11(v13, 1, v12) != 1)
        {

          v15 = *(v0 + 344);
          v16 = *(v0 + 352);
          v17 = *(v0 + 336);
          v19 = *(v0 + 312);
          v18 = *(v0 + 320);
          v20 = *(v0 + 304);
          v21 = *(v0 + 280);
          v26 = *(v0 + 296);
          v27 = *(v0 + 288);
          v22 = type metadata accessor for SECNetworkConfiguration();
          v14(v21 + *(v22 + 20), v20, v18);

          v23 = *(v0 + 8);

          v23();
          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    sub_100075768(v0 + 16, &qword_100502420, &qword_10040F310);
  }

  v24 = swift_task_alloc();
  *(v0 + 360) = v24;
  *v24 = v0;
  v24[1] = sub_1001229A8;
  v25 = *(v0 + 352);

  sub_100123454(v25);
}

uint64_t sub_1001229A8()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  v3[46] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10012339C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[47] = v4;
    *v4 = v3;
    v4[1] = sub_100122B18;
    v5 = v3[44];

    return sub_1001257E0(v5);
  }
}

uint64_t sub_100122B18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v7 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = sub_1001232CC;
  }

  else
  {
    v5 = sub_100122C2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100122C2C()
{
  v76 = v0;
  if (!*(v0[48] + 16))
  {
    goto LABEL_13;
  }

  v1 = sub_10008C908(0xD000000000000010, 0x80000001004637D0);
  if ((v2 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1000754F0(*(v0[48] + 56) + 32 * v1, (v0 + 6));
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = v0[32];
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_10008C908(0x746C7561666564, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1000754F0(*(v3 + 56) + 32 * v4, (v0 + 10));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v0[33];
  if (!*(v6 + 16) || (v7 = sub_10008C908(0x5255726576726573, 0xE90000000000004CLL), (v8 & 1) == 0) || (sub_1000754F0(*(v6 + 56) + 32 * v7, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = v0[40];
  v10 = v0[41];
  v11 = v0[37];
  v12 = v0[26];
  v13 = v0[27];
  URL.init(string:)();

  v14 = *(v10 + 48);
  if (v14(v11, 1, v9) == 1)
  {
    v15 = v0[37];

    sub_100075768(v15, &unk_10050BEA0, &unk_10040F450);
    goto LABEL_13;
  }

  v41 = *(v0[41] + 32);
  v41(v0[43], v0[37], v0[40]);
  if (!*(v6 + 16))
  {
    goto LABEL_30;
  }

  v42 = sub_10008C908(0x6E6974726F706572, 0xE900000000000067);
  if ((v43 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1000754F0(*(v6 + 56) + 32 * v42, (v0 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    (*(v0[41] + 8))(v0[43], v0[40]);
    goto LABEL_13;
  }

  v44 = v0[34];
  if (!*(v44 + 16) || (v45 = sub_10008C908(7107189, 0xE300000000000000), (v46 & 1) == 0))
  {
LABEL_30:
    v55 = v0[43];
    v56 = v0[40];
    v57 = v0[41];

    (*(v57 + 8))(v55, v56);
    goto LABEL_13;
  }

  v74 = v41;
  sub_1000754F0(*(v44 + 56) + 32 * v45, (v0 + 22));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v47 = v0[40];
  v48 = v0[41];
  v49 = v0[36];
  v50 = v0[28];
  v51 = v0[29];
  URL.init(string:)();

  v52 = v14(v49, 1, v47);
  v53 = *(v48 + 8);
  if (v52 != 1)
  {
    v58 = v0[48];
    v59 = v0[43];
    v60 = v0[42];
    v61 = v0[40];
    v63 = v0[35];
    v62 = v0[36];
    v53(v0[44], v61);

    v74(v60, v62, v61);
    v74(v63, v59, v61);
    v65 = v0[43];
    v64 = v0[44];
    v66 = v0[42];
    v68 = v0[39];
    v67 = v0[40];
    v69 = v0[38];
    v70 = v0[35];
    v72 = v0[37];
    v73 = v0[36];
    v71 = type metadata accessor for SECNetworkConfiguration();
    v74(v70 + *(v71 + 20), v66, v67);

    v39 = v0[1];
    goto LABEL_19;
  }

  v54 = v0[36];
  v53(v0[43], v0[40]);
  sub_100075768(v54, &unk_10050BEA0, &unk_10040F450);
LABEL_13:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v16 = v0[48];
  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10051B2C8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[48];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v75 = v23;
    *v22 = 136315138;
    v24 = Dictionary.description.getter();
    v26 = v25;

    v27 = sub_1002FFA0C(v24, v26, &v75);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Invalid static config %s", v22, 0xCu);
    sub_1000752F4(v23);
  }

  else
  {
  }

  v28 = v0[44];
  v29 = v0[40];
  v30 = v0[41];
  sub_10009591C();
  swift_allocError();
  *v31 = 19;
  swift_willThrow();
  (*(v30 + 8))(v28, v29);
  v33 = v0[43];
  v32 = v0[44];
  v34 = v0[42];
  v36 = v0[38];
  v35 = v0[39];
  v38 = v0[36];
  v37 = v0[37];

  v39 = v0[1];
LABEL_19:

  return v39();
}

uint64_t sub_1001232CC()
{
  (*(v0[41] + 8))(v0[44], v0[40]);
  v1 = v0[49];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10012339C()
{
  v1 = v0[46];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100123454(uint64_t a1)
{
  v1[23] = a1;
  v2 = type metadata accessor for URL();
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v4 = *(v3 + 64) + 15;
  v1[26] = swift_task_alloc();
  v5 = *(*(sub_100068FC4(&unk_10050BEA0, &unk_10040F450) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v1[31] = v6;
  v7 = *(v6 - 8);
  v1[32] = v7;
  v8 = *(v7 + 64) + 15;
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001235F8, 0, 0);
}

uint64_t sub_1001235F8()
{
  v0[34] = sub_100125180();
  v0[35] = v1;
  if (v1)
  {
    v2 = v0[30];
    v3 = v0[24];
    v4 = v0[25];
    URL.init(string:)();
    v5 = *(v4 + 48);
    v0[36] = v5;
    v0[37] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v5(v2, 1, v3);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v7 = v0[33];
      v8 = v0[30];
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      v9 = swift_task_alloc();
      v0[38] = v9;
      *v9 = v0;
      v9[1] = sub_1001237D0;
      v10 = v0[33];

      return sub_100159A70(v10, 0);
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[42] = v11;
    *v11 = v0;
    v11[1] = sub_10012461C;

    return sub_100125254();
  }

  return result;
}

uint64_t sub_1001237D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 304);
  v9 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {
    v6 = v4[35];

    v7 = sub_100124374;
  }

  else
  {
    v7 = sub_100123924;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100123924()
{
  v99 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[20] = 0;
  v5 = [v3 propertyListWithData:isa options:0 format:0 error:v0 + 20];

  v6 = v0[20];
  if (!v5)
  {
    v32 = v0[39];
    v31 = v0[40];
    v33 = v0[35];
    v35 = v0[32];
    v34 = v0[33];
    v36 = v0[31];
    v37 = v6;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v32, v31);
    (*(v35 + 8))(v34, v36);
LABEL_30:
    v56 = v0[33];
    v58 = v0[29];
    v57 = v0[30];
    v60 = v0[27];
    v59 = v0[28];
    v61 = v0[26];

    v62 = v0[1];
    goto LABEL_31;
  }

  v7 = v6;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (!swift_dynamicCast())
  {
    v38 = v0[35];

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_10051B2C8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "getStaticConfigURL: Invalid environment retrieved", v42, 2u);
    }

    v44 = v0[39];
    v43 = v0[40];
    v46 = v0[32];
    v45 = v0[33];
    v47 = v0[31];

    goto LABEL_29;
  }

  v8 = v0[21];
  if (!*(v8 + 16) || (v9 = sub_10008C908(v0[34], v0[35]), (v10 & 1) == 0))
  {

LABEL_21:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v48 = v0[35];
    v49 = type metadata accessor for Logger();
    sub_1000958E4(v49, qword_10051B2C8);

    v24 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = os_log_type_enabled(v24, v50);
    v52 = v0[35];
    if (v51)
    {
      v53 = v0[34];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v98 = v27;
      *v26 = 136315138;
      v54 = sub_1002FFA0C(v53, v52, &v98);

      *(v26 + 4) = v54;
      v29 = "getStaticConfigURL: No urls for selected environment %s";
      v30 = v50;
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  sub_1000754F0(*(v8 + 56) + 32 * v9, (v0 + 6));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = v0[22];
  if (!*(v11 + 16) || (v12 = v0[22], v13 = sub_10008C908(0xD000000000000018, 0x8000000100463900), (v14 & 1) == 0) || (sub_1000754F0(*(v11 + 56) + 32 * v13, (v0 + 10)), (swift_dynamicCast() & 1) == 0))
  {
    v64 = v0[35];

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000958E4(v65, qword_10051B2C8);

    v24 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v66))
    {
      v67 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v67 = 136315394;
      *(v67 + 4) = sub_1002FFA0C(0xD000000000000018, 0x8000000100463900, &v98);
      *(v67 + 12) = 2080;
      v68 = Dictionary.description.getter();
      v70 = v69;

      v71 = sub_1002FFA0C(v68, v70, &v98);

      *(v67 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v24, v66, "getStaticConfigURL: Invalid value for key %s in dictionary %s", v67, 0x16u);
      swift_arrayDestroy();

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[29];
  v18 = v0[24];

  v20 = v0[17];
  v19 = v0[18];
  URL.init(string:)();
  if (v16(v17, 1, v18) == 1)
  {
    v21 = v0[35];
    v22 = v0[29];

    sub_100075768(v22, &unk_10050BEA0, &unk_10040F450);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000958E4(v23, qword_10051B2C8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v98 = v27;
      *v26 = 136315138;
      v28 = sub_1002FFA0C(v20, v19, &v98);

      *(v26 + 4) = v28;
      v29 = "getStaticConfigURL: Unable to form third party static config URL with %s";
      v30 = v25;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v24, v30, v29, v26, 0xCu);
      sub_1000752F4(v27);

LABEL_26:

LABEL_28:
      v44 = v0[39];
      v43 = v0[40];
      v46 = v0[32];
      v45 = v0[33];
      v47 = v0[31];
LABEL_29:
      sub_10009591C();
      swift_allocError();
      *v55 = 19;
      swift_willThrow();
      sub_10006A178(v44, v43);
      (*(v46 + 8))(v45, v47);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v72 = *(v0[25] + 32);
  v72(v0[26], v0[29], v0[24]);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v73 = v0[35];
  v74 = type metadata accessor for Logger();
  sub_1000958E4(v74, qword_10051B2C8);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  v77 = os_log_type_enabled(v75, v76);
  v96 = v0[39];
  v97 = v0[40];
  v78 = v0[35];
  if (v77)
  {
    v79 = v0[34];
    v92 = v0[32];
    v93 = v0[31];
    v94 = v0[33];
    v95 = v72;
    v80 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v80 = 136315394;
    v81 = sub_1002FFA0C(v79, v78, &v98);

    *(v80 + 4) = v81;
    *(v80 + 12) = 2080;
    v82 = sub_1002FFA0C(v20, v19, &v98);

    *(v80 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "getStaticConfigURL: Using override config URL for %s - returning static config URL %s", v80, 0x16u);
    swift_arrayDestroy();

    v72 = v95;

    sub_10006A178(v96, v97);

    (*(v92 + 8))(v94, v93);
  }

  else
  {
    v84 = v0[32];
    v83 = v0[33];
    v85 = v0[31];

    sub_10006A178(v96, v97);

    (*(v84 + 8))(v83, v85);
  }

  v72(v0[23], v0[26], v0[24]);
  v86 = v0[33];
  v87 = v0[29];
  v88 = v0[30];
  v90 = v0[27];
  v89 = v0[28];
  v91 = v0[26];

  v62 = v0[1];
LABEL_31:

  return v62();
}

uint64_t sub_100124374()
{
  v27 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[16];
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v26);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1002FFA0C(0xD000000000000045, 0x80000001004638B0, &v26);
    _os_log_impl(&_mh_execute_header, v3, v4, "getStaticConfigURL: Network error encountered %s when getting environments from %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[41];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[31];
  sub_10009591C();
  swift_allocError();
  *v17 = 11;
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  v18 = v0[33];
  v20 = v0[29];
  v19 = v0[30];
  v22 = v0[27];
  v21 = v0[28];
  v23 = v0[26];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10012461C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 264);
    v9 = *(v4 + 232);
    v8 = *(v4 + 240);
    v11 = *(v4 + 216);
    v10 = *(v4 + 224);
    v12 = *(v4 + 208);

    v13 = *(v6 + 8);

    return v13();
  }

  else
  {
    *(v4 + 344) = a1 & 1;

    return _swift_task_switch(sub_1001247FC, 0, 0);
  }
}

uint64_t sub_1001247FC()
{
  v26 = v0;
  if (*(v0 + 344) == 1)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_10051B2C8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_1002FFA0C(0xD000000000000066, 0x8000000100463840, &v25);
      _os_log_impl(&_mh_execute_header, v2, v3, "Prod SE, no env set - returning static config URL %s", v4, 0xCu);
      sub_1000752F4(v5);
    }

    else
    {
    }

    v11 = (v0 + 224);
    v7 = *(v0 + 224);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    URL.init(string:)();
    if ((*(v13 + 48))(v7, 1, v12) != 1)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1002FFA0C(0xD00000000000004DLL, 0x80000001004637F0, &v25);
      _os_log_impl(&_mh_execute_header, v7, v8, "Dev SE, no env set - returning static config URL %s", v9, 0xCu);
      sub_1000752F4(v10);

      goto LABEL_14;
    }
  }

LABEL_14:
  v11 = (v0 + 216);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  URL.init(string:)();
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

LABEL_15:
  (*(*(v0 + 200) + 32))(*(v0 + 184), *v11, *(v0 + 192));
  v18 = *(v0 + 264);
  v19 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v23 = *(v0 + 208);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100124BD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v27 = UUID.uuidString.getter();
  v28 = v9;
  v25 = 47;
  v26 = 0xE100000000000000;
  v25 = String.init<A>(_:)();
  v26 = v10;
  String.append<A>(contentsOf:)();

  v11 = v25;
  v12 = v26;
  v27 = a1;
  v28 = a2;
  v25 = 0x3D64496D6165743FLL;
  v26 = 0xE800000000000000;
  v25 = String.init<A>(_:)();
  v26 = v13;
  String.append<A>(contentsOf:)();
  v15 = v25;
  v14 = v26;
  v27 = URL.absoluteString.getter();
  v28 = v16;
  v17._object = 0x8000000100463790;
  v17._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v11;
  v18._object = v12;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v15;
  v19._object = v14;
  String.append(_:)(v19);
  URL.init(string:)();
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v8, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v21 + 32))(v24, v8, v20);
  }

  return result;
}

uint64_t sub_100124E14@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = UUID.uuidString.getter();
  v30 = v14;
  v27 = 47;
  v28 = 0xE100000000000000;
  v27 = String.init<A>(_:)();
  v28 = v15;
  String.append<A>(contentsOf:)();

  v16 = v27;
  v17 = v28;
  v29 = 0xD000000000000019;
  v30 = 0x8000000100463770;
  (*(v5 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v8, v4);
  v18 = URL.absoluteString.getter();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  v29 = v18;
  v30 = v20;
  v21._countAndFlagsBits = v16;
  v21._object = v17;
  String.append(_:)(v21);
  v22 = v26;
  URL.init(string:)();
  result = (*(v10 + 48))(v22, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(v25, v22, v9);
  }

  return result;
}

unint64_t sub_10012512C()
{
  result = qword_100504218;
  if (!qword_100504218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504218);
  }

  return result;
}

uint64_t sub_100125180()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t sub_100125270()
{
  v1 = byte_100504180;
  if (byte_100504180 == 2)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    v0[23] = v3;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10012540C;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001861F4;
    v0[13] = &unk_1004C7A88;
    v0[14] = v4;
    sub_1003AF710(v2, v3, v0 + 10);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5(v1 & 1);
  }
}

uint64_t sub_10012540C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1001255E8;
  }

  else
  {
    v3 = sub_10012551C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012551C()
{
  v1 = *(v0 + 168);

  v3 = sub_1003AF3C4(v1, v2);
  v4 = [v3 isProd];

  byte_100504180 = v4;
  v6 = sub_1003AF3C4(v1, v5);
  v7 = [v6 isProd];

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1001255E8()
{
  v21 = v0;
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[20];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "secureElementIsProd: NearField error %s encountered", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = v0[24];
  sub_10009591C();
  swift_allocError();
  *v17 = 8;
  swift_willThrow();

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1001257E0(uint64_t a1)
{
  v1[16] = a1;
  v2 = type metadata accessor for URL();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100125934, 0, 0);
}

uint64_t sub_100125934()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = *(v4 + 16);
  v0[24] = v6;
  v0[25] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_100125A54;
  v8 = v0[23];

  return sub_100159A70(v8, 0);
}

uint64_t sub_100125A54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v8 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_100126040;
  }

  else
  {
    v6 = sub_100125B98;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100125B98()
{
  v39 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[13] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v0 + 13];

  v6 = v0[13];
  if (v5)
  {
    v7 = v6;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    if (swift_dynamicCast())
    {
      v8 = v0[27];
      v9 = v0[28];
      v10 = v0[20];
      v11 = v0[19];
      (*(v0[22] + 8))(v0[23], v0[21]);
      sub_10006A178(v8, v9);
      v12 = v0[15];

      v13 = v0[1];

      return v13(v12);
    }

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "getViennaConfig: Invalid static config retrieved", v19, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v20 = 14;
  }

  else
  {
    v15 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B2C8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315138;
    swift_getErrorValue();
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[11];
    v29 = Error.localizedDescription.getter();
    v31 = sub_1002FFA0C(v29, v30, &v38);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "getViennaConfig: JSON error %s when serializing static config", v24, 0xCu);
    sub_1000752F4(v25);
  }

  v33 = v0[27];
  v32 = v0[28];
  sub_10009591C();
  swift_allocError();
  *v34 = 14;
  swift_willThrow();
  sub_10006A178(v33, v32);

  v35 = v0[20];
  v36 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v37 = v0[1];

  return v37();
}

uint64_t sub_100126040()
{
  v35 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2C8);
  v3(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[29];
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v14 = 136315394;
    swift_getErrorValue();
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[8];
    v18 = Error.localizedDescription.getter();
    v20 = sub_1002FFA0C(v18, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    sub_10012634C();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v12 + 8))(v11, v13);
    v24 = sub_1002FFA0C(v21, v23, &v34);

    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "getViennaConfig: Network error encountered %s when getting vienna config from %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[17];

    (*(v26 + 8))(v25, v27);
  }

  v28 = v0[29];
  sub_10009591C();
  swift_allocError();
  *v29 = 11;
  swift_willThrow();

  v30 = v0[20];
  v31 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v32 = v0[1];

  return v32();
}

unint64_t sub_10012634C()
{
  result = qword_100504220;
  if (!qword_100504220)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504220);
  }

  return result;
}

__n128 sub_1001263BC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  if (qword_1005019B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000958E4(v10, qword_1005047B0);
  (*(v11 + 16))(v14, v15, v10);
  UserDefaultBacked.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v16 = v52;
  if (!v52)
  {
    v27 = a1;
    sub_1001409BC(a1, v53);
    if (v2)
    {
      return result;
    }

    v28 = v53[2];
    v29 = v53[3];
    v31 = v53[4];
    v30 = v53[5];
    v32 = v53[6];
    v33 = v53[7];
    v34 = v53[8];
    v16 = v53[9];
    v36 = v53[10];
    v35 = v53[11];
    v57 = v54;
    v58 = v55;
    v37 = v56;
    v38 = v53[0];
    v39 = v53[1];
    goto LABEL_18;
  }

  v48 = a1;
  v59 = v2;
  v47 = v51;
  if (qword_1005019B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000958E4(v5, qword_1005047C8);
  v18 = v6[2];
  v18(v9, v17, v5);
  UserDefaultBacked.wrappedValue.getter();
  v19 = v6[1];
  v19(v9, v5);
  if ((v52 & 1) == 0)
  {
    v46 = v51;
    if (qword_1005019C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1000958E4(v5, qword_1005047E0);
    v18(v9, v20, v5);
    UserDefaultBacked.wrappedValue.getter();
    v19(v9, v5);
    if ((v52 & 1) == 0)
    {
      v45 = v51;
      v51 = 0x64497070612ELL;
      v52 = 0xE600000000000000;
      v34 = v47;
      v49 = v47;
      v50 = v16;

      v49 = String.init<A>(_:)();
      v50 = v40;
      String.append<A>(contentsOf:)();
      v44 = v49;
      v29 = v50;
      v51 = 0x49656C646E75622ELL;
      v52 = 0xE900000000000064;
      v49 = v34;
      v50 = v16;

      v49 = String.init<A>(_:)();
      v50 = v41;
      String.append<A>(contentsOf:)();
      v31 = v49;
      v30 = v50;
      v51 = 0x64496D6165742ELL;
      v52 = 0xE700000000000000;
      v49 = v34;
      v50 = v16;

      v49 = String.init<A>(_:)();
      v50 = v42;
      String.append<A>(contentsOf:)();
      v32 = v49;
      v33 = v50;

      [v48 auditToken];
      v28 = v44;
      v36 = v45;
      v37 = 0;
      v38 = v34;
      v39 = v16;
      v35 = v46;
LABEL_18:
      *a2 = v38;
      *(a2 + 8) = v39;
      *(a2 + 16) = v28;
      *(a2 + 24) = v29;
      *(a2 + 32) = v31;
      *(a2 + 40) = v30;
      *(a2 + 48) = v32;
      *(a2 + 56) = v33;
      *(a2 + 64) = v34;
      *(a2 + 72) = v16;
      *(a2 + 80) = v36;
      *(a2 + 88) = v35;
      result = v57;
      v43 = v58;
      *(a2 + 96) = v57;
      *(a2 + 112) = v43;
      *(a2 + 128) = v37;
      return result;
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B2C8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Missing App Store fields in debug", v24, 2u);
  }

  sub_10009591C();
  swift_allocError();
  *v25 = 23;
  swift_willThrow();
  return result;
}

uint64_t sub_100126A58(void *a1)
{
  [a1 auditToken];
  result = audit_token_to_pid(&v6);
  if ((result & 0x80000000) != 0)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalid pid on xpc connection", v5, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_100126B60(void *a1, id *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  [a1 invalidate];
  [*a2 endSession];
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_100504230);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1002FFA0C(a4, a5, &v13);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Ended NFCredentialSession for reason: %s", v10, 0xCu);
    sub_1000752F4(v11);
  }
}

void sub_100126CD8(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504248, &qword_10040B570);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_100127448;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004C7AD8;
  v10 = _Block_copy(aBlock);

  [v7 sharedHardwareManager:v10];
  _Block_release(v10);
}

uint64_t sub_100126E94(void *a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504248, &qword_10040B570);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  if (a1)
  {
    (*(v5 + 16))(v8, a2, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v8, v4);
    aBlock[4] = sub_100127570;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BBFA0;
    aBlock[3] = &unk_1004C7B28;
    v11 = _Block_copy(aBlock);
    v12 = a1;

    v13 = [v12 startCredentialSession:v11];
    _Block_release(v11);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100501970 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_100504230);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "startNFCredentialSession: Failed to get NFHardwareManager", v18, 2u);
    }

    sub_10009591C();
    v19 = swift_allocError();
    *v20 = 9;
    aBlock[0] = v19;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10012715C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v15[0] = a1;
    v15[1] = voucher_copy();
    sub_100068FC4(&qword_100504248, &qword_10040B570);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100501970 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_100504230);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v9 = Error.localizedDescription.getter();
        v11 = v10;
      }

      else
      {
        v11 = 0x80000001004639B0;
        v9 = 0xD000000000000017;
      }

      v12 = sub_1002FFA0C(v9, v11, v15);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "startNFCredentialSession: Failed to start NFCredentialSession with error %s", v7, 0xCu);
      sub_1000752F4(v8);
    }

    sub_10009591C();
    v13 = swift_allocError();
    *v14 = 8;
    v15[0] = v13;
    sub_100068FC4(&qword_100504248, &qword_10040B570);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10012737C()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100504230);
  v1 = sub_1000958E4(v0, qword_100504230);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000958E4(v0, qword_10051B2C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100127448(void *a1)
{
  v3 = *(sub_100068FC4(&qword_100504248, &qword_10040B570) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100126E94(a1, v4);
}

uint64_t sub_1001274C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001274DC()
{
  v1 = sub_100068FC4(&qword_100504248, &qword_10040B570);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100127570(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100068FC4(&qword_100504248, &qword_10040B570) - 8) + 80);

  return sub_10012715C(a1, a2);
}

uint64_t sub_100127608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[259] = v36;
  v8[258] = a8;
  v8[257] = a7;
  v8[256] = a6;
  v8[255] = a5;
  v8[254] = a4;
  v9 = *(*(sub_100068FC4(&unk_100504270, &qword_10040B598) - 8) + 64) + 15;
  v8[260] = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Identifier();
  v8[261] = v10;
  v11 = *(v10 - 8);
  v8[262] = v11;
  v12 = *(v11 + 64) + 15;
  v8[263] = swift_task_alloc();
  v13 = type metadata accessor for Calendar();
  v8[264] = v13;
  v14 = *(v13 - 8);
  v8[265] = v14;
  v15 = *(v14 + 64) + 15;
  v8[266] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v8[267] = v16;
  v17 = *(v16 - 8);
  v8[268] = v17;
  v18 = *(v17 + 64) + 15;
  v8[269] = swift_task_alloc();
  v8[270] = swift_task_alloc();
  v19 = type metadata accessor for PresentmentInfo();
  v8[271] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[272] = swift_task_alloc();
  v21 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v8[273] = swift_task_alloc();
  v22 = type metadata accessor for DispatchTime();
  v8[274] = v22;
  v23 = *(v22 - 8);
  v8[275] = v23;
  v24 = *(v23 + 64) + 15;
  v8[276] = swift_task_alloc();
  v25 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v8[277] = v25;
  v26 = *(v25 - 8);
  v8[278] = v26;
  v27 = *(v26 + 64) + 15;
  v8[279] = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  v8[280] = v28;
  v29 = *(v28 - 8);
  v8[281] = v29;
  v30 = *(v29 + 64) + 15;
  v8[282] = swift_task_alloc();
  v8[283] = swift_task_alloc();
  v8[284] = swift_task_alloc();
  v8[285] = swift_task_alloc();
  v8[286] = swift_task_alloc();
  v8[287] = swift_task_alloc();
  v31 = type metadata accessor for StateInternal();
  v8[288] = v31;
  v32 = *(v31 - 8);
  v8[289] = v32;
  v33 = *(v32 + 64) + 15;
  v8[290] = swift_task_alloc();

  return _swift_task_switch(sub_100127A20, 0, 0);
}

uint64_t sub_100127A20()
{
  v100 = v0;
  v1 = v0[254];
  v2 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24);
  if (!(v2 >> 62) || v2 >> 62 != 1 && (v2 == 0x8000000000000000 ? (v3 = (*(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8) | *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16) | *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState)) == 0) : (v3 = 0), !v3))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempted to enter card emulation in invalid state", v7, 2u);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 10;
    goto LABEL_50;
  }

  v11 = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  v0[291] = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  if (*(v1 + v11 + 128))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Card Emulation is not available on non-application clients", v15, 2u);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 15;
    goto LABEL_50;
  }

  if (!sub_1001D0A10())
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000958E4(v55, qword_10051B2C8);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "NFC not enabled", v58, 2u);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 22;
    goto LABEL_50;
  }

  v16 = v0[255];
  v17 = v0[254];
  v18 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v19 = *(v17 + v18);
  v20 = swift_task_alloc();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;

  v21 = sub_10033322C(sub_10012E2D4, v20, v19);

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_45:

    if (qword_1005019D8 == -1)
    {
LABEL_46:
      v80 = v0[282];
      v81 = v0[281];
      v82 = v0[280];
      v83 = v0[255];
      v84 = type metadata accessor for Logger();
      sub_1000958E4(v84, qword_10051B2C8);
      (*(v81 + 16))(v80, v83, v82);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v0[282];
      v89 = v0[281];
      v90 = v0[280];
      if (v87)
      {
        v91 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v91 = 136315394;
        *(v91 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, &v99);
        *(v91 + 12) = 2080;
        v92 = UUID.uuidString.getter();
        v94 = v93;
        (*(v89 + 8))(v88, v90);
        v95 = sub_1002FFA0C(v92, v94, &v99);

        *(v91 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s: Credential %s not found", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v89 + 8))(v88, v90);
      }

      sub_10009591C();
      v9 = swift_allocError();
      v10 = 1;
LABEL_50:
      *v8 = v10;
      swift_willThrow();
LABEL_51:
      v0[329] = v9;
      v96 = swift_task_alloc();
      v0[330] = v96;
      *v96 = v0;
      v96[1] = sub_10012BD84;
      v97 = v0[254];

      return sub_1001FF5CC();
    }

LABEL_56:
    swift_once();
    goto LABEL_46;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_21:
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v21 + 32);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_56;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v23 = v22;
  v0[292] = v22;
  v24 = v0[290];
  v25 = v0[289];
  v26 = v0[288];

  CredentialInternal.state.getter();
  v27 = (*(v25 + 88))(v24, v26);
  v28 = v0[290];
  v29 = v0[289];
  v30 = v0[288];
  if (v27 != enum case for StateInternal.installed(_:))
  {
    (*(v29 + 8))(v0[290], v30);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v59 = v0[283];
    v60 = v0[281];
    v61 = v0[280];
    v62 = v0[255];
    v63 = type metadata accessor for Logger();
    sub_1000958E4(v63, qword_10051B2C8);
    (*(v60 + 16))(v59, v62, v61);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[283];
    v68 = v0[281];
    v69 = v0[280];
    if (v66)
    {
      v70 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v70 = 136315394;
      *(v70 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, &v99);
      *(v70 + 12) = 2080;
      v71 = UUID.uuidString.getter();
      v72 = v23;
      v74 = v73;
      (*(v68 + 8))(v67, v69);
      v75 = sub_1002FFA0C(v71, v74, &v99);
      v23 = v72;

      *(v70 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s: Credential %s not installed", v70, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v68 + 8))(v67, v69);
    }

    sub_10009591C();
    v9 = swift_allocError();
    *v79 = 7;
    swift_willThrow();

    goto LABEL_51;
  }

  (*(v29 + 96))(v0[290], v30);
  v0[293] = *v28;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v31 = v0[287];
  v32 = v0[281];
  v33 = v0[280];
  v34 = v0[255];
  v35 = v0[254];
  v36 = type metadata accessor for Logger();
  v0[294] = sub_1000958E4(v36, qword_10051B2C8);
  v37 = *(v32 + 16);
  v0[295] = v37;
  v0[296] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v31, v34, v33);
  v38 = v35;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[287];
  v43 = v0[281];
  v44 = v0[280];
  if (v41)
  {
    v45 = v0[254];
    v46 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v46 = 136315394;
    v47 = UUID.uuidString.getter();
    v98 = v23;
    v49 = sub_1002FFA0C(v47, v48, &v99);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = UUID.uuidString.getter();
    v52 = v51;
    v53 = *(v43 + 8);
    v53(v42, v44);
    v54 = sub_1002FFA0C(v50, v52, &v99);
    v23 = v98;

    *(v46 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session %s: Starting card emulation for credential %s", v46, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v53 = *(v43 + 8);
    v53(v42, v44);
  }

  v0[297] = v53;
  v76 = swift_task_alloc();
  v0[298] = v76;
  *v76 = v0;
  v76[1] = sub_100128600;
  v77 = v0[254];

  return sub_1001FDAE0(v23);
}

uint64_t sub_100128600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 2384);
  v10 = *v5;
  v6[299] = a1;
  v6[300] = a2;
  v6[301] = a3;
  v6[302] = a4;
  v6[303] = v4;

  if (v4)
  {
    v8 = sub_10012C048;
  }

  else
  {
    v8 = sub_100128750;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100128750()
{
  v45 = v0;
  v1 = v0[300];
  v2 = v0[294];
  if (v1)
  {
    v3 = v0[292];
    v4 = v1;
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[292];
      v9 = v0[286];
      v10 = v0[281];
      v42 = v0[280];
      v43 = v0[297];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44 = v12;
      *v11 = 136315138;
      CredentialInternal.identifier.getter();
      v13 = UUID.uuidString.getter();
      v15 = v14;
      v43(v9, v42);
      v16 = sub_1002FFA0C(v13, v15, &v44);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting handle to arm credential %s for card emulation", v11, 0xCu);
      sub_1000752F4(v12);
    }

    v17 = v0[302];
    v18 = v0[301];
    v19 = v0[300];
    v20 = v0[299];
    v21 = v0[254];
    v22 = v18;
    v23 = v17;
    v24 = v4;
    v25 = v20;
    sub_1001FEFA8(v20, v19, v18, v17);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v0[304] = qword_10051B858;
    v26 = swift_task_alloc();
    v0[305] = v26;
    *v26 = v0;
    v26[1] = sub_100128B80;
    v27 = v0[292];

    return sub_100301130(v27);
  }

  else
  {
    v29 = v0[293];

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, &v44);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: NFCredentialSession in handle has been invalidated", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v34 = v0[302];
    v35 = v0[301];
    v36 = v0[299];
    v37 = v0[292];
    sub_10009591C();
    v38 = swift_allocError();
    *v39 = 9;
    swift_willThrow();

    v0[329] = v38;
    v40 = swift_task_alloc();
    v0[330] = v40;
    *v40 = v0;
    v40[1] = sub_10012BD84;
    v41 = v0[254];

    return sub_1001FF5CC();
  }
}

uint64_t sub_100128B80()
{
  v2 = *(*v1 + 2440);
  v5 = *v1;
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v3 = sub_10012C11C;
  }

  else
  {
    v3 = sub_100128CC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100128CC0()
{
  v1 = v0[300];
  v0[10] = v0;
  v0[15] = v0 + 251;
  v0[11] = sub_100128E14;
  v2 = swift_continuation_init();
  v0[213] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[210] = v2;
  v0[206] = _NSConcreteStackBlock;
  v0[207] = 1107296256;
  v0[208] = sub_1001FDA0C;
  v0[209] = &unk_1004C7C40;
  [v1 requestSETransceiverWithCompletion:v0 + 206];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100128E14()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 2456) = v3;
  if (v3)
  {
    v4 = *(v1 + 2344);

    v5 = sub_10012C228;
  }

  else
  {
    v5 = sub_100128F58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100128F58()
{
  v214 = v0;
  v1 = v0;
  v2 = v0[251];
  v0[308] = v2;
  if (!v2)
  {
    v17 = v0[294];
    v18 = v0[293];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v213[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, v213);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: Unable to get transceiver", v21, 0xCu);
      sub_1000752F4(v22);
    }

    v23 = v0[302];
    v24 = v1[301];
    v25 = v1[300];
    v26 = v1[299];
    v27 = v1[292];
    sub_10009591C();
    v28 = swift_allocError();
    *v29 = 9;
    swift_willThrow();
    goto LABEL_109;
  }

  v0[250] = 0;
  v3 = [v2 listAppletsAndRefreshCache:0 outError:v0 + 250];
  v4 = v0[250];
  if (!v3)
  {
    v205 = v2;
    v30 = v0[294];
    v31 = v0[293];
    v32 = v4;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v213[0] = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, v213);
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      v36 = v0[227];
      v37 = v0[228];
      v38 = v0[229];
      v39 = Error.localizedDescription.getter();
      v41 = sub_1002FFA0C(v39, v40, v213);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s: Nearfield error %s encountered when listing applets", v35, 0x16u);
      swift_arrayDestroy();
    }

    v42 = v0[302];
    v43 = v0[301];
    v44 = v0[300];
    v45 = v0[299];
    v46 = v0[292];
    [v205 invalidate];
    sub_10009591C();
    v28 = swift_allocError();
    *v47 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_110;
  }

  v5 = v3;
  v6 = v0[293];
  v0[309] = sub_10012E2F8();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v4;

  [v2 invalidate];
  v212 = v0;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v9 = v6 & 0xFFFFFFFFFFFFFF8;
  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 > 1)
  {
    while (1)
    {
      v210 = v7;
      v11 = 0;
      v6 &= 0xC000000000000001;
      v7 = v1[293] + 32;
      while (1)
      {
        if (v6)
        {
          v16 = v1[293];
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_22;
          }

          v12 = *(v7 + 8 * v11);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        InstanceInfoInternal.type.getter();
        v15 = InstanceTypeInternal.rawValue.getter();
        if (v15 == InstanceTypeInternal.rawValue.getter())
        {
          v7 = v210;
          goto LABEL_33;
        }

        ++v11;
        if (v14 == v10)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v1[293] < 0)
      {
        v48 = v1[293];
      }

      v49 = _CocoaArrayWrapper.endIndex.getter();
      v50 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v50;
      if (v49 < 2)
      {
        break;
      }

      if (!v50)
      {
        goto LABEL_70;
      }
    }
  }

  if (!v10)
  {
LABEL_70:
    v74 = v1[293];

LABEL_105:
    v177 = v1[296];
    v178 = v1[295];
    v179 = v1[294];
    v180 = v1[284];
    v181 = v1[280];
    v182 = v1[255];

    v178(v180, v182, v181);
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    v185 = os_log_type_enabled(v183, v184);
    v186 = v1[297];
    v187 = v1[284];
    v188 = v1;
    v189 = v1[281];
    v190 = v188[280];
    if (v185)
    {
      v191 = swift_slowAlloc();
      v213[0] = swift_slowAlloc();
      *v191 = 136315394;
      *(v191 + 4) = sub_1002FFA0C(0xD000000000000037, 0x80000001004639E0, v213);
      *(v191 + 12) = 2080;
      v192 = UUID.uuidString.getter();
      v194 = v193;
      v186(v187, v190);
      v195 = sub_1002FFA0C(v192, v194, v213);

      *(v191 + 14) = v195;
      _os_log_impl(&_mh_execute_header, v183, v184, "%s: No applets are associated with credential with UUID %s", v191, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v186(v187, v190);
    }

    v1 = v212;
    v23 = v212[302];
    v24 = v212[301];
    v25 = v212[300];
    v26 = v212[299];
    v27 = v212[292];
    sub_10009591C();
    v28 = swift_allocError();
    *v196 = 5;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_109:

LABEL_110:
    v1[329] = v28;
    v197 = swift_task_alloc();
    v1[330] = v197;
    *v197 = v1;
    v197[1] = sub_10012BD84;
    v198 = v1[254];

    return sub_1001FF5CC();
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v199 = v1[293];
    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v51 = *(v1[293] + 32);
  }

  v13 = v51;
LABEL_33:
  v1[310] = v13;
  if (v7 >> 62)
  {
    goto LABEL_103;
  }

  v52 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
LABEL_104:

    v176 = v1[293];
    goto LABEL_105;
  }

LABEL_35:
  v53 = 0;
  v201 = v1 + 245;
  v202 = (v1 + 372);
  v203 = (v1 + 51);
  v204 = v1 + 214;
  v207 = v7 & 0xFFFFFFFFFFFFFF8;
  v208 = v7 & 0xC000000000000001;
  v54 = v1[306];
  v211 = v7;
  v206 = v52;
  while (1)
  {
    if (v208)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v53 >= *(v207 + 16))
      {
        goto LABEL_95;
      }

      v56 = *(v7 + 8 * v53 + 32);
    }

    v57 = v56;
    v1[311] = v56;
    v1 = (v53 + 1);
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v58 = InstanceInfoInternal.instanceAID.getter();
    v60 = v59;
    v61 = [v57 identifierAsData];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = v60 >> 62;
    v65 = v63 >> 62;
    if (v60 >> 62 == 3)
    {
      break;
    }

    if (v64)
    {
      if (v64 == 1)
      {
        LODWORD(v66) = HIDWORD(v58) - v58;
        if (__OFSUB__(HIDWORD(v58), v58))
        {
          goto LABEL_102;
        }

        v66 = v66;
      }

      else
      {
        v68 = *(v58 + 16);
        v67 = *(v58 + 24);
        v69 = __OFSUB__(v67, v68);
        v66 = v67 - v68;
        if (v69)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v66 = BYTE6(v60);
    }

LABEL_56:
    if (v65 > 1)
    {
      if (v65 != 2)
      {
        if (!v66)
        {
          goto LABEL_71;
        }

LABEL_37:

        sub_10006A178(v7, v63);
        sub_10006A178(v58, v60);
        goto LABEL_38;
      }

      v71 = *(v7 + 16);
      v70 = *(v7 + 24);
      v69 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v69)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (!v52)
        {
          goto LABEL_104;
        }

        goto LABEL_35;
      }

      if (v66 != v72)
      {
        goto LABEL_37;
      }
    }

    else if (v65)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_100;
      }

      if (v66 != HIDWORD(v7) - v7)
      {
        goto LABEL_37;
      }
    }

    else if (v66 != BYTE6(v63))
    {
      goto LABEL_37;
    }

    if (v66 < 1)
    {
LABEL_71:
      sub_10006A178(v7, v63);
      v75 = v58;
      v76 = v60;
      goto LABEL_72;
    }

    sub_100069E2C(v7, v63);
    v73 = sub_10008C678(v58, v60, v7, v63);
    sub_10006A178(v58, v60);
    sub_10006A178(v7, v63);
    if (v73)
    {
      goto LABEL_73;
    }

LABEL_38:
    ++v53;
    v55 = v1 == v206;
    v7 = v211;
    v1 = v212;
    if (v55)
    {
      goto LABEL_104;
    }
  }

  v66 = 0;
  if (v58)
  {
    goto LABEL_56;
  }

  if (v60 != 0xC000000000000000)
  {
    goto LABEL_56;
  }

  if (v63 >> 62 != 3)
  {
    goto LABEL_56;
  }

  v66 = 0;
  if (v7 || v63 != 0xC000000000000000)
  {
    goto LABEL_56;
  }

  sub_10006A178(0, 0xC000000000000000);
  v75 = 0;
  v76 = 0xC000000000000000;
LABEL_72:
  sub_10006A178(v75, v76);
LABEL_73:
  v1 = v212;
  if (![v57 managedBySP] || (v77 = objc_msgSend(v57, "rawGPState"), type metadata accessor for InstanceInfoInternal(), v77 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter()) || (objc_msgSend(v57, "isGPLocked") & 1) != 0)
  {

    v78 = v212[293];
    goto LABEL_105;
  }

  v79 = v212[257];
  v80 = v212[256];
  if (sub_1002B3D04())
  {
    if (!SESInternalVariant())
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v81 = v212[257];
    v82 = v212[256];
    v212[245] = 95;
    v212[246] = 0xE100000000000000;
    v83 = swift_task_alloc();
    *(v83 + 16) = v201;

    v85 = sub_10029F26C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10012E558, v83, v82, v81, v84);
    v212[312] = v54;

    v86 = v85[2];
    if (v86)
    {
      v87 = &v85[4 * v86];
      v88 = *v87;
      v89 = v87[1];
      v90 = v87[2];
      v91 = v87[3];

      v92 = static String._fromSubstring(_:)();
      v94 = v93;

      v212[313] = sub_10013044C(v92, v94);
      v212[314] = v95;
      if (v95 >> 60 != 15)
      {
        v96 = v212[300];
        v97 = v212[293];

        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_100409E40;
        *(v98 + 32) = v57;
        v99 = v57;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v212[315] = isa;

        v101 = Data._bridgeToObjectiveC()().super.isa;
        v212[316] = v101;
        v212[2] = v212;
        v212[3] = sub_10012A324;
        v102 = swift_continuation_init();
        v212[197] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        v212[194] = v102;
        v212[190] = _NSConcreteStackBlock;
        v212[191] = 1107296256;
        v212[192] = sub_1001E95B0;
        v212[193] = &unk_1004C7CB8;
        [v96 startCardEmulationWithApplets:isa externalAuth:v101 completion:v212 + 190];

        return _swift_continuation_await(v212 + 2);
      }

LABEL_97:
      v213[0] = 0;
      v213[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v174._object = 0x80000001004639E0;
      v174._countAndFlagsBits = 0xD000000000000037;
      String.append(_:)(v174);
      v175._countAndFlagsBits = 0xD000000000000031;
      v175._object = 0x8000000100463AD0;
      String.append(_:)(v175);
      return _assertionFailure(_:_:file:line:flags:)();
    }

LABEL_96:

    goto LABEL_97;
  }

  v103 = v212[254];
  v104 = &v103[v212[291]];
  *v204 = 0u;
  v204[1] = 0u;
  v105 = *(v104 + 5);
  v106 = *(v104 + 6);
  v107 = *(v104 + 7);
  *(v203 + 128) = v104[128];
  *(v203 + 96) = v106;
  *(v203 + 112) = v107;
  *(v203 + 80) = v105;
  v108 = *(v104 + 1);
  v109 = *(v104 + 2);
  v110 = *(v104 + 4);
  *(v203 + 48) = *(v104 + 3);
  *(v203 + 64) = v110;
  *(v203 + 16) = v108;
  *(v203 + 32) = v109;
  *v203 = *v104;
  if (*(v212 + 536) > 1u)
  {
    v131 = v212[294];
    v132 = v212[293];
    sub_10012E344(v203, (v212 + 68));

    sub_10012E3A0(v203);
    v133 = v103;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = v212[254] + v212[291];
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v213[0] = v138;
      *v137 = 136315138;
      *(v212 + 51) = *v136;
      v139 = *(v136 + 64);
      v141 = *(v136 + 16);
      v140 = *(v136 + 32);
      *(v212 + 54) = *(v136 + 48);
      *(v212 + 55) = v139;
      *(v212 + 52) = v141;
      *(v212 + 53) = v140;
      v143 = *(v136 + 96);
      v142 = *(v136 + 112);
      v144 = *(v136 + 80);
      *(v212 + 944) = *(v136 + 128);
      *(v212 + 57) = v143;
      *(v212 + 58) = v142;
      *(v212 + 56) = v144;
      v145 = sub_10012E344((v212 + 102), (v212 + 26));
      v146 = sub_10013F33C(v145);
      v148 = v147;
      sub_10012E3A0((v212 + 102));
      v149 = sub_1002FFA0C(v146, v148, v213);

      *(v137 + 4) = v149;
      _os_log_impl(&_mh_execute_header, v134, v135, "Client %s has no pid", v137, 0xCu);
      sub_1000752F4(v138);
    }

    sub_10009591C();
    swift_allocError();
    *v150 = 6;
    swift_willThrow();
    v151 = v212[294];
    swift_errorRetain();
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v213[0] = v155;
      *v154 = 136315138;
      swift_getErrorValue();
      v156 = v212[221];
      v157 = v212[222];
      v158 = v212[223];
      v159 = Error.localizedDescription.getter();
      v161 = sub_1002FFA0C(v159, v160, v213);

      *(v154 + 4) = v161;
      _os_log_impl(&_mh_execute_header, v152, v153, "Error %s encountered when arming for card emulation", v154, 0xCu);
      sub_1000752F4(v155);
    }

    v162 = v212[311];
    v163 = v212[310];
    v164 = v212[308];
    v209 = v212[302];
    v165 = v212[301];
    v166 = v212[300];
    v167 = v212[299];
    v168 = v212[292];
    v169 = v212[254];
    sub_1000B5374(0);
    v170 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v171 = *(v169 + v170);

    os_unfair_lock_lock((v171 + 20));
    *(v171 + 16) = 0;
    os_unfair_lock_unlock((v171 + 20));

    v28 = swift_allocError();
    *v172 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    v1 = v212;
    v173 = v212[215];
    sub_1000B2A4C(v212[214]);

    goto LABEL_110;
  }

  v111 = v212[293];
  v112 = v212[292];
  v114 = v212[59];
  v113 = v212[60];
  v115 = *(v212 + 57);
  v116 = *(v212 + 55);
  v117 = *(v212 + 53);
  v118 = *(v212 + 61);
  v120 = *(v104 + 6);
  v119 = *(v104 + 7);
  *v202 = v120;
  v202[1] = v119;
  *(v212 + 88) = v117;
  *(v212 + 89) = v116;
  *(v212 + 90) = v115;
  v212[182] = v114;
  v212[183] = v113;
  *(v212 + 92) = v118;
  *(v212 + 93) = v120;
  *(v212 + 94) = v202[1];
  sub_10012E344(v203, (v212 + 85));
  sub_10012E3F4((v212 + 53), (v212 + 119));
  v121 = v202[1];
  *(v212 + 340) = *v202;
  *(v212 + 356) = v121;
  v122 = audit_token_to_pid((v212 + 340));
  sub_10012E450((v212 + 176));
  sub_10012E3A0(v203);
  v123 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  v212[318] = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v124 = *&v103[v123];

  os_unfair_lock_lock((v124 + 20));
  *(v124 + 16) = 1;
  os_unfair_lock_unlock((v124 + 20));

  v125 = CredentialInternal.friendlyName.getter();
  v127 = v126;
  v212[319] = v126;
  v128 = swift_task_alloc();
  v212[320] = v128;
  *v128 = v212;
  v128[1] = sub_10012AAA4;
  v129 = v212[257];
  v130 = v212[256];

  return sub_1000B4000(v130, v129, v122, v125, v127);
}

uint64_t sub_10012A324()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 2536) = v2;
  if (v2)
  {
    v3 = sub_10012C338;
  }

  else
  {
    v3 = sub_10012A460;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012A460()
{
  v1 = *(v0 + 2528);
  v2 = *(v0 + 2520);
  sub_10006A2D0(*(v0 + 2504), *(v0 + 2512));

  v3 = *(v0 + 2496);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2216);
  v6 = *(v0 + 2032);
  v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v6 + v7, 1, v5))
  {
    v8 = *(v0 + 2208);
    v9 = *(v0 + 2200);
    v10 = *(v0 + 2192);
    sub_10012DFF8(v6 + v7, *(v0 + 2232));
    static DispatchTime.now()();
    v11 = DispatchTime.uptimeNanoseconds.getter();
    (*(v9 + 8))(v8, v10);
    v12 = DispatchTime.uptimeNanoseconds.getter();
    if (v11 < v12)
    {
      __break(1u);
    }

    v13 = *(v0 + 2232);
    v14 = v13 + *(*(v0 + 2216) + 24);
    v15 = *(v14 + 8);
    (*v14)((v11 - v12) / 0x3B9ACA00);
    sub_10012E4DC(v13, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v16 = *(v0 + 2336);
  v17 = *(v0 + 2280);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v68 = v3;
  v20 = *(v0 + 2184);
  v21 = *(*(v0 + 2032) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = 3;
  *(v20 + *(v19 + 20)) = 3;
  v23 = (v20 + *(v19 + 24));
  *v23 = sub_10012E59C;
  v23[1] = v22;
  (*(v18 + 56))(v20, 0, 1, v19);
  swift_beginAccess();
  sub_10012DF88(v20, v6 + v7);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1296));
  if (v68)
  {
    v25 = *(v0 + 2488);
    v26 = *(v0 + 2480);
    v27 = *(v0 + 2464);
    v28 = *(v0 + 2416);
    v29 = *(v0 + 2408);
    v30 = *(v0 + 2400);
    v31 = *(v0 + 2392);
    v32 = *(v0 + 2336);
    v33 = *(v0 + 2248) + 8;
    (*(v0 + 2376))(*(v0 + 2280), *(v0 + 2240));

    swift_unknownObjectRelease();
    *(v0 + 2632) = v68;
    v34 = swift_task_alloc();
    *(v0 + 2640) = v34;
    *v34 = v0;
    v34[1] = sub_10012BD84;
    v35 = *(v0 + 2032);

    return sub_1001FF5CC();
  }

  else
  {
    v24 = *(v0 + 2032);
    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    v37 = *(v0 + 2032);
    *(v0 + 1976) = *(v0 + 1232);
    v38 = *(v0 + 1984);

    sub_10012E450(v0 + 1184);
    sub_1001FF418((v0 + 1072));
    *(v0 + 2616) = 0;
    v39 = *(v0 + 2160);
    v40 = *(v0 + 2128);
    v41 = *(v0 + 2104);
    v42 = *(v0 + 2096);
    v43 = *(v0 + 2088);
    v44 = *(v0 + 2080);
    sub_10012E450(v0 + 1072);
    static Date.now.getter();
    (*(v42 + 104))(v41, enum case for Calendar.Identifier.gregorian(_:), v43);
    Calendar.init(identifier:)();
    (*(v42 + 8))(v41, v43);
    TimeZone.init(abbreviation:)();
    v45 = type metadata accessor for TimeZone();
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
    if (v46 == 1)
    {
      __break(1u);
    }

    else
    {
      v49 = *(v0 + 2248);
      v50 = *(v0 + 2176);
      v51 = *(v0 + 2168);
      v52 = *(v0 + 2160);
      v53 = *(v0 + 2152);
      v54 = *(v0 + 2144);
      v55 = *(v0 + 2136);
      v56 = *(v0 + 2128);
      v57 = *(v0 + 2120);
      v62 = *(v0 + 2432);
      v63 = *(v0 + 2112);
      v58 = *(v0 + 2080);
      v66 = *(v0 + 1360);
      v67 = *(v0 + 2280);
      v64 = *(v0 + 1144);
      v65 = *(v0 + 2240);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v57 + 8))(v56, v63);
      v59 = *(v54 + 8);
      v59(v52, v55);
      Date.timeIntervalSince1970.getter();
      v61 = v60;
      v59(v53, v55);
      (*(v49 + 32))(v50, v67, v65);
      *(v50 + v51[5]) = 0;
      *(v50 + v51[8]) = *(v0 + 1976);
      *(v50 + v51[7]) = v64;
      *(v50 + v51[6]) = v66;
      *(v50 + v51[9]) = v61 * 1000.0;
      v46 = sub_10012B93C;
      v47 = v62;
      v48 = 0;
    }

    return _swift_task_switch(v46, v47, v48);
  }
}

uint64_t sub_10012AAA4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 2560);
  v9 = *v3;
  v4[321] = a1;
  v4[322] = a2;
  v4[323] = v2;

  if (v2)
  {
    v6 = sub_10012C5D8;
  }

  else
  {
    v7 = v4[319];

    v6 = sub_10012ABFC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012ABFC()
{
  v50 = v0;
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2032);
  swift_beginAccess();
  v3 = *(v2 + v1);
  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  swift_endAccess();
  if (v2 == 1)
  {
    v4 = *(v0 + 2576);
    v5 = *(v0 + 2568);
    v6 = *(v0 + 2488);
    v7 = *(v0 + 2472);
    v8 = *(v0 + 2400);
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100409E40;
    *(v9 + 32) = v6;
    v10 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 2592) = isa;

    v12 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 2600) = v12;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_10012B15C;
    v13 = swift_continuation_init();
    *(v0 + 1640) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 1616) = v13;
    *(v0 + 1584) = _NSConcreteStackBlock;
    *(v0 + 1592) = 1107296256;
    *(v0 + 1600) = sub_1001E95B0;
    *(v0 + 1608) = &unk_1004C7C68;
    [v8 startCardEmulationWithApplets:isa externalAuth:v12 completion:v0 + 1584];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {
    v14 = *(v0 + 2352);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Auth Sheet has been invalidated due to end CE while waiting for auth", v17, 2u);
    }

    v18 = *(v0 + 2576);
    v19 = *(v0 + 2568);

    sub_1000B5374(0);
    sub_10009591C();
    swift_allocError();
    *v20 = 10;
    swift_willThrow();
    sub_10006A178(v19, v18);
    v21 = *(v0 + 2352);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = *(v0 + 1768);
      v27 = *(v0 + 1776);
      v28 = *(v0 + 1784);
      v29 = Error.localizedDescription.getter();
      v31 = sub_1002FFA0C(v29, v30, &v49);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error %s encountered when arming for card emulation", v24, 0xCu);
      sub_1000752F4(v25);
    }

    v32 = *(v0 + 2488);
    v33 = *(v0 + 2480);
    v34 = *(v0 + 2464);
    v35 = *(v0 + 2408);
    v36 = *(v0 + 2400);
    v37 = *(v0 + 2392);
    v47 = *(v0 + 2336);
    v48 = *(v0 + 2416);
    v38 = *(v0 + 2032);
    sub_1000B5374(0);
    v39 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v40 = *(v38 + v39);

    os_unfair_lock_lock((v40 + 20));
    *(v40 + 16) = 0;
    os_unfair_lock_unlock((v40 + 20));

    v41 = swift_allocError();
    *v42 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    v43 = *(v0 + 1720);
    sub_1000B2A4C(*(v0 + 1712));

    *(v0 + 2632) = v41;
    v44 = swift_task_alloc();
    *(v0 + 2640) = v44;
    *v44 = v0;
    v44[1] = sub_10012BD84;
    v45 = *(v0 + 2032);

    return sub_1001FF5CC();
  }
}

uint64_t sub_10012B15C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 2608) = v2;
  if (v2)
  {
    v3 = sub_10012C8B4;
  }

  else
  {
    v3 = sub_10012B298;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012B298()
{
  v1 = *(v0 + 2592);
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2568);
  v4 = *(v0 + 2544);
  v5 = *(v0 + 2032);

  sub_1000B5374(1);
  v6 = *(v5 + v4);

  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = 0;
  os_unfair_lock_unlock((v6 + 20));
  sub_10006A178(v3, v2);
  v7 = *(v0 + 1720);
  sub_1000B2A4C(*(v0 + 1712));

  v8 = *(v0 + 1736);

  v9 = *(v0 + 2584);
  v10 = *(v0 + 2224);
  v11 = *(v0 + 2216);
  v12 = *(v0 + 2032);
  v13 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v10 + 48))(v12 + v13, 1, v11))
  {
    v14 = *(v0 + 2208);
    v15 = *(v0 + 2200);
    v16 = *(v0 + 2192);
    sub_10012DFF8(v12 + v13, *(v0 + 2232));
    static DispatchTime.now()();
    v17 = DispatchTime.uptimeNanoseconds.getter();
    (*(v15 + 8))(v14, v16);
    v18 = DispatchTime.uptimeNanoseconds.getter();
    if (v17 < v18)
    {
      __break(1u);
    }

    v19 = *(v0 + 2232);
    v20 = v19 + *(*(v0 + 2216) + 24);
    v21 = *(v20 + 8);
    (*v20)((v17 - v18) / 0x3B9ACA00);
    sub_10012E4DC(v19, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v22 = *(v0 + 2336);
  v23 = *(v0 + 2280);
  v24 = *(v0 + 2224);
  v25 = *(v0 + 2216);
  v74 = v9;
  v26 = *(v0 + 2184);
  v27 = *(*(v0 + 2032) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 3;
  *(v26 + *(v25 + 20)) = 3;
  v29 = (v26 + *(v25 + 24));
  *v29 = sub_10012E59C;
  v29[1] = v28;
  (*(v24 + 56))(v26, 0, 1, v25);
  swift_beginAccess();
  sub_10012DF88(v26, v12 + v13);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1296));
  if (v74)
  {
    v31 = *(v0 + 2488);
    v32 = *(v0 + 2480);
    v33 = *(v0 + 2464);
    v34 = *(v0 + 2416);
    v35 = *(v0 + 2408);
    v36 = *(v0 + 2400);
    v37 = *(v0 + 2392);
    v38 = *(v0 + 2336);
    v39 = *(v0 + 2248) + 8;
    (*(v0 + 2376))(*(v0 + 2280), *(v0 + 2240));

    swift_unknownObjectRelease();
    *(v0 + 2632) = v74;
    v40 = swift_task_alloc();
    *(v0 + 2640) = v40;
    *v40 = v0;
    v40[1] = sub_10012BD84;
    v41 = *(v0 + 2032);

    return sub_1001FF5CC();
  }

  else
  {
    v30 = *(v0 + 2032);
    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    v43 = *(v0 + 2032);
    *(v0 + 1976) = *(v0 + 1232);
    v44 = *(v0 + 1984);

    sub_10012E450(v0 + 1184);
    sub_1001FF418((v0 + 1072));
    *(v0 + 2616) = 0;
    v45 = *(v0 + 2160);
    v46 = *(v0 + 2128);
    v47 = *(v0 + 2104);
    v48 = *(v0 + 2096);
    v49 = *(v0 + 2088);
    v50 = *(v0 + 2080);
    sub_10012E450(v0 + 1072);
    static Date.now.getter();
    (*(v48 + 104))(v47, enum case for Calendar.Identifier.gregorian(_:), v49);
    Calendar.init(identifier:)();
    (*(v48 + 8))(v47, v49);
    TimeZone.init(abbreviation:)();
    v51 = type metadata accessor for TimeZone();
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    if (v52 == 1)
    {
      __break(1u);
    }

    else
    {
      v55 = *(v0 + 2248);
      v56 = *(v0 + 2176);
      v57 = *(v0 + 2168);
      v58 = *(v0 + 2160);
      v59 = *(v0 + 2152);
      v60 = *(v0 + 2144);
      v61 = *(v0 + 2136);
      v62 = *(v0 + 2128);
      v63 = *(v0 + 2120);
      v68 = *(v0 + 2432);
      v69 = *(v0 + 2112);
      v64 = *(v0 + 2080);
      v72 = *(v0 + 1360);
      v73 = *(v0 + 2280);
      v70 = *(v0 + 1144);
      v71 = *(v0 + 2240);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v63 + 8))(v62, v69);
      v65 = *(v60 + 8);
      v65(v58, v61);
      Date.timeIntervalSince1970.getter();
      v67 = v66;
      v65(v59, v61);
      (*(v55 + 32))(v56, v73, v71);
      *(v56 + v57[5]) = 0;
      *(v56 + v57[8]) = *(v0 + 1976);
      *(v56 + v57[7]) = v70;
      *(v56 + v57[6]) = v72;
      *(v56 + v57[9]) = v67 * 1000.0;
      v52 = sub_10012B93C;
      v53 = v68;
      v54 = 0;
    }

    return _swift_task_switch(v52, v53, v54);
  }
}

uint64_t sub_10012B93C()
{
  v1 = v0[327];
  v2 = v0[304];
  v3 = sub_10035E904();
  if (v1)
  {
    v0[328] = v1;
    v7 = sub_10012BC38;
  }

  else
  {
    v4 = v3;
    v5 = v0[272];
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v7 = sub_10012BA4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10012BA4C()
{
  v1 = *(v0 + 2488);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2464);
  v4 = *(v0 + 2416);
  v5 = *(v0 + 2408);
  v6 = *(v0 + 2400);
  v7 = *(v0 + 2392);
  v8 = *(v0 + 2336);
  v27 = *(v0 + 2176);
  v9 = *(v0 + 2072);
  (*(v0 + 2064))(0);

  swift_unknownObjectRelease();
  sub_10012E4DC(v27, type metadata accessor for PresentmentInfo);
  v10 = *(v0 + 2320);
  v11 = *(v0 + 2296);
  v12 = *(v0 + 2288);
  v13 = *(v0 + 2280);
  v14 = *(v0 + 2272);
  v15 = *(v0 + 2264);
  v16 = *(v0 + 2256);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2208);
  v19 = *(v0 + 2184);
  v22 = *(v0 + 2176);
  v23 = *(v0 + 2160);
  v24 = *(v0 + 2152);
  v25 = *(v0 + 2128);
  v26 = *(v0 + 2104);
  v28 = *(v0 + 2080);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10012BC38()
{
  v1 = *(v0 + 2488);
  v2 = *(v0 + 2464);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2408);
  v5 = *(v0 + 2400);
  v6 = *(v0 + 2392);
  v7 = *(v0 + 2336);
  v8 = *(v0 + 2176);

  swift_unknownObjectRelease();
  sub_10012E4DC(v8, type metadata accessor for PresentmentInfo);
  *(v0 + 2632) = *(v0 + 2624);
  v9 = swift_task_alloc();
  *(v0 + 2640) = v9;
  *v9 = v0;
  v9[1] = sub_10012BD84;
  v10 = *(v0 + 2032);

  return sub_1001FF5CC();
}

uint64_t sub_10012BD84()
{
  v1 = *(*v0 + 2640);
  v3 = *v0;

  return _swift_task_switch(sub_10012BEAC, 0, 0);
}

uint64_t sub_10012BEAC()
{
  v1 = v0[329];
  v2 = v0[259];
  v3 = v0[258];
  swift_errorRetain();
  v3(v1);

  v4 = v0[290];
  v5 = v0[287];
  v6 = v0[286];
  v7 = v0[285];
  v8 = v0[284];
  v9 = v0[283];
  v10 = v0[282];
  v11 = v0[279];
  v12 = v0[276];
  v13 = v0[273];
  v16 = v0[272];
  v17 = v0[270];
  v18 = v0[269];
  v19 = v0[266];
  v20 = v0[263];
  v21 = v0[260];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10012C048()
{
  v1 = v0[293];
  v2 = v0[292];

  v0[329] = v0[303];
  v3 = swift_task_alloc();
  v0[330] = v3;
  *v3 = v0;
  v3[1] = sub_10012BD84;
  v4 = v0[254];

  return sub_1001FF5CC();
}

uint64_t sub_10012C11C()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2408);
  v3 = *(v0 + 2400);
  v4 = *(v0 + 2344);
  v5 = *(v0 + 2336);

  *(v0 + 2632) = *(v0 + 2448);
  v6 = swift_task_alloc();
  *(v0 + 2640) = v6;
  *v6 = v0;
  v6[1] = sub_10012BD84;
  v7 = *(v0 + 2032);

  return sub_1001FF5CC();
}

uint64_t sub_10012C228()
{
  v1 = v0[307];
  v2 = v0[302];
  v3 = v0[301];
  v4 = v0[300];
  v5 = v0[299];
  v6 = v0[292];
  swift_willThrow();

  v0[329] = v0[307];
  v7 = swift_task_alloc();
  v0[330] = v7;
  *v7 = v0;
  v7[1] = sub_10012BD84;
  v8 = v0[254];

  return sub_1001FF5CC();
}

uint64_t sub_10012C338()
{
  v33 = v0;
  v1 = v0[317];
  v2 = v0[316];
  v3 = v0[315];
  v4 = v0[294];
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[317];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[218];
    v11 = v0[219];
    v12 = v0[220];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v32);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "NearField Error %s encountered when arming for card emulation -- CAM path", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = v0[317];
  v17 = v0[314];
  v18 = v0[313];
  v19 = v0[311];
  v20 = v0[310];
  v21 = v0[308];
  v22 = v0[300];
  v28 = v0[299];
  v29 = v0[301];
  v30 = v0[292];
  v31 = v0[302];
  sub_10009591C();
  v23 = swift_allocError();
  *v24 = 8;
  swift_willThrow();

  sub_10006A2D0(v18, v17);

  swift_unknownObjectRelease();
  v0[329] = v23;
  v25 = swift_task_alloc();
  v0[330] = v25;
  *v25 = v0;
  v25[1] = sub_10012BD84;
  v26 = v0[254];

  return sub_1001FF5CC();
}

uint64_t sub_10012C5D8()
{
  v32 = v0;
  v1 = *(v0 + 2552);

  v2 = *(v0 + 2584);
  v3 = *(v0 + 2352);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 1768);
    v9 = *(v0 + 1776);
    v10 = *(v0 + 1784);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, &v31);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %s encountered when arming for card emulation", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v14 = *(v0 + 2488);
  v15 = *(v0 + 2480);
  v16 = *(v0 + 2464);
  v17 = *(v0 + 2408);
  v18 = *(v0 + 2400);
  v19 = *(v0 + 2392);
  v29 = *(v0 + 2336);
  v30 = *(v0 + 2416);
  v20 = *(v0 + 2032);
  sub_1000B5374(0);
  v21 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v22 = *(v20 + v21);

  os_unfair_lock_lock((v22 + 20));
  *(v22 + 16) = 0;
  os_unfair_lock_unlock((v22 + 20));

  sub_10009591C();
  v23 = swift_allocError();
  *v24 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v25 = *(v0 + 1720);
  sub_1000B2A4C(*(v0 + 1712));

  *(v0 + 2632) = v23;
  v26 = swift_task_alloc();
  *(v0 + 2640) = v26;
  *v26 = v0;
  v26[1] = sub_10012BD84;
  v27 = *(v0 + 2032);

  return sub_1001FF5CC();
}

uint64_t sub_10012C8B4()
{
  v36 = v0;
  v1 = *(v0 + 2608);
  v2 = *(v0 + 2600);
  v3 = *(v0 + 2592);
  v4 = *(v0 + 2576);
  v5 = *(v0 + 2568);
  swift_willThrow();
  sub_10006A178(v5, v4);

  v6 = *(v0 + 2608);
  v7 = *(v0 + 2352);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 1768);
    v13 = *(v0 + 1776);
    v14 = *(v0 + 1784);
    v15 = Error.localizedDescription.getter();
    v17 = sub_1002FFA0C(v15, v16, &v35);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error %s encountered when arming for card emulation", v10, 0xCu);
    sub_1000752F4(v11);
  }

  v18 = *(v0 + 2488);
  v19 = *(v0 + 2480);
  v20 = *(v0 + 2464);
  v21 = *(v0 + 2408);
  v22 = *(v0 + 2400);
  v23 = *(v0 + 2392);
  v33 = *(v0 + 2336);
  v34 = *(v0 + 2416);
  v24 = *(v0 + 2032);
  sub_1000B5374(0);
  v25 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v26 = *(v24 + v25);

  os_unfair_lock_lock((v26 + 20));
  *(v26 + 16) = 0;
  os_unfair_lock_unlock((v26 + 20));

  sub_10009591C();
  v27 = swift_allocError();
  *v28 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v29 = *(v0 + 1720);
  sub_1000B2A4C(*(v0 + 1712));

  *(v0 + 2632) = v27;
  v30 = swift_task_alloc();
  *(v0 + 2640) = v30;
  *v30 = v0;
  v30[1] = sub_10012BD84;
  v31 = *(v0 + 2032);

  return sub_1001FF5CC();
}

uint64_t sub_10012CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v7 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  v6[34] = v8;
  v9 = *(v8 - 8);
  v6[35] = v9;
  v10 = *(v9 + 64) + 15;
  v6[36] = swift_task_alloc();
  v11 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v6[37] = v11;
  v12 = *(v11 - 8);
  v6[38] = v12;
  v13 = *(v12 + 64) + 15;
  v6[39] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v6[40] = v14;
  v15 = *(v14 - 8);
  v6[41] = v15;
  v16 = *(v15 + 64) + 15;
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10012D038, 0, 0);
}

uint64_t sub_10012D038()
{
  v89 = v0;
  v1 = v0[30];
  v2 = &v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v3 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v0[43] = v3;
  v4 = *(v2 + 3);
  v0[44] = v4;
  if (v4 >> 62)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v1 = v0[30];
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_10051B2C8);
    v38 = v1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v0[30];
      v42 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v42 = 136315394;
      v43 = UUID.uuidString.getter();
      v45 = sub_1002FFA0C(v43, v44, v88);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = *(v2 + 3);
      if (v46 >> 62)
      {
        if (v46 >> 62 == 1)
        {
          v47 = 0xE500000000000000;
          v48 = 0x6465726957;
        }

        else
        {
          v69 = (*(v2 + 2) | *v2 | *(v2 + 1)) == 0;
          v70 = v46 == 0x8000000000000000;
          if (v70 && v69)
          {
            v48 = 0x656D6567616E614DLL;
          }

          else
          {
            v48 = 0x64696C61766E49;
          }

          if (v70 && v69)
          {
            v47 = 0xEA0000000000746ELL;
          }

          else
          {
            v47 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v47 = 0xED00006E6F697461;
        v48 = 0x6C756D4564726143;
      }

      v71 = sub_1002FFA0C(v48, v47, v88);

      *(v42 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v39, v40, "Session %s: Unexpected state %s while trying to end card emulation", v42, 0x16u);
      swift_arrayDestroy();
    }

    v73 = v0[31];
    v72 = v0[32];
    sub_10009591C();
    v74 = swift_allocError();
    *v75 = 10;
    swift_willThrow();
    swift_errorRetain();
    v73(v74);
  }

  else
  {
    v5 = *(v2 + 2);
    v0[45] = v5;
    v6 = *v2;
    v0[46] = *v2;
    v7 = qword_1005019D8;
    v8 = v6;
    v86 = v3;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    if (v7 != -1)
    {
      swift_once();
      v1 = v0[30];
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = v1;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v84 = v15;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[41];
      v20 = v0[42];
      v82 = v0[40];
      v22 = v0[30];
      v23 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = UUID.uuidString.getter();
      v26 = sub_1002FFA0C(v24, v25, v88);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v21 + 8))(v20, v82);
      v30 = sub_1002FFA0C(v27, v29, v88);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "Session %s: Ending card emulation for credential %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v31 = v0[30];
    v32 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v33 = *(v31 + v32);

    os_unfair_lock_lock((v33 + 20));
    *(v33 + 16) = 0;
    os_unfair_lock_unlock((v33 + 20));

    if (v86)
    {
      v34 = v84;
      [v34 setEventDelegate:0];
      v0[2] = v0;
      v0[3] = sub_10012D8CC;
      v35 = swift_continuation_init();
      v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10021C240;
      v0[13] = &unk_1004C7BC8;
      v0[14] = v35;
      [v34 endSessionWithCompletion:v0 + 10];
      v36 = (v0 + 2);

      return _swift_continuation_await(v36);
    }

    v49 = v0[37];
    v50 = v0[38];
    v51 = v0[30];
    sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
    v52 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
    swift_beginAccess();
    if (!(*(v50 + 48))(v51 + v52, 1, v49))
    {
      v54 = v0[35];
      v53 = v0[36];
      v55 = v0[34];
      sub_10012DFF8(v51 + v52, v0[39]);
      static DispatchTime.now()();
      v56 = DispatchTime.uptimeNanoseconds.getter();
      (*(v54 + 8))(v53, v55);
      v36 = DispatchTime.uptimeNanoseconds.getter();
      if (v56 < v36)
      {
        __break(1u);
        return _swift_continuation_await(v36);
      }

      v57 = v0[39];
      v58 = v57 + *(v0[37] + 24);
      v59 = *(v58 + 8);
      (*v58)((v56 - v36) / 0x3B9ACA00);
      sub_10012E4DC(v57, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
    }

    v60 = v0[46];
    v85 = v0[45];
    v87 = v0[44];
    v83 = v0[43];
    v61 = v0[37];
    v62 = v0[38];
    v63 = v0[32];
    v64 = v0[33];
    v65 = v0[31];
    v66 = *(v0[30] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

    static DispatchTime.now()();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = 4;
    *(v64 + *(v61 + 20)) = 4;
    v68 = (v64 + *(v61 + 24));
    *v68 = sub_10012DF7C;
    v68[1] = v67;
    (*(v62 + 56))(v64, 0, 1, v61);
    swift_beginAccess();
    sub_10012DF88(v64, v51 + v52);
    swift_endAccess();
    v65(0);
  }

  v76 = v0[42];
  v77 = v0[39];
  v78 = v0[36];
  v79 = v0[33];

  v80 = v0[1];

  return v80();
}

uint64_t sub_10012D8CC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10012D9AC, 0, 0);
}

unint64_t sub_10012D9AC()
{
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_10050A868;

  os_unfair_lock_lock(v1 + 6);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 6);

  if (v2)
  {
    sub_100307B18(0, 0);
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 240);
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
  v6 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v5 + v6, 1, v3))
  {
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 272);
    sub_10012DFF8(v5 + v6, *(v0 + 312));
    static DispatchTime.now()();
    v10 = DispatchTime.uptimeNanoseconds.getter();
    (*(v8 + 8))(v7, v9);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v10 < result)
    {
      __break(1u);
      return result;
    }

    v12 = *(v0 + 312);
    v13 = v12 + *(*(v0 + 296) + 24);
    v14 = *(v13 + 8);
    (*v13)((v10 - result) / 0x3B9ACA00);
    sub_10012E4DC(v12, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v15 = *(v0 + 368);
  v30 = *(v0 + 360);
  v31 = *(v0 + 352);
  v29 = *(v0 + 344);
  v16 = *(v0 + 296);
  v17 = *(v0 + 304);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);
  v20 = *(v0 + 248);
  v21 = *(*(v0 + 240) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = 4;
  *(v19 + *(v16 + 20)) = 4;
  v23 = (v19 + *(v16 + 24));
  *v23 = sub_10012DF7C;
  v23[1] = v22;
  (*(v17 + 56))(v19, 0, 1, v16);
  swift_beginAccess();
  sub_10012DF88(v19, v5 + v6);
  swift_endAccess();
  v20(0);

  v24 = *(v0 + 336);
  v25 = *(v0 + 312);
  v26 = *(v0 + 288);
  v27 = *(v0 + 264);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10012DE2C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012DE6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10012DEB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C288C;

  return sub_10012CE84(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10012DF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012DFF8(uint64_t a1, uint64_t a2)
{
  v4 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012E074()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10012E174(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10012E598;

  return sub_100127608(a1, v8, v9, v10, v1 + v5, v12, v13, v15);
}

uint64_t sub_10012E2D4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1002AFE84(a1, *(v1 + 16)) & 1;
}

unint64_t sub_10012E2F8()
{
  result = qword_100504280;
  if (!qword_100504280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504280);
  }

  return result;
}

uint64_t sub_10012E4A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10012E4DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10012E5A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005025E0, &unk_10040F430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012E6B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_1005042D8, &qword_10040B5E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005042E0, &qword_10040B5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012E7F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100068FC4(&qword_1005042B8, &qword_10040B5C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005042C0, &qword_10040B5D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012E940(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005042A0, &qword_10040B5B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}
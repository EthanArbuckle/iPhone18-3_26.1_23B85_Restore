uint64_t sub_10089BA34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v19 = *(a1 + v17);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v17);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(v19 + 56);
      v40 = v6;
      v24 = *(v23 + 8 * v21);

      v25 = *(v24 + 40);

      if (v25)
      {
        aBlock[0] = v25;
        if (a3)
        {
          v47 = a3;
          sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
          sub_1000041A4(&unk_1016AC9C0, &qword_10169F320, &qword_1013A0780);

          v26 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v26)
          {
            static os_log_type_t.error.getter();
            if (qword_101695050 != -1)
            {
              swift_once();
            }

            os_log(_:dso:log:_:_:)();
            v27 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
            v28 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
            *v27 = 0;
            v27[1] = 0;
            swift_unknownObjectRelease();
            v29 = *(a1 + v17);
            if (*(v29 + 16))
            {
              v30 = *(a1 + v17);

              v31 = sub_1000210EC(a2);
              if (v32)
              {
                v33 = *(*(v29 + 56) + 8 * v31);

                v34 = *(v33 + 40);
                *(v33 + 40) = 0;
              }

              else
              {
              }
            }

            sub_1000BC488();
            v35 = v41;
            (*(v41 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
            v36 = static OS_dispatch_queue.global(qos:)();
            (*(v35 + 8))(v16, v13);
            aBlock[4] = sub_1008A8CA0;
            aBlock[5] = v25;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006684;
            aBlock[3] = &unk_101638E10;
            v37 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            v47 = _swiftEmptyArrayStorage;
            sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v38 = v42;
            v39 = v40;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v37);

            (*(v45 + 8))(v38, v39);
            (*(v43 + 8))(v12, v44);
          }
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10089BFCC()
{
  type metadata accessor for CommandError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

uint64_t sub_10089C080(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for SharedBeaconRecord(0);
  v48 = *(v51 - 8);
  v4 = *(v48 + 64);
  v5 = __chkstk_darwin(v51);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v48 - v7;
  v8 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for WildModeAssociationRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v25 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
    swift_beginAccess();
    v26 = *(v2 + v25);
    if (*(v26 + 16))
    {
      v27 = *(v2 + v25);

      v28 = sub_1000210EC(a1);
      if (v29)
      {
        v30 = *(*(v26 + 56) + 8 * v28);

        v31 = *(v30 + 16);
        v32 = *(v30 + 24);

        if ((v32 & 1) == 0 && v31 == 2)
        {
          v33 = *(v2 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_beaconStore);

          sub_100023184(a1, v11);

          if ((*(v13 + 48))(v11, 1, v12) == 1)
          {
            sub_10000B3A8(v11, &unk_1016C7C90, &qword_1013BB4B0);
          }

          else
          {
            sub_1008A8B70(v11, v16, type metadata accessor for WildModeAssociationRecord);
            v47 = v16[*(v12 + 52)];
            sub_1008A8BD8(v16, type metadata accessor for WildModeAssociationRecord);
            if (v47 == 1)
            {
              return 1;
            }
          }
        }
      }

      else
      {
      }
    }

    v34 = *(v2 + v25);
    if (*(v34 + 16))
    {
      v35 = *(v2 + v25);

      v36 = sub_1000210EC(a1);
      if ((v37 & 1) == 0)
      {
        goto LABEL_16;
      }

      v38 = *(*(v34 + 56) + 8 * v36);

      v39 = *(v38 + 16);
      v40 = *(v38 + 24);

      if ((v40 & 1) != 0 || v39 != 2)
      {
        return 0;
      }

      v41 = *(v2 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_beaconStore);

      v42 = sub_100030068();

      __chkstk_darwin(v43);
      *(&v48 - 2) = a1;
      v44 = sub_10013D0F8(sub_1008A8830, (&v48 - 4), v42);
      if (*(v44 + 16))
      {
        v45 = v49;
        sub_100034ED4(v44 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v49, type metadata accessor for SharedBeaconRecord);

        v46 = v50;
        sub_1008A8B70(v45, v50, type metadata accessor for SharedBeaconRecord);
        LODWORD(v45) = *(v46 + *(v51 + 64));
        sub_1008A8BD8(v46, type metadata accessor for SharedBeaconRecord);
        if (v45 == 5)
        {
          return 1;
        }
      }

      else
      {
LABEL_16:
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10089C5B0(char *a1, void (*a2)(void, void), uint64_t a3)
{
  v165 = type metadata accessor for DispatchTimeInterval();
  v164 = *(v165 - 8);
  v6 = *(v164 + 64);
  __chkstk_darwin(v165);
  v162 = (&v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v163 = *(v8 - 8);
  v9 = *(v163 + 64);
  v10 = __chkstk_darwin(v8);
  v161 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v166 = &v149 - v12;
  v157 = type metadata accessor for BeaconObservation();
  v158 = *(v157 - 8);
  v13 = *(v158 + 64);
  __chkstk_darwin(v157);
  v168 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v167 = *(v15 - 8);
  v16 = *(v167 + 64);
  __chkstk_darwin(v15);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for UUID();
  v169 = *(v179 - 8);
  v19 = *(v169 + 64);
  v20 = __chkstk_darwin(v179);
  v160 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v154 = &v149 - v23;
  v159 = v24;
  __chkstk_darwin(v22);
  v26 = &v149 - v25;
  v178 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v178 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v178);
  v176 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for DispatchQoS();
  v181 = *(v177 - 8);
  v30 = *(v181 + 64);
  __chkstk_darwin(v177);
  v175 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for DispatchQoS.QoSClass();
  v171 = *(v172 - 8);
  v32 = *(v171 + 64);
  __chkstk_darwin(v172);
  v170 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v35 = *&a1[v34];
  v36 = *(v35 + 16);
  v180 = a2;
  if (v36)
  {

    v37 = sub_1000210EC(a2);
    if (v38)
    {
      v39 = *(*(v35 + 56) + 8 * v37);

      v174 = *(v39 + 32);

      a2 = v180;

      goto LABEL_6;
    }
  }

  v174 = 0;
LABEL_6:
  v40 = *&a1[v34];
  if (*(v40 + 16))
  {
    v41 = *&a1[v34];

    v42 = sub_1000210EC(a2);
    if (v43)
    {
      v44 = *(*(v40 + 56) + 8 * v42);

      v45 = *(v44 + 32);
      *(v44 + 32) = 0;
      a2 = v180;
    }

    else
    {
    }
  }

  v46 = *&a1[v34];
  if (!*(v46 + 16))
  {
LABEL_18:
    v173 = 0;
    v182 = v27;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v47 = *&a1[v34];

  v48 = sub_1000210EC(a2);
  if ((v49 & 1) == 0)
  {

    goto LABEL_18;
  }

  v50 = *(*(v46 + 56) + 8 * v48);

  v173 = *(v50 + 40);

  a2 = v180;

  v182 = v27;
  if (!a3)
  {
LABEL_13:
    v153 = v18;
    v150 = a1;
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    v52 = sub_1000076D4(v51, qword_10177C430);
    v53 = v169;
    v54 = *(v169 + 16);
    v55 = v179;
    v156 = v169 + 16;
    v155 = v54;
    v54(v26, a2, v179);
    v149 = v52;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v58 = os_log_type_enabled(v56, v57);
    v151 = v15;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v53 + 8))(v26, v179);
      v64 = sub_1000136BC(v61, v63, &aBlock);
      v15 = v151;

      *(v59 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "#Durian: Unauthorized playSound started for %{private,mask.hash}s", v59, 0x16u);
      sub_100007BAC(v60);
      v55 = v179;

      a2 = v180;
    }

    else
    {

      (*(v53 + 8))(v26, v55);
    }

    v88 = v182;
    v152 = v8;
    v89 = v153;
    static Date.trustedNow.getter(v153);
    v90 = v168;
    v155(v168, a2, v55);
    v91 = v157;
    (*(v167 + 16))(v90 + *(v157 + 20), v89, v15);
    *(v90 + *(v91 + 24)) = 25;
    v92 = a2;
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v93 = qword_10177B2E8;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v94 = *(v158 + 72);
    v95 = (*(v158 + 80) + 32) & ~*(v158 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_101385D80;
    sub_100034ED4(v90, v96 + v95, type metadata accessor for BeaconObservation);
    v97 = type metadata accessor for Transaction();
    __chkstk_darwin(v97);
    *(&v149 - 4) = v93;
    *(&v149 - 3) = v96;
    *(&v149 - 2) = 0;
    *(&v149 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    sub_1000BC488();
    v98 = v171;
    v99 = v170;
    v100 = v172;
    (*(v171 + 104))(v170, enum case for DispatchQoS.QoSClass.default(_:), v172);
    v101 = static OS_dispatch_queue.global(qos:)();
    (*(v98 + 8))(v99, v100);
    v102 = swift_allocObject();
    *(v102 + 16) = v174;
    v188 = sub_1008A90A4;
    v189 = v102;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v186 = sub_100006684;
    v187 = &unk_101638BB8;
    v103 = _Block_copy(&aBlock);

    v104 = v175;
    static DispatchQoS.unspecified.getter();
    v183 = _swiftEmptyArrayStorage;
    v105 = sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v106 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v107 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v108 = v176;
    v171 = v106;
    v170 = v107;
    v109 = v178;
    v172 = v105;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v103);

    v158 = *(v88 + 8);
    (v158)(v108, v109);
    v110 = v181 + 8;
    v157 = *(v181 + 8);
    (v157)(v104, v177);

    v111 = v150;
    v112 = sub_10089C080(v92);
    v181 = v110;
    v182 = v88 + 8;
    if (v112)
    {
      v113 = v154;
      v114 = v179;
      v155(v154, v92, v179);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        aBlock = v118;
        *v117 = 141558531;
        *(v117 + 4) = 1752392040;
        *(v117 + 12) = 2081;
        sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = v120;
        (*(v169 + 8))(v113, v179);
        v122 = sub_1000136BC(v119, v121, &aBlock);

        *(v117 + 14) = v122;
        *(v117 + 22) = 2048;
        *(v117 + 24) = 14;
        _os_log_impl(&_mh_execute_header, v115, v116, "#Durian: Forcing play sound complete future for %{private,mask.hash}s in %ld seconds.", v117, 0x20u);
        sub_100007BAC(v118);
        v92 = v180;

        v114 = v179;
      }

      else
      {

        (*(v169 + 8))(v113, v114);
      }

      v130 = v161;
      static DispatchTime.now()();
      v131 = v162;
      *v162 = 14;
      v132 = v164;
      v133 = v165;
      (*(v164 + 104))(v131, enum case for DispatchTimeInterval.seconds(_:), v165);
      + infix(_:_:)();
      (*(v132 + 8))(v131, v133);
      v134 = *(v163 + 8);
      v165 = (v163 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v180 = v134;
      v134(v130, v152);
      v129 = 0;
      v128 = 0;
    }

    else
    {
      v123 = v161;
      static DispatchTime.now()();
      v124 = v162;
      *v162 = 40;
      v125 = v164;
      v126 = v165;
      (*(v164 + 104))(v124, enum case for DispatchTimeInterval.seconds(_:), v165);
      + infix(_:_:)();
      (*(v125 + 8))(v124, v126);
      v127 = *(v163 + 8);
      v165 = (v163 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v180 = v127;
      v127(v123, v152);
      v128 = 0x80000001013632C0;
      v129 = 0xD00000000000001FLL;
      v114 = v179;
    }

    v179 = *&v111[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
    v135 = v160;
    v155(v160, v92, v114);
    v136 = v169;
    v137 = (*(v169 + 80) + 24) & ~*(v169 + 80);
    v138 = v114;
    v139 = (v159 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    *(v140 + 16) = v111;
    (*(v136 + 32))(v140 + v137, v135, v138);
    *(v140 + v139) = v173;
    v141 = (v140 + ((v139 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v141 = v129;
    v141[1] = v128;
    v188 = sub_1008A8AE0;
    v189 = v140;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v186 = sub_100006684;
    v187 = &unk_101638C08;
    v142 = _Block_copy(&aBlock);

    v143 = v111;
    v144 = v175;
    static DispatchQoS.unspecified.getter();
    v183 = _swiftEmptyArrayStorage;
    v145 = v176;
    v146 = v178;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v147 = v166;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v142);

    (v158)(v145, v146);
    (v157)(v144, v177);
    v180(v147, v152);
    sub_1008A8BD8(v168, type metadata accessor for BeaconObservation);
    (*(v167 + 8))(v153, v151);
  }

LABEL_19:
  v65 = *&a1[v34];
  v66 = *(v65 + 16);
  swift_errorRetain();
  if (v66)
  {

    v67 = sub_1000210EC(v180);
    if (v68)
    {
      v69 = *(*(v65 + 56) + 8 * v67);

      v70 = *(v69 + 40);
      *(v69 + 40) = 0;
    }

    else
    {
    }
  }

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_1000076D4(v71, qword_10177C430);
  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock = v75;
    *v74 = 136446210;
    swift_getErrorValue();
    v76 = Error.localizedDescription.getter();
    v78 = sub_1000136BC(v76, v77, &aBlock);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "#Durian: Unauthorized playSound started with error - %{public}s", v74, 0xCu);
    sub_100007BAC(v75);
  }

  sub_1000BC488();
  v79 = v171;
  v80 = v170;
  v81 = v172;
  (*(v171 + 104))(v170, enum case for DispatchQoS.QoSClass.default(_:), v172);
  v82 = static OS_dispatch_queue.global(qos:)();
  (*(v79 + 8))(v80, v81);
  v83 = swift_allocObject();
  v83[2] = v174;
  v83[3] = a3;
  v83[4] = v173;
  v188 = sub_1008A917C;
  v189 = v83;
  aBlock = _NSConcreteStackBlock;
  v185 = 1107296256;
  v186 = sub_100006684;
  v187 = &unk_101638C58;
  v84 = _Block_copy(&aBlock);
  swift_errorRetain();

  v85 = v175;
  static DispatchQoS.unspecified.getter();
  v183 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v86 = v176;
  v87 = v178;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v84);

  (*(v182 + 8))(v86, v87);
  (*(v181 + 8))(v85, v177);
}

uint64_t sub_10089DBEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v8);
  v59 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  __chkstk_darwin(v11);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  __chkstk_darwin(v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v21 = *(a1 + v19);
  if (*(v21 + 16))
  {
    v22 = *(a1 + v19);

    v23 = sub_1000210EC(a2);
    if (v24)
    {
      v25 = *(v21 + 56);
      v57 = v8;
      v26 = *(v25 + 8 * v23);

      v27 = *(v26 + 40);

      if (v27)
      {
        aBlock[0] = v27;
        if (a3)
        {
          v66 = a3;
          sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
          sub_1000041A4(&unk_1016AC9C0, &qword_10169F320, &qword_1013A0780);

          v28 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v28)
          {
            v55 = v27;
            if (qword_1016950D8 != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            sub_1000076D4(v29, qword_10177C430);
            v30 = v64;

            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.error.getter();

            v56 = v31;
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              aBlock[0] = v34;
              *v33 = 136315138;
              if (v64)
              {
                v35 = v63;
              }

              else
              {
                v35 = 0;
              }

              v54 = v32;
              if (v64)
              {
                v36 = v64;
              }

              else
              {
                v36 = 0xE000000000000000;
              }

              v37 = sub_1000136BC(v35, v36, aBlock);

              *(v33 + 4) = v37;
              v38 = v56;
              _os_log_impl(&_mh_execute_header, v56, v54, "#Durian: Finished waiting for Unauthorized play sound to complete. %s", v33, 0xCu);
              sub_100007BAC(v34);

              v30 = v64;
            }

            else
            {
            }

            v39 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
            v40 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
            *v39 = 0;
            v39[1] = 0;
            swift_unknownObjectRelease();
            v41 = *(a1 + v19);
            if (*(v41 + 16))
            {
              v42 = *(a1 + v19);

              v43 = sub_1000210EC(a2);
              if (v44)
              {
                v45 = *(*(v41 + 56) + 8 * v43);

                v46 = *(v45 + 40);
                *(v45 + 40) = 0;
              }

              else
              {
              }
            }

            sub_1000BC488();
            v47 = v58;
            (*(v58 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v15);
            v48 = static OS_dispatch_queue.global(qos:)();
            (*(v47 + 8))(v18, v15);
            v49 = swift_allocObject();
            v49[2] = v63;
            v49[3] = v30;
            v49[4] = v55;
            aBlock[4] = sub_1008A8AF8;
            aBlock[5] = v49;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006684;
            aBlock[3] = &unk_101638CA8;
            v50 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            v66 = _swiftEmptyArrayStorage;
            sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v51 = v59;
            v52 = v57;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v50);

            (*(v62 + 8))(v51, v52);
            (*(v60 + 8))(v14, v61);
          }
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10089E2A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  else
  {
    Future.finish(result:)();
  }
}

uint64_t sub_10089E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v18);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);

      v62 = *(v23 + 40);

      goto LABEL_6;
    }
  }

  v62 = 0;
LABEL_6:
  v24 = *(a1 + v18);
  if (!*(v24 + 16))
  {
    goto LABEL_9;
  }

  v25 = *(a1 + v18);

  v26 = sub_1000210EC(a2);
  if (v27)
  {
    v28 = *(*(v24 + 56) + 8 * v26);

    v29 = *(v28 + 40);
    *(v28 + 40) = 0;

LABEL_9:
    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_10:
    v61 = v12;
    v30 = *(a1 + v18);
    v31 = *(v30 + 16);
    swift_errorRetain();
    if (v31)
    {

      v32 = sub_1000210EC(a2);
      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v32);

        v35 = *(v34 + 32);

LABEL_19:
        v42 = *(a1 + v18);
        if (*(v42 + 16))
        {
          v43 = *(a1 + v18);

          v44 = sub_1000210EC(a2);
          if (v45)
          {
            v46 = *(*(v42 + 56) + 8 * v44);

            v47 = *(v46 + 32);
            *(v46 + 32) = 0;
          }

          else
          {
          }
        }

        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_101385D80;
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = v50;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = sub_100008C00();
        *(v48 + 32) = v49;
        *(v48 + 40) = v51;
        os_log(_:dso:log:_:_:)();

        sub_1000BC488();
        (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
        v60 = static OS_dispatch_queue.global(qos:)();
        (*(v14 + 8))(v17, v13);
        v52 = swift_allocObject();
        v52[2] = v35;
        v52[3] = a3;
        v52[4] = v62;
        v73 = sub_1008A917C;
        v74 = v52;
        aBlock = _NSConcreteStackBlock;
        v70 = 1107296256;
        v71 = sub_100006684;
        v72 = &unk_101638B18;
        v53 = _Block_copy(&aBlock);
        swift_errorRetain();

        v54 = v61;
        static DispatchQoS.unspecified.getter();
        v68 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v55 = v63;
        v56 = v67;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v57 = v60;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v53);

        (*(v66 + 8))(v55, v56);
        (*(v64 + 8))(v54, v65);
      }
    }

    v35 = 0;
    goto LABEL_19;
  }

LABEL_14:
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1000BC488();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v36 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v37 = swift_allocObject();
  *(v37 + 16) = v62;
  v73 = sub_1008A90A4;
  v74 = v37;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_100006684;
  v72 = &unk_101638AC8;
  v38 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  v39 = v12;
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v40 = v63;
  v41 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  (*(v66 + 8))(v40, v41);
  (*(v64 + 8))(v39, v65);
}

uint64_t sub_10089EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v18);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);

      v62 = *(v23 + 40);

      goto LABEL_6;
    }
  }

  v62 = 0;
LABEL_6:
  v24 = *(a1 + v18);
  if (!*(v24 + 16))
  {
    goto LABEL_9;
  }

  v25 = *(a1 + v18);

  v26 = sub_1000210EC(a2);
  if (v27)
  {
    v28 = *(*(v24 + 56) + 8 * v26);

    v29 = *(v28 + 40);
    *(v28 + 40) = 0;

LABEL_9:
    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_10:
    v61 = v12;
    v30 = *(a1 + v18);
    v31 = *(v30 + 16);
    swift_errorRetain();
    if (v31)
    {

      v32 = sub_1000210EC(a2);
      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v32);

        v35 = *(v34 + 32);

LABEL_19:
        v42 = *(a1 + v18);
        if (*(v42 + 16))
        {
          v43 = *(a1 + v18);

          v44 = sub_1000210EC(a2);
          if (v45)
          {
            v46 = *(*(v42 + 56) + 8 * v44);

            v47 = *(v46 + 32);
            *(v46 + 32) = 0;
          }

          else
          {
          }
        }

        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_101385D80;
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = v50;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = sub_100008C00();
        *(v48 + 32) = v49;
        *(v48 + 40) = v51;
        os_log(_:dso:log:_:_:)();

        sub_1000BC488();
        (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
        v60 = static OS_dispatch_queue.global(qos:)();
        (*(v14 + 8))(v17, v13);
        v52 = swift_allocObject();
        v52[2] = v35;
        v52[3] = a3;
        v52[4] = v62;
        v73 = sub_1008A917C;
        v74 = v52;
        aBlock = _NSConcreteStackBlock;
        v70 = 1107296256;
        v71 = sub_100006684;
        v72 = &unk_101638A28;
        v53 = _Block_copy(&aBlock);
        swift_errorRetain();

        v54 = v61;
        static DispatchQoS.unspecified.getter();
        v68 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v55 = v63;
        v56 = v67;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v57 = v60;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v53);

        (*(v66 + 8))(v55, v56);
        (*(v64 + 8))(v54, v65);
      }
    }

    v35 = 0;
    goto LABEL_19;
  }

LABEL_14:
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1000BC488();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v36 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v37 = swift_allocObject();
  *(v37 + 16) = v62;
  v73 = sub_1008A90A4;
  v74 = v37;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_100006684;
  v72 = &unk_1016389D8;
  v38 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  v39 = v12;
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v40 = v63;
  v41 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  (*(v66 + 8))(v40, v41);
  (*(v64 + 8))(v39, v65);
}

uint64_t sub_10089F500(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = Future.finish(error:)();
  }

  if (a3)
  {
    return Future.finish(error:)();
  }

  return result;
}

uint64_t sub_10089F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v93 = a2;
  *&v81 = type metadata accessor for BeaconObservation();
  v4 = *(v81 - 8);
  v5 = *(v4 + 8);
  __chkstk_darwin(v81);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  __chkstk_darwin(v8);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  __chkstk_darwin(v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (*(v18 + 16))
  {
    v19 = *(a1 + v17);

    v20 = sub_1000210EC(v93);
    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v20);

      v23 = *(v22 + 48);

      goto LABEL_6;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = *(a1 + v17);
  if (*(v24 + 16))
  {
    v25 = *(a1 + v17);

    v26 = sub_1000210EC(v93);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);

      v29 = *(v28 + 32);

      goto LABEL_11;
    }
  }

  v29 = 0;
LABEL_11:
  v30 = *(a1 + v17);
  if (*(v30 + 16))
  {
    v31 = *(a1 + v17);

    v32 = sub_1000210EC(v93);
    if (v33)
    {
      v34 = *(*(v30 + 56) + 8 * v32);

      v35 = *(v34 + 40);

      goto LABEL_16;
    }
  }

  v35 = 0;
LABEL_16:
  v83 = a1;
  v87 = v35;
  v82 = v29;
  if (v29 | v35)
  {
    sub_1000BC488();
    v36 = v85;
    v37 = *(v85 + 104);
    v80 = v4;
    v38 = v84;
    v39 = v86;
    v37(v84, enum case for DispatchQoS.QoSClass.default(_:), v86);
    v79 = static OS_dispatch_queue.global(qos:)();
    (*(v36 + 8))(v38, v39);
    v40 = swift_allocObject();
    v41 = v87;
    *(v40 + 16) = v29;
    *(v40 + 24) = v41;
    v99 = sub_1008A8A90;
    v100 = v40;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_100006684;
    v98 = &unk_101638938;
    v78 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v94 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v42 = v14;
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v43 = v91;
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v44 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = v78;
    v46 = v79;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    v47 = v43;
    v4 = v80;
    v48 = v44;
    v14 = v42;
    (*(v47 + 8))(v48, v8);
    (*(v89 + 8))(v42, v90);
  }

  v49 = type metadata accessor for UUID();
  (*(*(v49 - 8) + 16))(v7, v93, v49);
  v50 = v81;
  static Date.trustedNow.getter(&v7[*(v81 + 20)]);
  v7[*(v50 + 24)] = 27;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v51 = qword_10177B2E8;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v52 = *(v4 + 9);
  v53 = (v4[80] + 32) & ~v4[80];
  v54 = swift_allocObject();
  v81 = xmmword_101385D80;
  *(v54 + 16) = xmmword_101385D80;
  sub_100034ED4(v7, v54 + v53, type metadata accessor for BeaconObservation);
  v55 = type metadata accessor for Transaction();
  __chkstk_darwin(v55);
  *(&v77 - 4) = v51;
  *(&v77 - 3) = v54;
  *(&v77 - 2) = 0;
  *(&v77 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  if (v92)
  {
    v80 = v7;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v56 = swift_allocObject();
    *(v56 + 16) = v81;
    v57 = v92;
    swift_getErrorValue();
    v58 = Error.localizedDescription.getter();
    v60 = v59;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = sub_100008C00();
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    os_log(_:dso:log:_:_:)();

    sub_1000BC488();
    v61 = v85;
    v62 = v84;
    v63 = v86;
    (*(v85 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v86);
    v64 = static OS_dispatch_queue.global(qos:)();
    (*(v61 + 8))(v62, v63);
    v65 = swift_allocObject();
    *(v65 + 16) = v23;
    *(v65 + 24) = v57;
    v99 = sub_1008A8A60;
    v100 = v65;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_100006684;
    v98 = &unk_1016388E8;
    v66 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v94 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v67 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v66);

    (*(v91 + 8))(v67, v8);
    (*(v89 + 8))(v14, v90);
    v68 = v80;
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000BC488();
    v69 = v85;
    v70 = v84;
    v71 = v86;
    (*(v85 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v86);
    v72 = static OS_dispatch_queue.global(qos:)();
    (*(v69 + 8))(v70, v71);
    v73 = swift_allocObject();
    *(v73 + 16) = v23;
    v99 = sub_1008A8A5C;
    v100 = v73;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_100006684;
    v98 = &unk_101638898;
    v74 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v94 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v75 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v74);

    (*(v91 + 8))(v75, v8);
    (*(v89 + 8))(v14, v90);
    v68 = v7;
  }

  sub_1008A8BD8(v68, type metadata accessor for BeaconObservation);

  sub_1008A02C0(v83, v93);
}

uint64_t sub_1008A02C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {
    v7 = *(a1 + v4);

    v8 = sub_1000210EC(a2);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);

      v11 = *(v10 + 32);
      *(v10 + 32) = 0;
    }

    else
    {
    }
  }

  v12 = *(a1 + v4);
  if (*(v12 + 16))
  {
    v13 = *(a1 + v4);

    v14 = sub_1000210EC(a2);
    if (v15)
    {
      v16 = *(*(v12 + 56) + 8 * v14);

      v17 = *(v16 + 48);
      *(v16 + 48) = 0;
    }

    else
    {
    }
  }

  return result;
}

void sub_1008A03D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for CommandError(0);
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v4;
    *(inited + 48) = 0xD000000000000028;
    *(inited + 56) = 0x8000000101363160;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  if (a2)
  {
    type metadata accessor for CommandError(0);
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 72) = &type metadata for String;
    *(v5 + 40) = v6;
    *(v5 + 48) = 0xD000000000000028;
    *(v5 + 56) = 0x8000000101363160;
    sub_10090403C(v5);
    swift_setDeallocating();
    sub_10000B3A8(v5 + 32, &unk_101695C20, &unk_101386D90);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_1008A0628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v33 = a1;
  v34 = a2;
  v20 = *(a1 + v19);
  if (!*(v20 + 16))
  {
    goto LABEL_5;
  }

  v21 = sub_1000210EC(a2);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  v24 = *(v23 + 56);

LABEL_6:
  sub_1000BC488();
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = v24;
  aBlock[4] = sub_1008A8A3C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016387F8;
  v27 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v13, v31);

  return sub_1008A0A60(v33, v34);
}

uint64_t sub_1008A0A60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = *(v9 + 56);
      *(v9 + 56) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008A0B0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)();

    if (a2)
    {
      Future.finish(error:)();
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
    if (a2)
    {
      return Future.finish(result:)();
    }
  }

  return result;
}

uint64_t sub_1008A0CD4(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C430);
  v41 = *(v9 + 16);
  v41(v13, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = a1;
    v18 = v17;
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v10;
    v20 = v3;
    v22 = v21;
    (*(v9 + 8))(v13, v8);
    v23 = sub_1000136BC(v19, v22, v50);
    v3 = v20;
    v10 = v39;

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "TagCommandManager handling user stats fetch result. Beacon: %{private,mask.hash}s.", v18, 0x16u);
    sub_100007BAC(v38);

    a1 = v40;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v24 = v43;
  v25 = *&v43[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v26 = v42;
  v41(v42, a1, v8);
  v27 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  (*(v9 + 32))(v28 + v27, v26, v8);
  v29 = v28 + ((v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  v30 = v44;
  v31 = *(v44 + 48);
  *(v29 + 32) = *(v44 + 32);
  *(v29 + 48) = v31;
  *(v29 + 64) = *(v30 + 64);
  v32 = *(v30 + 16);
  *v29 = *v30;
  *(v29 + 16) = v32;
  aBlock[4] = sub_1008A88B0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638708;
  v33 = _Block_copy(aBlock);
  v34 = v24;
  sub_1000D2A70(v30, v50, &qword_1016AC9D8, &unk_1013C15B0);
  v35 = v45;
  static DispatchQoS.unspecified.getter();
  v50[0] = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v36 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v49 + 8))(v36, v3);
  (*(v46 + 8))(v35, v48);
}

uint64_t sub_1008A1310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  __chkstk_darwin(v41);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v37 = *(v38 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v38);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v42 = a1;
  v43 = a2;
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_1000210EC(a2);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  v22 = *(v21 + 72);

LABEL_6:
  sub_1000BC488();
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  v24 = v43;
  v25 = v35;
  (*(v10 + 16))(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v35);
  v26 = (*(v10 + 80) + 82) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v28 = *(a3 + 48);
  *(v27 + 48) = *(a3 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(a3 + 64);
  v29 = *(a3 + 16);
  *(v27 + 16) = *a3;
  *(v27 + 32) = v29;
  (*(v10 + 32))(v27 + v26, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  *(v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1008A8940;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638758;
  v30 = _Block_copy(aBlock);
  sub_1000D2A70(a3, &v44, &qword_1016AC9D8, &unk_1013C15B0);

  v31 = v36;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v32 = v39;
  v33 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v40 + 8))(v32, v33);
  (*(v37 + 8))(v31, v38);

  return sub_1008A189C(v42, v24);
}

uint64_t sub_1008A189C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = *(v9 + 72);
      *(v9 + 72) = 0;
    }

    else
    {
    }
  }

  return result;
}

void sub_1008A1948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  if (*(a1 + 65))
  {
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C430);
    (*(v8 + 16))(v12, a2, v7);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10000B3A8(a1, &qword_1016AC9D8, &unk_1013C15B0);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      v39 = swift_slowAlloc();
      v40 = v39;
      *v18 = 138543875;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2081;
      sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = a3;
      v24 = v23;
      (*(v8 + 8))(v12, v7);
      v25 = sub_1000136BC(v21, v24, &v40);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "#Durian: Fetch user stats completed with error - %{public}@, device: %{private,mask.hash}s.", v18, 0x20u);
      sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v39);

      if (!v22)
      {
        return;
      }
    }

    else
    {

      (*(v8 + 8))(v12, v7);
      if (!a3)
      {
        return;
      }
    }

    Future.finish(error:)();
    return;
  }

  v26 = *(a1 + 24);
  v44 = *(a1 + 8);
  v45 = v26;
  v46[0] = *(a1 + 40);
  *(v46 + 9) = *(a1 + 49);
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177C430);
  (*(v8 + 16))(v14, a2, v7);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v28, v29))
  {

    (*(v8 + 8))(v14, v7);
    if (!a3)
    {
      return;
    }

    goto LABEL_15;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v39 = v6;
  v40 = v31;
  v32 = v31;
  *v30 = 141558275;
  *(v30 + 4) = 1752392040;
  *(v30 + 12) = 2081;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  (*(v8 + 8))(v14, v7);
  v36 = sub_1000136BC(v33, v35, &v40);

  *(v30 + 14) = v36;
  _os_log_impl(&_mh_execute_header, v28, v29, "#Durian: Fetch user stats completed: device: %{private,mask.hash}s.", v30, 0x16u);
  sub_100007BAC(v32);
  v6 = v39;

  if (a3)
  {
LABEL_15:
    v40 = v6;
    v41 = v44;
    v42 = v45;
    v43[0] = v46[0];
    *(v43 + 9) = *(v46 + 9);
    Future.finish(result:)();
  }
}

uint64_t sub_1008A1EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v38 = a1;
  v39 = a2;
  v20 = *(a1 + v19);
  if (!*(v20 + 16))
  {
LABEL_6:
    v24 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v21 = sub_1000210EC(a2);
  if ((v22 & 1) == 0)
  {

    goto LABEL_6;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  v24 = *(v23 + 64);

  if (!a3)
  {
LABEL_4:
    sub_1000BC488();
    (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
    v34 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v18, v14);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    aBlock[4] = sub_1008A8898;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016386B8;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v34;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v37 + 8))(v9, v6);
    (*(v35 + 8))(v13, v36);

    return sub_1008A240C(v38, v39);
  }

LABEL_7:
  swift_errorRetain();
  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v29 = Error.localizedDescription.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  if (v24)
  {

    Future.finish(error:)();
  }

  else
  {
  }

  return sub_1008A240C(v38, v39);
}

uint64_t sub_1008A240C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = *(v9 + 64);
      *(v9 + 64) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008A24B8(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  if (a1)
  {
    return Future.finish(result:)();
  }

  return result;
}

void sub_1008A2560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v60 = *(v9 - 8);
  isa = v60[8].isa;
  __chkstk_darwin(v9);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BeaconObservation();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10089C080(a2))
  {
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C430);
    v60 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v60, v21, "#Durian: AirTag is playing unauthorized sound. Not forcing completion.", v22, 2u);
    }

    v23 = v60;

    return;
  }

  v54 = v8;
  v55 = v9;
  v24 = v5;
  v25 = v4;
  v26 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v27 = *(a1 + v26);
  if (!*(v27 + 16))
  {
    goto LABEL_13;
  }

  v28 = *(a1 + v26);

  v29 = sub_1000210EC(a2);
  if ((v30 & 1) == 0)
  {

LABEL_13:
    v33 = 0;
    goto LABEL_14;
  }

  v31 = *(*(v27 + 56) + 8 * v29);

  v32 = *(v31 + 40);

  v33 = v32;

LABEL_14:
  v34 = *(a1 + v26);
  v35 = *(v34 + 16);
  v53 = v24;
  if (v35)
  {

    v36 = sub_1000210EC(a2);
    if (v37)
    {
      v38 = *(*(v34 + 56) + 8 * v36);

      v39 = *(v38 + 40);
      *(v38 + 40) = 0;
    }

    else
    {
    }
  }

  v40 = type metadata accessor for UUID();
  (*(*(v40 - 8) + 16))(v19, a2, v40);
  static Date.trustedNow.getter(&v19[*(v16 + 20)]);
  v19[*(v16 + 24)] = 29;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v41 = qword_10177B2E8;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v42 = *(v56 + 72);
  v43 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_101385D80;
  sub_100034ED4(v19, v44 + v43, type metadata accessor for BeaconObservation);
  v45 = type metadata accessor for Transaction();
  __chkstk_darwin(v45);
  *(&v53 - 4) = v41;
  *(&v53 - 3) = v44;
  *(&v53 - 2) = 0;
  *(&v53 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1000BC488();
  v47 = v57;
  v46 = v58;
  (*(v57 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v58);
  v48 = static OS_dispatch_queue.global(qos:)();
  (*(v47 + 8))(v15, v46);
  v49 = swift_allocObject();
  *(v49 + 16) = v33;
  aBlock[4] = sub_1008A8810;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638618;
  v50 = _Block_copy(aBlock);

  v51 = v59;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v52 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v53 + 8))(v52, v25);
  (v60[1].isa)(v51, v55);
  sub_1008A8BD8(v19, type metadata accessor for BeaconObservation);
}

uint64_t sub_1008A2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v59 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v16 - 8);
  v17 = v55[8];
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v21 = *(a1 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_1000210EC(v59);
    if (v23)
    {
      v24 = *(v21 + 56);
      v53 = v12;
      v54 = v15;
      v25 = a1;
      v26 = v10;
      v27 = v6;
      v28 = v11;
      v29 = v7;
      v30 = *(v24 + 8 * v22);

      v31 = *(v30 + 96);

      v32 = v29;
      v33 = v28;
      v34 = v27;
      v35 = v26;
      a1 = v25;
      v36 = v54;

      if (v31)
      {
        sub_1000BC488();
        v52 = v33;
        v37 = v55;
        (v55[13])(v19, enum case for DispatchQoS.QoSClass.default(_:), v16);
        v51 = static OS_dispatch_queue.global(qos:)();
        (v37[1])(v19, v16);
        v38 = swift_allocObject();
        v39 = v57;
        v38[2] = v56;
        v38[3] = v31;
        v40 = v58;
        v38[4] = v39;
        v38[5] = v40;
        aBlock[4] = sub_1008A8748;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638578;
        v55 = _Block_copy(aBlock);

        swift_errorRetain();
        sub_100017D5C(v39, v40);
        static DispatchQoS.unspecified.getter();
        v60 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v41 = v36;
        v42 = v32;
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v43 = v55;
        v44 = v51;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v43);

        (*(v42 + 8))(v35, v34);
        (*(v53 + 8))(v41, v52);

        v45 = v59;
        return sub_1008A32B4(a1, v45);
      }
    }

    else
    {
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_101385D80;
  type metadata accessor for UUID();
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v45 = v59;
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v49 = v48;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_100008C00();
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  os_log(_:dso:log:_:_:)();

  return sub_1008A32B4(a1, v45);
}

uint64_t sub_1008A32B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = *(v9 + 96);
      *(v9 + 96) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008A3360(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v2 = Error.localizedDescription.getter();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_100008C00();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return Future.finish(result:)();
  }
}

uint64_t sub_1008A357C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *, id))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = a1;
  v17 = a5;
  a6(v14, a5, v16);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1008A3C30(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(uint64_t, unint64_t, char *, void *, id))
{
  v25 = a7;
  v26 = type metadata accessor for UUID();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = a6;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v25(v21, v23, v15, a6, v19);

  sub_100016590(v21, v23);
  return (*(v12 + 8))(v15, v26);
}

uint64_t sub_1008A3DE8(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1008A3F64()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  return sub_100894E38(v8, v0 + v2, v5, v6, v7);
}

uint64_t sub_1008A4034(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a5;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)();

  v20 = v35;
  v33 = *&v35[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v13 + 32))(v23 + v21, v15, v12);
  v24 = v37;
  *(v23 + v22) = v36;
  v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v38;
  *v25 = v24;
  v25[1] = v26;
  aBlock[4] = sub_1008A8E28;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638F00;
  v27 = _Block_copy(aBlock);
  v28 = v20;
  swift_errorRetain();
  sub_100017D5C(v24, v26);
  v29 = v34;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v30 = v41;
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
}

uint64_t sub_1008A4528(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8CBC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638E60;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A49F4(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8B04;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638CF8;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A4EC0(uint64_t a1, uint64_t a2, char *a3)
{
  v40 = a2;
  v41 = a3;
  v47 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v38 = v12;
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C430);
  v37 = *(v9 + 16);
  v37(v14, v47, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v9 + 8))(v14, v8);
    v24 = sub_1000136BC(v21, v23, aBlock);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "#Durian: didStartPlayingUnauthorizedSoundOnDevice: %{private,mask.hash}s", v19, 0x16u);
    sub_100007BAC(v20);

    v3 = v36;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v25 = v41;
  v26 = *&v41[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v27 = v39;
  v37(v39, v47, v8);
  v28 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v29 = (v38 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  (*(v9 + 32))(v30 + v28, v27, v8);
  *(v30 + v29) = v40;
  aBlock[4] = sub_1008A8AC8;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638B68;
  v31 = _Block_copy(aBlock);
  v32 = v25;
  swift_errorRetain();
  v33 = v42;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v34 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v46 + 8))(v34, v3);
  (*(v43 + 8))(v33, v45);
}

uint64_t sub_1008A548C(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8AB0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638A78;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A5958(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8A98;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638988;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A5E24(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8A44;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638848;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A62F0(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8A24;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016387A8;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A67BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v53 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000076D4(v17, qword_10177C430);
  v19 = *(v11 + 16);
  v47 = v11 + 16;
  v46 = v19;
  v19(v16, a3, v10);
  sub_10002E98C(a1, a2);
  sub_10002E98C(a1, a2);
  swift_errorRetain();
  v48 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v50 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v49 = v11;
  if (v22)
  {
    v44 = v20;
    v52 = a1;
    v51 = a3;
    v45 = a5;
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v57[0] = v43;
    *v23 = 141558787;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v11 + 8))(v16, v10);
    v27 = sub_1000136BC(v24, v26, v57);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2048;
    v28 = a2 >> 60;
    if (a2 >> 60 == 15)
    {
      v29 = 0;
LABEL_6:
      a3 = v51;
      v30 = v52;
LABEL_7:
      *(v23 + 24) = v29;
      sub_100006654(v30, a2);
      *(v23 + 32) = 2114;
      if (a4)
      {
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        v32 = v31;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *(v23 + 34) = v31;
      v34 = v42;
      *v42 = v32;
      v35 = v44;
      _os_log_impl(&_mh_execute_header, v44, v50, "#Durian: TagCommandManager: didFetchUserStats: %{private,mask.hash}s, statsData: %ld, error: %{public}@.", v23, 0x2Au);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v43);

      goto LABEL_15;
    }

    v33 = a2 >> 62;
    v30 = v52;
    if ((a2 >> 62) > 1)
    {
      if (v33 != 2)
      {
        sub_100006654(v52, a2);
        v29 = 0;
        a3 = v51;
        goto LABEL_7;
      }

      v38 = *(v52 + 24);
      a3 = *(v52 + 16);
      sub_100006654(v52, a2);
      v29 = v38 - a3;
      if (!__OFSUB__(v38, a3))
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      a3 = v51;
      if (!v33)
      {
        sub_100006654(v52, a2);
        v29 = BYTE6(a2);
        goto LABEL_7;
      }
    }

    v39 = HIDWORD(v52);
    result = sub_100006654(v52, a2);
    v40 = __OFSUB__(v39, v52);
    LODWORD(v29) = v39 - v52;
    v30 = v52;
    if (v40)
    {
      __break(1u);
      return result;
    }

    v29 = v29;
    goto LABEL_7;
  }

  sub_100006654(a1, a2);
  sub_100006654(a1, a2);

  (*(v11 + 8))(v16, v10);
  v30 = a1;
  v28 = a2 >> 60;
LABEL_15:
  if (v28 <= 0xE)
  {
    sub_10002E98C(v30, a2);
    sub_100017D5C(v30, a2);
    sub_1010BED5C(v30, a2, v55);
    v57[2] = v55[2];
    v57[3] = v55[3];
    v58 = v56;
    v57[0] = v55[0];
    v57[1] = v55[1];
    v54[71] = 0;
    v59 = 0;
    sub_100766AC0(v55, v54);
    sub_1008A0CD4(a3, v57);
    sub_100006654(v30, a2);
    sub_100766C08(v55);
    return sub_100766C08(v55);
  }

  else
  {
    v36 = a4;
    if (!a4)
    {
      sub_1008A89D0();
      v36 = swift_allocError();
    }

    LOBYTE(v55[0]) = 1;
    *&v57[0] = v36;
    v59 = 1;
    swift_errorRetain();
    swift_errorRetain();
    sub_1008A0CD4(a3, v57);
  }
}

uint64_t sub_1008A703C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v38 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_1000076D4(v14, qword_10177C430);
  v35 = v8[2];
  v35(v13, a2, v7);
  swift_errorRetain();
  v36 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v39 = a2;
    v40 = a4;
    v18 = v8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v45[0] = v32;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v7;
    v24 = v23;
    v33 = v18;
    v25 = v18[1];
    v34 = v22;
    v37 = v25;
    v25(v13, v22);
    v26 = sub_1000136BC(v21, v24, v45);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2114;
    if (a3)
    {
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    *(v19 + 24) = v27;
    *v20 = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "#Durian: TagCommandManager: didFetchUserStats object: %{private,mask.hash}s, error: %{public}@.", v19, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v32);

    a2 = v39;
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_7:
    LOBYTE(v43[0]) = 1;
    *&v45[0] = a3;
    v47 = 1;
    return sub_1008A0CD4(a2, v45);
  }

  v37 = v8[1];
  v37(v13, v7);
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_10:
  v30 = v41;
  sub_1008EC570(v30, v43);
  v45[2] = v43[2];
  v45[3] = v43[3];
  v46 = v44;
  v45[0] = v43[0];
  v45[1] = v43[1];

  v42[71] = 0;
  v47 = 0;
  sub_100766AC0(v43, v42);
  sub_1008A0CD4(a2, v45);
  sub_100766C08(v43);
  return sub_100766C08(v43);
}

uint64_t sub_1008A7700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  v16[1] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1000D2A70(a2, v7, &qword_1016980D0, &unk_10138F3B0);
  v13 = String.init<A>(describing:)();
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1008A78C0(uint64_t a1, uint64_t a2, char *a3)
{
  v29 = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = v29;
  v18 = *&v29[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v11 + 32))(v20 + v19, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1008A8880;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638668;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
}

uint64_t sub_1008A7D8C(uint64_t a1, char *a2)
{
  v27 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v26 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  v16 = v27;
  v17 = *&v27[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v10 + 32))(v19 + v18, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1008A8780;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016385C8;
  v20 = _Block_copy(aBlock);
  v21 = v16;
  v22 = v26;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v30;
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v22, v29);
}

uint64_t sub_1008A823C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a5;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)();

  v20 = v35;
  v33 = *&v35[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v13 + 32))(v23 + v21, v15, v12);
  v24 = v37;
  *(v23 + v22) = v36;
  v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v38;
  *v25 = v24;
  v25[1] = v26;
  aBlock[4] = sub_1008A8730;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638528;
  v27 = _Block_copy(aBlock);
  v28 = v20;
  swift_errorRetain();
  sub_100017D5C(v24, v26);
  v29 = v34;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v30 = v41;
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
}

uint64_t sub_1008A8748()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1008A3360(v0[2]);
}

uint64_t sub_1008A8798(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1008A8830()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1008A88A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if (a10)
  {
  }

  else
  {
    return sub_100006654(a1, a2);
  }
}

uint64_t sub_1008A88B0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1008A1310(v3, v0 + v2, v4);
}

void sub_1008A8940()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 82) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1008A1948(v0 + 16, v0 + v2, v3);
}

unint64_t sub_1008A89D0()
{
  result = qword_1016AC9E0;
  if (!qword_1016AC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC9E0);
  }

  return result;
}

uint64_t sub_1008A8A60()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    return Future.finish(error:)();
  }

  return result;
}

uint64_t sub_1008A8B1C()
{
  if (*(v0 + 16))
  {
    return Future.finish(result:)();
  }

  return result;
}

uint64_t sub_1008A8B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008A8BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008A8C38()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1008A8CD4(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1008A8D34()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_1008A8E40(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + v4);
  v7 = (v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a1(v5, v1 + v3, v6, v8, v9);
}

uint64_t sub_1008A8EF4()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100016590(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1008A8F3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1008A3360(v0[2]);
}

unint64_t sub_1008A8F88()
{
  result = qword_1016AC9E8;
  if (!qword_1016AC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC9E8);
  }

  return result;
}

uint64_t sub_1008A9180()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B558);
  sub_1000076D4(v0, qword_10177B558);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008A9200(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_1008A9294;

  return daemon.getter();
}

uint64_t sub_1008A9294(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019540(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019540(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1008A9470;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008A9470(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = a1;

  v7 = *(v4 + 72);
  if (v1)
  {

    v8 = *(v6 + 8);

    return v8(3);
  }

  else
  {

    return _swift_task_switch(sub_1008A95E8, a1, 0);
  }
}

uint64_t sub_1008A95E8()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1008A96D4;
  v5 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_1008A96D4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1008A97EC, v2, 0);
}

uint64_t sub_1008A9810()
{
  v1 = v0[11];
  v0[14] = *(v0[13] + 16);

  return _swift_task_switch(sub_1008A9884, v1, 0);
}

uint64_t sub_1008A9884()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_1008A9970;
  v5 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_1008A9970()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1008A9A88, v2, 0);
}

uint64_t sub_1008A9AAC()
{
  v1 = v0[14];
  v2 = *(v0[16] + 16);

  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v0[17] = v1 + v2;
    if (qword_101694940 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v3 = qword_10177B348;
  v0[18] = qword_10177B348;
  v4 = async function pointer to unsafeBlocking<A>(_:)[1];

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1008A9BCC;

  return unsafeBlocking<A>(_:)(v0 + 4, sub_1000D2BE0, v3, &type metadata for Configuration);
}

uint64_t sub_1008A9BCC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1008A9CE4, 0, 0);
}

uint64_t sub_1008A9CE4()
{
  v1 = sub_101074D58(v0[4]);

  if (v1)
  {
    v2 = v0[7];
    AnyCurrentValuePublisher.value.getter();
    v3 = v0[5] > 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0[6] + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator);
  if (v4)
  {
    v5 = [v4 path];
    v6 = [v5 status];

    if (v6 == 1)
    {
LABEL_13:
      v14 = v0[11];
      v6 = 3;
      goto LABEL_16;
    }

    if (v6 == 3)
    {
      v7 = v0[11];
      goto LABEL_16;
    }
  }

  if (v0[17] <= 0 && !v3)
  {
    goto LABEL_13;
  }

  if (qword_101694A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B558);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[11];
    v12 = v0[17] > 0;
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = v12;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v3;
    _os_log_impl(&_mh_execute_header, v9, v10, "Network is down - policy is no maintenance. hasShares: %{BOOL}d, hasOtherDeviecs: %{BOOL}d.", v13, 0xEu);
  }

  else
  {
    v15 = v0[11];
  }

  v6 = 0;
LABEL_16:

  v16 = v0[1];

  return v16(v6);
}

uint64_t sub_1008A9EFC()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = sub_1000BC4D4(&qword_1016ACB58, &qword_1013C17B8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[15] = CurrentValueSubject.init(_:)();
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v0[16] = v5;
    v0[17] = [objc_allocWithZone(type metadata accessor for NetworkMonitor()) init];
    v0[18] = _swiftEmptyArrayStorage;
    v0[19] = 0;
    v0[20] = _swiftEmptyArrayStorage;
    v6 = v0[15];

    v7 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

    v1[14] = v7;
    if (qword_101694A28 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B558);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Created iOS Maintenance Connection Observer", v11, 2u);
    }

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1008AA0DC()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);

    v4 = 32;
    do
    {
      notify_cancel(*(v1 + v4));
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  v7 = *(v0 + 144);

  v8 = *(v0 + 152);

  v9 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1008AA178()
{
  sub_1008AA0DC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008AA1C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1008AA264(a2);
}

uint64_t sub_1008AA264(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016ACB38, &qword_1013C1778);
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016ACB40, &unk_1013C1780);
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1008AA488, v1, 0);
}

uint64_t sub_1008AA488()
{
  v20 = v0[22];
  v25 = v0[20];
  v26 = v0[21];
  v27 = v0[19];
  v23 = v0[18];
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v18 = v0[12];
  v19 = v0[17];
  v21 = v0[11];
  v22 = v0[10];
  v24 = v0[9];
  v5 = *(v24 + 152);
  *(v24 + 152) = v0[8];

  v0[5] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC488();
  v17 = enum case for DispatchQoS.QoSClass.default(_:);
  v16 = *(v2 + 104);
  v16(v1);
  v12 = static OS_dispatch_queue.global(qos:)();
  v15 = *(v2 + 8);
  v15(v1, v3);
  v0[6] = v12;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v13 = *(*(v14 - 8) + 56);
  v13(v4, 1, 1, v14);
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270);
  sub_100019540(&qword_1016AF9C0, sub_1000BC488);
  Publisher.receive<A>(on:options:)();
  sub_100422F3C(v4);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (v16)(v1, v17, v3);
  v6 = static OS_dispatch_queue.global(qos:)();
  v15(v1, v3);
  v0[7] = v6;
  v13(v4, 1, 1, v14);
  sub_1000041A4(&qword_1016ACB48, &qword_1016ACB38, &qword_1013C1778);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100422F3C(v4);

  (*(v21 + 8))(v18, v22);
  (*(v23 + 8))(v27, v19);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016ACB50, &qword_1016ACB40, &unk_1013C1780);
  Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v20, v25);
  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  sub_1008AB64C();
  v7 = *(v24 + 136);
  v8 = swift_allocObject();
  swift_weakInit();

  NetworkMonitor.startMonitoring(block:)(sub_1008ABE30, v8);

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1008AA9C8;
  v10 = v0[9];

  return sub_1008AAD18();
}

uint64_t sub_1008AA9C8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 96);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1008AAB58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1008AABF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008AAD18();
}

uint64_t sub_1008AAC80()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1008AAD18()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1008AADD8, v0, 0);
}

void sub_1008AADD8()
{
  v35 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 152);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = *(v1 + 136);

    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_1008AB1C0;

    sub_1008A9200(v3, v2);
  }

  else
  {
    v5 = [*(v1 + 128) getActivePairedDevice];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = *(v1 + 112);
    AnyCurrentValuePublisher.value.getter();
    v8 = *(v0 + 64);
    v9 = *(v1 + 120);
    *(v0 + 65) = v6;
    CurrentValueSubject.send(_:)();
    if (qword_101694A28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177B558);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v33 = v11;
      v14 = 1701736302;
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      if (v5)
      {
        v16 = 1684826487;
      }

      else
      {
        v16 = 7105633;
      }

      if (v5)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      v18 = sub_1000136BC(v16, v17, &v34);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = 0xE400000000000000;
      v20 = 7105633;
      if (v8 == 1)
      {
        v20 = 1684826487;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if (v8)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1701736302;
      }

      if (v8)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0xE400000000000000;
      }

      v23 = sub_1000136BC(v21, v22, &v34);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2160;
      *(v15 + 24) = 1752392040;
      *(v15 + 32) = 2081;
      if (v5)
      {
        v24 = [v11 pairingID];

        if (!v24)
        {
          __break(1u);
          return;
        }

        v25 = *(v0 + 32);
        v26 = *(v0 + 40);
        v27 = *(v0 + 24);
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = UUID.uuidString.getter();
        v29 = v28;
        (*(v25 + 8))(v26, v27);
        v11 = v33;
      }

      else
      {
        v29 = 0xE400000000000000;
      }

      v30 = sub_1000136BC(v14, v29, &v34);

      *(v15 + 34) = v30;
      _os_log_impl(&_mh_execute_header, v12, v13, "Updated iOS Maintenance Connection policy (New: %{public}s, Old: %{public}s) - activePairedDevice:%{private,mask.hash}s.", v15, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = *(v0 + 40);

    v32 = *(v0 + 8);

    v32();
  }
}

uint64_t sub_1008AB1C0(char a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 67) = a1;

  return _swift_task_switch(sub_1008AB2D8, v3, 0);
}

void sub_1008AB2D8()
{
  v36 = v0;
  v1 = *(v0 + 67);
  if (v1 == 3)
  {
    v2 = *(v0 + 48);

    v3 = *(v0 + 16);
    v4 = [*(v3 + 128) getActivePairedDevice];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = *(v3 + 112);
    AnyCurrentValuePublisher.value.getter();
    v7 = *(v0 + 64);
    v8 = *(v3 + 120);
    *(v0 + 65) = v5;
    CurrentValueSubject.send(_:)();
    if (qword_101694A28 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B558);
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v34 = v10;
      v13 = 1701736302;
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v14 = 136446979;
      if (v4)
      {
        v15 = 1684826487;
      }

      else
      {
        v15 = 7105633;
      }

      if (v4)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v17 = sub_1000136BC(v15, v16, &v35);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = 0xE400000000000000;
      v19 = 7105633;
      if (v7 == 1)
      {
        v19 = 1684826487;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if (v7)
      {
        v20 = v19;
      }

      else
      {
        v20 = 1701736302;
      }

      if (v7)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      v22 = sub_1000136BC(v20, v21, &v35);

      *(v14 + 14) = v22;
      *(v14 + 22) = 2160;
      *(v14 + 24) = 1752392040;
      *(v14 + 32) = 2081;
      if (v4)
      {
        v23 = [v10 pairingID];

        if (!v23)
        {
          __break(1u);
          return;
        }

        v24 = *(v0 + 32);
        v25 = *(v0 + 40);
        v26 = *(v0 + 24);
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = UUID.uuidString.getter();
        v28 = v27;
        (*(v24 + 8))(v25, v26);
        v10 = v34;
      }

      else
      {
        v28 = 0xE400000000000000;
      }

      v31 = sub_1000136BC(v13, v28, &v35);

      *(v14 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v11, v12, "Updated iOS Maintenance Connection policy (New: %{public}s, Old: %{public}s) - activePairedDevice:%{private,mask.hash}s.", v14, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v29 = *(*(v0 + 16) + 120);
    *(v0 + 66) = v1;
    v30 = *(v0 + 48);
    CurrentValueSubject.send(_:)();
  }

  v32 = *(v0 + 40);

  v33 = *(v0 + 8);

  v33();
}

void sub_1008AB64C()
{
  v39 = type metadata accessor for UUID();
  v38 = *(v39 - 8);
  v1 = *(v38 + 64);
  __chkstk_darwin(v39);
  v37 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[8] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46[9] = v8;
  v46[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46[11] = v9;
  v46[12] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46[13] = v10;
  sub_1000BC488();
  v11 = 0;
  v42 = enum case for DispatchQoS.QoSClass.default(_:);
  v41 = *(v4 + 104);
  v43 = v4 + 104;
  v12 = (v4 + 8);
  v40 = v46;
  do
  {
    v13 = v46[v11 + 8];
    v14 = v46[v11 + 9];
    out_token = 0;
    v41(v7, v42, v3);

    v15 = static OS_dispatch_queue.global(qos:)();
    (*v12)(v7, v3);
    v16 = swift_allocObject();
    swift_weakInit();
    v46[2] = sub_1008ABD90;
    v46[3] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v46[0] = sub_1008ABD3C;
    v46[1] = &unk_101639048;
    v17 = _Block_copy(aBlock);

    v18 = String.utf8CString.getter();

    notify_register_dispatch((v18 + 32), &out_token, v15, v17);

    _Block_release(v17);

    v19 = out_token;
    v20 = *(v0 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 144) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_100A5E14C(0, *(v20 + 2) + 1, 1, v20);
      *(v0 + 144) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_100A5E14C((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    *&v20[4 * v23 + 32] = v19;
    *(v0 + 144) = v20;
    v11 += 2;
  }

  while (v11 != 6);
  v24 = [*(v0 + 128) getActivePairedDevice];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 pairingID];

    if (!v26)
    {
      __break(1u);
      return;
    }

    swift_arrayDestroy();
    v27 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = UUID.uuidString.getter();
    v30 = v29;
    (*(v38 + 8))(v27, v39);
  }

  else
  {
    swift_arrayDestroy();
    v30 = 0xE400000000000000;
    v28 = 1701736302;
  }

  if (qword_101694A28 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000076D4(v31, qword_10177B558);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    v36 = sub_1000136BC(v28, v30, aBlock);

    *(v34 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "Registered active paired device changed handlers. Current device: %{private,mask.hash}s", v34, 0x16u);
    sub_100007BAC(v35);
  }

  else
  {
  }
}

uint64_t sub_1008ABC14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1008ABCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008AAD18();
}

uint64_t sub_1008ABD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1008ABD98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008ABCAC();
}

uint64_t sub_1008ABE38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008AABF0();
}

uint64_t sub_1008ABEC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008AABF0();
}

uint64_t type metadata accessor for AccessoryPairingLockAckResponse()
{
  result = qword_1016ACBB8;
  if (!qword_1016ACBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008ABFCC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008AC048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for UUID();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016ACBF0, &qword_1013C1808);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AccessoryPairingLockAckResponse();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008AC4EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v25 = 1;
  sub_100395BEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1008AC540(v13, v21);
  sub_100007BAC(a1);
  return sub_1008AC5A4(v13);
}

unint64_t sub_1008AC33C()
{
  if (*v0)
  {
    result = 0x6449616E6D66;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1008AC378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010134A130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
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

uint64_t sub_1008AC45C(uint64_t a1)
{
  v2 = sub_1008AC4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AC498(uint64_t a1)
{
  v2 = sub_1008AC4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008AC4EC()
{
  result = qword_1016ACBF8;
  if (!qword_1016ACBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACBF8);
  }

  return result;
}

uint64_t sub_1008AC540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryPairingLockAckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008AC5A4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryPairingLockAckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008AC614()
{
  result = qword_1016ACC00;
  if (!qword_1016ACC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC00);
  }

  return result;
}

unint64_t sub_1008AC66C()
{
  result = qword_1016ACC08;
  if (!qword_1016ACC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC08);
  }

  return result;
}

unint64_t sub_1008AC6C4()
{
  result = qword_1016ACC10;
  if (!qword_1016ACC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC10);
  }

  return result;
}

__n128 sub_1008AC718(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1008AC754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 184))
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

uint64_t sub_1008AC7A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1008AC834(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v18 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v18, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v17 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v17, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v16 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v16, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v15 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v15, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = v1[7];
    v6 = v1[7];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[8];
    v6 = v1[8];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[9];
    v6 = v1[9];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

double sub_1008ACC6C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008ACDDC(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

unint64_t sub_1008ACD04(uint64_t a1)
{
  *(a1 + 8) = sub_1008ACD34();
  result = sub_1008ACD88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008ACD34()
{
  result = qword_1016ACC18;
  if (!qword_1016ACC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC18);
  }

  return result;
}

unint64_t sub_1008ACD88()
{
  result = qword_1016ACC20;
  if (!qword_1016ACC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACC20);
  }

  return result;
}

uint64_t sub_1008ACDDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v67, v68);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
LABEL_17:
    sub_100007BAC(v67);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v67, v68);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v70 = v11;
  sub_10015049C(v67, v68);
  v65 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v66 = v12;
  sub_10015049C(v67, v68);
  v63 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v64 = v13;
  v14 = v69;
  sub_10015049C(v67, v68);
  v15 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v16;
  result = static MACAddress.length.getter();
  v19 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v61 = v15;
  v62 = v17;
  if (__OFADD__(v19, 60))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_10015049C(v67, v68);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v21 = v20;
  LOBYTE(v57) = sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v22 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = static MACAddress.length.getter();
  v19 = result + 20;
  if (__OFADD__(result, 20))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22 * v19;
  v19 = (v22 * v19) >> 64;
  if (v19 != v23 >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v23 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v60 = v14;
  v58 = Data.subdata(in:)();
  v59 = v24;
  sub_10015049C(v67, v68);
  v55 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v56 = v25;
  sub_10015049C(v67, v68);
  v53 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v54 = v26;
  sub_10015049C(v67, v68);
  v51 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v52 = v27;
  sub_10015049C(v67, v68);
  v49 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v50 = v28;
  sub_10015049C(v67, v68);
  v47 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v48 = v29;
  v57 = DataProtocol.intValue.getter();
  sub_10015049C(v67, v68);
  v46 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v14 = v30;
  if (v57 > 3)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_14:
      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177C418);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        *(v35 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v33, v34, "Invalid beaconPartId %ld!", v35, 0xCu);
      }

      v36 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, enum case for BinaryDecodingError.decodingError(_:), v36);
      swift_willThrow();
      sub_100016590(v46, v14);
      sub_100016590(v47, v48);
      sub_100016590(v49, v50);
      sub_100016590(v51, v52);
      sub_100016590(v53, v54);
      sub_100016590(v55, v56);
      sub_100016590(v58, v59);
      sub_100016590(v60, v21);
      sub_100016590(v61, v62);
      sub_100016590(v63, v64);
      sub_100016590(v65, v66);
      sub_100016590(v10, v70);
      sub_100016590(v8, v9);
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_14;
  }

  sub_100016590(v47, v48);
  result = sub_100016590(v60, v21);
  if (v57 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v19 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v19)
    {
      v31 = BYTE6(v9);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_24:
  if (v19 != 2)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v38 = *(v8 + 16);
  v39 = *(v8 + 24);
  v40 = __OFSUB__(v39, v38);
  v31 = v39 - v38;
  if (v40)
  {
    __break(1u);
LABEL_28:
    LODWORD(v31) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v31 = v31;
  }

LABEL_30:
  if (v31 != 32)
  {
    goto LABEL_46;
  }

  v41 = v62 >> 62;
  if ((v62 >> 62) <= 1)
  {
    if (!v41)
    {
      v42 = BYTE6(v62);
      goto LABEL_40;
    }

LABEL_38:
    LODWORD(v42) = HIDWORD(v61) - v61;
    if (!__OFSUB__(HIDWORD(v61), v61))
    {
      v42 = v42;
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  if (v41 != 2)
  {
    goto LABEL_47;
  }

  v44 = *(v61 + 16);
  v43 = *(v61 + 24);
  v40 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v40)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_40:
  if (v42 == 1)
  {
    sub_100007BAC(v67);
    result = sub_100007BAC(a1);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v61;
    *(a2 + 24) = v62;
    v45 = v70;
    *(a2 + 32) = v10;
    *(a2 + 40) = v45;
    *(a2 + 48) = v58;
    *(a2 + 56) = v59;
    *(a2 + 64) = v65;
    *(a2 + 72) = v66;
    *(a2 + 80) = v63;
    *(a2 + 88) = v64;
    *(a2 + 96) = v55;
    *(a2 + 104) = v56;
    *(a2 + 112) = v53;
    *(a2 + 120) = v54;
    *(a2 + 128) = v51;
    *(a2 + 136) = v52;
    *(a2 + 144) = v49;
    *(a2 + 152) = v50;
    *(a2 + 160) = v57;
    *(a2 + 168) = v46;
    *(a2 + 176) = v14;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AirPodsPairingLockAckResponse()
{
  result = qword_1016ACC80;
  if (!qword_1016ACC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008AD518()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008AD59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016ACCC0, &qword_1013C1F08);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AirPodsPairingLockAckResponse();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008ADA30();
  v30 = v11;
  v17 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v31 = a1;
  v24 = v6;
  v25 = v3;
  v33 = 0;
  sub_1000E307C();
  v18 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v15;
  *v15 = v32;
  v33 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[1] = v32;
  v33 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v31;
  v15[2] = v32;
  LOBYTE(v32) = 3;
  sub_100395BEC();
  v22 = v24;
  v21 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v30, v18);
  (*(v26 + 32))(v19 + *(v12 + 28), v22, v21);
  sub_1008ADA84(v19, v27);
  sub_100007BAC(v20);
  return sub_1008ADAE8(v19);
}

uint64_t sub_1008AD9A0(uint64_t a1)
{
  v2 = sub_1008ADA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008AD9DC(uint64_t a1)
{
  v2 = sub_1008ADA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008ADA30()
{
  result = qword_1016ACCC8;
  if (!qword_1016ACCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCC8);
  }

  return result;
}

uint64_t sub_1008ADA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsPairingLockAckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008ADAE8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsPairingLockAckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008ADB58()
{
  result = qword_1016ACCD0;
  if (!qword_1016ACCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCD0);
  }

  return result;
}

unint64_t sub_1008ADBB0()
{
  result = qword_1016ACCD8;
  if (!qword_1016ACCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCD8);
  }

  return result;
}

unint64_t sub_1008ADC08()
{
  result = qword_1016ACCE0;
  if (!qword_1016ACCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACCE0);
  }

  return result;
}

uint64_t type metadata accessor for NFCTapEndPoint()
{
  result = qword_1016ACD40;
  if (!qword_1016ACD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008ADCD0()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x6970617463666E2FLL;
  v3._object = 0xEB000000006F666ELL;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_1008ADDF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1008ADF98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1008ADE20(uint64_t a1)
{
  *(a1 + 8) = sub_1008ADE50();
  result = sub_1008ADEA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008ADE50()
{
  result = qword_1016ACD78;
  if (!qword_1016ACD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD78);
  }

  return result;
}

unint64_t sub_1008ADEA4()
{
  result = qword_1016ACD80;
  if (!qword_1016ACD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD80);
  }

  return result;
}

uint64_t sub_1008ADEF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 != 32)
  {
    goto LABEL_23;
  }

  if ((a4 >> 62) <= 1)
  {
    if (a4 >> 62 == 1)
    {
      LODWORD(v9) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v9 = v9;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a4 >> 62 != 2)
  {
    goto LABEL_22;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v8 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  if (v9 != 1326)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1008ADF98(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v12, v13);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v12, v13);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v4 = sub_1008ADEF8(v7, v8, v9, v11);
  }

  sub_100007BAC(v12);
  sub_100007BAC(a1);
  return v4;
}

void *sub_1008AE0CC@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *sub_1008AE0E8(void *result, void *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *sub_1008AE104@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *sub_1008AE120(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

Swift::Int sub_1008AE18C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1008AE200()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_1008AE244@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (*result >= *v2)
  {
    if (*result - *v2 >= 0)
    {
      *a2 = *result - *v2;
      return result;
    }
  }

  else
  {
    if (v4 - v3 >= 0)
    {
      *a2 = v3 - v4;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1008AE27C@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    v5 = __CFADD__(v4, v3);
    v4 += v3;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = __OFSUB__(0, v3);
  v7 = -v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 >= v7;
  v4 -= v7;
  if (v5)
  {
LABEL_9:
    *a2 = v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t *sub_1008AE2BC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a4;
  v7 = *a6;
  if ((*a6 & 0x8000000000000000) == 0)
  {
    v8 = __CFADD__(v6, v7);
    v6 += v7;
    if (!v8)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v9 = __OFSUB__(0, v7);
  v10 = -v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v6 >= v10;
  v6 -= v10;
  if (v8)
  {
LABEL_9:
    *result = v6;
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t *sub_1008AE304(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if (*a2 - *result >= 0)
    {
      return (v4 == 0);
    }
  }

  else
  {
    if (v2 - v3 >= 0)
    {
      v4 = v3 - v2;
      return (v4 == 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008AE33C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v6 = objc_autoreleasePoolPush();
  sub_1000035D0(v9, v9[3]);
  v7 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  objc_autoreleasePoolPop(v6);
  sub_100007BAC(v9);
  result = sub_100007BAC(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_1008AE424(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10015049C(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100007BAC(v5);
}

unint64_t sub_1008AE4CC()
{
  result = qword_1016ACD88;
  if (!qword_1016ACD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD88);
  }

  return result;
}

unint64_t sub_1008AE544()
{
  result = qword_1016ACD90;
  if (!qword_1016ACD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD90);
  }

  return result;
}

unint64_t sub_1008AE598(void *a1)
{
  a1[1] = sub_1008AE5F8();
  a1[2] = sub_1008AE64C();
  a1[3] = sub_1008AE6A0();
  a1[4] = sub_1008AE6F4();
  a1[5] = sub_1008AE748();
  a1[6] = sub_1008AE79C();
  a1[7] = sub_1008AE7F0();
  result = sub_1008AE844();
  a1[8] = result;
  return result;
}

unint64_t sub_1008AE5F8()
{
  result = qword_1016ACD98;
  if (!qword_1016ACD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACD98);
  }

  return result;
}

unint64_t sub_1008AE64C()
{
  result = qword_1016ACDA0;
  if (!qword_1016ACDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDA0);
  }

  return result;
}

unint64_t sub_1008AE6A0()
{
  result = qword_1016ACDA8;
  if (!qword_1016ACDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDA8);
  }

  return result;
}

unint64_t sub_1008AE6F4()
{
  result = qword_1016ACDB0;
  if (!qword_1016ACDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDB0);
  }

  return result;
}

unint64_t sub_1008AE748()
{
  result = qword_1016ACDB8;
  if (!qword_1016ACDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDB8);
  }

  return result;
}

unint64_t sub_1008AE79C()
{
  result = qword_1016ACDC0;
  if (!qword_1016ACDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDC0);
  }

  return result;
}

unint64_t sub_1008AE7F0()
{
  result = qword_1016ACDC8;
  if (!qword_1016ACDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDC8);
  }

  return result;
}

unint64_t sub_1008AE844()
{
  result = qword_1016ACDD0;
  if (!qword_1016ACDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACDD0);
  }

  return result;
}

uint64_t sub_1008AE89C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1008AE8BC, v1, 0);
}

uint64_t sub_1008AE8BC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing);
  type metadata accessor for AirPodsLEPairingValidator();
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_defaultActor_initialize();
  v3 = type metadata accessor for DeviceIdentityUtility();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v2 + 112) = v6;
  *(v2 + 120) = v1;
  v0[5] = type metadata accessor for AirPodsLEPeripheralProvider();
  v0[6] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v9 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1008AEA50;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_1008AEA50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1008AEF38;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1008AEB78;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1008AEB78()
{
  *(v0[6] + 112) = v0[9];
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1008AEC14;

  return daemon.getter();
}

uint64_t sub_1008AEC14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1008AFB14(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1008AFB14(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1008AEDF8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008AEDF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1008AF17C;
  }

  else
  {
    v9 = v4[11];
    v10 = v4[3];

    v4[14] = a1;
    v8 = sub_1008AF028;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008AEF38()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_1008AEFC4, v3, 0);
}

uint64_t sub_1008AEFC4()
{
  v1 = v0[4];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1008AF028()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_1000BC4D4(&qword_1016ACE90, &qword_1013DD370);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = type metadata accessor for AirPodsLEPairingExecutor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();

  v11 = sub_1008AF344(v10, v3, v2, v1, v9);
  v12 = sub_1008AFB14(&qword_1016A12F0, 255, type metadata accessor for AirPodsLEPairingExecutor);
  *(v5 + 32) = v11;
  *(v5 + 40) = v12;

  v13 = v0[1];

  return v13(v5);
}

uint64_t sub_1008AF17C()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[13];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1008AF2B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1008AE89C(v2);
}

unint64_t sub_1008AF344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = type metadata accessor for AccessoryMetadata(0);
  v10 = *(v67 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v67);
  v64 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v64 - v15;
  v66 = sub_1008AFB14(&qword_1016ACE98, 255, type metadata accessor for AirPodsLEPairingValidator);
  v65 = sub_1008AFB14(&qword_1016ACEA0, 255, type metadata accessor for AirPodsLEPeripheralProvider);
  v17 = sub_1008AFB14(&qword_1016ACEA8, 255, type metadata accessor for BeaconStoreActor);
  swift_defaultActor_initialize();
  UUID.init()();
  v18 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  v19 = enum case for PairingExecutorState.idle(_:);
  v20 = type metadata accessor for PairingExecutorState();
  (*(*(v20 - 8) + 104))(a5 + v18, v19, v20);
  *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_stateHistory) = _swiftEmptyArrayStorage;
  v21 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_streamProvider;
  v22 = sub_1000BC4D4(&qword_1016ACEB0, &unk_1013DC650);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(a5 + v21) = AsyncStreamProvider.init()();
  v25 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  *v27 = 0;
  v27[1] = 0;
  v28 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0;
  v29 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 0;
  v30 = a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingConfiguration;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  v31 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  v32 = type metadata accessor for UUID();
  (*(*(v32 - 8) + 56))(a5 + v31, 1, 1, v32);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic) = 0;
  *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo) = a1;
  v33 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator);
  v34 = v65;
  v35 = v66;
  *v33 = a2;
  v33[1] = v35;
  v36 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider);
  *v36 = a3;
  v36[1] = v34;
  v37 = (a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  *v37 = a4;
  v37[1] = v17;
  v38 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
  swift_beginAccess();
  v39 = a1 + v38;
  v40 = v67;
  sub_1008AFB5C(v39, v16);
  if ((*(v10 + 48))(v16, 1, v40))
  {

    sub_1008AFBCC(v16);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v43 = v64;
    sub_1008AFCDC(v16, v64);

    sub_1008AFBCC(v16);
    v44 = v43 + *(v40 + 68);
    v41 = *v44;
    v45 = *(v44 + 4);
    sub_1008AFD40(v43);
    v42 = v45 ^ 1;
  }

  result = sub_10098E9DC(0x302E302E32, 0xE500000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v47 = result;

    if ((v42 & (v41 == v47)) == 1)
    {
      v48 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
      *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24) = &type metadata for AirpodsLEPairingSpec2_0;
      v49 = sub_1008AFC88();
    }

    else
    {
      if (qword_101694720 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_1016A1010);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000136BC(0xD00000000000003BLL, 0x8000000101363860, v68);
        _os_log_impl(&_mh_execute_header, v51, v52, "%s Missing metadata findMyVersion, using default spec", v53, 0xCu);
        sub_100007BAC(v54);
      }

      v48 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
      *(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24) = &type metadata for AirpodsLEPairingSpec1_0;
      v49 = sub_1008AFC34();
    }

    *(a5 + v48 + 32) = v49;
    sub_10001F280(a5 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec, v68);
    sub_1000BC4D4(&qword_1016ACEC0, &unk_1013C2540);
    v55 = String.init<A>(describing:)();
    v57 = v56;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177C418);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68[0] = v62;
      *v61 = 136446210;
      v63 = sub_1000136BC(v55, v57, v68);

      *(v61 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v59, v60, "Using PairingSpec: %{public}s", v61, 0xCu);
      sub_100007BAC(v62);
    }

    else
    {
    }

    return a5;
  }

  return result;
}

uint64_t sub_1008AFB14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1008AFB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008AFBCC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008AFC34()
{
  result = qword_1016ACEB8;
  if (!qword_1016ACEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACEB8);
  }

  return result;
}

unint64_t sub_1008AFC88()
{
  result = qword_1016ACEC8;
  if (!qword_1016ACEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACEC8);
  }

  return result;
}

uint64_t sub_1008AFCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008AFD40(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008AFD9C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B570);
  sub_1000076D4(v0, qword_10177B570);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008AFE18(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v365 = a3;
  v366 = a4;
  v361 = a2;
  v373 = a1;
  v374 = 0;
  v348 = type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  v5 = *(*(v348 - 8) + 64);
  __chkstk_darwin(v348);
  v352 = (&v336 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v355 = &v336 - v9;
  v356 = type metadata accessor for LocalFindableAccessoryRecord();
  v354 = *(v356 - 8);
  v10 = *(v354 + 64);
  __chkstk_darwin(v356);
  v351 = &v336 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016ACED0, &qword_1013C2560);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v368 = (&v336 - v14);
  v367 = type metadata accessor for AirPodsLostModeContent.Device(0);
  v357 = *(v367 - 8);
  v15 = *(v357 + 64);
  v16 = __chkstk_darwin(v367);
  v341 = &v336 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v337 = &v336 - v18;
  v19 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v336 - v21;
  v23 = type metadata accessor for OwnedBeaconGroup(0);
  v358 = *(v23 - 8);
  v359 = v23;
  v24 = v358[8];
  __chkstk_darwin(v23);
  v363 = &v336 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = type metadata accessor for AccessoryLostModeRequestContent();
  v26 = *(*(v346 - 8) + 64);
  v27 = __chkstk_darwin(v346);
  v340 = &v336 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v347 = &v336 - v29;
  v30 = type metadata accessor for Date();
  v344 = *(v30 - 8);
  v345 = v30;
  v31 = *(v344 + 64);
  __chkstk_darwin(v30);
  v343 = &v336 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v371 = v33;
  v372 = v34;
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v369 = &v336 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v349 = &v336 - v39;
  v40 = __chkstk_darwin(v38);
  v350 = &v336 - v41;
  __chkstk_darwin(v40);
  v342 = &v336 - v42;
  v338 = type metadata accessor for LostModeRequestContent();
  v43 = *(*(v338 - 8) + 64);
  __chkstk_darwin(v338);
  v339 = &v336 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = type metadata accessor for StableIdentifier();
  v45 = *(*(v360 - 1) + 8);
  __chkstk_darwin(v360);
  v47 = (&v336 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for LostModeRecord();
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48);
  v353 = &v336 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v336 - v52;
  v54 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v57 = &v336 - v56;
  v58 = type metadata accessor for OwnedBeaconRecord();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v336 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = v4;
  v63 = *(v4 + 280);
  v364 = v48;
  v64 = v373 + *(v48 + 24);
  sub_100AA33AC(v64, v57);
  v65 = *(v59 + 48);
  v362 = v58;
  if (v65(v57, 1, v58) != 1)
  {
    sub_1008BA1A0(v57, v62, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694A30 != -1)
    {
LABEL_99:
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_1000076D4(v76, qword_10177B570);
    sub_1008B9F58(v373, v53, type metadata accessor for LostModeRecord);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v369 = v64;
      v80 = v62;
      v81 = v79;
      v82 = swift_slowAlloc();
      *&v381 = v82;
      *v81 = 141558275;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2081;
      v83 = *(v364 + 24);
      sub_1008BA074(&qword_101696930, &type metadata accessor for UUID);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      sub_1008B9FC0(v53, type metadata accessor for LostModeRecord);
      v87 = sub_1000136BC(v84, v86, &v381);

      *(v81 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "updateLostModeServer for beacon %{private,mask.hash}s", v81, 0x16u);
      sub_100007BAC(v82);

      v62 = v80;
      v64 = v369;
    }

    else
    {

      sub_1008B9FC0(v53, type metadata accessor for LostModeRecord);
    }

    v102 = v372;
    sub_1008B9F58(v62 + *(v362 + 24), v47, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v142 = *v47;
        v129 = v47[1];
        v140 = v47[3];
        v369 = v47[2];
        v121 = v47[5];
        v374 = v47[4];
        v138 = sub_100D5F668();
        if (v139 >> 60 == 15)
        {

LABEL_93:
          static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          sub_10025ED18();
          v109 = swift_allocError();
          *v335 = 0;
          goto LABEL_96;
        }

LABEL_64:
        v254 = v138;
        v113 = v139;
        v362 = v142;
        (*(v102 + 16))(v342, v64, v371);
        v255 = sub_100313B54(v254, v113);
        v102 = v256;
        v257 = Data.hexString.getter();
        v359 = v258;
        sub_100016590(v255, v102);
        v259 = v113 >> 62;
        v336 = v62;
        v367 = v121;
        v368 = v129;
        v363 = v140;
        v360 = v257;
        if ((v113 >> 62) > 1)
        {
          if (v259 != 2)
          {
LABEL_89:
            v293 = Data.subdata(in:)();
            v295 = v294;
            v296 = Data.hexString.getter();
            v358 = v113;
            v297 = v296;
            v299 = v298;
            sub_100016590(v293, v295);
            v300 = (v373 + *(v364 + 36));
            v301 = *v300;
            v302 = v300[1];
            v303 = (v373 + *(v364 + 28));
            v304 = *v303;
            v305 = v303[1];
            v306 = (v373 + *(v364 + 32));
            v373 = v254;
            v308 = *v306;
            v307 = v306[1];
            v309 = v339;
            (*(v372 + 32))(v339, v342, v371);
            v310 = v338;
            v311 = (v309 + *(v338 + 20));
            v312 = v363;
            *v311 = v369;
            v311[1] = v312;
            v313 = (v309 + v310[6]);
            v314 = v368;
            *v313 = v362;
            v313[1] = v314;
            v315 = (v309 + v310[7]);
            v316 = v367;
            *v315 = v374;
            v315[1] = v316;
            v317 = (v309 + v310[8]);
            v318 = v359;
            *v317 = v360;
            v317[1] = v318;
            v319 = (v309 + v310[9]);
            *v319 = v297;
            v319[1] = v299;
            *(v309 + v310[10]) = xmmword_1013C2550;
            v320 = (v309 + v310[11]);
            *v320 = v301;
            v320[1] = v302;
            v321 = (v309 + v310[12]);
            *v321 = v304;
            v321[1] = v305;
            v322 = (v309 + v310[13]);
            *v322 = v308;
            v322[1] = v307;
            v323 = (v309 + v310[14]);
            *v323 = 0x746C7561666564;
            v323[1] = 0xE700000000000000;
            *(v309 + v310[15]) = v361 & 1;

            sub_100F00C24(v309);
            if (v324)
            {
              v327 = v324;
              v328 = v325;
              v329 = v326;
              v330 = sub_1008B4D8C(0);
              sub_1008B46BC(v327, v328, v329, v330);

              v331 = swift_allocObject();
              v333 = v365;
              v332 = v366;
              *(v331 + 16) = v365;
              *(v331 + 24) = v332;

              Future.addFailure(block:)();

              v334 = swift_allocObject();
              v334[2] = v370;
              v334[3] = v333;
              v334[4] = v332;

              Future.addSuccess(block:)();

              sub_100165328(v327, v328, v329);
              sub_100006654(v373, v358);
LABEL_91:
              v248 = type metadata accessor for OwnedBeaconRecord;
              v249 = v336;
              return sub_1008B9FC0(v249, v248);
            }

            sub_100006654(v373, v358);
            v62 = v336;
            goto LABEL_93;
          }

          v291 = *(v254 + 16);
          v290 = *(v254 + 24);
          v252 = __OFSUB__(v290, v291);
          v292 = v290 - v291;
          if (!v252)
          {
LABEL_87:
            if (v292 < -1)
            {
              __break(1u);
            }

            goto LABEL_89;
          }

          __break(1u);
        }

        else if (!v259)
        {
          goto LABEL_89;
        }

        LODWORD(v292) = HIDWORD(v254) - v254;
        if (__OFSUB__(HIDWORD(v254), v254))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v292 = v292;
        goto LABEL_87;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v336 = v62;
        v182 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v183 = *(v47 + v182[12] + 8);

        v184 = *(v47 + v182[16] + 8);

        v185 = *(v47 + v182[20] + 8);

        v186 = *(v47 + v182[28] + 8);

        v187 = v350;
        v188 = v47;
        v189 = v371;
        (*(v102 + 32))(v350, v188, v371);
        v191 = *(v102 + 16);
        v102 += 16;
        v190 = v191;
        (v191)(v349, v187, v189);
        v192 = (v373 + *(v364 + 36));
        v194 = *v192;
        v193 = v192[1];
        v195 = *(v364 + 32);
        v196 = (v373 + *(v364 + 28));
        v197 = v196[1];
        v369 = *v196;
        v198 = *(v373 + v195 + 8);
        v373 = *(v373 + v195);

        v199 = sub_100907E70(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v381 = v199;
        sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
        v113 = v381;
        v201 = [objc_opt_self() currentDevice];
        if (!v201)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v202 = v201;
        v364 = v194;
        v367 = v193;
        v368 = v190;
        v203 = [v201 serverFriendlyDescription];

        if (!v203)
        {
LABEL_105:
          __break(1u);
LABEL_106:

          (*v360)(v113, v102);

          __break(1u);
          return result;
        }

        v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v205;

        v207 = swift_isUniquelyReferenced_nonNull_native();
        *&v381 = v113;
        sub_100FFACA0(v204, v206, 0xD000000000000011, 0x800000010134EA40, v207);
        v208 = v381;
        v209 = v343;
        Date.init()();
        v210 = Date.epoch.getter();
        (*(v344 + 8))(v209, v345);
        *&v381 = v210;
        v211 = dispatch thunk of CustomStringConvertible.description.getter();
        v213 = v212;
        v214 = swift_isUniquelyReferenced_nonNull_native();
        *&v381 = v208;
        sub_100FFACA0(v211, v213, 0xD000000000000015, 0x800000010134EA60, v214);
        v215 = v381;
        *&v381 = 1;
        v216 = dispatch thunk of CustomStringConvertible.description.getter();
        v218 = v217;
        v219 = swift_isUniquelyReferenced_nonNull_native();
        *&v381 = v215;
        sub_100FFACA0(v216, v218, 0xD000000000000013, 0x800000010134EA80, v219);
        v220 = v381;
        v221 = sub_1008D9A78();
        v223 = v222;
        v224 = swift_isUniquelyReferenced_nonNull_native();
        *&v381 = v220;
        sub_100FFACA0(v221, v223, 0x6567412D72657355, 0xEA0000000000746ELL, v224);
        v363 = v381;
        v225 = v347;
        v226 = v349;
        v227 = v371;
        (v368)(v347, v349, v371);
        v228 = v346;
        *(v225 + *(v346 + 20)) = xmmword_1013C2550;
        v229 = (v225 + v228[6]);
        v230 = v367;
        *v229 = v364;
        v229[1] = v230;
        v231 = (v225 + v228[7]);
        *v231 = v369;
        v231[1] = v197;
        v232 = (v225 + v228[8]);
        *v232 = v373;
        v232[1] = v198;
        *(v225 + v228[9]) = v361 & 1;
        v233 = type metadata accessor for JSONEncoder();
        v234 = *(v233 + 48);
        v235 = *(v233 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        sub_1008BA074(&qword_1016ACEF8, type metadata accessor for AccessoryLostModeRequestContent);
        v236 = v374;
        v237 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v236)
        {

          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v239 = swift_allocObject();
          *(v239 + 16) = xmmword_101385D80;
          sub_1008B9F58(v225, v340, type metadata accessor for AccessoryLostModeRequestContent);
          v240 = String.init<A>(describing:)();
          v241 = v226;
          v243 = v242;
          *(v239 + 56) = &type metadata for String;
          *(v239 + 64) = sub_100008C00();
          *(v239 + 32) = v240;
          *(v239 + 40) = v243;
          sub_10039722C();
          v244 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          sub_1008B9FC0(v225, type metadata accessor for AccessoryLostModeRequestContent);
          v245 = *(v372 + 8);
          v245(v241, v227);

          static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          sub_10025ED18();
          swift_allocError();
          *v246 = 0;
          v365();

          v245(v350, v227);
        }

        else
        {
          v260 = v237;
          v261 = v238;

          sub_1008B9FC0(v225, type metadata accessor for AccessoryLostModeRequestContent);
          v374 = *(v372 + 8);
          (v374)(v226, v227);
          v262 = v363;

          sub_100017D5C(v260, v261);

          sub_100016590(v260, v261);
          if (sub_100E0EA64(*(v336 + *(v362 + 64)), *(v336 + *(v362 + 68))))
          {
            v263 = 2;
          }

          else
          {
            v263 = 1;
          }

          v264 = sub_1008B4D8C(v263);
          sub_1008B4354(v262, v260, v261, v264);

          v265 = swift_allocObject();
          v267 = v365;
          v266 = v366;
          *(v265 + 16) = v365;
          *(v265 + 24) = v266;

          Future.addFailure(block:)();

          v268 = swift_allocObject();
          v268[2] = v370;
          v268[3] = v267;
          v268[4] = v266;

          Future.addSuccess(block:)();

          sub_100016590(v260, v261);
          (v374)(v350, v371);
        }

        goto LABEL_91;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v104 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v105 = *(v47 + v104[12] + 8);

        v106 = *(v47 + v104[16] + 8);

        v107 = *(v47 + v104[20] + 8);

        sub_1008B3F98();
        swift_allocError();
        *v108 = 7;
        v365();

        sub_1008B9FC0(v62, type metadata accessor for OwnedBeaconRecord);
        return (*(v102 + 8))(v47, v371);
      }
    }

    sub_1008B9FC0(v47, type metadata accessor for StableIdentifier);
    sub_1008B3F98();
    v109 = swift_allocError();
    *v110 = 7;
LABEL_96:
    (v365)(v109);

    v248 = type metadata accessor for OwnedBeaconRecord;
    v249 = v62;
    return sub_1008B9FC0(v249, v248);
  }

  sub_10000B3A8(v57, &unk_1016A9A20, &qword_10138B280);
  sub_100AC53EC(v64, v22);
  if ((v358[6])(v22, 1, v359) != 1)
  {
    sub_1008BA1A0(v22, v363, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694A30 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    v89 = sub_1000076D4(v88, qword_10177B570);
    v90 = v353;
    sub_1008B9F58(v373, v353, type metadata accessor for LostModeRecord);
    v356 = v89;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v372;
    if (v93)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v381 = v96;
      *v95 = 141558275;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      v97 = *(v364 + 24);
      sub_1008BA074(&qword_101696930, &type metadata accessor for UUID);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      sub_1008B9FC0(v90, type metadata accessor for LostModeRecord);
      v101 = sub_1000136BC(v98, v100, &v381);

      *(v95 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v91, v92, "updateLostModeServer for group %{private,mask.hash}s", v95, 0x16u);
      sub_100007BAC(v96);
    }

    else
    {

      sub_1008B9FC0(v90, type metadata accessor for LostModeRecord);
    }

    v143 = v369;
    v144 = sub_100519FB0();
    v145 = v144 + 56;
    v146 = 1 << *(v144 + 32);
    v147 = -1;
    if (v146 < 64)
    {
      v147 = ~(-1 << v146);
    }

    v62 = v147 & *(v144 + 56);
    v47 = ((v146 + 63) >> 6);
    v359 = v94 + 16;
    v360 = (v94 + 8);
    v53 = (v357 + 48);
    v362 = v144;

    v148 = 0;
    v358 = _swiftEmptyArrayStorage;
LABEL_30:
    v64 = v371;
    v149 = v148;
    if (!v62)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v148 = v149;
LABEL_35:
      (*(v94 + 16))(v143, *(v362 + 48) + *(v94 + 72) * (__clz(__rbit64(v62)) | (v148 << 6)), v64);
      v113 = v143;
      v150 = v368;
      v102 = v64;
      v151 = v374;
      sub_1008B28B8(v113, v370, v368);
      v374 = v151;
      if (v151)
      {
        goto LABEL_106;
      }

      v62 &= v62 - 1;
      (*v360)(v113, v102);
      if ((*v53)(v150, 1, v367) != 1)
      {
        v152 = v150;
        v153 = v337;
        sub_1008BA1A0(v152, v337, type metadata accessor for AirPodsLostModeContent.Device);
        sub_1008BA1A0(v153, v341, type metadata accessor for AirPodsLostModeContent.Device);
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v372;
        if ((v154 & 1) == 0)
        {
          v358 = sub_100A5D240(0, v358[2] + 1, 1, v358);
        }

        v143 = v369;
        v156 = v358[2];
        v155 = v358[3];
        if (v156 >= v155 >> 1)
        {
          v358 = sub_100A5D240(v155 > 1, v156 + 1, 1, v358);
        }

        v157 = v357;
        v158 = v358;
        v358[2] = v156 + 1;
        sub_1008BA1A0(v341, v158 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v156, type metadata accessor for AirPodsLostModeContent.Device);
        goto LABEL_30;
      }

      v64 = v102;
      sub_10000B3A8(v150, &qword_1016ACED0, &qword_1013C2560);
      v149 = v148;
      v94 = v372;
      v143 = v369;
      if (!v62)
      {
        while (1)
        {
LABEL_32:
          v148 = v149 + 1;
          if (__OFADD__(v149, 1))
          {
            __break(1u);
            goto LABEL_99;
          }

          if (v148 >= v47)
          {
            break;
          }

          v62 = *(v145 + 8 * v148);
          ++v149;
          if (v62)
          {
            goto LABEL_35;
          }
        }

        v159 = *(v373 + *(v364 + 36));
        v160 = *(v373 + *(v364 + 28));
        v161 = (v373 + *(v364 + 32));
        v163 = *v161;
        v162 = v161[1];
        v378[0] = xmmword_1013C2550;
        v378[1] = v159;
        v378[2] = v160;
        *&v379 = v163;
        *(&v379 + 1) = v162;
        LOBYTE(v380) = v361 & 1;
        *(&v380 + 1) = v358;
        v381 = xmmword_1013C2550;
        v382 = v159;
        v383 = v160;
        v384 = v379;
        v385 = v380;

        sub_1008B53FC(v378, v377);
        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.info.getter();
        sub_1008B5458(v378);
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v376 = v167;
          *v166 = 136315138;
          v377[3] = v384;
          v377[4] = v385;
          v377[1] = v382;
          v377[2] = v383;
          v377[0] = v381;
          sub_1008B53FC(v378, &v375);
          v168 = String.init<A>(describing:)();
          v170 = sub_1000136BC(v168, v169, &v376);

          *(v166 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v164, v165, "AirPodsLostModeContent: %s", v166, 0xCu);
          sub_100007BAC(v167);
        }

        sub_100DE40D4(&v381);
        if (v171)
        {
          v174 = v171;
          v175 = v172;
          v176 = v173;
          v177 = sub_1008B4D8C(2u);
          sub_1008B3FEC(v174, v175, v176, v177);

          v178 = swift_allocObject();
          v180 = v365;
          v179 = v366;
          *(v178 + 16) = v365;
          *(v178 + 24) = v179;

          Future.addFailure(block:)();

          v181 = swift_allocObject();
          v181[2] = v370;
          v181[3] = v180;
          v181[4] = v179;

          Future.addSuccess(block:)();

          sub_100165328(v174, v175, v176);
        }

        else
        {
          static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          sub_10025ED18();
          swift_allocError();
          *v247 = 0;
          v365();
        }

        v248 = type metadata accessor for OwnedBeaconGroup;
        v249 = v363;
        return sub_1008B9FC0(v249, v248);
      }
    }
  }

  sub_10000B3A8(v22, &unk_1016AF8B0, &unk_1013A0700);
  sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
  v66 = unsafeFromAsyncTask<A>(_:)();
  v67 = v381;
  __chkstk_darwin(v66);
  *(&v336 - 2) = v64;
  v68 = v355;
  sub_1012BC6C4(sub_1008B3F78, v67, v355);

  v69 = v356;
  if ((*(v354 + 48))(v68, 1, v356) != 1)
  {
    v111 = v351;
    sub_1008BA1A0(v68, v351, type metadata accessor for LocalFindableAccessoryRecord);
    v112 = (v373 + *(v364 + 36));
    v113 = v112[1];
    v369 = *v112;
    v114 = *(v364 + 32);
    v115 = (v373 + *(v364 + 28));
    v116 = *v115;
    v374 = v115[1];
    v117 = v373 + v114;
    v118 = *(v373 + v114);
    v119 = *(v117 + 8);
    v367 = v116;
    v368 = v118;
    sub_1000BC4D4(&qword_1016ACEE8, &qword_1013C2568);
    v120 = *(v357 + 72);
    v363 = (*(v357 + 80) + 32) & ~*(v357 + 80);
    v364 = swift_allocObject();
    *(v364 + 16) = xmmword_101385D80;
    v121 = sub_1000BC4D4(&qword_1016ACEF0, &qword_1013C2570);
    v122 = v121[12];
    v123 = (v111 + v69[7]);
    v124 = *v123;
    v102 = v123[1];
    v125 = v352;
    *v352 = *v123;
    v125[1] = v102;
    (*(v372 + 16))(v125 + v122, v111 + v69[9], v371);
    v126 = v69[11];
    v127 = *(v111 + v69[10]);
    v128 = *(v111 + v126);
    v372 = v119;
    v129 = v374;

    v373 = v113;

    sub_100017D5C(v124, v102);
    v130 = sub_100314604(v127, v128);
    if (v131 >> 60 == 15)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v132 = (v125 + v121[16]);
    v133 = v130;
    v134 = v131;
    v113 = sub_100313B54(v130, v131);
    v64 = v135;
    sub_100006654(v133, v134);
    v136 = Data.hexString.getter();
    v102 = v137;
    sub_100016590(v113, v64);
    *v132 = v136;
    v132[1] = v102;
    v138 = sub_100314604(v127, v128);
    if (v139 >> 60 == 15)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v140 = v138;
    v62 = v139;
    v141 = v139 >> 62;
    v142 = v370;
    if ((v139 >> 62) <= 1)
    {
      v102 = v352;
      if (!v141)
      {
        goto LABEL_75;
      }

      LODWORD(v253) = HIDWORD(v138) - v138;
      if (!__OFSUB__(HIDWORD(v138), v138))
      {
        v253 = v253;
        goto LABEL_73;
      }

      __break(1u);
      goto LABEL_101;
    }

    v102 = v352;
    if (v141 != 2)
    {
LABEL_75:
      v269 = (v102 + v121[20]);
      v270 = Data.subdata(in:)();
      v272 = v271;
      sub_100006654(v140, v62);
      v273 = Data.hexString.getter();
      v275 = v274;
      sub_100016590(v270, v272);
      *v269 = v273;
      v269[1] = v275;
      swift_storeEnumTagMultiPayload();
      v276 = v364;
      sub_100DE3528(v102, v364 + v363);
      *&v277 = v367;
      *(&v277 + 1) = v129;
      v383 = v277;
      *&v277 = v369;
      *(&v277 + 1) = v373;
      v381 = xmmword_1013C2550;
      v382 = v277;
      *&v384 = v368;
      *(&v384 + 1) = v372;
      LOBYTE(v385) = v361 & 1;
      *(&v385 + 1) = v378[0];
      DWORD1(v385) = *(v378 + 3);
      *(&v385 + 1) = v276;
      sub_100DE40D4(&v381);
      if (v278)
      {
        v281 = v278;
        v282 = v279;
        v283 = v280;
        v284 = sub_1008B4D8C(3u);
        sub_1008B3FEC(v281, v282, v283, v284);

        v285 = swift_allocObject();
        v287 = v365;
        v286 = v366;
        *(v285 + 16) = v365;
        *(v285 + 24) = v286;

        Future.addFailure(block:)();

        v288 = swift_allocObject();
        v288[2] = v142;
        v288[3] = v287;
        v288[4] = v286;

        Future.addSuccess(block:)();

        sub_100165328(v281, v282, v283);
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1016950A0 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        sub_10025ED18();
        swift_allocError();
        *v289 = 0;
        v365();
      }

      v248 = type metadata accessor for LocalFindableAccessoryRecord;
      v249 = v351;
      return sub_1008B9FC0(v249, v248);
    }

    v251 = *(v138 + 16);
    v250 = *(v138 + 24);
    v252 = __OFSUB__(v250, v251);
    v253 = v250 - v251;
    if (!v252)
    {
LABEL_73:
      if (v253 < -1)
      {
        __break(1u);
      }

      goto LABEL_75;
    }

    __break(1u);
    goto LABEL_64;
  }

  sub_10000B3A8(v68, &qword_1016A9A30, &unk_1013BD120);
  static os_log_type_t.error.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_101385D80;
  v71 = UUID.uuidString.getter();
  v73 = v72;
  *(v70 + 56) = &type metadata for String;
  *(v70 + 64) = sub_100008C00();
  *(v70 + 32) = v71;
  *(v70 + 40) = v73;
  os_log(_:dso:log:_:_:)();

  sub_1008B3F98();
  swift_allocError();
  *v74 = 1;
  v365();
}

void sub_1008B237C(char a1, NSObject *a2)
{
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  os_log(_:dso:log:_:_:)();

  dispatch_group_leave(a2);
}

uint64_t sub_1008B2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for LostModeRecord();
  v15 = (a1 + v14[8]);
  v16 = v15[1];

  *v15 = a2;
  v15[1] = a3;
  v17 = (a1 + v14[9]);
  v18 = v17[1];

  *v17 = a4;
  v17[1] = a5;
  v19 = (a1 + v14[7]);
  v20 = v19[1];

  *v19 = a6;
  v19[1] = a7;
  return result;
}

void sub_1008B2554(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1008BA6D8(a1, v5);
  dispatch_group_leave(a3);
}

uint64_t sub_1008B25B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeRecord();
  v5 = v4[8];
  v7 = *(a2 + v5);
  v6 = *(a2 + v5 + 8);
  v8 = (a1 + v5);
  v9 = *(a1 + v5 + 8);

  *v8 = v7;
  v8[1] = v6;
  v10 = v4[9];
  v12 = *(a2 + v10);
  v11 = *(a2 + v10 + 8);
  v13 = (a1 + v10);
  v14 = *(a1 + v10 + 8);

  *v13 = v12;
  v13[1] = v11;
  v15 = v4[7];
  v17 = *(a2 + v15);
  v16 = *(a2 + v15 + 8);
  v18 = (a1 + v15);
  v19 = *(a1 + v15 + 8);

  *v18 = v17;
  v18[1] = v16;
  return result;
}

void sub_1008B2678(uint64_t a1, NSObject *a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v13 - v6);
  sub_1008BA218(a1, v13 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    v13[1] = v8;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10000B3A8(v7, &qword_1016B1840, &qword_1013B68F0);
    static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1008B28B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  v6 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v128 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v132 = *(v8 - 8);
  v133 = v8;
  v9 = *(v132 + 64);
  v10 = __chkstk_darwin(v8);
  v131 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v116 - v12;
  v13 = type metadata accessor for StableIdentifier();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v116 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 280);
  sub_100AA33AC(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016A9A20, &qword_10138B280);
    v27 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v28 = *(*(v27 - 8) + 56);
    v29 = a3;
    return v28(v29, 1, 1, v27);
  }

  v127 = a3;
  sub_1008BA1A0(v20, v25, type metadata accessor for OwnedBeaconRecord);
  v31 = sub_100314604(*&v25[v21[16]], *&v25[v21[17]]);
  v33 = v31;
  v34 = v32;
  if (v32 >> 60 == 15)
  {
    v123 = 0;
    v124 = 0;
    v126 = 0;
    v35 = 0;
    goto LABEL_18;
  }

  sub_100017D5C(v31, v32);
  v36 = sub_100313B54(v33, v34);
  v38 = v37;
  sub_100006654(v33, v34);
  v124 = Data.hexString.getter();
  v35 = v39;
  result = sub_100016590(v36, v38);
  v40 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v40 != 2)
    {
LABEL_17:
      v44 = Data.subdata(in:)();
      v46 = v45;
      sub_100006654(v33, v34);
      v123 = Data.hexString.getter();
      v126 = v47;
      sub_100016590(v44, v46);
LABEL_18:
      sub_1008B9F58(&v25[v21[6]], v16, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 2)
        {
          sub_1008B9FC0(v25, type metadata accessor for OwnedBeaconRecord);
          sub_100006654(v33, v34);

          v76 = type metadata accessor for AirPodsLostModeContent.Device(0);
          (*(*(v76 - 8) + 56))(v127, 1, 1, v76);
          return sub_1008B9FC0(v16, type metadata accessor for StableIdentifier);
        }

        v125 = v35;
        v49 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v50 = &v16[v49[12]];
        v51 = *v50;
        v131 = *(v50 + 1);
        v52 = &v16[v49[16]];
        v53 = *(v52 + 1);
        v119 = *v52;
        v120 = v51;
        v54 = &v16[v49[20]];
        v56 = *v54;
        v55 = *(v54 + 1);
        v57 = *&v16[v49[28] + 8];

        v58 = v132;
        v59 = v130;
        v60 = v16;
        v61 = v133;
        v121 = *(v132 + 32);
        v122 = v132 + 32;
        v121(v130, v60, v133);
        v134 = v56;
        v135 = v55;
        sub_1000DF96C();
        v62 = Data.init<A>(hexString:)();
        if (v63 >> 60 == 15)
        {

          sub_100006654(v33, v34);
          (*(v58 + 8))(v59, v61);
          sub_1008B9FC0(v25, type metadata accessor for OwnedBeaconRecord);
          v27 = type metadata accessor for AirPodsLostModeContent.Device(0);
          v28 = *(*(v27 - 8) + 56);
          v29 = v127;
          return v28(v29, 1, 1, v27);
        }

        v77 = v63;
        v78 = v131;
        v79 = v62;
        if (v53)
        {
          v134 = v119;
          v135 = v53;
          v132 = Data.init<A>(hexString:)();
          v119 = v80;
          v81 = v133;
          if (v78)
          {
LABEL_27:
            v134 = v120;
            v135 = v78;
            v82 = Data.init<A>(hexString:)();
            v84 = v83;
            sub_100006654(v33, v34);
            sub_1008B9FC0(v25, type metadata accessor for OwnedBeaconRecord);
LABEL_36:
            v96 = sub_1000BC4D4(&qword_1016ACF10, &qword_1013E9420);
            v97 = v96[20];
            v98 = v128;
            v99 = (v128 + v96[24]);
            v100 = (v128 + v96[28]);
            v101 = v119;
            *v128 = v132;
            *(v98 + 1) = v101;
            *(v98 + 2) = v82;
            *(v98 + 3) = v84;
            *(v98 + 4) = v79;
            *(v98 + 5) = v77;
            v121(&v98[v97], v130, v81);
            v102 = v125;
            *v99 = v124;
            v99[1] = v102;
            v103 = v126;
            *v100 = v123;
            v100[1] = v103;
            swift_storeEnumTagMultiPayload();
            v104 = v127;
            v105 = v127;
            v106 = v98;
LABEL_37:
            sub_100DE3528(v106, v105);
            v107 = type metadata accessor for AirPodsLostModeContent.Device(0);
            return (*(*(v107 - 8) + 56))(v104, 0, 1, v107);
          }
        }

        else
        {
          v132 = 0;
          v119 = 0xF000000000000000;
          v81 = v133;
          if (v131)
          {
            goto LABEL_27;
          }
        }

        sub_100006654(v33, v34);
        sub_1008B9FC0(v25, type metadata accessor for OwnedBeaconRecord);
        v82 = 0;
        v84 = 0xF000000000000000;
        goto LABEL_36;
      }

      v125 = v35;
      v64 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v65 = &v16[v64[12]];
      v66 = *v65;
      v130 = *(v65 + 1);
      v67 = &v16[v64[16]];
      v69 = *v67;
      v68 = *(v67 + 1);
      v70 = &v16[v64[20]];
      v71 = *(v70 + 1);
      v121 = *v70;
      v122 = v66;
      v72 = v132;
      v73 = v133;
      v119 = *(v132 + 32);
      v120 = v132 + 32;
      v119(v131, v16, v133);
      v134 = v69;
      v135 = v68;
      sub_1000DF96C();
      v74 = Data.init<A>(hexString:)();
      if (v75 >> 60 == 15)
      {

        sub_100006654(v33, v34);
        (*(v72 + 8))(v131, v73);
      }

      else
      {
        v117 = v74;
        v118 = v75;
        v134 = v122;
        v135 = v130;
        v85 = Data.init<A>(hexString:)();
        if (v86 >> 60 != 15)
        {
          v89 = v85;
          v90 = v86;
          v134 = v121;
          v135 = v71;
          v91 = Data.init<A>(hexString:)();
          v93 = v92;
          sub_100006654(v33, v34);
          sub_1008B9FC0(v25, type metadata accessor for OwnedBeaconRecord);
          v94 = v131;
          v95 = v125;
          if (v93 >> 60 != 15)
          {
            v108 = sub_1000BC4D4(&qword_1016ACF10, &qword_1013E9420);
            v109 = v108[20];
            v110 = v128;
            v111 = (v128 + v108[24]);
            v112 = (v128 + v108[28]);
            v113 = v118;
            *v128 = v117;
            *(v110 + 1) = v113;
            *(v110 + 2) = v89;
            *(v110 + 3) = v90;
            *(v110 + 4) = v91;
            *(v110 + 5) = v93;
            v119(&v110[v109], v94, v133);
            v114 = v123;
            *v111 = v124;
            v111[1] = v95;
            v115 = v126;
            *v112 = v114;
            v112[1] = v115;
            swift_storeEnumTagMultiPayload();
            v104 = v127;
            v105 = v127;
            v106 = v110;
            goto LABEL_37;
          }

          (*(v132 + 8))(v131, v133);
          sub_100006654(v117, v118);
          sub_100006654(v89, v90);

LABEL_31:
          v87 = v127;
          v88 = type metadata accessor for AirPodsLostModeContent.Device(0);
          return (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
        }

        sub_100006654(v117, v118);

        sub_100006654(v33, v34);
        (*(v132 + 8))(v131, v133);
      }

      sub_1008B9FC0(v25, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_31;
    }

    v42 = *(v33 + 16);
    v41 = *(v33 + 24);
    v43 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
LABEL_15:
      sub_100017D5C(v33, v34);
      if (v43 < -1)
      {
        __break(1u);
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v40)
  {
    goto LABEL_17;
  }

  if (!__OFSUB__(HIDWORD(v33), v33))
  {
    v43 = HIDWORD(v33) - v33;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B3384(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  return a2(a1);
}

uint64_t sub_1008B34C4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v4 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = v33 - v6;
  v7 = type metadata accessor for ServerStatusCode();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v33[3] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LostModeResponse();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v35 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v33 - v14;
  static os_log_type_t.debug.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  v34 = xmmword_101385D80;
  *(v17 + 16) = xmmword_101385D80;
  v18 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v33[1] = sub_1008BA074(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
  v33[2] = v18;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  *(v17 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v17 + 64) = v22;
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v39 = v16;
  os_log(_:dso:log:_:_:)();

  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v26 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v28 = v27;
  sub_1008BA074(&qword_1016ACF18, type metadata accessor for LostModeResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v26, v28);
  static os_log_type_t.default.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v34;
  sub_1008B9F58(v15, v35, type metadata accessor for LostModeResponse);
  v30 = String.init<A>(describing:)();
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = v22;
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  sub_1008B98F0(v15, v40);

  return sub_1008B9FC0(v15, type metadata accessor for LostModeResponse);
}

uint64_t sub_1008B3A5C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v11 = *(a4 + 280);
    v12 = swift_allocObject();
    v12[2] = a4;
    v12[3] = a2;
    v12[4] = a3;

    sub_1008B3C38(a5, sub_1008BA0BC, v12);
  }
}

uint64_t sub_1008B3BB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    a3(a1);
  }

  else
  {
    v6 = *(a2 + 280);
    sub_100A8306C(12);
    return (a3)(0);
  }
}

uint64_t sub_1008B3C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LostModeRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  sub_1008B9F58(a1, v10, type metadata accessor for LostModeRecord);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  sub_100B156CC(a1, v3, sub_1008BA0C8, v11);
}

uint64_t sub_1008B3E10(char a1, void (*a2)(void))
{
  if (a1)
  {
    static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return (a2)(0);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v4 = 6;
    a2();
  }
}

unint64_t sub_1008B3F98()
{
  result = qword_1016ACEE0;
  if (!qword_1016ACEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACEE0);
  }

  return result;
}

uint64_t sub_1008B3FEC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29[-1] - v11;
  v31[3] = &type metadata for AirPodsLostModeRequest;
  v13 = sub_1008BA020();
  v31[0] = a1;
  v31[1] = a2;
  v31[4] = v13;
  v31[2] = a3;
  v14 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a4 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013C2580, v17);

  v18 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Future.init()();
  v22 = qword_1016A2650;
  v23 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v22, v30);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  sub_10000A748(v30, v24 + 24);
  *(v24 + 64) = v23;

  sub_1004EAA98(v31, v29);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1008BA890;
  *(v26 + 24) = v24;
  *(v26 + 32) = 0;
  *(v26 + 40) = v25;
  *(v26 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v31);
  return v21;
}

uint64_t sub_1008B4354(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29[-1] - v11;
  v31[3] = &type metadata for AccessoryLostModeRequest;
  v13 = sub_1008B5514();
  v31[0] = a1;
  v31[1] = a2;
  v31[4] = v13;
  v31[2] = a3;
  v14 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a4 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013C2578, v17);

  v18 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Future.init()();
  v22 = qword_1016A2650;
  v23 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v22, v30);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  sub_10000A748(v30, v24 + 24);
  *(v24 + 64) = v23;

  sub_1004EAA98(v31, v29);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1008BA890;
  *(v26 + 24) = v24;
  *(v26 + 32) = 0;
  *(v26 + 40) = v25;
  *(v26 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v31);
  return v21;
}

uint64_t sub_1008B46BC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29[-1] - v11;
  v31[3] = &type metadata for LostModeRequest;
  v13 = sub_1008B54AC();
  v31[0] = a1;
  v31[1] = a2;
  v31[4] = v13;
  v31[2] = a3;
  v14 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a4 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AB550, v17);

  v18 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Future.init()();
  v22 = qword_1016A2650;
  v23 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v22, v30);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  sub_10000A748(v30, v24 + 24);
  *(v24 + 64) = v23;

  sub_1004EAA98(v31, v29);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1008B5500;
  *(v26 + 24) = v24;
  *(v26 + 32) = 0;
  *(v26 + 40) = v25;
  *(v26 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v31);
  return v21;
}

uint64_t sub_1008B4A24(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29[-1] - v11;
  v31[3] = &type metadata for ConfigurationRequest;
  v13 = sub_1008BA0D0();
  v31[0] = a1;
  v31[1] = a2;
  v31[4] = v13;
  v31[2] = a3;
  v14 = *(a4 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a4 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013C2588, v17);

  v18 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Future.init()();
  v22 = qword_1016A2650;
  v23 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4 + v22, v30);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  sub_10000A748(v30, v24 + 24);
  *(v24 + 64) = v23;

  sub_1004EAA98(v31, v29);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1008BA890;
  *(v26 + 24) = v24;
  *(v26 + 32) = 0;
  *(v26 + 40) = v25;
  *(v26 + 48) = v8;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v31);
  return v21;
}

uint64_t sub_1008B4D8C(unsigned __int8 a1)
{
  v2 = type metadata accessor for URLComponents();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v47 - v13;
  MyAppURLSessionFactory = type metadata accessor for FindMyAppURLSessionFactory(0);
  v16 = *(MyAppURLSessionFactory + 48);
  v17 = *(MyAppURLSessionFactory + 52);
  swift_allocObject();
  v18 = type metadata accessor for FMNMockingPreferences();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v20 = (v7 + 104);
  if (a1 > 1u)
  {
    v21 = type metadata accessor for AirPodsLostModeEndPoint();
    v55 = v21;
    v56 = sub_1008BA074(&qword_1016ACF28, type metadata accessor for AirPodsLostModeEndPoint);
    v22 = sub_1000280DC(v54);
    v23 = &enum case for FMNAccountType.w2Accessory(_:);
    goto LABEL_5;
  }

  if (!a1)
  {
    v21 = type metadata accessor for LostModeEndPoint();
    v55 = v21;
    v56 = sub_1008BA074(&qword_1016ACF38, type metadata accessor for LostModeEndPoint);
    v22 = sub_1000280DC(v54);
    v23 = &enum case for FMNAccountType.searchParty(_:);
LABEL_5:
    v24 = *v23;
    v25 = *v20;
    (*v20)(v10, v24, v6);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();

    *v22 = sub_1010B32C8(v10);
    v25(v22 + *(v21 + 20), v24, v6);
    goto LABEL_7;
  }

  v55 = type metadata accessor for AccessoryLostModeEndPoint();
  v56 = sub_1008BA074(&qword_1016ACF30, type metadata accessor for AccessoryLostModeEndPoint);
  v26 = sub_1000280DC(v54);
  (*v20)(v26, enum case for FMNAccountType.accessory(_:), v6);

LABEL_7:
  if (qword_101694A30 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177B570);
  sub_10001F280(v54, v51);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v50 = v31;
    *v30 = 141558275;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_1000035D0(v51, v52);
    dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
    sub_1008BA074(&qword_1016A2770, &type metadata accessor for URLComponents);
    v32 = v49;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v48 + 8))(v5, v32);
    sub_100007BAC(v51);
    v36 = sub_1000136BC(v33, v35, &v50);

    *(v30 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Lost Mode endpoint: %{private,mask.hash}s", v30, 0x16u);
    sub_100007BAC(v31);
  }

  else
  {

    sub_100007BAC(v51);
  }

  v37 = type metadata accessor for ServerInteractionController(0);
  sub_10001F280(v54, v51);
  v38 = v52;
  v39 = v53;
  v40 = sub_10015049C(v51, v52);
  v41 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = &v47 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v43);
  v45 = sub_1004EB11C(v43, v19, v37, v38, v39);

  sub_100007BAC(v51);
  sub_100007BAC(v54);
  return v45;
}

unint64_t sub_1008B54AC()
{
  result = qword_1016ACF00;
  if (!qword_1016ACF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF00);
  }

  return result;
}

unint64_t sub_1008B5514()
{
  result = qword_1016ACF08;
  if (!qword_1016ACF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF08);
  }

  return result;
}

uint64_t sub_1008B5568()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1008B55B0(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v39 = a2;
  v4 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for LostModeRecord();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  v10 = __chkstk_darwin(v8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v32 - v11;
  v40 = swift_allocObject();
  *(v40 + 16) = a3;
  v36 = a3;
  _Block_copy(a3);
  static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v32 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  v14 = UUID.uuidString.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 64) = v17;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v33 = v12;
  os_log(_:dso:log:_:_:)();

  v18 = v39;
  v19 = *(v39 + 280);
  sub_100ABD87C(v7);
  v20 = v37;
  if ((*(v37 + 48))(v7, 1, v38) == 1)
  {
    sub_10000B3A8(v7, &unk_1016A99E0, &qword_1013A07B0);
    static os_log_type_t.error.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    v22 = UUID.uuidString.getter();
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = v17;
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    sub_1008B3F98();
    swift_allocError();
    *v24 = 0;
    v25 = _convertErrorToNSError(_:)();
    v36[2](v36, v25);
  }

  else
  {
    v26 = v35;
    sub_1008BA1A0(v7, v35, type metadata accessor for LostModeRecord);
    v27 = v34;
    sub_1008B9F58(v26, v34, type metadata accessor for LostModeRecord);
    v28 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v29 = swift_allocObject();
    v30 = v40;
    v29[2] = sub_10001E370;
    v29[3] = v30;
    v29[4] = v18;
    sub_1008BA1A0(v27, v29 + v28, type metadata accessor for LostModeRecord);

    sub_1008AFE18(v26, 0, sub_1008BA790, v29);

    sub_1008B9FC0(v26, type metadata accessor for LostModeRecord);
  }
}

void sub_1008B59FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8, void (**a9)(void, void))
{
  v118 = a7;
  v110 = a6;
  v111 = a5;
  v112 = a3;
  v107 = a2;
  v12 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v108 = (v94 - v14);
  v15 = type metadata accessor for LostModeRecord();
  v104 = *(v15 - 8);
  v16 = *(v104 + 8);
  v17 = __chkstk_darwin(v15);
  v113 = (v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = v18;
  __chkstk_darwin(v17);
  v20 = v94 - v19;
  static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v114 = a9;
  v21 = qword_10177C3E8;
  v22 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v119 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  sub_1008B9F58(a1, v20, type metadata accessor for LostModeRecord);
  v116 = v20;
  v24 = String.init<A>(describing:)();
  v115 = a1;
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v27 = sub_100008C00();
  *(v23 + 64) = v27;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v109 = v21;
  os_log(_:dso:log:_:_:)();

  v28 = dispatch_group_create();
  dispatch_group_enter(v28);
  v29 = swift_allocBox();
  v31 = v30;
  sub_1008B3F98();
  v32 = swift_allocError();
  *v33 = 8;
  *v31 = v32;
  v105 = v31;
  swift_storeEnumTagMultiPayload();
  v100 = a8;
  v34 = *(a8 + 280);
  v35 = swift_allocObject();
  v36 = v110;
  v37 = v111;
  v35[2] = a4;
  v35[3] = v37;
  v38 = v118;
  v35[4] = v36;
  v35[5] = v38;
  v39 = v112;
  v35[6] = v107;
  v35[7] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v29;
  *(v40 + 24) = v28;
  v103 = v40;

  v112 = v29;

  v106 = v28;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v107 = v12;
  v41 = qword_10177C380;
  v111 = v22;
  v42 = swift_allocObject();
  *(v42 + 16) = v119;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v27;
  v110 = v27;
  *(v42 + 32) = 0x65736C6166;
  *(v42 + 40) = 0xE500000000000000;
  v99 = v41;
  os_log(_:dso:log:_:_:)();

  v43 = objc_autoreleasePoolPush();
  v44 = v115;
  sub_1011217C0(v115);
  v118 = v45;
  objc_autoreleasePoolPop(v43);
  v46 = *(v34 + 184);
  v47 = sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  v48 = type metadata accessor for CloudKitCoordinator();
  v98 = v47;
  v96 = v48;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v95 = 0;
  v49 = v116;
  sub_1008B9F58(v44, v116, type metadata accessor for LostModeRecord);
  v50 = *(v104 + 80);
  v117 = v34;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1008BA174;
  *(v51 + 24) = v35;
  v104 = type metadata accessor for LostModeRecord;
  v97 = (v50 + 32) & ~v50;
  sub_1008BA1A0(v49, v51 + v97, type metadata accessor for LostModeRecord);

  sub_100FDCA40(v118, sub_1008BA208, v51);

  v52 = swift_allocObject();
  v53 = v103;
  *(v52 + 16) = sub_1008BA184;
  *(v52 + 24) = v53;

  Future.addFailure(block:)();

  sub_1008B9F58(v44, v49, type metadata accessor for LostModeRecord);
  v54 = (v50 + 16) & ~v50;
  v55 = v117;
  v94[1] = v54 + v120;
  v56 = ((v54 + v120 + 7) & 0xFFFFFFFFFFFFFFF8);
  v102 = v50;
  v57 = swift_allocObject();
  v101 = v54;
  sub_1008BA1A0(v49, v57 + v54, v104);
  *&v56[v57] = v55;
  v104 = ((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
  v58 = (v104 + v57);
  *v58 = sub_1008BA184;
  v58[1] = v53;

  Future.addSuccess(block:)();

  v59 = v106;
  OS_dispatch_group.wait()();
  v60 = v105;
  swift_beginAccess();
  v61 = v60;
  v62 = v108;
  sub_1008BA218(v61, v108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = *v62;
    static os_log_type_t.error.getter();
    v64 = swift_allocObject();
    *(v64 + 16) = v119;
    v122 = v63;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v65 = String.init<A>(describing:)();
    v66 = v110;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = v66;
    *(v64 + 32) = v65;
    *(v64 + 40) = v67;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    v68 = _convertErrorToNSError(_:)();
    (v114)[2](v114, v68);

LABEL_11:

    return;
  }

  v118 = v56;
  v69 = v113;
  sub_1008BA1A0(v62, v113, type metadata accessor for LostModeRecord);
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  dispatch_group_enter(v59);
  v71 = v59;

  sub_1008B6940(v69, 1, v100, v70, v71, &unk_101639908, &unk_101639A20, sub_100721A80, sub_1008BA8A0, &unk_101639A48, sub_1008BA88C, &unk_1016399D0, sub_1008BA8A0, &unk_1016399F8, sub_1008BA88C, sub_1008BA870, &unk_101639980, sub_1008BA8A0, &unk_1016399A8, sub_1008BA88C, &unk_101639930, sub_1008BA8A0, &unk_101639958, sub_1008BA88C);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  v72 = *(v70 + 16);
  v73 = v110;
  if (!v72)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100A8306C(12);
    v114[2](v114, 0);

    sub_1008B9FC0(v113, type metadata accessor for LostModeRecord);

    goto LABEL_11;
  }

  v108 = v70;
  swift_errorRetain();
  static os_log_type_t.error.getter();
  v74 = swift_allocObject();
  *(v74 + 16) = v119;
  v121 = v72;
  v107 = v72;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v75 = String.init<A>(describing:)();
  *(v74 + 56) = &type metadata for String;
  *(v74 + 64) = v73;
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  os_log(_:dso:log:_:_:)();

  dispatch_group_enter(v71);
  v77 = v116;
  sub_1008B9F58(v115, v116, type metadata accessor for LostModeRecord);
  v78 = swift_allocObject();
  sub_1008BA1A0(v77, v78 + v101, type metadata accessor for LostModeRecord);
  v79 = swift_allocObject();
  *(v79 + 16) = v71;
  v115 = v71;
  static os_log_type_t.default.getter();
  v80 = swift_allocObject();
  *(v80 + 16) = v119;
  *(v80 + 56) = &type metadata for String;
  *(v80 + 64) = v73;
  *(v80 + 32) = 0x65736C6166;
  *(v80 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v81 = objc_autoreleasePoolPush();
  v82 = v113;
  v83 = v95;
  sub_1011217C0(v113);
  *&v119 = v84;
  if (!v83)
  {
    objc_autoreleasePoolPop(v81);
    v85 = *(v117 + 184);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1008B9F58(v82, v77, type metadata accessor for LostModeRecord);
    v86 = v97;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_1008BA288;
    *(v87 + 24) = v78;
    sub_1008BA1A0(v77, v87 + v86, type metadata accessor for LostModeRecord);

    sub_100FDCA40(v119, sub_1008BA898, v87);

    v88 = swift_allocObject();
    *(v88 + 16) = sub_1008BA2F8;
    *(v88 + 24) = v79;

    Future.addFailure(block:)();

    sub_1008B9F58(v82, v77, type metadata accessor for LostModeRecord);
    v89 = v104;
    v90 = swift_allocObject();
    sub_1008BA1A0(v77, v90 + v101, type metadata accessor for LostModeRecord);
    *&v118[v90] = v117;
    v91 = (v89 + v90);
    *v91 = sub_1008BA2F8;
    v91[1] = v79;

    Future.addSuccess(block:)();

    v92 = v115;
    OS_dispatch_group.wait()();
    swift_errorRetain();
    v93 = _convertErrorToNSError(_:)();
    (v114)[2](v114, v93);

    sub_1008B9FC0(v82, type metadata accessor for LostModeRecord);

    goto LABEL_11;
  }

  _Block_release(v114);
  objc_autoreleasePoolPop(v81);
  __break(1u);
}

uint64_t sub_1008B6940(uint64_t a1, int a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(char *), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(void, void))
{
  v404 = a8;
  v384[1] = a7;
  v421 = a6;
  v417 = a5;
  v410 = a2;
  v424 = a1;
  v425 = 0;
  v396 = type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  v26 = *(*(v396 - 8) + 64);
  __chkstk_darwin(v396);
  v399 = (v384 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1000BC4D4(&qword_1016ACED0, &qword_1013C2560);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v419 = v384 - v30;
  v418 = type metadata accessor for AirPodsLostModeContent.Device(0);
  v405 = *(v418 - 8);
  v31 = *(v405 + 64);
  v32 = __chkstk_darwin(v418);
  v389 = v384 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v385 = v384 - v34;
  v35 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v402 = v384 - v37;
  v403 = type metadata accessor for LocalFindableAccessoryRecord();
  v401 = *(v403 - 8);
  v38 = *(v401 + 64);
  __chkstk_darwin(v403);
  v398 = v384 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = type metadata accessor for AccessoryLostModeRequestContent();
  v40 = *(*(v394 - 8) + 64);
  v41 = __chkstk_darwin(v394);
  v388 = v384 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v395 = v384 - v43;
  v44 = type metadata accessor for Date();
  v392 = *(v44 - 8);
  v393 = v44;
  v45 = *(v392 + 64);
  __chkstk_darwin(v44);
  v391 = v384 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = type metadata accessor for LostModeRequestContent();
  v47 = *(*(v386 - 8) + 64);
  __chkstk_darwin(v386);
  v387 = v384 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  v422 = v49;
  v423 = v50;
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v420 = v384 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v390 = v384 - v55;
  v56 = __chkstk_darwin(v54);
  v412 = v384 - v57;
  __chkstk_darwin(v56);
  v397 = v384 - v58;
  v408 = type metadata accessor for StableIdentifier();
  v59 = *(*(v408 - 1) + 64);
  __chkstk_darwin(v408);
  v409 = (v384 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v62 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61 - 8);
  v64 = v384 - v63;
  v406 = type metadata accessor for OwnedBeaconGroup(0);
  v65 = *(v406 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v406);
  v414 = v384 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for LostModeRecord();
  v69 = *(*(v68 - 8) + 64);
  v70 = __chkstk_darwin(v68);
  v400 = v384 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v407 = v384 - v72;
  v73 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v74 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73 - 8);
  v76 = v384 - v75;
  v77 = type metadata accessor for OwnedBeaconRecord();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  v81 = v384 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  v83 = a4;
  *(v82 + 16) = a4;
  v415 = v68;
  v416 = v82;
  v84 = v417;
  *(v82 + 24) = v417;
  v421 = a3;
  v85 = *(a3 + 280);
  v86 = v424 + *(v68 + 24);
  v413 = v83;

  v417 = v84;
  sub_100AA33AC(v86, v76);
  v87 = *(v78 + 48);
  v411 = v77;
  if (v87(v76, 1, v77) != 1)
  {
    v100 = v86;
    sub_1008BA1A0(v76, v81, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694A30 != -1)
    {
LABEL_97:
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_1000076D4(v101, qword_10177B570);
    v102 = v407;
    sub_1008B9F58(v424, v407, type metadata accessor for LostModeRecord);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v432 = v106;
      *v105 = 141558275;
      *(v105 + 4) = 1752392040;
      *(v105 + 12) = 2081;
      v107 = *(v415 + 24);
      sub_1008BA074(&qword_101696930, &type metadata accessor for UUID);
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      sub_1008B9FC0(v102, type metadata accessor for LostModeRecord);
      v111 = sub_1000136BC(v108, v110, &v432);

      *(v105 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v103, v104, "updateLostModeServer for beacon %{private,mask.hash}s", v105, 0x16u);
      sub_100007BAC(v106);
    }

    else
    {

      sub_1008B9FC0(v102, type metadata accessor for LostModeRecord);
    }

    v126 = v423;
    v127 = v409;
    sub_1008B9F58(v81 + *(v411 + 24), v409, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v129 = v412;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v164 = v127[1];
        v425 = *v127;
        v176 = v127[3];
        v283 = v127[4];
        v154 = v127[5];
        v419 = v127[2];
        v420 = v283;
        v172 = sub_100D5F668();
        if (v173 >> 60 == 15)
        {

          v284 = v417;
LABEL_90:
          static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          sub_10025ED18();
          v379 = swift_allocError();
          *v380 = 0;
          v381 = v413;
          swift_beginAccess();
          v382 = *(v381 + 16);
          *(v381 + 16) = v379;
          swift_errorRetain();

          v144 = v284;
          goto LABEL_93;
        }

LABEL_63:
        v293 = v172;
        v145 = v173;
        v412 = v176;
        (*(v126 + 16))(v390, v100, v422);
        v294 = sub_100313B54(v293, v145);
        v296 = v295;
        v126 = Data.hexString.getter();
        v298 = v297;
        sub_100016590(v294, v296);
        v299 = v145 >> 62;
        v384[0] = v81;
        v418 = v164;
        v414 = v154;
        v411 = v126;
        v409 = v298;
        if ((v145 >> 62) > 1)
        {
          if (v299 != 2)
          {
LABEL_87:
            v336 = Data.subdata(in:)();
            v338 = v337;
            v339 = Data.hexString.getter();
            v408 = v145;
            v340 = v339;
            v342 = v341;
            sub_100016590(v336, v338);
            v343 = (v424 + *(v415 + 36));
            v344 = *v343;
            v345 = v343[1];
            v346 = (v424 + *(v415 + 28));
            v347 = *v346;
            v348 = v346[1];
            v349 = (v424 + *(v415 + 32));
            v351 = *v349;
            v350 = v349[1];
            v352 = *(v423 + 32);
            v424 = v293;
            v353 = v387;
            v352(v387, v390, v422);
            v354 = v386;
            v355 = (v353 + *(v386 + 20));
            v356 = v412;
            *v355 = v419;
            v355[1] = v356;
            v357 = (v353 + v354[6]);
            v358 = v418;
            *v357 = v425;
            v357[1] = v358;
            v359 = (v353 + v354[7]);
            v360 = v414;
            *v359 = v420;
            v359[1] = v360;
            v361 = (v353 + v354[8]);
            v362 = v409;
            *v361 = v411;
            v361[1] = v362;
            v363 = (v353 + v354[9]);
            *v363 = v340;
            v363[1] = v342;
            *(v353 + v354[10]) = xmmword_1013C2550;
            v364 = (v353 + v354[11]);
            *v364 = v344;
            v364[1] = v345;
            v365 = (v353 + v354[12]);
            *v365 = v347;
            v365[1] = v348;
            v366 = (v353 + v354[13]);
            *v366 = v351;
            v366[1] = v350;
            v367 = (v353 + v354[14]);
            *v367 = 0x746C7561666564;
            v367[1] = 0xE700000000000000;
            *(v353 + v354[15]) = v410 & 1;

            sub_100F00C24(v353);
            if (v368)
            {
              v371 = v368;
              v372 = v369;
              v373 = v370;
              v425 = a11;
              v374 = sub_1008B4D8C(0);
              sub_1008B46BC(v371, v372, v373, v374);

              v375 = swift_allocObject();
              v376 = v404;
              v377 = v416;
              *(v375 + 16) = v404;
              *(v375 + 24) = v377;

              Future.addFailure(block:)();

              v378 = swift_allocObject();
              v378[2] = v421;
              v378[3] = v376;
              v378[4] = v377;

              Future.addSuccess(block:)();

              sub_100165328(v371, v372, v373);
              sub_100006654(v424, v408);
              sub_1008B9FC0(v384[0], type metadata accessor for OwnedBeaconRecord);
            }

            sub_100006654(v424, v408);
            v284 = v417;
            v81 = v384[0];
            goto LABEL_90;
          }

          v334 = *(v293 + 16);
          v333 = *(v293 + 24);
          v291 = __OFSUB__(v333, v334);
          v335 = v333 - v334;
          if (!v291)
          {
LABEL_85:
            if (v335 < -1)
            {
              __break(1u);
            }

            goto LABEL_87;
          }

          __break(1u);
        }

        else if (!v299)
        {
          goto LABEL_87;
        }

        LODWORD(v335) = HIDWORD(v293) - v293;
        if (__OFSUB__(HIDWORD(v293), v293))
        {
LABEL_99:
          __break(1u);
LABEL_100:

          __break(1u);
          goto LABEL_101;
        }

        v335 = v335;
        goto LABEL_85;
      }
    }

    else
    {
      v130 = v422;
      if (EnumCaseMultiPayload == 2)
      {
        v216 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v217 = *(v127 + v216[12] + 8);

        v218 = *(v127 + v216[16] + 8);

        v219 = *(v127 + v216[20] + 8);

        v220 = *(v127 + v216[28] + 8);

        v221 = v397;
        (*(v126 + 32))(v397, v127, v130);
        v222 = *(v126 + 16);
        v222(v129, v221, v130);
        v223 = (v424 + *(v415 + 36));
        v224 = v223[1];
        v420 = *v223;
        v225 = (v424 + *(v415 + 28));
        v226 = *v225;
        v227 = v225[1];
        v228 = (v424 + *(v415 + 32));
        v229 = *v228;
        v126 = v228[1];
        v418 = v226;
        v419 = v229;

        v424 = v224;

        v230 = sub_100907E70(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v432 = v230;
        sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
        v145 = v432;
        v232 = [objc_opt_self() currentDevice];
        if (v232)
        {
          v233 = v232;
          v415 = v222;
          v384[0] = v81;
          v234 = [v232 serverFriendlyDescription];

          if (v234)
          {
            v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v237 = v236;

            v238 = swift_isUniquelyReferenced_nonNull_native();
            *&v432 = v145;
            sub_100FFACA0(v235, v237, 0xD000000000000011, 0x800000010134EA40, v238);
            v239 = v432;
            v240 = v391;
            Date.init()();
            v241 = Date.epoch.getter();
            (*(v392 + 8))(v240, v393);
            *&v432 = v241;
            v242 = dispatch thunk of CustomStringConvertible.description.getter();
            v244 = v243;
            v245 = swift_isUniquelyReferenced_nonNull_native();
            *&v432 = v239;
            sub_100FFACA0(v242, v244, 0xD000000000000015, 0x800000010134EA60, v245);
            v246 = v432;
            *&v432 = 1;
            v247 = dispatch thunk of CustomStringConvertible.description.getter();
            v249 = v248;
            v250 = swift_isUniquelyReferenced_nonNull_native();
            *&v432 = v246;
            sub_100FFACA0(v247, v249, 0xD000000000000013, 0x800000010134EA80, v250);
            v251 = v432;
            v252 = sub_1008D9A78();
            v254 = v253;
            v255 = swift_isUniquelyReferenced_nonNull_native();
            *&v432 = v251;
            sub_100FFACA0(v252, v254, 0x6567412D72657355, 0xEA0000000000746ELL, v255);
            v414 = v432;
            v256 = v395;
            v257 = v412;
            (v415)(v395, v412, v422);
            v258 = v394;
            *(v256 + *(v394 + 20)) = xmmword_1013C2550;
            v259 = (v256 + v258[6]);
            v260 = v424;
            *v259 = v420;
            v259[1] = v260;
            v261 = (v256 + v258[7]);
            v262 = v419;
            *v261 = v418;
            v261[1] = v227;
            v263 = (v256 + v258[8]);
            *v263 = v262;
            v263[1] = v126;
            *(v256 + v258[9]) = v410 & 1;
            v264 = type metadata accessor for JSONEncoder();
            v265 = *(v264 + 48);
            v266 = *(v264 + 52);
            swift_allocObject();
            JSONEncoder.init()();
            sub_1008BA074(&qword_1016ACEF8, type metadata accessor for AccessoryLostModeRequestContent);
            v267 = v425;
            v268 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            if (v267)
            {

              static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v270 = swift_allocObject();
              *(v270 + 16) = xmmword_101385D80;
              sub_1008B9F58(v256, v388, type metadata accessor for AccessoryLostModeRequestContent);
              v271 = String.init<A>(describing:)();
              v273 = v272;
              *(v270 + 56) = &type metadata for String;
              *(v270 + 64) = sub_100008C00();
              *(v270 + 32) = v271;
              *(v270 + 40) = v273;
              sub_10039722C();
              v274 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              sub_1008B9FC0(v256, type metadata accessor for AccessoryLostModeRequestContent);
              v275 = v422;
              v276 = *(v423 + 8);
              v276(v257, v422);

              static os_log_type_t.error.getter();
              if (qword_1016950A0 != -1)
              {
                swift_once();
              }

              os_log(_:dso:log:_:_:)();
              sub_10025ED18();
              v277 = swift_allocError();
              *v278 = 0;
              v279 = v413;
              swift_beginAccess();
              v280 = *(v279 + 16);
              *(v279 + 16) = v277;
              swift_errorRetain();

              dispatch_group_leave(v417);

              v276(v397, v275);
              v281 = type metadata accessor for OwnedBeaconRecord;
              v282 = v384[0];
            }

            else
            {
              v424 = a15;
              v300 = v268;
              v301 = v269;

              sub_1008B9FC0(v256, type metadata accessor for AccessoryLostModeRequestContent);
              v425 = *(v423 + 8);
              v425(v257, v422);
              v302 = v414;

              sub_100017D5C(v300, v301);

              v420 = v300;
              sub_100016590(v300, v301);
              if (sub_100E0EA64(*(v384[0] + *(v411 + 64)), *(v384[0] + *(v411 + 68))))
              {
                v303 = 2;
              }

              else
              {
                v303 = 1;
              }

              v304 = sub_1008B4D8C(v303);
              sub_1008B4354(v302, v300, v301, v304);

              v305 = swift_allocObject();
              v306 = v404;
              v307 = v416;
              *(v305 + 16) = v404;
              *(v305 + 24) = v307;

              Future.addFailure(block:)();

              v308 = swift_allocObject();
              v308[2] = v421;
              v308[3] = v306;
              v308[4] = v307;

              Future.addSuccess(block:)();

              sub_100016590(v420, v301);
              v425(v397, v422);
              v281 = type metadata accessor for OwnedBeaconRecord;
              v282 = v384[0];
            }

            goto LABEL_94;
          }

          goto LABEL_103;
        }

LABEL_102:

        __break(1u);
LABEL_103:

        __break(1u);
        goto LABEL_104;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v131 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v132 = *(v127 + v131[12] + 8);

        v133 = *(v127 + v131[16] + 8);

        v134 = *(v127 + v131[20] + 8);

        sub_1008B3F98();
        v135 = swift_allocError();
        *v136 = 7;
        v137 = v413;
        swift_beginAccess();
        v138 = v130;
        v139 = *(v137 + 16);
        *(v137 + 16) = v135;
        swift_errorRetain();

        dispatch_group_leave(v417);

        sub_1008B9FC0(v81, type metadata accessor for OwnedBeaconRecord);
        (*(v126 + 8))(v127, v138);
      }
    }

    sub_1008B9FC0(v127, type metadata accessor for StableIdentifier);
    sub_1008B3F98();
    v140 = swift_allocError();
    *v141 = 7;
    v142 = v413;
    swift_beginAccess();
    v143 = *(v142 + 16);
    *(v142 + 16) = v140;
    swift_errorRetain();

    v144 = v417;
LABEL_93:
    dispatch_group_leave(v144);

    v281 = type metadata accessor for OwnedBeaconRecord;
    v282 = v81;
LABEL_94:
    sub_1008B9FC0(v282, v281);
  }

  sub_10000B3A8(v76, &unk_1016A9A20, &qword_10138B280);
  sub_100AC53EC(v86, v64);
  if ((*(v65 + 48))(v64, 1, v406) == 1)
  {
    sub_10000B3A8(v64, &unk_1016AF8B0, &unk_1013A0700);
    sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
    v88 = unsafeFromAsyncTask<A>(_:)();
    v89 = v432;
    __chkstk_darwin(v88);
    v384[-2] = v86;
    v90 = v402;
    sub_1012BC6C4(a16, v89, v402);

    v91 = v403;
    if ((*(v401 + 48))(v90, 1, v403) == 1)
    {
      sub_10000B3A8(v90, &qword_1016A9A30, &unk_1013BD120);
      static os_log_type_t.error.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_101385D80;
      v93 = UUID.uuidString.getter();
      v95 = v94;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 64) = sub_100008C00();
      *(v92 + 32) = v93;
      *(v92 + 40) = v95;
      os_log(_:dso:log:_:_:)();

      sub_1008B3F98();
      v96 = swift_allocError();
      *v97 = 1;
      v98 = v413;
      swift_beginAccess();
      v99 = *(v98 + 16);
      *(v98 + 16) = v96;
      swift_errorRetain();

      dispatch_group_leave(v417);
    }

    v145 = v398;
    sub_1008BA1A0(v90, v398, type metadata accessor for LocalFindableAccessoryRecord);
    v146 = (v424 + *(v415 + 36));
    v148 = *v146;
    v147 = v146[1];
    v419 = v148;
    v425 = v147;
    v149 = *(v415 + 32);
    v150 = (v424 + *(v415 + 28));
    v152 = *v150;
    v151 = v150[1];
    v418 = v152;
    v420 = v151;
    v126 = *(v424 + v149 + 8);
    v424 = *(v424 + v149);
    sub_1000BC4D4(&qword_1016ACEE8, &qword_1013C2568);
    v153 = *(v405 + 72);
    v414 = (*(v405 + 80) + 32) & ~*(v405 + 80);
    v415 = swift_allocObject();
    *(v415 + 16) = xmmword_101385D80;
    v154 = sub_1000BC4D4(&qword_1016ACEF0, &qword_1013C2570);
    v155 = v154[12];
    v156 = (v145 + v91[7]);
    v157 = *v156;
    v158 = v156[1];
    v159 = v399;
    *v399 = *v156;
    v159[1] = v158;
    (*(v423 + 16))(v159 + v155, v145 + v91[9], v422);
    v160 = *(v145 + v91[10]);
    v161 = *(v145 + v91[11]);
    v423 = v126;

    sub_100017D5C(v157, v158);
    v162 = sub_100314604(v160, v161);
    if (v163 >> 60 == 15)
    {
      goto LABEL_100;
    }

    v164 = (v159 + v154[16]);
    v165 = v162;
    v166 = v163;
    v145 = sub_100313B54(v162, v163);
    v168 = v167;
    sub_100006654(v165, v166);
    v169 = Data.hexString.getter();
    v171 = v170;
    sub_100016590(v145, v168);
    *v164 = v169;
    v164[1] = v171;
    v172 = sub_100314604(v160, v161);
    if (v173 >> 60 == 15)
    {
LABEL_101:

      __break(1u);
      goto LABEL_102;
    }

    v174 = v172;
    v81 = v173;
    v175 = v173 >> 62;
    v100 = v417;
    if ((v173 >> 62) <= 1)
    {
      v176 = v399;
      if (!v175)
      {
LABEL_74:
        v309 = &v176[v154[20]];
        v310 = Data.subdata(in:)();
        v312 = v311;
        sub_100006654(v174, v81);
        v313 = Data.hexString.getter();
        v315 = v314;
        sub_100016590(v310, v312);
        *v309 = v313;
        v309[1] = v315;
        swift_storeEnumTagMultiPayload();
        v316 = v415;
        sub_100DE3528(v176, v415 + v414);
        *&v317 = v418;
        *(&v317 + 1) = v420;
        v434 = v317;
        *&v317 = v419;
        *(&v317 + 1) = v425;
        v432 = xmmword_1013C2550;
        v433 = v317;
        *&v435 = v424;
        *(&v435 + 1) = v423;
        LOBYTE(v436) = v410 & 1;
        *(&v436 + 1) = v428[0];
        DWORD1(v436) = *(v428 + 3);
        *(&v436 + 1) = v316;
        sub_100DE40D4(&v432);
        if (v318)
        {
          v321 = v318;
          v322 = v319;
          v323 = v320;
          v425 = a24;
          v324 = sub_1008B4D8C(3u);
          sub_1008B3FEC(v321, v322, v323, v324);

          v325 = swift_allocObject();
          v326 = v404;
          v327 = v416;
          *(v325 + 16) = v404;
          *(v325 + 24) = v327;

          Future.addFailure(block:)();

          v328 = swift_allocObject();
          v328[2] = v421;
          v328[3] = v326;
          v328[4] = v327;

          Future.addSuccess(block:)();

          sub_100165328(v321, v322, v323);
          v281 = type metadata accessor for LocalFindableAccessoryRecord;
          v282 = v398;
        }

        else
        {
          static os_log_type_t.error.getter();
          if (qword_1016950A0 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          sub_10025ED18();
          v329 = swift_allocError();
          *v330 = 0;
          v331 = v413;
          swift_beginAccess();
          v332 = *(v331 + 16);
          *(v331 + 16) = v329;
          swift_errorRetain();

          dispatch_group_leave(v100);

          v281 = type metadata accessor for LocalFindableAccessoryRecord;
          v282 = v398;
        }

        goto LABEL_94;
      }

      LODWORD(v292) = HIDWORD(v172) - v172;
      if (!__OFSUB__(HIDWORD(v172), v172))
      {
        v292 = v292;
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_99;
    }

    v176 = v399;
    if (v175 != 2)
    {
      goto LABEL_74;
    }

    v290 = *(v172 + 16);
    v289 = *(v172 + 24);
    v291 = __OFSUB__(v289, v290);
    v292 = v289 - v290;
    if (!v291)
    {
LABEL_72:
      if (v292 < -1)
      {
        __break(1u);
      }

      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_63;
  }

  sub_1008BA1A0(v64, v414, type metadata accessor for OwnedBeaconGroup);
  if (qword_101694A30 != -1)
  {
    swift_once();
  }

  v406 = a20;
  v403 = a19;
  v402 = a18;
  v401 = a17;
  v112 = type metadata accessor for Logger();
  v113 = sub_1000076D4(v112, qword_10177B570);
  v114 = v400;
  sub_1008B9F58(v424, v400, type metadata accessor for LostModeRecord);
  v407 = v113;
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  v117 = os_log_type_enabled(v115, v116);
  v118 = v423;
  if (v117)
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *&v432 = v120;
    *v119 = 141558275;
    *(v119 + 4) = 1752392040;
    *(v119 + 12) = 2081;
    v121 = *(v415 + 24);
    sub_1008BA074(&qword_101696930, &type metadata accessor for UUID);
    v122 = dispatch thunk of CustomStringConvertible.description.getter();
    v124 = v123;
    sub_1008B9FC0(v114, type metadata accessor for LostModeRecord);
    v125 = sub_1000136BC(v122, v124, &v432);

    *(v119 + 14) = v125;
    _os_log_impl(&_mh_execute_header, v115, v116, "updateLostModeServer for group %{private,mask.hash}s", v119, 0x16u);
    sub_100007BAC(v120);
  }

  else
  {

    sub_1008B9FC0(v114, type metadata accessor for LostModeRecord);
  }

  v177 = v420;
  v178 = sub_100519FB0();
  v179 = v178 + 56;
  v180 = 1 << *(v178 + 32);
  v181 = -1;
  if (v180 < 64)
  {
    v181 = ~(-1 << v180);
  }

  v81 = v181 & *(v178 + 56);
  v182 = (v180 + 63) >> 6;
  v409 = (v118 + 16);
  v411 = v118 + 8;
  v412 = v178;
  v100 = (v405 + 48);

  v408 = _swiftEmptyArrayStorage;
  v183 = v422;
  v184 = 0;
  if (!v81)
  {
    while (1)
    {
LABEL_31:
      v185 = v184 + 1;
      if (__OFADD__(v184, 1))
      {
        __break(1u);
        goto LABEL_97;
      }

      if (v185 >= v182)
      {
        break;
      }

      v81 = *(v179 + 8 * v185);
      ++v184;
      if (v81)
      {
        goto LABEL_34;
      }
    }

    v192 = *(v424 + *(v415 + 36));
    v193 = *(v424 + *(v415 + 28));
    v194 = (v424 + *(v415 + 32));
    v196 = *v194;
    v195 = v194[1];
    v429[0] = xmmword_1013C2550;
    v429[1] = v192;
    v429[2] = v193;
    *&v430 = v196;
    *(&v430 + 1) = v195;
    LOBYTE(v431) = v410 & 1;
    *(&v431 + 1) = v408;
    v432 = xmmword_1013C2550;
    v433 = v192;
    v434 = v193;
    v435 = v430;
    v436 = v431;

    sub_1008B53FC(v429, v428);
    v197 = Logger.logObject.getter();
    v198 = static os_log_type_t.info.getter();
    sub_1008B5458(v429);
    if (os_log_type_enabled(v197, v198))
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v427 = v200;
      *v199 = 136315138;
      v428[3] = v435;
      v428[4] = v436;
      v428[1] = v433;
      v428[2] = v434;
      v428[0] = v432;
      sub_1008B53FC(v429, &v426);
      v201 = String.init<A>(describing:)();
      v203 = sub_1000136BC(v201, v202, &v427);

      *(v199 + 4) = v203;
      _os_log_impl(&_mh_execute_header, v197, v198, "AirPodsLostModeContent: %s", v199, 0xCu);
      sub_100007BAC(v200);
    }

    v204 = v417;
    sub_100DE40D4(&v432);
    if (v205)
    {
      v208 = v205;
      v209 = v206;
      v210 = v207;
      v211 = sub_1008B4D8C(2u);
      sub_1008B3FEC(v208, v209, v210, v211);

      v212 = swift_allocObject();
      v213 = v404;
      v214 = v416;
      *(v212 + 16) = v404;
      *(v212 + 24) = v214;

      Future.addFailure(block:)();

      v215 = swift_allocObject();
      v215[2] = v421;
      v215[3] = v213;
      v215[4] = v214;

      Future.addSuccess(block:)();

      sub_100165328(v208, v209, v210);
      sub_1008B9FC0(v414, type metadata accessor for OwnedBeaconGroup);
    }

    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10025ED18();
    v285 = swift_allocError();
    *v286 = 0;
    v287 = v413;
    swift_beginAccess();
    v288 = *(v287 + 16);
    *(v287 + 16) = v285;
    swift_errorRetain();

    dispatch_group_leave(v204);

    v281 = type metadata accessor for OwnedBeaconGroup;
    v282 = v414;
    goto LABEL_94;
  }

  while (1)
  {
    v185 = v184;
LABEL_34:
    (*(v118 + 16))(v177, *(v412 + 6) + *(v118 + 72) * (__clz(__rbit64(v81)) | (v185 << 6)), v183);
    v145 = v177;
    v186 = v419;
    v126 = v183;
    v187 = v425;
    sub_1008B28B8(v145, v421, v419);
    v425 = v187;
    if (v187)
    {
      break;
    }

    v81 &= v81 - 1;
    (*v411)(v145, v126);
    if ((v100->isa)(v186, 1, v418) == 1)
    {
      v183 = v126;
      sub_10000B3A8(v186, &qword_1016ACED0, &qword_1013C2560);
      v184 = v185;
      v118 = v423;
      v177 = v420;
      if (!v81)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v188 = v385;
      sub_1008BA1A0(v186, v385, type metadata accessor for AirPodsLostModeContent.Device);
      sub_1008BA1A0(v188, v389, type metadata accessor for AirPodsLostModeContent.Device);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v408 = sub_100A5D240(0, v408[2] + 1, 1, v408);
      }

      v177 = v420;
      v190 = v408[2];
      v189 = v408[3];
      if (v190 >= v189 >> 1)
      {
        v408 = sub_100A5D240(v189 > 1, v190 + 1, 1, v408);
      }

      v191 = v408;
      v408[2] = v190 + 1;
      sub_1008BA1A0(v389, v191 + ((*(v405 + 80) + 32) & ~*(v405 + 80)) + *(v405 + 72) * v190, type metadata accessor for AirPodsLostModeContent.Device);
      v183 = v422;
      v118 = v423;
      v184 = v185;
      if (!v81)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_104:

  (*v411)(v145, v126);

  __break(1u);
  return result;
}
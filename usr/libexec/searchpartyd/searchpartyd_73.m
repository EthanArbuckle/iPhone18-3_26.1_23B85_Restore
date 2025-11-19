uint64_t sub_1007A3124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(unint64_t, char *, uint64_t))
{
  v194 = a8;
  v195 = a2;
  v190 = a6;
  v191 = a7;
  v188 = a4;
  v189 = a5;
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v156 = &v146 - v12;
  v160 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v159 = *(v160 - 8);
  v13 = *(v159 + 64);
  __chkstk_darwin(v160);
  v157 = &v146 - v14;
  v163 = sub_1000BC4D4(&qword_1016A94D8, &qword_1013BB4C8);
  v161 = *(v163 - 8);
  v15 = *(v161 + 64);
  __chkstk_darwin(v163);
  v158 = &v146 - v16;
  v165 = sub_1000BC4D4(&qword_1016A94E0, &qword_1013BB4D0);
  v164 = *(v165 - 8);
  v17 = *(v164 + 64);
  __chkstk_darwin(v165);
  v162 = &v146 - v18;
  v170 = sub_1000BC4D4(&qword_1016A94E8, &qword_1013BB4D8);
  v167 = *(v170 - 8);
  v19 = *(v167 + 64);
  __chkstk_darwin(v170);
  v166 = &v146 - v20;
  v175 = sub_1000BC4D4(&qword_1016A94F0, &qword_1013BB4E0);
  v173 = *(v175 - 8);
  v21 = *(v173 + 64);
  __chkstk_darwin(v175);
  v169 = &v146 - v22;
  v174 = sub_1000BC4D4(&qword_1016A94F8, &qword_1013BB4E8);
  v172 = *(v174 - 8);
  v23 = *(v172 + 64);
  __chkstk_darwin(v174);
  v168 = &v146 - v24;
  v177 = sub_1000BC4D4(&qword_1016A9500, &qword_1013BB4F0);
  v176 = *(v177 - 8);
  v25 = *(v176 + 64);
  __chkstk_darwin(v177);
  v171 = &v146 - v26;
  v27 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v151 = *(v27 - 8);
  v28 = *(v151 + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v153 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v30;
  __chkstk_darwin(v29);
  v154 = &v146 - v31;
  v32 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v180 = &v146 - v34;
  v35 = type metadata accessor for MACAddress();
  v183 = *(v35 - 8);
  v184 = v35;
  v36 = *(v183 + 64);
  v37 = __chkstk_darwin(v35);
  v150 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v38;
  __chkstk_darwin(v37);
  v182 = &v146 - v39;
  v40 = type metadata accessor for WildModeAssociationRecord(0);
  v185 = *(v40 - 8);
  v41 = *(v185 + 64);
  v42 = __chkstk_darwin(v40);
  v179 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v178 = &v146 - v45;
  v186 = v46;
  __chkstk_darwin(v44);
  v48 = &v146 - v47;
  v187 = sub_1000BC4D4(&qword_1016A9508, &qword_1013BB4F8);
  v181 = *(v187 - 8);
  v49 = *(v181 + 64);
  __chkstk_darwin(v187);
  v51 = &v146 - v50;
  v52 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v55 = &v146 - v54;
  v56 = swift_allocObject();
  *(v56 + 16) = a9;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_10001E370;
  *(v57 + 24) = v56;
  v192 = v57;
  v58 = a1;
  sub_1000D2A70(a1 + *(v40 + 56), v55, &qword_1016A62A0, &unk_101396E10);
  v59 = type metadata accessor for AccessoryMetadata(0);
  LODWORD(a1) = (*(*(v59 - 8) + 48))(v55, 1, v59);
  v155 = a9;
  _Block_copy(a9);
  v193 = v56;

  sub_10000B3A8(v55, &qword_1016A62A0, &unk_101396E10);
  if (a1 != 1)
  {
    sub_1007A7DFC(v58, v48, type metadata accessor for WildModeAssociationRecord);
    Just.init(_:)();
    sub_1000041A4(&qword_1016A9588, &qword_1016A9508, &qword_1013BB4F8);
    v74 = v187;
    v75 = Publisher.eraseToAnyPublisher()();
    (*(v181 + 8))(v51, v74);

LABEL_30:
    v196 = v75;
    sub_1007A7DFC(v58, v48, type metadata accessor for WildModeAssociationRecord);
    v137 = (*(v185 + 80) + 80) & ~*(v185 + 80);
    v138 = swift_allocObject();
    v139 = v48;
    v140 = v195;
    v138[2] = v194;
    v138[3] = v140;
    v141 = v189;
    v138[4] = v188;
    v138[5] = v141;
    v142 = v191;
    v138[6] = v190;
    v138[7] = v142;
    v143 = v192;
    v138[8] = sub_1007A7D84;
    v138[9] = v143;
    sub_1007A91C8(v139, v138 + v137, type metadata accessor for WildModeAssociationRecord);

    v144 = v140;
    sub_1000BC4D4(&qword_1016A9578, &qword_1013BB518);
    sub_1000041A4(&qword_1016A9580, &qword_1016A9578, &qword_1013BB518);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v181 = v40;
  v148 = v48;
  v187 = v58;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_1000076D4(v60, qword_10177B2D0);
  v61 = v187;
  v62 = v178;
  sub_1007A7DFC(v187, v178, type metadata accessor for WildModeAssociationRecord);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v184;
  v67 = v179;
  if (v65)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v196 = v69;
    *v68 = 136446210;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    sub_1007A810C(v62, type metadata accessor for WildModeAssociationRecord);
    v73 = sub_1000136BC(v70, v72, &v196);

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v63, v64, "Record %{public}s is missing metadata. Attempting to fetch again...", v68, 0xCu);
    sub_100007BAC(v69);

    v61 = v187;
  }

  else
  {

    sub_1007A810C(v62, type metadata accessor for WildModeAssociationRecord);
  }

  if (qword_101694918 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v60, qword_1016A9318);
  sub_1007A7DFC(v61, v67, type metadata accessor for WildModeAssociationRecord);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v76, v77))
  {

    sub_1007A810C(v67, type metadata accessor for WildModeAssociationRecord);
    goto LABEL_21;
  }

  v78 = swift_slowAlloc();
  v196 = swift_slowAlloc();
  *v78 = 136315394;
  *(v78 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v196);
  *(v78 + 12) = 2082;
  v79 = *(v67 + *(v181 + 84));
  v80 = (v67 + *(v181 + 88));
  if (v80[1])
  {
    if (*(v67 + *(v181 + 84)))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v67 + *(v181 + 84)) & 1) == 0)
  {
LABEL_18:
    v81 = *(v67 + *(v181 + 52));
    goto LABEL_20;
  }

  if (*v80 != 1)
  {
LABEL_19:
    v81 = 6;
    goto LABEL_20;
  }

  v81 = 5;
LABEL_20:
  v82 = sub_100781578(v81);
  v84 = v83;
  sub_1007A810C(v67, type metadata accessor for WildModeAssociationRecord);
  v85 = sub_1000136BC(v82, v84, &v196);

  *(v78 + 14) = v85;
  _os_log_impl(&_mh_execute_header, v76, v77, "%s Advertisement type: %{public}s", v78, 0x16u);
  swift_arrayDestroy();

  v61 = v187;
LABEL_21:
  v86 = v180;
  sub_100307708(v180);
  v87 = v183;
  v88 = (*(v183 + 48))(v86, 1, v66);
  v89 = v195;
  if (v88 != 1)
  {
    v97 = *(v87 + 32);
    v179 = (v87 + 32);
    v155 = v97;
    v97(v182, v86, v66);
    v147 = *(v61 + *(v181 + 52));
    v180 = swift_allocBox();
    sub_1007A7DFC(v61, v98, type metadata accessor for WildModeAssociationRecord);
    v99 = [v89 trackingIdentifier];
    v100 = [v99 isPosh];

    if (v100)
    {
      v101 = [v89 trackingIdentifier];
      v102 = [v101 networkID];

      v103 = 2 * (v102 == 2);
      if (v102 == 1)
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 3;
    }

    LODWORD(v178) = v103;
    v104 = type metadata accessor for SharedBeaconRecord(0);
    v105 = v154;
    (*(*(v104 - 8) + 56))(v154, 1, 1, v104);
    v146 = *(v61 + *(v181 + 84));
    v106 = v150;
    (*(v87 + 16))(v150, v182, v66);
    v107 = v153;
    sub_1000D2A70(v105, v153, &unk_101698C30, &unk_101392630);
    v108 = (*(v87 + 80) + 24) & ~*(v87 + 80);
    v109 = v108 + v149;
    v110 = (*(v151 + 80) + v108 + v149 + 1) & ~*(v151 + 80);
    v111 = v110 + v152;
    v112 = swift_allocObject();
    v113 = v194;
    *(v112 + 16) = v194;
    v155(v112 + v108, v106, v66);
    *(v112 + v109) = v147;
    sub_1000D2AD8(v107, v112 + v110, &unk_101698C30, &unk_101392630);
    *(v112 + v111) = v146 & 1;
    v114 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();

    v196 = Future.init(_:)();
    v155 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
    v117 = Publisher.eraseToAnyPublisher()();
    v179 = v117;

    sub_10000B3A8(v105, &unk_101698C30, &unk_101392630);
    v196 = v117;
    v197 = *(v113 + 24);
    v118 = v197;
    v119 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v120 = v156;
    (*(*(v119 - 8) + 56))(v156, 1, 1, v119);
    v121 = v118;
    v154 = v121;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
    v122 = v157;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v120, &unk_1016B0FE0, &unk_101391980);

    v123 = swift_allocObject();
    *(v123 + 16) = v180;
    *(v123 + 24) = v113;
    *(v123 + 32) = v178;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A9520, &qword_1013BB508);
    sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0);
    sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
    v124 = v158;
    v125 = v160;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v159 + 8))(v122, v125);
    sub_1000041A4(&qword_1016A9538, &qword_1016A94D8, &qword_1013BB4C8);
    v126 = v162;
    v127 = v163;
    Publisher.timeout(_:queue:customError:)();
    (*(v161 + 8))(v124, v127);
    sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
    sub_1000041A4(&qword_1016A9540, &qword_1016A94E0, &qword_1013BB4D0);
    v128 = v166;
    v129 = v165;
    Publisher.map<A>(_:)();
    (*(v164 + 8))(v126, v129);
    sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
    sub_1000041A4(&qword_1016A9550, &qword_1016A94E8, &qword_1013BB4D8);
    sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510);
    v130 = v169;
    v131 = v170;
    v58 = v187;
    Publisher.catch<A>(_:)();
    (*(v167 + 8))(v128, v131);
    sub_1000041A4(&qword_1016A9560, &qword_1016A94F0, &qword_1013BB4E0);

    v132 = v168;
    v133 = v175;
    Publisher.map<A>(_:)();

    (*(v173 + 8))(v130, v133);
    sub_1000041A4(&qword_1016A9568, &qword_1016A94F8, &qword_1013BB4E8);
    v134 = v171;
    v135 = v174;
    Publisher.replaceError(with:)();
    (*(v172 + 8))(v132, v135);
    sub_1000041A4(&qword_1016A9570, &qword_1016A9500, &qword_1013BB4F0);
    v136 = v177;
    v75 = Publisher.eraseToAnyPublisher()();

    (*(v176 + 8))(v134, v136);
    (*(v183 + 8))(v182, v184);

    v48 = v148;
    goto LABEL_30;
  }

  sub_10000B3A8(v86, &qword_1016A40D0, &unk_10138BE70);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v196 = v93;
    *v92 = 136315138;
    *(v92 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v196);
    _os_log_impl(&_mh_execute_header, v90, v91, "%s unexpected advertisement type!", v92, 0xCu);
    sub_100007BAC(v93);
  }

  sub_1007A7D8C();
  swift_allocError();
  *v94 = 1;
  v95 = v155;
  _Block_copy(v155);
  v96 = _convertErrorToNSError(_:)();
  v95[2](v95, v96);

  _Block_release(v95);
}

void sub_1007A4B48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(unint64_t, char *, uint64_t))
{
  v75 = a6;
  v74 = a5;
  v73 = a4;
  v80 = a3;
  v82 = a2;
  v83 = type metadata accessor for WildModeTrackingLocation(0);
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v83);
  v14 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for MACAddress();
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v77);
  v78 = &v70[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v70[-v19];
  v21 = type metadata accessor for WildModeAssociationRecord(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v70[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v70[-v27];
  v81 = a8;
  _Block_copy(a8);
  v79 = a1;
  v29 = v82;
  v82 = a7;
  sub_100793720(a1, v29, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016C7C90, &qword_1013BB4B0);
    static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for TrackingAvoidanceError(0);
    v84 = 3;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v31;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x800000010135F6C0;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v85[0];
    v33 = _convertErrorToNSError(_:)();
    v34 = v81;
    (*(v81 + 2))(v81, v33);

    v35 = v34;
    goto LABEL_24;
  }

  sub_1007A91C8(v20, v28, type metadata accessor for WildModeAssociationRecord);
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_1016A9318);
  sub_1007A7DFC(v28, v26, type metadata accessor for WildModeAssociationRecord);
  v37 = v76;
  v38 = v78;
  v39 = v77;
  (*(v76 + 16))(v78, v79, v77);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v85[0] = v72;
    *v42 = 136315394;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v71 = v41;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_1007A810C(v26, type metadata accessor for WildModeAssociationRecord);
    v46 = sub_1000136BC(v43, v45, v85);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
    v47 = v78;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v37 + 8))(v47, v39);
    v51 = sub_1000136BC(v48, v50, v85);

    *(v42 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v71, "update: found UT record UUID %s address %s.", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v37 + 8))(v38, v39);
    sub_1007A810C(v26, type metadata accessor for WildModeAssociationRecord);
  }

  v52 = [v80 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v53 >> 62))
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_12;
    }

LABEL_22:

    v56 = _swiftEmptyArrayStorage;
LABEL_23:
    v69 = v81;
    _Block_copy(v81);
    sub_1007A3124(v28, v80, v79, v73, v74, v75, v56, v82, v69);
    _Block_release(v69);

    sub_1007A810C(v28, type metadata accessor for WildModeAssociationRecord);
    v35 = v69;
LABEL_24:
    _Block_release(v35);
    return;
  }

  v54 = _CocoaArrayWrapper.endIndex.getter();
  if (!v54)
  {
    goto LABEL_22;
  }

LABEL_12:
  v85[0] = _swiftEmptyArrayStorage;
  sub_101124B70(0, v54 & ~(v54 >> 63), 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v78 = v28;
    v55 = 0;
    v56 = v85[0];
    do
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v53 + 8 * v55 + 32);
      }

      v58 = v57;
      [v57 latitude];
      v60 = v59;
      [v58 longitude];
      v62 = v61;
      [v58 horizontalAccuracy];
      v64 = v63;
      v65 = [v58 timestamp];
      v66 = v14 + *(v83 + 28);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      *v14 = v60;
      v14[1] = v62;
      v14[2] = v64;
      v85[0] = v56;
      v68 = v56[2];
      v67 = v56[3];
      if (v68 >= v67 >> 1)
      {
        sub_101124B70(v67 > 1, v68 + 1, 1);
        v56 = v85[0];
      }

      ++v55;
      v56[2] = v68 + 1;
      sub_1007A91C8(v14, v56 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v68, type metadata accessor for WildModeTrackingLocation);
    }

    while (v54 != v55);

    v28 = v78;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_1007A54FC(void *a1, uint64_t *a2, const void *a3)
{
  v314 = a1;
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v294 = &v287 - v7;
  v295 = type metadata accessor for SharedBeaconRecord(0);
  v293 = *(v295 - 8);
  v8 = *(v293 + 64);
  v9 = __chkstk_darwin(v295);
  v291 = &v287 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v292 = &v287 - v11;
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v298 = &v287 - v14;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v305 = &v287 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  *&v307 = &v287 - v19;
  v20 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v304 = &v287 - v22;
  v23 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v301 = *(v23 - 8);
  v302 = v23;
  v24 = *(v301 + 64);
  __chkstk_darwin(v23);
  v299 = &v287 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v289 = &v287 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v296 = &v287 - v31;
  __chkstk_darwin(v30);
  v300 = &v287 - v32;
  v308 = type metadata accessor for MACAddress();
  v306 = *(v308 - 1);
  v33 = *(v306 + 64);
  v34 = __chkstk_darwin(v308);
  v309 = &v287 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v290 = &v287 - v37;
  v38 = __chkstk_darwin(v36);
  v297 = &v287 - v39;
  __chkstk_darwin(v38);
  v303 = (&v287 - v40);
  v41 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v287 - v43;
  v45 = type metadata accessor for Date();
  v316 = *(v45 - 8);
  v46 = *(v316 + 64);
  v47 = __chkstk_darwin(v45);
  v49 = &v287 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v312 = &v287 - v50;
  _Block_copy(a3);
  _Block_copy(a3);
  v313 = a3;
  _Block_copy(a3);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v311 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10138BBE0;
  v317 = *a2;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v52 = String.init<A>(describing:)();
  *&v315 = a2;
  v54 = v53;
  *(v51 + 56) = &type metadata for String;
  v55 = sub_100008C00();
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v55;
  v310 = v55;
  *(v51 + 64) = v55;
  *(v51 + 72) = 0xD000000000000039;
  *(v51 + 80) = 0x800000010135F420;
  os_log(_:dso:log:_:_:)();

  v56 = v314;
  v57 = [v314 trackingIdentifier];
  sub_100780A4C(v57, v44);

  v58 = v316;
  if ((*(v316 + 48))(v44, 1, v45) == 1)
  {
    sub_10000B3A8(v44, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v59 = v312;
    (*(v58 + 32))(v312, v44, v45);
    static Date.trustedNow.getter(v49);
    v60 = static Date.> infix(_:_:)();
    v63 = *(v58 + 8);
    v62 = v58 + 8;
    v61 = v63;
    v63(v49, v45);
    if (v60)
    {
      v308 = v61;
      v309 = v45;
      v316 = v62;
      v64 = swift_allocObject();
      v315 = xmmword_101385D80;
      *(v64 + 16) = xmmword_101385D80;
      v65 = [v56 trackingIdentifier];
      v66 = [v65 advertisementData];

      v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = Data.hexString.getter();
      v72 = v71;
      sub_100016590(v67, v69);
      v73 = v310;
      *(v64 + 56) = &type metadata for String;
      *(v64 + 64) = v73;
      *(v64 + 32) = v70;
      *(v64 + 40) = v72;
      v74 = String.init(format:_:)();
      v76 = v75;
      static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v77 = swift_allocObject();
      *(v77 + 16) = v315;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v73;
      *(v77 + 32) = v74;
      *(v77 + 40) = v76;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for TrackingAvoidanceError(0);
      v319 = 7;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v78 = swift_allocObject();
      *(v78 + 16) = v315;
      *(v78 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 72) = &type metadata for String;
      *(v78 + 40) = v79;
      *(v78 + 48) = v74;
      *(v78 + 56) = v76;
      sub_10090403C(v78);
      swift_setDeallocating();
      sub_10000B3A8(v78 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v80 = v317;
      v81 = _convertErrorToNSError(_:)();
      v82 = v313;
      (v313)[2](v313, v81);

      v308(v312, v309);
      goto LABEL_79;
    }

    v61(v59, v45);
  }

  v83 = [v56 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v84 >> 62)
  {
    v85 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v85)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for TrackingAvoidanceError(0);
    v319 = 4;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = inited + 32;
    v96 = 0x800000010135F5B0;
    *(inited + 72) = &type metadata for String;
    v97 = 0xD000000000000027;
    goto LABEL_36;
  }

  v86 = [v56 observedLocations];
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v88 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  if (v87 >> 62)
  {
    v89 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = 0;
  while (1)
  {
    if (v89 == v90)
    {

      v98 = [v56 trackingIdentifier];
      v99 = [v98 data];

      v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      v104 = sub_1000076D4(v103, qword_1016A9318);
      sub_100017D5C(v100, v102);
      v316 = v104;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v105, v106))
      {
        sub_100016590(v100, v102);

        goto LABEL_46;
      }

      v107 = v102;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v317 = v109;
      *v108 = 134218242;
      v110 = v107 >> 62;
      if ((v107 >> 62) > 1)
      {
        if (v110 != 2)
        {
          v111 = 0;
          goto LABEL_45;
        }

        v115 = *(v100 + 16);
        v114 = *(v100 + 24);
        v116 = __OFSUB__(v114, v115);
        v111 = v114 - v115;
        if (!v116)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      else if (!v110)
      {
        v111 = BYTE6(v107);
LABEL_45:
        *(v108 + 4) = v111;
        sub_100016590(v100, v107);
        *(v108 + 12) = 2082;
        v117 = Data.hexString.getter();
        v119 = sub_1000136BC(v117, v118, &v317);

        *(v108 + 14) = v119;
        _os_log_impl(&_mh_execute_header, v105, v106, "Decoding advertisement from advertisementData[%ld]: %{public}s", v108, 0x16u);
        sub_100007BAC(v109);

        v102 = v107;
LABEL_46:
        v120 = [v56 trackingIdentifier];
        v121 = [v120 isPosh];

        v122 = [v56 trackingIdentifier];
        v123 = [v122 networkID];

        v124 = [v56 trackingIdentifier];
        v125 = [v124 status];

        if (v123 == 1)
        {
          v126 = 5;
        }

        else
        {
          v126 = 6;
        }

        if (v121)
        {
          v127 = v126;
        }

        else
        {
          v127 = ((v125 >> 4) & 3);
        }

        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.default.getter();
        v130 = os_log_type_enabled(v128, v129);
        v312 = v100;
        if (v130)
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v317 = v132;
          *v131 = 136446210;
          v133 = sub_100781578(v127);
          v135 = v127;
          v127 = v56;
          v136 = sub_1000136BC(v133, v134, &v317);
          v100 = v312;

          *(v131 + 4) = v136;
          v56 = v127;
          LOBYTE(v127) = v135;
          _os_log_impl(&_mh_execute_header, v128, v129, "UnauthorizedTrackingAdvertisementType: %{public}s", v131, 0xCu);
          sub_100007BAC(v132);
        }

        v137 = v315;
        v138 = v309;
        switch(v127)
        {
          case 4u:
            v165 = v56;
            v166 = Logger.logObject.getter();
            v167 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              *v168 = 67109632;
              v169 = [v165 trackingIdentifier];
              v170 = [v169 isPosh];

              *(v168 + 4) = v170;
              *(v168 + 8) = 256;
              v171 = [v165 trackingIdentifier];
              LOBYTE(v170) = [v171 networkID];

              *(v168 + 10) = v170;
              *(v168 + 11) = 256;
              v172 = [v165 trackingIdentifier];
              LOBYTE(v170) = [v172 status];

              *(v168 + 13) = v170;
              v100 = v312;

              _os_log_impl(&_mh_execute_header, v166, v167, "Unknown advertisement type. isPosh: %{BOOL}d networkID: %hhu status: %hhu", v168, 0xEu);
            }

            else
            {

              v166 = v165;
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v319 = 6;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v175 = swift_initStackObject();
            *(v175 + 16) = xmmword_101385D80;
            *(v175 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v177 = v175 + 32;
            v178 = "Unknown advertisement type";
            goto LABEL_77;
          case 6u:
            v143 = [v56 trackingIdentifier];
            v144 = [v143 address];

            v145 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v147 = v146;

            sub_100017D5C(v145, v147);
            v148 = v300;
            v311 = v147;
            MACAddress.init(data:type:)();
            v149 = v306;
            v150 = v308;
            if ((*(v306 + 48))(v148, 1, v308) == 1)
            {
              sub_10000B3A8(v148, &qword_1016A40D0, &unk_10138BE70);
              v151 = v311;
              sub_100017D5C(v145, v311);
              v152 = Logger.logObject.getter();
              v153 = static os_log_type_t.error.getter();
              sub_100016590(v145, v151);
              if (os_log_type_enabled(v152, v153))
              {
                v154 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                v317 = v155;
                *v154 = 136446210;
                v156 = Data.hexString.getter();
                v158 = sub_1000136BC(v156, v157, &v317);

                *(v154 + 4) = v158;
                _os_log_impl(&_mh_execute_header, v152, v153, "Invalid MAC address %{public}s", v154, 0xCu);
                sub_100007BAC(v155);
              }

              type metadata accessor for TrackingAvoidanceError(0);
              v319 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v159 = swift_initStackObject();
              *(v159 + 16) = xmmword_101385D80;
              *(v159 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v159 + 72) = &type metadata for String;
              *(v159 + 40) = v160;
              *(v159 + 48) = 0xD00000000000001FLL;
              *(v159 + 56) = 0x800000010135F4D0;
              sub_10090403C(v159);
              swift_setDeallocating();
              sub_10000B3A8(v159 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v161 = v317;
              v162 = _convertErrorToNSError(_:)();
              v82 = v313;
              (v313)[2](v313, v162);

              sub_100016590(v100, v102);
              v163 = v145;
              v164 = v311;
              goto LABEL_78;
            }

            v310 = v145;
            v288 = v102;
            v190 = v148;
            v191 = v303;
            (*(v149 + 32))(v303, v190, v150);
            (*(v149 + 16))(v138, v191, v150);
            v192 = v149;
            v193 = Logger.logObject.getter();
            v194 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = v138;
              v196 = swift_slowAlloc();
              v197 = swift_slowAlloc();
              v317 = v197;
              *v196 = 136446210;
              sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
              v198 = dispatch thunk of CustomStringConvertible.description.getter();
              v200 = v199;
              v201 = v195;
              v202 = *(v192 + 8);
              v202(v201, v308);
              v203 = sub_1000136BC(v198, v200, &v317);
              v150 = v308;

              *(v196 + 4) = v203;
              _os_log_impl(&_mh_execute_header, v193, v194, "Posh address: %{public}s", v196, 0xCu);
              sub_100007BAC(v197);
              v204 = v288;
            }

            else
            {

              v202 = *(v149 + 8);
              v202(v138, v150);
              v204 = v288;
            }

            v228 = type metadata accessor for UUID();
            v229 = v305;
            (*(*(v228 - 8) + 56))(v305, 1, 1, v228);
            v219 = v313;
            _Block_copy(v313);
            v230 = v303;
            sub_1007A4B48(v303, v229, v314, 0, 0, 0, v315, v219);
            _Block_release(v219);
            sub_100016590(v310, v311);
            sub_100016590(v312, v204);
            sub_10000B3A8(v229, &qword_1016980D0, &unk_10138F3B0);
            v202(v230, v150);
LABEL_89:
            _Block_release(v219);
            _Block_release(v219);
            v206 = v219;
            goto LABEL_80;
          case 5u:
            sub_100017D5C(v100, v102);
            sub_100497060(v100, v102, &v317);
            v139 = v318;
            if (v318 >> 60 == 15)
            {
              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                *v142 = 0;
                _os_log_impl(&_mh_execute_header, v140, v141, "received an advertisement of unexpected length or format", v142, 2u);
              }

LABEL_70:

              type metadata accessor for TrackingAvoidanceError(0);
              v319 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v175 = swift_initStackObject();
              *(v175 + 16) = xmmword_101385D80;
              *(v175 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v177 = v175 + 32;
              v178 = "Advertisement is malformed";
LABEL_77:
              *(v175 + 72) = &type metadata for String;
              *(v175 + 40) = v176;
              *(v175 + 48) = 0xD00000000000001ALL;
              *(v175 + 56) = (v178 - 32) | 0x8000000000000000;
              sub_10090403C(v175);
              swift_setDeallocating();
              sub_10000B3A8(v177, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v161 = v317;
              v205 = _convertErrorToNSError(_:)();
              v82 = v313;
              (v313)[2](v313, v205);

              v163 = v100;
              v164 = v102;
LABEL_78:
              sub_100016590(v163, v164);

              goto LABEL_79;
            }

            break;
          default:
            sub_100017D5C(v100, v102);
            sub_100497060(v100, v102, &v317);
            v139 = v318;
            if (v318 >> 60 == 15)
            {
              v140 = Logger.logObject.getter();
              v173 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v140, v173))
              {
                v174 = swift_slowAlloc();
                *v174 = 0;
                _os_log_impl(&_mh_execute_header, v140, v173, "received an advertisement of unexpected length or format", v174, 2u);
              }

              goto LABEL_70;
            }

            break;
        }

        v288 = v102;
        v179 = v317;
        v180 = *(*(v137 + 16) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v181 = type metadata accessor for UUID();
        v300 = *(v181 - 8);
        v182 = *(v300 + 7);
        v183 = 1;
        v184 = v307;
        v309 = v181;
        v303 = v182;
        (v182)(v307, 1, 1);
        v316 = v179;
        v185 = v139;
        v186 = sub_1012DD334(v179, v139, v184);
        v187 = v186[2];
        v188 = v301;
        v189 = v304;
        if (v187)
        {
          sub_1007A7DFC(v186 + ((*(v301 + 80) + 32) & ~*(v301 + 80)) + *(v301 + 72) * (v187 - 1), v304, type metadata accessor for BeaconKeyManager.IndexInformation);
          v183 = 0;
        }

        sub_10000B3A8(v307, &qword_1016980D0, &unk_10138F3B0);
        v207 = v302;
        (*(v188 + 56))(v189, v183, 1, v302);
        if ((*(v188 + 48))(v189, 1, v207) == 1)
        {
          sub_10000B3A8(v189, &unk_1016C1120, &qword_1013C49D0);
          v208 = v316;
          v209 = v185;
          sub_100017D5C(v316, v185);
          v210 = static MACAddress.length.getter();
          sub_10002EA98(v210, v208, v185, &v317);
          v211 = v296;
          MACAddress.init(data:type:)();
          v212 = v306;
          v213 = v308;
          v214 = (*(v306 + 48))(v211, 1, v308);
          v215 = v288;
          if (v214 == 1)
          {
            v285 = v313;
            _Block_release(v313);
            _Block_release(v285);
            _Block_release(v285);
            _Block_release(v285);
            __break(1u);
LABEL_111:
            v286 = v313;
            _Block_release(v313);
            _Block_release(v286);
            _Block_release(v286);
            _Block_release(v286);
            __break(1u);
            return;
          }

          v216 = v297;
          (*(v212 + 32))(v297, v211, v213);
          v217 = v305;
          (v303)(v305, 1, 1, v309);
          v218 = v212;
          v219 = v313;
          _Block_copy(v313);
          sub_1007A4B48(v216, v217, v314, 0, 0, 0, v315, v219);
          _Block_release(v219);
          sub_100006654(v208, v209);
          sub_100016590(v312, v215);
          sub_10000B3A8(v217, &qword_1016980D0, &unk_10138F3B0);
          (*(v218 + 8))(v216, v213);
          goto LABEL_89;
        }

        v220 = v299;
        sub_1007A91C8(v189, v299, type metadata accessor for BeaconKeyManager.IndexInformation);
        v221 = v298;
        sub_100AA33AC(v220, v298);
        v222 = type metadata accessor for OwnedBeaconRecord();
        v223 = (*(*(v222 - 8) + 48))(v221, 1, v222);
        sub_10000B3A8(v221, &unk_1016A9A20, &qword_10138B280);
        v56 = v288;
        v108 = v185;
        if (v223 == 1)
        {
          v224 = v294;
          sub_100AA5198(v220, v294);
          v225 = v295;
          v226 = (*(v293 + 48))(v224, 1, v295);
          v88 = v316;
          if (v226 == 1)
          {
            sub_10000B3A8(v224, &unk_101698C30, &unk_101392630);
            v227 = v312;
          }

          else
          {
            v288 = v56;
            v249 = v292;
            sub_1007A91C8(v224, v292, type metadata accessor for SharedBeaconRecord);
            v250 = *(v249 + *(v225 + 64));
            v227 = v312;
            if (v250 == 1 || v250 == 4)
            {
              v304 = v108;
              static os_log_type_t.default.getter();
              if (qword_1016950B0 != -1)
              {
                swift_once();
              }

              v251 = qword_10177C3F8;
              v252 = swift_allocObject();
              v307 = xmmword_101385D80;
              *(v252 + 16) = xmmword_101385D80;
              sub_1007A7DFC(v249, v291, type metadata accessor for SharedBeaconRecord);
              v253 = v295;
              v254 = String.init<A>(describing:)();
              v255 = v310;
              *(v252 + 56) = &type metadata for String;
              *(v252 + 64) = v255;
              *(v252 + 32) = v254;
              *(v252 + 40) = v256;
              v302 = v251;
              os_log(_:dso:log:_:_:)();

              v86 = *(v253 + 20);
              if ((sub_100785DE8(v86 + v249) & 1) == 0)
              {
                goto LABEL_100;
              }

              v257 = String.init(format:_:)();
              v259 = v258;
              static os_log_type_t.default.getter();
              v260 = swift_allocObject();
              *(v260 + 16) = v307;
              *(v260 + 56) = &type metadata for String;
              *(v260 + 64) = v255;
              *(v260 + 32) = v257;
              *(v260 + 40) = v259;

              os_log(_:dso:log:_:_:)();

              type metadata accessor for TrackingAvoidanceError(0);
              v319 = 7;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v261 = swift_initStackObject();
              *(v261 + 16) = v307;
              *(v261 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v261 + 72) = &type metadata for String;
              *(v261 + 40) = v262;
              *(v261 + 48) = v257;
              *(v261 + 56) = v259;
              sub_10090403C(v261);
              swift_setDeallocating();
              sub_10000B3A8(v261 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v263 = v317;
              v264 = _convertErrorToNSError(_:)();
              v82 = v313;
              (v313)[2](v313, v264);

              sub_100006654(v316, v304);
              sub_100016590(v312, v288);
              sub_1007A810C(v299, type metadata accessor for BeaconKeyManager.IndexInformation);
              v265 = type metadata accessor for SharedBeaconRecord;
              v266 = v249;
              goto LABEL_105;
            }

            sub_1007A810C(v249, type metadata accessor for SharedBeaconRecord);
            v56 = v288;
          }

          type metadata accessor for TrackingAvoidanceError(0);
          v319 = 6;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v283 = v317;
          v284 = _convertErrorToNSError(_:)();
          v82 = v313;
          (v313)[2](v313, v284);

          sub_100006654(v88, v108);
          v248 = v227;
LABEL_104:
          sub_100016590(v248, v56);
          v265 = type metadata accessor for BeaconKeyManager.IndexInformation;
          v266 = v299;
LABEL_105:
          sub_1007A810C(v266, v265);
          goto LABEL_79;
        }

        static os_log_type_t.default.getter();
        if (qword_1016950B0 == -1)
        {
LABEL_91:
          os_log(_:dso:log:_:_:)();
          v231 = swift_allocObject();
          v315 = xmmword_101385D80;
          *(v231 + 16) = xmmword_101385D80;
          v232 = [v314 trackingIdentifier];
          v233 = [v232 advertisementData];

          v234 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v236 = v235;

          v237 = Data.hexString.getter();
          v239 = v238;
          sub_100016590(v234, v236);
          v240 = v310;
          *(v231 + 56) = &type metadata for String;
          *(v231 + 64) = v240;
          *(v231 + 32) = v237;
          *(v231 + 40) = v239;
          v241 = String.init(format:_:)();
          v243 = v242;
          type metadata accessor for TrackingAvoidanceError(0);
          v319 = 8;
          sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
          v244 = swift_initStackObject();
          *(v244 + 16) = v315;
          *(v244 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v244 + 72) = &type metadata for String;
          *(v244 + 40) = v245;
          *(v244 + 48) = v241;
          *(v244 + 56) = v243;
          sub_10090403C(v244);
          swift_setDeallocating();
          sub_10000B3A8(v244 + 32, &unk_101695C20, &unk_101386D90);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v246 = v317;
          v247 = _convertErrorToNSError(_:)();
          v82 = v313;
          (v313)[2](v313, v247);

          sub_100006654(v316, v108);
          v248 = v312;
          goto LABEL_104;
        }

LABEL_109:
        swift_once();
        goto LABEL_91;
      }

      LODWORD(v111) = HIDWORD(v100) - v100;
      if (__OFSUB__(HIDWORD(v100), v100))
      {
        __break(1u);
        goto LABEL_109;
      }

      v111 = v111;
      goto LABEL_45;
    }

    if ((v87 & 0xC000000000000001) != 0)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v90 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_99;
      }

      v91 = *(v87 + 8 * v90 + 32);
    }

    v92 = v91;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    v86 = sub_1010E13F0();

    ++v90;
    if (v86)
    {

      static os_log_type_t.error.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      type metadata accessor for TrackingAvoidanceError(0);
      v319 = 11;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = inited + 32;
      v96 = 0x800000010135F490;
      *(inited + 72) = &type metadata for String;
      v97 = 0xD00000000000001CLL;
LABEL_36:
      *(inited + 40) = v94;
      *(inited + 48) = v97;
      *(inited + 56) = v96;
      sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(v95, &unk_101695C20, &unk_101386D90);
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v112 = v317;
      v113 = _convertErrorToNSError(_:)();
      v82 = v313;
      (v313)[2](v313, v113);

LABEL_79:
      _Block_release(v82);
      _Block_release(v82);
      v206 = v82;
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  v267 = v304;
  sub_100017D5C(v88, v304);
  v268 = static MACAddress.length.getter();
  sub_10002EA98(v268, v88, v267, &v317);
  v269 = v289;
  MACAddress.init(data:type:)();
  v270 = v306;
  v271 = v308;
  if ((*(v306 + 48))(v269, 1, v308) == 1)
  {
    goto LABEL_111;
  }

  v272 = v290;
  (*(v270 + 32))(v290, v269, v271);
  v273 = v292;
  v274 = v86 + v292;
  v275 = v305;
  v276 = v309;
  (*(v300 + 2))(v305, v274, v309);
  (v303)(v275, 0, 1, v276);
  v277 = (v273 + *(v295 + 28));
  v278 = v270;
  v279 = *v277;
  v280 = *(v277 + 1);
  v281 = *(v277 + 2);
  v282 = v313;
  _Block_copy(v313);
  sub_1007A4B48(v272, v275, v314, v279, v280, v281, v315, v282);
  _Block_release(v282);
  sub_100006654(v316, v267);
  sub_100016590(v312, v288);
  sub_10000B3A8(v275, &qword_1016980D0, &unk_10138F3B0);
  (*(v278 + 8))(v272, v308);
  sub_1007A810C(v299, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_1007A810C(v273, type metadata accessor for SharedBeaconRecord);
  _Block_release(v282);
  _Block_release(v282);
  v206 = v282;
LABEL_80:
  _Block_release(v206);
}

unint64_t sub_1007A7D10()
{
  result = qword_1016A94C8;
  if (!qword_1016A94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A94C8);
  }

  return result;
}

unint64_t sub_1007A7D8C()
{
  result = qword_1016A9510;
  if (!qword_1016A9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9510);
  }

  return result;
}

uint64_t sub_1007A7DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007A7E6C(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_10078D7A8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1007A7FA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1007A7FE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

void sub_1007A8054(uint64_t a1)
{
  v3 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + v8);

  sub_100793D50(a1, v1 + v4, v7, v10, v11);
}

uint64_t sub_1007A810C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007A816C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1007A8208(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101191C00(a1, a2, v2 + v6, v7);
}

uint64_t sub_1007A82B4()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1007A8390(void (*a1)(void, void, void))
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for MACAddress() - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v8 + v12) & ~v8;
  v14 = (v13 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_10078798C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), (v1 + v9), v1 + v12, (v1 + v13), *(v1 + ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v14), *(v1 + v14 + 8), *(v1 + v15), *(v1 + v15 + 8));
}

uint64_t sub_1007A857C()
{
  v2 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10078C2B0(v4, v0 + v3);
}

uint64_t sub_1007A8654(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for MACAddress() - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 8 + v5) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v7 + 8 + v12) & ~v7;
  v14 = (v13 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100789E8C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), (v1 + v8), v1 + v11, *(v1 + v12), (v1 + v13), *(v1 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v14), *(v1 + v15), *(v1 + v15 + 8), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1007A8840()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v74 = *(*(v2 - 1) + 80);
  v72 = *(*(v2 - 1) + 64);
  v73 = (v74 + 17) & ~v74;
  v3 = v0 + v73;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v73, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v3 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = *(v3 + v2[8]);

  v11 = v2[10];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v75 = *(v13 + 8);
  v75(v3 + v11, v12);
  v14 = v2[11];
  v70 = *(v13 + 48);
  if (!v70(v3 + v14, 1, v12))
  {
    v75(v3 + v14, v12);
  }

  v71 = v12;
  v15 = *(v3 + v2[12] + 16);

  v16 = v3 + v2[14];
  v17 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v6(v16, v4);
    sub_100016590(*(v16 + v17[5]), *(v16 + v17[5] + 8));
    v18 = *(v16 + v17[6] + 8);

    v19 = *(v16 + v17[7] + 8);

    v20 = v17[9];
    v21 = type metadata accessor for AirTagVersionNumber();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v23 = *(v16 + v17[16] + 8);
  }

  v24 = v3 + v2[15];
  v25 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v25 - 1) + 48))(v24, 1, v25))
  {
    v69 = v1;
    v26 = v25[5];
    v27 = type metadata accessor for ServerStatusCode();
    (*(*(v27 - 8) + 8))(v24 + v26, v27);
    v28 = *(v24 + v25[9] + 8);

    v29 = *(v24 + v25[13] + 8);

    v30 = *(v24 + v25[14] + 8);

    v31 = *(v24 + v25[16] + 8);

    v32 = v25[17];
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (!v35(v24 + v32, 1, v33))
    {
      (*(v34 + 8))(v24 + v32, v33);
    }

    v36 = v25[18];
    v68 = v35;
    if (!v35(v24 + v36, 1, v33))
    {
      (*(v34 + 8))(v24 + v36, v33);
    }

    v37 = *(v24 + v25[19] + 8);

    v38 = (v24 + v25[21]);
    v39 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v39 - 1) + 48))(v38, 1, v39))
    {
      v40 = *(v38 + 1);

      v41 = *(v38 + 3);

      v42 = *(v38 + 5);

      v43 = *(v38 + 9);

      v66 = v39[11];
      if (!v68(&v38[v66], 1, v33))
      {
        (*(v34 + 8))(&v38[v66], v33);
      }

      v67 = v39[12];
      if (!v68(&v38[v67], 1, v33))
      {
        (*(v34 + 8))(&v38[v67], v33);
      }

      v44 = *&v38[v39[15] + 8];

      v45 = *&v38[v39[16]];

      v46 = *&v38[v39[17] + 8];

      v47 = *&v38[v39[18]];
    }

    v48 = *(v24 + v25[23]);

    v49 = (v24 + v25[24]);
    v50 = v49[1];
    if (v50 >> 60 != 15)
    {
      sub_100016590(*v49, v50);
    }

    v51 = (v24 + v25[25]);
    v52 = v51[1];
    if (v52 >> 60 != 15)
    {
      sub_100016590(*v51, v52);
    }

    v53 = *(v34 + 8);
    v53(v24 + v25[26], v33);
    v53(v24 + v25[27], v33);
    v53(v24 + v25[28], v33);
    v53(v24 + v25[29], v33);
    v53(v24 + v25[30], v33);
    v53(v24 + v25[31], v33);
    v54 = *(v24 + v25[32] + 8);

    v55 = *(v24 + v25[33]);

    v56 = *(v24 + v25[34] + 8);

    v57 = *(v24 + v25[35]);

    v53(v24 + v25[38], v33);
    v53(v24 + v25[39], v33);
    v53(v24 + v25[40], v33);
    v53(v24 + v25[41], v33);
    v53(v24 + v25[42], v33);
    v53(v24 + v25[43], v33);
    v58 = *(v24 + v25[47] + 8);

    v59 = *(v24 + v25[48] + 8);

    v1 = v69;
  }

  v60 = *(v3 + v2[17]);

  v61 = v2[18];
  if (!v70(v3 + v61, 1, v71))
  {
    v75(v3 + v61, v71);
  }

  v62 = v2[19];
  if (!v70(v3 + v62, 1, v71))
  {
    v75(v3 + v62, v71);
  }

  v63 = (v3 + v2[20]);
  v64 = v63[1];
  if (((v64 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v63, v64);
  }

  return _swift_deallocObject(v1, v73 + v72);
}

uint64_t sub_1007A90E4()
{
  v2 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_10078B7F4(v4, v0 + v3);
}

uint64_t sub_1007A91C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007A9248(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80));
  v11 = *(v10 + *(v8 + 64));
  LOBYTE(v7) = *(v2 + v7);

  sub_1007A2798(v2 + v6, v7, v10, v11, v9, a1, a2);
}

uint64_t sub_1007A938C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1007A93CC()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v77 = *(*(v2 - 1) + 80);
  v75 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v76 = (v77 + 80) & ~v77;
  v7 = v0 + v76;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v76, v8);
  v11 = v2[5];
  if (!(*(v9 + 48))(v0 + v76 + v11, 1, v8))
  {
    v10(v7 + v11, v8);
  }

  v12 = v2[7];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);
  v14 = *(v7 + v2[8]);

  v15 = v2[10];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v78 = *(v17 + 8);
  v78(v7 + v15, v16);
  v18 = v2[11];
  v73 = *(v17 + 48);
  if (!v73(v7 + v18, 1, v16))
  {
    v78(v7 + v18, v16);
  }

  v74 = v16;
  v19 = *(v7 + v2[12] + 16);

  v20 = v7 + v2[14];
  v21 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v10(v20, v8);
    sub_100016590(*(v20 + v21[5]), *(v20 + v21[5] + 8));
    v22 = *(v20 + v21[6] + 8);

    v23 = *(v20 + v21[7] + 8);

    v24 = v21[9];
    v25 = type metadata accessor for AirTagVersionNumber();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }

    v27 = *(v20 + v21[16] + 8);
  }

  v28 = v7 + v2[15];
  v29 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {
    v30 = v29[5];
    v31 = type metadata accessor for ServerStatusCode();
    (*(*(v31 - 8) + 8))(v28 + v30, v31);
    v32 = *(v28 + v29[9] + 8);

    v33 = *(v28 + v29[13] + 8);

    v34 = *(v28 + v29[14] + 8);

    v35 = *(v28 + v29[16] + 8);

    v36 = v29[17];
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(v28 + v36, 1, v37))
    {
      (*(v38 + 8))(v28 + v36, v37);
    }

    v72 = v1;
    v40 = v29[18];
    if (!v39(v28 + v40, 1, v37))
    {
      (*(v38 + 8))(v28 + v40, v37);
    }

    v41 = *(v28 + v29[19] + 8);

    v42 = (v28 + v29[21]);
    v43 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v43 - 1) + 48))(v42, 1, v43))
    {
      v44 = *(v42 + 1);

      v45 = *(v42 + 3);

      v46 = *(v42 + 5);

      v47 = *(v42 + 9);

      v70 = v43[11];
      if (!v39(&v42[v70], 1, v37))
      {
        (*(v38 + 8))(&v42[v70], v37);
      }

      v71 = v43[12];
      if (!v39(&v42[v71], 1, v37))
      {
        (*(v38 + 8))(&v42[v71], v37);
      }

      v48 = *&v42[v43[15] + 8];

      v49 = *&v42[v43[16]];

      v50 = *&v42[v43[17] + 8];

      v51 = *&v42[v43[18]];
    }

    v52 = *(v28 + v29[23]);

    v53 = (v28 + v29[24]);
    v54 = v53[1];
    v1 = v72;
    if (v54 >> 60 != 15)
    {
      sub_100016590(*v53, v54);
    }

    v55 = (v28 + v29[25]);
    v56 = v55[1];
    if (v56 >> 60 != 15)
    {
      sub_100016590(*v55, v56);
    }

    v57 = *(v38 + 8);
    v57(v28 + v29[26], v37);
    v57(v28 + v29[27], v37);
    v57(v28 + v29[28], v37);
    v57(v28 + v29[29], v37);
    v57(v28 + v29[30], v37);
    v57(v28 + v29[31], v37);
    v58 = *(v28 + v29[32] + 8);

    v59 = *(v28 + v29[33]);

    v60 = *(v28 + v29[34] + 8);

    v61 = *(v28 + v29[35]);

    v57(v28 + v29[38], v37);
    v57(v28 + v29[39], v37);
    v57(v28 + v29[40], v37);
    v57(v28 + v29[41], v37);
    v57(v28 + v29[42], v37);
    v57(v28 + v29[43], v37);
    v62 = *(v28 + v29[47] + 8);

    v63 = *(v28 + v29[48] + 8);
  }

  v64 = *(v7 + v2[17]);

  v65 = v2[18];
  if (!v73(v7 + v65, 1, v74))
  {
    v78(v7 + v65, v74);
  }

  v66 = v2[19];
  if (!v73(v7 + v66, 1, v74))
  {
    v78(v7 + v66, v74);
  }

  v67 = (v7 + v2[20]);
  v68 = v67[1];
  if (((v68 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v67, v68);
  }

  return _swift_deallocObject(v1, v76 + v75);
}

uint64_t sub_1007A9D20()
{
  sub_100007BAC(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t getEnumTagSinglePayload for UnauthorizedTrackingAdvertisementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnauthorizedTrackingAdvertisementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1007A9ED0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1007A9EE4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_1007A9F08()
{
  result = qword_1016A9678;
  if (!qword_1016A9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9678);
  }

  return result;
}

uint64_t sub_1007A9FEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000210EC(a1);
  if ((v5 & 1) == 0)
  {
    return 6;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1010062B8();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + v6);
  sub_100AF76A8(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1007AA10C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000210EC(a1);
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
    sub_10100B118();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_100B27F70(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1007AA200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000210EC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100EB44();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
    v22 = *(updated - 8);
    sub_1000293B8(v14 + *(v22 + 72) * v8, a2, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    sub_100AFAEF8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = updated;
  }

  else
  {
    v20 = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1007AA39C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100772DDC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100EE0C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
    sub_1007AF224(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_100AFB260(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1007AA564(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_1000210EC(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

uint64_t sub_1007AA644()
{
  v0 = type metadata accessor for URL();
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694928 != -1)
  {
    v10 = v2;
    swift_once();
    v2 = v10;
  }

  sub_1000076D4(v2, qword_10177B2F0);
  URL.appendingPathComponent(_:)();
  v5 = type metadata accessor for BeaconObservationStore();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1007AB3D4(v4);
  qword_10177B2E8 = v8;
  return result;
}

uint64_t sub_1007AA740()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177B2F0);
  sub_1000076D4(v0, qword_10177B2F0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1007AA89C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL, v5);
  v10 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v34 = a1;
    v13 = Data.init(contentsOf:options:)();
    if (v2)
    {
      v32 = a2;
      v33 = 0;
      v31 = static os_log_type_t.error.getter();
      if (qword_101694930 != -1)
      {
        swift_once();
      }

      v30[1] = qword_10177B308;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10138BBE0;
      sub_1007AF130(&qword_1016B14E0, &type metadata accessor for URL);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      v24 = sub_100008C00();
      *(v20 + 64) = v24;
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      v35 = v2;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v25 = String.init<A>(describing:)();
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v24;
      *(v20 + 72) = v25;
      *(v20 + 80) = v26;
      os_log(_:dso:log:_:_:)();

      (*(v6 + 8))(v9, v5);
      v29 = &_swiftEmptyDictionarySingleton;
      a2 = v32;
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = type metadata accessor for PropertyListDecoder();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      sub_1007AEEC0();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v33 = 0;
      (*(v6 + 8))(v9, v5);

      sub_100016590(v15, v16);
      v29 = v35;
    }

    v27 = *(v34 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
    *(v34 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap) = v29;
  }

  else
  {
    result = (*(v6 + 8))(v9, v5);
    v29 = &_swiftEmptyDictionarySingleton;
  }

  *a2 = v29;
  return result;
}

uint64_t sub_1007AAC84(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap))
  {
    *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap) = a1;
  }

  v16 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_fileWriteQueue);
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = a1;
    aBlock[4] = sub_1007AEAB8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101632F40;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v24 + 8))(v6, v3);
    (*(v7 + 8))(v10, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007AB060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v14 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL;
  v15 = v5[2];
  v26 = a1;
  v15(v11, a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL, v4);
  URL.deletingLastPathComponent()();
  v16 = v5[1];
  v16(v11, v4);
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v16(v13, v4);
  v17 = type metadata accessor for PropertyListEncoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v28 = a2;
  sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
  sub_1007AEAC0();
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;
  v23 = v26 + v14;
  v24 = v27;
  v15(v27, v23, v4);
  Data.write(to:excludeFromBackup:options:)();
  v16(v24, v4);
  sub_100016590(v20, v22);
}

uint64_t sub_1007AB3D4(uint64_t a1)
{
  v41 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v44 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  v47 = v1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_systemClockChangedSubscription) = 0;
  PressuredExitTransactionManager.init()();
  v40 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue;
  v43 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v37 = "observations.plist";
  v12 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v38 = *(v8 + 104);
  v39 = v8 + 104;
  v45 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v38(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1007AF130(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v13 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  v42 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v36;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v47;
  *(v47 + v40) = v15;
  *(v16 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions) = _swiftEmptyArrayStorage;
  v40 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionPublishQueue;
  v37 = "tore.subscription";
  v17 = v12;
  v18 = v44;
  v19 = v38;
  v38(v14, v17, v44);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  v35 = v13;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v47 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
  v37 = "tore.publishToSubscribers";
  v19(v14, v45, v18);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = v47;
  *(v47 + v40) = v20;
  v40 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_fileWriteQueue;
  v19(v14, v45, v44);
  v22 = v21;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v21 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v21 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap) = 0;
  v23 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_automaticTimeEnabled;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v24 = qword_10177CEA0;
  v25 = *(qword_10177CEA0 + 48);

  AnyCurrentValuePublisher.value.getter();

  *(v22 + v23) = v48;
  v26 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = v41;
  (*(v28 + 16))(v22 + v26, v41, v27);
  v30 = *(v24 + 48);

  v31 = AnyCurrentValuePublisher.publisher.getter();

  v48 = v31;
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  v32 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v29, v27);

  v33 = *(v22 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_systemClockChangedSubscription);
  *(v22 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_systemClockChangedSubscription) = v32;

  return v22;
}

uint64_t sub_1007ABA88(char *a1)
{
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    static DispatchWorkItemFlags.barrier.getter();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v12;
    aBlock[4] = sub_1007AEAAC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101632EF0;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_1007ABD1C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007ABD7C(a2 & 1);
  }

  return result;
}

uint64_t sub_1007ABD7C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_automaticTimeEnabled;
  v12 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_automaticTimeEnabled);
  static os_log_type_t.default.getter();
  if (v12 != (a1 & 1))
  {
    if (qword_101694930 == -1)
    {
LABEL_4:
      os_log(_:dso:log:_:_:)();
      *(v1 + v10) = a1 & 1;
      sub_1007AAC84(&_swiftEmptyDictionarySingleton);
      static os_log_type_t.default.getter();
      return os_log(_:dso:log:_:_:)();
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_101694930 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = &type metadata for Bool;
  *(v14 + 64) = &protocol witness table for Bool;
  *(v14 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1007AC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = type metadata accessor for DispatchQoS();
  v21 = *(v23 - 8);
  v10 = *(v21 + 64);
  __chkstk_darwin(v23);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_1007AEC94;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101632F90;
  v18 = _Block_copy(aBlock);

  sub_100012908(a4);
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v21 + 8))(v12, v23);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_1007AC284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v88 = a3;
  v87 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v87 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v87);
  v86 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v10 = *(v85 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v85);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for BeaconObservation();
  v92 = *(v83 - 8);
  v13 = *(v92 + 64);
  v14 = __chkstk_darwin(v83);
  v82 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v70 = &v68 - v16;
  __chkstk_darwin(v15);
  v18 = &v68 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap))
  {
    v25 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
  }

  else
  {
    v91 = v7;
    v26 = v10;
    v27 = a1;
    v28 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    *v24 = v28;
    v29 = v22;
    (*(v20 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v22);
    v30 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    result = (*(v20 + 8))(v24, v29);
    if ((v28 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v32 = objc_autoreleasePoolPush();
    sub_1007AA89C(v27, aBlock);
    objc_autoreleasePoolPop(v32);
    v25 = aBlock[0];
    a1 = v27;
    v10 = v26;
    v7 = v91;
  }

  v33 = *(a2 + 16);
  v91 = a1;
  if (v33)
  {
    v81 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    v34 = *(v92 + 80);
    v35 = (v34 + 32) & ~v34;
    v36 = a2 + v35;
    v37 = *(v92 + 72);
    v79 = v35;
    v69 = v35 + 2 * v37;
    v80 = v34;
    v78 = (v34 + 24) & ~v34;
    v77 = (v13 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = v95;
    v74 = (v7 + 8);
    v73 = (v10 + 8);

    v71 = xmmword_101385D80;
    v68 = xmmword_10138BBE0;
    v72 = v37;
    do
    {
      sub_10073B64C(v36, v18);
      if (*(v25 + 16) && (v55 = sub_1000210EC(v18), (v56 & 1) != 0))
      {
        v57 = *(*(v25 + 56) + 8 * v55);
      }

      else
      {
        v57 = sub_10090A254(_swiftEmptyArrayStorage);
      }

      v92 = v33;
      v58 = v18[*(v83 + 24)];
      if (v57[2] && (v59 = sub_100772048(v18[*(v83 + 24)]), (v60 & 1) != 0) && (v61 = *(v57[7] + 8 * v59), *(v61 + 16)))
      {
        v62 = v79;
        v63 = v70;
        sub_10073B64C(v61 + v79, v70);
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v64 = swift_allocObject();
        *(v64 + 16) = v68;
        v65 = v64 + v62;
        sub_10073B64C(v18, v65);
        sub_10073B64C(v63, v65 + v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v57;
        sub_100FFBA7C(v64, v58, isUniquelyReferenced_nonNull_native);
        v41 = aBlock[0];
        sub_1007AF224(v63, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v38 = v79;
        v39 = swift_allocObject();
        *(v39 + 16) = v71;
        sub_10073B64C(v18, v39 + v38);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v57;
        sub_100FFBA7C(v39, v58, v40);
        v41 = aBlock[0];
      }

      v42 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v25;
      sub_10100003C(v41, v18, v42);
      v25 = aBlock[0];
      v43 = v82;
      sub_10073B64C(v18, v82);
      v44 = v76;
      v45 = swift_allocObject();
      *(v45 + 16) = v91;
      sub_1000293B8(v43, v45 + v78, type metadata accessor for BeaconObservation);
      *(v45 + v77) = v88;
      v46 = (v45 + v44);
      v47 = v18;
      v48 = v89;
      v49 = v90;
      *v46 = v89;
      v46[1] = v49;
      v95[2] = sub_1007AECA4;
      v95[3] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v95[0] = sub_100006684;
      v95[1] = &unk_101632FE0;
      v50 = _Block_copy(aBlock);

      sub_100012908(v48);
      v51 = v84;
      static DispatchQoS.unspecified.getter();
      v93 = _swiftEmptyArrayStorage;
      sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v53 = v86;
      v52 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v50);
      v54 = v52;
      v18 = v47;
      (*v74)(v53, v54);
      (*v73)(v51, v85);
      sub_1007AF224(v47, type metadata accessor for BeaconObservation);

      v37 = v72;
      v36 += v72;
      v33 = v92 - 1;
    }

    while (v92 != 1);
  }

  else
  {
  }

  sub_1007AAC84(v67);
}

uint64_t sub_1007ACB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;

  sub_100012908(a4);
  sub_1007ACBB4(a2, sub_1007AED44, v9);
}

uint64_t sub_1007ACBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v63 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v45 = *(v64 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v64);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeaconObservation();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v13 - 8);
  v60 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v15;
  v59 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v16 = *(v59 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v59);
  v58 = &v40 - v18;
  v19 = *(v3 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue);
  sub_1000BC4D4(&qword_1016A97C0, &qword_1013BB820);
  OS_dispatch_queue.sync<A>(execute:)();
  v20 = aBlock[2];
  v21 = &unk_1016A9000;
  v43 = v4;
  if (v20)
  {
    v41 = a3;
    v22 = *(v4 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionPublishQueue);
    v23 = v16 + 16;
    v55 = *(v16 + 16);
    v56 = v22;
    v24 = *(v16 + 80);
    v25 = v12;
    v40 = aBlock;
    v26 = aBlock + ((v24 + 32) & ~v24);
    v54 = v24;
    v53 = (v24 + 16) & ~v24;
    v52 = v53 + v17;
    v51 = *(v23 + 56);
    v57 = v23;
    v50 = (v23 + 16);
    v49 = &v68;
    v42 = v7;
    v48 = (v7 + 8);
    v47 = (v45 + 8);
    v27 = v46;
    do
    {
      v29 = v58;
      v28 = v59;
      v55(v58, v26, v59);
      v30 = v60;
      sub_10073B64C(v63, v60);
      v31 = (v52 + *(v62 + 80)) & ~*(v62 + 80);
      v32 = swift_allocObject();
      (*v50)(v32 + v53, v29, v28);
      sub_1000293B8(v30, v32 + v31, type metadata accessor for BeaconObservation);
      v70 = sub_1007AEDE8;
      v71 = v32;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_100006684;
      v69 = &unk_101633058;
      v33 = _Block_copy(&aBlock);
      static DispatchQoS.unspecified.getter();
      v65 = _swiftEmptyArrayStorage;
      sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);
      (*v48)(v27, v6);
      (*v47)(v25, v64);

      v26 += v51;
      --v20;
    }

    while (v20);

    v7 = v42;
    v12 = v25;
    a3 = v41;
    v34 = v44;
    v21 = &unk_1016A9000;
  }

  else
  {

    v34 = v44;
  }

  v35 = *(v43 + v21[209]);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = a3;
  v70 = sub_10013A884;
  v71 = v36;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100006684;
  v69 = &unk_1016330A8;
  v37 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v38 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v7 + 8))(v38, v6);
  (*(v45 + 8))(v12, v64);
}

void sub_1007AD36C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A97F0, &qword_1013BB830);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
  v30 = a2;
  v31 = v2;
  if (v14)
  {
    v9 = v14;
LABEL_6:
    v32 = _swiftEmptyArrayStorage;
    v19 = 1 << *(v9 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v9[8];
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    while (v21)
    {
      v24 = v23;
LABEL_14:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v25 | (v24 << 6);
      v27 = v9[6];
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 16))(v8, v27 + *(*(v28 - 8) + 72) * v26, v28);
      v29 = *(v9[7] + 8 * v26);
      *&v8[*(v5 + 48)] = v29;
      swift_bridgeObjectRetain_n();
      sub_1007AF284(v8);
      sub_10039A2A8(v29);
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        *v30 = v32;
        return;
      }

      v21 = v9[v24 + 8];
      ++v23;
      if (v21)
      {
        v23 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v15 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v13 = v15;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v17 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = objc_autoreleasePoolPush();
  v18 = v31;
  sub_1007AA89C(a1, &v32);
  if (!v18)
  {
    v31 = 0;
    objc_autoreleasePoolPop(v9);
    v9 = v32;
    goto LABEL_6;
  }

LABEL_19:
  objc_autoreleasePoolPop(v9);
  __break(1u);
}

void sub_1007AD670(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v66 = a3;
  v60 = a2;
  v8 = type metadata accessor for BeaconObservation();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v64 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v53 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
  v62 = a4;
  v55 = a1;
  if (v19)
  {
    v20 = v19;
    goto LABEL_6;
  }

  v21 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v18 = v21;
  v22 = v16;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v16);
  v23 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v22);
  if ((v21 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = objc_autoreleasePoolPush();
  sub_1007AA89C(a1, &v69);
  if (!v4)
  {
    v5 = 0;
    objc_autoreleasePoolPop(v18);
    v20 = v69;
LABEL_6:
    v24 = v63;
    v69 = v20;
    v25 = v20[2];

    if (!v25 || (v26 = sub_1000210EC(v60), (v27 & 1) == 0))
    {

      return;
    }

    v53 = v5;
    v18 = *(v20[7] + 8 * v26);
    v54 = sub_10090A254(_swiftEmptyArrayStorage);
    v28 = v18 + 8;
    v29 = 1 << *(v18 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v18[8];
    v32 = (v29 + 63) >> 6;
    v59 = v18;

    v33 = 0;
    v57 = v32;
    v58 = v18 + 8;
LABEL_11:
    v34 = v33;
    if (!v31)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v33 = v34;
LABEL_16:
      v61 = v31;
      v35 = __clz(__rbit64(v31)) | (v33 << 6);
      v36 = v59[7];
      v56 = *(v59[6] + v35);
      v37 = *(v36 + 8 * v35);
      v38 = *(v37 + 16);

      v67 = v38;
      if (v38)
      {
        break;
      }

      v18 = _swiftEmptyArrayStorage;
LABEL_28:
      v31 = (v61 - 1) & v61;

      if (v18[2])
      {
        v45 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v45;
        sub_100FFBA7C(v18, v56, isUniquelyReferenced_nonNull_native);
        v54 = v68;
        v32 = v57;
        v28 = v58;
        goto LABEL_11;
      }

      v34 = v33;
      v32 = v57;
      v28 = v58;
      if (!v31)
      {
LABEL_13:
        while (1)
        {
          v33 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_37;
          }

          if (v33 >= v32)
          {

            v47 = v54;

            v48 = v69;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v68 = v48;
            v50 = v60;
            sub_10100003C(v47, v60, v49);
            v69 = v68;
            v51 = *(v47 + 16);

            if (!v51)
            {
              sub_1007AA10C(v50);
            }

            sub_1007AAC84(v52);

            return;
          }

          v31 = v28[v33];
          ++v34;
          if (v31)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v39 = 0;
    v18 = _swiftEmptyArrayStorage;
    while (v39 < *(v37 + 16))
    {
      v40 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v41 = *(v65 + 72);
      sub_10073B64C(v37 + v40 + v41 * v39, v24);
      if (v66(v24))
      {
        sub_1007AF224(v24, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_1000293B8(v24, v64, type metadata accessor for BeaconObservation);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v18;
        if ((v42 & 1) == 0)
        {
          sub_101124308(0, v18[2] + 1, 1);
          v18 = v68;
        }

        v44 = v18[2];
        v43 = v18[3];
        if (v44 >= v43 >> 1)
        {
          sub_101124308(v43 > 1, v44 + 1, 1);
          v18 = v68;
        }

        v18[2] = v44 + 1;
        sub_1000293B8(v64, v18 + v40 + v44 * v41, type metadata accessor for BeaconObservation);
        v24 = v63;
      }

      if (v67 == ++v39)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  objc_autoreleasePoolPop(v18);
  __break(1u);
}

uint64_t sub_1007ADBC8(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  Subscription.subscriber.getter();
  v3 = v7;
  v4 = v8;
  sub_1000035D0(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return sub_100007BAC(v6);
}

uint64_t sub_1007ADC54()
{
  v1 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_systemClockChangedSubscription);

  v4 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_transactionManager;
  v5 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);

  return v0;
}

uint64_t sub_1007ADD64()
{
  sub_1007ADC54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1007ADDC4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PressuredExitTransactionManager();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1007ADEC0(uint64_t a1)
{
  v3 = *v1;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v4 = *(type metadata accessor for BeaconObservation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  sub_10073B64C(a1, v7 + v6);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1007ADFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v3;
  v13 = *(*v3 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  static DispatchWorkItemFlags.barrier.getter();
  v16 = v12;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1007AE124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-v9 - 8];
  sub_10001F280(a1, v18);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016A97E0, &qword_1013BB828);
  Subscription.init(subscriber:unsubscribeBlock:)();
  (*(v7 + 16))(v10, a3, v6);
  v11 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  v12 = *(a2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100A5DE64(0, v12[2] + 1, 1, v12);
    *(a2 + v11) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100A5DE64(v14 > 1, v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
  *(a2 + v11) = v12;
  return swift_endAccess();
}

uint64_t sub_1007AE34C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007AE3C0(a1);
  }

  return result;
}

uint64_t sub_1007AE3C0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  v20[1] = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue);
  (*(v12 + 16))(v20 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_1007AF194;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016330F8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1007AE768(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v9[2] = a2;

  v6 = sub_10013D928(sub_1007AF204, v9, v5);
  v7 = *(a1 + v4);
  *(a1 + v4) = v6;
}

BOOL sub_1007AE7FC()
{
  sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  sub_1000041A4(&qword_1016A97E8, &unk_1016B1E80, &qword_10138CDE0);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1007AE8A0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1007AE8EC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_1007AE948())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1007AE9AC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue);
  sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1007AEA2C()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177B308 = result;
  return result;
}

unint64_t sub_1007AEAC0()
{
  result = qword_1016A97A8;
  if (!qword_1016A97A8)
  {
    sub_1000BC580(&unk_1016B26E0, &unk_10138C4A0);
    sub_1007AF130(&qword_101698330, &type metadata accessor for UUID);
    sub_1007AEB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97A8);
  }

  return result;
}

unint64_t sub_1007AEB7C()
{
  result = qword_1016A97B0;
  if (!qword_1016A97B0)
  {
    sub_1000BC580(&qword_101697788, &qword_10138C498);
    sub_1007AEC40();
    sub_1007AF094(&qword_1016A46F8, &qword_1016A4700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97B0);
  }

  return result;
}

unint64_t sub_1007AEC40()
{
  result = qword_1016A97B8;
  if (!qword_1016A97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97B8);
  }

  return result;
}

uint64_t sub_1007AECA4()
{
  v1 = *(type metadata accessor for BeaconObservation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1007ACB08(v4, v0 + v2, v5, v7, v8);
}

void sub_1007AED44()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  Transaction.capture()();
  if (v1)
  {
    v1();
  }
}

uint64_t sub_1007AED88@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_1007AEDE8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for BeaconObservation() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1007ADBC8(v0 + v2, v5);
}

unint64_t sub_1007AEEC0()
{
  result = qword_1016A97C8;
  if (!qword_1016A97C8)
  {
    sub_1000BC580(&unk_1016B26E0, &unk_10138C4A0);
    sub_1007AF130(&qword_101698300, &type metadata accessor for UUID);
    sub_1007AEF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97C8);
  }

  return result;
}

unint64_t sub_1007AEF7C()
{
  result = qword_1016A97D0;
  if (!qword_1016A97D0)
  {
    sub_1000BC580(&qword_101697788, &qword_10138C498);
    sub_1007AF040();
    sub_1007AF094(&qword_1016A5008, &qword_1016A5010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97D0);
  }

  return result;
}

unint64_t sub_1007AF040()
{
  result = qword_1016A97D8;
  if (!qword_1016A97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97D8);
  }

  return result;
}

uint64_t sub_1007AF094(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A46F0, &qword_1013B1020);
    sub_1007AF130(a2, type metadata accessor for BeaconObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007AF130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007AF194()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1007AE768(v2, v3);
}

uint64_t sub_1007AF224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007AF284(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A97F0, &qword_1013BB830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007AF31C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B330);
  v1 = sub_1000076D4(v0, qword_10177B330);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AE28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1007AF3E4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169F040, &qword_10139FE30) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for DelegatedBeaconMetadata(0);
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v3[13] = v12;
  *v12 = v3;
  v12[1] = sub_1007AF56C;

  return daemon.getter();
}

uint64_t sub_1007AF56C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1007B1BB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1007B1BB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007AF750;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007AF750(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_1007AFE60;
  }

  else
  {
    v9 = v4[14];

    v8 = sub_1007AF888;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007AF888()
{
  v1 = *(v0 + 128);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1007AF968;
  v5 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1007AF968()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_1007AFA80, v2, 0);
}

uint64_t sub_1007AFA80()
{
  v1 = v0[5];
  v0[19] = v0[2];
  return _swift_task_switch(sub_1007AFAA4, v1, 0);
}

uint64_t sub_1007AFAA4()
{
  v0[20] = *(v0[19] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1007AFB68;
  v2 = v0[9];
  v3 = v0[4];

  return sub_10068F740(v2, v3);
}

uint64_t sub_1007AFB68()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1007AFEE8;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 40);

    v5 = sub_1007AFC90;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007AFC90()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = (*(v0[11] + 48))(v2, 1, v1);
  v4 = v0[16];
  if (v3 == 1)
  {
    sub_1007B1C00(v2);
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 21;
    swift_willThrow();

    v6 = v0[12];
    v8 = v0[8];
    v7 = v0[9];

    v9 = v0[1];
  }

  else
  {
    v10 = v0[12];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v15 = v0[3];
    v14 = v0[4];
    v16 = v0[16];

    sub_1007B1C68(v2, v10);
    (*(v12 + 16))(v11, v14, v13);
    v17 = v10 + *(v1 + 20);
    v18 = *v17;
    v19 = *(v17 + 8);
    sub_1007B1CCC(v10, type metadata accessor for DelegatedBeaconMetadata);
    if (v19)
    {
      v18 = 0;
    }

    (*(v12 + 32))(v15, v11, v13);
    *(v15 + *(type metadata accessor for DelegatedShareMeta() + 20)) = v18;

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_1007AFE60()
{
  v1 = v0[14];

  v2 = v0[17];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1007AFEE8()
{
  v1 = v0[20];
  v2 = v0[16];

  v3 = v0[22];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1007AFF7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = *(*(type metadata accessor for KeyDropJoinToken(0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v2[16] = v9;
  *v9 = v2;
  v9[1] = sub_1007B0100;

  return daemon.getter();
}

uint64_t sub_1007B0100(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1007B1BB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1007B1BB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007B02E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007B02E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v10 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_1007B1354;
  }

  else
  {
    v7 = v3[17];
    v8 = v3[4];

    v6 = sub_1007B040C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007B040C()
{
  v1 = v0[19];
  type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[21] = v2;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1007B0500;
  v5 = v0[15];
  v6 = v0[3];

  return sub_100CFD9C0(v5, v6);
}

uint64_t sub_1007B0500()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1007B1414;
  }

  else
  {
    v6 = sub_1007B062C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007B062C()
{
  v1 = *(v0[4] + 128);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1007B06CC;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[3];

  return sub_10024A800(v3, v5, v4);
}

uint64_t sub_1007B06CC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1007B14E0;
  }

  else
  {
    v6 = sub_1007B07F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007B07F8()
{
  v31 = v0;
  if (qword_101694938 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B330);
  sub_1007B1B54(v2, v1);
  sub_1007B1B54(v2, v3);
  sub_1007B1B54(v2, v4);
  sub_1007B1B54(v2, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  if (v9)
  {
    v28 = v0[9];
    v14 = v0[5];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136447747;
    sub_1007B1BB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v8;
    v18 = v17;
    sub_1007B1CCC(v10, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2049;
    v20 = *(v11 + v28[5]);
    sub_1007B1CCC(v11, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    *(v15 + 24) = v20;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v21 = v28[6];
    type metadata accessor for Date();
    sub_1007B1BB8(&qword_1016969A0, 255, &type metadata accessor for Date);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_1007B1CCC(v13, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    v25 = sub_1000136BC(v22, v24, &v30);

    *(v15 + 44) = v25;
    *(v15 + 52) = 2160;
    *(v15 + 54) = 1752392040;
    *(v15 + 62) = 1025;
    LODWORD(v25) = *(v12 + v28[7]);
    sub_1007B1CCC(v12, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    *(v15 + 64) = v25;
    _os_log_impl(&_mh_execute_header, v7, v29, "Got metadata for delegated share: %{public}s,\nvisitor count: %{private,mask.hash}ld,\nexpiration: %{private,mask.hash}s.\navailableToNewViewers: %{BOOL,private,mask.hash}d.", v15, 0x44u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1007B1CCC(v0[10], type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    sub_1007B1CCC(v11, type metadata accessor for KeyDropDelegatedShareMetadataResponse);

    sub_1007B1CCC(v13, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    sub_1007B1CCC(v10, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  }

  v26 = v0[19];

  return _swift_task_switch(sub_1007B0BBC, v26, 0);
}

uint64_t sub_1007B0BBC()
{
  v1 = *(v0 + 152);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1007B0C9C;
  v5 = *(v0 + 152);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1007B0C9C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_1007B0DB4, v2, 0);
}

uint64_t sub_1007B0DB4()
{
  v1 = v0[14];
  v2 = v0[9];
  v0[27] = v0[2];
  v3 = *(v1 + *(v2 + 20));
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1007B0E64;
  v5 = v0[3];

  return sub_1012DA140(v5, v3);
}

uint64_t sub_1007B0E64()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 232) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1007B15CC;
  }

  else
  {
    v7 = sub_1007B0FAC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1007B0FAC()
{
  if (*(v0[14] + *(v0[9] + 28)))
  {
    v1 = v0[21];
    v2 = v0[19];

    v3 = v0[15];
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    sub_1007B1CCC(v0[14], type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    sub_1007B1CCC(v3, type metadata accessor for KeyDropJoinToken);

    v9 = v0[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_1007B110C, 0, 0);
  }
}

uint64_t sub_1007B110C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1007B124C, v4, 0);
}

uint64_t sub_1007B124C()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  sub_1007B1CCC(v0[14], type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  sub_1007B1CCC(v3, type metadata accessor for KeyDropJoinToken);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1007B1354()
{
  v1 = v0[17];

  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1007B1414()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[23];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1007B14E0()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[15];

  sub_1007B1CCC(v3, type metadata accessor for KeyDropJoinToken);
  v4 = v0[25];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1007B15CC()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];

  sub_1007B1CCC(v4, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  sub_1007B1CCC(v3, type metadata accessor for KeyDropJoinToken);
  v5 = v0[29];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1007B16F8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedShareMetadataService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1007B17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DelegatedShareMetadataService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1007B1864(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedShareMetadataService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1007B190C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedShareMetadataService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1007B19B4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedShareMetadataService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1007B1A5C()
{
  v1 = *v0;
  type metadata accessor for DelegatedShareMetadataService();
  sub_1007B1BB8(&unk_101698C70, v2, type metadata accessor for DelegatedShareMetadataService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1007B1B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B1BB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1007B1C00(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F040, &qword_10139FE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007B1C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedBeaconMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B1CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DelegatedShareMeta()
{
  result = qword_1016A9920;
  if (!qword_1016A9920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007B1DA0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1007B1E14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1011250BC(0, v1, 0);
    v2 = a1 + 56;
    v3 = -1 << *(a1 + 32);
    v4 = _HashTable.startBucket.getter();
    v5 = a1;
    v6 = 0;
    v22 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v5 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v2 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = *(v5 + 36);
      v10 = *(*(v5 + 48) + 8 * v4);
      v11 = sub_1010C97CC();

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1011250BC((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v11;
      v7 = 1 << *(v5 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v2 = a1 + 56;
      v14 = *(a1 + 56 + 8 * v9);
      if ((v14 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v23 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v4 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v8 = v22;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (a1 + 64 + 8 * v9);
        v8 = v22;
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_1000BB408(v4, v23, 0);
            v5 = a1;
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_1000BB408(v4, v23, 0);
        v5 = a1;
      }

LABEL_4:
      ++v6;
      v4 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

Swift::Int sub_1007B2054()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1007B20C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007B211C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A078, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1007B23F8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1007B24B8;

  return sub_100702488();
}

uint64_t sub_1007B24B8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1007B25B8, 0, 0);
}

uint64_t sub_1007B25B8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
  sub_100009CC8(&unk_1016A9A70, &unk_1016C7F80, SPStandaloneBeacon_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1007B26B8(void (*a1)(void, uint64_t))
{
  sub_10025ED18();
  v2 = swift_allocError();
  *v3 = 0;
  a1(0, v2);
}

uint64_t sub_1007B28D8(void (*a1)(void))
{
  sub_10025ED18();
  swift_allocError();
  *v2 = 0;
  a1();
}

uint64_t sub_1007B2A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1007B2AE0;

  return sub_1004DCECC(a2);
}

uint64_t sub_1007B2AE0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1007B2C78;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v7 = sub_1007B2C0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1007B2C0C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007B2C78()
{
  v16 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013606F0, &v15);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s error: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];
  swift_errorRetain();
  v12(0, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1007B32C4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  if ((a3 & 1) == 0)
  {
    return a4(a1, a2, 0);
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_willThrowTypedImpl();
  swift_errorRetain();
  a4(0, 0xF000000000000000, a1);
  sub_1007BF380(a1, a2, 1);
  return sub_1007BF380(a1, a2, 1);
}

void sub_1007B370C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_1007B3BA4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100016590(v10, v12);
}

void sub_1007B3E84(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1007B3F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_10079337C(a1, a2, 0, 0);
}

uint64_t sub_1007B41DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v14 = v3;
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 64) = v8;
  *(v4 + 72) = 0xD00000000000001FLL;
  *(v4 + 80) = 0x800000010135D810;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  v10 = String.init<A>(describing:)();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v8;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v8;
  *(v9 + 72) = 0xD00000000000001FLL;
  *(v9 + 80) = 0x800000010135D810;
  os_log(_:dso:log:_:_:)();

  v12 = *sub_1000035D0((v14 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v14 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_10069DCD0(a1, a2, a3);
}

uint64_t sub_1007B44E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000039;
  *(v7 + 80) = 0x800000010135FC90;
  os_log(_:dso:log:_:_:)();

  v12 = *sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100786378(a1, sub_10026AE30, v6);
}

uint64_t sub_1007B48A8()
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  v4 = sub_100008C00();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *(v0 + 96) = &type metadata for String;
  *(v0 + 104) = v4;
  *(v0 + 64) = v4;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001013604F0;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1007B4AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v55 = a1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v60 = &v48 - v6;
  v53 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v49);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for UUID();
  v54 = *(v62 - 8);
  v15 = *(v54 + 64);
  v16 = __chkstk_darwin(v62);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v59 = &v48 - v18;
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10138BBE0;
  ObjectType = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v22 = String.init<A>(describing:)();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  v25 = sub_100008C00();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v25;
  *(v21 + 64) = v25;
  *(v21 + 72) = 0xD00000000000002DLL;
  *(v21 + 80) = 0x80000001013604C0;
  os_log(_:dso:log:_:_:)();

  v58 = v20;
  UUID.init()();
  v48 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v50, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v49);
  static DispatchQoS.unspecified.getter();
  ObjectType = _swiftEmptyArrayStorage;
  sub_1007BECAC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v60, 1, 1, v26);
  v27 = v54;
  v28 = *(v54 + 16);
  v29 = v62;
  v28(v59, v55, v62);
  v28(v61, v58, v29);
  v30 = *(v27 + 80);
  v31 = (v30 + 32) & ~v30;
  v32 = v15 + 7;
  v33 = (v15 + 7 + v31) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v30 + v34 + 8) & ~v30;
  v36 = (v32 + v35) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v38 = *(v27 + 32);
  v39 = v37 + v31;
  v40 = v62;
  v38(v39, v59, v62);
  *(v37 + v33) = 2;
  *(v37 + v34) = v48;
  v41 = v37 + v35;
  v42 = v40;
  v38(v41, v61, v40);
  v43 = (v37 + v36);
  v44 = v57;
  *v43 = v56;
  v43[1] = v44;
  v45 = v53;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v53;

  v46 = v45;
  sub_10025EDD4(0, 0, v60, &unk_1013BB9E8, v37);

  return (*(v27 + 8))(v58, v42);
}

uint64_t sub_1007B5270(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002CLL;
  *(v8 + 80) = 0x8000000101360490;
  os_log(_:dso:log:_:_:)();

  v13 = *sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_10079337C(a1, a2, a3, a4);
}

uint64_t sub_1007B556C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000028;
  *(v8 + 80) = 0x8000000101360460;
  os_log(_:dso:log:_:_:)();

  v13 = *sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100792FD8(a1, a2, a3, a4);
}

uint64_t sub_1007B590C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002FLL;
  *(v8 + 80) = 0x800000010135FAA0;
  os_log(_:dso:log:_:_:)();

  v13 = *sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100792880(a1, a2, a3, a4);
}

void sub_1007B6054(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
  sub_1007BECAC(&qword_1016967B0, &type metadata accessor for UUID);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1007B6124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1007B6148, 0, 0);
}

uint64_t sub_1007B6148()
{
  v1 = *(v0 + 24);
  v2 = sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v3 = [v1 uuids];
  type metadata accessor for UUID();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v4;

  v5 = [v1 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v0 + 56) = v9;
  v10 = [*(v0 + 24) subscribe];
  type metadata accessor for Transaction();
  v11 = static Transaction.currentNSXPCConnection.getter();
  *(v0 + 64) = v11;
  v12 = *v2;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_1007B62CC;

  return sub_1004BD718(v7, v9, v4, v10, v11);
}

uint64_t sub_1007B62CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 48);
  v7 = *v2;
  v4[10] = v1;

  v8 = v4[8];
  v9 = v4[7];
  if (v1)
  {
    v10 = v4[7];

    v11 = sub_1007B64C8;
  }

  else
  {
    v4[11] = a1;

    v11 = sub_1007B6454;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1007B6454()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  (*(v0 + 32))(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1007B64C8()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_1007B6B00(char *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, uint64_t, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  _Block_copy(v13);
  v15 = a1;
  a5(v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);
  (*(v9 + 8))(v12, v8);
}

void sub_1007B6C8C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1007B6E34(void *a1, char a2, void (*a3)(void *, void *))
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    a3(0, a1);
    sub_1000BB578(a1, 1);
    sub_1000BB578(a1, 1);
  }

  else
  {
    a3(a1, 0);
  }
}

void sub_1007B71D4(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, unint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v15 = a1;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  _Block_copy(v10);
  a6(v12, v14, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_100016590(v12, v14);
}

uint64_t sub_1007B729C(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for RawAccessoryMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v7, &unk_1016A99D0, &unk_1013BB9A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v7;
    v12 = v16;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    a2(0, v12);
  }

  else
  {
    sub_1007BF0D4(v7, v11, type metadata accessor for RawAccessoryMetadata);
    v14 = sub_100232DEC();
    a2(v14, 0);

    return sub_1007BF158(v11, type metadata accessor for RawAccessoryMetadata);
  }
}

uint64_t sub_1007B7494(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for AccessoryMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v7, &unk_1016A99C0, &unk_1013BB530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v7;
    v12 = v16;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    a2(0, v12);
  }

  else
  {
    sub_1007BF0D4(v7, v11, type metadata accessor for AccessoryMetadata);
    v14 = sub_100231400();
    a2(v14, 0);

    return sub_1007BF158(v11, type metadata accessor for AccessoryMetadata);
  }
}

void sub_1007B7688(char *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  v19 = a1;
  a7(v15, v18, a6, v17);

  (*(v12 + 8))(v15, v11);
}

uint64_t sub_1007B78F8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return v3(a1);
}

uint64_t sub_1007B7928()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1006DC000(v2, v3);
}

void sub_1007B79C0(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v36 - v17;
  v19 = type metadata accessor for MACAddress();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000B3A8(v18, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C418);
    sub_100017D5C(a1, a2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      v29 = Data.hexString.getter();
      v31 = sub_1000136BC(v29, v30, &v37);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "beaconingIdentifier: invalid MAC address %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    v32 = type metadata accessor for UUID();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v14, 1, 1, v32);
    sub_1000D2A70(v14, v12, &qword_1016980D0, &unk_10138F3B0);
    isa = 0;
    if ((*(v33 + 48))(v12, 1, v32) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v33 + 8))(v12, v32);
    }

    (a4)[2](a4, isa);

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    v35 = *sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a4);
    sub_100703194(v23, v35, a4);
    _Block_release(a4);
    (*(v20 + 8))(v23, v19);
  }

  _Block_release(a4);
}

uint64_t sub_1007B7E64(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4)
{
  v44 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v45);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = type metadata accessor for MACAddress();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    sub_100017D5C(a1, a2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = Data.hexString.getter();
      v33 = sub_1000136BC(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchFindMyNetworkStatus: invalid MAC address %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v34 = v45;
    (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v45);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v15, v34);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1001BE468;
    *(v36 + 24) = v25;
    aBlock[4] = sub_1007BF680;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101633A80;
    v37 = _Block_copy(aBlock);

    v38 = v46;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_1007BECAC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v39 = v48;
    v40 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v50 + 8))(v39, v40);
    (*(v47 + 8))(v38, v49);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    v41 = *sub_1000035D0((v44 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v44 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a4);
    sub_100703BA4(v24, v41, a4);
    _Block_release(a4);
    (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_1007B8530(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, const void *a5)
{
  v25 = a4;
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  v24[1] = type metadata accessor for Transaction();
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v17, v13, v9);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = a3;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_10026AE30;
  v22[1] = v16;
  sub_100017D5C(a3, v21);

  static Transaction.asyncTask(name:block:)();

  (*(v10 + 8))(v15, v9);
}

uint64_t sub_1007B88FC(uint64_t a1, unint64_t a2, const void *a3)
{
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  type metadata accessor for Transaction();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_10026AE30;
  v16[1] = v13;

  static Transaction.asyncTask(name:block:)();

  (*(v7 + 8))(v12, v6);
}

uint64_t sub_1007B8C9C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v44 = a4;
  v45 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  __chkstk_darwin(v8);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v46 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v46);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v44 - v19;
  v21 = type metadata accessor for MACAddress();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  _Block_copy(a5);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C418);
    sub_100017D5C(a1, a2);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = Data.hexString.getter();
      v34 = sub_1000136BC(v32, v33, aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "setFindMyNetworkStatus: invalid MAC address %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v35 = v46;
    (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v46);
    v36 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v35);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_10026AE30;
    *(v37 + 24) = v26;
    aBlock[4] = sub_1007BF440;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101633968;
    v38 = _Block_copy(aBlock);

    v39 = v47;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_1007BECAC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v40 = v49;
    v41 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v51 + 8))(v40, v41);
    (*(v48 + 8))(v39, v50);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v42 = *sub_1000035D0((v44 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v44 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a5);
    sub_1007041C4(v25, v45 & 1, v42, a5);
    _Block_release(a5);
    (*(v22 + 8))(v25, v21);
  }
}

void sub_1007B9374(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_10107416C(v33);

  sub_1000034A4();
  v8 = sub_100003518();
  v9 = [v8 stringForKey:SPSettingsServiceStateKey];

  if (!v9)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v9 = qword_10177B658;
  }

  if (*(v7 + 16))
  {
    v33 = SPDisabledReasonNone;
    __chkstk_darwin(v10);
    v32[2] = &v33;
    if ((sub_1002EFACC(sub_1002EF830, v32, v7) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_14:
      v17 = &SPOwnerDataStateNotAvailable;
      v18 = &SPOwnerDataStateUpToDate;
      v19 = (a1 & 1) == 0;
      goto LABEL_18;
    }
  }

  if ((a1 & 1) == 0)
  {
    v17 = &SPOwnerDataStateInitializing;
    goto LABEL_22;
  }

  v20 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
  v21 = sub_100A96828();
  v17 = &SPOwnerDataStateUpToDate;
  v18 = &SPOwnerDataStateUpdating;
  v19 = (v21 & 1) == 0;
LABEL_18:
  if (!v19)
  {
    v17 = v18;
  }

LABEL_22:
  v22 = *v17;
  v23 = v9;
  sub_101129C80(v7);

  v24 = objc_allocWithZone(SPOwnerSessionState);
  type metadata accessor for SPDisabledReason(0);
  sub_1007BECAC(&unk_1016A9A50, type metadata accessor for SPDisabledReason);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithServiceState:v23 disabledReasons:isa ownerDataState:v22];

  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v28 = [v26 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100008C00();
  *(v27 + 32) = v29;
  *(v27 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  (*(a3 + 16))(a3, v26);
}

void sub_1007B97C4(uint64_t a1, const void *a2)
{
  v4 = *(*(*sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + 280) + 184);
  _Block_copy(a2);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = *(v6 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  sub_1007B9374(v6, a1, a2);
  _Block_release(a2);
}

uint64_t sub_1007B98CC(uint64_t a1, uint64_t a2)
{
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B2D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(0xD000000000000035, 0x800000010135D8A0, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  return sub_1007061DC(a1, a2);
}

uint64_t sub_1007B9A2C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + 280) + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v4 = *(v6 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  return (*(a2 + 16))(a2, v6);
}

void sub_1007B9B1C(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &qword_1016A40D0, &unk_10138BE70);
    static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v18 = Data.hexString.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v24[0] = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1007BECAC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v24[1];
    v22 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v22);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v23 = *(*(*sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator) + 24);
    _Block_copy(a4);
    sub_101327B98(v16, v23, a4);
    _Block_release(a4);
    (*(v13 + 8))(v16, v12);
  }

  _Block_release(a4);
}

void sub_1007B9E90(char **a1, unint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v39 = &v33 - v10;
  v40 = type metadata accessor for OwnedBeaconGroup(0);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v40);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007BEC04(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation, v42);
  v15 = sub_1000035D0(v42, v42[3]);
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37 = v14;
  v38 = v11;
  if (v16)
  {
    while (1)
    {
      v36 = v15;
      _Block_copy(a4);
      v41 = _swiftEmptyArrayStorage;
      sub_101123D1C(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        break;
      }

      v34 = a1;
      v35 = a4;
      a4 = 0;
      v17 = v41;
      v11 = a2 & 0xC000000000000001;
      a1 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      while (1)
      {
        v18 = v11 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a2 + 8 * a4 + 32);
        v15 = v18;
        v19 = [v18 integerValue];

        if ((v19 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v19 > 0xFF)
        {
          goto LABEL_15;
        }

        v41 = v17;
        v14 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v14 >= v20 >> 1)
        {
          sub_101123D1C((v20 > 1), (v14 + 1), 1);
          v17 = v41;
        }

        ++a4;
        *(v17 + 16) = v14 + 1;
        v14[v17 + 32] = v19;
        if (v16 == a4)
        {
          a4 = v35;
          v21 = v39;
          a1 = v34;
          v15 = v36;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v37 = v14;
      v38 = v11;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    _Block_copy(a4);
    v17 = _swiftEmptyArrayStorage;
    v21 = v39;
LABEL_18:
    v22 = *v15;
    v23 = *(*v15 + 280);
    _Block_copy(a4);
    _Block_copy(a4);
    sub_100AC53EC(a1, v21);
    v24 = v40;
    if ((*(v38 + 48))(v21, 1, v40) == 1)
    {
      sub_10000B3A8(v21, &unk_1016AF8B0, &unk_1013A0700);
      sub_1003FD838();
      swift_allocError();
      *v25 = 1;
      v26 = _convertErrorToNSError(_:)();
      (*(a4 + 2))(a4, v26);
    }

    else
    {
      v27 = v37;
      v28 = sub_1007BF0D4(v21, v37, type metadata accessor for OwnedBeaconGroup);
      v29 = *(v27 + *(v24 + 40));
      __chkstk_darwin(v28);
      *(&v33 - 2) = v27;
      *(&v33 - 1) = v17;

      v30 = sub_1001661F0(_swiftEmptyArrayStorage, sub_1007BF13C, (&v33 - 4), v29);

      v31 = *(v22 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_classicPairingSupport);
      v32 = *(v24 + 28);
      _Block_copy(a4);
      sub_1004676B4(v27 + v32, v30, v31, a4);
      _Block_release(a4);

      sub_1007BF158(v27, type metadata accessor for OwnedBeaconGroup);
    }

    _Block_release(a4);
    _Block_release(a4);

    sub_100007BAC(v42);
    _Block_release(a4);
  }
}

void sub_1007BA2F8(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 64) = v8;
  *(v4 + 72) = 0xD00000000000001ELL;
  *(v4 + 80) = 0x8000000101360650;
  os_log(_:dso:log:_:_:)();

  v9 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1004DFF38(*v9, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1007BA47C(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000039;
  *(v6 + 80) = 0x800000010135F420;
  os_log(_:dso:log:_:_:)();

  v11 = *sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v12 = sub_100A2C208();
  sub_1007A54FC(a1, v12, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1007BA690(unint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000003BLL;
  *(v6 + 80) = 0x800000010135F320;
  os_log(_:dso:log:_:_:)();

  v11 = *sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v12 = sub_100A2C208();
  sub_100799528(a1, v12, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1007BA8A4(void *a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a1;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  v22[1] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD000000000000038;
  *(v12 + 80) = 0x8000000101360550;
  os_log(_:dso:log:_:_:)();

  v17 = *sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100780A4C(v22[0], v11);

  sub_1000D2A70(v11, v9, &unk_101696900, &unk_10138B1E0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  isa = 0;
  if ((*(v19 + 48))(v9, 1, v18) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v19 + 8))(v9, v18);
  }

  (*(a3 + 16))(a3, isa, 0);

  return sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_1007BAB7C(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000034;
  *(v6 + 80) = 0x8000000101360510;
  os_log(_:dso:log:_:_:)();

  v11 = *sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v12 = sub_100A2C208();
  sub_100798BEC(a1, v12, aBlock);
  _Block_release(aBlock);
}

void sub_1007BAD24(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  v42 = a2;
  v20 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
  _Block_copy(a3);
  v43 = a3;
  _Block_copy(a3);
  v21 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100025020(v19, v48);
  v40 = *(v15 + 8);
  v40(v19, v14);
  sub_1000D2A70(v48, v47, &qword_101696920, &unk_10138B200);
  if (v47[3])
  {
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v22 = type metadata accessor for LocalFindableAccessoryRecord();
    v23 = swift_dynamicCast();
    (*(*(v22 - 8) + 56))(v13, v23 ^ 1u, 1, v22);
  }

  else
  {
    sub_10000B3A8(v47, &qword_101696920, &unk_10138B200);
    v22 = type metadata accessor for LocalFindableAccessoryRecord();
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  }

  type metadata accessor for LocalFindableAccessoryRecord();
  v24 = (*(*(v22 - 8) + 48))(v13, 1, v22);
  sub_10000B3A8(v13, &qword_1016A9A30, &unk_1013BD120);
  if (v24)
  {
    sub_1000D2A70(v48, &v45, &qword_101696920, &unk_10138B200);
    if (v46)
    {
      sub_100031694(&v45, v47);
      v25 = *sub_1000035D0((v42 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v42 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v26 = v43;
      _Block_copy(v43);
      sub_1004DE6B4(v47, v25, v26);
      _Block_release(v26);
      sub_100007BAC(v47);
    }

    else
    {
      sub_10000B3A8(&v45, &qword_101696920, &unk_10138B200);
      type metadata accessor for SPOwnerSessionError(0);
      *&v45 = 2;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1007BECAC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v37 = v47[0];
      v38 = _convertErrorToNSError(_:)();
      v26 = v43;
      (*(v43 + 2))(v43, v38);
    }

    sub_10000B3A8(v48, &qword_101696920, &unk_10138B200);

    v36 = v26;
  }

  else
  {
    v27 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = swift_allocObject();
    v29 = v9;
    v39 = v9;
    v30 = v44;
    *(v28 + 16) = sub_10026AE30;
    *(v28 + 24) = v30;
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = v41;
    (*(v15 + 16))(v41, v19, v14);
    v33 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    (*(v15 + 32))(v34 + v33, v32, v14);
    v35 = (v34 + ((v16 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_10040A6CC;
    v35[1] = v28;

    sub_10025EDD4(0, 0, v39, &unk_1013BB9D0, v34);

    v40(v19, v14);
    sub_10000B3A8(v48, &qword_101696920, &unk_10138B200);

    v36 = v43;
  }

  _Block_release(v36);
}

void sub_1007BB3B0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v20 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
  _Block_copy(a3);
  v21 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100AA33AC(v10, v14);
  (*(v7 + 8))(v10, v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPOwnerSessionError(0);
    v27 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1007BECAC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v28;
    v23 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v23);
  }

  else
  {
    sub_1007BF0D4(v14, v19, type metadata accessor for OwnedBeaconRecord);
    v24 = *sub_1000035D0((v26 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v26 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a3);
    sub_1004DEB00(v19, v24, a3);
    _Block_release(a3);
    sub_1007BF158(v19, type metadata accessor for OwnedBeaconRecord);
  }

  _Block_release(a3);
}

void sub_1007BB6F8(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v273 = &v264 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v267 = &v264 - v11;
  __chkstk_darwin(v10);
  v272 = &v264 - v12;
  v284 = type metadata accessor for LostModeRecord();
  v282 = *(v284 - 8);
  v13 = *(v282 + 64);
  v14 = __chkstk_darwin(v284);
  v271 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v266 = (&v264 - v17);
  v18 = __chkstk_darwin(v16);
  v265 = (&v264 - v19);
  __chkstk_darwin(v18);
  v268 = &v264 - v20;
  v21 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v270 = &v264 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v269 = &v264 - v25;
  v26 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v286 = &v264 - v28;
  v281 = type metadata accessor for OS_dispatch_queue.Attributes();
  v29 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v280 = &v264 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v278 = &v264 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v275 = *(v276 - 8);
  v34 = *(v275 + 64);
  __chkstk_darwin(v276);
  v277 = &v264 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for UUID();
  v292 = *(v291 - 8);
  v36 = *(v292 + 64);
  v37 = __chkstk_darwin(v291);
  v287 = &v264 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v37);
  v283 = &v264 - v39;
  v40 = __chkstk_darwin(v38);
  v285 = &v264 - v41;
  v42 = __chkstk_darwin(v40);
  v279 = &v264 - v43;
  v44 = __chkstk_darwin(v42);
  *&v289[8] = &v264 - v45;
  __chkstk_darwin(v44);
  v290 = &v264 - v46;
  v47 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v274 = &v264 - v49;
  v293 = swift_allocObject();
  *(v293 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v294 = a3;
  _Block_copy(a3);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  *&v288 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10138B360;
  *v289 = a2;
  aBlock = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v51 = String.init<A>(describing:)();
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v54 = sub_100008C00();
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v54;
  *(v50 + 64) = v54;
  *(v50 + 72) = 0xD000000000000016;
  *(v50 + 80) = 0x80000001013602C0;
  aBlock = [a1 type];
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v50 + 136) = &type metadata for String;
  *(v50 + 144) = v54;
  *(v50 + 112) = v55;
  *(v50 + 120) = v56;
  os_log(_:dso:log:_:_:)();

  v57 = a1;
  switch([a1 type])
  {
    case 0uLL:
      v122 = sub_1000035D0((*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v123 = v292;
      v124 = *(v292 + 72);
      v125 = (*(v292 + 80) + 32) & ~*(v292 + 80);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_101385D80;
      v127 = [v57 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v128 = type metadata accessor for Date();
      v129 = v274;
      (*(*(v128 - 8) + 56))(v274, 1, 1, v128);
      v130 = swift_allocObject();
      v131 = v293;
      *(v130 + 16) = sub_10026AE30;
      *(v130 + 24) = v131;
      v132 = *v122;

      sub_1004ADD04(v126, v129, &_swiftEmptySetSingleton, 1, sub_10041ABC0, v130);
      swift_setDeallocating();
      (*(v123 + 8))(v126 + v125, v291);
      swift_deallocClassInstance();

      sub_10000B3A8(v129, &unk_101696900, &unk_10138B1E0);
      goto LABEL_27;
    case 1uLL:
      v110 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v111 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E1828(v59, v61, sub_10026AE30, v293);
      goto LABEL_26;
    case 2uLL:
      v114 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E1854(v59, v61, sub_10026AE30, v293);
      goto LABEL_26;
    case 3uLL:
      v68 = sub_1000035D0((*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v69 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = [a1 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      *v289 = [a1 playSoundContext];
      *&v288 = *v68;
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v275 + 104))(v277, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v276);
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1007BECAC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v287 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v71 = type metadata accessor for TaskPriority();
      (*(*(v71 - 8) + 56))(v286, 1, 1, v71);
      v72 = v292;
      v73 = *(v292 + 16);
      v74 = v279;
      v75 = v291;
      v73(v279, *&v289[8], v291);
      v73(v285, v290, v75);
      v76 = *(v72 + 80);
      v77 = (v76 + 32) & ~v76;
      v78 = v36 + 7;
      v79 = (v36 + 7 + v77) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v76 + v80 + 8) & ~v76;
      v283 = ((v78 + v81) & 0xFFFFFFFFFFFFFFF8);
      v284 = (v283 + 23) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      v83 = *(v72 + 32);
      v83(v82 + v77, v74, v75);
      *(v82 + v79) = *v289;
      *(v82 + v80) = v288;
      v83(v82 + v81, v285, v75);
      v84 = &v283[v82];
      v85 = v293;
      *v84 = sub_10026AE30;
      *(v84 + 1) = v85;
      v86 = v287;
      *(v82 + v284) = v287;

      v87 = v86;
      sub_10025EDD4(0, 0, v286, &unk_1013BB9C8, v82);

      v88 = *(v72 + 8);
      v88(*&v289[8], v75);
      v88(v290, v75);
      goto LABEL_27;
    case 4uLL:
      v133 = sub_1000035D0((*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v134 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v136 = *v133;
      sub_1004CB778(v59, v61, sub_10026AE30, v293);
      goto LABEL_26;
    case 5uLL:
      sub_1007BEC04(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation, &aBlock);
      v141 = sub_1000035D0(&aBlock, v300);
      v142 = [a1 beaconIdentifier];
      v143 = v283;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v144 = [a1 lostModeMessage];
      v264 = v54;
      if (v144)
      {
        v145 = v144;
        v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v290 = v146;
      }

      else
      {
        v286 = 0;
        v290 = 0;
      }

      v197 = [a1 lostModePhoneNumber];
      if (v197)
      {
        v198 = v197;
        v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&v289[8] = v199;
      }

      else
      {
        v285 = 0;
        *&v289[8] = 0;
      }

      v200 = [a1 lostModeEmail];
      if (v200)
      {
        v201 = v200;
        v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *v289 = v202;
      }

      else
      {
        v281 = 0;
        *v289 = 0;
      }

      v203 = *v141;
      static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      v204 = qword_10177C3E8;
      v205 = swift_allocObject();
      v288 = xmmword_101385D80;
      *(v205 + 16) = xmmword_101385D80;
      v206 = UUID.uuidString.getter();
      v207 = v264;
      *(v205 + 56) = &type metadata for String;
      *(v205 + 64) = v207;
      *(v205 + 32) = v206;
      *(v205 + 40) = v208;
      v287 = v204;
      os_log(_:dso:log:_:_:)();

      v209 = *(v203 + 280);
      sub_100025020(v143, v295);
      v210 = v296;
      sub_10000B3A8(v295, &qword_101696920, &unk_10138B200);
      if (!v210)
      {
        v211 = *(v203 + 280);
        v212 = v269;
        sub_100AC53EC(v143, v269);
        v213 = type metadata accessor for OwnedBeaconGroup(0);
        LODWORD(v211) = (*(*(v213 - 8) + 48))(v212, 1, v213);
        sub_10000B3A8(v212, &unk_1016AF8B0, &unk_1013A0700);
        if (v211 == 1)
        {
          static os_log_type_t.error.getter();
          v214 = swift_allocObject();
          *(v214 + 16) = v288;
          sub_1007BECAC(&qword_101696930, &type metadata accessor for UUID);
          v215 = v291;
          v216 = dispatch thunk of CustomStringConvertible.description.getter();
          v217 = v264;
          *(v214 + 56) = &type metadata for String;
          *(v214 + 64) = v217;
          *(v214 + 32) = v216;
          *(v214 + 40) = v218;
          os_log(_:dso:log:_:_:)();

          sub_10025ED18();
          swift_allocError();
          *v219 = 0;
          v220 = _convertErrorToNSError(_:)();
          v190 = v294;
          (v294)[2](v294, v220);

          (*(v292 + 8))(v143, v215);
          goto LABEL_111;
        }
      }

      if (!v290)
      {
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        sub_10025ED18();
        swift_allocError();
        *v226 = 0;
        v227 = _convertErrorToNSError(_:)();
        v190 = v294;
        (v294)[2](v294, v227);

        (*(v292 + 8))(v143, v291);
        goto LABEL_111;
      }

      v221 = *(v203 + 280);
      v222 = v272;
      sub_100ABD87C(v272);
      v223 = *(v282 + 48);
      v224 = v284;
      if (v223(v222, 1, v284) != 1)
      {
        v228 = v222;
        v229 = v268;
        sub_1007BF0D4(v228, v268, type metadata accessor for LostModeRecord);
        v230 = (v229 + v224[9]);
        v231 = v230[1];
        if (!v231 || (*v230 != v286 || v231 != v290) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_104;
        }

        v232 = (v229 + v224[8]);
        v233 = v232[1];
        if (v233)
        {
          if (!*&v289[8] || (*v232 != v285 || v233 != *&v289[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        else if (*&v289[8])
        {
          goto LABEL_104;
        }

        v238 = (v229 + v224[7]);
        v239 = v238[1];
        if (v239)
        {
          if (*v289 && (*v238 == v281 && v239 == *v289 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            goto LABEL_99;
          }
        }

        else if (!*v289)
        {
LABEL_99:
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v190 = v294;
          v294[2](v294, 0);

          (*(v292 + 8))(v143, v291);
          sub_1007BF158(v229, type metadata accessor for LostModeRecord);
          goto LABEL_111;
        }

LABEL_104:
        v225 = v203;
        sub_1007BF158(v229, type metadata accessor for LostModeRecord);
        goto LABEL_105;
      }

      v225 = v203;
      sub_10000B3A8(v222, &unk_1016A99E0, &qword_1013A07B0);
LABEL_105:
      static os_log_type_t.default.getter();
      v240 = swift_allocObject();
      *(v240 + 16) = v288;
      v241 = v283;
      v242 = UUID.uuidString.getter();
      *(v240 + 56) = &type metadata for String;
      *(v240 + 64) = v54;
      *(v240 + 32) = v242;
      *(v240 + 40) = v243;
      os_log(_:dso:log:_:_:)();

      if (*v289 == 0)
      {
        static os_log_type_t.error.getter();
        v244 = swift_allocObject();
        *(v244 + 16) = v288;
        v245 = UUID.uuidString.getter();
        *(v244 + 56) = &type metadata for String;
        *(v244 + 64) = v54;
        *(v244 + 32) = v245;
        *(v244 + 40) = v246;
        os_log(_:dso:log:_:_:)();

        sub_10025ED18();
        swift_allocError();
        *v247 = 0;
        v248 = _convertErrorToNSError(_:)();
        v190 = v294;
        (v294)[2](v294, v248);

LABEL_110:
        (*(v292 + 8))(v241, v291);
        goto LABEL_111;
      }

      v249 = v225;
      v250 = *(v225 + 280);
      v251 = v267;
      sub_100ABD87C(v267);
      v252 = v284;
      if (v223(v251, 1, v284) != 1)
      {
        v263 = v265;
        sub_1007BF0D4(v251, v265, type metadata accessor for LostModeRecord);
        v190 = v294;
        _Block_copy(v294);
        sub_1008B59FC(v263, v281, *v289, v285, *&v289[8], v286, v290, v249, v190);
        _Block_release(v190);

        sub_1007BF158(v263, type metadata accessor for LostModeRecord);
        goto LABEL_110;
      }

      sub_10000B3A8(v251, &unk_1016A99E0, &qword_1013A07B0);
      v253 = v266;
      v254 = v266 + v252[5];
      UUID.init()();
      v255 = v292;
      v256 = v291;
      (*(v292 + 16))(v253 + v252[6], v241, v291);
      *v253 = xmmword_10138C660;
      v257 = (v253 + v252[7]);
      v258 = *v289;
      *v257 = v281;
      v257[1] = v258;
      v259 = (v253 + v252[8]);
      v260 = *&v289[8];
      *v259 = v285;
      v259[1] = v260;
      v261 = (v253 + v252[9]);
      v262 = v290;
      *v261 = v286;
      v261[1] = v262;
      v190 = v294;
      _Block_copy(v294);

      sub_1008B90DC(v253, v249, v190);
      _Block_release(v190);

      sub_1007BF158(v253, type metadata accessor for LostModeRecord);
      (*(v255 + 8))(v241, v256);
LABEL_111:
      sub_100007BAC(&aBlock);

      _Block_release(v190);
      _Block_release(v190);
      v98 = v190;
LABEL_29:
      _Block_release(v98);
      return;
    case 6uLL:
      sub_1007BEC04(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation, &aBlock);
      v116 = sub_1000035D0(&aBlock, v300);
      v117 = [a1 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = [a1 lostModeMessage];
      if (v118)
      {
        v119 = v118;
        v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v121 = v120;
      }

      else
      {
        v290 = 0;
        v121 = 0;
      }

      v165 = [v57 lostModePhoneNumber];
      if (v165)
      {
        v166 = v165;
        *v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v167;
      }

      else
      {
        *v289 = 0;
        v168 = 0;
      }

      v169 = [v57 lostModeEmail];
      if (v169)
      {
        v170 = v169;
        v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = v171;
      }

      else
      {
        v286 = 0;
        v172 = 0;
      }

      v173 = *v116;
      static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      v174 = swift_allocObject();
      *&v289[8] = xmmword_101385D80;
      *(v174 + 16) = xmmword_101385D80;
      v175 = v287;
      v176 = UUID.uuidString.getter();
      *(v174 + 56) = &type metadata for String;
      *(v174 + 64) = v54;
      *(v174 + 32) = v176;
      *(v174 + 40) = v177;
      v178 = v175;
      os_log(_:dso:log:_:_:)();

      v179 = *(v173 + 280);
      sub_100025020(v178, v295);
      v180 = v296;
      sub_10000B3A8(v295, &qword_101696920, &unk_10138B200);
      if (!v180)
      {
        v181 = *(v173 + 280);
        v182 = v270;
        sub_100AC53EC(v178, v270);
        v183 = type metadata accessor for OwnedBeaconGroup(0);
        LODWORD(v181) = (*(*(v183 - 8) + 48))(v182, 1, v183);
        sub_10000B3A8(v182, &unk_1016AF8B0, &unk_1013A0700);
        if (v181 == 1)
        {
          static os_log_type_t.error.getter();
          v184 = swift_allocObject();
          *(v184 + 16) = *&v289[8];
          sub_1007BECAC(&qword_101696930, &type metadata accessor for UUID);
          v185 = v291;
          v186 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v184 + 56) = &type metadata for String;
          *(v184 + 64) = v54;
          *(v184 + 32) = v186;
          *(v184 + 40) = v187;
          os_log(_:dso:log:_:_:)();

          sub_10025ED18();
          swift_allocError();
          *v188 = 0;
          v189 = _convertErrorToNSError(_:)();
          v190 = v294;
          (v294)[2](v294, v189);

          (*(v292 + 8))(v178, v185);
          goto LABEL_111;
        }
      }

      v191 = *(v173 + 280);
      v192 = v273;
      sub_100ABD87C(v273);
      v193 = v284;
      if ((*(v282 + 48))(v192, 1, v284) == 1)
      {
        sub_10000B3A8(v192, &unk_1016A99E0, &qword_1013A07B0);
LABEL_102:
        v190 = v294;
        _Block_copy(v294);
        sub_1008B55B0(v178, v173, v190);
        _Block_release(v190);

        (*(v292 + 8))(v178, v291);
        goto LABEL_111;
      }

      v194 = v271;
      sub_1007BF0D4(v192, v271, type metadata accessor for LostModeRecord);
      v195 = v194 + v193[9];
      v196 = *(v195 + 8);
      if (v196)
      {
        if (!v121 || (*v195 != v290 || v196 != v121) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else if (v121)
      {
        goto LABEL_101;
      }

      v234 = (v194 + v193[8]);
      v235 = v234[1];
      if (v235)
      {
        if (!v168 || (*v234 != *v289 || v235 != v168) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else if (v168)
      {
        goto LABEL_101;
      }

      v236 = (v194 + v193[7]);
      v237 = v236[1];
      if (v237)
      {
        if (v172 && (*v236 == v286 && v237 == v172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          goto LABEL_92;
        }
      }

      else if (!v172)
      {
LABEL_92:
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v190 = v294;
        v294[2](v294, 0);

        (*(v292 + 8))(v178, v291);
        sub_1007BF158(v194, type metadata accessor for LostModeRecord);
        goto LABEL_111;
      }

LABEL_101:
      sub_1007BF158(v194, type metadata accessor for LostModeRecord);
      goto LABEL_102;
    case 7uLL:
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v155 = v292;
      v156 = *(v292 + 72);
      v157 = v57;
      v158 = (*(v292 + 80) + 32) & ~*(v292 + 80);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_101385D80;
      v160 = [v157 beaconIdentifier];
      v161 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v155 + 32))(v159 + v158, v161, v291);
      v106.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v162 = swift_allocObject();
      v163 = v293;
      *(v162 + 16) = sub_10026AE30;
      *(v162 + 24) = v163;
      v301 = sub_1007BEC80;
      v302 = v162;
      aBlock = _NSConcreteStackBlock;
      v298 = 1107296256;
      v299 = sub_1000D415C;
      v300 = &unk_101633418;
      v109 = _Block_copy(&aBlock);

      [*v289 enableSeparationMonitoringForBeacons:v106.super.isa completion:v109];
      goto LABEL_31;
    case 8uLL:
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v99 = v292;
      v100 = *(v292 + 72);
      v101 = v57;
      v102 = (*(v292 + 80) + 32) & ~*(v292 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_101385D80;
      v104 = [v101 beaconIdentifier];
      v105 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v99 + 32))(v103 + v102, v105, v291);
      v106.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v107 = swift_allocObject();
      v108 = v293;
      *(v107 + 16) = sub_10026AE30;
      *(v107 + 24) = v108;
      v301 = sub_1007BF8DC;
      v302 = v107;
      aBlock = _NSConcreteStackBlock;
      v298 = 1107296256;
      v299 = sub_1000D415C;
      v300 = &unk_1016333C8;
      v109 = _Block_copy(&aBlock);

      [*v289 disableSeparationMonitoringForBeacons:v106.super.isa completion:v109];
LABEL_31:
      _Block_release(v109);

      goto LABEL_28;
    case 9uLL:
      v147 = sub_1000035D0((*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v148 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v149 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v150 = *v147;
      sub_1004D04EC(v59, v61, sub_10026AE30, v293);
      goto LABEL_26;
    case 0xAuLL:
      v66 = [a1 beaconIdentifier];
      v67 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E1458(v67, sub_10026AE30, v293);
      (*(v292 + 8))(v67, v291);
      goto LABEL_27;
    case 0xBuLL:
      v89 = [a1 obfuscatedIdentifier];
      if (v89)
      {
        v90 = v89;
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        static os_log_type_t.default.getter();
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_101385D80;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = v54;
        *(v94 + 32) = v91;
        *(v94 + 40) = v93;
        os_log(_:dso:log:_:_:)();

        sub_1003FD838();
LABEL_11:
        swift_allocError();
        *v95 = 1;
      }

      else
      {
        sub_1007BEBB0();
        swift_allocError();
        *v164 = 0;
      }

      v96 = _convertErrorToNSError(_:)();
      v97 = v294;
      (v294)[2](v294, v96);

      _Block_release(v97);
      _Block_release(v97);
      v98 = v97;
      goto LABEL_29;
    case 0xCuLL:
      v137 = sub_1000035D0((*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v138 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v139 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v140 = *v137;
      sub_1004D027C();
      goto LABEL_26;
    case 0xDuLL:
      v62 = sub_1000035D0((*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v289 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v63 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = *v62;
      sub_1004D0B20(v59, v61, sub_10026AE30, v293);
      goto LABEL_26;
    case 0xEuLL:
      v112 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E0A98(v59, v61, sub_10026AE30, v293);
      goto LABEL_26;
    case 0xFuLL:
      v58 = [a1 identifier];
      v59 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = [a1 beaconIdentifier];
      v61 = *&v289[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E0F78(v59, v61, sub_10026AE30, v293);
LABEL_26:
      v151 = *(v292 + 8);
      v152 = v61;
      v153 = v291;
      v151(v152, v291);
      v151(v59, v153);
LABEL_27:

LABEL_28:
      v154 = v294;
      _Block_release(v294);
      _Block_release(v154);
      v98 = v154;
      goto LABEL_29;
    default:
      sub_1007BEBB0();
      goto LABEL_11;
  }
}

uint64_t sub_1007BE080(uint64_t a1, unint64_t a2, int a3, const void *a4)
{
  v27 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26[-v9];
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v26[-v16];
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1007BF8E0;
  *(v19 + 24) = v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v12 + 16))(v15, v17, v11);
  v21 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v27 & 1;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v23;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v24 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_1007BE840;
  v24[1] = v19;

  sub_10025EDD4(0, 0, v10, &unk_1013BB9B8, v22);

  (*(v12 + 8))(v17, v11);
}

uint64_t sub_1007BE3B4(uint64_t a1, unint64_t a2, int a3, const void *a4)
{
  v27 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26[-v9];
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v26[-v16];
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1007BF8E0;
  *(v19 + 24) = v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v12 + 16))(v15, v17, v11);
  v21 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v27 & 1;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v23;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v24 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_1007BE6E8;
  v24[1] = v19;

  sub_10025EDD4(0, 0, v10, &unk_1013BB9B0, v22);

  (*(v12 + 8))(v17, v11);
}

uint64_t sub_1007BE704(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1006D80FC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1007BE85C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1007BE938(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1006D7EB4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1007BEA80(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1006D6324(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1007BEBB0()
{
  result = qword_1016A9A00;
  if (!qword_1016A9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A00);
  }

  return result;
}

uint64_t sub_1007BEC04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 112);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  *(a2 + 112) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1007BEC80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_1007BECAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007BECF4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64) + 7;
  v8 = (v6 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v5 + v9 + 8) & ~v5;
  v11 = (v10 + v7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 24);
  v22 = *(v1 + 16);
  v14 = *(v1 + v8);
  v15 = *(v1 + v9);
  v16 = (v1 + v11);
  v18 = *v16;
  v17 = v16[1];
  v19 = *(v1 + v12);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_100014744;

  return sub_1004C7264(a1, v22, v13, v1 + v6, v14, v15, v1 + v10, v18);
}

uint64_t sub_1007BEE9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1007B6124(v2, v3, v5, v4);
}

uint64_t sub_1007BEF6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v12 = *(v0 + v6);

  v11(v0 + v7, v1);
  v13 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_1007BF0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007BF158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007BF1B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_1004D2ECC(a1, v11, v12, v1 + v6, v10, v1 + v9, v14, v15);
}

uint64_t sub_1007BF380(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100016590(a1, a2);
  }
}

uint64_t sub_1007BF394()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1007B2A34(v2, v3, v5, v4);
}

uint64_t sub_1007BF448()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_10069A6D8(v0 + v3, v5, v6);
}

uint64_t sub_1007BF554()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100699CD8(v0 + v3, v7, v8, v9, v10);
}

uint64_t sub_1007BF688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1007B23F8(v2, v3, v4);
}

uint64_t sub_1007BF73C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_101026390(a1, v4, v5, v7);
}

unint64_t sub_1007BF824()
{
  result = qword_1016A9A80;
  if (!qword_1016A9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A80);
  }

  return result;
}

unint64_t sub_1007BF87C()
{
  result = qword_1016A9A88;
  if (!qword_1016A9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A88);
  }

  return result;
}

uint64_t *sub_1007BF8F0()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  return &qword_10177B348;
}

void *sub_1007BF940()
{
  v0 = type metadata accessor for URL();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F4CE88();
  v4 = type metadata accessor for ConfigurationCoordinator();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_10013EB00(v3);
  qword_10177B348 = result;
  return result;
}

uint64_t sub_1007BF9D4()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x6F666E6974752FLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_1007BFADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7354746E657665;
  }

  else
  {
    v4 = 0x746E657665;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x7354746E657665;
  }

  else
  {
    v6 = 0x746E657665;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1007BFB80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007BFC00()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1007BFC6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1007BFCF4(uint64_t *a1@<X8>)
{
  v2 = 0x746E657665;
  if (*v1)
  {
    v2 = 0x7354746E657665;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1007BFD30()
{
  if (*v0)
  {
    result = 0x7354746E657665;
  }

  else
  {
    result = 0x746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_1007BFD68@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160A0B0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1007BFDCC(uint64_t a1)
{
  v2 = sub_1007C3238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007BFE08(uint64_t a1)
{
  v2 = sub_1007C3238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007BFE44(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A9C10, &qword_1013BBEC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007C3238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for UTInfoPublishRequestBody.State(0) + 20);
    v15[14] = 1;
    type metadata accessor for Date();
    sub_1007C3394(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1007BFFFC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v22 = a5;
  v19 = a4;
  v9 = sub_1000BC4D4(&qword_1016A9CE0, &qword_1013BC4E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007C3B7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v15 = a3;
    v16 = v19;
    LOBYTE(v20) = BYTE1(a2);
    v23 = 1;
    sub_1007C3BD0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = BYTE2(a2);
    v23 = 2;
    sub_1007C3C24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = BYTE3(a2);
    v23 = 3;
    sub_1003091D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 4;
    v23 = BYTE5(a2) & 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v15;
    v21 = v16;
    v23 = 5;
    sub_10002E98C(v15, v16);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v20, v21);
    LOBYTE(v20) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1007C02C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A9C20, &qword_1013BBEC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007C328C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    *v17 = v3[2];
    v16[0] = 1;
    sub_1000BC4D4(&qword_1016A9C30, &qword_1013BBED0);
    sub_1007C32E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    v17[0] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18[0] = *(v3 + 5);
    *(v18 + 9) = *(v3 + 49);
    *v17 = *(v3 + 5);
    *&v17[9] = *(v3 + 49);
    v16[31] = 3;
    sub_1007C33DC(v18, v16);
    sub_1007C344C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1007C34A0(*v17, *&v17[8], *&v17[16]);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1007C04F4(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A9BE0, &qword_1013BBEB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007C30B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1007C310C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_1000BC4D4(&qword_1016A9BF8, &qword_1013BBEB8);
    sub_1007C3160();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1007C06B8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1802661751;
  }

  else
  {
    v2 = 1701670760;
  }

  if (*a2)
  {
    v3 = 1802661751;
  }

  else
  {
    v3 = 1701670760;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1007C0730()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C0798()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1007C07E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1007C0854(uint64_t *a1@<X8>)
{
  v2 = 1701670760;
  if (*v1)
  {
    v2 = 1802661751;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

Swift::Int sub_1007C08D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C09A0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1007C0A54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007C0B18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007C18D0(*a1);
  *a2 = result;
  return result;
}

void sub_1007C0B48(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696B6C6177;
  v4 = 0xE700000000000000;
  v5 = 0x676E6976697264;
  if (*v1 != 2)
  {
    v5 = 0x616E6F6974617473;
    v4 = 0xEA00000000007972;
  }

  if (*v1)
  {
    v3 = 0x676E696C637963;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1007C0C1C()
{
  v1 = *v0;
  v2 = 0x6E6F437261435462;
  v3 = 0x657264644163616DLL;
  if (v1 != 5)
  {
    v3 = 0x6E72657478457369;
  }

  v4 = 0x7954656369766564;
  if (v1 != 3)
  {
    v4 = 0x496B726F7774656ELL;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x74536E6F69746F6DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1007C0D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007C191C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007C0D48(uint64_t a1)
{
  v2 = sub_1007C3B7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C0D84(uint64_t a1)
{
  v2 = sub_1007C3B7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C0E08()
{
  v1 = 1953916001;
  v2 = 0x7069726373627573;
  if (*v0 != 2)
  {
    v2 = 0x787443746E657665;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1007C0E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007C1B88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007C0EAC(uint64_t a1)
{
  v2 = sub_1007C328C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C0EE8(uint64_t a1)
{
  v2 = sub_1007C328C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C0F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6572616853736168 && a2 == 0xEE00736D65744964)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007C0FF0(uint64_t a1)
{
  v2 = sub_1007C3B28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C102C(uint64_t a1)
{
  v2 = sub_1007C3B28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C1068(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A9CD0, &qword_1013BC4E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007C3B28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1007C11A0()
{
  if (*v0)
  {
    result = 7562345;
  }

  else
  {
    result = 0x7443746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_1007C11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7443746E65696C63 && a2 == 0xE900000000000078;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
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

uint64_t sub_1007C12BC(uint64_t a1)
{
  v2 = sub_1007C30B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C12F8(uint64_t a1)
{
  v2 = sub_1007C30B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C1354(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657669746361;
  }

  else
  {
    v4 = 0x7472656E69;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x657669746361;
  }

  else
  {
    v6 = 0x7472656E69;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1007C13F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C1470()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1007C14D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C155C@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1007C15B8(uint64_t *a1@<X8>)
{
  v2 = 0x7472656E69;
  if (*v1)
  {
    v2 = 0x657669746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1007C1650()
{
  v1 = 1953916001;
  if (*v0 != 1)
  {
    v1 = 0x746C75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7069726373627573;
  }
}

uint64_t sub_1007C16AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007C1CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007C16D4(uint64_t a1)
{
  v2 = sub_1007C3A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C1710(uint64_t a1)
{
  v2 = sub_1007C3A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007C174C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007C1E0C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1007C17A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007C182C(uint64_t a1)
{
  v2 = sub_1007C2F8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C1868(uint64_t a1)
{
  v2 = sub_1007C2F8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1007C18A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1007C206C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1007C18D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A150, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007C191C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F437261435462 && a2 == 0xEE0064657463656ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013607B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74536E6F69746F6DLL && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E72657478457369 && a2 == 0xEA00000000006C61)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1007C1B88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953916001 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x787443746E657665 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1007C1CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953916001 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1007C1E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A9CB8, &qword_1013BC4D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007C3A80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v14;
  v22 = 2;
  sub_1007C3AD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  result = sub_100007BAC(a1);
  *a2 = v21;
  *(a2 + 8) = v13;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  return result;
}

void *sub_1007C206C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A9BB8, &qword_1013BBEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1007C2F8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A9BC8, &qword_1013BBEA8);
    sub_1007C2FE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

uint64_t sub_1007C21F0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 200) = a2;
  *(v3 + 208) = a3;
  *(v3 + 384) = a1;
  v4 = type metadata accessor for HashAlgorithm();
  *(v3 + 216) = v4;
  v5 = *(v4 - 8);
  *(v3 + 224) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v7 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v3 + 240) = v7;
  v8 = *(v7 - 8);
  *(v3 + 248) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v10 = type metadata accessor for TimeZone();
  *(v3 + 264) = v10;
  v11 = *(v10 - 8);
  *(v3 + 272) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v3 + 288) = v13;
  v14 = *(v13 - 8);
  *(v3 + 296) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1007C23C8, 0, 0);
}

uint64_t sub_1007C23C8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v34 = *(v0 + 272);
  v35 = *(v0 + 264);
  v36 = *(v0 + 256);
  v37 = *(v0 + 248);
  v38 = *(v0 + 240);
  v40 = *(v0 + 200);
  v39 = *(v0 + 384);
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 32) = 0x747065636341;
  *(inited + 16) = xmmword_101391790;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x800000010134F5C0;
  strcpy((inited + 64), "content-type");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010134F5C0;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x8000000101360770;
  Date.init()();
  v6 = Date.epoch.getter();
  v7 = *(v1 + 8);
  v7(v2, v4);
  *(v0 + 192) = v6;
  *(inited + 112) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000101360790;
  static TimeZone.current.getter();
  Date.init()();
  v9 = TimeZone.abbreviation(for:)();
  v11 = v10;
  v7(v2, v4);
  (*(v34 + 8))(v3, v35);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v11)
  {
    v13 = v11;
  }

  *(inited + 144) = v12;
  *(inited + 152) = v13;
  v14 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  v15 = swift_arrayDestroy();
  v16 = sub_100EB2DF0(v15);
  v18 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0x6567412D72657355, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  *(v0 + 312) = v14;
  v20 = type metadata accessor for JSONEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 320) = JSONEncoder.init()();
  *v36 = sub_100281AE0;
  v36[1] = 0;
  (*(v37 + 104))(v36, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v38);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  *(v0 + 176) = v39;
  *(v0 + 184) = v40;
  sub_1007C2CFC();
  *(v0 + 328) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 336) = v23;
  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v26 = *(v0 + 216);
  v27 = *(v0 + 200);

  (*(v25 + 104))(v24, enum case for HashAlgorithm.sha256(_:), v26);
  v28 = Data.hash(algorithm:)();
  v30 = v29;
  *(v0 + 344) = v28;
  *(v0 + 352) = v29;
  (*(v25 + 8))(v24, v26);
  v31 = swift_task_alloc();
  *(v0 + 360) = v31;
  *v31 = v0;
  v31[1] = sub_1007C2864;
  v32 = *(v0 + 208);

  return sub_100EA87F4(v28, v30, v32);
}

uint64_t sub_1007C2864(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v7 = sub_1007C2AC8;
  }

  else
  {
    v8 = v4[43];
    v9 = v4[44];
    v4[47] = a1;
    sub_100016590(v8, v9);
    v7 = sub_1007C2994;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1007C2994()
{
  v19 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[26];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v18);

  v7 = v18;
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[32];
  v13 = v0[29];

  sub_100017D5C(v9, v8);

  sub_100016590(v9, v8);

  v14 = v0[1];
  v15 = v0[41];
  v16 = v0[42];

  return v14(v7, v15, v16);
}

uint64_t sub_1007C2AC8()
{
  sub_100016590(v0[43], v0[44]);
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C348);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[46];
  v7 = v0[40];
  v8 = v0[26];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to generate utInfo attestation header: %{public}@.", v9, 0xCu);
    sub_100288C6C(v10);
  }

  else
  {
    v12 = v0[40];
  }

  v13 = v0[41];
  v14 = v0[42];
  v16 = v0[38];
  v15 = v0[39];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[29];

  sub_100017D5C(v13, v14);

  sub_100016590(v13, v14);

  v20 = v0[1];
  v21 = v0[41];
  v22 = v0[42];

  return v20(v15, v21, v22);
}

unint64_t sub_1007C2CFC()
{
  result = qword_1016A9A90;
  if (!qword_1016A9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A90);
  }

  return result;
}

uint64_t sub_1007C2D98()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1007C2E14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1007C2E44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1007C2E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1007C2EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007C2F8C()
{
  result = qword_1016A9BC0;
  if (!qword_1016A9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BC0);
  }

  return result;
}

unint64_t sub_1007C2FE0()
{
  result = qword_1016A9BD0;
  if (!qword_1016A9BD0)
  {
    sub_1000BC580(&qword_1016A9BC8, &qword_1013BBEA8);
    sub_1007C3064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BD0);
  }

  return result;
}

unint64_t sub_1007C3064()
{
  result = qword_1016A9BD8;
  if (!qword_1016A9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BD8);
  }

  return result;
}

unint64_t sub_1007C30B8()
{
  result = qword_1016A9BE8;
  if (!qword_1016A9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BE8);
  }

  return result;
}

unint64_t sub_1007C310C()
{
  result = qword_1016A9BF0;
  if (!qword_1016A9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BF0);
  }

  return result;
}

unint64_t sub_1007C3160()
{
  result = qword_1016A9C00;
  if (!qword_1016A9C00)
  {
    sub_1000BC580(&qword_1016A9BF8, &qword_1013BBEB8);
    sub_1007C31E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C00);
  }

  return result;
}
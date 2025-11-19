uint64_t storeEnumTagSinglePayload for REMReminderStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002BD5EC()
{
  result = qword_1009409B8;
  if (!qword_1009409B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009409B8);
  }

  return result;
}

unint64_t sub_1002BD688()
{
  result = qword_1009409D0;
  if (!qword_1009409D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009409D0);
  }

  return result;
}

uint64_t sub_1002BD6DC()
{
  v183 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v182 = *(v183 - 8);
  v1 = *(v182 + 64);
  __chkstk_darwin(v183);
  v172 = v131 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1000F5104(&qword_100940AD0, &qword_1007A0518);
  v163 = *(v162 - 8);
  v3 = *(v163 + 64);
  __chkstk_darwin(v162);
  v159 = v131 - v4;
  v165 = sub_1000F5104(&qword_100940AD8, &qword_1007A0520);
  v166 = *(v165 - 8);
  v5 = *(v166 + 64);
  __chkstk_darwin(v165);
  v160 = v131 - v6;
  v168 = sub_1000F5104(&qword_100940AE0, &qword_1007A0528);
  v171 = *(v168 - 8);
  v7 = *(v171 + 64);
  __chkstk_darwin(v168);
  v161 = v131 - v8;
  v174 = sub_1000F5104(&qword_100940AE8, &qword_1007A0530);
  v175 = *(v174 - 8);
  v9 = *(v175 + 64);
  __chkstk_darwin(v174);
  v164 = v131 - v10;
  v176 = sub_1000F5104(&qword_100940AF0, &qword_1007A0538);
  v177 = *(v176 - 8);
  v11 = *(v177 + 64);
  __chkstk_darwin(v176);
  v167 = v131 - v12;
  v178 = sub_1000F5104(&qword_100940AF8, &qword_1007A0540);
  v179 = *(v178 - 8);
  v13 = *(v179 + 64);
  __chkstk_darwin(v178);
  v169 = v131 - v14;
  v180 = sub_1000F5104(&qword_100940B00, &qword_1007A0548);
  v181 = *(v180 - 8);
  v15 = *(v181 + 64);
  __chkstk_darwin(v180);
  v170 = v131 - v16;
  v184 = sub_1000F5104(&qword_100940B08, &qword_1007A0550);
  v185 = *(v184 - 8);
  v17 = *(v185 + 64);
  __chkstk_darwin(v184);
  v173 = v131 - v18;
  v155 = type metadata accessor for REMNotifyPublisher();
  v158 = *(v155 - 8);
  v19 = *(v158 + 64);
  __chkstk_darwin(v155);
  v153 = v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1000F5104(&qword_100940B10, &qword_1007A0558);
  v157 = *(v156 - 8);
  v21 = *(v157 + 64);
  __chkstk_darwin(v156);
  v154 = v131 - v22;
  v144 = sub_1000F5104(&unk_100940B18, &unk_1007A0560);
  v186 = *(v144 - 1);
  v23 = v186[8];
  __chkstk_darwin(v144);
  v136 = v131 - v24;
  v25 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v131 - v27;
  v133 = sub_1000F5104(&qword_100940B28, &qword_1007A0570);
  v139 = *(v133 - 8);
  v29 = *(v139 + 64);
  __chkstk_darwin(v133);
  v31 = v131 - v30;
  v140 = sub_1000F5104(&qword_100940B30, &qword_1007A0578);
  v141 = *(v140 - 8);
  v32 = *(v141 + 64);
  __chkstk_darwin(v140);
  v132 = v131 - v33;
  v142 = sub_1000F5104(&qword_100940B38, &qword_1007A0580);
  v143 = *(v142 - 8);
  v34 = *(v143 + 64);
  __chkstk_darwin(v142);
  v134 = v131 - v35;
  v145 = sub_1000F5104(&qword_100940B40, &qword_1007A0588);
  v150 = *(v145 - 1);
  v36 = v150[8];
  __chkstk_darwin(v145);
  v135 = v131 - v37;
  v147 = sub_1000F5104(&qword_100940B48, &qword_1007A0590);
  v149 = *(v147 - 8);
  v38 = *(v149 + 64);
  __chkstk_darwin(v147);
  v137 = v131 - v39;
  v146 = sub_1000F5104(&unk_100940B50, &qword_1007A0598);
  v148 = *(v146 - 8);
  v40 = *(v148 + 64);
  __chkstk_darwin(v146);
  v138 = v131 - v41;
  v152 = v0;
  v192 = sub_100441DF8(*(v0 + 24), 0xD000000000000022, 0x80000001007F3920, 0);
  v42 = *(v0 + 16);
  v191 = v42;
  v190 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v190 - 8);
  v44 = *(v43 + 56);
  v188 = v43 + 56;
  v189 = v44;
  v44(v28, 1, 1, v190);
  v45 = v42;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  v46 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v151 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
  v187 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v131[0] = v46;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v28, &qword_100939980, &unk_10079ADA0);

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v48 = [swift_getObjCClassFromMetadata() cdEntityName];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(inited + 32) = v49;
  *(inited + 40) = v51;
  sub_1000060C8(0, &unk_100938870, off_1008D4128);
  v52 = [swift_getObjCClassFromMetadata() cdEntityName];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  *(inited + 48) = v53;
  *(inited + 56) = v55;
  sub_1000060C8(0, &qword_100940350, off_1008D4130);
  v56 = [swift_getObjCClassFromMetadata() cdEntityName];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  *(inited + 64) = v57;
  *(inited + 72) = v59;
  v60 = sub_10038D894(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(swift_allocObject() + 16) = v60;
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  v131[1] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&qword_100940B60, &qword_100940B28, &qword_1007A0570);
  v61 = v136;
  v62 = v133;
  Publisher.map<A>(_:)();

  sub_10000CB48(&qword_100940B68, &unk_100940B18, &unk_1007A0560);
  v63 = v132;
  v64 = v144;
  Publisher.filter(_:)();
  (v186[1])(v61, v64);
  (*(v139 + 8))(v31, v62);
  sub_10000CB48(&qword_100940B70, &qword_100940B30, &qword_1007A0578);
  v65 = v140;
  v66 = v134;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v141 + 8))(v63, v65);
  v186 = &protocol conformance descriptor for Publishers.HandleEvents<A>;
  sub_10000CB48(&unk_100940B78, &qword_100940B38, &qword_1007A0580);
  v67 = v135;
  v68 = v142;
  Publisher.tryMap<A>(_:)();
  (*(v143 + 8))(v66, v68);
  v143 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  v144 = &protocol conformance descriptor for Publishers.TryMap<A, B>;
  sub_10000CB48(&qword_100940B88, &qword_100940B40, &qword_1007A0588);
  v69 = v137;
  v70 = v145;
  Publisher.mapError<A>(_:)();
  (v150[1])(v67, v70);
  v145 = &protocol conformance descriptor for Publishers.MapError<A, B>;
  sub_10000CB48(&qword_100940B90, &qword_100940B48, &qword_1007A0590);
  v71 = v138;
  v72 = v147;
  Publisher.replaceError(with:)();
  (*(v149 + 8))(v69, v72);
  v150 = &protocol conformance descriptor for Publishers.ReplaceError<A>;
  sub_10000CB48(&qword_100940B98, &unk_100940B50, &qword_1007A0598);
  v73 = v146;
  v74 = Publisher.eraseToAnyPublisher()();
  (*(v148 + 8))(v71, v73);
  sub_1002BF5A8();
  v75 = v153;
  REMNotifyPublisher.init(name:accessQueue:)();
  sub_10000D3C8(&qword_100940BA0, &type metadata accessor for REMNotifyPublisher);
  v76 = v155;
  v77 = v154;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v158 + 8))(v75, v76);
  sub_10000CB48(&qword_100940BA8, &qword_100940B10, &qword_1007A0558);
  v78 = v156;
  v79 = Publisher.eraseToAnyPublisher()();
  (*(v157 + 8))(v77, v78);
  sub_1000F5104(&qword_100940BB0, &qword_1007A05B0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100791340;
  *(v80 + 32) = v74;
  *(v80 + 40) = v79;
  v158 = v74;

  v157 = v79;

  sub_1000F5104(&qword_100940BB8, &qword_1007A05B8);
  sub_10000CB48(&qword_100940BC0, &qword_100940BB8, &qword_1007A05B8);
  v81 = v159;
  Publishers.MergeMany.init(_:)();
  v82 = v152;
  v192 = *(v152 + 16);
  v83 = v192;
  v189(v28, 1, 1, v190);
  sub_10000CB48(&qword_100940BC8, &qword_100940AD0, &qword_1007A0518);
  v84 = v83;
  v85 = v160;
  v86 = v162;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v28, &qword_100939980, &unk_10079ADA0);

  (*(v163 + 8))(v81, v86);
  swift_allocObject();
  v87 = v82;
  swift_weakInit();
  sub_10000CB48(&qword_100940BD0, &qword_100940AD8, &qword_1007A0520);
  v88 = v165;
  v89 = v161;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v166 + 8))(v85, v88);
  v90 = v172;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v192 = *(v87 + 16);
  v91 = v192;
  v189(v28, 1, 1, v190);
  sub_10000CB48(&qword_100940BD8, &qword_100940AE0, &qword_1007A0528);
  v92 = v91;
  v93 = v164;
  v94 = v168;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v28, &qword_100939980, &unk_10079ADA0);

  (*(v182 + 8))(v90, v183);
  (*(v171 + 8))(v89, v94);
  swift_allocObject();
  swift_weakInit();
  sub_1000F5104(&qword_100940BE0, &qword_1007A05C0);
  sub_10000CB48(&qword_100940BE8, &qword_100940AE8, &qword_1007A0530);
  v95 = v167;
  v96 = v174;
  Publisher.tryMap<A>(_:)();

  (*(v175 + 8))(v93, v96);
  sub_10000CB48(&qword_100940BF0, &qword_100940AF0, &qword_1007A0538);
  v97 = v169;
  v98 = v176;
  Publisher.mapError<A>(_:)();
  (*(v177 + 8))(v95, v98);
  v192 = _swiftEmptyArrayStorage;
  sub_10000CB48(&qword_100940BF8, &qword_100940AF8, &qword_1007A0540);
  v99 = v170;
  v100 = v178;
  Publisher.replaceError(with:)();
  (*(v179 + 8))(v97, v100);
  swift_allocObject();
  v101 = v87;
  swift_weakInit();
  sub_10000CB48(&qword_100940C00, &qword_100940B00, &qword_1007A0548);
  v102 = v180;
  v103 = v173;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v181 + 8))(v99, v102);
  sub_1000F5104(&qword_100940C08, &qword_1007A05C8);
  sub_10000CB48(&qword_100940C10, &qword_100940B08, &qword_1007A0550);
  sub_10000CB48(&qword_100940C18, &qword_100940C08, &qword_1007A05C8);
  v104 = v184;
  v105 = Publisher.multicast<A>(_:)();
  (*(v185 + 8))(v103, v104);
  v106 = v101;
  v190 = *(v101 + 32);
  v107 = *(v190 + 16);
  if (v107)
  {
    v108 = (v190 + 32);
    do
    {
      v109 = *v108;
      v108 += 2;
      v192 = v105;
      swift_unknownObjectRetain();
      sub_1000F5104(&qword_100940C20, &unk_1007A05D0);
      sub_10000CB48(&qword_100940C28, &qword_100940C20, &unk_1007A05D0);
      v110 = Publisher.eraseToAnyPublisher()();
      sub_1002D0D48(v110);
      swift_unknownObjectRelease();

      --v107;
    }

    while (v107);
  }

  Publishers.Multicast.connect()();
  swift_beginAccess();
  sub_1002C3F04(&v192, v106 + 48);
  swift_endAccess();
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  sub_100006654(v111, qword_1009409E0);

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = v115;
    v192 = v115;
    *v114 = 136446210;
    v117 = v190;
    v118 = *(v190 + 16);
    v119 = _swiftEmptyArrayStorage;
    if (v118)
    {
      v187 = v115;
      v188 = v114;
      LODWORD(v189) = v113;
      v191 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v118, 0);
      v119 = v191;
      v120 = v117 + 32;
      do
      {
        v121 = *(*v120 + 16);
        v122 = *(*v120 + 24);
        v191 = v119;
        v124 = v119[2];
        v123 = v119[3];

        if (v124 >= v123 >> 1)
        {
          sub_100026EF4((v123 > 1), v124 + 1, 1);
          v119 = v191;
        }

        v119[2] = v124 + 1;
        v125 = &v119[2 * v124];
        v125[4] = v121;
        v125[5] = v122;
        v120 += 16;
        --v118;
      }

      while (v118);
      LOBYTE(v113) = v189;
      v114 = v188;
      v116 = v187;
    }

    v191 = v119;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v126 = BidirectionalCollection<>.joined(separator:)();
    v128 = v127;

    v129 = sub_10000668C(v126, v128, &v192);

    *(v114 + 4) = v129;
    _os_log_impl(&_mh_execute_header, v112, v113, "TimelineEngine started with processors: %{public}s", v114, 0xCu);
    sub_10000607C(v116);
  }
}

uint64_t sub_1002BF3EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009409E0);
  v1 = sub_100006654(v0, qword_1009409E0);
  if (qword_100936490 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002BF4B4()
{
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009409E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TimelineEngine storeDidChangePublisher triggered", v2, 2u);
  }
}

uint64_t sub_1002BF5A8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  v1 = *(v17 + 64);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v19 = type metadata accessor for REMNotifyPublisher();
  sub_1000F5104(&unk_100940C80, &unk_1007A0790);
  v13 = String.init<A>(reflecting:)();
  v16[1] = v14;
  v16[2] = v13;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000D3C8(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void sub_1002BF8F8()
{
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009409E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TimelineEngine significantTimeChangedPublisher triggered", v2, 2u);
  }
}

uint64_t sub_1002BF9E0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 16);
  *v4 = v7;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_100935E30 != -1)
  {
LABEL_9:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_1009409E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TimelineEngine will go through debouncer", v12, 2u);
  }

  v13 = *(v6 + 96);
  *(v6 + 96) = 1;
  sub_1002C0514(v13);
}

void *sub_1002BFBE4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RDTimelineEngineReminder(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v37 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v13 = _swiftEmptyArrayStorage;
  if (result)
  {
    v14 = result;
    v52[5] = v4;
    v15 = *result;
    v16 = result[3];
    v42 = xmmword_1007A0480;
    v49 = xmmword_1007A0480;
    v51 = 0;
    v52[0] = 0;
    v50 = 0;
    *(v52 + 6) = 0;
    v48 = v15;
    v17 = sub_100401030(&v49, sub_1002C40A4, v47);
    if (v1)
    {
    }

    v39 = a1;
    v18 = *(v17 + 16);
    if (v18)
    {
      v38 = v8;
      v40 = v14;
      v41 = 0;
      *&v49 = _swiftEmptyArrayStorage;
      v19 = v17;
      sub_1002539C8(0, v18, 0);
      v20 = v49;
      v21 = *(type metadata accessor for RDTimelineEngineDueReminder(0) - 8);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v37[1] = v19;
      v23 = v19 + v22;
      v24 = *(v21 + 72);
      do
      {
        sub_1002C403C(v23, v11, type metadata accessor for RDTimelineEngineDueReminder);
        swift_storeEnumTagMultiPayload();
        *&v49 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_1002539C8(v25 > 1, v26 + 1, 1);
          v20 = v49;
        }

        v20[2] = v26 + 1;
        sub_1002C3FB4(v11, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, type metadata accessor for RDTimelineEngineReminder);
        v23 += v24;
        --v18;
      }

      while (v18);

      v2 = v41;
      v14 = v40;
      v8 = v38;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    v27 = v14[3];
    v43 = v42;
    v45 = 0;
    v46[0] = 0;
    v44 = 0;
    *(v46 + 6) = 0;
    v28 = sub_10040158C(&v43, sub_1002C1C84, 0);
    if (v2)
    {
    }

    v29 = *(v28 + 16);
    if (v29)
    {
      v40 = v14;
      v41 = 0;
      *&v49 = _swiftEmptyArrayStorage;
      v30 = v28;
      sub_1002539C8(0, v29, 0);
      v31 = v49;
      v32 = *(type metadata accessor for RDTimelineEngineLocationReminder(0) - 8);
      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v38 = v30;
      v34 = v30 + v33;
      *&v42 = *(v32 + 72);
      do
      {
        sub_1002C403C(v34, v8, type metadata accessor for RDTimelineEngineLocationReminder);
        swift_storeEnumTagMultiPayload();
        *&v49 = v31;
        v36 = v31[2];
        v35 = v31[3];
        if (v36 >= v35 >> 1)
        {
          sub_1002539C8(v35 > 1, v36 + 1, 1);
          v31 = v49;
        }

        v31[2] = v36 + 1;
        sub_1002C3FB4(v8, v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36, type metadata accessor for RDTimelineEngineReminder);
        v34 += v42;
        --v29;
      }

      while (v29);
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    *&v49 = v20;
    sub_1002723B8(v31);

    v13 = v49;
    a1 = v39;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1002C013C@<X0>(uint64_t *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_1009409E0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000668C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 0xCu);
    sub_10000607C(v10);
  }

  *a3 = v5;
  return swift_errorRetain();
}

uint64_t sub_1002C02D0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 16);
  *v4 = v7;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_100935E30 != -1)
  {
LABEL_9:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_1009409E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TimelineEngine is now going to multicast event to processors", v12, 2u);
  }

  v13 = *(v6 + 96);
  *(v6 + 96) = 0;
  sub_1002C0514(v13);
}

uint64_t sub_1002C04D0()
{
  v0 = sub_1000F5104(&qword_100940C08, &qword_1007A05C8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return PassthroughSubject.init()();
}

void sub_1002C0514(char a1)
{
  if (*(v1 + 96) != (a1 & 1))
  {
    if (*(v1 + 96))
    {
      v2 = os_transaction_create();
      v3 = *(v1 + 88);
      *(v1 + 88) = v2;
      swift_unknownObjectRelease();
      if (qword_100935E30 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100006654(v4, qword_1009409E0);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction INIT {name: com.apple.remindd.RDTimelineEngine.debouncingEvents}", v6, 2u);
      }
    }

    else
    {
      v7 = v1;
      if (qword_100935E30 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_1009409E0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction RELEASE {name: com.apple.remindd.RDTimelineEngine.debouncingEvents}", v11, 2u);
      }

      v12 = *(v7 + 88);
      *(v7 + 88) = 0;

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002C072C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v57[1] = a1;
  v57[0] = a3;
  v6 = sub_1000F5104(&qword_100940C38, &qword_1007A05E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v65 = v57 - v8;
  v63 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v61 = *(v63 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v63);
  v62 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = _s10PredicatesOMa(0);
  v11 = *(*(v59 - 1) + 64);
  __chkstk_darwin(v59);
  v58 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100797700;
  *(inited + 32) = swift_getKeyPath();
  v57[3] = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  v70 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 5, 0);
  v14 = 0;
  v15 = v70;
  v16 = inited & 0xC000000000000001;
  v66 = (inited & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = v66[2];
      if (v14 >= v18)
      {
        __break(1u);
        goto LABEL_46;
      }

      v17 = *(inited + 8 * v14 + 32);
    }

    v19 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v20)
    {
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v55._object = 0x80000001007EC120;
      v55._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v55);
      v67 = v17;
      goto LABEL_62;
    }

    v4 = v19;
    v3 = v20;

    v70 = v15;
    v5 = *(v15 + 16);
    v21 = *(v15 + 24);
    if (v5 >= v21 >> 1)
    {
      sub_100026EF4((v21 > 1), v5 + 1, 1);
      v15 = v70;
    }

    ++v14;
    *(v15 + 16) = v5 + 1;
    v22 = v15 + 16 * v5;
    *(v22 + 32) = v4;
    *(v22 + 40) = v3;
  }

  while (v14 != 5);
  swift_setDeallocating();
  v23 = *(inited + 16);
  swift_arrayDestroy();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  v66 = (inited + 32);
  *(inited + 40) = swift_getKeyPath();
  v3 = [objc_opt_self() fetchRequest];
  [v3 setResultType:0];
  v24 = v58;
  swift_storeEnumTagMultiPayload();
  v25 = sub_100043AA8();
  sub_1002C40D8(v24, _s10PredicatesOMa);
  [v3 setPredicate:v25];

  [v3 setReturnsDistinctResults:0];
  sub_10003450C(v15);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToFetch:isa];

  v70 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v27 = v70;
  v16 = inited & 0xFFFFFFFFFFFFFF8;
  v5 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v15 = *v66;
  }

  v59 = v3;
  v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v29)
  {
    while (1)
    {
LABEL_63:
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v56._object = 0x80000001007EC120;
      v56._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v56);
      v67 = v15;
LABEL_62:
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v3 = v28;
  v4 = v29;

  v14 = v27[2];
  v18 = v27[3];
  v15 = v14 + 1;
  if (v14 >= v18 >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v27[2] = v15;
    v30 = &v27[2 * v14];
    v30[4] = v3;
    v30[5] = v4;
    if (v5)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v59;
      goto LABEL_20;
    }

    v31 = v59;
    if (*(v16 + 16) < 2uLL)
    {
      break;
    }

    v15 = *(inited + 40);

LABEL_20:
    v32 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v33)
    {
      goto LABEL_63;
    }

    v3 = v32;
    v34 = v33;

    v70 = v27;
    v36 = v27[2];
    v35 = v27[3];
    if (v36 >= v35 >> 1)
    {
      sub_100026EF4((v35 > 1), v36 + 1, 1);
      v27 = v70;
    }

    v27[2] = v36 + 1;
    v37 = &v27[2 * v36];
    v37[4] = v3;
    v37[5] = v34;
    swift_setDeallocating();
    v38 = *(inited + 16);
    swift_arrayDestroy();
    inited = Array._bridgeToObjectiveC()().super.isa;

    [v31 setRelationshipKeyPathsForPrefetching:inited];

    if (qword_100936068 != -1)
    {
      swift_once();
    }

    v39 = qword_100974E18;
    if (qword_100974E18)
    {
      inited = swift_allocObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = v39;
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v40 = v39;
      v41 = Array._bridgeToObjectiveC()().super.isa;

      [v31 setSortDescriptors:v41];
    }

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v42 = v57[2];
    v43 = NSManagedObjectContext.fetch<A>(_:)();
    if (v42)
    {

      return;
    }

    v4 = v43;
    v60 = 0;
    v58 = (v43 >> 62);
    if (v43 >> 62)
    {
      goto LABEL_50;
    }

    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v65;
    if (!v44)
    {
      goto LABEL_51;
    }

LABEL_31:
    v15 = 0;
    v66 = (v4 & 0xC000000000000001);
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v16 = v61 + 48;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v66)
      {
        v3 = v4;
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v5 + 16);
        if (v15 >= v18)
        {
          goto LABEL_47;
        }

        v3 = v4;
        v46 = *(v4 + 8 * v15 + 32);
      }

      v4 = v46;
      inited = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_1002C12A8(v46, v45);
      v45 = v65;

      if ((*v16)(v45, 1, v63) == 1)
      {
        sub_1000050A4(v45, &qword_100940C38, &qword_1007A05E8);
      }

      else
      {
        sub_1002C3FB4(v45, v62, type metadata accessor for RDTimelineEngineDueReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100367930(0, *(v14 + 16) + 1, 1, v14);
        }

        v48 = *(v14 + 16);
        v47 = *(v14 + 24);
        if (v48 >= v47 >> 1)
        {
          v14 = sub_100367930(v47 > 1, v48 + 1, 1, v14);
        }

        *(v14 + 16) = v48 + 1;
        sub_1002C3FB4(v62, v14 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v48, type metadata accessor for RDTimelineEngineDueReminder);
        v45 = v65;
      }

      v4 = v3;
      ++v15;
      if (inited == v44)
      {
        goto LABEL_52;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    sub_100026EF4((v18 > 1), v15, 1);
    v27 = v70;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v44 = _CocoaArrayWrapper.endIndex.getter();
  v45 = v65;
  if (v44)
  {
    goto LABEL_31;
  }

LABEL_51:
  v14 = _swiftEmptyArrayStorage;
LABEL_52:
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100006654(v49, qword_1009409E0);
  swift_bridgeObjectRetain_n();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134218240;
    if (v58)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v52 + 4) = v53;

    *(v52 + 12) = 2048;
    v54 = *(v14 + 16);

    *(v52 + 14) = v54;

    _os_log_impl(&_mh_execute_header, v50, v51, "TimelineEngine fetched %ld DUE reminders and returning %ld", v52, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  *v57[0] = v14;
}

uint64_t sub_1002C12A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v78 - v10;
  v92 = type metadata accessor for Date();
  v94 = *(v92 - 8);
  v11 = *(v94 + 64);
  __chkstk_darwin(v92);
  v87 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v78 - v14;
  __chkstk_darwin(v16);
  v91 = &v78 - v17;
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  __chkstk_darwin(v21);
  v93 = &v78 - v22;
  v23 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v78 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v86 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = __chkstk_darwin(v34).n128_u64[0];
  v37 = &v78 - v36;
  v96 = a1;
  v38 = [a1 list];
  if (!v38)
  {
    (*(v31 + 56))(v29, 1, 1, v30);
LABEL_7:
    sub_1000050A4(v29, &unk_100939D90, "8\n\r");
LABEL_17:
    v68 = type metadata accessor for RDTimelineEngineDueReminder(0);
    return (*(*(v68 - 8) + 56))(a2, 1, 1, v68);
  }

  v39 = v38;
  v95 = a2;
  v40 = [v38 identifier];

  if (v40)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v31 + 56))(v26, 0, 1, v30);
  }

  else
  {
    (*(v31 + 56))(v26, 1, 1, v30);
  }

  sub_100031B58(v26, v29, &unk_100939D90, "8\n\r");
  v41 = (*(v31 + 48))(v29, 1, v30);
  a2 = v95;
  if (v41 == 1)
  {
    goto LABEL_7;
  }

  v42 = *(v31 + 32);
  v42(v37, v29, v30);
  v43 = v96;
  v44 = [v96 displayDateDate];
  if (!v44)
  {
    (*(v31 + 8))(v37, v30);
    goto LABEL_17;
  }

  v83 = v31 + 32;
  v84 = v37;
  v82 = v42;
  v45 = v44;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v93;
  v46 = v94;
  v48 = v94 + 32;
  v49 = v20;
  v50 = v92;
  v85 = *(v94 + 32);
  v85(v93, v49, v92);
  v51 = [v43 dueDate];
  if (!v51)
  {
    (*(v46 + 8))(v47, v50);
    (*(v31 + 8))(v84, v30);
    goto LABEL_17;
  }

  v52 = v51;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v91;
  v81 = v48;
  v85(v91, v15, v50);
  v54 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v56 = [v43 displayDateIsAllDay];
  v57 = v43;
  v58 = [v43 timeZone];
  v59 = [v54 dueDateComponentsWithDueDate:isa isAllDay:v56 timeZoneName:v58];

  if (!v59)
  {
    v70 = *(v94 + 8);
    v70(v53, v50);
    v70(v93, v50);
    (*(v31 + 8))(v84, v30);
    a2 = v95;
    goto LABEL_17;
  }

  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v90 + 32;
  v80 = *(v90 + 32);
  v80(v88, v8, v89);
  v61 = [v57 recurrenceRules];
  v62 = v84;
  if (v61)
  {
    v90 = v60;
    v97 = v61;
    v63 = v61;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
    v64 = Sequence.elements<A>(ofType:)();

    if (qword_100935E30 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    v66 = sub_100006654(v65, qword_1009409E0);
    v97 = v64;
    __chkstk_darwin(v66);
    *(&v78 - 2) = v67;
    sub_1000F5104(&qword_100940948, &qword_1007A0258);
    sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
    sub_10000CB48(&qword_100940950, &qword_100940948, &qword_1007A0258);
    v71 = Sequence.map<A>(skippingError:_:)();

    v72 = v95;
    v50 = v92;
    v73 = v93;
    v79 = v71;
  }

  else
  {
    v79 = 0;
    v72 = v95;
    v73 = v93;
  }

  v74 = v86;
  (*(v31 + 16))(v86, v62, v30);
  v75 = v94;
  (*(v94 + 16))(v87, v73, v50);
  LODWORD(v96) = [v96 displayDateIsAllDay];
  v76 = *(v75 + 8);
  v76(v91, v50);
  v76(v73, v50);
  (*(v31 + 8))(v62, v30);
  v82(v72, v74, v30);
  v77 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v85((v72 + v77[5]), v87, v50);
  *(v72 + v77[6]) = v96;
  v80((v72 + v77[7]), v88, v89);
  *(v72 + v77[8]) = v79;
  return (*(*(v77 - 1) + 56))(v72, 0, 1, v77);
}

void sub_1002C1C84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v4 = sub_1000F5104(&qword_100940C30, &qword_1007A05E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = sub_1000F5104(&unk_100940C40, qword_1007A05F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  v20 = sub_1003FD798();
  if (!v2)
  {
    v55 = v16;
    v47 = v15;
    v48 = v9;
    v49 = v12;
    v50 = 0;
    v21 = v20 + 8;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20[8];
    v25 = (v22 + 63) >> 6;
    v53 = (v9 + 48);
    v56 = v20;

    v26 = 0;
    v51 = _swiftEmptyArrayStorage;
    v27 = v19;
    v54 = v8;
    while (v24)
    {
      a1 = v7;
      v28 = v26;
LABEL_11:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v28 << 6);
      v31 = v56;
      v32 = v56[6];
      v33 = sub_1000F5104(&unk_100939D90, "8\n\r");
      sub_10018E470(v32 + *(*(v33 - 8) + 72) * v30, v27);
      v34 = *(v31[7] + 8 * v30);
      *(v27 + *(v55 + 48)) = v34;

      v7 = a1;
      sub_1002C21B8(v27, v34, a1);
      sub_1000050A4(v27, &unk_100940C40, qword_1007A05F0);
      if ((*v53)(a1, 1, v54) == 1)
      {
        sub_1000050A4(a1, &qword_100940C30, &qword_1007A05E0);
        v26 = v28;
      }

      else
      {
        v35 = v47;
        sub_1002C3FB4(a1, v47, type metadata accessor for RDTimelineEngineLocationReminder);
        sub_1002C3FB4(v35, v49, type metadata accessor for RDTimelineEngineLocationReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_100367958(0, v51[2] + 1, 1, v51);
        }

        v37 = v51[2];
        v36 = v51[3];
        a1 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v51 = sub_100367958(v36 > 1, v37 + 1, 1, v51);
        }

        v38 = v51;
        v51[2] = a1;
        sub_1002C3FB4(v49, v38 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37, type metadata accessor for RDTimelineEngineLocationReminder);
        v26 = v28;
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v28 >= v25)
      {
        break;
      }

      v24 = v21[v28];
      ++v26;
      if (v24)
      {
        a1 = v7;
        goto LABEL_11;
      }
    }

    a1 = v56;

    if (qword_100935E30 == -1)
    {
      goto LABEL_19;
    }

LABEL_25:
    swift_once();
LABEL_19:
    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_1009409E0);

    v40 = v51;
    swift_bridgeObjectRetain_n();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218496;
      v44 = *(a1 + 16);
      *(v43 + 4) = v44;
      *(v43 + 12) = 2048;

      *(v43 + 14) = v44;

      *(v43 + 22) = 2048;
      v45 = v40[2];

      *(v43 + 24) = v45;

      _os_log_impl(&_mh_execute_header, v41, v42, "TimelineEngine fetched (keys: %ld, values: %ld) LOCATION reminders and returning %ld", v43, 0x20u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    *v52 = v40;
  }
}

uint64_t sub_1002C21B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v5 = sub_1000F5104(&qword_100940C30, &qword_1007A05E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  sub_10018E470(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v23, v15, v16);
    v30 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v40 = v31 + 56;
    v41 = v32;
    v32(v11, 1, 1, v30);
    if (v50 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (v34)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v34 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_8:
        v37 = v30;
        v38 = v11;
        v39 = a3;
        a3 = 0;
        v48 = v50 & 0xFFFFFFFFFFFFFF8;
        v49 = v50 & 0xC000000000000001;
        v46 = v17 + 16;
        v35 = (v17 + 8);
        *&v33 = 136315138;
        v43 = v33;
        v44 = v23;
        v45 = v8;
        v47 = v34;
        v42 = v20;
        if ((v50 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v48 + 16))
          {
            __break(1u);
            goto LABEL_14;
          }

          v36 = *(v50 + 32);
        }

        v51 = v36;
        sub_1002C28B8(v36, v8);

        v11 = v38;
        sub_1000050A4(v38, &qword_100940C30, &qword_1007A05E0);
        (*v35)(v23, v16);
        v41(v8, 0, 1, v37);
        sub_100031B58(v8, v11, &qword_100940C30, &qword_1007A05E0);
        a3 = v39;
        return sub_100031B58(v11, a3, &qword_100940C30, &qword_1007A05E0);
      }
    }

    (*(v17 + 8))(v23, v16);
    return sub_100031B58(v11, a3, &qword_100940C30, &qword_1007A05E0);
  }

  sub_1000050A4(v15, &unk_100939D90, "8\n\r");
  if (qword_100935E30 != -1)
  {
LABEL_14:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_1009409E0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "TimelineEngine fetched some location triggers with nil reminder identifier", v27, 2u);
  }

  v28 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
}

uint64_t sub_1002C28B8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v82 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v90 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v89 = &v82 - v15;
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  *&v94 = 0xD000000000000019;
  *(&v94 + 1) = 0x80000001007EAAC0;
  v22 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v92 = a1;
  v23 = [a1 __swift_objectForKeyedSubscript:v22];
  swift_unknownObjectRelease();
  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (!*(&v95 + 1))
  {
    sub_1000050A4(&v96, &qword_100939ED0, &qword_100791B10);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_9;
  }

  v87 = v18;
  v91 = v21;
  v24 = swift_dynamicCast();
  v25 = *(v11 + 56);
  v25(v9, v24 ^ 1u, 1, v10);
  v26 = *(v11 + 48);
  if (v26(v9, 1, v10) == 1)
  {
LABEL_9:
    sub_1000050A4(v9, &unk_100939D90, "8\n\r");
    v29 = objc_opt_self();
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = String._bridgeToObjectiveC()();
    [v29 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v31];

    return swift_willThrow();
  }

  v86 = v11;
  v27 = *(v11 + 32);
  v85 = v11 + 32;
  v84 = v27;
  v27(v91, v9, v10);
  *&v94 = 0xD00000000000001ELL;
  *(&v94 + 1) = 0x80000001007F3990;
  v28 = [v92 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (!*(&v95 + 1))
  {
    sub_1000050A4(&v96, &qword_100939ED0, &qword_100791B10);
    v25(v6, 1, 1, v10);
    goto LABEL_16;
  }

  v33 = swift_dynamicCast();
  v25(v6, v33 ^ 1u, 1, v10);
  if (v26(v6, 1, v10) == 1)
  {
LABEL_16:
    sub_1000050A4(v6, &unk_100939D90, "8\n\r");
    v37 = objc_opt_self();
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v38 = swift_getObjCClassFromMetadata();
    v39 = String._bridgeToObjectiveC()();
    [v37 unexpectedNilPropertyWithClass:v38 property:v39];

    swift_willThrow();
    return (*(v86 + 8))(v91, v10);
  }

  v84(v87, v6, v10);
  *&v94 = 0x656475746974616CLL;
  *(&v94 + 1) = 0xE800000000000000;
  v34 = [v92 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v35 = v91;
  v36 = v86;
  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v41 = v89;
  v40 = v90;
  v96 = v94;
  v97 = v95;
  if (!*(&v95 + 1))
  {
    sub_1000050A4(&v96, &qword_100939ED0, &qword_100791B10);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v42 = v93;
  *&v94 = 0x64757469676E6F6CLL;
  *(&v94 + 1) = 0xE900000000000065;
  v43 = [v92 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v43)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (!*(&v95 + 1))
  {
    sub_1000050A4(&v96, &qword_100939ED0, &qword_100791B10);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v44 = v93;
  *&v94 = 0x737569646172;
  *(&v94 + 1) = 0xE600000000000000;
  v45 = [v92 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (!*(&v95 + 1))
  {
    sub_1000050A4(&v96, &qword_100939ED0, &qword_100791B10);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v48 = objc_opt_self();
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v49 = swift_getObjCClassFromMetadata();
    v50 = String._bridgeToObjectiveC()();
    [v48 unexpectedNilPropertyWithClass:v49 property:v50];

    swift_willThrow();
    v51 = *(v36 + 8);
    v51(v87, v10);
    return (v51)(v35, v10);
  }

  v46 = v93;
  *&v94 = 0x6E6F697461636F6CLL;
  *(&v94 + 1) = 0xEB00000000444955;
  v47 = [v92 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (*(&v95 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_44;
    }
  }

  else
  {
    sub_1000050A4(&v96, &qword_100939ED0, &qword_100791B10);
  }

  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  Double.write<A>(to:)();
  Double.write<A>(to:)();
  Double.write<A>(to:)();
LABEL_44:
  v52 = objc_allocWithZone(CLCircularRegion);
  v53 = String._bridgeToObjectiveC()();

  v54 = [v52 initWithCenter:v53 radius:v42 identifier:{v44, v46}];

  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100006654(v55, qword_1009409E0);
  v56 = v36;
  v57 = *(v36 + 16);
  v57(v41, v35, v10);
  v57(v40, v87, v10);
  v58 = v54;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v96 = v92;
    *v61 = 136315650;
    v90 = v59;
    v62 = CLRegion.stringRepresentation.getter();
    v64 = sub_10000668C(v62, v63, &v96);
    LODWORD(v89) = v60;
    v65 = v64;

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    sub_10000D3C8(&qword_10093F2A0, &type metadata accessor for UUID);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v41;
    v69 = v68;
    v83 = v58;
    v70 = *(v56 + 8);
    v70(v67, v10);
    v71 = sub_10000668C(v66, v69, &v96);

    *(v61 + 14) = v71;
    *(v61 + 22) = 2080;
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    v70(v40, v10);
    v75 = v83;
    v76 = sub_10000668C(v72, v74, &v96);

    *(v61 + 24) = v76;
    v77 = v90;
    _os_log_impl(&_mh_execute_header, v90, v89, "TimelineEngine: Converted fetched dictionary to RDTimelineEngineLocationReminder {region: %s, reminder: %s, list: %s}", v61, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v78 = *(v56 + 8);
    v78(v40, v10);
    v78(v41, v10);
    v75 = v58;
  }

  v79 = v88;
  v80 = v84;
  v84(v88, v87, v10);
  v81 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  result = v80(&v79[*(v81 + 20)], v35, v10);
  *&v79[*(v81 + 24)] = v75;
  return result;
}

uint64_t sub_1002C36B4()
{
  v1 = *(v0 + 32);

  sub_1000050A4(v0 + 48, &qword_100940AC8, &qword_1007A0510);
  v2 = *(v0 + 88);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1002C3740(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940C38, &qword_1007A05E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v29 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RDTimelineEngineReminder(0);
  v10 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v27 = *(v14 + 72);
  v19 = (v7 + 56);
  v20 = _swiftEmptyArrayStorage;
  v25 = v7;
  v26 = v6;
  do
  {
    sub_1002C403C(v18, v16, type metadata accessor for RDTimelineEngineReminder);
    sub_1002C3FB4(v16, v12, type metadata accessor for RDTimelineEngineReminder);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v19)(v5, 1, 1, v6);
      sub_1002C40D8(v12, type metadata accessor for RDTimelineEngineReminder);
    }

    else
    {
      sub_1002C3FB4(v12, v5, type metadata accessor for RDTimelineEngineDueReminder);
      (*v19)(v5, 0, 1, v6);
    }

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000050A4(v5, &qword_100940C38, &qword_1007A05E8);
    }

    else
    {
      sub_1002C3FB4(v5, v29, type metadata accessor for RDTimelineEngineDueReminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100367930(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_100367930(v21 > 1, v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      sub_1002C3FB4(v29, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for RDTimelineEngineDueReminder);
      v6 = v26;
    }

    v18 += v27;
    --v17;
  }

  while (v17);
  return v20;
}

void *sub_1002C3B0C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940C30, &qword_1007A05E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v29 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RDTimelineEngineReminder(0);
  v10 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v27 = *(v14 + 72);
  v19 = (v7 + 56);
  v20 = _swiftEmptyArrayStorage;
  v25 = v7;
  v26 = v6;
  do
  {
    sub_1002C403C(v18, v16, type metadata accessor for RDTimelineEngineReminder);
    sub_1002C3FB4(v16, v12, type metadata accessor for RDTimelineEngineReminder);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1002C3FB4(v12, v5, type metadata accessor for RDTimelineEngineLocationReminder);
      (*v19)(v5, 0, 1, v6);
    }

    else
    {
      (*v19)(v5, 1, 1, v6);
      sub_1002C40D8(v12, type metadata accessor for RDTimelineEngineReminder);
    }

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000050A4(v5, &qword_100940C30, &qword_1007A05E0);
    }

    else
    {
      sub_1002C3FB4(v5, v29, type metadata accessor for RDTimelineEngineLocationReminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100367958(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_100367958(v21 > 1, v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      sub_1002C3FB4(v29, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for RDTimelineEngineLocationReminder);
      v6 = v26;
    }

    v18 += v27;
    --v17;
  }

  while (v17);
  return v20;
}

uint64_t sub_1002C3F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100940AC8, &qword_1007A0510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C3FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C403C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C40D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1002C4140(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    v10 = a3[7];
    a1[a3[6]] = a2[a3[6]];
    v11 = type metadata accessor for DateComponents();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    *&a1[a3[8]] = *&a2[a3[8]];
  }

  return a1;
}

uint64_t sub_1002C4294(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[5];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[7];
  v8 = type metadata accessor for DateComponents();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *(a1 + a2[8]);
}

uint64_t sub_1002C4388(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1002C4490(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v9 = a3[7];
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  return a1;
}

uint64_t sub_1002C45A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1002C46AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  return a1;
}

uint64_t sub_1002C47E0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for DateComponents();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1002C48F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
    v9 = *(a3 + 24);
    v10 = *(a2 + v9);
    *(a1 + v9) = v10;
    v11 = v10;
  }

  return a1;
}

void sub_1002C49E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + *(a2 + 20), v4);
  v6 = *(a1 + *(a2 + 24));
}

uint64_t sub_1002C4A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = *(a2 + v8);
  *(a1 + v8) = v9;
  v10 = v9;
  return a1;
}

uint64_t sub_1002C4B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = *(a2 + v8);
  v10 = *(a1 + v8);
  *(a1 + v8) = v9;
  v11 = v9;

  return a1;
}

uint64_t sub_1002C4BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1002C4C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  return a1;
}

uint64_t sub_1002C4D58()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1002C4DF4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for RDTimelineEngineLocationReminder(0);
      v8(&a1[*(v9 + 20)], &a2[*(v9 + 20)], v7);
      v10 = *(v9 + 24);
      v11 = *&a2[v10];
      *&a1[v10] = v11;
      v12 = v11;
    }

    else
    {
      v14 = type metadata accessor for RDTimelineEngineDueReminder(0);
      v15 = v14[5];
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
      a1[v14[6]] = a2[v14[6]];
      v17 = v14[7];
      v18 = type metadata accessor for DateComponents();
      (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
      *&a1[v14[8]] = *&a2[v14[8]];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1002C4FDC(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);
  v4(a1, v3);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v4(a1 + *(v5 + 20), v3);
    v6 = *(a1 + *(v5 + 24));
  }

  else
  {
    v7 = type metadata accessor for RDTimelineEngineDueReminder(0);
    v8 = v7[5];
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(a1 + v8, v9);
    v10 = v7[7];
    v11 = type metadata accessor for DateComponents();
    (*(*(v11 - 8) + 8))(a1 + v10, v11);
    v12 = *(a1 + v7[8]);
  }
}

uint64_t sub_1002C5144(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);
  v6(a1, a2, v5);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v5);
    v8 = *(v7 + 24);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  else
  {
    v11 = type metadata accessor for RDTimelineEngineDueReminder(0);
    v12 = v11[5];
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
    *(a1 + v11[6]) = *(a2 + v11[6]);
    v14 = v11[7];
    v15 = type metadata accessor for DateComponents();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    *(a1 + v11[8]) = *(a2 + v11[8]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1002C52D8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1002C40D8(a1, type metadata accessor for RDTimelineEngineReminder);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for UUID();
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for RDTimelineEngineLocationReminder(0);
      v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v5);
      v8 = *(v7 + 24);
      v9 = *(a2 + v8);
      *(a1 + v8) = v9;
      v10 = v9;
    }

    else
    {
      v11 = type metadata accessor for RDTimelineEngineDueReminder(0);
      v12 = v11[5];
      v13 = type metadata accessor for Date();
      (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      *(a1 + v11[6]) = *(a2 + v11[6]);
      v14 = v11[7];
      v15 = type metadata accessor for DateComponents();
      (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
      *(a1 + v11[8]) = *(a2 + v11[8]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1002C5490(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 32);
  v6(a1, a2, v5);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v5);
    *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));
  }

  else
  {
    v8 = type metadata accessor for RDTimelineEngineDueReminder(0);
    v9 = v8[5];
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    *(a1 + v8[6]) = *(a2 + v8[6]);
    v11 = v8[7];
    v12 = type metadata accessor for DateComponents();
    (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
    *(a1 + v8[8]) = *(a2 + v8[8]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1002C561C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1002C40D8(a1, type metadata accessor for RDTimelineEngineReminder);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for UUID();
    v6 = *(*(v5 - 8) + 32);
    v6(a1, a2, v5);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for RDTimelineEngineLocationReminder(0);
      v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v5);
      *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));
    }

    else
    {
      v8 = type metadata accessor for RDTimelineEngineDueReminder(0);
      v9 = v8[5];
      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
      *(a1 + v8[6]) = *(a2 + v8[6]);
      v11 = v8[7];
      v12 = type metadata accessor for DateComponents();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      *(a1 + v8[8]) = *(a2 + v8[8]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1002C57CC()
{
  result = type metadata accessor for RDTimelineEngineDueReminder(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for RDTimelineEngineLocationReminder(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for RDGroceryCorrectionCache()
{
  result = qword_100940E90;
  if (!qword_100940E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C592C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940E70);
  v1 = sub_100006654(v0, qword_100940E70);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002C59F4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  __chkstk_darwin(v0);
  v19 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v12 = type metadata accessor for RDGroceryCorrectionCache();
  v22 = v12;
  sub_1000F5104(&qword_100940EF8, &qword_1007A0890);
  v13 = String.init<A>(reflecting:)();
  v18[0] = v14;
  v18[1] = v13;
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = *(v12 + 48);
  v16 = *(v12 + 52);
  *(swift_allocObject() + qword_100940E88) = _swiftEmptySetSingleton;
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_100974D28 = result;
  return result;
}

uint64_t sub_1002C5D34()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  *(swift_allocObject() + qword_100940E88) = _swiftEmptySetSingleton;
  return REMCache.init(cacheQueue:countLimit:)();
}

uint64_t sub_1002C5D94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  if (REMCacheContext.object(forKey:)())
  {
    REMStructWrapper.value.getter();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[5] = a10;
    v30[0] = a5;
    v30[1] = a6;
    v30[2] = a7;
    v30[3] = a8;
    v30[4] = a9;
    sub_1002C8DA8(v30, a3, a4, isUniquelyReferenced_nonNull_native);

    v20 = sub_1000F5104(&qword_100940EF0, &qword_1007A0888);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    REMStructWrapper.init(_:)();
    REMCacheContext.setObject(_:forKey:)();
  }

  else
  {
    sub_1000F5104(&qword_100940EE0, &qword_1007A0878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a5;
    *(inited + 56) = a6;
    *(inited + 64) = a7;
    *(inited + 72) = a8;
    *(inited + 80) = a9;
    *(inited + 88) = a10;

    v24 = sub_10038FAC0(inited);
    swift_setDeallocating();
    sub_1002CB8D8(inited + 32);
    v30[6] = v24;
    v25 = sub_1000F5104(&qword_100940EF0, &qword_1007A0888);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    REMStructWrapper.init(_:)();
    REMCacheContext.setObject(_:forKey:)();

    swift_beginAccess();
    sub_100378D70(&v31, a2);
    swift_endAccess();
  }

  return a12(a1);
}

uint64_t sub_1002C600C()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyDictionarySingleton;
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = v1;

  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();
}

void sub_1002C60F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v99 = a3;
  v96 = type metadata accessor for REMAnalyticsEvent();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v96);
  v95 = (v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_100940E88;
  swift_beginAccess();
  v82 = a2;
  v81 = v9;
  v10 = *(a2 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *(a2 + v9);
    }

    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10018BA8C();
    Set.Iterator.init(_cocoa:)();
    v10 = v110;
    v13 = v111;
    v14 = v112;
    v15 = v113;
    v16 = v114;
  }

  else
  {
    v17 = -1 << *(v10 + 32);
    v13 = v10 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v10 + 56);

    v15 = 0;
  }

  v80[1] = v14;
  v20 = (v14 + 64) >> 6;
  v94 = enum case for REMAnalyticsEvent.groceryCorrection(_:);
  v93 = (v6 + 104);
  v92 = (v6 + 8);
  *&v12 = 136446722;
  v83 = v12;
  v88 = a1;
  v87 = v10;
  v86 = v13;
  v85 = v20;
  while (1)
  {
    if (v10 < 0)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_55;
      }

      v107 = v28;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v27 = v108;
      v91 = v15;
      v21 = v16;
      if (!v108)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v22 = v15;
      v23 = v16;
      v24 = v15;
      if (!v16)
      {
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_57;
          }

          if (v24 >= v20)
          {
            break;
          }

          v23 = *(v13 + 8 * v24);
          ++v22;
          if (v23)
          {
            goto LABEL_17;
          }
        }

LABEL_55:
        sub_10001B860();
        REMCacheContext.clearAll()();
        v79 = *(v82 + v81);
        *(v82 + v81) = _swiftEmptySetSingleton;

        return;
      }

LABEL_17:
      v25 = __clz(__rbit64(v23));
      v21 = (v23 - 1) & v23;
      v26 = *(v10 + 48);
      v91 = v24;
      v27 = *(v26 + ((v24 << 9) | (8 * v25)));
      if (!v27)
      {
        goto LABEL_55;
      }
    }

    v90 = v27;
    if (REMCacheContext.object(forKey:)())
    {
      break;
    }

LABEL_11:

    v15 = v91;
    v16 = v21;
  }

  v89 = v21;
  REMStructWrapper.value.getter();

  v29 = 0;
  v31 = v108 + 64;
  v30 = *(v108 + 64);
  v100 = v108;
  v32 = 1 << *(v108 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v98 = v108 + 64;
  v97 = v35;
  while (v34)
  {
LABEL_31:
    v40 = (*(v100 + 56) + 48 * (__clz(__rbit64(v34)) | (v29 << 6)));
    v41 = v40[1];
    v101 = *v40;
    v42 = v40[3];
    v105 = v40[2];
    v44 = v40[4];
    v43 = v40[5];
    v45 = v99;
    swift_beginAccess();
    v46 = *(v45 + 16);
    v47 = *(v46 + 16);

    v106 = v41;
    v103 = v44;
    v104 = v42;
    v102 = v43;
    if (v47)
    {

      v48 = sub_100005F4C(v44, v43);
      v50 = v49;

      if (v50)
      {
        v51 = *(*(v46 + 56) + 8 * v48);
        v52 = swift_endAccess();
        v53 = v101;
        v54 = v106;
        v108 = v101;
        v109 = v106;
        __chkstk_darwin(v52);
        v80[-2] = &v108;

        v55 = sub_100040A74(sub_1002CB9B8, &v80[-4], v51);
        v56 = v53;
        v57 = v105;
        if (v55 & 1) != 0 || (v56 == 0x6C6E6F6974636573 ? (v58 = v54 == 0xEB00000000737365) : (v58 = 0), v58 || (v59 = _stringCompareWithSmolCheck(_:_:expecting:)(), v60 = 0x65746365746F7270, v56 = v101, v61 = 0xE900000000000064, (v59)))
        {

          v60 = v56;
          v61 = v54;
        }

        v101 = v61;
        v62 = v104;
        v108 = v57;
        v109 = v104;
        __chkstk_darwin(v59);
        v80[-2] = &v108;
        v63 = sub_100040A74(sub_1002CB9B8, &v80[-4], v51);

        if (v63)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }
    }

    else
    {
    }

    swift_endAccess();
    v64 = sub_10025655C(v44, v43, 0, 1);
    v65 = v105;
    v66 = v64;
    v67 = v44;
    v68 = v99;
    swift_beginAccess();

    v69 = *(v68 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(v68 + 16);
    *(v68 + 16) = 0x8000000000000000;
    sub_1002CACC4(v66, v67, v43, isUniquelyReferenced_nonNull_native, sub_10037443C, sub_10036C5F8);

    *(v68 + 16) = v107;
    v71 = swift_endAccess();
    v72 = v101;
    v108 = v101;
    v109 = v106;
    __chkstk_darwin(v71);
    v80[-2] = &v108;
    if (sub_100040A74(sub_100040B20, &v80[-4], v66) & 1) != 0 || v72 == 0x6C6E6F6974636573 && v106 == 0xEB00000000737365 || (v73 = _stringCompareWithSmolCheck(_:_:expecting:)(), v60 = 0x65746365746F7270, v72 = v101, v74 = 0xE900000000000064, (v73))
    {

      v60 = v72;
      v74 = v73;
    }

    v101 = v74;
    v62 = v104;
    v108 = v65;
    v109 = v104;
    __chkstk_darwin(v73);
    v80[-2] = &v108;
    v75 = sub_100040A74(sub_1002CB9B8, &v80[-4], v66);

    if (v75)
    {
LABEL_52:

      v76 = v62;
      v77 = v105;
      goto LABEL_53;
    }

LABEL_49:
    if (v105 == 0x6C6E6F6974636573 && v62 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_52;
    }

    v77 = 0x65746365746F7270;
    v76 = 0xE900000000000064;
LABEL_53:
    v78 = v101;
    v34 &= v34 - 1;
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();

    v36 = v95;
    *v95 = v60;
    v36[1] = v78;
    v36[2] = v77;
    v36[3] = v76;
    v37 = v102;
    v36[4] = v103;
    v36[5] = v37;
    v38 = v96;
    (*v93)(v36, v94, v96);
    REMAnalyticsManager.post(event:)();

    (*v92)(v36, v38);
    v31 = v98;
    v35 = v97;
  }

  while (1)
  {
    v39 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v39 >= v35)
    {

      v10 = v87;
      v13 = v86;
      v20 = v85;
      v21 = v89;
      goto LABEL_11;
    }

    v34 = *(v31 + 8 * v39);
    ++v29;
    if (v34)
    {
      v29 = v39;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_1002C6D0C()
{
  v0 = *(REMCache.deinit() + qword_100940E88);

  return swift_deallocClassInstance();
}

unint64_t sub_1002C6D64(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100369CB8(v16, a4 & 1);
      v20 = *v5;
      result = sub_100005F4C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100372EDC();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_1002C6EC8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100005F4C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_100369F58(v16, a3 & 1);
      v20 = *v5;
      result = sub_100005F4C(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100373044();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1002C70A8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_100363F20(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v27 = *v6;
    v28 = sub_100363F20(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_1002CB740(v17, v14, a1, v23, &type metadata accessor for UUID);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_1002C72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100005F4C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10036A8F0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100005F4C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100373664();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

id sub_1002C7480(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_1003737DC();
      goto LABEL_7;
    }

    sub_10036ABB0(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_10002B924(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = type metadata accessor for REMManualOrdering.PinnedList();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_1002CB24C(v9, a2, a1, v15);

  return a2;
}

id sub_1002C762C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100364044(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036AED0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100364044(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for REMObjectID_Codable();
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_10037399C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1002C7818(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_10002B924(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v21 = *v8;
      v12 = sub_10002B924(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

id sub_1002C79B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036BAEC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100373F88();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1002C7B54(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1003643A8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036C318(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1003643A8(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_100374270();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

id sub_1002C7CD0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1003643F8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036C32C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1003643F8(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100374284();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

_OWORD *sub_1002C7E48(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10001B0D8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100374298();
      goto LABEL_7;
    }

    sub_10036C340(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10001B0D8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10001B270(a2, v22);
      return sub_1002CB33C(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000607C(v17);

  return sub_100005EE0(a1, v17);
}

uint64_t sub_1002C7FC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1003733B8();
    goto LABEL_7;
  }

  sub_10036A508(result, a3 & 1);
  v22 = *v4;
  result = sub_100363F20(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1002CB194(v15, v12, a1, v21);
}

uint64_t sub_1002C81B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100363F20(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1003744A0();
      goto LABEL_9;
    }

    sub_10036C648(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_100363F20(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_1002CB3B8(v14, v11, a1, v23);
  }
}

id sub_1002C8398(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036CA94(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100374768();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1002C8510(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036CABC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100374790();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1002C870C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_100363F20(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v27 = *v6;
    v28 = sub_100363F20(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_1002CB194(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

_OWORD *sub_1002C88F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100374FD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10036D7E8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100005F4C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000607C(v23);

    return sub_100005EE0(a1, v23);
  }

  else
  {
    sub_1002CB494(v11, a2, a3, a1, v22);
  }
}

id sub_1002C8A40(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036DD80(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100375334();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1002C8BE4(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_10002B924(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v21 = *v8;
      v12 = sub_10002B924(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

uint64_t sub_1002C8DA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = *a1;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v4;
  v14 = sub_100005F4C(a2, a3);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      v22 = v14;
      sub_10037555C();
      v14 = v22;
      goto LABEL_8;
    }

    sub_10036E0C4(v19, a4 & 1);
    v23 = *v5;
    v14 = sub_100005F4C(a2, a3);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v5;
  if (v20)
  {
    v26 = v25[7] + 48 * v14;
    v27 = *(v26 + 8);
    v28 = *(v26 + 24);
    v29 = *(v26 + 40);
    *v26 = v31;
    *(v26 + 16) = v10;
    *(v26 + 24) = v9;
    *(v26 + 32) = v12;
    *(v26 + 40) = v11;
  }

  else
  {
    v32 = v31;
    v33 = v10;
    v34 = v9;
    v35 = v12;
    v36 = v11;
    sub_1002CB500(v14, a2, a3, &v32, v25);
  }
}

uint64_t sub_1002C8FF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100375A1C();
      goto LABEL_7;
    }

    sub_10036ED70(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_100005F4C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1002CB55C(v12, a2, a3, a1, v18);
}

id sub_1002C9178(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100363FF4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036F11C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100363FF4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100375CCC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1002C92F0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100375CE0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10036F130(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100005F4C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_10000607C(v23);

    return sub_100054B6C(a1, v23);
  }

  else
  {
    sub_1002CB60C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1002C9444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10036F7DC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100005F4C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v11, v24);
      }
    }

    else
    {
      v19 = v11;
      sub_100376114();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1(v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_1002C9628(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  result = sub_10002B924(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v21 = *v8;
      result = sub_10002B924(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      a4();
      result = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    *(v23[7] + 8 * result) = a1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = a2;
  *(v23[7] + 8 * result) = a1;
  v24 = v23[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v25;

  return a2;
}

uint64_t sub_1002C97D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1003647E8(a2);
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
      sub_1003765A4();
      goto LABEL_7;
    }

    sub_10036FFE8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1003647E8(a2);
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
      return sub_1002CB740(v15, v12, a1, v21, &type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType);
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

unint64_t sub_1002C99E0(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1003648BC(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a1 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a1 & 1) == 0)
  {
    v17 = result;
    sub_10037672C();
    result = v17;
    goto LABEL_8;
  }

  sub_10037063C(v14, a1 & 1);
  v18 = *v4;
  result = sub_1003648BC(a3);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a2;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a3;
    *(v20[7] + 8 * result) = a2;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002C9B44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t))
{
  v10 = v7;
  v15 = *v7;
  v16 = sub_100005F4C(a2, a3);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 < v21 || (a4 & 1) != 0)
    {
      a6(v21, a4 & 1);
      v25 = *v10;
      v16 = sub_100005F4C(a2, a3);
      if ((v22 & 1) != (v26 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = v16;
      a5();
      v16 = v24;
    }
  }

  v27 = *v10;
  if (v22)
  {
    v28 = v27[7];
    v29 = *(v28 + 8 * v16);
    *(v28 + 8 * v16) = a1;

    return a7(v29);
  }

  v27[(v16 >> 6) + 8] |= 1 << v16;
  v31 = (v27[6] + 16 * v16);
  *v31 = a2;
  v31[1] = a3;
  *(v27[7] + 8 * v16) = a1;
  v32 = v27[2];
  v20 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

id sub_1002C9CF4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100370B54(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100376A10();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1002C9E6C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100370B68(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100376A24();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

void sub_1002C9FE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
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
      sub_100376A38();
      goto LABEL_7;
    }

    sub_100370B7C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_100363F20(a2);
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
      sub_1002CB194(v15, v12, a1, v21);
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

uint64_t sub_1002CA1DC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
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
      sub_100376A4C();
      goto LABEL_7;
    }

    sub_100370BA4(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_100363F20(a2);
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
      return sub_1002CB67C(v15, v12, a1, v21);
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
  v22 = (v21[7] + 40 * v15);
  sub_10000607C(v22);

  return sub_100054B6C(a1, v22);
}

uint64_t sub_1002CA3B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
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
      sub_100376CD4();
      goto LABEL_7;
    }

    sub_100370F88(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100363F20(a2);
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
      return sub_1002CB194(v15, v12, a1, v21);
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

  return swift_unknownObjectRelease();
}

uint64_t sub_1002CA5DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
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
      sub_100377220();
      goto LABEL_7;
    }

    sub_100371768(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100363F20(a2);
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
      return sub_1002CB7FC(v15, v12, a1, v21);
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
  v23 = v22 + *(*(type metadata accessor for RDSavedReminder() - 8) + 72) * v15;

  return sub_1002CB94C(a1, v23);
}

uint64_t sub_1002CA7F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100364908(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100371EBC(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_100364908(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for RDManualSortIDPersistenceHost();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_100377704();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

id sub_1002CA950(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1003721AC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100377868();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1002CAAF4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100364538(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1003721D4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100364538(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_100377890();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1002CACC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100005F4C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_100005F4C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1002CAE88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100005F4C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_100005F4C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

id sub_1002CB01C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100363FF4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100372B8C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100363FF4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100377FC8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1002CB194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_1002CB24C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for REMManualOrdering.PinnedList();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1002CB2F8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1002CB33C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100005EE0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1002CB3B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_1002CB494(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005EE0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1002CB500(unint64_t result, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 4);
  v8 = *(a4 + 5);
  a5[(result >> 6) + 8] |= 1 << result;
  v9 = (a5[6] + 16 * result);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7] + 48 * result;
  *v10 = v5;
  *(v10 + 16) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

uint64_t sub_1002CB55C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1002CB60C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100054B6C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1002CB67C(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100054B6C(a3, a4[7] + 40 * a1);
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

uint64_t sub_1002CB740(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1002CB7FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RDSavedReminder();
  result = sub_10013FE70(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1002CB8D8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940EE8, &qword_1007A0880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CB94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002CB9D4()
{
  v1 = sub_10029B198(1, 0xA0u);
  v2 = sub_10040582C(0, 0, 0, v1);
  [v2 setFetchLimit:1];
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result.init(hasLocationAlarms:)();
  }
}

uint64_t sub_1002CBA90(uint64_t a1)
{
  result = sub_1002CBC5C(&qword_100940F20, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1002CBAE8()
{
  v1 = _s10PredicatesOMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v5 = sub_100043AA8();
  sub_1000513B4(v4);
  v6 = sub_100050654(0, 0, 0, v5);
  [v6 setFetchLimit:1];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result.init(hasRemindersWithDueDate:)();
  }
}

uint64_t sub_1002CBC04(uint64_t a1)
{
  result = sub_1002CBC5C(&qword_100940F48, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002CBC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002CBCA4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940F50, &qword_1007A0930);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = *(a1 + 16);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v8 = *(updated - 8);
  v9 = v8;
  if (v6)
  {
    sub_1002CDE74(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5);
    (*(v9 + 56))(v5, 0, 1, updated);
  }

  else
  {
    (*(v8 + 56))(v5, 1, 1, updated);
  }

  Optional.tryUnwrap(_:file:line:)();
  return sub_1002CE63C(v5);
}

void sub_1002CBE1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v87 = a1;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 1);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v10 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = v72 - v14;
  __chkstk_darwin(v15);
  v17 = v72 - v16;
  __chkstk_darwin(v18);
  v20 = v72 - v19;
  if (a2 >> 62)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v83 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v83;
  }

  v80 = v9;
  v81 = v6;
  v82 = v12;
  v85 = v21;
  if (v21)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v22 = *(a2 + 32);
    }

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v88 = v23;
  sub_1000F5104(&unk_100943E10, &qword_1007A0928);
  Optional.tryUnwrap(_:file:line:)();
  if (v2)
  {

    return;
  }

  v78 = v5;

  v79 = v90;
  v24 = [v90 title];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v88 = v26;
  v89 = v28;
  v29 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  Optional.tryUnwrap(_:file:line:)();
  v77 = v29;

  v31 = v90;
  v30 = v91;
  v32 = v87;
  sub_1002CBCA4(v87);
  v75 = v31;
  v76 = v30;
  sub_1002CDA5C(v20);
  v3 = 0;
  v34 = v33;
  sub_1002CDED8(v20);
  if (v34)
  {
    v35 = [v34 shortName];

    if (v35)
    {
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v32 = v87;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  sub_1002CBCA4(v32);
  v73 = v36;
  v74 = v38;
  v39 = [*&v17[*(updated + 28)] list];
  v92 = v39;
  v40 = sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();
  v72[0] = "tle from reminder";
  v72[1] = v40;

  v41 = v88;
  sub_1002CDED8(v17);
  v42 = [v41 name];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = v73;
  v88 = v43;
  v89 = v45;
  Optional.tryUnwrap(_:file:line:)();
  v12 = v46;

  v5 = v90;
  v17 = v91;
  v9 = v84;
  sub_1002CBCA4(v87);
  v6 = [*&v9[*(updated + 28)] list];
  v88 = v6;
  Optional.tryUnwrap(_:file:line:)();
LABEL_27:

  v47 = v90;
  sub_1002CDED8(v9);
  v48 = [v47 shouldCategorizeGroceryItems];

  v49 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_1002CE198(v12, v74, v75, v76, v83, v5, v17, v48);
  if (v3)
  {
  }

  else
  {
    v73 = v5;
    v75 = v17;

    v50 = String._bridgeToObjectiveC()();

    [v49 setBody:v50];

    v52 = 0;
    v77 = _swiftEmptyArrayStorage;
    v90 = _swiftEmptyArrayStorage;
    v84 = (a2 & 0xC000000000000001);
    while (v85 != v52)
    {
      if (v84)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v53 = *(a2 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v56 = [v53 remObjectID];

      ++v52;
      if (v56)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v77 = v90;
        v52 = v55;
      }
    }

    v51.value._rawValue = v77;
    UNMutableNotificationContent.setReminderIDs(_:)(v51);

    sub_1002CBCA4(v87);
    v57 = [*&v82[*(updated + 28)] list];
    v88 = v57;
    Optional.tryUnwrap(_:file:line:)();

    v58 = v90;
    sub_1002CDED8(v82);
    v59 = [v58 remObjectID];

    UNMutableNotificationContent.setListID(_:)();
    v61 = v80;
    v60 = v81;
    v62 = &enum case for RDUserNotificationCategory.sharedListSingleReminderAddedNotification(_:);
    if (v83 != 1)
    {
      v62 = &enum case for RDUserNotificationCategory.sharedListMultipleRemindersAddedNotification(_:);
    }

    v63 = v78;
    (v81[13])(v80, *v62, v78);
    v64 = RDUserNotificationCategory.rawValue.getter();
    v66 = v65;
    (v60[1])(v61, v63);
    v67 = String._bridgeToObjectiveC()();
    [v49 setCategoryIdentifier:v67];

    v90 = v64;
    v91 = v66;

    v68._countAndFlagsBits = 45;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);

    v69._countAndFlagsBits = v73;
    v69._object = v75;
    String.append(_:)(v69);

    v70 = String._bridgeToObjectiveC()();

    [v49 setThreadIdentifier:v70];

    v71 = [objc_opt_self() soundWithAlertType:11];
    [v49 setSound:v71];
  }
}

Swift::Int sub_1002CC8F4(void **a1)
{
  v2 = *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100436478(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002CC99C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1002CC99C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002CCCE4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1002CCAC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002CCAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v8 = *(updated - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(updated);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    type metadata accessor for Date();
    v20 = *(v8 + 72);
    v21 = v19 + v20 * (a3 - 1);
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
    v25 = v23;
    v26 = v21;
    while (1)
    {
      sub_1002CDE74(v24, v18);
      sub_1002CDE74(v26, v15);
      sub_1002CDF34();
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1002CDED8(v15);
      result = sub_1002CDED8(v18);
      if ((v27 & 1) == 0)
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

      sub_1002CDF8C(v24, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1002CDF8C(v12, v26);
      v26 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002CCCE4(int64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v99 = a1;
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v108 = *(updated - 8);
  v7 = *(v108 + 64);
  v8 = __chkstk_darwin(updated);
  v102 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v111 = &v97 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v97 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v97 - v16;
  v110 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v4 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    a4 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v100;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1004361F4(a4);
    }

    v113 = result;
    v92 = *(result + 16);
    if (v92 >= 2)
    {
      while (*v110)
      {
        a4 = v92 - 1;
        v93 = *(result + 16 * v92);
        v94 = result;
        v95 = *(result + 16 * (v92 - 1) + 40);
        sub_1002CD568(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *(result + 16 * (v92 - 1) + 32), *v110 + *(v108 + 72) * v95, v4);
        if (v29)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1004361F4(v94);
        }

        if (v92 - 2 >= *(v94 + 2))
        {
          goto LABEL_123;
        }

        v96 = &v94[16 * v92];
        *v96 = v93;
        *(v96 + 1) = v95;
        v113 = v94;
        sub_100436168(a4);
        result = v113;
        v92 = *(v113 + 16);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v98 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v103 = v20;
    if (v22 >= v18)
    {
      v28 = v22;
      v29 = v100;
    }

    else
    {
      v23 = *v110;
      v106 = v23;
      v24 = *(v108 + 72);
      v4 = v23 + v24 * v22;
      sub_1002CDE74(v4, v17);
      sub_1002CDE74(v23 + v24 * v21, v14);
      type metadata accessor for Date();
      sub_1002CDF34();
      LODWORD(v107) = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1002CDED8(v14);
      result = sub_1002CDED8(v17);
      v97 = v21;
      v25 = v21 + 2;
      v109 = v24;
      v26 = v106 + v24 * (v21 + 2);
      while (v18 != v25)
      {
        sub_1002CDE74(v26, v17);
        sub_1002CDE74(v4, v14);
        v27 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        sub_1002CDED8(v14);
        result = sub_1002CDED8(v17);
        ++v25;
        v26 += v109;
        v4 += v109;
        if ((v107 & 1) != v27)
        {
          v28 = v25 - 1;
          goto LABEL_11;
        }
      }

      v28 = v18;
LABEL_11:
      v21 = v97;
      a4 = v98;
      v29 = v100;
      if (v107)
      {
        if (v28 < v97)
        {
          goto LABEL_126;
        }

        if (v97 < v28)
        {
          v30 = v109 * (v28 - 1);
          v4 = v28 * v109;
          v107 = v28;
          v31 = v97;
          v32 = v97 * v109;
          do
          {
            if (v31 != --v28)
            {
              v33 = *v110;
              if (!*v110)
              {
                goto LABEL_132;
              }

              sub_1002CDF8C(v33 + v32, v102);
              if (v32 < v30 || v33 + v32 >= (v33 + v4))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v32 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1002CDF8C(v102, v33 + v30);
            }

            ++v31;
            v30 -= v109;
            v4 -= v109;
            v32 += v109;
          }

          while (v31 < v28);
          v29 = v100;
          v21 = v97;
          a4 = v98;
          v28 = v107;
        }
      }
    }

    v34 = v110[1];
    if (v28 < v34)
    {
      if (__OFSUB__(v28, v21))
      {
        goto LABEL_125;
      }

      if (v28 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v34)
        {
          v4 = v110[1];
        }

        else
        {
          v4 = v21 + a4;
        }

        if (v4 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v28 != v4)
        {
          break;
        }
      }
    }

    v4 = v28;
    if (v28 < v21)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v103;
    }

    else
    {
      result = sub_1003658B8(0, *(v103 + 2) + 1, 1, v103);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v35 = *(v20 + 3);
    v36 = a4 + 1;
    if (a4 >= v35 >> 1)
    {
      result = sub_1003658B8((v35 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v36;
    v37 = &v20[16 * a4];
    *(v37 + 4) = v21;
    *(v37 + 5) = v4;
    v38 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    v104 = v4;
    if (a4)
    {
      while (1)
      {
        v4 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v20 + 4);
          v40 = *(v20 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_54:
          if (v42)
          {
            goto LABEL_113;
          }

          v55 = &v20[16 * v36];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_116;
          }

          v61 = &v20[16 * v4 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_120;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v4 = v36 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v65 = &v20[16 * v36];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_68:
        if (v60)
        {
          goto LABEL_115;
        }

        v68 = &v20[16 * v4];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_118;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v4 - 1;
        if (v4 - 1 >= v36)
        {
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
          goto LABEL_128;
        }

        if (!*v110)
        {
          goto LABEL_131;
        }

        v76 = v20;
        v77 = *&v20[16 * a4 + 32];
        v78 = *&v20[16 * v4 + 40];
        sub_1002CD568(*v110 + *(v108 + 72) * v77, *v110 + *(v108 + 72) * *&v20[16 * v4 + 32], *v110 + *(v108 + 72) * v78, v38);
        if (v29)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1004361F4(v76);
        }

        if (a4 >= *(v76 + 2))
        {
          goto LABEL_110;
        }

        v79 = &v76[16 * a4];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        v113 = v76;
        result = sub_100436168(v4);
        v20 = v113;
        v36 = *(v113 + 16);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v20[16 * v36 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_111;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_112;
      }

      v50 = &v20[16 * v36];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_114;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_117;
      }

      if (v54 >= v46)
      {
        v72 = &v20[16 * v4 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_121;
        }

        if (v41 < v75)
        {
          v4 = v36 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v100 = v29;
    v18 = v110[1];
    v19 = v104;
    a4 = v98;
    if (v104 >= v18)
    {
      goto LABEL_96;
    }
  }

  v100 = v29;
  v80 = v21;
  v81 = *v110;
  type metadata accessor for Date();
  v82 = *(v108 + 72);
  v83 = v81 + v82 * (v28 - 1);
  v84 = -v82;
  v97 = v80;
  v85 = v80 - v28;
  v101 = v82;
  a4 = v81 + v28 * v82;
  v104 = v4;
LABEL_86:
  v106 = v85;
  v107 = v28;
  v105 = a4;
  v86 = v85;
  v109 = v83;
  v87 = v83;
  while (1)
  {
    sub_1002CDE74(a4, v17);
    sub_1002CDE74(v87, v14);
    sub_1002CDF34();
    v88 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_1002CDED8(v14);
    result = sub_1002CDED8(v17);
    if ((v88 & 1) == 0)
    {
LABEL_85:
      v28 = v107 + 1;
      v83 = v109 + v101;
      v85 = v106 - 1;
      v4 = v104;
      a4 = v105 + v101;
      if (v107 + 1 != v104)
      {
        goto LABEL_86;
      }

      v29 = v100;
      v21 = v97;
      if (v104 < v97)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v81)
    {
      break;
    }

    v89 = v111;
    sub_1002CDF8C(a4, v111);
    swift_arrayInitWithTakeFrontToBack();
    sub_1002CDF8C(v89, v87);
    v87 += v84;
    a4 += v84;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1002CD568(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v9 = *(*(updated - 8) + 64);
  v10 = __chkstk_darwin(updated);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v51 = &v44 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v17 = (a2 - a1) / v15;
  v55 = a1;
  v54 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v31 = v29;
      v47 = updated;
      v48 = a4;
      v46 = v30;
      do
      {
        v45 = v29;
        v32 = a2;
        v33 = a2 + v30;
        v50 = a2;
        while (1)
        {
          if (v32 <= a1)
          {
            v55 = v32;
            v53 = v45;
            goto LABEL_60;
          }

          v35 = a3;
          v49 = v29;
          v36 = a3 + v30;
          v37 = v31 + v30;
          v38 = v51;
          sub_1002CDE74(v37, v51);
          v39 = v33;
          v40 = v33;
          v41 = v52;
          sub_1002CDE74(v40, v52);
          type metadata accessor for Date();
          sub_1002CDF34();
          v42 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_1002CDED8(v41);
          sub_1002CDED8(v38);
          if (v42)
          {
            break;
          }

          v29 = v37;
          a3 = v36;
          if (v35 < v31 || v36 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v39;
          }

          else
          {
            v33 = v39;
            if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v34 = v37 > v48;
          v30 = v46;
          v32 = v50;
          if (!v34)
          {
            a2 = v50;
            goto LABEL_59;
          }
        }

        a3 = v36;
        if (v35 < v50 || v36 >= v50)
        {
          a2 = v39;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v46;
        }

        else
        {
          v43 = v35 == v50;
          v30 = v46;
          a2 = v39;
          if (!v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v49;
      }

      while (v31 > v48);
    }

LABEL_59:
    v55 = a2;
    v53 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v18;
    v53 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v49 = a3;
      do
      {
        v21 = updated;
        v22 = v15;
        v23 = v51;
        sub_1002CDE74(a2, v51);
        v24 = v52;
        sub_1002CDE74(a4, v52);
        type metadata accessor for Date();
        sub_1002CDF34();
        v25 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_1002CDED8(v24);
        sub_1002CDED8(v23);
        v15 = v22;
        if (v25)
        {
          v26 = a2 + v22;
          if (a1 < a2 || a1 >= v26)
          {
            updated = v21;
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
            v27 = v49;
          }

          else
          {
            v27 = v49;
            updated = v21;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v26;
          }
        }

        else
        {
          v28 = a4 + v22;
          if (a1 < a4 || a1 >= v28)
          {
            updated = v21;
            swift_arrayInitWithTakeFrontToBack();
            v27 = v49;
          }

          else
          {
            v27 = v49;
            updated = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = v28;
          a4 = v28;
        }

        a1 += v15;
        v55 = a1;
      }

      while (a4 < v50 && a2 < v27);
    }
  }

LABEL_60:
  sub_1005589F8(&v55, &v54, &v53);
  return 1;
}

void sub_1002CDA5C(uint64_t a1)
{
  sub_100337974();
  if (v3)
  {
    v4 = v3;
    sub_100337E80();
    if (v1)
    {
    }

    else
    {
      v6 = v5;
      v7 = [v5 remObjectID];

      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      Optional.tryUnwrap(_:file:line:)();

      v8 = [*(a1 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) list];
      sub_1000F5104(&unk_100943240, &qword_10079A3B8);
      Optional.tryUnwrap(_:file:line:)();

      v9 = [v7 remObjectID];
      Optional.tryUnwrap(_:file:line:)();

      v10 = v12;
      v11 = v12;
      sub_10047B110(v4);
    }
  }
}

void *sub_1002CDCD0(void *a1)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v3 = *(updated - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(updated);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;

  sub_1002CC8F4(&v15);
  v7 = v15;
  v8 = v15[2];
  if (v8)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1002CDE74(v9, v6);
      v11 = *&v6[*(updated + 28)];
      sub_1002CDED8(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v15[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return a1;
}

uint64_t sub_1002CDE74(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1002CDED8(uint64_t a1)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_1002CDF34()
{
  result = qword_1009464D0;
  if (!qword_1009464D0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464D0);
  }

  return result;
}

uint64_t sub_1002CDF8C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t destroy for RDAddedReminderNotificationContent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *sub_1002CE02C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for RDAddedReminderNotificationContent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for RDAddedReminderNotificationContent(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDAddedReminderNotificationContent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDAddedReminderNotificationContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002CE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a5 == 1)
    {

      v14 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100791320;
      *(v15 + 56) = &type metadata for String;
      v16 = sub_100006600();
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      *(v15 + 136) = &type metadata for String;
      *(v15 + 144) = v16;
      *(v15 + 112) = a6;
      *(v15 + 120) = a7;

      v17 = static String.localizedStringWithFormat(_:_:)();

      return v17;
    }

    if (a8)
    {
      if (a5 >= 2)
      {
        goto LABEL_13;
      }
    }

    else if (a5 >= 2)
    {
LABEL_13:

      v24 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100791320;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_100006600();
      *(v25 + 32) = a1;
      *(v25 + 40) = a2;
      *(v25 + 96) = &type metadata for Int;
      *(v25 + 104) = &protocol witness table for Int;
      *(v25 + 64) = v26;
      *(v25 + 72) = a5;
      *(v25 + 136) = &type metadata for String;
      *(v25 + 144) = v26;
      *(v25 + 112) = a6;
      *(v25 + 120) = a7;

      v22 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_16;
    }

LABEL_15:
    v27 = objc_opt_self();
    _StringGuts.grow(_:)(84);
    v28._object = 0x80000001007F3BC0;
    v28._countAndFlagsBits = 0xD000000000000052;
    String.append(_:)(v28);
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = String._bridgeToObjectiveC()();

    [v27 internalErrorWithDebugDescription:v30];

    return swift_willThrow();
  }

  if (a5 == 1)
  {
    v19 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100791340;
    *(v20 + 56) = &type metadata for String;
    v21 = sub_100006600();
    *(v20 + 32) = a3;
    *(v20 + 40) = a4;
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v21;
    *(v20 + 64) = v21;
    *(v20 + 72) = a6;
    *(v20 + 80) = a7;

    v22 = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    if (a8)
    {
      if (a5 < 2)
      {
        goto LABEL_15;
      }
    }

    else if (a5 < 2)
    {
      goto LABEL_15;
    }

    v31 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100791340;
    *(v32 + 56) = &type metadata for Int;
    *(v32 + 64) = &protocol witness table for Int;
    *(v32 + 32) = a5;
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = sub_100006600();
    *(v32 + 72) = a6;
    *(v32 + 80) = a7;

    v22 = static String.localizedStringWithFormat(_:_:)();
  }

LABEL_16:

  return v22;
}

uint64_t sub_1002CE63C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940F50, &qword_1007A0930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CE6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    v7._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v7);

    v5 = 0x7C6C61636F6CLL;
    v6 = 0xE600000000000000;
  }

  v8 = *(a2 + 16);

  if (v8)
  {
    v9 = sub_100005F4C(v5, v6);
    v11 = v10;

    if (v11)
    {
LABEL_6:
      v12 = *(*(a2 + 56) + 8 * v9);
    }

    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!v4)
    {
LABEL_10:
      v15._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v15);

      v3 = 0x7C6C61636F6CLL;
      v14 = 0xE600000000000000;
      goto LABEL_11;
    }
  }

  v14 = v4;
LABEL_11:

  v16._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v16);

  if (v3 == 0x7C6C61636F6CLL && v14 == 0xE600000000000000)
  {

LABEL_14:

    return 0;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 0;
  }

  v18._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v18);

  if (!*(a2 + 16))
  {
    goto LABEL_14;
  }

  v9 = sub_100005F4C(0x7C6C61636F6CLL, 0xE600000000000000);
  v20 = v19;

  if (v20)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1002CE8B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940F58);
  v1 = sub_100006654(v0, qword_100940F58);
  if (qword_1009364B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002CE97C(uint64_t a1, double a2)
{
  *(v2 + 96) = a2;
  *(v2 + 88) = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v6 = *(*(sub_1000F5104(&qword_100940F70, &qword_1007A0978) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v7 = type metadata accessor for SuggestedRemindersAdapterType();
  *(v2 + 136) = v7;
  v8 = *(v7 - 8);
  *(v2 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v10 = type metadata accessor for DispatchTime();
  *(v2 + 160) = v10;
  v11 = *(v10 - 8);
  *(v2 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v13 = type metadata accessor for Prompt();
  *(v2 + 184) = v13;
  v14 = *(v13 - 8);
  *(v2 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v16 = type metadata accessor for REMGenerativeModelsFeature();
  *(v2 + 208) = v16;
  v17 = *(v16 - 8);
  *(v2 + 216) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v19 = type metadata accessor for URL();
  *(v2 + 232) = v19;
  v20 = *(v19 - 8);
  *(v2 + 240) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1002CEC50, 0, 0);
}

Swift::Int sub_1002CEC50()
{
  v112 = v0;
  if (qword_100935E48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 264) = sub_100006654(v1, qword_100940F58);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDReminderExtractor: extractReminderSuggestions() START", v4, 2u);
  }

  v5 = *(v0 + 88);

  v6 = [v5 text];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v0 + 304) = 1415071060;
    *(v0 + 312) = 0xE400000000000000;
    v11 = *(v0 + 264);
    swift_bridgeObjectRetain_n();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v14 = 136446723;
      *(v14 + 4) = sub_10000668C(1415071060, 0xE400000000000000, v111);
      *(v14 + 12) = 2048;
      *(v14 + 14) = String.count.getter();

      *(v14 + 22) = 2081;
      *(v14 + 24) = sub_10000668C(v8, v10, v111);
      _os_log_impl(&_mh_execute_header, v12, v13, "RDReminderExtractor: input type: %{public}s, characterCount: %ld, input: %{private}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = *(v0 + 264);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 96);
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v25, v26, "RDReminderExtractor: Starting recipe classification with required confidence threshold: %f", v28, 0xCu);
    }

    v29 = sub_1006DEB84();
    v105 = v8;
    v106 = v10;
    v31 = v30;
    v32 = v29;
    v34 = v33;
    v36 = v35;
    v37 = *(v0 + 96);

    v107 = v34 & 1;
    v108 = v31 & 1;
    v110 = v36;
    if ((v31 & 1) != 0 && v32 > v37)
    {
      v38 = *(v0 + 216);
      v39 = *(v0 + 224);
      v40 = *(v0 + 200);
      v41 = *(v0 + 208);
      v42 = *(v0 + 192);
      v103 = *(v0 + 184);
      v101 = type metadata accessor for RDExtractIngredientsSession();
      v43 = swift_allocObject();
      (*(v38 + 104))(v39, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v41);
      v102 = v36;
      v44 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
      v46 = v45;
      (*(v38 + 8))(v39, v41);
      v47 = sub_10038E004(_swiftEmptyArrayStorage);
      v48 = type metadata accessor for RDExtractIngredientsSession._ClientInfo();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v51 = 1;
      *(v43 + 16) = sub_1002F5720(v44, v46, 0, 1, v47);
      *(v0 + 40) = v101;
      *(v0 + 48) = &off_1008ED460;
      *(v0 + 16) = v43;
      Prompt.init(_:)();
      v52 = Prompt.overestimatedTokenCount()();

      result = (*(v42 + 8))(v40, v103);
    }

    else
    {
      v54 = *(v0 + 216);
      v53 = *(v0 + 224);
      v55 = *(v0 + 200);
      v56 = *(v0 + 208);
      v57 = *(v0 + 192);
      v104 = *(v0 + 184);
      v58 = type metadata accessor for RDExtractActionItemsSession();
      v59 = swift_allocObject();
      (*(v54 + 104))(v53, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v56);
      v60 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
      v62 = v61;
      (*(v54 + 8))(v53, v56);
      v63 = sub_10038E004(_swiftEmptyArrayStorage);
      v64 = type metadata accessor for RDExtractActionItemsSession._ClientInfo();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      *(v59 + 16) = sub_10054935C(v60, v62, 0, 1, v63);
      *(v0 + 40) = v58;
      *(v0 + 48) = &off_1008F69E8;
      *(v0 + 16) = v59;
      Prompt.init(_:)();
      v52 = Prompt.overestimatedTokenCount()();
      result = (*(v57 + 8))(v55, v104);
      v51 = 0;
    }

    *(v0 + 336) = v107;
    *(v0 + 344) = v110;
    *(v0 + 328) = v32;
    *(v0 + 320) = v108;
    *(v0 + 408) = v51;
    if (__OFSUB__(4096, v52))
    {
      __break(1u);
    }

    else
    {
      result = 3896 - v52;
      if (!__OFSUB__(4096 - v52, 200))
      {
        v67 = *(v0 + 264);
        v68 = sub_1002F2F9C(result, v105, v106);
        v70 = v69;
        v72 = v71;
        v74 = v73;

        *(v0 + 352) = v70;
        *(v0 + 360) = v72;
        *(v0 + 368) = v74;
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "RDReminderExtractor: prewarm extraction session", v77, 2u);
        }

        v78 = *(v0 + 264);

        v79 = *(v0 + 40);
        v80 = *(v0 + 48);
        sub_10000F61C((v0 + 16), v79);
        (*(v80 + 8))(v79, v80);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 67109120;
          *(v83 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v81, v82, "RDReminderExtractor: prewarm finished, start actual extraction, usingIngredientAdapter: %{BOOL}d", v83, 8u);
        }

        v84 = *(v0 + 176);

        static DispatchTime.now()();
        v85 = *(v0 + 40);
        v86 = *(v0 + 48);
        sub_10000F61C((v0 + 16), v85);
        v87 = *(v86 + 16);

        v109 = (v87 + *v87);
        v88 = v87[1];
        v89 = swift_task_alloc();
        *(v0 + 376) = v89;
        *v89 = v0;
        v89[1] = sub_1002D0200;

        return v109(v68, v70, v85, v86);
      }
    }

    __break(1u);
    return result;
  }

  v15 = [*(v0 + 88) url];
  if (v15)
  {
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v18 = *(v0 + 232);
    v19 = *(v0 + 240);
    v20 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v19 + 32))(v17, v16, v18);
    v21 = swift_task_alloc();
    *(v0 + 272) = v21;
    *v21 = v0;
    v21[1] = sub_1002CF774;
    v22 = *(v0 + 256);

    return sub_1002F2584(v22);
  }

  else
  {
    v90 = objc_opt_self();
    v91 = String._bridgeToObjectiveC()();
    [v90 internalErrorWithDebugDescription:v91];

    swift_willThrow();
    v93 = *(v0 + 248);
    v92 = *(v0 + 256);
    v94 = *(v0 + 224);
    v95 = *(v0 + 200);
    v96 = *(v0 + 176);
    v97 = *(v0 + 152);
    v99 = *(v0 + 120);
    v98 = *(v0 + 128);

    v100 = *(v0 + 8);

    return v100();
  }
}

uint64_t sub_1002CF774(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 272);
  v8 = *v3;
  *(*v3 + 280) = v2;

  if (v2)
  {
    v9 = sub_1002D0120;
  }

  else
  {
    *(v6 + 288) = a2;
    *(v6 + 296) = a1;
    v9 = sub_1002CF8A8;
  }

  return _swift_task_switch(v9, 0, 0);
}

Swift::Int sub_1002CF8A8()
{
  v97 = v0;
  (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  *(v0 + 304) = 5001813;
  *(v0 + 312) = 0xE300000000000000;
  v4 = *(v0 + 264);
  swift_bridgeObjectRetain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000668C(5001813, 0xE300000000000000, v96);
    *(v7 + 12) = 2048;
    *(v7 + 14) = String.count.getter();

    *(v7 + 22) = 2081;
    *(v7 + 24) = sub_10000668C(v2, v1, v96);
    _os_log_impl(&_mh_execute_header, v5, v6, "RDReminderExtractor: input type: %{public}s, characterCount: %ld, input: %{private}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = *(v0 + 264);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 96);
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDReminderExtractor: Starting recipe classification with required confidence threshold: %f", v12, 0xCu);
  }

  v16 = sub_1006DEB84();
  v93 = v2;
  v95 = v1;
  if (v3)
  {
    v17 = *(v0 + 264);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v96[0] = v21;
      *v20 = 136446210;
      swift_getErrorValue();
      v23 = *(v0 + 56);
      v22 = *(v0 + 64);
      v24 = *(v0 + 72);
      v25 = Error.rem_errorDescription.getter();
      v27 = sub_10000668C(v25, v26, v96);

      *(v20 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDReminderExtractor: use action items adapter because recipe classifier failed {error: %{public}s}", v20, 0xCu);
      sub_10000607C(v21);
    }

    else
    {
    }

    v90 = 0;
    v91 = 0;
    v29 = 0.0;
    v92 = 1;
  }

  else
  {
    v28 = v13;
    v29 = v16;
    v30 = v14;
    v31 = v15;
    v32 = *(v0 + 96);

    v90 = v30 & 1;
    v91 = v28 & 1;
    v92 = v31;
    if ((v28 & 1) != 0 && v29 > v32)
    {
      v33 = *(v0 + 216);
      v34 = *(v0 + 224);
      v35 = *(v0 + 208);
      v36 = *(v0 + 192);
      v87 = *(v0 + 200);
      v88 = *(v0 + 184);
      v37 = type metadata accessor for RDExtractIngredientsSession();
      v38 = swift_allocObject();
      (*(v33 + 104))(v34, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v35);
      v86 = v31;
      v39 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
      v41 = v40;
      (*(v33 + 8))(v34, v35);
      v42 = sub_10038E004(_swiftEmptyArrayStorage);
      v43 = type metadata accessor for RDExtractIngredientsSession._ClientInfo();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      v46 = 1;
      *(v38 + 16) = sub_1002F5720(v39, v41, 0, 1, v42);
      *(v0 + 40) = v37;
      *(v0 + 48) = &off_1008ED460;
      *(v0 + 16) = v38;
      Prompt.init(_:)();
      v47 = Prompt.overestimatedTokenCount()();

      result = (*(v36 + 8))(v87, v88);
      goto LABEL_15;
    }
  }

  v50 = *(v0 + 216);
  v49 = *(v0 + 224);
  v51 = *(v0 + 200);
  v52 = *(v0 + 208);
  v53 = *(v0 + 192);
  v89 = *(v0 + 184);
  v54 = type metadata accessor for RDExtractActionItemsSession();
  v55 = swift_allocObject();
  (*(v50 + 104))(v49, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v52);
  v56 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
  v58 = v57;
  (*(v50 + 8))(v49, v52);
  v59 = sub_10038E004(_swiftEmptyArrayStorage);
  v60 = type metadata accessor for RDExtractActionItemsSession._ClientInfo();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  *(v55 + 16) = sub_10054935C(v56, v58, 0, 1, v59);
  *(v0 + 40) = v54;
  *(v0 + 48) = &off_1008F69E8;
  *(v0 + 16) = v55;
  Prompt.init(_:)();
  v47 = Prompt.overestimatedTokenCount()();
  result = (*(v53 + 8))(v51, v89);
  v46 = 0;
LABEL_15:
  *(v0 + 336) = v90;
  *(v0 + 344) = v92;
  *(v0 + 328) = v29;
  *(v0 + 320) = v91;
  *(v0 + 408) = v46;
  if (__OFSUB__(4096, v47))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = 3896 - v47;
  if (__OFSUB__(4096 - v47, 200))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v63 = *(v0 + 264);
  v64 = sub_1002F2F9C(result, v93, v95);
  v66 = v65;
  v68 = v67;
  v70 = v69;

  *(v0 + 352) = v66;
  *(v0 + 360) = v68;
  *(v0 + 368) = v70;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "RDReminderExtractor: prewarm extraction session", v73, 2u);
  }

  v74 = *(v0 + 264);

  v75 = *(v0 + 40);
  v76 = *(v0 + 48);
  sub_10000F61C((v0 + 16), v75);
  (*(v76 + 8))(v75, v76);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 67109120;
    *(v79 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v77, v78, "RDReminderExtractor: prewarm finished, start actual extraction, usingIngredientAdapter: %{BOOL}d", v79, 8u);
  }

  v80 = *(v0 + 176);

  static DispatchTime.now()();
  v81 = *(v0 + 40);
  v82 = *(v0 + 48);
  sub_10000F61C((v0 + 16), v81);
  v83 = *(v82 + 16);

  v94 = (v83 + *v83);
  v84 = v83[1];
  v85 = swift_task_alloc();
  *(v0 + 376) = v85;
  *v85 = v0;
  v85[1] = sub_1002D0200;

  return v94(v64, v66, v81, v82);
}

uint64_t sub_1002D0120()
{
  (*(v0[30] + 8))(v0[32], v0[29]);
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002D0200(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 376);
  v7 = *v3;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = v2;

  v8 = v4[44];
  if (v2)
  {
    v9 = v5[39];

    swift_bridgeObjectRelease_n();
    v10 = sub_1002D0A9C;
  }

  else
  {

    v10 = sub_1002D0358;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002D0358()
{
  v101 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 176);
  static DispatchTime.secondsElapsed(since:)();
  v6 = v5;
  v7 = sub_10013B7F8(v3, v1);
  v8 = *(v0 + 392);
  if (v2)
  {
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    sub_1002D0B98(v13, v12, v11, v10);
    sub_10000607C((v0 + 16));
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = v7;
    v26 = *(v0 + 264);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 392);
    if (v29)
    {
      v31 = *(v0 + 384);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v100 = v33;
      *v32 = 134218755;
      *(v32 + 4) = *(v25 + 16);

      *(v32 + 12) = 2048;
      *(v32 + 14) = v6;
      *(v32 + 22) = 2048;
      *(v32 + 24) = String.count.getter();

      *(v32 + 32) = 2081;
      v34 = sub_10000668C(v31, v30, &v100);

      *(v32 + 34) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "RDReminderExtractor: extracted %ld suggestions, in %f seconds, output text characterCount: %ld output text: %{private}s", v32, 0x2Au);
      sub_10000607C(v33);
    }

    else
    {
      v35 = *(v0 + 392);
      swift_bridgeObjectRelease_n();
    }

    v36 = *(v0 + 344);
    v98 = *(v25 + 16);
    if (*(v0 + 408))
    {
      v37 = &enum case for SuggestedRemindersAdapterType.recipeItems(_:);
    }

    else
    {
      v37 = &enum case for SuggestedRemindersAdapterType.actionItems(_:);
    }

    (*(*(v0 + 144) + 104))(*(v0 + 152), *v37, *(v0 + 136));
    if (v36 == 1)
    {
      v38 = *(v0 + 128);
      v39 = type metadata accessor for SuggestedRemindersRecipeClassifierType();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      v94 = 0;
      v88 = 0;
      v90 = 0;
      v86 = 2;
    }

    else
    {
      v40 = *(v0 + 344);
      v41 = *(v0 + 336);
      v42 = *(v0 + 128);
      v43 = *(v0 + 320);
      v44 = type metadata accessor for SuggestedRemindersRecipeClassifierType();
      v45 = *(v44 - 8);
      v46 = &enum case for SuggestedRemindersRecipeClassifierType.chineseJapaneseKorean(_:);
      if ((v41 & 1) == 0)
      {
        v46 = &enum case for SuggestedRemindersRecipeClassifierType.otherLanguages(_:);
      }

      (*(*(v44 - 8) + 104))(v42, *v46, v44);
      (*(v45 + 56))(v42, 0, 1, v44);
      v86 = v43;
      if (v40)
      {
        v47 = *(v0 + 344);
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v49;
        v90 = v48;
      }

      else
      {
        v88 = 0;
        v90 = 0;
      }

      v94 = *(v0 + 328);
    }

    v78 = v36 == 1;
    v82 = *(v0 + 360);
    v84 = *(v0 + 368);
    v92 = *(v0 + 352);
    v79 = *(v0 + 304);
    v80 = *(v0 + 312);
    v96 = *(v0 + 264);
    v50 = *(v0 + 144);
    v51 = *(v0 + 128);
    v76 = *(v0 + 136);
    v77 = *(v0 + 152);
    v52 = *(v0 + 112);
    v53 = *(v0 + 120);
    v81 = *(v0 + 104);
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v54 = sub_1000F5104(&qword_100940F78, &unk_1007A0980);
    v55 = v54[20];
    v56 = v54[24];
    v57 = v53 + v54[28];
    v58 = v54[32];
    v59 = (v53 + v54[40]);
    v60 = v54[44];
    v74 = v54[48];
    v75 = v54[36];
    *v53 = v98;
    *(v53 + 8) = 0;
    *(v53 + 16) = 0;
    *(v53 + 24) = 1;
    *(v53 + 32) = v90;
    *(v53 + 40) = v88;
    sub_1002D0BA8(v51, v53 + v55);
    *(v53 + v56) = v86;
    *v57 = v94;
    *(v57 + 8) = v78;
    (*(v50 + 16))(v53 + v58, v77, v76);
    *(v53 + v75) = v6;
    *v59 = v79;
    v59[1] = v80;
    *(v53 + v60) = v82;
    *(v53 + v74) = v84;
    (*(v52 + 104))(v53, enum case for REMAnalyticsEvent.suggestedRemindersSession(_:), v81);
    REMAnalyticsManager.post(event:)();

    (*(v52 + 8))(v53, v81);
    sub_1002D0C18(v51);
    (*(v50 + 8))(v77, v76);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "RDReminderExtractor: extractReminderSuggestions() END", v63, 2u);
    }

    v83 = *(v0 + 336);
    v85 = *(v0 + 344);
    v65 = *(v0 + 320);
    v64 = *(v0 + 328);
    v66 = *(v0 + 408);
    v87 = *(v0 + 256);
    v89 = *(v0 + 248);
    v91 = *(v0 + 224);
    v93 = *(v0 + 200);
    v67 = *(v0 + 168);
    v68 = *(v0 + 176);
    v69 = *(v0 + 160);
    v95 = *(v0 + 152);
    v97 = *(v0 + 128);
    v99 = *(v0 + 120);

    v70 = objc_allocWithZone(REMReminderExtractionOutput);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v72 = [v70 initWithSuggestedTitles:isa isClassifiedAsRecipe:v66];

    sub_1002D0B98(v65, v64, v83, v85);
    (*(v67 + 8))(v68, v69);
    sub_10000607C((v0 + 16));

    v73 = *(v0 + 8);

    return v73(v72);
  }
}

uint64_t sub_1002D0A9C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_1002D0B98(v0[40], v0[41], v0[42], v0[43]);
  (*(v2 + 8))(v1, v3);
  sub_10000607C(v0 + 2);
  v4 = v0[50];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002D0B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return _objc_release_x3();
  }

  return result;
}

uint64_t sub_1002D0BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100940F70, &qword_1007A0978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D0C18(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940F70, &qword_1007A0978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D0C80()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940F80);
  v1 = sub_100006654(v0, qword_100940F80);
  if (qword_100936490 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D0D48(void *a1)
{
  v2 = v1;
  v42 = *v2;
  v4 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_1000F5104(&qword_100941058, &qword_1007A09F8);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = sub_1000F5104(&qword_100941060, &qword_1007A0A00);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = sub_1000F5104(&qword_100941068, &qword_1007A0A08);
  v19 = *(v18 - 8);
  v40 = v18;
  v41 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  v23 = v2[8];
  v43 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 1;
  swift_retain_n();
  sub_1000F5104(&qword_100941070, &qword_1007A0A10);
  sub_10000CB48(&qword_100941078, &qword_100941070, &qword_1007A0A10);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v43 = v2[6];
  v25 = v43;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_100941080, &qword_100941058, &qword_1007A09F8);
  sub_100006CA4();
  v27 = v25;
  v28 = v36;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v7, &qword_100939980, &unk_10079ADA0);

  (*(v37 + 8))(v12, v28);
  swift_allocObject();
  swift_weakInit();
  sub_1000F5104(&qword_100941088, &qword_1007A0A18);
  sub_10000CB48(&qword_100941090, &qword_100941060, &qword_1007A0A00);
  v29 = v38;
  Publisher.map<A>(_:)();

  (*(v39 + 8))(v17, v29);
  v30 = v2[8];
  v31 = swift_allocObject();
  v31[2] = sub_1002D2594;
  v31[3] = 0;
  v31[4] = v30;
  sub_10000CB48(&qword_100941098, &qword_100941068, &qword_1007A0A08);
  swift_retain_n();
  v32 = v40;
  v33 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v41 + 8))(v22, v32);
  v34 = v2[7];
  v2[7] = v33;
}

uint64_t sub_1002D1308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = sub_1002C3740(v9);
    Date.init()();
    v12 = sub_1002D1488(v11, v8);

    (*(v5 + 8))(v8, v4);
    v13 = sub_1002C3B0C(v9);
    v14 = sub_1002D20A4(v13);

    v16 = v12;
    sub_1002723E4(v14);

    v15 = v16;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  *a2 = v15;
  return result;
}

void *sub_1002D1488(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v88 = sub_1000F5104(&qword_1009410B0, &qword_1007A0A30);
  v6 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = &v80 - v7;
  v8 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v80 - v13;
  v100 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v14 = *(v100 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v100);
  v99 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = &v80 - v18;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v84 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v93 = &v80 - v26;
  __chkstk_darwin(v27);
  v102 = &v80 - v28;
  __chkstk_darwin(v29);
  v31 = &v80 - v30;
  v108 = a2;
  v32 = sub_10024D43C(sub_1002D6240, v107, a1);
  v105 = a2;
  v106 = v5;
  v33 = sub_1003DFAC8(sub_1002D6260, v104, v32);

  v109 = v33;

  sub_1002D383C(&v109);

  v34 = v109;
  v35 = *(v9 + 56);
  v89 = v8;
  v87 = v9 + 56;
  v86 = v35;
  v35(v31, 1, 1, v8);
  v36 = v34[2];
  v90 = v31;
  if (v36)
  {
    v81 = a1;
    v37 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v80 = v34;
    v94 = v37;
    v38 = v34 + v37;
    v98 = (v9 + 48);
    v39 = _swiftEmptyArrayStorage;
    v40 = *(v14 + 72);
    v41 = &qword_1009410B8;
    v42 = &qword_1007A0A38;
    v43 = v89;
    v44 = v102;
    v45 = v90;
    v97 = v40;
    v85 = v21;
    while (1)
    {
      v103 = v36;
      sub_1002D6320(v38, v21, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_100010364(v45, v44, v41, v42);
      v49 = *v98;
      if ((*v98)(v44, 1, v43) != 1)
      {
        break;
      }

      sub_1000050A4(v45, v41, v42);
      sub_1000050A4(v44, v41, v42);
      sub_100010364(&v21[*(v100 + 24)], v45, v41, v42);
      sub_1002D6320(v21, v99, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100367980(0, v39[2] + 1, 1, v39);
      }

      v51 = v39[2];
      v50 = v39[3];
      v41 = &qword_1009410B8;
      v42 = &qword_1007A0A38;
      if (v51 >= v50 >> 1)
      {
        v39 = sub_100367980(v50 > 1, v51 + 1, 1, v39);
      }

      sub_1002D627C(v21, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v39[2] = v51 + 1;
      v46 = v97;
      v47 = v39 + v94 + v51 * v97;
      v48 = v99;
LABEL_4:
      sub_1002D61DC(v48, v47);
      v44 = v102;
LABEL_5:
      v38 += v46;
      v36 = v103 - 1;
      if (v103 == 1)
      {

        a1 = v81;
        goto LABEL_30;
      }
    }

    v95 = v38;
    v96 = v39;
    v52 = v44;
    v53 = v101;
    sub_100031B58(v52, v101, &qword_10094B8E0, &unk_1007AABD0);
    v54 = *(v100 + 24);
    v55 = v93;
    sub_100010364(v53, v93, &qword_10094B8E0, &unk_1007AABD0);
    v86(v55, 0, 1, v43);
    v56 = *(v88 + 48);
    v57 = &v21[v54];
    v58 = v91;
    sub_100010364(v57, v91, v41, v42);
    sub_100010364(v55, v58 + v56, v41, v42);
    if (v49(v58, 1, v43) == 1)
    {
      sub_1000050A4(v55, v41, v42);
      v59 = v49(v58 + v56, 1, v43);
      v45 = v90;
      v21 = v85;
      if (v59 == 1)
      {
        sub_1000050A4(v58, v41, v42);
        v43 = v89;
        v44 = v102;
        v38 = v95;
        v39 = v96;
LABEL_14:
        sub_1000050A4(v101, &qword_10094B8E0, &unk_1007AABD0);
        sub_1002D627C(v21, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v46 = v97;
        goto LABEL_5;
      }
    }

    else
    {
      v60 = v42;
      v61 = v41;
      v62 = v84;
      sub_100010364(v58, v84, v61, v60);
      if (v49(v58 + v56, 1, v43) != 1)
      {
        v65 = v83;
        sub_100031B58(v58 + v56, v83, &qword_10094B8E0, &unk_1007AABD0);
        type metadata accessor for Date();
        sub_1002D62DC(&qword_100938DB0);
        v66 = dispatch thunk of static Equatable.== infix(_:_:)();
        v67 = v90;
        v21 = v85;
        if (v66)
        {
          v68 = v89;
          v69 = *(v89 + 36);
          v70 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_1000050A4(v65, &qword_10094B8E0, &unk_1007AABD0);
          v42 = &qword_1007A0A38;
          sub_1000050A4(v93, &qword_1009410B8, &qword_1007A0A38);
          v71 = v62;
          v41 = &qword_1009410B8;
          v43 = v68;
          sub_1000050A4(v71, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v91, &qword_1009410B8, &qword_1007A0A38);
          v44 = v102;
          v38 = v95;
          v39 = v96;
          v45 = v67;
          if (v70)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }

        sub_1000050A4(v65, &qword_10094B8E0, &unk_1007AABD0);
        v42 = &qword_1007A0A38;
        sub_1000050A4(v93, &qword_1009410B8, &qword_1007A0A38);
        v72 = v62;
        v41 = &qword_1009410B8;
        sub_1000050A4(v72, &qword_10094B8E0, &unk_1007AABD0);
        sub_1000050A4(v58, &qword_1009410B8, &qword_1007A0A38);
        v43 = v89;
        v39 = v96;
        v45 = v67;
LABEL_18:
        v38 = v95;
LABEL_19:
        sub_1002D6320(v21, v92, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100367980(0, v39[2] + 1, 1, v39);
        }

        v64 = v39[2];
        v63 = v39[3];
        if (v64 >= v63 >> 1)
        {
          v39 = sub_100367980(v63 > 1, v64 + 1, 1, v39);
        }

        sub_1000050A4(v101, &qword_10094B8E0, &unk_1007AABD0);
        sub_1002D627C(v21, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v39[2] = v64 + 1;
        v46 = v97;
        v47 = v39 + v94 + v64 * v97;
        v48 = v92;
        goto LABEL_4;
      }

      sub_1000050A4(v93, v61, v60);
      sub_1000050A4(v62, &qword_10094B8E0, &unk_1007AABD0);
      v21 = v85;
      v41 = v61;
      v42 = v60;
      v45 = v90;
    }

    sub_1000050A4(v58, &qword_1009410B0, &qword_1007A0A30);
    v43 = v89;
    v39 = v96;
    goto LABEL_18;
  }

  v39 = _swiftEmptyArrayStorage;
  v45 = v90;
LABEL_30:
  v73 = v82;
  if (qword_100935E50 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_100006654(v74, qword_100940F80);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v109 = v78;
    *v77 = 136446722;
    *(v77 + 4) = sub_10000668C(*(v73 + 16), *(v73 + 24), &v109);
    *(v77 + 12) = 2048;
    *(v77 + 14) = *(a1 + 16);

    *(v77 + 22) = 2048;
    *(v77 + 24) = v39[2];

    _os_log_impl(&_mh_execute_header, v75, v76, "%{public}s filtered %ld reminders down to %ld", v77, 0x20u);
    sub_10000607C(v78);

    sub_1000050A4(v45, &qword_1009410B8, &qword_1007A0A38);
  }

  else
  {

    sub_1000050A4(v45, &qword_1009410B8, &qword_1007A0A38);
  }

  return v39;
}

uint64_t *sub_1002D20A4(uint64_t *a1)
{
  v36 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v36);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_1000F5104(&qword_1009410A0, &unk_1007A0A20);
  sub_10000CB48(&qword_1009410A8, &qword_1009410A0, &unk_1007A0A20);
  v11 = Sequence.unique<A>(by:)();
  v12 = *(v11 + 16);
  if (v12)
  {
    v32 = a1;
    v37 = _swiftEmptyArrayStorage;
    sub_100253A50(0, v12, 0);
    v13 = v37;
    v14 = objc_opt_self();
    v15 = *(v2 + 80);
    v31 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v34 = *(v2 + 72);
    v35 = v14;
    do
    {
      sub_1002D6320(v16, v5, type metadata accessor for RDTimelineEngineLocationReminder);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v18 = [v35 objectIDWithUUID:{isa, v31}];

      v19 = *(v6 + 24);
      v20 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
      (*(*(v20 - 8) + 56))(&v10[v19], 1, 1, v20);
      v21 = *&v5[*(v36 + 24)];
      sub_1002D627C(v5, type metadata accessor for RDTimelineEngineLocationReminder);
      *v10 = v18;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0xE000000000000000;
      *&v10[*(v6 + 28)] = v21;
      v37 = v13;
      v23 = v13[2];
      v22 = v13[3];
      if (v23 >= v22 >> 1)
      {
        sub_100253A50(v22 > 1, v23 + 1, 1);
        v13 = v37;
      }

      v13[2] = v23 + 1;
      sub_1002D61DC(v10, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23);
      v16 += v34;
      --v12;
    }

    while (v12);

    a1 = v32;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v24 = v33;
  if (qword_100935E50 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100940F80);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446722;
    *(v28 + 4) = sub_10000668C(*(v24 + 16), *(v24 + 24), &v37);
    *(v28 + 12) = 2048;
    *(v28 + 14) = a1[2];

    *(v28 + 22) = 2048;
    *(v28 + 24) = v13[2];

    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s filtered %ld LOCATION reminders down to %ld", v28, 0x20u);
    sub_10000607C(v29);
  }

  else
  {
  }

  return v13;
}

void sub_1002D2594(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  sub_1005176BC(v3);

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1002D25E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v6 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v88 = &v74 - v8;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v91 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v89 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  __chkstk_darwin(v22);
  v95 = &v74 - v23;
  __chkstk_darwin(v24);
  v92 = &v74 - v25;
  v26 = type metadata accessor for Date();
  v96 = *(v26 - 8);
  v27 = v96[8];
  __chkstk_darwin(v26);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v90 = &v74 - v31;
  v32 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v93 = *(a1 + *(v32 + 32));
  if (!v93)
  {
    return sub_1002D6320(a1, v97, type metadata accessor for RDTimelineEngineDueReminder);
  }

  v33 = *(v32 + 20);
  v94 = v32;
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    return sub_1002D6320(a1, v97, type metadata accessor for RDTimelineEngineDueReminder);
  }

  v85 = v3;
  v86 = v29;
  v79 = a2;
  v80 = v10;
  v82 = v9;
  v34 = v94[7];
  v35 = v96;
  v37 = v96 + 7;
  v36 = v96[7];
  v38 = v21;
  v39 = v95;
  v36(v95, 1, 1, v26);
  v81 = a1;
  sub_1004F20E4(v38);
  sub_1004F2344(v39, v38, v18);
  v83 = v35[6];
  v84 = v35 + 6;
  v40 = v83(v18, 1, v26);
  v87 = v34;
  if (v40 == 1)
  {
    sub_1000050A4(v38, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
    v41 = v92;
    v36(v92, 1, 1, v26);
    a1 = v81;
  }

  else
  {
    v77 = v36;
    v75 = v38;
    (v35[4])(v86, v18, v26);
    a1 = v81;
    v42 = v88;
    DateComponents.timeZone.getter();
    v43 = v80;
    v44 = *(v80 + 48);
    v45 = v82;
    v46 = v44(v42, 1, v82);
    v78 = v37;
    v76 = v26;
    if (v46 == 1)
    {
      static TimeZone.current.getter();
      v47 = v44(v42, 1, v45) == 1;
      v48 = v43;
      v49 = v42;
      v50 = v75;
      if (!v47)
      {
        sub_1000050A4(v49, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v43 + 32))(v91, v42, v45);
      v48 = v43;
      v50 = v75;
    }

    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v52 = [(objc_class *)isa rem_isAllDayDateComponents];

    v88 = objc_opt_self();
    v53 = Date._bridgeToObjectiveC()().super.isa;
    v54 = Date._bridgeToObjectiveC()().super.isa;
    v55 = TimeZone._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
    v56 = Array._bridgeToObjectiveC()().super.isa;
    v57 = [v88 nextRecurrentDueDateAfter:v53 dueDate:v54 timeZone:v55 allDay:v52 recurrenceRules:v56];

    v58 = v77;
    if (v57)
    {
      v59 = v89;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = 0;
      v61 = v96;
    }

    else
    {
      v60 = 1;
      v61 = v96;
      v59 = v89;
    }

    (*(v48 + 8))(v91, v82);
    v62 = v61[1];
    v26 = v76;
    v62(v86, v76);
    sub_1000050A4(v50, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v95, &unk_100938850, qword_100795AE0);
    v58(v59, v60, 1, v26);
    v41 = v92;
    sub_100031B58(v59, v92, &unk_100938850, qword_100795AE0);
  }

  v63 = v83(v41, 1, v26);
  v64 = v87;
  if (v63 == 1)
  {
    sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
    return sub_1002D6320(a1, v97, type metadata accessor for RDTimelineEngineDueReminder);
  }

  v66 = v96[4];
  v67 = v90;
  v66(v90, v41, v26);
  v68 = type metadata accessor for UUID();
  v69 = v97;
  (*(*(v68 - 8) + 16))(v97, a1, v68);
  v70 = v94;
  v66((v69 + v94[5]), v67, v26);
  v71 = v70[7];
  v72 = *(a1 + v70[6]);
  v73 = type metadata accessor for DateComponents();
  (*(*(v73 - 8) + 16))(v69 + v71, a1 + v64, v73);
  *(v69 + v70[6]) = v72;
  *(v69 + v70[8]) = v93;
}

uint64_t sub_1002D2D8C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v46 = a2;
  v45 = a1;
  v44 = sub_1000F5104(&qword_1009410C0, &unk_1007A0A40);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v36 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  __chkstk_darwin(v14);
  v47 = &v36 - v16;
  v17 = *(type metadata accessor for RDTimelineEngineDueReminder(0) + 20);
  v18 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v18 objectIDWithUUID:isa];

  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  v21 = sub_1002D62DC(&qword_1009464D0);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v39 = v21;
    v40 = v20;
    v23 = v7[4];
    v24 = v43;
    v23(v43, v13, v6);
    v41 = v14;
    v25 = v44;
    v23((v24 + *(v44 + 48)), v10, v6);
    v26 = v42;
    sub_100010364(v24, v42, &qword_1009410C0, &unk_1007A0A40);
    v38 = *(v25 + 48);
    v27 = v6;
    v28 = v47;
    v23(v47, v26, v27);
    v29 = v7[1];
    v29(v26 + v38, v27);
    sub_100031B58(v24, v26, &qword_1009410C0, &unk_1007A0A40);
    v30 = *(v25 + 48);
    v31 = v41;
    v23((v28 + *(v41 + 36)), (v26 + v30), v27);
    v29(v26, v27);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      sub_1000050A4(v47, &qword_10094B8E0, &unk_1007AABD0);

      v32 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
      return (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
    }

    else
    {
      v33 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
      v34 = *(v33 + 24);
      v35 = v46;
      sub_100031B58(v47, &v46[v34], &qword_10094B8E0, &unk_1007AABD0);
      (*(v37 + 56))(&v35[v34], 0, 1, v31);
      *v35 = v40;
      *(v35 + 1) = 0;
      *(v35 + 2) = 0xE000000000000000;
      *&v35[*(v33 + 28)] = 0;
      return (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D3254(id *a1, id *a2)
{
  v48 = a2;
  v3 = type metadata accessor for UUID();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  v24 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem();
  v25 = *(v24 + 24);
  v44 = a1;
  sub_100010364(a1 + v25, v15, &qword_1009410B8, &qword_1007A0A38);
  v26 = *(v17 + 48);
  if (v26(v15, 1, v16) == 1)
  {
    v27 = v48;
    v12 = v15;
  }

  else
  {
    sub_100031B58(v15, v23, &qword_10094B8E0, &unk_1007AABD0);
    v28 = *(v24 + 24);
    v29 = v48;
    sub_100010364(v48 + v28, v12, &qword_1009410B8, &qword_1007A0A38);
    if (v26(v12, 1, v16) != 1)
    {
      sub_100031B58(v12, v20, &qword_10094B8E0, &unk_1007AABD0);
      v41 = static Date.< infix(_:_:)();
      sub_1000050A4(v20, &qword_10094B8E0, &unk_1007AABD0);
      sub_1000050A4(v23, &qword_10094B8E0, &unk_1007AABD0);
      return v41 & 1;
    }

    v27 = v29;
    sub_1000050A4(v23, &qword_10094B8E0, &unk_1007AABD0);
  }

  sub_1000050A4(v12, &qword_1009410B8, &qword_1007A0A38);
  v30 = [*v44 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = UUID.uuidString.getter();
  v33 = v32;
  v34 = v47;
  v35 = *(v46 + 8);
  v35(v8, v47);
  v36 = [*v27 uuid];
  v37 = v45;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = UUID.uuidString.getter();
  v40 = v39;
  v35(v37, v34);
  if (v31 == v38 && v33 == v40)
  {

    v41 = 0;
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v41 & 1;
}

void sub_1002D3698(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RDTimelineEngineLocationReminder(0) + 24));
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    [v5 center];
    Double.write<A>(to:)();
    v7._countAndFlagsBits = 44;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    [v5 center];
    Double.write<A>(to:)();

    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = [v3 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v11;
  }

  *a2 = v8;
  a2[1] = v9;
}
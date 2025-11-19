uint64_t sub_1000B4E0C()
{
  v1 = *(v0[17] + 56);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1000B4EC4;
  v3 = v0[35];
  v4 = v0[18];

  return sub_1001CF6CC(v3, 0, 0, 0, 4, v4, 1, 0);
}

uint64_t sub_1000B4EC4()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1000B54BC;
  }

  else
  {
    v3 = sub_1000B4FD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B4FD8()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  v42 = *(v4 + 16);
  v42(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = Response.statusCode.getter();
    v46 = *(v11 + 8);
    v46(v9, v10);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "FetchConfig - response code %ld", v12, 0xCu);
  }

  else
  {
    v46 = *(v11 + 8);
    v46(v9, v10);
  }

  v14 = v0[35];
  v15 = v0[33];
  v36 = v0[32];
  v16 = v0[30];
  v17 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v39 = v0[26];
  v44 = v0[25];
  v45 = v0[24];
  v43 = v0[22];
  v40 = v0[23];
  v41 = v0[21];
  v37 = v0[19];
  v38 = v0[20];
  v35 = v0[17];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v19 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v20);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v18, v20);
  v42(v15, v14, v16);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  (*(v17 + 32))(v23 + v22, v15, v16);
  v24 = (v23 + ((v36 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v37;
  v24[1] = v38;
  v0[12] = sub_1000C7648;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058CBF8;
  v25 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[16] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v43 + 8))(v40, v41);
  (*(v44 + 8))(v39, v45);
  v46(v14, v16);
  v26 = v0[13];

  v28 = v0[34];
  v27 = v0[35];
  v29 = v0[33];
  v30 = v0[29];
  v31 = v0[26];
  v32 = v0[23];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1000B54BC()
{
  v36 = v0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[37];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    v0[15] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v35);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "FetchConfig - error %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[37];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v29 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  v31 = v0[23];
  v32 = v0[22];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v12, v14);
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v11;
  v0[6] = sub_1000C7618;
  v0[7] = v18;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058CBA8;
  v19 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v32 + 8))(v31, v15);
  (*(v33 + 8))(v29, v34);
  v20 = v0[7];

  v22 = v0[34];
  v21 = v0[35];
  v23 = v0[33];
  v24 = v0[29];
  v25 = v0[26];
  v26 = v0[23];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000B5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = Response.body.getter();
  v8 = v7;
  a5();

  return sub_1000049D0(v6, v8);
}

void sub_1000B5988(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v257 = a4;
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v252 = &v243 - v10;
  v11 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v253 = &v243 - v13;
  v14 = type metadata accessor for URL();
  v260 = *(v14 - 8);
  v15 = *(v260 + 64);
  __chkstk_darwin(v14);
  v249 = &v243 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v243 - v22;
  v258 = type metadata accessor for SecureLocationsConfig();
  v254 = *(v258 - 8);
  v24 = *(v254 + 64);
  v25 = __chkstk_darwin(v258);
  v250 = v26;
  v251 = &v243 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v259 = &v243 - v27;
  v28 = objc_opt_self();
  v255 = a1;
  v256 = a2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v283 = 0;
  v30 = [v28 JSONObjectWithData:isa options:0 error:&v283];

  if (!v30)
  {
    v42 = v283;
    v43 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A7EE8 != -1)
    {
LABEL_220:
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    sub_10000A6F0(v150, qword_1005DFB98);
    swift_errorRetain();
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = a3;
      v155 = swift_slowAlloc();
      *&v283 = v155;
      *v153 = 136315138;
      *&v281[0] = v43;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v156 = String.init<A>(describing:)();
      v158 = sub_10000D01C(v156, v157, &v283);

      *(v153 + 4) = v158;
      _os_log_impl(&_mh_execute_header, v151, v152, "FetchConfig - error decoding config information %s", v153, 0xCu);
      sub_100004984(v155);
      a3 = v154;
    }

    swift_errorRetain();
    (a3)(v43);

    return;
  }

  v31 = v283;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if (!swift_dynamicCast())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "FetchConfig - unable to parse config data", v47, 2u);
    }

    v48 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:5 userInfo:0];
    a3();

    return;
  }

  v32 = *&v281[0];
  v33 = *(*(v4 + 16) + 24);
  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for UUID();
  sub_10000A6F0(v34, qword_1005DFC58);
  sub_1004AFCB8();
  sub_100005F04(v23, v21, &qword_1005A9DC0, &unk_1004C3290);
  v35 = (*(v254 + 48))(v21, 1, v258);
  v36 = v259;
  if (v35 == 1)
  {
    sub_100002CE0(v21, &qword_1005A9DC0, &unk_1004C3290);
    if (qword_1005A7FA0 != -1)
    {
      swift_once();
    }

    v37 = qword_1005DFC70;
    v38 = qword_1005A7FA8;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = sub_10000A6F0(v14, qword_1005DFC78);
    v40 = v258;
    (*(v260 + 16))(v36 + *(v258 + 76), v39, v14);
    if (qword_1005A7FB0 != -1)
    {
      swift_once();
    }

    v41 = qword_1005DFC90;

    sub_100002CE0(v23, &qword_1005A9DC0, &unk_1004C3290);
    *v36 = 0;
    *(v36 + 8) = 1;
    *(v36 + 16) = xmmword_1004C2E50;
    *(v36 + 32) = 5;
    *(v36 + 40) = xmmword_1004C2E60;
    *(v36 + 56) = 0;
    *(v36 + 64) = v37;
    *(v36 + 72) = 0x405E000000000000;
    *(v36 + 80) = 1;
    *(v36 + 88) = 0x409C200000000000;
    *(v36 + 96) = 5;
    *(v36 + 104) = xmmword_1004C2E70;
    *(v36 + *(v40 + 80)) = v41;
    if (!*(v32 + 16))
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_100002CE0(v23, &qword_1005A9DC0, &unk_1004C3290);
    sub_1000C9DE8(v21, v36, type metadata accessor for SecureLocationsConfig);
    if (!*(v32 + 16))
    {
      goto LABEL_24;
    }
  }

  v49 = sub_1000110D8(0x6556747065636361, 0xED00006E6F697372);
  if (v50)
  {
    sub_10000709C(*(v32 + 56) + 32 * v49, &v283);
    if (swift_dynamicCast())
    {
      v51 = 0;
      *v36 = *&v281[0];
      goto LABEL_29;
    }
  }

LABEL_24:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000A6F0(v52, qword_1005DFB98);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "FetchConfig Unable to parse acceptVersion from config response", v55, 2u);
  }

  v51 = 1;
LABEL_29:
  v56 = *(v32 + 16);
  v248 = a3;
  if (v56 && (v57 = sub_1000110D8(0x4565727574616566, 0xEE0064656C62616ELL), (v58 & 1) != 0) && (sub_10000709C(*(v32 + 56) + 32 * v57, &v283), (swift_dynamicCast() & 1) != 0))
  {
    *(v36 + 8) = v281[0];
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000A6F0(v59, qword_1005DFB98);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "FetchConfig Unable to parse featureEnabled flag from server config response", v62, 2u);
    }

    v51 = 1;
  }

  if (*(v32 + 16) && (v63 = sub_1000110D8(0xD00000000000001ELL, 0x80000001004DE160), (v64 & 1) != 0) && (sub_10000709C(*(v32 + 56) + 32 * v63, &v283), (swift_dynamicCast() & 1) != 0) && (*&v283 = 0, v65 = sub_1000B9F08(*&v281[0], *(&v281[0] + 1)), , v65))
  {
    *(v36 + 16) = v283;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000A6F0(v66, qword_1005DFB98);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "FetchConfig Unable to parse labelDistanceThreshold from server config response", v69, 2u);
    }

    v51 = 1;
  }

  if (*(v32 + 16) && (v70 = sub_1000110D8(0xD00000000000001CLL, 0x80000001004DE1A0), (v71 & 1) != 0) && (sub_10000709C(*(v32 + 56) + 32 * v70, &v283), (swift_dynamicCast() & 1) != 0))
  {
    *(v36 + 32) = *&v281[0];
    if (!*(v32 + 16))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000A6F0(v72, qword_1005DFB98);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "FetchConfig unable to parse maxAllowedSenderSessions from server config response", v75, 2u);
    }

    v51 = 1;
    if (!*(v32 + 16))
    {
      goto LABEL_62;
    }
  }

  v76 = sub_1000110D8(0xD00000000000001ELL, 0x80000001004DE180);
  if (v77)
  {
    sub_10000709C(*(v32 + 56) + 32 * v76, &v283);
    if (swift_dynamicCast())
    {
      *&v283 = 0;
      v78 = sub_1000B9F08(*&v281[0], *(&v281[0] + 1));

      if (v78)
      {
        *(v36 + 24) = v283;
        goto LABEL_67;
      }
    }
  }

LABEL_62:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_10000A6F0(v79, qword_1005DFB98);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "FetchConfig unable to parse locationCacheValidityThreshold from server config response", v82, 2u);
  }

  v51 = 1;
LABEL_67:
  if (*(v32 + 16) && (v83 = sub_1000110D8(0xD000000000000016, 0x80000001004DE1C0), (v84 & 1) != 0) && (sub_10000709C(*(v32 + 56) + 32 * v83, &v283), (swift_dynamicCast() & 1) != 0) && (*&v283 = 0, v85 = sub_1000B9F08(*&v281[0], *(&v281[0] + 1)), , v85))
  {
    *(v36 + 40) = v283;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_10000A6F0(v86, qword_1005DFB98);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "FetchConfig unable to parse locationAgingThreshold from server config response", v89, 2u);
    }

    v51 = 1;
  }

  if (*(v32 + 16) && (v90 = sub_1000110D8(0xD000000000000019, 0x80000001004DE1E0), (v91 & 1) != 0) && (sub_10000709C(*(v32 + 56) + 32 * v90, &v283), (swift_dynamicCast() & 1) != 0) && (*&v283 = 0, v92 = sub_1000B9F08(*&v281[0], *(&v281[0] + 1)), , v92))
  {
    *(v36 + 48) = v283;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000A6F0(v93, qword_1005DFB98);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "FetchConfig unable to parse subscriptionThrottleInSec from server config response ", v96, 2u);
    }
  }

  if (*(v32 + 16) && (v97 = sub_1000110D8(0xD00000000000001ELL, 0x80000001004DE200), (v98 & 1) != 0) && (sub_10000709C(*(v32 + 56) + 32 * v97, &v283), (swift_dynamicCast() & 1) != 0))
  {
    *(v36 + 56) = v281[0];
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_10000A6F0(v99, qword_1005DFB98);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "FetchConfig unable to parse overridePendingKeyRequestCheck from server config response", v102, 2u);
    }

    v51 = 1;
  }

  sub_10008DFD4(0xD00000000000001DLL, 0x80000001004DE220, v32, &v283);
  if (*(&v284 + 1))
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    if (swift_dynamicCast())
    {
      v103 = sub_10023F00C(*&v281[0]);

      v104 = *(v36 + 64);

      *(v36 + 64) = v103;
      goto LABEL_105;
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  sub_10000A6F0(v105, qword_1005DFB98);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "FetchConfig unable to parse ownerProactiveSupportedModels from server config response", v108, 2u);
    v36 = v259;
  }

  v51 = 1;
LABEL_105:
  sub_10008DFD4(0xD000000000000017, 0x80000001004DE240, v32, &v283);
  if (*(&v284 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v283 = 0;
      v109 = sub_1000B9F08(*&v281[0], *(&v281[0] + 1));

      if (v109)
      {
        *(v36 + 72) = v283;
        goto LABEL_115;
      }
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  sub_10000A6F0(v110, qword_1005DFB98);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v111, v112, "FetchConfig unable to parse keyDistributionThrottle from server config response", v113, 2u);
    v36 = v259;
  }

  v51 = 1;
LABEL_115:
  sub_10008DFD4(0xD00000000000001DLL, 0x80000001004DE260, v32, &v283);
  if (*(&v284 + 1))
  {
    v114 = swift_dynamicCast();
    v115 = v260;
    if (v114)
    {
      *(v36 + 80) = v281[0];
      goto LABEL_124;
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
    v115 = v260;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_10000A6F0(v116, qword_1005DFB98);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&_mh_execute_header, v117, v118, "FetchConfig unable to parse offlineLocationsUploadEnabled from server config response", v119, 2u);
    v115 = v260;
  }

  v51 = 1;
LABEL_124:
  sub_10008DFD4(0xD000000000000020, 0x80000001004DE280, v32, &v283);
  if (*(&v284 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v36 + 88) = *&v281[0];
      goto LABEL_133;
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  sub_10000A6F0(v120, qword_1005DFB98);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "FetchConfig unable to parse offlineProactiveAlertIntervalSec from server config response", v123, 2u);
    v115 = v260;
  }

  v51 = 1;
LABEL_133:
  sub_10008DFD4(0xD000000000000025, 0x80000001004DE2B0, v32, &v283);
  if (*(&v284 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v36 + 96) = *&v281[0];
      goto LABEL_142;
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for Logger();
  sub_10000A6F0(v124, qword_1005DFB98);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&_mh_execute_header, v125, v126, "FetchConfig unable to parse offlineProactiveAlertNoOfTimesDisplay from server config response", v127, 2u);
    v115 = v260;
  }

  v51 = 1;
LABEL_142:
  sub_10008DFD4(0xD00000000000001FLL, 0x80000001004DE2E0, v32, &v283);
  if (*(&v284 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v36 + 104) = *&v281[0];
      goto LABEL_151;
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v128 = type metadata accessor for Logger();
  sub_10000A6F0(v128, qword_1005DFB98);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&_mh_execute_header, v129, v130, "FetchConfig unable to parse offlineLocationsPublishThrottle from server config response", v131, 2u);
    v115 = v260;
  }

  v51 = 1;
LABEL_151:
  sub_10008DFD4(0xD00000000000002ELL, 0x80000001004DE300, v32, &v283);
  if (*(&v284 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v36 + 112) = *&v281[0];
      goto LABEL_160;
    }
  }

  else
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  sub_10000A6F0(v132, qword_1005DFB98);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 0;
    _os_log_impl(&_mh_execute_header, v133, v134, "FetchConfig unable to parse offlineProactiveAlertDistanceThresholdInMeters from server config response", v135, 2u);
    v115 = v260;
  }

  v51 = 1;
LABEL_160:
  sub_10008DFD4(0xD000000000000019, 0x80000001004DE330, v32, &v283);

  v246 = v51;
  if (!*(&v284 + 1))
  {
    sub_100002CE0(&v283, &qword_1005A9680, &qword_1004C32A0);
    a3 = v248;
    goto LABEL_165;
  }

  v136 = swift_dynamicCast();
  a3 = v248;
  if ((v136 & 1) == 0)
  {
LABEL_165:
    v140 = v258;
    goto LABEL_166;
  }

  v137 = v253;
  URL.init(string:)();
  v138 = v137;

  v139 = (*(v115 + 48))(v137, 1, v14);
  v140 = v258;
  if (v139 != 1)
  {
    v242 = v249;
    (*(v115 + 32))(v249, v138, v14);
    (*(v115 + 40))(v36 + *(v140 + 76), v242, v14);
    goto LABEL_173;
  }

  sub_100002CE0(v137, &qword_1005A9DB8, &unk_1004CC1D0);
LABEL_166:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v141 = type metadata accessor for Logger();
  sub_10000A6F0(v141, qword_1005DFB98);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&_mh_execute_header, v142, v143, "FetchConfig unable to parse submitLocationsViaApnsUrl from server config response", v144, 2u);
    v115 = v260;
  }

  if (qword_1005A7FA8 != -1)
  {
    swift_once();
  }

  v145 = sub_10000A6F0(v14, qword_1005DFC78);
  (*(v115 + 24))(v36 + *(v140 + 76), v145, v14);
LABEL_173:
  v146 = type metadata accessor for JSONDecoder();
  v147 = *(v146 + 48);
  v148 = *(v146 + 52);
  swift_allocObject();
  v149 = JSONDecoder.init()();
  sub_1000C7660();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v159 = v36;
  v243 = v149;
  v160 = (v283 + 64);
  v161 = 1 << *(v283 + 32);
  v162 = -1;
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  v163 = v162 & *(v283 + 64);
  v43 = (v161 + 63) >> 6;
  v253 = v283;

  v164 = 0;
  v244 = &_swiftEmptyDictionarySingleton;
  v165 = &qword_1005A9DD8;
  *&v166 = 136446210;
  v245 = v166;
  v249 = v160;
  for (i = v43; ; v43 = i)
  {
    v167 = v164;
    while (1)
    {
      if (!v163)
      {
        v168 = v159;
        v169 = v258;
        while (1)
        {
          v164 = v167 + 1;
          if (__OFADD__(v167, 1))
          {
            __break(1u);
            goto LABEL_220;
          }

          if (v164 >= v43)
          {
            break;
          }

          v163 = *&v160[8 * v164];
          ++v167;
          if (v163)
          {
            goto LABEL_189;
          }
        }

        v218 = *(v169 + 80);
        v219 = *(v168 + v218);

        *(v168 + v218) = v244;
        if (v246)
        {
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v220 = type metadata accessor for Logger();
          sub_10000A6F0(v220, qword_1005DFB98);
          v221 = Logger.logObject.getter();
          v222 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v221, v222))
          {
            v223 = swift_slowAlloc();
            *v223 = 0;
            _os_log_impl(&_mh_execute_header, v221, v222, "FetchConfig update failed - not saving configs", v223, 2u);
          }

          v224 = SPSecureLocationsErrorDomain;
          v225 = objc_allocWithZone(NSError);
          v226 = [v225 initWithDomain:v224 code:5 userInfo:{0, v243}];
          v227 = v226;
          (a3)(v226);
        }

        else
        {
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v228 = type metadata accessor for Logger();
          sub_10000A6F0(v228, qword_1005DFB98);
          v229 = Logger.logObject.getter();
          v230 = static os_log_type_t.default.getter();
          v231 = os_log_type_enabled(v229, v230);
          v233 = v255;
          v232 = v256;
          if (v231)
          {
            v234 = swift_slowAlloc();
            *v234 = 0;
            _os_log_impl(&_mh_execute_header, v229, v230, "FetchConfig successfully updated config values from server. Now saving config", v234, 2u);
          }

          v235 = type metadata accessor for TaskPriority();
          v236 = v252;
          (*(*(v235 - 8) + 56))(v252, 1, 1, v235);
          v237 = v251;
          sub_1000CA264(v168, v251, type metadata accessor for SecureLocationsConfig);
          v238 = (*(v254 + 80) + 32) & ~*(v254 + 80);
          v239 = (v250 + v238 + 7) & 0xFFFFFFFFFFFFFFF8;
          v240 = swift_allocObject();
          *(v240 + 16) = 0;
          *(v240 + 24) = 0;
          sub_1000C9DE8(v237, v240 + v238, type metadata accessor for SecureLocationsConfig);
          v241 = (v240 + v239);
          *v241 = sub_100104908;
          v241[1] = 0;
          sub_1001D7F30(0, 0, v236, &unk_1004C32B0, v240);

          sub_1000C71AC(v168, v233, v232, a3, v257);
        }

        sub_1000CA2CC(v168, type metadata accessor for SecureLocationsConfig);
        return;
      }

      v164 = v167;
LABEL_189:
      v170 = *(v253 + 6);
      v171 = __clz(__rbit64(v163)) | (v164 << 6);
      v172 = *(v253 + 7) + 152 * v171;
      v173 = *(v172 + 112);
      v174 = *(v172 + 80);
      v277 = *(v172 + 96);
      v278 = v173;
      v175 = *(v172 + 112);
      v279 = *(v172 + 128);
      v176 = *(v172 + 48);
      v177 = *(v172 + 16);
      v273 = *(v172 + 32);
      v274 = v176;
      v178 = *(v172 + 48);
      v179 = *(v172 + 80);
      v275 = *(v172 + 64);
      v276 = v179;
      v180 = *(v172 + 16);
      v272[0] = *v172;
      v272[1] = v180;
      v268 = v277;
      v269 = v175;
      v270 = *(v172 + 128);
      v264 = v273;
      v265 = v178;
      v181 = (v170 + 16 * v171);
      v182 = *v181;
      v183 = v181[1];
      v184 = *(v172 + 144);
      v266 = v275;
      v267 = v174;
      v262 = v272[0];
      v263 = v177;
      v284 = v272[0];
      v285 = v177;
      v288 = v275;
      v289 = v174;
      v163 &= v163 - 1;
      v280 = v184;
      v271 = v184;
      v260 = v182;
      *&v283 = v182;
      *(&v283 + 1) = v183;
      v286 = v273;
      v287 = v178;
      v293 = v184;
      v291 = v175;
      v292 = v270;
      v290 = v277;
      sub_100005F04(&v283, v281, v165, &qword_1004C32A8);
      sub_100005F04(&v283, v281, v165, &qword_1004C32A8);
      sub_1001859CC(v272, v300);
      v296 = v301;
      v297 = v302;
      v298 = v303;
      v299 = v304;
      v294 = v300[0];
      v295 = v300[1];
      if (v301)
      {
        break;
      }

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v185 = type metadata accessor for Logger();
      sub_10000A6F0(v185, qword_1005DFB98);
      sub_100005F04(&v283, v281, v165, &qword_1004C32A8);
      v186 = Logger.logObject.getter();
      v187 = v165;
      v188 = static os_log_type_t.error.getter();
      sub_100002CE0(&v283, v187, &qword_1004C32A8);
      if (os_log_type_enabled(v186, v188))
      {
        v189 = swift_slowAlloc();
        v190 = a3;
        v191 = swift_slowAlloc();
        *&v281[0] = v191;
        *v189 = v245;
        *(v189 + 4) = sub_10000D01C(v260, v183, v281);
        _os_log_impl(&_mh_execute_header, v186, v188, "Unable to parse policy for: [%{public}s]", v189, 0xCu);
        sub_100004984(v191);
        a3 = v190;
      }

      sub_100002CE0(&v283, v187, &qword_1004C32A8);
      v167 = v164;
      v159 = v259;
      v160 = v249;
      v43 = i;
      v165 = v187;
    }

    v192 = v244;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v261 = v192;
    v195 = sub_1000110D8(v260, v183);
    v196 = v192[2];
    v197 = (v194 & 1) == 0;
    v198 = v196 + v197;
    if (__OFADD__(v196, v197))
    {
      __break(1u);
LABEL_222:
      __break(1u);
    }

    if (v192[3] < v198)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v200 = v194;
      sub_1002038E0();
LABEL_198:
      v194 = v200;
    }

    if (v194)
    {
      v244 = v261;
      v203 = v261[7] + 88 * v195;
      v204 = *(v203 + 16);
      v281[0] = *v203;
      v281[1] = v204;
      v206 = *(v203 + 48);
      v205 = *(v203 + 64);
      v207 = *(v203 + 32);
      v282 = *(v203 + 80);
      v281[3] = v206;
      v281[4] = v205;
      v281[2] = v207;
      v208 = v297;
      *(v203 + 32) = v296;
      *(v203 + 48) = v208;
      *(v203 + 64) = v298;
      *(v203 + 80) = v299;
      v209 = v295;
      *v203 = v294;
      *(v203 + 16) = v209;
      sub_1000C76B4(v281);
    }

    else
    {
      v210 = v261;
      v261[(v195 >> 6) + 8] |= 1 << v195;
      v211 = (v210[6] + 16 * v195);
      *v211 = v260;
      v211[1] = v183;
      v212 = v210[7] + 88 * v195;
      v213 = v295;
      *v212 = v294;
      *(v212 + 16) = v213;
      *(v212 + 80) = v299;
      v214 = v298;
      *(v212 + 48) = v297;
      *(v212 + 64) = v214;
      *(v212 + 32) = v296;
      v215 = v210[2];
      v216 = __OFADD__(v215, 1);
      v217 = v215 + 1;
      if (v216)
      {
        goto LABEL_222;
      }

      v244 = v210;
      v210[2] = v217;
    }

    v165 = &qword_1005A9DD8;
    sub_100002CE0(&v283, &qword_1005A9DD8, &qword_1004C32A8);
    v159 = v259;
    v160 = v249;
  }

  v199 = isUniquelyReferenced_nonNull_native;
  v200 = v194;
  sub_10022E0C4(v198, v199);
  v201 = sub_1000110D8(v260, v183);
  if ((v200 & 1) == (v202 & 1))
  {
    v195 = v201;
    goto LABEL_198;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000B7F50()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "clearCachedConfig - will clear any cached configuration", v3, 2u);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  sub_1000D31F0();

  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for UUID();
  sub_10000A6F0(v4, qword_1005DFC58);
  sub_1004B796C();

  return sub_10008FE0C();
}

void sub_1000B80D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 134218242;
      *(v6 + 4) = a2;
      *(v6 + 12) = 2080;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v8 = String.init<A>(describing:)();
      v10 = sub_10000D01C(v8, v9, &v11);

      *(v6 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "FetchConfig - error fetching configs after checking response version %ld  %s", v6, 0x16u);
      sub_100004984(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1000B82A0(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FetchConfig updated fmd with new config", v6, 2u);
  }

  return a2(0);
}

uint64_t sub_1000B8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v25[0] = a6;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v26 = *(v17 - 8);
  v27 = v17;
  v18 = *(v26 + 64);
  __chkstk_darwin(v17);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(a2 + 160);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = v25[0];
  v21[7] = a7;
  v21[8] = a1;
  aBlock[4] = sub_1000C8B68;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058D710;
  v22 = _Block_copy(aBlock);

  v23 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v16, v13);
  (*(v26 + 8))(v20, v27);
}

uint64_t sub_1000B86B4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  sub_1000CC418();

  v14 = *(a1 + 24);

  v15 = a4;

  sub_1000F4E04(a2, a3, v15, v14, a1, a2, a3, v15, a5, a6, a7);
}

void sub_1000B87E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, double), uint64_t a8, uint64_t *a9)
{
  v51 = a8;
  v52 = a7;
  v47 = a5;
  v48 = a6;
  v49 = *a9;
  v50 = a2;
  v12 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v46 - v14;
  v16 = type metadata accessor for SecureLocation();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v15, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100002CE0(v15, &unk_1005AB3F0, &qword_1004C4BF0);
LABEL_12:
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  sub_1000C9DE8(v15, v20, type metadata accessor for SecureLocation);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000DC618(v20);

  if ((v21 & 1) == 0)
  {
    sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
    goto LABEL_12;
  }

  sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
  v22 = *(v17 + 72);
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = swift_allocObject();
  *(v24 + 1) = xmmword_1004C1900;
  sub_1000CA264(v20, v24 + v23, type metadata accessor for SecureLocation);
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000A6F0(v25, qword_1005E0DE0);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v54 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10000D01C(v50, a3, &v54);
    _os_log_impl(&_mh_execute_header, v26, v27, "SubscribeAndFetch - livelocations returning cached location for %s in completion", v28, 0xCu);
    sub_100004984(v29);
  }

  sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
LABEL_13:
  if (a4)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005DFB98);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v34;
      *v33 = 136315138;
      v53 = a4;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v35 = String.init<A>(describing:)();
      v37 = sub_10000D01C(v35, v36, &v54);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "analytics: Error occurred during startLive %s", v33, 0xCu);
      sub_100004984(v34);
    }

    __chkstk_darwin(v38);
    v39 = v50;
    *(&v46 - 4) = v47;
    *(&v46 - 3) = v39;
    v40 = v48;
    *(&v46 - 2) = a3;
    *(&v46 - 1) = v40;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005DFB98);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v45;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      *(v44 + 14) = sub_10000D01C(v50, a3, &v54);
      _os_log_impl(&_mh_execute_header, v42, v43, "analytics: startlive success for %{private,mask.hash}s", v44, 0x16u);
      sub_100004984(v45);
    }
  }

  v52(v24, a4, 120.0);

  Transaction.capture()();
}

uint64_t sub_1000B8EAC(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 6);
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000B8F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 160);
  v14 = swift_allocObject();
  v15 = *(a3 + 16);
  *(v14 + 24) = *a3;
  *(v14 + 16) = a2;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(a3 + 32);
  *(v14 + 72) = *(a3 + 48);
  *(v14 + 80) = a1;
  aBlock[4] = sub_1000CA19C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E368;
  v16 = _Block_copy(aBlock);

  sub_1000C980C(a3, &v21);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_1000B9258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0DE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received live location in sink", v9, 2u);
  }

  v10 = *(a1 + 16);
  sub_10004B564(&qword_1005A9F40, &unk_1004C4C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  v13 = *(a2 + 16);
  v12 = *(a2 + 32);
  v14 = *a2;
  *(inited + 80) = *(a2 + 48);
  *(inited + 48) = v13;
  *(inited + 64) = v12;
  *(inited + 32) = v14;
  sub_1000C980C(a2, &v19);
  v15 = sub_1001028AC(inited);
  swift_setDeallocating();
  sub_1000C9868(inited + 32);
  if (v15[2])
  {

    sub_1000C6324(v15, 0, a1, a1, a3);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "LiveLocations: Not able to decode locations", v18, 2u);
    }

    Transaction.capture()();
  }
}

void sub_1000B9494(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  if (*(a1 + 16))
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = a1;

    sub_10020D620(0, 0, v5, &unk_1004C3518, v7);

    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0DE0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Called client session with location updates", v11, 2u);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC3A8();

    Transaction.capture()();
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0DE0);
    v17 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v17, v13, "saved locations is empty", v14, 2u);
    }

    v15 = v17;
  }
}

uint64_t sub_1000B9820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C1900;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  sub_1000C1830(v10, a5, a2, a1);
}

void sub_1000B98D8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0DE0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10000D01C(a1, a2, &v31);
    v10 = 0xEE00455649544341;
    *(v9 + 12) = 2080;
    v11 = 0x80000001004DDDA0;
    v12 = 0xD000000000000018;
    if (a3 == 4)
    {
      v13 = 0x5F454D5F4F545541;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (a3 != 4)
    {
      v10 = 0x80000001004DDDD0;
    }

    if (a3 != 3)
    {
      v12 = v13;
      v11 = v10;
    }

    v14 = 0x80000001004DDD40;
    v15 = 0x80000001004DDD60;
    v16 = 0xD000000000000013;
    if (a3 == 1)
    {
      v16 = 0xD000000000000017;
    }

    else
    {
      v15 = 0x80000001004DDD80;
    }

    if (a3)
    {
      v14 = v15;
    }

    else
    {
      v16 = 0xD000000000000014;
    }

    if (a3 <= 2u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (a3 <= 2u)
    {
      v18 = v14;
    }

    else
    {
      v18 = v11;
    }

    v19 = sub_10000D01C(v17, v18, &v31);

    *(v9 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "LiveLocations: Received incoming request for live from %s with command %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a3 == 2)
  {

    sub_1000C1590(a1, a2, 1702259052, 0xE400000000000000, 0);
  }

  else if (a3)
  {
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      v23 = 0xEE00455649544341;
      *v21 = 136315138;
      v24 = 0x80000001004DDDA0;
      v25 = 0xD000000000000018;
      if (a3 == 4)
      {
        v26 = 0x5F454D5F4F545541;
      }

      else
      {
        v26 = 0xD000000000000010;
      }

      if (a3 != 4)
      {
        v23 = 0x80000001004DDDD0;
      }

      if (a3 != 3)
      {
        v25 = v26;
        v24 = v23;
      }

      if (a3 <= 2u)
      {
        v27 = 0xD000000000000017;
      }

      else
      {
        v27 = v25;
      }

      if (a3 <= 2u)
      {
        v28 = 0x80000001004DDD60;
      }

      else
      {
        v28 = v24;
      }

      v29 = sub_10000D01C(v27, v28, &v31);

      *(v21 + 4) = v29;
      _os_log_impl(&_mh_execute_header, oslog, v20, "LiveLocations: Invalid command specified %s", v21, 0xCu);
      sub_100004984(v22);
    }
  }

  else
  {
    sub_1000A82D8(a1, a2, 1702259052, 0xE400000000000000, 0);
  }
}

void sub_1000B9D60(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFB98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000D01C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "CheckAndFetchConfig: Error fetching config when feature disabled to check if that has changed %s", v4, 0xCu);
      sub_100004984(v5);
    }

    else
    {
    }
  }

  Transaction.capture()();
}

BOOL sub_1000B9F08(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

Swift::Int sub_1000BA000(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10023C9F0(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 11))
          {
            break;
          }

          v13 = v12 - 64;
          v14 = *(v12 + 40);
          v27 = *(v12 + 24);
          v28 = v14;
          v15 = *(v12 + 56);
          v16 = *(v12 + 72);
          v17 = *(v12 + 88);
          v32 = *(v12 + 13);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          *(v12 + 13) = *(v12 + 2);
          v18 = *(v12 - 1);
          *(v12 + 88) = *v12;
          v19 = *(v12 - 3);
          v20 = *(v12 - 2);
          *(v12 + 72) = v18;
          *(v12 + 56) = v20;
          *(v12 + 24) = *(v12 - 4);
          *(v12 + 40) = v19;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *(v12 + 2) = v32;
          *(v13 + 3) = v23;
          *v12 = v24;
          *(v13 + 2) = v22;
          v12 -= 88;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 88;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v27 = v7 + 4;
    *(&v27 + 1) = v6;
    sub_1000BA1A8(&v27, v26, v33, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000BA1A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10023C584(v7);
      v7 = result;
    }

    v80 = v7 + 2;
    v81 = v7[2];
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1000BA7D8((*a3 + 88 * *v82), (*a3 + 88 * *v84), (*a3 + 88 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 88 * v6 + 64);
      v10 = 88 * v8;
      v11 = *a3 + 88 * v8;
      v12 = *(v11 + 64);
      v13 = v8 + 2;
      v14 = (v11 + 240);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 11;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 88 * v6 - 88;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v100 = *(v22 + v10 + 80);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x58uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *(v21 + 80) = v100;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 88;
          v10 += 88;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FCD18(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v33 = v7[2];
    v32 = v7[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_1001FCD18((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v34;
    v35 = v7 + 4;
    v36 = &v7[2 * v33 + 4];
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = v7[4];
          v39 = v7[5];
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[2 * v34];
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[2 * v37];
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[2 * v34];
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = &v35[2 * v37 - 2];
        v76 = *v75;
        v77 = &v35[2 * v37];
        v78 = v77[1];
        sub_1000BA7D8((*a3 + 88 * *v75), (*a3 + 88 * *v77), (*a3 + 88 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > v7[2])
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = v7[2];
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove(&v35[2 * v37], v77 + 2, 16 * (v79 - 1 - v37));
        v7[2] = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[2 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[2 * v34];
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[2 * v37];
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 88 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 24) >= *(v27 + 64))
    {
LABEL_29:
      ++v6;
      v24 += 88;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 88;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v101 = *(v27 + 80);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 40);
    *(v27 + 32) = *(v27 - 56);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 24);
    *(v27 + 80) = *(v27 - 8);
    v30 = *(v27 - 72);
    *v27 = *(v27 - 88);
    *(v27 + 16) = v30;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    *(v28 + 64) = v99;
    *(v28 + 80) = v101;
    v27 -= 88;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000BA7D8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[11 * v9] <= a4)
    {
      memmove(a4, __dst, 88 * v9);
    }

    v12 = &v4[11 * v9];
    if (v8 < 88)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[8] < v6[8])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 11;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 11;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 11;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[11 * v11] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v12 = &v4[11 * v11];
  if (v10 >= 88 && v6 > v7)
  {
LABEL_20:
    v5 -= 11;
    do
    {
      v15 = v5 + 11;
      if (*(v6 - 3) < *(v12 - 3))
      {
        v17 = v6 - 11;
        if (v15 != v6)
        {
          memmove(v5, v6 - 11, 0x58uLL);
        }

        if (v12 <= v4 || (v6 -= 11, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 11);
      if (v15 != v12)
      {
        memmove(v5, v12 - 11, 0x58uLL);
      }

      v5 -= 11;
      v12 -= 11;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[11 * v18])
  {
    memmove(v6, v4, 88 * v18);
  }

  return 1;
}

unint64_t sub_1000BAA50(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000BAADC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for SecureLocation();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = *(v8 + 72);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v20;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    sub_1000CA264(v13, v10, type metadata accessor for SecureLocation);
    if (*(v10 + 2) == 0.0 && *(v10 + 3) == 0.0)
    {
      sub_1000CA2CC(v10, type metadata accessor for SecureLocation);
    }

    else
    {
      sub_1001AC480(*v10, *(v10 + 1));

      sub_1000C9DE8(v10, v7, type metadata accessor for SecureLocation);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100239440(0, v14[2] + 1, 1);
        v14 = v22;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        sub_100239440(v16 > 1, v17 + 1, 1);
        v14 = v22;
      }

      v14[2] = v17 + 1;
      sub_1000C9DE8(v7, v14 + v20 + v17 * v12, type metadata accessor for SecureLocation);
    }

    v13 += v12;
    --v11;
  }

  while (v11);
  return v14;
}

uint64_t sub_1000BAD18(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100011AEC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100011AEC(v11, v11[3]);
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v5;
    v8 = v6 == 0x76697463616F7270 && v5 == 0xE900000000000065;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      if (v6 == 0x776F6C6C616873 && v7 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 1;
        goto LABEL_9;
      }

      if (v6 == 1702259052 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 2;
        goto LABEL_9;
      }

      if (v6 == 0xD000000000000013 && 0x80000001004DDB80 == v7)
      {

        v4 = 5;
        goto LABEL_9;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        v4 = 5;
        goto LABEL_9;
      }
    }

    v4 = 0;
LABEL_9:
    sub_100004984(v11);
  }

  sub_100004984(a1);
  return v4;
}

uint64_t sub_1000BAF2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for SecureLocationsCoordinator()
{
  result = qword_1005A9918;
  if (!qword_1005A9918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BAFD0()
{
  sub_1000BB124();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000BB17C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000BB124()
{
  if (!qword_1005A9928)
  {
    type metadata accessor for ContinuousClock.Instant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9928);
    }
  }
}

void sub_1000BB17C()
{
  if (!qword_1005A9930)
  {
    sub_10004B610(&unk_1005A9938, &unk_1004C3080);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9930);
    }
  }
}

__n128 sub_1000BB1F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000BB21C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BB264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BB2D4()
{
  result = qword_1005A9DA0;
  if (!qword_1005A9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9DA0);
  }

  return result;
}

id sub_1000BB328()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FetchConfig: simulateFeatureDisabled is ON. secureLocations will be disabled";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFB98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FetchConfig: simulateFeatureDisabled is false";
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t sub_1000BB4F0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v34[-v7];
  v9 = __chkstk_darwin(v6);
  v11 = &v34[-v10];
  __chkstk_darwin(v9);
  v13 = &v34[-v12];
  sub_1000BAA50(0x20000000000001uLL);
  sub_1000BB328();
  static Date.trustedNow.getter(v13);
  Date.addingTimeInterval(_:)();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);
  v15 = v1[2];
  v15(v8, v11, v0);
  v15(v5, v13, v0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v11;
    v19 = v18;
    v37 = swift_slowAlloc();
    v40 = v37;
    *v19 = 136315394;
    sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date);
    v38 = v13;
    v36 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v17;
    v22 = v21;
    v23 = v1[1];
    v23(v8, v0);
    v24 = sub_10000D01C(v20, v22, &v40);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v13 = v38;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v23(v5, v0);
    v28 = sub_10000D01C(v25, v27, &v40);

    *(v19 + 14) = v28;
    v29 = v36;
    _os_log_impl(&_mh_execute_header, v36, v35, "CheckAndFetchConfig: Setting up next check data %s  CurrentTime %s", v19, 0x16u);
    swift_arrayDestroy();

    v11 = v39;
  }

  else
  {

    v23 = v1[1];
    v23(v5, v0);
    v23(v8, v0);
  }

  v30 = [objc_opt_self() standardUserDefaults];
  Date.timeIntervalSince1970.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v32 = String._bridgeToObjectiveC()();
  [v30 setValue:isa forKey:v32];

  v23(v11, v0);
  return (v23)(v13, v0);
}

uint64_t sub_1000BB990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v42 = a5;
  v43 = a6;
  v39[1] = a3;
  v40 = a4;
  v41 = a1;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v39 - v9;
  v11 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v39 - v13;
  v15 = type metadata accessor for Credentials(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v39 - v20;
  v22 = qword_1005A8098;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v24 = sub_10000A6F0(v23, qword_1005AF7C0);
  os_unfair_lock_lock(v24);
  sub_100005F04(v24 + *(v23 + 28), v14, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v24);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100002CE0(v14, &qword_1005A9DA8, &unk_1004D1130);
    v45 = 0;
    v46 = 0;
    v47 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005DFB98);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      v45 = 0;
      *v28 = 136315138;
      v46 = 0;
      v47 = 2;
      v30 = String.init<A>(describing:)();
      v32 = sub_10000D01C(v30, v31, &v44);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "FetchConfig - failed to get credentials error %s", v28, 0xCu);
      sub_100004984(v29);
    }

    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 2;
    v43();
  }

  else
  {
    sub_1000C9DE8(v14, v21, type metadata accessor for Credentials);
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    sub_1000CA264(v21, v19, type metadata accessor for Credentials);
    v35 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v41;
    sub_1000C9DE8(v19, v36 + v35, type metadata accessor for Credentials);
    v37 = (v36 + ((v17 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = v40;
    v37[1] = a2;

    sub_1001D7F30(0, 0, v10, v42, v36);

    sub_1000CA2CC(v21, type metadata accessor for Credentials);
  }
}

uint64_t sub_1000BBE94(uint64_t a1)
{
  v2 = type metadata accessor for EncryptedLocation(0);
  v3 = *(v2 + 24);
  v4 = (a1 + *(v2 + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_100005F6C(*v4, v6);
  Date.timeIntervalSinceReferenceDate.getter();
  v8 = v7;
  if (*(a1 + 16) == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (*(a1 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  sub_10004B564(&qword_1005A9F38, &unk_1004C34C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C1900;
  *(v13 + 32) = v5;
  *(v13 + 40) = v6;
  *(v13 + 48) = v8;
  *(v13 + 56) = v10;
  sub_10004B564(&qword_1005A9F40, &unk_1004C4C00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C1900;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 80) = v13;
  v15 = type metadata accessor for JSONEncoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_100005F6C(v5, v6);
  sub_100005F6C(v11, v12);
  sub_100005F6C(v11, v12);

  JSONEncoder.init()();
  sub_1000C9E50();
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000049D0(v5, v6);
  sub_1000049D0(v11, v12);

  return v18;
}

unint64_t sub_1000BC07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005A9E50, &qword_1004C33B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005A9E58, &qword_1004C33C0);
      v5 = v13;
      v6 = v14;
      result = sub_100273E68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004B064(&v15, (v3[7] + 32 * result));
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

void sub_1000BC1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t isEscapingClosureAtFileLocation, void *a5, void *a6)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  v41 = a5;
  swift_errorRetain();
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFB98);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v13 = String.init<A>(describing:)();
      v15 = sub_10000D01C(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error while resubscribing after receiving key update %s", v11, 0xCu);
      sub_100004984(v12);
    }

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v18 = 136446466;
    if (a3 > 2)
    {
      switch(a3)
      {
        case 3:
          v19 = 0xE500000000000000;
          v20 = 0x72656E776FLL;
          break;
        case 4:
          v19 = 0xEE00657669746361;
          v20 = 0x6F725072656E776FLL;
          break;
        case 5:
          v19 = 0x80000001004DDB80;
          v20 = 0xD000000000000013;
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v19 = 0xE700000000000000;
        v20 = 0x776F6C6C616873;
        goto LABEL_20;
      }

      if (a3 != 2)
      {
LABEL_17:
        v19 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      v19 = 0xE400000000000000;
      v20 = 1702259052;
    }

    else
    {
      v19 = 0xE900000000000065;
      v20 = 0x76697463616F7270;
    }

LABEL_20:
    v21 = sub_10000D01C(v20, v19, aBlock);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v22 = String.init<A>(describing:)();
    v24 = sub_10000D01C(v22, v23, aBlock);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Error while resubscribing in %{public}s after receiving key update %s", v18, 0x16u);
    swift_arrayDestroy();

LABEL_21:

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = Array.description.getter();
      v31 = sub_10000D01C(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "submit subscription error for %s", v27, 0xCu);
      sub_100004984(v28);
    }

    a5 = v41;
LABEL_24:
    v32 = *(isEscapingClosureAtFileLocation + 16);
    if (!v32)
    {
      break;
    }

    v33 = a5[6];
    v41 = v44;
    v34 = (isEscapingClosureAtFileLocation + 40);
    while (1)
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      v37 = *(v33 + 16);
      v38 = swift_allocObject();
      v38[2] = v33;
      v38[3] = v35;
      v38[4] = v36;
      v38[5] = a6;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_1000CAB54;
      *(a3 + 24) = v38;
      v44[2] = sub_1000CAA0C;
      v44[3] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v44[0] = sub_10013EC94;
      v44[1] = &unk_10058E5E8;
      v39 = _Block_copy(aBlock);

      v40 = a6;

      dispatch_sync(v37, v39);
      _Block_release(v39);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v34 += 2;
      if (!--v32)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_28:
  Transaction.capture()();
}

void sub_1000BC7AC(uint64_t a1, void *a2, int a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v72 = a4;
  v80 = a3;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  __chkstk_darwin(v12);
  v75 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v76);
  v73 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v68 - v19;
  v21 = type metadata accessor for SecureLocationsConfig();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v79 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v25 = qword_1005A7EE8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000A6F0(v26, qword_1005DFB98);

  v28 = a2;
  v81 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v71 = v24;
    v32 = v31;
    v33 = swift_slowAlloc();
    v70 = a7;
    v68 = v33;
    aBlock[0] = v33;
    *v32 = 134218754;
    *(v32 + 4) = *(a1 + 16);

    *(v32 + 12) = 2082;
    v34 = [v28 clientApp];
    v35 = a5;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v28;
    v38 = v37;

    v39 = v36;
    a5 = v35;
    v40 = sub_10000D01C(v39, v38, aBlock);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2080;
    v41 = Array.description.getter();
    v43 = sub_10000D01C(v41, v42, aBlock);

    *(v32 + 24) = v43;
    v28 = v69;
    *(v32 + 32) = 1024;
    *(v32 + 34) = v80 & 1;
    _os_log_impl(&_mh_execute_header, v29, v30, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v32, 0x26u);
    swift_arrayDestroy();

    v24 = v71;
  }

  else
  {
  }

  v44 = a1;
  if (sub_1000BB328())
  {
    goto LABEL_12;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v45 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v45);
  v46 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v47 = v79;
  sub_1000CA264(v45 + *(v46 + 28), v79, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v45);

  v48 = *(v47 + 8);
  sub_1000CA2CC(v47, type metadata accessor for SecureLocationsConfig);
  if ((v48 & 1) == 0)
  {
LABEL_12:
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v59, 2u);
    }

    [v28 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v83 = 6;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v60 = aBlock[0];
    v61 = type metadata accessor for SecureLocation();
    (*(*(v61 - 8) + 56))(v20, 1, 1, v61);
    a5(v20, v60);
    sub_100002CE0(v20, &unk_1005AB3F0, &qword_1004C4BF0);
    Transaction.capture()();
  }

  else if (*(v44 + 16))
  {
    v49 = v72;
    v50 = *(v72 + 320);
    v51 = swift_allocObject();
    *(v51 + 16) = v44;
    *(v51 + 24) = v49;
    *(v51 + 32) = v28;
    *(v51 + 40) = v80 & 1;
    *(v51 + 48) = sub_1000C9208;
    *(v51 + 56) = v24;
    aBlock[4] = sub_1000CA9B4;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058DC60;
    v52 = _Block_copy(aBlock);

    v53 = v28;

    v54 = v73;
    static DispatchQoS.unspecified.getter();
    v83 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v55 = v75;
    v56 = v78;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);
    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
  }

  else
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "No findMyIds specified for SubscribeAndFetch - not proceeding", v64, 2u);
    }

    v65 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    [v28 subscriptionMode];
    v66 = type metadata accessor for SecureLocation();
    (*(*(v66 - 8) + 56))(v20, 1, 1, v66);
    v67 = v65;
    a5(v20, v65);
    sub_100002CE0(v20, &unk_1005AB3F0, &qword_1004C4BF0);
    Transaction.capture()();
  }
}

void sub_1000BD148(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v65 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v9);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureLocationsConfig();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1005A7EE8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000A6F0(v19, qword_1005DFB98);

  v21 = a2;
  v66 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v59 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v57 = v17;
    aBlock[0] = v26;
    *v25 = 134218754;
    *(v25 + 4) = *(a1 + 16);

    *(v25 + 12) = 2082;
    v27 = [v21 clientApp];
    v58 = a5;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v21;
    v31 = v9;
    v33 = v32;

    v34 = sub_10000D01C(v29, v33, aBlock);
    v9 = v31;
    v21 = v30;

    *(v25 + 14) = v34;
    *(v25 + 22) = 2080;
    v35 = Array.description.getter();
    v37 = sub_10000D01C(v35, v36, aBlock);

    *(v25 + 24) = v37;
    a5 = v58;
    *(v25 + 32) = 1024;
    *(v25 + 34) = v65 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v25, 0x26u);
    swift_arrayDestroy();
    v17 = v57;

    a4 = v59;

    if (sub_1000BB328())
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (sub_1000BB328())
    {
LABEL_12:
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v50, 2u);
      }

      [v21 subscriptionMode];
      type metadata accessor for SecureLocationsError(0);
      v68 = 6;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v51 = aBlock[0];
      Transaction.capture()();

      goto LABEL_15;
    }
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v38 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v38);
  v39 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v38 + *(v39 + 28), v17, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v38);

  v40 = v17[8];
  sub_1000CA2CC(v17, type metadata accessor for SecureLocationsConfig);
  if ((v40 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (*(a1 + 16))
  {
    v41 = v21;
    v42 = *(a4 + 320);
    v43 = swift_allocObject();
    *(v43 + 16) = a1;
    *(v43 + 24) = a4;
    *(v43 + 32) = v41;
    *(v43 + 40) = v65 & 1;
    *(v43 + 48) = j___s10FindMyBase11TransactionC7captureyyF;
    *(v43 + 56) = a5;
    aBlock[4] = sub_1000C8540;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058D300;
    v44 = _Block_copy(aBlock);

    v45 = v41;

    v46 = v61;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v47 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);
    (*(v60 + 8))(v47, v9);
    (*(v62 + 8))(v46, v64);

    return;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "No findMyIds specified for SubscribeAndFetch - not proceeding", v54, 2u);
  }

  v55 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
  [v21 subscriptionMode];
  v51 = v55;
  Transaction.capture()();

LABEL_15:
}

uint64_t sub_1000BD97C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [a2 clientApp];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0xD000000000000017 && 0x80000001004DFCF0 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19 = *(a3 + 16);
  v20 = swift_allocObject();
  v21 = v18 & 1;
  *(v20 + 16) = v21;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a2;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;

  v22 = a2;

  sub_1000FE000(a1, v21, sub_1000CAB10, v20);
}

uint64_t sub_1000BDAE4(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v128 = a7;
  v130 = a6;
  v129 = a5;
  v132 = a4;
  v149 = a2;
  v131 = a9;
  v134 = type metadata accessor for SecureLocation();
  v12 = *(v134 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v134);
  v16 = (&v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v155 = (&v125 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = &v125 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v125 - v23;
  __chkstk_darwin(v22);
  v147 = &v125 - v25;
  v26 = type metadata accessor for SecureLocationsConfig();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = (&v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = a3;
  if (*(*(a3 + 120) + 16))
  {
    v126 = a8;
    if (qword_1005A7EF8 != -1)
    {
LABEL_67:
      swift_once();
    }

    v30 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v30);
    v31 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v30 + *(v31 + 28), v29, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v30);

    v32 = v29[2];
    sub_1000CA2CC(v29, type metadata accessor for SecureLocationsConfig);
    v140 = *(a1 + 16);
    if (!v140)
    {
      v143 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v34 = 0;
    v35 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v143 = _swiftEmptyArrayStorage;
    v138 = v35;
    v139 = a1 + v35;
    v36 = *(v12 + 72);
    *&v33 = 136315906;
    v145 = v33;
    *&v33 = 136315650;
    v144 = v33;
    *&v33 = 136315394;
    v127 = v33;
    v37 = v147;
    v133 = v16;
    v136 = v21;
    v135 = v24;
    v137 = v36;
    while (1)
    {
      v142 = v34;
      sub_1000CA264(v139 + v36 * v34, v37, type metadata accessor for SecureLocation);
      sub_1000CA264(v37, v24, type metadata accessor for SecureLocation);
      v38 = *(*(v141 + 120) + 16);
      if (!v38)
      {
        goto LABEL_44;
      }

      a1 = v37;

      v24 = 0;
      v148 = (v38 - 1);
      v40 = 32;
      v29 = v155;
      v16 = v39;
      v146 = v39;
      while (1)
      {
        v153 = v40;
        v41 = *(v16 + v40 + 32);
        v42 = *(v16 + v40 + 48);
        v43 = *(v16 + v40 + 80);
        v160 = *(v16 + v40 + 64);
        v44 = *(v16 + v40 + 16);
        v158[0] = *(v16 + v40);
        v158[1] = v44;
        v161 = v43;
        v158[2] = v41;
        v159 = v42;
        v154 = *(&v160 + 1);
        v45 = *(&v44 + 1);
        v21 = v44;
        sub_1000C81D0(v158, v157);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        v12 = sub_10000A6F0(v46, qword_1005DFB98);
        sub_1000CA264(a1, v29, type metadata accessor for SecureLocation);
        sub_1000C81D0(v158, v157);
        v152 = v12;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.info.getter();
        sub_1000C822C(v158);
        v49 = os_log_type_enabled(v47, v48);
        v151 = v45;
        v150 = v21;
        if (v49)
        {
          v50 = v21;
          v21 = swift_slowAlloc();
          v157[0] = swift_slowAlloc();
          *v21 = v145;

          v51 = sub_10000D01C(v50, v45, v157);

          *(v21 + 4) = v51;
          *(v21 + 6) = 2080;
          if (v43)
          {
            v52 = v154;
          }

          else
          {
            v52 = 1818848800;
          }

          if (v43)
          {
            v53 = v43;
          }

          else
          {
            v53 = 0xE400000000000000;
          }

          v54 = v160;

          v55 = sub_10000D01C(v52, v53, v157);

          *(v21 + 14) = v55;
          *(v21 + 11) = 2080;
          v16 = v146;
          v56 = *v155;
          v57 = v155[1];

          sub_1000CA2CC(v155, type metadata accessor for SecureLocation);
          v58 = sub_10000D01C(v56, v57, v157);

          *(v21 + 3) = v58;
          a1 = v147;
          *(v21 + 16) = 2048;
          *(v21 + 34) = v54;
          _os_log_impl(&_mh_execute_header, v47, v48, "LabelledLocations Checking label %s %s %s %f", v21, 0x2Au);
          swift_arrayDestroy();
          v29 = v155;

          if (v43)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v29, type metadata accessor for SecureLocation);
          if (v43)
          {
            goto LABEL_30;
          }
        }

        if (v149)
        {
          break;
        }

LABEL_30:
        if (v149 & 1) == 0 && v43 && (v154 == *a1 && v43 == *(a1 + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v158);
LABEL_36:
        if (v148 == v24)
        {

          v21 = v136;
          v24 = v135;
          goto LABEL_44;
        }

        ++v24;
        v40 = v153 + 88;
        if (v24 >= v16[2])
        {
          __break(1u);
          goto LABEL_67;
        }
      }

      v59 = [objc_allocWithZone(CLLocation) initWithLatitude:v159 longitude:?];
      v60 = [objc_allocWithZone(CLLocation) initWithLatitude:*(a1 + 24) longitude:*(a1 + 16)];
      [v59 distanceFromLocation:v60];
      v62 = v61;
      sub_1000C81D0(v158, v157);
      v12 = v152;
      v21 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      sub_1000C822C(v158);
      if (os_log_type_enabled(v21, v63))
      {
        v64 = swift_slowAlloc();
        v157[0] = swift_slowAlloc();
        *v64 = v144;
        v65 = v151;

        v12 = v60;
        v66 = v59;
        v67 = sub_10000D01C(v150, v65, v157);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2080;
        if (v43)
        {
          v68 = v154;
        }

        else
        {
          v68 = 0x206C696E20;
        }

        if (v43)
        {
          v69 = v43;
        }

        else
        {
          v69 = 0xE500000000000000;
        }

        v70 = v68;
        v16 = v146;
        v71 = sub_10000D01C(v70, v69, v157);
        v59 = v66;
        v60 = v12;

        *(v64 + 14) = v71;
        *(v64 + 22) = 2048;
        *(v64 + 24) = v62;
        _os_log_impl(&_mh_execute_header, v21, v63, "LabelledLocations %s %s Label Distance %f", v64, 0x20u);
        swift_arrayDestroy();
        a1 = v147;

        v29 = v155;
      }

      if (v62 > v32)
      {
        sub_1000C822C(v158);

        goto LABEL_36;
      }

      v72 = v151;

      sub_1000C822C(v158);
      v24 = v135;
      swift_beginAccess();
      v73 = &v24[*(v134 + 64)];
      v74 = *(v73 + 1);
      v75 = v150;
      *v73 = v150;
      *(v73 + 1) = v72;

      v76 = v133;
      sub_1000CA264(a1, v133, type metadata accessor for SecureLocation);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *v79 = v127;
        v157[0] = v75;
        v157[1] = v72;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v80 = String.init<A>(describing:)();
        v82 = sub_10000D01C(v80, v81, &v156);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2080;
        v83 = *v76;
        v84 = v76[1];

        sub_1000CA2CC(v76, type metadata accessor for SecureLocation);
        v85 = sub_10000D01C(v83, v84, &v156);

        *(v79 + 14) = v85;
        _os_log_impl(&_mh_execute_header, v77, v78, "LabelledLocations Adding label %s to location %s", v79, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v76, type metadata accessor for SecureLocation);
      }

      v21 = v136;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v24, v21, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_1001FCE44(0, v143[2] + 1, 1, v143);
      }

      v87 = v143[2];
      v86 = v143[3];
      if (v87 >= v86 >> 1)
      {
        v143 = sub_1001FCE44(v86 > 1, v87 + 1, 1, v143);
      }

      v88 = v142 + 1;
      v37 = v147;
      sub_1000CA2CC(v147, type metadata accessor for SecureLocation);
      v89 = v143;
      v143[2] = v87 + 1;
      v34 = v88;
      v90 = v89 + v138 + v87 * v137;
      v36 = v137;
      sub_1000C9DE8(v21, v90, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v24, type metadata accessor for SecureLocation);
      if (v88 == v140)
      {
LABEL_58:
        v101 = [v132 clientApp];
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        if (v102 == 0xD000000000000017 && 0x80000001004DFCF0 == v104)
        {
          v105 = 1;
        }

        else
        {
          v105 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v106 = v126;

        v107 = v129;
        v108 = *(v129 + 16);
        v109 = swift_allocObject();
        v110 = v105 & 1;
        *(v109 + 16) = v110;
        v111 = v130;
        *(v109 + 24) = v107;
        *(v109 + 32) = v111;
        v112 = v132;
        v113 = v128;
        *(v109 + 40) = v132;
        *(v109 + 48) = v113;
        v114 = v131;
        *(v109 + 56) = v106;
        *(v109 + 64) = v114;

        v115 = v112;

        sub_1000FE000(v143, v110, sub_1000C9C4C, v109);
      }
    }
  }

  v91 = a8;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_10000A6F0(v92, qword_1005DFB98);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "LabelledLocations - No labels - nothing to resolve", v95, 2u);
  }

  v96 = [v132 clientApp];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  if (v97 == 0xD000000000000017 && 0x80000001004DFCF0 == v99)
  {
    v100 = 1;
  }

  else
  {
    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v117 = v129;
  v118 = *(v129 + 16);
  v119 = swift_allocObject();
  v120 = v100 & 1;
  *(v119 + 16) = v120;
  v121 = v130;
  *(v119 + 24) = v117;
  *(v119 + 32) = v121;
  v122 = v132;
  v123 = v128;
  *(v119 + 40) = v132;
  *(v119 + 48) = v123;
  *(v119 + 56) = v91;
  *(v119 + 64) = v131;

  v124 = v122;

  sub_1000FE000(a1, v120, sub_1000CAB10, v119);
}

void sub_1000BEB1C()
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005A98B8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7[0] = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004DFC90, v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  v5 = [objc_opt_self() sharedInstance];
  v7[4] = sub_1000A9418;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000A8DE8;
  v7[3] = &unk_10058DEB8;
  v6 = _Block_copy(v7);
  [v5 stopLocationMonitoring:v6];
  _Block_release(v6);
}

void sub_1000BECFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v103 = a6;
  v102 = a5;
  v101 = a4;
  v120 = a2;
  v105 = type metadata accessor for SecureLocation();
  v8 = *(v105 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v105);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = (&v100 - v14);
  v16 = __chkstk_darwin(v13);
  v106 = &v100 - v17;
  v18 = __chkstk_darwin(v16);
  v107 = &v100 - v19;
  __chkstk_darwin(v18);
  v21 = &v100 - v20;
  v22 = type metadata accessor for SecureLocationsConfig();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a3;
  if (*(*(a3 + 120) + 16))
  {
    v104 = v12;
    if (qword_1005A7EF8 != -1)
    {
LABEL_59:
      swift_once();
    }

    v26 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v26);
    v27 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v26 + *(v27 + 28), v25, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v26);

    v28 = *(v25 + 2);
    sub_1000CA2CC(v25, type metadata accessor for SecureLocationsConfig);
    v111 = *(a1 + 16);
    if (!v111)
    {
      v114 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v114 = _swiftEmptyArrayStorage;
    v109 = v30;
    v110 = a1 + v30;
    v31 = 0;
    v32 = *(v8 + 72);
    *&v29 = 136315906;
    v116 = v29;
    *&v29 = 136315650;
    v115 = v29;
    *&v29 = 136315394;
    v100 = v29;
    v126 = v15;
    v33 = v106;
    v34 = v107;
    v117 = v21;
    v108 = v32;
    while (1)
    {
      v113 = v31;
      sub_1000CA264(v110 + v32 * v31, v21, type metadata accessor for SecureLocation);
      sub_1000CA264(v21, v34, type metadata accessor for SecureLocation);
      v35 = *(v112 + 120);
      v36 = *(v35 + 16);
      if (!v36)
      {
        goto LABEL_44;
      }

      v37 = *(v112 + 120);

      v38 = 0;
      v119 = v36 - 1;
      v39 = 32;
      v118 = v35;
      while (1)
      {
        v124 = v39;
        v40 = *(v35 + v39 + 32);
        v41 = *(v35 + v39 + 48);
        v42 = *(v35 + v39 + 80);
        v131 = *(v35 + v39 + 64);
        v43 = *(v35 + v39 + 16);
        v129[0] = *(v35 + v39);
        v129[1] = v43;
        v132 = v42;
        v129[2] = v40;
        v130 = v41;
        v125 = *(&v131 + 1);
        a1 = *(&v43 + 1);
        v25 = v43;
        sub_1000C81D0(v129, v128);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        v8 = sub_10000A6F0(v44, qword_1005DFB98);
        sub_1000CA264(v21, v15, type metadata accessor for SecureLocation);
        sub_1000C81D0(v129, v128);
        v123 = v8;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        sub_1000C822C(v129);
        v47 = os_log_type_enabled(v45, v46);
        v122 = a1;
        v121 = v25;
        if (v47)
        {
          v48 = v25;
          v25 = swift_slowAlloc();
          v128[0] = swift_slowAlloc();
          *v25 = v116;

          v49 = sub_10000D01C(v48, a1, v128);

          *(v25 + 4) = v49;
          *(v25 + 6) = 2080;
          if (v42)
          {
            v50 = v125;
          }

          else
          {
            v50 = 1818848800;
          }

          if (v42)
          {
            v51 = v42;
          }

          else
          {
            v51 = 0xE400000000000000;
          }

          v52 = v131;

          v53 = sub_10000D01C(v50, v51, v128);

          *(v25 + 14) = v53;
          *(v25 + 11) = 2080;
          v35 = v118;
          v54 = *v126;
          v55 = v126[1];

          sub_1000CA2CC(v126, type metadata accessor for SecureLocation);
          a1 = sub_10000D01C(v54, v55, v128);
          v21 = v117;

          *(v25 + 3) = a1;
          *(v25 + 16) = 2048;
          *(v25 + 34) = v52;
          _os_log_impl(&_mh_execute_header, v45, v46, "LabelledLocations Checking label %s %s %s %f", v25, 0x2Au);
          swift_arrayDestroy();
          v15 = v126;

          if (v42)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v15, type metadata accessor for SecureLocation);
          if (v42)
          {
            goto LABEL_30;
          }
        }

        if (v120)
        {
          break;
        }

LABEL_30:
        if (v120 & 1) == 0 && v42 && (v125 == *v21 && v42 == *(v21 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v129);
LABEL_36:
        if (v119 == v38)
        {

          goto LABEL_43;
        }

        ++v38;
        v39 = v124 + 88;
        if (v38 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

      v56 = [objc_allocWithZone(CLLocation) initWithLatitude:v130 longitude:?];
      v57 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v21 + 3) longitude:*(v21 + 2)];
      [v56 distanceFromLocation:v57];
      v59 = v58;
      sub_1000C81D0(v129, v128);
      v8 = v123;
      v25 = Logger.logObject.getter();
      a1 = static os_log_type_t.info.getter();
      sub_1000C822C(v129);
      if (os_log_type_enabled(v25, a1))
      {
        v60 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v128[0] = v8;
        *v60 = v115;
        v61 = v122;

        v62 = v57;
        v63 = v56;
        v64 = sub_10000D01C(v121, v61, v128);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2080;
        if (v42)
        {
          v65 = v125;
        }

        else
        {
          v65 = 0x206C696E20;
        }

        if (v42)
        {
          v66 = v42;
        }

        else
        {
          v66 = 0xE500000000000000;
        }

        v67 = v65;
        v56 = v63;
        v57 = v62;
        v68 = sub_10000D01C(v67, v66, v128);
        v35 = v118;

        *(v60 + 14) = v68;
        *(v60 + 22) = 2048;
        *(v60 + 24) = v59;
        _os_log_impl(&_mh_execute_header, v25, a1, "LabelledLocations %s %s Label Distance %f", v60, 0x20u);
        swift_arrayDestroy();
        v21 = v117;

        v15 = v126;
      }

      if (v59 > v28)
      {
        sub_1000C822C(v129);

        goto LABEL_36;
      }

      v69 = v122;

      sub_1000C822C(v129);
      v70 = v107;
      swift_beginAccess();
      v71 = &v70[*(v105 + 64)];
      v72 = v69;
      v73 = *(v71 + 1);
      v74 = v121;
      *v71 = v121;
      *(v71 + 1) = v72;

      v75 = v104;
      sub_1000CA264(v21, v104, type metadata accessor for SecureLocation);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v125 = v56;
        v79 = v74;
        v80 = v78;
        v127 = swift_slowAlloc();
        *v80 = v100;
        v128[0] = v79;
        v128[1] = v72;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v81 = String.init<A>(describing:)();
        v83 = v75;
        v84 = sub_10000D01C(v81, v82, &v127);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2080;
        v85 = *v83;
        v86 = v83[1];

        sub_1000CA2CC(v83, type metadata accessor for SecureLocation);
        v87 = sub_10000D01C(v85, v86, &v127);

        *(v80 + 14) = v87;
        _os_log_impl(&_mh_execute_header, v76, v77, "LabelledLocations Adding label %s to location %s", v80, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v75, type metadata accessor for SecureLocation);
      }

LABEL_43:
      v33 = v106;
      v34 = v107;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v34, v33, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_1001FCE44(0, v114[2] + 1, 1, v114);
      }

      v89 = v114[2];
      v88 = v114[3];
      if (v89 >= v88 >> 1)
      {
        v114 = sub_1001FCE44(v88 > 1, v89 + 1, 1, v114);
      }

      v90 = v113 + 1;
      sub_1000CA2CC(v21, type metadata accessor for SecureLocation);
      v91 = v114;
      v114[2] = v89 + 1;
      v31 = v90;
      v92 = v108;
      sub_1000C9DE8(v33, v91 + v109 + v89 * v108, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v34, type metadata accessor for SecureLocation);
      v32 = v92;
      if (v31 == v111)
      {
LABEL_58:
        sub_10009F5B4(v114, 0, v101, v102, v103);

        return;
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_10000A6F0(v93, qword_1005DFB98);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v94, v95, "LabelledLocations - No labels - nothing to resolve", v96, 2u);
  }

  v97 = v101;
  v98 = v102;
  v99 = v103;

  sub_10009F5B4(a1, 0, v97, v98, v99);
}

uint64_t sub_1000BFAFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v54 = a3;
  v55 = a2;
  v56 = a1;
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = &v49 - v11;
  v12 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for Credentials(0);
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  v18 = __chkstk_darwin(v16);
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v51 = &v49 - v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v53 = a5;
  v20[4] = a6;
  v21 = objc_opt_self();
  swift_retain_n();
  swift_retain_n();
  v22 = [v21 standardUserDefaults];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 BOOLForKey:v23];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000A6F0(v25, qword_1005DFB98);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v26, v27, "LabelledLocations Resolve Label isfetchdone %{BOOL}d", v28, 8u);
  }

  if (v24)
  {
    v29 = v54;
    if (!*(*(v54 + 120) + 16))
    {
      v57[0] = sub_1004B7128();

      sub_1000BA000(v57);

      v30 = *(v29 + 120);
      *(v29 + 120) = v57[0];
    }

    sub_1000BECFC(v56, v55 & 1, v29, a4, v53, a6);
    goto LABEL_13;
  }

  v31 = swift_allocObject();
  v32 = v54;
  v33 = v56;
  *(v31 + 16) = v54;
  *(v31 + 24) = v33;
  *(v31 + 32) = v55 & 1;
  *(v31 + 40) = sub_1000C9A6C;
  *(v31 + 48) = v20;
  v34 = qword_1005A8098;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v36 = sub_10000A6F0(v35, qword_1005AF7C0);
  os_unfair_lock_lock(v36);
  sub_100005F04(v36 + *(v35 + 28), v15, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v36);
  v37 = v50;
  if ((*(v50 + 48))(v15, 1, v16) == 1)
  {
    sub_100002CE0(v15, &qword_1005A9DA8, &unk_1004D1130);
    v57[0] = 0;
    v57[1] = 0;
    v58 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    sub_1000BECFC(v56, v55 & 1, v32, a4, v53, a6);

LABEL_13:
  }

  v39 = v15;
  v40 = v51;
  sub_1000C9DE8(v39, v51, type metadata accessor for Credentials);
  v41 = type metadata accessor for TaskPriority();
  (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
  v42 = v40;
  v43 = v37;
  v44 = v49;
  sub_1000CA264(v42, v49, type metadata accessor for Credentials);
  v45 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v46 = (v17 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v32;
  sub_1000C9DE8(v44, v47 + v45, type metadata accessor for Credentials);
  v48 = (v47 + v46);
  *v48 = sub_1000CAB30;
  v48[1] = v31;

  sub_1001D7F30(0, 0, v52, &unk_1004C3470, v47);

  sub_1000CA2CC(v51, type metadata accessor for Credentials);
}

void sub_1000C01C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a2;
  v24[2] = a3;
  v4 = type metadata accessor for SecureLocation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v13 = &off_1005A7000;
    *&v7 = 136315138;
    v26 = v7;
    do
    {
      if (v13[477] != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005DFB98);
      sub_1000CA264(v11, v9, type metadata accessor for SecureLocation);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v27 = v15;
        *v14 = v26;
        v16 = sub_10008BC88(v15);
        v17 = v9;
        v19 = v18;
        sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
        v20 = sub_10000D01C(v16, v19, &v27);
        v9 = v17;

        *(v14 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v22, v23, "Received location via push %s", v14, 0xCu);
        sub_100004984(v15);

        v13 = &off_1005A7000;
      }

      else
      {

        sub_1000CA2CC(v9, type metadata accessor for SecureLocation);
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  sub_1000AC58C(v25, 1);
  Transaction.capture()();
}

uint64_t sub_1000C0460(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v50 = &v46 - v9;
  v10 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Credentials(0);
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  v16 = __chkstk_darwin(v14);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v49 = &v46 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = objc_opt_self();
  swift_retain_n();
  swift_retain_n();
  v20 = [v19 standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 BOOLForKey:v21];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005DFB98);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v24, v25, "LabelledLocations Resolve Label isfetchdone %{BOOL}d", v26, 8u);
  }

  if (v22)
  {
    v27 = v51;
    if (!*(*(v51 + 120) + 16))
    {
      v54[0] = sub_1004B7128();

      sub_1000BA000(v54);

      v28 = *(v27 + 120);
      *(v27 + 120) = v54[0];
    }

    sub_1000C5524(v53, v52 & 1, v27, a4, a5, sub_1000C01C0);
    goto LABEL_13;
  }

  v29 = swift_allocObject();
  v30 = v51;
  v31 = v53;
  *(v29 + 16) = v51;
  *(v29 + 24) = v31;
  *(v29 + 32) = v52 & 1;
  *(v29 + 40) = sub_1000C8530;
  *(v29 + 48) = v18;
  v32 = qword_1005A8098;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v34 = sub_10000A6F0(v33, qword_1005AF7C0);
  os_unfair_lock_lock(v34);
  sub_100005F04(v34 + *(v33 + 28), v13, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v34);
  v35 = v48;
  if ((*(v48 + 48))(v13, 1, v14) == 1)
  {
    sub_100002CE0(v13, &qword_1005A9DA8, &unk_1004D1130);
    v54[0] = 0;
    v54[1] = 0;
    v55 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    sub_1000C5524(v53, v52 & 1, v30, a4, a5, sub_1000C01C0);

LABEL_13:
  }

  v37 = v13;
  v38 = v49;
  sub_1000C9DE8(v37, v49, type metadata accessor for Credentials);
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  v40 = v38;
  v41 = v35;
  v42 = v47;
  sub_1000CA264(v40, v47, type metadata accessor for Credentials);
  v43 = (*(v41 + 80) + 40) & ~*(v41 + 80);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v30;
  sub_1000C9DE8(v42, v44 + v43, type metadata accessor for Credentials);
  v45 = (v44 + ((v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_1000C8538;
  v45[1] = v29;

  sub_1001D7F30(0, 0, v50, &unk_1004C3380, v44);

  sub_1000CA2CC(v49, type metadata accessor for Credentials);
}

void sub_1000C0B38(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = a4;
  LODWORD(v93) = a2;
  v87 = *a4;
  v7 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v91 = v83 - v9;
  v10 = type metadata accessor for Credentials(0);
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  v12 = __chkstk_darwin(v10);
  v88 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v83 - v14;
  v16 = type metadata accessor for SecureLocation();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v83 - v21;
  v23 = qword_1005A7EE8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_10000A6F0(v24, qword_1005DFB98);
  sub_1000CA264(a1, v22, type metadata accessor for SecureLocation);
  sub_1000CA264(a1, v20, type metadata accessor for SecureLocation);
  v92 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v86 = v15;
    v29 = v28;
    v30 = swift_slowAlloc();
    v85 = v4;
    v83[1] = v30;
    v94 = v30;
    *v29 = 136446466;
    v31 = sub_10008AEA8(*&v22[*(v16 + 60)]);
    v32 = v16;
    v33 = a1;
    v35 = v34;
    v84 = a3;
    sub_1000CA2CC(v22, type metadata accessor for SecureLocation);
    v36 = sub_10000D01C(v31, v35, &v94);
    a1 = v33;
    v16 = v32;

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v38 = sub_10008BC88(v37);
    v40 = v39;
    a3 = v84;
    sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
    v41 = sub_10000D01C(v38, v40, &v94);

    *(v29 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v26, v27, "publishLocation with reason %{public}s location: %s", v29, 0x16u);
    swift_arrayDestroy();
    v4 = v85;

    v15 = v86;
  }

  else
  {

    sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v22, type metadata accessor for SecureLocation);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v42 = sub_100021BB4();

  if ((v42 & 1) == 0 && (v93 & 1) == 0)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Not a location publishing device. Not publishing location", v45, 2u);
    }

    sub_1000BEB1C();
    v46 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:12 userInfo:0];
LABEL_13:
    v47 = v46;
    Transaction.capture()();

    return;
  }

  if (*(a1 + *(v16 + 60)) == 8)
  {
    v48 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer;
    if (*(a3 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer))
    {
      v49 = *(a3 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer);

      DispatchTimer.cancel()();

      v50 = *(a3 + v48);
      *(a3 + v48) = 0;
    }

    v51 = *(a3 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
    sub_10010BEB0(a1);
    Transaction.capture()();
    goto LABEL_33;
  }

  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v52 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v53 = sub_10000A6F0(v52, qword_1005AF7C0);
  os_unfair_lock_lock(v53);
  v54 = v53 + *(v52 + 28);
  v55 = v91;
  sub_100005F04(v54, v91, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v53);
  if ((*(v89 + 48))(v55, 1, v90) == 1)
  {
    sub_100002CE0(v55, &qword_1005A9DA8, &unk_1004D1130);
    v94 = 0;
    v95 = 0;
    v96 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Unable to get credentials for server SubscribeAndFetch", v58, 2u);
    }

    v46 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    goto LABEL_13;
  }

  v59 = v88;
  sub_1000C9DE8(v55, v88, type metadata accessor for Credentials);
  sub_1000C9DE8(v59, v15, type metadata accessor for Credentials);
  v60 = [objc_opt_self() currentDevice];
  if (!v60 || (v61 = v60, v62 = [v60 uniqueDeviceIdentifier], v61, !v62))
  {
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to get device identifier for server SubscribeAndFetch", v77, 2u);
    }

    v78 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    goto LABEL_31;
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66 = *(a3 + 144);
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OS_dispatch_queue.sync<A>(execute:)();
  v67 = v95;
  if (!v95)
  {

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "No APS token. Not proceeding", v82, 2u);
    }

    v78 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:13 userInfo:0];
LABEL_31:
    v79 = v78;
    Transaction.capture()();

    goto LABEL_32;
  }

  v92 = v94;
  v68 = swift_allocBox();
  v70 = v69;
  sub_1000CA264(a1, v69, type metadata accessor for SecureLocation);
  v93 = 0;
  v71 = a1;
  v72 = v70[1];
  *v70 = v63;
  v70[1] = v65;

  __chkstk_darwin(v73);
  v83[-10] = a3;
  v83[-9] = v68;
  v83[-8] = j_j___s10FindMyBase11TransactionC7captureyyF;
  v83[-7] = v4;
  v74 = v92;
  v83[-6] = v71;
  v83[-5] = v74;
  v83[-4] = v67;
  v83[-3] = v63;
  v83[-2] = v65;
  v83[-1] = v15;
  static Transaction.named<A>(_:with:)();

LABEL_32:
  sub_1000CA2CC(v15, type metadata accessor for Credentials);
LABEL_33:
}

uint64_t sub_1000C1590(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005A98B8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v13 = 136446978;
    *(v13 + 4) = sub_10000D01C(0xD000000000000043, 0x80000001004DF550, v23);
    *(v13 + 12) = 2082;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    v22 = a5;
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_10000D01C(v14, v15, v23);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2082;
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0;
    }

    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v19 = sub_10000D01C(v17, v18, v23);

    *(v13 + 24) = v19;
    *(v13 + 32) = 1024;
    *(v13 + 34) = v22 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s findmyId: %{public}s policy: %{public}s stopMonitoringActivePolicy: %{BOOL}d.", v13, 0x26u);
    swift_arrayDestroy();
  }

  v20 = type metadata accessor for Transaction();
  __chkstk_darwin(v20);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000C1830(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v76 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v66[-v15];
  v78 = type metadata accessor for Credentials(0);
  v17 = *(v78 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v78);
  v21 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v20;
  __chkstk_darwin(v19);
  v72 = &v66[-v22];
  v23 = qword_1005A7EE8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_10000A6F0(v24, qword_1005DFB98);

  v26 = a2;
  v80 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v79 = v17;
  v70 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v69 = v8;
    v31 = v30;
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v31 = 134218242;
    *(v31 + 4) = *(a1 + 16);

    *(v31 + 12) = 2080;
    v32 = [v26 clientApp];
    v67 = v28;
    v33 = a3;
    v34 = v32;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v16;
    v37 = v21;
    v38 = a1;
    v39 = a4;
    v41 = v40;

    a3 = v33;
    v42 = sub_10000D01C(v35, v41, &aBlock);
    a4 = v39;
    a1 = v38;
    v21 = v37;
    v16 = v36;

    *(v31 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v27, v67, "Unsubscribe for %ld IDs for clientApp %s", v31, 0x16u);
    sub_100004984(v68);

    v8 = v69;

    if (*(a1 + 16))
    {
LABEL_5:
      if (qword_1005A8098 != -1)
      {
        swift_once();
      }

      v43 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
      v44 = sub_10000A6F0(v43, qword_1005AF7C0);
      os_unfair_lock_lock(v44);
      sub_100005F04(v44 + *(v43 + 28), v16, &qword_1005A9DA8, &unk_1004D1130);
      os_unfair_lock_unlock(v44);
      v45 = v79;
      if ((*(v79 + 48))(v16, 1, v78) == 1)
      {
        sub_100002CE0(v16, &qword_1005A9DA8, &unk_1004D1130);
        aBlock = 0;
        v82 = 0;
        LOBYTE(v83) = 2;
        sub_1000C7488();
        swift_willThrowTypedImpl();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v87 = v49;
          *v48 = 136315138;
          aBlock = 0;
          v82 = 0;
          LOBYTE(v83) = 2;
          v50 = String.init<A>(describing:)();
          v52 = sub_10000D01C(v50, v51, &v87);

          *(v48 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v46, v47, "Unsubscribe - failed to get credentials error %s", v48, 0xCu);
          sub_100004984(v49);
        }

        Transaction.capture()();
      }

      else
      {
        v57 = v16;
        v58 = v72;
        sub_1000C9DE8(v57, v72, type metadata accessor for Credentials);
        v80 = *(a3 + 320);
        sub_1000CA264(v58, v21, type metadata accessor for Credentials);
        v59 = (*(v45 + 80) + 56) & ~*(v45 + 80);
        v60 = swift_allocObject();
        v60[2] = a1;
        v60[3] = a3;
        v61 = v70;
        v60[4] = v70;
        v60[5] = j___s10FindMyBase11TransactionC7captureyyF;
        v60[6] = a4;
        sub_1000C9DE8(v21, v60 + v59, type metadata accessor for Credentials);
        v85 = sub_1000C8B9C;
        v86 = v60;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_100020828;
        v84 = &unk_10058D760;
        v62 = _Block_copy(&aBlock);

        v63 = v61;

        v64 = v74;
        static DispatchQoS.unspecified.getter();
        v87 = _swiftEmptyArrayStorage;
        sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10004B564(&unk_1005A9700, &qword_1004C3820);
        sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
        v65 = v76;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v62);
        (*(v73 + 8))(v65, v8);
        (*(v75 + 8))(v64, v77);
        sub_1000CA2CC(v58, type metadata accessor for Credentials);
      }
    }
  }

  else
  {

    if (*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "No findMyIds specified for Unsubscribe - not proceeding", v55, 2u);
  }

  Transaction.capture()();
}

uint64_t sub_1000C2120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v82 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  __chkstk_darwin(v13);
  v85 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  v16 = *(v84 + 64);
  __chkstk_darwin(v86);
  v83 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v94 = &v77 - v20;
  v21 = type metadata accessor for Credentials(0);
  v22 = *(v21 - 8);
  v90 = v21;
  v91 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v80 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v25;
  __chkstk_darwin(v24);
  v81 = &v77 - v26;
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v28 = qword_1005A7EE8;

  v93 = a5;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_10000A6F0(v29, qword_1005DFB98);

  v31 = a2;
  v92 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v78 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v89 = a6;
    v36 = v35;
    v77 = swift_slowAlloc();
    aBlock = v77;
    *v36 = 134218242;
    *(v36 + 4) = *(a1 + 16);

    *(v36 + 12) = 2080;
    v37 = [v31 clientApp];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = a1;
    v40 = a4;
    v41 = a7;
    v42 = v27;
    v44 = v43;

    v45 = sub_10000D01C(v38, v44, &aBlock);
    v27 = v42;
    a7 = v41;
    a4 = v40;
    a1 = v39;

    *(v36 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unsubscribe for %ld IDs for clientApp %s", v36, 0x16u);
    sub_100004984(v77);

    a6 = v89;
  }

  else
  {
  }

  v46 = v94;
  if (*(a1 + 16))
  {
    v47 = a1;
    if (qword_1005A8098 != -1)
    {
      swift_once();
    }

    v48 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v49 = sub_10000A6F0(v48, qword_1005AF7C0);
    os_unfair_lock_lock(v49);
    sub_100005F04(v49 + *(v48 + 28), v46, &qword_1005A9DA8, &unk_1004D1130);
    os_unfair_lock_unlock(v49);
    v50 = v91;
    if ((*(v91 + 48))(v46, 1, v90) == 1)
    {
      sub_100002CE0(v46, &qword_1005A9DA8, &unk_1004D1130);
      aBlock = 0;
      v96 = 0;
      LOBYTE(v97) = 2;
      sub_1000C7488();
      swift_willThrowTypedImpl();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v89 = a6;
        v54 = v53;
        v55 = swift_slowAlloc();
        v101 = v55;
        *v54 = 136315138;
        aBlock = 0;
        v96 = 0;
        LOBYTE(v97) = 2;
        v56 = String.init<A>(describing:)();
        v58 = sub_10000D01C(v56, v57, &v101);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "Unsubscribe - failed to get credentials error %s", v54, 0xCu);
        sub_100004984(v55);

        a6 = v89;
      }

      v59 = swift_allocError();
      *v60 = 0;
      *(v60 + 8) = 0;
      *(v60 + 16) = 2;
      sub_1004737A8(v59, a4, v93, a6, a7);
    }

    else
    {
      v65 = v81;
      sub_1000C9DE8(v46, v81, type metadata accessor for Credentials);
      v66 = v82;
      v67 = *(v82 + 320);
      v68 = v80;
      sub_1000CA264(v65, v80, type metadata accessor for Credentials);
      v69 = (*(v50 + 80) + 56) & ~*(v50 + 80);
      v70 = swift_allocObject();
      v70[2] = v47;
      v70[3] = v66;
      v71 = v78;
      v70[4] = v78;
      v70[5] = sub_1000C8FE8;
      v70[6] = v27;
      sub_1000C9DE8(v68, v70 + v69, type metadata accessor for Credentials);
      v99 = sub_1000CA9B8;
      v100 = v70;
      aBlock = _NSConcreteStackBlock;
      v96 = 1107296256;
      v97 = sub_100020828;
      v98 = &unk_10058DA30;
      v72 = _Block_copy(&aBlock);

      v73 = v71;

      v74 = v83;
      static DispatchQoS.unspecified.getter();
      v101 = _swiftEmptyArrayStorage;
      sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
      v75 = v85;
      v76 = v88;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v72);
      (*(v87 + 8))(v75, v76);
      (*(v84 + 8))(v74, v86);
      sub_1000CA2CC(v65, type metadata accessor for Credentials);
    }
  }

  else
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "No findMyIds specified for Unsubscribe - not proceeding", v63, 2u);
    }

    sub_1004737A8(0, a4, v93, a6, a7);
  }
}

uint64_t sub_1000C2AC4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v133 = a7;
  v136 = a6;
  v137 = a5;
  v128 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v128 - 8);
  v11 = *(v127 + 64);
  __chkstk_darwin(v128);
  v125 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchQoS();
  v124 = *(v126 - 8);
  v13 = *(v124 + 64);
  __chkstk_darwin(v126);
  v123 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v131 = &v121 - v17;
  v132 = type metadata accessor for Destination();
  v138 = *(v132 - 8);
  v18 = v138[8];
  v19 = __chkstk_darwin(v132);
  v122 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v129 = &v121 - v21;
  v22 = type metadata accessor for String.Encoding();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v121 - v26;
  v28 = type metadata accessor for SecureLocationsSubscription();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a4;
  v33 = *(a4 + 48);
  v34 = *(v33 + 16);
  v141 = v33;
  v142 = a1;
  v139 = a2;
  v140 = a1;
  v143 = a2;
  v144 = a3;
  v135 = a3;
  OS_dispatch_queue.sync<A>(execute:)();
  v35 = (*(v29 + 48))(v27, 1, v28);
  v36 = &off_1005A7000;
  v37 = &unk_1005DF000;
  if (v35 == 1)
  {
    v38 = sub_100002CE0(v27, &qword_1005A9EC8, &unk_1004C3420);
LABEL_13:
    v48 = v132;
    v49 = v138;
    goto LABEL_14;
  }

  sub_1000C9DE8(v27, v32, type metadata accessor for SecureLocationsSubscription);
  v39 = &v32[*(v28 + 32)];
  if (!*(v39 + 1))
  {
    v38 = sub_1000CA2CC(v32, type metadata accessor for SecureLocationsSubscription);
    goto LABEL_13;
  }

  v40 = *v39;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v41 = Data.init(base64Encoded:options:)();
  if (v42 >> 60 == 15)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFB98);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "failed to decode server provided push identifier", v46, 2u);
    }

    v130 = 0;
    v47 = 0;
  }

  else
  {
    v65 = v41;
    v66 = v42;
    static String.Encoding.utf8.getter();
    v130 = String.init(data:encoding:)();
    v47 = v67;
    sub_10001A794(v65, v66);
  }

  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10000A6F0(v68, qword_1005E0DE0);
  v69 = v139;

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 141558787;
    *(v72 + 4) = 1752392040;
    *(v72 + 12) = 2081;
    v145 = v73;
    aBlock = v130;
    v147 = v47;

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v74 = String.init<A>(describing:)();
    v76 = sub_10000D01C(v74, v75, &v145);
    v37 = &unk_1005DF000;

    *(v72 + 14) = v76;
    *(v72 + 22) = 2160;
    *(v72 + 24) = 1752392040;
    *(v72 + 32) = 2081;
    *(v72 + 34) = sub_10000D01C(v140, v69, &v145);
    _os_log_impl(&_mh_execute_header, v70, v71, "stopLiveLocations: Got handle from server %{private,mask.hash}s for findMyId %{private,mask.hash}s", v72, 0x2Au);
    swift_arrayDestroy();
  }

  v48 = v132;
  v49 = v138;
  v36 = &off_1005A7000;
  v38 = sub_1000CA2CC(v32, type metadata accessor for SecureLocationsSubscription);
  if (v47)
  {
    v63 = v134;
    v53 = v139;
    v64 = v131;
    goto LABEL_30;
  }

LABEL_14:
  if (v36[479] != -1)
  {
    v38 = swift_once();
  }

  v50 = v37[377];
  v51 = *(v50 + 128);
  __chkstk_darwin(v38);
  v53 = v139;
  v52 = v140;
  *(&v121 - 4) = v50;
  *(&v121 - 3) = v52;
  *(&v121 - 2) = v53;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OS_dispatch_queue.sync<A>(execute:)();

  v54 = aBlock;
  v47 = v147;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000A6F0(v55, qword_1005E0DE0);
  swift_bridgeObjectRetain_n();

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v130 = v54;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    aBlock = v54;
    *v59 = 141558787;
    *(v59 + 4) = 1752392040;
    *(v59 + 12) = 2081;
    v147 = v47;
    v60 = String.init<A>(describing:)();
    v62 = sub_10000D01C(v60, v61, &v145);

    *(v59 + 14) = v62;
    *(v59 + 22) = 2160;
    *(v59 + 24) = 1752392040;
    *(v59 + 32) = 2081;
    *(v59 + 34) = sub_10000D01C(v140, v139, &v145);
    _os_log_impl(&_mh_execute_header, v56, v57, "stopLiveLocations: Got handle from fmf following %{private,mask.hash}s for findMyId %{private,mask.hash}s", v59, 0x2Au);
    swift_arrayDestroy();
    v49 = v138;

    v53 = v139;
  }

  else
  {
  }

  v63 = v134;
  v64 = v131;
  if (!v47)
  {
    goto LABEL_32;
  }

LABEL_30:

  Destination.init(string:)();
  if ((v49[6])(v64, 1, v48) == 1)
  {
    sub_100002CE0(v64, &qword_1005A9280, &qword_1004C27F8);
LABEL_32:
    aBlock = 0;
    v147 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v77._countAndFlagsBits = 0xD000000000000031;
    v77._object = 0x80000001004DF9A0;
    String.append(_:)(v77);
    v78._countAndFlagsBits = v140;
    v78._object = v53;
    String.append(_:)(v78);
    v79._countAndFlagsBits = 0xD000000000000010;
    v79._object = 0x80000001004DF9E0;
    String.append(_:)(v79);
    v81 = aBlock;
    v80 = v147;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10000A6F0(v82, qword_1005E0DE0);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      aBlock = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_10000D01C(v81, v80, &aBlock);
      _os_log_impl(&_mh_execute_header, v83, v84, "LiveLocations: %s", v85, 0xCu);
      sub_100004984(v86);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC7D4(v81, v80);

    v87 = type metadata accessor for Transaction();
    __chkstk_darwin(v87);
    v88 = v140;
    *(&v121 - 4) = v63;
    *(&v121 - 3) = v88;
    v89 = v135;
    *(&v121 - 2) = v53;
    *(&v121 - 1) = v89;
    static Transaction.named<A>(_:with:)();
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1004C1900;
    *(v90 + 32) = v136;
    *(v90 + 40) = v133;

    sub_10009D258(v90);
  }

  (v49[4])(v129, v64, v48);
  v91 = *(v63 + 32);
  v92 = sub_100123484();
  v139 = v47;
  if (v92)
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000A6F0(v93, qword_1005E0DE0);
    v94 = v122;
    (v49[2])(v122, v129, v48);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = v48;
      v98 = v94;
      v99 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      aBlock = v138;
      *v99 = 141558275;
      *(v99 + 4) = 1752392040;
      *(v99 + 12) = 2081;
      sub_10001DFA8(&qword_1005A9260, &type metadata accessor for Destination);
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      v103 = v98;
      v48 = v97;
      (v49[1])(v103, v97);
      v104 = sub_10000D01C(v100, v102, &aBlock);

      *(v99 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v95, v96, "LiveLocations: Ending session: %{private,mask.hash}s", v99, 0x16u);
      sub_100004984(v138);
    }

    else
    {

      (v49[1])(v94, v48);
    }
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_10000A6F0(v105, qword_1005E0DE0);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock = v109;
      *v108 = 136446210;
      *(v108 + 4) = sub_10000D01C(0xD000000000000062, 0x80000001004DFA00, &aBlock);
      _os_log_impl(&_mh_execute_header, v106, v107, "LiveLocations: %{public}s", v108, 0xCu);
      sub_100004984(v109);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC27C(0, 1, 0xD000000000000062, 0x80000001004DFA00);
  }

  v110 = *(v63 + 160);
  v111 = swift_allocObject();
  v112 = v140;
  v111[2] = v63;
  v111[3] = v112;
  v113 = v135;
  v111[4] = v53;
  v111[5] = v113;
  v150 = sub_1000CAB50;
  v151 = v111;
  aBlock = _NSConcreteStackBlock;
  v147 = 1107296256;
  v148 = sub_100020828;
  v149 = &unk_10058E430;
  v114 = _Block_copy(&aBlock);

  v115 = v113;
  v116 = v123;
  static DispatchQoS.unspecified.getter();
  v145 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v117 = v125;
  v118 = v128;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v114);
  (*(v127 + 8))(v117, v118);
  (*(v124 + 8))(v116, v126);

  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1004C1900;
  *(v119 + 32) = v136;
  *(v119 + 40) = v133;

  sub_10009D258(v119);

  (v49[1])(v129, v48);
}

id sub_1000C3DD4(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MotionActivityState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1 + *(v2 + 56), v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 != enum case for MotionActivityState.unknown(_:))
  {
    if (v11 == enum case for MotionActivityState.stationary(_:))
    {
      v18 = 1;
      goto LABEL_10;
    }

    if (v11 == enum case for MotionActivityState.walking(_:))
    {
      v18 = 2;
      goto LABEL_10;
    }

    if (v11 == enum case for MotionActivityState.running(_:))
    {
      v18 = 3;
      goto LABEL_10;
    }

    if (v11 == enum case for MotionActivityState.cycling(_:))
    {
      v18 = 4;
      goto LABEL_10;
    }

    if (v11 == enum case for MotionActivityState.automotive(_:))
    {
      v18 = 5;
      goto LABEL_10;
    }

    (*(v7 + 8))(v10, v6);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFB98);
  sub_1000CA264(a1, v5, type metadata accessor for SecureLocation);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = &v5[*(v2 + 56)];
    v17 = MotionActivityState.rawValue.getter();
    sub_1000CA2CC(v5, type metadata accessor for SecureLocation);
    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unhandled Activity state:%ld", v15, 0xCu);
  }

  else
  {
    sub_1000CA2CC(v5, type metadata accessor for SecureLocation);
  }

  v18 = 0;
LABEL_10:
  v19 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + 24)];
  v20 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + 16)];
  v21 = (a1 + *(v2 + 64));
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  v24 = objc_allocWithZone(BMFindMyLocationChange);

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 initWithIdsHandle:v25 stateChange:1 activityState:v18 latitude:v19 longitude:v20 name:v26];

  return v27;
}

void sub_1000C41FC(uint64_t *a1, void *a2)
{
  v31 = type metadata accessor for SecureLocation();
  v5 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v34 = a2;
    v11 = v32;
    v12 = qword_1005A7F20;

    if (v12 != -1)
    {
      v13 = swift_once();
    }

    __chkstk_darwin(v13);
    *(&v30 - 2) = v11;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1000C8450(v11, 0);
    v10 = sub_1000C8450(v11, 0);
    a2 = v34;
  }

  if (qword_1005A7F20 != -1)
  {
    v10 = swift_once();
  }

  __chkstk_darwin(v10);
  *(&v30 - 2) = v8;
  *(&v30 - 1) = v9;
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v14 = v33;
  if (v33)
  {
    v15 = v32;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    sub_1000CA264(a1, v7, type metadata accessor for SecureLocation);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v30 = 0;
      v32 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_10000D01C(v15, v14, &v32);
      *(v20 + 12) = 2082;
      v22 = sub_10008AEA8(*&v7[*(v31 + 60)]);
      v24 = v23;
      sub_1000CA2CC(v7, type metadata accessor for SecureLocation);
      v25 = sub_10000D01C(v22, v24, &v32);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "biomeDonation: Writing Biome event for handle: %s, publishReason: %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      a2 = v34;
    }

    else
    {

      sub_1000CA2CC(v7, type metadata accessor for SecureLocation);
    }

    v27 = sub_1000C3DD4(a1);

    [a2 sendEvent:v27];
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005DFB98);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "biomeDonation: Not donating to Biome NO HANDLE", v29, 2u);
    }
  }
}

unint64_t sub_1000C4734(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058AB10, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C4780(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058ABC0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C47CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005A9E68, &qword_1004C33C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000C8914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v52[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v12;
    LOBYTE(v52[0]) = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v41 + 1) = v14;
    v15 = v13;
    LOBYTE(v44) = 2;
    sub_1000C8968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v41 = v15;
    v63 = LOBYTE(v52[0]);
    LOBYTE(v52[0]) = 3;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v16;
    v17 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    LOBYTE(v44) = 4;
    v18 = sub_10001CCC4(&qword_1005A9E80);
    v39 = v17;
    v40 = v18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = a2;
    v19 = v52[0];
    LOBYTE(v44) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v52[0];
    LOBYTE(v52[0]) = 6;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *&v35 = v21;
    v34 = v20;
    sub_10004B564(&qword_1005A9E88, &qword_1004C33D0);
    LOBYTE(v44) = 7;
    sub_1000C89BC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(&v35 + 1) = v52[0];
    LOBYTE(v44) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v52[0];
    v64 = 9;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    *&v44 = v11;
    v25 = v42;
    *(&v44 + 1) = v42;
    v45 = v41;
    v26 = *(&v41 + 1);
    LOBYTE(v46) = v63;
    *(&v46 + 1) = v38;
    v27 = v43;
    *&v47 = v43;
    *(&v47 + 1) = v40;
    *&v48 = v24;
    *(&v48 + 1) = v19;
    *&v49 = v36;
    *(&v49 + 1) = v34;
    v50 = v35;
    v51 = v22;
    sub_1000C7A34(&v44, v52);
    sub_100004984(a1);
    v52[0] = v11;
    v52[1] = v25;
    v52[2] = v41;
    v52[3] = v26;
    v53 = v63;
    v54 = v38;
    v55 = v27;
    v56 = v40;
    v57 = v24;
    v58 = v19;
    v59 = v36;
    v60 = v34;
    v61 = v35;
    v62 = v22;
    result = sub_1000C792C(v52);
    v29 = v49;
    v30 = v37;
    *(v37 + 64) = v48;
    *(v30 + 80) = v29;
    *(v30 + 96) = v50;
    *(v30 + 112) = v51;
    v31 = v45;
    *v30 = v44;
    *(v30 + 16) = v31;
    v32 = v47;
    *(v30 + 32) = v46;
    *(v30 + 48) = v32;
  }

  return result;
}

void sub_1000C4F64(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v4];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v6, "LabelledLocations - Updating fetch done to %{BOOL}d", v7, 8u);
  }
}

void sub_1000C50DC(uint64_t a1)
{
  if (a1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFB98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000D01C(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "LabelledLocations: Error fetching labels after receiving a fetch labels push %s", v4, 0xCu);
      sub_100004984(v5);
    }
  }

  else
  {
    sub_100105768();
    v9 = type metadata accessor for Transaction();
    __chkstk_darwin(v9);
    static Transaction.named<A>(_:with:)();
  }

  Transaction.capture()();
}

void sub_1000C52F0(uint64_t a1, char *a2)
{
  v8 = a2;

  sub_1000BA000(&v8);
  v3 = *(a1 + 120);
  *(a1 + 120) = v8;

  sub_1000C4F64(1);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "FetchLabelledLocations - Completed fetching location labels using decoder and saving them", v6, 2u);
  }
}

void sub_1000C542C(uint64_t a1)
{
  sub_1000AC58C(a1, 1);
  sub_1000A2748();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LabelledLocations: Completed updating locations with updated labels", v4, 2u);
  }

  Transaction.capture()();
}

uint64_t sub_1000C5524(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v102 = a6;
  v101 = a5;
  v100 = a4;
  v119 = a2;
  v104 = type metadata accessor for SecureLocation();
  v8 = *(v104 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v104);
  v103 = (&v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = (&v99 - v13);
  v15 = __chkstk_darwin(v12);
  v105 = &v99 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v99 - v18;
  __chkstk_darwin(v17);
  v21 = &v99 - v20;
  v22 = type metadata accessor for SecureLocationsConfig();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a3;
  if (*(*(a3 + 120) + 16))
  {
    if (qword_1005A7EF8 != -1)
    {
LABEL_59:
      swift_once();
    }

    v26 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v26);
    v27 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v26 + *(v27 + 28), v25, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v26);

    v28 = *(v25 + 2);
    sub_1000CA2CC(v25, type metadata accessor for SecureLocationsConfig);
    v109 = *(a1 + 16);
    if (!v109)
    {
      v112 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v30 = 0;
    v31 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v112 = _swiftEmptyArrayStorage;
    v107 = v31;
    v108 = a1 + v31;
    v32 = *(v8 + 72);
    *&v29 = 136315906;
    v114 = v29;
    *&v29 = 136315650;
    v113 = v29;
    *&v29 = 136315394;
    v99 = v29;
    v125 = v14;
    v33 = v105;
    v115 = v19;
    v118 = v21;
    v106 = v32;
    while (1)
    {
      v111 = v30;
      sub_1000CA264(v108 + v32 * v30, v21, type metadata accessor for SecureLocation);
      sub_1000CA264(v21, v19, type metadata accessor for SecureLocation);
      v34 = *(v110 + 120);
      v35 = *(v34 + 16);
      if (!v35)
      {
        goto LABEL_44;
      }

      v36 = *(v110 + 120);

      v37 = 0;
      v117 = v35 - 1;
      v38 = 32;
      v116 = v34;
      while (1)
      {
        v123 = v38;
        v39 = *(v34 + v38 + 32);
        v40 = *(v34 + v38 + 48);
        a1 = *(v34 + v38 + 80);
        v130 = *(v34 + v38 + 64);
        v41 = *(v34 + v38 + 16);
        v128[0] = *(v34 + v38);
        v128[1] = v41;
        v131 = a1;
        v128[2] = v39;
        v129 = v40;
        v124 = *(&v130 + 1);
        v25 = *(&v41 + 1);
        v122 = v41;
        sub_1000C81D0(v128, v127);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        v8 = sub_10000A6F0(v42, qword_1005DFB98);
        sub_1000CA264(v21, v14, type metadata accessor for SecureLocation);
        sub_1000C81D0(v128, v127);
        v121 = v8;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        sub_1000C822C(v128);
        v45 = os_log_type_enabled(v43, v44);
        v120 = v25;
        if (v45)
        {
          v46 = v25;
          v25 = swift_slowAlloc();
          v127[0] = swift_slowAlloc();
          *v25 = v114;

          v47 = sub_10000D01C(v122, v46, v127);

          *(v25 + 4) = v47;
          *(v25 + 6) = 2080;
          if (a1)
          {
            v48 = v124;
          }

          else
          {
            v48 = 1818848800;
          }

          if (a1)
          {
            v49 = a1;
          }

          else
          {
            v49 = 0xE400000000000000;
          }

          v50 = v130;

          v51 = sub_10000D01C(v48, v49, v127);

          *(v25 + 14) = v51;
          *(v25 + 11) = 2080;
          v34 = v116;
          v52 = *v125;
          v53 = v125[1];

          sub_1000CA2CC(v125, type metadata accessor for SecureLocation);
          v54 = sub_10000D01C(v52, v53, v127);
          v21 = v118;

          *(v25 + 3) = v54;
          v14 = v125;
          *(v25 + 16) = 2048;
          *(v25 + 34) = v50;
          _os_log_impl(&_mh_execute_header, v43, v44, "LabelledLocations Checking label %s %s %s %f", v25, 0x2Au);
          swift_arrayDestroy();
          v19 = v115;

          if (a1)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v14, type metadata accessor for SecureLocation);
          if (a1)
          {
            goto LABEL_30;
          }
        }

        if (v119)
        {
          break;
        }

LABEL_30:
        if (v119 & 1) == 0 && a1 && (v124 == *v21 && a1 == *(v21 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v128);
LABEL_36:
        if (v117 == v37)
        {

          goto LABEL_43;
        }

        ++v37;
        v38 = v123 + 88;
        if (v37 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

      v55 = [objc_allocWithZone(CLLocation) initWithLatitude:v129 longitude:?];
      v56 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v21 + 3) longitude:*(v21 + 2)];
      [v55 distanceFromLocation:v56];
      v58 = v57;
      sub_1000C81D0(v128, v127);
      v8 = v121;
      v25 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();
      sub_1000C822C(v128);
      if (os_log_type_enabled(v25, v59))
      {
        v60 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v127[0] = v8;
        *v60 = v113;
        v61 = v120;

        v62 = v56;
        v63 = v55;
        v64 = sub_10000D01C(v122, v61, v127);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2080;
        if (a1)
        {
          v65 = v124;
        }

        else
        {
          v65 = 0x206C696E20;
        }

        if (a1)
        {
          v66 = a1;
        }

        else
        {
          v66 = 0xE500000000000000;
        }

        v67 = v65;
        v55 = v63;
        v56 = v62;
        a1 = sub_10000D01C(v67, v66, v127);
        v34 = v116;

        *(v60 + 14) = a1;
        *(v60 + 22) = 2048;
        *(v60 + 24) = v58;
        _os_log_impl(&_mh_execute_header, v25, v59, "LabelledLocations %s %s Label Distance %f", v60, 0x20u);
        swift_arrayDestroy();
        v14 = v125;

        v19 = v115;
      }

      v21 = v118;
      if (v58 > v28)
      {
        sub_1000C822C(v128);

        goto LABEL_36;
      }

      v68 = v120;

      sub_1000C822C(v128);
      swift_beginAccess();
      v69 = &v19[*(v104 + 64)];
      v70 = *(v69 + 1);
      v71 = v122;
      *v69 = v122;
      *(v69 + 1) = v68;

      v72 = v103;
      sub_1000CA264(v21, v103, type metadata accessor for SecureLocation);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v124 = v55;
        v76 = v68;
        v77 = v75;
        v126 = swift_slowAlloc();
        *v77 = v99;
        v127[0] = v71;
        v127[1] = v76;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v78 = String.init<A>(describing:)();
        v79 = v72;
        v81 = sub_10000D01C(v78, v80, &v126);

        *(v77 + 4) = v81;
        *(v77 + 12) = 2080;
        v82 = *v72;
        v83 = v79[1];

        v84 = v79;
        v19 = v115;
        sub_1000CA2CC(v84, type metadata accessor for SecureLocation);
        v85 = sub_10000D01C(v82, v83, &v126);

        *(v77 + 14) = v85;
        _os_log_impl(&_mh_execute_header, v73, v74, "LabelledLocations Adding label %s to location %s", v77, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v72, type metadata accessor for SecureLocation);
      }

LABEL_43:
      v33 = v105;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v19, v33, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1001FCE44(0, v112[2] + 1, 1, v112);
      }

      v87 = v112[2];
      v86 = v112[3];
      if (v87 >= v86 >> 1)
      {
        v112 = sub_1001FCE44(v86 > 1, v87 + 1, 1, v112);
      }

      v88 = v111 + 1;
      sub_1000CA2CC(v21, type metadata accessor for SecureLocation);
      v89 = v112;
      v112[2] = v87 + 1;
      v30 = v88;
      v90 = v106;
      sub_1000C9DE8(v33, v89 + v107 + v87 * v106, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v19, type metadata accessor for SecureLocation);
      v32 = v90;
      if (v30 == v109)
      {
LABEL_58:
        v102(v112, v100, v101);
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_10000A6F0(v91, qword_1005DFB98);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&_mh_execute_header, v92, v93, "LabelledLocations - No labels - nothing to resolve", v94, 2u);
  }

  v95 = v100;
  v96 = v101;
  v97 = v102;

  return v97(a1, v95, v96);
}

uint64_t sub_1000C6324(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = a5;
  v104 = a4;
  v122 = a2;
  v107 = type metadata accessor for SecureLocation();
  v7 = *(v107 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v107);
  v106 = (&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = (&v103 - v12);
  v14 = __chkstk_darwin(v11);
  v108 = &v103 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v103 - v17;
  __chkstk_darwin(v16);
  v20 = &v103 - v19;
  v21 = type metadata accessor for SecureLocationsConfig();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a3;
  if (*(*(a3 + 120) + 16))
  {
    if (qword_1005A7EF8 != -1)
    {
LABEL_59:
      swift_once();
    }

    v25 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v25);
    v26 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v25 + *(v26 + 28), v24, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v25);

    v27 = *(v24 + 2);
    sub_1000CA2CC(v24, type metadata accessor for SecureLocationsConfig);
    v112 = *(a1 + 16);
    if (!v112)
    {
      v115 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v29 = 0;
    v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v115 = _swiftEmptyArrayStorage;
    v110 = v30;
    v111 = a1 + v30;
    v31 = *(v7 + 72);
    *&v28 = 136315906;
    v117 = v28;
    *&v28 = 136315650;
    v116 = v28;
    *&v28 = 136315394;
    v103 = v28;
    v128 = v13;
    v32 = v108;
    v118 = v18;
    v121 = v20;
    v109 = v31;
    while (1)
    {
      v114 = v29;
      sub_1000CA264(v111 + v31 * v29, v20, type metadata accessor for SecureLocation);
      sub_1000CA264(v20, v18, type metadata accessor for SecureLocation);
      v33 = *(v113 + 120);
      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_44;
      }

      v35 = *(v113 + 120);

      v36 = 0;
      v120 = v34 - 1;
      v37 = 32;
      v119 = v33;
      while (1)
      {
        v126 = v37;
        v38 = *(v33 + v37 + 32);
        v39 = *(v33 + v37 + 48);
        a1 = *(v33 + v37 + 80);
        v133 = *(v33 + v37 + 64);
        v40 = *(v33 + v37 + 16);
        v131[0] = *(v33 + v37);
        v131[1] = v40;
        v134 = a1;
        v131[2] = v38;
        v132 = v39;
        v127 = *(&v133 + 1);
        v24 = *(&v40 + 1);
        v125 = v40;
        sub_1000C81D0(v131, v130);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        v7 = sub_10000A6F0(v41, qword_1005DFB98);
        sub_1000CA264(v20, v13, type metadata accessor for SecureLocation);
        sub_1000C81D0(v131, v130);
        v124 = v7;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        sub_1000C822C(v131);
        v44 = os_log_type_enabled(v42, v43);
        v123 = v24;
        if (v44)
        {
          v45 = v24;
          v24 = swift_slowAlloc();
          v130[0] = swift_slowAlloc();
          *v24 = v117;

          v46 = sub_10000D01C(v125, v45, v130);

          *(v24 + 4) = v46;
          *(v24 + 6) = 2080;
          if (a1)
          {
            v47 = v127;
          }

          else
          {
            v47 = 1818848800;
          }

          if (a1)
          {
            v48 = a1;
          }

          else
          {
            v48 = 0xE400000000000000;
          }

          v49 = v133;

          v50 = sub_10000D01C(v47, v48, v130);

          *(v24 + 14) = v50;
          *(v24 + 11) = 2080;
          v33 = v119;
          v51 = *v128;
          v52 = v128[1];

          sub_1000CA2CC(v128, type metadata accessor for SecureLocation);
          v53 = sub_10000D01C(v51, v52, v130);
          v20 = v121;

          *(v24 + 3) = v53;
          v13 = v128;
          *(v24 + 16) = 2048;
          *(v24 + 34) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "LabelledLocations Checking label %s %s %s %f", v24, 0x2Au);
          swift_arrayDestroy();
          v18 = v118;

          if (a1)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v13, type metadata accessor for SecureLocation);
          if (a1)
          {
            goto LABEL_30;
          }
        }

        if (v122)
        {
          break;
        }

LABEL_30:
        if (v122 & 1) == 0 && a1 && (v127 == *v20 && a1 == *(v20 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v131);
LABEL_36:
        if (v120 == v36)
        {

          goto LABEL_43;
        }

        ++v36;
        v37 = v126 + 88;
        if (v36 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

      v54 = [objc_allocWithZone(CLLocation) initWithLatitude:v132 longitude:?];
      v55 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v20 + 3) longitude:*(v20 + 2)];
      [v54 distanceFromLocation:v55];
      v57 = v56;
      sub_1000C81D0(v131, v130);
      v7 = v124;
      v24 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();
      sub_1000C822C(v131);
      if (os_log_type_enabled(v24, v58))
      {
        v59 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v130[0] = v7;
        *v59 = v116;
        v60 = v123;

        v61 = v55;
        v62 = v54;
        v63 = sub_10000D01C(v125, v60, v130);

        *(v59 + 4) = v63;
        *(v59 + 12) = 2080;
        if (a1)
        {
          v64 = v127;
        }

        else
        {
          v64 = 0x206C696E20;
        }

        if (a1)
        {
          v65 = a1;
        }

        else
        {
          v65 = 0xE500000000000000;
        }

        v66 = v64;
        v54 = v62;
        v55 = v61;
        a1 = sub_10000D01C(v66, v65, v130);
        v33 = v119;

        *(v59 + 14) = a1;
        *(v59 + 22) = 2048;
        *(v59 + 24) = v57;
        _os_log_impl(&_mh_execute_header, v24, v58, "LabelledLocations %s %s Label Distance %f", v59, 0x20u);
        swift_arrayDestroy();
        v13 = v128;

        v18 = v118;
      }

      v20 = v121;
      if (v57 > v27)
      {
        sub_1000C822C(v131);

        goto LABEL_36;
      }

      v67 = v123;

      sub_1000C822C(v131);
      swift_beginAccess();
      v68 = &v18[*(v107 + 64)];
      v69 = *(v68 + 1);
      v70 = v125;
      *v68 = v125;
      *(v68 + 1) = v67;

      v71 = v106;
      sub_1000CA264(v20, v106, type metadata accessor for SecureLocation);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v127 = v54;
        v75 = v67;
        v76 = v74;
        v129 = swift_slowAlloc();
        *v76 = v103;
        v130[0] = v70;
        v130[1] = v75;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v77 = String.init<A>(describing:)();
        v78 = v71;
        v80 = sub_10000D01C(v77, v79, &v129);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        v81 = *v71;
        v82 = v78[1];

        v83 = v78;
        v18 = v118;
        sub_1000CA2CC(v83, type metadata accessor for SecureLocation);
        v84 = sub_10000D01C(v81, v82, &v129);

        *(v76 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v72, v73, "LabelledLocations Adding label %s to location %s", v76, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v71, type metadata accessor for SecureLocation);
      }

LABEL_43:
      v32 = v108;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v18, v32, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1001FCE44(0, v115[2] + 1, 1, v115);
      }

      v86 = v115[2];
      v85 = v115[3];
      if (v86 >= v85 >> 1)
      {
        v115 = sub_1001FCE44(v85 > 1, v86 + 1, 1, v115);
      }

      v87 = v114 + 1;
      sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
      v88 = v115;
      v115[2] = v86 + 1;
      v29 = v87;
      v89 = v109;
      sub_1000C9DE8(v32, v88 + v110 + v86 * v109, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
      v31 = v89;
      if (v29 == v112)
      {
LABEL_58:
        v99 = v104;
        v100 = *(v104 + 16);
        v101 = swift_allocObject();
        v102 = v105;
        *(v101 + 16) = v99;
        *(v101 + 24) = v102;

        sub_1000FE000(v115, 1, sub_1000CA1AC, v101);
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  sub_10000A6F0(v90, qword_1005DFB98);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v91, v92, "LabelledLocations - No labels - nothing to resolve", v93, 2u);
  }

  v94 = v104;
  v95 = *(v104 + 16);
  v96 = swift_allocObject();
  v97 = v105;
  *(v96 + 16) = v94;
  *(v96 + 24) = v97;

  sub_1000FE000(a1, 1, sub_1000CAB58, v96);
}

void sub_1000C71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v23 = a4;
  v7 = type metadata accessor for SecureLocationsConfig();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v11 = qword_1005DFBC8;
  v12 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v12);
  v13 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v14 = *(v13 + 28);
  sub_1000CA2CC(v12 + v14, type metadata accessor for SecureLocationsConfig);
  sub_1000CA264(a1, v12 + v14, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v12);
  v15 = *(v11 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream);
  AsyncStreamProvider.yield(value:transaction:)();

  if (sub_1000BB328())
  {
    goto LABEL_5;
  }

  v16 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v16);
  sub_1000CA264(v16 + *(v13 + 28), v10, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v16);

  v17 = v10[8];
  sub_1000CA2CC(v10, type metadata accessor for SecureLocationsConfig);
  if ((v17 & 1) == 0)
  {
LABEL_5:
    sub_1000BB4F0();
  }

  v18 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = swift_allocObject();
  *(v20 + 16) = v23;
  *(v20 + 24) = a5;
  aBlock[4] = sub_1000C78B8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A8DE8;
  aBlock[3] = &unk_10058CC70;
  v21 = _Block_copy(aBlock);

  [v18 updatedConfigReceived:isa completion:v21];
  _Block_release(v21);
}

unint64_t sub_1000C7488()
{
  result = qword_1005AFA00;
  if (!qword_1005AFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AFA00);
  }

  return result;
}

uint64_t sub_1000C74DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Credentials(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1000B4C14(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_1000C7660()
{
  result = qword_1005A9DD0;
  if (!qword_1005A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9DD0);
  }

  return result;
}

uint64_t sub_1000C7708(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsConfig() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1004B3420(a1, v6, v7, v1 + v5, v9, v10);
}

_BYTE *sub_1000C7838@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1000C78D8()
{
  result = qword_1005A9DE8;
  if (!qword_1005A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9DE8);
  }

  return result;
}

uint64_t sub_1000C795C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1000C7988()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1000ADFD0(v2, v3, v5);
}

uint64_t sub_1000C7AB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1000A14DC(a1, v1);
}

void sub_1000C7B98()
{
  v1 = *(type metadata accessor for Credentials(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 144) & ~*(v1 + 80));

  sub_1000B1610(v2, v0 + 24, v3);
}

uint64_t sub_1000C7C1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1000B23E4(a1, v1);
}

uint64_t sub_1000C7CD8(uint64_t a1)
{
  v4 = *(type metadata accessor for Credentials(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000368C;

  return sub_1000B25B8(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

void sub_1000C7E70(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_1000C50DC(a2);
}

uint64_t sub_1000C7E7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Credentials(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1000B2C3C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000C7FF0()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000C80E4(void (*a1)(void))
{
  v3 = *(type metadata accessor for Response() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000B5908(*(v1 + 16), v1 + v4, *v5, v5[1], a1);
}

unint64_t sub_1000C817C()
{
  result = qword_1005A9E28;
  if (!qword_1005A9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E28);
  }

  return result;
}

uint64_t sub_1000C829C(uint64_t a1)
{
  v3 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000C82F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1004B5A58(a1, v4, v5, v6);
}

uint64_t sub_1000C83D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8450(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1000C84A0()
{
  result = qword_1005A9E38;
  if (!qword_1005A9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E38);
  }

  return result;
}

uint64_t sub_1000C8568(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Credentials(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = v1[3];
  v22 = v1[2];
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v6);
  v20 = v1[4];
  v11 = v1[6];
  v19 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = v1[7];
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000368C;

  return sub_100097320(a1, v22, v21, v20, v19, v11, v14, v1 + v5);
}

uint64_t sub_1000C86FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1004B5A58(a1, v4, v5, v6);
}

void sub_1000C87E0()
{
  v1 = *(type metadata accessor for Response() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_100097C88(v0 + v2, v7, v8, v9, v10, v12, v13);
}

unint64_t sub_1000C88C0()
{
  result = qword_1005A9E60;
  if (!qword_1005A9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E60);
  }

  return result;
}

unint64_t sub_1000C8914()
{
  result = qword_1005A9E70;
  if (!qword_1005A9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E70);
  }

  return result;
}

unint64_t sub_1000C8968()
{
  result = qword_1005A9E78;
  if (!qword_1005A9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E78);
  }

  return result;
}

unint64_t sub_1000C89BC()
{
  result = qword_1005A9E90;
  if (!qword_1005A9E90)
  {
    sub_10004B610(&qword_1005A9E88, &qword_1004C33D0);
    sub_10001CCC4(&qword_1005A9E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E90);
  }

  return result;
}

unint64_t sub_1000C8A68()
{
  result = qword_1005A9EA0;
  if (!qword_1005A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EA0);
  }

  return result;
}

unint64_t sub_1000C8ABC()
{
  result = qword_1005A9EB0;
  if (!qword_1005A9EB0)
  {
    sub_10004B610(&qword_1005A9E88, &qword_1004C33D0);
    sub_10001CCC4(&qword_1005A9EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EB0);
  }

  return result;
}

uint64_t sub_1000C8C60(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Credentials(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[2];
  v19 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = v1[6];
  v13 = v1[7];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000368C;

  return sub_1000A45E8(a1, v20, v19, v18, v9, v12, v13, v1 + v5);
}

void sub_1000C8E20()
{
  v1 = *(type metadata accessor for Response() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1000A4FD0(v0 + v2, v6, v7, v8, v10, v11);
}

uint64_t sub_1000C8EE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10008F170();
}

uint64_t sub_1000C8FDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1000B9790();
}

uint64_t sub_1000C8FF4()
{
  v1 = (type metadata accessor for Credentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 48);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);

  v11 = v1[9];
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v3 + v11, v12);
  v14 = v0 + v3 + v1[10];
  v15 = *(v14 + 8);

  v16 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v13(v14 + *(v16 + 20), v12);
  v17 = *(v0 + v3 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000C9160()
{
  v1 = *(type metadata accessor for Credentials(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1000A38D4(v2, v3, v4, v5, v6, v7);
}

void sub_1000C9208(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_10009EE84(a1, a2, *(v2 + 16));
}

unint64_t sub_1000C9214()
{
  result = qword_1005A9ED0;
  if (!qword_1005A9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9ED0);
  }

  return result;
}

uint64_t sub_1000C9270@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  ContinuousClock.Instant.duration(to:)();
  result = static Duration.< infix(_:_:)();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000C933C()
{
  result = qword_1005A9EF0;
  if (!qword_1005A9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9EF0);
  }

  return result;
}

void sub_1000C9408(uint64_t a1)
{
  v3 = *(type metadata accessor for SecureLocation() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Credentials(0) - 8);
  sub_1000A0618(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_1000C9518(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1000A14DC(a1, v1);
}

uint64_t sub_1000C95B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_10002CF44(a2, a3);
  }

  return result;
}

uint64_t sub_1000C95FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_10001A794(a2, a3);
  }

  return result;
}

uint64_t sub_1000C9644(uint64_t a1)
{
  v3 = *(type metadata accessor for Credentials(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SecureLocation() - 8);
  v7 = (*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[2];
  v17 = v1[3];
  v8 = v1[5];
  v16 = v1[4];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000368C;

  return sub_1000A1690(a1, v18, v17, v16, v8, v9, v10, v1 + v4);
}

void sub_1000C98BC()
{
  ct_green_tea_logger_create_static();
  v0 = getCTGreenTeaOsLogHandle();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Transmitting Encrypted Location.", v3, 2u);
    }
  }
}

uint64_t sub_1000C9940(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_1000C9990()
{
  v1 = *(type metadata accessor for Response() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1000A2638(v0 + v2, v4, v6);
}

uint64_t sub_1000C9A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1004B51EC(a1, v4, v5, v6);
}

unint64_t sub_1000C9B4C()
{
  result = qword_1005A9F10;
  if (!qword_1005A9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F10);
  }

  return result;
}

uint64_t sub_1000C9BD4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C9C1C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  return sub_1000B3E58(v1, v2, v3, v4);
}

uint64_t sub_1000C9C50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1000C9CA8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  sub_10009D07C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1000C9CBC(uint64_t a1)
{
  v4 = *(sub_10004B564(&unk_1005A9938, &unk_1004C3080) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100092808(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000C9DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000C9E50()
{
  result = qword_1005A9F48;
  if (!qword_1005A9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F48);
  }

  return result;
}

uint64_t sub_1000C9EA4(uint64_t a1)
{

  sub_1000BB990(v1, a1, &unk_10058E2D8, sub_1000C9F28, &unk_1004C34D0, sub_1000B9D60);
}

uint64_t sub_1000C9F38()
{
  v1 = (type metadata accessor for Credentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);

  v11 = v1[9];
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 8);
  v13(v7 + v11, v12);
  v14 = v7 + v1[10];
  v15 = *(v14 + 8);

  v16 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v13(v14 + *(v16 + 20), v12);
  v17 = *(v7 + v1[11] + 8);

  v18 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

unint64_t sub_1000CA0BC()
{
  result = qword_1005A9F80;
  if (!qword_1005A9F80)
  {
    sub_1000545A4(255, &qword_1005A9F78, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F80);
  }

  return result;
}

uint64_t sub_1000CA14C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

void sub_1000CA1AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000B9494(a1);
}

uint64_t sub_1000CA1B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000CA210()
{
  result = qword_1005AB5C0;
  if (!qword_1005AB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB5C0);
  }

  return result;
}

uint64_t sub_1000CA264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CA2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CA368(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000CA42C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000CA490(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000CA4E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_1000CA58C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000CA598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CA5E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SecureLocationsCoordinator.SecureLocationsCommandPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsCoordinator.SecureLocationsCommandPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CA780()
{
  result = qword_1005A9FD0;
  if (!qword_1005A9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9FD0);
  }

  return result;
}

unint64_t sub_1000CA7D8()
{
  result = qword_1005A9FD8;
  if (!qword_1005A9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9FD8);
  }

  return result;
}

unint64_t sub_1000CA830()
{
  result = qword_1005A9FE0;
  if (!qword_1005A9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9FE0);
  }

  return result;
}

void *sub_1000CAB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100239484(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v2 + 72;
  v25 = v1;
  v26 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v2 + 36);
    v10 = (*(v2 + 56) + 24 * v6);
    v11 = v10[1];
    v29 = *v10;
    v12 = v2;
    v13 = v10[2];
    v14 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];

    if (v14 >= v15 >> 1)
    {
      result = sub_100239484((v15 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v16 = &_swiftEmptyArrayStorage[3 * v14];
    v16[4] = v29;
    v16[5] = v11;
    v16[6] = v13;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v2 = v12;
    v3 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_10002F14C(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

uint64_t sub_1000CADB4()
{
  v1 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000CF9E4(v0 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_endTime);
  sub_1000CF9E4(v0 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_lastReceived);
  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureLocationsLiveSessionStats()
{
  result = qword_1005AA010;
  if (!qword_1005AA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CAED4()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000CAFC0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000CAFC0()
{
  if (!qword_1005AE6B0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AE6B0);
    }
  }
}

uint64_t sub_1000CB018()
{
  v1 = v0;
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v12);
  v17 = &v25[-v16];
  v18 = *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations) = v20;
    static Date.trustedNow.getter(&v25[-v16]);
    v21 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_lastReceived;
    swift_beginAccess();
    sub_1000CF974(v1 + v21, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000CF9E4(v8);
      (*(v10 + 32))(v6, v17, v9);
    }

    else
    {
      v22 = *(v10 + 32);
      v22(v14, v8, v9);
      Date.timeIntervalSince(_:)();
      v24 = v23;
      (*(v10 + 8))(v14, v9);
      *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) = v24 + *(v1 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta);
      v22(v6, v17, v9);
    }

    (*(v10 + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    sub_1000CF904(v6, v1 + v21);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000CB2B8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AA318, &qword_1004C3C20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000CFDEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v21 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v20 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[4];
    v18[15] = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v3[5];
    v17 = *(v3 + 48);
    v18[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000CB4FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CB544()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000CB588()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x73726F727265;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

uint64_t sub_1000CB610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000CF1FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000CB638(uint64_t a1)
{
  v2 = sub_1000CFDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CB674(uint64_t a1)
{
  v2 = sub_1000CFDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000CB6B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000CF36C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_1000CB724()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CB7EC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000CB8A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CB964@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CF5FC(*a1);
  *a2 = result;
  return result;
}

void sub_1000CB994(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x697461636F4C6F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (*v1 != 2)
  {
    v5 = 0x755364656C696166;
    v4 = 0xE900000000000062;
  }

  if (*v1)
  {
    v3 = 0x64696C6176;
    v2 = 0xE500000000000000;
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

uint64_t sub_1000CBAC8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 29548;
  }

  else
  {
    v2 = 27496;
  }

  if (*a2)
  {
    v3 = 29548;
  }

  else
  {
    v3 = 27496;
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

Swift::Int sub_1000CBB38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CBB98()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000CBBDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CBC38@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058AD50, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000CBC98(uint64_t *a1@<X8>)
{
  v2 = 27496;
  if (*v1)
  {
    v2 = 29548;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_1000CBCB8()
{
  if (*v0)
  {
    return 29548;
  }

  else
  {
    return 27496;
  }
}

uint64_t sub_1000CBCD4@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10058AD50, v3);

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

uint64_t sub_1000CBD38(uint64_t a1)
{
  v2 = sub_1000CF808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CBD74(uint64_t a1)
{
  v2 = sub_1000CF808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CBDB0(void *a1, __int16 a2)
{
  v3 = HIBYTE(a2);
  v5 = sub_10004B564(&qword_1005AA2D0, &unk_1004C3810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000CF808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12[14] = v3;
    v12[13] = 1;
    sub_1000CF8B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CBF2C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000CF648(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1000CBF74()
{
  type metadata accessor for SecureLocationsAnalytics();
  swift_allocObject();
  result = sub_1000CBFB0();
  qword_1005DFB60 = result;
  return result;
}

void *sub_1000CBFB0()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_10004B518();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF54(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = &_swiftEmptyDictionarySingleton;
  v0[4] = 0;
  v0[5] = &_swiftEmptyDictionarySingleton;
  v0[6] = 0x636972656E6567;
  v0[7] = 0xE700000000000000;
  return v0;
}

void sub_1000CC27C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (static SystemInfo.underTest.getter())
  {
    if (a1)
    {
      return;
    }
  }

  else
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v10 = a1 & 1;
    *(v9 + 16) = v10;
    *(v9 + 17) = a2;
    v12[4] = sub_1000CFB48;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000119E4;
    v12[3] = &unk_10058E958;
    v11 = _Block_copy(v12);

    AnalyticsSendEventLazy();
    _Block_release(v11);

    if (v10)
    {
      return;
    }
  }

  sub_1000CC7D4(a3, a4);
}

uint64_t sub_1000CC3C8(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = *(result + 32);

    sub_1000CB018();
  }

  return result;
}

uint64_t sub_1000CC438(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 16);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_1000CC6C8(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsLiveSessionStats();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_endTime;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v8(v5 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_lastReceived, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) = 0;
  *(v5 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations) = 0;
  static Date.trustedNow.getter(v5 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime);
  v9 = *(a1 + 32);
  *(a1 + 32) = v5;
}

uint64_t sub_1000CC7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1000CFB2C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E8B8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000CFAE4(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF54(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_1000CCAA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v6 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors;
    swift_beginAccess();
    v7 = *(v3 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1001FC900(0, *(v7 + 2) + 1, 1, v7);
      *(v3 + v6) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1001FC900((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = a2;
    *(v11 + 5) = a3;
    *(v3 + v6) = v7;
    swift_endAccess();
  }

  return result;
}

void sub_1000CCBA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v63 = &v52 - v11;
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v52 - v19;
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v23 = *(a1 + 32);
  if (!v23)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v58 = a2;
  v59 = v2;

  static Date.trustedNow.getter(v22);
  (*(v6 + 56))(v22, 0, 1, v5);
  v24 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_endTime;
  swift_beginAccess();
  sub_1000CF904(v22, v23 + v24);
  swift_endAccess();
  sub_1000CF974(v23 + v24, v20);
  v54 = *(v6 + 48);
  v55 = v54(v20, 1, v5);
  if (v55 == 1)
  {
    sub_1000CF9E4(v20);
    v25 = 0;
  }

  else
  {
    (*(v6 + 32))(v13, v20, v5);
    v26 = *(v6 + 16);
    v56 = a1;
    v27 = v63;
    v26(v63, v23 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime, v5);
    Date.timeIntervalSince(_:)();
    v25 = v28;
    v57 = v6;
    v29 = *(v6 + 8);
    v30 = v27;
    a1 = v56;
    v29(v30, v5);
    v29(v13, v5);
    v6 = v57;
  }

  v31 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations;
  v57 = *(v23 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_countLocations);
  if (v57 < 1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *(v23 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) / v57;
  }

  v33 = OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_errors;
  swift_beginAccess();
  v34 = *(v23 + v33);
  v35 = *(a1 + 32);
  *(a1 + 32) = 0;
  v56 = v34;

  v53 = *(v23 + v31);
  v36 = v61;
  sub_1000CF974(v23 + v24, v61);
  v37 = v54(v36, 1, v5);
  if (v37 == 1)
  {
    sub_1000CF9E4(v36);
    v38 = 0;
  }

  else
  {
    v39 = v60;
    (*(v6 + 32))(v60, v36, v5);
    v40 = v63;
    (*(v6 + 16))(v63, v23 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_startTime, v5);
    Date.timeIntervalSince(_:)();
    v38 = v41;
    v42 = *(v6 + 8);
    v42(v40, v5);
    v42(v39, v5);
  }

  v43 = *(v23 + v31);
  if (v43 < 1)
  {
    v44 = 0.0;
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_14;
    }

LABEL_16:
    v45 = v43 < 1;
    v46 = String._bridgeToObjectiveC()();
    v47 = swift_allocObject();
    *(v47 + 16) = v53;
    *(v47 + 24) = v38;
    *(v47 + 32) = v37 == 1;
    *(v47 + 40) = v44;
    *(v47 + 48) = v45;
    aBlock[4] = sub_1000CFA4C;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000119E4;
    aBlock[3] = &unk_10058E7C8;
    v48 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v48);

    goto LABEL_17;
  }

  v44 = *(v23 + OBJC_IVAR____TtC13findmylocated31SecureLocationsLiveSessionStats_sumDelta) / v43;
  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:

LABEL_17:
  v50 = v57;
  v49 = v58;
  *v58 = v25;
  *(v49 + 1) = v55 == 1;
  *(v49 + 2) = v50;
  v51 = v56;
  v49[3] = 0.0;
  *(v49 + 4) = v51;
  v49[5] = v32;
  *(v49 + 48) = v50 < 1;
}
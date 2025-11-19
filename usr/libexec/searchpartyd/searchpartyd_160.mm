void sub_1010945AC(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v80 = a4;
  v81 = a3;
  v79 = a2;
  v78 = a1;
  v75 = *v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  __chkstk_darwin(v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  static Date.trustedNow.getter(&v67 - v20);
  sub_1010908E4(v19);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v15 + 8);
  v24(v19, v14);
  v72 = v21;
  v74 = v14;
  v73 = v15 + 8;
  v71 = v24;
  v24(v21, v14);
  if (v23 > 604800.0)
  {
    v67 = v11;
    v68 = v9;
    v69 = v10;
    v70 = v6;
    v25 = *(v5 + 3);
    v26 = sub_100007F54();
    v27 = v26;
    v28 = v26[2];
    v29 = _swiftEmptyArrayStorage;
    v30 = v5;
    if (!v28)
    {
LABEL_17:

      if (v29[2])
      {
        v52 = [objc_opt_self() standardUserDefaults];
        v53 = v72;
        static Date.trustedNow.getter(v72);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v71(v53, v74);
        v55 = String._bridgeToObjectiveC()();
        [v52 setObject:isa forKey:v55];

        v56 = *(v5 + 2);
        v57 = swift_allocObject();
        *(v57 + 16) = v29;
        *(v57 + 24) = v5;
        *(v57 + 32) = v78;
        *(v57 + 40) = v79 & 1;
        v59 = v80;
        v58 = v81;
        *(v57 + 48) = v81;
        *(v57 + 56) = v59;
        *(v57 + 64) = 0;
        *(v57 + 72) = xmmword_10138BBF0;
        *(v57 + 88) = v75;
        v85 = sub_10109C920;
        v86 = v57;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v83 = sub_100006684;
        v84 = &unk_101663F00;
        v60 = _Block_copy(&aBlock);

        sub_100012908(v58);
        v61 = v76;
        static DispatchQoS.unspecified.getter();
        v87[0] = _swiftEmptyArrayStorage;
        sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v62 = v68;
        v63 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v60);
        (*(v77 + 8))(v62, v63);
        (*(v67 + 8))(v61, v69);
      }

      else
      {

        if (v81)
        {
          (v81)(v64);
        }
      }

      return;
    }

    v31 = 0;
    v32 = (v26 + 4);
    while (v31 < v27[2])
    {
      sub_10001F280(v32, &aBlock);
      v33 = v84;
      v34 = v85;
      sub_1000035D0(&aBlock, v84);
      if ((*(v34 + 14))(v33, v34))
      {
        sub_100031694(&aBlock, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v29[2] + 1, 1);
          v29 = v90;
        }

        v37 = v29[2];
        v36 = v29[3];
        if (v37 >= v36 >> 1)
        {
          sub_100025B1C((v36 > 1), v37 + 1, 1);
        }

        v38 = v88;
        v39 = v89;
        v40 = sub_10015049C(v87, v88);
        v41 = *(*(v38 - 8) + 64);
        __chkstk_darwin(v40);
        v43 = &v67 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v43);
        sub_1006252D4(v37, v43, &v90, v38, v39);
        sub_100007BAC(v87);
        v29 = v90;
      }

      else
      {
        sub_100007BAC(&aBlock);
      }

      ++v31;
      v32 += 40;
      if (v28 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v30 = v81;
  if (qword_1016951D8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177C578);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&aBlock = v49;
    *v48 = 136315650;
    if (v79)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
    }

    else
    {
      v87[0] = v78;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v65;
    }

    v66 = sub_1000136BC(v50, v51, &aBlock);

    *(v48 + 4) = v66;
    *(v48 + 12) = 2050;
    *(v48 + 14) = v23;
    *(v48 + 22) = 2050;
    *(v48 + 24) = 0x4122750000000000;
    _os_log_impl(&_mh_execute_header, v46, v47, "%s Time since last attempt %{public}f. Threshold %{public}f. Not refreshing.", v48, 0x20u);
    sub_100007BAC(v49);
  }

  if (v30)
  {
    v30();
  }
}

uint64_t sub_101094E54(uint64_t a1, uint64_t a2)
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
  aBlock[4] = sub_10109C57C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663E60;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_101095138(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v87 = a2;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  v10 = Locale.identifier.getter();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 stringForKey:v15];

  v88 = v12;
  v86 = v10;
  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v10 == v17 && v12 == v19)
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      LOBYTE(v16) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v21 = sub_101090B40();
  v22 = qword_101698690;
  v23 = qword_101698690 + 1;
  if (qword_101698690 == -1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v23 >= 0x3E8)
  {
    v23 = 1;
  }

  qword_101698690 = v23;
  if (v21 & v16)
  {

    if (qword_1016951D8 == -1)
    {
LABEL_14:
      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177C578);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = v22;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v92 = v29;
        *v28 = 136315138;
        v89[0] = v27;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = sub_1000136BC(v30, v31, &v92);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s Migration has already been completed.", v28, 0xCu);
        sub_100007BAC(v29);
      }

      v33 = v87;
      return v33();
    }

LABEL_49:
    swift_once();
    goto LABEL_14;
  }

  v84 = v22;
  v85 = a3;
  if (v16)
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177C578);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v92 = v38;
      *v37 = 136315138;
      v89[0] = v84;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = sub_1000136BC(v39, v40, &v92);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Forcing product info fetch as a one time migration.", v37, 0xCu);
      sub_100007BAC(v38);
    }
  }

  else
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177C578);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v22;
      v46 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89[0] = v83;
      *v46 = 136315650;
      *&v92 = v45;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = sub_1000136BC(v47, v48, v89);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2082;
      v50 = [v13 standardUserDefaults];
      v51 = String._bridgeToObjectiveC()();
      v52 = [v50 stringForKey:v51];

      if (v52)
      {
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      *&v92 = v53;
      *(&v92 + 1) = v55;
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      v56 = String.init<A>(describing:)();
      v58 = sub_1000136BC(v56, v57, v89);

      *(v46 + 14) = v58;
      *(v46 + 22) = 2082;
      *(v46 + 24) = sub_1000136BC(v86, v88, v89);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Forcing product info fetch due to locale change. Previous: [%{public}s], new: [%{public}s].", v46, 0x20u);
      swift_arrayDestroy();
    }
  }

  v59 = *(a1 + 24);
  v60 = sub_100007F54();
  v22 = v60;
  v61 = v60[2];
  if (v61)
  {
    v62 = 0;
    v63 = (v60 + 4);
    v64 = _swiftEmptyArrayStorage;
    while (v62 < *(v22 + 16))
    {
      sub_10001F280(v63, &v92);
      v65 = v93;
      v66 = v94;
      sub_1000035D0(&v92, v93);
      if ((*(v66 + 112))(v65, v66))
      {
        sub_100031694(&v92, v89);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v64[2] + 1, 1);
          v64 = v95;
        }

        v69 = v64[2];
        v68 = v64[3];
        if (v69 >= v68 >> 1)
        {
          sub_100025B1C((v68 > 1), v69 + 1, 1);
        }

        v70 = v90;
        v71 = v91;
        v72 = sub_10015049C(v89, v90);
        v73 = *(*(v70 - 8) + 64);
        __chkstk_darwin(v72);
        v75 = &v82 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v76 + 16))(v75);
        sub_1006252D4(v69, v75, &v95, v70, v71);
        sub_100007BAC(v89);
        v64 = v95;
      }

      else
      {
        sub_100007BAC(&v92);
      }

      ++v62;
      v63 += 40;
      if (v61 == v62)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_43:

  if (v64[2])
  {
    v77 = swift_allocObject();
    v79 = v85;
    v78 = v86;
    v77[2] = a1;
    v77[3] = v78;
    v80 = v87;
    v77[4] = v88;
    v77[5] = v80;
    v77[6] = v79;

    sub_101095D74(v64, 1, 0, 0xF000000000000000, v84, 0, sub_10109C588, v77);
  }

  v33 = v87;
  return v33();
}

uint64_t sub_101095A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  [v14 setObject:v15 forKey:v16];

  v17 = *(a1 + 16);
  aBlock[4] = sub_10109C598;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663EB0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v9, v6);
  (*(v10 + 8))(v13, v22);

  return v25(v19);
}

uint64_t sub_101095D74(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v27 = a5;
  v29 = a4;
  v28 = a2;
  v15 = *v9;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v20 = *(v30 + 64);
  __chkstk_darwin(v32);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9[2];
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v9;
  *(v23 + 32) = v27;
  *(v23 + 40) = a6 & 1;
  *(v23 + 48) = a7;
  *(v23 + 56) = a8;
  *(v23 + 64) = v28;
  v24 = v29;
  *(v23 + 72) = a3;
  *(v23 + 80) = v24;
  *(v23 + 88) = v15;
  aBlock[4] = sub_10109BBF0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663CA8;
  v25 = _Block_copy(aBlock);

  sub_100012908(a7);
  sub_10002E98C(a3, v24);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v33 + 8))(v19, v16);
  (*(v30 + 8))(v22, v32);
}

void sub_1010960E4(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v251 = a8;
  v241 = a7;
  v240 = a6;
  v244 = a5;
  v236 = a4;
  v246 = a3;
  v231 = type metadata accessor for DispatchWorkItemFlags();
  v230 = *(v231 - 8);
  v12 = *(v230 + 64);
  __chkstk_darwin(v231);
  v228 = v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for DispatchQoS();
  v227 = *(v229 - 8);
  v14 = *(v227 + 64);
  __chkstk_darwin(v229);
  v226 = v221 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for DispatchQoS.QoSClass();
  v224 = *(v225 - 8);
  v16 = *(v224 + 64);
  __chkstk_darwin(v225);
  v223 = v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v239 = v221 - v20;
  v238 = type metadata accessor for BeaconProductInfoRecord();
  v234 = *(v238 - 8);
  v21 = *(v234 + 64);
  __chkstk_darwin(v238);
  v233 = v221 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v247 = v221 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v252 = v221 - v27;
  v28 = type metadata accessor for AccessoryMetadata(0);
  v242 = *(v28 - 8);
  v29 = *(v242 + 64);
  v30 = __chkstk_darwin(v28);
  v245 = v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v250 = v221 - v32;
  v260 = type metadata accessor for UUID();
  v33 = *(v260 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v260);
  v235 = (v221 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v243 = v221 - v38;
  v39 = __chkstk_darwin(v37);
  v253 = v221 - v40;
  v41 = __chkstk_darwin(v39);
  v254 = v221 - v42;
  v43 = __chkstk_darwin(v41);
  v237 = v221 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = v221 - v46;
  __chkstk_darwin(v45);
  v49 = v221 - v48;
  v50 = a1[2];
  swift_beginAccess();
  v51 = _swiftEmptyArrayStorage;
  v258 = a2;
  v259 = v33;
  v255 = v50;
  v249 = a1;
  v232 = v28;
  if (v50)
  {
    v52 = (a1 + 4);
    *&v256 = v33 + 8;
    v257 = v47;
    while (1)
    {
      sub_10001F280(v52, &aBlock);
      v53 = *(a2 + 48);
      v55 = v263;
      v54 = v264;
      sub_1000035D0(&aBlock, v263);
      v56 = *(*(v54 + 1) + 8);
      v57 = *(v56 + 32);

      v57(v55, v56);
      if (!*(v53 + 16))
      {
        break;
      }

      sub_1000210EC(v49);
      v59 = v58;
      (*v256)(v49, v260);

      if ((v59 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_100007BAC(&aBlock);
LABEL_4:
      v47 = v257;
      a2 = v258;
      v52 += 40;
      if (!--v50)
      {
        goto LABEL_14;
      }
    }

    (*v256)(v49, v260);

LABEL_9:
    sub_100031694(&aBlock, &v266);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v270 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100025B1C(0, v51[2] + 1, 1);
      v51 = v270;
    }

    v62 = v51[2];
    v61 = v51[3];
    if (v62 >= v61 >> 1)
    {
      sub_100025B1C((v61 > 1), v62 + 1, 1);
    }

    v63 = v267;
    v64 = v268;
    v65 = sub_10015049C(&v266, v267);
    v66 = *(*(v63 - 8) + 64);
    __chkstk_darwin(v65);
    v68 = v221 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v68);
    sub_1006252D4(v62, v68, &v270, v63, v64);
    sub_100007BAC(&v266);
    v51 = v270;
    goto LABEL_4;
  }

LABEL_14:
  v70 = v51[2];
  v71 = &qword_101695000;
  if (!v70)
  {

    v93 = v255;
LABEL_27:

    v94 = v240;
    if (v71[59] != -1)
    {
LABEL_104:
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_1000076D4(v95, qword_10177C578);

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v266 = v99;
      *v98 = 136315651;
      if (v236)
      {
        v100 = 0;
        v101 = 0xE000000000000000;
      }

      else
      {
        *&aBlock = v246;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = v102;
      }

      v103 = sub_1000136BC(v100, v101, &v266);

      *(v98 + 4) = v103;
      *(v98 + 12) = 2160;
      *(v98 + 14) = 1752392040;
      *(v98 + 22) = 2081;
      if (v93)
      {
        *&v256 = v99;
        LODWORD(v257) = v97;
        v270 = _swiftEmptyArrayStorage;
        sub_101123D4C(0, v93, 0);
        v104 = v270;
        v105 = (v249 + 4);
        v106 = v93;
        v107 = v235;
        do
        {
          sub_10001F280(v105, &aBlock);
          v109 = v263;
          v108 = v264;
          sub_1000035D0(&aBlock, v263);
          (*(*(*(v108 + 1) + 8) + 32))(v109);
          sub_100007BAC(&aBlock);
          v270 = v104;
          v111 = v104[2];
          v110 = v104[3];
          if (v111 >= v110 >> 1)
          {
            sub_101123D4C(v110 > 1, v111 + 1, 1);
            v104 = v270;
          }

          v104[2] = v111 + 1;
          (*(v259 + 32))(v104 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v111, v107, v260);
          v105 += 40;
          --v106;
        }

        while (v106);
        v93 = v255;
        LOBYTE(v97) = v257;
      }

      v112 = Array.description.getter();
      v114 = v113;

      v115 = sub_1000136BC(v112, v114, &v266);

      *(v98 + 24) = v115;
      _os_log_impl(&_mh_execute_header, v96, v97, "%s Already fetching product info for beacons %{private,mask.hash}s", v98, 0x20u);
      swift_arrayDestroy();

      v94 = v240;
      a2 = v258;
    }

    else
    {
    }

    v116 = v244;
    v117 = v246;
    v118 = v236;
    v119 = v249;
    if (v93)
    {
      v120 = v249 + 4;
      do
      {
        sub_101097C28(v120, v116, v94, v117, v118 & 1, v119, a2);
        v120 += 5;
        --v93;
      }

      while (v93);
    }

    return;
  }

  *&v256 = a9;
  v222 = a10;
  v266 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, v70, 0);
  v72 = v266;
  v73 = v47;
  v74 = (v51 + 4);
  v75 = v260;
  do
  {
    sub_10001F280(v74, &aBlock);
    v77 = v263;
    v76 = v264;
    sub_1000035D0(&aBlock, v263);
    (*(*(*(v76 + 1) + 8) + 32))(v77);
    sub_100007BAC(&aBlock);
    v266 = v72;
    v79 = *(v72 + 16);
    v78 = *(v72 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_101123D4C(v78 > 1, v79 + 1, 1);
      v72 = v266;
    }

    *(v72 + 16) = v79 + 1;
    v80 = (*(v259 + 80) + 32) & ~*(v259 + 80);
    v81 = *(v259 + 72);
    (*(v259 + 32))(v72 + v80 + v81 * v79, v73, v75);
    v74 += 40;
    --v70;
  }

  while (v70);
  v248 = v81;
  v82 = v51[2];

  if (!v82)
  {
    a2 = v258;
    v93 = v255;
    v71 = &qword_101695000;
    goto LABEL_27;
  }

  v83 = v255;
  if (qword_1016951D8 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  v85 = sub_1000076D4(v84, qword_10177C578);

  v221[1] = v85;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v232;
  if (v88)
  {
    v90 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v90 = 136315907;
    if (v236)
    {
      v91 = 0;
      v92 = 0xE000000000000000;
    }

    else
    {
      v266 = v246;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v121;
    }

    v122 = sub_1000136BC(v91, v92, &aBlock);

    *(v90 + 4) = v122;
    *(v90 + 12) = 2160;
    *(v90 + 14) = 1752392040;
    *(v90 + 22) = 2081;
    v123 = Array.description.getter();
    v125 = sub_1000136BC(v123, v124, &aBlock);

    *(v90 + 24) = v125;
    *(v90 + 32) = 1024;
    *(v90 + 34) = v241 & 1;
    _os_log_impl(&_mh_execute_header, v86, v87, "%s fetchProductInfo for beacons %{private,mask.hash}s. Force [%{BOOL}d]", v90, 0x26u);
    swift_arrayDestroy();
  }

  v126 = v252;
  v127 = _swiftEmptyArrayStorage;
  v128 = v247;
  if (v83)
  {
    v129 = (v249 + 4);
    v130 = (v242 + 48);
    v235 = (v259 + 8);
    v234 += 48;
    v257 = (v242 + 56);
    while (1)
    {
      v255 = v83;
      sub_10001F280(v129, &aBlock);
      sub_10001F280(&aBlock, &v266);
      v132 = v251;
      v133 = v256;
      sub_10002E98C(v251, v256);
      sub_100D5D0A4(&v266, v132, v133, v128);
      v134 = *v130;
      if ((*v130)(v128, 1, v89) != 1)
      {
        break;
      }

      sub_10000B3A8(v128, &qword_1016A62A0, &unk_101396E10);
      (*v257)(v126, 1, 1, v89);
LABEL_59:
      sub_100007BAC(&aBlock);
      if (v134(v126, 1, v89) == 1)
      {
        sub_10000B3A8(v126, &qword_1016A62A0, &unk_101396E10);
        v131 = v255;
      }

      else
      {
        sub_10109C444(v126, v250, type metadata accessor for AccessoryMetadata);
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v131 = v255;
        if ((v152 & 1) == 0)
        {
          v127 = sub_100A5EEF8(0, v127[2] + 1, 1, v127);
        }

        v154 = v127[2];
        v153 = v127[3];
        if (v154 >= v153 >> 1)
        {
          v127 = sub_100A5EEF8(v153 > 1, v154 + 1, 1, v127);
        }

        v127[2] = v154 + 1;
        sub_10109C444(v250, v127 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v154, type metadata accessor for AccessoryMetadata);
        v128 = v247;
        v126 = v252;
      }

      v129 += 40;
      v83 = v131 - 1;
      if (!v83)
      {
        goto LABEL_65;
      }
    }

    v249 = v127;
    v135 = v245;
    sub_10109C444(v128, v245, type metadata accessor for AccessoryMetadata);
    if (v241)
    {
      v136 = (v135 + *(v89 + 64));
      v137 = v136[1];

      *v136 = 0;
      v136[1] = 0xE000000000000000;
    }

    else
    {
      v138 = *(v258 + 24);
      v140 = v263;
      v139 = v264;
      sub_1000035D0(&aBlock, v263);
      v141 = v237;
      (*(*(*(v139 + 1) + 8) + 32))(v140);
      v142 = v239;
      sub_100AC1584(v141, v239);
      (*v235)(v141, v260);
      v143 = v238;
      if ((*v234)(v142, 1, v238) == 1)
      {
        sub_10000B3A8(v142, &unk_1016AF8C0, &unk_1013A07A0);
        v128 = v247;
        v144 = v89;
        v135 = v245;
LABEL_58:
        v126 = v252;
        sub_10109C4AC(v135, v252, type metadata accessor for AccessoryMetadata);
        (*v257)(v126, 0, 1, v144);
        sub_10109C514(v135, type metadata accessor for AccessoryMetadata);
        v89 = v144;
        v127 = v249;
        goto LABEL_59;
      }

      v145 = v142;
      v146 = v233;
      sub_10109C444(v145, v233, type metadata accessor for BeaconProductInfoRecord);
      v147 = (v146 + *(v143 + 68));
      v149 = *v147;
      v148 = v147[1];

      sub_10109C514(v146, type metadata accessor for BeaconProductInfoRecord);
      v135 = v245;
      v150 = (v245 + *(v89 + 64));
      v151 = v150[1];

      *v150 = v149;
      v150[1] = v148;
      v128 = v247;
    }

    v144 = v89;
    goto LABEL_58;
  }

LABEL_65:
  if (v127[2])
  {
    a2 = *(v72 + 16);
    v155 = v244;
    v156 = v246;
    v157 = v254;
    if (!a2)
    {
LABEL_92:
      v201 = type metadata accessor for Transaction();
      __chkstk_darwin(v201);
      v221[-6] = v258;
      v221[-5] = v127;
      v221[-4] = v72;
      v221[-3] = v156;
      LOBYTE(v221[-2]) = v236 & 1;
      v221[-1] = v222;
      static Transaction.named<A>(_:with:)();

      return;
    }

    v158 = *(v259 + 16);
    v259 += 16;
    v257 = (v259 - 8);
    v94 = v72 + v80;
    v256 = xmmword_101385D80;
    v255 = v158;
    while (1)
    {
      v93 = v259;
      v164 = v260;
      (v158)(v157, v94, v260);
      if (!v155)
      {
        break;
      }

      v165 = v158;
      v166 = a2;
      a2 = v127;
      v167 = v253;
      (v165)(v253, v157, v164);
      sub_1000BC4D4(&qword_1016B3C40, &qword_1013D49C8);
      v168 = swift_allocObject();
      *(v168 + 16) = v256;
      v169 = swift_allocObject();
      *(v169 + 16) = v155;
      *(v169 + 24) = v240;
      *(v168 + 32) = sub_10013A884;
      *(v168 + 40) = v169;
      v170 = v258;
      swift_beginAccess();

      v171 = *(v170 + 48);
      v172 = swift_isUniquelyReferenced_nonNull_native();
      v266 = *(v170 + 48);
      v173 = v266;
      *(v170 + 48) = 0x8000000000000000;
      v175 = sub_1000210EC(v167);
      v176 = *(v173 + 16);
      v177 = (v174 & 1) == 0;
      v178 = v176 + v177;
      if (__OFADD__(v176, v177))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v93 = v174;
      if (*(v173 + 24) >= v178)
      {
        v127 = a2;
        if ((v172 & 1) == 0)
        {
          sub_10100EB80();
        }
      }

      else
      {
        sub_100FF82C8(v178, v172);
        v179 = sub_1000210EC(v253);
        if ((v93 & 1) != (v180 & 1))
        {
          goto LABEL_105;
        }

        v175 = v179;
        v127 = a2;
      }

      a2 = v166;
      v193 = v266;
      v158 = v255;
      if (v93)
      {
        v159 = v266[7];
        v160 = *(v159 + 8 * v175);
        *(v159 + 8 * v175) = v168;
      }

      else
      {
        v266[(v175 >> 6) + 8] |= 1 << v175;
        (v158)(v193[6] + v175 * v248, v253, v260);
        *(v193[7] + 8 * v175) = v168;
        v194 = v193[2];
        v189 = __OFADD__(v194, 1);
        v195 = v194 + 1;
        if (v189)
        {
          goto LABEL_102;
        }

        v193[2] = v195;
      }

      v161 = *v257;
      v162 = &v271;
LABEL_70:
      v163 = v260;
      v161(*(v162 - 32), v260);
      *(v258 + 48) = v193;
      swift_endAccess();
      v161(v254, v163);
      v94 += v248;
      --a2;
      v155 = v244;
      v156 = v246;
      v157 = v254;
      if (!a2)
      {
        goto LABEL_92;
      }
    }

    v181 = v243;
    (v158)(v243, v157, v164);
    v182 = v258;
    swift_beginAccess();
    v183 = *(v182 + 48);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v266 = *(v182 + 48);
    v184 = v266;
    *(v182 + 48) = 0x8000000000000000;
    v185 = sub_1000210EC(v181);
    v187 = *(v184 + 16);
    v188 = (v186 & 1) == 0;
    v189 = __OFADD__(v187, v188);
    v190 = v187 + v188;
    if (v189)
    {
      goto LABEL_101;
    }

    v191 = v186;
    if (*(v184 + 24) >= v190)
    {
      if ((v93 & 1) == 0)
      {
        v93 = v185;
        sub_10100EB80();
        v185 = v93;
        v193 = v266;
        if (v191)
        {
          goto LABEL_87;
        }

        goto LABEL_89;
      }
    }

    else
    {
      sub_100FF82C8(v190, v93);
      v185 = sub_1000210EC(v243);
      if ((v191 & 1) != (v192 & 1))
      {
LABEL_105:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    v193 = v266;
    if (v191)
    {
LABEL_87:
      v196 = v193[7];
      v197 = *(v196 + 8 * v185);
      *(v196 + 8 * v185) = _swiftEmptyArrayStorage;

LABEL_91:
      v161 = *v257;
      v162 = &v269;
      goto LABEL_70;
    }

LABEL_89:
    v193[(v185 >> 6) + 8] |= 1 << v185;
    v198 = v185;
    (v158)(v193[6] + v185 * v248, v243, v260);
    *(v193[7] + 8 * v198) = _swiftEmptyArrayStorage;
    v199 = v193[2];
    v189 = __OFADD__(v199, 1);
    v200 = v199 + 1;
    if (v189)
    {
      goto LABEL_103;
    }

    v193[2] = v200;
    goto LABEL_91;
  }

  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    *&aBlock = v205;
    *v204 = 136315138;
    if (v236)
    {
      v206 = 0;
      v207 = 0xE000000000000000;
    }

    else
    {
      v266 = v246;
      v206 = dispatch thunk of CustomStringConvertible.description.getter();
      v207 = v208;
    }

    v209 = sub_1000136BC(v206, v207, &aBlock);

    *(v204 + 4) = v209;
    _os_log_impl(&_mh_execute_header, v202, v203, "%s Metadata is empty. Not fetching product info.", v204, 0xCu);
    sub_100007BAC(v205);
  }

  v210 = v244;
  sub_1000BC488();
  v211 = v224;
  v212 = v223;
  v213 = v225;
  (*(v224 + 104))(v223, enum case for DispatchQoS.QoSClass.default(_:), v225);
  v214 = static OS_dispatch_queue.global(qos:)();
  (*(v211 + 8))(v212, v213);
  v215 = swift_allocObject();
  v216 = v240;
  *(v215 + 16) = v210;
  *(v215 + 24) = v216;
  v264 = sub_100150C48;
  v265 = v215;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v262 = sub_100006684;
  v263 = &unk_101663D20;
  v217 = _Block_copy(&aBlock);
  sub_100012908(v210);
  v218 = v226;
  static DispatchQoS.unspecified.getter();
  v266 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v219 = v228;
  v220 = v231;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v217);

  (*(v230 + 8))(v219, v220);
  (*(v227 + 8))(v218, v229);
}

uint64_t sub_101097C28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v67 = a1;
  v68 = a7;
  v70 = type metadata accessor for UUID();
  v14 = *(v70 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v70);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v16);
  v21 = v60 - v20;
  v69 = a2;
  if (a2)
  {
    v62 = a4;
    v22 = qword_1016951D8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C578);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    v63 = v25;
    v26 = os_log_type_enabled(v24, v25);
    v65 = v18;
    v66 = v8;
    if (v26)
    {
      v61 = v24;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v74[0] = v28;
      v64 = v27;
      *v27 = 136315651;
      v60[1] = v28;
      if (a5)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        v71[0] = v62;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v31;
      }

      v32 = sub_1000136BC(v29, v30, v74);

      v33 = v64;
      *(v64 + 1) = v32;
      *(v33 + 6) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 11) = 2081;
      v34 = *(a6 + 16);
      if (v34)
      {
        v62 = a3;
        v75 = _swiftEmptyArrayStorage;
        sub_101123D4C(0, v34, 0);
        v35 = v75;
        v36 = a6 + 32;
        do
        {
          sub_10001F280(v36, v71);
          v38 = v72;
          v37 = v73;
          sub_1000035D0(v71, v72);
          (*(*(*(v37 + 8) + 8) + 32))(v38);
          sub_100007BAC(v71);
          v75 = v35;
          v40 = v35[2];
          v39 = v35[3];
          if (v40 >= v39 >> 1)
          {
            sub_101123D4C(v39 > 1, v40 + 1, 1);
            v35 = v75;
          }

          v35[2] = v40 + 1;
          (*(v14 + 32))(v35 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v40, v21, v70);
          v36 += 40;
          --v34;
        }

        while (v34);
        v18 = v65;
        a3 = v62;
      }

      v41 = Array.description.getter();
      v43 = v42;

      v44 = sub_1000136BC(v41, v43, v74);

      v45 = v64;
      *(v64 + 3) = v44;
      v46 = v61;
      _os_log_impl(&_mh_execute_header, v61, v63, "%s Waiting for %{private,mask.hash}s product info fetch finish.", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = v67[3];
    v48 = v67[4];
    sub_1000035D0(v67, v47);
    (*(*(*(v48 + 8) + 8) + 32))(v47);
    v49 = sub_101090894();
    v51 = sub_1010904B0(v74);
    if (*v50)
    {
      v52 = v50;
      v53 = swift_allocObject();
      v54 = v69;
      *(v53 + 16) = v69;
      *(v53 + 24) = a3;
      v55 = *v52;
      sub_100012908(v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v52 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_100A5EF20(0, v55[2] + 1, 1, v55);
        *v52 = v55;
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_100A5EF20((v57 > 1), v58 + 1, 1, v55);
        *v52 = v55;
      }

      v55[2] = v58 + 1;
      v59 = &v55[2 * v58];
      v59[4] = sub_100150F2C;
      v59[5] = v53;
      (v51)(v74, 0);
      (*(v14 + 8))(v65, v70);
      (v49)(v71, 0);
    }

    else
    {
      (v51)(v74, 0);
      (*(v14 + 8))(v18, v70);
      (v49)(v71, 0);
    }

    return sub_1000BB27C(v69);
  }

  return result;
}

uint64_t sub_1010981E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v58 = a6;
  v57 = a5;
  v59 = a4;
  v60 = a1;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v48 = sub_1000BC4D4(&qword_1016C7CC0, &qword_1013BB5D8);
  v46 = *(v48 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v48);
  v62 = &v42 - v13;
  v14 = sub_1000BC4D4(&qword_1016C59C0, &qword_101400B80);
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  __chkstk_darwin(v14);
  v47 = &v42 - v16;
  v17 = sub_1000BC4D4(&qword_1016C59C8, &qword_101400B88);
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  __chkstk_darwin(v17);
  v51 = &v42 - v19;
  v20 = sub_1000BC4D4(&qword_1016C59D0, &qword_101400B90);
  v55 = *(v20 - 8);
  v56 = v20;
  v21 = *(v55 + 64);
  __chkstk_darwin(v20);
  v54 = &v42 - v22;
  v23 = *(a2 + 32);
  v63 = sub_100366634(a3);
  v61 = a2;
  v24 = *(a2 + 16);
  v64 = v24;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(*(v25 - 8) + 56);
  v43(v11, 1, 1, v25);
  v45 = v24;
  sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
  v26 = sub_1000BC488();
  sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
  sub_10109C768(&qword_1016AF9C0, sub_1000BC488);
  v44 = v26;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  if (qword_1016951E0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v27, qword_1016C57C0);
  v28 = v45;
  v63 = v45;
  v43(v11, 1, 1, v25);
  sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8);
  v29 = v47;
  v30 = v48;
  v31 = v62;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  (*(v46 + 8))(v31, v30);
  sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  sub_1000041A4(&qword_1016C59D8, &qword_1016C59C0, &qword_101400B80);
  v32 = v50;
  v33 = v51;
  Publisher.map<A>(_:)();
  (*(v49 + 8))(v29, v32);
  sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
  sub_1000041A4(&qword_1016C59E0, &qword_1016C59C8, &qword_101400B88);
  sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510);
  v34 = v53;
  v35 = v54;
  Publisher.catch<A>(_:)();
  (*(v52 + 8))(v33, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v59;
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  v39 = v57;
  *(v37 + 32) = v60;
  *(v37 + 40) = v39;
  *(v37 + 48) = v58 & 1;
  sub_1000041A4(&qword_1016C59E8, &qword_1016C59D0, &qword_101400B90);

  v40 = v56;
  Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v35, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1010989A0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10109C4AC(a1, &v6 - v4, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_101098A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v17 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v51 - v19);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = a6;
    v54 = a5;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a3;

    Transaction.capture()();
    sub_1000D2A70(a1, v20, &qword_10169E748, &unk_10139DAB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10109C444(v20, v16, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177C578);
      sub_10109C4AC(v16, v14, type metadata accessor for BluetoothCommunicationCoordinator.Error);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v53 = v26;
        v27 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57 = v52;
        *v27 = 136315907;
        if (v55)
        {
          v28 = 0;
          v29 = 0xE000000000000000;
        }

        else
        {
          v56 = v54;
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v29 = v37;
        }

        v38 = sub_1000136BC(v28, v29, &v57);

        *(v27 + 4) = v38;
        *(v27 + 12) = 2160;
        *(v27 + 14) = 1752392040;
        *(v27 + 22) = 2081;
        type metadata accessor for UUID();
        v39 = Array.description.getter();
        v41 = sub_1000136BC(v39, v40, &v57);

        *(v27 + 24) = v41;
        *(v27 + 32) = 2082;
        v42 = sub_10118F894();
        v44 = v43;
        sub_10109C514(v14, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v45 = sub_1000136BC(v42, v44, &v57);

        *(v27 + 34) = v45;
        _os_log_impl(&_mh_execute_header, v25, v53, "%s Failed fetch product info for %{private,mask.hash}s! %{public}s", v27, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_10109C514(v14, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      }

      sub_1010990DC(v22, a3);

      return sub_10109C514(v16, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    else
    {
      v30 = *v20;
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_10177C578);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v34 = 136315651;
        if (v55)
        {
          v35 = 0;
          v36 = 0xE000000000000000;
        }

        else
        {
          v56 = v54;
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v46;
        }

        v47 = sub_1000136BC(v35, v36, &v57);

        *(v34 + 4) = v47;
        *(v34 + 12) = 2160;
        *(v34 + 14) = 1752392040;
        *(v34 + 22) = 2081;
        type metadata accessor for UUID();
        v48 = Array.description.getter();
        v50 = sub_1000136BC(v48, v49, &v57);

        *(v34 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s Fetched product infos for %{private,mask.hash}s.", v34, 0x20u);
        swift_arrayDestroy();
      }

      sub_1010997D0(v30, a3, v54, v55 & 1, sub_10109C43C, v23);
    }
  }

  return result;
}

uint64_t sub_1010990DC(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v62);
  v61 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v60);
  v59 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a2 + 16);
    if (v19)
    {
      v53 = sub_1000BC488();
      v20 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      swift_beginAccess();
      v22 = *(v13 + 16);
      v21 = v13 + 16;
      v52 = v22;
      v51 = (v9 + 104);
      v50 = (v9 + 8);
      v64 = *(v21 + 56);
      v49 = enum case for DispatchQoS.QoSClass.default(_:);
      v48 = v67;
      v47 = (v3 + 8);
      v46 = (v6 + 8);
      v55 = v21;
      v63 = (v21 - 8);
      v56 = v12;
      v54 = v16;
      v23 = v59;
      v22(v16, v20, v12);
      while (1)
      {
        v25 = *(v18 + 48);
        if (*(v25 + 16))
        {
          v26 = *(v18 + 48);

          v27 = sub_1000210EC(v16);
          if (v28)
          {
            v29 = *(*(v25 + 56) + 8 * v27);
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = v57;
        v31 = v58;
        (*v51)(v57, v49, v58);
        v32 = static OS_dispatch_queue.global(qos:)();
        (*v50)(v30, v31);
        v33 = swift_allocObject();
        *(v33 + 16) = v29;
        v67[2] = sub_10109C574;
        v67[3] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v67[0] = sub_100006684;
        v67[1] = &unk_101663E10;
        v34 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v65 = _swiftEmptyArrayStorage;
        sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v35 = v61;
        v36 = v62;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v34);

        (*v47)(v35, v36);
        (*v46)(v23, v60);

        swift_beginAccess();
        v37 = *(v18 + 48);
        v16 = v54;
        v38 = sub_1000210EC(v54);
        v39 = v56;
        if (v40)
        {
          v41 = v38;
          v42 = *(v18 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v18 + 48);
          v65 = v44;
          *(v18 + 48) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10100EB80();
            v44 = v65;
          }

          (*v63)((v44[6] + v41 * v64), v39);
          v24 = *(v44[7] + 8 * v41);

          sub_100B27F70(v41, v44);
          *(v18 + 48) = v44;
        }

        swift_endAccess();
        (*v63)(v16, v39);
        v20 += v64;
        if (!--v19)
        {
          break;
        }

        v52(v16, v20, v39);
      }
    }
  }

  return result;
}

uint64_t sub_101099770(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = (result + 40);
      do
      {
        v4 = *(v2 - 1);
        v3 = *v2;

        v4(v5);

        v2 += 2;
        --v1;
      }

      while (v1);
    }
  }

  return result;
}

void sub_1010997D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v197 = a6;
  v199 = a5;
  v233 = a4;
  v227 = a3;
  v192 = type metadata accessor for DispatchTime();
  v191 = *(v192 - 8);
  v9 = *(v191 + 64);
  v10 = __chkstk_darwin(v192);
  v189 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v190 = &v188 - v12;
  v226 = type metadata accessor for DispatchWorkItemFlags();
  v196 = *(v226 - 8);
  v13 = *(v196 + 64);
  __chkstk_darwin(v226);
  v225 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for DispatchQoS();
  v195 = *(v224 - 8);
  v15 = *(v195 + 64);
  __chkstk_darwin(v224);
  v223 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1000BC4D4(&qword_1016C59B0, &qword_101400B70);
  v194 = *(v232 - 8);
  v17 = *(v194 + 64);
  __chkstk_darwin(v232);
  v212 = (&v188 - v18);
  v19 = sub_1000BC4D4(&qword_1016C59B8, &qword_101400B78);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v231 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v230 = &v188 - v23;
  v242 = type metadata accessor for AccessoryProductInfo();
  isa = v242[-1].isa;
  v24 = *(isa + 8);
  v25 = __chkstk_darwin(v242);
  v204 = &v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v188 - v28;
  v30 = __chkstk_darwin(v27);
  v203 = &v188 - v31;
  __chkstk_darwin(v30);
  v202 = &v188 - v32;
  v209 = type metadata accessor for SystemInfo.DeviceLockState();
  v33 = *(v209 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v209);
  v236 = &v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v235 = &v188 - v37;
  v38 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v239 = &v188 - v40;
  v234 = type metadata accessor for BeaconProductInfoRecord();
  v238 = *(v234 - 8);
  v41 = *(v238 + 64);
  v42 = __chkstk_darwin(v234);
  v222 = &v188 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v244 = &v188 - v45;
  v193 = v46;
  __chkstk_darwin(v44);
  v201 = &v188 - v47;
  v48 = type metadata accessor for UUID();
  v213 = *(v48 - 8);
  v49 = *(v213 + 64);
  v50 = __chkstk_darwin(v48);
  v188 = &v188 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v200 = &v188 - v53;
  __chkstk_darwin(v52);
  v210 = &v188 - v54;
  v55 = type metadata accessor for DispatchPredicate();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  __chkstk_darwin(v55);
  v59 = (&v188 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v237 = v6;
  v60 = *(v6 + 16);
  *v59 = v60;
  (*(v56 + 104))(v59, enum case for DispatchPredicate.onQueue(_:), v55);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  (*(v56 + 8))(v59, v55);
  if ((v60 & 1) == 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v207 = *(a1 + 16);
  if (!v207)
  {
    if (qword_1016951D8 == -1)
    {
LABEL_36:
      v107 = type metadata accessor for Logger();
      sub_1000076D4(v107, qword_10177C578);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock[0] = v111;
        *v110 = 136315138;
        if (v233)
        {
          v112 = 0;
          v113 = 0xE000000000000000;
        }

        else
        {
          *&v251 = v227;
          v112 = dispatch thunk of CustomStringConvertible.description.getter();
          v113 = v169;
        }

        v170 = sub_1000136BC(v112, v113, aBlock);

        *(v110 + 4) = v170;
        _os_log_impl(&_mh_execute_header, v108, v109, "%s Empty products in response!", v110, 0xCu);
        sub_100007BAC(v111);
      }

      if (v199)
      {
        v199();
      }

      return;
    }

LABEL_85:
    swift_once();
    goto LABEL_36;
  }

  v62 = *(a2 + 16);
  v243 = v48;
  v228 = v62;
  if (v62)
  {
    v206 = a1;
    v63 = 0;
    v229 = 0;
    v240 = *(v213 + 16);
    v221 = (a2 + ((*(v213 + 80) + 32) & ~*(v213 + 80)));
    v211 = *(v237 + 24);
    v220 = (v33 + 104);
    v219 = (v33 + 8);
    v218 = *(v213 + 72);
    v241 = v213 + 16;
    v217 = (v213 + 8);
    v216 = (v238 + 56);
    v198 = (v238 + 48);
    v215 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v214 = xmmword_101385D80;
    v245 = _swiftEmptyArrayStorage;
    v64 = v209;
    v65 = v210;
    v205 = v29;
    while (1)
    {
      v240(v65, v221 + v218 * v63, v48);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v66 = swift_allocObject();
      *(v66 + 16) = v214;
      v67 = UUID.uuidString.getter();
      v68 = v65;
      v70 = v69;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = sub_100008C00();
      *(v66 + 32) = v67;
      *(v66 + 40) = v70;
      os_log(_:dso:log:_:_:)();

      v71 = v235;
      static SystemInfo.lockState.getter();
      v72 = v236;
      (*v220)(v236, v215, v64);
      sub_10109C768(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *v219;
      (*v219)(v72, v64);
      v73(v71, v64);
      if (v66)
      {
        break;
      }

      v75 = sub_100007F54();
      __chkstk_darwin(v75);
      *(&v188 - 2) = v68;
      v76 = v229;
      sub_1000314D0(sub_100030E14, v75, &v251);
      v229 = v76;

      if (!*(&v252 + 1))
      {
        v65 = v68;
        v74 = v239;
        v48 = v243;
        goto LABEL_13;
      }

      sub_100031694(&v251, aBlock);
      v77 = v248;
      v78 = v249;
      sub_1000035D0(aBlock, v248);
      v79 = (*(v78 + 22))(v77, v78);
      v48 = v243;
      if (v80 >> 60 == 15)
      {
        v65 = v210;
        (*v217)(v210, v243);
        sub_100007BAC(aBlock);
LABEL_22:
        v74 = v239;
        goto LABEL_23;
      }

      v81 = v79;
      v82 = v80;
      v83 = v206 + ((*(isa + 80) + 32) & ~*(isa + 80));
      v84 = *(isa + 9);
      v85 = v207;
      v86 = v205;
      while (1)
      {
        sub_10109C4AC(v83, v86, type metadata accessor for AccessoryProductInfo);
        v87 = (v86 + SHIDWORD(v242[4].isa));
        v89 = *v87;
        v88 = v87[1];
        *&v251 = v81;
        *(&v251 + 1) = v82;
        sub_1002313AC();
        if (v89 == RawRepresentable<>.hexString.getter() && v88 == v90)
        {
          break;
        }

        v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v92)
        {
          goto LABEL_28;
        }

        sub_10109C514(v86, type metadata accessor for AccessoryProductInfo);
        v83 += v84;
        if (!--v85)
        {
          v93 = v210;
          v48 = v243;
          (*v217)(v210, v243);
          v94 = v81;
          v65 = v93;
          sub_100006654(v94, v82);
          sub_100007BAC(aBlock);
          v64 = v209;
          goto LABEL_22;
        }
      }

LABEL_28:
      v95 = v203;
      sub_10109C444(v86, v203, type metadata accessor for AccessoryProductInfo);
      v96 = v202;
      sub_10109C444(v95, v202, type metadata accessor for AccessoryProductInfo);
      v97 = v204;
      sub_10109C4AC(v96, v204, type metadata accessor for AccessoryProductInfo);
      v98 = v200;
      v99 = v210;
      v48 = v243;
      v240(v200, v210, v243);
      v74 = v239;
      sub_10083B3C8(v97, v98, v239);
      v100 = v81;
      v65 = v99;
      sub_100006654(v100, v82);
      sub_10109C514(v96, type metadata accessor for AccessoryProductInfo);
      (*v217)(v99, v48);
      v101 = v234;
      (*v216)(v74, 0, 1, v234);
      sub_100007BAC(aBlock);
      v102 = (*v198)(v74, 1, v101);
      v64 = v209;
      if (v102 != 1)
      {
        sub_10109C444(v74, v201, type metadata accessor for BeaconProductInfoRecord);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = v245;
        }

        else
        {
          v103 = sub_100A5F078(0, v245[2] + 1, 1, v245);
        }

        v105 = v103[2];
        v104 = v103[3];
        if (v105 >= v104 >> 1)
        {
          v103 = sub_100A5F078(v104 > 1, v105 + 1, 1, v103);
        }

        v103[2] = v105 + 1;
        v106 = (*(v238 + 80) + 32) & ~*(v238 + 80);
        v245 = v103;
        sub_10109C444(v201, v103 + v106 + *(v238 + 72) * v105, type metadata accessor for BeaconProductInfoRecord);
        goto LABEL_25;
      }

LABEL_24:
      sub_10000B3A8(v74, &unk_1016AF8C0, &unk_1013A07A0);
LABEL_25:
      if (++v63 == v228)
      {
        goto LABEL_40;
      }
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v253 = 0;
    v251 = 0u;
    v252 = 0u;
    v74 = v239;
    v65 = v68;
    v48 = v243;
LABEL_13:
    (*v217)(v65, v48);
    sub_10000B3A8(&v251, &qword_101696920, &unk_10138B200);
LABEL_23:
    (*v216)(v74, 1, 1, v234);
    goto LABEL_24;
  }

  v229 = 0;
  v245 = _swiftEmptyArrayStorage;
LABEL_40:
  v114 = v245[2];
  if (v114)
  {
    v242 = dispatch_group_create();
    dispatch_group_enter(v242);
    v115 = 0;
    v236 = (v194 + 56);
    v235 = (v194 + 48);
    v228 = v193 + 7;
    v221 = &v247;
    v220 = (v196 + 8);
    v219 = (v195 + 8);
    v234 = v114;
    while (1)
    {
      v116 = v232;
      if (v115 == v114)
      {
        v117 = 1;
        v118 = v114;
        v119 = v231;
      }

      else
      {
        if ((v115 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (v115 >= v245[2])
        {
          goto LABEL_83;
        }

        v120 = v245 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v115;
        v121 = *(v232 + 48);
        v122 = v212;
        *v212 = v115;
        sub_10109C4AC(v120, v122 + v121, type metadata accessor for BeaconProductInfoRecord);
        v123 = v122;
        v119 = v231;
        sub_1000D2AD8(v123, v231, &qword_1016C59B0, &qword_101400B70);
        v117 = 0;
        v118 = v115 + 1;
      }

      v124 = v230;
      (*v236)(v119, v117, 1, v116);
      sub_1000D2AD8(v119, v124, &qword_1016C59B8, &qword_101400B78);
      if ((*v235)(v124, 1, v116) == 1)
      {
        break;
      }

      v241 = v118;
      v125 = *v124;
      v126 = v244;
      sub_10109C444(v124 + *(v116 + 48), v244, type metadata accessor for BeaconProductInfoRecord);
      v127 = v237;
      v239 = *(v237 + 24);
      v128 = v222;
      sub_10109C4AC(v126, v222, type metadata accessor for BeaconProductInfoRecord);
      v129 = *(v238 + 80);
      v130 = (v129 + 49) & ~v129;
      v131 = v228;
      v132 = (v228 + v130) & 0xFFFFFFFFFFFFFFF8;
      v133 = swift_allocObject();
      v134 = v245;
      *(v133 + 16) = v125;
      *(v133 + 24) = v134;
      v135 = v227;
      *(v133 + 32) = v242;
      *(v133 + 40) = v135;
      *(v133 + 48) = v233 & 1;
      sub_10109C444(v128, v133 + v130, type metadata accessor for BeaconProductInfoRecord);
      *(v133 + v132) = v127;
      v136 = v239;
      v240 = *(v239 + 72);
      sub_10109C4AC(v126, v128, type metadata accessor for BeaconProductInfoRecord);
      v137 = (v129 + 16) & ~v129;
      v138 = (v131 + v137) & 0xFFFFFFFFFFFFFFF8;
      v139 = swift_allocObject();
      v140 = v139 + v137;
      v48 = v243;
      sub_10109C444(v128, v140, type metadata accessor for BeaconProductInfoRecord);
      *(v139 + v138) = v136;
      v141 = (v139 + ((v138 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v141 = sub_10109BAAC;
      v141[1] = v133;
      v249 = sub_10109BB54;
      v250 = v139;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v247 = sub_100006684;
      v248 = &unk_101663C58;
      v142 = _Block_copy(aBlock);

      v143 = v242;

      v144 = v223;
      static DispatchQoS.unspecified.getter();
      *&v251 = _swiftEmptyArrayStorage;
      sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v145 = v225;
      v146 = v226;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v147 = v142;
      v115 = v241;
      _Block_release(v147);
      v114 = v234;

      (*v220)(v145, v146);
      (*v219)(v144, v224);
      sub_10109C514(v244, type metadata accessor for BeaconProductInfoRecord);
    }

    v148 = v189;
    static DispatchTime.now()();
    v149 = v190;
    + infix(_:_:)();
    v150 = *(v191 + 8);
    v151 = v192;
    v150(v148, v192);
    OS_dispatch_group.wait(timeout:)();
    v150(v149, v151);
    v152 = static DispatchTimeoutResult.== infix(_:_:)();
    v153 = v199;
    if (v152)
    {
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v154 = type metadata accessor for Logger();
      sub_1000076D4(v154, qword_10177C578);
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v157 = 136315394;
        if (v233)
        {
          v158 = 0;
          v159 = 0xE000000000000000;
        }

        else
        {
          *&v251 = v227;
          v158 = dispatch thunk of CustomStringConvertible.description.getter();
          v159 = v173;
        }

        v174 = sub_1000136BC(v158, v159, aBlock);

        *(v157 + 4) = v174;
        *(v157 + 12) = 2080;
        *(v157 + 14) = sub_1000136BC(0xD000000000000044, 0x8000000101379C90, aBlock);
        _os_log_impl(&_mh_execute_header, v155, v156, "%s %s Timed out waiting for all productInfoRecords to be saved!", v157, 0x16u);
        swift_arrayDestroy();
      }
    }

    v175 = v237;
    v176 = *(v237 + 24);
    sub_100A83364(1);
    sub_100A907FC();
    v177 = v245[2];
    if (v177)
    {
      v240 = *(v175 + 40);
      aBlock[0] = _swiftEmptyArrayStorage;
      v178 = v245;
      sub_101123D4C(0, v177, 0);
      v179 = aBlock[0];
      v180 = v178 + ((*(v238 + 80) + 32) & ~*(v238 + 80));
      v241 = *(v238 + 72);
      v181 = (v213 + 16);
      v182 = v188;
      do
      {
        v183 = v244;
        sub_10109C4AC(v180, v244, type metadata accessor for BeaconProductInfoRecord);
        (*v181)(v182, v183, v48);
        sub_10109C514(v183, type metadata accessor for BeaconProductInfoRecord);
        aBlock[0] = v179;
        v184 = v48;
        v186 = v179[2];
        v185 = v179[3];
        if (v186 >= v185 >> 1)
        {
          sub_101123D4C(v185 > 1, v186 + 1, 1);
          v179 = aBlock[0];
        }

        v179[2] = v186 + 1;
        (*(v213 + 32))(v179 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v186, v182, v184);
        v180 += v241;
        --v177;
        v48 = v184;
      }

      while (v177);

      v153 = v199;
    }

    else
    {

      v179 = _swiftEmptyArrayStorage;
    }

    aBlock[0] = v179;
    AsyncStreamProvider.yield(value:transaction:)();

    if (v153)
    {
      (v153)(v187);
    }
  }

  else
  {

    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    sub_1000076D4(v160, qword_10177C578);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    v163 = os_log_type_enabled(v161, v162);
    v164 = v199;
    if (v163)
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      aBlock[0] = v166;
      *v165 = 136315138;
      if (v233)
      {
        v167 = 0;
        v168 = 0xE000000000000000;
      }

      else
      {
        *&v251 = v227;
        v167 = dispatch thunk of CustomStringConvertible.description.getter();
        v168 = v171;
      }

      v172 = sub_1000136BC(v167, v168, aBlock);

      *(v165 + 4) = v172;
      _os_log_impl(&_mh_execute_header, v161, v162, "%s Failed to match beacons with products from server response!", v165, 0xCu);
      sub_100007BAC(v166);
    }

    if (v164)
    {
      v164();
    }
  }
}

void sub_10109B38C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a4;
  v54 = a3;
  v55 = a2;
  v12 = type metadata accessor for BeaconProductInfoRecord();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5490, &unk_1013D67E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v52 - v21);
  sub_1000D2A70(a1, &v52 - v21, &qword_1016B5490, &unk_1013D67E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C578);
    sub_10109C4AC(a7, v16, type metadata accessor for BeaconProductInfoRecord);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v27 = 136315907;
      if (a6)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        v56 = a5;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v36;
      }

      v37 = sub_1000136BC(v28, v29, &v57);

      *(v27 + 4) = v37;
      *(v27 + 12) = 2160;
      *(v27 + 14) = 1752392040;
      *(v27 + 22) = 2081;
      type metadata accessor for UUID();
      sub_10109C768(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_10109C514(v16, type metadata accessor for BeaconProductInfoRecord);
      v41 = sub_1000136BC(v38, v40, &v57);

      *(v27 + 24) = v41;
      *(v27 + 32) = 2082;
      v56 = v23;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v42 = String.init<A>(describing:)();
      v44 = sub_1000136BC(v42, v43, &v57);

      *(v27 + 34) = v44;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s saveLocal failed! Beacon %{private,mask.hash}s: %{public}s", v27, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_10109C514(v16, type metadata accessor for BeaconProductInfoRecord);
    }
  }

  else
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C578);
    sub_10109C4AC(a7, v18, type metadata accessor for BeaconProductInfoRecord);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v33 = 136315651;
      if (a6)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        v56 = a5;
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v45;
      }

      v46 = sub_1000136BC(v34, v35, &v57);

      *(v33 + 4) = v46;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      type metadata accessor for UUID();
      sub_10109C768(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10109C514(v18, type metadata accessor for BeaconProductInfoRecord);
      v50 = sub_1000136BC(v47, v49, &v57);

      *(v33 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s Successfully saved productInfoRecord for %{private,mask.hash}s.", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10109C514(v18, type metadata accessor for BeaconProductInfoRecord);
    }

    v51 = *(v52 + 24);
    sub_100A8306C(20);
    sub_10000B3A8(v22, &qword_1016B5490, &unk_1013D67E0);
  }

  if (*(v54 + 16) - 1 == v55)
  {
    dispatch_group_leave(v53);
  }
}

uint64_t sub_10109B9FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  return v0;
}

uint64_t sub_10109BA54()
{
  sub_10109B9FC();

  return swift_deallocClassInstance();
}

void sub_10109BAAC(uint64_t a1)
{
  v3 = *(type metadata accessor for BeaconProductInfoRecord() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10109B38C(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_10109BB54()
{
  v1 = *(type metadata accessor for BeaconProductInfoRecord() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100D76FA0(v0 + v2, v4, v6, v7);
}

uint64_t (*sub_10109BBF4(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_10109C3A8(v6);
  v6[12] = sub_10109BF08(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_10109BD30;
}

void (*sub_10109BD34(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_10109C3DC(v6);
  v6[12] = sub_10109C0E4(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_10109C948;
}

void sub_10109BE70(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10109BF08(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_1000210EC(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10100730C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100FEAC78(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_1000210EC(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_10109C0B8;
}

void (*sub_10109C0E4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_1000210EC(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10100EB80();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100FF82C8(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_1000210EC(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_10109C0B8;
}

void sub_10109C294(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 56);
  if (v5)
  {
    v7 = *v4[2];
    v8 = v4[6];
    if ((*a1)[7])
    {
      *(*(v7 + 56) + 8 * v8) = v5;
    }

    else
    {
      v12 = v4[5];
      (*(v4[4] + 16))(v12, v4[1], v4[3]);
      a3(v8, v12, v5, v7);
    }
  }

  else if ((*a1)[7])
  {
    v9 = v4[6];
    v10 = *v4[2];
    (*(v4[4] + 8))(*(v10 + 48) + *(v4[4] + 72) * v9, v4[3]);
    a4(v9, v10);
  }

  v14 = v4[5];
  v15 = *v4;

  free(v14);

  free(v4);
}

uint64_t (*sub_10109C3A8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10109C3D0;
}

uint64_t (*sub_10109C3DC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10109C91C;
}

uint64_t sub_10109C444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10109C4AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10109C514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10109C5A0@<D0>(uint64_t a1@<X8>)
{
  *&result = 257;
  *a1 = xmmword_101400AF0;
  *(a1 + 16) = xmmword_101400B00;
  *(a1 + 32) = 128;
  return result;
}

uint64_t sub_10109C610(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_1010918DC(a1, v1);
}

uint64_t sub_10109C6DC(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_10109C738()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  Transaction.capture()();
  return sub_101093E6C();
}

uint64_t sub_10109C768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10109C7B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_101091F00(a1, v1);
}

uint64_t sub_10109C848()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

id sub_10109CEC0()
{
  v1 = [objc_allocWithZone(SPRawAccessoryMetadata) init];
  v2 = type metadata accessor for AccessoryMetadataRecord();
  isa = 0;
  v4 = (v0 + v2[5]);
  if (v4[1] >> 60 != 15)
  {
    v5 = *v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProductData:isa];

  v6 = (v0 + v2[6]);
  if (v6[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *v6;
    v7 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setManufacturerName:v7];

  v9 = (v0 + v2[7]);
  if (v9[1] >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = *v9;
    v10 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setModelName:v10];

  v12 = (v0 + v2[8]);
  if (v12[1] >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v14 = *v12;
    v13 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCategory:v13];

  v15 = (v0 + v2[9]);
  if (v15[1] >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCapabilities:v16];

  v18 = (v0 + v2[10]);
  if (v18[1] >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v20 = *v18;
    v19 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFirmwareVersion:v19];

  v21 = (v0 + v2[11]);
  if (v21[1] >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v23 = *v21;
    v22 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProtocolVersion:v22];

  v24 = (v0 + v2[12]);
  if (v24[1] >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v26 = *v24;
    v25 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFindMyVersion:v25];

  v27 = (v0 + v2[13]);
  if (v27[1] >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v29 = *v27;
    v28 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setNetworkId:v28];

  v30 = (v0 + v2[14]);
  if (v30[1] >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v32 = *v30;
    v31 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryType:v31];

  v33 = (v0 + v2[15]);
  if (v33[1] >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v35 = *v33;
    v34 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryLevel:v34];

  return v1;
}

uint64_t sub_10109D1F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = [a2 productData];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = type metadata accessor for AccessoryMetadataRecord();
  v14 = (a3 + v13[5]);
  *v14 = v10;
  v14[1] = v12;
  v15 = [a2 manufacturerName];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  v20 = (a3 + v13[6]);
  *v20 = v17;
  v20[1] = v19;
  v21 = [a2 modelName];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v26 = (a3 + v13[7]);
  *v26 = v23;
  v26[1] = v25;
  v27 = [a2 accessoryCategory];
  if (v27)
  {
    v28 = v27;
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xF000000000000000;
  }

  v32 = (a3 + v13[8]);
  *v32 = v29;
  v32[1] = v31;
  v33 = [a2 accessoryCapabilities];
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xF000000000000000;
  }

  v38 = (a3 + v13[9]);
  *v38 = v35;
  v38[1] = v37;
  v39 = [a2 firmwareVersion];
  if (v39)
  {
    v40 = v39;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xF000000000000000;
  }

  v44 = (a3 + v13[10]);
  *v44 = v41;
  v44[1] = v43;
  v45 = [a2 protocolVersion];
  if (v45)
  {
    v46 = v45;
    v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  v50 = (a3 + v13[11]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [a2 findMyVersion];
  if (v51)
  {
    v52 = v51;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xF000000000000000;
  }

  v56 = (a3 + v13[12]);
  *v56 = v53;
  v56[1] = v55;
  v57 = [a2 networkId];
  if (v57)
  {
    v58 = v57;
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xF000000000000000;
  }

  v62 = (a3 + v13[13]);
  *v62 = v59;
  v62[1] = v61;
  v63 = [a2 batteryType];
  if (v63)
  {
    v64 = v63;
    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0xF000000000000000;
  }

  v68 = (a3 + v13[14]);
  *v68 = v65;
  v68[1] = v67;
  v69 = [a2 batteryLevel];
  if (v69)
  {
    v70 = v69;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {

    v71 = 0;
    v73 = 0xF000000000000000;
  }

  result = (*(v7 + 8))(a1, v6);
  v75 = (a3 + v13[15]);
  *v75 = v71;
  v75[1] = v73;
  return result;
}

uint64_t sub_10109D5F0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C590);
  sub_1000076D4(v0, qword_10177C590);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10109D74C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x496B726F7774656ELL;
    v7 = 0x5479726574746162;
    if (a1 != 10)
    {
      v7 = 0x4C79726574746162;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x657261776D726966;
    v9 = 0x6C6F636F746F7270;
    if (a1 != 7)
    {
      v9 = 0x6556794D646E6966;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6D614E6C65646F6DLL;
    v3 = 0xD000000000000015;
    if (a1 == 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x44746375646F7270;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10109D924(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5AD8, &qword_101400D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10109EF10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v37) = 0;
  type metadata accessor for UUID();
  sub_10109F024(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryMetadataRecord();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v37 = *v12;
    v38 = v13;
    v36 = 1;
    sub_10002E98C(v37, v13);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v14 = (v3 + v11[6]);
    v15 = v14[1];
    v37 = *v14;
    v38 = v15;
    v36 = 2;
    sub_10002E98C(v37, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v37 = *v16;
    v38 = v17;
    v36 = 3;
    sub_10002E98C(v37, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v18 = (v3 + v11[8]);
    v19 = v18[1];
    v37 = *v18;
    v38 = v19;
    v36 = 4;
    sub_10002E98C(v37, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v20 = (v3 + v11[9]);
    v21 = v20[1];
    v37 = *v20;
    v38 = v21;
    v36 = 5;
    sub_10002E98C(v37, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v22 = (v3 + v11[10]);
    v23 = v22[1];
    v37 = *v22;
    v38 = v23;
    v36 = 6;
    sub_10002E98C(v37, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v24 = (v3 + v11[11]);
    v25 = v24[1];
    v37 = *v24;
    v38 = v25;
    v36 = 7;
    sub_10002E98C(v37, v25);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v26 = (v3 + v11[12]);
    v27 = v26[1];
    v37 = *v26;
    v38 = v27;
    v36 = 8;
    sub_10002E98C(v37, v27);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v29 = (v3 + v11[13]);
    v30 = v29[1];
    v37 = *v29;
    v38 = v30;
    v36 = 9;
    sub_10002E98C(v37, v30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v31 = (v3 + v11[14]);
    v32 = v31[1];
    v37 = *v31;
    v38 = v32;
    v36 = 10;
    sub_10002E98C(v37, v32);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v33 = (v3 + v11[15]);
    v34 = v33[1];
    v37 = *v33;
    v38 = v34;
    v36 = 11;
    sub_10002E98C(v37, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10109DE30()
{
  type metadata accessor for UUID();
  sub_10109F024(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for AccessoryMetadataRecord();
  v2 = (v0 + v1[5]);
  if (v2[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v4 = (v0 + v1[6]);
  if (v4[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v6 = (v0 + v1[7]);
  if (v6[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = *v6;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v8 = (v0 + v1[8]);
  if (v8[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *v8;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v10 = (v0 + v1[9]);
  if (v10[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *v10;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v12 = (v0 + v1[10]);
  if (v12[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v14 = (v0 + v1[11]);
  if (v14[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v16 = (v0 + v1[12]);
  if (v16[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = *v16;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v18 = (v0 + v1[13]);
  if (v18[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v18;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v20 = (v0 + v1[14]);
  if (v20[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = *v20;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v22 = (v0 + v1[15]);
  if (v22[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = *v22;
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

uint64_t sub_10109E1F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v29 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016C5AC8, &qword_101400CF8);
  v27 = *(v30 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v30);
  v9 = v23 - v8;
  v10 = type metadata accessor for AccessoryMetadataRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10109EF10();
  v31 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v15 = v27;
  v16 = v28;
  v24 = v10;
  v25 = v13;
  LOBYTE(v32) = 0;
  sub_10109F024(&qword_101698300, &type metadata accessor for UUID);
  v17 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v25;
  v19 = *(v26 + 32);
  v29 = v4;
  v19(v25, v17);
  v33 = 1;
  v23[1] = sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v24;
  *&v18[v24[5]] = v32;
  v33 = 2;
  v23[0] = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[6]] = v32;
  v33 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[7]] = v32;
  v33 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[8]] = v32;
  v33 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[9]] = v32;
  v33 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[10]] = v32;
  v33 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[11]] = v32;
  v33 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[12]] = v32;
  v33 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[13]] = v32;
  v33 = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[14]] = v32;
  v33 = 11;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v31, v30);
  v21 = v25;
  *&v25[v24[15]] = v32;
  sub_10109EF64(v21, v16);
  sub_100007BAC(a1);
  return sub_10109EFC8(v21);
}

uint64_t sub_10109EBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10109F990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10109EBFC(uint64_t a1)
{
  v2 = sub_10109EF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10109EC38(uint64_t a1)
{
  v2 = sub_10109EF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for AccessoryMetadataRecord()
{
  result = qword_1016C5A58;
  if (!qword_1016C5A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10109ECE8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1003955F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int sub_10109ED8C()
{
  Hasher.init(_seed:)();
  sub_10109DE30();
  return Hasher._finalize()();
}

Swift::Int sub_10109EDD0()
{
  Hasher.init(_seed:)();
  sub_10109DE30();
  return Hasher._finalize()();
}

uint64_t sub_10109EE8C(uint64_t a1)
{
  *(a1 + 8) = sub_10109F024(&qword_1016C5AC0, type metadata accessor for AccessoryMetadataRecord);
  result = sub_10109F024(&qword_1016B1738, type metadata accessor for AccessoryMetadataRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10109EF10()
{
  result = qword_1016C5AD0;
  if (!qword_1016C5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AD0);
  }

  return result;
}

uint64_t sub_10109EF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryMetadataRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10109EFC8(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryMetadataRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10109F024(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10109F06C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccessoryMetadataRecord();
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v14 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v7 = *(a1 + v18);
  v6 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v10 = *v19;
  v9 = v19[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v20 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v4[9];
  v7 = *(a1 + v21);
  v6 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v10 = *v22;
  v9 = v22[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v23 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v4[10];
  v7 = *(a1 + v24);
  v6 = *(a1 + v24 + 8);
  v25 = (a2 + v24);
  v10 = *v25;
  v9 = v25[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v26 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v4[11];
  v7 = *(a1 + v27);
  v6 = *(a1 + v27 + 8);
  v28 = (a2 + v27);
  v10 = *v28;
  v9 = v28[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v29 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = v4[12];
  v7 = *(a1 + v30);
  v6 = *(a1 + v30 + 8);
  v31 = (a2 + v30);
  v10 = *v31;
  v9 = v31[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = v4[13];
  v7 = *(a1 + v33);
  v6 = *(a1 + v33 + 8);
  v34 = (a2 + v33);
  v10 = *v34;
  v9 = v34[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v35 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (v35)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_51;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  sub_100006654(v7, v6);
LABEL_47:
  v36 = v4[14];
  v7 = *(a1 + v36);
  v6 = *(a1 + v36 + 8);
  v37 = (a2 + v36);
  v10 = *v37;
  v9 = v37[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      goto LABEL_55;
    }

LABEL_51:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    v38 = v10;
    v39 = v9;
LABEL_52:
    sub_100006654(v38, v39);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_51;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v41 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v42 = v4[15];
  v44 = *(a1 + v42);
  v43 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v47 = *v45;
  v46 = v45[1];
  if (v43 >> 60 == 15)
  {
    if (v46 >> 60 == 15)
    {
      sub_10002E98C(v44, v43);
      sub_10002E98C(v47, v46);
      sub_100006654(v44, v43);
      return 1;
    }

    goto LABEL_59;
  }

  if (v46 >> 60 == 15)
  {
LABEL_59:
    sub_10002E98C(v44, v43);
    sub_10002E98C(v47, v46);
    sub_100006654(v44, v43);
    v38 = v47;
    v39 = v46;
    goto LABEL_52;
  }

  sub_10002E98C(v44, v43);
  sub_10002E98C(v47, v46);
  v48 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v44, v43, v47, v46);
  sub_100006654(v47, v46);
  sub_100006654(v44, v43);
  return (v48 & 1) != 0;
}

unint64_t sub_10109F88C()
{
  result = qword_1016C5AE0;
  if (!qword_1016C5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AE0);
  }

  return result;
}

unint64_t sub_10109F8E4()
{
  result = qword_1016C5AE8;
  if (!qword_1016C5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AE8);
  }

  return result;
}

unint64_t sub_10109F93C()
{
  result = qword_1016C5AF0;
  if (!qword_1016C5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AF0);
  }

  return result;
}

uint64_t sub_10109F990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134D670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6556794D646E6966 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1010A003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1010A0140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1010A02A4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1010A0318(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C6128, &qword_1014011E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010A0A08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_100017D5C(v15, v12);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010A04E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for UUID();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C6138, &qword_1014011F0);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for KeyDropJoinToken(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010A0A08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_1000096E8(&qword_101698300);
  v19 = v31;
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v33 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v32;
  sub_1001E7D68(v22, v27);
  sub_100007BAC(a1);
  return sub_1010A0A5C(v22);
}

uint64_t sub_1010A0830()
{
  if (*v0)
  {
    result = 0x4B65746176697270;
  }

  else
  {
    result = 0x55557265626D656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1010A0874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55557265626D656DLL && a2 == 0xEA00000000004449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
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

uint64_t sub_1010A0960(uint64_t a1)
{
  v2 = sub_1010A0A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A099C(uint64_t a1)
{
  v2 = sub_1010A0A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010A0A08()
{
  result = qword_1016C6130;
  if (!qword_1016C6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6130);
  }

  return result;
}

uint64_t sub_1010A0A5C(uint64_t a1)
{
  v2 = type metadata accessor for KeyDropJoinToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1010A0ACC()
{
  result = qword_1016C6140;
  if (!qword_1016C6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6140);
  }

  return result;
}

unint64_t sub_1010A0B24()
{
  result = qword_1016C6148;
  if (!qword_1016C6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6148);
  }

  return result;
}

unint64_t sub_1010A0B7C()
{
  result = qword_1016C6150;
  if (!qword_1016C6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6150);
  }

  return result;
}

uint64_t sub_1010A0BDC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5A8);
  sub_1000076D4(v0, qword_10177C5A8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1010A0C60()
{
  result = sub_10090BB6C(_swiftEmptyArrayStorage);
  qword_1016C6158 = result;
  return result;
}

uint64_t sub_1010A0C88(_OWORD *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 128) = 0xD000000000000025;
  *(v1 + 136) = 0x800000010137A170;
  *(v1 + 144) = 0xD000000000000027;
  *(v1 + 152) = 0x800000010137A1A0;
  *(v1 + 160) = 0xD000000000000025;
  *(v1 + 168) = 0x800000010137A000;
  strcpy((v1 + 176), "DismissOnLock");
  *(v1 + 190) = -4864;
  *(v1 + 192) = 0xD000000000000027;
  *(v1 + 200) = 0x800000010137A1D0;
  *(v1 + 208) = 0xD000000000000031;
  *(v1 + 216) = 0x800000010137A200;
  *(v1 + 224) = 0xD000000000000028;
  *(v1 + 232) = 0x800000010137A240;
  *(v1 + 240) = 0xD000000000000020;
  *(v1 + 248) = 0x800000010137A270;
  *(v1 + 256) = 0xD000000000000022;
  *(v1 + 264) = 0x800000010137A120;
  v2 = a1[5];
  *(v1 + 96) = a1[4];
  *(v1 + 112) = v2;
  v3 = a1[3];
  *(v1 + 64) = a1[2];
  *(v1 + 80) = v3;
  v4 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return v1;
}

void sub_1010A0D8C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v12 = CFUserNotificationCreate(0, 0.0, 0, &error, isa);

  v13 = *(v0 + 16);
  *(v0 + 16) = v12;
  v14 = v12;

  if (!v14)
  {
    goto LABEL_4;
  }

  if (error)
  {

LABEL_4:
    if (qword_1016951F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C5A8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      swift_beginAccess();
      *(v18 + 4) = error;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create user notification, error code %d", v18, 8u);
    }

    return;
  }

  v29 = v2;
  v19 = v14;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v19, sub_1010A1300, 0);
  v21 = *(v0 + 24);
  *(v0 + 24) = RunLoopSource;

  if (qword_101695200 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  responseFlags = qword_1016C6158;
  qword_1016C6158 = 0x8000000000000000;
  sub_1010015E0(sub_1010A2050, v0, v19, isUniquelyReferenced_nonNull_native);
  qword_1016C6158 = responseFlags;
  swift_endAccess();
  responseFlags = 0;
  if (CFUserNotificationReceiveResponse(v19, 0.0, &responseFlags))
  {
  }

  else
  {
    v28 = responseFlags;
    swift_beginAccess();
    v23 = v19;
    v24 = sub_1001E5C04(v23);
    swift_endAccess();
    if (v24)
    {
      aBlock[0] = v28 & 3;
      v24(aBlock);
      sub_1000BB27C(v24);
    }
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1010A2058;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101664220;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v29 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_1010A1300(void *a1, char a2)
{
  v4 = a1;
  sub_1010A1354(a1, a2);
}

void sub_1010A1354(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_101695200;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_1001E5C04(v4);
    swift_endAccess();
    if (v5)
    {
      v6[0] = a2 & 3;
      v5(v6);
      sub_1000BB27C(v5);
    }
  }
}

uint64_t sub_1010A1420(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_1016951F8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C5A8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Alternate button pressed", v17, 2u);
      }

      v18 = *(a2 + 112);
      if (v18)
      {
        v19 = 120;
LABEL_15:
        v24 = *(a2 + v19);
        v18();
      }
    }
  }

  else
  {
    if (qword_1016951F8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C5A8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Default button pressed", v23, 2u);
    }

    v18 = *(a2 + 96);
    if (v18)
    {
      v19 = 104;
      goto LABEL_15;
    }
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1010A2060;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101664248;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_1010A1844(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFUserNotificationCancel(v4);
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_1010A18AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = CFRunLoopGetCurrent();
    CFRunLoopAddSource(v3, v2, kCFRunLoopCommonModes);
  }
}

void sub_1010A1920()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101401310;
  v8 = v0[17];
  *(inited + 32) = v0[16];
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v8;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x800000010137A150;
  v9 = v0[19];
  *(inited + 80) = v0[18];
  *(inited + 88) = v9;
  v54 = v9;
  v55 = v8;
  v10 = v0[4];
  v11 = v1[5];
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_13;
  }

  v53 = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v10;
  *(inited + 152) = v11;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v13;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v14 = v1[21];
  *(inited + 224) = v1[20];
  *(inited + 232) = v14;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v15 = v1[23];
  *(inited + 272) = v1[22];
  *(inited + 280) = v15;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 0;
  v16 = v1[33];
  *(inited + 320) = v1[32];
  *(inited + 328) = v16;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = v3;
  v51 = v2;
  v52 = inited + 32;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v17;
  v18 = v1[8];
  v19 = v1[9];
  *(inited + 408) = &type metadata for String;
  *(inited + 384) = v18;
  *(inited + 392) = v19;
  if (!kCFUserNotificationLocalizationURLKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v20;
  sub_100008BB8(0, &qword_1016C62A0, NSBundle_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  swift_bridgeObjectRetain_n();

  v23 = [v22 bundleForClass:ObjCClassFromMetadata];
  v24 = [v23 resourceURL];

  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v53;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v51;
  *(inited + 456) = v51;
  v27 = sub_1000280DC((inited + 432));
  (*(v50 + 32))(v27, v25, v26);
  v28 = v1[25];
  *(inited + 464) = v1[24];
  *(inited + 472) = v28;
  *(inited + 504) = &type metadata for String;
  *(inited + 480) = 10;
  *(inited + 488) = 0xE100000000000000;
  v29 = v1[27];
  *(inited + 512) = v1[26];
  *(inited + 520) = v29;
  *(inited + 552) = &type metadata for String;
  *(inited + 528) = 10;
  *(inited + 536) = 0xE100000000000000;

  v30 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  v33 = v1[6];
  v32 = v1[7];
  *(v31 + 32) = v33;
  *(v31 + 40) = v32;
  v34 = v1[28];
  v35 = v1[29];
  v59 = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  *&v58 = v31;
  sub_1001E6224(&v58, v57);
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v30;
  sub_100FFB368(v57, v34, v35, isUniquelyReferenced_nonNull_native);
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37 = v56;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  v59 = &type metadata for String;
  *&v58 = v33;
  *(&v58 + 1) = v32;
  sub_1001E6224(&v58, v57);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v37;
  sub_100FFB368(v57, v38, v40, v41);

  v42 = v56;
  v43 = v1[11];
  if (!v43)
  {

    goto LABEL_11;
  }

  if (kCFUserNotificationAlternateButtonTitleKey)
  {
    v44 = v1[10];
    v45 = v1[11];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    v59 = &type metadata for String;
    *&v58 = v44;
    *(&v58 + 1) = v43;
    sub_1001E6224(&v58, v57);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v42;
    sub_100FFB368(v57, v46, v48, v49);

LABEL_11:
    sub_1010A0D8C();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1010A1E54()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  sub_1000BB27C(v5);
  sub_1000BB27C(v7);
  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  v11 = *(v0 + 168);

  v12 = *(v0 + 184);

  v13 = *(v0 + 200);

  v14 = *(v0 + 216);

  v15 = *(v0 + 232);

  v16 = *(v0 + 248);

  v17 = *(v0 + 264);

  return v0;
}

uint64_t sub_1010A1F30()
{
  sub_1010A1E54();

  return swift_deallocClassInstance();
}

uint64_t sub_1010A1F88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1010A1FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1010A1FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1010A2070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v12, v12[3]);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v12);
    return sub_100007BAC(a1);
  }

  else
  {
    v9 = sub_1010A2138(v6, v7);
    v11 = v10;
    sub_100007BAC(v12);
    result = sub_100007BAC(a1);
    *a2 = v9;
    a2[1] = v11;
  }

  return result;
}

uint64_t sub_1010A2138(uint64_t result, unint64_t a2)
{
  v3 = result;
  v13 = result;
  v14 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_10:
      sub_100017D5C(result, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_14;
    }

    v5 = HIDWORD(result) - result;
    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = BYTE6(a2);
LABEL_11:
  result = 60 - v5;
  if (!__OFSUB__(60, v5))
  {
    v11 = sub_100845C88(result);
    v12 = v8;
    sub_100776394(&v11, 0);
    v9 = v11;
    v10 = v12;
    Data.append(_:)();
    sub_100016590(v3, a2);
    sub_100016590(v9, v10);
    return v13;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1010A2224()
{
  v0 = type metadata accessor for __DataStorage();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v18 = 0x3C00000000;
  v19 = __DataStorage.init(length:)();
  sub_1007765FC(&v18, 0);
  v3 = v18;
  v4 = HIDWORD(v18);
  v18 = v18 | (HIDWORD(v18) << 32);
  v19 |= 0x4000000000000000uLL;
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
  }

  else
  {
    if (v5 == 60)
    {

      v6 = 0;
      v7 = 0xC000000000000000;
    }

    else
    {
      v8 = 60 - v5;
      if (v5 >= 46)
      {
        v6 = sub_100268BBC(60 - v5);
        v7 = v13 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = *(v0 + 48);
        v10 = *(v0 + 52);
        swift_allocObject();

        v11 = __DataStorage.init(length:)();
        v12 = v11;
        if (v5 <= -2147483587)
        {
          type metadata accessor for Data.RangeReference();
          v6 = swift_allocObject();
          *(v6 + 16) = 0;
          *(v6 + 24) = v8;
          v7 = v12 | 0x8000000000000000;
        }

        else
        {
          v6 = v8 << 32;
          v7 = v11 | 0x4000000000000000;
        }
      }
    }

    v16 = v6;
    v17 = v7;
    sub_100776394(&v16, 0);
    v14 = v16;
    v15 = v17;
    Data.append(_:)();

    sub_100016590(v14, v15);
  }
}

unint64_t sub_1010A23A4(uint64_t a1)
{
  *(a1 + 8) = sub_1010A23D4();
  result = sub_100A220CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1010A23D4()
{
  result = qword_1016C62A8;
  if (!qword_1016C62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C62A8);
  }

  return result;
}

uint64_t sub_1010A2438()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5C0);
  v1 = sub_1000076D4(v0, qword_10177C5C0);
  if (qword_101695210 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C5D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010A2500(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10001F280(v3, v6);
      v4 = v7;
      v5 = v8;
      sub_1000035D0(v6, v7);
      (*(v5 + 24))(v4, v5);
      result = sub_100007BAC(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1010A2594(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v7 = v3 + 32;
    do
    {
      sub_10001F280(v7, v10);
      v8 = v11;
      v9 = v12;
      sub_1000035D0(v10, v11);
      (*(v9 + 32))(a2, a3, v8, v9);
      result = sub_100007BAC(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1010A2640(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10001F280(v3, v6);
      v4 = v7;
      v5 = v8;
      sub_1000035D0(v6, v7);
      (*(v5 + 40))(v4, v5);
      result = sub_100007BAC(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1010A26D4()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1010A27D0, v0, 0);
}

uint64_t sub_1010A27D0()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  ContinuousClock.init()();
  (*(v4 + 16))(v1, v2, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v1, v5);
  *(v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1010A2958;

  return unsafeBlocking<A>(context:_:)(v11, 0x655379636167654CLL, 0xEE00736563697672, sub_1010A3D30, v9, &type metadata for () + 8);
}

uint64_t sub_1010A2958()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_1010A2A84, v3, 0);
}

uint64_t sub_1010A2A84()
{
  if (qword_101695208 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C5C0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(*(v6 + 112) + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "%ld legacy services started.", v7, 0xCu);
  }

  else
  {
    v8 = v0[2];
  }

  v9 = v0[7];
  (*(v0[5] + 8))(v0[8], v0[4]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1010A2C04(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v58 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v58);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  result = __chkstk_darwin(v14);
  v21 = &v54 - v20;
  v22 = *(a1 + 112);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;
    v60 = (v18 + 8);
    v61 = (v18 + 16);
    v56 = (v3 + 8);
    *&v19 = 136446210;
    v55 = v19;
    *&v19 = 136446466;
    v54 = v19;
    v62 = a1;
    v65 = v13;
    v66 = v10;
    v67 = v6;
    do
    {
      v64 = v23;
      sub_10001F280(v24, v70);
      if (qword_101695208 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177C5C0);
      sub_10001F280(v70, v69);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v68 = v41;
        *v40 = v55;
        v42 = sub_1010A3E44(v69);
        v44 = v43;
        sub_100007BAC(v69);
        v45 = sub_1000136BC(v42, v44, &v68);
        v10 = v66;

        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Starting legacy service: %{public}s", v40, 0xCu);
        sub_100007BAC(v41);
      }

      else
      {

        sub_100007BAC(v69);
      }

      ContinuousClock.now.getter();
      v46 = v71;
      v47 = v72;
      sub_1000035D0(v70, v71);
      (*(v47 + 16))(v46, v47);
      ContinuousClock.now.getter();
      sub_10001F280(v70, v69);
      v48 = *v61;
      v49 = v65;
      v50 = v67;
      (*v61)(v65, v21, v67);
      v48(v10, v16, v50);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v25 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v25 = v54;
        v26 = sub_1010A3E44(v69);
        v28 = v27;
        sub_100007BAC(v69);
        v29 = sub_1000136BC(v26, v28, &v68);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        v30 = v57;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1010A3FE4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
        v31 = static Duration.description<A>(_:_:units:)();
        v33 = v32;
        (*v56)(v30, v58);
        v59 = v24;
        v34 = *v60;
        (*v60)(v66, v67);
        v34(v65, v67);
        v35 = sub_1000136BC(v31, v33, &v68);

        *(v25 + 14) = v35;
        v36 = v67;
        _os_log_impl(&_mh_execute_header, v51, v52, "Legacy service startup complete: %{public}s duration: %{public}s", v25, 0x16u);
        swift_arrayDestroy();

        v34(v16, v36);
        v34(v21, v36);
        v24 = v59;
        v10 = v66;
      }

      else
      {

        v53 = *v60;
        (*v60)(v10, v50);
        v53(v49, v50);
        sub_100007BAC(v69);
        v53(v16, v50);
        v53(v21, v50);
      }

      result = sub_100007BAC(v70);
      v24 += 40;
      v23 = v64 - 1;
    }

    while (v64 != 1);
  }

  return result;
}

uint64_t sub_1010A3290()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1010A32F0()
{
  v1 = *(v0 + 16);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1010A33B0;
  v4 = *(v0 + 16);

  return unsafeBlocking<A>(_:)(v3, sub_1010A3D28, v4, &type metadata for () + 8);
}

uint64_t sub_1010A33B0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1007FFC84, v2, 0);
}

uint64_t sub_1010A34C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1010A35A0, v2, 0);
}

uint64_t sub_1010A35A0()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = *(v4 + 16);
  v8(v2, v0[2], v5);
  v8(v1, v7, v5);
  v9 = *(v4 + 80);
  v10 = (v9 + 24) & ~v9;
  v11 = (v3 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 16) = v6;
  v13 = *(v4 + 32);
  v13(v12 + v10, v2, v5);
  v13(v12 + v11, v1, v5);
  v14 = async function pointer to unsafeBlocking<A>(_:)[1];

  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_1010A3730;

  return unsafeBlocking<A>(_:)(v15, sub_1010A3C88, v12, &type metadata for () + 8);
}

uint64_t sub_1010A3730()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1007478EC, v3, 0);
}

uint64_t sub_1010A387C()
{
  v1 = *(v0 + 16);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1010A393C;
  v4 = *(v0 + 16);

  return unsafeBlocking<A>(_:)(v3, sub_1010A3C80, v4, &type metadata for () + 8);
}

uint64_t sub_1010A393C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100014748, v2, 0);
}

uint64_t sub_1010A3A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010A26D4();
}

uint64_t sub_1010A3AE0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1010A3B88()
{
  v1 = *v0;
  type metadata accessor for LegacyServiceContainer();
  sub_1010A3FE4(&unk_101698D70, v2, type metadata accessor for LegacyServiceContainer);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1010A3C88()
{
  v1 = *(type metadata accessor for SystemVersionNumber() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_1010A2594(v4, v0 + v3, v5);
}

uint64_t sub_1010A3D30()
{
  v1 = *(type metadata accessor for ContinuousClock() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1010A2C04(v3, v0 + v2);
}

uint64_t sub_1010A3DD0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5D8);
  sub_1000076D4(v0, qword_10177C5D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010A3E44(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  swift_getDynamicType();
  v19 = a1[4];
  sub_1000BC4D4(&qword_1016C63A0, &qword_101401668);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v5 = a1[3];
  v6 = a1[4];
  sub_1000035D0(a1, v5);
  if ((*(v6 + 8))(v5, v6) == v2 && v7 == v4)
  {

LABEL_8:

    v10 = a1[3];
    v11 = a1[4];
    sub_1000035D0(a1, v10);
    return (*(v11 + 8))(v10, v11);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_8;
  }

  v13 = a1[3];
  v14 = a1[4];
  sub_1000035D0(a1, v13);
  v18 = (*(v14 + 8))(v13, v14);
  v15._countAndFlagsBits = 23328;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v2;
  v16._object = v4;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v18;
}

uint64_t sub_1010A3FE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1010A403C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v88 = a3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  __chkstk_darwin(v4);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v75 - v12;
  __chkstk_darwin(v11);
  v15 = &v75 - v14;
  v16 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v82 = &v75 - v22;
  __chkstk_darwin(v21);
  v24 = &v75 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v79 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v80 = &v75 - v31;
  v32 = __chkstk_darwin(v30);
  v76 = &v75 - v33;
  v34 = __chkstk_darwin(v32);
  v77 = &v75 - v35;
  __chkstk_darwin(v34);
  v37 = &v75 - v36;
  v90 = type metadata accessor for URLComponents();
  v38 = *(v90 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v90);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  v42 = *(type metadata accessor for SearchpartyAccount() + 32);
  v87 = a1;
  sub_1000D5660(a1 + v42, v24);
  v89 = *(v26 + 48);
  if (v89(v24, 1, v25) == 1)
  {
    v78 = v38;
    sub_10000B3A8(v24, &unk_101696AC0, &qword_101390A60);
    v43 = v26;
  }

  else
  {
    (*(v26 + 32))(v37, v24, v25);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    (*(v26 + 8))(v37, v25);
    v43 = v26;
    if ((*(v38 + 48))(v15, 1, v90) != 1)
    {
      v64 = v90;
      (*(v38 + 8))(v41, v90);
      sub_1001322A0(v86);
      (*(v38 + 32))(v41, v15, v64);
      goto LABEL_16;
    }

    v78 = v38;
    sub_10000B3A8(v15, &qword_101699BA8, &unk_1013926B0);
  }

  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000076D4(v44, qword_10177B078);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Missing device url bag entry!", v47, 2u);
  }

  URLComponents.scheme.setter();
  v48 = v86;
  v49 = *(v86 + 8);
  v50 = *(v86 + 9);

  URLComponents.host.setter();
  sub_1001322A0(v48);
  v51 = v82;
  URLComponents.url.getter();
  if (v89(v51, 1, v25) == 1)
  {
    sub_10000B3A8(v51, &unk_101696AC0, &qword_101390A60);
    v38 = v78;
  }

  else
  {
    v86 = v20;
    v91[0] = 0xD00000000000001BLL;
    v91[1] = 0x800000010137A2F0;
    v52 = v43;
    v54 = v84;
    v53 = v85;
    v55 = *(v84 + 104);
    v75 = v13;
    v56 = v83;
    v55(v83, enum case for URL.DirectoryHint.inferFromPath(_:), v85);
    sub_1000DF96C();
    v57 = v76;
    URL.appending<A>(path:directoryHint:)();
    v58 = v54;
    v43 = v52;
    v59 = v56;
    v60 = v75;
    v61 = v90;
    (*(v58 + 8))(v59, v53);
    v62 = *(v43 + 8);
    v62(v51, v25);
    v63 = v77;
    (*(v43 + 32))(v77, v57, v25);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v62(v63, v25);
    v38 = v78;
    if ((*(v78 + 48))(v60, 1, v61) == 1)
    {
      sub_10000B3A8(v60, &qword_101699BA8, &unk_1013926B0);
    }

    else
    {
      v65 = v90;
      (*(v38 + 8))(v41, v90);
      (*(v38 + 32))(v41, v60, v65);
    }

    v20 = v86;
  }

LABEL_16:
  URLComponents.url.getter();
  if (v89(v20, 1, v25) == 1)
  {
    sub_1010A49D4(v87);
    sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);
  }

  else
  {
    strcpy(v91, "fetchDevices");
    BYTE5(v91[1]) = 0;
    HIWORD(v91[1]) = -5120;
    v67 = v83;
    v66 = v84;
    v68 = v85;
    (*(v84 + 104))(v83, enum case for URL.DirectoryHint.inferFromPath(_:), v85);
    sub_1000DF96C();
    v69 = v79;
    URL.appending<A>(path:directoryHint:)();
    (*(v66 + 8))(v67, v68);
    v70 = *(v43 + 8);
    v70(v20, v25);
    v71 = v80;
    (*(v43 + 32))(v80, v69, v25);
    v72 = v81;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    sub_1010A49D4(v87);
    v70(v71, v25);
    if ((*(v38 + 48))(v72, 1, v90) == 1)
    {
      sub_10000B3A8(v72, &qword_101699BA8, &unk_1013926B0);
    }

    else
    {
      v73 = v90;
      (*(v38 + 8))(v41, v90);
      (*(v38 + 32))(v41, v72, v73);
    }
  }

  return (*(v38 + 32))(v88, v41, v90);
}

uint64_t sub_1010A49D4(uint64_t a1)
{
  v2 = type metadata accessor for SearchpartyAccount();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FindMyServiceDeviceListEndpoint()
{
  result = qword_1016C6400;
  if (!qword_1016C6400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1010A4AA4@<Q0>(uint64_t a1@<X8>)
{
  sub_100A22048(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9;
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1010A4B54@<Q0>(uint64_t a1@<X8>)
{
  sub_100A22ACC(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9;
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1010A4BEC@<X0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  v19 = a1[4];
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  a2(&v15);
  v7 = v26;
  *(a3 + 160) = v25;
  *(a3 + 176) = v7;
  *(a3 + 192) = v27;
  v8 = v22;
  *(a3 + 96) = v21;
  *(a3 + 112) = v8;
  v9 = v24;
  *(a3 + 128) = v23;
  *(a3 + 144) = v9;
  v10 = v18;
  *(a3 + 32) = v17;
  *(a3 + 48) = v10;
  v11 = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v11;
  v12 = v16;
  *a3 = v15;
  *(a3 + 16) = v12;
  return sub_1010A4E44(a1, &v14);
}

uint64_t sub_1010A4CA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(_OWORD *)@<X4>, uint64_t a4@<X8>)
{
  *&v14[0] = a1;
  *(&v14[0] + 1) = a2;
  a3(v14);
  v7 = v14[11];
  *(a4 + 160) = v14[10];
  *(a4 + 176) = v7;
  *(a4 + 192) = v15;
  v8 = v14[7];
  *(a4 + 96) = v14[6];
  *(a4 + 112) = v8;
  v9 = v14[9];
  *(a4 + 128) = v14[8];
  *(a4 + 144) = v9;
  v10 = v14[3];
  *(a4 + 32) = v14[2];
  *(a4 + 48) = v10;
  v11 = v14[5];
  *(a4 + 64) = v14[4];
  *(a4 + 80) = v11;
  v12 = v14[1];
  *a4 = v14[0];
  *(a4 + 16) = v12;
  return sub_100017D5C(a1, a2);
}

uint64_t sub_1010A4D44(unsigned __int16 a1)
{
  if (a1 > 0x107u)
  {
    if (a1 > 0x10Au)
    {
      switch(a1)
      {
        case 0x10Bu:
          return 0;
        case 0x10Cu:
          return 1;
        case 0x204u:
          return 11;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x108u:
          return 10;
        case 0x109u:
          return 4;
        case 0x10Au:
          return 5;
      }
    }
  }

  else if (a1 > 0x102u)
  {
    switch(a1)
    {
      case 0x103u:
        return 7;
      case 0x104u:
        return 8;
      case 0x107u:
        return 9;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x100u:
        return 2;
      case 0x101u:
        return 3;
      case 0x102u:
        return 6;
    }
  }

  return 12;
}

unint64_t sub_1010A4EB4()
{
  result = qword_1016C6438;
  if (!qword_1016C6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6438);
  }

  return result;
}

uint64_t sub_1010A4F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_101124390(0, v1, 0);
  v3 = v2 + 56;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  if (result < 0 || result >= 1 << *(v2 + 32))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v26 = v2 + 64;
    v27 = v1;
    v6 = *(v2 + 36);
    v7 = 1;
    v28 = v2 + 56;
    v29 = v2;
    while ((*(v3 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      v32 = result >> 6;
      v33 = 1 << result;
      v30 = v7;
      v31 = v6;
      v8 = *(v2 + 48) + 160 * result;
      v9 = *(v8 + 24);
      v48 = *(v8 + 16);
      v49 = *v8;
      v47 = *(v8 + 32);
      v34 = *(v8 + 40);
      v10 = *(v8 + 56);
      v11 = *(v8 + 72);
      v45 = *(v8 + 64);
      v46 = *(v8 + 48);
      v12 = *(v8 + 88);
      v13 = *(v8 + 104);
      v43 = *(v8 + 96);
      v44 = *(v8 + 80);
      v14 = *(v8 + 120);
      v42 = *(v8 + 112);
      v40 = *(v8 + 129);
      v41 = *(v8 + 128);
      v38 = *(v8 + 131);
      v39 = *(v8 + 130);
      v37 = *(v8 + 136);
      v15 = *(v8 + 152);
      v51 = *(v8 + 144);
      v16 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      v50 = result;
      v36 = *(v8 + 8);

      if (v16 >= v35 >> 1)
      {
        sub_101124390((v35 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[20 * v16];
      v17[4] = v49;
      v17[5] = v36;
      v17[6] = v48;
      v17[7] = v9;
      v17[8] = v47;
      v17[9] = v34;
      v17[10] = v46;
      v17[11] = v10;
      v17[12] = v45;
      v17[13] = v11;
      v17[14] = v44;
      v17[15] = v12;
      v17[16] = v43;
      v17[17] = v13;
      v17[18] = v42;
      v17[19] = v14;
      *(v17 + 160) = v41;
      *(v17 + 161) = v40;
      *(v17 + 162) = v39;
      *(v17 + 163) = v38;
      *(v17 + 168) = v37;
      *(v17 + 43) = *&v52[3];
      *(v17 + 169) = *v52;
      v17[22] = v51;
      v17[23] = v15;
      v2 = v29;
      v18 = 1 << *(v29 + 32);
      result = v50;
      if (v50 >= v18)
      {
        goto LABEL_25;
      }

      v3 = v28;
      v19 = *(v28 + 8 * v32);
      if ((v19 & v33) == 0)
      {
        goto LABEL_26;
      }

      if (v31 != *(v29 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v50 & 0x3F));
      if (v20)
      {
        result = __clz(__rbit64(v20)) | v50 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v32 << 6;
        v22 = v32 + 1;
        v23 = (v26 + 8 * v32);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1000BB408(v50, v31, 0);
            result = __clz(__rbit64(v24)) + v21;
            goto LABEL_18;
          }
        }

        sub_1000BB408(v50, v31, 0);
        result = v18;
      }

LABEL_18:
      if (v30 == v27)
      {
        return _swiftEmptyArrayStorage;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v6 = *(v29 + 36);
        v7 = v30 + 1;
        if (result < 1 << *(v29 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1010A528C()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsRelayAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  v9 = sub_1000BC4D4(&qword_1016C6520, &qword_101401A20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17[-v11];
  swift_storeEnumTagMultiPayload();
  sub_1010AB93C(v8, v6, type metadata accessor for SecureLocationsRelayAction);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1010AC370(v6, v14 + v13, type metadata accessor for SecureLocationsRelayAction);
  v15 = type metadata accessor for SecureLocationsRelayAction.Response(0);

  unsafeFromAsyncTask<A>(_:)();
  sub_1010A7CB8(v8, type metadata accessor for SecureLocationsRelayAction);

  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  return sub_10000B3A8(v12, &qword_1016C6520, &qword_101401A20);
}

void *sub_1010A5510()
{
  v1 = type metadata accessor for SecureLocationsRelayAction(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  v8 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  sub_1010AB93C(v7, v5, type metadata accessor for SecureLocationsRelayAction);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  sub_1010AC370(v5, v13 + v12, type metadata accessor for SecureLocationsRelayAction);

  unsafeFromAsyncTask<A>(_:)();
  sub_1010A7CB8(v7, type metadata accessor for SecureLocationsRelayAction);

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v14 = sub_1010A4F08(*v11);

    return v14;
  }

  else
  {
    sub_1010A7CB8(v11, type metadata accessor for SecureLocationsRelayAction.Response);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1010A58A4()
{
  v1 = v0[6];
  sub_1000BB27C(v0[5]);
  v2 = v0[8];
  sub_1000BB27C(v0[7]);
  v3 = v0[10];
  sub_1000BB27C(v0[9]);
  v4 = v0[12];
  sub_1000BB27C(v0[11]);
  v5 = v0[14];
  sub_1000BB27C(v0[13]);
  v6 = v0[16];
  sub_1000BB27C(v0[15]);

  return swift_deallocClassInstance();
}

uint64_t sub_1010A5928(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a3;
  v26 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v25;
  *(v19 + 24) = a4;
  *(v19 + 32) = v20;
  v21 = v26 & 1;
  *(v19 + 40) = v26 & 1;
  aBlock[4] = sub_10040817C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016645B0;
  v22 = _Block_copy(aBlock);

  sub_1001DB9A4(v20, v21);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1010A7C70(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v8, v5);
  (*(v9 + 8))(v12, v27);
}

uint64_t sub_1010A5CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 104) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  v9 = type metadata accessor for SecureLocationsRelayAction(0);
  *(v8 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v11 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  *(v8 + 64) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1010A5DC8, 0, 0);
}

uint64_t sub_1010A5DC8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  *v1 = *(v0 + 104);
  *(v1 + 8) = v3;
  swift_storeEnumTagMultiPayload();

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1010A5E8C;
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return sub_1010A6200(v5, v6);
}

uint64_t sub_1010A5E8C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction);
  if (v0)
  {
    v4 = sub_1010A6150;
  }

  else
  {
    v4 = sub_1010A5FD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010A5FD0()
{
  v1 = v0[8];
  sub_1010AB93C(v0[10], v0[9], type metadata accessor for SecureLocationsRelayAction.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[9];
  v4 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1010A5928(*v3, 0, v0[4], v0[5]);

    sub_1010A7CB8(v4, type metadata accessor for SecureLocationsRelayAction.Response);
  }

  else
  {
    sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction.Response);
    sub_10057C844();
    v5 = swift_allocError();
    swift_willThrow();
    sub_1010A7CB8(v4, type metadata accessor for SecureLocationsRelayAction.Response);
    v6 = v0[4];
    v7 = v0[5];
    swift_errorRetain();
    sub_1010A5928(v5, 1, v6, v7);
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1010A6150()
{
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  sub_1010A5928(v1, 1, v3, v2);

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010A6200(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ClientOrigin();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010A62C0, 0, 0);
}

uint64_t sub_1010A62C0()
{
  v1 = v0[3];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[7] = PropertyListEncoder.init()();
  type metadata accessor for SecureLocationsRelayAction(0);
  sub_1010A7C70(&qword_1016C6510, type metadata accessor for SecureLocationsRelayAction);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[8] = v5;
  v0[9] = v6;
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = v5;
  v11 = v6;
  type metadata accessor for Session();
  (*(v8 + 104))(v7, enum case for ClientOrigin.other(_:), v9);
  v0[10] = static Session.sharedSession(origin:)();
  (*(v8 + 8))(v7, v9);
  v12 = async function pointer to Session.processIDSServiceMessage(_:)[1];
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1010A64B0;

  return Session.processIDSServiceMessage(_:)(v10, v11);
}

uint64_t sub_1010A64B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = sub_1010A6738;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v9 = sub_1010A65E4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1010A65E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v14 = v0[7];
  v7 = v0[2];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for SecureLocationsRelayAction.Response(0);
  sub_1010A7C70(&qword_1016C6518, type metadata accessor for SecureLocationsRelayAction.Response);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100016590(v1, v2);

  sub_100016590(v6, v4);

  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1010A6738()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_100016590(v3, v2);
  v4 = v0[12];
  v5 = v0[7];

  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010A67BC(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC488();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v23;
  aBlock[4] = sub_1002FB50C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016644C0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1010A7C70(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_1010A6B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v15;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 104) = a5;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for SecureLocationsRelayAction(0);
  *(v8 + 56) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v11 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  *(v8 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1010A6C40, 0, 0);
}

uint64_t sub_1010A6C40()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 104);
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1010A6D04;
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_1010A6200(v6, v7);
}

uint64_t sub_1010A6D04()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction);
  if (v0)
  {
    v4 = sub_1010A6F04;
  }

  else
  {
    v4 = sub_1010A6E48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010A6E48()
{
  v1 = v0[9];
  v2 = v0[10];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[5];
  v5 = v0[6];
  if (EnumCaseMultiPayload)
  {
    sub_1010A7CB8(v2, type metadata accessor for SecureLocationsRelayAction.Response);
    v6 = 0;
  }

  else
  {
    v6 = *v2;
  }

  sub_1010A67BC(v6, v4, v5);
  v7 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1010A6F04()
{
  v1 = v0[12];
  sub_1010A67BC(0, v0[5], v0[6]);

  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1010A6F88@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v33 = a4;
  v30 = a6;
  v9 = type metadata accessor for SecureLocationsRelayAction(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = __chkstk_darwin(v9);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v31 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v30 - v19;
  v21 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  sub_1010AB93C(a5, &v14[*(v21 + 24)], type metadata accessor for MessagingOptions);
  *v14 = a1;
  v22 = v33;
  *(v14 + 1) = v32;
  *(v14 + 2) = a3;
  *(v14 + 3) = v22;
  *(v14 + 2) = xmmword_10138BBF0;
  swift_storeEnumTagMultiPayload();
  sub_1010AB93C(v14, v12, type metadata accessor for SecureLocationsRelayAction);
  v23 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  sub_1010AC370(v12, v24 + v23, type metadata accessor for SecureLocationsRelayAction);
  sub_100017D5C(a3, v22);

  v25 = v36;
  unsafeFromAsyncTask<A>(_:)();
  sub_1010A7CB8(v14, type metadata accessor for SecureLocationsRelayAction);

  if (!v25)
  {
    v27 = v30;
    v28 = v31;
    sub_1010AB93C(v20, v31, type metadata accessor for SecureLocationsRelayAction.Response);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1010A7CB8(v20, type metadata accessor for SecureLocationsRelayAction.Response);
      v29 = type metadata accessor for UUID();
      return (*(*(v29 - 8) + 32))(v27, v28, v29);
    }

    else
    {
      sub_1010A7CB8(v28, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      swift_allocError();
      swift_willThrow();
      return sub_1010A7CB8(v20, type metadata accessor for SecureLocationsRelayAction.Response);
    }
  }

  return result;
}

uint64_t sub_1010A730C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v19 = swift_allocObject();
  v19[2] = v23;
  v19[3] = a3;
  v19[4] = a1;
  aBlock[4] = sub_1008909DC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101664538;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1010A7C70(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_1010A76C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v15;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 112) = a5;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for SecureLocationsRelayAction(0);
  *(v8 + 56) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v11 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  *(v8 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1010A77A4, 0, 0);
}

uint64_t sub_1010A77A4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 112);
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1010A7868;
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_1010A6200(v6, v7);
}

uint64_t sub_1010A7868()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction);
  if (v0)
  {
    v4 = sub_1010A7AD0;
  }

  else
  {
    v4 = sub_1010A79AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010A79AC()
{
  v1 = v0[9];
  sub_1010AB93C(v0[11], v0[10], type metadata accessor for SecureLocationsRelayAction.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[5];
  v5 = v0[6];
  if (EnumCaseMultiPayload == 2)
  {
    v7 = *v3;
  }

  else
  {
    sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction.Response);
    v7 = sub_10090BE98(_swiftEmptyArrayStorage);
  }

  sub_1010A730C(v7, v6, v5);

  sub_1010A7CB8(v4, type metadata accessor for SecureLocationsRelayAction.Response);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1010A7AD0()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10090BE98(_swiftEmptyArrayStorage);
  sub_1010A730C(v4, v3, v2);

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1010A7B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1010A6200(a1, a3);
}

uint64_t sub_1010A7C70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1010A7CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010A7D58(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016C6A10, &qword_101401F38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010AE560();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1010AD50C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
    sub_1010AD404();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1010A7F04(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C6980, &qword_101401EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010ACA84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v11 = *(v3 + 16);
  v13 = *(v3 + 24);
  LOBYTE(v19) = *v3;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  v18 = 0;
  sub_100017D5C(v11, v13);
  sub_1000BC4D4(&qword_1016C6990, &qword_101401F00);
  sub_1000041A4(&qword_1016C6998, &qword_1016C6990, &qword_101401F00);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v21, v22);
  if (!v2)
  {
    v14 = *(v3 + 40);
    v19 = *(v3 + 32);
    v20 = v14;
    v18 = 1;
    sub_10002E98C(v19, v14);
    sub_1010ACAD8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v19, v20);
    v15 = *(type metadata accessor for SecureLocationsRelayAction.SendMessage(0) + 24);
    LOBYTE(v19) = 2;
    type metadata accessor for MessagingOptions(0);
    sub_1010A7C70(&qword_1016C69A8, type metadata accessor for MessagingOptions);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010A817C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_1000BC4D4(&qword_1016C68C8, &qword_101401EA0);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v105 = &v80 - v6;
  v7 = sub_1000BC4D4(&qword_1016C68D0, &qword_101401EA8);
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  __chkstk_darwin(v7);
  v99 = &v80 - v9;
  v92 = sub_1000BC4D4(&qword_1016C68D8, &qword_101401EB0);
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v92);
  v104 = &v80 - v11;
  v90 = sub_1000BC4D4(&qword_1016C68E0, &qword_101401EB8);
  v89 = *(v90 - 8);
  v12 = *(v89 + 64);
  __chkstk_darwin(v90);
  v98 = &v80 - v13;
  v84 = sub_1000BC4D4(&qword_1016C68E8, &qword_101401EC0);
  v88 = *(v84 - 8);
  v14 = *(v88 + 64);
  __chkstk_darwin(v84);
  v97 = &v80 - v15;
  v86 = sub_1000BC4D4(&qword_1016C68F0, &qword_101401EC8);
  v85 = *(v86 - 8);
  v16 = *(v85 + 64);
  __chkstk_darwin(v86);
  v102 = &v80 - v17;
  v103 = sub_1000BC4D4(&qword_1016C68F8, &unk_101401ED0);
  v106 = *(v103 - 8);
  v18 = *(v106 + 64);
  __chkstk_darwin(v103);
  v20 = &v80 - v19;
  v101 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v21 = *(*(v101 - 8) + 64);
  v22 = __chkstk_darwin(v101);
  v87 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v80 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v80 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v80 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v80 - v34;
  __chkstk_darwin(v33);
  v37 = &v80 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v108 = a1;
  sub_1000035D0(a1, v39);
  sub_1010AC5D0();
  v40 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v40)
  {
    v80 = v35;
    v81 = v32;
    v82 = v29;
    v41 = v102;
    v83 = v26;
    v42 = v104;
    v43 = v105;
    v107 = v37;
    v44 = v103;
    v45 = KeyedDecodingContainer.allKeys.getter();
    v46 = (2 * *(v45 + 16)) | 1;
    v109 = v45;
    v110 = v45 + 32;
    v111 = 0;
    v112 = v46;
    v47 = sub_1002E2814();
    if (v47 != 6 && v111 == v112 >> 1)
    {
      if (v47 <= 2u)
      {
        if (v47)
        {
          v48 = v20;
          v49 = v44;
          v50 = v100;
          if (v47 == 1)
          {
            LOBYTE(v113) = 1;
            sub_1010AC9DC();
            v51 = v97;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v52 = v106;
            v53 = v84;
            v54 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v88 + 8))(v51, v53);
            (*(v52 + 8))(v48, v49);
            swift_unknownObjectRelease();
            v73 = v54 & 1;
            v74 = v80;
            *v80 = v73;
            swift_storeEnumTagMultiPayload();
            v75 = v107;
            sub_1010AC370(v74, v107, type metadata accessor for SecureLocationsRelayAction.Response);
          }

          else
          {
            LOBYTE(v113) = 2;
            sub_1010AC8FC();
            v67 = v98;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v68 = v106;
            sub_1000BC4D4(&qword_1016C6960, &qword_101401EF0);
            sub_1010AC950();
            v72 = v90;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v89 + 8))(v67, v72);
            (*(v68 + 8))(v48, v49);
            swift_unknownObjectRelease();
            v78 = v81;
            *v81 = v113;
            swift_storeEnumTagMultiPayload();
            v79 = v78;
            v75 = v107;
            sub_1010AC370(v79, v107, type metadata accessor for SecureLocationsRelayAction.Response);
          }
        }

        else
        {
          LOBYTE(v113) = 0;
          sub_1010ACA30();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v63 = v44;
          v50 = v100;
          (*(v85 + 8))(v41, v86);
          (*(v106 + 8))(v20, v63);
          swift_unknownObjectRelease();
          v75 = v107;
          swift_storeEnumTagMultiPayload();
        }

        goto LABEL_19;
      }

      if (v47 == 3)
      {
        LOBYTE(v113) = 3;
        sub_1010AC720();
        v64 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v65 = v106;
        sub_1000BC4D4(&qword_1016C6938, &qword_101401EE8);
        sub_1010AC774();
        v66 = v92;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v91 + 8))(v64, v66);
        (*(v65 + 8))(v20, v44);
        swift_unknownObjectRelease();
        v76 = v82;
        *v82 = v113;
      }

      else
      {
        v60 = v106;
        if (v47 != 4)
        {
          LOBYTE(v113) = 5;
          sub_1010AC624();
          v69 = v43;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for UUID();
          sub_1010A7C70(&qword_101698300, &type metadata accessor for UUID);
          v70 = v87;
          v71 = v95;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v96 + 8))(v69, v71);
          (*(v60 + 8))(v20, v44);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v77 = v70;
LABEL_18:
          v75 = v107;
          sub_1010AC370(v77, v107, type metadata accessor for SecureLocationsRelayAction.Response);
          v50 = v100;
LABEL_19:
          sub_1010AC370(v75, v50, type metadata accessor for SecureLocationsRelayAction.Response);
          return sub_100007BAC(v108);
        }

        LOBYTE(v113) = 4;
        sub_1010AC678();
        v61 = v99;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1000BC4D4(&qword_1016C6918, &qword_101401EE0);
        sub_1010AC82C(&qword_1016C6920, &qword_1016C6918, &qword_101401EE0, sub_1010AC6CC);
        v62 = v94;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v93 + 8))(v61, v62);
        (*(v60 + 8))(v20, v44);
        swift_unknownObjectRelease();
        v76 = v83;
        *v83 = v113;
      }

      swift_storeEnumTagMultiPayload();
      v77 = v76;
      goto LABEL_18;
    }

    v55 = type metadata accessor for DecodingError();
    swift_allocError();
    v57 = v56;
    v58 = *(sub_1000BC4D4(&qword_10169C868, &qword_101398420) + 48);
    *v57 = v101;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v55 - 8) + 104))(v57, enum case for DecodingError.typeMismatch(_:), v55);
    swift_willThrow();
    (*(v106 + 8))(v20, v44);
    swift_unknownObjectRelease();
  }

  return sub_100007BAC(v108);
}

uint64_t sub_1010A8F3C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C6828, &qword_101401E58);
  v85 = *(v2 - 8);
  v86 = v2;
  v3 = *(v85 + 64);
  __chkstk_darwin(v2);
  v83 = &v64 - v4;
  v5 = sub_1000BC4D4(&qword_1016C6830, &qword_101401E60);
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  __chkstk_darwin(v5);
  v84 = &v64 - v7;
  v8 = sub_1000BC4D4(&qword_1016C6838, &qword_101401E68);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  __chkstk_darwin(v8);
  v80 = &v64 - v10;
  v11 = sub_1000BC4D4(&qword_1016C6840, &qword_101401E70);
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  __chkstk_darwin(v11);
  v77 = &v64 - v13;
  v75 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  v14 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v76 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000BC4D4(&qword_1016C6848, &qword_101401E78);
  v73 = *(v74 - 8);
  v16 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v64 - v17;
  v71 = sub_1000BC4D4(&qword_1016C6850, &qword_101401E80);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v71);
  v69 = &v64 - v19;
  v68 = sub_1000BC4D4(&qword_1016C6858, &qword_101401E88);
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  __chkstk_darwin(v68);
  v22 = &v64 - v21;
  v66 = sub_1000BC4D4(&qword_1016C6860, &qword_101401E90);
  v65 = *(v66 - 8);
  v23 = *(v65 + 64);
  __chkstk_darwin(v66);
  v25 = &v64 - v24;
  v26 = type metadata accessor for SecureLocationsRelayAction(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016C6868, &qword_101401E98);
  v91 = *(v30 - 8);
  v31 = *(v91 + 64);
  __chkstk_darwin(v30);
  v33 = &v64 - v32;
  v34 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010AC220();
  v90 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1010AB93C(v89, v29, type metadata accessor for SecureLocationsRelayAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v36 = v90;
      if (EnumCaseMultiPayload == 2)
      {
        v47 = v29;
        v48 = v76;
        sub_1010AC370(v47, v76, type metadata accessor for SecureLocationsRelayAction.SendMessage);
        v92 = 4;
        sub_1010AC3D8();
        v49 = v77;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1010A7C70(&qword_1016C6898, type metadata accessor for SecureLocationsRelayAction.SendMessage);
        v50 = v79;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v78 + 8))(v49, v50);
        sub_1010A7CB8(v48, type metadata accessor for SecureLocationsRelayAction.SendMessage);
        return (*(v91 + 8))(v36, v30);
      }

      v60 = *v29;
      v62 = *(v29 + 1);
      v61 = *(v29 + 2);
      v92 = 5;
      sub_1010AC31C();
      v44 = v80;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = v60;
      v93 = v62;
      v94 = v61;
      sub_100157F84();
      v45 = v82;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v46 = v81;
    }

    else
    {
      v36 = v90;
      if (!EnumCaseMultiPayload)
      {
        v37 = *v29;
        v38 = *(v29 + 1);
        v92 = 2;
        sub_1010AC480();
        v39 = v69;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v92 = v37;
        v93 = v38;
        sub_1010AC4D4();
        v40 = v71;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v70 + 8))(v39, v40);
LABEL_17:
        (*(v91 + 8))(v36, v30);
      }

      v56 = *v29;
      v58 = *(v29 + 1);
      v57 = *(v29 + 2);
      v92 = 3;
      sub_1010AC42C();
      v44 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = v56;
      v93 = v58;
      v94 = v57;
      sub_100157F84();
      v45 = v74;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v46 = v73;
    }

LABEL_16:
    (*(v46 + 8))(v44, v45);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v92 = 7;
      sub_1010AC274();
      v63 = v83;
      v52 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v59 = v86;
      v53 = *(v85 + 8);
      v54 = v63;
      goto LABEL_19;
    }

    v92 = 1;
    sub_1010AC528();
    v52 = v90;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v53 = *(v67 + 8);
    v54 = v22;
    v55 = &v96;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v41 = *v29;
      v43 = *(v29 + 1);
      v42 = *(v29 + 2);
      v92 = 6;
      sub_1010AC2C8();
      v44 = v84;
      v36 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = v41;
      v93 = v43;
      v94 = v42;
      sub_100157F84();
      v45 = v88;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v46 = v87;
      goto LABEL_16;
    }

    v92 = 0;
    sub_1010AC57C();
    v52 = v90;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v53 = *(v65 + 8);
    v54 = v25;
    v55 = &v95;
  }

  v59 = *(v55 - 32);
LABEL_19:
  v53(v54, v59);
  return (*(v91 + 8))(v52, v30);
}

uint64_t sub_1010A99C0()
{
  if (*v0)
  {
    result = 0x74616E6974736564;
  }

  else
  {
    result = 0x696C696261706163;
  }

  *v0;
  return result;
}

uint64_t sub_1010A9A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696261706163 && a2 == 0xEA00000000007974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69)
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

uint64_t sub_1010A9AF0(uint64_t a1)
{
  v2 = sub_1010AE560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9B2C(uint64_t a1)
{
  v2 = sub_1010AE560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9B88()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1010A9BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010ACB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1010A9C0C(uint64_t a1)
{
  v2 = sub_1010ACA84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9C48(uint64_t a1)
{
  v2 = sub_1010ACA84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9C9C(uint64_t a1)
{
  v2 = sub_1010AC8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9CD8(uint64_t a1)
{
  v2 = sub_1010AC8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9D14(uint64_t a1)
{
  v2 = sub_1010AC9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9D50(uint64_t a1)
{
  v2 = sub_1010AC9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010A9D8C()
{
  v1 = 1684631414;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0x73656369766564;
  if (v2 != 4)
  {
    v4 = 1684632949;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 1819242338;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1010A9E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010ACC44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1010A9E60(uint64_t a1)
{
  v2 = sub_1010AC5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9E9C(uint64_t a1)
{
  v2 = sub_1010AC5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9ED8(uint64_t a1)
{
  v2 = sub_1010AC720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9F14(uint64_t a1)
{
  v2 = sub_1010AC720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9F50(uint64_t a1)
{
  v2 = sub_1010AC678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9F8C(uint64_t a1)
{
  v2 = sub_1010AC678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9FC8(uint64_t a1)
{
  v2 = sub_1010AC624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA004(uint64_t a1)
{
  v2 = sub_1010AC624();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA040(uint64_t a1)
{
  v2 = sub_1010ACA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA07C(uint64_t a1)
{
  v2 = sub_1010ACA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA0D0(uint64_t a1)
{
  v2 = sub_1010AC274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA10C(uint64_t a1)
{
  v2 = sub_1010AC274();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010AA148()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x63697665446C6C61;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0x7373654D646E6573;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6261706143736168;
  if (v1 != 2)
  {
    v5 = 0x7473696765527369;
  }

  if (*v0)
  {
    v2 = 1886352499;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1010AA25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010ACE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1010AA284(uint64_t a1)
{
  v2 = sub_1010AC220();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA2C0(uint64_t a1)
{
  v2 = sub_1010AC220();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA2FC(uint64_t a1)
{
  v2 = sub_1010AC480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA338(uint64_t a1)
{
  v2 = sub_1010AC480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA374(uint64_t a1)
{
  v2 = sub_1010AC31C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA3B0(uint64_t a1)
{
  v2 = sub_1010AC31C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA3EC(uint64_t a1)
{
  v2 = sub_1010AC42C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA428(uint64_t a1)
{
  v2 = sub_1010AC42C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA464(uint64_t a1)
{
  v2 = sub_1010AC2C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA4A0(uint64_t a1)
{
  v2 = sub_1010AC2C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA4DC(uint64_t a1)
{
  v2 = sub_1010AC3D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA518(uint64_t a1)
{
  v2 = sub_1010AC3D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA554(uint64_t a1)
{
  v2 = sub_1010AC57C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA590(uint64_t a1)
{
  v2 = sub_1010AC57C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA5CC(uint64_t a1)
{
  v2 = sub_1010AC528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA608(uint64_t a1)
{
  v2 = sub_1010AC528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA65C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016C69C0, &qword_101401F10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010AD268();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1010AA7C4(uint64_t a1)
{
  v2 = sub_1010AD268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA800(uint64_t a1)
{
  v2 = sub_1010AD268();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1010AA83C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010AD0F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1010AA884(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x74756F656D6974;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0x46646E4165726966;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x694C6F54656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74616E6974736564;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1010AA9F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C69E0, &qword_101401F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010AD2BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for UUID();
  sub_1010A7C70(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for MessagingOptions(0);
    *&v22 = *(v3 + v11[5]);
    v23 = 1;
    sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
    sub_1010AD404();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v11[6]);
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v11[7];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + v11[9]);
    LOBYTE(v22) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v22 = *(v3 + v11[10]);
    v23 = 6;
    sub_1000BC4D4(&qword_1016C6728, &qword_101401B00);
    sub_1010AD488();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v22 = *(v3 + v11[11]);
    v23 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = (v3 + v11[12]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v22) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + v11[13]);
    v23 = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010AADB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000BC4D4(&qword_1016C69C8, &unk_101401F18);
  v42 = *(v45 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v45);
  v12 = &v36 - v11;
  v13 = type metadata accessor for MessagingOptions(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 28);
  v41 = v7;
  (*(v7 + 56))(&v17[v18], 1, 1, v6);
  v19 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010AD2BC();
  v46 = v12;
  v20 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_100007BAC(a1);
    return sub_10000B3A8(&v17[v18], &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v21 = v42;
    v22 = v43;
    v47 = v18;
    v38 = v17;
    v39 = a1;
    v37 = v13;
    LOBYTE(v48) = 0;
    v23 = sub_1010A7C70(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v23;
    v24 = v38;
    (*(v41 + 32))(v38, v44, v6);
    sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
    v49 = 1;
    sub_1010AD310();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v37;
    *&v24[v37[5]] = v48;
    LOBYTE(v48) = 2;
    v44 = 0;
    v24[v25[6]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v48) = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1010AD394(v22, &v24[v47]);
    LOBYTE(v48) = 4;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = v37;
    v28 = &v24[v37[8]];
    *v28 = v26;
    v28[8] = v29 & 1;
    LOBYTE(v48) = 5;
    v24[v27[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000BC4D4(&qword_1016C6728, &qword_101401B00);
    v49 = 6;
    sub_1010AC82C(&qword_1016C6948, &qword_1016C6728, &qword_101401B00, sub_1010AC8A8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v24[v27[10]] = v48;
    v49 = 7;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v38;
    *&v38[v37[11]] = v48;
    LOBYTE(v48) = 8;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = &v30[v37[12]];
    *v32 = v31;
    v32[1] = v33;
    v49 = 9;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v46, v45);
    v34 = v38;
    *&v38[v37[13]] = v48;
    sub_1010AB93C(v34, v40, type metadata accessor for MessagingOptions);
    sub_100007BAC(v39);
    return sub_1010A7CB8(v34, type metadata accessor for MessagingOptions);
  }
}

unint64_t sub_1010AB5CC(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6564496C65646F6DLL;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x56746375646F7270;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x6C6C61636F4C7369;
      break;
    case 9:
      result = 0x6576697463417369;
      break;
    case 10:
      result = 0x79627261654E7369;
      break;
    case 11:
      result = 0x63656E6E6F437369;
      break;
    case 12:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1010AB768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010AD560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1010AB790(uint64_t a1)
{
  v2 = sub_1010AD2BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AB7CC(uint64_t a1)
{
  v2 = sub_1010AD2BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AB840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010AD8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1010AB868(uint64_t a1)
{
  v2 = sub_1010AE4A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AB8A4(uint64_t a1)
{
  v2 = sub_1010AE4A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1010AB8E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1010ADCF0(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_1010AB93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010AB9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1010A7B80(a1, v6, v1 + v5);
}

void sub_1010ABAC0()
{
  sub_1010AC01C(319, &qword_1016C6590, sub_10108ACCC, &type metadata for BeaconSharingMessageType, type metadata accessor for Message);
  if (v0 <= 0x3F)
  {
    sub_1010ABDDC(319, &unk_1016C6598, &type metadata for RelayedMetadata, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MessagingOptions(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1010ABBF0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1010ABDDC(319, &qword_1016C6638, &type metadata for MessagingDestination, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100395648();
      if (v2 <= 0x3F)
      {
        sub_1010ABDDC(319, &unk_1016A0CD8, &type metadata for Double, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1010AC01C(319, &qword_1016C6640, sub_1010ABD88, &type metadata for MessagingCapability, &type metadata accessor for Set);
          if (v4 <= 0x3F)
          {
            sub_1010ABDDC(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1010ABD88()
{
  result = qword_1016C6648;
  if (!qword_1016C6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6648);
  }

  return result;
}

void sub_1010ABDDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1010ABE2C()
{
  sub_1010ABF0C();
  if (v0 <= 0x3F)
  {
    sub_1010ABF70();
    if (v1 <= 0x3F)
    {
      sub_1010AC01C(319, &qword_1016C6738, sub_1010AC084, &type metadata for RelayMessagingDevice, &type metadata accessor for Set);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1010ABF0C()
{
  if (!qword_1016C6718)
  {
    sub_100589064();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C6718);
    }
  }
}

void sub_1010ABF70()
{
  if (!qword_1016C6720)
  {
    sub_1000BC580(&qword_1016C6728, &qword_101401B00);
    sub_1000041A4(&qword_1016C6730, &qword_1016C6728, &qword_101401B00);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C6720);
    }
  }
}

void sub_1010AC01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1010AC084()
{
  result = qword_1016C6740;
  if (!qword_1016C6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6740);
  }

  return result;
}

uint64_t sub_1010AC0E8()
{
  result = type metadata accessor for SecureLocationsRelayAction.SendMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1010AC174()
{
  result = qword_1016C6818;
  if (!qword_1016C6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6818);
  }

  return result;
}

unint64_t sub_1010AC1CC()
{
  result = qword_1016C6820;
  if (!qword_1016C6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6820);
  }

  return result;
}

unint64_t sub_1010AC220()
{
  result = qword_1016C6870;
  if (!qword_1016C6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6870);
  }

  return result;
}

unint64_t sub_1010AC274()
{
  result = qword_1016C6878;
  if (!qword_1016C6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6878);
  }

  return result;
}

unint64_t sub_1010AC2C8()
{
  result = qword_1016C6880;
  if (!qword_1016C6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6880);
  }

  return result;
}

unint64_t sub_1010AC31C()
{
  result = qword_1016C6888;
  if (!qword_1016C6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6888);
  }

  return result;
}

uint64_t sub_1010AC370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1010AC3D8()
{
  result = qword_1016C6890;
  if (!qword_1016C6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6890);
  }

  return result;
}

unint64_t sub_1010AC42C()
{
  result = qword_1016C68A0;
  if (!qword_1016C68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68A0);
  }

  return result;
}

unint64_t sub_1010AC480()
{
  result = qword_1016C68A8;
  if (!qword_1016C68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68A8);
  }

  return result;
}

unint64_t sub_1010AC4D4()
{
  result = qword_1016C68B0;
  if (!qword_1016C68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68B0);
  }

  return result;
}

unint64_t sub_1010AC528()
{
  result = qword_1016C68B8;
  if (!qword_1016C68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68B8);
  }

  return result;
}

unint64_t sub_1010AC57C()
{
  result = qword_1016C68C0;
  if (!qword_1016C68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68C0);
  }

  return result;
}

unint64_t sub_1010AC5D0()
{
  result = qword_1016C6900;
  if (!qword_1016C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6900);
  }

  return result;
}

unint64_t sub_1010AC624()
{
  result = qword_1016C6908;
  if (!qword_1016C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6908);
  }

  return result;
}

unint64_t sub_1010AC678()
{
  result = qword_1016C6910;
  if (!qword_1016C6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6910);
  }

  return result;
}

unint64_t sub_1010AC6CC()
{
  result = qword_1016C6928;
  if (!qword_1016C6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6928);
  }

  return result;
}

unint64_t sub_1010AC720()
{
  result = qword_1016C6930;
  if (!qword_1016C6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6930);
  }

  return result;
}

unint64_t sub_1010AC774()
{
  result = qword_1016C6940;
  if (!qword_1016C6940)
  {
    sub_1000BC580(&qword_1016C6938, &qword_101401EE8);
    sub_1010AC82C(&qword_1016C6948, &qword_1016C6728, &qword_101401B00, sub_1010AC8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6940);
  }

  return result;
}

uint64_t sub_1010AC82C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1010AC8A8()
{
  result = qword_1016C6950;
  if (!qword_1016C6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6950);
  }

  return result;
}

unint64_t sub_1010AC8FC()
{
  result = qword_1016C6958;
  if (!qword_1016C6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6958);
  }

  return result;
}

unint64_t sub_1010AC950()
{
  result = qword_1016C6968;
  if (!qword_1016C6968)
  {
    sub_1000BC580(&qword_1016C6960, &qword_101401EF0);
    sub_100157E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6968);
  }

  return result;
}

unint64_t sub_1010AC9DC()
{
  result = qword_1016C6970;
  if (!qword_1016C6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6970);
  }

  return result;
}

unint64_t sub_1010ACA30()
{
  result = qword_1016C6978;
  if (!qword_1016C6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6978);
  }

  return result;
}

unint64_t sub_1010ACA84()
{
  result = qword_1016C6988;
  if (!qword_1016C6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6988);
  }

  return result;
}

unint64_t sub_1010ACAD8()
{
  result = qword_1016C69A0;
  if (!qword_1016C69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69A0);
  }

  return result;
}

uint64_t sub_1010ACB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1010ACC44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010137A3B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010137A3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1010ACE40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6261706143736168 && a2 == 0xED00007974696C69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473696765527369 && a2 == 0xEC00000064657265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000010137A370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010137A390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63697665446C6C61 && a2 == 0xEA00000000007365)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_1010AD0F4(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C69B0, &qword_101401F08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1010AD268();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_1010AD268()
{
  result = qword_1016C69B8;
  if (!qword_1016C69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69B8);
  }

  return result;
}

unint64_t sub_1010AD2BC()
{
  result = qword_1016C69D0;
  if (!qword_1016C69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69D0);
  }

  return result;
}

unint64_t sub_1010AD310()
{
  result = qword_1016C69D8;
  if (!qword_1016C69D8)
  {
    sub_1000BC580(&qword_1016A4958, &qword_1013B1330);
    sub_100157E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69D8);
  }

  return result;
}

uint64_t sub_1010AD394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1010AD404()
{
  result = qword_1016C69E8;
  if (!qword_1016C69E8)
  {
    sub_1000BC580(&qword_1016A4958, &qword_1013B1330);
    sub_100157F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69E8);
  }

  return result;
}

unint64_t sub_1010AD488()
{
  result = qword_1016C69F0;
  if (!qword_1016C69F0)
  {
    sub_1000BC580(&qword_1016C6728, &qword_101401B00);
    sub_1010AD50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69F0);
  }

  return result;
}

unint64_t sub_1010AD50C()
{
  result = qword_1016C69F8;
  if (!qword_1016C69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69F8);
  }

  return result;
}

uint64_t sub_1010AD560(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101374A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010137A3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x46646E4165726966 && a2 == 0xED0000746567726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010137A410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010137A430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010137A450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1010AD8B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001013723F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746375646F7270 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101372410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C61636F4C7369 && a2 == 0xEF64657269615079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79627261654E7369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}
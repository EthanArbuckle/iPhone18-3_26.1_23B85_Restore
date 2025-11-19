uint64_t sub_100057D08(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100057DAC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100057DE4(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100057E50(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100057EBC(void *a1, uint64_t a2)
{
  v4 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100057F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100057FEC()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005804C(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153AD0, type metadata accessor for KTSDBObjcError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000580B8(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153AD0, type metadata accessor for KTSDBObjcError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100058124(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100058190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10005825C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005846C()
{
  result = qword_100153AF8;
  if (!qword_100153AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153AF8);
  }

  return result;
}

unint64_t sub_100058564()
{
  result = qword_100153B08;
  if (!qword_100153B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B08);
  }

  return result;
}

id sub_100058624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = 0;
  v7 = [v3 verifyConsistencyProof:isa startLogHead:a2 endLogHead:a3 error:&v11];

  v8 = v11;
  if (v11)
  {
    swift_willThrow();
    v9 = v8;
  }

  return v7;
}

id sub_100058738()
{
  v5 = 0;
  result = [v0 verifyWithError:&v5];
  v2 = v5;
  if (v5)
  {
    v3 = result;
    swift_willThrow();
    v4 = v2;
    return v3;
  }

  return result;
}

uint64_t sub_100058814()
{
  v1 = 0;
  result = mach_timebase_info(&v1);
  qword_100159EC8 = v1;
  return result;
}

unint64_t MachTime.seconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (!is_mul_ok(result, qword_100159EC8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(qword_100159EC8))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t MachTime.nanoseconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      return result * qword_100159EC8 / HIDWORD(qword_100159EC8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t MachTime.milliseconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      return result * qword_100159EC8 / HIDWORD(qword_100159EC8) / 0xF4240;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t MachTime.microseconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      return result * qword_100159EC8 / HIDWORD(qword_100159EC8) / 0x3E8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static MachTime.- infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (qword_100159EC0 != -1)
  {
    v2 = result;
    v3 = a2;
    swift_once();
    result = v2;
    a2 = v3;
  }

  if (!is_mul_ok(result, qword_100159EC8))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!HIDWORD(qword_100159EC8))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!is_mul_ok(a2, qword_100159EC8))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_100058DAC()
{
  result = qword_100153B30;
  if (!qword_100153B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B30);
  }

  return result;
}

unint64_t sub_100058E68(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0xD000000000000024;
    v3 = 0xD000000000000019;
    if (a1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000011;
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD00000000000001ELL;
  }
}

uint64_t sub_100058FAC(uint64_t a1)
{
  v2 = sub_10005CD18();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100058FE8(uint64_t a1)
{
  v2 = sub_10005CD18();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100059030()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D218);
  sub_100025AE0(v0, qword_10015D218);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000590B0()
{
  if (qword_10015A050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D218);
}

uint64_t sub_100059114@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D218);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000591BC()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_1000592B4(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_100059318(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

__n128 sub_1000593E8@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_100037608(a4, a9 + 24);
  *(a9 + 104) = a5;
  sub_100037608(a6, a9 + 64);
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  result = *a10;
  v16 = *(a10 + 16);
  *(a9 + 128) = *a10;
  *(a9 + 144) = v16;
  *(a9 + 160) = *(a10 + 32);
  return result;
}

uint64_t sub_100059464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v73 = a4;
  v70 = a3;
  v71 = a2;
  v79 = a1;
  v9 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = &v63 - v11;
  v12 = type metadata accessor for URL();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  v14 = __chkstk_darwin(v12);
  v67 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v63 - v16;
  v74 = type metadata accessor for URLQueryItem();
  v80 = *(v74 - 8);
  v17 = *(v80 + 64);
  v18 = __chkstk_darwin(v74);
  v78 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v72 = &v63 - v21;
  __chkstk_darwin(v20);
  v23 = &v63 - v22;
  v24 = sub_100024248(&qword_100153B78, &qword_100105E68);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v63 - v26;
  v28 = type metadata accessor for URLComponents();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v81 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v6;
  v32 = *(v6 + 1);
  v33 = String._bridgeToObjectiveC()();
  v66 = v32;
  v34 = [v32 stringForKey:v33];

  if (!v34)
  {
    sub_10005CB24();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 1;
    return swift_willThrow();
  }

  v65 = a5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.init(string:)();

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10002533C(v27, &qword_100153B78, &qword_100105E68);
    sub_10005CB24();
    swift_allocError();
    *v35 = 3;
    *(v35 + 8) = 1;
    return swift_willThrow();
  }

  v38 = v28;
  (*(v29 + 32))(v81, v27, v28);
  v64 = v29;
  if (v79)
  {
    v82 = v79;
    sub_100025D44();
    BinaryInteger.description.getter();
    URLQueryItem.init(name:value:)();

    v39 = sub_10005C94C(0, 1, 1, &_swiftEmptyArrayStorage);
    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_10005C94C(v40 > 1, v41 + 1, 1, v39);
    }

    v42 = v74;
    v39[2] = v41 + 1;
    (*(v80 + 32))(v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v41, v23, v42);
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
    v42 = v74;
  }

  v43 = v78;
  if ((v70 & 1) == 0 && v71)
  {
    v82 = v71;
    sub_100025D44();
    BinaryInteger.description.getter();
    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_10005C94C(0, v39[2] + 1, 1, v39);
    }

    v45 = v39[2];
    v44 = v39[3];
    v43 = v78;
    if (v45 >= v44 >> 1)
    {
      v39 = sub_10005C94C(v44 > 1, v45 + 1, 1, v39);
    }

    v39[2] = v45 + 1;
    (*(v80 + 32))(v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v45, v72, v42);
  }

  URLQueryItem.init(name:value:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v81;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_10005C94C(0, v39[2] + 1, 1, v39);
  }

  v49 = v39[2];
  v48 = v39[3];
  if (v49 >= v48 >> 1)
  {
    v39 = sub_10005C94C(v48 > 1, v49 + 1, 1, v39);
  }

  v39[2] = v49 + 1;
  (*(v80 + 32))(v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v49, v43, v42);
  URLComponents.queryItems.setter();
  v50 = v75;
  URLComponents.url.getter();
  v52 = v76;
  v51 = v77;
  if ((*(v76 + 48))(v50, 1, v77) == 1)
  {
    sub_10002533C(v50, &qword_100152F00, &qword_1001042C0);
    sub_10005CB24();
    swift_allocError();
    *v53 = 3;
    *(v53 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v54 = v69;
    (*(v52 + 32))(v69, v50, v51);
    sub_10005CD6C();
    v55 = v67;
    (*(v52 + 16))(v67, v54, v51);
    v56 = sub_1000B79C8(v55, a6);
    v57 = *v68;
    v58 = sub_1000258E4();
    sub_1000B738C(v58 & 1);
    if (sub_10002AAF4([v66 currentEnvironment]))
    {
      [v56 _setPrivacyProxyFailClosed:1];
      if (qword_10015A050 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100025AE0(v59, qword_10015D218);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Enforcing privacy proxy", v62, 2u);
      }

      v47 = v81;
    }

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v52 + 8))(v54, v51);
  }

  return (*(v64 + 8))(v47, v38);
}

id sub_100059DE0()
{
  v0 = objc_opt_self();

  return [v0 defaultNetworkTimeout];
}

uint64_t sub_100059E18(double a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  *(v2 + 552) = swift_task_alloc();
  v4 = type metadata accessor for Date();
  *(v2 + 560) = v4;
  v5 = *(v4 - 8);
  *(v2 + 568) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 576) = swift_task_alloc();
  v7 = *(*(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8) + 64) + 15;
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v2 + 608) = v8;
  v9 = *(v8 - 8);
  *(v2 + 616) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = swift_task_alloc();
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();

  return _swift_task_switch(sub_100059FE4, 0, 0);
}

uint64_t sub_100059FE4()
{
  v77 = v0;
  v1 = **(v0 + 544);
  *(v0 + 524) = v1;
  v2 = sub_10004CE5C(v1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0 + 544);
    v7 = v6[14];
    if (!v7)
    {
      v9 = 0;
LABEL_7:
      v11 = v6[6];
      v12 = v6[7];
      sub_100026F6C(v6 + 3, v11);
      v13 = (*(v12 + 104))(v4, v5, v9, v7 == 0, 5, 1, v11, v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;

      *(v0 + 808) = v17 & 1;
      v26 = *(v0 + 648);
      v27 = *(v0 + 544);
      v28 = *(v0 + 536);
      *(v0 + 656) = v19;
      *(v0 + 664) = v15;
      *(v0 + 672) = v13;
      sub_100059464(v13, v15, v17 & 1, v7 != 0, v26, v28);
      if (qword_10015A050 != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 648);
      v41 = *(v0 + 640);
      v42 = *(v0 + 616);
      v43 = *(v0 + 608);
      v44 = type metadata accessor for Logger();
      *(v0 + 680) = sub_100025AE0(v44, qword_10015D218);
      v45 = *(v42 + 16);
      *(v0 + 688) = v45;
      *(v0 + 696) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45(v41, v40, v43);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 640);
      if (v48)
      {
        v74 = v47;
        v50 = *(v0 + 600);
        v51 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v51 = 136315394;
        *(v0 + 304) = v13;
        *(v0 + 312) = v15;
        *(v0 + 320) = v17 & 1;
        *(v0 + 328) = v19;
        sub_10005CB8C();
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = sub_100021D24(v52, v53, v76);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2080;
        URLRequest.url.getter();
        v55 = type metadata accessor for URL();
        v56 = *(v55 - 8);
        v57 = (*(v56 + 48))(v50, 1, v55);
        v58 = *(v0 + 600);
        if (v57 == 1)
        {
          sub_10002533C(*(v0 + 600), &qword_100152F00, &qword_1001042C0);
          v59 = 0xEB000000004C5255;
          v60 = 0x206E776F6E6B6E75;
        }

        else
        {
          v64 = *(v0 + 600);
          v60 = URL.description.getter();
          v59 = v65;
          (*(v56 + 8))(v58, v55);
        }

        v63 = *(*(v0 + 616) + 8);
        v63(*(v0 + 640), *(v0 + 608));
        v66 = sub_100021D24(v60, v59, v76);

        *(v51 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v46, v74, "Fetching %s from %s", v51, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v61 = *(v0 + 616);
        v62 = *(v0 + 608);

        v63 = *(v61 + 8);
        v63(v49, v62);
      }

      *(v0 + 704) = v63;
      v67 = *(v0 + 544);
      *(v0 + 712) = static MachTime.current.getter();
      v68 = v67[11];
      v69 = v67[12];
      sub_100026F6C(v67 + 8, v68);
      v70 = *(v69 + 8);
      v75 = (v70 + *v70);
      v71 = v70[1];
      v72 = swift_task_alloc();
      *(v0 + 720) = v72;
      *v72 = v0;
      v72[1] = sub_10005A7C8;
      v73 = *(v0 + 648);

      return v75(v73, v68, v69);
    }

    v8 = [v7 logBeginningMs];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      v6 = *(v0 + 544);
      goto LABEL_7;
    }

    __break(1u);
    swift_once();
    v20 = type metadata accessor for Logger();
    sub_100025AE0(v20, qword_10015D218);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to get last milestone from DB: %@", v23, 0xCu);
      sub_10002533C(v24, &qword_100153450, &unk_100104140);
    }
  }

  else
  {
    sub_10005CB24();
    swift_allocError();
    *v10 = 4;
    *(v10 + 8) = 1;
  }

  swift_willThrow();
  v29 = *(v0 + 648);
  v30 = *(v0 + 640);
  v31 = *(v0 + 632);
  v32 = *(v0 + 624);
  v33 = *(v0 + 600);
  v34 = *(v0 + 592);
  v35 = *(v0 + 584);
  v36 = *(v0 + 576);
  v37 = *(v0 + 552);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10005A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 720);
  v9 = *v4;
  v5[91] = a1;
  v5[92] = a2;
  v5[93] = a3;
  v5[94] = v3;

  if (v3)
  {
    v7 = sub_10005C4D0;
  }

  else
  {
    v7 = sub_10005A8E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005A8E8()
{
  v282 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 576);
  v3 = *(v0 + 744);
  MachTime.seconds.getter(v1);
  static Date.now.getter();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 648);
    v14 = *(v0 + 632);
    v15 = *(v0 + 608);

    v11(v14, v13, v15);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 632);
      v19 = *(v0 + 592);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v281[0] = v21;
      *v20 = 136315138;
      URLRequest.url.getter();
      v22 = type metadata accessor for URL();
      v23 = *(v22 - 8);
      v24 = (*(v23 + 48))(v19, 1, v22);
      v25 = *(v0 + 592);
      if (v24 == 1)
      {
        sub_10002533C(*(v0 + 592), &qword_100152F00, &qword_1001042C0);
        v26 = 0xEB000000004C5255;
        v27 = 0x206E776F6E6B6E75;
      }

      else
      {
        v119 = *(v0 + 592);
        v27 = URL.description.getter();
        v26 = v120;
        (*(v23 + 8))(v25, v22);
      }

      v121 = *(v0 + 616) + 8;
      (*(v0 + 704))(*(v0 + 632), *(v0 + 608));
      v122 = sub_100021D24(v27, v26, v281);

      *(v20 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v16, v17, "Bad URL response from %s", v20, 0xCu);
      sub_100024E14(v21);
    }

    else
    {
      v82 = *(v0 + 704);
      v83 = *(v0 + 632);
      v84 = *(v0 + 616);
      v85 = *(v0 + 608);

      v82(v83, v85);
    }

    v123 = *(*(v0 + 544) + 120);
    v124 = *(v0 + 744);
    v125 = *(v0 + 736);
    v265 = v124;
    v272 = *(v0 + 728);
    v126 = *(v0 + 704);
    v127 = *(v0 + 648);
    v128 = *(v0 + 616);
    v129 = *(v0 + 608);
    v130 = *(v0 + 576);
    v131 = *(v0 + 568);
    v278 = *(v0 + 560);
    if (v123)
    {
      swift_beginAccess();
      v252 = v125;

      v132 = String._bridgeToObjectiveC()();

      sub_10005CB24();
      swift_allocError();
      *v133 = 1;
      *(v133 + 8) = 1;
      v243 = v127;
      v134 = _convertErrorToNSError(_:)();
      v135 = v129;
      v136 = _convertErrorToNSError(_:)();

      [v123 logResultForEvent:v132 hardFailure:1 result:v136];

      swift_allocError();
      *v137 = 1;
      *(v137 + 8) = 1;
      swift_willThrow();

      sub_100026FB0(v272, v252);
      (*(v131 + 8))(v130, v278);
      v126(v243, v135);
    }

    else
    {
      sub_10005CB24();
      swift_allocError();
      *v149 = 1;
      *(v149 + 8) = 1;
      swift_willThrow();

      sub_100026FB0(v272, v125);
      (*(v131 + 8))(v130, v278);
      v126(v127, v129);
    }

    goto LABEL_34;
  }

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 valueForHTTPHeaderField:v6];

  if (v7)
  {
    v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
    v268 = 0x3E4853206F6E3CLL;
  }

  v28 = *(v0 + 680);
  v29 = *(v0 + 744);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 744);
  v34 = &stru_10014B000;
  v276 = v9;
  if (v32)
  {
    v35 = *(v0 + 672);
    v36 = *(v0 + 664);
    v260 = *(v0 + 656);
    v37 = *(v0 + 808);
    v38 = swift_slowAlloc();
    v281[0] = swift_slowAlloc();
    *v38 = 134218498;
    *(v38 + 4) = [v5 statusCode];

    *(v38 + 12) = 2080;
    *(v0 + 272) = v35;
    *(v0 + 280) = v36;
    *(v0 + 288) = v37;
    *(v0 + 296) = v260;
    sub_10005CB8C();
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = sub_100021D24(v39, v40, v281);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_100021D24(v268, v276, v281);
    _os_log_impl(&_mh_execute_header, v30, v31, "Received %ld response for %s with %s", v38, 0x20u);
    swift_arrayDestroy();
    v34 = &stru_10014B000;
  }

  else
  {
  }

  v42 = [v5 v34[38].name];
  v43 = *(v0 + 544);
  if (v42 != 200)
  {

    v61 = [v5 v34[38].name];
    v62 = *(v43 + 120);
    if (v62)
    {
      swift_beginAccess();

      v63 = String._bridgeToObjectiveC()();

      sub_10005CB24();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = 0;
      v65 = _convertErrorToNSError(_:)();
      v66 = _convertErrorToNSError(_:)();

      [v62 logResultForEvent:v63 hardFailure:1 result:v66];
    }

    sub_100025834(*(v0 + 544) + 128, v0 + 16, &qword_100153B58, &qword_100105C68);
    v67 = *(v0 + 40);
    v277 = v61;
    if (v67)
    {
      v68 = *(v0 + 524);
      v262 = *(v0 + 48);
      v269 = *(v0 + 544);
      sub_100026F6C((v0 + 16), v67);
      sub_10005CB24();
      v69 = swift_allocError();
      *v70 = v61;
      *(v70 + 8) = 0;
      sub_100024248(&qword_1001535C8, &qword_100104BE8);
      v71 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
      v72 = *(*(v71 - 8) + 72);
      v73 = (*(*(v71 - 8) + 80) + 32) & ~*(*(v71 - 8) + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_100104980;
      v75 = (v74 + v73);
      v76 = *(v71 + 48);
      *v75 = 7368801;
      v75[1] = 0xE300000000000000;
      EventValue.init(integerLiteral:)();
      v77 = (v75 + v72);
      v78 = *(v71 + 48);
      *v77 = 0x6D69546863746566;
      v77[1] = 0xE900000000000065;
      EventValue.init(floatLiteral:)();
      v79 = (v75 + 2 * v72);
      v80 = *(v71 + 48);
      *v79 = 7761509;
      v79[1] = 0xE300000000000000;
      v57 = [*(v269 + 8) currentEnvironment];
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_65;
      }

      EventValue.init(integerLiteral:)();
      v81 = sub_10004C674(v74);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v262 + 8))(0x73656C696D747753, 0xEC000000656E6F74, v69, v81, v67);

      sub_100024E14((v0 + 16));
    }

    else
    {
      sub_10002533C(v0 + 16, &qword_100153B58, &qword_100105C68);
    }

    v100 = *(v0 + 744);
    v101 = *(v0 + 736);
    v102 = *(v0 + 728);
    v264 = *(v0 + 648);
    v271 = *(v0 + 704);
    v103 = *(v0 + 616);
    v255 = *(v0 + 608);
    v104 = *(v0 + 576);
    v105 = *(v0 + 568);
    v106 = *(v0 + 560);
    sub_10005CB24();
    swift_allocError();
    *v107 = v277;
    *(v107 + 8) = 0;
    swift_willThrow();

    sub_100026FB0(v102, v101);
    (*(v105 + 8))(v104, v106);
    v271(v264, v255);
    goto LABEL_34;
  }

  v251 = *(v0 + 544);
  sub_100025834(v43 + 128, v0 + 56, &qword_100153B58, &qword_100105C68);
  v44 = *(v0 + 80);
  if (v44)
  {
    v45 = *(v0 + 524);
    v46 = *(v0 + 544);
    v261 = *(v0 + 88);
    sub_100026F6C((v0 + 56), v44);
    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v47 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
    v48 = *(*(v47 - 8) + 72);
    v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100104980;
    v51 = (v50 + v49);
    v52 = *(v47 + 48);
    *v51 = 7368801;
    v51[1] = 0xE300000000000000;
    EventValue.init(integerLiteral:)();
    v53 = (v50 + v49 + v48);
    v54 = *(v47 + 48);
    *v53 = 0x6D69546863746566;
    v53[1] = 0xE900000000000065;
    EventValue.init(floatLiteral:)();
    v55 = (v50 + v49 + 2 * v48);
    v56 = *(v47 + 48);
    *v55 = 7761509;
    v55[1] = 0xE300000000000000;
    v57 = [*(v46 + 8) currentEnvironment];
    if ((v57 & 0x8000000000000000) == 0)
    {
      EventValue.init(integerLiteral:)();
      v60 = sub_10004C674(v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v261 + 8))(0x73656C696D747753, 0xEC000000656E6F74, 0, v60, v44);

      sub_100024E14((v0 + 56));
      goto LABEL_22;
    }

    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_10002533C(v0 + 56, &qword_100153B58, &qword_100105C68);
LABEL_22:
  v86 = *(*(v0 + 544) + 120);
  if (v86)
  {
    swift_beginAccess();

    v87 = String._bridgeToObjectiveC()();

    [v86 logResultForEvent:v87 hardFailure:0 result:0];
  }

  v88 = *(v0 + 752);
  v89 = *(v0 + 736);
  v90 = *(v0 + 728);
  objc_allocWithZone(MilestoneRootsResponse);
  sub_100027004(v90, v89);
  v91 = sub_1000330B8();
  *(v0 + 760) = v91;
  if (!v88)
  {
    v108 = v91;
    v109 = *(v0 + 576);
    v110 = *(v0 + 568);
    v111 = *(v0 + 560);
    v112 = *(v0 + 552);
    v113 = *(v0 + 544);
    sub_100026FB0(*(v0 + 728), *(v0 + 736));
    sub_1000331C0(v113 + 24, v0 + 96);
    sub_100069D48(v0 + 96);
    (*(v110 + 16))(v112, v109, v111);
    (*(v110 + 56))(v112, 0, 1, v111);
    MilestoneRootsResponse.receiptTime.setter(v112);
    v114 = *(v113 + 8);
    v115 = v114;
    MilestoneRootsResponse.configBag.setter(v114);
    v116 = *(v113 + 16);
    v116;
    MilestoneRootsResponse.keyBag.setter(v116);
    v117 = MilestoneRootsResponse.isNewEpoch()();
    if (v118)
    {
    }

    else if (v117)
    {
      v150 = *(v0 + 544);

      sub_10007F3F0();
      v58 = *(v150 + 104);
      *(v0 + 768) = v58;
      if (!v58)
      {

        v217 = *(v0 + 744);
        v218 = *(v0 + 704);
        v219 = *(v0 + 648);
        v220 = *(v0 + 616);
        v221 = *(v0 + 608);
        v222 = *(v0 + 576);
        v223 = *(v0 + 568);
        v224 = *(v0 + 560);
        sub_100026FB0(*(v0 + 728), *(v0 + 736));

        (*(v223 + 8))(v222, v224);
        v218(v219, v221);
LABEL_63:
        v225 = *(v0 + 648);
        v226 = *(v0 + 640);
        v227 = *(v0 + 632);
        v228 = *(v0 + 624);
        v229 = *(v0 + 600);
        v230 = *(v0 + 592);
        v231 = *(v0 + 584);
        v232 = *(v0 + 576);
        v233 = *(v0 + 552);

        v147 = *(v0 + 8);
        goto LABEL_35;
      }

      v151 = *v58 + 184;
      *(v0 + 776) = *v151;
      *(v0 + 784) = v151 & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
      v57 = sub_10005C27C;
      v59 = 0;

      return _swift_task_switch(v57, v58, v59);
    }

    MilestoneRootsResponse.verify()();
    if (v152 == 1)
    {
      if (v86)
      {
        swift_beginAccess();

        v153 = String._bridgeToObjectiveC()();

        [v86 logResultForEvent:v153 hardFailure:0 result:0];
      }

      v154 = *(v0 + 680);

      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.default.getter();

      v157 = os_log_type_enabled(v155, v156);
      v253 = *(v0 + 728);
      v256 = *(v0 + 736);
      v266 = *(v0 + 704);
      if (v157)
      {
        v158 = *(v0 + 672);
        v159 = *(v0 + 664);
        v234 = *(v0 + 656);
        v235 = *(v0 + 744);
        v160 = *(v0 + 808);
        v246 = *(v0 + 608);
        v249 = *(v0 + 648);
        v241 = *(v0 + 576);
        v244 = *(v0 + 616);
        v237 = *(v0 + 568);
        v239 = *(v0 + 560);
        v161 = swift_slowAlloc();
        v281[0] = swift_slowAlloc();
        *v161 = 136315394;
        *(v0 + 240) = v158;
        *(v0 + 248) = v159;
        *(v0 + 256) = v160;
        *(v0 + 264) = v234;
        sub_10005CB8C();
        v162 = dispatch thunk of CustomStringConvertible.description.getter();
        v164 = sub_100021D24(v162, v163, v281);

        *(v161 + 4) = v164;
        *(v161 + 12) = 2080;
        v165 = sub_100021D24(v268, v276, v281);

        *(v161 + 14) = v165;
        _os_log_impl(&_mh_execute_header, v155, v156, "Verified response for %s with %s", v161, 0x16u);
        swift_arrayDestroy();

        sub_100026FB0(v253, v256);
        (*(v237 + 8))(v241, v239);
        v166 = v246;
        v167 = v249;
      }

      else
      {
        v275 = *(v0 + 648);
        v211 = *(v0 + 616);
        v212 = *(v0 + 608);
        v213 = *(v0 + 576);
        v214 = *(v0 + 568);
        v215 = *(v0 + 560);
        v216 = *(v0 + 744);

        sub_100026FB0(v253, v256);

        (*(v214 + 8))(v213, v215);
        v167 = v275;
        v166 = v212;
      }

      v266(v167, v166);
      goto LABEL_63;
    }

    if (v86)
    {
      swift_beginAccess();

      v168 = String._bridgeToObjectiveC()();

      sub_10005CB24();
      swift_allocError();
      *v169 = 2;
      *(v169 + 8) = 1;
      v170 = _convertErrorToNSError(_:)();
      v171 = _convertErrorToNSError(_:)();

      [v86 logResultForEvent:v168 hardFailure:1 result:v171];
    }

    sub_10005CB24();
    v172 = swift_allocError();
    *v173 = 2;
    *(v173 + 8) = 1;
    swift_willThrow();
    if (v86)
    {
      swift_beginAccess();

      v174 = String._bridgeToObjectiveC()();

      v175 = _convertErrorToNSError(_:)();
      v176 = _convertErrorToNSError(_:)();

      [v86 logResultForEvent:v174 hardFailure:1 result:v176];
    }

    v177 = *(v0 + 680);

    swift_errorRetain();
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();

    v257 = v115;
    v267 = v172;
    if (os_log_type_enabled(v178, v179))
    {
      v180 = *(v0 + 672);
      v181 = *(v0 + 664);
      v182 = *(v0 + 656);
      v183 = *(v0 + 808);
      v184 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      v281[0] = swift_slowAlloc();
      *v184 = 136315650;
      *(v0 + 208) = v180;
      *(v0 + 216) = v181;
      *(v0 + 224) = v183;
      *(v0 + 232) = v182;
      sub_10005CB8C();
      v185 = dispatch thunk of CustomStringConvertible.description.getter();
      v187 = sub_100021D24(v185, v186, v281);

      *(v184 + 4) = v187;
      *(v184 + 12) = 2080;
      v188 = sub_100021D24(v268, v276, v281);

      *(v184 + 14) = v188;
      *(v184 + 22) = 2112;
      swift_errorRetain();
      v189 = _swift_stdlib_bridgeErrorToNSError();
      *(v184 + 24) = v189;
      *v247 = v189;
      _os_log_impl(&_mh_execute_header, v178, v179, "Response for %s with %s failed: %@", v184, 0x20u);
      sub_10002533C(v247, &qword_100153450, &unk_100104140);

      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100025834(v251 + 128, v0 + 136, &qword_100153B58, &qword_100105C68);
    v190 = *(v0 + 160);
    if (!v190)
    {
      v205 = *(v0 + 744);
      v206 = *(v0 + 736);
      v207 = *(v0 + 728);
      v274 = *(v0 + 648);
      v280 = *(v0 + 704);
      v254 = *(v0 + 616);
      v259 = *(v0 + 608);
      v208 = *(v0 + 576);
      v209 = *(v0 + 568);
      v210 = *(v0 + 560);
      sub_10002533C(v0 + 136, &qword_100153B58, &qword_100105C68);
      swift_willThrow();

      sub_100026FB0(v207, v206);
      (*(v209 + 8))(v208, v210);
      v280(v274, v259);
      goto LABEL_34;
    }

    v191 = *(v0 + 524);
    v273 = *(v0 + 168);
    v279 = *(v0 + 160);
    sub_100026F6C((v0 + 136), v190);
    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v192 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
    v193 = *(*(v192 - 8) + 72);
    v194 = (*(*(v192 - 8) + 80) + 32) & ~*(*(v192 - 8) + 80);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_100104980;
    v196 = (v195 + v194);
    v197 = *(v192 + 48);
    *v196 = 7368801;
    v196[1] = 0xE300000000000000;
    swift_errorRetain();
    EventValue.init(integerLiteral:)();
    v198 = (v196 + v193);
    v199 = *(v192 + 48);
    *v198 = 0x6D69546863746566;
    v198[1] = 0xE900000000000065;
    EventValue.init(floatLiteral:)();
    v200 = (v196 + 2 * v193);
    v201 = *(v192 + 48);
    *v200 = 7761509;
    v200[1] = 0xE300000000000000;
    v57 = [v257 currentEnvironment];
    if ((v57 & 0x8000000000000000) == 0)
    {
      v202 = *(v0 + 744);
      v236 = *(v0 + 728);
      v238 = *(v0 + 736);
      v258 = *(v0 + 648);
      v245 = *(v0 + 704);
      v248 = *(v0 + 616);
      v250 = *(v0 + 608);
      v203 = *(v0 + 568);
      v240 = *(v0 + 560);
      v242 = *(v0 + 576);
      EventValue.init(integerLiteral:)();
      v204 = sub_10004C674(v195);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v273 + 8))(0x73656C696D747753, 0xEC000000656E6F74, v267, v204, v279);

      sub_100024E14((v0 + 136));
      swift_willThrow();

      sub_100026FB0(v236, v238);
      (*(v203 + 8))(v242, v240);
      v245(v258, v250);
      goto LABEL_34;
    }

LABEL_66:
    __break(1u);
    return _swift_task_switch(v57, v58, v59);
  }

  v92 = *(v0 + 744);
  v93 = *(v0 + 736);
  v94 = *(v0 + 728);
  v263 = *(v0 + 648);
  v270 = *(v0 + 704);
  v95 = *(v0 + 616);
  v96 = *(v0 + 608);
  v97 = *(v0 + 576);
  v98 = *(v0 + 568);
  v99 = *(v0 + 560);
  sub_100026FB0(v94, v93);

  sub_100026FB0(v94, v93);

  (*(v98 + 8))(v97, v99);
  v270(v263, v96);
LABEL_34:
  v138 = *(v0 + 648);
  v139 = *(v0 + 640);
  v140 = *(v0 + 632);
  v141 = *(v0 + 624);
  v142 = *(v0 + 600);
  v143 = *(v0 + 592);
  v144 = *(v0 + 584);
  v145 = *(v0 + 576);
  v146 = *(v0 + 552);

  v147 = *(v0 + 8);
LABEL_35:

  return v147();
}

uint64_t sub_10005C27C()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  (*(v0 + 776))(1);
  v3 = *v2 + 184;
  *(v0 + 792) = *v3;
  *(v0 + 800) = v3 & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
  v4 = *(v0 + 768);

  return _swift_task_switch(sub_10005C310, v4, 0);
}

uint64_t sub_10005C310()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 768);
  (*(v0 + 792))(4);

  return _swift_task_switch(sub_10005C384, 0, 0);
}

uint64_t sub_10005C384()
{
  v1 = *(v0 + 760);

  v2 = *(v0 + 744);
  v3 = *(v0 + 704);
  v4 = *(v0 + 648);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  sub_100026FB0(*(v0 + 728), *(v0 + 736));

  (*(v8 + 8))(v7, v9);
  v3(v4, v6);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 552);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10005C4D0()
{
  v55 = v0;
  v1 = *(*(v0 + 544) + 120);
  if (v1)
  {
    v2 = *(v0 + 752);
    swift_beginAccess();

    v3 = String._bridgeToObjectiveC()();

    v4 = _convertErrorToNSError(_:)();
    v5 = _convertErrorToNSError(_:)();

    [v1 logResultForEvent:v3 hardFailure:1 result:v5];
  }

  v6 = *(v0 + 752);
  v7 = *(v0 + 696);
  v8 = *(v0 + 680);
  (*(v0 + 688))(*(v0 + 624), *(v0 + 648), *(v0 + 608));
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    v13 = *(v0 + 656);
    v14 = *(v0 + 808);
    v15 = *(v0 + 624);
    v16 = *(v0 + 584);
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v17 = 136315650;
    *(v0 + 176) = v11;
    *(v0 + 184) = v12;
    *(v0 + 192) = v14;
    *(v0 + 200) = v13;
    sub_10005CB8C();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_100021D24(v18, v19, v54);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    URLRequest.url.getter();
    v21 = type metadata accessor for URL();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 48))(v16, 1, v21);
    v24 = *(v0 + 584);
    if (v23 == 1)
    {
      sub_10002533C(*(v0 + 584), &qword_100152F00, &qword_1001042C0);
      v25 = 0xEB000000004C5255;
      v26 = 0x206E776F6E6B6E75;
    }

    else
    {
      v31 = *(v0 + 584);
      v26 = URL.description.getter();
      v25 = v32;
      (*(v22 + 8))(v24, v21);
    }

    v33 = *(v0 + 752);
    v34 = *(v0 + 616) + 8;
    (*(v0 + 704))(*(v0 + 624), *(v0 + 608));
    v35 = sub_100021D24(v26, v25, v54);

    *(v17 + 14) = v35;
    *(v17 + 22) = 2112;
    swift_errorRetain();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v36;
    *v53 = v36;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch %s from %s: %@", v17, 0x20u);
    sub_10002533C(v53, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v27 = *(v0 + 704);
    v28 = *(v0 + 624);
    v29 = *(v0 + 616);
    v30 = *(v0 + 608);

    v27(v28, v30);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 704);
  v39 = *(v0 + 648);
  v40 = *(v0 + 608);
  swift_willThrow();
  v38(v39, v40);
  v41 = *(v0 + 752);
  v42 = *(v0 + 648);
  v43 = *(v0 + 640);
  v44 = *(v0 + 632);
  v45 = *(v0 + 624);
  v46 = *(v0 + 600);
  v47 = *(v0 + 592);
  v48 = *(v0 + 584);
  v49 = *(v0 + 576);
  v50 = *(v0 + 552);

  v51 = *(v0 + 8);

  return v51();
}

size_t sub_10005C94C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024248(&qword_100153B88, &unk_100105E70);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10005CB24()
{
  result = qword_100153B60;
  if (!qword_100153B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B60);
  }

  return result;
}

uint64_t sub_10005CB78(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_10005CB8C()
{
  result = qword_100153B68;
  if (!qword_100153B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B68);
  }

  return result;
}

uint64_t sub_10005CC04(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10005CC1C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10005CC58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10005CCA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005CD18()
{
  result = qword_100153B70;
  if (!qword_100153B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B70);
  }

  return result;
}

unint64_t sub_10005CD6C()
{
  result = qword_100153B80;
  if (!qword_100153B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100153B80);
  }

  return result;
}

uint64_t sub_10005CDE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
    return 7;
  }

  if (a1 >> 62 == 1)
  {
    return 8;
  }

  v4 = a3 | a2;
  if (a1 == 0x8000000000000000 && !v4)
  {
    return 1;
  }

  if (a1 == 0x8000000000000008 && !v4)
  {
    return 2;
  }

  if (a1 == 0x8000000000000010 && !v4)
  {
    return 3;
  }

  if (a1 == 0x8000000000000018 && !v4)
  {
    return 4;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 == 0x8000000000000020;
  }

  if (v5)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

unint64_t sub_10005CE84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62 == 1)
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    swift_getErrorValue();
    *(inited + 72) = v14;
    v11 = sub_100045004((inited + 48));
    (*(*(v14 - 8) + 16))(v11);
    v8 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v8;
  }

  if (!(a1 >> 62))
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100104980;
    *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 40) = v6;
    swift_getErrorValue();
    *(v5 + 72) = v13;
    v7 = sub_100045004((v5 + 48));
    (*(*(v13 - 8) + 16))(v7);
    *(v5 + 80) = 0x736D42747773;
    *(v5 + 88) = 0xE600000000000000;
    *(v5 + 96) = a2;
    *(v5 + 120) = &type metadata for UInt64;
    *(v5 + 128) = 0x736D50747773;
    *(v5 + 168) = &type metadata for UInt64;
    *(v5 + 136) = 0xE600000000000000;
    *(v5 + 144) = a3;
    v8 = sub_100061318(v5);
    swift_setDeallocating();
    sub_100024248(&qword_100153B98, &qword_100107EA0);
    swift_arrayDestroy();
    return v8;
  }

  return sub_100061318(&_swiftEmptyArrayStorage);
}

uint64_t sub_10005D0E8(uint64_t a1)
{
  v2 = sub_100061770();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10005D124(uint64_t a1)
{
  v2 = sub_100061770();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10005D160()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 7;
  }

  if (v2 == 1)
  {
    return 8;
  }

  v4 = v0[1] | v0[2];
  if (v1 == 0x8000000000000000 && *(v0 + 1) == 0)
  {
    return 1;
  }

  if (v1 == 0x8000000000000008 && *(v0 + 1) == 0)
  {
    return 2;
  }

  if (v1 == 0x8000000000000010 && *(v0 + 1) == 0)
  {
    return 3;
  }

  if (v1 == 0x8000000000000018 && *(v0 + 1) == 0)
  {
    return 4;
  }

  if (*(v0 + 1) == 0 && v1 == 0x8000000000000020)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10005D214()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A1E8 = result;
  return result;
}

uint64_t sub_10005D248()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A1F8 = result;
  return result;
}

uint64_t sub_10005D27C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A208 = result;
  return result;
}

uint64_t sub_10005D2B0()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A218 = result;
  return result;
}

uint64_t sub_10005D2E4()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A228 = result;
  return result;
}

uint64_t sub_10005D318()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A238 = result;
  return result;
}

uint64_t sub_10005D34C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A248 = result;
  return result;
}

uint64_t sub_10005D380(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100027004(a1, a2);
  sub_100061058(a1, a2);
  sub_100026FB0(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v5 + 8))(v8, v4);
  v24 = v9;
  v25 = sub_100061448(&qword_100153BA8, &type metadata accessor for SHA256Digest);
  v13 = sub_100045004(v23);
  v14 = v20;
  (*(v20 + 16))(v13, v12, v9);
  sub_100026F6C(v23, v24);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v14 + 8))(v12, v9);
  v15 = v21;
  v16 = v22;
  sub_100024E14(v23);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  sub_100026FB0(v15, v16);
  return countAndFlagsBits;
}

uint64_t sub_10005D65C()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D230);
  sub_100025AE0(v0, qword_10015D230);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005D6DC()
{
  if (qword_10015A250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D230);
}

uint64_t sub_10005D740@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A250 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ATLogProofs.configBag.getter()
{
  if (qword_10015A1E0 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A1E8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_1001530D8, off_1001312F8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*ATLogProofs.configBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ATLogProofs.configBag.getter();
  return sub_10005D9AC;
}

uint64_t ATLogProofs.keyBag.getter()
{
  if (qword_10015A1F0 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A1F8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152D78, &off_100131310);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*ATLogProofs.keyBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ATLogProofs.keyBag.getter();
  return sub_10005DB94;
}

double sub_10005DBB8@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A200 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A208;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10005DCE8(uint64_t a1)
{
  if (qword_10015A200 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A208;
  sub_100025834(a1, v13, &qword_100152D88, &unk_100103DC0);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_10005DEAC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10005DBB8(v3);
  return sub_10005DF24;
}

uint64_t ATLogProofs.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A210 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A218;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t ATLogProofs.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  if (qword_10015A210 != -1)
  {
    swift_once();
  }

  v8 = qword_10015A218;
  sub_100025834(a1, v7, &qword_100152D90, &qword_100105620);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v8 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*ATLogProofs.receiptTime.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ATLogProofs.receiptTime.getter(v4);
  return sub_10005E340;
}

void sub_10005E340(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100025834(a1[2], v2, &qword_100152D90, &qword_100105620);
    ATLogProofs.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    ATLogProofs.receiptTime.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

double ATLogProofs.fetcher.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A220 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A228;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100153BB0, &qword_100105E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ATLogProofs.fetcher.setter(uint64_t a1)
{
  if (qword_10015A220 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A228;
  sub_100025834(a1, v13, &qword_100153BB8, &qword_100105E98);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100153BB8, &qword_100105E98);
}

void (*ATLogProofs.fetcher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  ATLogProofs.fetcher.getter(v3);
  return sub_10005E748;
}

uint64_t ATLogProofs.analytics.getter()
{
  if (qword_10015A230 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A238;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_1001530E0, TransparencyAnalytics_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*ATLogProofs.analytics.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ATLogProofs.analytics.getter();
  return sub_10005E934;
}

double sub_10005E958@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A240 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A248;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100153BC0, &qword_100105EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10005EA88(uint64_t a1)
{
  if (qword_10015A240 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A248;
  sub_100025834(a1, v13, &qword_100153B58, &qword_100105C68);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100153B58, &qword_100105C68);
}

void (*sub_10005EC4C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10005E958(v3);
  return sub_10005ECC4;
}

void sub_10005ECEC(uint64_t *a1, char a2, void (*a3)(char *), uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  if (a2)
  {
    sub_100025834(*a1, (v6 + 40), a4, a5);
    a3(v6 + 40);
    sub_10002533C(v6, a4, a5);
  }

  else
  {
    a3(*a1);
  }

  free(v6);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ATLogProofs.isNewEpoch()()
{
  v3 = v0;
  if (![v0 hasMilestoneConsistency])
  {
    goto LABEL_24;
  }

  v4 = [v0 milestoneConsistency];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = ATLogProofs.keyBag.getter();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 patLogBeginningMs];
    v9 = [v7 tltLogBeginningMs];
    if ([v5 hasTltInclusionProof])
    {
      v10 = [v5 tltInclusionProof];
      if (v10)
      {
        v11 = v10;
        v12 = sub_100025DB0(v10, v9);
        if ((v15 & 0x100) == 0)
        {
          v16 = v12;
          v17 = v15;
          v79 = v14;
          v82 = v13;
          if (qword_10015A250 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_100025AE0(v18, qword_10015D230);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = v16;
            v22 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *&v84 = v77;
            *v22 = 136446210;
            v87 = v21;
            v88 = v82;
            v89 = v79;
            LOBYTE(v90) = v17 & 1;
            sub_100061490();
            v23 = dispatch thunk of CustomStringConvertible.description.getter();
            v25 = sub_100021D24(v23, v24, &v84);

            *(v22 + 4) = v25;
            _os_log_impl(&_mh_execute_header, v19, v20, "Detected new TLT epoch: %{public}s", v22, 0xCu);
            sub_100024E14(v77);
          }

          v26 = 1;
          goto LABEL_30;
        }
      }
    }

    if ([v5 hasPatInclusionProof])
    {
      v28 = [v5 patInclusionProof];
      if (v28)
      {
        v29 = v28;
        v30 = sub_100025DB0(v28, v8);
        if ((v33 & 0x100) == 0)
        {
          v34 = v30;
          v35 = v33;
          v80 = v32;
          v83 = v31;
          if (qword_10015A250 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_100025AE0(v36, qword_10015D230);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = v34;
            v40 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *&v84 = v78;
            *v40 = 136446210;
            v87 = v39;
            v88 = v83;
            v89 = v80;
            LOBYTE(v90) = v35 & 1;
            sub_100061490();
            v41 = dispatch thunk of CustomStringConvertible.description.getter();
            v43 = sub_100021D24(v41, v42, &v84);

            *(v40 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v37, v38, "Detected new PAT epoch: %{public}s", v40, 0xCu);
            sub_100024E14(v78);
          }

          v26 = 1;
          goto LABEL_30;
        }
      }
    }

LABEL_24:
    sub_10005DBB8(&v84);
    if (!v86)
    {
      sub_10002533C(&v84, &qword_100152D88, &unk_100103DC0);
      sub_10002FB04();
      swift_allocError();
      v52[1] = 0;
      v52[2] = 0;
      *v52 = 0x8000000000000018;
      swift_willThrow();
      goto LABEL_30;
    }

    sub_100037608(&v84, &v87);
    v44 = &stru_10014B000;
    v45 = [v3 inclusionProof];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 slh];

      if (v47)
      {
        sub_100033178(0, &qword_100152A98, off_1001312E8);
        v48 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v47];

        v49 = sub_100061A44();
        if (v1)
        {

          sub_10002FB04();
          swift_allocError();
          v51[1] = 0;
          v51[2] = 0;
          *v51 = 0x8000000000000028;
          swift_willThrow();

          sub_100024E14(&v87);
          goto LABEL_30;
        }

        v53 = v50;
        v54 = v90;
        v55 = v91;
        v56 = v49;
        v57 = 0;
        sub_100026F6C(&v87, v90);
        (*(v55 + 112))(v56, v53, 0, 1, 5, 1, v54, v55);
        v59 = v58;
        v45 = [v3 inclusionProof];
        if (v45)
        {
          v60 = v45;

          if ((v59 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v57 = sub_100025DB0(v60, v59);
            v44 = v61;
            v63 = v62;
            v2 = v64;

            if ((v2 & 0x100) != 0)
            {

              sub_100024E14(&v87);
              v26 = 0;
              goto LABEL_30;
            }

            v81 = v63;
            if (qword_10015A250 == -1)
            {
LABEL_35:
              v65 = type metadata accessor for Logger();
              sub_100025AE0(v65, qword_10015D230);
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = v57;
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v71 = v44;
                v72 = v70;
                v92 = v70;
                *v69 = 136446466;
                *&v84 = v68;
                *(&v84 + 1) = v71;
                v85 = v81;
                LOBYTE(v86) = v2 & 1;
                sub_100061490();
                v73 = dispatch thunk of CustomStringConvertible.description.getter();
                v75 = sub_100021D24(v73, v74, &v92);

                *(v69 + 4) = v75;
                *(v69 + 12) = 2050;
                *(v69 + 14) = v59;
                _os_log_impl(&_mh_execute_header, v66, v67, "Detected new ATL epoch: %{public}s - %{public}lld", v69, 0x16u);
                sub_100024E14(v72);
              }

              sub_100024E14(&v87);
              v26 = 1;
              goto LABEL_30;
            }
          }

          swift_once();
          goto LABEL_35;
        }

LABEL_43:
        __break(1u);
        return v45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_10002FB04();
  swift_allocError();
  v27[1] = 0;
  v27[2] = 0;
  *v27 = 0x8000000000000000;
  swift_willThrow();

LABEL_30:
  LOBYTE(v45) = v26 & 1;
  return v45;
}

void sub_10005F694()
{
  sub_10005DBB8(&v22);
  if (!*(&v23 + 1))
  {
    sub_10002533C(&v22, &qword_100152D88, &unk_100103DC0);
    sub_10002FB04();
    swift_allocError();
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0x8000000000000018;
    swift_willThrow();
    return;
  }

  sub_100037608(&v22, v26);
  v2 = [v0 inclusionProof];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [v2 slh];

  if (!v4)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v5 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v4];

  sub_100061CE4(v29);
  if (v1)
  {

    sub_100024E14(v26);
  }

  else
  {
    v6 = v27;
    v7 = v28;
    sub_100026F6C(v26, v27);
    if ((*(v7 + 128))(v29, 1, 1, 1, v6, v7) < 1)
    {
      sub_1000270C0(v29);
    }

    else
    {
      if (qword_10015A250 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100025AE0(v9, qword_10015D230);
      sub_100027114(v29, &v22);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      sub_1000270C0(v29);
      if (os_log_type_enabled(v10, v11))
      {
        v31 = v11;
        v12 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *v12 = 136315138;
        v22 = v29[0];
        v23 = v29[1];
        v24 = v29[2];
        v25 = v30;
        sub_100027114(v29, v20);
        sub_100027584();
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        v17 = *(&v24 + 1);
        v16 = v25;

        sub_100026FB0(v17, v16);
        v18 = sub_100021D24(v13, v15, &v21);

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v10, v31, "Verified ATLogProof inclusion to verified head %s", v12, 0xCu);
        sub_100024E14(v19);

        sub_1000270C0(v29);
      }

      else
      {

        sub_1000270C0(v29);
      }
    }

    sub_100024E14(v26);
  }
}

uint64_t ATLogProofs.verify(digest:)(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  v4 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  v3[77] = swift_task_alloc();

  return _swift_task_switch(sub_10005FAC8, 0, 0);
}

uint64_t sub_10005FAC8()
{
  v84 = v0;
  v1 = *(v0 + 608);
  v2 = ATLogProofs.keyBag.getter();
  *(v0 + 624) = v2;
  if (v2)
  {
    v3 = v2;
    if ([*(v0 + 608) hasInclusionProof] && (v4 = objc_msgSend(*(v0 + 608), "inclusionProof"), (*(v0 + 632) = v4) != 0))
    {
      v5 = v4;
      v6 = [v3 appSthKeyStore];
      v7 = &stru_10014B000;
      v8 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v6];
      *(v0 + 640) = v8;

      v9 = [v3 tltKeyStore];
      v10 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v9];
      *(v0 + 648) = v10;

      [v5 setVerifier:v8];
      v11 = v5;
      v12 = 0;
      v79 = sub_1000587C8();
      v19 = [v5 nodeType];
      if (v19 == 7)
      {
        v80 = v10;
        v78 = v8;
        v20 = [v5 nodeBytes];
        if (v20)
        {
          v21 = v20;
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v23;

          v11 = objc_allocWithZone(ChangeLogNodeV2);
          v12 = sub_1000330B8();
          sub_100026FB0(v22, v8);
          v20 = [v12 mutation];
          if (v20)
          {
            v24 = v20;
            v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            *&v82 = TransparencyByteBuffer.init(data:)(v25, v27);
            *(&v82 + 1) = v28;
            v83 = v29;
            sub_10002B924(v0 + 184);
            *(v0 + 656) = *(v0 + 224);
            [objc_opt_self() kt_currentTimeMs];
            v32 = v80;
            if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v31 > -1.0)
            {
              if (v31 < 1.84467441e19)
              {
                sub_10004C930(*(v0 + 592), *(v0 + 600), v31);
                v33 = *(v0 + 608);
                sub_100026FB0(v82, *(&v82 + 1));

                sub_10005F694();
                v8 = v78;
                if (v34)
                {
                  goto LABEL_21;
                }

                if ([*(v0 + 608) hasMilestoneConsistency])
                {
                  v38 = [*(v0 + 608) milestoneConsistency];
                  if (v38)
                  {
                    v39 = v38;
                    if (qword_10015A250 != -1)
                    {
                      swift_once();
                    }

                    v40 = type metadata accessor for Logger();
                    sub_100025AE0(v40, qword_10015D230);
                    v41 = Logger.logObject.getter();
                    v42 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v41, v42))
                    {
                      v43 = swift_slowAlloc();
                      *v43 = 0;
                      _os_log_impl(&_mh_execute_header, v41, v42, "Verifiying included bridging consistency proof", v43, 2u);
                    }

                    v44 = *(v0 + 616);
                    v45 = *(v0 + 608);

                    v46 = [v3 appSthKeyStore];
                    v47 = [objc_allocWithZone(TransparencyConsistencyProofVerifier) initWithTrustedKeyStore:v46];

                    LogConsistency.consistencyVerifier.setter(v47);
                    v7 = v78;
                    LogConsistency.patVerifier.setter(v78);
                    v80;
                    LogConsistency.tltVerifier.setter(v80);
                    sub_10005DBB8(&v82);
                    sub_1000629AC(&v82);
                    ATLogProofs.receiptTime.getter(v44);
                    LogConsistency.receiptTime.setter(v44);
                    v79 = LogConsistency.verify()();
                    v48 = *(v0 + 608);
                    sub_10005F694();
                    LOBYTE(v48) = v49;

                    v8 = v78;
                    v32 = v80;
                    if (v48)
                    {
LABEL_21:

                      sub_1000614E4(v0 + 184);
                      v35 = *(v0 + 616);

                      v36 = *(v0 + 8);
                      v37 = *(v0 + 656);

                      return v36(v79, v37);
                    }
                  }
                }

                *(v0 + 664) = v79;
                if (qword_10015A250 == -1)
                {
LABEL_32:
                  v50 = type metadata accessor for Logger();
                  *(v0 + 672) = sub_100025AE0(v50, qword_10015D230);
                  v51 = Logger.logObject.getter();
                  v52 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v51, v52))
                  {
                    v53 = swift_slowAlloc();
                    *v53 = 0;
                    _os_log_impl(&_mh_execute_header, v51, v52, "Downloading milestone proof to verify ATLogProof", v53, 2u);
                    v32 = v80;
                  }

                  v54 = *(v0 + 608);

                  v55 = ATLogProofs.configBag.getter();
                  *(v0 + 680) = v55;
                  if (v55)
                  {
                    v12 = v55;
                    v11 = *(v0 + 608);
                    sub_10005DBB8(v0 + 352);
                    if (*(v0 + 376))
                    {
                      sub_100037608((v0 + 352), v0 + 312);
                      v20 = [v5 slh];
                      if (v20)
                      {
                        v56 = v20;
                        sub_100033178(0, &qword_100152A98, off_1001312E8);
                        v57 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v56];
                        *(v0 + 688) = v57;

                        v58 = [v57 parsedLogHead];
                        *(v0 + 696) = v58;
                        if (v58)
                        {
                          v59 = v58;
                          v60 = *(v0 + 608);
                          ATLogProofs.fetcher.getter(v0 + 432);
                          v61 = *(v0 + 608);
                          if (*(v0 + 456))
                          {
                            sub_100037608((v0 + 432), v0 + 392);
                            v62 = [v59 application];
                            sub_1000331C0(v0 + 312, v0 + 512);
                            sub_1000331C0(v0 + 392, v0 + 552);
                            v63 = v12;
                            v64 = v3;
                            v65 = v59;
                            v66 = ATLogProofs.analytics.getter();
                            sub_10005E958(&v82);
                            sub_1000593E8(v62, v63, v64, (v0 + 512), 0, (v0 + 552), v59, v66, v0 + 16, &v82);
                            sub_100024E14((v0 + 392));
                          }

                          else
                          {
                            sub_10002533C(v0 + 432, &qword_100153BB8, &qword_100105E98);
                            v69 = [v59 application];
                            sub_1000331C0(v0 + 312, v0 + 472);
                            v70 = v12;
                            v71 = v3;
                            v72 = v59;
                            v73 = ATLogProofs.analytics.getter();
                            sub_10005E958(v81);
                            sub_1000593D0(&v82);
                            sub_1000593E8(v69, v70, v71, (v0 + 472), 0, &v82, v59, v73, v0 + 16, v81);
                          }

                          [objc_opt_self() uiBlockingNetworkTimeout];
                          v75 = v74;
                          v76 = swift_task_alloc();
                          *(v0 + 704) = v76;
                          *v76 = v0;
                          v76[1] = sub_100060A1C;

                          return sub_100059E18(v75);
                        }

                        sub_100061538();
                        swift_allocError();
                        *v68 = 0;
                        *(v68 + 4) = 1;
                        swift_willThrow();

                        sub_100024E14((v0 + 312));
                        goto LABEL_19;
                      }

LABEL_53:
                      __break(1u);
                      v77 = v20;
                      sub_10002FB04();
                      swift_allocError();
                      *v13 = v12;
                      v13[1] = v77;
                      v13[2] = v11;
                      swift_willThrow();
                      swift_errorRetain();

                      goto LABEL_7;
                    }

                    sub_10002533C(v0 + 352, &qword_100152D88, &unk_100103DC0);
                  }

                  sub_10002FB04();
                  swift_allocError();
                  v67[1] = 0;
                  v67[2] = 0;
                  *v67 = 0x8000000000000020;
                  swift_willThrow();

LABEL_19:
                  sub_1000614E4(v0 + 184);
                  goto LABEL_7;
                }

LABEL_50:
                swift_once();
                goto LABEL_32;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_53;
      }

      sub_10002FB04();
      swift_allocError();
      v30[1] = 0;
      v30[2] = 0;
      *v30 = 0x8000000000000010;
      swift_willThrow();
    }

    else
    {
      sub_10002FB04();
      swift_allocError();
      v14[1] = 0;
      v14[2] = 0;
      *v14 = 0x8000000000000008;
      swift_willThrow();
    }
  }

  else
  {
    sub_10002FB04();
    swift_allocError();
    v15[1] = 0;
    v15[2] = 0;
    *v15 = 0x8000000000000000;
    swift_willThrow();
  }

LABEL_7:
  v16 = *(v0 + 616);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100060A1C()
{
  v2 = *(*v1 + 704);
  v5 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = sub_100060E8C;
  }

  else
  {
    v3 = sub_100060B30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100060B30()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 608);
  sub_10005F694();
  if (v1)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 680);
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);

LABEL_3:
    sub_10006158C(v0 + 16);
    sub_100024E14((v0 + 312));
    sub_1000614E4(v0 + 184);
    v10 = *(v0 + 616);

    v11 = *(v0 + 8);

    return v11();
  }

  if (v3)
  {
    v13 = *(v0 + 696);
    v14 = *(v0 + 680);
    v15 = *(v0 + 648);
    v16 = *(v0 + 640);
    v17 = *(v0 + 632);
    v18 = *(v0 + 624);

    sub_10006158C(v0 + 16);
    sub_100024E14((v0 + 312));
    sub_1000614E4(v0 + 184);
    v19 = *(v0 + 664);
  }

  else
  {
    if (![*(v0 + 608) hasMilestoneConsistency])
    {
      goto LABEL_17;
    }

    v23 = [*(v0 + 608) milestoneConsistency];
    if (!v23)
    {
      goto LABEL_17;
    }

    v24 = v23;
    v25 = *(v0 + 672);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Verifiying included bridging consistency proof after milestone refresh", v28, 2u);
    }

    v19 = LogConsistency.verify()();
    v29 = *(v0 + 608);
    sub_10005F694();
    LOBYTE(v29) = v30;

    if ((v29 & 1) == 0)
    {
LABEL_17:
      v37 = *(v0 + 696);
      v38 = *(v0 + 688);
      v5 = *(v0 + 680);
      v39 = *(v0 + 648);
      v40 = *(v0 + 640);
      v9 = *(v0 + 632);
      v41 = *(v0 + 624);
      sub_10002FB04();
      swift_allocError();
      v42[1] = 0;
      v42[2] = 0;
      *v42 = 0x8000000000000020;
      swift_willThrow();

      goto LABEL_3;
    }

    v31 = *(v0 + 696);
    v32 = *(v0 + 680);
    v33 = *(v0 + 648);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);

    sub_10006158C(v0 + 16);
    sub_100024E14((v0 + 312));
    sub_1000614E4(v0 + 184);
  }

  v20 = *(v0 + 616);

  v21 = *(v0 + 8);
  v22 = *(v0 + 656);

  return v21(v19, v22);
}

uint64_t sub_100060E8C()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[81];
  v6 = v0[80];
  v12 = v0[79];
  v7 = v0[78];
  sub_10002FB04();
  swift_allocError();
  v8[1] = 0;
  v8[2] = 0;
  *v8 = v1 | 0x4000000000000000;
  swift_willThrow();
  swift_errorRetain();

  sub_10006158C((v0 + 2));
  sub_100024E14(v0 + 39);
  sub_1000614E4((v0 + 23));
  v9 = v0[77];

  v10 = v0[1];

  return v10();
}

_BYTE *sub_100060FC4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1000617C4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10006187C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000618F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_100061058(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100061238(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100061238(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100061238(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100061318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100153BE0, &unk_100106EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100025834(v4, &v13, &qword_100153B98, &qword_100107EA0);
      v5 = v13;
      v6 = v14;
      result = sub_1000435B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100032F28(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100061448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100061490()
{
  result = qword_100153BC8;
  if (!qword_100153BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BC8);
  }

  return result;
}

unint64_t sub_100061538()
{
  result = qword_100153BD0;
  if (!qword_100153BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BD0);
  }

  return result;
}

unint64_t sub_1000615E4(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 sub_100061600(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100061614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100061670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000616D8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t _s18VerificationResultVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18VerificationResultVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_100061770()
{
  result = qword_100153BD8;
  if (!qword_100153BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BD8);
  }

  return result;
}

uint64_t sub_1000617C4(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_10006187C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000618F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000619A8(uint64_t a1)
{
  if ((a1 & &_mh_execute_header) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000619B8(uint64_t a1)
{
  v2 = sub_10006202C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000619F4(uint64_t a1)
{
  v2 = sub_10006202C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100061A30()
{
  if (*(v0 + 4))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_100061A44()
{
  v2 = [v0 parsedLogHead];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10004CE5C([v2 application]);
    if (v5)
    {
      v1 = v4;
    }

    else
    {
      v1 = [v3 application];
      sub_100061538();
      swift_allocError();
      *v7 = v1;
      *(v7 + 4) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_100061538();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100061B60()
{
  v1 = [v0 parsedLogHead];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 logType];

    return v3;
  }

  else
  {
    sub_100061538();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    return swift_willThrow();
  }
}

id sub_100061C1C()
{
  v1 = [v0 parsedLogHead];
  if (v1)
  {
    v2 = v1;
    result = [v1 logHeadHash];
    if (result)
    {
      v4 = result;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100061538();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_100061CE4(uint64_t a1@<X8>)
{
  v3 = [v1 parsedLogHead];
  if (!v3)
  {
    sub_100061538();
    swift_allocError();
    *v20 = 0;
    *(v20 + 4) = 1;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_10004CE5C([v3 application]);
  if (!v6)
  {
    v21 = [v4 application];
    sub_100061538();
    swift_allocError();
    *v22 = v21;
    *(v22 + 4) = 0;
    swift_willThrow();

    return;
  }

  v7 = v5;
  v8 = v6;
  v9 = [v4 logBeginningMs];
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
    v11 = [v4 logType];
    v12 = [v4 revision];
    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = v12;
      v23 = v11;
      v26 = v7;
      v14 = [v4 logHeadHash];
      if (v14)
      {
        v15 = v14;
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        sub_10004D84C(v26, v8, v10, v23, v13, v16, v18, v24);
        v19 = v24[1];
        *a1 = v24[0];
        *(a1 + 16) = v19;
        *(a1 + 32) = v24[2];
        *(a1 + 48) = v25;
        return;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_100061EDC(SEL *a1)
{
  v3 = [v1 parsedLogHead];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 *a1];

    result = v5;
    if ((v5 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_100061538();
  swift_allocError();
  *v7 = 0;
  *(v7 + 4) = 1;
  return swift_willThrow();
}

uint64_t initializeBufferWithCopyOfBuffer for SignedLogHeadError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SignedLogHeadError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignedLogHeadError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100061FE0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100061FFC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_10006202C()
{
  result = qword_100153BE8;
  if (!qword_100153BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BE8);
  }

  return result;
}

uint64_t sub_1000620AC(uint64_t a1)
{
  v2 = sub_100068538();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000620E8(uint64_t a1)
{
  v2 = sub_100068538();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100062124()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A568 = result;
  return result;
}

uint64_t sub_100062158()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A578 = result;
  return result;
}

uint64_t sub_10006218C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A588 = result;
  return result;
}

uint64_t sub_1000621C0()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A598 = result;
  return result;
}

uint64_t sub_1000621F4()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A5A8 = result;
  return result;
}

uint64_t sub_100062228()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D248);
  sub_100025AE0(v0, qword_10015D248);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000622AC()
{
  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D248);
}

uint64_t sub_100062310@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LogConsistency.consistencyVerifier.getter()
{
  if (qword_10015A560 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A568;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152DD0, off_100131300);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*LogConsistency.consistencyVerifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = LogConsistency.consistencyVerifier.getter();
  return sub_10006257C;
}

void (*LogConsistency.patVerifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = LogConsistency.patVerifier.getter();
  return sub_100062660;
}

uint64_t sub_1000626A8(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v2, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_100033178(0, &qword_100153BF0, off_100131308);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v10, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*LogConsistency.tltVerifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = LogConsistency.tltVerifier.getter();
  return sub_100062858;
}

double sub_10006287C@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A590 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A598;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000629AC(uint64_t a1)
{
  if (qword_10015A590 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A598;
  sub_100025834(a1, v13, &qword_100152D88, &unk_100103DC0);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_100062B70(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10006287C(v3);
  return sub_100062BE8;
}

void sub_100062BE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_1000629AC(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_1000629AC(*a1);
  }

  free(v2);
}

uint64_t LogConsistency.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A5A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A5A8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t LogConsistency.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  if (qword_10015A5A0 != -1)
  {
    swift_once();
  }

  v8 = qword_10015A5A8;
  sub_100025834(a1, v7, &qword_100152D90, &qword_100105620);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v8 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*LogConsistency.receiptTime.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  LogConsistency.receiptTime.getter(v4);
  return sub_10006306C;
}

void sub_10006306C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100025834(a1[2], v2, &qword_100152D90, &qword_100105620);
    LogConsistency.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    LogConsistency.receiptTime.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

char *sub_100063108()
{
  v2 = sub_100024248(&qword_100152D90, &qword_100105620);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v80 - v7;
  v9 = type metadata accessor for Date();
  v104 = *(v9 - 1);
  isa = v104[8].isa;
  v11 = __chkstk_darwin(v9);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v80 - v14;
  v16 = LogConsistency.consistencyVerifier.getter();
  if (v16)
  {
    v17 = v16;
    v90 = v9;
    if ([v0 hasStartSlh] && (v18 = objc_msgSend(v0, "startSlh")) != 0)
    {
      v19 = v18;
      if ([v0 hasEndSlh] && (v20 = objc_msgSend(v0, "endSlh")) != 0)
      {
        v84 = v0;
        v21 = v20;
        sub_100033178(0, &qword_100152A98, off_1001312E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v89 = [ObjCClassFromMetadata signedTypeWithObject:v19];
        v22 = [v17 trustedKeyStore];
        v86 = v19;
        v23 = v21;
        v24 = v22;
        v25 = [v22 signatureVerifier];
        v88 = v17;
        v26 = v25;

        v27 = v89;
        [v89 setVerifier:v26];

        v85 = v23;
        v28 = [ObjCClassFromMetadata signedTypeWithObject:v23];
        v29 = [v88 trustedKeyStore];
        v30 = [v29 signatureVerifier];

        [v28 setVerifier:v30];
        ObjCClassFromMetadata = v28;

        v31 = v89;
        sub_100061CE4(v99);
        if (v1)
        {
        }

        else
        {
          sub_100061CE4(v101);
          sub_10006287C(&v95);
          if (*(&v96 + 1))
          {
            sub_1000331C0(&v95, v91);
            sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
            v81 = v93;
            v82 = v92;
            v80[1] = sub_100026F6C(v91, v92);
            LogConsistency.receiptTime.getter(v8);
            v36 = v104;
            v37 = v90;
            v83 = v104[6].isa;
            if (v83(v8, 1, v90) == 1)
            {
              static Date.now.getter();
              if (v83(v8, 1, v37) != 1)
              {
                sub_10002533C(v8, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v36[4].isa)(v15, v8, v37);
            }

            v44 = [v89 data];
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = sub_100061EBC();
            (v81[3])(v99, v15, v45, v47, v48, v82);
            (v104[1].isa)(v15, v90);
            sub_100026FB0(v45, v47);
            sub_100024E14(v91);
          }

          else
          {
            sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
          }

          v39 = ObjCClassFromMetadata;
          v38 = v88;
          sub_10006287C(&v95);
          if (*(&v96 + 1))
          {
            v40 = v39;
            sub_1000331C0(&v95, v91);
            sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
            v82 = v93;
            v83 = v92;
            v81 = sub_100026F6C(v91, v92);
            LogConsistency.receiptTime.getter(v6);
            v41 = v104;
            v42 = v104[6].isa;
            v43 = v90;
            if (v42(v6, 1, v90) == 1)
            {
              static Date.now.getter();
              if (v42(v6, 1, v43) != 1)
              {
                sub_10002533C(v6, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v41[4].isa)(v13, v6, v43);
            }

            v39 = v40;
            v49 = [v40 data];
            v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            v53 = sub_100061EBC();
            (*(v82 + 24))(v101, v13, v50, v52, v53, v83);
            v38 = v88;
            (v104[1].isa)(v13, v90);
            sub_100026FB0(v50, v52);
            sub_100024E14(v91);
          }

          else
          {
            sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
          }

          v13 = sub_1000587C8();
          sub_10006287C(&v95);
          if (*(&v96 + 1))
          {
            sub_1000331C0(&v95, v91);
            sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
            v54 = v92;
            v55 = v93;
            sub_100026F6C(v91, v92);
            (v55[6])(v99, v13, v54, v55);
            sub_100024E14(v91);
          }

          else
          {
            sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
          }

          v56 = v86;
          if (v13 == 1)
          {
            if (qword_10015A5B0 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            v58 = sub_100025AE0(v57, qword_10015D248);
            sub_100027114(v99, &v95);
            v104 = v58;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.debug.getter();
            sub_1000270C0(v99);
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v94 = v90;
              *v61 = 136315138;
              v95 = v99[0];
              v96 = v99[1];
              v97 = v99[2];
              v98 = v100;
              sub_100027114(v99, v91);
              sub_100027584();
              v62 = dispatch thunk of CustomStringConvertible.description.getter();
              v64 = v63;
              v65 = *(&v97 + 1);
              v66 = v98;

              sub_100026FB0(v65, v66);
              v67 = sub_100021D24(v62, v64, &v94);

              *(v61 + 4) = v67;
              _os_log_impl(&_mh_execute_header, v59, v60, "Verified signature for %s", v61, 0xCu);
              sub_100024E14(v90);
            }

            v13 = sub_1000587C8();
            sub_10006287C(&v95);
            if (*(&v96 + 1))
            {
              sub_1000331C0(&v95, v91);
              sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
              v68 = v92;
              v69 = v93;
              sub_100026F6C(v91, v92);
              sub_100061CE4(v103);
              (v69[6])(v103, v13, v68, v69);
              sub_1000270C0(v103);
              sub_100024E14(v91);
            }

            else
            {
              sub_10002533C(&v95, &qword_100152D88, &unk_100103DC0);
            }

            sub_100027114(v101, &v95);
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.debug.getter();
            sub_1000270C0(v101);
            v104 = v70;
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v94 = v90;
              *v72 = 136315138;
              v95 = v101[0];
              v96 = v101[1];
              v97 = v101[2];
              v98 = v102;
              sub_100027114(v101, v91);
              sub_100027584();
              v73 = dispatch thunk of CustomStringConvertible.description.getter();
              v75 = v74;
              v76 = *(&v97 + 1);
              v77 = v98;

              sub_100026FB0(v76, v77);
              v78 = sub_100021D24(v73, v75, &v94);

              *(v72 + 4) = v78;
              v79 = v104;
              _os_log_impl(&_mh_execute_header, v104, v71, "Verified signature for %s", v72, 0xCu);
              sub_100024E14(v90);

              sub_1000270C0(v99);
              sub_1000270C0(v101);
            }

            else
            {
              sub_1000270C0(v99);

              sub_1000270C0(v101);
            }
          }

          else
          {
            sub_1000270C0(v101);
            sub_1000270C0(v99);
          }
        }
      }

      else
      {
        sub_100068394();
        swift_allocError();
        *v34 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_100068394();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_100068394();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
  }

  return v13;
}

uint64_t *sub_100064564()
{
  v2 = v0;
  v3 = type metadata accessor for KTSWDB.SignedLogHead();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = LogConsistency.consistencyVerifier.getter();
  if (!v7)
  {
    sub_100068394();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return v6;
  }

  v8 = v7;
  if (![v0 hasStartSlh] || (v9 = objc_msgSend(v0, "startSlh")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    return v6;
  }

  v10 = v9;
  if (![v0 hasEndSlh] || (v11 = objc_msgSend(v0, "endSlh")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();

    return v6;
  }

  v12 = v11;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [ObjCClassFromMetadata signedTypeWithObject:v10];
  v15 = [v8 trustedKeyStore];
  v106 = v10;
  v16 = v15;
  v17 = [v15 signatureVerifier];

  [v14 setVerifier:v17];
  v123 = v12;
  v18 = [ObjCClassFromMetadata signedTypeWithObject:v12];
  v19 = [v8 trustedKeyStore];
  v20 = [v19 signatureVerifier];

  [v18 setVerifier:v20];
  sub_100061CE4(&v115);
  if (v1)
  {

    return v6;
  }

  v105 = v8;
  sub_100061CE4(&v119);
  v104 = v14;
  if (!v117)
  {
    sub_10006287C(&v111);
    if (*(&v112 + 1))
    {
      sub_1000331C0(&v111, &v107);
      sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
      v28 = v108;
      v29 = v109;
      sub_100026F6C(&v107, v108);
      (*(v29 + 32))(&v115, 1, v28, v29);
      sub_100024E14(&v107);
    }

    else
    {
      sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
    }

    if (qword_10015A5B0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100025AE0(v33, qword_10015D248);
    sub_100027114(&v115, &v111);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    sub_1000270C0(&v115);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v102 = v36;
      v37 = swift_slowAlloc();
      v110 = v37;
      *v36 = 136315138;
      v111 = v115;
      v112 = v116;
      v113 = v117;
      v114 = v118;
      sub_100027114(&v115, &v107);
      sub_100027584();
      LODWORD(v101) = v35;
      v38 = v34;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v42 = *(&v113 + 1);
      v41 = v114;

      sub_100026FB0(v42, v41);
      v43 = sub_100021D24(v100, v40, &v110);

      v44 = v102;
      *(v102 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v38, v101, "Verified consistency for %s", v44, 0xCu);
      sub_100024E14(v37);
    }

    else
    {
    }
  }

  v103 = v18;
  sub_10006287C(&v111);
  v25 = *(&v112 + 1);
  if (*(&v112 + 1))
  {
    sub_1000331C0(&v111, &v107);
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
    v26 = v108;
    v27 = v109;
    sub_100026F6C(&v107, v108);
    (*(v27 + 64))(&v115, v26, v27);
    v30 = *v6;
    sub_10002763C(v6);
    sub_100024E14(&v107);
  }

  else
  {
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
    v30 = 0;
  }

  v31 = [v2 proofHashesArray];
  if (v31)
  {
    *&v111 = 0;
    v32 = v31;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v111)
    {
      if (*(v111 + 16))
      {
        v6 = sub_100058624(v111, v104, v103);

        goto LABEL_31;
      }
    }
  }

  sub_100033178(0, &qword_100152DC8, off_1001312D8);
  v6 = sub_100035B60(v104, v103);
LABEL_31:
  if (!v25)
  {
    goto LABEL_49;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      if (qword_10015A5B0 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_100025AE0(v82, qword_10015D248);
      sub_100027114(&v115, &v111);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.info.getter();
      sub_1000270C0(&v115);
      LODWORD(v102) = v84;
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v110 = v101;
        *v85 = 136315138;
        v111 = v115;
        v112 = v116;
        v113 = v117;
        v114 = v118;
        sub_100027114(&v115, &v107);
        sub_100027584();
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        v89 = *(&v113 + 1);
        v88 = v114;

        sub_100026FB0(v89, v88);
        v90 = sub_100021D24(v100, v87, &v110);

        *(v85 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v83, v102, "Consistency for start %s still pending due to disjoint proof", v85, 0xCu);
        sub_100024E14(v101);
      }

      sub_100027114(&v119, &v111);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.info.getter();
      sub_1000270C0(&v119);
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v110 = v102;
        *v93 = 136315138;
        v111 = v119;
        v112 = v120;
        v113 = v121;
        v114 = v122;
        sub_100027114(&v119, &v107);
        sub_100027584();
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        v97 = *(&v113 + 1);
        v96 = v114;

        sub_100026FB0(v97, v96);
        v98 = sub_100021D24(v101, v95, &v110);

        *(v93 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v91, v92, "Consistency for end %s still pending due to disjoint proof", v93, 0xCu);
        sub_100024E14(v102);
      }

      goto LABEL_54;
    }

    if (v30 != 3)
    {
      goto LABEL_49;
    }
  }

  else if (v30)
  {
    if (v30 == 1)
    {
      if (qword_10015A5B0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100025AE0(v45, qword_10015D248);
      sub_100027114(&v119, &v111);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();
      sub_1000270C0(&v119);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v110 = v102;
        *v48 = 136315138;
        v111 = v119;
        v112 = v120;
        v113 = v121;
        v114 = v122;
        sub_100027114(&v119, &v107);
        sub_100027584();
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v52 = *(&v113 + 1);
        v51 = v114;

        sub_100026FB0(v52, v51);
        v53 = sub_100021D24(v101, v50, &v110);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "Verified consistency for %s", v48, 0xCu);
        sub_100024E14(v102);
      }

      sub_10006287C(&v111);
      if (!*(&v112 + 1))
      {
        sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
        goto LABEL_54;
      }

      sub_1000331C0(&v111, &v107);
      sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
      v54 = v108;
      v55 = v109;
      sub_100026F6C(&v107, v108);
      (*(v55 + 32))(&v119, v6, v54, v55);
LABEL_66:
      sub_100024E14(&v107);
LABEL_54:
      v65 = v106;
      goto LABEL_55;
    }

LABEL_49:
    if (qword_10015A5B0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100025AE0(v68, qword_10015D248);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unknown startSlh consistency verification state", v71, 2u);
    }

    goto LABEL_54;
  }

  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100025AE0(v56, qword_10015D248);
  sub_100027114(&v119, &v111);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  sub_1000270C0(&v119);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v110 = v102;
    *v59 = 136315138;
    v111 = v119;
    v112 = v120;
    v113 = v121;
    v114 = v122;
    sub_100027114(&v119, &v107);
    sub_100027584();
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v63 = *(&v113 + 1);
    v62 = v114;

    sub_100026FB0(v63, v62);
    v64 = sub_100021D24(v101, v61, &v110);

    *(v59 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "Verified consistency for %s following split", v59, 0xCu);
    sub_100024E14(v102);
  }

  v65 = v106;
  sub_10006287C(&v111);
  if (*(&v112 + 1))
  {
    sub_1000331C0(&v111, &v107);
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
    v66 = v108;
    v67 = v109;
    sub_100026F6C(&v107, v108);
    (*(v67 + 32))(&v119, 1, v66, v67);
    goto LABEL_66;
  }

  sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
LABEL_55:
  sub_10006287C(&v107);
  if (v108)
  {
    sub_100037608(&v107, &v111);
    v72 = v105;
    v73 = [v105 trustedKeyStore];
    v74 = [v73 signatureVerifier];

    v75 = v103;
    sub_100025F18(&v111, v103, v74);

    sub_100024248(&unk_100153C20, qword_1001062C8);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_100106150;
    v79 = v104;
    *(v78 + 32) = v104;
    *(v78 + 40) = v75;
    v80 = v79;
    v81 = v75;

    sub_1000270C0(&v115);
    sub_1000270C0(&v119);

    sub_100024E14(&v111);
  }

  else
  {
    sub_10002533C(&v107, &qword_100152D88, &unk_100103DC0);
    sub_100024248(&unk_100153C20, qword_1001062C8);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_100106150;
    v77 = v103;
    *(v76 + 32) = v104;
    *(v76 + 40) = v77;
    sub_1000270C0(&v119);

    sub_1000270C0(&v115);
  }

  return v6;
}

char *sub_100065AB0(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v97 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = LogConsistency.patVerifier.getter();
  if (!v15)
  {
    sub_100068394();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return v10;
  }

  v16 = v15;
  if (![v4 hasPatInclusionProof] || (v17 = objc_msgSend(v4, "patInclusionProof")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();

    return v10;
  }

  v105 = a1;
  v107 = v17;
  v108 = v16;
  v18 = [v17 slh];
  if (!v18)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v19 = v18;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v20 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v19];

  sub_10006287C(&v113);
  if (*(&v114 + 1))
  {
    v104 = v11;
    v106 = v4;
    sub_1000331C0(&v113, v109);
    sub_10002533C(&v113, &qword_100152D88, &unk_100103DC0);
    v21 = v20;
    v22 = v110;
    v23 = v111;
    v24 = sub_100026F6C(v109, v110);
    sub_100061CE4(v117);
    if (v2)
    {

      sub_100024E14(v109);
      return v10;
    }

    v99 = v24;
    v100 = v23;
    v101 = v22;
    v103 = v21;
    LogConsistency.receiptTime.getter(v9);
    v30 = v104;
    v31 = *(v104 + 48);
    if (v31(v9, 1, v10) == 1)
    {
      static Date.now.getter();
      if (v31(v9, 1, v10) != 1)
      {
        sub_10002533C(v9, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (*(v30 + 32))(v14, v9, v10);
    }

    v20 = v103;
    v32 = [v103 data];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v34;

    v35 = sub_100061EBC();
    v4 = v106;
    (*(v100 + 3))(v117, v14, v33, v102, v35, v101);
    v3 = 0;
    (*(v30 + 8))(v14, v10);
    sub_100026FB0(v33, v102);
    sub_1000270C0(v117);
    sub_100024E14(v109);
  }

  else
  {
    sub_10002533C(&v113, &qword_100152D88, &unk_100103DC0);
  }

  v28 = v108;
  v29 = [v108 trustedKeyStore];
  v9 = [v29 signatureVerifier];

  [v20 setVerifier:v9];
  sub_100061CE4(v118);
  if (v3)
  {

    return v10;
  }

  v3 = 0;
  v10 = sub_1000587C8();
  sub_10006287C(&v113);
  if (*(&v114 + 1))
  {
    v99 = v9;
    v36 = v20;
    sub_1000331C0(&v113, v109);
    sub_10002533C(&v113, &qword_100152D88, &unk_100103DC0);
    v37 = v110;
    v38 = v111;
    sub_100026F6C(v109, v110);
    (*(v38 + 6))(v118, v10, v37, v38);
    sub_100024E14(v109);
    v20 = v36;
    v9 = v99;
  }

  else
  {
    sub_10002533C(&v113, &qword_100152D88, &unk_100103DC0);
  }

  if (v10 != 1)
  {
    sub_1000270C0(v118);
    v54 = v107;
LABEL_30:

    return v10;
  }

  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100025AE0(v39, qword_10015D248);
  sub_100027114(v118, &v113);
  v104 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  sub_1000270C0(v118);
  v43 = os_log_type_enabled(v41, v42);
  v103 = v20;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v101 = v44;
    v102 = swift_slowAlloc();
    v112 = v102;
    *v44 = 136315138;
    v113 = v118[0];
    v114 = v118[1];
    v115 = v118[2];
    v116 = v119;
    sub_100027114(v118, v109);
    sub_100027584();
    LODWORD(v100) = v42;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v9;
    v47 = v46;
    v48 = *(&v115 + 1);
    v49 = v116;

    sub_100026FB0(v48, v49);
    v50 = sub_100021D24(v45, v47, &v112);
    v9 = v99;

    v51 = v101;
    *(v101 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v41, v100, "Verified signature for %s", v51, 0xCu);
    sub_100024E14(v102);
  }

  v52 = v107;
  v53 = v108;
  [v107 setVerifier:v108];
  v10 = sub_1000587C8();
  if ([v52 nodeType] != 1)
  {
    sub_100068394();
    swift_allocError();
    *v72 = 8;
    swift_willThrow();
    sub_1000270C0(v118);

    goto LABEL_45;
  }

  v99 = v9;
  result = [v52 nodeBytes];
  if (!result)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v55 = result;
  sub_100033178(0, &qword_100153C18, off_1001312E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v57, v59);
  *&v113 = 0;
  v61 = [ObjCClassFromMetadata parseFromData:isa error:&v113];

  a1 = v113;
  if (!v61)
  {
    v73 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v118);

    return v10;
  }

  v9 = v99;
  if (v105 >> 62)
  {
    goto LABEL_74;
  }

  result = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_75:
    v86 = 0x206E776F6E6B6E75;
    v89 = a1;
    v85 = 0;
LABEL_76:
    v88 = 0xEB00000000686C73;
    goto LABEL_77;
  }

  while (1)
  {
    v62 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      v96 = a1;
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_41;
    }

    v101 = v61;
    v102 = (v105 & 0xC000000000000001);
    v100 = result;
    v106 = v4;
    if ((v105 & 0xC000000000000001) != 0)
    {
      goto LABEL_84;
    }

    if ((v62 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v62 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v63 = *(v105 + 8 * v62 + 32);
    v64 = a1;
    v65 = v63;
LABEL_41:
    v66 = v65;
    v61 = v101;
    if (([v101 hasObjectMapHead] & 1) == 0)
    {
      goto LABEL_70;
    }

    v98 = v66;
    v67 = [v66 logHead];
    if (v67)
    {
      v68 = v67;
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xF000000000000000;
    }

    result = [v61 objectMapHead];
    if (!result)
    {
      goto LABEL_88;
    }

    v74 = result;
    v97 = v69;
    v75 = [result object];

    if (!v75)
    {
      break;
    }

    v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v77;

    v78 = v71;
    if (v71 >> 60 == 15)
    {
      if (v9 >> 60 != 15)
      {
        goto LABEL_69;
      }

      goto LABEL_54;
    }

    if (v9 >> 60 == 15)
    {
      goto LABEL_69;
    }

    v82 = v97;
    sub_100037620(v97, v78);
    sub_100037620(v76, v9);
    v83 = sub_100027800(v82, v78, v76, v9);
    sub_10002BEE0(v76, v9);
    sub_10002BEE0(v76, v9);
    sub_10002BEE0(v82, v78);
    sub_10002BEE0(v82, v78);
    v66 = v98;
    v9 = v99;
    v61 = v101;
    if ((v83 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_55:
    a1 = 0;
    v61 = (v105 & 0xFFFFFFFFFFFFFF8);
    v79 = v100;
    v4 = v106;
    while (1)
    {
      if (v102)
      {
        v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v61 + 2))
        {
          goto LABEL_82;
        }

        v80 = *(v105 + 8 * a1 + 32);
      }

      v81 = v80;
      v9 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      *&v113 = v80;
      sub_10006858C(&v113, v4, v10);
      if (v3)
      {

        sub_1000270C0(v118);
        return v10;
      }

      ++a1;
      if (v9 == v79)
      {
        sub_1000270C0(v118);

        v9 = v98;
        v108 = v99;
        v54 = v101;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_74:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_75;
    }
  }

  v78 = v71;
  if (v71 >> 60 == 15)
  {
LABEL_54:

    sub_10002BEE0(v97, v78);
    goto LABEL_55;
  }

  v76 = 0;
  v9 = 0xF000000000000000;
LABEL_69:
  v66 = v98;

  sub_10002BEE0(v97, v78);
  sub_10002BEE0(v76, v9);
  v84 = v66;
  v9 = v99;
  v61 = v101;
LABEL_70:
  sub_100061CE4(v120);
  v85 = v66;
  if (v3)
  {
    v86 = 0x206E776F6E6B6E75;

    goto LABEL_76;
  }

  v86 = KTSWDB.STHKey.description.getter();
  v88 = v87;
  sub_1000270C0(v120);
LABEL_77:

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v10 = swift_slowAlloc();
    v92 = v85;
    v93 = swift_slowAlloc();
    *&v113 = v93;
    *v10 = 136315138;
    v94 = sub_100021D24(v86, v88, &v113);

    *(v10 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v90, v91, "Failed to verify inclusion proof for %s", v10, 0xCu);
    sub_100024E14(v93);
    v85 = v92;
    v9 = v99;
  }

  else
  {
  }

  sub_100068394();
  swift_allocError();
  *v95 = 6;
  swift_willThrow();

  sub_1000270C0(v118);
LABEL_45:

  return v10;
}

id sub_100066D3C(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v102 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = LogConsistency.tltVerifier.getter();
  if (!v15)
  {
    sub_100068394();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return v10;
  }

  v16 = v15;
  if (![v4 hasTltInclusionProof] || (v17 = objc_msgSend(v4, "tltInclusionProof")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v23 = 5;
    swift_willThrow();

    return v10;
  }

  v107 = a1;
  v110 = v17;
  v111 = v16;
  result = [v17 slh];
  if (!result)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v19 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v20 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v19];

  sub_10006287C(&v116);
  if (*(&v117 + 1))
  {
    v106 = v11;
    v108 = v4;
    sub_1000331C0(&v116, v112);
    sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
    v21 = v113;
    v105 = v114;
    v22 = sub_100026F6C(v112, v113);
    sub_100061CE4(v120);
    if (v2)
    {

      sub_100024E14(v112);
      return v10;
    }

    v102 = v22;
    v103 = v21;
    v109 = v20;
    LogConsistency.receiptTime.getter(v9);
    v30 = v106;
    v31 = v106[6];
    if (v31(v9, 1, v10) == 1)
    {
      static Date.now.getter();
      if (v31(v9, 1, v10) != 1)
      {
        sub_10002533C(v9, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v30[4])(v14, v9, v10);
    }

    v32 = [v109 data];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v34;

    v35 = sub_100061EBC();
    v36 = v33;
    v37 = v33;
    v38 = v104;
    (*(v105 + 24))(v120, v14, v37, v104, v35, v103);
    v3 = 0;
    (v30[1])(v14, v10);
    sub_100026FB0(v36, v38);
    sub_1000270C0(v120);
    sub_100024E14(v112);
  }

  else
  {
    v109 = v20;
    sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
  }

  v25 = v111;
  v26 = [v111 trustedKeyStore];
  v27 = [v26 signatureVerifier];

  v28 = &selRef_initWithValidationFunction_rawValues_count_;
  v29 = v109;
  v108 = v27;
  [v109 setVerifier:v27];
  sub_100061CE4(v121);
  if (v3)
  {

LABEL_30:
LABEL_31:

    return v10;
  }

  v10 = sub_1000587C8();
  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100025AE0(v39, qword_10015D248);
  sub_100027114(v121, &v116);
  v105 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  sub_1000270C0(v121);
  LODWORD(v106) = v42;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v115 = v104;
    *v43 = 136315138;
    v116 = v121[0];
    v117 = v121[1];
    v118 = v121[2];
    v119 = v122;
    sub_100027114(v121, v112);
    sub_100027584();
    v103 = v41;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v109 = v29;
    v48 = *(&v118 + 1);
    v47 = v119;

    v49 = v48;
    v29 = v109;
    sub_100026FB0(v49, v47);
    v50 = sub_100021D24(v44, v46, &v115);
    v28 = &selRef_initWithValidationFunction_rawValues_count_;

    *(v43 + 4) = v50;
    v51 = v103;
    _os_log_impl(&_mh_execute_header, v103, v106, "Verified signature for %s", v43, 0xCu);
    sub_100024E14(v104);
  }

  else
  {
  }

  sub_10006287C(&v116);
  if (*(&v117 + 1))
  {
    sub_1000331C0(&v116, v112);
    sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
    v52 = v113;
    v53 = v114;
    sub_100026F6C(v112, v113);
    (*(v53 + 48))(v121, v10, v52, v53);
    sub_100024E14(v112);
    v28 = &selRef_initWithValidationFunction_rawValues_count_;
  }

  else
  {
    sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
  }

  sub_10006287C(&v116);
  if (*(&v117 + 1))
  {
    sub_1000331C0(&v116, v112);
    sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
    v54 = v113;
    v55 = v114;
    sub_100026F6C(v112, v113);
    (*(v55 + 40))(v121, 1, v54, v55);
    sub_100024E14(v112);
    v56 = v111;
    v28 = &selRef_initWithValidationFunction_rawValues_count_;
  }

  else
  {
    sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
    v56 = v111;
  }

  if (v10 != 1)
  {
    sub_1000270C0(v121);

    return v10;
  }

  v57 = v110;
  [v110 v28[262]];
  v10 = sub_1000587C8();
  if ([v57 nodeType] != 3)
  {
    sub_100068394();
    swift_allocError();
    *v68 = 9;
    swift_willThrow();
    sub_1000270C0(v121);

    goto LABEL_30;
  }

  v109 = v29;
  v58 = v57;
  result = [v57 nodeBytes];
  if (!result)
  {
    goto LABEL_68;
  }

  v59 = result;
  sub_100033178(0, &qword_100153C10, off_1001312F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v61, v63);
  *&v116 = 0;
  v65 = [ObjCClassFromMetadata parseFromData:isa error:&v116];

  if (!v65)
  {
    v69 = v116;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v121);

    goto LABEL_31;
  }

  v66 = v116;
  v67 = v107;
  sub_100061CE4(&v123);
  v104 = 0;
  v106 = v65;
  if (![v65 hasPatHead])
  {
LABEL_63:
    sub_100027114(&v123, &v116);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    sub_1000270C0(&v123);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v115 = v107;
      *v95 = 136446210;
      v116 = v123;
      v117 = v124;
      v118 = v125;
      v119 = v126;
      sub_100027114(&v123, v112);
      sub_100027584();
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v10 = *(&v118 + 1);
      v99 = v119;

      sub_100026FB0(v10, v99);
      v100 = sub_100021D24(v96, v98, &v115);

      *(v95 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v93, v94, "Failed to verify inclusion proof for %{public}s", v95, 0xCu);
      sub_100024E14(v107);
    }

    sub_100068394();
    swift_allocError();
    *v101 = 7;
    swift_willThrow();
    sub_1000270C0(&v123);

    sub_1000270C0(v121);
    goto LABEL_31;
  }

  v70 = [v67 logHead];
  if (v70)
  {
    v71 = v70;
    v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v107 = 0;
    v73 = 0xF000000000000000;
  }

  result = [v106 patHead];
  if (result)
  {
    v74 = result;
    v75 = [result object];

    if (v75)
    {
      v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      if (v73 >> 60 == 15)
      {
        if (v78 >> 60 != 15)
        {
          goto LABEL_62;
        }

        goto LABEL_52;
      }

      if (v78 >> 60 != 15)
      {
        v89 = v107;
        sub_100037620(v107, v73);
        sub_100037620(v76, v78);
        v90 = sub_100027800(v89, v73, v76, v78);
        sub_10002BEE0(v76, v78);
        sub_10002BEE0(v76, v78);
        sub_10002BEE0(v89, v73);
        sub_10002BEE0(v89, v73);
        if ((v90 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_53:
        sub_100027114(&v123, &v116);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();
        sub_1000270C0(&v123);
        LODWORD(v105) = v80;
        v107 = v79;
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v115 = v103;
          *v81 = 136315138;
          v116 = v123;
          v117 = v124;
          v118 = v125;
          v119 = v126;
          sub_100027114(&v123, v112);
          sub_100027584();
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v83;
          v86 = *(&v118 + 1);
          v85 = v119;

          sub_100026FB0(v86, v85);
          v87 = sub_100021D24(v82, v84, &v115);

          *(v81 + 4) = v87;
          v88 = v107;
          _os_log_impl(&_mh_execute_header, v107, v105, "Verified inclusion for %s", v81, 0xCu);
          sub_100024E14(v103);
        }

        else
        {
        }

        sub_10006287C(&v116);
        if (*(&v117 + 1))
        {
          sub_1000331C0(&v116, v112);
          sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
          v91 = v113;
          v92 = v114;
          sub_100026F6C(v112, v113);
          (*(v92 + 40))(&v123, v10, v91, v92);
          sub_1000270C0(v121);
          sub_1000270C0(&v123);

          sub_100024E14(v112);
        }

        else
        {
          sub_1000270C0(v121);
          sub_1000270C0(&v123);

          sub_10002533C(&v116, &qword_100152D88, &unk_100103DC0);
        }

        return v10;
      }
    }

    else
    {
      if (v73 >> 60 == 15)
      {
LABEL_52:
        sub_10002BEE0(v107, v73);
        goto LABEL_53;
      }

      v76 = 0;
      v78 = 0xF000000000000000;
    }

LABEL_62:
    sub_10002BEE0(v107, v73);
    sub_10002BEE0(v76, v78);
    goto LABEL_63;
  }

LABEL_69:
  __break(1u);
  return result;
}

void *LogConsistency.verify()()
{
  v2 = objc_autoreleasePoolPush();
  if (![v0 hasStartSlh])
  {
    sub_100068394();
    swift_allocError();
    v6 = 1;
LABEL_13:
    *v5 = v6;
    swift_willThrow();
    goto LABEL_14;
  }

  if (![v0 hasEndSlh])
  {
    sub_100068394();
    swift_allocError();
    v6 = 2;
    goto LABEL_13;
  }

  if (![v0 hasPatInclusionProof])
  {
    sub_100068394();
    swift_allocError();
    v6 = 4;
    goto LABEL_13;
  }

  if (![v0 hasTltInclusionProof])
  {
    sub_100068394();
    swift_allocError();
    v6 = 5;
    goto LABEL_13;
  }

  v3 = sub_100063108();
  if (!v1)
  {
    v0 = v3;
    if (v3 == 1)
    {
      v0 = sub_100064564();
      if (v0 == 1)
      {
        v0 = sub_100065AB0(v4);
        v9 = v8;

        if (v0 == 1)
        {
          v9 = v9;
          v0 = sub_100066D3C(v9);
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  objc_autoreleasePoolPop(v2);
  return v0;
}

unint64_t sub_10006833C()
{
  result = qword_100153BF8;
  if (!qword_100153BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BF8);
  }

  return result;
}

unint64_t sub_100068394()
{
  result = qword_100153C00;
  if (!qword_100153C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153C00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogConsistencyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogConsistencyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100068538()
{
  result = qword_100153C08;
  if (!qword_100153C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153C08);
  }

  return result;
}

void sub_10006858C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_100061CE4(v27);
  if (!v3)
  {
    if (qword_10015A5B0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100025AE0(v6, qword_10015D248);
    sub_100027114(v27, &v23);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    sub_1000270C0(v27);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v9 = 136315138;
      v23 = v27[0];
      v24 = v27[1];
      v25 = v27[2];
      v26 = v28;
      sub_100027114(v27, v20);
      sub_100027584();
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      v19 = a3;
      v13 = *(&v25 + 1);
      v14 = v26;

      sub_100026FB0(v13, v14);
      v15 = sub_100021D24(v10, v12, &v30);

      *(v9 + 4) = v15;
      a3 = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Verified inclusion for %s", v9, 0xCu);
      sub_100024E14(v18);
    }

    sub_10006287C(&v23);
    if (*(&v24 + 1))
    {
      sub_1000331C0(&v23, v20);
      sub_10002533C(&v23, &qword_100152D88, &unk_100103DC0);
      v16 = v21;
      v17 = v22;
      sub_100026F6C(v20, v21);
      sub_100061CE4(v29);
      (*(v17 + 40))(v29, a3, v16, v17);
      sub_1000270C0(v27);
      sub_1000270C0(v29);
      sub_100024E14(v20);
    }

    else
    {
      sub_1000270C0(v27);
      sub_10002533C(&v23, &qword_100152D88, &unk_100103DC0);
    }
  }
}

uint64_t sub_100068858()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D260);
  sub_100025AE0(v0, qword_10015D260);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000688D8()
{
  if (qword_10015A840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D260);
}

uint64_t sub_10006893C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A840 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000689E4()
{
  v1 = v0 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_100068A34(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100068AA0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100068B40;
}

void sub_100068B40(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_100068C24(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t), uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon];
  *(v9 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener] = a2(0xD000000000000019, 0x800000010010C1F0);
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_xpcInterface] = a4;
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_stateMachine] = a1;
  swift_beginAccess();
  *(v9 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v10 = a4;

  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener;
  v13 = *&v11[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener];
  v14 = v11;
  [v13 setDelegate:v14];
  [*&v11[v12] resume];

  return v14;
}

char *sub_100068D78(uint64_t a1)
{
  v3 = [objc_opt_self() swTransparencyXPCInterface];
  v4 = objc_allocWithZone(v1);
  v5 = &v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon];
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7];

  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener] = v8;
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_xpcInterface] = v3;
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_stateMachine] = a1;
  swift_beginAccess();
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v15.receiver = v4;
  v15.super_class = v1;
  v9 = v3;

  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener;
  v12 = *&v10[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];

  return v13;
}

__SecTask *sub_100068F04(void *a1)
{
  [a1 auditToken];
  result = SecTaskCreateWithAuditToken(0, &v6);
  if (result)
  {
    v2 = result;
    v3 = SecTaskCopySigningIdentifier(result, 0);
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_100069000()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100069094()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100069138(void *a1)
{
  v2 = v1;
  v4 = 0x6E776F6E6B6E75;
  [a1 auditToken];
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopySigningIdentifier(v5, 0);
    if (v7)
    {
      v8 = v7;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      goto LABEL_6;
    }
  }

  v10 = 0xE700000000000000;
LABEL_6:
  *token.val = v4;
  *&token.val[2] = v10;

  v11._countAndFlagsBits = 91;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = &stru_10014B000;
  v38.val[0] = [a1 processIdentifier];
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v16 = *token.val;
  v15 = *&token.val[2];
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 valueForEntitlement:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  token = v38;
  if (*&v38.val[6])
  {
    if (swift_dynamicCast() & 1) != 0 && (v37)
    {
      if (qword_10015A840 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100025AE0(v19, qword_10015D260);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *token.val = v23;
        *v22 = 136446210;
        v24 = sub_100021D24(v16, v15, &token);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Accepting new connection from %{public}s", v22, 0xCu);
        sub_100024E14(v23);

        v12 = &stru_10014B000;
      }

      else
      {
      }

      type metadata accessor for SWTransparencyXPCImplementation();
      v32 = *(v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_stateMachine);
      v33 = v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v35 = *(v33 + 8);

      v36 = sub_10006F8E8(v32, Strong, v35, v4, v10, [a1 v12[62].name]);
      [a1 setExportedInterface:*(v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_xpcInterface)];
      [a1 setExportedObject:v36];
      [a1 resume];

      return 1;
    }
  }

  else
  {

    sub_100069698(&token);
  }

  if (qword_10015A840 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100025AE0(v25, qword_10015D260);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *token.val = v29;
    *v28 = 136446210;
    v30 = sub_100021D24(v16, v15, &token);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "Rejecting connection from unauthorized client %{public}s because it's missing the com.apple.transparency.privateCloudCompute entitlement", v28, 0xCu);
    sub_100024E14(v29);
  }

  else
  {
  }

  [a1 invalidate];
  return 0;
}

uint64_t sub_100069698(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152D70, &qword_100103DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100069728(uint64_t a1)
{
  if ((a1 & &_mh_execute_header) != 0)
  {
    return a1 + 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10006973C(uint64_t a1)
{
  v2 = sub_10006F10C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100069778(uint64_t a1)
{
  v2 = sub_10006F10C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000697B4()
{
  if (*(v0 + 4) == 1)
  {
    return *v0 + 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000697D4()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A858 = result;
  return result;
}

uint64_t sub_100069808()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A868 = result;
  return result;
}

uint64_t sub_10006983C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A878 = result;
  return result;
}

uint64_t sub_100069870()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A888 = result;
  return result;
}

uint64_t sub_1000698A4()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D278);
  sub_100025AE0(v0, qword_10015D278);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100069924()
{
  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D278);
}

uint64_t sub_100069988@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MilestoneRootsResponse.keyBag.getter()
{
  if (qword_10015A850 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A858;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152D78, &off_100131310);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*MilestoneRootsResponse.keyBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneRootsResponse.keyBag.getter();
  return sub_100069BF4;
}

double sub_100069C18@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A860 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A868;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100069D48(uint64_t a1)
{
  if (qword_10015A860 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A868;
  sub_100025834(a1, v13, &qword_100152D88, &unk_100103DC0);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_100069F0C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_100069C18(v3);
  return sub_100069F84;
}

void sub_100069F84(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_100069D48(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_100069D48(*a1);
  }

  free(v2);
}

uint64_t MilestoneRootsResponse.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A870 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A878;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t MilestoneRootsResponse.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  if (qword_10015A870 != -1)
  {
    swift_once();
  }

  v8 = qword_10015A878;
  sub_100025834(a1, v7, &qword_100152D90, &qword_100105620);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v8 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*MilestoneRootsResponse.receiptTime.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  MilestoneRootsResponse.receiptTime.getter(v4);
  return sub_10006A408;
}

void sub_10006A408(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100025834(a1[2], v2, &qword_100152D90, &qword_100105620);
    MilestoneRootsResponse.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    MilestoneRootsResponse.receiptTime.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

uint64_t MilestoneRootsResponse.configBag.getter()
{
  if (qword_10015A880 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A888;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_1001530D8, off_1001312F8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*MilestoneRootsResponse.configBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneRootsResponse.configBag.getter();
  return sub_10006A668;
}

void sub_10006A68C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  __chkstk_darwin(v10);
  v15 = &v45 - v14;
  if (a2)
  {
    v55 = a1;
    v61 = v13;
    v16 = a2;
    v17 = sub_100061A44();
    if (v2)
    {
    }

    else
    {
      v20 = v18;
      v53 = v17;
      v21 = MilestoneRootsResponse.configBag.getter();
      if (v21)
      {
        v54 = v20;
        v22 = v21;
        v23 = String._bridgeToObjectiveC()();
        [v22 doubleForKey:v23];
        v25 = v24;

        if (v25 <= 0.0)
        {

          sub_10006F0A8();
          swift_allocError();
          *v30 = 9;
          *(v30 + 4) = 1;
          swift_willThrow();
        }

        else
        {
          v52 = v22;
          sub_100069C18(v59);
          if (v60)
          {
            sub_1000331C0(v59, v56);
            sub_10002533C(v59, &qword_100152D88, &unk_100103DC0);
            v49 = v58;
            v51 = v57;
            v50 = sub_100026F6C(v56, v57);
            v26 = sub_100061B40();
            v27 = (*(v49 + 136))(v53, v54, v26, 5, 1, 1, 1, v51, v49);
            v28 = *(v27 + 16);
            LODWORD(v51) = v28 == 0;
            if (v28)
            {
              v50 = *(v27 + 8 * v28 + 24);
            }

            else
            {
              v50 = 0;
            }

            sub_100024E14(v56);
          }

          else
          {
            sub_10002533C(v59, &qword_100152D88, &unk_100103DC0);
            v50 = 0;
            LODWORD(v51) = 1;
          }

          if (qword_10015A890 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          sub_100025AE0(v31, qword_10015D278);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v49 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v59[0] = v48;
            *v49 = 136315138;
            v34 = v50;
            if (v51)
            {
              v34 = 0;
            }

            v56[0] = v34;
            v46 = v32;
            LODWORD(v47) = v33;
            v35 = dispatch thunk of CustomStringConvertible.description.getter();
            v45 = sub_100021D24(v35, v36, v59);

            v37 = v49;
            *(v49 + 4) = v45;
            _os_log_impl(&_mh_execute_header, v32, v47, "GC: Keeping verified milestone revision %s", v37, 0xCu);
            sub_100024E14(v48);
          }

          else
          {
          }

          v48 = *(v61 + 16);
          v49 = v61 + 16;
          (v48)(v12, v55, v5);
          Date.init(timeInterval:since:)();
          sub_100069C18(v59);
          if (v60)
          {
            sub_1000331C0(v59, v56);
            sub_10002533C(v59, &qword_100152D88, &unk_100103DC0);
            v38 = v58;
            v46 = v57;
            v47 = sub_100026F6C(v56, v57);
            v39 = sub_100061B40();
            (*(v38 + 88))(v53, v54, v39, 5, v15, 1, 1, 1, v50, v51, v46, v38);
            sub_100024E14(v56);
          }

          else
          {
            sub_10002533C(v59, &qword_100152D88, &unk_100103DC0);
          }

          (v48)(v12, v55, v5);
          Date.init(timeInterval:since:)();
          sub_100069C18(v59);
          if (v60)
          {
            sub_1000331C0(v59, v56);
            sub_10002533C(v59, &qword_100152D88, &unk_100103DC0);
            v40 = v57;
            v41 = v58;
            sub_100026F6C(v56, v57);
            v42 = sub_100061B40();
            (*(v41 + 96))(v53, v54, v42, 5, v9, v40, v41);

            v43 = *(v61 + 8);
            v43(v9, v5);
            v43(v15, v5);
            sub_100024E14(v56);
          }

          else
          {

            v44 = *(v61 + 8);
            v44(v9, v5);
            v44(v15, v5);
            sub_10002533C(v59, &qword_100152D88, &unk_100103DC0);
          }
        }
      }

      else
      {

        sub_10006F0A8();
        swift_allocError();
        *v29 = 9;
        *(v29 + 4) = 1;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_10006F0A8();
    swift_allocError();
    *v19 = 1;
    *(v19 + 4) = 1;
    swift_willThrow();
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MilestoneRootsResponse.isNewEpoch()()
{
  v1 = MilestoneRootsResponse.keyBag.getter();
  if (!v1)
  {
    sub_10002FB04();
    swift_allocError();
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0x8000000000000000;
    swift_willThrow();
    return v16 & 1;
  }

  v2 = v1;
  v3 = [v1 patLogBeginningMs];
  v4 = [v2 tltLogBeginningMs];
  if ([v0 hasTltInclusionProof])
  {
    v5 = [v0 tltInclusionProof];
    if (v5)
    {
      v6 = v5;
      sub_100025DB0(v5, v4);
      if ((v7 & 0x100) == 0)
      {
        if (qword_10015A890 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100025AE0(v8, qword_10015D278);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v30 = v12;
          *v11 = 136446210;
          sub_100061490();
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = sub_100021D24(v13, v14, &v30);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v9, v10, "Detected new TLT epoch: %{public}s", v11, 0xCu);
          sub_100024E14(v12);
        }

        v16 = 1;
        return v16 & 1;
      }
    }
  }

  if (![v0 hasPatInclusionProof] || (v18 = objc_msgSend(v0, "patInclusionProof")) == 0)
  {
LABEL_21:

    v16 = 0;
    return v16 & 1;
  }

  v19 = v18;
  sub_100025DB0(v18, v3);
  if ((v20 & 0x100) != 0)
  {

    goto LABEL_21;
  }

  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100025AE0(v21, qword_10015D278);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136446210;
    sub_100061490();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = sub_100021D24(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Detected new PAT epoch: %{public}s", v24, 0xCu);
    sub_100024E14(v25);
  }

  v16 = 1;
  return v16 & 1;
}

id sub_10006B288()
{
  v3 = v0;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v63 - v6;
  v8 = MilestoneRootsResponse.keyBag.getter();
  if (!v8)
  {
    sub_10006F0A8();
    swift_allocError();
    *v15 = 0;
    *(v15 + 4) = 1;
    swift_willThrow();
    return v2;
  }

  v9 = v8;
  v10 = [v0 milestonesArray];
  if (!v10 || (v11 = v10, *&v79 = 0, sub_100033178(0, &qword_100152DC8, off_1001312D8), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v11, (v12 = v79) == 0))
  {
    sub_10006F0A8();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();

    return v2;
  }

  v65 = v79 >> 62;
  if (v79 >> 62)
  {
LABEL_80:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v12;
  v70 = v3;
  if (v13)
  {
    v2 = 2;
  }

  else
  {
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100025AE0(v17, qword_10015D278);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No new milestones. Verifying inclusion only.", v20, 2u);
      v3 = v70;
    }

    v2 = 1;
  }

  result = [v3 startSlh];
  if (result)
  {
    v21 = result;
    sub_100033178(0, &qword_100152A98, off_1001312E8);
    v12 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v21];

    sub_100024248(&unk_100153C20, qword_1001062C8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100106300;
    *(v22 + 32) = v12;
    v82 = v22;
    v23 = v73;
    if (v65)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v12;
    if (v24)
    {
      v66 = v24;
      v26 = 0;
      v69 = v23 & 0xC000000000000001;
      v27 = v23 & 0xFFFFFFFFFFFFFF8;
      v71 = v9;
      v72 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v27 = v23;
      }

      v63[1] = v27;
      *&v25 = 134218240;
      v64 = v25;
      while (1)
      {
        v68 = v22;
        if (v69)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v72 + 16))
          {
            goto LABEL_79;
          }

          v28 = *(v23 + 8 * v26 + 32);
        }

        v29 = v28;
        v9 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (qword_10015A890 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        v31 = sub_100025AE0(v30, qword_10015D278);

        v67 = v31;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = v64;
          *(v34 + 4) = v26;
          *(v34 + 12) = 2048;
          if (v65)
          {
            v35 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v35 = *(v72 + 16);
          }

          *(v34 + 14) = v35;

          _os_log_impl(&_mh_execute_header, v32, v33, "Verifying milestone consistency proof %ld of %ld", v34, 0x16u);
        }

        else
        {
        }

        v36 = [v71 appSthKeyStore];
        v37 = [objc_allocWithZone(TransparencyConsistencyProofVerifier) initWithTrustedKeyStore:v36];

        MilestoneConsistency.verifier.setter(v37);
        v74 = v3;
        MilestoneConsistency.startSlh.setter(v3);
        v2 = v7;
        if (qword_10015A860 != -1)
        {
          swift_once();
        }

        v38 = qword_10015A868;
        swift_beginAccess();
        v39 = v70;
        v40 = objc_getAssociatedObject(v70, (v38 + 16));
        swift_endAccess();
        v23 = v73;
        if (v40)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
        }

        v77 = v75;
        v78 = v76;
        if (*(&v76 + 1))
        {
          sub_100024248(&qword_100152D80, &qword_100103DB8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v81 = 0;
            v79 = 0u;
            v80 = 0u;
          }
        }

        else
        {
          sub_10002533C(&v77, &qword_100152D70, &qword_100103DB0);
          v79 = 0u;
          v80 = 0u;
          v81 = 0;
        }

        sub_100033D54(&v79);
        if (qword_10015A870 != -1)
        {
          swift_once();
        }

        v41 = qword_10015A878;
        swift_beginAccess();
        v42 = objc_getAssociatedObject(v39, (v41 + 16));
        swift_endAccess();
        if (v42)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v77 = 0u;
          v78 = 0u;
        }

        v79 = v77;
        v80 = v78;
        if (*(&v78 + 1))
        {
          v43 = type metadata accessor for Date();
          v44 = swift_dynamicCast();
          (*(*(v43 - 8) + 56))(v7, v44 ^ 1u, 1, v43);
        }

        else
        {
          sub_10002533C(&v79, &qword_100152D70, &qword_100103DB0);
          v45 = type metadata accessor for Date();
          (*(*(v45 - 8) + 56))(v7, 1, 1, v45);
        }

        MilestoneConsistency.receiptTime.setter(v7);
        v46 = MilestoneConsistency.verify()();
        if (v1)
        {
          break;
        }

        v2 = v46;
        if (v46 != 1)
        {

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = v64;
            *(v56 + 4) = v26;
            *(v56 + 12) = 2048;
            v57 = v74;
            if (v65)
            {
              v58 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v58 = *(v72 + 16);
            }

            *(v56 + 14) = v58;

            _os_log_impl(&_mh_execute_header, v54, v55, "Milestone consistency proof %ld of %ld failed", v56, 0x16u);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return v2;
        }

        v47 = MilestoneConsistency.endSlh.getter();
        if (!v47)
        {

          sub_10006F0A8();
          swift_allocError();
          *v59 = 4;
          *(v59 + 4) = 1;
          swift_willThrow();

          return v2;
        }

        result = MilestoneConsistency.endSlh.getter();
        if (!result)
        {
          __break(1u);
          goto LABEL_82;
        }

        v48 = result;

        v3 = v48;
        v12 = &v82;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v73;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v22 = v82;
        ++v26;
        if (v9 == v66)
        {
          v2 = 1;
          v9 = v71;
          goto LABEL_69;
        }
      }

      swift_errorRetain();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v2 = swift_slowAlloc();
        *v52 = 134218498;
        *(v52 + 4) = v26;
        *(v52 + 12) = 2048;
        if (v65)
        {
          v53 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v53 = *(v72 + 16);
        }

        v60 = v71;

        *(v52 + 14) = v53;

        *(v52 + 22) = 2112;
        swift_errorRetain();
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 24) = v61;
        *v2 = v61;
        _os_log_impl(&_mh_execute_header, v50, v51, "Milestone consistency proof %ld of %ld failed: %@", v52, 0x20u);
        sub_10002533C(v2, &qword_100153450, &unk_100104140);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v60 = v71;
      }

      v62 = v74;
      swift_willThrow();
    }

    else
    {
LABEL_69:
    }

    return v2;
  }

LABEL_82:
  __break(1u);
  return result;
}

NSObject *sub_10006BE0C(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v107 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MilestoneRootsResponse.keyBag.getter();
  if (!v15)
  {
    sub_10006F0A8();
    swift_allocError();
    *v26 = 0;
    *(v26 + 4) = 1;
    swift_willThrow();
    return v10;
  }

  v16 = v15;
  if (![v4 hasPatInclusionProof] || (v17 = objc_msgSend(v4, "patInclusionProof")) == 0)
  {
    sub_10006F0A8();
    swift_allocError();
    *v25 = 3;
    *(v25 + 4) = 1;
    swift_willThrow();

    return v10;
  }

  v115 = a1;
  v117 = v17;
  v118 = v16;
  result = [v17 slh];
  if (!result)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v19 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v20 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v19];

  sub_100069C18(&v123);
  if (*(&v124 + 1))
  {
    v114 = v11;
    v116 = v4;
    sub_1000331C0(&v123, v119);
    sub_10002533C(&v123, &qword_100152D88, &unk_100103DC0);
    v21 = v20;
    v22 = v120;
    v23 = v121;
    v24 = sub_100026F6C(v119, v120);
    sub_100061CE4(v127);
    if (v2)
    {

      sub_100024E14(v119);
      return v10;
    }

    v109 = v24;
    v110 = v23;
    v111 = v22;
    v113 = v21;
    MilestoneRootsResponse.receiptTime.getter(v9);
    v30 = v114;
    v31 = v114[6];
    if (v31(v9, 1, v10) == 1)
    {
      static Date.now.getter();
      if (v31(v9, 1, v10) != 1)
      {
        sub_10002533C(v9, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v30[4])(v14, v9, v10);
    }

    v20 = v113;
    v32 = [v113 data];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v34;

    v35 = sub_100061EBC();
    v4 = v116;
    (v110[3].isa)(v127, v14, v33, v112, v35, v111);
    v3 = 0;
    (v30[1])(v14, v10);
    sub_100026FB0(v33, v112);
    sub_1000270C0(v127);
    sub_100024E14(v119);
  }

  else
  {
    sub_10002533C(&v123, &qword_100152D88, &unk_100103DC0);
  }

  v27 = v118;
  v28 = [v118 appSthKeyStore];
  v29 = [v28 signatureVerifier];

  [v20 setVerifier:v29];
  sub_100061CE4(v128);
  if (v3)
  {

    return v10;
  }

  v114 = v29;
  v10 = sub_1000587C8();
  sub_100069C18(&v123);
  if (*(&v124 + 1))
  {
    v36 = v20;
    sub_1000331C0(&v123, v119);
    sub_10002533C(&v123, &qword_100152D88, &unk_100103DC0);
    v37 = v120;
    v38 = v121;
    sub_100026F6C(v119, v120);
    (v38[6].isa)(v128, v10, v37, v38);
    sub_100024E14(v119);
    v20 = v36;
  }

  else
  {
    sub_10002533C(&v123, &qword_100152D88, &unk_100103DC0);
  }

  if (v10 != 1)
  {
    sub_1000270C0(v128);
    v55 = v117;
    v56 = v114;
LABEL_29:

    return v10;
  }

  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100025AE0(v39, qword_10015D278);
  sub_100027114(v128, &v123);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  sub_1000270C0(v128);
  v43 = os_log_type_enabled(v41, v42);
  v113 = v20;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v111 = v44;
    v112 = swift_slowAlloc();
    v122 = v112;
    *v44 = 136315138;
    v123 = v128[0];
    v124 = v128[1];
    v125 = v128[2];
    v126 = v129;
    sub_100027114(v128, v119);
    sub_100027584();
    v116 = v40;
    v110 = v41;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = v42;
    v49 = *(&v125 + 1);
    v50 = v126;

    sub_100026FB0(v49, v50);
    v51 = sub_100021D24(v45, v47, &v122);

    v52 = v111;
    *(v111 + 4) = v51;
    v53 = v48;
    v54 = v110;
    _os_log_impl(&_mh_execute_header, v110, v53, "Verified signature for %s", v52, 0xCu);
    sub_100024E14(v112);
  }

  else
  {
  }

  v57 = [v118 appSthKeyStore];
  v58 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v57];

  v59 = v117;
  [v117 setVerifier:v58];

  v10 = sub_1000587C8();
  if ([v59 nodeType] != 1)
  {
    sub_10006F0A8();
    swift_allocError();
    *v78 = 7;
    *(v78 + 4) = 1;
    swift_willThrow();
    sub_1000270C0(v128);

    v79 = v113;
LABEL_45:

    return v10;
  }

  result = [v59 nodeBytes];
  if (!result)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v60 = result;
  sub_100033178(0, &qword_100153C18, off_1001312E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v62, v64);
  *&v123 = 0;
  v66 = [ObjCClassFromMetadata parseFromData:isa error:&v123];

  v67 = v123;
  if (!v66)
  {
    v80 = v123;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v128);

    v79 = v117;
    goto LABEL_45;
  }

  if (!(v115 >> 62))
  {
    result = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_36;
    }

LABEL_71:
    v95 = 0x206E776F6E6B6E75;
    v98 = v67;
    v94 = 0;
    v97 = 0xEB00000000686C73;
    goto LABEL_72;
  }

LABEL_70:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_71;
  }

LABEL_36:
  v68 = &result[-1].isa + 7;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_77;
  }

  v111 = v66;
  v112 = (v115 & 0xC000000000000001);
  v110 = result;
  if ((v115 & 0xC000000000000001) == 0)
  {
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v68 < *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v115 + 8 * v68 + 32);
      v70 = v67;
      v71 = v69;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_78:
  v106 = v67;
  v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
  v72 = v71;
  if (([v111 hasObjectMapHead] & 1) == 0)
  {
    goto LABEL_68;
  }

  v109 = v72;
  v73 = [v72 logHead];
  if (v73)
  {
    v74 = v73;
    v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0xF000000000000000;
  }

  result = [v111 objectMapHead];
  if (result)
  {
    v81 = result;
    v108 = v75;
    v82 = [result object];

    if (v82)
    {
      v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      if (v77 >> 60 == 15)
      {
        v86 = v77;
        if (v85 >> 60 != 15)
        {
          goto LABEL_67;
        }

        goto LABEL_54;
      }

      v116 = v4;
      v86 = v77;
      if (v85 >> 60 != 15)
      {
        v91 = v108;
        sub_100037620(v108, v77);
        sub_100037620(v83, v85);
        v92 = sub_100027800(v91, v77, v83, v85);
        sub_10002BEE0(v83, v85);
        sub_10002BEE0(v83, v85);
        sub_10002BEE0(v91, v77);
        sub_10002BEE0(v91, v77);
        v72 = v109;
        v4 = v116;
        if (v92)
        {

          goto LABEL_55;
        }

LABEL_68:
        sub_100061CE4(v130);
        v94 = v72;

        v95 = KTSWDB.STHKey.description.getter();
        v97 = v96;
        sub_1000270C0(v130);
        v66 = v111;
LABEL_72:

        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v99, v100))
        {
          v10 = swift_slowAlloc();
          v101 = v94;
          v102 = swift_slowAlloc();
          *&v123 = v102;
          *v10 = 136446210;
          v103 = sub_100021D24(v95, v97, &v123);

          *(v10 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v99, v100, "Failed to verify inclusion proof for %{public}s", v10, 0xCu);
          sub_100024E14(v102);
          v94 = v101;
        }

        else
        {
        }

        v104 = v114;
        sub_10006F0A8();
        swift_allocError();
        *v105 = 5;
        *(v105 + 4) = 1;
        swift_willThrow();

        sub_1000270C0(v128);
        return v10;
      }
    }

    else
    {
      v86 = v77;
      if (v77 >> 60 == 15)
      {
LABEL_54:

        sub_10002BEE0(v108, v86);
LABEL_55:
        v67 = 0;
        v87 = v115 & 0xFFFFFFFFFFFFFF8;
        v88 = v110;
        while (1)
        {
          if (v112)
          {
            v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v67 >= *(v87 + 16))
            {
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v89 = *(v115 + 8 * v67 + 32);
          }

          v90 = v89;
          v66 = (v67 + 1);
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            goto LABEL_70;
          }

          *&v123 = v89;
          sub_10006F160(&v123, v4, v10);

          ++v67;
          if (v66 == v88)
          {
            sub_1000270C0(v128);

            v118 = v114;
            v55 = v111;
            v56 = v109;
            goto LABEL_29;
          }
        }
      }

      v83 = 0;
      v85 = 0xF000000000000000;
    }

LABEL_67:
    v72 = v109;

    sub_10002BEE0(v108, v86);
    sub_10002BEE0(v83, v85);
    v93 = v72;
    goto LABEL_68;
  }

LABEL_83:
  __break(1u);
  return result;
}

id sub_10006D0FC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v110 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MilestoneRootsResponse.keyBag.getter();
  if (!v15)
  {
    sub_10006F0A8();
    swift_allocError();
    *v24 = 0;
    *(v24 + 4) = 1;
    swift_willThrow();
    return v10;
  }

  v16 = v15;
  if (![v4 hasTltInclusionProof] || (v17 = objc_msgSend(v4, "tltInclusionProof")) == 0)
  {
    sub_10006F0A8();
    swift_allocError();
    *v23 = 3;
    *(v23 + 4) = 1;
    swift_willThrow();

    return v10;
  }

  v115 = a1;
  v118 = v17;
  v119 = v16;
  result = [v17 slh];
  if (!result)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v20 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v19];

  sub_100069C18(&v124);
  if (*(&v125 + 1))
  {
    v114 = v11;
    v116 = v4;
    sub_1000331C0(&v124, v120);
    sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
    v21 = v121;
    v113 = v122;
    v22 = sub_100026F6C(v120, v121);
    sub_100061CE4(v128);
    if (v2)
    {

      sub_100024E14(v120);
      return v10;
    }

    v110 = v22;
    v111 = v21;
    v117 = v20;
    MilestoneRootsResponse.receiptTime.getter(v9);
    v29 = v114;
    v30 = *(v114 + 48);
    if (v30(v9, 1, v10) == 1)
    {
      static Date.now.getter();
      if (v30(v9, 1, v10) != 1)
      {
        sub_10002533C(v9, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (*(v29 + 32))(v14, v9, v10);
    }

    v31 = [v117 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v33;

    v34 = sub_100061EBC();
    v4 = v116;
    v35 = v32;
    v36 = v32;
    v37 = v112;
    (v113[3])(v128, v14, v36, v112, v34, v111);
    v3 = 0;
    (*(v29 + 8))(v14, v10);
    sub_100026FB0(v35, v37);
    sub_1000270C0(v128);
    sub_100024E14(v120);
  }

  else
  {
    v117 = v20;
    sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
  }

  v25 = v119;
  v26 = [v119 tltKeyStore];
  v27 = [v26 signatureVerifier];

  v28 = v117;
  [v117 setVerifier:v27];
  sub_100061CE4(v129);
  if (v3)
  {

    return v10;
  }

  v10 = sub_1000587C8();
  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = sub_100025AE0(v38, qword_10015D278);
  sub_100027114(v129, &v124);
  v114 = v39;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  sub_1000270C0(v129);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v112 = v42;
    v113 = swift_slowAlloc();
    v123 = v113;
    *v42 = 136315138;
    v124 = v129[0];
    v125 = v129[1];
    v126 = v129[2];
    v127 = v130;
    sub_100027114(v129, v120);
    sub_100027584();
    v111 = v40;
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v45 = v27;
    v46 = v41;
    v48 = *(&v126 + 1);
    v47 = v127;

    v49 = v48;
    v27 = v45;
    sub_100026FB0(v49, v47);
    v50 = sub_100021D24(v110, v44, &v123);

    v51 = v112;
    *(v112 + 1) = v50;
    v52 = v46;
    v53 = v111;
    _os_log_impl(&_mh_execute_header, v111, v52, "Verified signature for %s", v51, 0xCu);
    sub_100024E14(v113);
  }

  else
  {
  }

  sub_100069C18(&v124);
  if (*(&v125 + 1))
  {
    sub_1000331C0(&v124, v120);
    sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
    v54 = v121;
    v55 = v122;
    sub_100026F6C(v120, v121);
    (v55[6])(v129, v10, v54, v55);
    sub_100024E14(v120);
  }

  else
  {
    sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
  }

  sub_100069C18(&v124);
  if (*(&v125 + 1))
  {
    sub_1000331C0(&v124, v120);
    sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
    v56 = v121;
    v57 = v122;
    sub_100026F6C(v120, v121);
    (v57[5])(v129, 1, v56, v57);
    sub_100024E14(v120);
  }

  else
  {
    sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
  }

  v58 = v119;
  if (v10 != 1)
  {
    sub_1000270C0(v129);

    return v10;
  }

  v59 = [v119 tltKeyStore];
  v60 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v59];

  v61 = v118;
  [v118 setVerifier:v60];

  v10 = sub_1000587C8();
  if ([v61 nodeType] != 3)
  {
    sub_10006F0A8();
    swift_allocError();
    *v71 = 8;
    *(v71 + 4) = 1;
    swift_willThrow();
    sub_1000270C0(v129);

    return v10;
  }

  v113 = v27;
  result = [v61 nodeBytes];
  if (!result)
  {
    goto LABEL_67;
  }

  v62 = result;
  sub_100033178(0, &qword_100153C10, off_1001312F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v64, v66);
  *&v124 = 0;
  v68 = [ObjCClassFromMetadata parseFromData:isa error:&v124];

  if (!v68)
  {
    v72 = v124;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v129);

    v73 = v118;
LABEL_62:

    return v10;
  }

  v69 = v124;
  v70 = v115;
  sub_100061CE4(&v131);
  if (![v68 hasPatHead])
  {
LABEL_59:
    sub_100027114(&v131, &v124);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    sub_1000270C0(&v131);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v123 = v116;
      *v99 = 136446210;
      v124 = v131;
      v125 = v132;
      v126 = v133;
      v127 = v134;
      sub_100027114(&v131, v120);
      sub_100027584();
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      v103 = v68;
      v10 = *(&v126 + 1);
      v104 = v127;

      v105 = v104;
      v68 = v103;
      sub_100026FB0(v10, v105);
      v106 = sub_100021D24(v100, v102, &v123);

      *(v99 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v97, v98, "Failed to verify inclusion proof for %{public}s", v99, 0xCu);
      sub_100024E14(v116);
    }

    sub_10006F0A8();
    swift_allocError();
    *v107 = 6;
    *(v107 + 4) = 1;
    swift_willThrow();
    sub_1000270C0(&v131);

    sub_1000270C0(v129);
    v73 = v117;
    goto LABEL_62;
  }

  v74 = [v70 logHead];
  if (v74)
  {
    v75 = v74;
    v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0xF000000000000000;
  }

  result = [v68 patHead];
  if (result)
  {
    v79 = result;
    v115 = v68;
    v80 = [result object];

    v112 = 0;
    if (v80)
    {
      v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = v78;
      if (v78 >> 60 != 15)
      {
        if (v83 >> 60 == 15)
        {
          goto LABEL_58;
        }

        v108 = v76;
        sub_100037620(v76, v84);
        sub_100037620(v81, v83);
        v109 = sub_100027800(v76, v84, v81, v83);
        sub_10002BEE0(v81, v83);
        sub_10002BEE0(v81, v83);
        sub_10002BEE0(v108, v84);
        sub_10002BEE0(v108, v84);
        v68 = v115;
        if ((v109 & 1) == 0)
        {
          goto LABEL_59;
        }

LABEL_51:
        v116 = v4;
        sub_100027114(&v131, &v124);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.debug.getter();
        sub_1000270C0(&v131);
        LODWORD(v114) = v86;
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v123 = v88;
          *v87 = 136315138;
          v124 = v131;
          v125 = v132;
          v126 = v133;
          v127 = v134;
          sub_100027114(&v131, v120);
          sub_100027584();
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          v93 = *(&v126 + 1);
          v92 = v127;

          sub_100026FB0(v93, v92);
          v94 = sub_100021D24(v89, v91, &v123);

          *(v87 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v85, v114, "Verified inclusion for %s", v87, 0xCu);
          sub_100024E14(v88);
        }

        sub_100069C18(&v124);
        if (*(&v125 + 1))
        {
          sub_1000331C0(&v124, v120);
          sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
          v95 = v121;
          v96 = v122;
          sub_100026F6C(v120, v121);
          (v96[5])(&v131, v10, v95, v96);
          sub_1000270C0(v129);
          sub_1000270C0(&v131);

          sub_100024E14(v120);
        }

        else
        {
          sub_1000270C0(v129);
          sub_1000270C0(&v131);

          sub_10002533C(&v124, &qword_100152D88, &unk_100103DC0);
        }

        return v10;
      }

      if (v83 >> 60 != 15)
      {
        goto LABEL_58;
      }
    }

    else if (v78 >> 60 != 15)
    {
      v81 = 0;
      v83 = 0xF000000000000000;
LABEL_58:
      sub_10002BEE0(v76, v78);
      sub_10002BEE0(v81, v83);
      v68 = v115;
      goto LABEL_59;
    }

    sub_10002BEE0(v76, v78);
    goto LABEL_51;
  }

LABEL_68:
  __break(1u);
  return result;
}

void MilestoneRootsResponse.verify()()
{
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  sub_10006E600(v1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_10006E600(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v8 = sub_100024248(&qword_100152D90, &qword_100105620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] != 1 && objc_msgSend(a1, "status") != 7)
  {
    v30 = [a1 status];
    sub_10006F0A8();
    v5 = swift_allocError();
    *v31 = v30;
    *(v31 + 4) = 0;
LABEL_23:
    swift_willThrow();
    *a2 = v5;
    return;
  }

  if ([a1 status] == 7)
  {
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100025AE0(v17, qword_10015D278);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Newer milestone not found", v20, 2u);
    }

    v21 = 1;
    goto LABEL_9;
  }

  if (![a1 hasStartSlh])
  {
    sub_10006F0A8();
    v5 = swift_allocError();
    *v32 = 1;
LABEL_22:
    *(v32 + 4) = 1;
    goto LABEL_23;
  }

  if (![a1 hasPatInclusionProof] || !objc_msgSend(a1, "hasTltInclusionProof"))
  {
    sub_10006F0A8();
    v5 = swift_allocError();
    *v32 = 3;
    goto LABEL_22;
  }

  v22 = sub_10006B288();
  if (v3)
  {
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100025AE0(v24, qword_10015D278);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to verify milestones: %@", v27, 0xCu);
      sub_10002533C(v28, &qword_100153450, &unk_100104140);
    }

    goto LABEL_23;
  }

  if (v22 == 1)
  {
    v33 = v23;
    v34 = sub_10006BE0C(v23);
    if (v34 == 1)
    {
      v57 = v35;
      v56 = sub_10006D0FC(v35);
      MilestoneRootsResponse.receiptTime.getter(v11);
      v55 = *(v13 + 48);
      if (v55(v11, 1, v12) == 1)
      {
        static Date.now.getter();
        if (v55(v11, 1, v12) != 1)
        {
          sub_10002533C(v11, &qword_100152D90, &qword_100105620);
        }
      }

      else
      {
        (*(v13 + 32))(v16, v11, v12);
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          swift_once();
          v49 = type metadata accessor for Logger();
          sub_100025AE0(v49, qword_10015D278);
          swift_errorRetain();
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *v52 = 138412290;
            swift_errorRetain();
            v54 = _swift_stdlib_bridgeErrorToNSError();
            *(v52 + 4) = v54;
            *v53 = v54;
            _os_log_impl(&_mh_execute_header, v50, v51, "Failed to GC milestones: %@", v52, 0xCu);
            sub_10002533C(v53, &qword_100153450, &unk_100104140);
          }

          else
          {
          }

          goto LABEL_49;
        }

        v47 = *(v33 + 32);
      }

      v48 = v47;

      sub_10006A68C(v16, v48);
      (*(v13 + 8))(v16, v12);

LABEL_49:
      v21 = v56;
LABEL_9:
      *a3 = v21;
      return;
    }

    v41 = v34;
    v42 = v35;

    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100025AE0(v43, qword_10015D278);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to verify TLT inclusion", v46, 2u);
    }

    *a3 = v41;
  }

  else
  {
    v36 = v22;

    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100025AE0(v37, qword_10015D278);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to verify milestones", v40, 2u);
    }

    *a3 = v36;
  }
}

unint64_t sub_10006F0A8()
{
  result = qword_100153CD8;
  if (!qword_100153CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153CD8);
  }

  return result;
}

unint64_t sub_10006F10C()
{
  result = qword_100153CE0;
  if (!qword_100153CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153CE0);
  }

  return result;
}

void sub_10006F160(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_100061CE4(v28);
  if (!v3)
  {
    v30 = 0;
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100025AE0(v6, qword_10015D278);
    sub_100027114(v28, &v24);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    sub_1000270C0(v28);
    if (os_log_type_enabled(v7, v8))
    {
      v19 = a3;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v24 = v28[0];
      v25 = v28[1];
      v26 = v28[2];
      v27 = v29;
      sub_100027114(v28, v20);
      sub_100027584();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      v14 = *(&v26 + 1);
      v15 = v27;

      sub_100026FB0(v14, v15);
      v16 = sub_100021D24(v11, v13, &v23);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Verified inclusion for %s", v9, 0xCu);
      sub_100024E14(v10);

      a3 = v19;
    }

    sub_100069C18(&v24);
    if (*(&v25 + 1))
    {
      sub_1000331C0(&v24, v20);
      sub_10002533C(&v24, &qword_100152D88, &unk_100103DC0);
      v17 = v21;
      v18 = v22;
      sub_100026F6C(v20, v21);
      (*(v18 + 40))(v28, a3, v17, v18);
      sub_1000270C0(v28);
      sub_100024E14(v20);
    }

    else
    {
      sub_1000270C0(v28);
      sub_10002533C(&v24, &qword_100152D88, &unk_100103DC0);
    }
  }
}
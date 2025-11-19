uint64_t sub_10008C3A8()
{
  v0 = UUID.uuid.getter();
  v1 = v0 >> 4;
  v2 = v1 - 1;
  if (v1 == 4)
  {
    v3 = (v0 >> 31) & 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008C448(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_10008C490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008C52C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0738);
  sub_10000403C(v0, qword_1003A0738);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

unint64_t sub_10008C598()
{
  v1 = *v0;
  if (qword_10039D3A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A0738);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000011, 0x8000000100349B60, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  return 0xD0000000000009E5;
}

uint64_t sub_10008C784(void (*a1)(uint64_t), uint64_t a2, void (*a3)(_BYTE *, void))
{
  if (a1)
  {
    a1(33);
    a1(66);
  }

  sub_1000833DC(0, 0xF000000000000000);
  sub_10008A2BC(0, 0, 0, 0);
  memset(v8, 0, 73);
  sub_10008D6E8(v8);
  *&__src[8] = 0;
  *__src = 0;
  *&__src[16] = xmmword_1002C4CB0;
  *&__src[32] = xmmword_1002C4CC0;
  memset(&__src[56], 0, 32);
  *&__src[48] = 0xF000000000000000;
  strcpy(&__src[88], "partner");
  *&__src[104] = xmmword_1002C3C70;
  *&__src[96] = 0xE700000000000000;
  *&__src[120] = 1;
  memset(&__src[128], 0, 33);
  memset(&__src[168], 0, 73);
  *&__src[256] = 0;
  *&__src[248] = 0;
  *&__src[264] = 0xF000000000000000;
  __src[272] = 1;
  v10[0] = 0;
  v10[1] = 0;
  v11 = xmmword_1002C4CB0;
  v12 = xmmword_1002C4CC0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0xF000000000000000;
  v16 = 0x72656E74726170;
  v18 = xmmword_1002C3C70;
  v17 = 0xE700000000000000;
  v19 = 1;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v28 = 0;
  v27 = 0;
  v29 = 0xF000000000000000;
  v30 = 1;
  sub_100081A7C(__src, v31);
  sub_100081AD8(v10);
  if (a1)
  {
    a1(100);
  }

  memcpy(__dst, __src, 0x111uLL);
  nullsub_1(__dst);
  memcpy(v31, __dst, 0x111uLL);
  sub_100081A7C(__src, &v6);
  a3(v31, 0);
  sub_100081AD8(__src);
  return sub_100081AD8(__src);
}

void sub_10008C99C()
{
  v1 = *v0;
  if (qword_10039D3A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A0738);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x544F6C65636E6163, 0xEB00000000292841, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10008CB74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008CBD0()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v17[1] = &xmmword_1002C4CC0;
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  (*(v5 + 104))(v8, enum case for DispatchQoS.QoSClass.background(_:), v4);
  static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v8, v4);
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10008D750(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v18;
  *(v18 + 16) = v14;
  return v15;
}

_UNKNOWN **sub_10008CF0C()
{
  v2 = *v0;
  sub_10008C598();
  if (v1)
  {
    return &off_10037E090;
  }

  else
  {
    return 0xD0000000000009E5;
  }
}

uint64_t sub_10008CFAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a6;
  v61 = a8;
  v58 = a7;
  v59 = a5;
  v12 = *v8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v64 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v65);
  v62 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.Encoding();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v57[2] = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3A0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A0738);
  sub_1000094F4(a3, a4);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  sub_100009548(a3, a4);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57[1] = a1;
    v25 = v24;
    aBlock[0] = swift_slowAlloc();
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, aBlock);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002C1690;
    v30 = String.redactedTokenFromBase64()();
    *(v29 + 56) = &type metadata for String;
    *(v29 + 32) = v30;
    static String.Encoding.utf8.getter();
    v31 = String.init(data:encoding:)();
    v33 = 4271950;
    if (v32)
    {
      v33 = v31;
    }

    v34 = 0xE300000000000000;
    if (v32)
    {
      v34 = v32;
    }

    *(v29 + 64) = v33;
    *(v29 + 72) = v34;
    *(v29 + 88) = &type metadata for String;
    *(v29 + 96) = 0x3E6B636F6C623CLL;
    *(v29 + 104) = 0xE700000000000000;
    *(v29 + 152) = &type metadata for String;
    *(v29 + 120) = &type metadata for String;
    *(v29 + 128) = 0x3E6B636F6C623CLL;
    *(v29 + 136) = 0xE700000000000000;
    v35 = showFunction(signature:_:)(0xD000000000000044, 0x80000001003488F0, v29);
    v37 = v36;

    v38 = sub_100008F6C(v35, v37, aBlock);

    *(v25 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000094F4(a3, a4);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  sub_100009548(a3, a4);
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    static String.Encoding.utf8.getter();
    v43 = String.init(data:encoding:)();
    if (v44)
    {
      v45 = v44;
    }

    else
    {
      v43 = 4271950;
      v45 = 0xE300000000000000;
    }

    v46 = sub_100008F6C(v43, v45, aBlock);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "PAYLOAD %s", v41, 0xCu);
    sub_10000959C(v42);
  }

  v47 = *(v57[3] + 16);
  v48 = swift_allocObject();
  v50 = v59;
  v49 = v60;
  v48[2] = v59;
  v48[3] = v49;
  v51 = v61;
  v48[4] = v58;
  v48[5] = v51;
  aBlock[4] = sub_10008D6C4;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100381F20;
  v52 = _Block_copy(aBlock);
  sub_1000696D8(v50);

  v53 = v62;
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_10008D750(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  v54 = v64;
  v55 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v52);
  (*(v66 + 8))(v54, v55);
  (*(v63 + 8))(v53, v65);
}

uint64_t sub_10008D67C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008D6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008D6E8(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A0698, &qword_1002C4D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008D798@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100090134(v1, v15, type metadata accessor for SLAMScript.SEFWDetails);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v16 = type metadata accessor for URL();
    return (*(*(v16 - 8) + 32))(a1, v15, v16);
  }

  else
  {
    sub_10008FED0();
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
    URL.init(filePath:directoryHint:relativeTo:)();
    return sub_10009019C(v15, type metadata accessor for SLAMScript.SEFWDetails);
  }
}

uint64_t sub_10008D9FC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0820);
  sub_10000403C(v0, qword_1003A0820);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

void sub_10008DC14(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100004074(&qword_1003A0A78, &qword_1002C4D70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v56 - v8;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A0820);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100008F6C(a1, a2, v60);
    _os_log_impl(&_mh_execute_header, v11, v12, "LogSink: %s", v13, 0xCu);
    sub_10000959C(v14);
  }

  sub_10000411C(0, &qword_1003A0A80, NSPredicate_ptr);
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002C1660;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10009058C();
  *(v15 + 32) = 0xD000000000000044;
  *(v15 + 40) = 0x8000000100349CC0;
  v16 = NSPredicate.init(format:_:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 evaluateWithObject:v17];

  if (!v18)
  {
    return;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "SLAM lib started replaying failed c-apdus", v21, 2u);
  }

  v60[0] = a1;
  v60[1] = a2;
  v58 = 0x2B645C20786469;
  v59 = 0xE700000000000000;
  v22 = type metadata accessor for Locale();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_10008AB88();
  v23 = StringProtocol.range<A>(of:options:range:locale:)();
  v25 = v24;
  v27 = v26;
  sub_10000BD44(v9, &qword_1003A0A78, &qword_1002C4D70);
  if (v27)
  {
    return;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57 = v3;
    v56[0] = v31;
    v60[0] = v31;
    *v30 = 136315138;
    String.subscript.getter();
    v56[1] = v23;
    v32 = static String._fromSubstring(_:)();
    v34 = v33;

    v35 = sub_100008F6C(v32, v34, v60);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "found index: %s", v30, 0xCu);
    sub_10000959C(v56[0]);
    v3 = v57;
  }

  if (v25 >> 14 < String.index(_:offsetBy:)() >> 14)
  {
    __break(1u);
    goto LABEL_23;
  }

  v36 = String.subscript.getter();
  v40 = v39;
  if (!((v36 ^ v37) >> 14))
  {
LABEL_23:

    return;
  }

  v41 = v36;
  v42 = v37;
  v43 = v38;
  v44 = sub_1000B96BC(v36, v37, v38, v39, 10);
  if ((v45 & 0x100) != 0)
  {
    v46 = sub_1001882E8(v41, v42, v43, v40, 10);
    v49 = v48;

    if (v49)
    {
      return;
    }
  }

  else
  {
    v46 = v44;
    v47 = v45;

    if (v47)
    {
      return;
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v50, v51, "%ld of c-apdus will replay", v52, 0xCu);
  }

  v53 = *(v3 + 80);
  v54 = __OFADD__(v53, v46);
  v55 = &v46[v53];
  if (v54)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 80) = v55;
  }
}

void sub_10008E290(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A0820);
  sub_1000094F4(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_100009548(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43[0] = v14;
    *v13 = 136315138;
    v15 = Data.hexString()();
    v16 = sub_100008F6C(v15._countAndFlagsBits, v15._object, v43);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "C-APDU: %s", v13, 0xCu);
    sub_10000959C(v14);
    v5 = v4;
  }

  sub_1000094F4(a3, a4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_100009548(a3, a4);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43[0] = v20;
    *v19 = 136315138;
    v21 = Data.hexString()();
    v22 = sub_100008F6C(v21._countAndFlagsBits, v21._object, v43);

    *(v19 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "R-APDU: %s", v19, 0xCu);
    sub_10000959C(v20);
  }

  v23 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_31;
    }

    v25 = *(a3 + 16);
    v24 = *(a3 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v27 < 2)
    {
      goto LABEL_31;
    }
  }

  else if (v23)
  {
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_47:
      __break(1u);
      return;
    }

    if (HIDWORD(a3) - a3 < 2)
    {
      goto LABEL_31;
    }
  }

  else if (BYTE6(a4) < 2uLL)
  {
    goto LABEL_31;
  }

  if (v23 == 2)
  {
    v28 = *(a3 + 24);
  }

  else if (v23 == 1)
  {
    v28 = a3 >> 32;
  }

  else
  {
    v28 = BYTE6(a4);
  }

  if (__OFSUB__(v28, 2))
  {
    goto LABEL_44;
  }

  v29 = Data._Representation.subscript.getter();
  if (v23 == 2)
  {
    v30 = *(a3 + 24);
  }

  else if (v23 == 1)
  {
    v30 = a3 >> 32;
  }

  else
  {
    v30 = BYTE6(a4);
  }

  if (__OFSUB__(v30, 1))
  {
    goto LABEL_45;
  }

  v31 = Data._Representation.subscript.getter() | (v29 << 8);
  if (v31 != 36864)
  {
    v32 = v5[9];
    v33 = v31;
    swift_beginAccess();
    v34 = v5[11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v5[11];
    v5[11] = 0x8000000000000000;
    sub_1001804E4(v33, v32, isUniquelyReferenced_nonNull_native);
    v5[11] = v42;
    swift_endAccess();
  }

LABEL_31:
  v36 = v5[9];
  v37 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v5[9] = v37;
  v38 = 100 * v37;
  if ((v37 * 100) >> 64 != (100 * v37) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v39 = v5[10];
  if (!v39)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_43;
  }

  if (v38 / v39 <= 100)
  {
    v40 = v5[7];
    if (v40)
    {
      v41 = v5[8];
      v40();
    }
  }
}

id sub_10008E6AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v10 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for SLAMScript(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000403C(v17, qword_1003A0820);
  v50 = a1;
  sub_100090134(a1, v16, type metadata accessor for SLAMScript);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = v2;
    v46 = v6;
    v23 = v22;
    v51 = v22;
    *v21 = 136315138;
    v24 = &v16[*(v13 + 36)];
    v25 = v7;
    v26 = *v24;
    v27 = v24[1];

    sub_10009019C(v16, type metadata accessor for SLAMScript);
    v28 = sub_100008F6C(v26, v27, &v51);
    v7 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nSLAMSwift.performScript(): %s\n*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***", v21, 0xCu);
    sub_10000959C(v23);
    v3 = v45;
    v6 = v46;

    v4 = v47;
  }

  else
  {

    sub_10009019C(v16, type metadata accessor for SLAMScript);
  }

  v29 = *(v4 + 56);
  v30 = v50;
  if (v29)
  {
    v31 = *(v4 + 64);
    v29(0);
  }

  sub_100090134(v30, v12, type metadata accessor for SLAMScript.SEFWDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10008F69C(*v12, v12[1]);
    }

    if (EnumCaseMultiPayload == 4)
    {
      return sub_10008FA20(*v12);
    }

    v43 = v48;
    (*(v7 + 32))(v48, v12, v6);
    v44 = URL.path(percentEncoded:)(0);
    sub_1000903C0(v44._countAndFlagsBits, v44._object);
    if (!v3)
    {
      sub_10008F318(v44._countAndFlagsBits, v44._object);
    }

    (*(v7 + 8))(v43, v6);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = *v12;
      v34 = v12[1];
      v35 = v12[2];
      v36 = v12[3];
      sub_1000903C0(*v12, v34);
      if (!v3)
      {
        sub_10008EF20(v33, v34, v35, v36);
      }
    }

    else
    {
      v40 = *v12;
      v41 = v12[1];
      v42 = v12[2];
      sub_1000903C0(*v12, v41);
      if (!v3)
      {
        sub_10008EB78(v40, v41, v42);
      }
    }
  }

  else
  {
    v38 = *v12;
    v39 = v12[1];
    sub_1000903C0(*v12, v39);
    if (!v3)
    {
      sub_10008F318(v38, v39);
    }
  }
}

void sub_10008EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A0820);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v32 = v11;
    v15 = sub_100008F6C(v13, v14, &v33);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = a3;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1670;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 88) = &type metadata for UInt64;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a3;

    v18 = showFunction(signature:_:)(0xD00000000000001DLL, 0x8000000100349CA0, v17);
    v20 = v19;

    v21 = sub_100008F6C(v18, v20, &v33);
    a3 = v16;

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v32, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v22 = objc_opt_self();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 PerformScript:a3 sefwPath:v23 seHandle:v4 logSink:v4];

  if (v24)
  {
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v25;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not perform script, error: %@", v28, 0xCu);
      sub_10000BD44(v29, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

void sub_10008EF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = *v4;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A0820);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v34 = v12;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v35);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1670;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 88) = &type metadata for String;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a3;
    *(v17 + 72) = a4;

    v18 = showFunction(signature:_:)(0xD000000000000019, 0x8000000100349C80, v17);
    v20 = v19;

    v21 = sub_100008F6C(v18, v20, &v35);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v34, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = objc_opt_self();
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 PerformScriptWithName:v23 sefwPath:v24 seHandle:v5 logSink:v5];

  if (v25)
  {
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v26;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not perform script, error: %@", v29, 0xCu);
      sub_10000BD44(v30, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

void sub_10008F318(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A0820);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v28 = v8;
    v12 = sub_100008F6C(v10, v11, &v29);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v14 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100349C60, v13);
    v16 = v15;

    v17 = sub_100008F6C(v14, v16, &v29);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v28, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v18 = objc_opt_self();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 PerformOnlyScriptInSEFW:v19 seHandle:v2 logSink:v2];

  if (v20)
  {
    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v21;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not perform script, error: %@", v24, 0xCu);
      sub_10000BD44(v25, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

void sub_10008F69C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A0820);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v28 = v8;
    v12 = sub_100008F6C(v10, v11, &v29);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v14 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100349C40, v13);
    v16 = v15;

    v17 = sub_100008F6C(v14, v16, &v29);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v28, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v18 = objc_opt_self();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 PerformScriptWithName:v19 seHandle:v2 logSink:v2];

  if (v20)
  {
    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v21;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not perform script, error: %@", v24, 0xCu);
      sub_10000BD44(v25, &unk_10039E220, &qword_1002C3D60);
    }

    swift_willThrow();
  }
}

id sub_10008FA20(uint64_t a1)
{
  v3 = *v1;
  if (qword_10039D3A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A0820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    *(v11 + 56) = &type metadata for UInt64;
    *(v11 + 32) = a1;
    v12 = showFunction(signature:_:)(0xD000000000000018, 0x8000000100349C20, v11);
    v14 = v13;

    v15 = sub_100008F6C(v12, v14, &v24);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = [objc_opt_self() PerformScript:a1 seHandle:v1 logSink:v1];
  if (result)
  {
    v17 = result;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v17;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not perform script, error: %@", v20, 0xCu);
      sub_10000BD44(v21, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10008FD60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_10008FDB8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10008FE64()
{
  sub_10000959C(v0 + 2);
  v1 = v0[8];
  sub_1000048A0(v0[7]);
  v2 = v0[11];

  return swift_deallocClassInstance();
}

unint64_t sub_10008FED0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100090134(v1, v10, type metadata accessor for SLAMScript.SEFWDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v3 + 32))(v6, v10, v2);
        countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
        (*(v3 + 8))(v6, v2);
        return countAndFlagsBits;
      }

      goto LABEL_9;
    }

LABEL_8:
    result = *v10;
    v17 = v10[1];
    return result;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *v10;
    v13 = v10[1];
    v14 = v10[3];

    return v12;
  }

LABEL_9:
  sub_10009019C(v10, type metadata accessor for SLAMScript.SEFWDetails);
  return 0xD000000000000027;
}

uint64_t sub_1000900DC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_100090134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009019C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000901FC()
{
  v0 = swift_allocObject();
  v0[2] = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100090670;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008FD60;
  aBlock[3] = &unk_100381F70;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LOBYTE(v1) = [v1 InspectSEFW:v2 closure:v3 error:aBlock];
  _Block_release(v3);

  v4 = aBlock[0];
  if (v1)
  {
    swift_beginAccess();
    v5 = v0[2];
    v6 = v4;
  }

  else
  {
    v5 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_1000903C0(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 isReadableFileAtPath:v5];

  if (v6)
  {
    if (qword_10039D3A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A0820);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100008F6C(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s is readable", v10, 0xCu);
      sub_10000959C(v11);
    }
  }

  else
  {
    sub_100020148(2027, 0, 0, 0);
    swift_willThrow();
  }
}

unint64_t sub_10009058C()
{
  result = qword_1003A0A88;
  if (!qword_1003A0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0A88);
  }

  return result;
}

unint64_t sub_1000905E0()
{
  result = qword_1003A0A90;
  if (!qword_1003A0A90)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0A90);
  }

  return result;
}

uint64_t sub_100090638()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000906A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100090778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SLAMScript.SEFWDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100090834()
{
  type metadata accessor for SLAMScript.SEFWDetails(319);
  if (v0 <= 0x3F)
  {
    sub_1000908E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000908E0()
{
  if (!qword_1003A0B00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A0B00);
    }
  }
}

void sub_100090940()
{
  sub_100090A00(319, &qword_1003A0BC0);
  if (v0 <= 0x3F)
  {
    sub_100090A00(319, &unk_1003A0BC8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100090A00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_100090A5C()
{
  result = qword_1003A0BF8;
  if (!qword_1003A0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0BF8);
  }

  return result;
}

char *sub_100090AB0()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TLV();
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v44 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A1210);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v11;
    v16 = v15;
    v47 = swift_slowAlloc();
    *v16 = 136315394;
    sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    v17 = _typeName(_:qualified:)();
    v42 = v1;
    v19 = sub_100008F6C(v17, v18, &v47);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100349F40, _swiftEmptyArrayStorage);
    v22 = sub_100008F6C(v20, v21, &v47);
    v1 = v42;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    v11 = v40;
  }

  static TLVTag.readerConfigProfileIDs.getter();
  v23 = v43;
  sub_10011EC38(v4, v11);
  if (v23)
  {
    (v1[1])(v4, v0);
  }

  else
  {
    (v1[1])(v4, v0);
    v24 = TLV.children.getter();
    v25 = *(v24 + 16);
    if (v25)
    {
      v39[2] = 0;
      v40 = v11;
      v47 = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v25, 0);
      v4 = v47;
      v26 = *(v46 + 16);
      v27 = *(v46 + 80);
      v39[1] = v24;
      v28 = v24 + ((v27 + 32) & ~v27);
      v41 = *(v46 + 72);
      v42 = v26;
      v46 += 16;
      v43 = (v46 - 8);
      do
      {
        v29 = v44;
        v30 = v45;
        (v42)(v44, v28, v45);
        v31 = TLV.hexStringValue.getter();
        v33 = v32;
        v34 = *v43;
        (*v43)(v29, v30);
        v47 = v4;
        v36 = *(v4 + 2);
        v35 = *(v4 + 3);
        if (v36 >= v35 >> 1)
        {
          sub_10004E2DC((v35 > 1), v36 + 1, 1);
          v4 = v47;
        }

        *(v4 + 2) = v36 + 1;
        v37 = &v4[16 * v36];
        *(v37 + 4) = v31;
        *(v37 + 5) = v33;
        v28 += v41;
        --v25;
      }

      while (v25);
      v34(v40, v45);
    }

    else
    {

      (*(v46 + 8))(v11, v45);
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

uint64_t sub_100090F5C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0C00);
  sub_10000403C(v0, qword_1003A0C00);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

int64x2_t sub_100090FC8()
{
  result = vdupq_n_s64(1uLL);
  *(v0 + 16) = result;
  *(v0 + 32) = 0x2000000;
  *(v0 + 36) = 3;
  *(v0 + 40) = xmmword_1002C4E30;
  *(v0 + 56) = xmmword_1002C4E40;
  *(v0 + 72) = result;
  *(v0 + 88) = 3;
  return result;
}

uint64_t sub_10009100C(uint64_t a1)
{
  *(v1 + 32) = 0x2000000;
  *(v1 + 40) = xmmword_1002C4E30;
  *(v1 + 56) = xmmword_1002C4E40;
  *(v1 + 36) = 3;
  *(v1 + 72) = vdupq_n_s64(1uLL);
  *(v1 + 88) = 3;
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  return v1;
}

id sub_100091050()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000910B0(v0);
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    v4 = v2;
    sub_1000927C8(v3);
  }

  sub_1000927D8(v1);
  return v2;
}

id sub_1000910B0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedHardwareManager];
  v8 = 0;
  v3 = [v2 startSecureElementManagerSessionAndReturnError:&v8];

  v4 = v8;
  if (v3)
  {
    *(a1 + 32) = 1;
    v5 = v4;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void *sub_100091198()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000911F8(v0);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
    v4 = v2;
    sub_1000927C8(v3);
  }

  sub_1000927D8(v1);
  return v2;
}

void *sub_1000911F8(uint64_t a1)
{
  v2 = sub_100091050();
  if (v2)
  {
    v3 = v2;
    if (qword_10039D3C0 != -1)
    {
      swift_once();
    }

    NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  }

  v4 = *(a1 + 16);
  v5 = v4;
  return v4;
}

void sub_100091444()
{
  if (qword_10039D3B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A0C00);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "session ended in status inspector", v2, 2u);
  }
}

uint64_t sub_10009152C()
{
  if (*(v0 + 32) == 1)
  {
    *(v0 + 32) = 0;
    v1 = sub_100091050();
    if (v1)
    {
      v2 = v1;
      v5[4] = sub_100091444;
      v5[5] = 0;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 1107296256;
      v5[2] = sub_100003974;
      v5[3] = &unk_100382028;
      v3 = _Block_copy(v5);
      [v2 endSessionWithCompletion:v3];
      _Block_release(v3);
    }
  }

  sub_1000927C8(*(v0 + 16));
  sub_1000927C8(*(v0 + 24));
  sub_1000927A0(*(v0 + 40), *(v0 + 48));
  sub_100092780(*(v0 + 56));
  sub_1000927A0(*(v0 + 64), *(v0 + 72));
  sub_100092780(*(v0 + 80));
  return v0;
}

uint64_t sub_10009162C()
{
  sub_10009152C();

  return swift_deallocClassInstance();
}

uint64_t sub_100091684()
{
  v1 = *(v0 + 35);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_1000916B8();
    *(v0 + 35) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1000916B8()
{
  v0 = sub_100091050();
  if (v0)
  {
    v1 = v0;
    v6 = sub_10009F524();
    if (qword_10039D3B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A0C00);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "isValidSEPairing: %{BOOL}d", v10, 8u);
    }
  }

  else
  {
    if (qword_10039D3B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000403C(v2, qword_1003A0C00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "StatusInspector has no NFSession so can't validate SE-SEP pairing. Check it next time.", v5, 2u);
    }

    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100091C28()
{
  result = *(v0 + 36);
  if (result == 3)
  {
    if (sub_100091684())
    {
      if (*(v0 + 32) == 1)
      {
        v2 = sub_100091198();
        v3 = v2;
        if (v2)
        {
        }

        result = v3 == 0;
      }

      else
      {
        result = 2;
      }
    }

    else
    {
      result = 1;
    }

    *(v0 + 36) = result;
  }

  return result;
}

uint64_t sub_100091C90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_100091D18();
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    *(v0 + 40) = v3;
    *(v0 + 48) = v6;

    sub_1000927A0(v4, v5);
  }

  sub_1000927B4(v1, v2);
  return v3;
}

void *sub_100091D18()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 0;
  }

  result = sub_100091198();
  if (result)
  {
    v1 = result;
    v2 = sub_10011DBA8();

    return v2;
  }

  return result;
}

char *sub_100091EF0()
{
  v1 = *(v0 + 56);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_100091F50();
    v3 = *(v0 + 56);
    *(v0 + 56) = v2;

    sub_100092780(v3);
  }

  sub_100092790(v1);
  return v2;
}

char *sub_100091F50()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 0;
  }

  result = sub_100091198();
  if (result)
  {
    v1 = result;
    v2 = sub_100090AB0();

    return v2;
  }

  return result;
}

uint64_t sub_10009211C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_1000921A4();
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    *(v0 + 64) = v3;
    *(v0 + 72) = v6;

    sub_1000927A0(v4, v5);
  }

  sub_1000927B4(v1, v2);
  return v3;
}

void *sub_1000921A4()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 0;
  }

  result = sub_100091198();
  if (result)
  {
    v1 = result;
    v2 = sub_10011D5D4();

    return v2;
  }

  return result;
}

uint64_t sub_100092468()
{
  v1 = *(v0 + 80);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000924C8();
    v3 = *(v0 + 80);
    *(v0 + 80) = v2;

    sub_100092780(v3);
  }

  sub_100092790(v1);
  return v2;
}

id sub_1000924C8()
{
  result = sub_100091050();
  if (result)
  {
    v1 = result;
    v2 = [result stateInformation];

    if (v2)
    {
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v3 + 16))
      {
        sub_10000BDA4(v3 + 32, v5);

        sub_100004074(&qword_1003A0190, &unk_1002C4040);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000925A4()
{
  result = *(v0 + 88);
  if (result == 3)
  {
    result = sub_1000925D0();
    *(v0 + 88) = result;
  }

  return result;
}

uint64_t sub_1000925D0()
{
  if ((sub_100091684() & 1) == 0)
  {
    return 1;
  }

  v0 = sub_100091050();
  if (!v0)
  {
    return 2;
  }

  v1 = v0;
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  NFSecureElementManagerSession.select(_:)(AID_PIN_APPLET, *algn_1003A6AB8);

  return 0;
}

uint64_t sub_100092780(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100092790(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000927A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000927B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1000927C8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1000927D8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000927E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100092800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10004E3C4(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v2 + 36);
  v29 = v2 + 72;
  v30 = v1;
  v31 = v8;
  v32 = v2 + 64;
  v33 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v34 = v7;
    v11 = *(*(v2 + 48) + v6);
    v12 = (*(v2 + 56) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    *(v15 + 56) = &type metadata for UInt8;
    *(v15 + 64) = &protocol witness table for UInt8;
    *(v15 + 32) = v11;
    sub_1000094F4(v13, v14);
    v16 = String.init(format:_:)();
    v35 = v17;
    v18 = Data.hexString()();
    result = sub_100009548(v13, v14);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_10004E3C4((v19 > 1), v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v20 + 1;
    v21 = &_swiftEmptyArrayStorage[4 * v20];
    v21[2]._countAndFlagsBits = v16;
    v21[2]._object = v35;
    v21[3] = v18;
    v2 = v33;
    v9 = 1 << *(v33 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v32;
    v22 = *(v32 + 8 * v10);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v29 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_100064AB0(v6, v31, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v6, v31, 0);
    }

LABEL_4:
    v7 = v34 + 1;
    v6 = v9;
    if (v34 + 1 == v30)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100092AE4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0E40);
  sub_10000403C(v0, qword_1003A0E40);
  sub_100023B24();
  return static SPRLogger.kernelManager.getter();
}

uint64_t sub_100092B40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a3;
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v33 = type metadata accessor for URL.DirectoryHint();
  v31 = *(v33 - 8);
  v4 = v31;
  v5 = *(v31 + 64);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_100004074(&qword_1003A03D0, &unk_1002C3D50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KernelManager();
  static KernelManager.getDefaultSEFWPath(isProduction:)();
  v29 = v11;
  v30 = v16;
  v32 = v12;
  (*(v12 + 56))(v10, 1, 1, v11);
  v17 = *(v4 + 104);
  v18 = v33;
  v17(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
  v28 = v17;
  URL.init(filePath:directoryHint:relativeTo:)();
  v30 = *(v12 + 32);
  v30(v38 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultSefwURL, v15, v11);
  v39 = 0xD000000000000021;
  v40 = 0x800000010034A150;
  v19 = enum case for URL.DirectoryHint.notDirectory(_:);
  v17(v7, enum case for URL.DirectoryHint.notDirectory(_:), v18);
  v27 = sub_10008AB88();
  v20 = v35;
  URL.appending<A>(component:directoryHint:)();
  v31 = *(v31 + 8);
  (v31)(v7, v18);
  v22 = v29;
  v21 = v30;
  v30(v38 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL, v15, v29);
  v39 = 0xD00000000000001DLL;
  v40 = 0x800000010034A180;
  v28(v7, v19, v18);
  URL.appending<A>(component:directoryHint:)();
  (*(v32 + 8))(v20, v22);
  (v31)(v7, v18);
  v23 = v38;
  v21(v38 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL, v15, v22);
  v24 = (v23 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_seid);
  v25 = v37;
  *v24 = v36;
  v24[1] = v25;
  *(v23 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_isProduction) = v34;
  return v23;
}

uint64_t sub_100092F30(void *a1)
{
  v4 = *v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0E40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034A130, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_100097438(a1);
  if (v2)
  {
    return 0;
  }

  v16 = dispatch thunk of KernelManager.useLegacyFlow.getter();

  return v16 & 1;
}

id sub_100093144(void *a1)
{
  v4 = *v1;
  v5 = type metadata accessor for KernelManager.DeviceStateType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v36[1] = sub_10000403C(v10, qword_1003A0E40);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v37 = v9;
  v38 = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v36[0] = v5;
    v15 = v14;
    v39 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, &v39);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0xD000000000000018, 0x800000010034A110, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, &v39);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v36[0];
  }

  sub_100097438(a1);
  if (v2)
  {
    return v12;
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v22 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v22 + 104) > 0 || *(v22 + 112) == 1)
  {
    result = [*(v22 + 88) wait];
  }

  v24 = *(v22 + 96);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 96) = v26;
    [*(v22 + 88) unlock];
    v27 = *(v22 + 72);
    result = [*(v22 + 88) lock];
    v28 = *(v22 + 96);
    v25 = __OFSUB__(v28, 1);
    v29 = v28 - 1;
    if (!v25)
    {
      *(v22 + 96) = v29;
      if (!v29)
      {
        [*(v22 + 88) broadcast];
      }

      [*(v22 + 88) unlock];
      if (v27)
      {
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Detected an SEFW update. Querying minimal device state.", v32, 2u);
        }

        v33 = &enum case for KernelManager.DeviceStateType.minimal(_:);
      }

      else
      {
        v33 = &enum case for KernelManager.DeviceStateType.normal(_:);
      }

      v35 = v37;
      v34 = v38;
      (*(v38 + 104))(v37, *v33, v5);
      dispatch thunk of KernelManager.getDeviceState(_:)();
      (*(v34 + 8))(v35, v5);
      v12 = sub_1000935D0();

      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000935D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v63 = sub_10018436C(_swiftEmptyArrayStorage);
  v11 = BeeStateInfo.capks.getter();
  if (v11)
  {
    v12 = sub_100092800(v11);

    if (v12[2])
    {
      sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
      v13 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v13 = &_swiftEmptyDictionarySingleton;
    }

    v61._countAndFlagsBits = v13;

    sub_100097BDC(v14, 1, &v61);

    countAndFlagsBits = v61._countAndFlagsBits;
    *(&v62 + 1) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    v61._countAndFlagsBits = countAndFlagsBits;
    sub_10002D530(&v61, 0);
  }

  v16 = BeeStateInfo.configurationId.getter();
  if (v17 >> 60 != 15)
  {
    v18 = v16;
    v19 = v17;
    v20 = Data.hexString()();
    sub_10005D568(v20._countAndFlagsBits, v20._object, v10);
    if ((*(v2 + 48))(v10, 1, v1) == 1)
    {
      sub_10000BD44(v10, &qword_1003A0178, &unk_1002C3BB0);
      v61 = 0;
      v62 = 0u;
    }

    else
    {
      v21 = UUID.uuidString.getter();
      *(&v62 + 1) = &type metadata for String;
      v61._countAndFlagsBits = v21;
      v61._object = v22;
      (*(v2 + 8))(v10, v1);
    }

    sub_10002D530(&v61, 1);
    sub_10001A074(v18, v19);
  }

  v23 = BeeStateInfo.terminalProfiles.getter();
  if (!v23)
  {
LABEL_35:
    *(&v62 + 1) = type metadata accessor for BeeStateInfo.SystemStatus();
    sub_10000BE5C(&v61._countAndFlagsBits);
    BeeStateInfo.status.getter();
    sub_10002D530(&v61, 3);
    v46 = BeeStateInfo.jsblSequenceCounter.getter();
    *(&v62 + 1) = &type metadata for String;
    v61._countAndFlagsBits = v46;
    v61._object = v47;
    sub_10002D530(&v61, 4);
    v48 = BeeStateInfo.loadAndInstallBundleId.getter();
    *(&v62 + 1) = &type metadata for String;
    v61._countAndFlagsBits = v48;
    v61._object = v49;
    sub_10002D530(&v61, 5);
    v50 = BeeStateInfo.hardwareType.getter();
    *(&v62 + 1) = &type metadata for Int;
    v61._countAndFlagsBits = v50;
    sub_10002D530(&v61, 6);
    return v63;
  }

  v24 = v23;
  v56 = v0;
  v25 = *(v23 + 16);
  if (!v25)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_34:

    *(&v62 + 1) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v61._countAndFlagsBits = v57;
    sub_10002D530(&v61, 2);
    goto LABEL_35;
  }

  v52 = 0;
  v59 = v1;
  v26 = 0;
  v27 = v23 + 32;
  v58 = (v2 + 48);
  v53 = (v2 + 8);
  v54 = (v2 + 32);
  v57 = _swiftEmptyArrayStorage;
  while (v26 < *(v24 + 16))
  {
    v28 = (v27 + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    ++v26;
    sub_1000094F4(*v28, v29);
    v31 = Data.hexString()();
    if (String.count.getter() == 32)
    {
      v32 = (v31._object >> 56) & 0xF;
      v61 = v31;
      if ((v31._object & 0x2000000000000000) == 0)
      {
        v32 = v31._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      *&v62 = 0;
      *(&v62 + 1) = v32;

      while (String.Iterator.next()().value._object)
      {
        Character.hexDigitValue.getter();
        v34 = v33;

        if (v34)
        {

          goto LABEL_25;
        }
      }

      v61 = v31;

      String.index(_:offsetBy:)();
      String.insert(_:at:)();
      String.index(_:offsetBy:)();
      String.insert(_:at:)();
      String.index(_:offsetBy:)();
      String.insert(_:at:)();
      String.index(_:offsetBy:)();

      String.insert(_:at:)();
      v35 = v60;
      UUID.init(uuidString:)();

      if (!(*v58)(v35, 1, v59))
      {
        v36 = v55;
        v37 = v35;
        v38 = v59;
        (*v54)(v55, v37, v59);
        v39 = UUID.uuidString.getter();
        v41 = v40;
        sub_100009548(v30, v29);
        (*v53)(v36, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10004D4B0(0, *(v57 + 2) + 1, 1, v57);
        }

        v43 = *(v57 + 2);
        v42 = *(v57 + 3);
        if (v43 >= v42 >> 1)
        {
          v57 = sub_10004D4B0((v42 > 1), v43 + 1, 1, v57);
        }

        v44 = v57;
        *(v57 + 2) = v43 + 1;
        v45 = &v44[16 * v43];
        *(v45 + 4) = v39;
        *(v45 + 5) = v41;
        goto LABEL_26;
      }

      sub_10000BD44(v35, &qword_1003A0178, &unk_1002C3BB0);
    }

    else
    {
    }

LABEL_25:
    sub_100009548(v30, v29);
LABEL_26:
    if (v26 == v25)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_100093C7C(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v183 = a2;
  v156 = a1;
  v165 = *v2;
  v180 = type metadata accessor for URL.DirectoryHint();
  v162 = *(v180 - 8);
  v5 = *(v162 + 64);
  __chkstk_darwin(v180);
  v179 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v181 = &v154 - v12;
  v182 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v13 = *(*(v182 - 8) + 64);
  v14 = __chkstk_darwin(v182);
  v184 = (&v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v178 = &v154 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v154 - v19;
  v21 = __chkstk_darwin(v18);
  v173 = (&v154 - v22);
  __chkstk_darwin(v21);
  v159 = &v154 - v23;
  v188 = type metadata accessor for URL();
  v24 = *(v188 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v188);
  v166 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v187 = &v154 - v29;
  v30 = __chkstk_darwin(v28);
  v169 = &v154 - v31;
  __chkstk_darwin(v30);
  v174 = (&v154 - v32);
  v33 = type metadata accessor for ProfileScript();
  v175 = *(v33 - 8);
  v176 = v33;
  v34 = *(v175 + 64);
  v35 = __chkstk_darwin(v33);
  v164 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v163 = &v154 - v38;
  v39 = __chkstk_darwin(v37);
  v168 = &v154 - v40;
  __chkstk_darwin(v39);
  v167 = &v154 - v41;
  v42 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v160 = &v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v158 = &v154 - v47;
  v48 = __chkstk_darwin(v46);
  v171 = &v154 - v49;
  __chkstk_darwin(v48);
  v51 = &v154 - v50;
  v52 = type metadata accessor for SLAMScript(0);
  v172 = *(v52 - 1);
  v53 = *(v172 + 64);
  v54 = __chkstk_darwin(v52);
  v186 = &v154 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v177 = &v154 - v57;
  __chkstk_darwin(v56);
  v170 = &v154 - v58;
  if (qword_10039D3B8 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v59 = type metadata accessor for Logger();
    v60 = sub_10000403C(v59, qword_1003A0E40);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v185 = v24;
    v157 = v4;
    v161 = v11;
    v155 = v60;
    v154 = v20;
    if (v63)
    {
      v64 = v52;
      v65 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = _typeName(_:qualified:)();
      v68 = sub_100008F6C(v66, v67, &v189);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      v69 = showFunction(signature:_:)(0xD00000000000001DLL, 0x800000010034A0F0, _swiftEmptyArrayStorage);
      v71 = sub_100008F6C(v69, v70, &v189);

      *(v65 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v61, v62, "%s.%s", v65, 0x16u);
      swift_arrayDestroy();

      v72 = v64;

      v73 = v177;
      v24 = v173;
    }

    else
    {

      v73 = v177;
      v24 = v173;
      v72 = v52;
    }

    v52 = _s14InstallPackageVMa(0);
    v74 = v183;
    sub_100065074(v183 + v52[7], v51, &qword_1003A03F0, &qword_1002C3D88);
    v20 = (v172 + 48);
    v75 = *(v172 + 48);
    v76 = v75(v51, 1, v72);
    v165 = v75;
    if (v76 == 1)
    {
      sub_10000BD44(v51, &qword_1003A03F0, &qword_1002C3D88);
      v174 = _swiftEmptyArrayStorage;
      v77 = v171;
    }

    else
    {
      v24 = v170;
      sub_10009803C(v51, v170);
      v78 = v159;
      sub_100097FD4(v24, v159, type metadata accessor for SLAMScript.SEFWDetails);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        (*(v185 + 32))(v174, v78, v188);
      }

      else
      {
        sub_10008FED0();
        (*(v185 + 56))(v181, 1, 1, v188);
        v24 = v179;
        (*(v162 + 104))(v179, enum case for URL.DirectoryHint.inferFromPath(_:), v180);
        v74 = v183;
        URL.init(filePath:directoryHint:relativeTo:)();
        sub_10009019C(v78, type metadata accessor for SLAMScript.SEFWDetails);
      }

      v79 = *(v74 + v52[14]);
      v51 = *(v79 + 16);
      if (v51)
      {
        v159 = v72;
        v189 = _swiftEmptyArrayStorage;
        sub_10004E4A8(0, v51, 0);
        v80 = v189;
        v4 = (v79 + 32);
        while (1)
        {
          v81 = *v4++;
          v11 = v81;
          if ((v81 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v11 > 0xFF)
          {
            goto LABEL_88;
          }

          v189 = v80;
          v83 = v80[2];
          v82 = v80[3];
          v24 = v83 + 1;
          if (v83 >= v82 >> 1)
          {
            sub_10004E4A8((v82 > 1), v83 + 1, 1);
            v80 = v189;
          }

          v80[2] = v24;
          *(v80 + v83 + 32) = v11;
          if (!--v51)
          {
            v74 = v183;
            v72 = v159;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_18:
      v84 = v20;
      v85 = v167;
      ProfileScript.init(profileScriptPath:kernelIdentifiers:)();
      (*(v175 + 16))(v168, v85, v176);
      v86 = sub_10004DEB8(0, 1, 1, _swiftEmptyArrayStorage);
      v88 = v86[2];
      v87 = v86[3];
      v174 = v86;
      v77 = v171;
      v89 = v74;
      if (v88 >= v87 >> 1)
      {
        v174 = sub_10004DEB8(v87 > 1, v88 + 1, 1, v174);
      }

      v91 = v175;
      v90 = v176;
      (*(v175 + 8))(v167, v176);
      sub_10009019C(v170, type metadata accessor for SLAMScript);
      v92 = v174;
      v174[2] = v88 + 1;
      (*(v91 + 32))(v92 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v88, v168, v90);
      v73 = v177;
      v24 = v173;
      v75 = v165;
      v74 = v89;
      v20 = v84;
    }

    sub_100065074(v74 + v52[8], v77, &qword_1003A03F0, &qword_1002C3D88);
    if (v75(v77, 1, v72) == 1)
    {
      sub_10000BD44(v77, &qword_1003A03F0, &qword_1002C3D88);
      goto LABEL_39;
    }

    v159 = v72;
    sub_10009803C(v77, v73);
    sub_100097FD4(v73, v24, type metadata accessor for SLAMScript.SEFWDetails);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      (*(v185 + 32))(v169, v24, v188);
    }

    else
    {
      sub_10008FED0();
      (*(v185 + 56))(v181, 1, 1, v188);
      v93 = v24;
      v24 = v179;
      (*(v162 + 104))(v179, enum case for URL.DirectoryHint.inferFromPath(_:), v180);
      v74 = v183;
      URL.init(filePath:directoryHint:relativeTo:)();
      sub_10009019C(v93, type metadata accessor for SLAMScript.SEFWDetails);
    }

    v94 = *(v74 + v52[14]);
    v51 = *(v94 + 16);
    if (!v51)
    {
      break;
    }

    v189 = _swiftEmptyArrayStorage;
    sub_10004E4A8(0, v51, 0);
    v95 = v189;
    v4 = (v94 + 32);
    while (1)
    {
      v96 = *v4++;
      v11 = v96;
      if ((v96 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v11 > 0xFF)
      {
        goto LABEL_90;
      }

      v189 = v95;
      v98 = v95[2];
      v97 = v95[3];
      v24 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        sub_10004E4A8((v97 > 1), v98 + 1, 1);
        v95 = v189;
      }

      v95[2] = v24;
      *(v95 + v98 + 32) = v11;
      if (!--v51)
      {
        v74 = v183;
        goto LABEL_34;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

LABEL_34:
  v99 = v163;
  ProfileScript.init(profileScriptPath:kernelIdentifiers:)();
  (*(v175 + 16))(v164, v99, v176);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v174 = sub_10004DEB8(0, v174[2] + 1, 1, v174);
  }

  v72 = v159;
  v101 = v174[2];
  v100 = v174[3];
  v102 = v74;
  if (v101 >= v100 >> 1)
  {
    v174 = sub_10004DEB8(v100 > 1, v101 + 1, 1, v174);
  }

  v104 = v175;
  v103 = v176;
  (*(v175 + 8))(v163, v176);
  sub_10009019C(v177, type metadata accessor for SLAMScript);
  v105 = v174;
  v174[2] = v101 + 1;
  (*(v104 + 32))(v105 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v101, v164, v103);
  v75 = v165;
  v74 = v102;
LABEL_39:
  v106 = (v74 + v52[15]);
  v107 = v106[1];
  if (v107 >> 60 == 15)
  {
    sub_100020148(2045, 0xD000000000000016, 0x800000010034A0D0, 0);
    swift_willThrow();

    return (v52 & 1);
  }

  v108 = v72;
  v109 = *v106;
  v110 = v74 + v52[5];
  v111 = v74;
  v112 = v158;
  sub_100065074(v110, v158, &qword_1003A03F0, &qword_1002C3D88);
  LODWORD(v171) = 1;
  v113 = v75(v112, 1, v108);
  v169 = v109;
  v170 = v107;
  sub_1000094F4(v109, v107);
  sub_10000BD44(v112, &qword_1003A03F0, &qword_1002C3D88);
  if (v113 != 1)
  {
LABEL_53:
    v122 = v111;
    v123 = v160;
    sub_100065074(v111 + v52[6], v160, &qword_1003A03F0, &qword_1002C3D88);
    if (v75(v123, 1, v108) == 1)
    {
      sub_10000BD44(v123, &qword_1003A03F0, &qword_1002C3D88);
      v124 = 1;
      v125 = v161;
      v126 = v185;
    }

    else
    {
      v127 = v154;
      sub_100097FD4(v123, v154, type metadata accessor for SLAMScript.SEFWDetails);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v125 = v161;
      v126 = v185;
      if (EnumCaseMultiPayload == 5)
      {
        (*(v185 + 32))(v161, v127, v188);
      }

      else
      {
        sub_10008FED0();
        (*(v126 + 56))(v181, 1, 1, v188);
        (*(v162 + 104))(v179, enum case for URL.DirectoryHint.inferFromPath(_:), v180);
        v123 = v160;
        v122 = v183;
        URL.init(filePath:directoryHint:relativeTo:)();
        sub_10009019C(v127, type metadata accessor for SLAMScript.SEFWDetails);
      }

      sub_10009019C(v123, type metadata accessor for SLAMScript);
      v124 = 0;
    }

    v176 = *(v126 + 56);
    v177 = v126 + 56;
    v176(v125, v124, 1, v188);
    v129 = *v122;
    v130 = *(*v122 + 16);
    v131 = _swiftEmptyArrayStorage;
    if (!v130)
    {
LABEL_77:
      v147 = v174;
      LOBYTE(v52) = v171;
      if ((v171 & 1) != 0 || (*(v126 + 48))(v125, 1, v188) != 1 || v131[2] || v147[2])
      {
        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 67109120;
          *(v150 + 4) = v52 & 1;
          _os_log_impl(&_mh_execute_header, v148, v149, "Generating a kernel asset with updatedAsset: %{BOOL}d", v150, 8u);
        }

        sub_100065074(v125, v181, &qword_1003A03D0, &unk_1002C3D50);

        v151 = v156;
        KernelAsset.init(updatedAsset:kernelMap:configurationScript:capkScripts:terminalProfileScripts:)();
        v152 = 0;
      }

      else
      {
        sub_10001A074(v169, v170);

        v152 = 1;
        v151 = v156;
      }

      v153 = type metadata accessor for KernelAsset();
      (*(*(v153 - 8) + 56))(v151, v152, 1, v153);
      sub_10000BD44(v125, &qword_1003A03D0, &unk_1002C3D50);

      return (v52 & 1);
    }

    v189 = _swiftEmptyArrayStorage;
    sub_10004E464(0, v130, 0);
    v131 = v189;
    v132 = v129 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
    v183 = *(v172 + 72);
    v133 = (v126 + 32);
    v172 = 0x8000000100349BF0;
    v173 = (v126 + 8);
    LODWORD(v175) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v134 = (v162 + 104);
    v135 = v178;
    while (1)
    {
      v136 = v186;
      sub_100097FD4(v132, v186, type metadata accessor for SLAMScript);
      sub_100097FD4(v136, v135, type metadata accessor for SLAMScript.SEFWDetails);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        break;
      }

      sub_10009019C(v136, type metadata accessor for SLAMScript);
      (*v133)(v187, v135, v188);
LABEL_73:
      v189 = v131;
      v146 = v131[2];
      v145 = v131[3];
      if (v146 >= v145 >> 1)
      {
        sub_10004E464(v145 > 1, v146 + 1, 1);
        v135 = v178;
        v131 = v189;
      }

      v131[2] = v146 + 1;
      (*(v185 + 32))(v131 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v146, v187, v188);
      v132 += v183;
      if (!--v130)
      {
        v125 = v161;
        v126 = v185;
        goto LABEL_77;
      }
    }

    sub_100097FD4(v136, v184, type metadata accessor for SLAMScript.SEFWDetails);
    v137 = swift_getEnumCaseMultiPayload();
    if (v137 > 1)
    {
      if (v137 != 2)
      {
        if (v137 == 5)
        {
          v141 = v166;
          v142 = v188;
          (*v133)(v166, v184, v188);
          URL.path(percentEncoded:)(0);
          (*v173)(v141, v142);
          goto LABEL_72;
        }

LABEL_71:
        sub_10009019C(v184, type metadata accessor for SLAMScript.SEFWDetails);
        goto LABEL_72;
      }
    }

    else if (v137)
    {
      if (v137 == 1)
      {
        v138 = *v184;
        v139 = v184[1];
        v140 = v184[3];

LABEL_72:
        v176(v181, 1, 1, v188);
        (*v134)(v179, v175, v180);
        URL.init(filePath:directoryHint:relativeTo:)();
        sub_10009019C(v186, type metadata accessor for SLAMScript);
        v135 = v178;
        sub_10009019C(v178, type metadata accessor for SLAMScript.SEFWDetails);
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    v143 = *v184;
    v144 = v184[1];
    goto LABEL_72;
  }

  v114 = v75;
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v115 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v115 + 104) > 0 || *(v115 + 112) == 1)
  {
    result = [*(v115 + 88) wait];
  }

  v117 = *(v115 + 96);
  v118 = __OFADD__(v117, 1);
  v119 = v117 + 1;
  if (v118)
  {
    __break(1u);
  }

  else
  {
    *(v115 + 96) = v119;
    [*(v115 + 88) unlock];
    LODWORD(v171) = *(v115 + 72);
    result = [*(v115 + 88) lock];
    v120 = *(v115 + 96);
    v118 = __OFSUB__(v120, 1);
    v121 = v120 - 1;
    if (!v118)
    {
      *(v115 + 96) = v121;
      if (!v121)
      {
        [*(v115 + 88) broadcast];
      }

      [*(v115 + 88) unlock];
      v111 = v183;
      v75 = v114;
      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}

char *sub_100095314(void *a1)
{
  v3 = v2;
  v5 = *v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A0E40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD00000000000002CLL, 0x800000010034A0A0, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v23);

    *(v9 + 14) = v15;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100097438(a1);
  if (!v3)
  {
    dispatch thunk of KernelManager.executeServerAsset(_:progress:)();
    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v17 = static GlobalState.shared;
    result = [*(static GlobalState.shared + 88) lock];
    v18 = *(v17 + 104);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v17 + 104) = v20;
      while (*(v17 + 96) > 0 || *(v17 + 112) == 1)
      {
        result = [*(v17 + 88) wait];
      }

      v21 = *(v17 + 104);
      v19 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (!v19)
      {
        *(v17 + 104) = v22;
        *(v17 + 112) = 1;
        [*(v17 + 88) unlock];
        *(v17 + 72) = 0;
        sub_100173040();
        [*(v17 + 88) lock];
        *(v17 + 112) = 0;
        [*(v17 + 88) broadcast];
        [*(v17 + 88) unlock];
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100095654(void *a1)
{
  v3 = v2;
  v5 = *v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A0E40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v17 = a1;
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000029, 0x800000010034A070, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v18);

    *(v9 + 14) = v15;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();

    a1 = v17;
  }

  result = sub_100097438(a1);
  if (!v3)
  {
    dispatch thunk of KernelManager.evaluateServerAsset(_:)();
  }

  return result;
}

char *sub_100095890(void *a1)
{
  v4 = *v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A0E40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD00000000000001CLL, 0x800000010034A050, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100097438(a1);
  if (!v2)
  {
    dispatch thunk of KernelManager.removeUnusedAssets()();
  }

  return result;
}

char *sub_100095A94(void *a1)
{
  v3 = v2;
  v5 = *v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A0E40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD00000000000001FLL, 0x800000010034A030, &_swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v17);
    v3 = v2;

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100097438(a1);
  if (!v3)
  {
    dispatch thunk of KernelManager.deleteAll(forRecovery:)();
  }

  return result;
}

uint64_t sub_100095CC0(uint64_t a1, int a2)
{
  v3 = v2;
  v106 = a2;
  v5 = *v3;
  v101 = v3;
  v6 = type metadata accessor for CocoaError.Code();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  (__chkstk_darwin)();
  v95 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = (__chkstk_darwin)();
  v14 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v108 = &v91[-v16];
  __chkstk_darwin(v15);
  v18 = &v91[-v17];
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000403C(v19, qword_1003A0E40);
  v21 = v10[2];
  v105 = a1;
  v21(v18, a1, v9);
  v100 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v107 = v10 + 2;
  v104 = v10;
  v98 = v14;
  v102 = v21;
  if (v24)
  {
    v25 = v9;
    v26 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v109 = v93;
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = sub_100008F6C(v27, v28, &v109);
    v92 = v23;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C1670;
    *(v31 + 56) = v25;
    v32 = sub_10000BE5C((v31 + 32));
    v21(v32, v18, v25);
    if (v106)
    {
      v33 = 0x574645535F41544FLL;
    }

    else
    {
      v33 = 0x5F544C5541464544;
    }

    v34 = 0xEC00000057464553;
    if (v106)
    {
      v34 = 0xE800000000000000;
    }

    *(v31 + 88) = &type metadata for String;
    *(v31 + 64) = v33;
    *(v31 + 72) = v34;
    v94 = v34;
    v35 = showFunction(signature:_:)(0xD000000000000018, 0x800000010034A010, v31);
    v36 = v10;
    v38 = v37;

    v103 = v36[1];
    v103(v18, v25);
    v39 = sub_100008F6C(v35, v38, &v109);

    *(v26 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v22, v92, "%s.%s", v26, 0x16u);
    swift_arrayDestroy();

    v9 = v25;

    if ((v106 & 1) == 0)
    {
LABEL_10:

      v40 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
      goto LABEL_19;
    }
  }

  else
  {

    v103 = v10[1];
    v103(v18, v9);
    if (v106)
    {
      v33 = 0x574645535F41544FLL;
    }

    else
    {
      v33 = 0x5F544C5541464544;
    }

    v41 = 0xE800000000000000;
    if ((v106 & 1) == 0)
    {
      v41 = 0xEC00000057464553;
    }

    v94 = v41;
    if ((v106 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v40 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL;
  if (v42)
  {
    v40 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
  }

LABEL_19:
  v43 = v102;
  v102(v108, v101 + *v40, v9);
  v44 = objc_opt_self();
  v45 = [v44 defaultManager];
  URL._bridgeToObjectiveC()(v46);
  v48 = v47;
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  v109 = 0;
  v52 = [v45 copyItemAtURL:v48 toURL:v50 error:&v109];

  v53 = v109;
  if (v52)
  {
    goto LABEL_20;
  }

  v66 = v109;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v67 = v95;
  static CocoaError.fileWriteFileExists.getter();
  sub_100097F8C(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code);
  v68 = v97;
  LOBYTE(v66) = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v96 + 8))(v67, v68);
  if ((v66 & 1) == 0)
  {
    return (v103)(v108, v9);
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v109 = v72;
    *v71 = 136315138;
    v73 = v43;
    v74 = sub_100008F6C(v33, v94, &v109);

    *(v71 + 4) = v74;
    v43 = v73;
    _os_log_impl(&_mh_execute_header, v69, v70, "Previous firmware of type %s exists, removing and replacing", v71, 0xCu);
    sub_10000959C(v72);
  }

  v75 = [v44 defaultManager];
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  v109 = 0;
  v79 = [v75 removeItemAtURL:v77 error:&v109];

  v53 = v109;
  if (!v79)
  {
    goto LABEL_29;
  }

  v80 = v109;
  v81 = [v44 defaultManager];
  URL._bridgeToObjectiveC()(v82);
  v84 = v83;
  URL._bridgeToObjectiveC()(v85);
  v87 = v86;
  v109 = 0;
  v88 = [v81 copyItemAtURL:v84 toURL:v86 error:&v109];

  v53 = v109;
  if ((v88 & 1) == 0)
  {
LABEL_29:
    v90 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v103)(v108, v9);
  }

  v99 = 0;
LABEL_20:
  v54 = v53;
  v55 = v98;
  v43(v98, v108, v9);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v109 = v59;
    *v58 = 136315138;
    sub_100097F8C(&qword_1003A3C40, &type metadata accessor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v63 = v103;
    v103(v55, v9);
    v64 = sub_100008F6C(v60, v62, &v109);

    *(v58 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v56, v57, "Save %s", v58, 0xCu);
    sub_10000959C(v59);

    return v63(v108, v9);
  }

  else
  {

    v89 = v103;
    v103(v55, v9);
    return v89(v108, v9);
  }
}

id sub_1000966E0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A0E40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v57 = a1;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v58);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0x7269466863746566, 0xEF2928657261776DLL, &_swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v58);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultSefwURL;
  result = URL.generateSHA256Digest()();
  if (!v2)
  {
    v55 = result;
    v56 = v18;
    v19 = objc_opt_self();
    v20 = [v19 defaultManager];
    v21 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
    URL.path(percentEncoded:)(0);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v20 fileExistsAtPath:v22];

    if (v23)
    {
      v24 = URL.generateSHA256Digest()();
      v22 = v24;
      v53 = v25;
      v36 = sub_10017688C(v24, v25, v55, v56);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      if (v36)
      {
        if (v39)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Found an existing default SE FW file. Will check for OTA patches.", v40, 2u);
        }

        v41 = [v19 defaultManager];
        v42 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL;
        URL.path(percentEncoded:)(0);
        v43 = String._bridgeToObjectiveC()();

        v44 = [v41 fileExistsAtPath:v43];
        sub_100009548(v22, v53);
        sub_100009548(v55, v56);

        v45 = type metadata accessor for URL();
        if (v44)
        {
          v46 = v3 + v42;
        }

        else
        {
          v46 = v3 + v21;
        }

        return (*(*(v45 - 8) + 16))(v57, v46, v45);
      }

      if (v39)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Detected an iOS update. Will use the default SLAM.", v47, 2u);
      }

      if (qword_10039D708 == -1)
      {
LABEL_28:
        v48 = static GlobalState.shared;
        result = [*(static GlobalState.shared + 88) lock];
        v49 = *(v48 + 104);
        v31 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v31)
        {
          __break(1u);
        }

        else
        {
          *(v48 + 104) = v50;
          while (*(v48 + 96) > 0 || *(v48 + 112) == 1)
          {
            result = [*(v48 + 88) wait];
          }

          v51 = *(v48 + 104);
          v31 = __OFSUB__(v51, 1);
          v52 = v51 - 1;
          if (!v31)
          {
            *(v48 + 104) = v52;
            *(v48 + 112) = 1;
            [*(v48 + 88) unlock];
            *(v48 + 72) = 1;
            sub_100173040();
            [*(v48 + 88) lock];
            *(v48 + 112) = 0;
            [*(v48 + 88) broadcast];
            [*(v48 + 88) unlock];
            sub_100096E24(1);
            sub_100095CC0(v3 + v16, 0);
            sub_100009548(v22, v54);
            goto LABEL_19;
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Detected a fresh install of kernels. Using the default SLAM.", v28, 2u);
      }

      if (qword_10039D708 != -1)
      {
        swift_once();
      }

      v29 = static GlobalState.shared;
      [*(static GlobalState.shared + 88) lock];
      v30 = *(v29 + 104);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        __break(1u);
      }

      else
      {
        *(v29 + 104) = v32;
        while (*(v29 + 96) > 0 || *(v29 + 112) == 1)
        {
          [*(v29 + 88) wait];
        }

        v33 = *(v29 + 104);
        v31 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (!v31)
        {
          *(v29 + 104) = v34;
          *(v29 + 112) = 1;
          [*(v29 + 88) unlock];
          *(v29 + 72) = 1;
          sub_100173040();
          [*(v29 + 88) lock];
          *(v29 + 112) = 0;
          [*(v29 + 88) broadcast];
          [*(v29 + 88) unlock];
          sub_100095CC0(v3 + v16, 0);
LABEL_19:
          sub_100009548(v55, v56);
          v35 = type metadata accessor for URL();
          return (*(*(v35 - 8) + 16))(v57, v3 + v16, v35);
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100096E24(char a1)
{
  v3 = v1;
  v5 = *v1;
  v55 = type metadata accessor for URL();
  v57 = *(v55 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v55);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v8 = 0x574645535F41544FLL;
  v9 = type metadata accessor for Logger();
  v54 = sub_10000403C(v9, qword_1003A0E40);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51 = v3;
    v58 = v13;
    *v12 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v58);
    v52 = v2;
    v17 = v16;

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1002C1660;
    if (a1)
    {
      v19 = 0x574645535F41544FLL;
    }

    else
    {
      v19 = 0x5F544C5541464544;
    }

    v20 = 0xEC00000057464553;
    if (a1)
    {
      v20 = 0xE800000000000000;
    }

    *(v18 + 56) = &type metadata for String;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v53 = v20;
    v21 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100349FF0, v18);
    v22 = a1;
    v24 = v23;

    v25 = sub_100008F6C(v21, v24, &v58);
    a1 = v22;
    v8 = v19;

    *(v12 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    v3 = v51;
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      v8 = 0x5F544C5541464544;
    }

    v26 = 0xE800000000000000;
    if ((a1 & 1) == 0)
    {
      v26 = 0xEC00000057464553;
    }

    v53 = v26;
  }

  v27 = v57;
  v28 = v55;
  if (a1)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL;
    if (v29)
    {
      v30 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
    }
  }

  else
  {

    v30 = &OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL;
  }

  v31 = v56;
  (*(v27 + 16))(v56, v3 + *v30, v28);
  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  URL.path(percentEncoded:)(0);
  v34 = String._bridgeToObjectiveC()();

  v35 = [v33 fileExistsAtPath:v34];

  if (v35)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = v39;
      *v38 = 136315138;
      v40 = sub_100008F6C(v8, v53, &v58);

      *(v38 + 4) = v40;
      v27 = v57;
      _os_log_impl(&_mh_execute_header, v36, v37, "Removing firmware of type %s", v38, 0xCu);
      sub_10000959C(v39);
      v31 = v56;
    }

    v41 = [v32 defaultManager];
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v58 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v58];

    if (v45)
    {
      v46 = *(v27 + 8);
      v47 = v58;
      return v46(v31, v28);
    }

    v49 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v27 + 8))(v31, v28);
}

char *sub_100097438(void *a1)
{
  v3 = v2;
  v4 = v1;
  v58 = a1;
  v5 = *v1;
  v6 = type metadata accessor for SESessionWrapper();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v60 = *(v9 - 8);
  v10 = v60[8];
  v11 = __chkstk_darwin(v9);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v52 - v14;
  __chkstk_darwin(v13);
  v61 = &v52 - v16;
  if (qword_10039D3B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v55 = sub_10000403C(v17, qword_1003A0E40);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v2;
    v62 = v21;
    *v20 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = sub_100008F6C(v22, v23, &v62);
    v59 = v4;
    v25 = v9;
    v26 = v24;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = showFunction(signature:_:)(0xD00000000000001ALL, 0x8000000100349FD0, &_swiftEmptyArrayStorage);
    v29 = sub_100008F6C(v27, v28, &v62);

    *(v20 + 14) = v29;
    v9 = v25;
    v4 = v59;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
    v3 = v54;
  }

  v30 = v61;
  sub_1000966E0(v61);
  if (!v3)
  {
    v59 = v4;
    v31 = v60[2];
    v31(v15, v30, v9);
    v32 = Logger.logObject.getter();
    v33 = v15;
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v34))
    {
      v35 = swift_slowAlloc();
      v53 = v35;
      v54 = swift_slowAlloc();
      v62 = v54;
      *v35 = 136315138;
      sub_100097F8C(&qword_1003A3C40, &type metadata accessor for URL);
      v36 = v31;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v9;
      v40 = v39;
      v55 = v60[1];
      v55(v33, v38);
      v41 = v37;
      v31 = v36;
      v42 = sub_100008F6C(v41, v40, &v62);
      v9 = v38;
      v30 = v61;

      v43 = v53;
      *(v53 + 1) = v42;
      _os_log_impl(&_mh_execute_header, v32, v34, "Initializing a KernelManager at %s", v43, 0xCu);
      sub_10000959C(v54);
    }

    else
    {

      v55 = v60[1];
      v55(v33, v9);
    }

    v44 = *(v59 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_seid);
    v45 = *(v59 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_seid + 8);
    v46 = *(v59 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_isProduction);

    v47 = v58;
    SESessionWrapper.init(seid:isProduction:session:)();
    v31(v57, v30, v9);
    v48 = type metadata accessor for KernelManager();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v15 = KernelManager.init(seWrapper:sefw:)();
    v55(v30, v9);
  }

  return v15;
}

uint64_t sub_1000979E4()
{
  v1 = OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultSefwURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_defaultTempSefwURL, v2);
  v3(v0 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_otaTempSefwURL, v2);
  v4 = *(v0 + OBJC_IVAR____TtC14softposreaderd20KernelManagerWrapper_seid + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KernelManagerWrapper()
{
  result = qword_1003A0EA8;
  if (!qword_1003A0EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100097B34()
{
  result = type metadata accessor for URL();
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

uint64_t sub_100097BDC(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1000F5A28(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10017E398(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_1000F5A28(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_100181F14();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100347B20;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_1000F5A28(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_10017E398(v32, 1);
        v33 = *a3;
        v28 = sub_1000F5A28(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v28);
      *v37 = v26;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100097F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100097FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009803C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SLAMScript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000980A0()
{
  v0 = type metadata accessor for SEMemoryInfo();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  KernelAssetEvaluation.requiredMemory.getter();
  v5 = SEMemoryInfo.nvm.getter();
  v6 = *(v1 + 8);
  result = v6(v4, v0);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  KernelAssetEvaluation.requiredMemory.getter();
  v8 = SEMemoryInfo.cor.getter();
  result = v6(v4, v0);
  if (v8 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  KernelAssetEvaluation.requiredMemory.getter();
  v9 = SEMemoryInfo.cod.getter();
  result = v6(v4, v0);
  if (v9 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  KernelAssetEvaluation.requiredMemory.getter();
  v10 = SEMemoryInfo.idx.getter();
  result = v6(v4, v0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    return [objc_allocWithZone(SPRMemoryInfo) initWithNvm:v5 cor:v8 cod:v9 idx:v10];
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100098258()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E5844(v17);
  if (v0)
  {
    return v1;
  }

  result = [*(*sub_10000BE18(v17 v18) + 16)];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [*(*sub_10000BE18(v17 v18) + 16)];
    if (qword_10039D5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_10000403C(v1, qword_1003A6D18);
    (*(v2 + 16))(v5, v12, v1);
    v13 = type metadata accessor for KernelManagerWrapper();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v1 = swift_allocObject();
    sub_100092B40(v5, v8, v10, v11);
    sub_10000959C(v17);
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100098430(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x736B706163;
    v6 = 0xD000000000000019;
    if (a1 != 2)
    {
      v6 = 0x74536D6574737973;
    }

    if (a1)
    {
      v5 = 0x666E6F4365726F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6572617764726168;
    v2 = 0x4965746174536573;
    if (a1 != 7)
    {
      v2 = 0x6F436C61626F6C67;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10009858C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10017C8D8();
  return Hasher._finalize()();
}

Swift::Int sub_1000985DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10017C8D8();
  return Hasher._finalize()();
}

unint64_t sub_100098620@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000986E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100098650@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100098430(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100098690()
{
  result = qword_1003A0FE8;
  if (!qword_1003A0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0FE8);
  }

  return result;
}

unint64_t sub_1000986E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037E390, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t *AID_PIN_APPLET.unsafeMutableAddressor()
{
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  return &AID_PIN_APPLET;
}

uint64_t *AID_PAY_APPLET.unsafeMutableAddressor()
{
  if (qword_10039D3C0 != -1)
  {
    swift_once();
  }

  return &AID_PAY_APPLET;
}

uint64_t sub_1000987D0()
{
  result = sub_10014B8C8(&off_10037E300);
  AID_PAY_APPLET = result;
  *algn_1003A6A98 = v1;
  return result;
}

uint64_t sub_1000987FC()
{
  if (qword_10039D3C0 != -1)
  {
    swift_once();
  }

  v0 = AID_PAY_APPLET;
  v1 = *algn_1003A6A98;
  sub_1000094F4(AID_PAY_APPLET, *algn_1003A6A98);
  v2 = Data.hexString()();
  result = sub_100009548(v0, v1);
  xmmword_1003A6AA0 = v2;
  return result;
}

uint64_t sub_100098894()
{
  result = sub_10014B8C8(&off_10037B400);
  AID_PIN_APPLET = result;
  *algn_1003A6AB8 = v1;
  return result;
}

uint64_t sub_1000988C0()
{
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  v0 = AID_PIN_APPLET;
  v1 = *algn_1003A6AB8;
  sub_1000094F4(AID_PIN_APPLET, *algn_1003A6AB8);
  v2 = Data.hexString()();
  result = sub_100009548(v0, v1);
  xmmword_1003A6AC0 = v2;
  return result;
}

uint64_t sub_100098958()
{
  result = sub_10014B8C8(&off_10037BA18);
  qword_1003A6AD0 = result;
  *algn_1003A6AD8 = v1;
  return result;
}

uint64_t sub_100098984()
{
  if (qword_10039D3E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1003A6AD0;
  v1 = *algn_1003A6AD8;
  sub_1000094F4(qword_1003A6AD0, *algn_1003A6AD8);
  v2 = Data.hexString()();
  result = sub_100009548(v0, v1);
  xmmword_1003A6AE0 = v2;
  return result;
}

uint64_t sub_100098A1C()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6AF0 = v5;
    *algn_1003A6AF8 = v7;
  }

  return result;
}

uint64_t sub_100098B2C()
{
  result = Data.init(hexString:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6B00 = result;
    *algn_1003A6B08 = v1;
  }

  return result;
}

uint64_t sub_100098B6C()
{
  v0 = sub_1001831AC(&off_10037CA28);
  sub_100004074(&qword_1003A0FF0, &qword_1002C5040);
  result = swift_arrayDestroy();
  qword_1003A6B10 = v0;
  return result;
}

unint64_t _sSC23SPRAttestationErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D400 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B10;
  if (*(qword_1003A6B10 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(19);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0xD000000000000011;
  }
}

unint64_t sub_100098CD0(uint64_t a1)
{
  result = sub_100098CF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098CF8()
{
  result = qword_10039DC38;
  if (!qword_10039DC38)
  {
    type metadata accessor for AttestationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DC38);
  }

  return result;
}

uint64_t sub_100098D50()
{
  v0 = sub_100182B78(&off_10037B430);
  sub_100004074(&qword_1003A0FF8, &qword_1002C5068);
  result = swift_arrayDestroy();
  qword_1003A6B18 = v0;
  return result;
}

unint64_t _sSC25SPRConfigurationErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D408 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B18;
  if (*(qword_1003A6B18 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0xD000000000000013;
  }
}

unint64_t sub_100098EB4(uint64_t a1)
{
  result = sub_100098EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098EDC()
{
  result = qword_10039DC00;
  if (!qword_10039DC00)
  {
    type metadata accessor for ConfigurationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DC00);
  }

  return result;
}

uint64_t sub_100098F34(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    type metadata accessor for ConfigurationError(0);
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000011;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for Double;
    *(inited + 40) = 0x800000010034A1E0;
    *(inited + 48) = a1;
    sub_100182BA0(inited);
    swift_setDeallocating();
    sub_1000990BC(v5);
    sub_100098EDC();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  if (a1 <= 6)
  {
LABEL_10:
    v3 = 2023;
    goto LABEL_11;
  }

  if (a1 <= 10)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        v3 = 2037;
      }

      else
      {
        v3 = 2038;
      }
    }

    else if (a1 == 7)
    {
      v3 = 2029;
    }

    else
    {
      v3 = 2036;
    }

    goto LABEL_11;
  }

  if (a1 <= 12)
  {
    if (a1 != 11)
    {
      v3 = 2042;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 == 13)
  {
    v3 = 2043;
  }

  else
  {
    v3 = 2044;
  }

LABEL_11:

  return sub_100020148(v3, 0, 0, 0);
}

uint64_t sub_1000990BC(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099124()
{
  v0 = sub_100182CD0(&off_10037B820);
  sub_100004074(&qword_1003A1000, &qword_1002C5090);
  result = swift_arrayDestroy();
  qword_1003A6B20 = v0;
  return result;
}

uint64_t _sSC17SPRDepotErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D410 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B20;
  if (*(qword_1003A6B20 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0x727245746F706544;
  }
}

unint64_t sub_100099270(uint64_t a1)
{
  result = sub_100099298();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099298()
{
  result = qword_10039DBC8;
  if (!qword_10039DBC8)
  {
    type metadata accessor for DepotError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DBC8);
  }

  return result;
}

uint64_t sub_1000992F0()
{
  v0 = sub_10018306C(&off_10037C578);
  result = sub_10009949C(&unk_10037C598);
  qword_1003A6B28 = v0;
  return result;
}

uint64_t _sSC16SPRJSONErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D418 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B28;
  if (*(qword_1003A6B28 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0x6F7272454E4F534ALL;
  }
}

unint64_t sub_10009941C(uint64_t a1)
{
  result = sub_100099444();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099444()
{
  result = qword_10039DB90;
  if (!qword_10039DB90)
  {
    type metadata accessor for JSONError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB90);
  }

  return result;
}

uint64_t sub_10009949C(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A1008, &qword_1002C50B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099504()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1010);
  sub_10000403C(v0, qword_1003A1010);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

void *sub_100099560(void *a1, uint64_t a2, char a3)
{
  v6 = objc_opt_self();
  sub_10000BE18(a1, a1[3]);
  v7 = [v6 isValidJSONObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (qword_10039D420 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A1010);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Object is not a valid JSON", v13, 2u);
    }

    sub_1000210EC(15000, 0, 0, 0);
    goto LABEL_13;
  }

  sub_10000BE18(a1, a1[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v17 = 0;
  if (a3)
  {
    v9 = [v6 dataWithJSONObject:v8 options:0 error:&v17];
  }

  else
  {
    v9 = [v6 dataWithJSONObject:v8 options:a2 error:&v17];
  }

  v14 = v9;
  swift_unknownObjectRelease();
  v15 = v17;
  if (!v14)
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return v12;
  }

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v12;
}

uint64_t sub_1000997C0()
{
  v0 = sub_1001830E4(&off_10037C690);
  sub_100004074(&qword_1003A1028, qword_1002C50E0);
  result = swift_arrayDestroy();
  qword_1003A6B30 = v0;
  return result;
}

uint64_t _sSC19SPRMonitorErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D428 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B30;
  if (*(qword_1003A6B30 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    strcpy(v10, "MonitorError#");
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return v10[0];
  }
}

unint64_t sub_100099910(uint64_t a1)
{
  result = sub_100099938();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099938()
{
  result = qword_10039DB58;
  if (!qword_10039DB58)
  {
    type metadata accessor for MonitorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB58);
  }

  return result;
}

uint64_t sub_100099990()
{
  if (*v0)
  {
    result = 0x656E696C66666FLL;
  }

  else
  {
    result = 0x656E696C6E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1000999C8()
{
  v0 = sub_100183044(&off_10037BA48);
  sub_100004074(&qword_1003A1030, &qword_1002C5130);
  result = swift_arrayDestroy();
  qword_1003A6B38 = v0;
  return result;
}

uint64_t _sSC11ORErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D430 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B38;
  if (*(qword_1003A6B38 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0x23726F727245524FLL;
  }
}

unint64_t sub_100099B0C(uint64_t a1)
{
  result = sub_100099B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100099B34()
{
  result = qword_10039DC70;
  if (!qword_10039DC70)
  {
    type metadata accessor for ORError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DC70);
  }

  return result;
}

NSObject *sub_100099B8C(NSObject *a1)
{
  v2 = v1;
  if (qword_10039D438 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v29[5] = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, v29);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD00000000000001ALL, 0x800000010034A250, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v29);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (a1[2].isa && (v5 = a1, v14 = sub_1000F5A28(0xD000000000000011, 0x8000000100346850), (v15 & 1) != 0) && (sub_10000BDA4(a1[7].isa + 32 * v14, v29), (swift_dynamicCast() & 1) != 0))
  {
    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    if (a1[2].isa && (v17 = sub_1000F5A28(0x7472654364736163, 0xEF65746163696669), (v18 & 1) != 0) && (sub_10000BDA4(a1[7].isa + 32 * v17, v29), (swift_dynamicCast() & 1) != 0))
    {
      v19 = v27;
      v20 = v28;
    }

    else
    {
      v19 = 0;
      v20 = 0xC000000000000000;
    }

    v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100009548(v19, v20);
    if (a1[2].isa && (v23 = sub_1000F5A28(6580594, 0xE300000000000000), (v24 & 1) != 0))
    {
      sub_10000BDA4(a1[7].isa + 32 * v23, v29);

      swift_dynamicCast();
    }

    else
    {
    }

    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = String._bridgeToObjectiveC()();

    v5 = [v25 initWithProvisionDataBlob:v16.super.isa casdCertificate:v22.super.isa rid:v26];
    sub_100009548(v27, v28);
  }

  else
  {

    sub_1000205C0(20008, 0xD00000000000002BLL, 0x800000010034A220, 0);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100099F64()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1038);
  sub_10000403C(v0, qword_1003A1038);
  sub_100023B24();
  return static SPRLogger.orReader.getter();
}

uint64_t sub_100099FC0()
{
  v0 = sub_1001831D4(&off_10037C170);
  sub_100004074(&qword_1003A1050, &qword_1002C5158);
  result = swift_arrayDestroy();
  qword_1003A6B40 = v0;
  return result;
}

unint64_t _sSC23SPRPersistenceErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D440 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B40;
  if (*(qword_1003A6B40 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(19);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0xD000000000000011;
  }
}

unint64_t sub_10009A124(uint64_t a1)
{
  result = sub_10009A14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009A14C()
{
  result = qword_10039DB20;
  if (!qword_10039DB20)
  {
    type metadata accessor for PersistenceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB20);
  }

  return result;
}

uint64_t sub_10009A1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 32))(a1, a2, a3, a5);
  if (!v5)
  {
    v8 = result;
    v9 = v7;
    type metadata accessor for JSONDecoder();
    sub_10009A814(&_swiftEmptyArrayStorage);
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

    return sub_100009548(v8, v9);
  }

  return result;
}

uint64_t sub_10009A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a2;
  v21 = a4;
  v19 = a1;
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  sub_10009A590();
  v13 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v6)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v16 = v13;
  v17 = v14;
  (*(v9 + 8))(v12, v8);
  (*(a6 + 40))(v19, v20, v16, v17, v21, a6);
  return sub_100009548(v16, v17);
}

uint64_t sub_10009A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    sub_100020A38(6002, 0x2064696C61766E69, 0xED0000382D465455, 0);
    return swift_willThrow();
  }

  else
  {
    (*(a6 + 40))(a1, a2, v14, v16, v18, a6);
    return sub_10001A074(v14, v16);
  }
}

uint64_t sub_10009A590()
{
  type metadata accessor for JSONEncoder.OutputFormatting();
  sub_10009AA5C();
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10009AAB4();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t sub_10009A618(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10009A67C(a1, v5);
}

unint64_t sub_10009A67C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10009A814(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A1058, &qword_1002C5160);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004074(&qword_1003A1060, &qword_1002C5168);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10009A9EC(v10, v6);
      result = sub_10009A618(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_100019D3C(&v6[v9], (v8[7] + 32 * v14));
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

uint64_t sub_10009A9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A1058, &qword_1002C5160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009AA5C()
{
  result = qword_1003A1068;
  if (!qword_1003A1068)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1068);
  }

  return result;
}

unint64_t sub_10009AAB4()
{
  result = qword_1003A1078;
  if (!qword_1003A1078)
  {
    sub_1000040BC(&qword_1003A1070, &qword_1002C5170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1078);
  }

  return result;
}

uint64_t sub_10009AB18()
{
  v0 = sub_100183184(&off_10037C5B0);
  sub_100004074(&qword_1003A1080, &qword_1002C5198);
  result = swift_arrayDestroy();
  qword_1003A6B48 = v0;
  return result;
}

unint64_t _sSC22SPRPINAppletProxyErrorLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D448 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B48;
  if (*(qword_1003A6B48 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(22);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0xD000000000000014;
  }
}

unint64_t sub_10009AC7C(uint64_t a1)
{
  result = sub_10009ACA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009ACA4()
{
  result = qword_10039DAE8;
  if (!qword_10039DAE8)
  {
    type metadata accessor for PINAppletProxyError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DAE8);
  }

  return result;
}

uint64_t sub_10009ACFC()
{
  v0 = sub_10018315C(&off_10037C7E8);
  sub_100004074(&qword_1003A1088, &qword_1002C51C0);
  result = swift_arrayDestroy();
  qword_1003A6B50 = v0;
  return result;
}

unint64_t _sSC21SPRPINControllerErrorLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D450 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B50;
  if (*(qword_1003A6B50 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0xD000000000000013;
  }
}

unint64_t sub_10009AE60(uint64_t a1)
{
  result = sub_10009AE88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009AE88()
{
  result = qword_10039DAB0;
  if (!qword_10039DAB0)
  {
    type metadata accessor for PINControllerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DAB0);
  }

  return result;
}

uint64_t sub_10009AEE0()
{
  v0 = sub_1001830BC(&off_10037C970);
  sub_100004074(&qword_1003A1090, &qword_1002C51E8);
  result = swift_arrayDestroy();
  qword_1003A6B58 = v0;
  return result;
}

uint64_t _sSC18SPRPrimerErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D458 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B58;
  if (*(qword_1003A6B58 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    strcpy(v10, "PrimerError#");
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return v10[0];
  }
}

unint64_t sub_10009B02C(uint64_t a1)
{
  result = sub_10009B054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009B054()
{
  result = qword_10039DA78;
  if (!qword_10039DA78)
  {
    type metadata accessor for PrimerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DA78);
  }

  return result;
}

uint64_t sub_10009B0AC()
{
  v0 = sub_10018310C(&off_10037C9C0);
  sub_100004074(&qword_1003A1098, &qword_1002C5210);
  result = swift_arrayDestroy();
  qword_1003A6B60 = v0;
  return result;
}

uint64_t _sSC20SPRProviderErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D460 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B60;
  if (*(qword_1003A6B60 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(16);

    strcpy(v10, "ProviderError#");
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return v10[0];
  }
}

unint64_t sub_10009B218(uint64_t a1)
{
  result = sub_10009B240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009B240()
{
  result = qword_10039DA40;
  if (!qword_10039DA40)
  {
    type metadata accessor for ProviderError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DA40);
  }

  return result;
}

uint64_t sub_10009B298()
{
  v0 = sub_100183094(&off_10037BC40);
  sub_100004074(&qword_1003A10A0, &qword_1002C5238);
  result = swift_arrayDestroy();
  qword_1003A6B68 = v0;
  return result;
}

uint64_t _sSC16SPRReadErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D468 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B68;
  if (*(qword_1003A6B68 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0x6F72724564616552;
  }
}

unint64_t sub_10009B3E0(uint64_t a1)
{
  result = sub_10009B408();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009B408()
{
  result = qword_10039DA08;
  if (!qword_10039DA08)
  {
    type metadata accessor for ReadError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DA08);
  }

  return result;
}

uint64_t sub_10009B460(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    type metadata accessor for ReadError(0);
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000011;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for Double;
    *(inited + 40) = 0x800000010034A1E0;
    *(inited + 48) = a1;
    sub_100182BA0(inited);
    swift_setDeallocating();
    sub_1000990BC(v5);
    sub_10009B408();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  if (a1 <= 6)
  {
LABEL_10:
    v3 = 4053;
    goto LABEL_11;
  }

  if (a1 <= 10)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        v3 = 4051;
      }

      else
      {
        v3 = 4052;
      }
    }

    else if (a1 == 7)
    {
      v3 = 4023;
    }

    else
    {
      v3 = 4050;
    }

    goto LABEL_11;
  }

  if (a1 <= 12)
  {
    if (a1 != 11)
    {
      v3 = 4058;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 == 13)
  {
    v3 = 4059;
  }

  else
  {
    v3 = 4060;
  }

LABEL_11:

  return sub_1000207FC(v3, 0, 0, 0);
}

uint64_t sub_10009B5E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A10A8);
  sub_10000403C(v0, qword_1003A10A8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

void sub_10009B644(uint64_t a1@<X8>)
{
  v36[0] = 0;
  v2 = DeviceIdentityCopyCertificateProperties();
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = 0;

    v37 = 808465457;
    v38 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v6 = sub_1000F5AC4(v36), (v7 & 1) != 0))
    {
      sub_10000BDA4(*(v4 + 56) + 32 * v6, &v37);
      sub_10001A124(v36);
      v8 = swift_dynamicCast();
      if (v8)
      {
        v9 = v34;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v35;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_10001A124(v36);
      v9 = 0;
      v10 = 0;
    }

    v37 = 875574321;
    v38 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v11 = sub_1000F5AC4(v36), (v12 & 1) != 0))
    {
      sub_10000BDA4(*(v4 + 56) + 32 * v11, &v37);
      sub_10001A124(v36);
      v13 = swift_dynamicCast();
      if (v13)
      {
        v14 = v34;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v35;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      sub_10001A124(v36);
      v14 = 0;
      v15 = 0;
    }

    v37 = 892351537;
    v38 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v16 = sub_1000F5AC4(v36), (v17 & 1) != 0))
    {
      sub_10000BDA4(*(v4 + 56) + 32 * v16, &v37);
      sub_10001A124(v36);
      v18 = swift_dynamicCast();
      if (v18)
      {
        v19 = v34;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = v35;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      sub_10001A124(v36);
      v19 = 0;
      v20 = 0;
    }

    AnyHashable.init<A>(_:)();
    if (*(v4 + 16))
    {
      v21 = sub_1000F5AC4(v36);
      if (v22)
      {
        sub_10000BDA4(*(v4 + 56) + 32 * v21, &v37);
        sub_10001A124(v36);

        v23 = swift_dynamicCast();
        if (v23)
        {
          v24 = 909128753;
        }

        else
        {
          v24 = 0;
        }

        v25 = v23 ^ 1;
        goto LABEL_43;
      }
    }

    sub_10001A124(v36);

LABEL_42:
    v24 = 0;
    v25 = 1;
LABEL_43:
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v14;
    *(a1 + 24) = v15;
    *(a1 + 32) = v19;
    *(a1 + 40) = v20;
    *(a1 + 48) = v24;
    *(a1 + 56) = v25;
    return;
  }

  v26 = qword_10039D470;
  v27 = v36[0];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000403C(v28, qword_1003A10A8);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v29, v30))
  {
LABEL_41:

    v9 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_42;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v31 = 138412290;
  if (v27)
  {
    *(v31 + 4) = v27;
    *v32 = 0;
    v33 = v32;
    v27 = v27;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to copy device OS version information from certificate: %@", v31, 0xCu);
    sub_100041D90(v33);

    goto LABEL_41;
  }

  __break(1u);
}

void sub_10009BACC(void *a1@<X8>)
{
  v32[0] = 0;
  v2 = DeviceIdentityCopyCertificateProperties();
  if (!v2)
  {
    v20 = qword_10039D470;
    v21 = v32[0];
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A10A8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v33 = 0;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v27 = Optional.debugDescription.getter();
      v29 = sub_100008F6C(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to copy UCRT device identifiers from certificate: %s", v25, 0xCu);
      sub_10000959C(v26);
    }

    v9 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = 0;

  v33 = 1768254825;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = sub_1000F5AC4(v32), (v7 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v6, &v33);
    sub_10001A124(v32);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v30;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v31;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v9 = 0;
    v10 = 0;
  }

  v33 = 1684628845;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v11 = sub_1000F5AC4(v32), (v12 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v11, &v33);
    sub_10001A124(v32);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v30;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v14 = 0;
    v15 = 0;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v16 = sub_1000F5AC4(v32), (v17 & 1) == 0))
  {

    sub_10001A124(v32);
    goto LABEL_25;
  }

  sub_10000BDA4(*(v4 + 56) + 32 * v16, &v33);
  sub_10001A124(v32);

  if (!swift_dynamicCast())
  {
LABEL_25:

LABEL_31:
    v18 = 0;
    v19 = 0;
    goto LABEL_32;
  }

  v18 = 1684628851;
  v19 = 0xE400000000000000;

LABEL_32:
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v19;
}

void sub_10009BEC4(void *a1@<X8>)
{
  v32[0] = 0;
  v2 = DeviceIdentityCopyCertificateProperties();
  if (!v2)
  {
    v20 = qword_10039D470;
    v21 = v32[0];
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A10A8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v33 = 0;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v27 = Optional.debugDescription.getter();
      v29 = sub_100008F6C(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to copy device identifiers from certificate: %s", v25, 0xCu);
      sub_10000959C(v26);
    }

    v9 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = 0;

  v33 = 909193265;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = sub_1000F5AC4(v32), (v7 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v6, &v33);
    sub_10001A124(v32);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v30;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v31;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v9 = 0;
    v10 = 0;
  }

  v33 = 942747697;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v11 = sub_1000F5AC4(v32), (v12 & 1) != 0))
  {
    sub_10000BDA4(*(v4 + 56) + 32 * v11, &v33);
    sub_10001A124(v32);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v30;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10001A124(v32);
    v14 = 0;
    v15 = 0;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v16 = sub_1000F5AC4(v32), (v17 & 1) == 0))
  {

    sub_10001A124(v32);
    goto LABEL_25;
  }

  sub_10000BDA4(*(v4 + 56) + 32 * v16, &v33);
  sub_10001A124(v32);

  if (!swift_dynamicCast())
  {
LABEL_25:

LABEL_31:
    v18 = 0;
    v19 = 0;
    goto LABEL_32;
  }

  v18 = 858861617;
  v19 = 0xE400000000000000;

LABEL_32:
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v19;
}

uint64_t sub_10009C2B8()
{
  v21[0] = 0;
  v0 = DeviceIdentityCopyCertificateProperties();
  if (v0)
  {
    v1 = v0;
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;

    v22[0] = 925905201;
    v22[1] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v4 = sub_1000F5AC4(v21), (v5 & 1) != 0))
    {
      sub_10000BDA4(*(v2 + 56) + 32 * v4, v22);
      sub_10001A124(v21);
      if (swift_dynamicCast())
      {
        v6 = v20;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      sub_10001A124(v21);
      v6 = 0;
    }

    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v7 = sub_1000F5AC4(v21), (v8 & 1) != 0))
    {
      sub_10000BDA4(*(v2 + 56) + 32 * v7, v22);
      sub_10001A124(v21);

      swift_dynamicCast();
    }

    else
    {

      sub_10001A124(v21);
    }
  }

  else
  {
    v9 = qword_10039D470;
    v10 = v21[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A10A8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      v22[0] = 0;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v16 = Optional.debugDescription.getter();
      v18 = sub_100008F6C(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to copy hardware properties from certificate: %s", v14, 0xCu);
      sub_10000959C(v15);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_10009C620()
{
  v0 = sub_1001831FC(&off_10037C480);
  sub_100004074(&qword_1003A10C8, &qword_1002C5260);
  result = swift_arrayDestroy();
  qword_1003A6B70 = v0;
  return result;
}

unint64_t _sSC25SPRSecureChannelErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D478 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B70;
  if (*(qword_1003A6B70 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return 0xD000000000000013;
  }
}

unint64_t sub_10009C784(uint64_t a1)
{
  result = sub_10009C7AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009C7AC()
{
  result = qword_10039D9D0;
  if (!qword_10039D9D0)
  {
    type metadata accessor for SecureChannelError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D9D0);
  }

  return result;
}

uint64_t sub_10009C804()
{
  v0 = sub_100183134(&off_10037C280);
  sub_100004074(&qword_1003A10D0, &qword_1002C5288);
  result = swift_arrayDestroy();
  qword_1003A6B78 = v0;
  return result;
}

uint64_t _sSC20SPRSecurityErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(uint64_t a1)
{
  if (qword_10039D480 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A6B78;
  if (*(qword_1003A6B78 + 16) && (v3 = sub_1000F883C(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    return v7;
  }

  else
  {
    _StringGuts.grow(_:)(16);

    strcpy(v10, "SecurityError#");
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    return v10[0];
  }
}

unint64_t sub_10009C970(uint64_t a1)
{
  result = sub_10009C998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009C998()
{
  result = qword_10039D998;
  if (!qword_10039D998)
  {
    type metadata accessor for SecurityError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D998);
  }

  return result;
}

uint64_t sub_10009C9F0(OSStatus a1, uint64_t a2)
{
  if (a1 > -67820)
  {
    if (a1 != -25318)
    {
      if (a1 == -67818)
      {
        v3 = 10012;
        goto LABEL_14;
      }

      if (a1 == -67819)
      {
        v3 = 10011;
        goto LABEL_14;
      }

LABEL_11:
      v4 = SecCopyErrorMessageString(a1, 0);
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v3 = 10997;
      v9 = v6;
      v10 = v8;
      goto LABEL_15;
    }

LABEL_10:
    v3 = 10010;
    goto LABEL_14;
  }

  if (a1 == -67880 || a1 == -67843)
  {
    goto LABEL_10;
  }

  if (a1 != -67820)
  {
    goto LABEL_11;
  }

  v3 = 10013;
LABEL_14:
  v9 = 0;
  v10 = 0;
LABEL_15:

  return sub_100020C74(v3, v9, v10, a2);
}

uint64_t (*sub_10009CAF8(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v5 = swift_allocObject();
  *(v5 + 16) = -1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = a1;
  swift_unknownObjectRetain();
  return sub_10009CC6C;
}

uint64_t sub_10009CBA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a2 + 16) < a1)
  {
    [a3 onUpdateWithEvent:a4 progress:a1];
    result = swift_beginAccess();
    *(a2 + 16) = a1;
  }

  return result;
}

uint64_t sub_10009CC2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009CC78()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A10D8);
  sub_10000403C(v0, qword_1003A10D8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

uint64_t sub_10009CCE4(uint64_t a1, NSObject *a2, void *a3, uint64_t a4)
{
  if (!a2[2].isa || (v4 = a2, v8 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034A2F0), (v9 & 1) == 0))
  {

LABEL_20:

    sub_1000207FC(4012, 0xD000000000000020, 0x800000010034A310, 0);
    swift_willThrow();
LABEL_21:

    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 8))(a4, v28);
    return v4;
  }

  sub_10000BDA4(a2[7].isa + 32 * v8, &v162);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  v4 = v165;
  v10 = v166;
  if (!a2[2].isa)
  {
    goto LABEL_26;
  }

  v155 = v165;
  v11 = sub_1000F5A28(0xD000000000000010, 0x800000010034A340);
  if ((v12 & 1) == 0)
  {

    v4 = v155;
LABEL_27:
    sub_1000207FC(4012, 0xD000000000000016, 0x800000010034A360, 0);
    swift_willThrow();
    v29 = v4;
    v30 = v10;
LABEL_28:
    sub_100009548(v29, v30);
    goto LABEL_21;
  }

  sub_10000BDA4(a2[7].isa + 32 * v11, &v162);
  v4 = v155;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  v154 = v10;
  v152 = v165;
  v153 = v166;
  if (!a2[2].isa)
  {
    goto LABEL_31;
  }

  v13 = sub_1000F5A28(0x61486B654B787274, 0xEA00000000006873);
  if ((v14 & 1) == 0)
  {

    v4 = v155;
LABEL_32:
    sub_1000207FC(4012, 0x61486B654B787274, 0xEE006C696E206873, 0);
    swift_willThrow();
    sub_100009548(v4, v10);
    v29 = v152;
    v30 = v153;
    goto LABEL_28;
  }

  sub_10000BDA4(a2[7].isa + 32 * v13, &v162);
  v4 = v155;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

  result = Data.init(hexString:)();
  if (v16 >> 60 != 15)
  {
    v167 = result;
    v168 = v16;
    if (!a2[2].isa)
    {
      goto LABEL_59;
    }

    v17 = sub_1000F5A28(0x6B6361626C6C6166, 0xEE00746E756F6D41);
    if ((v18 & 1) == 0)
    {
      goto LABEL_59;
    }

    sub_10000BDA4(a2[7].isa + 32 * v17, &v165);
    sub_10000BDA4(&v165, &v162);
    type metadata accessor for Decimal(0);
    swift_dynamicCast();
    v160 = v158;
    v161 = v159;
    v156 = v158;
    v157 = v159;
    v19 = [objc_allocWithZone(NSDecimalNumber) initWithDecimal:&v156];
    v20 = [v19 integerValue];

    if (v20 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = -v20;
    }

    *&v162 = v21;
    sub_10001A4CC();
    v147 = UnsignedInteger.digitsAsBytes()();
    v23 = v22;
    v150 = Data.toBCD()();
    v25 = v24;
    result = sub_100009548(v147, v23);
    v148 = v25;
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v27 = 0;
      if (v26 != 2)
      {
        goto LABEL_39;
      }

      v32 = *(v150 + 16);
      v31 = *(v150 + 24);
      v27 = v31 - v32;
      if (!__OFSUB__(v31, v32))
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = BYTE6(v25);
LABEL_39:
      if (static TLVTag.TAG_9F02_LENGTH.getter() < v27)
      {

        if (qword_10039D488 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000403C(v33, qword_1003A10D8);
        v4 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v4, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v4, v34, "Bad fallbackAmount length", v35, 2u);
        }

        sub_1000207FC(4012, 0xD00000000000002DLL, 0x800000010034A4E0, 0);
        swift_willThrow();
        sub_100009548(v155, v154);
        sub_100009548(v152, v153);

        sub_100009548(v150, v148);
        v36 = type metadata accessor for UUID();
        (*(*(v36 - 8) + 8))(a4, v36);
        sub_10000959C(&v165);
        sub_100009548(v167, v168);
        return v4;
      }

      v143 = v168;
      v145 = v167;
      v37 = v148;
      sub_1000094F4(v150, v148);
      sub_100009548(v145, v143);
      v167 = v150;
      v168 = v148;
      v38 = v150;
      while (1)
      {
        v39 = v37 >> 62;
        if ((v37 >> 62) > 1)
        {
          if (v39 == 2)
          {
            v43 = v38 + 16;
            v41 = *(v38 + 16);
            v42 = *(v43 + 8);
            v40 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              __break(1u);
LABEL_190:
              __break(1u);
            }
          }

          else
          {
            v40 = 0;
          }
        }

        else if (v39)
        {
          v44 = __OFSUB__(HIDWORD(v38), v38);
          v45 = HIDWORD(v38) - v38;
          if (v44)
          {
            goto LABEL_190;
          }

          v40 = v45;
        }

        else
        {
          v40 = BYTE6(v37);
        }

        if (v40 >= static TLVTag.TAG_9F02_LENGTH.getter())
        {
          break;
        }

        v46 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
        *(&v163 + 1) = v46;
        v164 = sub_10009E2FC();
        LOBYTE(v162) = 0;
        LOBYTE(v158) = *sub_10000BE18(&v162, v46);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_10000959C(&v162);
        v38 = v167;
        v37 = v168;
      }

      sub_10000959C(&v165);
      sub_100009548(v150, v148);
LABEL_59:
      sub_10000411C(0, &qword_1003A10F0, SPRVASResponse_ptr);
      v136.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (a2[2].isa && (v47 = sub_1000F5A28(0x6568706943787274, 0xED0000626F6C4272), (v48 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v47, &v162), (swift_dynamicCast() & 1) != 0))
      {
        v49 = v165;
        v50 = v166;
      }

      else
      {
        v49 = 0;
        v50 = 0xC000000000000000;
      }

      v135.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100009548(v49, v50);
      if (a2[2].isa && (v51 = sub_1000F5A28(0x6C4279654B787274, 0xEA0000000000626FLL), (v52 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v51, &v162), (swift_dynamicCast() & 1) != 0))
      {
        v53 = v165;
        v54 = v166;
      }

      else
      {
        v53 = 0;
        v54 = 0xC000000000000000;
      }

      v134.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100009548(v53, v54);
      if (a2[2].isa)
      {
        v55 = sub_1000F5A28(0x6B726F7774656ELL, 0xE700000000000000);
        if (v56)
        {
          sub_10000BDA4(a2[7].isa + 32 * v55, &v162);
          swift_dynamicCast();
        }
      }

      v57 = String._bridgeToObjectiveC()();

      v133 = v57;
      if (a2[2].isa)
      {
        v58 = sub_1000F5A28(0x53656D6F6374756FLL, 0xED00007375746174);
        if ((v59 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v58, &v162), type metadata accessor for SPRTransactionOutcomeStatus(0), swift_dynamicCast()))
        {
          v132 = v165;
        }

        else
        {
          v132 = 0;
        }

        if (a2[2].isa)
        {
          v60 = sub_1000F5A28(0xD000000000000019, 0x800000010034A380);
          if (v61)
          {
            sub_10000BDA4(a2[7].isa + 32 * v60, &v162);
            if (swift_dynamicCast())
            {
              v62 = v165;
              v63 = v166;
              goto LABEL_83;
            }
          }
        }
      }

      else
      {
        v132 = 0;
      }

      v62 = 0;
      v63 = 0xC000000000000000;
LABEL_83:
      v131.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100009548(v62, v63);
      if (a2[2].isa)
      {
        v64 = sub_1000F5A28(0xD000000000000019, 0x800000010034A3A0);
        if ((v65 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v64, &v162), type metadata accessor for SPRTransactionMessage(0), swift_dynamicCast()))
        {
          v130 = v165;
        }

        else
        {
          v130 = 0;
        }

        if (a2[2].isa)
        {
          v66 = sub_1000F5A28(0x657079546D7663, 0xE700000000000000);
          if ((v67 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v66, &v162), type metadata accessor for SPRTransactionCVMType(0), swift_dynamicCast()))
          {
            v68 = v165;
          }

          else
          {
            v68 = -1;
          }

          v129 = v68;
          if (a2[2].isa && (v71 = sub_1000F5A28(0x6C757365526D7663, 0xE900000000000074), (v72 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v71, &v162), (swift_dynamicCast() & 1) != 0))
          {
            v69 = v165;
            v70 = v166;
          }

          else
          {
            v69 = 0;
            v70 = 0xC000000000000000;
          }

LABEL_100:
          v151.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v69, v70);
          if (a2[2].isa && (v73 = sub_1000F5A28(0xD000000000000014, 0x800000010034A3C0), (v74 & 1) != 0) && (sub_10000BDA4(a2[7].isa + 32 * v73, &v162), (swift_dynamicCast() & 1) != 0))
          {
            v75 = v165;
            v76 = v166;
          }

          else
          {
            v75 = 0;
            v76 = 0xC000000000000000;
          }

          v149.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v75, v76);
          if (a2[2].isa && (v77 = sub_1000F5A28(0x69757165526E6970, 0xEB00000000646572), (v78 & 1) != 0))
          {
            sub_10000BDA4(a2[7].isa + 32 * v77, &v162);
            if (swift_dynamicCast())
            {
              v128 = v165;
            }

            else
            {
              v128 = 0;
            }
          }

          else
          {
            v128 = 0;
          }

          v146.super.isa = Data._bridgeToObjectiveC()().super.isa;
          v144.super.isa = Data._bridgeToObjectiveC()().super.isa;
          if (a2[2].isa)
          {
            v79 = sub_1000F5A28(0xD000000000000015, 0x800000010034A3E0);
            if (v80 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v79, &v162), (swift_dynamicCast()))
            {
              v81 = v165;
              v82 = v166;
            }

            else
            {
              v81 = 0;
              v82 = 0xC000000000000000;
            }
          }

          else
          {
            v81 = 0;
            v82 = 0xC000000000000000;
          }

          v142.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v81, v82);
          v141 = String._bridgeToObjectiveC()();

          if (a2[2].isa)
          {
            v83 = sub_1000F5A28(0x61486B654B6E6970, 0xEA00000000006873);
            if (v84)
            {
              sub_10000BDA4(a2[7].isa + 32 * v83, &v162);
              swift_dynamicCast();
            }
          }

          v140 = String._bridgeToObjectiveC()();

          if (a2[2].isa)
          {
            v85 = sub_1000F5A28(0x7075536E69507369, 0xEE00646574726F70);
            if ((v86 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v85, &v162), swift_dynamicCast()))
            {
              v87 = v165;
            }

            else
            {
              v87 = 0;
            }

            v127 = v87;
            if (a2[2].isa)
            {
              v88 = sub_1000F5A28(0xD000000000000012, 0x800000010034A400);
              if (v89)
              {
                sub_10000BDA4(a2[7].isa + 32 * v88, &v162);
                if (swift_dynamicCast())
                {
                  v90 = v165;
                  v91 = v166;
                  goto LABEL_131;
                }
              }
            }
          }

          else
          {
            v127 = 0;
          }

          v90 = 0;
          v91 = 0xC000000000000000;
LABEL_131:
          v139.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100009548(v90, v91);
          v138.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          *&v160 = a3;
          type metadata accessor for ReadError(0);
          sub_10009B408();
          _BridgedStoredNSError.code.getter();
          v126 = v158;
          if (a2[2].isa)
          {
            v92 = sub_1000F5A28(0xD000000000000014, 0x800000010034A420);
            if ((v93 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v92, &v162), type metadata accessor for SPRPayAppletStatus(0), swift_dynamicCast()))
            {
              v125 = v165;
            }

            else
            {
              v125 = 0;
            }

            if (a2[2].isa)
            {
              v94 = sub_1000F5A28(0xD000000000000012, 0x800000010034A440);
              if (v95)
              {
                sub_10000BDA4(a2[7].isa + 32 * v94, &v162);
                if (swift_dynamicCast())
                {
                  v124 = v165;
                }

                else
                {
                  v124 = 0;
                }
              }

              else
              {
                v124 = 0;
              }

              if (!a2[2].isa)
              {
                v123 = 0;
                goto LABEL_155;
              }

              v98 = sub_1000F5A28(0xD000000000000012, 0x800000010034A460);
              if (v99)
              {
                sub_10000BDA4(a2[7].isa + 32 * v98, &v162);
                if (swift_dynamicCast())
                {
                  v123 = v165;
LABEL_143:
                  if (a2[2].isa)
                  {
                    v96 = sub_1000F5A28(0x626C6C6146726F66, 0xEB000000006B6361);
                    if ((v97 & 1) == 0)
                    {
                      v122 = 0;
                      goto LABEL_156;
                    }

                    sub_10000BDA4(a2[7].isa + 32 * v96, &v162);
                    if (swift_dynamicCast())
                    {
                      v122 = v165;
                      goto LABEL_156;
                    }
                  }

LABEL_155:
                  v122 = 0;
LABEL_156:
                  Data.hexString()();
                  v137 = String._bridgeToObjectiveC()();

                  if (a2[2].isa)
                  {
                    v100 = sub_1000F5A28(0xD00000000000001DLL, 0x800000010034A480);
                    if ((v101 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v100, &v162), swift_dynamicCast()))
                    {
                      v121 = v165;
                    }

                    else
                    {
                      v121 = 0;
                    }

                    if (a2[2].isa)
                    {
                      v102 = sub_1000F5A28(0xD000000000000013, 0x800000010034A4A0);
                      if (v103)
                      {
                        sub_10000BDA4(a2[7].isa + 32 * v102, &v162);
                        type metadata accessor for SPRCardExpirationState(0);
                        if (swift_dynamicCast())
                        {
                          v120 = v165;
                        }

                        else
                        {
                          v120 = 0;
                        }
                      }

                      else
                      {
                        v120 = 0;
                      }

                      if (!a2[2].isa)
                      {
                        v104 = 0;
                        goto LABEL_179;
                      }

                      v105 = sub_1000F5A28(0xD000000000000012, 0x800000010034A4C0);
                      if ((v106 & 1) != 0 && (sub_10000BDA4(a2[7].isa + 32 * v105, &v162), type metadata accessor for SPRCardEffectiveState(0), swift_dynamicCast()))
                      {
                        v104 = v165;
                      }

                      else
                      {
                        v104 = 0;
                      }

LABEL_174:
                      if (a2[2].isa)
                      {
                        v107 = sub_1000F5A28(0x7954707041796170, 0xEA00000000006570);
                        if (v108)
                        {
                          sub_10000BDA4(a2[7].isa + 32 * v107, &v162);
                          swift_dynamicCast();
                        }
                      }

LABEL_179:
                      v109 = String._bridgeToObjectiveC()();

                      if (a2[2].isa)
                      {
                        v110 = sub_1000F5A28(0x4641537369, 0xE500000000000000);
                        if (v111)
                        {
                          sub_10000BDA4(a2[7].isa + 32 * v110, &v162);
                        }

                        else
                        {
                          v162 = 0u;
                          v163 = 0u;
                        }
                      }

                      else
                      {
                        v162 = 0u;
                        v163 = 0u;
                      }

                      if (*(&v163 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v112 = v165;
LABEL_189:
                          LOBYTE(v119) = v112;
                          BYTE2(v118) = v104;
                          BYTE1(v118) = v120;
                          LOBYTE(v118) = v121;
                          BYTE3(v117) = v122;
                          BYTE2(v117) = v123;
                          BYTE1(v117) = v124;
                          LOBYTE(v117) = v125;
                          LOBYTE(v116) = v127;
                          LOBYTE(v115) = v128;
                          BYTE1(v114) = v129;
                          LOBYTE(v114) = v130;
                          v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVasResponses:v136.super.isa transactionCipherBlob:v135.super.isa transactionKeyBlob:v134.super.isa network:v133 outcomeStatus:v132 errorIndicationStatusWord:v131.super.isa errorIndicationMsgOnError:v114 cvmType:v151.super.isa cvmResult:v149.super.isa merchantCategoryCode:v115 pinRequired:v146.super.isa kernelIdentityKeyAttestation:v144.super.isa ecdsaCertificate:v142.super.isa transactionResultData:v141 kekId:v140 pinKekId:v116 isPinSupported:v139.super.isa languagePreference:v138.super.isa transactionUUID:v126 readError:v117 payAppletFinalStatus:v137 isPINBypassEnabled:v118 isPINBypassAllowed:v109 forFallback:v119 fallbackAmount:? switchInterfaceOrNoCVMSuccess:? cardExpirationState:? cardEffectiveState:? payAppType:? isSAF:?];
                          sub_100009548(v155, v154);
                          sub_100009548(v152, v153);

                          v113 = type metadata accessor for UUID();
                          (*(*(v113 - 8) + 8))(a4, v113);
                          sub_100009548(v167, v168);
                          return v4;
                        }
                      }

                      else
                      {
                        sub_10009E294(&v162);
                      }

                      v112 = 0;
                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    v121 = 0;
                  }

                  v120 = 0;
                  v104 = 0;
                  goto LABEL_174;
                }
              }

LABEL_142:
              v123 = 0;
              goto LABEL_143;
            }
          }

          else
          {
            v125 = 0;
          }

          v124 = 0;
          goto LABEL_142;
        }
      }

      else
      {
        v130 = 0;
      }

      v69 = 0;
      v70 = 0xC000000000000000;
      v129 = -1;
      goto LABEL_100;
    }

    if (!__OFSUB__(HIDWORD(v150), v150))
    {
      v27 = HIDWORD(v150) - v150;
      goto LABEL_39;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009E294(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E248, &qword_1002C23D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009E2FC()
{
  result = qword_10039E2F0;
  if (!qword_10039E2F0)
  {
    sub_1000040BC(&qword_10039E2E8, &qword_1002C1728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2F0);
  }

  return result;
}

id sub_10009E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000411C(0, &qword_1003A10F0, SPRVASResponse_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = Data._bridgeToObjectiveC()().super.isa;
  v24 = Data._bridgeToObjectiveC()().super.isa;
  v23 = String._bridgeToObjectiveC()();
  v22 = Data._bridgeToObjectiveC()().super.isa;
  v21 = Data._bridgeToObjectiveC()().super.isa;
  v20 = Data._bridgeToObjectiveC()().super.isa;
  v3 = Data._bridgeToObjectiveC()().super.isa;
  v4 = Data._bridgeToObjectiveC()().super.isa;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = Data._bridgeToObjectiveC()().super.isa;
  v18 = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for ReadError(0);
  sub_10009B408();
  _BridgedStoredNSError.code.getter();
  v19 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  LOBYTE(v13) = 0;
  BYTE2(v12) = 0;
  LOWORD(v12) = 0;
  LODWORD(v11) = 0;
  LOBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  LOWORD(v8) = -256;
  v29 = [v28 initWithVasResponses:isa transactionCipherBlob:v26 transactionKeyBlob:v24 network:v23 outcomeStatus:0 errorIndicationStatusWord:v22 errorIndicationMsgOnError:v8 cvmType:v21 cvmResult:v20 merchantCategoryCode:v9 pinRequired:v3 kernelIdentityKeyAttestation:v4 ecdsaCertificate:v14 transactionResultData:v15 kekId:v16 pinKekId:v10 isPinSupported:v17 languagePreference:v18 transactionUUID:v30 readError:v11 payAppletFinalStatus:v19 isPINBypassEnabled:v12 isPINBypassAllowed:v5 forFallback:v13 fallbackAmount:? switchInterfaceOrNoCVMSuccess:? cardExpirationState:? cardEffectiveState:? payAppType:? isSAF:?];

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(a3, v6);
  return v29;
}

uint64_t sub_10009E7F8()
{
  v0 = sub_100185B90(&off_10037D1F8);
  result = swift_arrayDestroy();
  qword_1003A6B80 = v0;
  return result;
}

BOOL NFHardwareManager.isRadioEnabled.getter()
{
  v3 = 0;
  v1 = [v0 getRadioEnabledState:&v3];
  if (!v1)
  {
    return v3 == 1;
  }

  return 0;
}

void NFSecureElementManagerSession.select(_:)(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  if (qword_10039D498 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000403C(v4, qword_1003A10F8);
  sub_1000094F4(a1, a2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_100009548(a1, a2);
  if (os_log_type_enabled(v6, v7))
  {
    v84 = v5;
    v8 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v75);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    v13 = Data.hexString()();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v13;
    v14 = showFunction(signature:_:)(0x5F287463656C6573, 0xEA0000000000293ALL, v12);
    v15 = a2;
    v17 = v16;

    v18 = sub_100008F6C(v14, v17, &v75);
    a2 = v15;

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();

    v5 = v84;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_23;
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (!v23)
    {
      if (v24 <= 255)
      {
        goto LABEL_11;
      }

LABEL_17:
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Applet ID too long", v28, 2u);
      }

      sub_10001A3FC();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
      return;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  if (v19)
  {
    while (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 > 255)
      {
        goto LABEL_17;
      }

LABEL_11:
      if (v19 != 2)
      {
        v20 = WORD2(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_41;
        }

LABEL_22:
        sub_1000094F4(a1, a2);
        goto LABEL_23;
      }

      v25 = *(a1 + 16);
      v19 = *(a1 + 24);
      v20 = v19 - v25;
      if (!__OFSUB__(v19, v25))
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    goto LABEL_40;
  }

  v20 = BYTE6(a2);
LABEL_23:
  LODWORD(v75) = 304128;
  WORD2(v75) = v20;
  v76 = a1;
  v77 = a2;
  v78 = 0;
  sub_10000BC94(&v75, v74);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v75);
  v73 = a2;
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v84 = v5;
    v33 = v32;
    v34 = swift_slowAlloc();
    v74[0] = v34;
    *v33 = 136315138;
    v35 = sub_100170CB0(v75 | (WORD2(v75) << 32), v76, v77, v78);
    v37 = v36;
    v38 = Data.hexString()();
    sub_100009548(v35, v37);
    v39 = sub_100008F6C(v38._countAndFlagsBits, v38._object, v74);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "C-APDU (SELECT): %s", v33, 0xCu);
    sub_10000959C(v34);
  }

  sub_10009FAC0(v75 | (WORD2(v75) << 32), v76, v77, v78, 0, &v79);
  v40 = v80;
  if (v80 >> 60 == 15)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "select applet error", v43, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
LABEL_38:
    sub_10000BCF0(&v75);
    return;
  }

  v45 = v82;
  v46 = v83;
  v47 = v79;
  v48 = v81;
  sub_1000094F4(v79, v80);
  sub_1000094F4(v45, v46);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
  v51 = os_log_type_enabled(v49, v50);
  v84 = v45;
  if (v51)
  {
    v72 = v47;
    v52 = swift_slowAlloc();
    v71 = v50;
    v53 = swift_slowAlloc();
    v74[0] = v53;
    *v52 = 136315138;
    v54 = Data.hexString()();
    v55 = sub_100008F6C(v54._countAndFlagsBits, v54._object, v74);

    *(v52 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v71, "R-APDU: %s", v52, 0xCu);
    sub_10000959C(v53);

    v47 = v72;
  }

  if (v48 != 36864)
  {
    sub_1000094F4(v47, v40);
    sub_1000094F4(v84, v46);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v74[0] = v65;
      *v64 = 136315138;
      sub_100004074(&qword_10039E268, &unk_1002C16F0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1002C1660;
      *(v66 + 56) = &type metadata for UInt16;
      *(v66 + 64) = &protocol witness table for UInt16;
      *(v66 + 32) = v48;
      v67 = String.init(format:_:)();
      v69 = sub_100008F6C(v67, v68, v74);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "received non 9000 while selecting applet(%s).", v64, 0xCu);
      sub_10000959C(v65);
    }

    sub_10001A3FC();
    swift_allocError();
    *v70 = v48;
    swift_willThrow();
    sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
    goto LABEL_38;
  }

  sub_1000094F4(a1, v73);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  sub_100009548(a1, v73);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74[0] = v59;
    *v58 = 136315138;
    v60 = Data.hexString()();
    v61 = sub_100008F6C(v60._countAndFlagsBits, v60._object, v74);

    *(v58 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v56, v57, "Applet selected: %s", v58, 0xCu);
    sub_10000959C(v59);
  }

  sub_10000BCF0(&v75);

  sub_10000BD44(&v79, &qword_10039E2C0, &unk_1002BFEB0);
}

BOOL NFSecureElementManagerSession.isAppletInSEStateInfo(aid:seState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Data.hexString()();
  if (qword_10039D498 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A10F8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100008F6C(v4._countAndFlagsBits, v4._object, &v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "checking if applet %s is in SE State Info", v8, 0xCu);
    sub_10000959C(v9);
  }

  v10 = sub_1000A16C8(v4._countAndFlagsBits, v4._object, a3);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    if (v10)
    {
      v15 = Dictionary.description.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
      v15 = 0x676E6968746F6ELL;
    }

    v18 = sub_100008F6C(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "found %s", v13, 0xCu);
    sub_10000959C(v14);
  }

  return v10 != 0;
}

uint64_t sub_10009F524()
{
  v1 = v0;
  v2 = [v0 validateSEPairings:0];
  if (v2 != 27)
  {
    if (v2)
    {
      v18 = v2;
      if (qword_10039D498 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000403C(v19, qword_1003A10F8);
      v4 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v20))
      {
        goto LABEL_18;
      }

      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 1) = v18;
      v7 = "Failed to determine SE-SEP pairings: %u";
      v8 = v20;
      v9 = v4;
      v10 = v21;
      v11 = 8;
    }

    else
    {
      if (qword_10039D498 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000403C(v3, qword_1003A10F8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_18;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "valid SE-SEP pairing found.";
      v8 = v5;
      v9 = v4;
      v10 = v6;
      v11 = 2;
    }

    _os_log_impl(&_mh_execute_header, v9, v8, v7, v10, v11);

LABEL_18:

    v17 = 1;
    return v17 & 1;
  }

  if (qword_10039D498 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A10F8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SE-SEP is not paired, trying deleteAllApplets()", v15, 2u);
  }

  v24 = 0;
  if ([v1 deleteAllApplets:0 error:&v24])
  {
    v16 = v24;
    v17 = 0;
  }

  else
  {
    v23 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v17 & 1;
}

uint64_t sub_10009F814()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A10F8);
  sub_10000403C(v0, qword_1003A10F8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.secureElement.getter();
}

uint8_t *NFSecureElementManagerSession.transceive(_:)(uint64_t a1, uint8_t *isa)
{
  v16 = 0;
  v4 = [objc_opt_self() embeddedSecureElementWithError:&v16];
  if (!v4)
  {
    v10 = v16;
LABEL_12:
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return isa;
  }

  v5 = v4;
  v6 = v16;
  v7 = [v5 serialNumber];

  if (!v7)
  {
    if (qword_10039D498 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A10F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      isa = swift_slowAlloc();
      *isa = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "no seid", isa, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v14 = 0;
    goto LABEL_13;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = 0;
  v8 = [v2 transceive:isa forSEID:v7 error:&v16];

  v9 = v16;
  if (!v8)
  {
    v10 = v9;
    goto LABEL_12;
  }

  isa = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return isa;
}

void sub_10009FAC0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v8 = a1;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if (a5)
  {
    v11 = sub_100170F04(v10, a2, a3, a4);
  }

  else
  {
    v11 = sub_100170CB0(v10, a2, a3, a4);
  }

  v13 = v11;
  v14 = v12;
  v15 = NFSecureElementManagerSession.transceive(_:)(v11, v12);
  v25 = v24;
  v91 = v13;
  v92 = v14;
  v88 = v8;
  v26 = v15;
  sub_1000094F4(v15, v24);
  sub_10017157C(v26, v25, &v102);
  v27 = v103;
  v99 = v102;
  v100 = v103;
  v101 = v104;
  sub_10001A3FC();
  swift_allocError();
  *v28 = v27;
  v29 = sub_100171840(36864);

  if (v29)
  {
    sub_100009548(v26, v25);
    v30 = v13;
    v31 = v92;
    goto LABEL_9;
  }

  v87 = v26;
  swift_allocError();
  *v37 = v27;
  v38 = sub_100171840(25360);

  if ((v38 & 1) == 0)
  {
    if (qword_10039D4A0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_10000403C(v64, qword_1003A1128);
    sub_1000094F4(v13, v92);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    sub_100009548(v13, v92);
    if (os_log_type_enabled(v65, v66))
    {
      loga = v66;
      v67 = swift_slowAlloc();
      *&v94 = swift_slowAlloc();
      *v67 = 136315394;
      swift_beginAccess();
      v86 = v25;
      sub_1000094F4(v99, *(&v99 + 1));
      sub_1000094F4(*(&v100 + 1), v101);
      v68 = Data.hexString()();
      sub_100009548(v99, *(&v99 + 1));
      sub_100009548(*(&v100 + 1), v101);
      v69 = sub_100008F6C(v68._countAndFlagsBits, v68._object, &v94);

      *(v67 + 4) = v69;
      *(v67 + 12) = 2080;
      v70 = Data.hexString()();
      v71 = sub_100008F6C(v70._countAndFlagsBits, v70._object, &v94);

      *(v67 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v65, loga, "Status Word Not 9000 (!) RAPDU: %s to CAPDU: %s", v67, 0x16u);
      swift_arrayDestroy();

      sub_100009548(v26, v86);
      sub_100009548(v13, v92);

      goto LABEL_10;
    }

    sub_100009548(v26, v25);

    v30 = v13;
    v31 = v92;
LABEL_9:
    sub_100009548(v30, v31);
LABEL_10:
    swift_beginAccess();
    v33 = *(&v99 + 1);
    v32 = v99;
    v34 = v100;
    v35 = *(&v100 + 1);
    v36 = v101;
    sub_1000094F4(v99, *(&v99 + 1));
    sub_1000094F4(v35, v36);
    sub_100009548(v32, v33);
    sub_100009548(v35, v36);
    goto LABEL_13;
  }

  v84 = a6;
  v85 = v25;
  v39 = *(&v99 + 1);
  v40 = v99;
  sub_1000094F4(v99, *(&v99 + 1));
  if (qword_10039D4A0 != -1)
  {
    goto LABEL_67;
  }

LABEL_16:
  log = type metadata accessor for Logger();
  a6 = 0;
  while (1)
  {
    sub_10000403C(log, qword_1003A1128);
    sub_1000094F4(a2, a3);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 16777728;
      *(v43 + 4) = v88;
      *(v43 + 5) = 256;
      *(v43 + 7) = HIBYTE(v88);
      sub_100009548(a2, a3);
      _os_log_impl(&_mh_execute_header, v41, v42, "More data available: CLA=%hhu, INS=%hhu", v43, 8u);
    }

    else
    {
      sub_100009548(a2, a3);
    }

    v44 = NFSecureElementManagerSession.transceive(_:)(v91, v92);
    v46 = v45;
    sub_1000094F4(v44, v45);
    sub_10017157C(v44, v46, &v105);
    v47 = *(&v99 + 1) >> 62;
    if ((*(&v99 + 1) >> 62) > 1)
    {
      if (v47 == 2)
      {
        v49 = *(v99 + 16);
        v50 = *(v99 + 24);
        v51 = __OFSUB__(v50, v49);
        v48 = v50 - v49;
        if (v51)
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          swift_once();
          goto LABEL_16;
        }
      }

      else
      {
        v48 = 0;
      }
    }

    else if (v47)
    {
      LODWORD(v48) = DWORD1(v99) - v99;
      if (__OFSUB__(DWORD1(v99), v99))
      {
        goto LABEL_64;
      }

      v48 = v48;
    }

    else
    {
      v48 = BYTE14(v99);
    }

    v107 = v105;
    v52 = *(&v105 + 1) >> 62;
    if ((*(&v105 + 1) >> 62) > 1)
    {
      if (v52 == 2)
      {
        v54 = *(v105 + 16);
        v55 = *(v105 + 24);
        v51 = __OFSUB__(v55, v54);
        v53 = v55 - v54;
        if (v51)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v53 = 0;
      }
    }

    else if (v52)
    {
      LODWORD(v53) = DWORD1(v105) - v105;
      if (__OFSUB__(DWORD1(v105), v105))
      {
        goto LABEL_66;
      }

      v53 = v53;
    }

    else
    {
      v53 = BYTE14(v105);
    }

    v51 = __OFADD__(v48, v53);
    v56 = v48 + v53;
    if (v51)
    {
      break;
    }

    if (v56 > 0x100000 || a6 >= 0x1000)
    {
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v72, v73))
      {
        sub_100009548(v44, v46);
        v78 = v40;
        v79 = v39;
LABEL_62:
        sub_100009548(v78, v79);
        sub_100009548(v87, v85);
        sub_100009548(v91, v92);

        sub_1000A1E5C(&v105);
        v82 = *(&v100 + 1);
        v83 = v101;
        sub_100009548(v99, *(&v99 + 1));
        sub_100009548(v82, v83);
        v32 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v33 = 0xF000000000000000;
        a6 = v84;
        goto LABEL_13;
      }

      v74 = swift_slowAlloc();
      *v74 = 134218240;
      swift_beginAccess();
      v75 = v99;
      v76 = *(&v99 + 1) >> 62;
      if ((*(&v99 + 1) >> 62) > 1)
      {
        v77 = 0;
        if (v76 != 2)
        {
          goto LABEL_61;
        }

        v75 = *(v99 + 16);
        v80 = *(v99 + 24);
        v51 = __OFSUB__(v80, v75);
        v77 = v80 - v75;
        if (!v51)
        {
          goto LABEL_61;
        }

        __break(1u);
      }

      else if (!v76)
      {
        v77 = BYTE14(v99);
LABEL_61:
        *(v74 + 4) = v77;
        *(v74 + 12) = 2048;
        *(v74 + 14) = a6 + 1;
        _os_log_impl(&_mh_execute_header, v72, v73, "exceed artificial limit when fetching more data.\nsize: %ld\napdu exchange counter: %ld", v74, 0x16u);

        sub_100009548(v40, v39);
        v78 = v44;
        v79 = v46;
        goto LABEL_62;
      }

      v51 = __OFSUB__(HIDWORD(v75), v75);
      v81 = HIDWORD(v75) - v75;
      if (v51)
      {
        __break(1u);
        return;
      }

      v77 = v81;
      goto LABEL_61;
    }

    v97 = v40;
    v98 = v39;
    v95 = &type metadata for Data;
    v96 = &protocol witness table for Data;
    v94 = v105;
    v57 = sub_10000BE18(&v94, &type metadata for Data);
    v58 = *v57;
    v59 = v57[1];
    sub_1000094F4(v40, v39);
    sub_1000A1E00(&v107, &v93);
    sub_1000A1C34(v58, v59);
    sub_100009548(v44, v46);
    sub_100009548(v40, v39);
    sub_10000959C(&v94);
    sub_1000A1E5C(&v105);
    v40 = v97;
    v39 = v98;
    v60 = v106;
    a6 = (a6 + 1);
    if (v106 != 25360)
    {
      sub_100009548(v91, v92);
      sub_100009548(v87, v85);
      v61 = v99;
      v62 = *(&v100 + 1);
      v63 = v101;
      *&v99 = v40;
      *(&v99 + 1) = v39;
      LOWORD(v100) = v60;
      *(&v100 + 1) = v40;
      v101 = v39;
      sub_1000094F4(v40, v39);
      sub_100009548(v61, *(&v61 + 1));
      sub_100009548(v62, v63);
      a6 = v84;
      goto LABEL_10;
    }
  }

  __break(1u);
  swift_once();
  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A1128);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v105 = v20;
    *v19 = 136315138;
    *&v102 = 0;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v21 = String.init<A>(describing:)();
    v23 = sub_100008F6C(v21, v22, &v105);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "failed to communicate with SE %s", v19, 0xCu);
    sub_10000959C(v20);

    sub_100009548(v39, v40);
  }

  else
  {
    sub_100009548(v39, v40);
  }

  v32 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0xF000000000000000;
LABEL_13:
  *a6 = v32;
  a6[1] = v33;
  a6[2] = v34;
  a6[3] = v35;
  a6[4] = v36;
}

void sub_1000A0770(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v117 = a1;
  v11 = a1 & 0xFFFFFFFFFFFFLL;
  if (a5)
  {
    v12 = sub_100170F04(v11, a2, a3, a4);
  }

  else
  {
    v12 = sub_100170CB0(v11, a2, a3, a4);
  }

  v14 = v12;
  v15 = v13;
  v26 = sub_1000A1A8C();
  v28 = v27;
  v114 = a2;
  v115 = a3;
  sub_1000094F4(v26, v27);
  sub_10017157C(v26, v28, &v129);
  v29 = v130;
  v126 = v129;
  v127 = v130;
  v128 = v131;
  sub_10001A3FC();
  swift_allocError();
  *v30 = v29;
  v31 = sub_100171840(36864);

  if (v31)
  {
    sub_100009548(v26, v28);
    goto LABEL_9;
  }

  swift_allocError();
  *v37 = v29;
  v38 = sub_100171840(25360);

  if ((v38 & 1) == 0)
  {
    if (qword_10039D4A0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000403C(v65, qword_1003A1128);
    sub_1000094F4(v14, v15);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    sub_100009548(v14, v15);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *&v121 = swift_slowAlloc();
      *v68 = 136315394;
      swift_beginAccess();
      v109 = v28;
      sub_1000094F4(v126, *(&v126 + 1));
      sub_1000094F4(*(&v127 + 1), v128);
      v69 = Data.hexString()();
      sub_100009548(v126, *(&v126 + 1));
      sub_100009548(*(&v127 + 1), v128);
      v70 = sub_100008F6C(v69._countAndFlagsBits, v69._object, &v121);

      *(v68 + 4) = v70;
      *(v68 + 12) = 2080;
      v71 = v15;
      v72 = v14;
      v73 = Data.hexString()();
      v74 = sub_100008F6C(v73._countAndFlagsBits, v73._object, &v121);

      *(v68 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v66, v67, "Status Word Not 9000 (!) RAPDU: %s to CAPDU: %s", v68, 0x16u);
      swift_arrayDestroy();

      sub_100009548(v26, v109);
      sub_100009548(v72, v71);

      goto LABEL_10;
    }

    sub_100009548(v26, v28);

LABEL_9:
    sub_100009548(v14, v15);
LABEL_10:
    swift_beginAccess();
    v33 = *(&v126 + 1);
    v32 = v126;
    v34 = v127;
    v35 = *(&v127 + 1);
    v36 = v128;
    sub_1000094F4(v126, *(&v126 + 1));
    sub_1000094F4(v35, v36);
    sub_100009548(v32, v33);
    sub_100009548(v35, v36);
    goto LABEL_13;
  }

  v106 = a6;
  v107 = v26;
  v108 = v28;
  a6 = *(&v126 + 1);
  v39 = v126;
  sub_1000094F4(v126, *(&v126 + 1));
  if (qword_10039D4A0 != -1)
  {
    goto LABEL_91;
  }

LABEL_16:
  v113 = type metadata accessor for Logger();
  v40 = 0;
  v110 = v15;
  v111 = v14;
  v112 = v7;
  while (1)
  {
    v119 = a6;
    sub_10000403C(v113, qword_1003A1128);
    sub_1000094F4(v114, v115);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 16777728;
      *(v44 + 4) = v117;
      *(v44 + 5) = 256;
      *(v44 + 7) = HIBYTE(v117);
      sub_100009548(v114, v115);
      _os_log_impl(&_mh_execute_header, v42, v43, "More data available: CLA=%hhu, INS=%hhu", v44, 8u);
    }

    else
    {
      sub_100009548(v114, v115);
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v121 = 0;
    v46 = [v7 transceive:isa error:&v121];

    v47 = v121;
    if (!v46)
    {
      v75 = v47;
      v76 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000094F4(v14, v15);
      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      sub_100009548(v14, v15);

      log = v77;
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *v79 = 138413058;
        swift_allocError();
        *v80 = 25360;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 4) = v81;
        *v116 = v81;
        *(v79 + 12) = 2080;
        v82 = Data.hexString()();
        v83 = sub_100008F6C(v82._countAndFlagsBits, v82._object, &v124);

        *(v79 + 14) = v83;
        *(v79 + 22) = 2080;
        swift_beginAccess();
        v84 = v126;
        v85 = *(&v127 + 1);
        v86 = v128;
        sub_1000094F4(v126, *(&v126 + 1));
        sub_1000094F4(v85, v86);
        v87 = Data.hexString()();
        v88 = v78;
        sub_100009548(v84, *(&v84 + 1));
        sub_100009548(v85, v86);
        v89 = sub_100008F6C(v87._countAndFlagsBits, v87._object, &v124);

        *(v79 + 24) = v89;
        *(v79 + 32) = 2080;
        v120[0] = v76;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v90 = String.init<A>(describing:)();
        v92 = sub_100008F6C(v90, v91, &v124);

        *(v79 + 34) = v92;
        _os_log_impl(&_mh_execute_header, log, v88, "getting %@, but subsequent apdu failed. C-APDU: %s\nR-APDU: %s\nerror: %s", v79, 0x2Au);
        sub_10000BD44(v116, &unk_10039E220, &qword_1002C3D60);

        swift_arrayDestroy();

        sub_100009548(v39, v119);
        sub_100009548(v107, v108);
        sub_100009548(v111, v110);
      }

      else
      {
        sub_100009548(v39, a6);
        sub_100009548(v107, v108);

        sub_100009548(v14, v15);
      }

      goto LABEL_81;
    }

    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    sub_1000094F4(v48, v50);
    sub_10017157C(v48, v50, &v132);
    v51 = *(&v126 + 1) >> 62;
    if ((*(&v126 + 1) >> 62) > 1)
    {
      if (v51 == 2)
      {
        v53 = *(v126 + 16);
        v54 = *(v126 + 24);
        v55 = __OFSUB__(v54, v53);
        v52 = v54 - v53;
        if (v55)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v52 = 0;
      }
    }

    else if (v51)
    {
      LODWORD(v52) = DWORD1(v126) - v126;
      if (__OFSUB__(DWORD1(v126), v126))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
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
        swift_once();
        goto LABEL_16;
      }

      v52 = v52;
    }

    else
    {
      v52 = BYTE14(v126);
    }

    v134 = v132;
    v56 = *(&v132 + 1) >> 62;
    if ((*(&v132 + 1) >> 62) > 1)
    {
      if (v56 == 2)
      {
        v58 = *(v132 + 16);
        v59 = *(v132 + 24);
        v55 = __OFSUB__(v59, v58);
        v57 = v59 - v58;
        if (v55)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v57 = 0;
      }
    }

    else if (v56)
    {
      LODWORD(v57) = DWORD1(v132) - v132;
      if (__OFSUB__(DWORD1(v132), v132))
      {
        goto LABEL_85;
      }

      v57 = v57;
    }

    else
    {
      v57 = BYTE14(v132);
    }

    v55 = __OFADD__(v52, v57);
    v60 = v52 + v57;
    if (v55)
    {
      break;
    }

    if (v60 > 0x100000 || v40 >= 0x1000)
    {
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v93, v94))
      {
        sub_100009548(v48, v50);
        sub_100009548(v39, a6);
LABEL_80:
        sub_100009548(v107, v108);
        sub_100009548(v14, v15);

        sub_1000A1E5C(&v132);
LABEL_81:
        v104 = *(&v127 + 1);
        v105 = v128;
        sub_100009548(v126, *(&v126 + 1));
        sub_100009548(v104, v105);
        v32 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v33 = 0xF000000000000000;
        a6 = v106;
        goto LABEL_13;
      }

      v95 = swift_slowAlloc();
      *v95 = 134218240;
      swift_beginAccess();
      v96 = v126;
      v97 = *(&v126 + 1) >> 62;
      if ((*(&v126 + 1) >> 62) > 1)
      {
        v98 = 0;
        if (v97 != 2)
        {
          goto LABEL_79;
        }

        v96 = *(v126 + 16);
        v102 = *(v126 + 24);
        v55 = __OFSUB__(v102, v96);
        v98 = v102 - v96;
        if (!v55)
        {
          goto LABEL_79;
        }

        __break(1u);
      }

      else if (!v97)
      {
        v98 = BYTE14(v126);
LABEL_79:
        *(v95 + 4) = v98;
        *(v95 + 12) = 2048;
        *(v95 + 14) = v40 + 1;
        _os_log_impl(&_mh_execute_header, v93, v94, "exceed artificial limit when fetching more data.\nsize: %ld\napdu exchange counter: %ld", v95, 0x16u);

        sub_100009548(v39, a6);
        sub_100009548(v48, v50);
        v14 = v111;
        goto LABEL_80;
      }

      v55 = __OFSUB__(HIDWORD(v96), v96);
      v103 = HIDWORD(v96) - v96;
      if (v55)
      {
        __break(1u);
      }

      v98 = v103;
      goto LABEL_79;
    }

    v124 = v39;
    v125 = a6;
    v122 = &type metadata for Data;
    v123 = &protocol witness table for Data;
    v121 = v132;
    v61 = sub_10000BE18(&v121, &type metadata for Data);
    v62 = *v61;
    v7 = v61[1];
    v63 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v63)
      {
        goto LABEL_17;
      }

      v15 = v62;
      v64 = v62 >> 32;
      v14 = v64 - v15;
      if (v64 < v15)
      {
        goto LABEL_87;
      }

      sub_1000094F4(v39, a6);
      sub_1000A1E00(&v134, v120);
      if (__DataStorage._bytes.getter() && __OFSUB__(v15, __DataStorage._offset.getter()))
      {
        goto LABEL_90;
      }

      v15 = v110;
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100009548(v48, v50);
      sub_100009548(v39, a6);
LABEL_58:
      v14 = v111;
      goto LABEL_18;
    }

    if (v63 == 2)
    {
      v14 = *(v62 + 16);
      v15 = *(v62 + 24);
      sub_1000094F4(v39, a6);
      sub_1000A1E00(&v134, v120);
      if (__DataStorage._bytes.getter() && __OFSUB__(v14, __DataStorage._offset.getter()))
      {
        goto LABEL_89;
      }

      v55 = __OFSUB__(v15, v14);
      v14 = v15 - v14;
      if (v55)
      {
        goto LABEL_88;
      }

      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100009548(v48, v50);
      sub_100009548(v39, a6);
      v15 = v110;
      goto LABEL_58;
    }

LABEL_17:
    sub_1000094F4(v39, a6);
    sub_1000A1E00(&v134, v120);
    Data._Representation.append(contentsOf:)();
    sub_100009548(v48, v50);
    sub_100009548(v39, a6);
LABEL_18:
    sub_10000959C(&v121);
    sub_1000A1E5C(&v132);
    v39 = v124;
    a6 = v125;
    v41 = v133;
    ++v40;
    v7 = v112;
    if (v133 != 25360)
    {
      sub_100009548(v14, v15);
      sub_100009548(v107, v108);
      v99 = v126;
      v100 = *(&v127 + 1);
      v101 = v128;
      *&v126 = v39;
      *(&v126 + 1) = a6;
      LOWORD(v127) = v41;
      *(&v127 + 1) = v39;
      v128 = a6;
      sub_1000094F4(v39, a6);
      sub_100009548(v99, *(&v99 + 1));
      sub_100009548(v100, v101);
      a6 = v106;
      goto LABEL_10;
    }
  }

  __break(1u);
  swift_once();
  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A1128);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = v14;
    v21 = swift_slowAlloc();
    *&v132 = v21;
    *v19 = 136315138;
    *&v129 = v50;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v22 = String.init<A>(describing:)();
    v24 = v15;
    v25 = sub_100008F6C(v22, v23, &v132);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "failed to communicate with SE %s", v19, 0xCu);
    sub_10000959C(v21);

    sub_100009548(v20, v24);
  }

  else
  {
    sub_100009548(v14, v15);
  }

  v32 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0xF000000000000000;
LABEL_13:
  *a6 = v32;
  a6[1] = v33;
  a6[2] = v34;
  a6[3] = v35;
  a6[4] = v36;
}

uint64_t sub_1000A16C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v16 = [v3 stateInformation];
    if (!v16)
    {
      return 0;
    }

    v17 = v16;
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v18 + 16))
    {
      goto LABEL_8;
    }

    sub_10000BDA4(v18 + 32, &v31);

    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v12 = *&v30[0];
    if (!*&v30[0])
    {
      return 0;
    }
  }

  v13 = *(v12 + 16);

  if (!v13 || (v14 = sub_1000F5A28(0x656E6961746E6F63, 0xEA00000000007372), (v15 & 1) == 0))
  {
LABEL_8:

    return 0;
  }

  sub_10000BDA4(*(v12 + 56) + 32 * v14, &v31);

  sub_10000411C(0, &qword_1003A1120, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v7;
  v25 = v8;
  v26 = *&v30[0];
  v27 = a2;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v32)
  {
LABEL_25:
    (*(v25 + 8))(v11, v24);

    return 0;
  }

  while (1)
  {
    sub_100019D3C(&v31, v30);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v20 = v28;
    if (*(v28 + 16))
    {
      v21 = sub_1000F5A28(0x694174656C707061, 0xE900000000000064);
      if (v22)
      {
        sub_10000BDA4(*(v20 + 56) + 32 * v21, v30);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_15:

LABEL_16:
    NSFastEnumerationIterator.next()();
    if (!v32)
    {
      goto LABEL_25;
    }
  }

  if (v28 != a1 || v29 != v27)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

LABEL_24:
  (*(v25 + 8))(v11, v24);

  return v20;
}

void *sub_1000A1A8C()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 transceive:isa error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1000A1B64(uint64_t a1)
{
  result = sub_1000A1BE4(&qword_1003A1110, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A1BA4(uint64_t a1)
{
  result = sub_1000A1BE4(&qword_1003A1118, &unk_10039E250, NFSecureElementReaderSession_ptr);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A1BE4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000411C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A1C34(uint64_t a1, unint64_t a2)
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

    return sub_1000A1D6C(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1000A1D6C(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000A1D6C(uint64_t a1, uint64_t a2)
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

void sub_1000A1EB0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v99 = a1;
  v13 = a1 & 0xFFFFFFFFFFFFLL;
  if (a5)
  {
    v14 = sub_100170F04(v13, a2, a3, a4);
  }

  else
  {
    v14 = sub_100170CB0(v13, a2, a3, a4);
  }

  v103 = v14;
  v104 = v15;
  v16 = *(a7 + 16);
  v17 = v16();
  v94 = v16;
  v97 = a7;
  log = a2;
  v95 = a3;
  v96 = a6;
  v27 = &v114;
  v28 = v17;
  v30 = v29;
  sub_1000094F4(v17, v29);
  sub_10017157C(v28, v30, &v114);
  v31 = v115;
  v111 = v114;
  v112 = v115;
  v113 = v116;
  sub_10001A3FC();
  swift_allocError();
  *v32 = v31;
  v33 = sub_100171840(36864);

  if (v33)
  {
    sub_100009548(v28, v30);
    goto LABEL_9;
  }

  v91 = v28;
  v92 = v30;
  swift_allocError();
  *v39 = v31;
  v40 = sub_100171840(25360);

  if (v40)
  {
    v90 = a8;
    a8 = *(&v111 + 1);
    v102 = v111;
    sub_1000094F4(v111, *(&v111 + 1));
    if (qword_10039D4A0 != -1)
    {
LABEL_85:
      swift_once();
    }

    v41 = 0;
    v42 = log;
    v93 = type metadata accessor for Logger();
    while (1)
    {
      v100 = a8;
      a8 = sub_10000403C(v93, qword_1003A1128);
      sub_1000094F4(v42, v95);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v42;
        v48 = v46;
        *v46 = 16777728;
        *(v46 + 4) = v99;
        *(v46 + 5) = 256;
        *(v46 + 7) = HIBYTE(v99);
        sub_100009548(v47, v95);
        _os_log_impl(&_mh_execute_header, v44, v45, "More data available: CLA=%hhu, INS=%hhu", v48, 8u);
      }

      else
      {
        sub_100009548(v42, v95);
      }

      v49 = (v94)(v103, v104, v96, v97);
      v51 = v50;
      sub_1000094F4(v49, v50);
      sub_10017157C(v49, v51, &v117);
      v52 = *(&v111 + 1) >> 62;
      if ((*(&v111 + 1) >> 62) > 1)
      {
        if (v52 == 2)
        {
          v54 = *(v111 + 16);
          v55 = *(v111 + 24);
          v56 = __OFSUB__(v55, v54);
          v53 = v55 - v54;
          if (v56)
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
        }

        else
        {
          v53 = 0;
        }
      }

      else if (v52)
      {
        LODWORD(v53) = DWORD1(v111) - v111;
        if (__OFSUB__(DWORD1(v111), v111))
        {
          goto LABEL_78;
        }

        v53 = v53;
      }

      else
      {
        v53 = BYTE14(v111);
      }

      v27[5] = v117;
      v57 = v120 >> 62;
      if ((v120 >> 62) > 1)
      {
        if (v57 == 2)
        {
          v59 = *(v119 + 16);
          v60 = *(v119 + 24);
          v56 = __OFSUB__(v60, v59);
          v58 = v60 - v59;
          if (v56)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v58 = 0;
        }
      }

      else if (v57)
      {
        LODWORD(v58) = HIDWORD(v119) - v119;
        if (__OFSUB__(HIDWORD(v119), v119))
        {
          goto LABEL_79;
        }

        v58 = v58;
      }

      else
      {
        v58 = BYTE6(v120);
      }

      v56 = __OFADD__(v53, v58);
      v61 = v53 + v58;
      if (v56)
      {
        __break(1u);
        swift_once();
        v18 = type metadata accessor for Logger();
        sub_10000403C(v18, qword_1003A1128);
        swift_errorRetain();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v117 = v22;
          *v21 = 136315138;
          *&v114 = 0;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v23 = String.init<A>(describing:)();
          v25 = a8;
          v26 = sub_100008F6C(v23, v24, &v117);

          *(v21 + 4) = v26;
          a8 = v25;
          _os_log_impl(&_mh_execute_header, v19, v20, "failed to communicate with SE %s", v21, 0xCu);
          sub_10000959C(v22);

          sub_100009548(v103, v104);
        }

        else
        {
          sub_100009548(v103, v104);
        }

        goto LABEL_12;
      }

      if (v61 > 0x100000 || v41 > 0xFFF)
      {
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 134218240;
          swift_beginAccess();
          v80 = v111;
          v81 = *(&v111 + 1) >> 62;
          a8 = v90;
          if ((*(&v111 + 1) >> 62) > 1)
          {
            v82 = 0;
            if (v81 == 2)
            {
              v80 = *(v111 + 16);
              v86 = *(v111 + 24);
              v56 = __OFSUB__(v86, v80);
              v82 = v86 - v80;
              if (v56)
              {
                __break(1u);
                goto LABEL_73;
              }
            }
          }

          else
          {
            if (!v81)
            {
              v82 = BYTE14(v111);
              goto LABEL_75;
            }

LABEL_73:
            v56 = __OFSUB__(HIDWORD(v80), v80);
            v87 = HIDWORD(v80) - v80;
            if (v56)
            {
              __break(1u);
            }

            v82 = v87;
          }

LABEL_75:
          *(v79 + 4) = v82;
          *(v79 + 12) = 2048;
          *(v79 + 14) = v41 + 1;
          _os_log_impl(&_mh_execute_header, v77, v78, "exceed artificial limit when fetching more data.\nsize: %ld\napdu exchange counter: %ld", v79, 0x16u);

          sub_100009548(v102, v100);
          sub_100009548(v49, v51);
        }

        else
        {
          sub_100009548(v49, v51);
          sub_100009548(v102, v100);
          a8 = v90;
        }

        sub_100009548(v91, v92);
        sub_100009548(v103, v104);

        sub_1000A1E5C(&v117);
        v88 = *(&v112 + 1);
        v89 = v113;
        sub_100009548(v111, *(&v111 + 1));
        sub_100009548(v88, v89);
LABEL_12:
        v34 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v35 = 0xF000000000000000;
        goto LABEL_13;
      }

      a8 = v100;
      v109 = v102;
      v110 = v100;
      v107 = &type metadata for Data;
      v108 = &protocol witness table for Data;
      v106 = v117;
      v62 = sub_10000BE18(&v106, &type metadata for Data);
      v63 = *v62;
      v64 = v62[1] >> 62;
      if (v64 > 1)
      {
        if (v64 == 2)
        {
          v27 = *(v63 + 16);
          v65 = *(v63 + 24);
          sub_1000094F4(v102, v100);
          sub_1000A1E00(&v119, v105);
          a8 = __DataStorage._bytes.getter();
          if (a8)
          {
            v66 = __DataStorage._offset.getter();
            if (__OFSUB__(v27, v66))
            {
              goto LABEL_83;
            }

            a8 = (a8 + v27 - v66);
          }

          v56 = __OFSUB__(v65, v27);
          v27 = (v65 - v27);
          if (v56)
          {
            goto LABEL_82;
          }

LABEL_57:
          __DataStorage._length.getter();
          Data._Representation.append(contentsOf:)();
          sub_100009548(v49, v51);
          sub_100009548(v102, v100);
          v27 = &v114;
          goto LABEL_18;
        }
      }

      else if (v64)
      {
        v67 = v63;
        v68 = v63 >> 32;
        v27 = (v68 - v67);
        if (v68 < v67)
        {
          goto LABEL_81;
        }

        sub_1000094F4(v102, v100);
        sub_1000A1E00(&v119, v105);
        a8 = __DataStorage._bytes.getter();
        if (a8 && __OFSUB__(v67, __DataStorage._offset.getter()))
        {
          goto LABEL_84;
        }

        goto LABEL_57;
      }

      sub_1000094F4(v102, v100);
      sub_1000A1E00(&v119, v105);
      Data._Representation.append(contentsOf:)();
      sub_100009548(v49, v51);
      sub_100009548(v102, v100);
LABEL_18:
      sub_10000959C(&v106);
      sub_1000A1E5C(&v117);
      a8 = v110;
      v102 = v109;
      v43 = v118;
      ++v41;
      v42 = log;
      if (v118 != 25360)
      {
        sub_100009548(v103, v104);
        sub_100009548(v91, v92);
        v83 = v111;
        v84 = *(&v112 + 1);
        v85 = v113;
        *&v111 = v102;
        *(&v111 + 1) = a8;
        LOWORD(v112) = v43;
        *(&v112 + 1) = v102;
        v113 = a8;
        sub_1000094F4(v102, a8);
        sub_100009548(v83, *(&v83 + 1));
        sub_100009548(v84, v85);
        a8 = v90;
        goto LABEL_10;
      }
    }
  }

  if (qword_10039D4A0 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_10000403C(v69, qword_1003A1128);
  sub_1000094F4(v103, v104);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  sub_100009548(v103, v104);
  if (os_log_type_enabled(v70, v71))
  {
    v101 = v71;
    v72 = swift_slowAlloc();
    *&v106 = swift_slowAlloc();
    *v72 = 136315394;
    swift_beginAccess();
    sub_1000094F4(v111, *(&v111 + 1));
    sub_1000094F4(*(&v112 + 1), v113);
    v73 = Data.hexString()();
    sub_100009548(v111, *(&v111 + 1));
    sub_100009548(*(&v112 + 1), v113);
    v74 = sub_100008F6C(v73._countAndFlagsBits, v73._object, &v106);

    *(v72 + 4) = v74;
    *(v72 + 12) = 2080;
    v75 = Data.hexString()();
    v76 = sub_100008F6C(v75._countAndFlagsBits, v75._object, &v106);

    *(v72 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v70, v101, "Status Word Not 9000 (!) RAPDU: %s to CAPDU: %s", v72, 0x16u);
    swift_arrayDestroy();

    sub_100009548(v28, v92);
    sub_100009548(v103, v104);

    goto LABEL_10;
  }

  sub_100009548(v28, v30);

LABEL_9:
  sub_100009548(v103, v104);
LABEL_10:
  swift_beginAccess();
  v35 = *(&v111 + 1);
  v34 = v111;
  v36 = v112;
  v37 = *(&v112 + 1);
  v38 = v113;
  sub_1000094F4(v111, *(&v111 + 1));
  sub_1000094F4(v37, v38);
  sub_100009548(v34, v35);
  sub_100009548(v37, v38);
LABEL_13:
  *a8 = v34;
  a8[1] = v35;
  a8[2] = v36;
  a8[3] = v37;
  a8[4] = v38;
}
uint64_t sub_100017E24()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[34];
  _StringGuts.grow(_:)(82);
  v4._object = 0x800000010001DBB0;
  v4._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v4);
  v0[25] = v3;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x7265206874697720;
  v6._object = 0xEC00000020726F72;
  String.append(_:)(v6);
  swift_getErrorValue();
  v7 = v0[2];
  v8 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v9._countAndFlagsBits = 0x697972746572202CLL;
  v9._object = 0xED00002E2E2E676ELL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0;
  v11._countAndFlagsBits = 0xD000000000000051;
  v11._object = 0x800000010001DB50;
  v10._object = 0xE000000000000000;
  Logger.errorWithMetadata(_:function:line:)(v10, v11, 193);

  swift_willThrow();
  v13 = v0[42];
  v12 = v0[43];
  v14 = v0[41];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100017FD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v7 = *(v3 + 400);

  if (v1)
  {
    v8 = sub_10001856C;
  }

  else
  {
    v8 = sub_100018128;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100018128()
{
  v1 = *(v0 + 416);
  if (v1 == 10 || v1 == 0)
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 360);
    v5 = *(v0 + 304);
    v6 = *v5;
    *v5 = v3;
    v7 = v3;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Mobile asset query download successful", v10, 2u);
    }

    v11 = *(v0 + 400);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 328);

    v15 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 272);
    (*(*(v0 + 320) + 16))(*(v0 + 328), *(v0 + 360), *(v0 + 312));
    _StringGuts.grow(_:)(68);
    v17._object = 0x800000010001DC10;
    v17._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v17);
    *(v0 + 264) = v16;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x6572206874697720;
    v19._object = 0xED000020746C7573;
    String.append(_:)(v19);
    v20 = MAStringForMADownloadResult();
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0x800000010001DC40;
      v22 = 0xD000000000000010;
    }

    v25 = *(v0 + 320);
    v26 = *(v0 + 328);
    v27 = *(v0 + 312);
    v28._countAndFlagsBits = v22;
    v28._object = v24;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x697972746572202CLL;
    v29._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0;
    v31._countAndFlagsBits = 0xD000000000000051;
    v31._object = 0x800000010001DB50;
    v30._object = 0xE000000000000000;
    Logger.errorWithMetadata(_:function:line:)(v30, v31, 237);

    (*(v25 + 8))(v26, v27);
    sub_1000195E4();
    swift_allocError();
    *v32 = xmmword_10001D2F0;
    *(v32 + 16) = 7;
    swift_willThrow();
    v34 = *(v0 + 392);
    v33 = *(v0 + 400);
    v35 = *(v0 + 360);
    v36 = *(v0 + 272);
    _StringGuts.grow(_:)(67);
    v37._object = 0x800000010001DC10;
    v37._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v37);
    *(v0 + 248) = v36;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0x7265206874697720;
    v39._object = 0xEC00000020726F72;
    String.append(_:)(v39);
    swift_getErrorValue();
    v40 = *(v0 + 40);
    v41 = *(v0 + 48);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v42._countAndFlagsBits = 0x697972746572202CLL;
    v42._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 0;
    v44._countAndFlagsBits = 0xD000000000000051;
    v44._object = 0x800000010001DB50;
    v43._object = 0xE000000000000000;
    Logger.errorWithMetadata(_:function:line:)(v43, v44, 244);

    swift_willThrow();

    v46 = *(v0 + 336);
    v45 = *(v0 + 344);
    v47 = *(v0 + 328);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_10001856C()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[45];
  v5 = v0[34];
  _StringGuts.grow(_:)(67);
  v6._object = 0x800000010001DC10;
  v6._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v6);
  v0[31] = v5;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7265206874697720;
  v8._object = 0xEC00000020726F72;
  String.append(_:)(v8);
  swift_getErrorValue();
  v9 = v0[5];
  v10 = v0[6];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11._countAndFlagsBits = 0x697972746572202CLL;
  v11._object = 0xED00002E2E2E676ELL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0;
  v13._countAndFlagsBits = 0xD000000000000051;
  v13._object = 0x800000010001DB50;
  v12._object = 0xE000000000000000;
  Logger.errorWithMetadata(_:function:line:)(v12, v13, 244);

  swift_willThrow();

  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[41];

  v17 = v0[1];

  return v17();
}

void sub_100018730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000ADE0(&qword_100028698, &qword_10001D388);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = String._bridgeToObjectiveC()();
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  aBlock[4] = sub_1000196E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001891C;
  aBlock[3] = &unk_100024F58;
  v16 = _Block_copy(aBlock);

  [ObjCClassFromMetadata startCatalogDownload:v13 options:a5 completionWithError:v16];
  _Block_release(v16);
}

void sub_10001891C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100018994(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000ADE0(&qword_100028698, &qword_10001D388);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_10001992C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001891C;
  aBlock[3] = &unk_100024F08;
  v13 = _Block_copy(aBlock);

  [a2 startDownload:a3 completionWithError:v13];
  _Block_release(v13);
}

uint64_t sub_100018B4C(uint64_t a1, uint64_t a2)
{
  if (!a2 || a1 == 10)
  {
    sub_10000ADE0(&qword_100028698, &qword_10001D388);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    swift_errorRetain();
    sub_10000ADE0(&qword_100028698, &qword_10001D388);
    return CheckedContinuation.resume(throwing:)();
  }
}

unint64_t sub_100018BD4()
{
  result = qword_100028648;
  if (!qword_100028648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028648);
  }

  return result;
}

uint64_t sub_100018C28(char a1)
{
  *(v1 + 148) = a1;
  v2 = type metadata accessor for NWPath.Status();
  *(v1 + 24) = v2;
  v3 = *(v2 - 8);
  *(v1 + 32) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v5 = type metadata accessor for NWPath();
  *(v1 + 56) = v5;
  v6 = *(v5 - 8);
  *(v1 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v8 = *(*(sub_10000ADE0(&qword_100028650, &qword_10001D340) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  v9 = type metadata accessor for NWPathMonitor.Iterator();
  *(v1 + 88) = v9;
  v10 = *(v9 - 8);
  *(v1 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100018DE4, 0, 0);
}

uint64_t sub_100018DE4()
{
  if (qword_1000281F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 112) = sub_100001D14(v1, qword_100028540);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for network", v4, 2u);
  }

  v5 = *(v0 + 104);

  v6 = type metadata accessor for NWPathMonitor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 120) = NWPathMonitor.init()();

  NWPathMonitor.makeAsyncIterator()();
  *(v0 + 144) = enum case for NWPath.Status.satisfied(_:);
  v9 = sub_100019560(&qword_100028658, &type metadata accessor for NWPathMonitor.Iterator);
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_100018FC0;
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v14, v9);
}

uint64_t sub_100018FC0()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1000194D4;
  }

  else
  {
    v3 = sub_1000190D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000190F0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_16:
    v35 = *(v0 + 104);
    v36 = *(v0 + 72);
    v37 = *(v0 + 80);
    v39 = *(v0 + 40);
    v38 = *(v0 + 48);

    v40 = *(v0 + 8);

    return v40();
  }

  v5 = *(v0 + 144);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  (*(v3 + 32))(*(v0 + 72), v1, v2);
  NWPath.status.getter();
  (*(v9 + 104))(v7, v5, v8);
  v10 = static NWPath.Status.== infix(_:_:)();
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  if (v10)
  {
    if ((*(v0 + 148) & 1) != 0 || (v12 = *(v0 + 72), (NWPath.isExpensive.getter() & 1) == 0))
    {
      v23 = *(v0 + 112);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 120);
      v29 = *(v0 + 96);
      v28 = *(v0 + 104);
      v30 = *(v0 + 88);
      v31 = *(v0 + 64);
      v32 = *(v0 + 72);
      v33 = *(v0 + 56);
      if (v26)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Acceptable network found", v34, 2u);
      }

      (*(v31 + 8))(v32, v33);
      (*(v29 + 8))(v28, v30);
      goto LABEL_16;
    }

    v13 = *(v0 + 112);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Non acceptable network found", v16, 2u);
    }
  }

  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v17 = sub_100019560(&qword_100028658, &type metadata accessor for NWPathMonitor.Iterator);
  v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v19 = swift_task_alloc();
  *(v0 + 128) = v19;
  *v19 = v0;
  v19[1] = sub_100018FC0;
  v20 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v21, v22, v17);
}

uint64_t sub_1000194D4()
{
  *(v0 + 16) = *(v0 + 136);
  sub_10000ADE0(&qword_100028660, &qword_10001D348);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100019560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000195A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
    }

    if (a3 != 5)
    {
      return result;
    }
  }

  if (!a3)
  {
  }

  if (a3 == 2)
  {
  }

  return result;
}

unint64_t sub_1000195E4()
{
  result = qword_100028688;
  if (!qword_100028688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028688);
  }

  return result;
}

uint64_t sub_10001963C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019654()
{
  v1 = sub_10000ADE0(&qword_100028698, &qword_10001D388);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001976C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_100019788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000197D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100019814(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10001983C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100019858(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001986C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000198B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000198F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_100019930(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_10000AA90();
  if (v3)
  {
    v14 = result;
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v10 = 138412802;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_100009778(a1, a2, &v15);
      *(v10 + 22) = 2048;
      *(v10 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error: %@, in %s, line: %ld", v10, 0x20u);
      sub_10001B268(v11);

      sub_10000B9B0(v12);
    }

    swift_willThrow();
    return v14;
  }

  return result;
}

void sub_100019AD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100002DA8();
  if (v3)
  {
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v9 = 138412802;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100009778(a1, a2, &v13);
      *(v9 + 22) = 2048;
      *(v9 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error: %@, in %s, line: %ld", v9, 0x20u);
      sub_10001B268(v10);

      sub_10000B9B0(v11);
    }

    swift_willThrow();
  }
}

uint64_t sub_100019C60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = 0;
  v12 = [v10 propertyListWithData:isa options:0 format:0 error:&v24];

  v13 = v24;
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = a1;
    v14 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 138412802;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100009778(v22, a2, &v24);
      *(v17 + 22) = 2048;
      *(v17 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error: %@, in %s, line: %ld", v17, 0x20u);
      sub_10001B268(v18);

      sub_10000B9B0(v19);
    }

    swift_willThrow();
  }

  return sub_10000CD7C(a5, a6);
}

uint64_t Logger.logIfError<A>(_:function:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = a1();
  if (v5)
  {
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v12 = 138412802;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_100009778(a3, a4, &v16);
      *(v12 + 22) = 2048;
      *(v12 + 24) = a5;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error: %@, in %s, line: %ld", v12, 0x20u);
      sub_10001B268(v13);

      sub_10000B9B0(v14);
    }

    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall Logger.errorWithMetadata(_:function:line:)(Swift::String _, Swift::String function, Swift::Int line)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100009778(v7, v6, &v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100009778(countAndFlagsBits, object, &v11);
    *(v9 + 22) = 2048;
    *(v9 + 24) = line;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Error: %s, in %s, line: %ld", v9, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10001A1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = type metadata accessor for FilePath();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001A298, 0, 0);
}

uint64_t sub_10001A298()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  FilePath.init(_:)();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10001A354;
  v5 = v0[10];

  return sub_10000F480(v5);
}

uint64_t sub_10001A354()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10001A52C;
  }

  else
  {
    v5 = sub_10001A4BC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001A4BC()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001A52C()
{
  v21 = v0;
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[3];
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100009778(v9, v7, &v20);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v10, 0x20u);
    sub_10001B268(v11);

    sub_10000B9B0(v12);
  }

  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[7];
  swift_willThrow();

  v17 = v0[1];
  v18 = v0[12];

  return v17();
}

uint64_t sub_10001A708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return _swift_task_switch(sub_10001A72C, 0, 0);
}

uint64_t sub_10001A72C()
{
  v1 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10001A7CC;

  return static Task<>.sleep(nanoseconds:)(300000000000);
}

uint64_t sub_10001A7CC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001BD04, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10001A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  v7 = type metadata accessor for Cryptex.InstallOptions();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10001A9C8, 0, 0);
}

uint64_t sub_10001A9C8()
{
  v1 = v0[14];
  v2 = type metadata accessor for CryptexLocalDevice();
  v3 = CryptexLocalDevice.__allocating_init()();
  v0[5] = v2;
  v0[6] = &protocol witness table for CryptexLocalDevice;
  v0[2] = v3;
  Cryptex.InstallOptions.init()();
  v4 = *(&async function pointer to dispatch thunk of Cryptex.install(onto:options:) + 1);
  v9 = &async function pointer to dispatch thunk of Cryptex.install(onto:options:) + async function pointer to dispatch thunk of Cryptex.install(onto:options:);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_10001AAAC;
  v6 = v0[14];
  v7 = v0[11];

  return (v9)(v0 + 2, v6);
}

uint64_t sub_10001AAAC()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v4 = *v1;
  v2[16] = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  sub_10000B9B0(v2 + 2);
  if (v0)
  {
    v5 = sub_10001AC8C;
  }

  else
  {
    v5 = sub_10001AC1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001AC1C()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001AC8C()
{
  v21 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[8];
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100009778(v9, v7, &v20);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v10, 0x20u);
    sub_10001B268(v11);

    sub_10000B9B0(v12);
  }

  v14 = v0[16];
  v15 = v0[14];
  v16 = v0[11];
  swift_willThrow();

  v17 = v0[1];
  v18 = v0[16];

  return v17();
}

uint64_t Logger.logIfError<A>(_:function:line:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a6;
  v7[5] = v6;
  v7[2] = a4;
  v7[3] = a5;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_10001AF70;

  return v12(a1);
}

uint64_t sub_10001AF70()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001B0A4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10001B0A4()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100009778(v9, v7, &v18);
    *(v10 + 22) = 2048;
    *(v10 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@, in %s, line: %ld", v10, 0x20u);
    sub_10001B268(v11);

    sub_10000B9B0(v12);
  }

  v14 = v0[7];
  swift_willThrow();
  v15 = v0[1];
  v16 = v0[7];

  return v15();
}

uint64_t sub_10001B268(uint64_t a1)
{
  v2 = sub_10000ADE0(&qword_100028220, &qword_10001CDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001B2D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100015F30(a5, &v17);
  if (!v5)
  {
    return v17;
  }

  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(a1, a2, &v16);
    *(v11 + 22) = 2048;
    *(v11 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10001B268(v12);

    sub_10000B9B0(v13);
  }

  return swift_willThrow();
}

uint64_t sub_10001B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v7[10] = sub_100013310();

  return _swift_task_switch(sub_10001B4F4, 0, 0);
}

uint64_t sub_10001B4F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  type metadata accessor for MADownloadResult(0);
  *v6 = v0;
  v6[1] = sub_10001B5FC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000010001DCA0, sub_10001BCF8, v3, v7);
}

uint64_t sub_10001B5FC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10001B718;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100005DA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001B718()
{
  v20 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[4];

  swift_errorRetain();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(v10, v8, &v19);
    *(v11 + 22) = 2048;
    *(v11 + 24) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10001B268(v12);

    sub_10000B9B0(v13);
  }

  v15 = v0[13];
  swift_willThrow();
  v16 = v0[1];
  v17 = v0[13];

  return v16();
}

uint64_t sub_10001B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_10001B90C, 0, 0);
}

uint64_t sub_10001B90C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 56);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  type metadata accessor for MADownloadResult(0);
  *v3 = v0;
  v3[1] = sub_10001BA08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000012, 0x800000010001DC80, sub_10001BCF0, v1, v4);
}

uint64_t sub_10001BA08()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10001BB24;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10001BD08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001BB24()
{
  v20 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[4];

  swift_errorRetain();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(v10, v8, &v19);
    *(v11 + 22) = 2048;
    *(v11 + 24) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10001B268(v12);

    sub_10000B9B0(v13);
  }

  v15 = v0[11];
  swift_willThrow();
  v16 = v0[1];
  v17 = v0[11];

  return v16();
}

uint64_t FilePath.init(_:)()
{
  return FilePath.init(_:)();
}

{
  return FilePath.init(_:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}
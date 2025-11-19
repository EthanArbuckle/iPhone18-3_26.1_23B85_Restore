uint64_t sub_1008B90DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v50 - v6);
  v8 = type metadata accessor for LostModeRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  static os_log_type_t.default.getter();
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C3E8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  v56 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  sub_1008B9F58(a1, v13, type metadata accessor for LostModeRecord);
  v51 = v13;
  v52 = v8;
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v57 = v14;
  os_log(_:dso:log:_:_:)();

  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v21 = swift_allocBox();
  v23 = v22;
  sub_1008B3F98();
  v24 = swift_allocError();
  *v25 = 8;
  *v23 = v24;
  swift_storeEnumTagMultiPayload();
  v26 = v54;
  v27 = *(v54 + 280);
  v28 = v20;
  sub_100B13D74(a1, 0, v27, v21, v28);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  sub_1008BA218(v23, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v7;
    static os_log_type_t.error.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v56;
    v59 = v29;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = String.init<A>(describing:)();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v19;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    v33 = _convertErrorToNSError(_:)();
    (*(v55 + 16))(v55, v33);
  }

  else
  {
    v34 = v26;
    v35 = v53;
    sub_1008BA1A0(v7, v53, type metadata accessor for LostModeRecord);
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    dispatch_group_enter(v28);
    v37 = v28;

    sub_1008B6940(v35, 1, v34, v36, v37, &unk_101639A70, &unk_101639B88, sub_100721F34, sub_1008BA8A0, &unk_101639BB0, sub_1008BA88C, &unk_101639B38, sub_1008BA8A0, &unk_101639B60, sub_1008BA88C, sub_1008BA870, &unk_101639AE8, sub_1008BA8A0, &unk_101639B10, sub_1008BA88C, &unk_101639A98, sub_1008BA8A0, &unk_101639AC0, sub_1008BA88C);

    OS_dispatch_group.wait()();
    swift_beginAccess();
    v38 = *(v36 + 16);
    if (v38)
    {
      v50 = v27;
      v54 = v21;
      swift_errorRetain();
      static os_log_type_t.error.getter();
      v39 = swift_allocObject();
      *(v39 + 16) = v56;
      v58 = v38;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v40 = String.init<A>(describing:)();
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = v19;
      v41 = v19;
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)();

      dispatch_group_enter(v37);
      v43 = v37;
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v44 = swift_allocObject();
      *(v44 + 16) = v56;
      v45 = v53;
      sub_1008B9F58(v53, v51, type metadata accessor for LostModeRecord);
      v46 = String.init<A>(describing:)();
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = v41;
      *(v44 + 32) = v46;
      *(v44 + 40) = v47;
      os_log(_:dso:log:_:_:)();

      sub_100B144B8(v45, v50, v43);

      OS_dispatch_group.wait()();
      swift_errorRetain();
      v48 = _convertErrorToNSError(_:)();
      (*(v55 + 16))(v55, v48);

      sub_1008B9FC0(v45, type metadata accessor for LostModeRecord);
    }

    else
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100A8306C(12);
      (*(v55 + 16))(v55, 0);

      sub_1008B9FC0(v35, type metadata accessor for LostModeRecord);
    }
  }
}

uint64_t sub_1008B98F0(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for ServerStatusCode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(v5 + 16);
  v12(&v33 - v10, a1, v4);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == enum case for ServerStatusCode.success(_:))
  {
    static os_log_type_t.default.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return (a2)(0);
  }

  if (v13 == enum case for ServerStatusCode.notModified(_:))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1008B3F98();
    v15 = swift_allocError();
    v17 = 6;
LABEL_9:
    *v16 = v17;
LABEL_14:
    (a2)(v15);
  }

  if (v13 == enum case for ServerStatusCode.badRequest(_:))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1008B3F98();
    v15 = swift_allocError();
    *v18 = 2;
    goto LABEL_14;
  }

  if (v13 == enum case for ServerStatusCode.unauthorized(_:))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1008B3F98();
    v15 = swift_allocError();
    v17 = 3;
    goto LABEL_9;
  }

  v37 = a2;
  v19 = enum case for ServerStatusCode.serverConflict(_:);
  v20 = v13;
  v21 = static os_log_type_t.error.getter();
  if (v20 == v19)
  {
    v22 = v37;
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1008B3F98();
    swift_allocError();
    *v23 = 5;
    v22();
  }

  v24 = v21;
  if (qword_1016950A0 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C3E8;
  v12(v9, a1, v4);
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    v35 = v26;
    v36 = swift_slowAlloc();
    v38 = v36;
    *v26 = 136446210;
    sub_1008BA074(&qword_1016A88F8, &type metadata accessor for ServerStatusCode);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v5 + 8);
    v29(v9, v4);
    v30 = sub_1000136BC(v34, v28, &v38);

    v31 = v35;
    *(v35 + 1) = v30;
    _os_log_impl(&_mh_execute_header, v25, v24, "Failed to submit lost mode: %{public}s.", v31, 0xCu);
    sub_100007BAC(v36);
  }

  else
  {
    v29 = *(v5 + 8);
    v29(v9, v4);
  }

  sub_1008B3F98();
  swift_allocError();
  *v32 = 4;
  v37();

  return (v29)(v11, v4);
}

uint64_t sub_1008B9F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008B9FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008BA020()
{
  result = qword_1016ACF20;
  if (!qword_1016ACF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF20);
  }

  return result;
}

uint64_t sub_1008BA074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008BA0D0()
{
  result = qword_1016ACF40;
  if (!qword_1016ACF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF40);
  }

  return result;
}

uint64_t sub_1008BA124()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1008BA1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008BA218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BA288(uint64_t a1)
{
  v3 = *(type metadata accessor for LostModeRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1008B25B8(a1, v4);
}

uint64_t sub_1008BA300()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v8 = *(v0 + v2 + v1[9] + 8);

  v9 = *(v0 + v2 + v1[10] + 8);

  v10 = *(v0 + v2 + v1[11] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1008BA44C(id *a1)
{
  v3 = *(type metadata accessor for LostModeRecord() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ED15C(a1, v4, v5, v6);
}

uint64_t sub_1008BA4C0()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  v9 = *(v5 + v1[9] + 8);

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[11] + 8);

  v12 = *(v0 + v3);

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1008BA62C(void **a1)
{
  v3 = *(type metadata accessor for LostModeRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *a1;

  return sub_1009EDFAC(v10, v1 + v4, v6, v8);
}

uint64_t sub_1008BA6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BA748(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_1008BA790(uint64_t a1)
{
  v3 = *(type metadata accessor for LostModeRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1008B3A5C(a1, v4, v5, v6, v7);
}

unint64_t sub_1008BA81C()
{
  result = qword_1016ACF48;
  if (!qword_1016ACF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF48);
  }

  return result;
}

unint64_t sub_1008BA96C()
{
  result = qword_1016ACF50;
  if (!qword_1016ACF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF50);
  }

  return result;
}

uint64_t sub_1008BA9C0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      _StringGuts.grow(_:)(21);

      v4[0] = 0xD000000000000012;
      v4[1] = 0x8000000101363DC0;
    }

    else if (a1 == 4)
    {
      strcpy(v4, ".automatic (");
      BYTE5(v4[1]) = 0;
      HIWORD(v4[1]) = -5120;
    }

    else
    {
      strcpy(v4, ".imported (");
      HIDWORD(v4[1]) = -352321536;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      _StringGuts.grow(_:)(22);

      v4[0] = 0xD000000000000013;
      v4[1] = 0x8000000101363DE0;
    }

    else
    {
      strcpy(v4, ".explicit (");
      HIDWORD(v4[1]) = -352321536;
    }
  }

  else
  {
    strcpy(v4, ".unknown (");
    BYTE3(v4[1]) = 0;
    HIDWORD(v4[1]) = -369098752;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4[0];
}

unint64_t sub_1008BAB78()
{
  result = qword_1016ACF58;
  if (!qword_1016ACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF58);
  }

  return result;
}

double sub_1008BABDC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1008BAF20(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1008BAC20(uint64_t a1)
{
  *(a1 + 8) = sub_1008BAC50();
  result = sub_10030FBD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008BAC50()
{
  result = qword_1016ACF60;
  if (!qword_1016ACF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF60);
  }

  return result;
}

uint64_t sub_1008BACBC(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  *&v10 = sub_100519EE8(*v1, *(v1 + 8));
  *(&v10 + 1) = v4;
  sub_10015049C(v11, v12);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v10, *(&v10 + 1));
    v9 = *(v1 + 16);
    sub_100235658();
    *&v10 = FixedWidthInteger.data.getter();
    *(&v10 + 1) = v5;
    sub_10015049C(v11, v12);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v10, *(&v10 + 1));
    v13 = *(v1 + 24);
    v10 = *(v1 + 24);
    sub_10015049C(v11, v12);
    sub_100590F20(&v13, &v9);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v10, *(&v10 + 1));
    LODWORD(v9) = *(v1 + 40);
    sub_100101824();
    *&v10 = FixedWidthInteger.data.getter();
    *(&v10 + 1) = v6;
    sub_10015049C(v11, v12);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v10, *(&v10 + 1));
    LODWORD(v9) = *(v1 + 44);
    *&v10 = FixedWidthInteger.data.getter();
    *(&v10 + 1) = v8;
    sub_10015049C(v11, v12);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v10, *(&v10 + 1));
  return sub_100007BAC(v11);
}

uint64_t sub_1008BAF20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v59, v60);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  v57 = v8;
  v58 = v9;
  sub_100017D5C(v8, v9);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v10, v11);
    v12 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for BinaryDecodingError.decodingError(_:), v12);
    swift_willThrow();
    v14 = v10;
    v15 = v11;
LABEL_8:
    sub_100016590(v14, v15);
LABEL_9:
    sub_100007BAC(v59);
    return sub_100007BAC(a1);
  }

  v56 = a2;
  v16 = Data.trimmed.getter();
  v61 = v17;
  sub_100016590(v10, v11);
  v18 = v11;
  sub_10015049C(v59, v60);
  v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v21 = v20;
  v53 = v18;
  v54 = v10;
  v55 = v16;
  sub_100017D5C(v19, v20);
  static Endianness.current.getter();
  sub_100235658();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v58 == 1)
  {
    v22 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for BinaryDecodingError.decodingError(_:), v22);
    swift_willThrow();
    v24 = v19;
    v25 = v21;
LABEL_6:
    sub_100016590(v24, v25);
    sub_100016590(v55, v61);
    v14 = v54;
    v15 = v53;
    goto LABEL_8;
  }

  v26 = v19;
  v52 = v21;
  sub_10015049C(v59, v60);
  v51 = v57;
  v28 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v30 = v29;
  sub_100017D5C(v28, v29);
  sub_100018000(v28, v30, &v57);
  v50 = v30;
  v31 = v57;
  v49 = v58;
  sub_10015049C(v59, v60);
  v32 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v34 = v32;
  v35 = v33;
  v48 = v31;
  sub_100017D5C(v32, v33);
  static Endianness.current.getter();
  sub_100101824();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v57) == 1)
  {
    v36 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, enum case for BinaryDecodingError.decodingError(_:), v36);
    swift_willThrow();
    sub_100016590(v34, v35);
    sub_100016590(v31, v49);
    sub_100016590(v28, v50);
    v24 = v26;
    v25 = v52;
    goto LABEL_6;
  }

  v38 = v57;
  sub_10015049C(v59, v60);
  v47 = v34;
  v39 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v41 = v40;
  sub_100017D5C(v39, v40);
  static Endianness.current.getter();
  v46 = v41;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v57) == 1)
  {
    v42 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for BinaryDecodingError.decodingError(_:), v42);
    swift_willThrow();
    sub_100016590(v39, v46);
    sub_100016590(v47, v35);
    sub_100016590(v48, v49);
    sub_100016590(v28, v50);
    sub_100016590(v26, v52);
    sub_100016590(v55, v61);
    v14 = v54;
    v15 = v53;
    goto LABEL_8;
  }

  v44 = v57;
  sub_100016590(v54, v53);
  sub_100016590(v26, v52);
  sub_100016590(v28, v50);
  sub_100016590(v47, v35);
  sub_100016590(v39, v46);
  sub_100007BAC(v59);
  result = sub_100007BAC(a1);
  v45 = v61;
  *v56 = v55;
  *(v56 + 8) = v45;
  *(v56 + 16) = v51;
  *(v56 + 24) = v48;
  *(v56 + 32) = v49;
  *(v56 + 40) = v38;
  *(v56 + 44) = v44;
  return result;
}

double sub_1008BB614@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1008BC434(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_1008BB678@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, __int128 a14, __int128 a15)
{
  v22 = result;
  *&v158 = a5;
  *(&v158 + 1) = a6;
  v23 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v23)
    {
      v24 = BYTE6(a6);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v23 != 2)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v25 = *(a5 + 16);
  v26 = *(a5 + 24);
  v27 = __OFSUB__(v26, v25);
  v24 = v26 - v25;
  if (v27)
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      __break(1u);
      goto LABEL_151;
    }

    v24 = HIDWORD(a5) - a5;
  }

LABEL_11:
  v15 = (60 - v24);
  if (__OFSUB__(60, v24))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v103 = a9;
  v112 = a5;
  v113 = a6;
  sub_100017D5C(a5, a6);
  v135 = sub_100845C88(v15);
  v136 = v28;
  sub_100776394(&v135, 0);
  v16 = v135;
  v159 = a8;
  v29 = v136;
  v15 = &v158;
  Data.append(_:)();
  v30 = v29;
  a8 = v159;
  result = sub_100016590(v16, v30);
  *&v157 = a7;
  *(&v157 + 1) = a8;
  v17 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v17)
    {
      a9 = BYTE6(a8);
      goto LABEL_22;
    }

LABEL_19:
    LODWORD(a9) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      a9 = a9;
      goto LABEL_22;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v17 == 2)
  {
    v32 = *(a7 + 16);
    v31 = *(a7 + 24);
    v27 = __OFSUB__(v31, v32);
    a9 = v31 - v32;
    if (v27)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_22:
  v15 = (100 - a9);
  if (__OFSUB__(100, a9))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v110 = v22;
  v111 = a4;
  v16 = a10;
  a4 = a11;
  sub_100017D5C(a7, a8);
  v135 = sub_100845C88(v15);
  v136 = v33;
  sub_100776394(&v135, 0);
  v34 = v135;
  v22 = v136;
  v15 = &v157;
  Data.append(_:)();
  result = sub_100016590(v34, v22);
  v155 = a10;
  v156 = a11;
  a8 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!a8)
    {
      a9 = BYTE6(a11);
      goto LABEL_33;
    }

LABEL_30:
    LODWORD(a9) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      a9 = a9;
      goto LABEL_33;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (a8 == 2)
  {
    v36 = *(a10 + 16);
    v35 = *(a10 + 24);
    v27 = __OFSUB__(v35, v36);
    a9 = v35 - v36;
    if (v27)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_33:
  v15 = (720 - a9);
  if (__OFSUB__(720, a9))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v109 = a2;
  sub_100017D5C(a10, a11);
  v135 = sub_100845C88(v15);
  v136 = v37;
  sub_100776394(&v135, 0);
  v38 = v135;
  v22 = v136;
  v15 = &v155;
  Data.append(_:)();
  result = sub_100016590(v38, v22);
  v39 = v158;
  v108 = v157;
  if (v17 <= 1)
  {
    if (!v17)
    {
      a9 = BYTE6(v159);
      goto LABEL_44;
    }

LABEL_41:
    LODWORD(a9) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      a9 = a9;
      goto LABEL_44;
    }

LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v17 == 2)
  {
    v41 = *(a7 + 16);
    v40 = *(a7 + 24);
    v27 = __OFSUB__(v40, v41);
    a9 = v40 - v41;
    if (v27)
    {
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_44:
  v154 = a9;
  v102 = v39;
  v116 = v39;
  sub_100017D5C(v39, *(&v39 + 1));
  v118 = v108;
  sub_100017D5C(v108, *(&v108 + 1));
  sub_1000C3258();
  v15 = FixedWidthInteger.data.getter();
  v22 = v42;
  *&v117 = Data.trimmed.getter();
  *(&v117 + 1) = v43;
  sub_100016590(v15, v22);
  result = v155;
  v17 = v156;
  if (a8 <= 1)
  {
    if (!a8)
    {
      a9 = BYTE6(a11);
      goto LABEL_54;
    }

LABEL_51:
    LODWORD(a9) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      a9 = a9;
      goto LABEL_54;
    }

LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (a8 == 2)
  {
    v45 = *(a10 + 16);
    v44 = *(a10 + 24);
    v27 = __OFSUB__(v44, v45);
    a9 = v44 - v45;
    if (v27)
    {
      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_54:
  v121 = a12;
  v153 = a9;
  *&v115 = result;
  sub_100017D5C(result, v17);
  v15 = FixedWidthInteger.data.getter();
  v22 = v46;
  v107 = Data.trimmed.getter();
  v114 = v47;
  result = sub_100016590(v15, v22);
  v120 = a13;
  a8 = a13 >> 62;
  if ((a13 >> 62) <= 1)
  {
    if (!a8)
    {
      a9 = BYTE6(a13);
      goto LABEL_64;
    }

LABEL_61:
    LODWORD(a9) = HIDWORD(a12) - a12;
    if (!__OFSUB__(HIDWORD(a12), a12))
    {
      a9 = a9;
      goto LABEL_64;
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (a8 == 2)
  {
    v49 = *(a12 + 16);
    v48 = *(a12 + 24);
    v27 = __OFSUB__(v48, v49);
    a9 = v48 - v49;
    if (v27)
    {
      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
    a9 = 0;
  }

LABEL_64:
  *(&v115 + 1) = v17;
  v104 = a15;
  v105 = a14;
  v152 = a9;
  v50 = FixedWidthInteger.data.getter();
  v52 = v51;
  v15 = Data.trimmed.getter();
  v106 = v53;
  result = sub_100016590(v50, v52);
  v54 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v22 = v110;
    v17 = v111;
    if (v54 != 2)
    {
      goto LABEL_77;
    }

    v56 = *(v110 + 16);
    v55 = *(v110 + 24);
    v27 = __OFSUB__(v55, v56);
    a9 = v55 - v56;
    if (!v27)
    {
      if (a9 == 114)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

    goto LABEL_156;
  }

  v22 = v110;
  v17 = v111;
  if (v54)
  {
    LODWORD(a9) = HIDWORD(v110) - v110;
    if (!__OFSUB__(HIDWORD(v110), v110))
    {
      if (a9 == 114)
      {
        goto LABEL_71;
      }

LABEL_77:
      LOBYTE(v58) = 0;
LABEL_97:
      sub_1008BC228();
      swift_allocError();
      *v67 = v58;
      swift_willThrow();
      sub_100016590(v16, a4);
      sub_100016590(a7, v159);
      sub_100016590(v112, v113);
      sub_100016590(v104, *(&v104 + 1));
      sub_100016590(v105, *(&v105 + 1));
      sub_100016590(v15, v106);
      sub_100016590(v121, v120);
      sub_100016590(v107, v114);
      sub_100016590(v115, *(&v115 + 1));
      sub_100016590(v117, *(&v117 + 1));
      sub_100016590(v118, *(&v118 + 1));
      sub_100016590(v116, *(&v116 + 1));
      sub_100016590(a3, v17);
      sub_100016590(v22, a2);
      sub_100006654(0, 0xF000000000000000);
      sub_100016590(v155, v156);
      sub_100016590(v157, *(&v157 + 1));
      return sub_100016590(v158, *(&v158 + 1));
    }

LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (BYTE6(a2) != 114)
  {
    goto LABEL_77;
  }

LABEL_71:
  v57 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v57 != 2)
    {
      goto LABEL_87;
    }

    v60 = *(a3 + 16);
    v59 = *(a3 + 24);
    v27 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v27)
    {
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (v61 != 32)
    {
      goto LABEL_87;
    }
  }

  else
  {
    if (!v57)
    {
      if (BYTE6(v17) != 32)
      {
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (HIDWORD(a3) - a3 != 32)
    {
LABEL_87:
      LOBYTE(v58) = 1;
      goto LABEL_97;
    }
  }

LABEL_81:
  v62 = *(&v108 + 1) >> 62;
  if ((*(&v108 + 1) >> 62) > 1)
  {
    if (v62 != 2)
    {
      goto LABEL_96;
    }

    v64 = *(v108 + 16);
    v63 = *(v108 + 24);
    v27 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v27)
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    if (v65 != 100)
    {
      goto LABEL_96;
    }
  }

  else
  {
    if (!v62)
    {
      if (BYTE14(v108) != 100)
      {
        goto LABEL_96;
      }

      goto LABEL_91;
    }

    if (__OFSUB__(DWORD1(v108), v108))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (DWORD1(v108) - v108 != 100)
    {
LABEL_96:
      LOBYTE(v58) = 2;
      goto LABEL_97;
    }
  }

LABEL_91:
  v58 = *(&v117 + 1) >> 62;
  if ((*(&v117 + 1) >> 62) > 1)
  {
    if (v58 != 2)
    {
      goto LABEL_97;
    }

    v69 = *(v117 + 16);
    v68 = *(v117 + 24);
    v27 = __OFSUB__(v68, v69);
    v66 = v68 - v69;
    if (!v27)
    {
      goto LABEL_104;
    }

    __break(1u);
  }

  else if (!v58)
  {
    v66 = BYTE14(v117);
    goto LABEL_104;
  }

  LODWORD(v66) = DWORD1(v117) - v117;
  if (__OFSUB__(DWORD1(v117), v117))
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v66 = v66;
LABEL_104:
  if (v66 != 1)
  {
    LOBYTE(v58) = 3;
    goto LABEL_97;
  }

  v70 = *(&v116 + 1) >> 62;
  if ((*(&v116 + 1) >> 62) <= 1)
  {
    if (!v70)
    {
      v71 = BYTE14(v116);
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  if (v70 != 2)
  {
LABEL_120:
    LOBYTE(v58) = 4;
    goto LABEL_97;
  }

  v73 = *(v116 + 16);
  v72 = *(v116 + 24);
  v27 = __OFSUB__(v72, v73);
  v71 = v72 - v73;
  if (v27)
  {
    __break(1u);
LABEL_113:
    LODWORD(v71) = DWORD1(v116) - v116;
    if (__OFSUB__(DWORD1(v116), v116))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    v71 = v71;
  }

LABEL_115:
  if (v71 != 60)
  {
    goto LABEL_120;
  }

  v74 = *(&v115 + 1) >> 62;
  LOBYTE(v58) = 5;
  if ((*(&v115 + 1) >> 62) <= 1)
  {
    if (!v74)
    {
      goto LABEL_97;
    }

    LODWORD(v75) = DWORD1(v115) - v115;
    if (!__OFSUB__(DWORD1(v115), v115))
    {
      v75 = v75;
      goto LABEL_123;
    }

    goto LABEL_197;
  }

  if (v74 != 2)
  {
    goto LABEL_97;
  }

  v77 = *(v115 + 16);
  v76 = *(v115 + 24);
  v27 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v27)
  {
    goto LABEL_198;
  }

LABEL_123:
  if (v75 != 720)
  {
    LOBYTE(v58) = 5;
    goto LABEL_97;
  }

  v78 = v114 >> 62;
  if ((v114 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v114);
      goto LABEL_137;
    }

LABEL_135:
    LODWORD(v79) = HIDWORD(v107) - v107;
    if (!__OFSUB__(HIDWORD(v107), v107))
    {
      v79 = v79;
      goto LABEL_137;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  if (v78 != 2)
  {
LABEL_142:
    LOBYTE(v58) = 6;
    goto LABEL_97;
  }

  v81 = *(v107 + 16);
  v80 = *(v107 + 24);
  v27 = __OFSUB__(v80, v81);
  v79 = v80 - v81;
  if (v27)
  {
    __break(1u);
    goto LABEL_132;
  }

LABEL_137:
  if (v79 != 2)
  {
    goto LABEL_142;
  }

  LOBYTE(v58) = 7;
  if (a8 <= 1)
  {
    if (!a8)
    {
      goto LABEL_97;
    }

    LODWORD(v82) = HIDWORD(v121) - v121;
    if (!__OFSUB__(HIDWORD(v121), v121))
    {
      v82 = v82;
      goto LABEL_145;
    }

    goto LABEL_200;
  }

  if (a8 != 2)
  {
    goto LABEL_97;
  }

  v84 = *(v121 + 16);
  v83 = *(v121 + 24);
  v27 = __OFSUB__(v83, v84);
  v82 = v83 - v84;
  if (v27)
  {
    goto LABEL_201;
  }

LABEL_145:
  if (v82 != 554)
  {
    LOBYTE(v58) = 7;
    goto LABEL_97;
  }

  a9 = v106 >> 62;
  if ((v106 >> 62) <= 1)
  {
    if (!a9)
    {
      v85 = BYTE6(v106);
      goto LABEL_166;
    }

LABEL_164:
    LODWORD(v85) = HIDWORD(v15) - v15;
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      v85 = v85;
      goto LABEL_166;
    }

LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

LABEL_158:
  if (a9 != 2)
  {
    LOBYTE(v58) = 8;
    goto LABEL_97;
  }

  v87 = v15[2];
  v86 = v15[3];
  v27 = __OFSUB__(v86, v87);
  v85 = v86 - v87;
  if (v27)
  {
    __break(1u);
    goto LABEL_162;
  }

LABEL_166:
  if (v85 != 2)
  {
    LOBYTE(v58) = 8;
LABEL_195:
    a2 = v109;
    v22 = v110;
    v17 = v111;
    goto LABEL_97;
  }

  v88 = *(&v105 + 1) >> 62;
  if ((*(&v105 + 1) >> 62) <= 1)
  {
    if (!v88)
    {
      v89 = BYTE14(v105);
      goto LABEL_180;
    }

LABEL_178:
    LODWORD(v89) = DWORD1(v105) - v105;
    if (!__OFSUB__(DWORD1(v105), v105))
    {
      v89 = v89;
      goto LABEL_180;
    }

LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v88 != 2)
  {
LABEL_184:
    LOBYTE(v58) = 9;
    goto LABEL_195;
  }

  v91 = *(v105 + 16);
  v90 = *(v105 + 24);
  v27 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v27)
  {
    __break(1u);
    goto LABEL_176;
  }

LABEL_180:
  if (v89 != 8)
  {
    goto LABEL_184;
  }

  v92 = *(&v104 + 1) >> 62;
  if ((*(&v104 + 1) >> 62) > 1)
  {
    if (v92 != 2)
    {
LABEL_194:
      LOBYTE(v58) = 10;
      goto LABEL_195;
    }

    v95 = *(v104 + 16);
    v94 = *(v104 + 24);
    v27 = __OFSUB__(v94, v95);
    v93 = v94 - v95;
    if (!v27)
    {
LABEL_192:
      if (v93 == 24)
      {
        sub_100016590(v16, a4);
        sub_100016590(a7, v159);
        sub_100016590(v112, v113);
        *&v123 = v110;
        *(&v123 + 1) = v109;
        *&v124 = a3;
        *(&v124 + 1) = v111;
        v126 = v108;
        v125 = v102;
        v127 = v117;
        v128 = v115;
        *&v129 = v107;
        *(&v129 + 1) = v114;
        *&v130 = v121;
        *(&v130 + 1) = v120;
        *&v131 = v15;
        *(&v131 + 1) = v106;
        v132 = v105;
        v133 = v104;
        v134 = xmmword_10138BBF0;
        v135 = v110;
        v136 = v109;
        v137 = a3;
        v138 = v111;
        v140 = v108;
        v139 = v102;
        v141 = v117;
        v142 = v115;
        v143 = v107;
        v144 = v114;
        v145 = v121;
        v146 = v120;
        v147 = v15;
        v148 = v106;
        v149 = v105;
        v150 = v104;
        v151 = xmmword_10138BBF0;
        sub_1008BC27C(&v123, &v122);
        sub_1008BC2B4(&v135);
        sub_100016590(v115, *(&v115 + 1));
        sub_100016590(v118, *(&v118 + 1));
        result = sub_100016590(v116, *(&v116 + 1));
        v96 = v132;
        v103[8] = v131;
        v103[9] = v96;
        v97 = v134;
        v103[10] = v133;
        v103[11] = v97;
        v98 = v128;
        v103[4] = v127;
        v103[5] = v98;
        v99 = v130;
        v103[6] = v129;
        v103[7] = v99;
        v100 = v124;
        *v103 = v123;
        v103[1] = v100;
        v101 = v126;
        v103[2] = v125;
        v103[3] = v101;
        return result;
      }

      goto LABEL_194;
    }

    __break(1u);
    goto LABEL_189;
  }

  if (!v92)
  {
    v93 = BYTE14(v104);
    goto LABEL_192;
  }

LABEL_190:
  LODWORD(v93) = DWORD1(v104) - v104;
  if (!__OFSUB__(DWORD1(v104), v104))
  {
    v93 = v93;
    goto LABEL_192;
  }

LABEL_204:
  __break(1u);
  return result;
}

unint64_t sub_1008BC228()
{
  result = qword_1016ACF68;
  if (!qword_1016ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF68);
  }

  return result;
}

unint64_t sub_1008BC308()
{
  result = qword_1016ACF70;
  if (!qword_1016ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF70);
  }

  return result;
}

unint64_t sub_1008BC35C(uint64_t a1)
{
  *(a1 + 8) = sub_1008BC38C();
  result = sub_1008BC3E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008BC38C()
{
  result = qword_1016ACF78;
  if (!qword_1016ACF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF78);
  }

  return result;
}

unint64_t sub_1008BC3E0()
{
  result = qword_1016ACF80;
  if (!qword_1016ACF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ACF80);
  }

  return result;
}

uint64_t sub_1008BC434@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v130, v131);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_3;
  }

  v100 = v6;
  v132 = v7;
  sub_10015049C(v130, v131);
  *&v99 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v99 + 1) = v8;
  sub_10015049C(v130, v131);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v98 = v10;
  sub_10015049C(v130, v131);
  *&v96 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v96 + 1) = v11;
  sub_100017D5C(v9, v98);
  sub_1000E0A3C();
  v12 = DataProtocol.intValue.getter();
  v97 = v9;
  sub_10002EA98(v12, v9, v98, &v114);
  v13 = v114;
  v14 = v115;
  sub_10015049C(v130, v131);
  *&v93 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v93 + 1) = v15;
  *&v94 = v13;
  *(&v94 + 1) = v14;
  sub_10015049C(v130, v131);
  v16 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v17;
  sub_10015049C(v130, v131);
  *&v92 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v92 + 1) = v19;
  sub_100017D5C(v16, v18);
  v20 = DataProtocol.intValue.getter();
  v91 = v16;
  sub_10002EA98(v20, v16, v18, &v114);
  v21 = v114;
  v22 = v115;
  sub_10015049C(v130, v131);
  v23 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v89 = v24;
  v90 = v23;
  *&v88 = v21;
  *(&v88 + 1) = v22;
  v87 = v18;
  sub_10015049C(v130, v131);
  v25 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v27 = v26;
  *&v102 = v25;
  *(&v102 + 1) = v26;
  sub_100017D5C(v90, v89);
  v28 = DataProtocol.intValue.getter();
  sub_10002EA98(v28, v90, v89, &v114);
  v86 = v114;
  v95 = v115;
  sub_10015049C(v130, v131);
  *&v85 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  *(&v85 + 1) = v29;
  sub_10015049C(v130, v131);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v32 = result;
  v33 = v31;
  v34 = v132 >> 62;
  if ((v132 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v132);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v34 != 2)
  {
LABEL_17:
    LOBYTE(v41) = 0;
    goto LABEL_40;
  }

  v36 = *(v100 + 16);
  v37 = *(v100 + 24);
  v38 = __OFSUB__(v37, v36);
  v35 = v37 - v36;
  if (v38)
  {
    __break(1u);
LABEL_11:
    LODWORD(v35) = HIDWORD(v100) - v100;
    if (__OFSUB__(HIDWORD(v100), v100))
    {
      __break(1u);
      goto LABEL_91;
    }

    v35 = v35;
  }

LABEL_13:
  if (v35 != 114)
  {
    goto LABEL_17;
  }

  v39 = *(&v99 + 1) >> 62;
  if ((*(&v99 + 1) >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE14(v99);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v39 != 2)
  {
LABEL_28:
    LOBYTE(v41) = 1;
    goto LABEL_40;
  }

  v42 = *(v99 + 16);
  v43 = *(v99 + 24);
  v38 = __OFSUB__(v43, v42);
  v40 = v43 - v42;
  if (v38)
  {
    __break(1u);
LABEL_22:
    LODWORD(v40) = DWORD1(v99) - v99;
    if (__OFSUB__(DWORD1(v99), v99))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v40 = v40;
  }

LABEL_24:
  if (v40 != 32)
  {
    goto LABEL_28;
  }

  v44 = *(&v94 + 1) >> 62;
  if ((*(&v94 + 1) >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE14(v94);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v44 != 2)
  {
LABEL_39:
    LOBYTE(v41) = 2;
    goto LABEL_40;
  }

  v47 = *(v94 + 16);
  v46 = *(v94 + 24);
  v38 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v38)
  {
    __break(1u);
LABEL_33:
    LODWORD(v45) = DWORD1(v94) - v94;
    if (__OFSUB__(DWORD1(v94), v94))
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v45 = v45;
  }

LABEL_35:
  if (v45 != 100)
  {
    goto LABEL_39;
  }

  v41 = *(&v96 + 1) >> 62;
  if ((*(&v96 + 1) >> 62) <= 1)
  {
    if (!v41)
    {
      v48 = BYTE14(v96);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v41 != 2)
  {
    goto LABEL_40;
  }

  v50 = *(v96 + 16);
  v51 = *(v96 + 24);
  v38 = __OFSUB__(v51, v50);
  v48 = v51 - v50;
  if (v38)
  {
    __break(1u);
LABEL_45:
    LODWORD(v48) = DWORD1(v96) - v96;
    if (__OFSUB__(DWORD1(v96), v96))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v48 = v48;
  }

LABEL_47:
  if (v48 != 1)
  {
    LOBYTE(v41) = 3;
    goto LABEL_40;
  }

  v52 = *(&v93 + 1) >> 62;
  if ((*(&v93 + 1) >> 62) <= 1)
  {
    if (!v52)
    {
      v53 = BYTE14(v93);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v52 != 2)
  {
LABEL_63:
    LOBYTE(v41) = 4;
    goto LABEL_40;
  }

  v55 = *(v93 + 16);
  v54 = *(v93 + 24);
  v38 = __OFSUB__(v54, v55);
  v53 = v54 - v55;
  if (v38)
  {
    __break(1u);
LABEL_56:
    LODWORD(v53) = DWORD1(v93) - v93;
    if (__OFSUB__(DWORD1(v93), v93))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v53 = v53;
  }

LABEL_58:
  if (v53 != 60)
  {
    goto LABEL_63;
  }

  v56 = *(&v88 + 1) >> 62;
  LOBYTE(v41) = 5;
  if ((*(&v88 + 1) >> 62) <= 1)
  {
    if (!v56)
    {
      goto LABEL_40;
    }

    LODWORD(v57) = HIDWORD(v21) - v21;
    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      v57 = v57;
      goto LABEL_66;
    }

    goto LABEL_126;
  }

  if (v56 != 2)
  {
    goto LABEL_40;
  }

  v59 = *(v21 + 16);
  v58 = *(v21 + 24);
  v38 = __OFSUB__(v58, v59);
  v57 = v58 - v59;
  if (v38)
  {
    goto LABEL_127;
  }

LABEL_66:
  if (v57 != 720)
  {
    LOBYTE(v41) = 5;
    goto LABEL_40;
  }

  v60 = *(&v92 + 1) >> 62;
  if ((*(&v92 + 1) >> 62) <= 1)
  {
    if (!v60)
    {
      v61 = BYTE14(v92);
      goto LABEL_77;
    }

LABEL_75:
    LODWORD(v61) = DWORD1(v92) - v92;
    if (!__OFSUB__(DWORD1(v92), v92))
    {
      v61 = v61;
      goto LABEL_77;
    }

LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v60 != 2)
  {
LABEL_82:
    LOBYTE(v41) = 6;
    goto LABEL_40;
  }

  v63 = *(v92 + 16);
  v62 = *(v92 + 24);
  v38 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v38)
  {
    __break(1u);
    goto LABEL_75;
  }

LABEL_77:
  if (v61 != 2)
  {
    goto LABEL_82;
  }

  v64 = v95 >> 62;
  LOBYTE(v41) = 7;
  if ((v95 >> 62) <= 1)
  {
    if (v64)
    {
      LODWORD(v65) = HIDWORD(v86) - v86;
      if (!__OFSUB__(HIDWORD(v86), v86))
      {
        v65 = v65;
        goto LABEL_85;
      }

      goto LABEL_129;
    }

LABEL_40:
    sub_1008BC228();
    swift_allocError();
    *v49 = v41;
    swift_willThrow();
    sub_100016590(v90, v89);
    sub_100016590(v91, v87);
    sub_100016590(v97, v98);
    sub_100016590(v32, v33);
    sub_100016590(v85, *(&v85 + 1));
    sub_100016590(v25, v27);
    sub_100016590(v86, v95);
    sub_100016590(v92, *(&v92 + 1));
    sub_100016590(v21, *(&v88 + 1));
    sub_100016590(v96, *(&v96 + 1));
    sub_100016590(v94, *(&v94 + 1));
    sub_100016590(v93, *(&v93 + 1));
    sub_100016590(v99, *(&v99 + 1));
    sub_100016590(v100, v132);
    sub_100006654(0, 0xF000000000000000);
LABEL_3:
    sub_100007BAC(v130);
    return sub_100007BAC(a1);
  }

  if (v64 != 2)
  {
    goto LABEL_40;
  }

  v67 = *(v86 + 16);
  v66 = *(v86 + 24);
  v38 = __OFSUB__(v66, v67);
  v65 = v66 - v67;
  if (v38)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

LABEL_85:
  if (v65 != 554)
  {
    LOBYTE(v41) = 7;
    goto LABEL_40;
  }

  v35 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v35)
    {
      v68 = BYTE6(v27);
      goto LABEL_98;
    }

LABEL_96:
    LODWORD(v68) = HIDWORD(v25) - v25;
    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      v68 = v68;
      goto LABEL_98;
    }

LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

LABEL_91:
  if (v35 != 2)
  {
LABEL_102:
    LOBYTE(v41) = 8;
    goto LABEL_40;
  }

  v70 = *(v25 + 16);
  v69 = *(v25 + 24);
  v38 = __OFSUB__(v69, v70);
  v68 = v69 - v70;
  if (v38)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_98:
  if (v68 != 2)
  {
    goto LABEL_102;
  }

  v71 = *(&v85 + 1) >> 62;
  if ((*(&v85 + 1) >> 62) <= 1)
  {
    if (!v71)
    {
      v72 = BYTE14(v85);
      goto LABEL_110;
    }

LABEL_108:
    LODWORD(v72) = DWORD1(v85) - v85;
    if (!__OFSUB__(DWORD1(v85), v85))
    {
      v72 = v72;
      goto LABEL_110;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v71 != 2)
  {
LABEL_114:
    LOBYTE(v41) = 9;
    goto LABEL_40;
  }

  v74 = *(v85 + 16);
  v73 = *(v85 + 24);
  v38 = __OFSUB__(v73, v74);
  v72 = v73 - v74;
  if (v38)
  {
    __break(1u);
    goto LABEL_107;
  }

LABEL_110:
  if (v72 != 8)
  {
    goto LABEL_114;
  }

  v75 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v75 != 2)
    {
LABEL_124:
      LOBYTE(v41) = 10;
      goto LABEL_40;
    }

    v78 = *(result + 16);
    v77 = *(result + 24);
    v38 = __OFSUB__(v77, v78);
    v76 = v77 - v78;
    if (!v38)
    {
LABEL_122:
      if (v76 == 24)
      {
        sub_100016590(v90, v89);
        sub_100016590(v91, v87);
        sub_100016590(v97, v98);
        *&v102 = v100;
        *(&v102 + 1) = v132;
        v103 = v99;
        v104 = v93;
        v105 = v94;
        v106 = v96;
        v107 = v88;
        v108 = v92;
        *&v109 = v86;
        *(&v109 + 1) = v95;
        *&v110 = v25;
        *(&v110 + 1) = v27;
        v111 = v85;
        *&v112 = v32;
        *(&v112 + 1) = v33;
        v113 = xmmword_10138BBF0;
        v114 = v100;
        v115 = v132;
        v116 = v99;
        v117 = v93;
        v118 = v94;
        v119 = v96;
        v120 = v88;
        v121 = v92;
        v122 = v86;
        v123 = v95;
        v124 = v25;
        v125 = v27;
        v126 = v85;
        v127 = v32;
        v128 = v33;
        v129 = xmmword_10138BBF0;
        sub_1008BC27C(&v102, v101);
        sub_1008BC2B4(&v114);
        sub_100007BAC(v130);
        result = sub_100007BAC(a1);
        v79 = v111;
        a2[8] = v110;
        a2[9] = v79;
        v80 = v113;
        a2[10] = v112;
        a2[11] = v80;
        v81 = v107;
        a2[4] = v106;
        a2[5] = v81;
        v82 = v109;
        a2[6] = v108;
        a2[7] = v82;
        v83 = v103;
        *a2 = v102;
        a2[1] = v83;
        v84 = v105;
        a2[2] = v104;
        a2[3] = v84;
        return result;
      }

      goto LABEL_124;
    }

    __break(1u);
    goto LABEL_119;
  }

  if (!v75)
  {
    v76 = BYTE6(v31);
    goto LABEL_122;
  }

LABEL_120:
  LODWORD(v76) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v76 = v76;
    goto LABEL_122;
  }

LABEL_133:
  __break(1u);
  return result;
}

Swift::Int sub_1008BCF40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008BCFE8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1008BD07C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008BD120@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEAAC(*a1);
  *a2 = result;
  return result;
}

void sub_1008BD150(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 12589;
  v4 = 3223602;
  if (*v1 != 2)
  {
    v4 = 3354674;
  }

  if (*v1)
  {
    v3 = 3158066;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

Swift::Int sub_1008BD1C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008BD28C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1008BD344()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008BD40C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEAF8(*a1);
  *a2 = result;
  return result;
}

void sub_1008BD43C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  v4 = 0xE800000000000000;
  v5 = 0x676E696772616843;
  if (*v1 != 2)
  {
    v5 = 0x6772616843746F4ELL;
    v4 = 0xEB00000000676E69;
  }

  if (*v1)
  {
    v3 = 0x64656772616843;
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

Swift::Int sub_1008BD4C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008BD580()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1008BD624()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008BD6D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEF38(*a1);
  *a2 = result;
  return result;
}

void sub_1008BD708(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 4999502;
  v4 = 0xEA00000000004445;
  v5 = 0x5A49524F48545541;
  if (*v1 != 2)
  {
    v5 = 0x5249415045524E49;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 1414090313;
    v2 = 0xE400000000000000;
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

uint64_t sub_1008BD7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453726961706572 && a2 == 0xEB00000000657461)
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

uint64_t sub_1008BD888(uint64_t a1)
{
  v2 = sub_1008BF0F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008BD8C4(uint64_t a1)
{
  v2 = sub_1008BF0F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008BD900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008BEF84(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1008BD92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v161 = *(v4 - 8);
  v162 = v4;
  v5 = *(v161 + 64);
  __chkstk_darwin(v4);
  v160 = &v155[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v158 = &v155[-v9];
  v157 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v10 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v159 = &v155[-v11];
  v172 = type metadata accessor for Date();
  v170 = *(v172 - 8);
  v12 = *(v170 + 64);
  __chkstk_darwin(v172);
  v165 = &v155[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v163 = &v155[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v164 = &v155[-v19];
  __chkstk_darwin(v18);
  v167 = &v155[-v20];
  v169 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v21 = *(*(v169 - 8) + 64);
  v22 = __chkstk_darwin(v169);
  v166 = &v155[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v168 = &v155[-v25];
  __chkstk_darwin(v24);
  v171 = &v155[-v26];
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v155[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v155[-v34];
  v36 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v40 = &v155[-v39];
  v41 = *(v38 + 56);
  v173 = a1;
  sub_1000D2A70(a1, &v155[-v39], &qword_1016980D0, &unk_10138F3B0);
  v174 = a2;
  sub_1000D2A70(a2, &v40[v41], &qword_1016980D0, &unk_10138F3B0);
  v42 = *(v28 + 48);
  if (v42(v40, 1, v27) == 1)
  {
    if (v42(&v40[v41], 1, v27) == 1)
    {
      sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_10;
    }

LABEL_6:
    v43 = &qword_1016AF880;
    v44 = &unk_10138CE20;
    v45 = v40;
LABEL_7:
    sub_10000B3A8(v45, v43, v44);
    return 0;
  }

  sub_1000D2A70(v40, v35, &qword_1016980D0, &unk_10138F3B0);
  if (v42(&v40[v41], 1, v27) == 1)
  {
    (*(v28 + 8))(v35, v27);
    goto LABEL_6;
  }

  (*(v28 + 32))(v31, &v40[v41], v27);
  sub_1008BEB90(&qword_1016984A0, &type metadata accessor for UUID);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v28 + 8);
  v48(v31, v27);
  v48(v35, v27);
  sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v50 = MyServiceDevice[5];
  v52 = v173;
  v51 = v174;
  v53 = (v173 + v50);
  v54 = *(v173 + v50 + 8);
  v55 = (v174 + v50);
  v56 = v55[1];
  if (v54)
  {
    if (!v56 || (*v53 != *v55 || v54 != v56) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v57 = MyServiceDevice[6];
  v58 = (v52 + v57);
  v59 = *(v52 + v57 + 8);
  v60 = (v51 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (*v58 != *v60 || v59 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = MyServiceDevice[7];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v63 = MyServiceDevice[8];
  v64 = *(v52 + v63);
  v65 = *(v52 + v63 + 8);
  v66 = (v51 + v63);
  if ((v64 != *v66 || v65 != v66[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10076D5F8(*(v52 + MyServiceDevice[9]), *(v51 + MyServiceDevice[9])) & 1) == 0)
  {
    return 0;
  }

  v67 = MyServiceDevice[10];
  v68 = (v52 + v67);
  v69 = *(v52 + v67 + 8);
  v70 = (v51 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v72 = MyServiceDevice[11];
  v73 = *(v52 + v72);
  v74 = *(v52 + v72 + 8);
  v75 = (v51 + v72);
  if ((v73 != *v75 || v74 != v75[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v76 = MyServiceDevice[12];
  v77 = *(v52 + v76);
  v78 = *(v52 + v76 + 8);
  v79 = (v51 + v76);
  if ((v77 != *v79 || v78 != v79[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v80 = MyServiceDevice[13];
  v81 = *(v52 + v80);
  v82 = *(v52 + v80 + 8);
  v83 = (v51 + v80);
  if ((v81 != *v83 || v82 != v83[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v84 = MyServiceDevice[14];
  v85 = *(v52 + v84);
  v86 = *(v52 + v84 + 8);
  v87 = (v51 + v84);
  if ((v85 != *v87 || v86 != v87[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v88 = MyServiceDevice[15];
  v89 = (v52 + v88);
  v90 = *(v52 + v88 + 8);
  v91 = (v51 + v88);
  v92 = *(v51 + v88 + 8);
  if (v90)
  {
    if (!v92)
    {
      return 0;
    }
  }

  else
  {
    if (*v89 != *v91)
    {
      LOBYTE(v92) = 1;
    }

    if (v92)
    {
      return 0;
    }
  }

  v93 = MyServiceDevice[16];
  v94 = *(v52 + v93);
  v95 = *(v51 + v93);
  if (v94 == 4)
  {
    if (v95 != 4)
    {
      return 0;
    }
  }

  else if (v95 == 4 || (sub_10076D6E8(v94, v95) & 1) == 0)
  {
    return 0;
  }

  if (*(v52 + MyServiceDevice[17]) != *(v51 + MyServiceDevice[17]) || *(v52 + MyServiceDevice[18]) != *(v51 + MyServiceDevice[18]) || *(v52 + MyServiceDevice[19]) != *(v51 + MyServiceDevice[19]))
  {
    return 0;
  }

  v96 = MyServiceDevice;
  v97 = MyServiceDevice[20];
  v98 = *(v52 + v97);
  v99 = *(v52 + v97 + 8);
  v100 = (v51 + v97);
  if ((v98 != *v100 || v99 != v100[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v173 + MyServiceDevice[21]) != *(v174 + MyServiceDevice[21]))
  {
    return 0;
  }

  v101 = MyServiceDevice[22];
  v102 = *(v169 + 48);
  v103 = v171;
  sub_1000D2A70(v173 + v101, v171, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v174 + v101, v103 + v102, &unk_101696900, &unk_10138B1E0);
  v104 = *(v170 + 48);
  if (v104(v103, 1, v172) == 1)
  {
    if (v104(v171 + v102, 1, v172) == 1)
    {
      sub_10000B3A8(v171, &unk_101696900, &unk_10138B1E0);
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v105 = v171;
  sub_1000D2A70(v171, v167, &unk_101696900, &unk_10138B1E0);
  if (v104(v105 + v102, 1, v172) == 1)
  {
    (*(v170 + 8))(v167, v172);
LABEL_71:
    v43 = &unk_1016B1660;
    v44 = &unk_10138CE10;
    v45 = v171;
    goto LABEL_7;
  }

  v107 = v170;
  v106 = v171;
  v108 = v165;
  v109 = v172;
  (*(v170 + 32))(v165, v171 + v102, v172);
  sub_1008BEB90(&qword_101698290, &type metadata accessor for Date);
  v110 = v167;
  v156 = dispatch thunk of static Equatable.== infix(_:_:)();
  v111 = *(v107 + 8);
  v111(v108, v109);
  v111(v110, v109);
  sub_10000B3A8(v106, &unk_101696900, &unk_10138B1E0);
  if ((v156 & 1) == 0)
  {
    return 0;
  }

LABEL_73:
  v112 = v96[23];
  v113 = v168;
  v114 = *(v169 + 48);
  sub_1000D2A70(v173 + v112, v168, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v174 + v112, &v113[v114], &unk_101696900, &unk_10138B1E0);
  if (v104(v113, 1, v172) == 1)
  {
    if (v104(&v168[v114], 1, v172) == 1)
    {
      sub_10000B3A8(v168, &unk_101696900, &unk_10138B1E0);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v115 = v168;
  sub_1000D2A70(v168, v164, &unk_101696900, &unk_10138B1E0);
  if (v104(&v115[v114], 1, v172) == 1)
  {
    (*(v170 + 8))(v164, v172);
LABEL_78:
    v43 = &unk_1016B1660;
    v44 = &unk_10138CE10;
    v45 = v168;
    goto LABEL_7;
  }

  v116 = v170;
  v117 = v168;
  v118 = v165;
  v119 = v172;
  (*(v170 + 32))(v165, &v168[v114], v172);
  sub_1008BEB90(&qword_101698290, &type metadata accessor for Date);
  v120 = v164;
  LODWORD(v171) = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v116 + 8);
  v121(v118, v119);
  v121(v120, v119);
  sub_10000B3A8(v117, &unk_101696900, &unk_10138B1E0);
  if ((v171 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  v122 = v96[24];
  v123 = *(v169 + 48);
  v124 = v166;
  sub_1000D2A70(v173 + v122, v166, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v174 + v122, &v124[v123], &unk_101696900, &unk_10138B1E0);
  if (v104(v124, 1, v172) == 1)
  {
    if (v104(&v166[v123], 1, v172) == 1)
    {
      sub_10000B3A8(v166, &unk_101696900, &unk_10138B1E0);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v125 = v166;
  sub_1000D2A70(v166, v163, &unk_101696900, &unk_10138B1E0);
  if (v104(&v125[v123], 1, v172) == 1)
  {
    (*(v170 + 8))(v163, v172);
LABEL_85:
    v43 = &unk_1016B1660;
    v44 = &unk_10138CE10;
    v45 = v166;
    goto LABEL_7;
  }

  v126 = v170;
  v127 = v166;
  v128 = &v166[v123];
  v129 = v165;
  v130 = v172;
  (*(v170 + 32))(v165, v128, v172);
  sub_1008BEB90(&qword_101698290, &type metadata accessor for Date);
  v131 = v163;
  v132 = dispatch thunk of static Equatable.== infix(_:_:)();
  v133 = *(v126 + 8);
  v133(v129, v130);
  v133(v131, v130);
  sub_10000B3A8(v127, &unk_101696900, &unk_10138B1E0);
  if ((v132 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  if (*(v173 + v96[25]) != *(v174 + v96[25]))
  {
    return 0;
  }

  v134 = v96[26];
  v135 = (v173 + v134);
  v136 = *(v173 + v134);
  v137 = *(v173 + v134 + 8);
  v138 = (v174 + v134);
  if ((*v135 != *v138 || v137 != v138[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v173 + v96[27]) != *(v174 + v96[27]) || *(v173 + v96[28]) != *(v174 + v96[28]) || *(v173 + v96[29]) != *(v174 + v96[29]))
  {
    return 0;
  }

  v139 = v96[30];
  v140 = *(v173 + v139);
  v141 = *(v174 + v139);
  if (v140 == 4)
  {
    if (v141 != 4)
    {
      return 0;
    }
  }

  else if (v141 == 4 || (sub_10076B9A8(v140, v141) & 1) == 0)
  {
    return 0;
  }

  v142 = v96[31];
  v143 = *(v157 + 48);
  v144 = v159;
  sub_1000D2A70(v173 + v142, v159, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(v174 + v142, &v144[v143], &unk_101696AC0, &qword_101390A60);
  v145 = *(v161 + 48);
  if (v145(v144, 1, v162) != 1)
  {
    v146 = v159;
    sub_1000D2A70(v159, v158, &unk_101696AC0, &qword_101390A60);
    if (v145(&v146[v143], 1, v162) != 1)
    {
      v148 = v160;
      v147 = v161;
      v149 = v159;
      v150 = &v159[v143];
      v151 = v162;
      (*(v161 + 32))(v160, v150, v162);
      sub_1008BEB90(&qword_1016A8918, &type metadata accessor for URL);
      v152 = v158;
      v153 = dispatch thunk of static Equatable.== infix(_:_:)();
      v154 = *(v147 + 8);
      v154(v148, v151);
      v154(v152, v151);
      sub_10000B3A8(v149, &unk_101696AC0, &qword_101390A60);
      return (v153 & 1) != 0;
    }

    (*(v161 + 8))(v158, v162);
    goto LABEL_104;
  }

  if (v145(&v159[v143], 1, v162) != 1)
  {
LABEL_104:
    v43 = &qword_1016A8910;
    v44 = &qword_1013BE3A0;
    v45 = v159;
    goto LABEL_7;
  }

  sub_10000B3A8(v159, &unk_101696AC0, &qword_101390A60);
  return 1;
}

unint64_t sub_1008BEAAC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609B28, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008BEAF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609BA8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for FindMyServiceDevice()
{
  result = qword_1016ACFE0;
  if (!qword_1016ACFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BEB90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1008BEC00()
{
  sub_1008BEE04(319, &qword_1016B1C20, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &unk_1016A0CD8);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016ACFF0);
          if (v4 <= 0x3F)
          {
            sub_1008BEE04(319, &qword_1016BA040, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              sub_1002359B8(319, &unk_1016ACFF8);
              if (v6 <= 0x3F)
              {
                sub_1008BEE04(319, &qword_1016A8128, &type metadata accessor for URL);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1008BEE04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1008BEE8C()
{
  result = qword_1016AD090;
  if (!qword_1016AD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD090);
  }

  return result;
}

unint64_t sub_1008BEEE4()
{
  result = qword_1016AD098;
  if (!qword_1016AD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD098);
  }

  return result;
}

unint64_t sub_1008BEF38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C940, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1008BEF84(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AD0A0, &qword_1013C31E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1008BF0F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1008BF148();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_1008BF0F4()
{
  result = qword_1016AD0A8;
  if (!qword_1016AD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0A8);
  }

  return result;
}

unint64_t sub_1008BF148()
{
  result = qword_1016AD0B0;
  if (!qword_1016AD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0B0);
  }

  return result;
}

unint64_t sub_1008BF1C0()
{
  result = qword_1016AD0B8;
  if (!qword_1016AD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0B8);
  }

  return result;
}

unint64_t sub_1008BF218()
{
  result = qword_1016AD0C0;
  if (!qword_1016AD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0C0);
  }

  return result;
}

unint64_t sub_1008BF270()
{
  result = qword_1016AD0C8;
  if (!qword_1016AD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0C8);
  }

  return result;
}

unint64_t sub_1008BF2C8()
{
  result = qword_1016AD0D0;
  if (!qword_1016AD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0D0);
  }

  return result;
}

unint64_t sub_1008BF31C()
{
  result = qword_1016AD0D8;
  if (!qword_1016AD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD0D8);
  }

  return result;
}

uint64_t sub_1008BF394()
{
  v1 = *(v0 + 1976);
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1008BF558()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_1008C0D30();
}

uint64_t sub_1008BF5E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_1008C1A58();
}

uint64_t sub_1008BF678(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1008BF70C, a2, 0);
}

uint64_t sub_1008BF70C()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v3 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1008BF818;
  v6 = v0[2];
  v5 = v0[3];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000002FLL, 0x8000000101363F20, v5, &unk_1013C3620, v6, &unk_1013C3630, v6);
}

uint64_t sub_1008BF818(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1008BF930, v3, 0);
}

uint64_t sub_1008BF930()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 144);
  *(v1 + 144) = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008BF9A8()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1008BFA44, v0, 0);
}

uint64_t sub_1008BFA44()
{
  v1 = v0[2];
  *(v1 + 152) = 1;
  v2 = *(v1 + 144);
  v0[4] = v2;
  if (v2)
  {
    v3 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v10 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1008BFBAC;
    v5 = v0[3];

    return v10(v5);
  }

  else
  {
    v7 = v0[3];
    v8 = type metadata accessor for XPCActivity.State();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_10000B3A8(v7, &unk_10169BA88, &qword_101395670);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1008BFBAC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_1008BFCD8, v3, 0);
}

uint64_t sub_1008BFCD8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1008BFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v5 = type metadata accessor for XPCActivity.Criteria.Options();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for XPCActivity.Priority();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v3[20] = v12;
  v13 = *(v12 - 8);
  v3[21] = v13;
  v14 = *(v13 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v16 = type metadata accessor for XPCActivity.Criteria();
  v3[26] = v16;
  v17 = *(v16 - 8);
  v3[27] = v17;
  v18 = *(v17 + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1008C0004, a3, 0);
}

uint64_t sub_1008C0004()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  sub_1000D2A70(v0[10], v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    sub_10000B3A8(v0[25], &qword_10169E370, &qword_1013BA3F0);
    if (*(v4 + 152))
    {
      goto LABEL_3;
    }

    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[19];
    v22 = v0[11];
    v23 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
    swift_beginAccess();
    sub_1000D2A70(v22 + v23, v21, &unk_101696900, &unk_10138B1E0);
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      sub_10000B3A8(v0[19], &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v43 = v0[23];
      v42 = v0[24];
      v44 = v0[20];
      v45 = v0[21];
      (*(v45 + 32))(v42, v0[19], v44);
      static Date.trustedNow.getter(v43);
      sub_1008CD500(&qword_1016C9070, &type metadata accessor for Date);
      v46 = dispatch thunk of static Comparable.< infix(_:_:)();
      v47 = *(v45 + 8);
      v47(v43, v44);
      v47(v42, v44);
      if ((v46 & 1) == 0)
      {
LABEL_3:
        v5 = v0[20];
        v6 = v0[21];
        v7 = v0[18];
        v8 = v0[11];
        v9 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
        swift_beginAccess();
        sub_1000D2A70(v8 + v9, v7, &unk_101696900, &unk_10138B1E0);
        v10 = *(v6 + 48);
        if (v10(v7, 1, v5) == 1)
        {
          v11 = v0[20];
          v12 = v0[18];
          v13 = v0[22];
          static Date.distantPast.getter();
          if (v10(v12, 1, v11) != 1)
          {
            sub_10000B3A8(v0[18], &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          (*(v0[21] + 32))(v0[22], v0[18], v0[20]);
        }

        v25 = v0[22];
        v24 = v0[23];
        v26 = v0[20];
        v27 = v0[21];
        static Date.trustedNow.getter(v24);
        Date.timeIntervalSince(_:)();
        v29 = v28;
        v30 = v28;
        v31 = *(v27 + 8);
        v31(v24, v26);
        result = (v31)(v25, v26);
        v33 = 0.0;
        if (v29 >= 0.0 && (v33 = v29, (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
        {
          __break(1u);
        }

        else if (v33 > -9.22337204e18)
        {
          if (v33 < 9.22337204e18)
          {
            v34 = v0[27];
            v58 = v0[26];
            v35 = v0[14];
            v36 = v0[12];
            v37 = v0[13];
            v38 = v0[9];
            (*(v0[16] + 104))(v0[17], enum case for XPCActivity.Priority.maintenance(_:), v0[15]);
            sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
            v39 = *(v37 + 72);
            v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_10138BBE0;
            static XPCActivity.Criteria.Options.requiresNetwork.getter();
            static XPCActivity.Criteria.Options.requiresClassC.getter();
            v0[8] = v41;
            sub_1008CD500(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options);
            sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
            sub_100359D10();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
            (*(v34 + 56))(v38, 0, 1, v58);
            goto LABEL_17;
          }

LABEL_22:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    (*(v0[27] + 56))(v0[9], 1, 1, v0[26]);
    goto LABEL_17;
  }

  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[26];
  v17 = v0[9];
  v18 = *(v15 + 32);
  v18(v14, v0[25], v16);
  v18(v17, v14, v16);
  (*(v15 + 56))(v17, 0, 1, v16);
LABEL_17:
  v48 = v0[28];
  v49 = v0[24];
  v50 = v0[25];
  v52 = v0[22];
  v51 = v0[23];
  v54 = v0[18];
  v53 = v0[19];
  v55 = v0[17];
  v56 = v0[14];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1008C05B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for XPCActivity.State();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1008C0680, a3, 0);
}

uint64_t sub_1008C0680()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[8] = sub_1000076D4(v5, qword_10177B078);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Run fetch device list.", v8, 2u);
    }

    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1008C0920;
    v10 = v0[4];

    return sub_1008C391C();
  }

  else if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    v12 = v0[2];
    type metadata accessor for XPCActivity();
    sub_1008CD500(&qword_101696CC0, &type metadata accessor for XPCActivity);
    v14 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008C0B04, v14, v13);
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    v15 = v0[7];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1008C0920()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v12 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1008C0B70;
    v6 = 0;
  }

  else
  {
    v7 = *(v2 + 16);
    type metadata accessor for XPCActivity();
    sub_1008CD500(&qword_101696CC0, &type metadata accessor for XPCActivity);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v5 = sub_1008C0A98;
    v4 = v8;
    v6 = v10;
  }

  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_1008C0A98()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1000EFE28, v1, 0);
}

uint64_t sub_1008C0B04()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1008CD60C, v1, 0);
}

uint64_t sub_1008C0B70()
{
  v1 = v0[10];
  v2 = v0[8];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch devices, %{public}@.", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[2];
  type metadata accessor for XPCActivity();
  sub_1008CD500(&qword_101696CC0, &type metadata accessor for XPCActivity);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008C0A98, v12, v11);
}

uint64_t sub_1008C0D30()
{
  v1[5] = v0;
  v2 = sub_1000BC4D4(&qword_101698D30, &qword_1013908B8);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698D38, &qword_1013908C0);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[12] = v9;
  *v9 = v1;
  v9[1] = sub_1008C0E94;

  return daemon.getter();
}

uint64_t sub_1008C0E94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for APSNotificationService();
  v9 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1008CD500(&qword_101698D40, type metadata accessor for APSNotificationService);
  *v6 = v12;
  v6[1] = sub_1008C1070;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008C1070(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;

  v7 = v4[13];
  if (v1)
  {
    a1 = v4[5];

    v8 = sub_1008C1734;
  }

  else
  {

    v8 = sub_1008C11C8;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_1008C11C8()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[5];
  sub_100E7BD7C(0xD000000000000029, 0x8000000101363EC0);

  return _swift_task_switch(sub_1008C1250, v3, 0);
}

uint64_t sub_1008C1250()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  AsyncStream.makeAsyncIterator()();
  v4 = sub_1008CD500(&qword_1016AD2B8, type metadata accessor for FindMyServiceDeviceStoreService);
  v0[16] = v4;
  v5 = v0[5];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1008C134C;
  v8 = v0[8];
  v9 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v5, v4, v9);
}

uint64_t sub_1008C134C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1008C145C, v2, 0);
}

uint64_t sub_1008C145C()
{
  v1 = v0[2];
  if (v1)
  {
    sub_1008CD190(v1, v0[3], v0[4]);
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1008C159C;
    v3 = v0[5];

    return sub_1008C391C();
  }

  else
  {
    v5 = v0[15];
    v7 = v0[10];
    v6 = v0[11];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v12 = v0[11];
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1008C159C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_1008C185C, v4, 0);
  }

  else
  {
    v5 = v3[16];
    v6 = v3[5];
    v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v8 = swift_task_alloc();
    v3[17] = v8;
    *v8 = v3;
    v8[1] = sub_1008C134C;
    v9 = v3[8];
    v10 = v3[6];

    return AsyncStream.Iterator.next(isolation:)(v3 + 2, v6, v5, v10);
  }
}

uint64_t sub_1008C1734()
{
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B078);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service: APSNotificationService", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1008C185C()
{
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B078);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch device list: %{public}@.", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[16];
  v11 = v0[5];
  v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1008C134C;
  v14 = v0[8];
  v15 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v11, v10, v15);
}

uint64_t sub_1008C1A58()
{
  v1[6] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v1[17] = MyServiceDevice;
  v7 = *(*(MyServiceDevice - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v8 = type metadata accessor for FindMyServiceDeviceStore.ListChange();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016AD2E8, &qword_1013C35C8);
  v1[24] = v11;
  v12 = *(v11 - 8);
  v1[25] = v12;
  v13 = *(v12 + 64) + 15;
  v1[26] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_1016AD2F0, &qword_1013C35D0);
  v1[27] = v14;
  v15 = *(v14 - 8);
  v1[28] = v15;
  v16 = *(v15 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v1[31] = v18;
  *v18 = v1;
  v18[1] = sub_1008C1D48;

  return daemon.getter();
}

uint64_t sub_1008C1D48(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  v3[32] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[33] = v6;
  v7 = type metadata accessor for Daemon();
  v3[34] = v7;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[35] = v9;
  v10 = sub_1008CD500(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_1008C1F28;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_1008C1F28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_1008C36B8;
  }

  else
  {
    v7 = v3[32];
    v8 = v3[6];

    v6 = sub_1008C2050;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008C2050()
{
  v1 = v0[6];
  if (*(v1 + 128))
  {
    v3 = v0[29];
    v2 = v0[30];
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[26];
    v7 = *(v1 + 136);
    AsyncStreamProvider.stream(initialEvents:)();
    (*(v5 + 32))(v2, v3, v4);
    AsyncStream.makeAsyncIterator()();
    v8 = sub_1008CD500(&qword_1016AD2B8, type metadata accessor for FindMyServiceDeviceStoreService);
    v0[38] = v8;
    v9 = v0[6];
    v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_1008C2358;
    v12 = v0[26];
    v13 = v0[24];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, v9, v8, v13);
  }

  else
  {
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B078);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[36];
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to subscribe to device list updates (missing deviceListStream).", v19, 2u);
    }

    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[26];
    v23 = v0[23];
    v25 = v0[19];
    v24 = v0[20];
    v26 = v0[18];
    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];
    v32 = v0[13];
    v33 = v0[12];
    v34 = v0[9];
    v35 = v0[8];
    v36 = v0[7];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1008C2358()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1008C2468, v2, 0);
}

uint64_t sub_1008C2468()
{
  if (v0[2])
  {
    v1 = v0[3];

    v0[4] = &_swiftEmptySetSingleton;
    v0[5] = &_swiftEmptySetSingleton;
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[22];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v76 = *(v3 + 72);
      do
      {
        v14 = v0[21];
        sub_1008CCF78(v4, v0[23], type metadata accessor for FindMyServiceDeviceStore.ListChange);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v16 = v0[23];
        v17 = v0[10];
        v18 = (v0[11] + 48);
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v19 = v0[19];
            v20 = v0[8];
            sub_1008CCD18(v16, v19);
            sub_1000D2A70(v19, v20, &qword_1016980D0, &unk_10138F3B0);
            v21 = *v18;
            if ((*v18)(v20, 1, v17) == 1)
            {
              v22 = v0[10];
              v23 = v0[8];
              v6 = *(v0[11] + 16);
              v6(v0[13], v0[19] + *(v0[17] + 28), v22);
              if (v21(v23, 1, v22) != 1)
              {
                sub_10000B3A8(v0[8], &qword_1016980D0, &unk_10138F3B0);
              }
            }

            else
            {
              v5 = v0[11];
              (*(v5 + 32))(v0[13], v0[8], v0[10]);
              v6 = *(v5 + 16);
            }

            v8 = v0[14];
            v7 = v0[15];
            v9 = v0[13];
            v11 = v0[10];
            v10 = v0[11];
            v6(v8, v9, v11);
            sub_100DE8BCC(v7, v8);
            v12 = *(v10 + 8);
            v12(v7, v11);
            v12(v9, v11);
            v13 = v0 + 19;
          }

          else
          {
            v30 = v0[18];
            v31 = v0[7];
            sub_1008CCD18(v16, v30);
            sub_1000D2A70(v30, v31, &qword_1016980D0, &unk_10138F3B0);
            if ((*v18)(v31, 1, v17) == 1)
            {
              v32 = v0[11];
              sub_10000B3A8(v0[7], &qword_1016980D0, &unk_10138F3B0);
              v33 = *(v32 + 16);
            }

            else
            {
              v42 = v0[14];
              v41 = v0[15];
              v43 = v0[11];
              v44 = v0[12];
              v45 = v0[10];
              (*(v43 + 32))(v44, v0[7], v45);
              v33 = *(v43 + 16);
              v33(v42, v44, v45);
              sub_100DE8BCC(v41, v42);
              v46 = *(v43 + 8);
              v46(v41, v45);
              v46(v44, v45);
            }

            v48 = v0[14];
            v47 = v0[15];
            v50 = v0[10];
            v49 = v0[11];
            v33(v48, v0[18] + *(v0[17] + 28), v50);
            sub_100DE8BCC(v47, v48);
            (*(v49 + 8))(v47, v50);
            v13 = v0 + 18;
          }
        }

        else
        {
          v24 = v0[20];
          v25 = v0[9];
          sub_1008CCD18(v16, v24);
          sub_1000D2A70(v24, v25, &qword_1016980D0, &unk_10138F3B0);
          v26 = *v18;
          if ((*v18)(v25, 1, v17) == 1)
          {
            v27 = v0[10];
            v28 = v0[9];
            v29 = *(v0[11] + 16);
            v29(v0[16], v0[20] + *(v0[17] + 28), v27);
            if (v26(v28, 1, v27) != 1)
            {
              sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
            }
          }

          else
          {
            v34 = v0[11];
            (*(v34 + 32))(v0[16], v0[9], v0[10]);
            v29 = *(v34 + 16);
          }

          v36 = v0[15];
          v35 = v0[16];
          v37 = v0[14];
          v39 = v0[10];
          v38 = v0[11];
          v29(v37, v35, v39);
          sub_100DE8BCC(v36, v37);
          v40 = *(v38 + 8);
          v40(v36, v39);
          v40(v35, v39);
          v13 = v0 + 20;
        }

        sub_1008CCEA8(*v13, type metadata accessor for FindMyServiceDevice);
        v4 += v76;
        --v2;
      }

      while (v2);

      v51 = v0[4];
    }

    else
    {

      v51 = &_swiftEmptySetSingleton;
    }

    v0[40] = v51;
    v71 = v0[36];

    return _swift_task_switch(sub_1008C2AF0, v71, 0);
  }

  else
  {
    v52 = v0[36];
    v53 = v0[30];
    v54 = v0[27];
    v55 = v0[28];
    v57 = v0[25];
    v56 = v0[26];
    v58 = v0[24];

    (*(v57 + 8))(v56, v58);
    (*(v55 + 8))(v53, v54);
    v60 = v0[29];
    v59 = v0[30];
    v61 = v0[26];
    v62 = v0[23];
    v64 = v0[19];
    v63 = v0[20];
    v65 = v0[18];
    v67 = v0[15];
    v66 = v0[16];
    v68 = v0[14];
    v72 = v0[13];
    v73 = v0[12];
    v74 = v0[9];
    v75 = v0[8];
    v77 = v0[7];

    v69 = v0[1];

    return v69();
  }
}

uint64_t sub_1008C2AF0()
{
  if (*(v0[40] + 16))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_1008C2BD0;

    return daemon.getter();
  }

  else
  {

    v3 = v0[36];
    v0[44] = v0[5];

    return _swift_task_switch(sub_1008C2EEC, v3, 0);
  }
}

uint64_t sub_1008C2BD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 328);
  v5 = *v1;
  v3[42] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[43] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1008CD500(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1008C2D84;
  v10 = v3[35];
  v11 = v3[34];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008C2D84(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 344);
  v7 = *v2;

  v8 = *(v4 + 336);
  v9 = *(v4 + 288);
  if (v1)
  {

    v10 = sub_1008C3104;
  }

  else
  {

    *(v5 + 360) = a1;
    v10 = sub_1008C2FC4;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1008C2EEC()
{
  if (*(v0[44] + 16))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[46] = v2;
    *v2 = v0;
    v2[1] = sub_1008C3174;

    return daemon.getter();
  }

  else
  {

    v3 = v0[6];

    return _swift_task_switch(sub_1008C3490, v3, 0);
  }
}

uint64_t sub_1008C2FC4()
{
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[15];
  v5 = *(v3 + 168);
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = v0[36];
  v0[44] = v0[5];

  return _swift_task_switch(sub_1008C2EEC, v7, 0);
}

uint64_t sub_1008C3104()
{
  v1 = v0[40];

  v2 = v0[36];
  v0[44] = v0[5];

  return _swift_task_switch(sub_1008C2EEC, v2, 0);
}

uint64_t sub_1008C3174(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *v1;
  v3[47] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[48] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1008CD500(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1008C3328;
  v10 = v3[35];
  v11 = v3[34];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008C3328(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 384);
  v7 = *v2;

  v8 = *(v4 + 376);
  v9 = *(v4 + 288);
  if (v1)
  {

    v10 = sub_1008C3650;
  }

  else
  {

    *(v5 + 392) = a1;
    v10 = sub_1008C3548;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1008C3490()
{
  v1 = v0[38];
  v2 = v0[6];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1008C2358;
  v5 = v0[26];
  v6 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v6);
}

uint64_t sub_1008C3548()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[36];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[6];

  return _swift_task_switch(sub_1008C3490, v5, 0);
}

uint64_t sub_1008C3650()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1008C3490, v2, 0);
}

uint64_t sub_1008C36B8()
{
  v1 = v0[32];

  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B078);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to device list updates (missing service): %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[26];
  v14 = v0[23];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  v23 = v0[13];
  v24 = v0[12];
  v25 = v0[9];
  v26 = v0[8];
  v27 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1008C391C()
{
  v1[48] = v0;
  v2 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  v1[49] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v4 = type metadata accessor for Response();
  v1[51] = v4;
  v5 = *(v4 - 8);
  v1[52] = v5;
  v6 = *(v5 + 64) + 15;
  v1[53] = swift_task_alloc();
  MyServiceDeviceListEndpoint = type metadata accessor for FindMyServiceDeviceListEndpoint();
  v1[54] = MyServiceDeviceListEndpoint;
  v8 = *(*(MyServiceDeviceListEndpoint - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v9 = *(*(type metadata accessor for SearchpartyAccount() - 8) + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  MyServiceDeviceListPayload = type metadata accessor for FindMyServiceDeviceListPayload(0);
  v1[59] = MyServiceDeviceListPayload;
  v11 = *(*(MyServiceDeviceListPayload - 8) + 64) + 15;
  v1[60] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v1[61] = v12;
  v13 = *(v12 - 8);
  v1[62] = v13;
  v14 = *(v13 + 64) + 15;
  v1[63] = swift_task_alloc();
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  v1[64] = MyServiceDeviceListClientContext;
  v16 = *(*(MyServiceDeviceListClientContext - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v1[66] = v18;
  *v18 = v1;
  v18[1] = sub_1008C3BAC;

  return daemon.getter();
}

uint64_t sub_1008C3BAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 528);
  v12 = *v1;
  v3[67] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[68] = v6;
  v7 = type metadata accessor for Daemon();
  v3[69] = v7;
  v8 = type metadata accessor for APSNotificationService();
  v9 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[70] = v9;
  v10 = sub_1008CD500(&qword_101698D40, type metadata accessor for APSNotificationService);
  *v6 = v12;
  v6[1] = sub_1008C3D8C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008C3D8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  if (v1)
  {
    v7 = v4[48];
    v8 = sub_1008C6768;
  }

  else
  {
    v9 = v4[67];

    v8 = sub_1008C3EC8;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008C3EC8()
{
  v1 = v0[71];
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {

    v3 = sub_100771D58(0xD000000000000029, 0x8000000101363EC0);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      sub_100017D5C(*v5, v7);

      v0[76] = v7;
      v0[75] = v6;
      v8 = v0[48];

      return _swift_task_switch(sub_1008C4264, v8, 0);
    }
  }

  v9 = swift_task_alloc();
  v0[73] = v9;
  *v9 = v0;
  v9[1] = sub_1008C4034;
  v10 = v0[71];

  return sub_100E7DE18(0xD000000000000029, 0x8000000101363EC0, 500000000000000000, 0);
}

uint64_t sub_1008C4034(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 584);
  v8 = *v3;
  *(*v3 + 592) = v2;

  if (v2)
  {
    v9 = v6[48];
    v10 = sub_1008C4170;
  }

  else
  {
    v6[76] = a2;
    v6[75] = a1;
    v9 = v6[48];
    v10 = sub_1008C4264;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1008C4170()
{
  v1 = v0[71];

  v14 = v0[74];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];

  v12 = v0[1];

  return v12();
}

id sub_1008C4264()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = Data.hexString.getter();
  v5 = v4;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = MobileGestalt_copy_productType_obj();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_21;
  }

  v12 = result;
  v13 = MobileGestalt_copy_buildVersion_obj();

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  static Date.trustedNow.getter(v0[63]);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_22;
  }

  v17 = result;
  v18 = MobileGestalt_copy_productVersion_obj();

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v20;
    v43 = v19;
  }

  else
  {
    v42 = 0xE000000000000000;
    v43 = 0;
  }

  v21 = [objc_opt_self() currentDevice];
  v45 = v14;
  v46 = v11;
  v44 = v16;
  if (v21 && (v22 = v21, v23 = [v21 uniqueDeviceIdentifier], v22, v23))
  {
    v24 = v9;
    v25 = v3;
    v26 = v5;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v24 = v9;
    v25 = v3;
    v26 = v5;
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = v0[65];
  v31 = v0[63];
  v32 = v0[64];
  v33 = v0[61];
  v34 = v0[62];
  v35 = v0[59];
  v36 = v0[60];
  *v30 = 2;
  *(v30 + 8) = v25;
  *(v30 + 16) = v26;
  *(v30 + 24) = 1;
  *(v30 + 32) = v24;
  *(v30 + 40) = v46;
  *(v30 + 48) = v45;
  *(v30 + 56) = v44;
  (*(v34 + 32))(v30 + v32[9], v31, v33);
  v37 = (v30 + v32[10]);
  *v37 = v43;
  v37[1] = v42;
  *(v30 + v32[11]) = 1;
  v38 = (v30 + v32[12]);
  *v38 = v27;
  v38[1] = v29;
  *(v30 + v32[13]) = 0;
  v39 = (v30 + v32[14]);
  *v39 = 7105633;
  v39[1] = 0xE300000000000000;
  sub_1008CCF78(v30, &v36[*(v35 + 20)], type metadata accessor for FindMyServiceDeviceListClientContext);
  *v36 = 1;
  v0[15] = v35;
  v0[16] = sub_1008CD500(&qword_1016AD2E0, type metadata accessor for FindMyServiceDeviceListPayload);
  v40 = sub_1000280DC(v0 + 12);
  sub_1008CCF78(v36, v40, type metadata accessor for FindMyServiceDeviceListPayload);
  v41 = swift_task_alloc();
  v0[77] = v41;
  *v41 = v0;
  v41[1] = sub_1008C45D8;

  return sub_100282B80((v0 + 12));
}

uint64_t sub_1008C45D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 616);
  v6 = *v4;
  v6[78] = a1;
  v6[79] = a2;
  v6[80] = a3;
  v6[81] = v3;

  if (v3)
  {
    v7 = v6[48];

    return _swift_task_switch(sub_1008C4A9C, v7, 0);
  }

  else
  {
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v6[82] = v9;
    *v9 = v6;
    v9[1] = sub_1008C4750;

    return daemon.getter();
  }
}

uint64_t sub_1008C4750(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 656);
  v5 = *v1;
  v3[83] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[84] = v7;
  v8 = type metadata accessor for AccountService();
  v3[85] = v8;
  v9 = sub_1008CD500(&qword_101697890, type metadata accessor for AccountService);
  v3[86] = v9;
  *v7 = v5;
  v7[1] = sub_1008C490C;
  v10 = v3[70];
  v11 = v3[69];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008C490C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 672);
  v6 = *v2;
  v4[87] = a1;
  v4[88] = v1;

  if (v1)
  {
    v7 = v4[48];

    return _swift_task_switch(sub_1008C4D0C, v7, 0);
  }

  else
  {
    v8 = v4[83];

    v9 = swift_task_alloc();
    v4[89] = v9;
    *v9 = v6;
    v9[1] = sub_1008C4BE0;
    v10 = v4[58];

    return sub_100300A9C(v10);
  }
}

uint64_t sub_1008C4A9C()
{
  v1 = v0[71];
  v2 = v0[65];
  v3 = v0[60];
  sub_100016590(v0[75], v0[76]);

  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v2, type metadata accessor for FindMyServiceDeviceListClientContext);
  v16 = v0[81];
  v4 = v0[65];
  v5 = v0[63];
  v6 = v0[60];
  v8 = v0[57];
  v7 = v0[58];
  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[53];
  v12 = v0[49];
  v13 = v0[50];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008C4BE0()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;
  *(*v1 + 720) = v0;

  v5 = *(v2 + 384);
  if (v0)
  {
    v6 = sub_1008C530C;
  }

  else
  {
    v6 = sub_1008C4E80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008C4D0C()
{
  v22 = v0[88];
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[71];
  v8 = v0[65];
  v9 = v0[60];

  sub_100016590(v6, v5);

  sub_100006654(v4, v3);

  sub_1008CCEA8(v9, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v8, type metadata accessor for FindMyServiceDeviceListClientContext);
  v10 = v0[65];
  v11 = v0[63];
  v12 = v0[60];
  v14 = v0[57];
  v13 = v0[58];
  v16 = v0[55];
  v15 = v0[56];
  v17 = v0[53];
  v18 = v0[49];
  v19 = v0[50];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1008C4E80()
{
  v1 = v0[87];
  v2 = v0[57];
  v3 = v0[58];
  v4 = v0[56];

  sub_1008CCF78(v3, v2, type metadata accessor for SearchpartyAccount);
  v0[91] = v2[2];
  v0[92] = v2[3];
  v0[93] = v2[4];
  v0[94] = v2[5];

  sub_1008CCEA8(v2, type metadata accessor for SearchpartyAccount);
  sub_1008CCF78(v3, v4, type metadata accessor for SearchpartyAccount);
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[95] = v6;
  *v6 = v0;
  v6[1] = sub_1008C4FAC;

  return daemon.getter();
}

uint64_t sub_1008C4FAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 760);
  v5 = *v1;
  v3[96] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[97] = v7;
  *v7 = v5;
  v7[1] = sub_1008C5138;
  v8 = v3[86];
  v9 = v3[85];
  v10 = v3[70];
  v11 = v3[69];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_1008C5138(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 776);
  v6 = *v2;
  v4[98] = a1;
  v4[99] = v1;

  if (v1)
  {
    v7 = v4[96];
    v8 = v4[94];
    v9 = v4[92];
    v10 = v4[56];
    v11 = v4[48];

    sub_1008CCEA8(v10, type metadata accessor for SearchpartyAccount);

    return _swift_task_switch(sub_1008C55DC, v11, 0);
  }

  else
  {
    v12 = v4[96];

    v13 = swift_task_alloc();
    v4[100] = v13;
    *v13 = v6;
    v13[1] = sub_1008C5480;

    return sub_1002FFDE0((v4 + 2));
  }
}

uint64_t sub_1008C530C()
{
  v22 = v0[90];
  v1 = v0[87];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[71];
  v8 = v0[65];
  v9 = v0[60];

  sub_100016590(v6, v5);

  sub_100006654(v4, v3);

  sub_1008CCEA8(v9, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v8, type metadata accessor for FindMyServiceDeviceListClientContext);
  v10 = v0[65];
  v11 = v0[63];
  v12 = v0[60];
  v14 = v0[57];
  v13 = v0[58];
  v16 = v0[55];
  v15 = v0[56];
  v17 = v0[53];
  v18 = v0[49];
  v19 = v0[50];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1008C5480()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v11 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v4 = v2[94];
    v5 = v2[92];
    v6 = v2[56];
    v7 = v2[48];

    sub_1008CCEA8(v6, type metadata accessor for SearchpartyAccount);
    v8 = sub_1008C5B00;
    v9 = v7;
  }

  else
  {
    v9 = v2[48];
    v8 = sub_1008C5760;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1008C55DC()
{
  v20 = v0[99];
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[65];
  v6 = v0[60];
  v7 = v0[58];
  sub_100016590(v0[75], v0[76]);

  sub_100006654(v3, v2);

  sub_1008CCEA8(v7, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v5, type metadata accessor for FindMyServiceDeviceListClientContext);
  v8 = v0[65];
  v9 = v0[63];
  v10 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  v14 = v0[55];
  v13 = v0[56];
  v15 = v0[53];
  v16 = v0[49];
  v17 = v0[50];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008C5760()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v17 = *(v0 + 728);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);

  sub_1010A403C(v7, v0 + 16, v8);
  type metadata accessor for ServerInteractionController();
  *(v0 + 816) = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  *(v0 + 160) = v9;
  *(v0 + 168) = sub_1008CD500(&qword_1016AD2D0, type metadata accessor for FindMyServiceDeviceListEndpoint);
  v10 = sub_1000280DC((v0 + 136));
  sub_1008CCF78(v8, v10, type metadata accessor for FindMyServiceDeviceListEndpoint);
  *(v0 + 200) = &type metadata for FindMyServiceDeviceListRequest;
  v11 = sub_100283B9C();
  *(v0 + 176) = v6;
  *(v0 + 208) = v11;
  *(v0 + 184) = v5;
  *(v0 + 192) = v4;
  *(v0 + 240) = &type metadata for SearchpartyCredential;
  *(v0 + 248) = sub_100132C84();
  v12 = swift_allocObject();
  *(v0 + 216) = v12;
  *(v12 + 16) = v17;
  *(v12 + 32) = v3;
  *(v12 + 40) = v2;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_10002E98C(v6, v5);
  v13 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
  v18 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));

  v14 = swift_task_alloc();
  *(v0 + 824) = v14;
  *v14 = v0;
  v14[1] = sub_1008C598C;
  v15 = *(v0 + 424);

  return v18(v15, v0 + 136, v0 + 176, v0 + 216, v0 + 256);
}

uint64_t sub_1008C598C()
{
  v2 = *v1;
  v3 = (*v1)[103];
  v7 = *v1;
  (*v1)[104] = v0;

  if (v0)
  {
    v4 = v2[48];
    sub_10000B3A8((v2 + 32), &qword_1016978B0, &qword_1013A3960);
    v5 = sub_1008C685C;
  }

  else
  {
    v4 = v2[48];
    sub_10000B3A8((v2 + 32), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 27), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 22);
    sub_100007BAC(v2 + 17);
    v5 = sub_1008C5C8C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008C5B00()
{
  v1 = v0[98];

  v21 = v0[101];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[71];
  v6 = v0[65];
  v7 = v0[60];
  v8 = v0[58];
  sub_100016590(v0[75], v0[76]);

  sub_100006654(v4, v3);

  sub_1008CCEA8(v8, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v7, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListClientContext);
  v9 = v0[65];
  v10 = v0[63];
  v11 = v0[60];
  v13 = v0[57];
  v12 = v0[58];
  v15 = v0[55];
  v14 = v0[56];
  v16 = v0[53];
  v17 = v0[49];
  v18 = v0[50];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1008C5C8C()
{
  v1 = v0[104];
  v2 = v0[53];
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v6 = Response.body.getter();
  v8 = v7;
  sub_1008CCE2C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v9 = v0[102];
    v10 = v0[78];
    v11 = v0[76];
    v12 = v0[75];
    v13 = v0[71];
    v53 = v0[60];
    v54 = v0[65];
    v52 = v0[58];
    v50 = v0[80];
    v51 = v0[55];
    v14 = v0[52];
    v48 = v0[79];
    v49 = v0[53];
    v47 = v0[51];
    sub_100016590(v6, v8);

    sub_100016590(v12, v11);

    sub_100006654(v10, v48);

    (*(v14 + 8))(v49, v47);
    sub_1008CCEA8(v51, type metadata accessor for FindMyServiceDeviceListEndpoint);
    sub_1008CCEA8(v52, type metadata accessor for SearchpartyAccount);
    sub_1008CCEA8(v53, type metadata accessor for FindMyServiceDeviceListPayload);
    sub_1008CCEA8(v54, type metadata accessor for FindMyServiceDeviceListClientContext);
    v15 = v0[65];
    v16 = v0[63];
    v17 = v0[60];
    v19 = v0[57];
    v18 = v0[58];
    v21 = v0[55];
    v20 = v0[56];
    v22 = v0[53];
    v24 = v0[49];
    v23 = v0[50];

    v25 = v0[1];

    return v25();
  }

  sub_100016590(v6, v8);

  v27 = v0[38];
  v0[105] = v0[37];
  v0[106] = v27;
  v28 = v0[39];
  v29 = v0[40];
  v0[107] = v28;
  v0[108] = v29;
  v30 = v0[41];
  v0[109] = v30;
  if (v30 == 1)
  {
    v31 = 0;
    v32 = 0;
LABEL_13:
    *(v0[48] + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched) = 1;
    sub_1008CCE80(v27, v28, v29, v30);
    v44 = swift_task_alloc();
    v0[112] = v44;
    *v44 = v0;
    v44[1] = sub_1008C63D4;
    v45 = v0[105];
    v46 = v0[48];

    return sub_1008CBA6C(v45, v32, v31);
  }

  v31 = v30;
  v32 = v29;
  if (v28)
  {
    goto LABEL_13;
  }

  v33 = v0[61];
  v34 = v0[62];
  v35 = v0[50];
  v36 = v0[48];
  Date.init(timeIntervalSince1970:)();
  (*(v34 + 56))(v35, 0, 1, v33);
  v37 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
  swift_beginAccess();
  sub_1008CCF08(v35, v36 + v37);
  swift_endAccess();
  v38 = *(v36 + 144);
  v0[110] = v38;
  if (!v38)
  {
    v42 = v0[49];
    v43 = type metadata accessor for XPCActivity.State();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    sub_10000B3A8(v42, &unk_10169BA88, &qword_101395670);
    v30 = v0[109];
    v29 = v0[108];
    v28 = v0[107];
    v27 = v0[106];
    v31 = v30;
    v32 = v29;
    goto LABEL_13;
  }

  v39 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
  v55 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

  v40 = swift_task_alloc();
  v0[111] = v40;
  *v40 = v0;
  v40[1] = sub_1008C6174;
  v41 = v0[49];

  return v55(v41);
}

uint64_t sub_1008C6174()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 880);
  v3 = *(*v0 + 384);
  v5 = *v0;

  return _swift_task_switch(sub_1008C62A0, v3, 0);
}

uint64_t sub_1008C62A0()
{
  v1 = v0[49];
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  *(v0[48] + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched) = 1;
  sub_1008CCE80(v6, v5, v4, v3);
  v7 = swift_task_alloc();
  v0[112] = v7;
  *v7 = v0;
  v7[1] = sub_1008C63D4;
  v8 = v0[105];
  v9 = v0[48];

  return sub_1008CBA6C(v8, v4, v3);
}

uint64_t sub_1008C63D4()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 864);
  v4 = *(*v0 + 856);
  v5 = *(*v0 + 848);
  v6 = *(*v0 + 840);
  v7 = *(*v0 + 384);
  v9 = *v0;

  sub_1008CCE94(v5, v4, v3, v2);

  sub_1008CCE94(v5, v4, v3, v2);

  return _swift_task_switch(sub_1008C6588, v7, 0);
}

uint64_t sub_1008C6588()
{
  v1 = v0[102];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[71];
  v16 = v0[65];
  v17 = v0[63];
  v14 = v0[58];
  v15 = v0[60];
  v18 = v0[57];
  v19 = v0[56];
  v13 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[51];
  v20 = v0[50];
  v21 = v0[49];

  sub_100016590(v6, v5);

  sub_100006654(v4, v3);

  (*(v9 + 8))(v8, v10);
  sub_1008CCEA8(v13, type metadata accessor for FindMyServiceDeviceListEndpoint);
  sub_1008CCEA8(v14, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v15, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v16, type metadata accessor for FindMyServiceDeviceListClientContext);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1008C6768()
{
  v1 = v0[67];

  v14 = v0[72];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008C685C()
{
  v1 = v0[102];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[71];
  v23 = v0[65];
  v8 = v0[60];
  v9 = v0[58];
  v10 = v0[55];

  sub_100016590(v6, v5);

  sub_100006654(v4, v3);

  sub_1008CCEA8(v10, type metadata accessor for FindMyServiceDeviceListEndpoint);
  sub_1008CCEA8(v9, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v8, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v23, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_10000B3A8((v0 + 27), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 22);
  sub_100007BAC(v0 + 17);
  v24 = v0[104];
  v11 = v0[65];
  v12 = v0[63];
  v13 = v0[60];
  v15 = v0[57];
  v14 = v0[58];
  v17 = v0[55];
  v16 = v0[56];
  v18 = v0[53];
  v19 = v0[49];
  v20 = v0[50];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1008C6A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[170] = v4;
  v5[169] = a4;
  v5[168] = a3;
  v5[167] = a2;
  v5[166] = a1;
  v6 = type metadata accessor for Response();
  v5[171] = v6;
  v7 = *(v6 - 8);
  v5[172] = v7;
  v8 = *(v7 + 64) + 15;
  v5[173] = swift_task_alloc();
  MyServiceDeviceListFilterPayload = type metadata accessor for FindMyServiceDeviceListFilterPayload(0);
  v5[174] = MyServiceDeviceListFilterPayload;
  v10 = *(*(MyServiceDeviceListFilterPayload - 8) + 64) + 15;
  v5[175] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[176] = v11;
  v12 = *(v11 - 8);
  v5[177] = v12;
  v13 = *(v12 + 64) + 15;
  v5[178] = swift_task_alloc();
  v5[179] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016AF930, &unk_1013C35B0) - 8) + 64) + 15;
  v5[180] = swift_task_alloc();
  v5[181] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v5[182] = MyServiceDevice;
  v16 = *(MyServiceDevice - 8);
  v5[183] = v16;
  v17 = *(v16 + 64) + 15;
  v5[184] = swift_task_alloc();
  v5[185] = swift_task_alloc();
  v5[186] = swift_task_alloc();
  v5[187] = swift_task_alloc();
  v5[188] = swift_task_alloc();
  MyServiceDeviceListEndpoint = type metadata accessor for FindMyServiceDeviceListEndpoint();
  v5[189] = MyServiceDeviceListEndpoint;
  v19 = *(*(MyServiceDeviceListEndpoint - 8) + 64) + 15;
  v5[190] = swift_task_alloc();
  v20 = *(*(type metadata accessor for SearchpartyAccount() - 8) + 64) + 15;
  v5[191] = swift_task_alloc();
  v5[192] = swift_task_alloc();
  v5[193] = swift_task_alloc();
  v21 = type metadata accessor for Date();
  v5[194] = v21;
  v22 = *(v21 - 8);
  v5[195] = v22;
  v23 = *(v22 + 64) + 15;
  v5[196] = swift_task_alloc();
  MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  v5[197] = MyServiceDeviceListClientContext;
  v25 = *(*(MyServiceDeviceListClientContext - 8) + 64) + 15;
  v5[198] = swift_task_alloc();

  return _swift_task_switch(sub_1008C6D74, v4, 0);
}

uint64_t sub_1008C6D74()
{
  v1 = *(v0[166] + 16);
  v0[199] = v1;
  if (v1 || *(v0[167] + 16))
  {
    v2 = async function pointer to daemon.getter[1];
    v3 = swift_task_alloc();
    v0[200] = v3;
    *v3 = v0;
    v3[1] = sub_1008C7018;

    return daemon.getter();
  }

  else
  {
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B078);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cannot fetch filtered devices with empty filter.", v7, 2u);
    }

    v8 = v0[198];
    v9 = v0[196];
    v10 = v0[193];
    v11 = v0[192];
    v12 = v0[191];
    v13 = v0[190];
    v14 = v0[188];
    v15 = v0[187];
    v16 = v0[186];
    v17 = v0[185];
    v20 = v0[184];
    v21 = v0[181];
    v22 = v0[180];
    v23 = v0[179];
    v24 = v0[178];
    v25 = v0[175];
    v26 = v0[173];

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1008C7018(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1600);
  v12 = *v1;
  v3[201] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[202] = v6;
  v7 = type metadata accessor for Daemon();
  v3[203] = v7;
  v8 = type metadata accessor for APSNotificationService();
  v9 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[204] = v9;
  v10 = sub_1008CD500(&qword_101698D40, type metadata accessor for APSNotificationService);
  *v6 = v12;
  v6[1] = sub_1008C71F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1008C71F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1616);
  v6 = *v2;
  v4[205] = a1;
  v4[206] = v1;

  if (v1)
  {
    v7 = v4[170];
    v8 = sub_1008CACCC;
  }

  else
  {
    v9 = v4[201];

    v8 = sub_1008C7334;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008C7334()
{
  v1 = v0[205];
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {

    v3 = sub_100771D58(0xD000000000000029, 0x8000000101363EC0);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      sub_100017D5C(*v5, v7);

      v0[210] = v7;
      v0[209] = v6;
      v8 = v0[170];

      return _swift_task_switch(sub_1008C7740, v8, 0);
    }
  }

  v9 = swift_task_alloc();
  v0[207] = v9;
  *v9 = v0;
  v9[1] = sub_1008C74A0;
  v10 = v0[205];

  return sub_100E7DE18(0xD000000000000029, 0x8000000101363EC0, 500000000000000000, 0);
}

uint64_t sub_1008C74A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1656);
  v8 = *v3;
  *(*v3 + 1664) = v2;

  if (v2)
  {
    v9 = v6[170];
    v10 = sub_1008C75DC;
  }

  else
  {
    v6[210] = a2;
    v6[209] = a1;
    v9 = v6[170];
    v10 = sub_1008C7740;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1008C75DC()
{
  v1 = v0[205];

  v21 = v0[208];
  v2 = v0[198];
  v3 = v0[196];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[188];
  v9 = v0[187];
  v10 = v0[186];
  v11 = v0[185];
  v14 = v0[184];
  v15 = v0[181];
  v16 = v0[180];
  v17 = v0[179];
  v18 = v0[178];
  v19 = v0[175];
  v20 = v0[173];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008C7740()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = Data.hexString.getter();
  v5 = v4;
  v6 = MobileGestalt_get_current_device();
  if (!v6)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return daemon.getter();
  }

  v7 = v6;
  v8 = MobileGestalt_copy_productType_obj();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = MobileGestalt_get_current_device();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = MobileGestalt_copy_buildVersion_obj();

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  static Date.trustedNow.getter(v0[196]);
  v18 = MobileGestalt_get_current_device();
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  v20 = MobileGestalt_copy_productVersion_obj();

  v47 = v17;
  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v22;
    v46 = v21;
  }

  else
  {
    v45 = 0xE000000000000000;
    v46 = 0;
  }

  v23 = v15;
  v24 = v11;
  v25 = [objc_opt_self() currentDevice];
  v26 = v9;
  v27 = v3;
  if (v25 && (v28 = v25, v29 = [v25 uniqueDeviceIdentifier], v28, v29))
  {
    v30 = v5;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v30 = v5;
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = v0[198];
  v35 = v0[197];
  v36 = v0[196];
  v37 = v0[195];
  v38 = v0[194];
  *v34 = 2;
  *(v34 + 8) = v27;
  *(v34 + 16) = v30;
  *(v34 + 24) = 1;
  *(v34 + 32) = v26;
  *(v34 + 40) = v24;
  *(v34 + 48) = v23;
  *(v34 + 56) = v47;
  (*(v37 + 32))(v34 + v35[9], v36, v38);
  v39 = (v34 + v35[10]);
  *v39 = v46;
  v39[1] = v45;
  *(v34 + v35[11]) = 1;
  v40 = (v34 + v35[12]);
  *v40 = v31;
  v40[1] = v33;
  *(v34 + v35[13]) = 0;
  v41 = (v34 + v35[14]);
  *v41 = 7105633;
  v41[1] = 0xE300000000000000;
  v42 = async function pointer to daemon.getter[1];
  v43 = swift_task_alloc();
  v0[211] = v43;
  *v43 = v0;
  v43[1] = sub_1008C7A0C;

  return daemon.getter();
}

uint64_t sub_1008C7A0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1688);
  v5 = *v1;
  v3[212] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[213] = v7;
  v8 = type metadata accessor for AccountService();
  v3[214] = v8;
  v9 = sub_1008CD500(&qword_101697890, type metadata accessor for AccountService);
  v3[215] = v9;
  *v7 = v5;
  v7[1] = sub_1008C7BC8;
  v10 = v3[204];
  v11 = v3[203];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1008C7BC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1704);
  v6 = *v2;
  v4[216] = a1;
  v4[217] = v1;

  if (v1)
  {
    v7 = v4[170];

    return _swift_task_switch(sub_1008C7E84, v7, 0);
  }

  else
  {
    v8 = v4[212];

    v9 = swift_task_alloc();
    v4[218] = v9;
    *v9 = v6;
    v9[1] = sub_1008C7D58;
    v10 = v4[193];

    return sub_100300A9C(v10);
  }
}

uint64_t sub_1008C7D58()
{
  v2 = *v1;
  v3 = *(*v1 + 1744);
  v4 = *v1;
  *(*v1 + 1752) = v0;

  v5 = *(v2 + 1360);
  if (v0)
  {
    v6 = sub_1008C8440;
  }

  else
  {
    v6 = sub_1008C8028;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008C7E84()
{
  v25 = v0[217];
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[205];
  v5 = v0[198];

  sub_100016590(v3, v2);

  sub_1008CCEA8(v5, type metadata accessor for FindMyServiceDeviceListClientContext);
  v6 = v0[198];
  v7 = v0[196];
  v8 = v0[193];
  v9 = v0[192];
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[188];
  v13 = v0[187];
  v14 = v0[186];
  v15 = v0[185];
  v18 = v0[184];
  v19 = v0[181];
  v20 = v0[180];
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[175];
  v24 = v0[173];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1008C8028()
{
  v1 = v0[216];
  v2 = v0[193];
  v3 = v0[192];

  v0[220] = *(v2 + 16);
  v0[221] = *(v2 + 24);
  sub_1008CCF78(v2, v3, type metadata accessor for SearchpartyAccount);
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[222] = v5;
  *v5 = v0;
  v5[1] = sub_1008C80F8;

  return daemon.getter();
}

uint64_t sub_1008C80F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1776);
  v5 = *v1;
  v3[223] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[224] = v7;
  *v7 = v5;
  v7[1] = sub_1008C8284;
  v8 = v3[215];
  v9 = v3[214];
  v10 = v3[204];
  v11 = v3[203];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_1008C8284(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1792);
  v6 = *v2;
  v4[225] = a1;
  v4[226] = v1;

  if (v1)
  {
    v7 = v4[223];
    v8 = v4[170];
    sub_1008CCEA8(v4[192], type metadata accessor for SearchpartyAccount);

    return _swift_task_switch(sub_1008C8720, v8, 0);
  }

  else
  {
    v9 = v4[223];

    v10 = swift_task_alloc();
    v4[227] = v10;
    *v10 = v6;
    v10[1] = sub_1008C85E4;

    return sub_1002FFDE0((v4 + 116));
  }
}

uint64_t sub_1008C8440()
{
  v25 = v0[219];
  v1 = v0[216];
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[205];
  v5 = v0[198];

  sub_100016590(v3, v2);

  sub_1008CCEA8(v5, type metadata accessor for FindMyServiceDeviceListClientContext);
  v6 = v0[198];
  v7 = v0[196];
  v8 = v0[193];
  v9 = v0[192];
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[188];
  v13 = v0[187];
  v14 = v0[186];
  v15 = v0[185];
  v18 = v0[184];
  v19 = v0[181];
  v20 = v0[180];
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[175];
  v24 = v0[173];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1008C85E4()
{
  v2 = *v1;
  v3 = *(*v1 + 1816);
  v8 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v4 = *(v2 + 1360);
    sub_1008CCEA8(*(v2 + 1536), type metadata accessor for SearchpartyAccount);
    v5 = sub_1008C91AC;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 1360);
    v5 = sub_1008C88D4;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1008C8720()
{
  v23 = v0[226];
  v1 = v0[205];
  v2 = v0[198];
  v3 = v0[193];
  sub_100016590(v0[209], v0[210]);

  sub_1008CCEA8(v2, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v3, type metadata accessor for SearchpartyAccount);
  v4 = v0[198];
  v5 = v0[196];
  v6 = v0[193];
  v7 = v0[192];
  v8 = v0[191];
  v9 = v0[190];
  v10 = v0[188];
  v11 = v0[187];
  v12 = v0[186];
  v13 = v0[185];
  v16 = v0[184];
  v17 = v0[181];
  v18 = v0[180];
  v19 = v0[179];
  v20 = v0[178];
  v21 = v0[175];
  v22 = v0[173];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008C88D4()
{
  v1 = v0[225];
  v2 = v0[199];
  v3 = v0[193];
  v4 = v0[192];
  v5 = v0[191];
  v6 = v0[190];

  sub_1010A403C(v4, (v0 + 116), v6);
  sub_1008CCF78(v3, v5, type metadata accessor for SearchpartyAccount);
  v0[229] = v5[2];
  v0[230] = v5[3];
  v0[231] = v5[4];
  v0[232] = v5[5];

  sub_1008CCEA8(v5, type metadata accessor for SearchpartyAccount);
  type metadata accessor for ServerInteractionController();
  v0[233] = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  v7 = _swiftEmptyArrayStorage;
  v0[165] = _swiftEmptyArrayStorage;
  if (v2)
  {
    v8 = 0;
    v9 = v0[221];
    v10 = (v0[166] + 40);
    do
    {
      v11 = v0[221];
      v12 = v0[169];
      v13 = *(v10 - 1);
      v14 = *v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100A5DB5C(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_100A5DB5C((v15 > 1), v16 + 1, 1, v7);
      }

      ++v8;
      v17 = v0[220];
      v18 = v0[199];
      v19 = v0[169];
      v20 = v0[168];
      *(v7 + 2) = v16 + 1;
      v21 = &v7[64 * v16];
      *(v21 + 4) = v17;
      *(v21 + 5) = v9;
      *(v21 + 6) = v20;
      *(v21 + 7) = v19;
      *(v21 + 8) = v13;
      *(v21 + 9) = v14;
      v10 += 2;
      *(v21 + 10) = 0;
      *(v21 + 11) = 0;
    }

    while (v8 != v18);
  }

  v22 = v0[167];
  v23 = *(v22 + 16);
  v0[234] = v23;
  if (v23)
  {
    v24 = v0[221];
    v25 = v0[183];
    v26 = v0[170];
    v92 = (v0[177] + 8);
    v94 = *(v26 + 128);
    v88 = (v25 + 56);
    v84 = v25;
    v85 = (v25 + 48);
    v86 = *(v26 + 136);
    v98 = v0[228];
    v27 = (v22 + 40);
    v90 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = v0[179];
      v30 = *(v27 - 1);
      v29 = *v27;

      v101 = v29;
      v31 = String.utf8Data.getter();
      v33 = v32;
      v0[159] = v31;
      v0[160] = v32;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v31, v33);
      if (v94)
      {
        v96 = v30;
        v34 = v0[181];
        v35 = v0[179];
        v36 = v0[178];
        v37 = getuid();
        sub_1000294F0(v37);
        sub_10072FCA8(v36, v35, v34);
        if (v98)
        {
          v99 = v0[182];
          v87 = v0[181];
          v38 = v0[179];
          v39 = v0[178];
          v40 = v23;
          v41 = v0[176];

          v42 = v24;
          v43 = *v92;
          (*v92)(v39, v41);
          v44 = v41;
          v23 = v40;
          v43(v38, v44);
          v24 = v42;
          (*v88)(v87, 1, 1, v99);
          v98 = 0;
          v45 = v0[181];
          v30 = v96;
          goto LABEL_16;
        }

        v48 = v0[179];
        v49 = v0[176];
        v50 = *v92;
        (*v92)(v0[178], v49);
        v50(v48, v49);
        v98 = 0;
        v30 = v96;
      }

      else
      {
        v46 = v0[182];
        v47 = v0[181];
        (*v92)(v0[179], v0[176]);
        (*v88)(v47, 1, 1, v46);
      }

      v45 = v0[181];
      if ((*v85)(v45, 1, v0[182]) != 1)
      {
        v51 = v0[188];
        v52 = v0[187];
        sub_1008CCD18(v45, v51);
        sub_1008CCF78(v51, v52, type metadata accessor for FindMyServiceDevice);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_100A5DA10(0, v90[2] + 1, 1, v90);
        }

        v54 = v90[2];
        v53 = v90[3];
        if (v54 >= v53 >> 1)
        {
          v90 = sub_100A5DA10(v53 > 1, v54 + 1, 1, v90);
        }

        v55 = v0[187];
        sub_1008CCEA8(v0[188], type metadata accessor for FindMyServiceDevice);
        v90[2] = v54 + 1;
        sub_1008CCD18(v55, v90 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v54);
        goto LABEL_22;
      }

LABEL_16:
      sub_10000B3A8(v45, &unk_1016AF930, &unk_1013C35B0);
LABEL_22:
      v56 = v0[221];
      v57 = v0[169];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100A5DB5C(0, *(v7 + 2) + 1, 1, v7);
      }

      v59 = *(v7 + 2);
      v58 = *(v7 + 3);
      if (v59 >= v58 >> 1)
      {
        v7 = sub_100A5DB5C((v58 > 1), v59 + 1, 1, v7);
      }

      v60 = v0[220];
      v61 = v0[169];
      v62 = v0[168];
      *(v7 + 2) = v59 + 1;
      v63 = &v7[64 * v59];
      *(v63 + 4) = v60;
      *(v63 + 5) = v24;
      *(v63 + 6) = v62;
      *(v63 + 7) = v61;
      *(v63 + 8) = 0;
      *(v63 + 9) = 0;
      v27 += 2;
      *(v63 + 10) = v30;
      *(v63 + 11) = v101;
      if (!--v23)
      {
        goto LABEL_30;
      }
    }
  }

  if (*(v7 + 2))
  {
    v90 = _swiftEmptyArrayStorage;
LABEL_30:
    v0[235] = v90;
    v64 = v0[175];
    v65 = v0[174];
    sub_1008CCF78(v0[198], v64 + *(v65 + 24), type metadata accessor for FindMyServiceDeviceListClientContext);
    *v64 = v7;
    *(v64 + 8) = 0;
    v0[129] = v65;
    v0[130] = sub_1008CD500(&qword_1016AD2C8, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    v66 = sub_1000280DC(v0 + 126);
    sub_1008CCF78(v64, v66, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    v67 = swift_task_alloc();
    v0[236] = v67;
    *v67 = v0;
    v67[1] = sub_1008C9368;

    return sub_100282B80((v0 + 126));
  }

  else
  {
    v69 = v0[205];
    v70 = v0[198];
    v71 = v0[193];
    v72 = v0[190];
    sub_100016590(v0[209], v0[210]);

    sub_1008CCEA8(v72, type metadata accessor for FindMyServiceDeviceListEndpoint);
    sub_1008CCEA8(v70, type metadata accessor for FindMyServiceDeviceListClientContext);

    sub_1008CCEA8(v71, type metadata accessor for SearchpartyAccount);
    v73 = v0[198];
    v74 = v0[196];
    v75 = v0[193];
    v76 = v0[192];
    v77 = v0[191];
    v78 = v0[190];
    v79 = v0[188];
    v80 = v0[187];
    v81 = v0[186];
    v82 = v0[185];
    v89 = v0[184];
    v91 = v0[181];
    v93 = v0[180];
    v95 = v0[179];
    v97 = v0[178];
    v100 = v0[175];
    v102 = v0[173];

    v83 = v0[1];

    return v83(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1008C91AC()
{
  v1 = v0[225];

  v24 = v0[228];
  v2 = v0[205];
  v3 = v0[198];
  v4 = v0[193];
  sub_100016590(v0[209], v0[210]);

  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v4, type metadata accessor for SearchpartyAccount);
  v5 = v0[198];
  v6 = v0[196];
  v7 = v0[193];
  v8 = v0[192];
  v9 = v0[191];
  v10 = v0[190];
  v11 = v0[188];
  v12 = v0[187];
  v13 = v0[186];
  v14 = v0[185];
  v17 = v0[184];
  v18 = v0[181];
  v19 = v0[180];
  v20 = v0[179];
  v21 = v0[178];
  v22 = v0[175];
  v23 = v0[173];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008C9368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 1888);
  v13 = *v4;
  v5[237] = a1;
  v5[238] = a2;
  v5[239] = a3;
  v5[240] = v3;

  if (v3)
  {
    v7 = v5[232];
    v8 = v5[230];
    v9 = v5[170];

    v10 = sub_1008C97FC;
    v11 = v9;
  }

  else
  {
    v11 = v5[170];
    v10 = sub_1008C94A8;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1008C94A8()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v14 = *(v0 + 1832);
  v6 = *(v0 + 1520);
  *(v0 + 1072) = *(v0 + 1512);
  *(v0 + 1080) = sub_1008CD500(&qword_1016AD2D0, type metadata accessor for FindMyServiceDeviceListEndpoint);
  v7 = sub_1000280DC((v0 + 1048));
  sub_1008CCF78(v6, v7, type metadata accessor for FindMyServiceDeviceListEndpoint);
  *(v0 + 1112) = &type metadata for FindMyServiceDeviceListRequest;
  *(v0 + 1120) = sub_100283B9C();
  *(v0 + 1088) = v3;
  *(v0 + 1096) = v2;
  *(v0 + 1104) = v1;
  *(v0 + 1152) = &type metadata for SearchpartyCredential;
  *(v0 + 1160) = sub_100132C84();
  v8 = swift_allocObject();
  *(v0 + 1128) = v8;
  *(v8 + 16) = v14;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = 0u;
  *(v0 + 1200) = 0;
  sub_10002E98C(v3, v2);
  v9 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
  v15 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));

  v10 = swift_task_alloc();
  *(v0 + 1928) = v10;
  *v10 = v0;
  v10[1] = sub_1008C9688;
  v11 = *(v0 + 1864);
  v12 = *(v0 + 1384);

  return v15(v12, v0 + 1048, v0 + 1088, v0 + 1128, v0 + 1168);
}

uint64_t sub_1008C9688()
{
  v2 = *v1;
  v3 = (*v1)[241];
  v7 = *v1;
  (*v1)[242] = v0;

  if (v0)
  {
    v4 = v2[170];
    sub_10000B3A8((v2 + 146), &qword_1016978B0, &qword_1013A3960);
    v5 = sub_1008CAE30;
  }

  else
  {
    v4 = v2[170];
    sub_10000B3A8((v2 + 146), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 141), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 136);
    sub_100007BAC(v2 + 131);
    v5 = sub_1008C9C6C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008C97FC()
{
  v48 = v0;
  sub_1008CCEA8(v0[175], type metadata accessor for FindMyServiceDeviceListFilterPayload);
  v1 = v0[240];
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v2 = v0[167];
  v3 = v0[166];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B078);
  swift_errorRetain();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[233];
  v9 = v0[205];
  v10 = v0[198];
  v11 = v0[190];
  if (v7)
  {
    v36 = v0[167];
    v38 = v0[209];
    v12 = v0[166];
    v40 = v0[210];
    v45 = v0[198];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v13 = 138543874;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2080;
    v16 = Array.description.getter();
    v18 = sub_1000136BC(v16, v17, &v47);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    v19 = Array.description.getter();
    v21 = sub_1000136BC(v19, v20, &v47);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch devices: %{public}@ for serialNumbers: %s, findMyIds: %s.", v13, 0x20u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_100016590(v38, v40);

    sub_1008CCEA8(v11, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v22 = v45;
  }

  else
  {
    sub_100016590(v0[209], v0[210]);

    sub_1008CCEA8(v11, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v22 = v10;
  }

  sub_1008CCEA8(v22, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v0[193], type metadata accessor for SearchpartyAccount);
  v46 = v0[235];
  v23 = v0[198];
  v24 = v0[196];
  v25 = v0[193];
  v26 = v0[192];
  v27 = v0[191];
  v28 = v0[190];
  v29 = v0[188];
  v30 = v0[187];
  v31 = v0[186];
  v32 = v0[185];
  v35 = v0[184];
  v37 = v0[181];
  v39 = v0[180];
  v41 = v0[179];
  v42 = v0[178];
  v43 = v0[175];
  v44 = v0[173];

  v33 = v0[1];

  return v33(v46);
}

uint64_t sub_1008C9C6C()
{
  v125 = v0;
  v1 = v0[242];
  v2 = v0[173];
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v6 = Response.body.getter();
  v8 = v7;
  sub_1008CCE2C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v9 = v0[239];
    v10 = v0[238];
    v11 = v0[237];
    v116 = v0[175];
    v12 = v0[173];
    v13 = v0[172];
    v14 = v0[171];
    sub_100016590(v6, v8);

    sub_100006654(v11, v10);

    (*(v13 + 8))(v12, v14);
    sub_1008CCEA8(v116, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v15 = v0[167];
    v16 = v0[166];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B078);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[233];
    v22 = v0[205];
    v23 = v0[198];
    v24 = v0[190];
    if (v20)
    {
      v98 = v0[167];
      v101 = v0[209];
      v25 = v0[166];
      v104 = v0[210];
      v117 = v0[198];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v26 = 138543874;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2080;
      v29 = Array.description.getter();
      v31 = sub_1000136BC(v29, v30, v124);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      v32 = Array.description.getter();
      v34 = sub_1000136BC(v32, v33, v124);

      *(v26 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch devices: %{public}@ for serialNumbers: %s, findMyIds: %s.", v26, 0x20u);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      sub_100016590(v101, v104);

      sub_1008CCEA8(v24, type metadata accessor for FindMyServiceDeviceListEndpoint);
      v35 = v117;
    }

    else
    {
      sub_100016590(v0[209], v0[210]);

      sub_1008CCEA8(v24, type metadata accessor for FindMyServiceDeviceListEndpoint);
      v35 = v23;
    }

    sub_1008CCEA8(v35, type metadata accessor for FindMyServiceDeviceListClientContext);
    sub_1008CCEA8(v0[193], type metadata accessor for SearchpartyAccount);
    v71 = v0[235];
    goto LABEL_41;
  }

  v36 = v0[235];

  sub_100016590(v6, v8);

  v37 = v0[151];
  v38 = v0[152];
  v0[243] = v38;
  v39 = v0[153];
  v0[244] = v39;
  v40 = v0[154];
  v0[245] = v40;
  v41 = v0[155];
  v0[246] = v41;
  v42 = *(v37 + 16);
  if (!v42)
  {
    v107 = v0[238];
    v109 = v0[239];
    v86 = v0[233];
    v87 = v38;
    v88 = v0[210];
    v89 = v40;
    v90 = v0[209];
    v91 = v39;
    v94 = v0[205];
    v95 = v0[237];
    v120 = v0[198];
    v123 = v0[193];
    v112 = v0[175];
    v115 = v0[190];
    v92 = v0[172];
    v97 = v0[171];
    v100 = v0[173];
    v93 = v41;

    sub_100016590(v90, v88);

    sub_1008CCE94(v87, v91, v89, v93);

    sub_100006654(v95, v107);

    (*(v92 + 8))(v100, v97);
    sub_1008CCEA8(v112, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    sub_1008CCEA8(v115, type metadata accessor for FindMyServiceDeviceListEndpoint);
    sub_1008CCEA8(v120, type metadata accessor for FindMyServiceDeviceListClientContext);
    sub_1008CCEA8(v123, type metadata accessor for SearchpartyAccount);
    v71 = _swiftEmptyArrayStorage;
LABEL_41:
    v122 = v71;
    v72 = v0[198];
    v73 = v0[196];
    v74 = v0[193];
    v75 = v0[192];
    v76 = v0[191];
    v77 = v0[190];
    v78 = v0[188];
    v79 = v0[187];
    v80 = v0[186];
    v81 = v0[185];
    v99 = v0[184];
    v103 = v0[181];
    v106 = v0[180];
    v108 = v0[179];
    v111 = v0[178];
    v114 = v0[175];
    v119 = v0[173];

    v82 = v0[1];

    return v82(v122);
  }

  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v40;
  }

  v110 = v41;
  if (v41 == 1)
  {
    v41 = 0;
  }

  v113 = v41;
  v118 = v43;
  v96 = v0[183];

  v44 = 32;
  v121 = _swiftEmptyArrayStorage;
  v102 = v39;
  v105 = _swiftEmptyArrayStorage;
  do
  {
    v45 = v0[180];
    memcpy(v0 + 2, (v37 + v44), 0x129uLL);
    sub_100840D50((v0 + 2), (v0 + 40));
    sub_100840D50((v0 + 2), (v0 + 78));
    v46 = v40;
    sub_1008CCE80(v38, v39, v40, v110);
    sub_1008CB2E4((v0 + 2), v113, v45);
    v47 = v37;
    v48 = v38;
    v49 = v0[199];
    v50 = v0[186];
    v51 = v0[180];
    (*(v96 + 56))(v51, 0, 1, v0[182]);
    sub_1008CCD18(v51, v50);
    if (v49)
    {
      v52 = v0[7];
      if (v52)
      {
        v53 = v0[166];
        v54 = v0[6];
        v55 = v0[7];

        sub_100840D88((v0 + 2));
        v0[163] = v54;
        v0[164] = v52;
        v56 = swift_task_alloc();
        *(v56 + 16) = v0 + 163;
        LOBYTE(v53) = sub_1002EB538(sub_1008CD5F0, v56, v53);

        v57 = v0[186];
        if (v53)
        {
          sub_1008CCF78(v57, v0[185], type metadata accessor for FindMyServiceDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100A5DA10(0, v105[2] + 1, 1, v105);
          }

          v59 = v105[2];
          v58 = v105[3];
          if (v59 >= v58 >> 1)
          {
            v105 = sub_100A5DA10(v58 > 1, v59 + 1, 1, v105);
          }

          v60 = v0[185];
          sub_1008CCEA8(v0[186], type metadata accessor for FindMyServiceDevice);
          v105[2] = v59 + 1;
          sub_1008CCD18(v60, v105 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v59);
        }

        else
        {
          sub_1008CCEA8(v57, type metadata accessor for FindMyServiceDevice);
        }

        goto LABEL_38;
      }
    }

    if (!v0[234])
    {
      sub_1008CCEA8(v0[186], type metadata accessor for FindMyServiceDevice);
      sub_100840D88((v0 + 2));
LABEL_38:
      v38 = v48;
      v37 = v47;
      v39 = v102;
      goto LABEL_13;
    }

    v61 = v0[5];
    if (!v61)
    {
      v70 = v0[186];
      sub_100840D88((v0 + 2));
      sub_1008CCEA8(v70, type metadata accessor for FindMyServiceDevice);
      goto LABEL_38;
    }

    v62 = v0[167];
    v0[161] = v0[4];
    v0[162] = v61;
    v63 = swift_task_alloc();
    *(v63 + 16) = v0 + 161;

    LOBYTE(v62) = sub_1002EB538(sub_1007D491C, v63, v62);

    v64 = v0[186];
    if ((v62 & 1) == 0)
    {
      sub_1008CCEA8(v64, type metadata accessor for FindMyServiceDevice);
      sub_100840D88((v0 + 2));
      goto LABEL_38;
    }

    sub_1008CCF78(v64, v0[184], type metadata accessor for FindMyServiceDevice);
    v38 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = sub_100A5DA10(0, v105[2] + 1, 1, v105);
    }

    v37 = v47;
    v39 = v102;
    v66 = v105[2];
    v65 = v105[3];
    if (v66 >= v65 >> 1)
    {
      v105 = sub_100A5DA10(v65 > 1, v66 + 1, 1, v105);
    }

    v67 = v0[184];
    v105[2] = v66 + 1;
    sub_1008CCD18(v67, v105 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = sub_100A5DA38(0, *(v121 + 2) + 1, 1, v121);
    }

    v69 = *(v121 + 2);
    v68 = *(v121 + 3);
    if (v69 >= v68 >> 1)
    {
      v121 = sub_100A5DA38((v68 > 1), v69 + 1, 1, v121);
    }

    sub_1008CCEA8(v0[186], type metadata accessor for FindMyServiceDevice);
    *(v121 + 2) = v69 + 1;
    memcpy(&v121[304 * v69 + 32], v0 + 2, 0x129uLL);
LABEL_13:
    v40 = v46;
    v0[247] = v121;
    v44 += 304;
    --v42;
  }

  while (v42);

  sub_10039A0D0(v105);

  v84 = swift_task_alloc();
  v0[248] = v84;
  *v84 = v0;
  v84[1] = sub_1008CA8DC;
  v85 = v0[170];

  return sub_1008CBA6C(v121, v118, v113);
}

uint64_t sub_1008CA8DC()
{
  v1 = *(*v0 + 1984);
  v2 = *(*v0 + 1976);
  v3 = *(*v0 + 1968);
  v4 = *(*v0 + 1960);
  v5 = *(*v0 + 1952);
  v6 = *(*v0 + 1944);
  v7 = *(*v0 + 1360);
  v9 = *v0;

  sub_1008CCE94(v6, v5, v4, v3);

  return _swift_task_switch(sub_1008CAA7C, v7, 0);
}

uint64_t sub_1008CAA7C()
{
  v1 = v0[239];
  v2 = v0[238];
  v3 = v0[237];
  v4 = v0[233];
  v5 = v0[205];
  v29 = v0[198];
  v31 = v0[193];
  v27 = v0[190];
  v6 = v0[175];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[171];
  sub_100016590(v0[209], v0[210]);

  sub_100006654(v3, v2);

  (*(v8 + 8))(v7, v9);
  sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListFilterPayload);
  sub_1008CCEA8(v27, type metadata accessor for FindMyServiceDeviceListEndpoint);
  sub_1008CCEA8(v29, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v31, type metadata accessor for SearchpartyAccount);
  v32 = v0[165];
  v10 = v0[198];
  v11 = v0[196];
  v12 = v0[193];
  v13 = v0[192];
  v14 = v0[191];
  v15 = v0[190];
  v16 = v0[188];
  v17 = v0[187];
  v18 = v0[186];
  v19 = v0[185];
  v22 = v0[184];
  v23 = v0[181];
  v24 = v0[180];
  v25 = v0[179];
  v26 = v0[178];
  v28 = v0[175];
  v30 = v0[173];

  v20 = v0[1];

  return v20(v32);
}

uint64_t sub_1008CACCC()
{
  v1 = v0[201];

  v21 = v0[206];
  v2 = v0[198];
  v3 = v0[196];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[188];
  v9 = v0[187];
  v10 = v0[186];
  v11 = v0[185];
  v14 = v0[184];
  v15 = v0[181];
  v16 = v0[180];
  v17 = v0[179];
  v18 = v0[178];
  v19 = v0[175];
  v20 = v0[173];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008CAE30()
{
  v50 = v0;
  v1 = v0[239];
  v2 = v0[175];
  sub_100006654(v0[237], v0[238]);

  sub_1008CCEA8(v2, type metadata accessor for FindMyServiceDeviceListFilterPayload);
  sub_10000B3A8((v0 + 141), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 136);
  sub_100007BAC(v0 + 131);
  v3 = v0[242];
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v4 = v0[167];
  v5 = v0[166];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B078);
  swift_errorRetain();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[233];
  v11 = v0[205];
  v12 = v0[198];
  v13 = v0[190];
  if (v9)
  {
    v38 = v0[167];
    v40 = v0[209];
    v14 = v0[166];
    v42 = v0[210];
    v47 = v0[198];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v15 = 138543874;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    *(v15 + 12) = 2080;
    v18 = Array.description.getter();
    v20 = sub_1000136BC(v18, v19, &v49);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v21 = Array.description.getter();
    v23 = sub_1000136BC(v21, v22, &v49);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to fetch devices: %{public}@ for serialNumbers: %s, findMyIds: %s.", v15, 0x20u);
    sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_100016590(v40, v42);

    sub_1008CCEA8(v13, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v24 = v47;
  }

  else
  {
    sub_100016590(v0[209], v0[210]);

    sub_1008CCEA8(v13, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v24 = v12;
  }

  sub_1008CCEA8(v24, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v0[193], type metadata accessor for SearchpartyAccount);
  v48 = v0[235];
  v25 = v0[198];
  v26 = v0[196];
  v27 = v0[193];
  v28 = v0[192];
  v29 = v0[191];
  v30 = v0[190];
  v31 = v0[188];
  v32 = v0[187];
  v33 = v0[186];
  v34 = v0[185];
  v37 = v0[184];
  v39 = v0[181];
  v41 = v0[180];
  v43 = v0[179];
  v44 = v0[178];
  v45 = v0[175];
  v46 = v0[173];

  v35 = v0[1];

  return v35(v48);
}

uint64_t sub_1008CB2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a1 + 8))
  {
    v6 = *a1;
    v7 = *(a1 + 8);

    UUID.init(uuidString:)();
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }

  v65[0] = *(a1 + 16);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  *(a3 + MyServiceDevice[5]) = *(a1 + 16);
  v10 = *(a1 + 40);
  v11 = (a3 + MyServiceDevice[6]);
  *v11 = *(a1 + 32);
  v11[1] = v10;
  if (*(&v65[0] + 1))
  {
    sub_1000D2A70(v65, v57, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(v65, v57, &qword_1016A0AC0, &unk_1013926A0);

    v12 = String.utf8Data.getter();
    v14 = v13;
    sub_10000B3A8(v65, &qword_1016A0AC0, &unk_1013926A0);
    goto LABEL_8;
  }

  if (v10)
  {
    swift_bridgeObjectRetain_n();
    v12 = String.utf8Data.getter();
    v14 = v15;

LABEL_8:
    v57[0] = v12;
    v57[1] = v14;
    v56 = v14;
    v16 = MyServiceDevice[7];
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    v64 = *(a1 + 48);
    *(a3 + MyServiceDevice[8]) = v64;
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    sub_1008CCDD0(&v64, v57);

    v66._countAndFlagsBits = v17;
    v66._object = v18;
    v19 = sub_1008BEAAC(v66);
    if (v19 == 4)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    *(a3 + MyServiceDevice[9]) = v20;
    v21 = *(a1 + 80);
    v62 = *(a1 + 96);
    v22 = v62;
    v63 = v21;
    *(a3 + MyServiceDevice[10]) = v21;
    *(a3 + MyServiceDevice[11]) = v22;
    v23 = *(a1 + 112);
    v60 = *(a1 + 128);
    v61 = v23;
    *(a3 + MyServiceDevice[12]) = v23;
    v24 = *(a1 + 144);
    *(a3 + MyServiceDevice[13]) = *(a1 + 128);
    *(a3 + MyServiceDevice[14]) = *(a1 + 144);
    v25 = a3 + MyServiceDevice[15];
    *v25 = *(a1 + 160);
    *(v25 + 8) = *(a1 + 168);
    v58 = *(a1 + 176);
    v59 = v24;
    v26 = *(&v58 + 1);
    if (*(&v58 + 1))
    {
      v27 = v58;
      sub_1000D2A70(&v63, v57, &qword_1016A0AC0, &unk_1013926A0);
      sub_1008CCDD0(&v62, v57);
      sub_1008CCDD0(&v61, v57);
      sub_1008CCDD0(&v60, v57);
      sub_1008CCDD0(&v59, v57);
      sub_1000D2A70(&v58, v57, &qword_1016A0AC0, &unk_1013926A0);
      v67._countAndFlagsBits = v27;
      v67._object = v26;
      *(a3 + MyServiceDevice[16]) = sub_1008BEAF8(v67);
    }

    else
    {
      *(a3 + MyServiceDevice[16]) = 4;
      sub_1000D2A70(&v63, v57, &qword_1016A0AC0, &unk_1013926A0);
      sub_1008CCDD0(&v62, v57);
      sub_1008CCDD0(&v61, v57);
      sub_1008CCDD0(&v60, v57);
      sub_1008CCDD0(&v59, v57);
    }

    *(a3 + MyServiceDevice[17]) = *(a1 + 192);
    *(a3 + MyServiceDevice[18]) = *(a1 + 193);
    *(a3 + MyServiceDevice[19]) = *(a1 + 194);
    v28 = *(a1 + 208);
    v29 = (a3 + MyServiceDevice[20]);
    *v29 = *(a1 + 200);
    v29[1] = v28;
    *(a3 + MyServiceDevice[21]) = *(a1 + 216);
    v30 = MyServiceDevice[22];
    if (*(a1 + 248))
    {
      v31 = type metadata accessor for Date();
      (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
    }

    else
    {
      v32 = *(a1 + 240) / 1000.0;

      Date.init(timeIntervalSince1970:)();
      v33 = type metadata accessor for Date();
      (*(*(v33 - 8) + 56))(a3 + v30, 0, 1, v33);
    }

    *(a3 + MyServiceDevice[25]) = *(a1 + 281);
    v34 = MyServiceDevice[23];
    if (*(a1 + 264))
    {
      v35 = type metadata accessor for Date();
      (*(*(v35 - 8) + 56))(a3 + v34, 1, 1, v35);
    }

    else
    {
      v36 = *(a1 + 256) / 1000.0;
      Date.init(timeIntervalSince1970:)();
      v37 = type metadata accessor for Date();
      (*(*(v37 - 8) + 56))(a3 + v34, 0, 1, v37);
    }

    v38 = MyServiceDevice[24];
    if (*(a1 + 280))
    {
      v39 = type metadata accessor for Date();
      (*(*(v39 - 8) + 56))(a3 + v38, 1, 1, v39);
    }

    else
    {
      v40 = *(a1 + 272) / 1000.0;
      Date.init(timeIntervalSince1970:)();
      v41 = type metadata accessor for Date();
      (*(*(v41 - 8) + 56))(a3 + v38, 0, 1, v41);
    }

    if (a2)
    {
      v42 = a3 + MyServiceDevice[31];
      URL.init(string:)();
    }

    else
    {
      v43 = MyServiceDevice[31];
      v44 = type metadata accessor for URL();
      (*(*(v44 - 8) + 56))(a3 + v43, 1, 1, v44);
    }

    v45 = *(a1 + 232);
    v46 = (a3 + MyServiceDevice[26]);
    *v46 = *(a1 + 224);
    v46[1] = v45;
    v47 = *(a1 + 288);
    if (!v47)
    {
      *(a3 + MyServiceDevice[27]) = 0;
      *(a3 + MyServiceDevice[28]) = 0;

      goto LABEL_40;
    }

    v48 = *(v47 + 16);

    if (v48 && (v49 = sub_100771D58(4476499, 0xE300000000000000), (v50 & 1) != 0))
    {
      *(a3 + MyServiceDevice[27]) = *(*(v47 + 56) + v49);
      if (!*(v47 + 16))
      {
        goto LABEL_35;
      }
    }

    else
    {
      *(a3 + MyServiceDevice[27]) = 0;
      if (!*(v47 + 16))
      {
        goto LABEL_35;
      }
    }

    v51 = sub_100771D58(5460816, 0xE300000000000000);
    if (v52)
    {
      *(a3 + MyServiceDevice[28]) = *(*(v47 + 56) + v51);
      if (!*(v47 + 16))
      {
        goto LABEL_38;
      }

LABEL_36:
      v53 = sub_100771D58(4998482, 0xE300000000000000);
      if (v54)
      {
        LOBYTE(v47) = *(*(v47 + 56) + v53);
LABEL_40:
        sub_100016590(v12, v56);
        result = sub_100840D88(a1);
        *(a3 + MyServiceDevice[29]) = v47;
        *(a3 + MyServiceDevice[30]) = *(a1 + 296);
        return result;
      }

LABEL_38:
      LOBYTE(v47) = 0;
      goto LABEL_40;
    }

LABEL_35:
    *(a3 + MyServiceDevice[28]) = 0;
    if (!*(v47 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_100840D88(a1);
  sub_1008CCD7C();
  swift_allocError();
  swift_willThrow();
  return sub_10000B3A8(a3, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_1008CBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[157] = v3;
  v4[156] = a3;
  v4[155] = a2;
  v4[154] = a1;
  v5 = type metadata accessor for UUID();
  v4[158] = v5;
  v6 = *(v5 - 8);
  v4[159] = v6;
  v7 = *(v6 + 64) + 15;
  v4[160] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[161] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v4[162] = MyServiceDevice;
  v10 = *(MyServiceDevice - 8);
  v4[163] = v10;
  v11 = *(v10 + 64) + 15;
  v4[164] = swift_task_alloc();
  v4[165] = swift_task_alloc();
  v4[166] = swift_task_alloc();
  v4[167] = swift_task_alloc();

  return _swift_task_switch(sub_1008CBBF0, v3, 0);
}

uint64_t sub_1008CBBF0()
{
  v57 = v0;
  v1 = v0[154];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = v0[159];
    v52 = (v4 + 48);
    v50 = (v4 + 8);
    v5 = _swiftEmptyArrayStorage;
    v53 = v0[163];
    v51 = v0[162];
    v55 = v0[156];
    do
    {
      v6 = v0[167];
      v7 = v0[156];
      v8 = v0[155];
      memcpy(v0 + 2, v3, 0x129uLL);
      sub_100840D50((v0 + 2), (v0 + 40));
      sub_100840D50((v0 + 2), (v0 + 78));

      sub_1008CB2E4((v0 + 2), v7, v6);
      sub_100840D88((v0 + 2));
      if (qword_101694848 != -1)
      {
        swift_once();
      }

      v9 = v0[167];
      v10 = v0[166];
      v11 = v0[165];
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177B078);
      sub_1008CCF78(v9, v10, type metadata accessor for FindMyServiceDevice);
      sub_1008CCF78(v9, v11, type metadata accessor for FindMyServiceDevice);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[166];
      if (v15)
      {
        v54 = v5;
        v17 = v0[161];
        v18 = v0[158];
        v19 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v19 = 136315394;
        sub_1000D2A70(v16, v17, &qword_1016980D0, &unk_10138F3B0);
        if ((*v52)(v17, 1, v18) == 1)
        {
          sub_10000B3A8(v0[161], &qword_1016980D0, &unk_10138F3B0);
          v20 = 0xE400000000000000;
          v21 = 1162760014;
        }

        else
        {
          v23 = v0[158];
          v24 = v0[161];
          v21 = UUID.uuidString.getter();
          v20 = v25;
          (*v50)(v24, v23);
        }

        v26 = v0[165];
        sub_1008CCEA8(v0[166], type metadata accessor for FindMyServiceDevice);
        v27 = sub_1000136BC(v21, v20, v56);

        *(v19 + 4) = v27;
        *(v19 + 12) = 2080;
        v28 = (v26 + *(v51 + 32));
        v30 = *v28;
        v29 = v28[1];

        sub_1008CCEA8(v26, type metadata accessor for FindMyServiceDevice);
        v31 = sub_1000136BC(v30, v29, v56);

        *(v19 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v13, v14, "Download got beacon %s, name: %s", v19, 0x16u);
        swift_arrayDestroy();

        v5 = v54;
      }

      else
      {
        v22 = v0[165];

        sub_1008CCEA8(v22, type metadata accessor for FindMyServiceDevice);
        sub_1008CCEA8(v16, type metadata accessor for FindMyServiceDevice);
      }

      sub_1008CCF78(v0[167], v0[164], type metadata accessor for FindMyServiceDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5DA10(0, v5[2] + 1, 1, v5);
      }

      v33 = v5[2];
      v32 = v5[3];
      if (v33 >= v32 >> 1)
      {
        v5 = sub_100A5DA10(v32 > 1, v33 + 1, 1, v5);
      }

      v34 = v0[164];
      sub_1008CCEA8(v0[167], type metadata accessor for FindMyServiceDevice);
      v5[2] = v33 + 1;
      sub_1008CCD18(v34, v5 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33);
      v3 += 304;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v0[168] = v5;
  v35 = v0[157];
  v36 = *(v35 + 128);
  if (v36)
  {
    v37 = v0[160];
    v38 = *(v35 + 136);
    v39 = getuid();
    sub_1000294F0(v39);
    v40 = swift_task_alloc();
    v0[169] = v40;
    *v40 = v0;
    v40[1] = sub_1008CC398;
    v41 = v0[160];

    return sub_10072B87C(v5, v41, v36, v38);
  }

  else
  {

    v43 = v0[167];
    v44 = v0[166];
    v45 = v0[165];
    v46 = v0[164];
    v47 = v0[161];
    v48 = v0[160];

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_1008CC398()
{
  v2 = *(*v1 + 1352);
  v3 = *v1;
  v3[170] = v0;

  if (v0)
  {
    v4 = v3[168];
    v5 = v3[157];
    (*(v3[159] + 8))(v3[160], v3[158]);

    return _swift_task_switch(sub_1008CC57C, v5, 0);
  }

  else
  {
    v6 = v3[168];
    (*(v3[159] + 8))(v3[160], v3[158]);

    v7 = v3[167];
    v8 = v3[166];
    v9 = v3[165];
    v10 = v3[164];
    v11 = v3[161];
    v12 = v3[160];

    v13 = v3[1];

    return v13();
  }
}

uint64_t sub_1008CC57C()
{
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = v0[170];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B078);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[170];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to update devices: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[167];
  v11 = v0[166];
  v12 = v0[165];
  v13 = v0[164];
  v14 = v0[161];
  v15 = v0[160];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1008CC764()
{
  v1 = v0[15];

  v2 = v0[17];
  sub_1008CD548(v0[16]);
  v3 = v0[18];

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL, &unk_101696900, &unk_10138B1E0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FindMyServiceDeviceStoreService()
{
  result = qword_1016AD110;
  if (!qword_1016AD110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008CC820()
{
  sub_100157BAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1008CC8E4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(MyServiceDeviceStoreService, a2);
}

uint64_t sub_1008CC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyServiceDeviceStoreService, a4);
}

uint64_t sub_1008CCA58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008BF9A8();
}

uint64_t sub_1008CCAE4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(MyServiceDeviceStoreService, a2);
}

uint64_t sub_1008CCB90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008BF374();
}

uint64_t sub_1008CCC1C()
{
  v1 = *v0;
  type metadata accessor for FindMyServiceDeviceStoreService();
  sub_1008CD500(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1008CCD18(uint64_t a1, uint64_t a2)
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 32))(a2, a1, MyServiceDevice);
  return a2;
}

unint64_t sub_1008CCD7C()
{
  result = qword_1016AD2C0;
  if (!qword_1016AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD2C0);
  }

  return result;
}

unint64_t sub_1008CCE2C()
{
  result = qword_1016AD2D8;
  if (!qword_1016AD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD2D8);
  }

  return result;
}

uint64_t sub_1008CCE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1008CCE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1008CCEA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008CCF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008CCF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008CCFE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10096005C(v2, v3, v4);
}

uint64_t sub_1008CD088(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  v4 = v2[4];

  return _swift_deallocObject(v2, 40);
}

uint64_t sub_1008CD0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100961328(v2, v3, v4);
}

uint64_t sub_1008CD190(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_1008CD1D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008BF558();
}

uint64_t sub_1008CD274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008BF5E8();
}

uint64_t sub_1008CD310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1008BF678(a1, v1);
}

uint64_t sub_1008CD3AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1008BFD94(a1, a2, v2);
}

uint64_t sub_1008CD458(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1008C05B8(a1, a2, v2);
}

uint64_t sub_1008CD500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008CD548(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1008CD59C()
{
  result = qword_1016AD2F8;
  if (!qword_1016AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD2F8);
  }

  return result;
}

Swift::Int sub_1008CD654()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C39D4[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1008CD6DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C39D4[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1008CD728@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008CDCE0(*a1);
  *a2 = result;
  return result;
}

int *sub_1008CD82C@<X0>(int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1008CD944()
{
  result = qword_1016AD300;
  if (!qword_1016AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD300);
  }

  return result;
}

unint64_t sub_1008CD998()
{
  result = qword_1016AD308;
  if (!qword_1016AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD308);
  }

  return result;
}

unint64_t sub_1008CD9EC()
{
  result = qword_1016AD310;
  if (!qword_1016AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD310);
  }

  return result;
}

unint64_t sub_1008CDA74()
{
  result = qword_1016AD328;
  if (!qword_1016AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD328);
  }

  return result;
}

uint64_t sub_1008CDB08(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1008CDB5C()
{
  result = qword_1016AD330;
  if (!qword_1016AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD330);
  }

  return result;
}

unint64_t sub_1008CDBB0()
{
  result = qword_1016AD338;
  if (!qword_1016AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD338);
  }

  return result;
}

unint64_t sub_1008CDC04()
{
  result = qword_1016AD340;
  if (!qword_1016AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD340);
  }

  return result;
}

unint64_t sub_1008CDC8C()
{
  result = qword_1016AD358;
  if (!qword_1016AD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD358);
  }

  return result;
}

uint64_t sub_1008CDCE0(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 14;
  }

  else
  {
    return byte_1013C3A0C[a1];
  }
}

unint64_t sub_1008CDD10(unsigned __int8 a1)
{
  v1 = 0x73736563637573;
  v2 = 0x6C69617641746F6ELL;
  if (a1 != 3)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 1u)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x756C615677617228;
  v6._object = 0xEA00000000003A65;
  String.append(_:)(v6);

  return v3;
}

unint64_t sub_1008CDF34()
{
  result = qword_1016AD360;
  if (!qword_1016AD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD360);
  }

  return result;
}

uint64_t sub_1008CDF88(uint64_t a1, unint64_t a2)
{
  sub_1000E0A3C();
  v4 = DataProtocol.intValue.getter();
  sub_100016590(a1, a2);
  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1008CDFF4()
{
  result = qword_1016AD368;
  if (!qword_1016AD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD368);
  }

  return result;
}

uint64_t sub_1008CE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1008D2528(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t Database.openOrScheduleOpenAfterFirstUnlockIfNeeded(logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v28 = &v25 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *(v11 + 16);
  v27 = a1;
  v17 = a1;
  v18 = a2;
  v16(&v25 - v14, v17, v10);
  if (((*(a3 + 56))(a2, a3) & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    (*(v11 + 8))(v15, v10);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
    v20 = v26;
    v16(v26, v27, v10);
    v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v18;
    *(v22 + 5) = a3;
    (*(v11 + 32))(&v22[v21], v20, v10);
    *&v22[(v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v3;
    swift_unknownObjectRetain();
    v23 = v28;
    sub_1008CE048(0, 0, v28, &unk_1013C3B60, v22);

    return sub_10000B3A8(v23, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    sub_1008D0834(v3, v15, a2, a3);
    return (*(v11 + 8))(v15, v10);
  }
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database._test_raw_scalar_sql_query(_:)(Swift::String a1)
{
  v4 = v2;
  v5 = v1;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v10[0] = 0x7365547265646E75;
  v10[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v11 != 1)
  {
    return 0;
  }

  if (((*(v4 + 56))(v5, v4) & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    sub_10020223C();
    swift_allocError();
    v7 = 4;
LABEL_14:
    *v6 = v7;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  if (!Database.readConnection.getter(v5, v4))
  {
    sub_10020223C();
    swift_allocError();
    v7 = 2;
    goto LABEL_14;
  }

  Connection.scalar(_:_:)();
  if (!v3)
  {
    if (v10[3])
    {
      sub_1000BC4D4(&qword_1016AD378, &unk_1013C3B70);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      sub_10000B3A8(v10, &qword_1016AD370, &qword_1013C3B68);
    }

    sub_10020223C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t Database.writeConnection.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a2 + 16))(a1, a2);
  if (result)
  {
    v5 = *(result + 24);

    return v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.reset()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 96))();
  if (!v2)
  {
    (*(v3 + 80))(v4, v3);
  }
}

{
  Database.reset()();
}

uint64_t Database.readConnection.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a2 + 16))(a1, a2);
  if (result)
  {
    v5 = *(result + 16);

    return v5;
  }

  return result;
}

uint64_t static Database.establishConnection(logger:temporary:)(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v93 = a1;
  v7 = type metadata accessor for Connection.Location();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v99 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = (&v90 - v13);
  __chkstk_darwin(v12);
  v16 = &v90 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v103 = v17;
  v104 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v94 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v23 = __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v24 = *(a4 + 72);
  v105 = &v90 - v25;
  v101 = v26;
  v102 = v27;
  v24();
  v95 = a2;
  v97 = a4;
  v98 = v8;
  v96 = a3;
  if (a2)
  {
    v92 = *(v8 + 104);
    v92(v16, enum case for Connection.Location.temporary(_:), v7);
    type metadata accessor for ConnectionPair();
    swift_allocObject();
    v28 = v100;
    v29 = ConnectionPair.init(_:readonly:key:)(v16, 0, 0, 0xF000000000000000);
    v30 = v28;
    if (!v28)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *v14 = URL.path.getter();
    v14[1] = v31;
    v32 = *(v8 + 104);
    v32(v14, enum case for Connection.Location.uri(_:), v7);
    v33 = v100;
    v34 = (*(a4 + 64))(a3, a4);
    v100 = v35;
    v30 = v33;
    if (!v33)
    {
      v64 = v34;
      type metadata accessor for ConnectionPair();
      swift_allocObject();
      v29 = ConnectionPair.init(_:readonly:key:)(v14, 0, v64, v100);
LABEL_14:
      v65 = v29;
      v66 = *(v104 + 8);
      v104 += 8;
      v56 = v101;
      goto LABEL_26;
    }

    v92 = v32;
    (*(v8 + 8))(v14, v7);
  }

  v100 = 0;
  v36 = v30;
  v37 = v99;
  v38 = [objc_opt_self() defaultManager];
  v39 = v94;
  (*(v104 + 16))(v94, v105, v103);
  swift_errorRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v91 = v38;
    v44 = v43;
    v45 = swift_slowAlloc();
    v93 = v36;
    v46 = v45;
    v106 = v45;
    *v42 = 136446466;
    sub_1000248F0(&qword_1016B14E0, &type metadata accessor for URL);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v39;
    v49 = v7;
    v50 = v37;
    v52 = v51;
    v99 = *(v104 + 8);
    (v99)(v48, v103);
    v53 = sub_1000136BC(v47, v52, &v106);
    v37 = v50;
    v7 = v49;

    *(v42 + 4) = v53;
    *(v42 + 12) = 2114;
    v54 = _convertErrorToNSError(_:)();
    *(v42 + 14) = v54;
    *v44 = v54;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to open %{public}s: %{public}@", v42, 0x16u);
    sub_10000B3A8(v44, &qword_10169BB30, &unk_10138B3C0);
    v38 = v91;

    sub_100007BAC(v46);
  }

  else
  {

    v99 = *(v104 + 8);
    (v99)(v39, v103);
  }

  v55 = v101;
  if (v95)
  {
    v56 = v101;
  }

  else
  {
    v57 = v7;
    v58 = v37;
    URL._bridgeToObjectiveC()(v95);
    v60 = v59;
    v106 = 0;
    v61 = [v38 removeItemAtURL:v59 error:&v106];

    if (v61)
    {
      v62 = v106;
    }

    else
    {
      v67 = v106;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v100 = 0;
    }

    URL._bridgeToObjectiveC()(v63);
    v69 = v68;
    v106 = 0;
    v70 = [v38 removeItemAtURL:v68 error:&v106];

    if (v70)
    {
      v71 = v106;
    }

    else
    {
      v73 = v106;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v100 = 0;
    }

    URL._bridgeToObjectiveC()(v72);
    v75 = v74;
    v106 = 0;
    v76 = [v38 removeItemAtURL:v74 error:&v106];

    v56 = v55;
    if (!v76)
    {
      v79 = v106;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v78 = 0;
      v37 = v58;
      v7 = v57;
      goto LABEL_23;
    }

    v77 = v106;
    v37 = v58;
    v7 = v57;
  }

  v78 = v100;
LABEL_23:
  *v37 = URL.path.getter();
  v37[1] = v80;
  v81 = v98;
  v92(v37, enum case for Connection.Location.uri(_:), v7);
  v82 = (*(v97 + 64))();
  if (v78)
  {

    (*(v81 + 8))(v37, v7);
    v86 = v99;
    v87 = v103;
    (v99)(v102, v103);
    (v86)(v56, v87);
    return (v86)(v105, v87);
  }

  v84 = v82;
  v85 = v83;
  type metadata accessor for ConnectionPair();
  swift_allocObject();
  v65 = ConnectionPair.init(_:readonly:key:)(v37, 0, v84, v85);

  v104 += 8;
  v66 = v99;
LABEL_26:
  v89 = v103;
  (v66)(v102, v103);
  (v66)(v56, v89);
  (v66)(v105, v89);
  return v65;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.startup()()
{
  v4 = v2;
  v5 = v1;
  v6 = v0;
  if (((*(v1 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    sub_10020223C();
    swift_allocError();
    v8 = 4;
LABEL_6:
    *v7 = v8;
    *(v7 + 4) = 1;
    swift_willThrow();
    return;
  }

  v9 = *(v5 + 16);
  if (v9(v6, v5))
  {

    sub_10020223C();
    swift_allocError();
    v8 = 3;
    goto LABEL_6;
  }

  (*(v5 + 112))(v6, v5);
  if (!v3)
  {
    v10 = v9(v6, v5);
    if (!v10)
    {
      sub_10020223C();
      swift_allocError();
      v8 = 2;
      goto LABEL_6;
    }

    v11 = *(v10 + 24);

    v12._countAndFlagsBits = 0xD000000000000019;
    v12._object = 0x8000000101363F90;
    Connection.execute(_:)(v12);
    if (v13 || (Database.optimize()(), (v15 = v14) != 0))
    {
LABEL_40:

      return;
    }

    Connection.handle.getter();
    _sqlite3_maintain_load_factor();
    v68 = Connection.userVersion.getter();
    v16 = *(v5 + 40);
    if (v16(v6, v5) < v68)
    {
      v15 = v16;
      if (qword_101694A38 == -1)
      {
LABEL_14:
        v17 = type metadata accessor for Logger();
        sub_1000076D4(v17, qword_10177B590);
        swift_unknownObjectRetain_n();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          loga = swift_slowAlloc();
          v71 = loga;
          *v20 = 136446722;
          v73 = v4;
          v21 = *(v5 + 8);
          v62 = v19;
          v22 = dispatch thunk of CustomStringConvertible.description.getter();
          v24 = sub_1000136BC(v22, v23, &v71);

          *(v20 + 4) = v24;
          *(v20 + 12) = 1024;
          *(v20 + 14) = v68;
          *(v20 + 18) = 1024;
          v25 = v15(v6, v5);
          swift_unknownObjectRelease();
          *(v20 + 20) = v25;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v18, v62, "%{public}s Schema too new! (%d) -- expected <= %d", v20, 0x18u);
          sub_100007BAC(loga);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        sub_10020223C();
        swift_allocError();
        *v46 = v68;
        *(v46 + 4) = 0;
        swift_willThrow();
        goto LABEL_40;
      }

LABEL_43:
      swift_once();
      goto LABEL_14;
    }

    if (v68 >= v16(v6, v5))
    {
      if (qword_101694A38 == -1)
      {
LABEL_35:
        v47 = type metadata accessor for Logger();
        sub_1000076D4(v47, qword_10177B590);
        swift_unknownObjectRetain_n();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v70 = v49;
          v50 = v16;
          v51 = swift_slowAlloc();
          logc = swift_slowAlloc();
          v71 = logc;
          *v51 = 136446466;
          v73 = v4;
          v52 = *(v5 + 8);
          v63 = v48;
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = sub_1000136BC(v53, v54, &v71);

          *(v51 + 4) = v55;
          *(v51 + 12) = 1024;
          v56 = v50(v6, v5);
          swift_unknownObjectRelease();
          *(v51 + 14) = v56;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v63, v70, "%{public}s is available. [schema version %d]", v51, 0x12u);
          sub_100007BAC(logc);

          goto LABEL_39;
        }

LABEL_38:
        swift_unknownObjectRelease_n();
        goto LABEL_39;
      }
    }

    else
    {
      v26 = v16(v6, v5);
      if (v26 >= v68)
      {
        v58 = v16;
        if (v68 != v26)
        {
          if (qword_101694A38 != -1)
          {
            v57 = v26;
            swift_once();
            v26 = v57;
          }

          v61 = *(v5 + 88);
          v60 = v26;
          while (v68 < v26)
          {
            v27 = (v68 + 1);
            v28 = type metadata accessor for Logger();
            sub_1000076D4(v28, qword_10177B590);
            swift_unknownObjectRetain();
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.default.getter();
            log = v29;
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v71 = v59;
              *v31 = 136446722;
              v73 = v4;
              v32 = *(v5 + 8);
              v33 = dispatch thunk of CustomStringConvertible.description.getter();
              v35 = v34;
              swift_unknownObjectRelease();
              v36 = sub_1000136BC(v33, v35, &v71);
              v27 = (v68 + 1);

              *(v31 + 4) = v36;
              *(v31 + 12) = 1024;
              *(v31 + 14) = v68;
              *(v31 + 18) = 1024;
              *(v31 + 20) = v68 + 1;
              _os_log_impl(&_mh_execute_header, log, v30, "%{public}s migrating schema %d -> %d", v31, 0x18u);
              sub_100007BAC(v59);
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v61(v68, v27, v11, v6, v5);
            v71 = 0;
            v72 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v71 = 0xD000000000000016;
            v72 = 0x8000000101363FB0;
            LODWORD(v73) = v27;
            v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v37);

            Connection.run(_:_:)();

            v68 = v27;
            v26 = v60;
            if (v60 == v27)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_28:
        sub_1008D1D3C(v6, v5);
        if (qword_101694A38 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_1000076D4(v38, qword_10177B590);
        swift_unknownObjectRetain_n();
        v39 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v69))
        {
          v40 = swift_slowAlloc();
          logb = swift_slowAlloc();
          v71 = logb;
          *v40 = 136446466;
          v73 = v4;
          v41 = *(v5 + 8);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = sub_1000136BC(v42, v43, &v71);

          *(v40 + 4) = v44;
          *(v40 + 12) = 1024;
          v45 = v58(v6, v5);
          swift_unknownObjectRelease();
          *(v40 + 14) = v45;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v39, v69, "%{public}s is available. [schema version %d]", v40, 0x12u);
          sub_100007BAC(logb);

LABEL_39:
          (*(v5 + 120))(v6, v5);
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_35;
  }
}

{
  Database.startup()();
}

uint64_t Database.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))();
  if (v3)
  {
    v4 = v3;
    _StringGuts.grow(_:)(22);

    v5 = *(a2 + 8);
    v6._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 8250;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x206574694C515320;
    v9._object = 0xE900000000000076;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0x302E31352E33;
    v10._object = 0xE600000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = *(v4 + 16);
    v13._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 62;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    v15 = *(a2 + 8);
    v16._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x206574694C515320;
    v19._object = 0xE900000000000076;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x302E31352E33;
    v20._object = 0xE600000000000000;
    String.append(_:)(v20);
    v21._object = 0x8000000101363FD0;
    v21._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v21);
  }

  return 60;
}

unint64_t Connection.init(_:readonly:key:)(char *a1, int a2, uint64_t a3, unint64_t a4)
{
  v24[3] = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v11, v7);
  v26[0] = 0;
  LODWORD(v11) = [v12 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v26];

  if (v11)
  {
    v17 = a3;
    v18 = a4;
    v19 = v26[0];
    URL.path.getter();
    v20 = v25;
    v21 = Connection.__allocating_init(_:readonly:)();
    if (v20)
    {
      v16(a1, v7);
      sub_100006654(v17, a4);
    }

    else
    {
      a4 = v21;
      if (v18 >> 60 == 15)
      {
        v16(a1, v7);
      }

      else
      {

        sub_10002E98C(v17, v18);
        sub_1008D2180(v17, v18, a4, v17, v18, &sqlite3_key_v2, &sqlite3_key_v2);
        sub_100006654(v17, v18);
        Connection.scalar(_:_:)();
        sub_100006654(v17, v18);
        v16(a1, v7);
        sub_10000B3A8(v26, &qword_1016AD370, &qword_1013C3B68);
      }
    }
  }

  else
  {
    v22 = v26[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100006654(a3, a4);
    v16(a1, v7);
  }

  return a4;
}

BOOL static Database.beforeFirstUnlock.getter()
{
  v0 = type metadata accessor for SystemInfo.DeviceLockState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v10 - v6;
  static SystemInfo.lockState.getter();
  (*(v1 + 104))(v5, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v0);
  sub_1000248F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  return v10[1] == v10[0];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.optimize()()
{
  v2 = v1;
  v3 = v0;
  if (((*(v1 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    v4 = 4;
  }

  else
  {
    v5 = (*(v2 + 16))(v3, v2);
    if (v5)
    {
      v6 = *(v5 + 24);

      v7._object = 0x8000000101364020;
      v7._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v7);

      return;
    }

    v4 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v8 = v4;
  *(v8 + 4) = 1;
  swift_willThrow();
}

uint64_t Connection.userVersion.getter()
{
  result = Connection.scalar(_:_:)();
  if (!v0)
  {
    if (v4)
    {
      sub_1000BC4D4(&qword_1016AD378, &unk_1013C3B70);
      if (swift_dynamicCast())
      {
        result = v5;
        if (v5 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v5 <= 0x7FFFFFFF)
        {
          return result;
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      sub_10000B3A8(v3, &qword_1016AD370, &qword_1013C3B68);
    }

    sub_10020223C();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.update(userVersion:)(Swift::Int32 userVersion)
{
  _StringGuts.grow(_:)(24);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  Connection.run(_:_:)();

  if (!v1)
  {
  }
}

uint64_t sub_1008D09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = type metadata accessor for Logger();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = sub_1008D0AB4;

  return daemon.getter();
}

uint64_t sub_1008D0AB4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_1000248F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000248F0(&qword_10169BD10, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_1008D0C90;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_1008D0C90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *v2;
  *(*v2 + 112) = a1;

  v6 = *(v3 + 96);
  if (v1)
  {

    v7 = sub_1008D0DE0;
  }

  else
  {

    v7 = sub_1008D0EF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1008D0DE0()
{
  if (qword_101694A38 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[7], qword_10177B590);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get FirstUnlockService", v3, 2u);
  }

  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1008D0EF8()
{
  v20 = v0;
  v1 = v0[3];
  v2 = v0[4];
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = *(v6 + 8);
    v11 = CustomStringConvertible.typeDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v14 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v18 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_1008D10A8;
  v16 = v0[14];

  return v18();
}

uint64_t sub_1008D10A8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1008D11A4, 0, 0);
}

uint64_t sub_1008D11A4()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  type metadata accessor for Transaction();
  v13 = *(v0 + 40);
  (*(v5 + 16))(v2, v7, v4);
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v13;
  *(v9 + 32) = v6;
  (*(v5 + 32))(v9 + v8, v2, v4);
  swift_unknownObjectRetain();
  static Transaction.asyncTask(name:block:)();

  v10 = *(v0 + 80);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1008D12FC(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1008D09B8(a1, v8, v9, v1 + v7, v10, v5, v4);
}

uint64_t sub_1008D1430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1008D1454, 0, 0);
}

uint64_t sub_1008D1454()
{
  v18 = v0;
  v1 = v0[3];
  (*(v0[6] + 80))(v0[5]);
  v2 = v0[4];
  v3 = v0[3];
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v0[2] = v8;
    v11 = *(v6 + 8);
    v12 = CustomStringConvertible.typeDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "SQLite database for %s opened successfully after device unlock.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[1];

  return v15();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.incrementalVacuum()()
{
  v2 = v1;
  v3 = v0;
  if (((*(v1 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    v4 = 4;
  }

  else
  {
    v5 = (*(v2 + 16))(v3, v2);
    if (v5)
    {
      v6 = *(v5 + 24);

      v7._object = 0x8000000101364060;
      v7._countAndFlagsBits = 0xD00000000000001ALL;
      Connection.execute(_:)(v7);

      return;
    }

    v4 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v8 = v4;
  *(v8 + 4) = 1;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint(mode:)(searchpartyd::DatabaseCheckpointMode mode)
{
  v3 = v2;
  v4 = v1;
  if (((*(v2 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    v6 = 4;
LABEL_11:
    sub_10020223C();
    swift_allocError();
    *v14 = v6;
    *(v14 + 4) = 1;
    swift_willThrow();
    return;
  }

  v7 = (*(v3 + 16))(v4, v3);
  if (!v7)
  {
    v6 = 2;
    goto LABEL_11;
  }

  v8 = *(v7 + 24);

  *pnLog = 0;
  v9 = Connection.handle.getter();
  sqlite3_wal_checkpoint_v2(v9, "main", mode, &pnLog[1], pnLog);
  if (qword_101694948 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177B350);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    swift_beginAccess();
    *(v13 + 4) = pnLog[0];
    *(v13 + 8) = 1024;
    swift_beginAccess();
    *(v13 + 10) = pnLog[1];
    _os_log_impl(&_mh_execute_header, v11, v12, "Checkpointed %d/%d", v13, 0xEu);
  }
}
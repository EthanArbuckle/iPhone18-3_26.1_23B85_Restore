void sub_100165F14(void *a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v7 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v19 = a1[9];
  if (!v19)
  {
    goto LABEL_19;
  }

  v48 = v18;
  v49 = &v46 - v17;
  v47 = v16;
  v50 = a2;
  type metadata accessor for SecCertificate(0);
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);

  sub_1000094F4(v20, v21);
  v22 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v20, v21);
  if (!v22)
  {

    v33 = 0;
    a2 = v50;
    goto LABEL_20;
  }

  v23 = a1[38];
  v24 = a1[39];
  sub_10000BE18(a1 + 35, v23);
  (*(v24 + 8))(v22, v23, v24);
  if (!v3)
  {
    SecCertificateNotValidAfter();
    v34 = v49;
    Date.init(timeIntervalSinceReferenceDate:)();
    v35 = *sub_10000BE18(a1 + 30, a1[33]);
    sub_100043268(v10);
    v36 = v47;
    v37 = v48;
    if ((*(v48 + 48))(v10, 1, v47) != 1)
    {
      (*(v37 + 32))(v15, v10, v36);
      Date.timeIntervalSince(_:)();
      v44 = v43;

      v45 = *(v37 + 8);
      v45(v15, v36);
      v45(v34, v36);
      v33 = v44 > a3;
      a2 = v50;
      goto LABEL_20;
    }

    v38 = v36;
    sub_10000BD44(v10, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000403C(v39, qword_1003A51C8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Could not calculate secure now", v42, 2u);
      v37 = v48;
    }

    else
    {
    }

    a2 = v50;
    (*(v37 + 8))(v49, v38);
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_1003A51C8);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315138;
    v51 = v3;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100008F6C(v30, v31, &v52);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Certificate verification failed: %s", v28, 0xCu);
    sub_10000959C(v29);
  }

  else
  {
  }

  v33 = 0;
  a2 = v50;
LABEL_20:
  *a2 = v33;
}

uint64_t sub_10016647C(uint64_t a1)
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A51C8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(a1 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, &v20);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x80000001003526B0, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100166890();
  if (v1)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating identity: %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = v12;
    sub_100167650(v12);
    sub_10016807C(v13);
  }
}

void sub_100166890()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_10000403C(v5, qword_1003A51C8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v9 = 136315394;
    v61 = 0xD000000000000010;
    v62 = 0x8000000100352A30;
    String.append(_:)(*(v0 + 40));
    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = sub_100008F6C(v61, v62, v63);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100352910, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, v63);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 376);
  v17 = *(v1 + 168);

  UUID.init()();
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v18 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v18 + 104) > 0 || *(v18 + 112) == 1)
  {
    [*(v18 + 88) wait];
  }

  v19 = *(v18 + 96);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v58 = v6;
  *(v18 + 96) = v21;
  [*(v18 + 88) unlock];
  if (*(v18 + 56))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v18 + 52);
  }

  [*(v18 + 88) lock];
  v23 = *(v18 + 96);
  v20 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (v20)
  {
    goto LABEL_30;
  }

  *(v18 + 96) = v24;
  if (!v24)
  {
    [*(v18 + 88) broadcast];
  }

  type metadata accessor for BAASigningIdentity();
  [*(v18 + 88) unlock];
  TMGetKernelMonotonicClock();
  v26 = v25;
  v27 = static Data.randomBytes(count:)();
  v28 = v59;
  v30 = sub_100156A0C(v60, v22, v17, v15, v27, v29, v16, v26);
  if (!v28)
  {
    isa = v30[3].isa;
    v44 = v30[4].isa;
    v45 = v30;
    sub_1000094F4(isa, v44);
    sub_100169810(isa, v44);
    sub_100009548(isa, v44);
    v46 = *(v1 + 152);
    v59 = *(v1 + 144);
    v60 = v46;
    v58 = sub_10000BE18((v1 + 120), v59);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    v57 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    v48 = *(v1 + 32);
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v48;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v49 = v45[3].isa;
    v50 = v45[4].isa;
    sub_1000094F4(v49, v50);
    v51 = Data.sha256Digest.getter();
    v53 = v52;
    sub_100009548(v49, v50);
    v54 = Data.base64EncodedString(options:)(0);
    sub_100009548(v51, v53);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v54;
    v55 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(8u, v55, v59, v60);

    v56 = *(v1 + 320);
    sub_10002B31C(&off_10037EF88);
    return;
  }

  v31 = *(v1 + 144);
  v59 = *(v1 + 152);
  v60 = v30;
  sub_10000BE18((v1 + 120), v31);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1002C1670;
  *(v32 + 32) = 1701605234;
  *(v32 + 40) = 0xE400000000000000;
  v33 = *(v1 + 32);
  *(v32 + 72) = &type metadata for Int;
  *(v32 + 80) = &protocol witness table for Int;
  *(v32 + 48) = v33;
  *(v32 + 88) = 0x726F727265;
  *(v32 + 96) = 0xE500000000000000;
  v61 = v28;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  v34 = String.init<A>(describing:)();
  *(v32 + 128) = &type metadata for String;
  *(v32 + 136) = &protocol witness table for String;
  *(v32 + 104) = v34;
  *(v32 + 112) = v35;
  v36 = sub_100184010(v32);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0xAu, v36, v31, v59);

  v61 = v28;
  swift_errorRetain();
  type metadata accessor for SecurityError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = v63[0];
  v61 = v63[0];
  sub_10016BA2C(&qword_10039D998, type metadata accessor for SecurityError);
  _BridgedStoredNSError.code.getter();
  if (v63[0] != 10002)
  {

LABEL_28:
    swift_willThrow();
    return;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "BAA certificate creation failed, increase validity for next attempt", v40, 2u);
  }

  v41 = *(v1 + 376);
  v20 = __OFADD__(v41, 86400);
  v42 = v41 + 86400;
  if (!v20)
  {
    if (v42 <= 600000)
    {
      *(v1 + 376) = v42;
    }

    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_10016704C()
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A51C8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v18 = 0xD000000000000010;
    v19[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x6E65644964616F6CLL, 0xEE00292879746974, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  sub_10000BE18((v0 + 80), v11);
  v13 = sub_100165660();
  v15 = v14;
  v16 = sub_100004074(&qword_1003A5450, &qword_1002C99F0);
  sub_10016B978();
  sub_10009A1A4(v13, v15, v11, v16, v12);
  sub_100009548(v13, v15);
  return v18;
}

uint64_t sub_100167650(uint64_t a1)
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A51C8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v47 = v1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v11 = 136315394;
    v50 = 0xD000000000000010;
    v51 = 0x8000000100352A30;
    String.append(_:)(*(v1 + 40));
    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(v50, v51, &v52);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    *(v14 + 56) = type metadata accessor for BAASigningIdentity();
    *(v14 + 32) = a1;

    v15 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528F0, v14);
    v16 = a1;
    v18 = v17;

    v19 = sub_100008F6C(v15, v18, &v52);
    a1 = v16;

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for JSONEncoder();
  v50 = a1;
  v52 = _swiftEmptyArrayStorage;
  sub_10016BA2C(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10001A570(&qword_1003A1078, &qword_1003A1070, &qword_1002C5170);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for BAASigningIdentity();
  sub_10016BA2C(&qword_1003A4D78, type metadata accessor for BAASigningIdentity);
  v20 = v48;
  v21 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v20)
  {
    return (*(v49 + 8))(v6, v3);
  }

  v46 = a1;
  v24 = v21;
  v25 = v22;
  (*(v49 + 8))(v6, v3);
  v26 = v47[14];
  sub_10000BE18(v47 + 10, v47[13]);
  v27 = sub_100165660();
  v29 = v28;
  v30 = *(v26 + 40);
  v48 = v24;
  v49 = v25;
  v30();
  sub_100009548(v27, v29);
  v31 = v47;
  v32 = v47[18];
  v45 = v47[19];
  v44[1] = sub_10000BE18(v47 + 15, v32);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 1701605234;
  v44[0] = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  v34 = v31[4];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 48) = v34;
  *(inited + 88) = 0x747365676964;
  *(inited + 96) = 0xE600000000000000;
  v35 = v46;
  v36 = v46[3];
  v37 = v46[4];
  sub_1000094F4(v36, v37);
  v38 = Data.sha256Digest.getter();
  v40 = v39;
  sub_100009548(v36, v37);
  v41 = Data.base64EncodedString(options:)(0);
  sub_100009548(v38, v40);
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v41;
  v42 = sub_100184010(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(9u, v42, v32, v45);
  sub_100009548(v48, v49);

  v43 = v31[9];
  v31[9] = v35;
}

void sub_100167CE8()
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A51C8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v16[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, v16);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528D0, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v16);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 72))
  {
    v11 = *(v0 + 112);
    sub_10000BE18((v0 + 80), *(v0 + 104));

    v12 = sub_100165660();
    v14 = v13;
    (*(v11 + 48))();
    sub_100009548(v12, v14);
    sub_1001588A0();

    v15 = *(v0 + 72);
    *(v0 + 72) = 0;
  }
}

void sub_10016807C(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v7 = a1[3];
  v8 = a1[4];
  sub_1000094F4(v7, v8);
  v9 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v7, v8);
  if (v9)
  {
    SecCertificateNotValidAfter();
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_100168314(a1[2], v6, 0);

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A51C8);

    v18 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_100156620();
      v16 = sub_100008F6C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v11, "Invalid X.509 format (BAA). Not renewing: %s", v12, 0xCu);
      sub_10000959C(v13);
    }

    else
    {
      v17 = v18;
    }
  }
}

void sub_100168314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v117 = a3;
  v120 = a1;
  v114 = type metadata accessor for DispatchTime();
  v113 = *(v114 - 8);
  v6 = *(v113 + 64);
  v7 = __chkstk_darwin(v114);
  v112 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = v104 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v111 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v104 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v110 = v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v118 = v104 - v23;
  v24 = __chkstk_darwin(v22);
  v119 = v104 - v25;
  v26 = __chkstk_darwin(v24);
  v121 = v104 - v27;
  v109 = v28;
  __chkstk_darwin(v26);
  v30 = v104 - v29;
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A51C8);
  v34 = v18 + 16;
  v33 = *(v18 + 16);
  v122 = a2;
  v33(v30, a2, v17);

  v116 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  v37 = os_log_type_enabled(v35, v36);
  v123 = v18;
  v115 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v124 = v17;
    v39 = v38;
    v107 = swift_slowAlloc();
    v125[0] = v107;
    *v39 = 136315394;
    aBlock = 0xD000000000000010;
    v127 = 0x8000000100352A30;
    String.append(_:)(*(v4 + 40));
    v40._countAndFlagsBits = 93;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41 = sub_100008F6C(aBlock, v127, v125);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1002C1790;
    *(v42 + 56) = &type metadata for Int64;
    *(v42 + 32) = v120;
    *(v42 + 88) = v124;
    v43 = sub_10000BE5C((v42 + 64));
    v33(v43, v30, v124);
    *(v42 + 120) = &type metadata for Int;
    *(v42 + 96) = v117;
    v44 = showFunction(signature:_:)(0xD000000000000034, 0x8000000100352890, v42);
    v46 = v45;

    v47 = v30;
    v48 = *(v123 + 8);
    v48(v47, v124);
    v49 = v44;
    v34 = v18 + 16;
    v50 = sub_100008F6C(v49, v46, v125);

    *(v39 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s.%s", v39, 0x16u);
    swift_arrayDestroy();

    v18 = v123;
    v17 = v124;
  }

  else
  {

    v51 = v30;
    v48 = *(v18 + 8);
    v48(v51, v17);
  }

  v52 = *sub_10000BE18((v4 + 240), *(v4 + 264));
  sub_100043268(v16);
  v53 = (*(v18 + 48))(v16, 1, v17);
  v55 = v118;
  v54 = v119;
  if (v53 == 1)
  {
    sub_10000BD44(v16, &unk_1003A3BE0, &qword_1002C36F0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v56, v57, "Aborting identity #%lld renewal. Could not calculate secure now", v58, 0xCu);
    }

    return;
  }

  v59 = *(v18 + 32);
  v106 = v18 + 32;
  v105 = v59;
  v59(v121, v16, v17);
  Date.timeIntervalSince(_:)();
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v61 = 86400;
  v104[1] = v34;
  v107 = v48;
  if (v60 <= 86400 && (v61 = v60, v60 < 301))
  {

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    v80 = os_log_type_enabled(v78, v79);
    v77 = v112;
    if (v80)
    {
      v81 = v17;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      _os_log_impl(&_mh_execute_header, v78, v79, "Certificate for %s will be renewed immediately", v82, 0xCu);
      sub_10000959C(v83);

      v17 = v81;
    }

    v64 = 0;
    v76 = v108;
    v71 = v123;
  }

  else
  {
    v125[0] = 300;
    v125[1] = v61;
    swift_beginAccess();
    v62 = *(v4 + 232);
    sub_100022438(v4 + 200, *(v4 + 224));
    v124 = v17;
    sub_10000A114();
    v17 = v124;
    static FixedWidthInteger.random<A>(in:using:)();
    swift_endAccess();
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v64 = v63;
    v115(v55, v54, v17);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v67 = 136315650;
      *(v67 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      *(v67 + 12) = 2080;
      sub_10016BA2C(&qword_10039F3E8, &type metadata accessor for Date);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = v123;
      v72 = v55;
      v73 = v107;
      v107(v72, v124);
      v74 = sub_100008F6C(v68, v70, &aBlock);

      *(v67 + 14) = v74;
      *(v67 + 22) = 2048;
      *(v67 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Certificate for %s will be renewed on %s (in %f seconds)", v67, 0x20u);
      swift_arrayDestroy();

      v17 = v124;

      v73(v119, v17);
    }

    else
    {

      v71 = v123;
      v75 = v107;
      v107(v55, v17);
      v75(v54, v17);
    }

    v76 = v108;
    v77 = v112;
  }

  v84 = v115;
  v85 = *(v4 + 368);

  dispatch thunk of DispatchWorkItem.cancel()();

  static DispatchWorkItemFlags.barrier.getter();
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = v110;
  v84(v110, v122, v17);
  v88 = *(v71 + 80);
  v89 = v17;
  v90 = (v88 + 48) & ~v88;
  v91 = swift_allocObject();
  v92 = v120;
  *(v91 + 2) = v86;
  *(v91 + 3) = v92;
  *(v91 + 4) = v64;
  *(v91 + 5) = v117;
  v105(&v91[v90], v87, v89);
  v130 = sub_10016B8F4;
  v131 = v91;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100003974;
  v129 = &unk_100385A08;
  _Block_copy(&aBlock);
  v93 = type metadata accessor for DispatchWorkItem();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();

  v96 = DispatchWorkItem.init(flags:block:)();

  v97 = *(v4 + 368);
  *(v4 + 368) = v96;

  v98 = *(v4 + 160);
  v100 = *(v4 + 264);
  v99 = *(v4 + 272);
  sub_10000BE18((v4 + 240), v100);
  (*(*(v99 + 8) + 16))(v100);
  + infix(_:_:)();
  v101 = *(v113 + 8);
  v102 = v114;
  v101(v77, v114);
  v103 = *(v4 + 368);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v101(v76, v102);
  v107(v121, v89);
}

void sub_10016900C(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 72);
    if (v6 && *(v6 + 16) == a3)
    {
      if (qword_10039D6F0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000403C(v7, qword_1003A51C8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = a3;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a1;
        _os_log_impl(&_mh_execute_header, v8, v9, "renew identity #%lld after %fs", v10, 0x16u);
      }

      sub_100167CE8();
      sub_100166890();
      v12 = v11;
      sub_100167650(v11);
      sub_10016807C(v12);

      return;
    }
  }

  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A51C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "identity mismatch, abort renewal", v16, 2u);
  }
}

uint64_t sub_10016950C()
{
  type metadata accessor for SecCertificate(0);
  v1 = static SecCertificateRef.parse(derRepresentation:)();
  if (v1)
  {
    v2 = v1;
    if (!sub_10016AA00())
    {
      v7 = v0[38];
      v8 = v0[39];
      sub_10000BE18(v0 + 35, v7);
      (*(v8 + 8))(v2, v7, v8);

      return 1;
    }

    swift_willThrow();
  }

  else
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A51C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalid X.509 format (BAA)", v6, 2u);
    }

    sub_100020C74(10005, 0, 0, 0);
    swift_willThrow();
  }

  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A51C8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v14 = String.init<A>(describing:)();
    v16 = sub_100008F6C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Certificate verification failed: %s", v12, 0xCu);
    sub_10000959C(v13);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10016A6EC(uint64_t result, uint64_t a2)
{
  if (*(*result + 16))
  {
    v2 = result;
    sub_10000CCE4(a2 + 120, v25);
    v4 = v26;
    v5 = v27;
    sub_10000BE18(v25, v26);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1790;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v7 = *(a2 + 32);
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v7;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v8 = Data.sha256Digest.getter();
    v10 = v9;
    *(inited + 128) = &type metadata for Data;
    v11 = sub_10016532C();
    *(inited + 104) = v8;
    *(inited + 112) = v10;
    *(inited + 136) = v11;
    *(inited + 144) = 0x73726F727265;
    v23 = inited;
    *(inited + 152) = 0xE600000000000000;
    v12 = *v2;
    v13 = *(*v2 + 16);
    if (v13)
    {
      v22 = v4;

      sub_10004E2DC(0, v13, 0);
      type metadata accessor for SecurityError(0);
      v14 = 32;
      do
      {
        v24 = *(v12 + v14);
        _print_unlocked<A, B>(_:_:)();
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10004E2DC((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        v17[4] = 0;
        v17[5] = 0xE000000000000000;
        v14 += 8;
        --v13;
      }

      while (v13);

      v4 = v22;
    }

    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v23[23] = &type metadata for String;
    v23[24] = &protocol witness table for String;
    v23[20] = v18;
    v23[21] = v20;
    v21 = sub_100184010(v23);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(0x27u, v21, v4, v5);

    return sub_10000959C(v25);
  }

  return result;
}

uint64_t sub_10016AA00()
{
  v1 = v0;
  sub_10009B644(&v40);
  v3 = v40;
  v2 = v41;

  if (!v2)
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A51C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing BAA certificate OS version", v18, 2u);
    }

    v13 = 0xD00000000000001DLL;
    v14 = 0x80000001003526D0;
    goto LABEL_13;
  }

  v4 = sub_100189160(v3, v2);
  if (v7)
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_1003A51C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Malformed BAA certificate OS version", v11, 2u);
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v40 = 0xD000000000000020;
    v41 = 0x80000001003526F0;
    v12._countAndFlagsBits = v3;
    v12._object = v2;
    String.append(_:)(v12);

    v13 = v40;
    v14 = v41;
LABEL_13:
    v19 = 10005;
    return sub_100020C74(v19, v13, v14, 0);
  }

  v21 = v4;
  v22 = v5;
  v23 = v6;

  v24 = sub_10000BE18((v0 + 328), *(v0 + 352));
  v26 = *(*v24 + 16);
  v25 = *(*v24 + 24);
  v27 = *(*v24 + 32);
  if (v21 != v26 || v22 != v25 || v23 != v27)
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000403C(v30, qword_1003A51C8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134219264;
      *(v33 + 4) = v21;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v22;
      *(v33 + 22) = 2048;
      *(v33 + 24) = v23;
      *(v33 + 32) = 2048;
      *(v33 + 34) = v26;
      *(v33 + 42) = 2048;
      *(v33 + 44) = v25;
      *(v33 + 52) = 2048;
      *(v33 + 54) = v27;
      _os_log_impl(&_mh_execute_header, v31, v32, "BAA certificate OS version mismatch. certificate: %ld.%ld.%ld, system: %ld.%ld.%ld", v33, 0x3Eu);
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    v34._object = 0x8000000100352720;
    String.append(_:)(v34);
    v35._countAndFlagsBits = sub_100187828(v21, v22, v23);
    String.append(_:)(v35);

    v36._object = 0x8000000100352750;
    v36._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v36);
    v37 = sub_10000BE18((v1 + 328), *(v1 + 352));
    v38._countAndFlagsBits = sub_100187828(*(*v37 + 16), *(*v37 + 24), *(*v37 + 32));
    String.append(_:)(v38);

    v39._countAndFlagsBits = 46;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v13 = v40;
    v14 = v41;
    v19 = 10010;
    return sub_100020C74(v19, v13, v14, 0);
  }

  return 0;
}

uint64_t sub_10016AE78()
{
  sub_10009B644(&v24);
  v1 = v26;
  v2 = v27;

  if (!v2)
  {
    v8 = 0xD00000000000001FLL;
    v9 = 0x8000000100352AD0;
    goto LABEL_5;
  }

  v3 = sub_100189160(v1, v2);
  if (v6)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v24 = 0xD000000000000022;
    v25 = 0x8000000100352AF0;
    v7._countAndFlagsBits = v1;
    v7._object = v2;
    String.append(_:)(v7);

    v8 = v24;
    v9 = v25;
LABEL_5:
    v10 = 10005;
    return sub_100020C74(v10, v8, v9, 0);
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;

  v15 = sub_10000BE18((v0 + 328), *(v0 + 352));
  if (v12 == *(*v15 + 16) && v13 == *(*v15 + 24) && v14 == *(*v15 + 32))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v18._countAndFlagsBits = 0xD00000000000002ELL;
  v18._object = 0x8000000100352B20;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100187828(v12, v13, v14);
  String.append(_:)(v19);

  v20._object = 0x8000000100352750;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  v21 = sub_10000BE18((v0 + 328), *(v0 + 352));
  v22._countAndFlagsBits = sub_100187828(*(*v21 + 16), *(*v21 + 24), *(*v21 + 32));
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v8 = v24;
  v9 = v25;
  v10 = 10010;
  return sub_100020C74(v10, v8, v9, 0);
}

uint64_t sub_10016B094()
{
  sub_10009B644(&v24);
  v1 = v26;
  v2 = v27;

  if (!v2)
  {
    v8 = 0xD00000000000001FLL;
    v9 = 0x8000000100352A50;
    goto LABEL_5;
  }

  v3 = sub_100189160(v1, v2);
  if (v6)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v24 = 0xD000000000000022;
    v25 = 0x8000000100352A70;
    v7._countAndFlagsBits = v1;
    v7._object = v2;
    String.append(_:)(v7);

    v8 = v24;
    v9 = v25;
LABEL_5:
    v10 = 10005;
    return sub_100020C74(v10, v8, v9, 0);
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;

  v15 = sub_10000BE18((v0 + 328), *(v0 + 352));
  if (v12 == *(*v15 + 16) && v13 == *(*v15 + 24) && v14 == *(*v15 + 32))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v18._countAndFlagsBits = 0xD00000000000002ELL;
  v18._object = 0x8000000100352AA0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100187828(v12, v13, v14);
  String.append(_:)(v19);

  v20._object = 0x8000000100352750;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  v21 = sub_10000BE18((v0 + 328), *(v0 + 352));
  v22._countAndFlagsBits = sub_100187828(*(*v21 + 16), *(*v21 + 24), *(*v21 + 32));
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v8 = v24;
  v9 = v25;
  v10 = 10010;
  return sub_100020C74(v10, v8, v9, 0);
}

uint64_t sub_10016B308(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v17 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 160);
  static DispatchWorkItemFlags.barrier.getter();
  v18 = v4;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_100004074(&qword_1003A5448, &qword_1002C99E8);
  v14 = v24;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v14)
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v9 + 8))(v12, v8);
  result = v22;
  *v17 = v23;
  return result;
}

uint64_t sub_10016B478(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 160);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = v1;
  v12 = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_10016B594()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 160);
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_10016B6A0()
{
  String.append(_:)(*(*v0 + 40));
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

uint64_t sub_10016B7F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016B830()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10016B8F4()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 80);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 5);

  sub_10016900C(v4, v2, v3);
}

uint64_t sub_10016B960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10016B978()
{
  result = qword_1003A5458;
  if (!qword_1003A5458)
  {
    sub_1000040BC(&qword_1003A5450, &qword_1002C99F0);
    sub_10016BA2C(&qword_1003A4D70, type metadata accessor for BAASigningIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5458);
  }

  return result;
}

uint64_t sub_10016BA2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016BA74()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A5460);
  sub_10000403C(v0, qword_1003A5460);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_10016BAD0()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 64);
  if (v7)
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 24);
    v21 = *(v0 + 16);
    v22 = v9;

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    String.append(_:)(*(v0 + 40));

    v11._countAndFlagsBits = v8;
    v11._object = v7;
    String.append(_:)(v11);

    v1 = v22;
    static String.Encoding.utf8.getter();
    v12 = String.data(using:allowLossyConversion:)();
    v14 = v13;

    v15 = *(v3 + 8);
    v3 += 8;
    v15(v6, v2);
    if (v14 >> 60 != 15)
    {
      return v12;
    }

    __break(1u);
  }

  v16 = *(v1 + 24);
  v21 = *(v1 + 16);
  v22 = v16;

  v17._countAndFlagsBits = 58;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  String.append(_:)(*(v1 + 40));
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v19 = v18;

  result = (*(v3 + 8))(v6, v2);
  if (v19 >> 60 != 15)
  {
    return v12;
  }

  __break(1u);
  return result;
}

unint64_t sub_10016BCB8()
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(*(v0 + 16));
  v1._countAndFlagsBits = 0x203A656C6F72202CLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 40));
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000011;
}

uint64_t sub_10016BD60()
{
  v1 = v0;
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A5460);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_10016BCB8();
    v8 = sub_100008F6C(v6, v7, v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v22);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 296);

  dispatch thunk of DispatchWorkItem.cancel()();

  sub_10000CCE4(v1 + 80, v22);
  v13 = v23;
  v14 = v24;
  sub_10000BE18(v22, v23);
  LOBYTE(v12) = (*(v14 + 8))(v13, v14);
  sub_10000959C(v22);
  if (v12)
  {
    sub_10016E2B8();
  }

  v15 = *(v1 + 24);

  v16 = *(v1 + 48);

  v17 = *(v1 + 64);

  v18 = *(v1 + 72);

  sub_10000959C((v1 + 80));
  sub_10000959C((v1 + 120));

  sub_10000959C((v1 + 168));
  sub_10000959C((v1 + 208));
  sub_10000959C((v1 + 248));
  v19 = *(v1 + 288);

  v20 = *(v1 + 296);

  return v1;
}

uint64_t sub_10016BFDC()
{
  sub_10016BD60();

  return swift_deallocClassInstance();
}

void sub_10016C034(uint64_t a1@<X0>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = a3;
  v7 = *(a1 + 72);
  if (v7)
  {
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);

    sub_1000094F4(v9, v8);
    v10 = sub_10016FB4C();
    sub_100009548(v9, v8);
    if (v10)
    {
      v11 = sub_10015BA94();
      if (!v3)
      {
        *a3 = v11;
        a3[1] = v12;
        a3[2] = v7;
        return;
      }

      _s3__C4CodeOMa_13(0);
      swift_errorRetain();
      sub_100170988(&qword_10039D978, _s3__C4CodeOMa_13);
      v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v13 & 1) == 0 || (a2 & 1) == 0)
      {

        return;
      }

      if (qword_10039D6F8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000403C(v14, qword_1003A5460);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Recoverable signature failure", v17, 2u);
      }

      v4 = 0;
    }

    v6 = a3;
    sub_10016E2B8();
  }

  if (a2)
  {
    sub_10016CEF8();
    if (!v4)
    {
      v19 = v18;
      v20 = sub_10015BA94();
      v22 = v21;
      sub_10016DC20(v19);
      sub_10016E648(v19);
      *v6 = v20;
      v6[1] = v22;
      v6[2] = v19;
    }
  }

  else
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_10016C314(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = *(a1 + 72);

    sub_1000094F4(v8, v9);
    v11 = sub_10016FB4C();
    sub_100009548(v8, v9);
    if (v11)
    {
      v12 = sub_100020C74(10004, 0, 0, 0);
      swift_willThrow();
      _s3__C4CodeOMa_13(0);
      sub_100170988(&qword_10039D978, _s3__C4CodeOMa_13);
      v13 = v12;
      LOBYTE(v12) = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v12 & 1) == 0 || (a4 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (qword_10039D6F8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000403C(v14, qword_1003A5460);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Recoverable signature failure", v17, 2u);
      }

      v5 = 0;
    }

    sub_10016E2B8();
  }

  if ((a4 & 1) == 0)
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
    return;
  }

  sub_10016CEF8();
  if (v5)
  {
    return;
  }

  sub_100020C74(10004, 0, 0, 0);
  swift_willThrow();
  sub_10015E010();
  swift_willThrow();
LABEL_15:
}

void sub_10016C580(void *a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v7 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v19 = a1[9];
  if (!v19)
  {
    goto LABEL_19;
  }

  v48 = v18;
  v49 = &v46 - v17;
  v47 = v16;
  v50 = a2;
  type metadata accessor for SecCertificate(0);
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);

  sub_1000094F4(v20, v21);
  v22 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v20, v21);
  if (!v22)
  {

    v33 = 0;
    a2 = v50;
    goto LABEL_20;
  }

  v23 = a1[34];
  v24 = a1[35];
  sub_10000BE18(a1 + 31, v23);
  (*(v24 + 8))(v22, v23, v24);
  if (!v3)
  {
    SecCertificateNotValidAfter();
    v34 = v49;
    Date.init(timeIntervalSinceReferenceDate:)();
    v35 = *sub_10000BE18(a1 + 26, a1[29]);
    sub_100043268(v10);
    v36 = v47;
    v37 = v48;
    if ((*(v48 + 48))(v10, 1, v47) != 1)
    {
      (*(v37 + 32))(v15, v10, v36);
      Date.timeIntervalSince(_:)();
      v44 = v43;

      v45 = *(v37 + 8);
      v45(v15, v36);
      v45(v34, v36);
      v33 = v44 > a3;
      a2 = v50;
      goto LABEL_20;
    }

    v38 = v36;
    sub_10000BD44(v10, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000403C(v39, qword_1003A5460);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Could not calculate secure now", v42, 2u);
      v37 = v48;
    }

    else
    {
    }

    a2 = v50;
    (*(v37 + 8))(v49, v38);
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_1003A5460);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315138;
    v51 = v3;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100008F6C(v30, v31, &v52);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Certificate verification failed: %s", v28, 0xCu);
    sub_10000959C(v29);
  }

  else
  {
  }

  v33 = 0;
  a2 = v50;
LABEL_20:
  *a2 = v33;
}

uint64_t sub_10016CAE8(uint64_t a1)
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A5460);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(a1 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, &v20);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x80000001003526B0, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_10016CEF8();
  if (v1)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating identity: %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = v12;
    sub_10016DC20(v12);
    sub_10016E648(v13);
  }
}

void sub_10016CEF8()
{
  v2 = v0;
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A5460);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(v0 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, &v49);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100352910, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v49);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v12 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v12 + 104) > 0 || *(v12 + 112) == 1)
  {
    [*(v12 + 88) wait];
  }

  v13 = *(v12 + 96);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v12 + 96) = v15;
  [*(v12 + 88) unlock];
  if (*(v12 + 56))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v12 + 52);
  }

  [*(v12 + 88) lock];
  v17 = *(v12 + 96);
  v14 = __OFSUB__(v17, 1);
  v18 = v17 - 1;
  if (v14)
  {
    goto LABEL_30;
  }

  *(v12 + 96) = v18;
  if (!v18)
  {
    [*(v12 + 88) broadcast];
  }

  type metadata accessor for AAASigningIdentity();
  [*(v12 + 88) unlock];
  TMGetKernelMonotonicClock();
  v20 = sub_10015A408(v16, v19);
  if (!v1)
  {
    v34 = *(v20 + 24);
    v35 = *(v20 + 32);
    v36 = v20;
    sub_1000094F4(v34, v35);
    sub_10016FE38();
    sub_100009548(v34, v35);
    v47 = v2[18];
    v48 = v2[19];
    sub_10000BE18(v2 + 15, v47);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v38 = v2[4];
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v38;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v40 = *(v36 + 24);
    v39 = *(v36 + 32);
    sub_1000094F4(v40, v39);
    v41 = Data.sha256Digest.getter();
    v43 = v42;
    sub_100009548(v40, v39);
    v44 = Data.base64EncodedString(options:)(0);
    sub_100009548(v41, v43);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v44;
    v45 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(8u, v45, v47, v48);

    v46 = v2[36];
    sub_10002B31C(&off_10037E198);
    return;
  }

  v21 = v2[18];
  v22 = v2[19];
  sub_10000BE18(v2 + 15, v21);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1002C1670;
  *(v23 + 32) = 1701605234;
  *(v23 + 40) = 0xE400000000000000;
  v24 = v2[4];
  *(v23 + 72) = &type metadata for Int;
  *(v23 + 80) = &protocol witness table for Int;
  *(v23 + 48) = v24;
  *(v23 + 88) = 0x726F727265;
  *(v23 + 96) = 0xE500000000000000;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  v25 = String.init<A>(describing:)();
  *(v23 + 128) = &type metadata for String;
  *(v23 + 136) = &protocol witness table for String;
  *(v23 + 104) = v25;
  *(v23 + 112) = v26;
  v27 = sub_100184010(v23);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0xAu, v27, v21, v22);

  swift_errorRetain();
  type metadata accessor for SecurityError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v28 = v49;
  sub_100170988(&qword_10039D998, type metadata accessor for SecurityError);
  _BridgedStoredNSError.code.getter();
  if (v49 != 10002)
  {

LABEL_28:
    swift_willThrow();
    return;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "AAA certificate creation failed, increase validity for next attempt", v31, 2u);
  }

  v32 = v2[38];
  v14 = __OFADD__(v32, 86400);
  v33 = v32 + 86400;
  if (!v14)
  {
    if (v33 <= 2592000)
    {
      v2[38] = v33;
    }

    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_10016D61C()
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A5460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v18 = 0xD000000000000010;
    v19[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x6E65644964616F6CLL, 0xEE00292879746974, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  sub_10000BE18((v0 + 80), v11);
  v13 = sub_10016BAD0();
  v15 = v14;
  v16 = sub_100004074(&qword_1003A56B0, &qword_1002C9AC0);
  sub_1001708D4();
  sub_10009A1A4(v13, v15, v11, v16, v12);
  sub_100009548(v13, v15);
  return v18;
}

uint64_t sub_10016DC20(uint64_t a1)
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A5460);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v47 = v1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v11 = 136315394;
    v50 = 0xD000000000000010;
    v51 = 0x8000000100352CB0;
    String.append(_:)(*(v1 + 40));
    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(v50, v51, &v52);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    *(v14 + 56) = type metadata accessor for AAASigningIdentity();
    *(v14 + 32) = a1;

    v15 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528F0, v14);
    v16 = a1;
    v18 = v17;

    v19 = sub_100008F6C(v15, v18, &v52);
    a1 = v16;

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for JSONEncoder();
  v50 = a1;
  v52 = _swiftEmptyArrayStorage;
  sub_100170988(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10001A570(&qword_1003A1078, &qword_1003A1070, &qword_1002C5170);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for AAASigningIdentity();
  sub_100170988(&qword_1003A4EC8, type metadata accessor for AAASigningIdentity);
  v20 = v48;
  v21 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v20)
  {
    return (*(v49 + 8))(v6, v3);
  }

  v46 = a1;
  v24 = v21;
  v25 = v22;
  (*(v49 + 8))(v6, v3);
  v26 = v47[14];
  sub_10000BE18(v47 + 10, v47[13]);
  v27 = sub_10016BAD0();
  v29 = v28;
  v30 = *(v26 + 40);
  v48 = v24;
  v49 = v25;
  v30();
  sub_100009548(v27, v29);
  v31 = v47;
  v32 = v47[18];
  v45 = v47[19];
  v44[1] = sub_10000BE18(v47 + 15, v32);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 1701605234;
  v44[0] = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  v34 = v31[4];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 48) = v34;
  *(inited + 88) = 0x747365676964;
  *(inited + 96) = 0xE600000000000000;
  v35 = v46;
  v36 = v46[3];
  v37 = v46[4];
  sub_1000094F4(v36, v37);
  v38 = Data.sha256Digest.getter();
  v40 = v39;
  sub_100009548(v36, v37);
  v41 = Data.base64EncodedString(options:)(0);
  sub_100009548(v38, v40);
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v41;
  v42 = sub_100184010(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(9u, v42, v32, v45);
  sub_100009548(v48, v49);

  v43 = v31[9];
  v31[9] = v35;
}

void sub_10016E2B8()
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A5460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v16[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, v16);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528D0, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v16);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 72))
  {
    v11 = *(v0 + 112);
    sub_10000BE18((v0 + 80), *(v0 + 104));

    v12 = sub_10016BAD0();
    v14 = v13;
    (*(v11 + 48))();
    sub_100009548(v12, v14);
    sub_10015E010();

    v15 = *(v0 + 72);
    *(v0 + 72) = 0;
  }
}

void sub_10016E648(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v7 = a1[3];
  v8 = a1[4];
  sub_1000094F4(v7, v8);
  v9 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v7, v8);
  if (v9)
  {
    SecCertificateNotValidAfter();
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10016E8E0(a1[2], v6, 0);

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A5460);

    v18 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_10015A0C8();
      v16 = sub_100008F6C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v11, "Invalid X.509 format (AAA). Not renewing: %s", v12, 0xCu);
      sub_10000959C(v13);
    }

    else
    {
      v17 = v18;
    }
  }
}

void sub_10016E8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v117 = a3;
  v120 = a1;
  v114 = type metadata accessor for DispatchTime();
  v113 = *(v114 - 8);
  v6 = *(v113 + 64);
  v7 = __chkstk_darwin(v114);
  v112 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = v104 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v111 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v104 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v110 = v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v118 = v104 - v23;
  v24 = __chkstk_darwin(v22);
  v119 = v104 - v25;
  v26 = __chkstk_darwin(v24);
  v121 = v104 - v27;
  v109 = v28;
  __chkstk_darwin(v26);
  v30 = v104 - v29;
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A5460);
  v34 = v18 + 16;
  v33 = *(v18 + 16);
  v122 = a2;
  v33(v30, a2, v17);

  v116 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v123 = v18;
  v115 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v124 = v17;
    v39 = v38;
    v107 = swift_slowAlloc();
    v125[0] = v107;
    *v39 = 136315394;
    aBlock = 0xD000000000000010;
    v127 = 0x8000000100352CB0;
    String.append(_:)(*(v4 + 40));
    v40._countAndFlagsBits = 93;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41 = sub_100008F6C(aBlock, v127, v125);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1002C1790;
    *(v42 + 56) = &type metadata for Int64;
    *(v42 + 32) = v120;
    *(v42 + 88) = v124;
    v43 = sub_10000BE5C((v42 + 64));
    v33(v43, v30, v124);
    *(v42 + 120) = &type metadata for Int;
    *(v42 + 96) = v117;
    v44 = showFunction(signature:_:)(0xD000000000000034, 0x8000000100352890, v42);
    v46 = v45;

    v47 = v30;
    v48 = *(v123 + 8);
    v48(v47, v124);
    v49 = v44;
    v34 = v18 + 16;
    v50 = sub_100008F6C(v49, v46, v125);

    *(v39 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s.%s", v39, 0x16u);
    swift_arrayDestroy();

    v18 = v123;
    v17 = v124;
  }

  else
  {

    v51 = v30;
    v48 = *(v18 + 8);
    v48(v51, v17);
  }

  v52 = *sub_10000BE18((v4 + 208), *(v4 + 232));
  sub_100043268(v16);
  v53 = (*(v18 + 48))(v16, 1, v17);
  v55 = v118;
  v54 = v119;
  if (v53 == 1)
  {
    sub_10000BD44(v16, &unk_1003A3BE0, &qword_1002C36F0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v56, v57, "Aborting identity #%lld renewal. Could not calculate secure now", v58, 0xCu);
    }

    return;
  }

  v59 = *(v18 + 32);
  v106 = v18 + 32;
  v105 = v59;
  v59(v121, v16, v17);
  Date.timeIntervalSince(_:)();
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v61 = 345600;
  v104[1] = v34;
  v107 = v48;
  if (v60 <= 345600 && (v61 = v60, v60 <= 86400))
  {

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    v80 = os_log_type_enabled(v78, v79);
    v77 = v112;
    if (v80)
    {
      v81 = v17;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      _os_log_impl(&_mh_execute_header, v78, v79, "Certificate for %s will be renewed immediately", v82, 0xCu);
      sub_10000959C(v83);

      v17 = v81;
    }

    v64 = 0;
    v76 = v108;
    v71 = v123;
  }

  else
  {
    v125[0] = 86400;
    v125[1] = v61;
    swift_beginAccess();
    v62 = *(v4 + 200);
    sub_100022438(v4 + 168, *(v4 + 192));
    v124 = v17;
    sub_10000A114();
    v17 = v124;
    static FixedWidthInteger.random<A>(in:using:)();
    swift_endAccess();
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v64 = v63;
    v115(v55, v54, v17);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v67 = 136315650;
      *(v67 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      *(v67 + 12) = 2080;
      sub_100170988(&qword_10039F3E8, &type metadata accessor for Date);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = v123;
      v72 = v55;
      v73 = v107;
      v107(v72, v124);
      v74 = sub_100008F6C(v68, v70, &aBlock);

      *(v67 + 14) = v74;
      *(v67 + 22) = 2048;
      *(v67 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Certificate for %s will be renewed on %s (in %f seconds)", v67, 0x20u);
      swift_arrayDestroy();

      v17 = v124;

      v73(v119, v17);
    }

    else
    {

      v71 = v123;
      v75 = v107;
      v107(v55, v17);
      v75(v54, v17);
    }

    v76 = v108;
    v77 = v112;
  }

  v84 = v115;
  v85 = *(v4 + 296);

  dispatch thunk of DispatchWorkItem.cancel()();

  static DispatchWorkItemFlags.barrier.getter();
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = v110;
  v84(v110, v122, v17);
  v88 = *(v71 + 80);
  v89 = v17;
  v90 = (v88 + 48) & ~v88;
  v91 = swift_allocObject();
  v92 = v120;
  *(v91 + 2) = v86;
  *(v91 + 3) = v92;
  *(v91 + 4) = v64;
  *(v91 + 5) = v117;
  v105(&v91[v90], v87, v89);
  v130 = sub_100170850;
  v131 = v91;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100003974;
  v129 = &unk_100385A80;
  _Block_copy(&aBlock);
  v93 = type metadata accessor for DispatchWorkItem();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();

  v96 = DispatchWorkItem.init(flags:block:)();

  v97 = *(v4 + 296);
  *(v4 + 296) = v96;

  v98 = *(v4 + 160);
  v100 = *(v4 + 232);
  v99 = *(v4 + 240);
  sub_10000BE18((v4 + 208), v100);
  (*(*(v99 + 8) + 16))(v100);
  + infix(_:_:)();
  v101 = *(v113 + 8);
  v102 = v114;
  v101(v77, v114);
  v103 = *(v4 + 296);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v101(v76, v102);
  v107(v121, v89);
}

void sub_10016F5DC(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 72);
    if (v6 && *(v6 + 16) == a3)
    {
      v7 = Strong;
      if (qword_10039D6F8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000403C(v8, qword_1003A5460);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = a3;
        *(v11 + 12) = 2048;
        *(v11 + 14) = a1;
        _os_log_impl(&_mh_execute_header, v9, v10, "renew identity #%lld after %fs", v11, 0x16u);
      }

      v12 = *(v7 + 72);
      if (v12)
      {
        v13 = *(v7 + 72);

        sub_10015C570();
        sub_10016DC20(v12);
        sub_10016E648(v12);
      }

      else
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "AAA Signer missing identity, not able to refresh certificates.", v20, 2u);
        }
      }

      return;
    }
  }

  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A5460);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "identity mismatch, abort renewal", v17, 2u);
  }
}

uint64_t sub_10016FB4C()
{
  type metadata accessor for SecCertificate(0);
  v1 = static SecCertificateRef.parse(derRepresentation:)();
  if (v1)
  {
    v2 = v1;
    v3 = v0[34];
    v4 = v0[35];
    sub_10000BE18(v0 + 31, v3);
    (*(v4 + 8))(v2, v3, v4);

    return 1;
  }

  else
  {
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_1003A5460);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalid X.509 format (AAA)", v8, 2u);
    }

    sub_100020C74(10005, 0, 0, 0);
    swift_willThrow();
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A5460);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v14 = String.init<A>(describing:)();
      v16 = sub_100008F6C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Certificate verification failed: %s", v12, 0xCu);
      sub_10000959C(v13);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_10016FE38()
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A5460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v19[0] = 0xD000000000000010;
    v19[1] = 0x8000000100352CB0;
    v20 = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, &v20);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000030, 0x8000000100352C00, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v20);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v19[0] = _swiftEmptyArrayStorage;
  type metadata accessor for SecCertificate(0);
  v11 = static SecCertificateRef.parse(derRepresentation:)();
  if (v11)
  {
    v12 = v11;
    v13 = SecCertificateRef.publicKey.getter();
    if (v13)
    {
      v14 = v13;
      if (SecKeyRef.isAlgorithmSupported(_:for:)(kSecKeyAlgorithmECDSASignatureMessageX962SHA256, kSecKeyOperationTypeVerify))
      {
      }

      else
      {
        sub_100020C74(10005, 0xD00000000000001CLL, 0x8000000100352840, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(v19[0] + 16) >= *(v19[0] + 24) >> 1)
        {
          v18 = *(v19[0] + 16);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      sub_100020C74(10005, 0x696C627570206F4ELL, 0xED000079656B2063, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v19[0] + 16) >= *(v19[0] + 24) >> 1)
      {
        v17 = *(v19[0] + 16);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    sub_100020C74(10005, 0xD00000000000001ALL, 0x8000000100352CD0, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(v19[0] + 16) >= *(v19[0] + 24) >> 1)
    {
      v16 = *(v19[0] + 16);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_10016A6EC(v19, v0);
}

uint64_t sub_10017028C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v17 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 160);
  static DispatchWorkItemFlags.barrier.getter();
  v18 = v4;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_100004074(&qword_1003A56A8, &qword_1002C9AB8);
  v14 = v24;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v14)
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v9 + 8))(v12, v8);
  result = v22;
  *v17 = v23;
  return result;
}

uint64_t sub_1001703FC(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 160);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = v1;
  v12 = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_100170518()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 160);
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_100170624()
{
  String.append(_:)(*(*v0 + 40));
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

void sub_100170730(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_10016C034(*(v1 + 16), *(v1 + 40), a1);
}

uint64_t sub_100170754()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017078C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100170850()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 80);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 5);

  sub_10016F5DC(v4, v2, v3);
}

uint64_t sub_1001708BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001708D4()
{
  result = qword_1003A56B8;
  if (!qword_1003A56B8)
  {
    sub_1000040BC(&qword_1003A56B0, &qword_1002C9AC0);
    sub_100170988(&qword_1003A4EC0, type metadata accessor for AAASigningIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A56B8);
  }

  return result;
}

uint64_t sub_100170988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001709D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
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

uint64_t sub_100170A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100170A8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100170AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 26))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100170AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100170B68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1001714C8(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_100171464(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 >= v12)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v7 <= 1)
    {
LABEL_26:
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      result = sub_100009548(v5, a3);
      *a4 = v14;
      a4[1] = v16;
      return result;
    }

    if (v7 == 2)
    {
      v13 = *(v5 + 16);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_100170CB0(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = a1 >> 8;
  v9 = a1 >> 16;
  v10 = a1 >> 24;
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002C1690;
  *(v11 + 32) = a1;
  *(v11 + 33) = v8;
  *(v11 + 34) = v9;
  *(v11 + 35) = v10;
  v12 = sub_10014B8C8(v11);
  v14 = v13;

  v27 = v12;
  v28 = v14;
  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_12;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v16 = a2;
    v17 = a2 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v14 >> 62 == 2)
  {
    v18 = *(v12 + 24);
  }

  v25 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
  v26 = sub_10009E2FC();
  LOBYTE(v24[0]) = BYTE4(a1);
  v22 = *sub_10000BE18(v24, v25);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v24);
  Data.append(_:)();
  v12 = v27;
  v14 = v28;
LABEL_12:
  if (v14 >> 62 == 2)
  {
    v19 = *(v12 + 24);
  }

  v20 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
  v25 = v20;
  v26 = sub_10009E2FC();
  LOBYTE(v24[0]) = a4;
  v23 = *sub_10000BE18(v24, v20);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v24);
  return v27;
}

uint64_t sub_100170F04(unint64_t a1, uint64_t a2, unint64_t a3, __int16 a4)
{
  v8 = a1 >> 8;
  v9 = a1 >> 16;
  v10 = a1 >> 24;
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002C1690;
  *(v11 + 32) = a1;
  *(v11 + 33) = v8;
  *(v11 + 34) = v9;
  *(v11 + 35) = v10;
  v12 = sub_10014B8C8(v11);
  v14 = v13;

  v32 = v12;
  v33 = v14;
  if (v14 >> 62 == 2)
  {
    v15 = *(v12 + 24);
  }

  v16 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
  v30 = v16;
  v17 = sub_10009E2FC();
  v31 = v17;
  LOBYTE(v29[0]) = 0;
  v24 = *sub_10000BE18(v29, v16);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v29);
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v18 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v18)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_16;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  if (v33 >> 62 == 2)
  {
    v19 = *(v32 + 24);
  }

  v30 = v16;
  v31 = v17;
  LOBYTE(v29[0]) = BYTE5(a1);
  v25 = *sub_10000BE18(v29, v16);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v29);
  if (v33 >> 62 == 2)
  {
    v20 = *(v32 + 24);
  }

  v30 = v16;
  v31 = v17;
  LOBYTE(v29[0]) = BYTE4(a1);
  v26 = *sub_10000BE18(v29, v16);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v29);
  Data.append(_:)();
LABEL_16:
  if (v33 >> 62 == 2)
  {
    v21 = *(v32 + 24);
  }

  v30 = v16;
  v31 = v17;
  LOBYTE(v29[0]) = HIBYTE(a4);
  v27 = *sub_10000BE18(v29, v16);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v29);
  if (v33 >> 62 == 2)
  {
    v22 = *(v32 + 24);
  }

  v30 = v16;
  v31 = v17;
  LOBYTE(v29[0]) = a4;
  v28 = *sub_10000BE18(v29, v16);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v29);
  return v32;
}

uint64_t sub_1001712A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return Data.hexString()()._countAndFlagsBits;
}

_WORD *sub_1001712B0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1001712E0()
{
  v1 = *v0;
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C1660;
  *(v2 + 56) = &type metadata for UInt16;
  *(v2 + 64) = &protocol witness table for UInt16;
  *(v2 + 32) = v1;

  return String.init(format:_:)();
}

uint64_t sub_100171364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001713BC();
  v5 = sub_100171410();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_1001713BC()
{
  result = qword_1003A56C0;
  if (!qword_1003A56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A56C0);
  }

  return result;
}

unint64_t sub_100171410()
{
  result = qword_1003A56C8;
  if (!qword_1003A56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A56C8);
  }

  return result;
}

uint64_t sub_100171464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001714C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10017157C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      result = v8 - 2;
      if (v8 < 2)
      {
        goto LABEL_8;
      }

LABEL_11:
      v13 = a3;
      v14 = Data._Representation.subscript.getter();
      v15 = Data._Representation.subscript.getter();
      sub_1000094F4(v4, a2);
      sub_100170B68(2, v4, a2, &v39);
      v37 = &type metadata for Data;
      v38 = &protocol witness table for Data;
      v36 = v39;
      v16 = sub_10000BE18(&v36, &type metadata for Data);
      v17 = *v16;
      v18 = v16[1];
      v19 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v19 != 2)
        {
          memset(v34, 0, 14);
          v21 = v34;
          v20 = v34;
          goto LABEL_33;
        }

        v22 = *(v17 + 16);
        v23 = *(v17 + 24);
        v24 = __DataStorage._bytes.getter();
        if (v24)
        {
          v25 = __DataStorage._offset.getter();
          v17 = v22 - v25;
          if (__OFSUB__(v22, v25))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v24 += v17;
        }

        v26 = __OFSUB__(v23, v22);
        v27 = v23 - v22;
        if (!v26)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v19)
      {
        v34[0] = *v16;
        LOWORD(v34[1]) = v18;
        BYTE2(v34[1]) = BYTE2(v18);
        BYTE3(v34[1]) = BYTE3(v18);
        BYTE4(v34[1]) = BYTE4(v18);
        BYTE5(v34[1]) = BYTE5(v18);
        v20 = v34 + BYTE6(v18);
        v21 = v34;
LABEL_33:
        sub_10014B4B8(v21, v20, v35);
        v10 = v15 | (v14 << 8);
        v9 = v35[0];
        v11 = v35[1];
        result = sub_10000959C(&v36);
        a3 = v13;
        goto LABEL_34;
      }

      v28 = v17;
      v29 = v17 >> 32;
      v27 = v29 - v28;
      if (v29 >= v28)
      {
        v24 = __DataStorage._bytes.getter();
        if (!v24)
        {
LABEL_25:
          v31 = __DataStorage._length.getter();
          if (v31 >= v27)
          {
            v32 = v27;
          }

          else
          {
            v32 = v31;
          }

          v33 = (v32 + v24);
          if (v24)
          {
            v20 = v33;
          }

          else
          {
            v20 = 0;
          }

          v21 = v24;
          goto LABEL_33;
        }

        v30 = __DataStorage._offset.getter();
        if (!__OFSUB__(v28, v30))
        {
          v24 += v28 - v30;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5)
  {
    v12 = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      result = v12 - 2;
      if (v12 < 2)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  result = BYTE6(a2) - 2;
  if (BYTE6(a2) >= 2uLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  v9 = 0;
  v10 = 0;
  v11 = 0xC000000000000000;
LABEL_34:
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v4;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_100171840(__int16 a1)
{
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  LODWORD(result) = swift_dynamicCast();
  v3 = v4;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 == a1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001718BC()
{
  sub_100009548(*(v0 + 16), *(v0 + 24));
  sub_100009548(*(v0 + 32), *(v0 + 40));
  sub_100009548(*(v0 + 48), *(v0 + 56));
  sub_100009548(*(v0 + 64), *(v0 + 72));
  sub_100009548(*(v0 + 80), *(v0 + 88));
  sub_100009548(*(v0 + 96), *(v0 + 104));
  sub_100009548(*(v0 + 112), *(v0 + 120));
  sub_100009548(*(v0 + 128), *(v0 + 136));
  sub_100009548(*(v0 + 144), *(v0 + 152));
  sub_100009548(*(v0 + 160), *(v0 + 168));
  sub_100009548(*(v0 + 176), *(v0 + 184));
  return v0;
}

uint64_t sub_10017192C()
{
  sub_1001718BC();

  return swift_deallocClassInstance();
}

uint64_t *GlobalState.shared.unsafeMutableAddressor()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  return &static GlobalState.shared;
}

Swift::Void __swiftcall GlobalState.updateMFDEventTimestamp()()
{
  [*(v0 + 88) lock];
  v1 = *(v0 + 104);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  *(v0 + 104) = v3;
  while (*(v0 + 96) > 0 || *(v0 + 112) == 1)
  {
    [*(v0 + 88) wait];
  }

  v4 = *(v0 + 104);
  v2 = __OFSUB__(v4, 1);
  v5 = v4 - 1;
  if (v2)
  {
    goto LABEL_14;
  }

  *(v0 + 104) = v5;
  *(v0 + 112) = 1;
  [*(v0 + 88) unlock];
  v6 = *(v0 + 52);
  v7 = *(v0 + 56);
  TMGetKernelMonotonicClock();
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  *(v0 + 48) = 0;
  sub_100173040();
  [*(v0 + 88) lock];
  *(v0 + 112) = 0;
  [*(v0 + 88) broadcast];
  v10 = *(v0 + 88);

  [v10 unlock];
}

Swift::Void __swiftcall GlobalState.receiveTMRTCResetNotification()()
{
  v2 = v0;
  [*(v0 + 88) lock];
  v3 = *(v0 + 104);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  *(v0 + 104) = v5;
  while (*(v0 + 96) > 0 || *(v0 + 112) == 1)
  {
    [*(v0 + 88) wait];
  }

  v6 = *(v0 + 104);
  v4 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v4)
  {
    goto LABEL_17;
  }

  *(v0 + 104) = v7;
  *(v0 + 112) = 1;
  p_type = &stru_100399FF0.type;
  [*(v0 + 88) unlock];
  if (*(v0 + 56))
  {
    v8 = 0;
LABEL_10:
    *(v0 + 52) = v8 + 1;
    *(v0 + 56) = 0;
    goto LABEL_11;
  }

  v8 = *(v0 + 52);
  if (v8 != -1)
  {
    goto LABEL_10;
  }

  if (qword_10039D700 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A57D8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "unexpected rtc reset count, reset GlobalState info", v12, 2u);
  }

  LOBYTE(v14[0]) = 1;
  v13 = *(v2 + 32);
  v14[0] = *(v2 + 16);
  v14[1] = v13;
  v15[0] = *(v2 + 48);
  *(v15 + 9) = *(v2 + 57);
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 52) = 0;
  *(v2 + 56) = 1;
  *(v2 + 57) = 2;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  sub_1001737E8(v14);
LABEL_11:
  sub_100173040();
  [*(v2 + 88) lock];
  *(v2 + 112) = 0;
  [*(v2 + 88) broadcast];
  [*(v2 + 88) p_type[493]];
}

id GlobalState.isPANPresent.getter()
{
  result = [*(v0 + 88) lock];
  while (*(v0 + 104) > 0 || *(v0 + 112) == 1)
  {
    result = [*(v0 + 88) wait];
  }

  v2 = *(v0 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + 96) = v4;
  [*(v0 + 88) unlock];
  v5 = *(v0 + 57);
  result = [*(v0 + 88) lock];
  v6 = *(v0 + 96);
  v3 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v0 + 96) = v7;
  if (!v7)
  {
    [*(v0 + 88) broadcast];
  }

  [*(v0 + 88) unlock];
  return (v5 & 1);
}

id GlobalState.isPANPresent.setter(char a1)
{
  result = [*(v1 + 88) lock];
  v4 = *(v1 + 104);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  *(v1 + 104) = v6;
  while (*(v1 + 96) > 0 || *(v1 + 112) == 1)
  {
    result = [*(v1 + 88) wait];
  }

  v7 = *(v1 + 104);
  v5 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v5)
  {
    goto LABEL_11;
  }

  *(v1 + 104) = v8;
  *(v1 + 112) = 1;
  [*(v1 + 88) unlock];
  *(v1 + 57) = a1 & 1;
  sub_100173040();
  [*(v1 + 88) lock];
  *(v1 + 112) = 0;
  [*(v1 + 88) broadcast];
  v9 = *(v1 + 88);

  return [v9 unlock];
}

void __swiftcall GlobalState.updateNumberOfDeletableClients()(Swift::tuple_previous_Int_optional_current_Int_optional *__return_ptr retstr)
{
  [*(v1 + 88) lock];
  v2 = *(v1 + 104);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 104) = v4;
    while (*(v1 + 96) > 0 || *(v1 + 112) == 1)
    {
      [*(v1 + 88) wait];
    }

    v5 = *(v1 + 104);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 104) = v6;
      *(v1 + 112) = 1;
      [*(v1 + 88) unlock];
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
      v9 = *(sub_100173EA8() + 16);

      *(v1 + 16) = v9;
      *(v1 + 24) = 0;
      sub_100173040();
      [*(v1 + 88) lock];
      *(v1 + 112) = 0;
      [*(v1 + 88) broadcast];
      [*(v1 + 88) unlock];
      return;
    }
  }

  __break(1u);
}

id sub_100171FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  result = [*(v4 + 88) lock];
  v21 = *(v4 + 104);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  *(v4 + 104) = v23;
  while (*(v4 + 96) > 0 || *(v4 + 112) == 1)
  {
    result = [*(v4 + 88) wait];
  }

  v24 = *(v4 + 104);
  v22 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v22)
  {
    goto LABEL_15;
  }

  *(v4 + 104) = v25;
  *(v4 + 112) = 1;
  [*(v4 + 88) unlock];
  if (*(v4 + 64))
  {
    v26 = *(v4 + 64);
  }

  else
  {
    v26 = sub_1001847C4(_swiftEmptyArrayStorage);
  }

  v32 = v26;
  sub_100065074(a3, v19, &unk_1003A3BE0, &qword_1002C36F0);
  if ((*(v9 + 48))(v19, 1, v8) == 1)
  {

    sub_10000BD44(v19, &unk_1003A3BE0, &qword_1002C36F0);
    sub_10017ADF8(a1, a2, v17);
    sub_10000BD44(v17, &unk_1003A3BE0, &qword_1002C36F0);
    v27 = v32;
  }

  else
  {
    (*(v9 + 32))(v12, v19, v8);

    v28 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v28;
    sub_1001807BC(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    v27 = v31;
  }

  v30 = *(v4 + 64);
  *(v4 + 64) = v27;

  sub_100173040();
  [*(v4 + 88) lock];
  *(v4 + 112) = 0;
  [*(v4 + 88) broadcast];
  return [*(v4 + 88) unlock];
}

uint64_t sub_1001722D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A57D8);
  sub_10000403C(v0, qword_1003A57D8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.xpcServer.getter();
}

uint64_t sub_10017233C()
{
  _StringGuts.grow(_:)(52);
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v0._object = 0x8000000100352F30;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x8000000100352F50;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_100172430(void *a1)
{
  v3 = sub_100004074(&qword_1003A5940, &qword_1002CA130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100175104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1001725B8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x7465736552637472;
  }

  *v0;
  return result;
}

uint64_t sub_100172604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465736552637472 && a2 == 0xED0000746E756F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100353090 == a2)
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

uint64_t sub_1001726F0(uint64_t a1)
{
  v2 = sub_100175104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017272C(uint64_t a1)
{
  v2 = sub_100175104();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100172794(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *(a1 + 8) < *(a2 + 8) && *a2 >= *a1;
}

BOOL sub_1001727C4(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *(a2 + 8) >= *(a1 + 8) || *a1 < *a2;
}

BOOL sub_1001727F4(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *(a1 + 8) >= *(a2 + 8) || *a2 < *a1;
}

BOOL sub_100172824(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *(a2 + 8) < *(a1 + 8) && *a1 >= *a2;
}

void sub_100172854(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100174390(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100172884(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_100172430(a1);
}

uint64_t sub_1001728A4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_10017233C();
}

uint64_t sub_100172B88(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A58E0, &qword_1002C9EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100174BF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v20 = *(v3 + 1);
    v21 = *(v3 + 32);
    v19 = 1;
    sub_100155B90();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 9);
    v14 = *(v3 + 40);
    LOBYTE(v20) = 2;
    v19 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 41);
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v20 = v3[6];
    v19 = 4;
    sub_100004074(&qword_1003A58C8, &qword_1002C9EF0);
    sub_100174D3C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 56);
    LOBYTE(v20) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100172DEC()
{
  v1 = *v0;
  v2 = 0x664F7265626D756ELL;
  v3 = 0x6572504E41507369;
  v4 = 0x6567617355707061;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44464D7473616CLL;
  if (v1 != 1)
  {
    v5 = 0x7465736552637472;
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
    return v3;
  }
}

uint64_t sub_100172ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10017453C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100172EF4(uint64_t a1)
{
  v2 = sub_100174BF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100172F30(uint64_t a1)
{
  v2 = sub_100174BF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100172F6C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100174754(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100172FB8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_100172B88(a1);
}

uint64_t sub_100172FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = v8[1];
  *v12 = v8[2];
  *&v12[9] = *(v8 + 41);
  return sub_1001728B0(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_100173040()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (v8)
  {
    type metadata accessor for JSONEncoder();
    v9 = v0[2];
    v29[0] = v0[1];
    v29[1] = v9;
    v11 = v0[1];
    v10 = v0[2];
    v30[0] = v0[3];
    *(v30 + 9) = *(v0 + 57);
    v26 = v11;
    v27 = v10;
    v28[0] = v0[3];
    *(v28 + 9) = *(v0 + 57);
    v25 = &_swiftEmptyArrayStorage;
    sub_100174D04(v29, v23);
    sub_100174E4C(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting);
    sub_100004074(&qword_1003A1070, &qword_1002C5170);
    sub_10009AAB4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100174E94();
    v16 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
    v18 = v17;
    (*(v2 + 8))(v5, v1);
    v23[0] = v26;
    v23[1] = v27;
    v24[0] = v28[0];
    *(v24 + 9) = *(v28 + 9);
    sub_1001737E8(v23);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v20 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v20];

    sub_100009548(v16, v18);
  }

  else
  {
    if (qword_10039D700 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A57D8);
    v22 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v22, v13, "Cannot access SPR user defaults", v14, 2u);
    }

    v15 = v22;
  }
}

id (*GlobalState.isPANPresent.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  result = [*(v1 + 88) lock];
  while (*(v1 + 104) > 0 || *(v1 + 112) == 1)
  {
    result = [*(v1 + 88) wait];
  }

  v4 = *(v1 + 96);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 96) = v6;
  [*(v1 + 88) unlock];
  v7 = *(v1 + 57);
  result = [*(v1 + 88) lock];
  v8 = *(v1 + 96);
  v5 = __OFSUB__(v8, 1);
  v9 = v8 - 1;
  if (v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v1 + 96) = v9;
  if (!v9)
  {
    [*(v1 + 88) broadcast];
  }

  [*(v1 + 88) unlock];
  *(a1 + 8) = v7 & 1;
  return sub_10017368C;
}

id sub_10017368C(_BYTE *a1, char a2)
{
  v3 = *a1;
  v4 = a1[8];
  result = [*(*a1 + 88) lock];
  v6 = *(v3 + 104);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  v9 = v7;
  if (a2)
  {
    if (v9)
    {
      __break(1u);
      goto LABEL_23;
    }

    *(v3 + 104) = v8;
    while (*(v3 + 96) > 0 || *(v3 + 112) == 1)
    {
      result = [*(v3 + 88) wait];
    }

    v10 = *(v3 + 104);
    v7 = __OFSUB__(v10, 1);
    v8 = v10 - 1;
    if (!v7)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v9)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  *(v3 + 104) = v8;
  while (*(v3 + 96) > 0 || *(v3 + 112) == 1)
  {
    result = [*(v3 + 88) wait];
  }

  v11 = *(v3 + 104);
  v7 = __OFSUB__(v11, 1);
  v8 = v11 - 1;
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_19:
  *(v3 + 104) = v8;
  *(v3 + 112) = 1;
  [*(v3 + 88) unlock];
  *(v3 + 57) = v4;
  sub_100173040();
  [*(v3 + 88) lock];
  *(v3 + 112) = 0;
  [*(v3 + 88) broadcast];
  v12 = *(v3 + 88);

  return [v12 unlock];
}

uint64_t sub_1001737C8()
{
  result = sub_100173818();
  static GlobalState.shared = result;
  return result;
}

uint64_t sub_100173818()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    if (qword_10039D700 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A57D8);
    v2 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v2, v13, "Cannot access SPR user defaults", v14, 2u);
    }

    goto LABEL_12;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 dataForKey:v3];

  if (!v4)
  {
LABEL_12:

    LOBYTE(v32) = 1;
    LOBYTE(v29[0]) = 1;
    v31 = 1;
    type metadata accessor for GlobalState();
    v15 = swift_allocObject();
    v16 = [objc_allocWithZone(NSCondition) init];
    result = v15;
    *(v15 + 16) = 0;
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 88) = v16;
    *(v15 + 112) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    *(v15 + 52) = 0;
    *(v15 + 56) = 513;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    goto LABEL_13;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_10039D700 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A57D8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Get GlobalState from UserDefaults key stateInfo", v11, 2u);
  }

  type metadata accessor for JSONDecoder();
  sub_10009A814(&_swiftEmptyArrayStorage);
  sub_100174EE8();
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

  v32 = v29[0];
  v33 = v29[1];
  v34[0] = v30[0];
  *(v34 + 9) = *(v30 + 9);
  sub_100174D04(&v32, v29);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  sub_1001737E8(&v32);
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v29[0] = v22;
    *v21 = 136315138;
    v23 = sub_1001728B0();
    v25 = sub_100008F6C(v23, v24, v29);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "stateInfo: %s", v21, 0xCu);
    sub_10000959C(v22);
  }

  type metadata accessor for GlobalState();
  v26 = swift_allocObject();
  v27 = [objc_allocWithZone(NSCondition) init];

  sub_100009548(v5, v7);
  result = v26;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 88) = v27;
  *(v26 + 112) = 0;
  v28 = v33;
  *(v26 + 16) = v32;
  *(v26 + 32) = v28;
  *(v26 + 48) = v34[0];
  *(v26 + 57) = *(v34 + 9);
LABEL_13:
  *(result + 80) = 0;
  return result;
}

uint64_t static GlobalState.shared.getter()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }
}

uint64_t GlobalState.deinit()
{
  v1 = *(v0 + 64);

  return v0;
}

uint64_t GlobalState.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_100173EA8()
{
  v0 = [objc_opt_self() enumeratorWithOptions:0];
  v1 = [v0 nextObject];
  if (v1)
  {
    v20 = 1;
    v21 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v2 = v1;
      v3 = [v2 entitlements];
      v4 = String._bridgeToObjectiveC()();
      sub_10000411C(0, &qword_10039E280, NSObject_ptr);
      v5 = [v3 objectForKey:v4 ofClass:swift_getObjCClassFromMetadata()];

      if (v5)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25[0] = v23;
      v25[1] = v24;
      if (![v2 isDeletable])
      {
        break;
      }

      sub_100065074(v25, &v23, &qword_10039E248, &qword_1002C23D0);
      if (!*(&v24 + 1))
      {

        sub_10000BD44(&v23, &qword_10039E248, &qword_1002C23D0);
        goto LABEL_18;
      }

      if (!swift_dynamicCast() || (v22 & 1) == 0)
      {
        break;
      }

      v6 = [v2 bundleIdentifier];

      if (v6)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10004D4B0(0, *(v21 + 2) + 1, 1, v21);
        }

        v10 = *(v21 + 2);
        v9 = *(v21 + 3);
        if (v10 >= v9 >> 1)
        {
          v21 = sub_10004D4B0((v9 > 1), v10 + 1, 1, v21);
        }

        sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
        *(v21 + 2) = v10 + 1;
        v11 = &v21[16 * v10];
        *(v11 + 4) = v19;
        *(v11 + 5) = v8;
      }

      else
      {
        *&v23 = v20;
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        *&v23 = 0x236E776F6E6B6E55;
        *(&v23 + 1) = 0xE800000000000000;
        String.append(_:)(v12);

        v13 = *(&v23 + 1);
        v19 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10004D4B0(0, *(v21 + 2) + 1, 1, v21);
        }

        v15 = *(v21 + 2);
        v14 = *(v21 + 3);
        if (v15 >= v14 >> 1)
        {
          v21 = sub_10004D4B0((v14 > 1), v15 + 1, 1, v21);
        }

        result = sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
        *(v21 + 2) = v15 + 1;
        v17 = &v21[16 * v15];
        *(v17 + 4) = v19;
        *(v17 + 5) = v13;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
          return result;
        }
      }

LABEL_19:
      v1 = [v0 nextObject];
      if (!v1)
      {
        goto LABEL_29;
      }
    }

LABEL_18:
    sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_19;
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_29:

  return v21;
}

__n128 sub_1001742A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001742C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10017431C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

double sub_100174390(uint64_t *a1)
{
  v2 = sub_100004074(&qword_1003A5930, &qword_1002CA128);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100175104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_10000959C(a1);
  return v9;
}

uint64_t sub_10017453C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73746E65696C43;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44464D7473616CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465736552637472 && a2 == 0xED0000746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572504E41507369 && a2 == 0xEC000000746E6573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617355707061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100353070 == a2)
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

uint64_t sub_100174754@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A58B8, &qword_1002C9EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v52 = 1;
  v50 = 1;
  v47 = 1;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100174BF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
    v31 = 0;
    LOBYTE(v32) = v52;
    *(&v32 + 1) = *v51;
    HIDWORD(v32) = *&v51[3];
    v33 = 0;
    v34 = 0;
    v35 = v50;
    v36 = v48;
    v37 = v49;
    v38 = 0;
    v39 = v47;
    v40 = 2;
    v41 = v45;
    v42 = v46;
    v43 = 0;
    v44 = 2;
    return sub_1001737E8(&v31);
  }

  else
  {
    LOBYTE(v31) = 0;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v11 & 1;
    LOBYTE(v27) = 1;
    sub_100155B3C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v32;
    v26 = v31;
    v50 = v33;
    LOBYTE(v31) = 2;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v24 = a2;
    v47 = BYTE4(v12) & 1;
    LOBYTE(v31) = 3;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004074(&qword_1003A58C8, &qword_1002C9EF0);
    LOBYTE(v27) = 4;
    sub_100174C48();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = v31;
    v30 = 5;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *&v27 = v53;
    HIDWORD(v23) = v52;
    BYTE8(v27) = v52;
    v17 = v25;
    *&v28 = v26;
    *(&v28 + 1) = v25;
    v18 = v50;
    v29[0] = v50;
    *&v29[4] = v13;
    v19 = v47;
    v29[8] = v47;
    v29[9] = v14;
    *&v29[16] = v15;
    v29[24] = v16;
    sub_100174D04(&v27, &v31);
    sub_10000959C(a1);
    v31 = v53;
    LOBYTE(v32) = BYTE4(v23);
    v33 = v26;
    v34 = v17;
    v35 = v18;
    v38 = v13;
    v39 = v19;
    v40 = v14;
    v43 = v15;
    v44 = v16;
    result = sub_1001737E8(&v31);
    v21 = v28;
    v22 = v24;
    *v24 = v27;
    v22[1] = v21;
    v22[2] = *v29;
    *(v22 + 41) = *&v29[9];
  }

  return result;
}

unint64_t sub_100174BF4()
{
  result = qword_1003A58C0;
  if (!qword_1003A58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58C0);
  }

  return result;
}

unint64_t sub_100174C48()
{
  result = qword_1003A58D0;
  if (!qword_1003A58D0)
  {
    sub_1000040BC(&qword_1003A58C8, &qword_1002C9EF0);
    sub_100174E4C(&qword_1003A58D8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58D0);
  }

  return result;
}

unint64_t sub_100174D3C()
{
  result = qword_1003A58E8;
  if (!qword_1003A58E8)
  {
    sub_1000040BC(&qword_1003A58C8, &qword_1002C9EF0);
    sub_100174E4C(&qword_1003A58F0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58E8);
  }

  return result;
}

unint64_t sub_100174DF8()
{
  result = qword_1003A58F8;
  if (!qword_1003A58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58F8);
  }

  return result;
}

uint64_t sub_100174E4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100174E94()
{
  result = qword_1003A5900;
  if (!qword_1003A5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5900);
  }

  return result;
}

unint64_t sub_100174EE8()
{
  result = qword_1003A5908;
  if (!qword_1003A5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SPRTimestamp(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SPRTimestamp(uint64_t result, int a2, int a3)
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

unint64_t sub_100174FA8()
{
  result = qword_1003A5910;
  if (!qword_1003A5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5910);
  }

  return result;
}

unint64_t sub_100175000()
{
  result = qword_1003A5918;
  if (!qword_1003A5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5918);
  }

  return result;
}

unint64_t sub_100175058()
{
  result = qword_1003A5920;
  if (!qword_1003A5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5920);
  }

  return result;
}

unint64_t sub_1001750B0()
{
  result = qword_1003A5928;
  if (!qword_1003A5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5928);
  }

  return result;
}

unint64_t sub_100175104()
{
  result = qword_1003A5938;
  if (!qword_1003A5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5938);
  }

  return result;
}

unint64_t sub_10017516C()
{
  result = qword_1003A5948;
  if (!qword_1003A5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5948);
  }

  return result;
}

unint64_t sub_1001751C4()
{
  result = qword_1003A5950;
  if (!qword_1003A5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5950);
  }

  return result;
}

unint64_t sub_10017521C()
{
  result = qword_1003A5958;
  if (!qword_1003A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5958);
  }

  return result;
}

uint64_t sub_100175270@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for Logger();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v42 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - v17;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v21 = *(v1 + 104);
  if (*(v1 + 120))
  {
    static Date.distantPast.getter();
  }

  else
  {
    v22 = *(v1 + 112);
    Date.init(timeIntervalSince1970:)();
  }

  Date.init(timeIntervalSince1970:)();
  static Date.- infix(_:_:)();
  v23 = *(v6 + 8);
  v23(v15, v5);
  if (static Date.< infix(_:_:)())
  {
    v48 = v23;
    v49 = v2;
    sub_100023B24();
    v24 = v51;
    static SPRLogger.common.getter();
    v47 = *(v6 + 16);
    v47(v12, v20, v5);
    v25 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v45))
    {
      v26 = swift_slowAlloc();
      v42 = v12;
      v27 = v26;
      v46 = v26;
      v44 = swift_slowAlloc();
      v54[0] = v44;
      *v27 = 136315394;
      swift_beginAccess();
      sub_10008BFA8();
      v43 = v25;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = sub_100008F6C(v28, v29, v54);

      v31 = v46;
      *(v46 + 4) = v30;
      *(v31 + 12) = 2080;
      v32 = v42;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = v32;
      v23 = v48;
      v48(v36, v5);
      v37 = sub_100008F6C(v33, v35, v54);

      v38 = v46;
      *(v46 + 14) = v37;
      v39 = v43;
      _os_log_impl(&_mh_execute_header, v43, v45, "Invalid JWT: exp %s is before nbf %s, replacing exp with nbf.", v38, 0x16u);
      swift_arrayDestroy();

      (*(v50 + 8))(v51, v49);
    }

    else
    {

      v23 = v48;
      v48(v12, v5);
      (*(v50 + 8))(v24, v49);
    }

    swift_beginAccess();
    (*(v6 + 24))(v18, v20, v5);
    v40 = v47;
    v47(v15, v20, v5);
  }

  else
  {
    v40 = *(v6 + 16);
    v40(v15, v20, v5);
  }

  swift_beginAccess();
  v40(v52, v18, v5);
  DateInterval.init(start:end:)();
  v23(v20, v5);
  return (v23)(v18, v5);
}

uint64_t static JSONWebToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v4 != v8 || v6 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10 || (v5 != v11 || v7 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(a1 + 192);
  v30[8] = *(a1 + 176);
  v30[9] = v12;
  v13 = *(a1 + 224);
  v30[10] = *(a1 + 208);
  v30[11] = v13;
  v14 = *(a1 + 128);
  v30[4] = *(a1 + 112);
  v30[5] = v14;
  v15 = *(a1 + 160);
  v30[6] = *(a1 + 144);
  v30[7] = v15;
  v16 = *(a1 + 64);
  v30[0] = *(a1 + 48);
  v30[1] = v16;
  v17 = *(a1 + 96);
  v30[2] = *(a1 + 80);
  v30[3] = v17;
  v18 = *(a2 + 192);
  v29[8] = *(a2 + 176);
  v29[9] = v18;
  v19 = *(a2 + 224);
  v29[10] = *(a2 + 208);
  v29[11] = v19;
  v20 = *(a2 + 128);
  v29[4] = *(a2 + 112);
  v29[5] = v20;
  v21 = *(a2 + 160);
  v29[6] = *(a2 + 144);
  v29[7] = v21;
  v22 = *(a2 + 64);
  v29[0] = *(a2 + 48);
  v29[1] = v22;
  v23 = *(a2 + 96);
  v29[2] = *(a2 + 80);
  v29[3] = v23;
  if (!sub_1001769F4(v30, v29))
  {
    return 0;
  }

  v24 = *(a1 + 240);
  v25 = *(a1 + 248);
  v26 = *(a2 + 240);
  v27 = *(a2 + 248);

  return sub_10017688C(v24, v25, v26, v27);
}

uint64_t sub_1001758E8(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A5998, &qword_1002CA688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100178AF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100175A88(char a1)
{
  result = 7566185;
  switch(a1)
  {
    case 1:
      result = 6583649;
      break;
    case 2:
      result = 6911082;
      break;
    case 3:
      result = 7627113;
      break;
    case 4:
      result = 7370853;
      break;
    case 5:
      result = 6709870;
      break;
    case 6:
      result = 6452595;
      break;
    case 7:
      result = 1684628851;
      break;
    case 8:
      result = 6580592;
      break;
    case 9:
      result = 1684631668;
      break;
    case 10:
      result = 0x64697074666173;
      break;
    case 11:
      result = 1953853539;
      break;
    case 12:
      result = 1802531681;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100175BA4(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A59A8, &qword_1002CA690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36[-v8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100178B4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v36[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v36[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v36[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v36[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    v36[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = *(v3 + 72);
    v36[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[10];
    v22 = v3[11];
    v36[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[12];
    v24 = v3[13];
    v36[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v3[14];
    v26 = v3[15];
    v36[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[16];
    v28 = v3[17];
    v36[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v3[18];
    v30 = v3[19];
    v36[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = v3[20];
    v32 = v3[21];
    v36[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = v3[22];
    v34 = v3[23];
    v36[3] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100175EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001773A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100175EE0(uint64_t a1)
{
  v2 = sub_100178AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100175F1C(uint64_t a1)
{
  v2 = sub_100178AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100175F58(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v6 && v4 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_10017603C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001774B8(a1, v6);
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

uint64_t sub_1001760A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100177704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001760D4(uint64_t a1)
{
  v2 = sub_100178B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100176110(uint64_t a1)
{
  v2 = sub_100178B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10017614C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_1001769F4(v15, v16);
}

double sub_1001761E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100177B04(a1, v11);
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

uint64_t sub_10017625C()
{
  v1 = 0x726564616568;
  v2 = 0x727574616E676973;
  if (*v0 != 2)
  {
    v2 = 0x65756C6156776172;
  }

  if (*v0)
  {
    v1 = 0x736D69616C63;
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

uint64_t sub_1001762D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100178234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001762FC(uint64_t a1)
{
  v2 = sub_100176C74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100176338(uint64_t a1)
{
  v2 = sub_100176C74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t JSONWebToken.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_100004074(&qword_1003A5960, &qword_1002CA240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29[-v7 - 8];
  v9 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100176C74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[1];
  v33 = *v2;
  v34 = v10;
  v35 = v2[2];
  LOBYTE(v31[0]) = 0;
  sub_100176CC8();
  v11 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v12 = v2[12];
    v13 = v2[10];
    v53 = v2[11];
    v54 = v12;
    v14 = v2[12];
    v15 = v2[14];
    v55 = v2[13];
    v56 = v15;
    v16 = v2[8];
    v17 = v2[6];
    v49 = v2[7];
    v50 = v16;
    v18 = v2[8];
    v19 = v2[10];
    v51 = v2[9];
    v52 = v19;
    v20 = v2[4];
    v46[0] = v2[3];
    v46[1] = v20;
    v21 = v2[6];
    v23 = v2[3];
    v22 = v2[4];
    v47 = v2[5];
    v48 = v21;
    v41 = v53;
    v42 = v14;
    v24 = v2[14];
    v43 = v55;
    v44 = v24;
    v37 = v49;
    v38 = v18;
    v39 = v51;
    v40 = v13;
    v33 = v23;
    v34 = v22;
    v35 = v47;
    v36 = v17;
    v32 = 1;
    sub_100176D1C(v46, v31);
    sub_100176D54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31[8] = v41;
    v31[9] = v42;
    v31[10] = v43;
    v31[11] = v44;
    v31[4] = v37;
    v31[5] = v38;
    v31[6] = v39;
    v31[7] = v40;
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    sub_100176DA8(v31);
    v45 = v2[15];
    v30 = v2[15];
    v29[23] = 2;
    sub_1000A1E00(&v45, v29);
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v30, *(&v30 + 1));
    v25 = *(v2 + 32);
    v26 = *(v2 + 33);
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

void *JSONWebToken.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100178398(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x110uLL);
  }

  return result;
}

uint64_t sub_1001766D0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 12);
  v33[8] = *(a1 + 11);
  v33[9] = v10;
  v11 = *(a1 + 14);
  v33[10] = *(a1 + 13);
  v33[11] = v11;
  v12 = *(a1 + 8);
  v33[4] = *(a1 + 7);
  v33[5] = v12;
  v13 = *(a1 + 10);
  v33[6] = *(a1 + 9);
  v33[7] = v13;
  v14 = *(a1 + 4);
  v33[0] = *(a1 + 3);
  v33[1] = v14;
  v15 = *(a1 + 6);
  v33[2] = *(a1 + 5);
  v33[3] = v15;
  v31 = a1[31];
  v32 = a1[30];
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v20 = a2[5];
  v22 = *(a2 + 12);
  v34[8] = *(a2 + 11);
  v34[9] = v22;
  v23 = *(a2 + 14);
  v34[10] = *(a2 + 13);
  v34[11] = v23;
  v24 = *(a2 + 8);
  v34[4] = *(a2 + 7);
  v34[5] = v24;
  v25 = *(a2 + 10);
  v34[6] = *(a2 + 9);
  v34[7] = v25;
  v26 = *(a2 + 4);
  v34[0] = *(a2 + 3);
  v34[1] = v26;
  v27 = *(a2 + 6);
  v34[2] = *(a2 + 5);
  v34[3] = v27;
  v28 = a2[30];
  v29 = a2[31];
  if ((v4 != v16 || v5 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v6 != v18 || v8 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    if (!v20 || (v7 != v21 || v9 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (!sub_1001769F4(v33, v34))
  {
    return 0;
  }

  return sub_10017688C(v32, v31, v28, v29);
}

uint64_t sub_10017688C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000094F4(a3, a4);
          return sub_10004D320(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1001769F4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a1 + 88);
  v8 = *(a2 + 88);
  if (v7)
  {
    if (!v8 || (*(a1 + 80) != *(a2 + 80) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 104);
  v10 = *(a2 + 104);
  if (v9)
  {
    if (!v10 || (*(a1 + 96) != *(a2 + 96) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 120);
  v12 = *(a2 + 120);
  if (v11)
  {
    if (!v12 || (*(a1 + 112) != *(a2 + 112) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 136);
  v14 = *(a2 + 136);
  if (v13)
  {
    if (!v14 || (*(a1 + 128) != *(a2 + 128) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 152);
  v16 = *(a2 + 152);
  if (v15)
  {
    if (!v16 || (*(a1 + 144) != *(a2 + 144) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 168);
  v18 = *(a2 + 168);
  if (v17)
  {
    if (!v18 || (*(a1 + 160) != *(a2 + 160) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 184);
  v20 = *(a2 + 184);
  if (v19)
  {
    return v20 && (*(a1 + 176) == *(a2 + 176) && v19 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v20;
}

unint64_t sub_100176C74()
{
  result = qword_1003A5968;
  if (!qword_1003A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5968);
  }

  return result;
}

unint64_t sub_100176CC8()
{
  result = qword_1003A5970;
  if (!qword_1003A5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5970);
  }

  return result;
}

unint64_t sub_100176D54()
{
  result = qword_1003A5978;
  if (!qword_1003A5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5978);
  }

  return result;
}

void *sub_100176DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  *&v34[0] = a1;
  *(&v34[0] + 1) = a2;
  *&__src[0] = 46;
  *(&__src[0] + 1) = 0xE100000000000000;
  sub_10008AB88();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = v8;
  if (v8[2] != 3)
  {

    v14 = 0xD000000000000014;
    v15 = 0x80000001003530B0;
LABEL_13:
    sub_100020C74(10005, v14, v15, 0);
    return swift_willThrow();
  }

  v10 = v8[4];
  v11 = v8[5];

  result = Data.init(base64urlEncoded:options:)();
  if (v13 >> 60 == 15)
  {

LABEL_12:
    v15 = 0x80000001003530D0;
    v14 = 0xD000000000000012;
    goto LABEL_13;
  }

  if (v9[2] < 2uLL)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = v13;
  v18 = v9[6];
  v19 = v9[7];

  result = Data.init(base64urlEncoded:options:)();
  if (v20 >> 60 == 15)
  {

LABEL_11:
    sub_10001A074(v16, v17);
    goto LABEL_12;
  }

  v31 = result;
  v49 = v20;
  if (v9[2] < 3uLL)
  {
    goto LABEL_18;
  }

  v21 = v9[8];
  v22 = v9[9];

  v23 = Data.init(base64urlEncoded:options:)();
  if (v24 >> 60 == 15)
  {

    sub_10001A074(v31, v49);
    goto LABEL_11;
  }

  *&v30 = v23;
  *(&v30 + 1) = v24;
  v25 = type metadata accessor for JSONDecoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v28 = objc_autoreleasePoolPush();
  sub_100178BA0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {

    objc_autoreleasePoolPop(v28);

    swift_errorRetain();
    sub_100020C74(10005, 0x636564204E4F534ALL, 0xED0000676E69646FLL, v4);

    swift_willThrow();
    sub_10001A074(v16, v17);
    sub_10001A074(v31, v49);
    sub_10001A074(v30, *(&v30 + 1));
  }

  else
  {
    objc_autoreleasePoolPop(v28);
    v29 = objc_autoreleasePoolPush();
    sub_100178BF4();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    objc_autoreleasePoolPop(v29);
    sub_10001A074(v31, v49);
    sub_10001A074(v16, v17);

    v34[11] = v45;
    v34[12] = v46;
    v34[13] = v47;
    v34[14] = v48;
    v34[7] = v41;
    v34[8] = v42;
    v34[9] = v43;
    v34[10] = v44;
    v34[3] = v37;
    v34[4] = v38;
    v34[5] = v39;
    v34[6] = v40;
    __src[11] = v45;
    __src[12] = v46;
    __src[13] = v47;
    __src[14] = v48;
    __src[7] = v41;
    __src[8] = v42;
    __src[9] = v43;
    __src[10] = v44;
    __src[3] = v37;
    __src[4] = v38;
    __src[0] = v34[0];
    __src[1] = v34[1];
    __src[2] = v34[2];
    __src[5] = v39;
    __src[6] = v40;
    __src[15] = v30;
    *&__src[16] = a1;
    *(&__src[16] + 1) = a2;
    v34[15] = v30;
    v35 = a1;
    v36 = a2;
    sub_100034958(__src, v32);
    sub_10008C3EC(v34);
    return memcpy(a3, __src, 0x110uLL);
  }
}

uint64_t sub_1001773A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7371124 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6777953 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6580587 && a2 == 0xE300000000000000)
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

uint64_t sub_1001774B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A59D0, &qword_1002CA6A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100178AF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000959C(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t sub_100177704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7566185 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6583649 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6911082 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7627113 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7370853 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6709870 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 6452595 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1684628851 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1684631668 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64697074666173 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1953853539 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1802531681 && a2 == 0xE400000000000000)
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

uint64_t sub_100177B04@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v64 = sub_100004074(&qword_1003A59C8, &qword_1002CA698);
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v64);
  v8 = &v40 - v7;
  v9 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100178B4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v10 = v5;
  v63 = a2;
  LOBYTE(v77[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = v12;
  LOBYTE(v77[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = v14;
  v57 = v13;
  LOBYTE(v77[0]) = 2;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v60 = v15;
  LOBYTE(v77[0]) = 3;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v77[0]) = 4;
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v77[0]) = 5;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v93 = v16 & 1;
  LOBYTE(v77[0]) = 6;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = v17;
  LOBYTE(v77[0]) = 7;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v58 = v18;
  LOBYTE(v77[0]) = 8;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v51 = v19;
  LOBYTE(v77[0]) = 9;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v21;
  v22 = v20;
  LOBYTE(v77[0]) = 10;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v23;
  LOBYTE(v77[0]) = 11;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v24;
  v94 = 12;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v26;
  v43 = v25;
  (*(v10 + 8))(v8, v64);
  *&v65 = v11;
  *(&v65 + 1) = v62;
  *&v66 = v57;
  *(&v66 + 1) = v61;
  v27 = v59;
  *&v67 = v56;
  *(&v67 + 1) = v60;
  *&v68 = v55;
  *(&v68 + 1) = v54;
  *&v69 = v53;
  LODWORD(v64) = v93;
  BYTE8(v69) = v93;
  v28 = v51;
  *&v70 = v52;
  *(&v70 + 1) = v59;
  v29 = v58;
  *&v71 = v50;
  *(&v71 + 1) = v58;
  *&v72 = v49;
  *(&v72 + 1) = v51;
  v41 = v22;
  *&v73 = v22;
  v31 = v47;
  v30 = v48;
  *(&v73 + 1) = v48;
  *&v74 = v45;
  *(&v74 + 1) = v47;
  *&v75 = v44;
  *(&v75 + 1) = v46;
  *&v76 = v43;
  *(&v76 + 1) = v42;
  sub_100176D1C(&v65, v77);
  sub_10000959C(a1);
  v77[0] = v11;
  v77[1] = v62;
  v77[2] = v57;
  v77[3] = v61;
  v77[4] = v56;
  v77[5] = v60;
  v77[6] = v55;
  v77[7] = v54;
  v77[8] = v53;
  v78 = v64;
  v79 = v52;
  v80 = v27;
  v81 = v50;
  v82 = v29;
  v83 = v49;
  v84 = v28;
  v85 = v41;
  v86 = v30;
  v87 = v45;
  v88 = v31;
  v89 = v44;
  v90 = v46;
  v91 = v43;
  v92 = v42;
  result = sub_100176DA8(v77);
  v33 = v74;
  v34 = v63;
  v63[8] = v73;
  v34[9] = v33;
  v35 = v76;
  v34[10] = v75;
  v34[11] = v35;
  v36 = v70;
  v34[4] = v69;
  v34[5] = v36;
  v37 = v72;
  v34[6] = v71;
  v34[7] = v37;
  v38 = v66;
  *v34 = v65;
  v34[1] = v38;
  v39 = v68;
  v34[2] = v67;
  v34[3] = v39;
  return result;
}

uint64_t sub_100178234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D69616C63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

void *sub_100178398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A59D8, &qword_1002CA6A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v38 = a1;
  sub_10000BE18(a1, v10);
  sub_100176C74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(v38);
  }

  v12 = v6;
  v37 = a2;
  LOBYTE(v39[0]) = 0;
  sub_100178BA0();
  v13 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v40;
  v15 = v42;
  v34 = v43;
  v35 = v41;
  v16 = v44;
  v36 = v45;
  v87 = 1;
  sub_100178BF4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v15;
  v33 = v14;
  v31 = v16;
  v82 = v70;
  v83 = v71;
  v84 = v72;
  v85 = v73;
  v78 = v66;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  LOBYTE(v39[0]) = 2;
  sub_100100278();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v33;
  v18 = v40;
  v30 = v41;
  v86 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  (*(v12 + 8))(v9, v13);
  v22 = v18;
  v29 = v18;
  v24 = v34;
  v23 = v35;
  *&v39[0] = v17;
  *(&v39[0] + 1) = v35;
  v26 = v31;
  v25 = v32;
  *&v39[1] = v32;
  *(&v39[1] + 1) = v34;
  v27 = v36;
  *&v39[2] = v31;
  *(&v39[2] + 1) = v36;
  v39[11] = v82;
  v39[12] = v83;
  v39[13] = v84;
  v39[14] = v85;
  v39[7] = v78;
  v39[8] = v79;
  v39[9] = v80;
  v39[10] = v81;
  v39[3] = v74;
  v39[4] = v75;
  v39[5] = v76;
  v39[6] = v77;
  v39[15] = __PAIR128__(v30, v22);
  *&v39[16] = v19;
  *(&v39[16] + 1) = v21;
  sub_100034958(v39, &v40);
  sub_10000959C(v38);
  v40 = v33;
  v41 = v23;
  v42 = v25;
  v43 = v24;
  v44 = v26;
  v45 = v27;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v50 = v78;
  v51 = v79;
  v52 = v80;
  v53 = v81;
  v46 = v74;
  v47 = v75;
  v48 = v76;
  v49 = v77;
  v58 = v29;
  v59 = v30;
  v60 = v19;
  v61 = v21;
  sub_10008C3EC(&v40);
  return memcpy(v37, v39, 0x110uLL);
}

uint64_t sub_1001787F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_100178840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001788D4(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100178908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_100178950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001789F4()
{
  result = qword_1003A5980;
  if (!qword_1003A5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5980);
  }

  return result;
}

unint64_t sub_100178A4C()
{
  result = qword_1003A5988;
  if (!qword_1003A5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5988);
  }

  return result;
}

unint64_t sub_100178AA4()
{
  result = qword_1003A5990;
  if (!qword_1003A5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5990);
  }

  return result;
}

unint64_t sub_100178AF8()
{
  result = qword_1003A59A0;
  if (!qword_1003A59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59A0);
  }

  return result;
}

unint64_t sub_100178B4C()
{
  result = qword_1003A59B0;
  if (!qword_1003A59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59B0);
  }

  return result;
}

unint64_t sub_100178BA0()
{
  result = qword_1003A59B8;
  if (!qword_1003A59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59B8);
  }

  return result;
}

unint64_t sub_100178BF4()
{
  result = qword_1003A59C0;
  if (!qword_1003A59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JWTClaims.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JWTClaims.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100178DAC()
{
  result = qword_1003A59E0;
  if (!qword_1003A59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59E0);
  }

  return result;
}

unint64_t sub_100178E04()
{
  result = qword_1003A59E8;
  if (!qword_1003A59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59E8);
  }

  return result;
}

unint64_t sub_100178E5C()
{
  result = qword_1003A59F0;
  if (!qword_1003A59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59F0);
  }

  return result;
}

unint64_t sub_100178EB4()
{
  result = qword_1003A59F8;
  if (!qword_1003A59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59F8);
  }

  return result;
}

unint64_t sub_100178F0C()
{
  result = qword_1003A5A00;
  if (!qword_1003A5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5A00);
  }

  return result;
}

unint64_t sub_100178F64()
{
  result = qword_1003A5A08;
  if (!qword_1003A5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5A08);
  }

  return result;
}

double sub_100178FB8@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000F5B08(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100182894();
      v11 = v13;
    }

    sub_100019D3C((*(v11 + 56) + 32 * v8), a2);
    sub_10017C00C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10017904C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A5A10);
  sub_10000403C(v0, qword_1003A5A10);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

void *sub_1001790B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[3];
  static DispatchWorkItemFlags.barrier.getter();
  v13 = v1;
  v14 = v2;
  OS_dispatch_queue.sync<A>(flags:execute:)();

  (*(v4 + 8))(v7, v3);
  v9 = v1[2];

  v10 = v1[4];

  return v1;
}

uint64_t sub_10017921C(void *a1)
{
  if (qword_10039D710 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A5A10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v21);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v21);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  a1 = a1[4];
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & a1[8];
  v15 = (v12 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(a1[7] + ((v17 << 9) | (8 * v18)));

      dispatch thunk of DispatchWorkItem.cancel()();

      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = a1[v17 + 8];
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }
}

uint64_t sub_10017949C()
{
  sub_1001790B8();

  return swift_deallocClassInstance();
}

double sub_1001794F4@<D0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_1000F5B08(a2), (v8 & 1) != 0))
  {
    sub_10000BDA4(*(v6 + 56) + 32 * v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_10017957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v57 = a4;
  v58 = a5;
  v10 = type metadata accessor for DispatchTime();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v12 = __chkstk_darwin(v10);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v56 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v56 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v64 = a1;
  v18 = sub_10017AF7C(a2);
  swift_endAccess();
  if (v18)
  {
    if (qword_10039D710 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000403C(v19, qword_1003A5A10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      LODWORD(v60) = a2;
      v24 = v23;
      aBlock[0] = v23;
      *v22 = 136315138;
      LOBYTE(v66) = v60;
      v25 = String.init<A>(describing:)();
      v27 = sub_100008F6C(v25, v26, aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "DefaultManagedDictionary Found workItem for key: %s. Cancelling it...", v22, 0xCu);
      sub_10000959C(v24);
      a2 = v60;
    }

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  sub_10000BDA4(a3, aBlock);
  swift_beginAccess();
  sub_10002D584(aBlock, a2);
  swift_endAccess();
  if (qword_10039D710 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v60 = sub_10000403C(v28, qword_1003A5A10);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    LOBYTE(v66) = a2;
    v33 = String.init<A>(describing:)();
    v35 = a2;
    a2 = sub_100008F6C(v33, v34, aBlock);

    *(v31 + 4) = a2;
    LOBYTE(a2) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "DefaultManagedDictionary updated value for key: %s", v31, 0xCu);
    sub_10000959C(v32);
  }

  if (a6 > 0.0)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = a6;
      _os_log_impl(&_mh_execute_header, v36, v37, "DefaultManagedDictionary updateValue duration: %f", v38, 0xCu);
    }

    static DispatchWorkItemFlags.barrier.getter();
    v39 = swift_allocObject();
    v40 = v64;
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = a2;
    v43 = v57;
    v42 = v58;
    *(v41 + 32) = v57;
    *(v41 + 40) = v42;
    aBlock[4] = sub_10017B0B0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100386200;
    _Block_copy(aBlock);
    v44 = type metadata accessor for DispatchWorkItem();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();

    sub_1000696D8(v43);
    v47 = DispatchWorkItem.init(flags:block:)();

    swift_beginAccess();

    v48 = *(v40 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v40 + 32);
    *(v40 + 32) = 0x8000000000000000;
    sub_10018093C(v47, a2, isUniquelyReferenced_nonNull_native);
    *(v40 + 32) = v66;
    swift_endAccess();
    v50 = *(v40 + 24);
    v51 = v59;
    static DispatchTime.now()();
    v52 = v61;
    + infix(_:_:)();
    v53 = *(v62 + 8);
    v54 = v51;
    v55 = v63;
    v53(v54, v63);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v53(v52, v55);
  }
}

void sub_100179BF4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v41 = v17;
    swift_beginAccess();
    sub_10017AF7C(a2);
    swift_endAccess();

    swift_beginAccess();
    sub_100178FB8(a2, &aBlock);
    sub_10009E294(&aBlock);
    swift_endAccess();
    if (qword_10039D710 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000403C(v20, qword_1003A5A10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39 = v15;
      v24 = v23;
      v25 = swift_slowAlloc();
      v40 = a4;
      v38 = v25;
      *&aBlock = v25;
      *v24 = 136315138;
      LOBYTE(v46) = a2;
      v26 = String.init<A>(describing:)();
      v28 = v16;
      v29 = v8;
      v30 = v7;
      v31 = a3;
      v32 = sub_100008F6C(v26, v27, &aBlock);

      *(v24 + 4) = v32;
      a3 = v31;
      v7 = v30;
      v8 = v29;
      v16 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "DefaultManagedDictionary removed value for key: %s", v24, 0xCu);
      sub_10000959C(v38);
      a4 = v40;

      v15 = v39;
    }

    v17 = v41;
  }

  if (a3)
  {
    sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
    v33 = v42;
    (*(v17 + 104))(v42, enum case for DispatchQoS.QoSClass.background(_:), v16);

    v34 = static OS_dispatch_queue.global(qos:)();
    (*(v17 + 8))(v33, v16);
    v50 = a3;
    v51 = a4;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v48 = sub_100003974;
    v49 = &unk_100386228;
    v35 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_10017C4C0();
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_100150BA0();
    v36 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    sub_1000048A0(a3);
    (*(v8 + 8))(v36, v7);
    (*(v44 + 8))(v15, v43);
  }
}

uint64_t sub_10017A138(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1[3];
  static DispatchWorkItemFlags.barrier.getter();
  v12[16] = a1;
  v13 = v2;
  v14 = v4;
  sub_100004074(&qword_10039E248, &qword_1002C23D0);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10017A28C@<X0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  if (qword_10039D710 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A5A10);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = a1;
    v11 = sub_100008F6C(v8, v9, v29);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = a2;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    *(v13 + 56) = &type metadata for ManagedDictionaryKey;
    *(v13 + 32) = v10;
    v14 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100353170, v13);
    v16 = v15;

    v17 = v14;
    a1 = v10;
    v18 = sub_100008F6C(v17, v16, v29);
    a2 = v12;

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v19 = sub_10017AF7C(a1);
  swift_endAccess();
  if (v19)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v28 = a2;
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315138;
      v30 = a1;
      v24 = String.init<A>(describing:)();
      v26 = sub_100008F6C(v24, v25, v29);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "DefaultManagedDictionary cancel workitem for key: %s", v22, 0xCu);
      sub_10000959C(v23);
      a2 = v28;
    }

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  swift_beginAccess();
  sub_100178FB8(a1, a2);
  return swift_endAccess();
}

void *sub_10017A614()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v1[2] = sub_100183470(&_swiftEmptyArrayStorage);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = sub_10018358C(&_swiftEmptyArrayStorage);
  return v1;
}

uint64_t sub_10017A800(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v5;
  v17 = *(*v5 + 24);
  static DispatchWorkItemFlags.barrier.getter();
  v20 = v16;
  v21 = a2;
  v22 = a1;
  v23 = a5;
  v24 = a3;
  v25 = a4;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10017A944()
{
  v1 = *(*v0 + 24);
  sub_100004074(&qword_10039E248, &qword_1002C23D0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

double sub_10017A9E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000F5A28(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001811FC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100019D3C((*(v12 + 56) + 32 * v9), a3);
    sub_10017B0D8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_10017AA84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000F5A28(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001813A0();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_10017B288(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
  }

  return result;
}

uint64_t sub_10017AB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000F5A28(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001816C0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for StopWatch();
    v22 = *(v15 - 8);
    sub_10002F15C(v14 + *(v22 + 72) * v9, a3);
    sub_10017BC84(v9, v12, type metadata accessor for StopWatch);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for StopWatch();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_10017ACA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000F5CE0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001818F0();
      v12 = v14;
    }

    sub_100009548(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_10017B458(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1002C3C70;
  }

  return result;
}

double sub_10017AD58@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000F8840(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018208C();
      v11 = v13;
    }

    sub_100019D3C((*(v11 + 56) + 32 * v8), a2);
    sub_10017BABC(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10017ADF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000F5A28(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001824B8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_10017BC84(v9, v12, &type metadata accessor for Date);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10017AF7C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000F5B08(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100182738();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_10017BE78(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_10017B030()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017B068()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10017B0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017B0D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10017B288(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (40 * v3 < (40 * v6) || v21 >= v22 + 40 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10017B458(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_1000094F4(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_100009548(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10017B614(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10017B7C4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10017BABC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v12 = v11;
      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_10017BC84(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10017BE78(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10017C00C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10017C1A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10017C310(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10017C4C0()
{
  result = qword_10039E2A0;
  if (!qword_10039E2A0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2A0);
  }

  return result;
}

uint64_t sub_10017C534@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_10017A28C(*(v1 + 16), a1);
}

unint64_t sub_10017C568()
{
  result = qword_1003A5B38;
  if (!qword_1003A5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5B38);
  }

  return result;
}

uint64_t NamedError.init(_:reason:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[1] = a7;
  v30[2] = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = v30 - v16;
  v34 = (*(a6 + 16))(a1, a5, a6);
  v35 = v18;
  if (a3)
  {
    v32._countAndFlagsBits = 8250;
    v32._object = 0xE200000000000000;
    v19._countAndFlagsBits = a2;
    v19._object = a3;
    String.append(_:)(v19);

    String.append(_:)(v32);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v21;
  v22 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v22;
  v23 = sub_100182BA0(inited);
  swift_setDeallocating();
  sub_1000990BC(inited + 32);
  if (a4)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    swift_errorRetain();
    v27 = _convertErrorToNSError(_:)();
    v33 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    v32._countAndFlagsBits = v27;
    sub_100019D3C(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[4] = v23;
    sub_10017F944(v31, v24, v26, isUniquelyReferenced_nonNull_native);
  }

  (*(v14 + 16))(v17, a1, AssociatedTypeWitness);
  _BridgedStoredNSError.init(_:userInfo:)();

  return (*(v14 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_10017C8D8()
{
  String.hash(into:)();
}

uint64_t sub_10017CA5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004074(&qword_1003A0180, &unk_1002C3BC8);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100019D3C(v25, v37);
      }

      else
      {
        sub_10000BDA4(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100019D3C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}
uint64_t sub_10003385C(const void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_10039F278);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, __dst);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347760, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, __dst);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  memcpy(__dst, v2 + 2, 0x122uLL);
  memcpy(v2 + 2, a1, 0x122uLL);
  sub_100031B40(a1, &v16);
  return sub_100031B78(__dst);
}

void sub_100033A6C(uint64_t a1)
{
  v3 = *v1;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039F278);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    type metadata accessor for SPRAttestationVaultOptions(0);
    *(v11 + 56) = v12;
    *(v11 + 32) = a1;
    v13 = showFunction(signature:_:)(0x287463656C6C6F63, 0xEB00000000293A5FLL, v11);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v24);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s (rawValue: %llu)", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v17 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v17 + 104) > 0 || *(v17 + 112) == 1)
  {
    [*(v17 + 88) wait];
  }

  v18 = *(v17 + 96);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v17 + 96) = v20;
  [*(v17 + 88) unlock];
  v21 = *(v17 + 80);
  [*(v17 + 88) lock];
  v22 = *(v17 + 96);
  v19 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v19)
  {
LABEL_19:
    __break(1u);
    return;
  }

  *(v17 + 96) = v23;
  if (!v23)
  {
    [*(v17 + 88) broadcast];
  }

  [*(v17 + 88) unlock];

  SPRAttestationVaultCollect(a1);
}

uint64_t sub_100033DA0()
{
  memcpy(__dst, v0 + 2, 0x122uLL);
  sub_100031B78(__dst);
  sub_10000959C(v0 + 39);
  sub_10000959C(v0 + 44);
  sub_10000959C(v0 + 49);
  return swift_deallocClassInstance();
}

uint64_t *sub_100033E28(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v34 = type metadata accessor for DefaultSecureTimeKeeper();
  v35 = &off_100384E70;
  *&v33 = a2;
  v31 = type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
  v32 = &off_100380B00;
  *&v30 = a3;
  v28 = type metadata accessor for MPOCDefaultAttestationData();
  v29 = &off_100380B10;
  *&v27 = a4;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_10039F278);
  sub_100031B40(a1, v26);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_100031B78(a1);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100008F6C(v15, v16, &v25);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1002C1660;
    *(v18 + 56) = &type metadata for MPOCAttestationState;
    v19 = swift_allocObject();
    *(v18 + 32) = v19;
    memcpy((v19 + 16), a1, 0x122uLL);
    sub_100031B40(a1, v26);
    v20 = showFunction(signature:_:)(0xD00000000000003DLL, 0x80000001003477B0, v18);
    v22 = v21;

    v23 = sub_100008F6C(v20, v22, &v25);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  memcpy(a5 + 2, a1, 0x122uLL);
  sub_100029790(&v33, (a5 + 39));
  sub_100029790(&v30, (a5 + 44));
  sub_100029790(&v27, (a5 + 49));
  return a5;
}

uint64_t *sub_100034124(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DefaultSecureTimeKeeper();
  v36[3] = v8;
  v36[4] = &off_100384E70;
  v36[0] = a2;
  v34 = type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
  v35 = &off_100380B00;
  v33[0] = a3;
  v31 = type metadata accessor for MPOCDefaultAttestationData();
  v32 = &off_100380B10;
  v30[0] = a4;
  type metadata accessor for MPOCDefaultAttestationManager();
  v9 = swift_allocObject();
  v10 = sub_100022438(v36, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v34;
  v16 = sub_100022438(v33, v34);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v30[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = v31;
  v22 = sub_100022438(v30, v31);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v30[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_100033E28(a1, *v13, *v19, *v25, v9);
  sub_10000959C(v30);
  sub_10000959C(v33);
  sub_10000959C(v36);
  return v27;
}

uint64_t *sub_1000343C4()
{
  sub_1000E4518(v29);
  if (v0)
  {
  }

  else
  {
    sub_1000E4B7C(v27);
    sub_1000E51E0(v25);
    if (qword_10039D340 != -1)
    {
      swift_once();
    }

    memcpy(v31, &unk_1003A6940, 0x122uLL);
    v3 = v30;
    v4 = sub_100022438(v29, v30);
    v32 = v24;
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = v28;
    v10 = sub_100022438(v27, v28);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = v26;
    v16 = sub_100022438(v25, v26);
    v17 = *(*(v15 - 8) + 64);
    __chkstk_darwin(v16);
    v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v20 + 16))(v19);
    v21 = *v7;
    v22 = *v13;
    v23 = *v19;
    sub_100031B40(v31, v24);
    v1 = sub_100034124(v31, v21, v22, v23);

    sub_10000959C(v25);
    sub_10000959C(v27);
    sub_10000959C(v29);
  }

  return v1;
}

void *sub_100034704@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_10039F278);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100347740, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v22);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    memcpy(__dst, v1 + 2, 0x122uLL);
    v15 = sub_100031B40(__dst, v21);
    v16 = sub_100031894(v15);
    v18 = v17;
    sub_100031B78(__dst);
    v19 = sub_100008F6C(v16, v18, &v22);

    *(v8 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s returned: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  return memcpy(a1, v2 + 2, 0x122uLL);
}

uint64_t sub_1000349B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000349F8()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[11];

    v5 = v0[13];

    v6 = v0[19];

    v7 = v0[21];

    v8 = v0[23];

    v9 = v0[25];

    v10 = v0[27];

    v11 = v0[29];

    v12 = v0[31];

    sub_100009548(v0[32], v0[33]);
    v13 = v0[35];
  }

  v14 = v0[36];

  return _swift_deallocObject(v0, 306, 7);
}

uint64_t sub_100034AAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F3F8);
  sub_10000403C(v0, qword_10039F3F8);
  sub_100023B24();
  return static SPRLogger.attestation.getter();
}

uint64_t sub_100034B08(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D350 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_10039F3F8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v51);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    sub_100035270();
    v13 = String.init<A>(_:radix:uppercase:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = showFunction(signature:_:)(0x6228796669726576, 0xEF293A70616D7469, v12);
    v17 = v16;

    v18 = sub_100008F6C(v15, v17, &v51);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v50 = a1;
  v51 = _swiftEmptyArrayStorage;
  result = sub_1000439AC(&v50, &v51);
  v20 = v51;
  v21 = v51[2];
  if (!v21)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v21 == 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (((v2[6] & v51[4]) & (*(v2 + 16) ^ *(v51 + 33))) != 0)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51 = v25;
      *v24 = 136315138;
      v26 = sub_10014B8C8(v20);
      v28 = v27;

      v29 = Data.hexString()();
      sub_100009548(v26, v28);
      v30 = sub_100008F6C(v29._countAndFlagsBits, v29._object, &v51);

      *(v24 + 4) = v30;
      v31 = "Invalid attestation data: bit field %s";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v22, v23, v31, v24, 0xCu);
      sub_10000959C(v25);

LABEL_29:

      return 0;
    }

    goto LABEL_28;
  }

  if (v21 < 3)
  {
    goto LABEL_32;
  }

  if (*(v51 + 34) > 5u)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51 = v25;
      *v24 = 136315138;
      v32 = sub_10014B8C8(v20);
      v34 = v33;

      v35 = Data.hexString()();
      sub_100009548(v32, v34);
      v36 = sub_100008F6C(v35._countAndFlagsBits, v35._object, &v51);

      *(v24 + 4) = v36;
      v31 = "Invalid attestation data: number of clients %s";
      goto LABEL_27;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (v21 < 5)
  {
    goto LABEL_33;
  }

  if (*(v51 + 35) < *(v2 + 9))
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51 = v25;
      *v24 = 136315138;
      v37 = sub_10014B8C8(v20);
      v39 = v38;

      v40 = Data.hexString()();
      sub_100009548(v37, v39);
      v41 = sub_100008F6C(v40._countAndFlagsBits, v40._object, &v51);

      *(v24 + 4) = v41;
      v31 = "Invalid attestation data: jsbl version %s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v21 < 8)
  {
    goto LABEL_34;
  }

  if (v2[3] != *(v51 + 39) || v2[4] != *(v51 + 38) || v2[5] != *(v51 + 37))
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51 = v25;
      *v24 = 136315138;
      v45 = sub_10014B8C8(v20);
      v47 = v46;

      v48 = Data.hexString()();
      sub_100009548(v45, v47);
      v49 = sub_100008F6C(v48._countAndFlagsBits, v48._object, &v51);

      *(v24 + 4) = v49;
      v31 = "Invalid attestation data: iOSVersion %s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Attestation data valid.", v44, 2u);
  }

  return 1;
}

unint64_t sub_100035270()
{
  result = qword_10039F4F8;
  if (!qword_10039F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F4F8);
  }

  return result;
}

uint64_t sub_10003531C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F658);
  sub_10000403C(v0, qword_10039F658);
  sub_100023B24();
  return static SPRLogger.sesnapshotWrapper.getter();
}

uint64_t sub_100035378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_10003539C, 0, 0);
}

uint64_t sub_10003539C()
{
  if (qword_10039D358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000403C(v1, qword_10039F658);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling canFit with reclaimUnusedSpace", v4, 2u);
  }

  type metadata accessor for SESnapshot();
  v5 = async function pointer to static SESnapshot.canFit(proposedKernelInfo:reclaimUnusedSpace:session:)[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100035508;
  v7 = v0[9];

  return static SESnapshot.canFit(proposedKernelInfo:reclaimUnusedSpace:session:)(v7, 1, 0);
}

uint64_t sub_100035508(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1000356B4;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v7 = sub_100035634;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100035634()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  swift_beginAccess();
  *(v2 + 16) = v1;
  dispatch_group_leave(*(v0 + 88));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000356B4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not get an SE snapshot %@", v6, 0xCu);
    sub_10000BD44(v7, &unk_10039E220, &qword_1002C3D60);
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 80);

  swift_beginAccess();
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  dispatch_group_leave(*(v0 + 88));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10003582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a4;
  v8[6] = a8;
  type metadata accessor for SESnapshot();
  v12 = async function pointer to static SESnapshot.getCurrentSnapshot(with:seid:)[1];
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_1000358F0;

  return static SESnapshot.getCurrentSnapshot(with:seid:)(a5, a6, a7);
}

uint64_t sub_1000358F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_100035AA0;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_100035A18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100035A18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  dispatch_group_leave(*(v0 + 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100035AA0()
{
  if (qword_10039D358 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039F658);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not get an SE snapshot %@", v7, 0xCu);
    sub_10000BD44(v8, &unk_10039E220, &qword_1002C3D60);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 48));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100035C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a4;
  v7[15] = a7;
  v10 = type metadata accessor for SEStorageManagementSheet.ErrorCode();
  v7[16] = v10;
  v11 = *(v10 - 8);
  v7[17] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[18] = v13;
  v14 = swift_task_alloc();
  v7[19] = v14;
  if (a6)
  {
    v15 = _s9SEService24SEStorageManagementSheetV7present23overSceneWithIdentifier013inApplicationH8BundleIDSbSS_SStYaAC9ErrorCodeOYKFTu[1];
    v16 = swift_task_alloc();
    v7[20] = v16;
    *v16 = v7;
    v16[1] = sub_100035E18;

    return (__s9SEService24SEStorageManagementSheetV7present23overSceneWithIdentifier013inApplicationH8BundleIDSbSS_SStYaAC9ErrorCodeOYKF)(a5, a6, v22, v23, v13);
  }

  else
  {
    v17 = v14;
    v18 = _s9SEService24SEStorageManagementSheetV7present25inApplicationWithBundleIDSbSS_tYaAC9ErrorCodeOYKFTu[1];
    v19 = swift_task_alloc();
    v7[21] = v19;
    *v19 = v7;
    v19[1] = sub_100035F34;

    return (__s9SEService24SEStorageManagementSheetV7present25inApplicationWithBundleIDSbSS_tYaAC9ErrorCodeOYKF)(v22, v23, v17);
  }
}

uint64_t sub_100035E18(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = v1;
  *(v4 + 72) = a1;
  *(v4 + 64) = v2;
  v5 = *(v3 + 160);
  v8 = *v2;

  if (v1)
  {
    v6 = sub_1000361A0;
  }

  else
  {
    v6 = sub_100036050;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100035F34(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = v1;
  *(v4 + 96) = a1;
  *(v4 + 88) = v2;
  v5 = *(v3 + 168);
  v8 = *v2;

  if (v1)
  {
    v6 = sub_100036268;
  }

  else
  {
    v6 = sub_1000360F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100036050()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  swift_beginAccess();
  *(v5 + 16) = v1;
  dispatch_group_leave(v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000360F8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  swift_beginAccess();
  *(v5 + 16) = v1;
  dispatch_group_leave(v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000361A0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  sub_10003774C();
  swift_allocError();
  (*(v4 + 32))(v6, v2, v3);
  dispatch_group_leave(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100036268()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  sub_10003774C();
  swift_allocError();
  (*(v4 + 32))(v6, v2, v3);
  dispatch_group_leave(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100036330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000376DC(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BD44(v11, &qword_10039F738, &qword_1002C2AB8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000365F0(uint64_t a1)
{
  v39 = type metadata accessor for DispatchTime();
  v38 = *(v39 - 8);
  v2 = *(v38 + 64);
  v3 = __chkstk_darwin(v39);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v32 - v5;
  v6 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v34 = &v32 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v32 = v14 + 16;
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  v33 = v16;
  *(v16 + 16) = 0;
  v35 = (v16 + 16);
  dispatch_group_enter(v15);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = v6;
  (*(v7 + 16))(v9, a1, v6);
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v14;
  (*(v7 + 32))(&v21[v19], v9, v18);
  *&v21[v20] = v33;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v15;

  v22 = v15;
  sub_10013C974(0, 0, v34, &unk_1002C2AF8, v21);

  v23 = v37;
  static DispatchTime.now()();
  v24 = v36;
  + infix(_:_:)();
  v25 = *(v38 + 8);
  v26 = v23;
  v27 = v39;
  v25(v26, v39);
  OS_dispatch_group.wait(timeout:)();
  v28 = v27;
  v29 = v35;
  v25(v24, v28);
  swift_beginAccess();
  v30 = *v29;
  if (*v29)
  {
    goto LABEL_5;
  }

  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    v30 = *v29;
LABEL_5:
    swift_errorRetain();
    sub_100020148(2009, 0xD00000000000001ALL, 0x80000001003479D0, v30);

    swift_willThrow();

    return v22 & 1;
  }

  swift_beginAccess();
  LOBYTE(v22) = *(v14 + 16);

  return v22 & 1;
}

NSObject *sub_100036A44(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v34 = a2;
  v33 = type metadata accessor for DispatchTime();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = a1;
  v20 = a1;
  v21 = v32;
  v19[6] = v34;
  v19[7] = v21;
  v19[8] = v17;
  v34 = v15;

  v22 = v20;

  v23 = v17;
  sub_10013C974(0, 0, v14, &unk_1002C2AE0, v19);

  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v4 + 8);
  v25 = v33;
  v24(v8, v33);
  OS_dispatch_group.wait(timeout:)();
  v24(v10, v25);
  swift_beginAccess();
  if (*v16)
  {
    v26 = *v16;
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      return v26;
    }
  }

  if (qword_10039D358 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000403C(v27, qword_10039F658);
  v26 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v26, v28, "Could not get an SE snapshot", v29, 2u);
  }

  sub_100020148(2009, 0xD000000000000032, 0x8000000100347990, 0);
  swift_willThrow();

  return v26;
}

uint64_t sub_100036E04(void *a1, os_log_type_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = a3;
  v60 = a2;
  v10 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v63 = &v55 - v12;
  v13 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SEStorageManagementSheet();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  v64 = a4;
  if (a4)
  {
    *v17 = a1;
    v25 = *(v14 + 104);
    v26 = a1;
    v27 = &v55 - v22;
    v56 = v24;
    v57 = v23;
    v25(v17, enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:), v13);
    sub_100004074(&qword_10039F740, &qword_1002C2AC0);
    v28 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType();
    v29 = *(v28 - 8);
    v58 = a6;
    v30 = v29;
    v31 = *(v29 + 72);
    v32 = *(v30 + 80);
    v59 = v6;
    v33 = (v32 + 32) & ~v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002C1660;
    v35 = type metadata accessor for SESnapshot.ProposedKernelInfo();
    (*(*(v35 - 8) + 16))(v34 + v33, v60, v35);
    (*(v30 + 104))(v34 + v33, enum case for SEStorageManagementSheet.ProposedCredentialType.muirfield(_:), v28);

    v36 = v26;
    v37 = v27;
    v55 = v27;
    SEStorageManagementSheet.init(deviceConfiguration:provisioning:)();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v60 = (v38 + 16);
    v39 = dispatch_group_create();
    dispatch_group_enter(v39);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
    v41 = v56;
    v42 = v57;
    (*(v19 + 16))(v56, v37, v57);
    v43 = (*(v19 + 80) + 64) & ~*(v19 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    v45 = v61;
    *(v44 + 4) = v39;
    *(v44 + 5) = v45;
    *(v44 + 6) = v58;
    *(v44 + 7) = v38;
    (*(v19 + 32))(&v44[v43], v41, v42);
    v46 = &v44[(v20 + v43 + 7) & 0xFFFFFFFFFFFFFFF8];
    v47 = v64;
    *v46 = v62;
    *(v46 + 1) = v47;

    v48 = v39;
    sub_100036330(0, 0, v63, &unk_1002C2AD0, v44);

    OS_dispatch_group.wait()();

    (*(v19 + 8))(v55, v42);
    v49 = v60;
    swift_beginAccess();
    v50 = *v49;
  }

  else
  {
    if (qword_10039D358 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000403C(v51, qword_10039F658);
    v52 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v50))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v52, v50, "Found nil bundleID for storage management sheet.", v53, 2u);
    }

    sub_100020148(2028, 0, 0, 0);
    swift_willThrow();
  }

  return v50 & 1;
}

uint64_t sub_1000373A0()
{
  v1 = type metadata accessor for SEStorageManagementSheet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  v8 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100037494(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for SEStorageManagementSheet() - 8);
  v5 = v1[3];
  v15 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = (v1 + ((*(v4 + 64) + ((*(v4 + 80) + 64) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000375E8;

  return sub_100035C4C(a1, v15, v5, v6, v7, v8, v9);
}

uint64_t sub_1000375E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000376DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003774C()
{
  result = qword_10039F748[0];
  if (!qword_10039F748[0])
  {
    type metadata accessor for SEStorageManagementSheet.ErrorCode();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10039F748);
  }

  return result;
}

uint64_t sub_1000377A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000377DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100037834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000375E8;

  return sub_10003582C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100037910()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037948()
{
  v1 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100037A40(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SESnapshot.ProposedKernelInfo() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100037B84;

  return sub_100035378(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_100037BF0(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v19 - v6;
  v20 = 0;
  v21 = 0xE000000000000000;
  v8._countAndFlagsBits = 40;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = *(*v1 + 144);
  swift_beginAccess();
  (*(v4 + 16))(v7, v2 + v9, v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v7, v3);
  v10._countAndFlagsBits = 0x203E2D2029;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v11 = *(*v2 + 160);
  if (*(v2 + v11))
  {
    v12 = *(v2 + v11);

    v14 = sub_100037BF0(v13);
    v16 = v15;
  }

  else
  {
    v16 = 0xE400000000000000;
    v14 = 1818845556;
  }

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  return v20;
}

uint64_t sub_100037DA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_100037DF4(a1, a2);
  return v7;
}

uint64_t *sub_100037DF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 152);
  swift_weakInit();
  *(v2 + *(*v2 + 160)) = 0;
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 136), a1);
  (*(*(*(v5 + 88) - 8) + 32))(v2 + *(*v2 + 144), a2);
  return v2;
}

uint64_t sub_100037F10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100037FD8(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1000380A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000380F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100038148(uint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  v6 = __chkstk_darwin(a1);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v40 = &v32 - v9;
  v10 = *(v1 + 80);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v8);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v39 = &v32 - v14;
  v15 = *(v1 + 112);
  v43 = v10;
  v44 = v4;
  v37 = *(v1 + 96);
  v45 = v37;
  v46 = v15;
  v36 = *(v1 + 120);
  v47 = v36;
  type metadata accessor for LRUCache.Node.CodingKeys();
  swift_getWitnessTable();
  v16 = type metadata accessor for KeyedDecodingContainer();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v20 = a1[4];
  v21 = sub_10000BE18(a1, a1[3]);
  v22 = v48;
  v23 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v24 = v40;
    v48 = v4;
    LOBYTE(v43) = 0;
    v26 = v38;
    v25 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v37 = v10;
    LOBYTE(v43) = 1;
    v27 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v41 + 8))(v19, v42);
    (*(v26 + 32))(v35, v25, v37);
    v29 = v34;
    (*(v33 + 32))(v34, v24, v27);
    v30 = *(v2 + 48);
    v31 = *(v2 + 52);
    v21 = swift_allocObject();
    sub_100037DF4(v35, v29);
  }

  sub_10000959C(v23);
  return v21;
}

uint64_t sub_100038518(void *a1)
{
  v2 = v1;
  v35 = *(*(*v2 + 88) - 8);
  v4 = *(v35 + 64);
  v5 = __chkstk_darwin(a1);
  v34 = v33 - v6;
  v8 = *(v7 + 80);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v5);
  v37 = v33 - v10;
  v12 = v11[12];
  v13 = v11[15];
  v14 = v11[16];
  v42 = v8;
  v43 = v15;
  v36 = v15;
  v44 = v12;
  v40 = *(v16 + 104);
  v45 = v40;
  v46 = v13;
  v47 = v14;
  v33[1] = v14;
  type metadata accessor for LRUCache.Node.CodingKeys();
  swift_getWitnessTable();
  v17 = type metadata accessor for KeyedEncodingContainer();
  v38 = *(v17 - 8);
  v18 = *(v38 + 64);
  __chkstk_darwin(v17);
  v20 = v33 - v19;
  v21 = a1[4];
  sub_10000BE18(a1, a1[3]);
  v22 = v37;
  v23 = v39;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v23 + 16))(v22, v2 + *(*v2 + 136), v8);
  LOBYTE(v42) = 0;
  *&v40 = v20;
  v24 = v41;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v24)
  {
    (*(v23 + 8))(v22, v8);
    return (*(v38 + 8))(v40, v17);
  }

  else
  {
    v26 = v38;
    (*(v23 + 8))(v22, v8);
    v27 = *(*v2 + 144);
    swift_beginAccess();
    v28 = v35;
    v29 = v2 + v27;
    v30 = v34;
    v31 = v36;
    (*(v35 + 16))(v34, v29, v36);
    v48 = 1;
    v32 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v30, v31);
    return (*(v26 + 8))(v32, v17);
  }
}

uint64_t *sub_100038944()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  v2 = *(*v0 + 152);
  swift_weakDestroy();
  v3 = *(*v0 + 160);
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + *(*v4 + 160));
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t sub_100038AAC()
{
  sub_100038944();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100038B28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100038148(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100038B78()
{
  v1 = 0xE500000000000000;
  v10 = *(v0 + 16);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203E2D2029;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  if (*(v0 + 32))
  {
    v4 = *(v0 + 32);

    v6 = sub_100037BF0(v5);
    v1 = v7;
  }

  else
  {
    v6 = 0x7974706D65;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v1;
  String.append(_:)(v8);

  return 0x2864616568;
}

uint64_t sub_100038C58(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100038C98(a1);
  return v2;
}

void *sub_100038C98(uint64_t a1)
{
  v9 = *(*v1 + 96);
  v8 = *(*v1 + 80);
  v10 = *(*v1 + 112);
  v11 = *(*v1 + 128);
  v3 = type metadata accessor for LRUCache.Node();
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = sub_10003A858(v4, v8, v3, v10);

  v1[3] = v5;
  v1[4] = 0;
  swift_weakInit();
  if (a1 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1;
  }

  v1[2] = v6;
  return v1;
}

uint64_t sub_100038DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 88);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(a1);
  v39 = &v38 - v11;
  v12 = *(v6 + 80);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v10);
  v15 = &v38 - v14;
  swift_beginAccess();
  v16 = v3[3];
  v17 = *(v6 + 128);

  v44 = v12;
  v45 = v8;
  v18 = *(v7 + 96);
  v40 = *(v7 + 112);
  v46 = v18;
  v47 = v40;
  v48 = v17;
  v19 = type metadata accessor for LRUCache.Node();
  Dictionary.subscript.getter();

  v20 = v49;
  if (v49)
  {
    v21 = *(*v49 + 144);
    swift_beginAccess();
    v22 = v43;
    (*(v43 + 24))(v20 + v21, v41, v8);
    swift_endAccess();
    sub_1000391EC(v20);
    v23 = 1;
    v24 = v42;
    v25 = v22;
  }

  else
  {
    v26 = *(v38 + 16);
    v26(v15, a1, v12);
    v27 = *(v43 + 16);
    v28 = v39;
    v29 = v41;
    v41 = v8;
    *&v40 = v27;
    v38 = v43 + 16;
    v27(v39, v29, v8);
    v30 = *(v19 + 48);
    v31 = *(v19 + 52);
    v32 = swift_allocObject();
    sub_100037DF4(v15, v28);
    v26(v15, a1, v12);
    v49 = v32;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    swift_endAccess();
    v33 = v4[3];

    v34 = Dictionary.count.getter();

    v35 = 0;
    if (v4[2] < v34)
    {
      v35 = sub_100039490();
    }

    sub_1000393B0(v32);

    if (!v35)
    {
      v23 = 1;
      v8 = v41;
      v24 = v42;
      v25 = v43;
      return (*(v25 + 56))(v24, v23, 1, v8);
    }

    v36 = *(*v35 + 144);
    swift_beginAccess();
    v8 = v41;
    v24 = v42;
    (v40)(v42, v35 + v36, v41);
    v23 = 0;
    v25 = v43;
  }

  return (*(v25 + 56))(v24, v23, 1, v8);
}

uint64_t sub_1000391EC(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    sub_100039240(result);

    return sub_1000393B0(v4);
  }

  return result;
}

uint64_t sub_100039240(uint64_t a1)
{
  v3 = *(*a1 + 152);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(*Strong + 160);
    v6 = *(Strong + v5);
    *(Strong + v5) = *(a1 + *(*a1 + 160));
  }

  v7 = *(*a1 + 160);
  v8 = *(a1 + v7);
  if (v8)
  {
    swift_weakLoadStrong();
    v9 = *(*v8 + 152);
    swift_weakAssign();
  }

  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = v10;

    if (v11 == a1)
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }
  }

  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = *(a1 + v7);
  }

  swift_weakAssign();
  v12 = *(a1 + v7);
  *(a1 + v7) = 0;
}

uint64_t sub_1000393B0(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(*a1 + 160);
    v5 = *(a1 + v4);
    *(a1 + v4) = v3;

    v6 = *(v1 + 32);
    if (v6)
    {
      v7 = *(*v6 + 152);
      swift_weakAssign();
      v8 = *(v1 + 32);
    }

    *(v1 + 32) = a1;
  }

  else
  {
    *(v1 + 32) = a1;
    swift_weakAssign();
  }
}

uint64_t sub_100039490()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v0 + 5);
  v6 = &v11 - v5;
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_100039240(result);
    (*(v3 + 16))(v6, v8 + *(*v8 + 136), v2);
    v17 = 0;
    swift_beginAccess();
    v9 = *(v1 + 104);
    v10 = *(v1 + 128);
    v12 = v2;
    v13 = *(v1 + 88);
    v14 = v9;
    v11 = *(v1 + 112);
    v15 = v11;
    v16 = v10;
    type metadata accessor for LRUCache.Node();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100039638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974696361706163 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100039738(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100039780(char a1)
{
  if (a1)
  {
    return 0x7974696361706163;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

Swift::Int sub_100039804(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_100039738(*v1);
}

Swift::Int sub_100039878(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8]);
  return Hasher._finalize()();
}

uint64_t sub_100039934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8]);
  *a5 = result;
  return result;
}

uint64_t sub_100039984@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result;
  return result;
}

uint64_t sub_1000399C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100039A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100039A70(uint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v6 = __chkstk_darwin(a1);
  v58 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 80);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v6);
  v59 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Optional();
  v47 = *(v57 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v57);
  v56 = &v42 - v12;
  v13 = *(v2 + 96);
  v14 = *(v2 + 112);
  v15 = *(v2 + 120);
  v16 = *(v2 + 128);
  v60 = v8;
  *&v62 = v8;
  *(&v62 + 1) = v4;
  v50 = v13;
  v63 = v13;
  v52 = v15;
  v53 = v14;
  v64 = v14;
  v65 = v15;
  v51 = v16;
  v66 = v16;
  type metadata accessor for LRUCache.CodingKeys();
  swift_getWitnessTable();
  v17 = type metadata accessor for KeyedDecodingContainer();
  v54 = *(v17 - 8);
  v18 = *(v54 + 64);
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = a1[4];
  sub_10000BE18(a1, a1[3]);
  v22 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_10000959C(a1);
    return v2;
  }

  v23 = v52;
  v24 = v53;
  v46 = a1;
  LOBYTE(v62) = 1;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v60;
  *&v26 = v60;
  *(&v26 + 1) = v4;
  v62 = v26;
  v63 = v50;
  v64 = v24;
  v65 = v23;
  v66 = v51;
  v27 = v17;
  v28 = type metadata accessor for LRUCache.Node();
  type metadata accessor for Array();
  LOBYTE(v62) = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v53 = v4;
  v43 = v20;
  v44 = 0;
  v45 = v27;
  v30 = v67;
  v31 = swift_allocObject();
  sub_100038C98(v55);
  v55 = v31;

  if (!Array.endIndex.getter())
  {
LABEL_13:

    v2 = v55;

    (*(v54 + 8))(v43, v45);
    sub_10000959C(v46);
    return v2;
  }

  v51 = (v48 + 16);
  *&v50 = v49 + 16;
  v49 += 8;
  v48 += 8;
  v47 += 8;
  v32 = 4;
  v52 = v28;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v34 = *(v30 + 8 * v32);
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      v34 = result;
    }

    v35 = v32 - 3;
    v36 = v59;
    if (__OFADD__(v32 - 4, 1))
    {
      break;
    }

    (*v51)(v59, v34 + *(*v34 + 136), v25);
    v37 = *(*v34 + 144);
    swift_beginAccess();
    v38 = v58;
    v39 = v53;
    (*v50)(v58, v34 + v37, v53);
    v40 = v56;
    sub_100038DA8(v36, v38, v56);

    v41 = v38;
    v25 = v60;
    (*v49)(v41, v39);
    (*v48)(v36, v25);
    (*v47)(v40, v57);
    ++v32;
    if (v35 == Array.endIndex.getter())
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A100(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 120);
  v9 = *(*v2 + 128);
  v30 = *(*v2 + 88);
  v31 = v4;
  v35 = v4;
  v36 = v30;
  v28 = v6;
  v29 = v5;
  v37 = v5;
  v38 = v6;
  v26 = v8;
  v27 = v7;
  v39 = v7;
  v40 = v8;
  v25 = v9;
  v41 = v9;
  type metadata accessor for LRUCache.CodingKeys();
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedEncodingContainer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = a1[4];
  sub_10000BE18(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v2[2];
  LOBYTE(v35) = 1;
  v17 = v32;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v17)
  {
    v35 = v31;
    v36 = v30;
    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = v26;
    v41 = v25;
    type metadata accessor for LRUCache.Node();
    v18 = Array.init()();
    v42 = v18;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      type metadata accessor for Array();
      do
      {
        v35 = v20;

        Array.append(_:)();
        v21 = *(*v20 + 152);
        v22 = swift_weakLoadStrong();

        v20 = v22;
      }

      while (v22);
      v18 = v42;
    }

    v35 = v18;
    v34 = 0;
    type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10003A454()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_10003A484()
{
  sub_10003A454();

  return swift_deallocClassInstance();
}

uint64_t sub_10003A4D0(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10003A5F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100039A70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10003A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10003A6D0(a1, v9, a2, a3);
}

unint64_t sub_10003A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_10003A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10003A674(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateManager.RawValidationToken.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CertificateManager.RawValidationToken.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003AD78()
{
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_beginAccess();
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x203E2D2029;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 72);

    v5 = sub_10003AD78(v4);
    v7 = v6;
  }

  else
  {
    v7 = 0xE400000000000000;
    v5 = 1818845556;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  return 0;
}

uint64_t sub_10003AE6C()
{
  v1 = 0xE500000000000000;
  v9 = *(v0 + 16);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203E2D2029;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  if (*(v0 + 32))
  {
    v4 = *(v0 + 32);

    v5 = sub_10003AD78();
    v1 = v6;
  }

  else
  {
    v5 = 0x7974706D65;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v1;
  String.append(_:)(v7);

  return 0x2864616568;
}

uint64_t sub_10003AF4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_1000F5A28(a1, a2);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = *(v3 + 32);
  if (!v10 || v9 != v10)
  {
    sub_10003BA38(v9);
    sub_10003BB40(v9);
  }

  swift_beginAccess();
  v12 = v9[4];
  v11 = v9[5];
  v14 = v9[6];
  v13 = v9[7];

  return v12;
}

uint64_t sub_10003B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_beginAccess();
  v14 = v6[3];
  if (*(v14 + 16))
  {

    v15 = sub_1000F5A28(a1, a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      swift_beginAccess();
      v18 = v17[5];
      v19 = v17[7];
      v17[4] = a3;
      v17[5] = a4;
      v17[6] = a5;
      v17[7] = a6;

      v20 = v7[4];

      if (!v20 || v17 != v20)
      {
        sub_10003BA38(v17);
        sub_10003BB40(v17);
      }

      return 0;
    }
  }

  sub_100004074(&qword_10039FAF0, &qword_1002C2F88);
  v21 = swift_allocObject();
  swift_weakInit();
  v21[9] = 0;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  swift_beginAccess();

  v22 = v7[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v7[3];
  v7[3] = 0x8000000000000000;
  sub_10018008C(v21, a1, a2, isUniquelyReferenced_nonNull_native);
  v7[3] = v32;
  swift_endAccess();
  v24 = 0;
  if (v7[2] >= *(v32 + 16))
  {
LABEL_11:
    sub_10003BB40(v21);

    if (v24)
    {
      swift_beginAccess();
      v28 = v24[4];
      v29 = v24[5];
      v30 = v24[6];
      v31 = v24[7];

      return v28;
    }

    return 0;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_10003BA38(result);
    v26 = v24[2];
    v27 = v24[3];
    swift_beginAccess();

    sub_10002D438(0, v26, v27);
    swift_endAccess();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B318(uint64_t a1)
{
  v2 = v1;

  v5 = sub_10003B91C(v4);
  if (*(v1 + 16) < v5[2])
  {

    v6 = 0;
    return v6 & 1;
  }

  swift_beginAccess();
  v7 = *(v1 + 24);

  v9 = sub_10003B91C(v8);

  v10 = sub_100040E98(v5, v9);
  if (*(v10 + 16) <= v9[2] >> 3)
  {

    sub_10003F48C(v10);
    v74 = v9;
  }

  else
  {

    v74 = sub_10003F5B8(v10, v9);
  }

  v72 = a1;
  if (*(v10 + 16) <= v5[2] >> 3)
  {

    sub_10003F48C(v10);
    v73 = v5;
  }

  else
  {

    v73 = sub_10003F5B8(v10, v5);
  }

  v11 = 1 << *(v74 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v74[7];
  v14 = (v11 + 63) >> 6;

  v6 = 0;
  v15 = 0;
  while (v13)
  {
LABEL_19:
    v19 = *(v2 + 24);
    if (!*(v19 + 16))
    {
      goto LABEL_56;
    }

    v20 = (v74[6] + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
    v22 = *v20;
    v21 = v20[1];

    v23 = sub_1000F5A28(v22, v21);
    if ((v24 & 1) == 0)
    {
      goto LABEL_57;
    }

    v25 = *(*(v19 + 56) + 8 * v23);

    sub_10003BA38(v25);
    swift_beginAccess();
    v26 = *(v2 + 24);
    v27 = sub_1000F5A28(v22, v21);
    LOBYTE(v26) = v28;

    if (v26)
    {
      v29 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100181A74();
      }

      v16 = *(*(v31 + 48) + 16 * v27 + 8);

      v17 = *(*(v31 + 56) + 8 * v27);

      sub_10017C5C4(v27, v31);
      *(v2 + 24) = v31;
    }

    v13 &= v13 - 1;
    swift_endAccess();

    v6 = 1;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v18 >= v14)
    {
      break;
    }

    v13 = v74[v18 + 7];
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_19;
    }
  }

  v32 = v73 + 7;
  v33 = 1 << *(v73 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v73[7];
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v71 = v36;
  while (v35)
  {
    if (!*(v72 + 16))
    {
      goto LABEL_58;
    }

LABEL_31:
    v38 = (v73[6] + ((v37 << 10) | (16 * __clz(__rbit64(v35)))));
    v39 = *v38;
    v40 = v38[1];

    v41 = sub_1000F5A28(v39, v40);
    if ((v42 & 1) == 0)
    {
      goto LABEL_59;
    }

    v43 = (*(v72 + 56) + 32 * v41);
    v45 = *v43;
    v44 = v43[1];
    v47 = v43[2];
    v46 = v43[3];
    sub_100004074(&qword_10039FAF0, &qword_1002C2F88);
    v48 = swift_allocObject();
    swift_weakInit();
    v48[9] = 0;
    v48[2] = v39;
    v48[3] = v40;
    v48[4] = v45;
    v48[5] = v44;
    v48[6] = v47;
    v48[7] = v46;
    swift_beginAccess();

    v49 = *(v2 + 24);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    v53 = sub_1000F5A28(v39, v40);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_60;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      if (v50)
      {
        if (v52)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_100181A74();
        if (v57)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      sub_10017D87C(v56, v50);
      v58 = sub_1000F5A28(v39, v40);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_62;
      }

      v53 = v58;
      if (v57)
      {
LABEL_44:
        v61 = v51[7];
        v62 = *(v61 + 8 * v53);
        *(v61 + 8 * v53) = v48;

        goto LABEL_48;
      }
    }

    v51[(v53 >> 6) + 8] |= 1 << v53;
    v63 = (v51[6] + 16 * v53);
    *v63 = v39;
    v63[1] = v40;
    *(v51[7] + 8 * v53) = v48;
    v64 = v51[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_61;
    }

    v51[2] = v66;
LABEL_48:
    v35 &= v35 - 1;
    *(v2 + 24) = v51;
    swift_endAccess();
    v67 = *(v2 + 32);
    if (v67)
    {
      v68 = v48[9];
      v48[9] = v67;

      if (*(v2 + 32))
      {
        swift_weakAssign();
        v69 = *(v2 + 32);
      }

      *(v2 + 32) = v48;
    }

    else
    {
      *(v2 + 32) = v48;
      swift_weakAssign();
    }

    v6 = 1;
    v36 = v71;
    v32 = v73 + 7;
  }

  while (1)
  {
    v60 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v60 >= v36)
    {

      return v6 & 1;
    }

    v35 = v32[v60];
    ++v37;
    if (v35)
    {
      v37 = v60;
      if (*(v72 + 16))
      {
        goto LABEL_31;
      }

      goto LABEL_58;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10003B91C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10003F33C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003BA38(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 72);
    *(Strong + 72) = *(a1 + 72);
  }

  if (*(a1 + 72))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = v5;

    if (v6 == a1)
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }
  }

  v7 = *(v1 + 32);
  if (v7 && v7 == a1)
  {
    *(v1 + 32) = *(a1 + 72);
  }

  swift_weakAssign();
  v8 = *(a1 + 72);
  *(a1 + 72) = 0;
}

uint64_t sub_10003BB40(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(a1 + 72);
    *(a1 + 72) = v3;

    if (*(v1 + 32))
    {
      swift_weakAssign();
      v5 = *(v1 + 32);
    }

    *(v1 + 32) = a1;
  }

  else
  {
    *(v1 + 32) = a1;
    swift_weakAssign();
  }
}

uint64_t sub_10003BBF8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F950);
  sub_10000403C(v0, qword_10039F950);
  sub_100023B24();
  return static SPRLogger.configurator.getter();
}

uint64_t sub_10003BDB4(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_10039FB58, &qword_1002C31D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100042CE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18 = *(v3 + 1);
    v17[15] = 1;
    sub_100042D38();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 32);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[5];
    v15 = v3[6];
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10003BF80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003BFF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10003C038()
{
  v1 = 0x725074656C707061;
  v2 = 0x7463414641537369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x666E6F4374736F68;
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

uint64_t sub_10003C0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003C104(uint64_t a1)
{
  v2 = sub_100042CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C140(uint64_t a1)
{
  v2 = sub_100042CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003C17C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100042204(a1, v6);
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

uint64_t sub_10003C1E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100004074(&qword_10039FB90, &qword_1002C31F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100042DE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10003C39C()
{
  if (*v0)
  {
    result = 0x6F436C61626F6C67;
  }

  else
  {
    result = 0x49656C69666F7270;
  }

  *v0;
  return result;
}

uint64_t sub_10003C3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C69666F7270 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F436C61626F6C67 && a2 == 0xEE0044496769666ELL)
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

uint64_t sub_10003C4E0(uint64_t a1)
{
  v2 = sub_100042DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C51C(uint64_t a1)
{
  v2 = sub_100042DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C558@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000424F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10003C5A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(34);

  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._object = 0x8000000100347B80;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0x49656C69666F7270;
}

unint64_t sub_10003C674()
{
  _StringGuts.grow(_:)(45);

  v0._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x8000000100347BE0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000011;
}

uint64_t sub_10003C750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100004074(&qword_10039FBC8, &unk_1002C34D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100043074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBD8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_10003C938()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x7250737361707962;
  }

  *v0;
  return result;
}

uint64_t sub_10003C984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7250737361707962 && a2 == 0xEF44494178696665;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100347C20 == a2)
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

uint64_t sub_10003CA70(uint64_t a1)
{
  v2 = sub_100043074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003CAAC(uint64_t a1)
{
  v2 = sub_100043074();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003CAE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000426D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10003CB30()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_10003C674();
}

void sub_10003CB38()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  sub_10000BE18(v1 + 4, v2);
  v4 = v1[11];
  v5 = v1[12];
  v6 = sub_100004074(&qword_10039FB08, &qword_1002C2FB0);
  sub_100041EF4();
  sub_10009A1A4(v4, v5, v2, v6, v3);
  swift_beginAccess();
  v7 = v1[3];
  v1[3] = v33;

  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_10039F950);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    v13 = v1[3];
    type metadata accessor for UUID();
    sub_100041F9C(&qword_10039FB28);

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_100008F6C(v14, v16, &v33);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "read tpid dictionary: %s", v11, 0xCu);
    sub_10000959C(v12);
  }

  v18 = v1[7];
  v19 = v1[8];
  sub_10000BE18(v1 + 4, v18);
  v20 = v1[9];
  v21 = v1[10];
  v22 = sub_100004074(&qword_10039FAF8, &unk_1002C2FA0);
  sub_100042034(&qword_10039FB48);
  sub_10009A1A4(v20, v21, v18, v22, v19);
  v23 = v1[2];
  v1[2] = v33;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    v28 = v1[2];

    v29 = sub_10003AE6C();
    v31 = v30;

    v32 = sub_100008F6C(v29, v31, &v33);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "read LRU cache: %s", v26, 0xCu);
    sub_10000959C(v27);
  }
}

void sub_10003CFC8()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  sub_10000BE18(v1 + 4, v2);
  v4 = v1[11];
  v5 = v1[12];
  swift_beginAccess();
  v17 = v1[3];

  v6 = sub_100004074(&qword_10039FB08, &qword_1002C2FB0);
  sub_100041DF8();
  sub_10009A268(v4, v5, &v17, v2, v6, v3);

  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_10039F950);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = v1[3];
    type metadata accessor for UUID();
    sub_100041F9C(&qword_10039FB28);

    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v17);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "wrote tpid dictionary: %s", v10, 0xCu);
    sub_10000959C(v11);
  }
}

void sub_10003D33C()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  sub_10000BE18(v1 + 4, v2);
  v4 = v1[9];
  v5 = v1[10];
  v17 = v1[2];

  v6 = sub_100004074(&qword_10039FAF8, &unk_1002C2FA0);
  sub_100042034(&qword_10039FB00);
  sub_10009A268(v4, v5, &v17, v2, v6, v3);

  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_10039F950);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = v1[2];

    v13 = sub_10003AE6C();
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v17);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "wrote LRU cache: %s", v10, 0xCu);
    sub_10000959C(v11);
  }
}

uint64_t sub_10003D678@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v5 = *v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000403C(v11, qword_10039F950);
  v13 = *(v7 + 16);
  v13(v10, a1, v6);
  v82 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v79 = a1;
    v17 = v16;
    v78 = swift_slowAlloc();
    *&v84 = v78;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, &v84);
    v80 = v3;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    *(v22 + 56) = v6;
    v23 = sub_10000BE5C((v22 + 32));
    v13(v23, v10, v6);
    v24 = showFunction(signature:_:)(0x6469707428746567, 0xEA0000000000293ALL, v22);
    v26 = v25;

    (*(v7 + 8))(v10, v6);
    v27 = v24;
    v3 = v80;
    v28 = sub_100008F6C(v27, v26, &v84);

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();

    a1 = v79;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  v29 = v3[3];
  if (*(v29 + 16))
  {
    v30 = v3[3];

    v31 = sub_1000F5DA0(a1);
    if (v32)
    {
      v33 = *(v29 + 56) + 56 * v31;
      v34 = *v33;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      v37 = *(v33 + 24);
      LODWORD(v38) = *(v33 + 32);
      v39 = *(v33 + 40);
      v80 = *(v33 + 48);

      v40 = *(v3[14] + 16);
      v77 = v37;
      v75[1] = v36;
      if (v40 || *(v3[13] + 16))
      {
        *&v84 = v34;
        *(&v84 + 1) = v35;
        *&v85 = v36;
        *(&v85 + 1) = v37;
        LOBYTE(v86) = v38;
        *(&v86 + 1) = v39;
        *&v87 = v80;

        sub_100043B8C(v41);
        v42 = v3[13];

        sub_100043B8C(v43);
        v78 = *(&v84 + 1);
        v79 = v84;
        v44 = v34;
        v45 = *(&v85 + 1);
        v82 = v85;
        LODWORD(v38) = v86;
        v46 = v87;
        v76 = *(&v86 + 1);
        sub_10003F2A0(0, 0);
      }

      else
      {

        v73 = v80;

        sub_10003F2A0(0, 0);
        v79 = v34;
        v78 = v35;
        v74 = v36;
        v44 = v34;
        v82 = v74;
        v45 = v37;
        v76 = v39;
        v46 = v73;
      }

      v38 = v38;
      v47 = v3[2];

      v48 = sub_10003AF4C(v44, v35);
      v50 = v49;
      v52 = v51;
      v54 = v53;

      swift_bridgeObjectRelease_n();

      sub_100041D4C(0, 0);
      sub_10003D33C();
      v55 = v79;
      v56 = v78;
      *&v84 = v79;
      *(&v84 + 1) = v78;
      *&v85 = v82;
      *(&v85 + 1) = v45;
      v57 = v76;
      *&v86 = v38;
      *(&v86 + 1) = v76;
      *&v87 = v46;
      *(&v87 + 1) = v48;
      *&v88 = v50;
      *(&v88 + 1) = v52;
      v89 = v54;
      sub_100041CE4(&v84, v83);
      v58 = v55;
      v59 = v57;
      goto LABEL_16;
    }
  }

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "unknown tpid", v62, 2u);
  }

  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  sub_100041CE4(&v84, v83);
  v58 = 0;
  v56 = 0;
  v82 = 0;
  v45 = 0;
  v38 = 0;
  v59 = 0;
  v46 = 0;
  v48 = 0;
  v50 = 0;
  v52 = 0;
  v54 = 0;
LABEL_16:
  v80 = v54;
  *&v84 = v58;
  *(&v84 + 1) = v56;
  *&v85 = v82;
  *(&v85 + 1) = v45;
  *&v86 = v38;
  *(&v86 + 1) = v59;
  *&v87 = v46;
  *(&v87 + 1) = v48;
  *&v88 = v50;
  *(&v88 + 1) = v52;
  v89 = v54;
  v63 = v52;
  v64 = v50;
  v65 = v48;
  v66 = v46;
  v67 = v45;
  v68 = v82;
  v69 = v56;
  v70 = v58;
  result = sub_100041D1C(&v84);
  v72 = v81;
  *v81 = v70;
  v72[1] = v69;
  v72[2] = v68;
  v72[3] = v67;
  v72[4] = v38;
  v72[5] = v59;
  v72[6] = v66;
  v72[7] = v65;
  v72[8] = v64;
  v72[9] = v63;
  v72[10] = v80;
  return result;
}

uint64_t sub_10003DDC0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000403C(v11, qword_10039F950);
  v13 = *(v7 + 16);
  v13(v10, a1, v6);
  v74 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v73 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v82[0] = v71;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, v82);
    v72 = a2;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    *(v22 + 56) = v6;
    v23 = sub_10000BE5C((v22 + 32));
    v13(v23, v10, v6);
    v24 = showFunction(signature:_:)(0x6469707428747570, 0xEF293A6F666E693ALL, v22);
    v26 = v25;

    (*(v7 + 8))(v10, v6);
    v27 = v24;
    a2 = v72;
    v28 = sub_100008F6C(v27, v26, v82);

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v29 = *(a2 + 8);
  v30 = v75;
  if (!v29)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "no kernel token info", v50, 2u);
    }

    return 0;
  }

  v31 = *(a2 + 40);
  v32 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  v72 = *a2;
  v78[0] = v72;
  v78[1] = v29;
  v78[2] = v34;
  v78[3] = v35;
  v79 = v33 & 1;
  v80 = v31;
  v81 = v32;
  swift_beginAccess();
  v36 = *(v30 + 24);
  if (*(v36 + 16))
  {
    v37 = *(v30 + 24);

    v38 = v73;
    v39 = sub_1000F5DA0(v73);
    if (v40)
    {
      v41 = *(v36 + 56) + 56 * v39;
      v42 = *(v41 + 32);
      v43 = a2;
      v45 = *(v41 + 40);
      v44 = *(v41 + 48);

      v82[0] = v72;
      v82[1] = v29;
      v82[2] = v34;
      v82[3] = v35;
      v83 = v42;
      v84 = v45;
      v85 = v44;
      a2 = v43;
      swift_beginAccess();

      v46 = *(v30 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v30 + 24);
      *(v30 + 24) = 0x8000000000000000;
      sub_1001800A0(v82, v38, isUniquelyReferenced_nonNull_native);
      *(v30 + 24) = v76;
      goto LABEL_15;
    }
  }

  swift_beginAccess();

  v51 = *(v30 + 24);

  v52 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v30 + 24);
  *(v30 + 24) = 0x8000000000000000;
  sub_1001800A0(v78, v73, v52);
  *(v30 + 24) = v77;
LABEL_15:
  swift_endAccess();
  v53 = *(a2 + 64);
  if (!v53)
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "skip update LRU cache", v69, 2u);
    }

    sub_10003CFC8();
    return 0;
  }

  v55 = *(a2 + 72);
  v54 = *(a2 + 80);
  v56 = *(a2 + 56);
  v57 = *(v30 + 16);

  v58 = sub_10003B060(v72, v29, v56, v53, v55, v54);
  v60 = v59;

  if (v60)
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77 = v64;
      *v63 = 136315138;

      v65 = sub_100008F6C(v58, v60, &v77);

      *(v63 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "evict: %s", v63, 0xCu);
      sub_10000959C(v64);
    }
  }

  sub_10003D33C();
  sub_10003CFC8();
  return v58;
}

void sub_10003E51C(int64_t *a1)
{
  v3 = *v1;
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039F950);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v48);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    *(v11 + 56) = sub_100004074(&qword_10039FAE8, &qword_1002C2F80);
    *(v11 + 32) = a1;

    v12 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100347AE0, v11);
    v14 = v13;

    v15 = sub_100008F6C(v12, v14, &v48);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v16 = a1[2];
  if (v16)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v16, 0);
    v17 = v48;
    v45 = a1;
    v18 = a1 + 5;
    v19 = v16;
    do
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      v48 = v17;
      v23 = v17[2];
      v22 = v17[3];

      if (v23 >= v22 >> 1)
      {
        sub_10004E2DC((v22 > 1), v23 + 1, 1);
        v17 = v48;
      }

      v17[2] = v23 + 1;
      v24 = &v17[2 * v23];
      v24[4] = v20;
      v24[5] = v21;
      v18 += 4;
      --v19;
    }

    while (v19);
    a1 = v45;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v25 = sub_100041C44(v17);

  v26 = *(v25 + 16);

  if (v26 == v16)
  {
    v27 = *(v47 + 16);
    if (v16)
    {
      v48 = _swiftEmptyArrayStorage;

      sub_10004E2FC(0, v16, 0);
      v28 = v48;
      v29 = a1 + 7;
      do
      {
        v30 = *(v29 - 3);
        v31 = *(v29 - 2);
        v32 = *(v29 - 1);
        v33 = *v29;
        v48 = v28;
        v35 = v28[2];
        v34 = v28[3];
        swift_bridgeObjectRetain_n();

        if (v35 >= v34 >> 1)
        {
          sub_10004E2FC((v34 > 1), v35 + 1, 1);
          v28 = v48;
        }

        v28[2] = v35 + 1;
        v36 = &v28[6 * v35];
        v36[4] = v30;
        v36[5] = v31;
        v36[6] = v30;
        v36[7] = v31;
        v36[8] = v32;
        v36[9] = v33;
        v29 += 4;
        --v16;
      }

      while (v16);
    }

    else
    {
      v37 = *(v47 + 16);

      if (!_swiftEmptyArrayStorage[2])
      {
        v38 = &_swiftEmptyDictionarySingleton;
LABEL_22:
        v48 = v38;

        sub_100041854(v39, 1, &v48);

        v40 = sub_10003B318(v48);

        oslog = Logger.logObject.getter();
        if (v40)
        {
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(oslog, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, oslog, v41, "cache synced", v42, 2u);
          }

          sub_10003D33C();
        }

        else
        {
          v43 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(oslog, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, oslog, v43, "cache not synced", v44, 2u);
          }
        }

        return;
      }
    }

    sub_100004074(&qword_10039FAE0, &unk_1002C2F70);
    v38 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_22;
  }
}

void sub_10003EADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a1;
  v7 = *v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_10039F950);
  (*(v9 + 16))(v12, a3, v8);
  v50 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v48 = a2;
    v18 = v17;
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v18 = 136315650;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, v52);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD00000000000001ELL, 0x8000000100347AA0, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, v52);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    sub_100041F9C(&qword_10039FAD8);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v12, v8);
    v28 = sub_100008F6C(v25, v27, v52);

    *(v18 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s.%s saftpid: %s", v18, 0x20u);
    swift_arrayDestroy();

    a2 = v48;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  v29 = v4[3];
  if (*(v29 + 16))
  {
    v30 = v4[3];

    v31 = sub_1000F5DA0(a3);
    if (v32)
    {
      v33 = *(v29 + 56) + 56 * v31;
      v34 = a3;
      v36 = *v33;
      v35 = *(v33 + 8);
      v37 = *(v33 + 16);
      v38 = *(v33 + 24);
      v39 = *(v33 + 32);
      v40 = *(v33 + 48);

      v52[0] = v36;
      v52[1] = v35;
      v52[2] = v37;
      v52[3] = v38;
      v53 = v39;
      v54 = v49;
      v55 = a2;
      swift_beginAccess();
      sub_10003F304(v52, v51);
      v41 = v4[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = v4[3];
      v4[3] = 0x8000000000000000;
      sub_1001800A0(v52, v34, isUniquelyReferenced_nonNull_native);
      v4[3] = v51[0];
      swift_endAccess();
      sub_10003CFC8();

      return;
    }
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "cannot update attestationToken because ProfileInfo doesn't exist", v45, 2u);
  }
}

uint64_t sub_10003EFB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    goto LABEL_5;
  }

  v4 = sub_1000F5DA0(a1);
  if ((v5 & 1) == 0)
  {

LABEL_5:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v6 = *(v3 + 56) + 56 * v4;
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v13 = *(v6 + 40);
  v12 = *(v6 + 48);

  v14 = v8;
  v15 = v7;
  v16 = v11;
LABEL_6:
  v17 = v15 != 0;
  sub_10003F2A0(v14, v15);
  return v17 & v16;
}

void sub_10003F0DC(uint64_t a1, char a2)
{
  v4 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_1000F5DA0(a1);
    if (v8)
    {
      v9 = (*(v6 + 56) + 56 * v7);
      v11 = *v9;
      v10 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v15 = v9[5];
      v14 = v9[6];

      v19[0] = v11;
      v19[1] = v10;
      v19[2] = v12;
      v19[3] = v13;
      v20 = a2;
      v21 = v15;
      v22 = v14;
      swift_beginAccess();
      v16 = *(v4 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_1001800A0(v19, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 24) = v18;
      swift_endAccess();
      sub_10003CFC8();
    }

    else
    {
    }
  }
}

uint64_t sub_10003F214()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_10000959C(v0 + 4);
  sub_100009548(v0[9], v0[10]);
  sub_100009548(v0[11], v0[12]);
  v3 = v0[13];

  v4 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_10003F2A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10003F33C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000414C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10003F48C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10003FB28(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10003F5B8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_100040384(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10004014C(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100041CDC();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003FB28(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000405A8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_100040CD4(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10003FC64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10003FEC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004074(&qword_10039FB50, &qword_1002C2FB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t *sub_10004014C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_100040384(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100040384(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1000405A8()
{
  v1 = v0;
  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100040704()
{
  v1 = v0;
  sub_100004074(&qword_10039FB50, &qword_1002C2FB8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100040844(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100040A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004074(&qword_10039FB50, &qword_1002C2FB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_100040CD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100040E98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1000410EC(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_10004105C(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_10004105C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1000410EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000410EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100040384(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1000414C8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10003FC64(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000405A8();
      goto LABEL_16;
    }

    sub_100040844(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100041648(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_10003FEC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100040704();
      goto LABEL_25;
    }

    sub_100040A7C(v6 + 1);
  }

  v8 = 7565168;
  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (v5)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v8 = 0x6F697369766F7270;
    v11 = 0xE90000000000006ELL;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 7565168 : 0x6F697369766F7270;
      v15 = *(*(v9 + 48) + a2) ? 0xE300000000000000 : 0xE90000000000006ELL;
      if (v14 == v8 && v15 == v11)
      {
        goto LABEL_28;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100041854(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = *a3;

  v46 = v7;

  v11 = sub_1000F5A28(v5, v4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_10017DCD4(v16, a2 & 1);
    v18 = *a3;
    v11 = sub_1000F5A28(v5, v4);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_100181D6C();
  v11 = v21;
  if (v17)
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
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v5;
  v23[1] = v4;
  v24 = (v22[7] + 32 * v11);
  *v24 = v6;
  v24[1] = v46;
  v24[2] = v8;
  v24[3] = v9;
  v25 = v22[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v42._object = 0x8000000100347B20;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v42);
    _print_unlocked<A, B>(_:_:)();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22[2] = v26;
  if (v44 != 1)
  {
    v17 = a1 + 15;
    v6 = 1;
    while (v6 < a1[2])
    {
      v5 = *(v17 - 5);
      v4 = *(v17 - 4);
      v28 = *(v17 - 3);
      v27 = *(v17 - 2);
      v8 = *(v17 - 1);
      v9 = *v17;
      v29 = *a3;

      v46 = v27;

      v30 = sub_1000F5A28(v5, v4);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      a2 = v31;
      if (v29[3] < v34)
      {
        sub_10017DCD4(v34, 1);
        v35 = *a3;
        v30 = sub_1000F5A28(v5, v4);
        if ((a2 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a2)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v5;
      v38[1] = v4;
      v39 = (v37[7] + 32 * v30);
      *v39 = v28;
      v39[1] = v27;
      v39[2] = v8;
      v39[3] = v9;
      v40 = v37[2];
      v15 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v6;
      v37[2] = v41;
      v17 += 6;
      if (v44 == v6)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100041C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10003F33C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100041D4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100041D90(uint64_t a1)
{
  v2 = sub_100004074(&unk_10039E220, &qword_1002C3D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100041DF8()
{
  result = qword_10039FB10;
  if (!qword_10039FB10)
  {
    sub_1000040BC(&qword_10039FB08, &qword_1002C2FB0);
    sub_100041F9C(&qword_10039FB18);
    sub_100041EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB10);
  }

  return result;
}

unint64_t sub_100041EA0()
{
  result = qword_10039FB20;
  if (!qword_10039FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB20);
  }

  return result;
}

unint64_t sub_100041EF4()
{
  result = qword_10039FB30;
  if (!qword_10039FB30)
  {
    sub_1000040BC(&qword_10039FB08, &qword_1002C2FB0);
    sub_100041F9C(&qword_10039FB38);
    sub_100041FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB30);
  }

  return result;
}

uint64_t sub_100041F9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100041FE0()
{
  result = qword_10039FB40;
  if (!qword_10039FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB40);
  }

  return result;
}

uint64_t sub_100042034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_10039FAF8, &unk_1002C2FA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x725074656C707061 && a2 == 0xEF4449656C69666FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E6F4374736F68 && a2 == 0xEA00000000006769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463414641537369 && a2 == 0xEB00000000657669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100347C00 == a2)
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

uint64_t sub_100042204@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_10039FB70, &qword_1002C31E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100042CE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  LOBYTE(v26) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v25 = a2;
  v29 = 1;
  sub_100042D8C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v27;
  v24 = v26;
  LOBYTE(v26) = 2;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v26) = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v28 &= 1u;
  v17 = v14;
  (*(v6 + 8))(v9, v5);

  v18 = v24;

  v19 = v23;

  sub_10000959C(a1);

  v21 = v25;
  *v25 = v11;
  v21[1] = v13;
  v21[2] = v18;
  v21[3] = v19;
  *(v21 + 32) = v28;
  v21[5] = v17;
  v21[6] = v16;
  return result;
}

uint64_t sub_1000424F4(uint64_t *a1)
{
  v3 = sub_100004074(&qword_10039FB80, &qword_1002C31E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100042DE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000959C(a1);
  return v8;
}

uint64_t sub_1000426D8(uint64_t *a1)
{
  v2 = sub_100004074(&qword_10039FBE0, &qword_1002C34E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100043074();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  v11 = 0;
  sub_1000430C8(&qword_10039FBE8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12;
  v11 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000959C(a1);
  return v9;
}

void *sub_1000428FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100004074(&qword_10039FAF8, &unk_1002C2FA0);
  v7 = swift_allocObject();
  v7[3] = sub_100183DF8(&_swiftEmptyArrayStorage);
  v7[4] = 0;
  swift_weakInit();
  v7[2] = 4;
  v8 = sub_100183BE4(&_swiftEmptyArrayStorage);
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_10000BE18(a1, v9);
  v12 = v9;
  v13 = v11;
  sub_1000C7DD8(v12, v10);
  if (v3)
  {
  }

  else
  {
    type metadata accessor for ProfileManager();
    v13 = swift_allocObject();
    v13[9] = sub_100146900(0xD000000000000014, 0x8000000100347B40);
    v13[10] = v14;
    v13[11] = sub_100146900(0xD000000000000013, 0x8000000100347B60);
    v13[12] = v15;
    v13[2] = v7;
    v13[3] = v8;
    sub_100029790(&v17, (v13 + 4));
    v13[13] = a2;
    v13[14] = a3;

    sub_10003CB38();
  }

  sub_10000959C(a1);
  return v13;
}

__n128 sub_100042A88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100042A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100042ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100042B2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100042B48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100042B90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100042BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100042C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100042C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100042CE4()
{
  result = qword_10039FB60;
  if (!qword_10039FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB60);
  }

  return result;
}

unint64_t sub_100042D38()
{
  result = qword_10039FB68;
  if (!qword_10039FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB68);
  }

  return result;
}

unint64_t sub_100042D8C()
{
  result = qword_10039FB78;
  if (!qword_10039FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB78);
  }

  return result;
}

unint64_t sub_100042DE0()
{
  result = qword_10039FB88;
  if (!qword_10039FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB88);
  }

  return result;
}

unint64_t sub_100042E68()
{
  result = qword_10039FB98;
  if (!qword_10039FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB98);
  }

  return result;
}

unint64_t sub_100042EC0()
{
  result = qword_10039FBA0;
  if (!qword_10039FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBA0);
  }

  return result;
}

unint64_t sub_100042F18()
{
  result = qword_10039FBA8;
  if (!qword_10039FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBA8);
  }

  return result;
}

unint64_t sub_100042F70()
{
  result = qword_10039FBB0;
  if (!qword_10039FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBB0);
  }

  return result;
}

unint64_t sub_100042FC8()
{
  result = qword_10039FBB8;
  if (!qword_10039FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBB8);
  }

  return result;
}

unint64_t sub_100043020()
{
  result = qword_10039FBC0;
  if (!qword_10039FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBC0);
  }

  return result;
}

unint64_t sub_100043074()
{
  result = qword_10039FBD0;
  if (!qword_10039FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBD0);
  }

  return result;
}

uint64_t sub_1000430C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_10039E270, &unk_1002C3BE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100043148()
{
  result = qword_10039FBF0;
  if (!qword_10039FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBF0);
  }

  return result;
}

unint64_t sub_1000431A0()
{
  result = qword_10039FBF8;
  if (!qword_10039FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBF8);
  }

  return result;
}

unint64_t sub_1000431F8()
{
  result = qword_10039FC00;
  if (!qword_10039FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FC00);
  }

  return result;
}

uint64_t sub_100043268@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v25 = 0.0;
  v26 = 0;
  v24 = 0;
  v16 = *(v2 + 56);
  v16(&v22 - v14, 1, 1, v1);
  if (TMGetReferenceTime() && v24 == 1 && fabs(v25) < 2.0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10000BD44(v15, &unk_1003A3BE0, &qword_1002C36F0);
    v16(v10, 0, 1, v1);
    sub_10004F494(v10, v15);
  }

  sub_10004F424(v15, v13);
  if ((*(v2 + 48))(v13, 1, v1) == 1)
  {
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    sub_1001451FC(v27);
    memcpy(v28, v27, sizeof(v28));
    v17 = sub_100031A30(v28);
    v18 = v23;
    if (v17 == 1)
    {
      sub_10000BD44(v15, &unk_1003A3BE0, &qword_1002C36F0);
      v20 = 1;
      return (v16)(v18, v20, 1, v1);
    }

    memcpy(v29, v28, sizeof(v29));
    sub_10004CF70(v29, v23);
    sub_10000BD44(v15, &unk_1003A3BE0, &qword_1002C36F0);
    sub_10000BD44(v27, &qword_10039F268, &qword_1002C2730);
  }

  else
  {
    sub_10000BD44(v15, &unk_1003A3BE0, &qword_1002C36F0);
    v19 = *(v2 + 32);
    v19(v5, v13, v1);
    v18 = v23;
    v19(v23, v5, v1);
  }

  v20 = 0;
  return (v16)(v18, v20, 1, v1);
}

void *sub_100043754(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10004D6C8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004074(&qword_10039FE68, &qword_1002C3730);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10004385C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10004DEE0(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_10039E2D8, &qword_1002C3720, &type metadata accessor for TLV);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TLV();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000439AC(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v2 = result;
  v10 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_10004DDCC(result, v12, 1, v7, &qword_10039E2E0, &qword_1002C1720);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v2 && v4 && v4 > v2 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v2, v15);
    v2 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v2 == 0 || v2 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v2;
  v22 = v2 + 1;
  v23 = v24;
  v25 = &qword_10039E2E0;
  while (1)
  {
    v26 = *(v7 + 24);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v27)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  v30 = v7;
  v31 = v25;
  result = sub_10004DDCC((v26 > 1), v21 + 1, 1, v30, v25, &qword_1002C1720);
  v25 = v31;
  v7 = result;
  v27 = *(result + 24) >> 1;
  if (v21 >= v27)
  {
    goto LABEL_37;
  }

LABEL_40:
  v28 = v21 + 32;
  while (1)
  {
    *(v7 + v28) = v23;
    if (v22 == v4)
    {
      break;
    }

    v29 = *v22++;
    v23 = v29;
    if (++v28 - v27 == 32)
    {
      v21 = v27;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v28 - 31;
LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_100043B8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10004D4B0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100043C80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10004D96C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100043D74()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039FC08);
  sub_10000403C(v0, qword_10039FC08);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

void sub_100043DE0(char *a1@<X8>)
{
  sub_100046348();
  if (v1)
  {
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_10039FC08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "certificates are revoked", v6, 2u);
    }

    v7 = 1;
  }

  else
  {

    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_10039FC08);
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v9, "certificates are not revoked", v10, 2u);
    }

    v7 = 0;
  }

  *a1 = v7;
}

void sub_100043FB8(uint64_t a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v72 = a2;
  v6 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for Date();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = (&v67 - v19);
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v23 = sub_100046348();
  v25 = &unk_10039D000;
  if (v3)
  {
    v26 = v72;
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v69 = v12;
    v70 = a1;
    v67 = v17;
    v68 = v10;
    v71 = v22;
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v27;
    v76 = inited;
    sub_100043C80(v28);
    v30 = v76;
    v26 = v76[2];
    if (v26)
    {
      v73 = v13;
      v76 = _swiftEmptyArrayStorage;
      sub_10004E33C(0, v26, 0);
      v31 = 0;
      v32 = v76;
      while (v31 < v30[2])
      {
        v75 = v30[v31 + 4];
        sub_10004473C(&v75, v20);
        v76 = v32;
        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          sub_10004E33C(v33 > 1, v34 + 1, 1);
          v32 = v76;
        }

        ++v31;
        v32[2] = v34 + 1;
        (*(v74 + 32))(v32 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v34, v20, v73);
        if (v26 == v31)
        {

          v35 = v73;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v32 = _swiftEmptyArrayStorage;
    v35 = v13;
LABEL_11:
    v36 = v69;
    sub_100044B80(v32, v69);

    v37 = v74;
    v38 = *(v74 + 48);
    v39 = v38(v36, 1, v35);
    v40 = v70;
    if (v39 == 1)
    {
      sub_10000BD44(v36, &unk_1003A3BE0, &qword_1002C36F0);
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000403C(v41, qword_10039FC08);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = os_log_type_enabled(v42, v43);
      v26 = v72;
      if (v44)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Could not get the minimum expiration date", v45, 2u);
      }

      sub_10004F3D0();
      swift_allocError();
      *v46 = 5;
      swift_willThrow();
      v25 = &unk_10039D000;
    }

    else
    {
      v47 = *(v37 + 32);
      v47(v71, v36, v35);
      v48 = *sub_10000BE18((v40 + 72), *(v40 + 96));
      v49 = v68;
      sub_100043268(v68);
      if (v38(v49, 1, v35) != 1)
      {
        v62 = v67;
        v47(v67, v49, v35);
        v63 = v71;
        Date.timeIntervalSince(_:)();
        v65 = v64;
        v66 = *(v37 + 8);
        v66(v62, v35);
        v66(v63, v35);
        v61 = v65 > a3;
        v26 = v72;
        goto LABEL_28;
      }

      sub_10000BD44(v49, &unk_1003A3BE0, &qword_1002C36F0);
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_10000403C(v50, qword_10039FC08);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Could not calculate secure now", v53, 2u);
      }

      sub_10004F3D0();
      swift_allocError();
      *v54 = 6;
      swift_willThrow();
      (*(v37 + 8))(v71, v35);
      v26 = v72;
      v25 = &unk_10039D000;
    }
  }

  if (v25[109] != -1)
  {
LABEL_31:
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000403C(v55, qword_10039FC08);
  swift_errorRetain();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 4) = v60;
    *v59 = v60;
    _os_log_impl(&_mh_execute_header, v56, v57, "Certificate(s) invalid or not found: %@", v58, 0xCu);
    sub_10000BD44(v59, &unk_10039E220, &qword_1002C3D60);
  }

  else
  {
  }

  v61 = 0;
LABEL_28:
  *v26 = v61;
}

void sub_10004473C(unint64_t *a1@<X0>, void **a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a1 & 0xC000000000000001;
  if (v13)
  {
    goto LABEL_24;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  for (i = *(v12 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v15 = i;
    SecCertificateNotValidAfter();

    Date.init(timeIntervalSinceReferenceDate:)();
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000403C(v16, qword_10039FC08);
    (*(v8 + 16))(v11, a2, v7);

    v3 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v3, v17))
    {

      (*(v8 + 8))(v11, v7);
      return;
    }

    v35 = v17;
    v37 = v4;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v18 = 136315394;
    sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v8 + 8);
    v8 += 8;
    v22(v11, v7);
    v23 = sub_100008F6C(v19, v21, &v39);

    *(v18 + 4) = v23;
    v36 = v18;
    *(v18 + 12) = 2080;
    if (v12 >> 62)
    {
LABEL_26:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
LABEL_20:
      type metadata accessor for CFString(0);
      v27 = Array.description.getter();
      v29 = v28;

      v30 = sub_100008F6C(v27, v29, &v39);

      v31 = v36;
      *(v36 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v3, v35, "Expiration date is: %s for certificate with description:\n%s", v31, 0x16u);
      swift_arrayDestroy();

      return;
    }

    v38 = _swiftEmptyArrayStorage;
    a2 = &v38;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      break;
    }

    v33 = v3;
    v11 = 0;
    v4 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v24 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v25 = *(v12 + 8 * v11 + 32);
      }

      v26 = v25;
      if (!CFCopyDescription(v25))
      {
        goto LABEL_28;
      }

      a2 = &v38;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = v38[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v11;
      if (v24 == v7)
      {
        v3 = v33;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_100044B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1000508C0(&qword_10039F3F0, &type metadata accessor for Date);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100044E30()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  result = sub_100048C8C(v6);
  if (!v0)
  {
    v11 = result;
    v12 = v10;
    (*(v2 + 32))(v8, v6, v1);
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v11;
    v15 = v12;
    sub_100043C80(inited);
    sub_10004772C(v8, v15);

    return (*(v2 + 8))(v8, v1);
  }

  return result;
}

void sub_100044FBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v159 = a5;
  v160._countAndFlagsBits = a2;
  v155 = a4;
  v160._object = a3;
  v139 = a6;
  v158 = type metadata accessor for P521.KeyAgreement.PublicKey();
  v148 = *(v158 - 8);
  v7 = *(v148 + 64);
  v8 = __chkstk_darwin(v158);
  v146 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v152 = &v130 - v10;
  v147 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v154 = *(v147 - 8);
  v11 = *(v154 + 64);
  v12 = __chkstk_darwin(v147);
  v145 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v151 = &v130 - v14;
  v15 = type metadata accessor for HPKE.Ciphersuite();
  v149 = *(v15 - 8);
  v150 = v15;
  v16 = *(v149 + 64);
  v17 = __chkstk_darwin(v15);
  v143 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v142 = &v130 - v20;
  __chkstk_darwin(v19);
  v141 = &v130 - v21;
  v144 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v153 = *(v144 - 8);
  v22 = *(v153 + 64);
  v23 = __chkstk_darwin(v144);
  v140 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v130 - v25;
  v27 = type metadata accessor for HPKE.Sender();
  v156 = *(v27 - 8);
  v28 = *(v156 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v130 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v130 - v36;
  __chkstk_darwin(v35);
  v39 = &v130 - v38;
  v40 = type metadata accessor for String.Encoding();
  v157 = *(v40 - 8);
  v41 = *(v157 + 64);
  __chkstk_darwin(v40);
  v43 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v166;
  v45 = sub_1000465A0(200, 0x702D657275636573, 0xEE0064616F6C7961);
  if (v44)
  {
    return;
  }

  v131 = v34;
  v134 = v31;
  v135 = v37;
  v166 = v45;
  v136 = v26;
  v46 = v158;
  v137 = a1;
  v132 = v39;
  v133 = v27;
  v47 = v159;
  v138 = 0;
  v164 = 0xD000000000000024;
  v165 = 0x8000000100347D70;
  String.append(_:)(v160);
  static String.Encoding.utf8.getter();
  v48 = String.data(using:allowLossyConversion:)();
  v50 = v49;

  (*(v157 + 8))(v43, v40);
  if (v50 >> 60 != 15)
  {
    v164 = v48;
    v165 = v50;
    v55 = v166 & 0xC000000000000001;
    v160._countAndFlagsBits = v48;
    v160._object = v50;
    if ((v166 & 0xC000000000000001) != 0)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v56 = *(v166 + 32);
    }

    v57 = v56;
    v58 = SecCertificateRef.publicKey.getter();

    if (!v58)
    {
      goto LABEL_13;
    }

    v59 = SecKeyRef.keySizeInBits.getter();
    v61 = v60;

    if (v61)
    {
      goto LABEL_13;
    }

    if (v59 == 521)
    {
      if (v55)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v63 = v47;
      }

      else
      {
        if (!*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v63 = v47;
        v67 = *(v166 + 32);
      }

      v86 = v155;
      v87 = v156;
      v88 = SecCertificateRef.publicKey.getter();

      if (!v88)
      {
        goto LABEL_42;
      }

      v89 = SecKeyRef.externalRepresentation.getter();
      v91 = v90;

      if (v91 >> 60 == 15)
      {
        goto LABEL_42;
      }

      v162 = v89;
      v163 = v91;
      v92 = v152;
      v93 = v138;
      P521.KeyAgreement.PublicKey.init<A>(x963Representation:)();
      v138 = v93;
      if (v93)
      {
        goto LABEL_44;
      }

      v94 = P521.KeyAgreement.PublicKey.x963Representation.getter();
      v96 = v95;
      v97 = Data.sha256Digest.getter();
      v99 = v98;
      sub_100009548(v94, v96);
      v160._object = v97;
      v166 = v99;
      Data.append(_:)();
      v100 = v148;
      (*(v148 + 16))(v146, v92, v46);
      (*(v149 + 16))(v143, v137 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize521, v150);
      sub_1000094F4(v164, v165);
      v101 = v138;
      HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
      if (!v101)
      {
        (*(v100 + 8))(v152, v46);
        v118 = v134;
        v120 = v133;
LABEL_50:
        v121 = v166;
        object = v160._object;
        goto LABEL_51;
      }

      sub_100009548(v160._object, v166);
      (*(v100 + 8))(v152, v46);
LABEL_52:
      sub_100009548(v164, v165);
      return;
    }

    if (v59 != 384)
    {
      if (v59 != 256)
      {
LABEL_13:

        sub_100020C74(10001, 0xD000000000000013, 0x8000000100347DA0, 0);
        swift_willThrow();
        sub_100009548(v160._countAndFlagsBits, v160._object);
        return;
      }

      if (v55)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v63 = v47;
        goto LABEL_40;
      }

      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = v47;
        v62 = *(v166 + 32);
LABEL_40:
        v86 = v155;
        v87 = v156;
        v102 = v153;
        v103 = SecCertificateRef.publicKey.getter();

        if (!v103 || (v104 = SecKeyRef.externalRepresentation.getter(), v106 = v105, v103, v106 >> 60 == 15))
        {
LABEL_42:
          sub_100020C74(10005, 0xD000000000000022, 0x8000000100347DC0, 0);
          swift_willThrow();

          sub_100009548(v160._countAndFlagsBits, v160._object);
          return;
        }

        v162 = v104;
        v163 = v106;
        v107 = v136;
        v108 = v138;
        P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
        v138 = v108;
        if (v108)
        {
LABEL_44:
          sub_100009548(v160._countAndFlagsBits, v160._object);
          return;
        }

        v109 = P256.KeyAgreement.PublicKey.x963Representation.getter();
        v111 = v110;
        v112 = Data.sha256Digest.getter();
        v114 = v113;
        sub_100009548(v109, v111);
        v160._object = v112;
        v166 = v114;
        Data.append(_:)();
        v115 = v107;
        v116 = v144;
        (*(v102 + 16))(v140, v115, v144);
        (*(v149 + 16))(v141, v137 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize256, v150);
        sub_1000094F4(v164, v165);
        v117 = v138;
        HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
        if (v117)
        {
          sub_100009548(v160._object, v166);
          (*(v102 + 8))(v136, v116);
          goto LABEL_52;
        }

        (*(v102 + 8))(v136, v116);
        v120 = v133;
        v118 = v135;
        goto LABEL_50;
      }

LABEL_57:
      __break(1u);
      return;
    }

    if (v55)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v65 = v137;
      v66 = v154;
      goto LABEL_26;
    }

    v66 = v154;
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(v166 + 32);
      v65 = v137;
LABEL_26:
      v68 = SecCertificateRef.publicKey.getter();

      if (!v68)
      {
        goto LABEL_42;
      }

      v69 = SecKeyRef.externalRepresentation.getter();
      v71 = v70;

      if (v71 >> 60 == 15)
      {
        goto LABEL_42;
      }

      v162 = v69;
      v163 = v71;
      v72 = v151;
      v73 = v138;
      P384.KeyAgreement.PublicKey.init<A>(x963Representation:)();
      v138 = v73;
      if (v73)
      {
        goto LABEL_44;
      }

      v74 = P384.KeyAgreement.PublicKey.x963Representation.getter();
      v76 = v75;
      v77 = Data.sha256Digest.getter();
      v79 = v78;
      sub_100009548(v74, v76);
      v166 = v79;
      Data.append(_:)();
      v80 = *(v66 + 16);
      v81 = v72;
      v82 = v66;
      v83 = v147;
      v80(v145, v81, v147);
      (*(v149 + 16))(v142, v65 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize384, v150);
      sub_1000094F4(v164, v165);
      v84 = v131;
      v85 = v138;
      HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
      if (!v85)
      {
        (*(v82 + 8))(v151, v83);
        v118 = v84;
        v63 = v47;
        v86 = v155;
        v87 = v156;
        object = v77;
        v120 = v133;
        v121 = v166;
LABEL_51:
        v122 = v132;
        (*(v87 + 32))(v132, v118, v120);
        v162 = v86;
        v163 = v63;
        v161 = xmmword_1002BDC30;
        sub_10004F340();
        v123 = HPKE.Sender.seal<A, B>(_:authenticating:)();
        v125 = v124;
        sub_100009548(v161, *(&v161 + 1));
        v126 = v139;
        *v139 = object;
        v126[1] = v121;
        v126[2] = v123;
        v126[3] = v125;
        v127 = HPKE.Sender.encapsulatedKey.getter();
        v129 = v128;
        (*(v87 + 8))(v122, v120);
        sub_100009548(v164, v165);
        v126[4] = v127;
        v126[5] = v129;
        return;
      }

      sub_100009548(v77, v166);
      (*(v82 + 8))(v151, v83);
      goto LABEL_52;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_10000403C(v51, qword_10039FC08);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Error converting senderInfo to Data", v54, 2u);
  }

  sub_1000207FC(4000, 0, 0, 0);
  swift_willThrow();
}

uint64_t sub_100045E20()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = v0[25];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v1;
  aBlock[4] = sub_1000508B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100381370;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000508C0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v15);
}

void *sub_100046348()
{
  v2 = *v0;
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039FC08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000001ALL, 0x8000000100348050, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000465A0(200, 0x702D657275636573, 0xEE0064616F6C7961);
  if (!v1)
  {
    v14 = result;
    sub_10004671C(300, 7596553831663430000, 0xEE006E6F69746164);
    return v14;
  }

  return result;
}

void *sub_1000465A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = sub_10004B78C(a1, a2, a3);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  sub_100004074(&qword_10039FE30, &qword_1002C36E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = v9;
  v11 = inited + 32;
  v12 = sub_100046894(inited, a1, a2, a3);
  swift_setDeallocating();
  sub_100050864(v11);
  if (!v4)
  {
    if (v12[2])
    {
      v3 = v12[4];

      return v3;
    }

    v13 = v3[8];
    v3 = sub_10000BE18(v3 + 4, v3[7]);
    v14 = sub_10014D0AC(a1, a2, a3);
    v16 = v15;
    (*(v13 + 48))();
    sub_100009548(v14, v16);
LABEL_6:
    sub_10004F3D0();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10004671C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = sub_10004BAFC(a1, a2, a3);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!*(v9 + 2))
  {

LABEL_6:
    sub_10004F3D0();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    return v5;
  }

  v10 = v9;
  v11 = sub_100046894(v9, a1, a2, a3);
  if (v4)
  {

    return v5;
  }

  v5 = v11;
  v14 = v11[2];
  if (!v14)
  {

    v5 = v3[7];
    v16 = v3[8];
    sub_10000BE18(v3 + 4, v5);
    v17 = sub_10014D0AC(a1, a2, a3);
    v19 = v18;
    (*(v16 + 48))();
    sub_100009548(v17, v19);
    goto LABEL_6;
  }

  v15 = *(v10 + 2);

  if (v14 != v15)
  {
    sub_10004A978(v5, a1, a2, a3);
  }

  return v5;
}

uint64_t *sub_100046894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = a4;
    v10 = (a1 + 32);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = *v10;
      v31 = *v10;

      if (sub_100046C04(&v31, a2, a3, v7, v6))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004E31C(0, v11[2] + 1, 1);
          v11 = v32;
        }

        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          sub_10004E31C((v14 > 1), v15 + 1, 1);
          v11 = v32;
        }

        v11[2] = v15 + 1;
        v11[v15 + 4] = v12;
        v7 = a4;
        v6 = v4;
      }

      else
      {
      }

      ++v10;
      --v5;
    }

    while (v5);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v11[2])
  {
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000403C(v16, qword_10039FC08);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      v21 = Array.debugDescription.getter();
      v23 = sub_100008F6C(v21, v22, &v32);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Valid certificates: %s", v19, 0xCu);
      sub_10000959C(v20);
    }
  }

  else
  {

    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_10039FC08);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No valid certificates", v27, 2u);
    }

    sub_10004F3D0();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100046C04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *a1;
  if (a2 == 200)
  {
    if (a3 == 0x702D657275636573 && a4 == 0xEE0064616F6C7961 || (v14 = a5, v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), a5 = v14, (v15 & 1) != 0))
    {
      v11 = a5[17];
      v12 = a5[18];
      v13 = a5 + 14;
LABEL_11:
      sub_10000BE18(v13, v11);
      (*(v12 + 16))(v8, v11, v12);
      if (!v5)
      {
        return 1;
      }

      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_10039FC08);

      swift_errorRetain();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v19 = 136315650;
        *(v19 + 4) = sub_100008F6C(a3, a4, &v31);
        *(v19 + 12) = 2080;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v20 = String.init<A>(describing:)();
        v22 = sub_100008F6C(v20, v21, &v31);

        *(v19 + 14) = v22;
        *(v19 + 22) = 2080;
        v23 = sub_100156088(v8);
        v25 = sub_100008F6C(v23, v24, &v31);

        *(v19 + 24) = v25;
        _os_log_impl(&_mh_execute_header, v17, v18, "Certificate for %s failed verification: %s\nCertificate description: %s", v19, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  else if (a2 == 300)
  {
    if (a3 == 7596553831663430000 && a4 == 0xEE006E6F69746164 || (v9 = a5, v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), a5 = v9, (v10 & 1) != 0))
    {
      v11 = a5[22];
      v12 = a5[23];
      v13 = a5 + 19;
      goto LABEL_11;
    }
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000403C(v26, qword_10039FC08);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected CertificateRole", v29, 2u);
  }

  return 0;
}

uint64_t sub_100046FE8()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v61 - v9;
  v11 = type metadata accessor for Date();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v62 = &v61 - v17;
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v65 = sub_10000403C(v20, qword_10039FC08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v64 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v63 = v19;
    v25 = v24;
    v68 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, &v68);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100348030, _swiftEmptyArrayStorage);
    v31 = sub_100008F6C(v29, v30, &v68);

    *(v25 + 14) = v31;
    v2 = v1;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();

    v19 = v63;
  }

  v32 = v2;
  v34 = sub_100046348();
  if (v32)
  {
    goto LABEL_6;
  }

  v39 = v10;
  v40 = v33;
  sub_10004B520(v39);
  v41 = *(v66 + 48);
  if (v41(v39, 1, v67) == 1)
  {
    sub_10000BD44(v39, &unk_1003A3BE0, &qword_1002C36F0);
    v42 = *sub_10000BE18(v3 + 9, v3[12]);
    v43 = v61;
    sub_100043268(v61);
    if (v41(v43, 1, v67) == 1)
    {
      sub_10000BD44(v43, &unk_1003A3BE0, &qword_1002C36F0);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Could not calculate secure now", v46, 2u);
      }

      sub_10004F3D0();
      swift_allocError();
      *v47 = 4;
      swift_willThrow();
LABEL_6:
      v63 = v34;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "certififcates are not valid, renew...", v37, 2u);
      }

      v38 = v64;
      v48 = sub_100048C8C(v64);
      v50 = v49;

      if (!v32)
      {
      }

      (*(v66 + 32))(v19, v38, v67);
      v40 = v50;
      v34 = v48;
      goto LABEL_24;
    }

    v63 = v19;
    v51 = *(v66 + 32);
    v51(v62, v43, v67);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Could not load certificate rotation date, using secure now", v54, 2u);
    }

    v55 = v63;
    v51(v63, v62, v67);
    v19 = v55;
  }

  else
  {
    (*(v66 + 32))(v19, v39, v67);
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "all certififcates are valid", v58, 2u);
  }

LABEL_24:
  sub_100004074(&qword_10039FE30, &qword_1002C36E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = v34;
  v68 = v40;
  sub_100043C80(inited);
  sub_10004772C(v19, v68);

  return (*(v66 + 8))(v19, v67);
}

uint64_t sub_10004772C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v71 = *v2;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v68 = &v59 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v59 - v14;
  v16 = __chkstk_darwin(v13);
  v70 = &v59 - v17;
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000403C(v20, qword_10039FC08);
  v22 = *(v9 + 16);
  v22(v19, a1, v8);
  v23 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v23, v61);
  v66 = v3;
  v69 = a1;
  v63 = v9 + 16;
  v64 = v21;
  v62 = v22;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v73 = v60;
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, &v73);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002C1660;
    *(v29 + 56) = v8;
    v30 = sub_10000BE5C((v29 + 32));
    v22(v30, v19, v8);
    v31 = showFunction(signature:_:)(0xD000000000000030, 0x8000000100347FF0, v29);
    v33 = v32;

    v71 = *(v9 + 8);
    v71(v19, v8);
    v34 = sub_100008F6C(v31, v33, &v73);
    v35 = v70;

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v61, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v71 = *(v9 + 8);
    v71(v19, v8);
    v35 = v70;
  }

  v36 = v67;
  v37 = *(v67 + 16);
  v38 = _swiftEmptyArrayStorage;
  if (v37)
  {
    v73 = _swiftEmptyArrayStorage;
    sub_10004E33C(0, v37, 0);
    v38 = v73;
    v39 = (v36 + 32);
    do
    {
      v72 = *v39;
      sub_100047E54(&v72, v15);
      v73 = v38;
      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        sub_10004E33C(v40 > 1, v41 + 1, 1);
        v38 = v73;
      }

      v38[2] = v41 + 1;
      (*(v9 + 32))(v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v41, v15, v8);
      ++v39;
      --v37;
    }

    while (v37);
    v35 = v70;
  }

  v42 = v68;
  sub_100044B80(v38, v68);
  result = (*(v9 + 48))(v42, 1, v8);
  v44 = v69;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1000508C0(&qword_10039F3F0, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v45 = v35;
      v46 = v42;
    }

    else
    {
      v45 = v35;
      v46 = v44;
    }

    v47 = v62;
    v62(v45, v46, v8);
    v48 = v42;
    v49 = v71;
    v71(v48, v8);
    v50 = v65;
    v47(v65, v35, v8);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73 = v54;
      *v53 = 136315138;
      sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v71(v50, v8);
      v58 = sub_100008F6C(v55, v57, &v73);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "renewalDate is min(rotationDate, expirationDates): %s", v53, 0xCu);
      sub_10000959C(v54);

      v49 = v71;
    }

    else
    {

      v49(v50, v8);
    }

    sub_100048180(v35);
    return (v49)(v35, v8);
  }

  return result;
}

void sub_100047E54(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;
  SecCertificateNotValidAfter();

  Date.init(timeIntervalSinceReferenceDate:)();
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_10039FC08);
  (*(v6 + 16))(v9, a2, v5);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v16 = 136315394;
    sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v2;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_100008F6C(v17, v19, &v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_100156088(v10);
    v23 = sub_100008F6C(v21, v22, &v27);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Expiration date is: %s for certificate with description:\n%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void sub_100048180(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = *v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v55 - v9;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v62 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000403C(v20, qword_10039FC08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v63 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v55 = v4;
    v56 = v5;
    aBlock[0] = v25;
    *v24 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = v17;
    v29 = sub_100008F6C(v26, v27, aBlock);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = showFunction(signature:_:)(0xD000000000000022, 0x8000000100347FC0, _swiftEmptyArrayStorage);
    v32 = sub_100008F6C(v30, v31, aBlock);

    *(v24 + 14) = v32;
    v17 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();
    v4 = v55;
    v5 = v56;

    v16 = v63;
  }

  v33 = *sub_10000BE18(v2 + 9, v2[12]);
  sub_100043268(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BD44(v15, &unk_1003A3BE0, &qword_1002C36F0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to schedule renewal. Could not calculate secure now", v36, 2u);
    }
  }

  else
  {
    (*(v17 + 32))(v62, v15, v16);
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = v2[24];

    dispatch thunk of DispatchWorkItem.cancel()();

    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v38;
    aBlock[4] = sub_100050840;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100381320;
    _Block_copy(aBlock);
    v64 = _swiftEmptyArrayStorage;
    sub_1000508C0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);

    v42 = v17;
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = type metadata accessor for DispatchWorkItem();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = DispatchWorkItem.init(flags:block:)();

    v47 = v2[24];
    v2[24] = v46;

    v48 = v2[25];
    v50 = v2[12];
    v49 = v2[13];
    sub_10000BE18(v2 + 9, v50);
    v51 = v60;
    (*(*(v49 + 8) + 16))(v50);
    v52 = v61;
    + infix(_:_:)();
    v53 = *(v5 + 8);
    v53(v51, v4);
    v54 = v2[24];

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v53(v52, v4);
    (*(v42 + 8))(v62, v63);
  }
}
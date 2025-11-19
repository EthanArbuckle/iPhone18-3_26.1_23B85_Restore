uint64_t sub_1004FFAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
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

id sub_1004FFC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v71 - v7;
  v9 = type metadata accessor for PencilUnpairData.DeviceUnpairData();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LocalFindableAccessoryRecord();
  v15 = sub_100314604(*(a1 + v14[10]), *(a1 + v14[11]));
  if (v16 >> 60 == 15)
  {
    sub_100500BC4();
    swift_allocError();
    *v17 = xmmword_1013AC380;
    *(v17 + 16) = 3;
    swift_willThrow();
    return sub_100501020(a1, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v19 = v15;
  v78 = a2;
  v74 = v10;
  v75 = v2;
  v20 = (a1 + v14[7]);
  v22 = *v20;
  v21 = v20[1];
  v23 = v14[9];
  v80 = v16;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v79 = v19;
  v26 = v25;
  v27 = *(v25 + 16);
  v73 = a1;
  v27(v8, a1 + v23, v24);
  (*(v26 + 56))(v8, 0, 1, v24);
  v28 = v79;
  v76 = v21;
  v77 = v22;
  sub_100017D5C(v22, v21);
  v29 = sub_100313B54(v28, v80);
  v31 = v30;
  v32 = Data.hexString.getter();
  v34 = v33;
  result = sub_100016590(v29, v31);
  v35 = v80 >> 62;
  if ((v80 >> 62) > 1)
  {
    v36 = v78;
    if (v35 != 2)
    {
      goto LABEL_13;
    }

    v38 = *(v28 + 16);
    v37 = *(v28 + 24);
    v39 = __OFSUB__(v37, v38);
    v40 = v37 - v38;
    if (!v39)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v35)
  {
    v36 = v78;
    goto LABEL_13;
  }

  LODWORD(v40) = HIDWORD(v28) - v28;
  if (__OFSUB__(HIDWORD(v28), v28))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = v40;
  v36 = v78;
LABEL_12:
  if (v40 < -1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_13:
  v41 = Data.subdata(in:)();
  v43 = v42;
  v44 = Data.hexString.getter();
  v78 = v45;
  sub_100016590(v41, v43);
  v46 = v76;
  *v13 = v77;
  v13[1] = v46;
  sub_1000D2AD8(v8, v13 + v9[5], &qword_1016980D0, &unk_10138F3B0);
  v47 = (v13 + v9[6]);
  *v47 = v32;
  v47[1] = v34;
  v48 = v9[7];
  v77 = v13;
  v49 = (v13 + v48);
  v50 = v78;
  *v49 = v44;
  v49[1] = v50;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v51 = result;
  uniqueChipID = MobileGestalt_get_uniqueChipID();

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v53 = result;
    chipID = MobileGestalt_get_chipID();

    v81 = uniqueChipID;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v55;
    v81 = chipID;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v57;
    v72 = v56;
    v58 = sub_100EF9784();
    v60 = v59;
    v61 = v73;
    v62 = UUID.uuidString.getter();
    v64 = v63;
    sub_1000BC4D4(&qword_1016A2BE0, &qword_1013AC408);
    v65 = *(v74 + 72);
    v66 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_101385D80;
    v68 = v77;
    sub_100501080(v77, v67 + v66, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    sub_100006654(v79, v80);
    sub_100501020(v61, type metadata accessor for LocalFindableAccessoryRecord);
    result = sub_100501020(v68, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    v69 = v76;
    *v36 = v78;
    *(v36 + 8) = v69;
    v70 = v71;
    *(v36 + 16) = v72;
    *(v36 + 24) = v70;
    *(v36 + 32) = v58;
    *(v36 + 40) = v60;
    *(v36 + 48) = v62;
    *(v36 + 56) = v64;
    *(v36 + 64) = 0;
    *(v36 + 72) = v67;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1005000E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4365766F6D6572 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
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

uint64_t sub_1005002F8(const void *a1, uint64_t a2)
{
  v68 = &type metadata for PencilPairingCheckData;
  v69 = &off_101624FD0;
  v67[0] = swift_allocObject();
  memcpy((v67[0] + 16), a1, 0x130uLL);
  v65 = type metadata accessor for PencilPairingLockCheckResponse();
  v66 = &off_10162FA58;
  v4 = sub_1000280DC(v64);
  sub_100501080(a2, v4, type metadata accessor for PencilPairingLockCheckResponse);
  sub_1002DDD40(a1, &v62);
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = sub_1000035D0(v67, &type metadata for PencilPairingCheckData);
  v7 = v6[30];
  v8 = v6[31];
  sub_100017D5C(v7, v8);
  v9 = Data.hexString.getter();
  v11 = v10;
  sub_100016590(v7, v8);
  *(v5 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  v14 = sub_1000035D0(v64, v65);
  v15 = *v14;
  v16 = v14[1];
  sub_100017D5C(*v14, v16);
  v17 = Data.hexString.getter();
  v19 = v18;
  sub_100016590(v15, v16);
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v12;
  *(v13 + 32) = v17;
  *(v13 + 40) = v19;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = sub_1000035D0(v64, v65);
  v22 = v21[2];
  v23 = v21[3];
  sub_100017D5C(v22, v23);
  v24 = Data.hexString.getter();
  v26 = v25;
  sub_100016590(v22, v23);
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v12;
  *(v20 + 32) = v24;
  *(v20 + 40) = v26;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v28 = sub_1000035D0(v67, v68);
  v29 = v28[18];
  v30 = v28[19];
  sub_100017D5C(v29, v30);
  v31 = Data.hexString.getter();
  v33 = v32;
  sub_100016590(v29, v30);
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = v12;
  *(v27 + 32) = v31;
  *(v27 + 40) = v33;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101385D80;
  v35 = sub_1000035D0(v64, v65);
  v36 = v35[4];
  v37 = v35[5];
  sub_100017D5C(v36, v37);
  v38 = Data.hexString.getter();
  v40 = v39;
  sub_100016590(v36, v37);
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = v12;
  *(v34 + 32) = v38;
  *(v34 + 40) = v40;
  os_log(_:dso:log:_:_:)();

  v41 = sub_1000035D0(v67, v68);
  v43 = v41[31];
  v62 = v41[30];
  v42 = v62;
  v63 = v43;
  v44 = sub_1000035D0(v64, v65);
  v45 = *v44;
  v46 = v44[1];
  sub_100017D5C(v42, v43);
  sub_100017D5C(v45, v46);
  Data.append(_:)();
  sub_100016590(v45, v46);
  v47 = sub_1000035D0(v64, v65);
  v48 = v47[2];
  v49 = v47[3];
  sub_100017D5C(v48, v49);
  Data.append(_:)();
  sub_100016590(v48, v49);
  v50 = sub_1000035D0(v67, v68);
  v51 = v50[18];
  v52 = v50[19];
  sub_100017D5C(v51, v52);
  Data.append(_:)();
  sub_100016590(v51, v52);
  v53 = sub_1000035D0(v64, v65);
  v54 = v53[4];
  v55 = v53[5];
  sub_100017D5C(v54, v55);
  Data.append(_:)();
  sub_100016590(v54, v55);
  static os_log_type_t.default.getter();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_101385D80;
  v57 = v62;
  v58 = v63;
  v59 = Data.hexString.getter();
  *(v56 + 56) = &type metadata for String;
  *(v56 + 64) = v12;
  *(v56 + 32) = v59;
  *(v56 + 40) = v60;
  os_log(_:dso:log:_:_:)();

  sub_100017D5C(v57, v58);
  sub_100016590(v57, v58);
  sub_100007BAC(v67);
  sub_100007BAC(v64);
  return v57;
}

uint64_t sub_1005008D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1016947A8 != -1)
  {
    swift_once();
  }

  v8 = qword_10177AEE8;
  if (qword_10177AEE8 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C448);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "verifyPencilSignature: Missing SignatureVerificationKey!", v12, 2u);
    }

    v13 = 0;
  }

  else
  {
    v14 = qword_10177AEE0;
    sub_100017D5C(qword_10177AEE0, qword_10177AEE8);
    v13 = sub_100A74FAC(v14, v8, a1, a2, a3, a4, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    sub_100006654(v14, v8);
  }

  return v13 & 1;
}

uint64_t type metadata accessor for PencilUnpairData.DeviceUnpairData()
{
  result = qword_1016A2CF8;
  if (!qword_1016A2CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100500B5C()
{
  result = qword_1016A2BC8;
  if (!qword_1016A2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BC8);
  }

  return result;
}

unint64_t sub_100500BC4()
{
  result = qword_1016A2BD8;
  if (!qword_1016A2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BD8);
  }

  return result;
}

uint64_t sub_100500C80(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100500D30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_100500DB8()
{
  result = qword_1016A2BF8;
  if (!qword_1016A2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BF8);
  }

  return result;
}

uint64_t sub_100500E0C()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100007BAC(v0 + 4);
  sub_100007BAC(v0 + 9);

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_100500E6C()
{
  v1 = *(*(sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1004F6D38();
}

uint64_t sub_100500EEC(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v6 + 311) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004F6F54(a1, v7, v1 + v4, v8, (v1 + v6));
}

uint64_t sub_100500FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100501020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100501080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005010E8()
{
  result = qword_1016A2C10;
  if (!qword_1016A2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C10);
  }

  return result;
}

unint64_t sub_10050113C()
{
  result = qword_1016A2C18;
  if (!qword_1016A2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C18);
  }

  return result;
}

unint64_t sub_100501190()
{
  result = qword_1016A2C20;
  if (!qword_1016A2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C20);
  }

  return result;
}

unint64_t sub_1005011E4()
{
  result = qword_1016A2C28;
  if (!qword_1016A2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C28);
  }

  return result;
}

unint64_t sub_100501238()
{
  result = qword_1016A2C30;
  if (!qword_1016A2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C30);
  }

  return result;
}

unint64_t sub_10050128C()
{
  result = qword_1016A2C38;
  if (!qword_1016A2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C38);
  }

  return result;
}

uint64_t sub_1005012E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1004EAC04(a1, v4, v5, v6);
}

unint64_t sub_100501394()
{
  result = qword_1016A2C40;
  if (!qword_1016A2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C40);
  }

  return result;
}

unint64_t sub_1005013E8()
{
  result = qword_1016A2C48;
  if (!qword_1016A2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C48);
  }

  return result;
}

unint64_t sub_10050143C()
{
  result = qword_1016A2C50;
  if (!qword_1016A2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C50);
  }

  return result;
}

unint64_t sub_100501490()
{
  result = qword_1016A2C58;
  if (!qword_1016A2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C58);
  }

  return result;
}

unint64_t sub_1005014E4()
{
  result = qword_1016A2C60;
  if (!qword_1016A2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C60);
  }

  return result;
}

unint64_t sub_100501538()
{
  result = qword_1016A2C68;
  if (!qword_1016A2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C68);
  }

  return result;
}

unint64_t sub_10050158C()
{
  result = qword_1016A2C70;
  if (!qword_1016A2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C70);
  }

  return result;
}

unint64_t sub_1005015E0()
{
  result = qword_1016A2C78;
  if (!qword_1016A2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C78);
  }

  return result;
}

unint64_t sub_100501634()
{
  result = qword_1016A2C80;
  if (!qword_1016A2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C80);
  }

  return result;
}

unint64_t sub_100501688()
{
  result = qword_1016A2C88;
  if (!qword_1016A2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C88);
  }

  return result;
}

unint64_t sub_1005016DC()
{
  result = qword_1016A2C90;
  if (!qword_1016A2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C90);
  }

  return result;
}

unint64_t sub_100501730()
{
  result = qword_1016A2C98;
  if (!qword_1016A2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C98);
  }

  return result;
}

uint64_t sub_10050178C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005017D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100501874(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1005018B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
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

uint64_t sub_100501914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1005019DC()
{
  sub_100395648();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100501A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100501AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100501B14()
{
  result = qword_1016A2D40;
  if (!qword_1016A2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D40);
  }

  return result;
}

unint64_t sub_100501B68()
{
  result = qword_1016A2D48;
  if (!qword_1016A2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D48);
  }

  return result;
}

unint64_t sub_100501BBC()
{
  result = qword_1016A2D58;
  if (!qword_1016A2D58)
  {
    sub_1000BC580(&qword_1016A2D50, &qword_1013AD1A0);
    sub_100501CC4(&qword_1016A2D60, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D58);
  }

  return result;
}

unint64_t sub_100501C70()
{
  result = qword_1016A2D70;
  if (!qword_1016A2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D70);
  }

  return result;
}

uint64_t sub_100501CC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100501D40()
{
  result = qword_1016A2D78;
  if (!qword_1016A2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D78);
  }

  return result;
}

unint64_t sub_100501D98()
{
  result = qword_1016A2D80;
  if (!qword_1016A2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D80);
  }

  return result;
}

unint64_t sub_100501DF0()
{
  result = qword_1016A2D88;
  if (!qword_1016A2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D88);
  }

  return result;
}

unint64_t sub_100501E48()
{
  result = qword_1016A2D90;
  if (!qword_1016A2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D90);
  }

  return result;
}

unint64_t sub_100501EA0()
{
  result = qword_1016A2D98;
  if (!qword_1016A2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D98);
  }

  return result;
}

unint64_t sub_100501EF8()
{
  result = qword_1016A2DA0;
  if (!qword_1016A2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2DA0);
  }

  return result;
}

unint64_t sub_100501F50()
{
  result = qword_1016A2DA8;
  if (!qword_1016A2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2DA8);
  }

  return result;
}

unint64_t sub_100501FA4()
{
  result = qword_1016A2DB0;
  if (!qword_1016A2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2DB0);
  }

  return result;
}

uint64_t sub_100501FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

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
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100502180@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

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
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100502304()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Date.trustedNow.getter(v3);
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    sub_100503914(v3);
  }

  return result;
}

uint64_t sub_1005023F4(unsigned __int8 *a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v6 != *(result + 48))
    {
      *(result + 48) = v6;
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 56);
      v9(v5, 1, 1, v8);
      sub_100503914(v5);
      v9(v5, 1, 1, v8);
      sub_100503784(v5);
    }
  }

  return result;
}

uint64_t sub_10050252C()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_100501FFC(v6);
  v15 = v8[6];
  if (v15(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    v16 = 0;
  }

  else
  {
    v17 = v8[4];
    v17(v14, v6, v7);
    sub_100502180(v4);
    if (v15(v4, 1, v7) == 1)
    {
      static Date.distantPast.getter();
      if (v15(v4, 1, v7) != 1)
      {
        sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v17(v12, v4, v7);
    }

    sub_100503E24(&qword_1016C9070, &type metadata accessor for Date);
    v18 = dispatch thunk of static Comparable.< infix(_:_:)();
    v19 = v8[1];
    v19(v12, v7);
    v19(v14, v7);
    v16 = v18 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_1005027E8()
{
  v54 = type metadata accessor for DispatchWorkItemFlags();
  *&v53 = *(v54 - 8);
  v0 = *(v53 + 64);
  __chkstk_darwin(v54);
  *&v52 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for DispatchTime();
  v51 = *(v56 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v56);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v50 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v47 - 8);
  v20 = *(v46 + 64);
  __chkstk_darwin(v47);
  v48 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v55 = *(v58 - 8);
  v22 = *(v55 + 64);
  v23 = __chkstk_darwin(v58);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v57 = &v46 - v26;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v62 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v60)
  {
    static DispatchTime.now()();
    *v11 = 1;
    (*(v8 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v7);
    + infix(_:_:)();
    (*(v8 + 8))(v11, v7);
    v51 = *(v51 + 8);
    (v51)(v15, v56);
    sub_1000BC488();
    (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v2);
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v6, v2);
    v65 = sub_100503DF4;
    v66 = v59;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100006684;
    v64 = &unk_101625210;
    v28 = _Block_copy(&aBlock);

    v29 = v57;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100503E24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v30 = v52;
    v31 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);

    (*(v53 + 8))(v30, v31);
    (*(v55 + 8))(v29, v58);
    (v51)(v17, v56);
  }

  v33 = *(v59 + 72);
  if (v33 == 2)
  {
    static os_log_type_t.default.getter();
    if (qword_101695040 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

    goto LABEL_10;
  }

  v34 = v33 & 1;
  v35 = (v33 >> 8) & 1;
  v56 = 0x80000001013581B0;
  v36 = *(v59 + 80);
  v52 = *(v59 + 96);
  v53 = v36;
  v37 = v57;
  static DispatchQoS.background.getter();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v54 = v38;
  *(v39 + 24) = v34;
  *(v39 + 25) = v35;
  v40 = v52;
  *(v39 + 32) = v53;
  *(v39 + 48) = v40;
  v41 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v42 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v42 + 40) = v43;
  swift_unknownObjectWeakInit();
  *(v42 + 88) = 0;
  *&v53 = sub_1000BC488();
  *&v52 = ".searchpartyd.CloudKitCoalescer";
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  v44 = v55;
  (*(v55 + 16))(v25, v37, v58);
  (*(v46 + 104))(v48, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v47);
  aBlock = _swiftEmptyArrayStorage;
  sub_100503E24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v42 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v42 + 24) = 0xD00000000000002FLL;
  *(v42 + 32) = v56;
  *(v42 + 48) = sub_100503DE0;
  *(v42 + 56) = v39;
  *(v42 + 64) = sub_100503DEC;
  *(v42 + 72) = v41;

  sub_100997398();

  (*(v44 + 8))(v57, v58);

  v45 = *(v59 + 16);
  *(v59 + 16) = v42;

  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
LABEL_10:
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_1005032FC@<X0>(__int128 *a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = *(a2 + 4);
  v14 = *(a2 + 1);
  v15 = a1[1];
  v16 = *a1;
  v8 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_10050252C();

    v12 = v15;
    v11 = v16;
    if (v10)
    {
      v13 = 256;
      if ((v5 & 1) == 0)
      {
        v13 = 0;
      }

      *&v11 = v13 & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
      *(&v11 + 1) = v6;
      v8 = v7;
      v12 = v14;
    }
  }

  else
  {
    v12 = v15;
    v11 = v16;
  }

  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_1005033D0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v6 = *(v5 + 24);

      PassthroughSubject.send(_:)();

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_1005034F4()
{
  if (sub_10050252C())
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    if (v1())
    {
      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      return 0;
    }

    else
    {
      sub_1005027E8();
      return 1;
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100503D64();
    return swift_allocError();
  }
}

uint64_t sub_100503630(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3 = *(a2 + 24);

  PassthroughSubject.send(_:)();
}

uint64_t sub_100503708()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_100503784(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D3410(a1, v5);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100503914(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D3410(a1, v5);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

void *sub_100503AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[2] = 0;
  v8 = sub_1000BC4D4(&unk_1016C2F50, &unk_1013AD520);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = v11;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v12 = qword_10177CEA0;
  v13 = *(qword_10177CEA0 + 48);

  AnyCurrentValuePublisher.value.getter();

  *(v4 + 48) = v23;
  v14 = *(a1 + 16);
  *(v4 + 9) = *a1;
  *(v4 + 11) = v14;
  v4[13] = *(a1 + 32);
  v4[7] = a2;
  v4[8] = a3;
  v24 = v4[3];
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A2F68, &unk_1016C2F50, &unk_1013AD520);

  v15 = Publisher<>.sink(receiveValue:)();

  v16 = v4[4];
  v4[4] = v15;

  v17 = *(v12 + 48);

  AnyCurrentValuePublisher.publisher.getter();

  swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  v18 = Publisher<>.sink(receiveValue:)();

  v19 = v4[5];
  v4[5] = v18;

  v20 = sub_1005034F4();
  sub_1000BB584(v20, v21 & 1);
  return v4;
}

unint64_t sub_100503D64()
{
  result = qword_1016A2F70;
  if (!qword_1016A2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2F70);
  }

  return result;
}

uint64_t sub_100503E24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100503E80()
{
  result = qword_1016A2F78;
  if (!qword_1016A2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2F78);
  }

  return result;
}

uint64_t sub_100503ED4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return Data._Representation.subscript.getter();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100503F40(uint64_t a1, unint64_t a2)
{
  v32 = type metadata accessor for Endianness();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v8._countAndFlagsBits = 0x3A656372756F733CLL;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  v31 = a2;
  sub_100503ED4(0, 0, a1, a2);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  v9 = v33;
  if (HIBYTE(v33))
  {
    v9 = 0;
  }

  LOBYTE(v33) = v9;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x49726F646E657620;
  v11._object = 0xEB00000000203A64;
  String.append(_:)(v11);
  sub_100503ED4(1, 2, a1, a2);
  v12 = enum case for Endianness.little(_:);
  v13 = *(v4 + 104);
  v13(v7, enum case for Endianness.little(_:), v32);
  v30 = v13;
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  v14 = v33;
  if (v34)
  {
    v14 = 0;
  }

  v33 = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x746375646F727020;
  v16._object = 0xEC000000203A6449;
  String.append(_:)(v16);
  v17 = a1;
  v18 = a1;
  v19 = v31;
  sub_100503ED4(3, 4, v18, v31);
  v20 = v32;
  v13(v7, v12, v32);
  FixedWidthInteger.init(data:ofEndianness:)();
  v21 = v33;
  if (v34)
  {
    v21 = 0;
  }

  v33 = v21;
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._object = 0x8000000101358300;
  v23._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v23);
  sub_100503ED4(5, 6, v17, v19);
  v30(v7, v12, v20);
  FixedWidthInteger.init(data:ofEndianness:)();
  v24 = v33;
  if (v34)
  {
    v24 = 0;
  }

  v33 = v24;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x756C615677617220;
  v26._object = 0xEB00000000203A65;
  String.append(_:)(v26);
  v27._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return v35;
}

uint64_t sub_100504370(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 7)
    {
      return result;
    }
  }

  sub_100016590(result, a2);
  return 0;
}

uint64_t sub_1005043E0(uint64_t a1, unint64_t a2)
{
  v18 = a1;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100503ED4(1, 2, a1, a2);
  v9 = enum case for Endianness.little(_:);
  v10 = *(v5 + 104);
  v10(v8, enum case for Endianness.little(_:), v4);
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  v17 = v21;
  v11 = v22;
  sub_100503ED4(3, 4, v18, a2);
  v10(v8, v9, v4);
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v17;
  }

  if (v20)
  {
    v13 = 0;
  }

  else
  {
    v13 = v19;
  }

  result = sub_100314604(v12, v13);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005045B0()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

Swift::Int sub_100504614()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 24);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100504684()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005046F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v25 = 60;
  v26 = 0xE100000000000000;
  *&v24[0] = v0;
  type metadata accessor for Descriptor();
  sub_100504A60(&qword_1016A3048, v7, type metadata accessor for Descriptor);
  v8._countAndFlagsBits = CustomDebugStringConvertible.typeDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = CustomDebugStringConvertible<>.addressDescription.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12 = [v6 UUID];
  sub_100B699C8(v5);

  sub_100504A60(&qword_101696930, 255, &type metadata accessor for UUID);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  (*(v2 + 8))(v5, v1);
  v14._countAndFlagsBits = 23328;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = [v6 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2112093;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  if ([v6 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return v25;
}

uint64_t sub_100504A60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t CurrentLocationMonitor.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t CurrentLocationMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CurrentLocationMonitor.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100504C50;
}

void sub_100504C54(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CurrentLocationMonitor.currentLocation.getter()
{
  v1 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_100504D00@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v5;
  return result;
}

uint64_t CurrentLocationMonitor.currentAuthorizationStatus.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100504E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *CurrentLocationMonitor.init(mode:desiredAccuracy:)(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v44 = a3;
  v43 = a2;
  v52 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation] = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor__currentAuthorizationStatus] = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager] = 0;
  v51 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue;
  v50 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100281024(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v13;
  *&v3[v51] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts] = 0;
  v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted] = 0;
  v20 = objc_allocWithZone(NSBundle);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithPath:v21];

  if (v22)
  {
    v23 = [objc_opt_self() authorizationStatusForBundle:v22];
  }

  else
  {
    v23 = 0;
  }

  v4[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_mode] = v52 & 1;
  LODWORD(aBlock[0]) = v23;
  v24 = sub_1000BC4D4(&qword_1016A3090, &unk_1013AD6A8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = CurrentValueSubject.init(_:)();
  *&v4[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_authorizationStatusSubject] = v27;
  aBlock[0] = v27;
  sub_1000041A4(&qword_1016A30A0, &qword_1016A3090, &unk_1013AD6A8);
  *&v4[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_authorizationStatusPublisher] = Publisher.eraseToAnyPublisher()();
  v28 = type metadata accessor for CurrentLocationMonitor();
  v55.receiver = v4;
  v55.super_class = v28;
  v29 = objc_msgSendSuper2(&v55, "init");
  v30 = objc_allocWithZone(NSBundle);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 initWithPath:v31];

  if (v32)
  {
    v33 = *&v29[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue];
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    *(v34 + 24) = v32;
    *(v34 + 32) = v43;
    *(v34 + 40) = v44 & 1;
    aBlock[4] = sub_100505710;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016252F0;
    v35 = _Block_copy(aBlock);
    v36 = v33;
    v37 = v29;
    v38 = v32;
    v39 = v19;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v40 = v47;
    v41 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v48 + 8))(v40, v41);
    (*(v45 + 8))(v39, v46);
  }

  return v29;
}

uint64_t sub_1005055C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(CLLocationManager) initWithEffectiveBundle:a2 delegate:a1 onQueue:*(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue)];
  v9 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager;
  v10 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager);
  *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager) = v8;

  if ((a4 & 1) == 0)
  {
    [*(a1 + v9) setDesiredAccuracy:*&a3];
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v13 & 1) == 0)
  {
    v12 = [objc_opt_self() authorizationStatusForBundle:a2];
    return sub_100010578(v12);
  }

  return result;
}

id sub_100505748(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager);

  return [v2 requestLocation];
}

uint64_t sub_100505828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

id sub_100505AE8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts;
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts) = v5;
    static os_log_type_t.default.getter();
    if (qword_1016947B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  v7 = *(v1 + v2);
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  if (*(v1 + v2) == 1)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    if (*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_mode))
    {
      v9 = &selRef_startMonitoringSignificantLocationChanges;
    }

    else
    {
      v9 = &selRef_startUpdatingLocation;
    }

    result = [*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager) *v9];
    *(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted) = 1;
  }

  return result;
}

id sub_100505CA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts;
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts) = v5;
    static os_log_type_t.default.getter();
    if (qword_1016947B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  v7 = *(v1 + v2);
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  if (!*(v1 + v2))
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    if (*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_mode))
    {
      v9 = &selRef_stopMonitoringSignificantLocationChanges;
    }

    else
    {
      v9 = &selRef_stopUpdatingLocation;
    }

    result = [*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager) *v9];
    *(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted) = 0;
  }

  return result;
}

_BYTE *sub_100505E50(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted;
  if ((result[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted] & 1) == 0)
  {
    v2 = result;
    static os_log_type_t.default.getter();
    if (qword_1016947B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    result = [*&v2[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager] startUpdatingLocation];
    v2[v1] = 1;
  }

  return result;
}

_BYTE *sub_100505F44(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted;
  if (result[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted] == 1)
  {
    v2 = result;
    static os_log_type_t.default.getter();
    if (qword_1016947B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    result = [*&v2[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager] stopUpdatingLocation];
    v2[v1] = 0;
  }

  return result;
}

id CurrentLocationMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurrentLocationMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentLocationMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100506164()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t (*sub_1005061D8(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100506DAC;
}

void sub_100506278(uint64_t a1, char a2)
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

uint64_t sub_100506310(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CurrentLocationMonitor.locationManager(_:didFailWithError:)()
{
  static os_log_type_t.error.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100008C00();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100506698()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177AEF0 = result;
  return result;
}

uint64_t sub_100506710(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  v14 = &v1[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 1);
  aBlock = Strong;
  v52 = v16;
  sub_1000BC4D4(&unk_1016A3170, &qword_1013AD7B0);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v13 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v13 + 64) = v20;
  *(v13 + 32) = v17;
  *(v13 + 40) = v19;
  if (a1 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  aBlock = v21;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v20;
  *(v13 + 72) = v22;
  *(v13 + 80) = v23;
  os_log(_:dso:log:_:_:)();

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(a1 + 32);
  }

  v26 = v25;
  if (sub_1010E1130())
  {
    v27 = 0;
  }

  else
  {
    v28 = v26;
    v27 = v26;
  }

  v29 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v30 = *&v2[v29];
  *&v2[v29] = v27;
  v31 = v27;

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v33 = v42;
  v32 = v43;
  (*(v42 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v43);
  v34 = static OS_dispatch_queue.global(qos:)();
  (*(v33 + 8))(v12, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  *(v35 + 24) = v27;
  v55 = sub_100506D54;
  v56 = v35;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100006684;
  v54 = &unk_101625610;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v2;
  v39 = v44;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v40 = v46;
  v41 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v48 + 8))(v40, v41);
  (*(v45 + 8))(v39, v47);
}

unint64_t sub_100506CE4()
{
  result = qword_1016A30D0;
  if (!qword_1016A30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A30D0);
  }

  return result;
}

uint64_t sub_100506DE0(void *a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = sub_1000BC4D4(a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[31] = a2;
  sub_100328B5C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_100506F34@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100507020()
{
  v1 = *v0;
  v2 = 0x70656363616E752ELL;
  v3 = 0x746E65732ELL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x64656C6961662ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657470656363612ELL;
  if (v1 != 1)
  {
    v5 = 0x747365757165722ELL;
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

uint64_t sub_100507110(uint64_t a1)
{
  v2 = sub_1005075A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050714C(uint64_t a1)
{
  v2 = sub_1005075A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100507188@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005075F8(a1, &qword_1016A31B0, &qword_1013ADAF0, sub_1005075A4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100507228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E61747065636361 && a2 == 0xEF65746174536563)
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

uint64_t sub_1005072B8(uint64_t a1)
{
  v2 = sub_100507778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005072F4(uint64_t a1)
{
  v2 = sub_100507778();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100507330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005075F8(a1, &qword_1016A31C8, &qword_1013ADB00, sub_100507778);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1005073D4()
{
  result = qword_1016A3180;
  if (!qword_1016A3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3180);
  }

  return result;
}

unint64_t sub_10050742C()
{
  result = qword_1016A3188;
  if (!qword_1016A3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3188);
  }

  return result;
}

unint64_t sub_100507484()
{
  result = qword_1016A3190;
  if (!qword_1016A3190)
  {
    sub_1000BC580(&qword_1016A3198, qword_1013AD998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3190);
  }

  return result;
}

unint64_t sub_1005074EC()
{
  result = qword_1016A31A0;
  if (!qword_1016A31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31A0);
  }

  return result;
}

unint64_t _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100507550()
{
  result = qword_1016A31A8;
  if (!qword_1016A31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31A8);
  }

  return result;
}

unint64_t sub_1005075A4()
{
  result = qword_1016A31B8;
  if (!qword_1016A31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31B8);
  }

  return result;
}

unint64_t sub_1005075F8(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_1000BC4D4(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = sub_1000035D0(a1, a1[3]);
  a4();
  v13 = v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_100328A48();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v10, v7);
    v13 = v17;
    sub_100007BAC(a1);
  }

  return v13;
}

unint64_t sub_100507778()
{
  result = qword_1016A31D0;
  if (!qword_1016A31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31D0);
  }

  return result;
}

unint64_t sub_1005077F0()
{
  result = qword_1016A31E0;
  if (!qword_1016A31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31E0);
  }

  return result;
}

unint64_t sub_100507848()
{
  result = qword_1016A31E8;
  if (!qword_1016A31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31E8);
  }

  return result;
}

unint64_t sub_1005078A0()
{
  result = qword_1016A31F0;
  if (!qword_1016A31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31F0);
  }

  return result;
}

unint64_t sub_1005078F8()
{
  result = qword_1016A31F8;
  if (!qword_1016A31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31F8);
  }

  return result;
}

unint64_t sub_100507950()
{
  result = qword_1016A3200;
  if (!qword_1016A3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3200);
  }

  return result;
}

unint64_t sub_1005079A8()
{
  result = qword_1016A3208;
  if (!qword_1016A3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3208);
  }

  return result;
}

unint64_t sub_100507A08(uint64_t a1)
{
  *(a1 + 8) = sub_100507A38();
  result = sub_100507A8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100507A38()
{
  result = qword_1016A3210;
  if (!qword_1016A3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3210);
  }

  return result;
}

unint64_t sub_100507A8C()
{
  result = qword_1016A3218;
  if (!qword_1016A3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3218);
  }

  return result;
}

uint64_t sub_100507AF0()
{
  v1 = v0;
  v2 = type metadata accessor for ClientOrigin();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestOrigin();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session;
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session))
  {
    v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for ClientOrigin.other(_:), v2);
    RequestOrigin.init(_:)();
    v11 = type metadata accessor for Session();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = Session.init(_:)();
    v14 = *(v1 + v9);
    *(v1 + v9) = v10;
  }

  return v10;
}

uint64_t sub_100507C6C()
{
  v1[5] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v1[10] = State;
  v6 = *(*(State - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100507D68, v0, 0);
}

uint64_t sub_100507D68()
{
  v51 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();
  sub_10050B054(v3 + v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[11];
      v8 = v0[8];
      v7 = v0[9];
      v9 = v0[6];
      v10 = v0[7];
      v11 = *v6;
      v12 = sub_1000BC4D4(&qword_1016A3438, &qword_1013ADEB0);
      (*(v10 + 32))(v7, &v6[*(v12 + 48)], v9);
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v13 = *(v10 + 8);
      v13(v8, v9);
      if (qword_101695500 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177CE70);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v17 = 136446466;
        if (v11 <= 1)
        {
          if (v11)
          {
            v18 = 0xEA00000000006563;
            v19 = 0x6976654473696874;
          }

          else
          {
            v18 = 0xE700000000000000;
            v19 = 0x6E776F6E6B6E75;
          }
        }

        else if (v11 == 2)
        {
          v18 = 0xEB00000000656369;
          v19 = 0x766544726568746FLL;
        }

        else if (v11 == 3)
        {
          v18 = 0xEF6563697665446ELL;
          v19 = 0x6F696E61706D6F63;
        }

        else
        {
          v18 = 0xE400000000000000;
          v19 = 1701736302;
        }

        v48 = v0[6];
        v49 = v0[9];
        v39 = sub_1000136BC(v19, v18, &v50);

        *(v17 + 4) = v39;
        *(v17 + 12) = 2080;
        v40 = Duration.description.getter();
        v42 = sub_1000136BC(v40, v41, &v50);

        *(v17 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v15, v16, "Returning location sharing device %{public}s, last read %s ago.", v17, 0x16u);
        swift_arrayDestroy();

        v13(v49, v48);
        v11 = v11;
      }

      else
      {
        v37 = v0[9];
        v38 = v0[6];

        v13(v37, v38);
      }

      v43 = v0[11];
      v45 = v0[8];
      v44 = v0[9];

      v46 = v0[1];

      return v46(v11);
    }

    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177CE70);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Initial read of the location sharing device state.", v32, 2u);
    }

    v33 = v0[5];

    v34 = sub_100509CA0();
    v0[12] = v34;
    v35 = async function pointer to Task<>.value.getter[1];
    v36 = swift_task_alloc();
    v0[13] = v36;
    *v36 = v0;
    v36[1] = sub_100508374;
    v27 = (v0 + 129);
    v28 = v34;
  }

  else
  {
    v20 = *v0[11];
    v0[14] = v20;
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177CE70);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Already reading location sharing device state, waiting for task.", v24, 2u);
    }

    v25 = async function pointer to Task<>.value.getter[1];
    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_100508524;
    v27 = v0 + 16;
    v28 = v20;
  }

  return Task<>.value.getter(v27, v28, &type metadata for SystemInfoDynamic.MeDeviceState);
}

uint64_t sub_100508374()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_1005084A0, v3, 0);
}

uint64_t sub_1005084A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 129);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100508524()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100508634, v2, 0);
}

uint64_t sub_100508634()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 128);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1005086C0()
{
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CE70);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Asked to refresh the location sharing device.", v3, 2u);
  }

  sub_100509CA0();
}

uint64_t sub_1005087B4()
{
  v1[2] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005088CC, v0, 0);
}

uint64_t sub_1005088CC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_registeredForPreferencesStateChanges;
  v0[9] = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_registeredForPreferencesStateChanges;
  if (*(v1 + v2))
  {
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177CE70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already registered for preferences changes.", v6, 2u);
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[3];

    v10 = v0[1];

    return v10();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v0[10] = sub_1000076D4(v12, qword_10177CE70);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Registering for preferences changes.", v15, 2u);
    }

    v16 = v0[2];

    v0[11] = sub_100507AF0();
    v17 = async function pointer to Session.startMonitoringPreferencesChange()[1];
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_100508B58;
    v19 = v0[8];

    return Session.startMonitoringPreferencesChange()(v19);
  }
}

uint64_t sub_100508B58()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_100508E40;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 16);

    v5 = sub_100508C80;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100508C80()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v4 + 32))(v11 + v9, v2, v5);
  *(v11 + v10) = v7;

  sub_100BB9ADC(0, 0, v6, &unk_1013ADEC8, v11);

  sub_10000B3A8(v6, &qword_101698C00, &qword_10138B570);
  (*(v4 + 8))(v1, v5);
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[3];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100508E40()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not subscribe to preferences change: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  *(v0[2] + v0[9]) = 0;
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[3];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100508FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v5[7] = State;
  v7 = *(*(State - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for Device();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016A3448, &qword_1013ADED0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v12 = type metadata accessor for PreferenceStreamChange();
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_1016A3450, &qword_1013ADED8) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_1016A3458, &unk_1013ADEE0);
  v5[19] = v16;
  v17 = *(v16 - 8);
  v5[20] = v17;
  v18 = *(v17 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100509208, 0, 0);
}

uint64_t sub_100509208()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8);
  AsyncStream.makeAsyncIterator()();
  *(v0 + 176) = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  *(v0 + 208) = enum case for PreferenceStreamChange.meDevice(_:);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_1005092EC;
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_1005092EC()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_1005093E8, 0, 0);
}

uint64_t sub_1005093E8()
{
  v55 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 136);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 64);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 136);
  (*(v3 + 32))(v13, v1, v2);
  v14 = (*(v3 + 88))(v13, v2);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);
  if (v14 != v12)
  {
    (*(v15 + 8))(*(v0 + 136), v17);
LABEL_13:
    v30 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v31 = swift_task_alloc();
    *(v0 + 184) = v31;
    *v31 = v0;
    v31[1] = sub_1005092EC;
    v32 = *(v0 + 168);
    v33 = *(v0 + 144);
    v34 = *(v0 + 152);

    return AsyncStream.Iterator.next(isolation:)(v33, 0, 0, v34);
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  (*(v15 + 96))(*(v0 + 136), v17);
  sub_10050AF2C(v16, v19);
  sub_10050AF9C(v19, v18);
  v22 = (*(v21 + 48))(v18, 1, v20);
  v23 = *(v0 + 104);
  if (v22 == 1)
  {
    sub_10000B3A8(*(v0 + 104), &qword_1016A3448, &qword_1013ADED0);
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177CE70);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 112);
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Got a preference change without a device.", v29, 2u);
    }

    sub_10000B3A8(v28, &qword_1016A3448, &qword_1013ADED0);
    goto LABEL_13;
  }

  (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 104), *(v0 + 72));
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 88);
  v36 = *(v0 + 96);
  v37 = *(v0 + 72);
  v38 = *(v0 + 80);
  v39 = type metadata accessor for Logger();
  *(v0 + 192) = sub_1000076D4(v39, qword_10177CE70);
  (*(v38 + 16))(v35, v36, v37);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v44 = *(v0 + 80);
  v43 = *(v0 + 88);
  v45 = *(v0 + 72);
  if (v42)
  {
    v46 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v46 = 136315138;
    sub_10050B00C(&qword_1016A3460, &type metadata accessor for Device);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v44 + 8);
    v50(v43, v45);
    v51 = sub_1000136BC(v47, v49, &v54);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Got a preference change for device %s.", v46, 0xCu);
    sub_100007BAC(v53);
  }

  else
  {

    v50 = *(v44 + 8);
    v50(v43, v45);
  }

  *(v0 + 200) = v50;
  v52 = *(v0 + 48);

  return _swift_task_switch(sub_10050995C, v52, 0);
}

uint64_t sub_10050995C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = Device.isThisDevice.getter();
  *(v0 + 212) = v6 & 1;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(sub_1000BC4D4(&qword_1016A3438, &qword_1013ADEB0) + 48);
  *v3 = v7;
  static ContinuousClock.Instant.now.getter();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_10050AD00(v3, v5 + v1);
  swift_endAccess();

  return _swift_task_switch(sub_100509A4C, 0, 0);
}

uint64_t sub_100509A4C()
{
  v28 = v0;
  v1 = *(v0 + 192);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 212);
    v25 = *(v0 + 200);
    v26 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80) + 8;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    if (v4)
    {
      v10 = 0x6976654473696874;
    }

    else
    {
      v10 = 0x766544726568746FLL;
    }

    if (v4)
    {
      v11 = 0xEA00000000006563;
    }

    else
    {
      v11 = 0xEB00000000656369;
    }

    v12 = sub_1000136BC(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Read me device state from preference update: %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);

    v25(v5, v6);
    v13 = v26;
  }

  else
  {
    v14 = *(v0 + 200);
    v15 = *(v0 + 112);
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);

    v14(v16, v17);
    v13 = v15;
  }

  sub_10000B3A8(v13, &qword_1016A3448, &qword_1013ADED0);
  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  *(v0 + 184) = v20;
  *v20 = v0;
  v20[1] = sub_1005092EC;
  v21 = *(v0 + 168);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);

  return AsyncStream.Iterator.next(isolation:)(v22, 0, 0, v23);
}

uint64_t sub_100509CA0()
{
  v1 = *v0;
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v3 = *(*(State - 8) + 64);
  __chkstk_darwin(State);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_10050B00C(&qword_1016A3430, type metadata accessor for LocationSharingDeviceInterface);
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v11;
  v12[4] = v0;
  v12[5] = v1;
  swift_retain_n();
  v13 = sub_10025F3E8(0, 0, v9, &unk_1013ADE90, v12);
  *v5 = v13;
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();

  sub_10050AD00(v5, v0 + v14);
  swift_endAccess();
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177CE70);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "In progress fetch task started.", v18, 2u);
  }

  return v13;
}

uint64_t sub_100509F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v4[10] = State;
  v7 = *(*(State - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for Device();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10050A064, a4, 0);
}

uint64_t sub_10050A064()
{
  v1 = v0[9];
  v2 = async function pointer to withTimeout<A>(_:block:)[1];

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10050A134;
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  return withTimeout<A>(_:block:)(v4, 500000000000000000, 0, &unk_1013ADEA0, v6, v5);
}

uint64_t sub_10050A134()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_10050A4FC;
  }

  else
  {
    v7 = *(v2 + 72);

    v6 = sub_10050A278;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10050A278()
{
  v27 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = Device.isThisDevice.getter();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = *(sub_1000BC4D4(&qword_1016A3438, &qword_1013ADEB0) + 48);
  *v2 = v6;
  static ContinuousClock.Instant.now.getter();
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();
  sub_10050AD00(v2, v4 + v8);
  swift_endAccess();
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CE70);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 96);
  if (v12)
  {
    v25 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446210;
    if (v5)
    {
      v18 = 0x6976654473696874;
    }

    else
    {
      v18 = 0x766544726568746FLL;
    }

    if (v5)
    {
      v19 = 0xEA00000000006563;
    }

    else
    {
      v19 = 0xEB00000000656369;
    }

    v20 = sub_1000136BC(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Read me device state: %{public}s.", v16, 0xCu);
    sub_100007BAC(v17);

    v6 = v25;
  }

  (*(v14 + 8))(v13, v15);
  v21 = *(v0 + 112);
  v22 = *(v0 + 88);
  **(v0 + 64) = v6;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10050A4FC()
{
  v1 = *(v0 + 72);

  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177CE70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to read me device state: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();
  sub_10050AD00(v12, v13 + v14);
  swift_endAccess();
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  **(v0 + 64) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10050A708(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10050A724, a2, 0);
}

uint64_t sub_10050A724()
{
  v1 = v0[3];
  v0[4] = sub_100507AF0();
  v2 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10050A7D0;
  v4 = v0[2];

  return Session.activeLocationSharingDevice(cached:)(v4, 0);
}

uint64_t sub_10050A7D0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10050A90C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10050A90C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_10050A970()
{
  sub_10050B0B8(v0 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState);
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10050A9E8()
{
  result = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(319);
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

void sub_10050AAB8()
{
  sub_10050AB2C();
  if (v0 <= 0x3F)
  {
    sub_10050ABD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10050AB2C()
{
  if (!qword_1016A33F0)
  {
    sub_10050AB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A33F0);
    }
  }
}

void sub_10050AB74()
{
  if (!qword_1016A33F8)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A33F8);
    }
  }
}

void sub_10050ABD4()
{
  if (!qword_1016A3400)
  {
    type metadata accessor for ContinuousClock.Instant();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016A3400);
    }
  }
}

uint64_t sub_10050AC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100509F70(a1, v4, v5, v7);
}

uint64_t sub_10050AD00(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_10050AD64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10050A708(a1, v1);
}

uint64_t sub_10050AE00(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100508FCC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10050AF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A3448, &qword_1013ADED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050AF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A3448, &qword_1013ADED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050B00C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050B054(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_10050B0B8(uint64_t a1)
{
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_10050B114@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for PairingLockAckEndPoint() + 20);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v5 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v7);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for PairingLockAckEndPoint()
{
  result = qword_1016A34C0;
  if (!qword_1016A34C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10050B394()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10050B4EC(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000E3404();
      if (v2 <= 0x3F)
      {
        sub_10050B4EC(319, &unk_1016A35F0, type metadata accessor for PeerTrustEnvelopeV1, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10050B4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_10050B670(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10050B814(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3930, &qword_1013AE348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050E034();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33) = 0;
  type metadata accessor for UUID();
  sub_10050EA9C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CircleTrustEnvelopeV1(0);
    v12 = v11[5];
    LOBYTE(v33) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v11[6];
    LOBYTE(v33) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v11[7];
    LOBYTE(v33) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v33) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v33) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + v11[10]);
    LOBYTE(v33) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v11[11]);
    LOBYTE(v33) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = (v3 + v11[12]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v33) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + v11[13]);
    LOBYTE(v33) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = (v3 + v11[14]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v33) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v3 + v11[15]);
    v31 = v30[1];
    v33 = *v30;
    v34 = v31;
    v35 = 11;
    sub_100017D5C(v33, v31);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v33, v34);
    v33 = *(v3 + v11[16]);
    v35 = 12;
    sub_1000BC4D4(&qword_1016A38B0, &qword_1013AE300);
    sub_10050EA00(&qword_1016A3938, &qword_1016A3940);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v33) = *(v3 + v11[17]);
    v35 = 13;
    sub_100157FD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10050BCB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v63 - v7;
  v8 = type metadata accessor for UUID();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v63 - v13;
  v75 = sub_1000BC4D4(&qword_1016A38A0, &qword_1013AE2F8);
  v73 = *(v75 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v75);
  v16 = &v63 - v15;
  v17 = type metadata accessor for CircleTrustEnvelopeV1(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050E034();
  v74 = v16;
  v22 = v76;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100007BAC(a1);
  }

  v65 = v12;
  v66 = v17;
  v76 = a1;
  v67 = v20;
  LOBYTE(v77) = 0;
  sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID);
  v23 = v72;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v8;
  v26 = *(v71 + 32);
  v27 = v67;
  v26(v67, v23, v25);
  LOBYTE(v77) = 1;
  v28 = v70;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v64 = v25;
  v29 = v27;
  v30 = v66;
  sub_10012C154(v28, &v29[v66[5]]);
  LOBYTE(v77) = 2;
  v31 = v65;
  v70 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26(&v67[v30[6]], v31, v25);
  LOBYTE(v77) = 3;
  v32 = v69;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v32, &v67[v30[7]]);
  LOBYTE(v77) = 4;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = &v67[v30[8]];
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v77) = 5;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = &v67[v30[9]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v77) = 6;
  *&v67[v30[10]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v77) = 7;
  *&v67[v66[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v77) = 8;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = 0;
  v50 = &v67[v66[12]];
  *v50 = v48;
  v50[1] = v49;
  LOBYTE(v77) = 9;
  v51 = v72;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = v51;
  if (v51 || (*&v67[v66[13]] = v52, LOBYTE(v77) = 10, v53 = v72, v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v72 = v53) != 0))
  {
    (*(v73 + 8))(v74, v75);
    LODWORD(v73) = 0;
    LODWORD(v74) = 0;
    LODWORD(v75) = 0;
  }

  else
  {
    v58 = &v67[v66[14]];
    *v58 = v54;
    v58[1] = v55;
    v78 = 11;
    sub_1000E307C();
    v59 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v72 = v59;
    if (v59)
    {
      (*(v73 + 8))(v74, v75);
      LODWORD(v74) = 0;
      LODWORD(v75) = 0;
      LODWORD(v73) = 1;
    }

    else
    {
      *&v67[v66[15]] = v77;
      sub_1000BC4D4(&qword_1016A38B0, &qword_1013AE300);
      v78 = 12;
      sub_10050EA00(&qword_1016A38B8, &qword_1016A38C0);
      v60 = v72;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v72 = v60;
      if (v60)
      {
        (*(v73 + 8))(v74, v75);
        LODWORD(v75) = 0;
        LODWORD(v73) = 1;
        LODWORD(v74) = 1;
      }

      else
      {
        *&v67[v66[16]] = v77;
        v78 = 13;
        sub_100157E70();
        v61 = v72;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v72 = v61;
        if (!v61)
        {
          (*(v73 + 8))(v74, v75);
          v62 = v67;
          v67[v66[17]] = v77;
          sub_10050E088(v62, v68);
          sub_100007BAC(v76);
          return sub_10050E0EC(v62);
        }

        (*(v73 + 8))(v74, v75);
        LODWORD(v73) = 1;
        LODWORD(v74) = 1;
        LODWORD(v75) = 1;
      }
    }
  }

  v57 = v70;
  v56 = v71;
  sub_100007BAC(v76);
  v39 = *(v56 + 8);
  v40 = v67;
  v39(v67, v64);
  if (!v57)
  {
    sub_1002EA198(&v40[v66[5]]);
  }

  v42 = v66;
  v41 = v67;
  v39(&v67[v66[6]], v64);
  sub_1002EA198(&v41[v42[7]]);
  v43 = *&v41[v42[8] + 8];

  v45 = *&v41[v42[9] + 8];

  v44 = *&v41[v42[12] + 8];

  if (v73)
  {
    v46 = *&v41[v42[14] + 8];

    if (v74)
    {
LABEL_9:
      result = sub_100016590(*&v41[v42[15]], *&v41[v42[15] + 8]);
      if (v75)
      {
        goto LABEL_13;
      }

      return result;
    }
  }

  else if (v74)
  {
    goto LABEL_9;
  }

  if (v75)
  {
LABEL_13:
    v47 = *&v41[v42[16]];
  }

  return result;
}

uint64_t sub_10050C740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A38C8, &qword_1013AE308);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustAckEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050E148();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10050E1F0(v14, v17, type metadata accessor for CircleTrustAckEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050C9DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A38D8, &qword_1013AE310);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050E19C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10050E1F0(v14, v17, type metadata accessor for CircleTrustAcceptEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050CC78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A38E8, &qword_1013AE318);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050DFE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10050E1F0(v14, v17, type metadata accessor for CircleTrustDeclineEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050CF14(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = sub_1000BC4D4(a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[3] = a2;
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_10050EAE4(&qword_1016BF380, &qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10050D0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A3910, &qword_1013AE338);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustRequestEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050E958();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10050E1F0(v14, v17, type metadata accessor for CircleTrustRequestEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050D350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A3920, &qword_1013AE340);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10050E9AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_10050E1F0(v14, v17, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10050E258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10050D61C(uint64_t a1)
{
  v2 = sub_10050E034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050D658(uint64_t a1)
{
  v2 = sub_10050E034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050D6E8(uint64_t a1)
{
  v2 = sub_10050E148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050D724(uint64_t a1)
{
  v2 = sub_10050E148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050D7BC(uint64_t a1)
{
  v2 = sub_10050E19C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050D7F8(uint64_t a1)
{
  v2 = sub_10050E19C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050D890(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_1000BC4D4(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10050EA9C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10050DA10(uint64_t a1)
{
  v2 = sub_10050DFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DA4C(uint64_t a1)
{
  v2 = sub_10050DFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050DAE4(uint64_t a1)
{
  v2 = sub_10050E6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DB20(uint64_t a1)
{
  v2 = sub_10050E6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10050DB5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10050E738(a1, &qword_1016A38F0, &unk_1013AE320, sub_10050E6E4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10050DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001013587B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10050DC90(uint64_t a1)
{
  v2 = sub_10050E904();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DCCC(uint64_t a1)
{
  v2 = sub_10050E904();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10050DD08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10050E738(a1, &qword_1016A3900, &qword_1013AE330, sub_10050E904);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10050DDA8(uint64_t a1)
{
  v2 = sub_10050E958();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DDE4(uint64_t a1)
{
  v2 = sub_10050E958();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL)
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

uint64_t sub_10050DF0C(uint64_t a1)
{
  v2 = sub_10050E9AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DF48(uint64_t a1)
{
  v2 = sub_10050E9AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10050DFE0()
{
  result = qword_1016A3898;
  if (!qword_1016A3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3898);
  }

  return result;
}

unint64_t sub_10050E034()
{
  result = qword_1016A38A8;
  if (!qword_1016A38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38A8);
  }

  return result;
}

uint64_t sub_10050E088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050E0EC(uint64_t a1)
{
  v2 = type metadata accessor for CircleTrustEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10050E148()
{
  result = qword_1016A38D0;
  if (!qword_1016A38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38D0);
  }

  return result;
}

unint64_t sub_10050E19C()
{
  result = qword_1016A38E0;
  if (!qword_1016A38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38E0);
  }

  return result;
}

uint64_t sub_10050E1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10050E258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101358770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101358790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614E6E6F63616562 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5064657473757274 && a2 == 0xEC00000073726565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_10050E6E4()
{
  result = qword_1016A38F8;
  if (!qword_1016A38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38F8);
  }

  return result;
}

void *sub_10050E738(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_1000BC4D4(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = sub_1000035D0(a1, a1[3]);
  a4();
  v13 = v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
    sub_10050EAE4(&qword_1016CBC30, &qword_101698300);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v10, v7);
    v13 = v17;
    sub_100007BAC(a1);
  }

  return v13;
}

unint64_t sub_10050E904()
{
  result = qword_1016A3908;
  if (!qword_1016A3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3908);
  }

  return result;
}

unint64_t sub_10050E958()
{
  result = qword_1016A3918;
  if (!qword_1016A3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3918);
  }

  return result;
}

unint64_t sub_10050E9AC()
{
  result = qword_1016A3928;
  if (!qword_1016A3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3928);
  }

  return result;
}

uint64_t sub_10050EA00(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A38B0, &qword_1013AE300);
    sub_10050EA9C(a2, type metadata accessor for PeerTrustEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10050EA9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050EAE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_10050EA9C(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10050EC04()
{
  result = qword_1016A3978;
  if (!qword_1016A3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3978);
  }

  return result;
}

unint64_t sub_10050EC5C()
{
  result = qword_1016A3980;
  if (!qword_1016A3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3980);
  }

  return result;
}

unint64_t sub_10050ECB4()
{
  result = qword_1016A3988;
  if (!qword_1016A3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3988);
  }

  return result;
}

unint64_t sub_10050ED0C()
{
  result = qword_1016A3990;
  if (!qword_1016A3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3990);
  }

  return result;
}

unint64_t sub_10050ED64()
{
  result = qword_1016A3998;
  if (!qword_1016A3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3998);
  }

  return result;
}

unint64_t sub_10050EDBC()
{
  result = qword_1016A39A0;
  if (!qword_1016A39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39A0);
  }

  return result;
}

unint64_t sub_10050EE14()
{
  result = qword_1016A39A8;
  if (!qword_1016A39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39A8);
  }

  return result;
}

unint64_t sub_10050EE6C()
{
  result = qword_1016A39B0;
  if (!qword_1016A39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39B0);
  }

  return result;
}

unint64_t sub_10050EEC4()
{
  result = qword_1016A39B8;
  if (!qword_1016A39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39B8);
  }

  return result;
}

unint64_t sub_10050EF1C()
{
  result = qword_1016A39C0;
  if (!qword_1016A39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39C0);
  }

  return result;
}

unint64_t sub_10050EF74()
{
  result = qword_1016A39C8;
  if (!qword_1016A39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39C8);
  }

  return result;
}

unint64_t sub_10050EFCC()
{
  result = qword_1016A39D0;
  if (!qword_1016A39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39D0);
  }

  return result;
}

unint64_t sub_10050F024()
{
  result = qword_1016A39D8;
  if (!qword_1016A39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39D8);
  }

  return result;
}

unint64_t sub_10050F07C()
{
  result = qword_1016A39E0;
  if (!qword_1016A39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39E0);
  }

  return result;
}

unint64_t sub_10050F0D4()
{
  result = qword_1016A39E8;
  if (!qword_1016A39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39E8);
  }

  return result;
}

unint64_t sub_10050F12C()
{
  result = qword_1016A39F0;
  if (!qword_1016A39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39F0);
  }

  return result;
}

unint64_t sub_10050F184()
{
  result = qword_1016A39F8;
  if (!qword_1016A39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39F8);
  }

  return result;
}

unint64_t sub_10050F1DC()
{
  result = qword_1016A3A00;
  if (!qword_1016A3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A00);
  }

  return result;
}

unint64_t sub_10050F234()
{
  result = qword_1016A3A08;
  if (!qword_1016A3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A08);
  }

  return result;
}

unint64_t sub_10050F28C()
{
  result = qword_1016A3A10;
  if (!qword_1016A3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A10);
  }

  return result;
}

unint64_t sub_10050F2E4()
{
  result = qword_1016A3A18;
  if (!qword_1016A3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A18);
  }

  return result;
}

unint64_t sub_10050F33C()
{
  result = qword_1016A3A20;
  if (!qword_1016A3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A20);
  }

  return result;
}

unint64_t sub_10050F394()
{
  result = qword_1016A3A28;
  if (!qword_1016A3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A28);
  }

  return result;
}

unint64_t sub_10050F3EC()
{
  result = qword_1016A3A30;
  if (!qword_1016A3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A30);
  }

  return result;
}

uint64_t sub_10050F450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
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

uint64_t sub_10050F4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10050F5EC()
{
  sub_10050F6D8(319, &qword_1016A3BD8, type metadata accessor for DeviceEventFormat.LocationFormat);
  if (v0 <= 0x3F)
  {
    sub_10050F6D8(319, &qword_1016A3BE0, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
    if (v1 <= 0x3F)
    {
      sub_10050F72C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10050F6D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10050F72C()
{
  if (!qword_1016A3BE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A3BE8);
    }
  }
}

uint64_t sub_10050F7D4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10050F850(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10050F898(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10050F8E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3D60, &qword_1013AF220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10051234C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_1001022C4(&v19, v13);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v15, *(&v15 + 1));
  }

  else
  {
    sub_100016590(v15, *(&v15 + 1));
    v18 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_1001022C4(&v18, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v17 = v3[2];
    v15 = v3[2];
    v14 = 2;
    sub_1001022C4(&v17, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v15 = v3[3];
    v16 = v15;
    v14 = 3;
    sub_1001022C4(&v16, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    LOBYTE(v15) = 4;
    sub_1005123A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10050FBA0(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v19 = a5;
  v22 = a4;
  v9 = sub_1000BC4D4(&qword_1016A3E28, &qword_1013AF278);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005131D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = a2;
  v21 = a3;
  v23 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    sub_100016590(v20, v21);
  }

  else
  {
    v15 = v19;
    sub_100016590(v20, v21);
    v16 = BYTE1(v22);
    LOBYTE(v20) = v22;
    v23 = 1;
    sub_1005132CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = v16;
    v23 = 2;
    sub_100513320();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v15;
    v23 = 3;
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    sub_100513374(&qword_1016A3E40, &qword_1016A3CB8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10050FE30(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3DF0, &qword_1013AF260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005130B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_100017D5C(v15, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for DeviceEventEncodedInfo(0) + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for Date();
    sub_100510AD4(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10051000C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for Date();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016A3DE0, &qword_1013AF258);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DeviceEventEncodedInfo(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005130B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = v10;
  v16 = v26;
  v15 = v27;
  v17 = v13;
  v30 = 0;
  sub_1000E307C();
  v18 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v17;
  *v17 = v29;
  LOBYTE(v29) = 1;
  sub_100510AD4(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v18);
  v19 = v22;
  (*(v24 + 32))(&v22[*(v23 + 20)], v6, v15);
  sub_100513108(v19, v25, type metadata accessor for DeviceEventEncodedInfo);
  sub_100007BAC(a1);
  return sub_100513170(v19, type metadata accessor for DeviceEventEncodedInfo);
}

Swift::Int sub_100510358()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1005103C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100510414@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101609338, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100510534()
{
  v1 = *v0;
  v2 = 0x727574616E676973;
  v3 = 6775156;
  v4 = 0x65636E6F6ELL;
  if (v1 != 3)
  {
    v4 = 0x687469726F676C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574707972636E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005105D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100512448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005105FC(uint64_t a1)
{
  v2 = sub_10051234C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100510638(uint64_t a1)
{
  v2 = sub_10051234C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100510674@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100512608(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1005106D0()
{
  v1 = 25705;
  v2 = 1701080941;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6570795479656BLL;
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

uint64_t sub_100510740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100512BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100510768(uint64_t a1)
{
  v2 = sub_1005131D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005107A4(uint64_t a1)
{
  v2 = sub_1005131D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005107F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100512D40(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100510858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354)
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

uint64_t sub_100510934(uint64_t a1)
{
  v2 = sub_1005130B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100510970(uint64_t a1)
{
  v2 = sub_1005130B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005109AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100510A50(uint64_t a1)
{
  *(a1 + 8) = sub_100510AD4(&qword_1016A3CB0, type metadata accessor for DeviceEventEncodedInfo);
  result = sub_100510AD4(&qword_1016A3CB8, type metadata accessor for DeviceEventEncodedInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100510AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100510B1C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100513050(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100510BFC()
{
  result = qword_1016A3CC0;
  if (!qword_1016A3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3CC0);
  }

  return result;
}

uint64_t sub_100510C50(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3D38, &qword_1013AF218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005122A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for DeviceEventFormat.LocationFormat(0);
  sub_100510AD4(&qword_1016A3D48, type metadata accessor for DeviceEventFormat.LocationFormat);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for DeviceEventFormat(0);
    v12 = v11[5];
    v15[14] = 1;
    type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
    sub_100510AD4(&qword_1016A3D50, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15[13] = *(v3 + v11[6]);
    v15[12] = 2;
    sub_1005122F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v11[7];
    v15[11] = 3;
    type metadata accessor for Date();
    sub_100510AD4(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100510F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for Date();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_1000BC4D4(&qword_1016A3DA0, &qword_1013AF240);
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = type metadata accessor for DeviceEventFormat(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  v38 = a1;
  sub_1000035D0(a1, v23);
  sub_1005122A4();
  v36 = v17;
  v24 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100007BAC(v38);
  }

  v25 = v34;
  v26 = v21;
  v37 = v5;
  type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v43 = 0;
  sub_100510AD4(&qword_1016A3DA8, type metadata accessor for DeviceEventFormat.LocationFormat);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v13, v21, &qword_1016A3B60, &qword_1013AEE08);
  type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  v42 = 1;
  sub_100510AD4(&qword_1016A3DB0, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v18;
  sub_1000D2AD8(v9, v26 + *(v18 + 20), &qword_1016A3B68, &unk_1013AEE10);
  v40 = 2;
  sub_100512AD0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v26 + *(v18 + 24)) = v41;
  v39 = 3;
  sub_100510AD4(&qword_101697F40, &type metadata accessor for Date);
  v28 = v37;
  v29 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v36, v35);
  (*(v31 + 32))(v26 + *(v27 + 28), v28, v29);
  sub_100513108(v26, v32, type metadata accessor for DeviceEventFormat);
  sub_100007BAC(v38);
  return sub_100513170(v26, type metadata accessor for DeviceEventFormat);
}

uint64_t sub_100511484(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3D88, &qword_1013AF230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005123F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v16[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(type metadata accessor for DeviceEventFormat.LocationFormat(0) + 28);
    v16[12] = 3;
    type metadata accessor for Date();
    sub_100510AD4(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005116C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A3D78, &qword_1013AF228);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v33 = a1;
  sub_1000035D0(a1, v16);
  sub_1005123F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = v7;
    v37 = 0;
    v19 = v31;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v15 = v20;
    v36 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v19;
    v15[1] = v22;
    v35 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v15;
    v15[2] = v25;
    v34 = 3;
    sub_100510AD4(&qword_101697F40, &type metadata accessor for Date);
    v26 = v18;
    v27 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v11, v27);
    (*(v29 + 32))(v24 + *(v12 + 28), v26, v4);
    sub_100512B78(v24, v30, type metadata accessor for DeviceEventFormat.LocationFormat);
  }

  return sub_100007BAC(v33);
}

uint64_t sub_100511A30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A3DC0, &qword_1013AF248);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100512B24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_100510AD4(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_100512B78(v14, v17, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_100511CCC()
{
  v1 = 0x6E6F697461636F6CLL;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x656D686361747461;
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

uint64_t sub_100511D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100513B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100511D7C(uint64_t a1)
{
  v2 = sub_1005122A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100511DB8(uint64_t a1)
{
  v2 = sub_1005122A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100511E24(uint64_t a1)
{
  v2 = sub_1005123F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100511E60(uint64_t a1)
{
  v2 = sub_1005123F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100511EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001013587D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100511F7C(uint64_t a1)
{
  v2 = sub_100512B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100511FB8(uint64_t a1)
{
  v2 = sub_100512B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051200C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A3DD0, &qword_1013AF250);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100512B24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_100510AD4(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1005121CC(uint64_t a1)
{
  *(a1 + 8) = sub_1005121FC();
  result = sub_100512250();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005121FC()
{
  result = qword_1016A3D28;
  if (!qword_1016A3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D28);
  }

  return result;
}

unint64_t sub_100512250()
{
  result = qword_1016A3D30;
  if (!qword_1016A3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D30);
  }

  return result;
}

unint64_t sub_1005122A4()
{
  result = qword_1016A3D40;
  if (!qword_1016A3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D40);
  }

  return result;
}

unint64_t sub_1005122F8()
{
  result = qword_1016A3D58;
  if (!qword_1016A3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D58);
  }

  return result;
}

unint64_t sub_10051234C()
{
  result = qword_1016A3D68;
  if (!qword_1016A3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D68);
  }

  return result;
}

unint64_t sub_1005123A0()
{
  result = qword_1016A3D70;
  if (!qword_1016A3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D70);
  }

  return result;
}

unint64_t sub_1005123F4()
{
  result = qword_1016A3D80;
  if (!qword_1016A3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D80);
  }

  return result;
}

uint64_t sub_100512448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100512608@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A3D90, &qword_1013AF238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10051234C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v24) = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *(&v28[0] + 1);
  v23 = *&v28[0];
  LOBYTE(v24) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v28[0];
  LOBYTE(v24) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v28[0];
  LOBYTE(v24) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = *(&v28[0] + 1);
  v21 = *&v28[0];
  v31 = 4;
  sub_100512A44();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v22;
  *&v24 = v23;
  *(&v24 + 1) = v22;
  v13 = v20;
  v25 = v20;
  v14 = v19;
  v26 = v19;
  *&v27 = v21;
  *(&v27 + 1) = v11;
  sub_100512A98(&v24, v28);
  sub_100007BAC(a1);
  *&v28[0] = v23;
  *(&v28[0] + 1) = v12;
  v28[1] = v13;
  v28[2] = v14;
  v29 = v21;
  v30 = v11;
  result = sub_1000D2840(v28);
  v16 = v25;
  *a2 = v24;
  a2[1] = v16;
  v17 = v27;
  a2[2] = v26;
  a2[3] = v17;
  return result;
}

unint64_t sub_100512A44()
{
  result = qword_1016A3D98;
  if (!qword_1016A3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D98);
  }

  return result;
}

unint64_t sub_100512AD0()
{
  result = qword_1016A3DB8;
  if (!qword_1016A3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DB8);
  }

  return result;
}

unint64_t sub_100512B24()
{
  result = qword_1016A3DC8;
  if (!qword_1016A3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DC8);
  }

  return result;
}

uint64_t sub_100512B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100512BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_100512D40(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A3DF8, &qword_1013AF268);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_1005131D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v13 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11[0];
    v10 = v11[1];
    v13 = 1;
    sub_100513224();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = 2;
    sub_100513278();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = LOBYTE(v11[0]);
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    v13 = 3;
    sub_100513374(&qword_1016A3E20, &qword_1016A3CB0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100017D5C(v8, v10);

    sub_100007BAC(a1);
    sub_100016590(v8, v10);
  }

  return v8;
}

uint64_t sub_100513050(uint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_100513060()
{
  result = qword_1016A3DD8;
  if (!qword_1016A3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DD8);
  }

  return result;
}

unint64_t sub_1005130B4()
{
  result = qword_1016A3DE8;
  if (!qword_1016A3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DE8);
  }

  return result;
}

uint64_t sub_100513108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100513170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005131D0()
{
  result = qword_1016A3E00;
  if (!qword_1016A3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E00);
  }

  return result;
}

unint64_t sub_100513224()
{
  result = qword_1016A3E08;
  if (!qword_1016A3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E08);
  }

  return result;
}

unint64_t sub_100513278()
{
  result = qword_1016A3E10;
  if (!qword_1016A3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E10);
  }

  return result;
}

unint64_t sub_1005132CC()
{
  result = qword_1016A3E30;
  if (!qword_1016A3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E30);
  }

  return result;
}

unint64_t sub_100513320()
{
  result = qword_1016A3E38;
  if (!qword_1016A3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E38);
  }

  return result;
}

uint64_t sub_100513374(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A3E18, &qword_1013AF270);
    sub_100510AD4(a2, type metadata accessor for DeviceEventEncodedInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100513484()
{
  result = qword_1016A3E48;
  if (!qword_1016A3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E48);
  }

  return result;
}

unint64_t sub_1005134DC()
{
  result = qword_1016A3E50;
  if (!qword_1016A3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E50);
  }

  return result;
}

unint64_t sub_100513534()
{
  result = qword_1016A3E58;
  if (!qword_1016A3E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E58);
  }

  return result;
}

unint64_t sub_10051358C()
{
  result = qword_1016A3E60;
  if (!qword_1016A3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E60);
  }

  return result;
}

unint64_t sub_1005135E4()
{
  result = qword_1016A3E68;
  if (!qword_1016A3E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E68);
  }

  return result;
}

unint64_t sub_10051363C()
{
  result = qword_1016A3E70;
  if (!qword_1016A3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E70);
  }

  return result;
}

unint64_t sub_100513694()
{
  result = qword_1016A3E78;
  if (!qword_1016A3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E78);
  }

  return result;
}

unint64_t sub_1005136EC()
{
  result = qword_1016A3E80;
  if (!qword_1016A3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E80);
  }

  return result;
}

unint64_t sub_100513744()
{
  result = qword_1016A3E88;
  if (!qword_1016A3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E88);
  }

  return result;
}

unint64_t sub_10051379C()
{
  result = qword_1016A3E90;
  if (!qword_1016A3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E90);
  }

  return result;
}

unint64_t sub_1005137F4()
{
  result = qword_1016A3E98;
  if (!qword_1016A3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E98);
  }

  return result;
}

unint64_t sub_10051384C()
{
  result = qword_1016A3EA0;
  if (!qword_1016A3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EA0);
  }

  return result;
}

unint64_t sub_1005138A4()
{
  result = qword_1016A3EA8;
  if (!qword_1016A3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EA8);
  }

  return result;
}

unint64_t sub_1005138FC()
{
  result = qword_1016A3EB0;
  if (!qword_1016A3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EB0);
  }

  return result;
}

unint64_t sub_100513954()
{
  result = qword_1016A3EB8;
  if (!qword_1016A3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EB8);
  }

  return result;
}

unint64_t sub_1005139AC()
{
  result = qword_1016A3EC0;
  if (!qword_1016A3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EC0);
  }

  return result;
}

unint64_t sub_100513A04()
{
  result = qword_1016A3EC8;
  if (!qword_1016A3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EC8);
  }

  return result;
}

unint64_t sub_100513A5C()
{
  result = qword_1016A3ED0;
  if (!qword_1016A3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3ED0);
  }

  return result;
}

unint64_t sub_100513AB4()
{
  result = qword_1016A3ED8;
  if (!qword_1016A3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3ED8);
  }

  return result;
}

uint64_t sub_100513B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEE006F666E49746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

unint64_t sub_100513C78()
{
  result = qword_1016A3EE0;
  if (!qword_1016A3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EE0);
  }

  return result;
}

void *sub_100513CD8()
{
  v1 = [v0 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIDMS];
  v2 = [v0 accountsWithAccountType:v1];
  if (v2 && (v3 = v2, v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v5 = sub_10051463C(v4, &qword_1016A3EF0, ACAccount_ptr), , v5))
  {
    v6 = [v0 aa_primaryAppleAccount];
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v1;
    if (v5 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v26 = v6;
      v27 = v5 & 0xC000000000000001;
      v25 = v5;
      while (1)
      {
        if (v27)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_34;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 aa_altDSID];
        if (v13)
        {
          v14 = v13;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          if (!v6)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v15 = 0;
          v17 = 0;
          if (!v6)
          {
LABEL_18:
            v20 = 0;
            if (!v17)
            {
              goto LABEL_25;
            }

            goto LABEL_19;
          }
        }

        v18 = [v6 aa_altDSID];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v6 = v21;

          if (!v17)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v20 = 0;
          v6 = 0;
          if (!v17)
          {
LABEL_25:
            if (!v6)
            {

              return v11;
            }

LABEL_6:

            goto LABEL_7;
          }
        }

LABEL_19:
        if (!v6)
        {
          goto LABEL_6;
        }

        if (v15 == v20 && v17 == v6)
        {

LABEL_31:

          return v11;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {

          goto LABEL_31;
        }

LABEL_7:
        v5 = v25;
        v6 = v26;
        ++v9;
        if (v12 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100513FCC()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 additionalInfoForAccount:v0];

  if (!v2)
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v18 = OS_os_log.init(subsystem:category:)();
    goto LABEL_15;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v4 = OS_os_log.init(subsystem:category:)();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = Dictionary.description.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  if (!*(v3 + 16) || (v9 = sub_100771D58(0xD000000000000016, 0x8000000101358840), (v10 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_100013894(*(v3 + 56) + 32 * v9, v23);

  sub_1000BC4D4(&qword_1016A3EE8, &unk_1013E3660);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    static os_log_type_t.error.getter();
    v18 = OS_os_log.init(subsystem:category:)();
LABEL_15:
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v12 = *(v22 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = 0;
  while (1)
  {
    if (v13 >= *(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(v22 + 8 * v13 + 32);
    if (*(v14 + 16))
    {
      break;
    }

LABEL_7:
    ++v13;
    memset(v23, 0, sizeof(v23));
    result = sub_1004AB638(v23);
    if (v12 == v13)
    {
      goto LABEL_17;
    }
  }

  v15 = *(v22 + 8 * v13 + 32);

  v16 = sub_100771D58(0x796C746E65636572, 0xEC00000064657355);
  if ((v17 & 1) == 0)
  {

    goto LABEL_7;
  }

  v19 = v16;

  sub_100013894(*(v14 + 56) + 32 * v19, v23);
  sub_1004AB638(v23);
  if (!*(v14 + 16) || (v20 = sub_100771D58(0xD000000000000011, 0x8000000101358890), (v21 & 1) == 0))
  {
LABEL_17:

    return 0;
  }

  sub_100013894(*(v14 + 56) + 32 * v20, v23);

  if (swift_dynamicCast())
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

id sub_10051441C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 altDSIDForAccount:v0];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 authKitAccountWithAltDSID:v3];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 securityLevelForAccount:v5];

  return v7;
}

unint64_t *sub_100514514(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_101123BB8(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100013894(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_101123BB8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10051463C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100013894(i, v10);
    sub_100008BB8(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

void *sub_100514740(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100013894(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_10051482C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for URLComponents();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = __chkstk_darwin(v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v50 - v9;
  v10 = type metadata accessor for FMNAccountType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v50 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMNAuthenticationProvider();
  (*(v11 + 104))(v14, enum case for FMNAccountType.ownedDeviceLocations(_:), v10);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v11 + 8))(v14, v10);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000B3A8(v18, &unk_101696AC0, &qword_101390A60);
    v24 = v5;
    v25 = v52;
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v25 = v52;
    v24 = v5;
    if ((*(v52 + 48))(v4, 1, v5) != 1)
    {
      v46 = *(v25 + 32);
      v47 = v50;
      v46(v50, v4, v5);
      v48 = URLComponents.path.modify();
      v49._countAndFlagsBits = 0x68637465662F3276;
      v49._object = 0xE800000000000000;
      String.append(_:)(v49);
      v48(v54, 0);
      (*(v20 + 8))(v23, v19);
      return (v46)(v53, v47, v5);
    }

    (*(v20 + 8))(v23, v19);
    sub_10000B3A8(v4, &qword_101699BA8, &unk_1013926B0);
  }

  v26 = v51;
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177BFF8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No url found in account bag.", v30, 2u);
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  v31 = [objc_opt_self() standardUserDefaults];
  v32 = [objc_opt_self() sharedInstance];
  v33 = [v32 isInternalBuild];

  if (v33 && (v34 = String._bridgeToObjectiveC()(), v35 = [v31 stringForKey:v34], v34, v35))
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000136BC(v36, v38, v54);
      _os_log_impl(&_mh_execute_header, v39, v40, "Override url found in user defaults %s. ", v41, 0xCu);
      sub_100007BAC(v42);
    }

    v54[0] = 47;
    v54[1] = 0xE100000000000000;
    v43._countAndFlagsBits = v36;
    v43._object = v38;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x637465662F32762FLL;
    v44._object = 0xE900000000000068;
    String.append(_:)(v44);
  }

  else
  {
  }

  URLComponents.path.setter();
  URLComponents.host.setter();
  return (*(v25 + 32))(v53, v26, v24);
}

uint64_t type metadata accessor for OwnedDeviceFetchEndpoint()
{
  result = qword_1016A3F50;
  if (!qword_1016A3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OwnedBeaconGroup.Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OwnedBeaconGroup.Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100515038(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100515054(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1005150AC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MACAddress();
    if (v1 <= 0x3F)
    {
      sub_100515178();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100515178()
{
  if (!qword_1016A3FF8)
  {
    type metadata accessor for OwnedBeaconGroup.PairingState(255);
    sub_100101BAC();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A3FF8);
    }
  }
}

void sub_100515204()
{
  sub_100515278();
  if (v0 <= 0x3F)
  {
    sub_1005152F0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100515278()
{
  if (!qword_1016A40C8)
  {
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016A40C8);
    }
  }
}

void sub_1005152F0(uint64_t a1)
{
  if (!qword_1016A40D8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    sub_1000BC580(&qword_1016A40E0, &unk_101396F30);
    sub_1000BC580(&unk_1016A40E8, &qword_1013AFA40);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016A40D8);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for OwnedBeaconGroup.PairingMetadata(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OwnedBeaconGroup.PairingMetadata(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a1 + 2);
  }

  v6 = v5 - 4;
  if (v4 < 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for OwnedBeaconGroup.PairingMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100515594(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 32); ; ++i)
  {
    v9 = *i;
    v24 = v9;
    v10 = v9;
    v11 = *(&v9 + 1) >> 62;
    if ((*(&v9 + 1) >> 62) <= 1)
    {
      if (!v11)
      {
        v12 = BYTE14(v9);
        goto LABEL_16;
      }

      v13 = v9;
      if (__OFSUB__(DWORD1(v9), v9))
      {
        goto LABEL_27;
      }

      v12 = DWORD1(v9) - v9;
      goto LABEL_14;
    }

    if (v11 == 2)
    {
      v13 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v12 = v14 - v15;
      if (__OFSUB__(v14, v15))
      {
        goto LABEL_28;
      }

LABEL_14:
      sub_100017D5C(v13, *(&v9 + 1));
      result = sub_100017D5C(v13, *(&v10 + 1));
      goto LABEL_16;
    }

    v12 = 0;
LABEL_16:
    v16 = __OFSUB__(20, v12);
    v17 = 20 - v12;
    if (v16)
    {
      break;
    }

    if (v17)
    {
      if (v17 <= 14)
      {
        if (v17 < 0)
        {
          goto LABEL_26;
        }

        v4 = 0;
        v1 = v1 & 0xF00000000000000 | (v17 << 48);
        v5 = v1;
      }

      else
      {
        v18 = type metadata accessor for __DataStorage();
        v19 = *(v18 + 48);
        v20 = *(v18 + 52);
        swift_allocObject();
        v21 = __DataStorage.init(length:)();
        if (v17 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v4 = swift_allocObject();
          *(v4 + 16) = 0;
          *(v4 + 24) = v17;
          v5 = v21 | 0x8000000000000000;
        }

        else
        {
          v4 = v17 << 32;
          v5 = v21 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 0xC000000000000000;
    }

    v22 = v4;
    v23 = v5;
    sub_100776394(&v22, 0);
    v6 = v22;
    v7 = v23;
    Data.append(_:)();
    sub_100016590(v6, v7);
    v8 = v24;
    Data.append(_:)();
    sub_100016590(v8, *(&v8 + 1));
    result = sub_100016590(v10, *(&v10 + 1));
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10051578C(uint64_t a1)
{
  v89 = a1;
  v88 = type metadata accessor for MACAddress();
  v2 = *(v88 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v88);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000BC4D4(&qword_1016A4218, &qword_1013AFF98);
  v5 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v86 = &v70 - v6;
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v92 = &v70 - v12;
  __chkstk_darwin(v11);
  v94 = &v70 - v13;
  v90 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v78 = *(v90 - 8);
  v14 = *(v78 + 64);
  v15 = __chkstk_darwin(v90);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = &v70 - v18;
  v19 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v91 = &v70 - v24;
  v25 = *(v1 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v26 = *(v25 + 64);
  v73 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v72 = (v27 + 63) >> 6;
  v84 = (v2 + 56);
  v85 = (v2 + 16);
  v30 = (v2 + 48);
  v70 = (v2 + 32);
  v75 = (v2 + 8);
  v79 = v25;

  v32 = 0;
  v82 = v17;
  v83 = v30;
  v93 = v23;
  while (v29)
  {
    v33 = v32;
LABEL_16:
    v36 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v37 = v36 | (v33 << 6);
    v38 = (*(v79 + 48) + 16 * v37);
    v39 = *v38;
    v40 = v38[1];
    v41 = v77;
    sub_100524368(*(v79 + 56) + *(v78 + 72) * v37, v77, type metadata accessor for OwnedBeaconGroup.PairingState);
    v42 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v43 = *(v42 + 48);
    v44 = v93;
    *v93 = v39;
    v44[1] = v40;
    sub_100523BF4(v41, v44 + v43, type metadata accessor for OwnedBeaconGroup.PairingState);
    v45 = *(*(v42 - 8) + 56);
    v46 = v42;
    v23 = v44;
    v45(v44, 0, 1, v46);
    sub_100017D5C(v39, v40);
LABEL_17:
    v47 = v91;
    sub_1000D2AD8(v23, v91, &unk_1016BBEA0, &unk_101395A80);
    v48 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
LABEL_28:

      v68 = 0;
      v69 = 1;
      return v68 | (v69 << 8);
    }

    sub_100016590(*v47, *(v47 + 8));
    sub_100523BF4(v47 + *(v48 + 48), v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_28;
      }

      v50 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v51 = v50[12];
      sub_100006654(*&v17[v50[16]], *&v17[v50[16] + 8]);
      v52 = &v17[v50[24]];
      v53 = *v52;
      v80 = v52[1];
      v81 = v53;
      v54 = v94;
      sub_1000D2AD8(&v17[v51], v94, &qword_1016A40D0, &unk_10138BE70);
      v55 = type metadata accessor for UUID();
      (*(*(v55 - 8) + 8))(v17, v55);
    }

    else
    {
      v56 = &v17[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
      v57 = *v56;
      v80 = v56[1];
      v81 = v57;
      v54 = v94;
      sub_1000D2AD8(v17, v94, &qword_1016A40D0, &unk_10138BE70);
    }

    v58 = v92;
    v59 = v88;
    (*v85)(v92, v89, v88);
    (*v84)(v58, 0, 1, v59);
    v60 = v86;
    v61 = *(v87 + 48);
    sub_1000D2A70(v54, v86, &qword_1016A40D0, &unk_10138BE70);
    sub_1000D2A70(v58, v60 + v61, &qword_1016A40D0, &unk_10138BE70);
    v62 = *v83;
    if ((*v83)(v60, 1, v59) == 1)
    {
      sub_10000B3A8(v58, &qword_1016A40D0, &unk_10138BE70);
      sub_10000B3A8(v94, &qword_1016A40D0, &unk_10138BE70);
      if (v62(v60 + v61, 1, v59) == 1)
      {

        sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
        goto LABEL_30;
      }

LABEL_5:
      result = sub_10000B3A8(v60, &qword_1016A4218, &qword_1013AFF98);
      v17 = v82;
      v23 = v93;
    }

    else
    {
      v63 = v76;
      sub_1000D2A70(v60, v76, &qword_1016A40D0, &unk_10138BE70);
      if (v62(v60 + v61, 1, v59) == 1)
      {
        sub_10000B3A8(v92, &qword_1016A40D0, &unk_10138BE70);
        sub_10000B3A8(v94, &qword_1016A40D0, &unk_10138BE70);
        (*v75)(v63, v59);
        goto LABEL_5;
      }

      v64 = v60 + v61;
      v65 = v71;
      (*v70)(v71, v64, v59);
      sub_100523A38(&unk_1016C7F60, &type metadata accessor for MACAddress);
      v74 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *v75;
      (*v75)(v65, v59);
      sub_10000B3A8(v92, &qword_1016A40D0, &unk_10138BE70);
      sub_10000B3A8(v94, &qword_1016A40D0, &unk_10138BE70);
      v66(v63, v59);
      result = sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
      v17 = v82;
      v23 = v93;
      if (v74)
      {

LABEL_30:
        v69 = v80;
        v68 = v81;
        return v68 | (v69 << 8);
      }
    }
  }

  if (v72 <= v32 + 1)
  {
    v34 = v32 + 1;
  }

  else
  {
    v34 = v72;
  }

  v35 = v34 - 1;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v72)
    {
      v67 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v67 - 8) + 56))(v23, 1, 1, v67);
      v29 = 0;
      v32 = v35;
      goto LABEL_17;
    }

    v29 = *(v73 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1005160CC(uint64_t a1)
{
  v302 = a1;
  v301 = type metadata accessor for UUID();
  v297 = *(v301 - 8);
  v2 = *(v297 + 64);
  v3 = __chkstk_darwin(v301);
  v271 = &v257 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v270 = &v257 - v6;
  __chkstk_darwin(v5);
  v291 = &v257 - v7;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v285 = &v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v295 = *(v11 - 8);
  isa = v295[8].isa;
  v13 = __chkstk_darwin(v11);
  v269 = &v257 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v268 = &v257 - v16;
  v17 = __chkstk_darwin(v15);
  v267 = &v257 - v18;
  __chkstk_darwin(v17);
  v266 = &v257 - v19;
  v20 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v281 = &v257 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v288 = &v257 - v25;
  v26 = __chkstk_darwin(v24);
  v280 = &v257 - v27;
  __chkstk_darwin(v26);
  v287 = &v257 - v28;
  v29 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v293 = *(v29 - 8);
  v30 = *(v293 + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v257 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v292 = &v257 - v34;
  v35 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v303 = (&v257 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v300 = (&v257 - v39);
  v282 = type metadata accessor for OwnedBeaconGroup(0);
  v40 = *(*(v282 - 8) + 64);
  v41 = __chkstk_darwin(v282);
  v279 = &v257 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v278 = &v257 - v44;
  v45 = __chkstk_darwin(v43);
  v264 = &v257 - v46;
  v47 = __chkstk_darwin(v45);
  v277 = &v257 - v48;
  v49 = __chkstk_darwin(v47);
  v298 = &v257 - v50;
  v51 = __chkstk_darwin(v49);
  v290 = &v257 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = (&v257 - v54);
  v56 = __chkstk_darwin(v53);
  v58 = (&v257 - v57);
  v59 = __chkstk_darwin(v56);
  v61 = &v257 - v60;
  v62 = __chkstk_darwin(v59);
  v64 = &v257 - v63;
  __chkstk_darwin(v62);
  v66 = &v257 - v65;
  sub_100524368(v1, &v257 - v65, type metadata accessor for OwnedBeaconGroup);
  sub_100524368(v1, v64, type metadata accessor for OwnedBeaconGroup);
  sub_100524368(v1, v61, type metadata accessor for OwnedBeaconGroup);
  v284 = v58;
  sub_100524368(v1, v58, type metadata accessor for OwnedBeaconGroup);
  v289 = v1;
  v286 = v55;
  sub_100524368(v1, v55, type metadata accessor for OwnedBeaconGroup);
  v67 = Logger.logObject.getter();
  LODWORD(v283) = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v67, v283);
  v299 = v11;
  v296 = v29;
  v294 = v33;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    v304 = v276;
    *v69 = 141559811;
    *(v69 + 4) = 1752392040;
    *(v69 + 12) = 2081;
    v70 = v282;
    v71 = *(v282 + 24);
    sub_100523A38(&qword_101696930, &type metadata accessor for UUID);
    v275 = v67;
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    sub_100523C5C(v66, type metadata accessor for OwnedBeaconGroup);
    v75 = sub_1000136BC(v72, v74, &v304);

    *(v69 + 14) = v75;
    *(v69 + 22) = 2160;
    *(v69 + 24) = 1752392040;
    *(v69 + 32) = 2081;
    v76 = v70[7];
    sub_100523A38(&qword_1016A4210, &type metadata accessor for MACAddress);
    v33 = v294;
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    sub_100523C5C(v64, type metadata accessor for OwnedBeaconGroup);
    v80 = sub_1000136BC(v77, v79, &v304);

    *(v69 + 34) = v80;
    *(v69 + 42) = 2080;
    v81 = *&v61[v70[10]];
    sub_100101BAC();
    v82 = Dictionary.description.getter();
    v84 = v83;
    sub_100523C5C(v61, type metadata accessor for OwnedBeaconGroup);
    v85 = sub_1000136BC(v82, v84, &v304);

    *(v69 + 44) = v85;
    *(v69 + 52) = 1024;
    LODWORD(v85) = *(v284 + v70[8]);
    sub_100523C5C(v284, type metadata accessor for OwnedBeaconGroup);
    *(v69 + 54) = v85;
    *(v69 + 58) = 2160;
    *(v69 + 60) = 1752392040;
    *(v69 + 68) = 2081;
    v86 = v286;
    v87 = v286 + v70[7];
    v88 = MACAddress.udid.getter();
    v90 = v89;
    sub_100523C5C(v86, type metadata accessor for OwnedBeaconGroup);
    v91 = sub_1000136BC(v88, v90, &v304);

    *(v69 + 70) = v91;
    v92 = v275;
    _os_log_impl(&_mh_execute_header, v275, v283, "<id:%{private,mask.hash}s mac:%{private,mask.hash}s beaconMap:%s fmns:%{BOOL}d udid: %{private,mask.hash}s>", v69, 0x4Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_100523C5C(v284, type metadata accessor for OwnedBeaconGroup);

    sub_100523C5C(v286, type metadata accessor for OwnedBeaconGroup);
    sub_100523C5C(v61, type metadata accessor for OwnedBeaconGroup);
    sub_100523C5C(v64, type metadata accessor for OwnedBeaconGroup);
    sub_100523C5C(v66, type metadata accessor for OwnedBeaconGroup);
    v70 = v282;
  }

  v93 = v289;
  v94 = v290;
  sub_100524368(v289, v290, type metadata accessor for OwnedBeaconGroup);
  v95 = v298;
  sub_100524368(v93, v298, type metadata accessor for OwnedBeaconGroup);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v304 = v99;
    *v98 = 141558531;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    v100 = v70[6];
    sub_100523A38(&qword_101696930, &type metadata accessor for UUID);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v94;
    v104 = v103;
    sub_100523C5C(v102, type metadata accessor for OwnedBeaconGroup);
    v105 = sub_1000136BC(v101, v104, &v304);

    *(v98 + 14) = v105;
    *(v98 + 22) = 2048;
    v106 = *(*(v298 + v70[10]) + 16);
    sub_100523C5C(v298, type metadata accessor for OwnedBeaconGroup);
    *(v98 + 24) = v106;
    _os_log_impl(&_mh_execute_header, v96, v97, "BeaconMap for group: %{private,mask.hash}s (%ld)", v98, 0x20u);
    sub_100007BAC(v99);
  }

  else
  {
    sub_100523C5C(v95, type metadata accessor for OwnedBeaconGroup);

    sub_100523C5C(v94, type metadata accessor for OwnedBeaconGroup);
  }

  v107 = v291;
  v108 = v303;
  v109 = *(v289 + v70[10]);
  v110 = v109 + 64;
  v111 = 1 << *(v109 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & *(v109 + 64);
  v283 = (v111 + 63) >> 6;
  v276 = (v297 + 32);
  v286 = v295 + 6;
  v275 = v295 + 4;
  v274 = (v297 + 16);
  v273 = v295 + 2;
  v272 = v295 + 1;
  v284 = (v297 + 8);
  v295 = v109;

  v114 = 0;
  *&v115 = 141558787;
  v258 = v115;
  *&v115 = 141559299;
  v263 = v115;
  *&v115 = 141559811;
  v257 = v115;
  *&v115 = 141558275;
  v262 = v115;
  v298 = v110;
  while (v113)
  {
    v116 = v114;
LABEL_21:
    v119 = __clz(__rbit64(v113));
    v113 &= v113 - 1;
    v120 = v119 | (v116 << 6);
    v121 = (v295[6].isa + 16 * v120);
    v122 = *v121;
    v123 = v121[1];
    v124 = v292;
    sub_100524368(v295[7].isa + *(v293 + 72) * v120, v292, type metadata accessor for OwnedBeaconGroup.PairingState);
    v125 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v126 = *(v125 + 48);
    v127 = v303;
    *v303 = v122;
    v127[1] = v123;
    v128 = v124;
    v108 = v127;
    sub_100523BF4(v128, v127 + v126, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v125 - 8) + 56))(v108, 0, 1, v125);
    sub_100017D5C(v122, v123);
LABEL_22:
    v129 = v300;
    sub_1000D2AD8(v108, v300, &unk_1016BBEA0, &unk_101395A80);
    v130 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v130 - 8) + 48))(v129, 1, v130) == 1)
    {

      return;
    }

    v131 = v129;
    v132 = *v129;
    v133 = v131[1];
    sub_100523BF4(v131 + *(v130 + 48), v33, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v135 = v301;
      if (EnumCaseMultiPayload == 1)
      {
        v297 = v132;
        v290 = v133;
        v136 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v137 = *(v136 + 48);
        sub_100006654(*&v33[*(v136 + 64)], *&v33[*(v136 + 64) + 8]);
        (*v276)(v107, v33, v135);
        v138 = &v33[v137];
        v139 = v288;
        sub_1000D2AD8(v138, v288, &qword_1016A40D0, &unk_10138BE70);
        v140 = v139;
        v141 = v281;
        sub_1000D2A70(v140, v281, &qword_1016A40D0, &unk_10138BE70);
        v142 = v299;
        if ((v286->isa)(v141, 1, v299) != 1)
        {
          v194 = v268;
          (v275->isa)(v268, v141, v142);
          sub_100524368(v289, v278, type metadata accessor for OwnedBeaconGroup);
          v195 = v270;
          (*v274)(v270, v107, v135);
          v196 = v269;
          (v273->isa)(v269, v194, v142);
          v197 = v297;
          v198 = v290;
          sub_100017D5C(v297, v290);
          v199 = Logger.logObject.getter();
          v200 = static os_log_type_t.default.getter();
          sub_100016590(v197, v198);
          if (os_log_type_enabled(v199, v200))
          {
            LODWORD(v261) = v200;
            v265 = v199;
            v201 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v304 = v260;
            *v201 = v257;
            *(v201 + 4) = 1752392040;
            *(v201 + 12) = 2081;
            v202 = *(v282 + 24);
            sub_100523A38(&qword_101696930, &type metadata accessor for UUID);
            v203 = v278;
            v204 = dispatch thunk of CustomStringConvertible.description.getter();
            v206 = v205;
            sub_100523C5C(v203, type metadata accessor for OwnedBeaconGroup);
            v207 = sub_1000136BC(v204, v206, &v304);

            *(v201 + 14) = v207;
            *(v201 + 22) = 2160;
            *(v201 + 24) = 1752392040;
            *(v201 + 32) = 2081;
            static String.Encoding.utf8.getter();
            v208 = String.init(data:encoding:)();
            if (!v209)
            {
              v208 = Data.hexString.getter();
            }

            v210 = v269;
            v211 = sub_1000136BC(v208, v209, &v304);

            *(v201 + 34) = v211;
            *(v201 + 42) = 2160;
            *(v201 + 44) = 1752392040;
            *(v201 + 52) = 2081;
            v212 = v270;
            v213 = UUID.uuidString.getter();
            v215 = v214;
            v259 = *v284;
            v216 = v212;
            v217 = v301;
            v259(v216, v301);
            v218 = sub_1000136BC(v213, v215, &v304);

            *(v201 + 54) = v218;
            *(v201 + 62) = 2160;
            *(v201 + 64) = 1752392040;
            *(v201 + 72) = 2081;
            v219 = MACAddress.description.getter();
            v221 = v220;
            v222 = v272->isa;
            v223 = v210;
            v224 = v299;
            (v272->isa)(v223, v299);
            v225 = sub_1000136BC(v219, v221, &v304);

            *(v201 + 74) = v225;
            v226 = v265;
            _os_log_impl(&_mh_execute_header, v265, v261, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: \npaired(%{private,mask.hash}s, %{private,mask.hash}s", v201, 0x52u);
            swift_arrayDestroy();

            sub_100016590(v197, v290);
            v222(v268, v224);
            sub_10000B3A8(v288, &qword_1016A40D0, &unk_10138BE70);
            v107 = v291;
            v259(v291, v217);
          }

          else
          {

            sub_100016590(v197, v198);
            v252 = v272->isa;
            v253 = v299;
            (v272->isa)(v196, v299);
            v254 = *v284;
            (*v284)(v195, v135);
            sub_100523C5C(v278, type metadata accessor for OwnedBeaconGroup);
            v252(v194, v253);
            sub_10000B3A8(v288, &qword_1016A40D0, &unk_10138BE70);
            v107 = v291;
            v254(v291, v135);
          }

          goto LABEL_50;
        }

        sub_10000B3A8(v141, &qword_1016A40D0, &unk_10138BE70);
        sub_100524368(v289, v279, type metadata accessor for OwnedBeaconGroup);
        v143 = v271;
        (*v274)(v271, v107, v135);
        v144 = v297;
        v145 = v290;
        sub_100017D5C(v297, v290);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();
        sub_100016590(v144, v145);
        LODWORD(v265) = v147;
        if (os_log_type_enabled(v146, v147))
        {
          v261 = v146;
          v148 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v304 = v260;
          *v148 = v263;
          *(v148 + 4) = 1752392040;
          *(v148 + 12) = 2081;
          v149 = *(v282 + 24);
          sub_100523A38(&qword_101696930, &type metadata accessor for UUID);
          v150 = v279;
          v151 = dispatch thunk of CustomStringConvertible.description.getter();
          v153 = v152;
          sub_100523C5C(v150, type metadata accessor for OwnedBeaconGroup);
          v154 = sub_1000136BC(v151, v153, &v304);

          *(v148 + 14) = v154;
          *(v148 + 22) = 2160;
          *(v148 + 24) = 1752392040;
          *(v148 + 32) = 2081;
          static String.Encoding.utf8.getter();
          v155 = String.init(data:encoding:)();
          if (!v156)
          {
            v155 = Data.hexString.getter();
          }

          v157 = v145;
          v158 = sub_1000136BC(v155, v156, &v304);

          *(v148 + 34) = v158;
          *(v148 + 42) = 2160;
          *(v148 + 44) = 1752392040;
          *(v148 + 52) = 2081;
          v159 = v271;
          v160 = UUID.uuidString.getter();
          v162 = v161;
          v163 = *v284;
          v164 = v159;
          v165 = v301;
          (*v284)(v164, v301);
          v166 = sub_1000136BC(v160, v162, &v304);

          *(v148 + 54) = v166;
          v167 = v261;
          _os_log_impl(&_mh_execute_header, v261, v265, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: paired(%{private,mask.hash}s, N/A)", v148, 0x3Eu);
          swift_arrayDestroy();

          sub_100016590(v144, v157);
          sub_10000B3A8(v288, &qword_1016A40D0, &unk_10138BE70);
          v107 = v291;
          v163(v291, v165);
          goto LABEL_50;
        }

        sub_100016590(v144, v145);
        v251 = *v284;
        (*v284)(v143, v135);
        sub_100523C5C(v279, type metadata accessor for OwnedBeaconGroup);
        sub_10000B3A8(v288, &qword_1016A40D0, &unk_10138BE70);
        v251(v107, v135);
        v110 = v298;
        v33 = v294;
      }

      else
      {
        sub_100017D5C(v132, v133);
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.default.getter();
        sub_100016590(v132, v133);
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v188 = v133;
          v189 = swift_slowAlloc();
          v304 = v189;
          *v187 = v262;
          *(v187 + 4) = 1752392040;
          *(v187 + 12) = 2081;
          static String.Encoding.utf8.getter();
          v190 = String.init(data:encoding:)();
          if (!v191)
          {
            v190 = Data.hexString.getter();
          }

          v192 = sub_1000136BC(v190, v191, &v304);

          *(v187 + 14) = v192;
          _os_log_impl(&_mh_execute_header, v185, v186, "  %{private,mask.hash}s: locked", v187, 0x16u);
          sub_100007BAC(v189);

          sub_100016590(v132, v188);

          goto LABEL_49;
        }

        sub_100016590(v132, v133);
        v110 = v298;
      }
    }

    else
    {
      v168 = v132;
      v169 = v287;
      sub_1000D2AD8(v33, v287, &qword_1016A40D0, &unk_10138BE70);
      v170 = v169;
      v171 = v280;
      sub_1000D2A70(v170, v280, &qword_1016A40D0, &unk_10138BE70);
      v172 = v299;
      if ((v286->isa)(v171, 1, v299) == 1)
      {
        sub_10000B3A8(v171, &qword_1016A40D0, &unk_10138BE70);
        v173 = v264;
        sub_100524368(v289, v264, type metadata accessor for OwnedBeaconGroup);
        sub_100017D5C(v168, v133);
        v174 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();
        sub_100016590(v168, v133);
        LODWORD(v297) = v175;
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *v176 = v258;
          *(v176 + 4) = 1752392040;
          *(v176 + 12) = 2081;
          v177 = *(v282 + 24);
          sub_100523A38(&qword_101696930, &type metadata accessor for UUID);
          v178 = dispatch thunk of CustomStringConvertible.description.getter();
          v180 = v179;
          sub_100523C5C(v173, type metadata accessor for OwnedBeaconGroup);
          v181 = sub_1000136BC(v178, v180, &v304);

          *(v176 + 14) = v181;
          *(v176 + 22) = 2160;
          *(v176 + 24) = 1752392040;
          *(v176 + 32) = 2081;
          static String.Encoding.utf8.getter();
          v182 = String.init(data:encoding:)();
          if (!v183)
          {
            v182 = Data.hexString.getter();
          }

          v184 = sub_1000136BC(v182, v183, &v304);

          *(v176 + 34) = v184;
          _os_log_impl(&_mh_execute_header, v174, v297, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: unpaired(N/A)", v176, 0x2Au);
          swift_arrayDestroy();

          sub_100016590(v168, v133);
          goto LABEL_48;
        }

        sub_100016590(v168, v133);
        sub_100523C5C(v173, type metadata accessor for OwnedBeaconGroup);
        sub_10000B3A8(v287, &qword_1016A40D0, &unk_10138BE70);
        v107 = v291;
        v110 = v298;
        v33 = v294;
      }

      else
      {
        v227 = v266;
        (v275->isa)(v266, v171, v172);
        sub_100524368(v289, v277, type metadata accessor for OwnedBeaconGroup);
        v228 = v267;
        (v273->isa)(v267, v227, v172);
        sub_100017D5C(v168, v133);
        v229 = Logger.logObject.getter();
        v230 = static os_log_type_t.default.getter();
        v297 = v168;
        sub_100016590(v168, v133);
        LODWORD(v265) = v230;
        if (os_log_type_enabled(v229, v230))
        {
          v261 = v229;
          v231 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v304 = v260;
          *v231 = v263;
          *(v231 + 4) = 1752392040;
          *(v231 + 12) = 2081;
          v232 = *(v282 + 24);
          sub_100523A38(&qword_101696930, &type metadata accessor for UUID);
          v233 = v277;
          v234 = dispatch thunk of CustomStringConvertible.description.getter();
          v236 = v235;
          sub_100523C5C(v233, type metadata accessor for OwnedBeaconGroup);
          v237 = sub_1000136BC(v234, v236, &v304);

          *(v231 + 14) = v237;
          *(v231 + 22) = 2160;
          *(v231 + 24) = 1752392040;
          *(v231 + 32) = 2081;
          static String.Encoding.utf8.getter();
          v238 = v297;
          v239 = String.init(data:encoding:)();
          if (!v240)
          {
            v239 = Data.hexString.getter();
          }

          v241 = sub_1000136BC(v239, v240, &v304);

          *(v231 + 34) = v241;
          *(v231 + 42) = 2160;
          *(v231 + 44) = 1752392040;
          *(v231 + 52) = 2081;
          v242 = v267;
          v243 = MACAddress.description.getter();
          v245 = v244;
          v246 = v272->isa;
          v247 = v242;
          v248 = v299;
          (v272->isa)(v247, v299);
          v249 = sub_1000136BC(v243, v245, &v304);

          *(v231 + 54) = v249;
          v250 = v261;
          _os_log_impl(&_mh_execute_header, v261, v265, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: unpaired(%{private,mask.hash}s", v231, 0x3Eu);
          swift_arrayDestroy();

          sub_100016590(v238, v133);
          v246(v266, v248);
LABEL_48:
          sub_10000B3A8(v287, &qword_1016A40D0, &unk_10138BE70);
LABEL_49:
          v107 = v291;
LABEL_50:
          v33 = v294;
          v108 = v303;
          goto LABEL_51;
        }

        sub_100016590(v297, v133);
        v255 = v272->isa;
        v256 = v299;
        (v272->isa)(v228, v299);
        sub_100523C5C(v277, type metadata accessor for OwnedBeaconGroup);
        v255(v227, v256);
        sub_10000B3A8(v287, &qword_1016A40D0, &unk_10138BE70);
        v107 = v291;
        v33 = v294;
LABEL_51:
        v110 = v298;
      }
    }
  }

  if (v283 <= v114 + 1)
  {
    v117 = v114 + 1;
  }

  else
  {
    v117 = v283;
  }

  v118 = v117 - 1;
  while (1)
  {
    v116 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v116 >= v283)
    {
      v193 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v193 - 8) + 56))(v108, 1, 1, v193);
      v113 = 0;
      v114 = v118;
      goto LABEL_22;
    }

    v113 = *(v110 + 8 * v116);
    ++v114;
    if (v113)
    {
      v114 = v116;
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_100518118()
{
  v1 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v21 - v8;
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  result = type metadata accessor for OwnedBeaconGroup(0);
  if (*(v0 + *(result + 32)) != 1)
  {
LABEL_5:
    v17 = sub_10051FA1C() ^ 1;
    return v17 & 1;
  }

  v13 = *(v0 + *(result + 40));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_1003A8624(*(v13 + 16), 0);
    v16 = sub_1003A9374(v23, v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v14, v13);
    v21[3] = v23[2];
    v22 = v16;
    v21[1] = v23[4];
    v21[2] = v23[3];

    result = sub_1000128F8();
    if (v22 != v14)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v19 = v15[2];
  while (1)
  {
    if (v19 == v18)
    {

      v17 = 1;
      return v17 & 1;
    }

    if (v18 >= v15[2])
    {
      break;
    }

    sub_100524368(v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v11, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100524368(v11, v9, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (!swift_getEnumCaseMultiPayload())
    {

      sub_100523C5C(v9, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523C5C(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
      goto LABEL_15;
    }

    ++v18;
    sub_100523C5C(v9, type metadata accessor for OwnedBeaconGroup.PairingState);
    swift_storeEnumTagMultiPayload();
    v20 = sub_100524658(v11, v6);
    sub_100523C5C(v6, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_100523C5C(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v20)
    {

LABEL_15:
      v17 = 0;
      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005183F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v28[-v12];
  __chkstk_darwin(v11);
  v15 = &v28[-v14];
  v16 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (!*(v16 + 16))
  {
    goto LABEL_6;
  }

  v17 = sub_100771E30(a1, a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_100524368(*(v16 + 56) + *(v6 + 72) * v17, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v13, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v15, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = &v10[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    v23 = *v27;
    v24 = v27[1];
    sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
    return v23 | (v24 << 8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v21 = v20[12];
    sub_100006654(*&v10[v20[16]], *&v10[v20[16] + 8]);
    v22 = &v10[v20[24]];
    v23 = *v22;
    v24 = v22[1];
    sub_10000B3A8(&v10[v21], &qword_1016A40D0, &unk_10138BE70);
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 8))(v10, v25);
  }

  else
  {
LABEL_6:
    v23 = 0;
    v24 = 1;
  }

  return v23 | (v24 << 8);
}

uint64_t sub_100518664(uint64_t a1)
{
  v51 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v3 = *(*(v51 - 8) + 64);
  v4 = __chkstk_darwin(v51);
  v50 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v49 = (&v43 - v7);
  v8 = __chkstk_darwin(v6);
  v48 = (&v43 - v9);
  __chkstk_darwin(v8);
  v47 = (&v43 - v10);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v43 = v1;
  v58 = _swiftEmptyArrayStorage;
  sub_101123CB8(0, v11, 0);
  v12 = v58;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = result;
  v17 = 0;
  v57 = *(a1 + 36);
  v44 = a1 + 72;
  v45 = v11;
  v46 = a1 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_22;
    }

    if (v57 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v53 = 1 << v16;
    v54 = v16 >> 6;
    v52 = v17;
    v19 = v51;
    v20 = *(v51 + 48);
    v21 = *(a1 + 56);
    v55 = *(*(a1 + 48) + 16 * v16);
    v22 = v47;
    *v47 = v55;
    v23 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_100524368(v21 + *(*(v23 - 8) + 72) * v16, v22 + v20, type metadata accessor for OwnedBeaconGroup.PairingState);
    v24 = *v22;
    v56 = v12;
    v25 = v48;
    *v48 = v24;
    sub_100523BF4(v22 + v20, v25 + *(v19 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v26 = v49;
    sub_1000D2A70(v25, v49, &qword_1016A4190, &unk_1013A3550);
    v27 = *(v19 + 48);
    v28 = v50;
    *v50 = *v26;
    sub_100523BF4(v26 + v27, v28 + v27, type metadata accessor for OwnedBeaconGroup.PairingState);
    v29 = a1;
    v31 = *v28;
    v30 = v28[1];
    sub_100017D5C(v55, *(&v55 + 1));
    sub_100017D5C(v31, v30);
    sub_10000B3A8(v28, &qword_1016A4190, &unk_1013A3550);
    v32 = v25;
    v12 = v56;
    result = sub_10000B3A8(v32, &qword_1016A4190, &unk_1013A3550);
    v58 = v12;
    v34 = v12[2];
    v33 = v12[3];
    if (v34 >= v33 >> 1)
    {
      result = sub_101123CB8((v33 > 1), v34 + 1, 1);
      v12 = v58;
    }

    v12[2] = v34 + 1;
    v35 = &v12[2 * v34];
    v35[4] = v31;
    v35[5] = v30;
    v18 = 1 << *(v29 + 32);
    if (v16 >= v18)
    {
      goto LABEL_24;
    }

    a1 = v29;
    v13 = v46;
    v36 = *(v46 + 8 * v54);
    if ((v36 & v53) == 0)
    {
      goto LABEL_25;
    }

    if (v57 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v37 = v36 & (-2 << (v16 & 0x3F));
    if (v37)
    {
      v18 = __clz(__rbit64(v37)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = v54 << 6;
      v39 = v54 + 1;
      v40 = (v44 + 8 * v54);
      while (v39 < (v18 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_10040BA00(v16, v57, 0);
          v18 = __clz(__rbit64(v41)) + v38;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v16, v57, 0);
    }

LABEL_4:
    v17 = v52 + 1;
    v16 = v18;
    if (v52 + 1 == v45)
    {
      return v12;
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

void sub_100518A90(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = type metadata accessor for MACAddress();
  v4 = *(v3 - 1);
  v93 = v3;
  v94 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v84 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v84 - v17;
  v19 = type metadata accessor for UUID();
  v98 = *(v19 - 8);
  v99 = v19;
  v20 = *(v98 + 64);
  __chkstk_darwin(v19);
  v97 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x72476E6F63616542 && v22 == 0xEB0000000070756FLL)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      sub_100523AF8();
      swift_allocError();
      *v45 = 0;
      goto LABEL_13;
    }
  }

  v24 = [a1 recordID];
  v25 = [v24 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v27 = v98;
  v26 = v99;
  if ((*(v98 + 48))(v18, 1, v99) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_100523AF8();
    swift_allocError();
    *v28 = 3;
LABEL_13:
    swift_willThrow();

    return;
  }

  v29 = v27 + 32;
  v91 = *(v27 + 32);
  v91(v97, v18, v26);
  v30 = [a1 encryptedValues];
  v31 = String._bridgeToObjectiveC()();
  v92 = v30;
  v32 = [v30 objectForKeyedSubscript:v31];

  if (!v32 || (v102 = v32, v33 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_101385D80;
    *(v41 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v41 + 64) = sub_10013A2D8();
    *(v41 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v42 = a1;
    v43 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100523AF8();
    swift_allocError();
    *v44 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v98 + 8))(v97, v99);
    return;
  }

  v89 = v29;
  v90 = v33;
  v34 = v100;
  v35 = v101;
  v36 = type metadata accessor for JSONDecoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_100017D5C(v34, v35);
  JSONDecoder.init()();
  sub_100523A38(&unk_1016A4160, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  v39 = v95;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v39)
  {

    sub_100016590(v34, v35);
    v40 = v35;
  }

  else
  {

    v95 = v35;
    sub_100016590(v34, v35);
    sub_100523BF4(v12, v14, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
    v46 = *v14;
    v47 = v14[8];
    if ((v47 & 1) != 0 || v46 < 2)
    {
      v87 = v34;
      v56 = v96;
      *(v96 + 16) = v46;
      v54 = v56;
      *(v56 + 24) = v47;
      v7 = &v14[*(v8 + 20)];
      v55 = v92;
      goto LABEL_23;
    }

    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177ACC8);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v40 = v95;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v49, v50, "Ignoring unsupported OwnedBeaconGroup version: %ld > 1", v52, 0xCu);
    }

    sub_100523AF8();
    swift_allocError();
    *v53 = 5;
    swift_willThrow();
    sub_100523C5C(v14, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  }

  v54 = v96;
  *(v96 + 16) = 0;
  *(v54 + 24) = 1;
  sub_100017D5C(v34, v40);
  MACAddress.init(dataRepresentation:)();
  v55 = v92;
  v87 = v34;
  v95 = v40;

LABEL_23:
  v88 = type metadata accessor for OwnedBeaconGroup(0);
  v57 = v93;
  (*(v94 + 32))(v54 + *(v88 + 28), v7, v93);
  v58 = String._bridgeToObjectiveC()();
  v59 = [v55 objectForKeyedSubscript:v58];

  if (v59)
  {
    v102 = v59;
    if (swift_dynamicCast())
    {
      v60 = v100;
      v61 = v101;
      sub_100017D5C(v100, v101);
      v86 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      sub_100523B4C();
      sub_100523BA0();
      sub_100101BAC();
      sub_100523A38(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState);
      v62 = v61;
      v63 = v60;
      sub_100523A38(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState);
      v64 = v62;
      v65 = Dictionary<>.init(dataRepresentation:)();
      v66 = String._bridgeToObjectiveC()();
      v67 = v92;
      v68 = [v92 objectForKeyedSubscript:v66];

      v54 = v96;
      if (v68)
      {
        v100 = v68;
        if (swift_dynamicCast())
        {
          LODWORD(v86) = v102;
          v69 = String._bridgeToObjectiveC()();
          v70 = [v67 objectForKeyedSubscript:v69];

          if (v70)
          {
            v102 = v70;
            if (swift_dynamicCast())
            {
              v98 = v100;
              v94 = v101;
              v93 = objc_autoreleasePoolPush();
              v71 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
              [a1 encodeSystemFieldsWithCoder:v71];
              [v71 finishEncoding];
              v72 = v63;
              v73 = [v71 encodedData];
              v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v85 = v74;

              objc_autoreleasePoolPop(v93);
              sub_100016590(v87, v95);
              sub_100016590(v72, v64);
              swift_unknownObjectRelease();

              v75 = v91;
              v76 = v85;
              *v54 = v90;
              *(v54 + 8) = v76;
              v77 = v88;
              v75(v54 + *(v88 + 24), v97, v99);
              *(v54 + v77[8]) = v86;
              v78 = (v54 + v77[9]);
              v79 = v94;
              *v78 = v98;
              v78[1] = v79;
              *(v54 + v77[10]) = v65;
              return;
            }
          }
        }
      }

      sub_100016590(v63, v64);
      v57 = v93;
    }
  }

  static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_101385D80;
  *(v80 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v80 + 64) = sub_10013A2D8();
  *(v80 + 32) = a1;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v81 = a1;
  v82 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100523AF8();
  swift_allocError();
  *v83 = 6;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_100016590(v87, v95);

  (*(v98 + 8))(v97, v99);
  (*(v94 + 8))(v54 + *(v88 + 28), v57);
}
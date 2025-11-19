uint64_t sub_10019C82C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[4];
  v0[21] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v2, v1, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_10019C9D8;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];

  return sub_1001667E8(v12, v14, v15, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10019C9D8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 128);
  v7 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_10019B748(v3, v4, type metadata accessor for ClientContext);
  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  *v8 = v7;
  v8[1] = sub_10019CBD4;
  v9 = *(v1 + 152);
  v10 = *(v1 + 88);
  v11 = *(v1 + 200);

  return sub_100198C0C(v10, v9, v11);
}

uint64_t sub_10019CBD4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10019DB78;
  }

  else
  {
    v3 = sub_10019CCE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019CCE8()
{
  v58 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC28);
  sub_10019B748(v2, v1, type metadata accessor for SavePreferencesRequestContent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56 = v11;
    *v10 = 136315138;
    sub_10019B748(v7, v8, type metadata accessor for SavePreferencesRequestContent);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
    v15 = sub_10000D01C(v12, v14, &v56);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request content: %s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
  }

  v54 = v0[24];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004C1900;
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v56 = 0xD00000000000001DLL;
  v57 = 0x80000001004E43D0;
  sub_10019B748(v16, v18, type metadata accessor for SavePreferencesRequestContent);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24 = v56;
  v25 = v57;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 32) = v24;
  *(v22 + 40) = v25;
  print(_:separator:terminator:)();

  v26 = type metadata accessor for JSONEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v19 = sub_10019E890;
  v19[1] = 0;
  (*(v20 + 104))(v19, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v21);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009320(&qword_1005AE328, type metadata accessor for SavePreferencesRequestContent);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v54)
  {

    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    v31 = v29;
    v32 = v30;
  }

  v33 = v0[20];
  v34 = v0[21];
  v46 = v0[19];
  v47 = v0[18];
  v48 = v0[17];
  v49 = v0[16];
  v50 = v0[15];
  v51 = v0[14];
  v35 = v0[13];
  v44 = v0[12];
  v45 = v0[11];
  v52 = v0[10];
  v53 = v0[9];
  v55 = v0[7];
  v43 = v0[4];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004C1900;
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v56 = 0xD00000000000001ALL;
  v57 = 0x80000001004E43F0;
  v0[2] = v31;
  v0[3] = v32;
  sub_10002CF44(v31, v32);
  sub_10004B564(&qword_1005AB500, &qword_1004C5470);
  v37._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v37);

  v38 = v56;
  v39 = v57;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 32) = v38;
  *(v36 + 40) = v39;
  print(_:separator:terminator:)();

  (*(v35 + 8))(v43, v44);
  sub_10019B7B0(v45, type metadata accessor for SavePreferencesRequestContent);
  sub_10019B7B0(v33, type metadata accessor for ClientContext);

  sub_10002CF44(v31, v32);

  sub_10001A794(v31, v32);

  v40 = v0[1];
  v41 = v0[21];

  return v40(v41, v31, v32);
}

void sub_10019D30C()
{
  sub_100144FE8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      sub_10019D3A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019D3A8()
{
  if (!qword_1005AE398)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AE398);
    }
  }
}

unint64_t sub_10019D440()
{
  result = qword_1005AE468;
  if (!qword_1005AE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE468);
  }

  return result;
}

uint64_t sub_10019D494(uint64_t a1)
{
  *(a1 + 8) = sub_100009320(&qword_1005AE470, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  result = sub_100009320(&qword_1005AE318, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10019D518(uint64_t a1)
{
  *(a1 + 8) = sub_100009320(&qword_1005AE478, type metadata accessor for SavePreferencesRequestContent);
  result = sub_100009320(&qword_1005AE328, type metadata accessor for SavePreferencesRequestContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10019D5A0()
{
  result = qword_1005AE480;
  if (!qword_1005AE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE480);
  }

  return result;
}

unint64_t sub_10019D5F4()
{
  result = qword_1005AE490;
  if (!qword_1005AE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE490);
  }

  return result;
}

unint64_t sub_10019D648()
{
  result = qword_1005AE4A0;
  if (!qword_1005AE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4A0);
  }

  return result;
}

unint64_t sub_10019D69C()
{
  result = qword_1005AE4B8;
  if (!qword_1005AE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4B8);
  }

  return result;
}

unint64_t sub_10019D714()
{
  result = qword_1005AE4C0;
  if (!qword_1005AE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4C0);
  }

  return result;
}

unint64_t sub_10019D76C()
{
  result = qword_1005AE4C8;
  if (!qword_1005AE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4C8);
  }

  return result;
}

unint64_t sub_10019D7C4()
{
  result = qword_1005AE4D0;
  if (!qword_1005AE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4D0);
  }

  return result;
}

unint64_t sub_10019D81C()
{
  result = qword_1005AE4D8;
  if (!qword_1005AE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4D8);
  }

  return result;
}

unint64_t sub_10019D874()
{
  result = qword_1005AE4E0;
  if (!qword_1005AE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4E0);
  }

  return result;
}

unint64_t sub_10019D8CC()
{
  result = qword_1005AE4E8;
  if (!qword_1005AE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4E8);
  }

  return result;
}

uint64_t sub_10019D920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xEA00000000006449)
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

uint64_t sub_10019DA50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7366657270 && a2 == 0xE500000000000000)
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

uint64_t sub_10019DB88(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_10002CF44(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_10019DBC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RequestMethod();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10019DC38(uint64_t a1)
{
  v2 = sub_10019E7EC(&qword_1005AE4F0, type metadata accessor for AnyRequestContentRepresentable);

  return RequestContentRepresentable.description.getter(a1, v2);
}

void sub_10019DCA4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  if (a5 <= 1u)
  {
    v58 = v6;
    if (a5)
    {
      *(&v62 + 1) = type metadata accessor for AnyEndpoint();
      *&v63 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint);
      v22 = sub_10000331C(&v61);
      sub_10018BD14(a1, v22);
      *&v65 = &type metadata for SecureLocationsPushAckRequest;
      v14 = sub_10018D34C();
    }

    else
    {
      *(&v62 + 1) = type metadata accessor for AnyEndpoint();
      *&v63 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint);
      v15 = sub_10000331C(&v61);
      sub_100189490(a1, v15);
      *&v65 = &type metadata for SecureLocationsFetchRequest;
      v14 = sub_10018B8A8();
    }

    goto LABEL_12;
  }

  if (a5 == 2)
  {
    v58 = v6;
    *(&v62 + 1) = type metadata accessor for AnyEndpoint();
    *&v63 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint);
    v16 = sub_10000331C(&v61);
    sub_10018D504(a1, v16);
    *&v65 = &type metadata for SecureLocationsSubmitRequest;
    v14 = sub_10018E6D8();
    goto LABEL_12;
  }

  if (a5 == 3)
  {
    v58 = v6;
    *(&v62 + 1) = type metadata accessor for AnyEndpoint();
    *&v63 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint);
    v13 = sub_10000331C(&v61);
    sub_10018E95C(a1, v13);
    *&v65 = &type metadata for SecureLocationsUnsubscribeRequest;
    v14 = sub_10018FB60();
LABEL_12:
    *(&v65 + 1) = v14;
    *(&v63 + 1) = a2;
    v23 = a3;
    v24 = a4;
LABEL_13:
    *&v64 = v23;
    *(&v64 + 1) = v24;
    v26 = *a1;
    v25 = a1[1];
    v27 = (a1 + *(type metadata accessor for Credentials(0) + 32));
    v28 = *v27;
    v29 = v27[1];
    *(&v67 + 1) = &type metadata for AnyRequestCredential;
    v68 = sub_1001889FC();
    v30 = swift_allocObject();
    *&v66 = v30;
    v30[2] = v26;
    v30[3] = v25;
    v30[4] = v28;
    v30[5] = v29;

    v17 = v58;
    goto LABEL_14;
  }

  if (!(a4 | a3 | a2))
  {
    v58 = v6;
    *(&v62 + 1) = type metadata accessor for AnyEndpoint();
    *&v63 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint);
    v54 = sub_10000331C(&v61);
    sub_1001837C0(a1, v54);
    v55 = sub_10018573C();
    v23 = v56;
    v24 = v57;
    *&v65 = &type metadata for SecureLocationsConfigRequest;
    *(&v65 + 1) = sub_100186F40();
    *(&v63 + 1) = v55;
    goto LABEL_13;
  }

  sub_1001879E8(a1, v59, &v61);
  v17 = v6;
  if (v6)
  {
    v18 = v59[0];
    v19 = v59[1];
    v20 = v60;
    sub_1000C7488();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = v20;
    return;
  }

LABEL_14:
  v31 = v66;
  *(a6 + 64) = v65;
  *(a6 + 80) = v31;
  *(a6 + 96) = v67;
  *(a6 + 112) = v68;
  v32 = v62;
  *a6 = v61;
  *(a6 + 16) = v32;
  v33 = v64;
  *(a6 + 32) = v63;
  *(a6 + 48) = v33;
  sub_10019E284(a2, a3, a4, a5);
  if (static SystemInfo.isInternalBuild.getter())
  {
    v34 = [objc_opt_self() standardUserDefaults];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 BOOLForKey:v35];

    if (v36)
    {
      v37 = sub_100208D38(&off_10058AAD0);
      sub_1001939E4(&unk_10058AAF0);
      sub_100011004(a6, &v61);
      v38 = *(a6 + 72);
      sub_100011AEC((a6 + 40), *(a6 + 64));
      v39 = type metadata accessor for AnyRequestContentRepresentable();
      *&v65 = v39;
      *(&v65 + 1) = sub_10019E7EC(&qword_1005AE4F0, type metadata accessor for AnyRequestContentRepresentable);
      v40 = sub_10000331C(&v63 + 1);
      v41 = *(v38 + 8);
      dispatch thunk of ContentRepresentable.method.getter();
      v42 = *(a6 + 72);
      sub_100011AEC((a6 + 40), *(a6 + 64));
      v43 = *(v42 + 8);
      v44 = dispatch thunk of ContentRepresentable.headerDictionary.getter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v44;
      sub_10019E368(v37, sub_10019E2D4, 0, isUniquelyReferenced_nonNull_native, &v69);
      if (v17)
      {

        __break(1u);
      }

      else
      {

        v46 = v69;
        v47 = *(a6 + 72);
        sub_100011AEC((a6 + 40), *(a6 + 64));
        v48 = dispatch thunk of RequestContentRepresentable.body.getter();
        *(v40 + *(v39 + 20)) = v46;
        v49 = (v40 + *(v39 + 24));
        *v49 = v48;
        v49[1] = v50;
        sub_100011004(a6 + 80, &v66);
        sub_10019E608(a6);
        v51 = v66;
        *(a6 + 64) = v65;
        *(a6 + 80) = v51;
        *(a6 + 96) = v67;
        *(a6 + 112) = v68;
        v52 = v62;
        *a6 = v61;
        *(a6 + 16) = v52;
        v53 = v64;
        *(a6 + 32) = v63;
        *(a6 + 48) = v53;
      }
    }
  }
}

void sub_10019E284(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {

    sub_10002CF44(a2, a3);
  }
}

uint64_t sub_10019E2D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t type metadata accessor for AnyRequestContentRepresentable()
{
  result = qword_1005AE550;
  if (!qword_1005AE550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019E368(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_1000110D8(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_100202A1C();
      }
    }

    else
    {
      v34 = v56;
      sub_10022C6A4(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_1000110D8(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10000E3F8();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10019E660()
{
  type metadata accessor for RequestMethod();
  if (v0 <= 0x3F)
  {
    sub_10019D3A8();
    if (v1 <= 0x3F)
    {
      sub_10019E6FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019E6FC()
{
  if (!qword_1005AE560)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AE560);
    }
  }
}

uint64_t sub_10019E7EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10019E834()
{
  result = sub_1004B932C();
  if ((result & 0x1FFFFFFFFLL) == 7)
  {
    v1 = 0xD000000000000020;
  }

  else
  {
    v1 = 0xD00000000000001DLL;
  }

  if ((result & 0x1FFFFFFFFLL) == 7)
  {
    v2 = "/fmipservice/fmpeopleservice/";
  }

  else
  {
    v2 = "hideLocation body: ";
  }

  qword_1005DFCF8 = v1;
  unk_1005DFD00 = v2 | 0x8000000000000000;
  return result;
}

uint64_t sub_10019E890(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_100011AEC(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Date.epoch.getter();
  sub_1000BAF2C(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100004984(v4);
}

uint64_t sub_10019E938()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = static SystemInfo.productType.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = static SystemInfo.osVersion.getter();
  String.append(_:)(v8);

  return v2;
}

uint64_t sub_10019EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = async function pointer to ServerInteractionController.send(endpoint:content:credential:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100003690;

  return ServerInteractionController.send(endpoint:content:credential:)(a1, a2, a3, a4);
}

uint64_t sub_10019EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = async function pointer to ServerInteractionController.upload(endpoint:content:credential:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000368C;

  return ServerInteractionController.upload(endpoint:content:credential:)(a1, a2, a3, a4);
}

uint64_t sub_10019EBE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x203A617461640ALL;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v2);

  return 540697705;
}

uint64_t sub_10019ECBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_10019EBE4();
}

uint64_t sub_10019ECD8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005AE630, &qword_1004C3430);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_100005F04(v1, &v13 - v10, &qword_1005AE630, &qword_1004C3430);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_10019EEB8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = type metadata accessor for SecureLocation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_100005F04(v1, &v13 - v10, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 2;
  }

  sub_1001A5858(v11, v7, type metadata accessor for SecureLocation);
  v14(&v15, v7);
  if (v2)
  {
    result = sub_1001A58C0(v7, type metadata accessor for SecureLocation);
    __break(1u);
  }

  else
  {
    sub_1001A58C0(v7, type metadata accessor for SecureLocation);
    return v15;
  }

  return result;
}

uint64_t sub_10019F09C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v20[1] = a2;
  v21 = a1;
  v7 = type metadata accessor for PrivateKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v20 - v14;
  sub_100005F04(v5, v20 - v14, &unk_1005AE620, &qword_1004C4588);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = a3;
LABEL_5:
    v18 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
    return (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v21(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t sub_10019F2D8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v20[1] = a2;
  v21 = a1;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&unk_1005AE5E0, &qword_1004CEF40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v20 - v14;
  sub_100005F04(v5, v20 - v14, &unk_1005AE5E0, &qword_1004CEF40);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = a3;
LABEL_5:
    v18 = type metadata accessor for Fence.Schedule();
    return (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v21(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t sub_10019F508(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimeZone();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4);
  v107 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Fence.DaysOfWeek();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  __chkstk_darwin(v7);
  v104 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Fence.TimeOfDay();
  v117 = *(v10 - 8);
  v118 = v10;
  v11 = *(v117 + 64);
  __chkstk_darwin(v10);
  v116 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v115 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v114 = &v104 - v18;
  v19 = __chkstk_darwin(v17);
  v113 = &v104 - v20;
  v21 = __chkstk_darwin(v19);
  v112 = &v104 - v22;
  v23 = __chkstk_darwin(v21);
  v111 = &v104 - v24;
  __chkstk_darwin(v23);
  v110 = &v104 - v25;
  v26 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v104 - v28;
  v30 = [*a1 encryptedValues];
  swift_getObjectType();
  v31 = type metadata accessor for FenceRecord();
  v32 = (v2 + v31[5]);
  v34 = *v32;
  v33 = v32[1];
  *(&v121 + 1) = &type metadata for String;
  v122 = &protocol witness table for String;
  *&v120 = v34;
  *(&v120 + 1) = v33;

  CKRecordKeyValueSetting.subscript.setter();
  v35 = *(v2 + v31[6]);
  v36 = String._bridgeToObjectiveC()();
  [v30 setObject:v35 forKeyedSubscript:v36];

  v37 = *(v2 + v31[7]);
  *(&v121 + 1) = &type metadata for Int;
  v122 = &protocol witness table for Int;
  *&v120 = v37;
  CKRecordKeyValueSetting.subscript.setter();
  v38 = v31[9];
  v119 = v2;
  sub_100005F04(v2 + v38, v29, &unk_1005AE5B0, &qword_1004C32F0);
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v29, 1, v39) == 1)
  {
    sub_100002CE0(v29, &unk_1005AE5B0, &qword_1004C32F0);
    v120 = 0u;
    v121 = 0u;
    v122 = 0;
  }

  else
  {
    *(&v121 + 1) = v39;
    v122 = &protocol witness table for Date;
    v41 = sub_10000331C(&v120);
    (*(v40 + 32))(v41, v29, v39);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v42 = (v119 + v31[10]);
  v43 = v42[1];
  if (v43)
  {
    v44 = *v42;
    v45 = &protocol witness table for String;
    v46 = &type metadata for String;
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v45 = 0;
    *&v121 = 0;
  }

  *&v120 = v44;
  *(&v120 + 1) = v43;
  *(&v121 + 1) = v46;
  v122 = v45;

  CKRecordKeyValueSetting.subscript.setter();
  v47 = v42[3];
  if (v47)
  {
    v48 = v42[2];
    v49 = &protocol witness table for String;
    v50 = &type metadata for String;
  }

  else
  {
    v48 = 0;
    v50 = 0;
    v49 = 0;
    *&v121 = 0;
  }

  *&v120 = v48;
  *(&v120 + 1) = v47;
  *(&v121 + 1) = v50;
  v122 = v49;

  CKRecordKeyValueSetting.subscript.setter();
  v51 = v42[5];
  if (v51)
  {
    v52 = v42[4];
    v53 = &protocol witness table for String;
    v54 = &type metadata for String;
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v53 = 0;
    *&v121 = 0;
  }

  *&v120 = v52;
  *(&v120 + 1) = v51;
  *(&v121 + 1) = v54;
  v122 = v53;

  CKRecordKeyValueSetting.subscript.setter();
  v55 = v42[7];
  if (v55)
  {
    v56 = v42[6];
    v57 = &protocol witness table for String;
    v58 = &type metadata for String;
  }

  else
  {
    v56 = 0;
    v58 = 0;
    v57 = 0;
    *&v121 = 0;
  }

  *&v120 = v56;
  *(&v120 + 1) = v55;
  *(&v121 + 1) = v58;
  v122 = v57;

  CKRecordKeyValueSetting.subscript.setter();
  v59 = v42[9];
  if (v59)
  {
    v60 = v42[8];
    v61 = &protocol witness table for String;
    v62 = &type metadata for String;
  }

  else
  {
    v60 = 0;
    v62 = 0;
    v61 = 0;
    *&v121 = 0;
  }

  *&v120 = v60;
  *(&v120 + 1) = v59;
  *(&v121 + 1) = v62;
  v122 = v61;

  CKRecordKeyValueSetting.subscript.setter();
  v63 = v42[11];
  if (v63)
  {
    v64 = v42[10];
    v65 = &protocol witness table for String;
    v66 = &type metadata for String;
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v65 = 0;
    *&v121 = 0;
  }

  *&v120 = v64;
  *(&v120 + 1) = v63;
  *(&v121 + 1) = v66;
  v122 = v65;

  CKRecordKeyValueSetting.subscript.setter();
  v67 = v31[8];
  v68 = v110;
  sub_100005F04(v119 + v67, v110, &qword_1005AE5C0, &unk_1004D06D0);
  v69 = type metadata accessor for Fence.Schedule();
  v70 = *(v69 - 8);
  v71 = *(v70 + 48);
  if (v71(v68, 1, v69) == 1)
  {
    sub_100002CE0(v68, &qword_1005AE5C0, &unk_1004D06D0);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    *(&v120 + 1) = 0;
    *&v121 = 0;
  }

  else
  {
    v75 = v116;
    Fence.Schedule.start.getter();
    (*(v70 + 8))(v68, v69);
    v72 = Fence.TimeOfDay.hour.getter();
    (*(v117 + 8))(v75, v118);
    v74 = &protocol witness table for UInt;
    v73 = &type metadata for UInt;
  }

  *&v120 = v72;
  *(&v121 + 1) = v73;
  v122 = v74;
  CKRecordKeyValueSetting.subscript.setter();
  v76 = v111;
  sub_100005F04(v119 + v67, v111, &qword_1005AE5C0, &unk_1004D06D0);
  if (v71(v76, 1, v69) == 1)
  {
    sub_100002CE0(v76, &qword_1005AE5C0, &unk_1004D06D0);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    *(&v120 + 1) = 0;
    *&v121 = 0;
  }

  else
  {
    v80 = v116;
    Fence.Schedule.start.getter();
    (*(v70 + 8))(v76, v69);
    v77 = Fence.TimeOfDay.minute.getter();
    (*(v117 + 8))(v80, v118);
    v79 = &protocol witness table for UInt;
    v78 = &type metadata for UInt;
  }

  *&v120 = v77;
  *(&v121 + 1) = v78;
  v122 = v79;
  CKRecordKeyValueSetting.subscript.setter();
  v81 = v112;
  sub_100005F04(v119 + v67, v112, &qword_1005AE5C0, &unk_1004D06D0);
  if (v71(v81, 1, v69) == 1)
  {
    sub_100002CE0(v81, &qword_1005AE5C0, &unk_1004D06D0);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    *(&v120 + 1) = 0;
    *&v121 = 0;
  }

  else
  {
    v85 = v116;
    Fence.Schedule.end.getter();
    (*(v70 + 8))(v81, v69);
    v82 = Fence.TimeOfDay.hour.getter();
    (*(v117 + 8))(v85, v118);
    v84 = &protocol witness table for UInt;
    v83 = &type metadata for UInt;
  }

  *&v120 = v82;
  *(&v121 + 1) = v83;
  v122 = v84;
  CKRecordKeyValueSetting.subscript.setter();
  v86 = v113;
  sub_100005F04(v119 + v67, v113, &qword_1005AE5C0, &unk_1004D06D0);
  if (v71(v86, 1, v69) == 1)
  {
    sub_100002CE0(v86, &qword_1005AE5C0, &unk_1004D06D0);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    *(&v120 + 1) = 0;
    *&v121 = 0;
  }

  else
  {
    v90 = v116;
    Fence.Schedule.end.getter();
    (*(v70 + 8))(v86, v69);
    v87 = Fence.TimeOfDay.minute.getter();
    (*(v117 + 8))(v90, v118);
    v89 = &protocol witness table for UInt;
    v88 = &type metadata for UInt;
  }

  *&v120 = v87;
  *(&v121 + 1) = v88;
  v122 = v89;
  CKRecordKeyValueSetting.subscript.setter();
  v91 = v114;
  sub_100005F04(v119 + v67, v114, &qword_1005AE5C0, &unk_1004D06D0);
  if (v71(v91, 1, v69) == 1)
  {
    sub_100002CE0(v91, &qword_1005AE5C0, &unk_1004D06D0);
    v92 = 0;
    v93 = 0;
    *&v121 = 0;
    v120 = 0uLL;
  }

  else
  {
    v94 = v104;
    Fence.Schedule.daysOfWeek.getter();
    (*(v70 + 8))(v91, v69);
    v95 = Fence.DaysOfWeek.rawValue.getter();
    (*(v105 + 8))(v94, v106);
    LOBYTE(v120) = v95;
    v93 = &protocol witness table for UInt8;
    v92 = &type metadata for UInt8;
  }

  v96 = v115;
  *(&v121 + 1) = v92;
  v122 = v93;
  CKRecordKeyValueSetting.subscript.setter();
  sub_100005F04(v119 + v67, v96, &qword_1005AE5C0, &unk_1004D06D0);
  if (v71(v96, 1, v69) == 1)
  {
    sub_100002CE0(v96, &qword_1005AE5C0, &unk_1004D06D0);
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    *&v121 = 0;
  }

  else
  {
    v101 = v107;
    Fence.Schedule.timeZone.getter();
    (*(v70 + 8))(v96, v69);
    v97 = TimeZone.identifier.getter();
    v98 = v102;
    (*(v108 + 8))(v101, v109);
    v100 = &protocol witness table for String;
    v99 = &type metadata for String;
  }

  *&v120 = v97;
  *(&v120 + 1) = v98;
  *(&v121 + 1) = v99;
  v122 = v100;
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

unint64_t sub_1001A02B8(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
    case 10:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x72616D6563616C70;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x656C756465686373;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001A0484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v288 = a2;
  v290 = a1;
  v275 = type metadata accessor for TimeZone();
  v274 = *(v275 - 8);
  v4 = *(v274 + 64);
  __chkstk_darwin(v275);
  v273 = &v250 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for Fence.DaysOfWeek();
  v280 = *(v276 - 8);
  v6 = *(v280 + 64);
  __chkstk_darwin(v276);
  v256 = &v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_10004B564(&qword_1005AE710, &qword_1004CF050);
  v8 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v279 = &v250 - v9;
  v10 = sub_10004B564(&qword_1005AE718, &qword_1004CF058);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v270 = &v250 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v277 = &v250 - v15;
  __chkstk_darwin(v14);
  v278 = &v250 - v16;
  v17 = type metadata accessor for Fence.TimeOfDay();
  v285 = *(v17 - 8);
  v286 = v17;
  v18 = *(v285 + 64);
  __chkstk_darwin(v17);
  v284 = &v250 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v257 = &v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v272 = &v250 - v25;
  v26 = __chkstk_darwin(v24);
  v271 = &v250 - v27;
  v28 = __chkstk_darwin(v26);
  v258 = &v250 - v29;
  v30 = __chkstk_darwin(v28);
  v268 = &v250 - v31;
  v32 = __chkstk_darwin(v30);
  v267 = &v250 - v33;
  v34 = __chkstk_darwin(v32);
  v255 = &v250 - v35;
  v36 = __chkstk_darwin(v34);
  v266 = &v250 - v37;
  v38 = __chkstk_darwin(v36);
  v265 = &v250 - v39;
  v40 = __chkstk_darwin(v38);
  v254 = &v250 - v41;
  v42 = __chkstk_darwin(v40);
  v264 = &v250 - v43;
  v44 = __chkstk_darwin(v42);
  v263 = &v250 - v45;
  v46 = __chkstk_darwin(v44);
  v253 = &v250 - v47;
  v48 = __chkstk_darwin(v46);
  v262 = &v250 - v49;
  v50 = __chkstk_darwin(v48);
  v261 = &v250 - v51;
  v52 = __chkstk_darwin(v50);
  v252 = &v250 - v53;
  v54 = __chkstk_darwin(v52);
  v260 = &v250 - v55;
  __chkstk_darwin(v54);
  v259 = &v250 - v56;
  v57 = type metadata accessor for Date();
  v291 = *(v57 - 8);
  v58 = *(v291 + 64);
  __chkstk_darwin(v57);
  v250 = &v250 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v283 = &v250 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v251 = &v250 - v64;
  v65 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v66 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v68 = &v250 - v67;
  v69 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v70 = *(*(v69 - 8) + 64);
  v71 = __chkstk_darwin(v69 - 8);
  v73 = &v250 - v72;
  v74 = *(a3 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v71);
  v77 = &v250 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FenceRecord();
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  __chkstk_darwin(v78);
  v82 = &v250 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v74 + 16))(v77, v288, a3);
  v83 = swift_dynamicCast();
  v84 = *(v79 + 56);
  if (v83)
  {
    v84(v73, 0, 1, v78);
    sub_1001A5858(v73, v82, type metadata accessor for FenceRecord);
    v281 = [*v290 encryptedValues];
    ObjectType = swift_getObjectType();
    v85 = *(v78 + 20);
    v86 = (v289 + v85);
    v87 = *(v289 + v85);
    v88 = *(v289 + v85 + 8);
    v89 = &v82[v85];
    v91 = *v89;
    v90 = *(v89 + 1);
    if (*v86 != *v89 || v88 != v90)
    {
      v92 = *v89;
      v93 = *(v89 + 1);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *(&v293 + 1) = &type metadata for String;
        v294 = &protocol witness table for String;
        *&v292 = v91;
        *(&v292 + 1) = v90;

        CKRecordKeyValueSetting.subscript.setter();
      }
    }

    v290 = v78;
    v94 = *(v78 + 24);
    v95 = *(v289 + v94);
    v287 = v82;
    v96 = *&v82[v94];
    sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
    v97 = v95;
    v98 = v96;
    v99 = static NSObject.== infix(_:_:)();

    v100 = v281;
    if ((v99 & 1) == 0)
    {
      v101 = String._bridgeToObjectiveC()();
      [v100 setObject:v98 forKeyedSubscript:v101];
    }

    v102 = v290;
    v103 = *(v290 + 28);
    v104 = *(v289 + v103);
    v105 = *&v287[v103];
    if (v104 != v105)
    {
      *(&v293 + 1) = &type metadata for Int;
      v294 = &protocol witness table for Int;
      *&v292 = v105;
      CKRecordKeyValueSetting.subscript.setter();
    }

    v106 = *(v102 + 36);
    v107 = *(v65 + 48);
    sub_100005F04(v289 + v106, v68, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(&v287[v106], &v68[v107], &unk_1005AE5B0, &qword_1004C32F0);
    v108 = *(v291 + 48);
    if (v108(v68, 1, v57) == 1)
    {
      if (v108(&v68[v107], 1, v57) == 1)
      {
        sub_100002CE0(v68, &unk_1005AE5B0, &qword_1004C32F0);
        goto LABEL_20;
      }
    }

    else
    {
      v109 = v251;
      sub_100005F04(v68, v251, &unk_1005AE5B0, &qword_1004C32F0);
      if (v108(&v68[v107], 1, v57) != 1)
      {
        v121 = v291;
        v122 = v250;
        (*(v291 + 32))(v250, &v68[v107], v57);
        sub_1001A5810(&qword_1005AE5D0, &type metadata accessor for Date);
        v123 = dispatch thunk of static Equatable.== infix(_:_:)();
        v124 = *(v121 + 8);
        v124(v122, v57);
        v124(v109, v57);
        v102 = v290;
        sub_100002CE0(v68, &unk_1005AE5B0, &qword_1004C32F0);
        if (v123)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      (*(v291 + 8))(v109, v57);
    }

    sub_100002CE0(v68, &qword_1005AAE00, &qword_1004C4A18);
LABEL_16:
    v110 = v283;
    sub_100005F04(&v287[v106], v283, &unk_1005AE5B0, &qword_1004C32F0);
    if (v108(v110, 1, v57) == 1)
    {
      sub_100002CE0(v110, &unk_1005AE5B0, &qword_1004C32F0);
      v292 = 0u;
      v293 = 0u;
      v294 = 0;
    }

    else
    {
      *(&v293 + 1) = v57;
      v294 = &protocol witness table for Date;
      v111 = sub_10000331C(&v292);
      (*(v291 + 32))(v111, v110, v57);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_20:
    v112 = *(v102 + 40);
    v113 = (v289 + v112);
    v114 = *(v289 + v112 + 8);
    v115 = v287;
    v116 = &v287[v112];
    v118 = *&v287[v112];
    v117 = *&v287[v112 + 8];
    if (v114)
    {
      if (!v117)
      {
        v294 = 0;
        v292 = 0u;
        v293 = 0u;
        goto LABEL_31;
      }

      if (*v113 == v118 && v114 == v117 || (v119 = *&v287[v112], v120 = *&v287[v112 + 8], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_32:
        v125 = v113[3];
        v127 = *(v116 + 2);
        v126 = *(v116 + 3);
        if (v125)
        {
          if (!v126)
          {
            v294 = 0;
            v292 = 0u;
            v293 = 0u;
            goto LABEL_41;
          }

          if (v113[2] == v127 && v125 == v126 || (v128 = *(v116 + 2), v129 = *(v116 + 3), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
LABEL_42:
            v130 = v113[5];
            v132 = *(v116 + 4);
            v131 = *(v116 + 5);
            if (v130)
            {
              if (!v131)
              {
                v294 = 0;
                v292 = 0u;
                v293 = 0u;
                goto LABEL_51;
              }

              if (v113[4] == v132 && v130 == v131 || (v133 = *(v116 + 4), v134 = *(v116 + 5), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
LABEL_52:
                v135 = v113[7];
                v137 = *(v116 + 6);
                v136 = *(v116 + 7);
                if (v135)
                {
                  if (!v136)
                  {
                    v294 = 0;
                    v292 = 0u;
                    v293 = 0u;
                    goto LABEL_61;
                  }

                  if (v113[6] == v137 && v135 == v136 || (v138 = *(v116 + 6), v139 = *(v116 + 7), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
LABEL_62:
                    v140 = v113[9];
                    v142 = *(v116 + 8);
                    v141 = *(v116 + 9);
                    if (v140)
                    {
                      if (!v141)
                      {
                        v294 = 0;
                        v292 = 0u;
                        v293 = 0u;
                        goto LABEL_71;
                      }

                      if (v113[8] == v142 && v140 == v141 || (v143 = *(v116 + 8), v144 = *(v116 + 9), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                      {
LABEL_72:
                        v145 = v113[11];
                        v147 = *(v116 + 10);
                        v146 = *(v116 + 11);
                        if (v145)
                        {
                          v148 = v289;
                          if (!v146)
                          {
                            v294 = 0;
                            v292 = 0u;
                            v293 = 0u;
                            v149 = v290;
                            goto LABEL_81;
                          }

                          v149 = v290;
                          if (v113[10] == v147 && v145 == v146 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {
LABEL_82:
                            v283 = *(v149 + 32);
                            v150 = v259;
                            sub_100005F04(v148 + v283, v259, &qword_1005AE5C0, &unk_1004D06D0);
                            v151 = type metadata accessor for Fence.Schedule();
                            v152 = *(v151 - 8);
                            v153 = v152 + 48;
                            v291 = *(v152 + 48);
                            v154 = (v291)(v150, 1, v151);
                            v288 = v152;
                            if (v154 == 1)
                            {
                              sub_100002CE0(v150, &qword_1005AE5C0, &unk_1004D06D0);
                              v156 = 0;
                            }

                            else
                            {
                              v155 = v284;
                              Fence.Schedule.start.getter();
                              (*(v152 + 8))(v150, v151);
                              v156 = Fence.TimeOfDay.hour.getter();
                              (*(v285 + 8))(v155, v286);
                            }

                            v157 = v260;
                            v290 = *(v290 + 32);
                            sub_100005F04(&v115[v290], v260, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v157, 1, v151) == 1)
                            {
                              sub_100002CE0(v157, &qword_1005AE5C0, &unk_1004D06D0);
                              v158 = v288;
                              if (v154 == 1)
                              {
                                goto LABEL_94;
                              }
                            }

                            else
                            {
                              v159 = v284;
                              Fence.Schedule.start.getter();
                              v158 = v288;
                              (*(v288 + 8))(v157, v151);
                              v160 = Fence.TimeOfDay.hour.getter();
                              (*(v285 + 8))(v159, v286);
                              if (v154 != 1 && v156 == v160)
                              {
                                goto LABEL_94;
                              }
                            }

                            v161 = v252;
                            sub_100005F04(&v115[v290], v252, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v161, 1, v151) == 1)
                            {
                              sub_100002CE0(v161, &qword_1005AE5C0, &unk_1004D06D0);
                              v162 = 0;
                              v163 = 0;
                              v164 = 0;
                              *(&v292 + 1) = 0;
                              *&v293 = 0;
                            }

                            else
                            {
                              v165 = v284;
                              Fence.Schedule.start.getter();
                              (*(v158 + 8))(v161, v151);
                              v162 = Fence.TimeOfDay.hour.getter();
                              (*(v285 + 8))(v165, v286);
                              v164 = &protocol witness table for UInt;
                              v163 = &type metadata for UInt;
                            }

                            *&v292 = v162;
                            *(&v293 + 1) = v163;
                            v294 = v164;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_94:
                            v166 = v289;
                            v167 = v261;
                            sub_100005F04(v289 + v283, v261, &qword_1005AE5C0, &unk_1004D06D0);
                            v168 = (v291)(v167, 1, v151);
                            if (v168 == 1)
                            {
                              sub_100002CE0(v167, &qword_1005AE5C0, &unk_1004D06D0);
                              v171 = 0;
                            }

                            else
                            {
                              v169 = v158;
                              v170 = v284;
                              Fence.Schedule.start.getter();
                              (*(v169 + 8))(v167, v151);
                              v171 = Fence.TimeOfDay.minute.getter();
                              (*(v285 + 8))(v170, v286);
                            }

                            v172 = v262;
                            sub_100005F04(&v115[v290], v262, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v172, 1, v151) == 1)
                            {
                              sub_100002CE0(v172, &qword_1005AE5C0, &unk_1004D06D0);
                              if (v168 == 1)
                              {
                                goto LABEL_106;
                              }
                            }

                            else
                            {
                              v173 = v284;
                              Fence.Schedule.start.getter();
                              (*(v288 + 8))(v172, v151);
                              v174 = Fence.TimeOfDay.minute.getter();
                              (*(v285 + 8))(v173, v286);
                              if (v168 != 1 && v171 == v174)
                              {
                                goto LABEL_106;
                              }
                            }

                            v175 = v253;
                            sub_100005F04(&v115[v290], v253, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v175, 1, v151) == 1)
                            {
                              sub_100002CE0(v175, &qword_1005AE5C0, &unk_1004D06D0);
                              v176 = 0;
                              v177 = 0;
                              v178 = 0;
                              *(&v292 + 1) = 0;
                              *&v293 = 0;
                            }

                            else
                            {
                              v179 = v284;
                              Fence.Schedule.start.getter();
                              (*(v288 + 8))(v175, v151);
                              v176 = Fence.TimeOfDay.minute.getter();
                              (*(v285 + 8))(v179, v286);
                              v178 = &protocol witness table for UInt;
                              v177 = &type metadata for UInt;
                            }

                            *&v292 = v176;
                            *(&v293 + 1) = v177;
                            v294 = v178;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_106:
                            v180 = v263;
                            sub_100005F04(v166 + v283, v263, &qword_1005AE5C0, &unk_1004D06D0);
                            v181 = (v291)(v180, 1, v151);
                            if (v181 == 1)
                            {
                              sub_100002CE0(v180, &qword_1005AE5C0, &unk_1004D06D0);
                              v183 = 0;
                            }

                            else
                            {
                              v182 = v284;
                              Fence.Schedule.end.getter();
                              (*(v288 + 8))(v180, v151);
                              v183 = Fence.TimeOfDay.hour.getter();
                              (*(v285 + 8))(v182, v286);
                            }

                            v184 = v264;
                            sub_100005F04(&v115[v290], v264, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v184, 1, v151) == 1)
                            {
                              sub_100002CE0(v184, &qword_1005AE5C0, &unk_1004D06D0);
                              if (v181 == 1)
                              {
                                goto LABEL_118;
                              }
                            }

                            else
                            {
                              v185 = v284;
                              Fence.Schedule.end.getter();
                              (*(v288 + 8))(v184, v151);
                              v186 = Fence.TimeOfDay.hour.getter();
                              (*(v285 + 8))(v185, v286);
                              if (v181 != 1 && v183 == v186)
                              {
                                goto LABEL_118;
                              }
                            }

                            v187 = v254;
                            sub_100005F04(&v115[v290], v254, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v187, 1, v151) == 1)
                            {
                              sub_100002CE0(v187, &qword_1005AE5C0, &unk_1004D06D0);
                              v188 = 0;
                              v189 = 0;
                              v190 = 0;
                              *(&v292 + 1) = 0;
                              *&v293 = 0;
                            }

                            else
                            {
                              v191 = v284;
                              Fence.Schedule.end.getter();
                              (*(v288 + 8))(v187, v151);
                              v188 = Fence.TimeOfDay.hour.getter();
                              (*(v285 + 8))(v191, v286);
                              v190 = &protocol witness table for UInt;
                              v189 = &type metadata for UInt;
                            }

                            *&v292 = v188;
                            *(&v293 + 1) = v189;
                            v294 = v190;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_118:
                            v192 = v265;
                            sub_100005F04(v166 + v283, v265, &qword_1005AE5C0, &unk_1004D06D0);
                            v193 = (v291)(v192, 1, v151);
                            if (v193 == 1)
                            {
                              sub_100002CE0(v192, &qword_1005AE5C0, &unk_1004D06D0);
                              v195 = 0;
                            }

                            else
                            {
                              v194 = v284;
                              Fence.Schedule.end.getter();
                              (*(v288 + 8))(v192, v151);
                              v195 = Fence.TimeOfDay.minute.getter();
                              (*(v285 + 8))(v194, v286);
                            }

                            v196 = v266;
                            sub_100005F04(&v115[v290], v266, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v196, 1, v151) == 1)
                            {
                              sub_100002CE0(v196, &qword_1005AE5C0, &unk_1004D06D0);
                              v197 = v193 == 1;
                              v198 = v267;
                              v199 = v277;
                              if (v197)
                              {
                                goto LABEL_131;
                              }
                            }

                            else
                            {
                              v200 = v284;
                              Fence.Schedule.end.getter();
                              (*(v288 + 8))(v196, v151);
                              v201 = Fence.TimeOfDay.minute.getter();
                              (*(v285 + 8))(v200, v286);
                              v197 = v193 == 1;
                              v198 = v267;
                              v199 = v277;
                              if (!v197 && v195 == v201)
                              {
                                goto LABEL_131;
                              }
                            }

                            v202 = v255;
                            sub_100005F04(&v115[v290], v255, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v202, 1, v151) == 1)
                            {
                              sub_100002CE0(v202, &qword_1005AE5C0, &unk_1004D06D0);
                              v203 = 0;
                              v204 = 0;
                              v205 = 0;
                              *(&v292 + 1) = 0;
                              *&v293 = 0;
                            }

                            else
                            {
                              v206 = v284;
                              Fence.Schedule.end.getter();
                              (*(v288 + 8))(v202, v151);
                              v203 = Fence.TimeOfDay.minute.getter();
                              (*(v285 + 8))(v206, v286);
                              v205 = &protocol witness table for UInt;
                              v204 = &type metadata for UInt;
                            }

                            *&v292 = v203;
                            *(&v293 + 1) = v204;
                            v294 = v205;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_131:
                            sub_100005F04(v166 + v283, v198, &qword_1005AE5C0, &unk_1004D06D0);
                            v286 = v153;
                            if ((v291)(v198, 1, v151) == 1)
                            {
                              sub_100002CE0(v198, &qword_1005AE5C0, &unk_1004D06D0);
                              v207 = 1;
                              v208 = v276;
                              v209 = v270;
                              v210 = v278;
                            }

                            else
                            {
                              v210 = v278;
                              Fence.Schedule.daysOfWeek.getter();
                              (*(v288 + 8))(v198, v151);
                              v207 = 0;
                              v208 = v276;
                              v209 = v270;
                            }

                            v211 = *(v280 + 56);
                            v211(v210, v207, 1, v208);
                            v212 = v268;
                            sub_100005F04(&v115[v290], v268, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v212, 1, v151) == 1)
                            {
                              sub_100002CE0(v212, &qword_1005AE5C0, &unk_1004D06D0);
                              v213 = 1;
                            }

                            else
                            {
                              Fence.Schedule.daysOfWeek.getter();
                              (*(v288 + 8))(v212, v151);
                              v213 = 0;
                            }

                            v214 = v279;
                            v211(v199, v213, 1, v208);
                            v215 = *(v269 + 48);
                            sub_100005F04(v210, v214, &qword_1005AE718, &qword_1004CF058);
                            sub_100005F04(v199, v214 + v215, &qword_1005AE718, &qword_1004CF058);
                            v216 = v208;
                            v217 = *(v280 + 48);
                            if (v217(v214, 1, v208) == 1)
                            {
                              sub_100002CE0(v199, &qword_1005AE718, &qword_1004CF058);
                              v214 = v279;
                              sub_100002CE0(v210, &qword_1005AE718, &qword_1004CF058);
                              v218 = v217(v214 + v215, 1, v208);
                              v219 = v288;
                              if (v218 == 1)
                              {
                                sub_100002CE0(v214, &qword_1005AE718, &qword_1004CF058);
                                v220 = v289;
                                goto LABEL_147;
                              }
                            }

                            else
                            {
                              sub_100005F04(v214, v209, &qword_1005AE718, &qword_1004CF058);
                              v221 = v217(v214 + v215, 1, v208);
                              v219 = v288;
                              if (v221 != 1)
                              {
                                v238 = v280;
                                v239 = v256;
                                (*(v280 + 32))(v256, v214 + v215, v216);
                                sub_1001A5810(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek);
                                LODWORD(v285) = dispatch thunk of static Equatable.== infix(_:_:)();
                                v240 = *(v238 + 8);
                                v240(v239, v216);
                                sub_100002CE0(v277, &qword_1005AE718, &qword_1004CF058);
                                sub_100002CE0(v278, &qword_1005AE718, &qword_1004CF058);
                                v240(v209, v216);
                                sub_100002CE0(v214, &qword_1005AE718, &qword_1004CF058);
                                v220 = v289;
                                if (v285)
                                {
                                  goto LABEL_147;
                                }

                                goto LABEL_143;
                              }

                              sub_100002CE0(v277, &qword_1005AE718, &qword_1004CF058);
                              sub_100002CE0(v278, &qword_1005AE718, &qword_1004CF058);
                              (*(v280 + 8))(v209, v208);
                            }

                            sub_100002CE0(v214, &qword_1005AE710, &qword_1004CF050);
                            v220 = v289;
LABEL_143:
                            v222 = v258;
                            sub_100005F04(&v287[v290], v258, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v222, 1, v151) == 1)
                            {
                              sub_100002CE0(v222, &qword_1005AE5C0, &unk_1004D06D0);
                              v223 = 0;
                              v224 = 0;
                              *&v293 = 0;
                              v292 = 0uLL;
                            }

                            else
                            {
                              v225 = v256;
                              Fence.Schedule.daysOfWeek.getter();
                              (*(v219 + 8))(v222, v151);
                              v226 = Fence.DaysOfWeek.rawValue.getter();
                              (*(v280 + 8))(v225, v276);
                              LOBYTE(v292) = v226;
                              v224 = &protocol witness table for UInt8;
                              v223 = &type metadata for UInt8;
                            }

                            *(&v293 + 1) = v223;
                            v294 = v224;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_147:
                            v227 = v271;
                            sub_100005F04(v220 + v283, v271, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v227, 1, v151) == 1)
                            {
                              sub_100002CE0(v227, &qword_1005AE5C0, &unk_1004D06D0);
                              v228 = 0;
                              v229 = 0;
                            }

                            else
                            {
                              v230 = v273;
                              Fence.Schedule.timeZone.getter();
                              (*(v219 + 8))(v227, v151);
                              v228 = TimeZone.identifier.getter();
                              v229 = v231;
                              (*(v274 + 8))(v230, v275);
                            }

                            v232 = v272;
                            v233 = v287;
                            sub_100005F04(&v287[v290], v272, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v232, 1, v151) == 1)
                            {
                              sub_100002CE0(v232, &qword_1005AE5C0, &unk_1004D06D0);
                              if (!v229)
                              {
                                goto LABEL_167;
                              }

                              goto LABEL_162;
                            }

                            v234 = v273;
                            Fence.Schedule.timeZone.getter();
                            (*(v219 + 8))(v232, v151);
                            v235 = TimeZone.identifier.getter();
                            v237 = v236;
                            (*(v274 + 8))(v234, v275);
                            if (v229)
                            {
                              if (v237)
                              {
                                if (v228 == v235 && v229 == v237)
                                {
                                  swift_unknownObjectRelease();

                                  return sub_1001A58C0(v233, type metadata accessor for FenceRecord);
                                }

                                v249 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v249 & 1) == 0)
                                {
                                  goto LABEL_163;
                                }

LABEL_167:
                                swift_unknownObjectRelease();
                                return sub_1001A58C0(v233, type metadata accessor for FenceRecord);
                              }
                            }

                            else if (!v237)
                            {
                              goto LABEL_167;
                            }

LABEL_162:

LABEL_163:
                            v241 = v257;
                            sub_100005F04(v233 + v290, v257, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v291)(v241, 1, v151) == 1)
                            {
                              sub_100002CE0(v241, &qword_1005AE5C0, &unk_1004D06D0);
                              v242 = 0;
                              v243 = 0;
                              v244 = 0;
                              v245 = 0;
                              *&v293 = 0;
                            }

                            else
                            {
                              v246 = v273;
                              Fence.Schedule.timeZone.getter();
                              (*(v219 + 8))(v241, v151);
                              v242 = TimeZone.identifier.getter();
                              v243 = v247;
                              (*(v274 + 8))(v246, v275);
                              v245 = &protocol witness table for String;
                              v244 = &type metadata for String;
                            }

                            *&v292 = v242;
                            *(&v292 + 1) = v243;
                            *(&v293 + 1) = v244;
                            v294 = v245;
                            CKRecordKeyValueSetting.subscript.setter();
                            goto LABEL_167;
                          }
                        }

                        else
                        {
                          v148 = v289;
                          v149 = v290;
                          if (!v146)
                          {
                            goto LABEL_82;
                          }
                        }

                        *(&v293 + 1) = &type metadata for String;
                        v294 = &protocol witness table for String;
                        *&v292 = v147;
                        *(&v292 + 1) = v146;
LABEL_81:

                        CKRecordKeyValueSetting.subscript.setter();
                        goto LABEL_82;
                      }
                    }

                    else if (!v141)
                    {
                      goto LABEL_72;
                    }

                    *(&v293 + 1) = &type metadata for String;
                    v294 = &protocol witness table for String;
                    *&v292 = v142;
                    *(&v292 + 1) = v141;
LABEL_71:

                    CKRecordKeyValueSetting.subscript.setter();
                    goto LABEL_72;
                  }
                }

                else if (!v136)
                {
                  goto LABEL_62;
                }

                *(&v293 + 1) = &type metadata for String;
                v294 = &protocol witness table for String;
                *&v292 = v137;
                *(&v292 + 1) = v136;
LABEL_61:

                CKRecordKeyValueSetting.subscript.setter();
                goto LABEL_62;
              }
            }

            else if (!v131)
            {
              goto LABEL_52;
            }

            *(&v293 + 1) = &type metadata for String;
            v294 = &protocol witness table for String;
            *&v292 = v132;
            *(&v292 + 1) = v131;
LABEL_51:

            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_52;
          }
        }

        else if (!v126)
        {
          goto LABEL_42;
        }

        *(&v293 + 1) = &type metadata for String;
        v294 = &protocol witness table for String;
        *&v292 = v127;
        *(&v292 + 1) = v126;
LABEL_41:

        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_42;
      }
    }

    else if (!v117)
    {
      goto LABEL_32;
    }

    *(&v293 + 1) = &type metadata for String;
    v294 = &protocol witness table for String;
    *&v292 = v118;
    *(&v292 + 1) = v117;
LABEL_31:

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_32;
  }

  v84(v73, 1, 1, v78);
  sub_100002CE0(v73, &qword_1005AE720, &qword_1004CA2F0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CKRecordZoneID sub_1001A2968()
{
  sub_1000545A4(0, &qword_1005AE728, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1._object = v2;
  v3._countAndFlagsBits = 0x2D65636E6546;
  v3._object = 0xE600000000000000;
  return CKRecordZoneID.init(zoneName:ownerName:)(v3, v1);
}

uint64_t sub_1001A2A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to CloudBacked.creationDate(store:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003690;

  return CloudBacked.creationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_1001A2ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to CloudBacked.modificationDate(store:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000368C;

  return CloudBacked.modificationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_1001A2B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CloudBacked.recordChangeTag(store:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1001A2C40;

  return CloudBacked.recordChangeTag(store:)(a1, a2, a3);
}

uint64_t sub_1001A2C40(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

void sub_1001A2D68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v132 = &v118 - v6;
  v7 = sub_10004B564(&unk_1005AE5E0, &qword_1004CEF40);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v135 = &v118 - v12;
  v13 = type metadata accessor for Fence.DaysOfWeek();
  v133 = *(v13 - 8);
  v134 = v13;
  v14 = *(v133 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v118 - v18;
  v19 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v118 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v137 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x65636E6546 && v27 == 0xE500000000000000)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      sub_1001A54BC();
      swift_allocError();
      *v56 = 0;
      goto LABEL_23;
    }
  }

  v130 = a2;
  v29 = [a1 recordID];
  v30 = [v29 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100002CE0(v22, &qword_1005A96E0, &qword_1004C2A80);
    sub_1001A54BC();
    swift_allocError();
    *v31 = 1;
LABEL_23:
    swift_willThrow();

    return;
  }

  (*(v24 + 32))(v137, v22, v23);
  v32 = [a1 encryptedValues];
  swift_getObjectType();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 objectForKeyedSubscript:v33];

  if (!v34 || (v140 = v34, v129 = sub_10004B564(&qword_1005AEC00, &qword_1004CEF48), (swift_dynamicCast() & 1) == 0))
  {
    sub_1001A54BC();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v24 + 8))(v137, v23);
    return;
  }

  v127 = v138;
  v128 = v24;
  v35 = v32;
  v36 = v139;
  v37 = String._bridgeToObjectiveC()();
  v38 = v35;
  v39 = [v35 objectForKeyedSubscript:v37];

  if (!v39)
  {

LABEL_26:
    sub_1001A54BC();
    swift_allocError();
    *v57 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v128 + 8))(v137, v23);
    return;
  }

  v126 = v36;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v125 = v40;
  v41 = v38;
  v123 = sub_1001A464C(2, 0, v38);
  v124 = sub_1001A464C(10, 0, v38);
  v122 = sub_1001A464C(11, 0, v38);
  v121 = sub_1001A464C(12, 0, v38);
  v120 = sub_1001A464C(13, 0, v38);
  sub_1001A490C(14, 0, v38);
  Fence.DaysOfWeek.init(rawValue:)();
  v42 = String._bridgeToObjectiveC()();
  v43 = [v38 objectForKeyedSubscript:v42];

  if (!v43 || (v140 = v43, (swift_dynamicCast() & 1) == 0))
  {
LABEL_28:
    v58 = type metadata accessor for TimeZone();
    (*(*(v58 - 8) + 56))(v135, 1, 1, v58);
    sub_1001A5810(&unk_1005AE600, &type metadata accessor for Fence.DaysOfWeek);
    v59 = v134;
    dispatch thunk of SetAlgebra.init()();
    sub_1001A5810(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v133 + 8))(v17, v59);
    v61 = v130;
    v48 = &selRef_initWithExtensionBundleIdentifier_kind_;
    if ((v60 & 1) == 0)
    {
      if (qword_1005A8090 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_10000A6F0(v62, qword_1005DFED0);
      swift_unknownObjectRetain();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v138 = v119;
        *v65 = 136446723;
        *(v65 + 4) = sub_10000D01C(0x526B632874696E69, 0xEF293A64726F6365, &v138);
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_10000D01C(0xD000000000000011, 0x80000001004E4480, &v138);
        *(v65 + 22) = 2081;
        v66 = String._bridgeToObjectiveC()();
        v67 = [v38 objectForKeyedSubscript:v66];

        v140 = v67;
        sub_10004B564(&unk_1005AE610, &qword_1004CEF50);
        v68 = String.init<A>(describing:)();
        v70 = sub_10000D01C(v68, v69, &v138);
        v61 = v130;

        *(v65 + 24) = v70;
        v48 = &selRef_initWithExtensionBundleIdentifier_kind_;
        _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s unrecognized field %s: %{private}s", v65, 0x20u);
        swift_arrayDestroy();
      }
    }

    goto LABEL_34;
  }

  v44 = v139;
  v45 = HIBYTE(v139) & 0xF;
  if ((v139 & 0x2000000000000000) == 0)
  {
    v45 = v138 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {

    goto LABEL_28;
  }

  v119 = v138;
  TimeZone.init(identifier:)();
  v46 = type metadata accessor for TimeZone();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v11, 1, v46) == 1)
  {
    sub_100002CE0(v11, &unk_1005AE5E0, &qword_1004CEF40);
    (*(v47 + 56))(v135, 1, 1, v46);
    v48 = &selRef_initWithExtensionBundleIdentifier_kind_;
    if (qword_1005A8090 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000A6F0(v49, qword_1005DFED0);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v44;
      v53 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v53 = 136446466;
      *(v53 + 4) = sub_10000D01C(0x526B632874696E69, 0xEF293A64726F6365, &v138);
      *(v53 + 12) = 2082;
      v54 = sub_10000D01C(v119, v52, &v138);

      *(v53 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s unknown time zone: %{public}s", v53, 0x16u);
      swift_arrayDestroy();
      v48 = &selRef_initWithExtensionBundleIdentifier_kind_;
    }

    else
    {
    }

    v61 = v130;
  }

  else
  {

    v117 = v135;
    (*(v47 + 32))();
    (*(v47 + 56))(v117, 0, 1, v46);
    v61 = v130;
    v48 = &selRef_initWithExtensionBundleIdentifier_kind_;
  }

LABEL_34:
  (*(v128 + 16))(v61, v137, v23);
  v71 = type metadata accessor for FenceRecord();
  v72 = (v61 + v71[5]);
  v73 = v126;
  *v72 = v127;
  v72[1] = v73;
  *(v61 + v71[6]) = v125;
  *(v61 + v71[7]) = v123;
  v74 = __chkstk_darwin(v71);
  v75 = v121;
  v76 = v122;
  *(&v118 - 6) = v124;
  *(&v118 - 5) = v76;
  *(&v118 - 4) = v75;
  v77 = v136;
  *(&v118 - 3) = v120;
  *(&v118 - 2) = v77;
  v78 = v74;
  sub_10019F2D8(sub_1001A5510, (&v118 - 8), v79 + *(v74 + 32));
  v80 = String._bridgeToObjectiveC()();
  v81 = [v41 v48[86]];

  if (v81)
  {
    v138 = v81;
    v82 = type metadata accessor for Date();
    v83 = v132;
    v84 = swift_dynamicCast();
    (*(*(v82 - 8) + 56))(v83, v84 ^ 1u, 1, v82);
  }

  else
  {
    v85 = type metadata accessor for Date();
    v83 = v132;
    (*(*(v85 - 8) + 56))(v132, 1, 1, v85);
  }

  sub_1001A5538(v83, v130 + *(v78 + 36));
  v86 = String._bridgeToObjectiveC()();
  v87 = [v41 v48[86]];

  if (v87)
  {
    v140 = v87;
    v88 = swift_dynamicCast();
    if (v88)
    {
      v89 = v138;
    }

    else
    {
      v89 = 0;
    }

    if (v88)
    {
      v90 = v139;
    }

    else
    {
      v90 = 0;
    }

    v131 = v90;
    v132 = v89;
  }

  else
  {
    v131 = 0;
    v132 = 0;
  }

  v91 = String._bridgeToObjectiveC()();
  v92 = [v41 v48[86]];

  if (v92)
  {
    v140 = v92;
    v93 = swift_dynamicCast();
    if (v93)
    {
      v94 = v138;
    }

    else
    {
      v94 = 0;
    }

    if (v93)
    {
      v95 = v139;
    }

    else
    {
      v95 = 0;
    }

    v126 = v95;
    v127 = v94;
  }

  else
  {
    v126 = 0;
    v127 = 0;
  }

  v96 = String._bridgeToObjectiveC()();
  v97 = [v41 v48[86]];

  if (v97)
  {
    v140 = v97;
    v98 = swift_dynamicCast();
    if (v98)
    {
      v99 = v138;
    }

    else
    {
      v99 = 0;
    }

    if (v98)
    {
      v100 = v139;
    }

    else
    {
      v100 = 0;
    }

    v124 = v100;
    v125 = v99;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v101 = String._bridgeToObjectiveC()();
  v102 = [v41 v48[86]];

  if (v102)
  {
    v140 = v102;
    v103 = swift_dynamicCast();
    if (v103)
    {
      v104 = v138;
    }

    else
    {
      v104 = 0;
    }

    if (v103)
    {
      v105 = v139;
    }

    else
    {
      v105 = 0;
    }

    v122 = v105;
    v123 = v104;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v106 = String._bridgeToObjectiveC()();
  v107 = [v41 v48[86]];

  if (v107)
  {
    v140 = v107;
    v108 = swift_dynamicCast();
    if (v108)
    {
      v109 = v138;
    }

    else
    {
      v109 = 0;
    }

    if (v108)
    {
      v110 = v139;
    }

    else
    {
      v110 = 0;
    }
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v111 = String._bridgeToObjectiveC()();
  v112 = [v41 objectForKeyedSubscript:v111];
  swift_unknownObjectRelease();

  sub_100002CE0(v135, &unk_1005AE5E0, &qword_1004CEF40);
  (*(v128 + 8))(v137, v23);
  if (v112)
  {
    v140 = v112;
    v113 = swift_dynamicCast();
    v114 = v138;
    v115 = v139;
    if (!v113)
    {
      v114 = 0;
      v115 = 0;
    }
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v116 = (v130 + *(v78 + 40));
  *v116 = v132;
  v116[1] = v131;
  v116[2] = v127;
  v116[3] = v126;
  v116[4] = v125;
  v116[5] = v124;
  v116[6] = v123;
  v116[7] = v122;
  v116[8] = v109;
  v116[9] = v110;
  v116[10] = v114;
  v116[11] = v115;
  (*(v133 + 8))(v136, v134);
}

uint64_t sub_1001A3F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CloudBacked.ckRecord(store:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100054E60;

  return CloudBacked.ckRecord(store:)(a1, a2, a3);
}

uint64_t sub_1001A4010@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1001A4078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v23 = a6;
  v24 = a1;
  v27 = a5;
  v25 = a7;
  v22 = type metadata accessor for TimeZone();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v22);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Fence.DaysOfWeek();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Fence.TimeOfDay();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  result = __chkstk_darwin(v20);
  if ((a3 | a2) < 0)
  {
    __break(1u);
  }

  else
  {
    Fence.TimeOfDay.init(hour:minute:)();
    result = v26;
    if (((v27 | v26) & 0x8000000000000000) == 0)
    {
      Fence.TimeOfDay.init(hour:minute:)();
      (*(v14 + 16))(v17, v23, v13);
      (*(v9 + 16))(v12, v24, v22);
      return Fence.Schedule.init(start:end:daysOfWeek:timeZone:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A464C(char a1, uint64_t a2, void *a3)
{
  sub_1001A02B8(a1);
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 objectForKeyedSubscript:v6];

  v23 = v7;
  swift_unknownObjectRetain();
  sub_10004B564(&unk_1005AE610, &qword_1004CEF50);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v22[0];
  }

  else if (v7)
  {
    if (qword_1005A8090 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFED0);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v21 = v10;
      v11 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v11 = 136446723;
      *(v11 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E4560, v22);
      *(v11 + 12) = 2082;
      v12 = sub_1001A02B8(a1);
      v14 = sub_10000D01C(v12, v13, v22);

      *(v11 + 14) = v14;
      *(v11 + 22) = 2081;
      sub_1001A02B8(a1);
      v15 = String._bridgeToObjectiveC()();

      v16 = [a3 objectForKeyedSubscript:v15];

      v23 = v16;
      v17 = String.init<A>(describing:)();
      v19 = sub_10000D01C(v17, v18, v22);

      *(v11 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v9, v21, "%{public}s unrecognized field %{public}s: %{private}s", v11, 0x20u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_1001A490C(char a1, uint64_t a2, void *a3)
{
  sub_1001A02B8(a1);
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 objectForKeyedSubscript:v6];

  v22 = v7;
  swift_unknownObjectRetain();
  sub_10004B564(&unk_1005AE610, &qword_1004CEF50);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v21;
  }

  else if (v7)
  {
    if (qword_1005A8090 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFED0);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v20 = v10;
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v11 = 136446723;
      *(v11 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E4560, &v22);
      *(v11 + 12) = 2082;
      v12 = sub_1001A02B8(a1);
      v14 = sub_10000D01C(v12, v13, &v22);

      *(v11 + 14) = v14;
      *(v11 + 22) = 2081;
      sub_1001A02B8(a1);
      v15 = String._bridgeToObjectiveC()();

      [a3 objectForKeyedSubscript:v15];

      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, &v22);

      *(v11 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v9, v20, "%{public}s unrecognized field %{public}s: %{private}s", v11, 0x20u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_1001A4BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v89[-v11];
  v99 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v13 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v15 = &v89[-v14];
  v102 = type metadata accessor for Fence.Schedule();
  v101 = *(v102 - 8);
  v16 = *(v101 + 64);
  __chkstk_darwin(v102);
  v98 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v89[-v20];
  v22 = sub_10004B564(&qword_1005AE5C8, &qword_1004CEF38);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v89[-v24];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v100 = type metadata accessor for FenceRecord();
  v26 = v100[5];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v94 = v12;
  v95 = v15;
  v91 = v8;
  v93 = v5;
  v92 = v4;
  v30 = v100;
  v31 = v100[6];
  v96 = a1;
  v32 = *(a1 + v31);
  [v32 coordinate];
  *&v97 = v33;
  [v32 coordinate];
  v35 = v34;
  [v32 altitude];
  v37 = v36;
  [v32 horizontalAccuracy];
  v39 = v38;
  [v32 verticalAccuracy];
  v41 = v40;
  v42 = *(a2 + v30[6]);
  [v42 coordinate];
  v44 = v43;
  [v42 coordinate];
  v46 = v45;
  [v42 altitude];
  v48 = v47;
  [v42 horizontalAccuracy];
  v50 = v49;
  [v42 verticalAccuracy];
  v52 = 0;
  if (*&v97 == v44 && v35 == v46 && v37 == v48 && v39 == v50 && v41 == v51)
  {
    v53 = v100;
    v54 = v96;
    if (*(v96 + v100[7]) == *(a2 + v100[7]))
    {
      v55 = v100[8];
      v56 = *(v22 + 48);
      sub_100005F04(v96 + v55, v25, &qword_1005AE5C0, &unk_1004D06D0);
      sub_100005F04(a2 + v55, &v25[v56], &qword_1005AE5C0, &unk_1004D06D0);
      v57 = v101;
      v58 = *(v101 + 48);
      v59 = v102;
      if (v58(v25, 1, v102) == 1)
      {
        v60 = v58(&v25[v56], 1, v59);
        v61 = v95;
        v62 = v94;
        if (v60 == 1)
        {
          sub_100002CE0(v25, &qword_1005AE5C0, &unk_1004D06D0);
LABEL_18:
          v71 = v53[9];
          v72 = *(v99 + 48);
          sub_100005F04(v54 + v71, v61, &unk_1005AE5B0, &qword_1004C32F0);
          sub_100005F04(a2 + v71, v61 + v72, &unk_1005AE5B0, &qword_1004C32F0);
          v73 = *(v93 + 48);
          v74 = v92;
          if (v73(v61, 1, v92) == 1)
          {
            if (v73(v61 + v72, 1, v74) == 1)
            {
              sub_100002CE0(v61, &unk_1005AE5B0, &qword_1004C32F0);
LABEL_28:
              v81 = (v54 + v53[10]);
              v82 = v81[3];
              v103[2] = v81[2];
              v103[3] = v82;
              v83 = v81[5];
              v103[4] = v81[4];
              v103[5] = v83;
              v84 = v81[1];
              v103[0] = *v81;
              v103[1] = v84;
              v85 = (a2 + v53[10]);
              v86 = v85[1];
              v104[0] = *v85;
              v104[1] = v86;
              v87 = v85[5];
              v104[4] = v85[4];
              v104[5] = v87;
              v88 = v85[3];
              v104[2] = v85[2];
              v104[3] = v88;
              v52 = sub_1001A6020(v103, v104);
              return v52 & 1;
            }
          }

          else
          {
            sub_100005F04(v61, v62, &unk_1005AE5B0, &qword_1004C32F0);
            if (v73(v61 + v72, 1, v74) != 1)
            {
              v76 = v93;
              v77 = v61 + v72;
              v78 = v91;
              (*(v93 + 32))(v91, v77, v74);
              sub_1001A5810(&qword_1005AE5D0, &type metadata accessor for Date);
              v79 = dispatch thunk of static Equatable.== infix(_:_:)();
              v80 = *(v76 + 8);
              v80(v78, v74);
              v80(v62, v74);
              sub_100002CE0(v61, &unk_1005AE5B0, &qword_1004C32F0);
              if (v79)
              {
                goto LABEL_28;
              }

              goto LABEL_25;
            }

            (*(v93 + 8))(v62, v74);
          }

          v64 = &qword_1005AAE00;
          v65 = &qword_1004C4A18;
          v66 = v61;
          goto LABEL_24;
        }

LABEL_16:
        v64 = &qword_1005AE5C8;
        v65 = &qword_1004CEF38;
        v66 = v25;
LABEL_24:
        sub_100002CE0(v66, v64, v65);
        goto LABEL_25;
      }

      v97 = a2;
      sub_100005F04(v25, v21, &qword_1005AE5C0, &unk_1004D06D0);
      v63 = v58(&v25[v56], 1, v59);
      v61 = v95;
      if (v63 == 1)
      {
        (*(v57 + 8))(v21, v59);
        goto LABEL_16;
      }

      v67 = v98;
      (*(v57 + 32))(v98, &v25[v56], v59);
      sub_1001A5810(&qword_1005AE5D8, &type metadata accessor for Fence.Schedule);
      v68 = v57;
      v69 = v59;
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = *(v68 + 8);
      v70(v67, v69);
      v70(v21, v69);
      v62 = v94;
      sub_100002CE0(v25, &qword_1005AE5C0, &unk_1004D06D0);
      a2 = v97;
      if (v90)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v52 = 0;
  }

  return v52 & 1;
}

unint64_t sub_1001A54BC()
{
  result = qword_1005AE5F0;
  if (!qword_1005AE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE5F0);
  }

  return result;
}

uint64_t sub_1001A5538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001A55D0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000545A4(319, &unk_1005ABB70, CLLocation_ptr);
    if (v1 <= 0x3F)
    {
      sub_1001A56E4(319, &qword_1005AE6A8, &type metadata accessor for Fence.Schedule);
      if (v2 <= 0x3F)
      {
        sub_1001A56E4(319, &qword_1005AE6B0, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001A56E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1001A5810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A5858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A58C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1001A5924@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v17 = v1[1];
  v18 = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v14 = v1[4];
  v15 = v5;
  v16 = v4;
  v12 = v4;
  v13 = v6;
  v11 = v17;
  sub_10017FD08(&v18, v10);
  sub_10017FD08(&v17, v10);
  sub_10017FD08(&v16, v10);
  sub_10017FD08(&v15, v10);
  sub_10017FD08(&v14, v10);
  sub_10017FD08(&v13, v10);
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  *(a1 + 72) = *v1;
  v8 = v1[4];
  *(a1 + 152) = v1[3];
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = v8;
  *(a1 + 184) = v1[5];
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

uint64_t sub_1001A59FC(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AE748, &qword_1004CF178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001A6A14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void sub_1001A5BFC()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v0[5])
  {
LABEL_4:
    v3 = v0[4];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v0[7])
  {
LABEL_5:
    v4 = v0[6];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v0[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v0[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  v5 = v0[8];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  v6 = v0[10];
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_1001A5D74()
{
  v1 = *v0;
  v2 = 0x7974696C61636F6CLL;
  v3 = 0x6574617473;
  v4 = 0x6441746565727473;
  if (v1 != 4)
  {
    v4 = 0x614E746565727473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x7972746E756F63;
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

uint64_t sub_1001A5E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A6368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A5E68(uint64_t a1)
{
  v2 = sub_1001A6A14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5EA4(uint64_t a1)
{
  v2 = sub_1001A6A14();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001A5EE0()
{
  Hasher.init(_seed:)();
  sub_1001A5BFC();
  return Hasher._finalize()();
}

Swift::Int sub_1001A5F24()
{
  Hasher.init(_seed:)();
  sub_1001A5BFC();
  return Hasher._finalize()();
}

double sub_1001A5F60@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001A6578(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1001A5FC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1001A6020(v9, v10) & 1;
}

uint64_t sub_1001A6020(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[8];
      v35 = a2;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v38 = a1[11];
  v39 = a2[11];
  if (v38)
  {
    if (v39 && (a1[10] == a2[10] && v38 == v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v39)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001A6238(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1001A6294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1001A6314()
{
  result = qword_1005AE730;
  if (!qword_1005AE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE730);
  }

  return result;
}

uint64_t sub_1001A6368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E2A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6441746565727473 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_1001A6578@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AE738, &qword_1004CF170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001A6A14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  LOBYTE(v45[0]) = 1;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v14;
  LOBYTE(v45[0]) = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v16;
  v33 = v15;
  LOBYTE(v45[0]) = 3;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v17;
  LOBYTE(v45[0]) = 4;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v18;
  v46 = 5;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = *(v6 + 8);
  v21 = v19;
  v30 = v22;
  v20(v9, v5);
  *&v39 = v11;
  *(&v39 + 1) = v13;
  *&v40 = v36;
  *(&v40 + 1) = v38;
  *&v41 = v33;
  *(&v41 + 1) = v37;
  *&v42 = v32;
  v23 = v35;
  *(&v42 + 1) = v35;
  *&v43 = v31;
  v24 = v34;
  *(&v43 + 1) = v34;
  *&v44 = v21;
  v25 = v30;
  *(&v44 + 1) = v30;
  sub_1001A6A68(&v39, v45);
  sub_100004984(a1);
  v45[0] = v11;
  v45[1] = v13;
  v45[2] = v36;
  v45[3] = v38;
  v45[4] = v33;
  v45[5] = v37;
  v45[6] = v32;
  v45[7] = v23;
  v45[8] = v31;
  v45[9] = v24;
  v45[10] = v21;
  v45[11] = v25;
  result = sub_1001A6AA0(v45);
  v27 = v42;
  a2[2] = v41;
  a2[3] = v27;
  v28 = v44;
  a2[4] = v43;
  a2[5] = v28;
  v29 = v40;
  *a2 = v39;
  a2[1] = v29;
  return result;
}

unint64_t sub_1001A6A14()
{
  result = qword_1005AE740;
  if (!qword_1005AE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE740);
  }

  return result;
}

unint64_t sub_1001A6AE4()
{
  result = qword_1005AE750;
  if (!qword_1005AE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE750);
  }

  return result;
}

unint64_t sub_1001A6B3C()
{
  result = qword_1005AE758;
  if (!qword_1005AE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE758);
  }

  return result;
}

unint64_t sub_1001A6B94()
{
  result = qword_1005AE760;
  if (!qword_1005AE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE760);
  }

  return result;
}

uint64_t sub_1001A6BE8()
{
  _StringGuts.grow(_:)(45);

  type metadata accessor for Fence.ID();
  sub_1001A7118(&qword_1005AE800, &type metadata accessor for Fence.ID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x726567676972740ALL;
  v1._object = 0xEC000000203A4449;
  String.append(_:)(v1);
  v2 = type metadata accessor for FenceTriggerRecord();
  v3 = *(v2 + 20);
  type metadata accessor for Fence.TriggerID();
  sub_1001A7118(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004E46B0;
  v5._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v5);
  v6 = *(v2 + 24);
  type metadata accessor for Fence.TriggerPosition();
  sub_1001A7118(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return 0x3A444965636E6566;
}

void sub_1001A6DD8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Fence.TriggerPosition();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FenceTriggerRecord();
  (*(v4 + 16))(v7, v1 + *(v8 + 24), v3);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == enum case for Fence.TriggerPosition.inside(_:) || v9 == enum case for Fence.TriggerPosition.outside(_:))
  {
    (*(v4 + 96))(v7, v3);
    v11 = *v7;
    v12 = [*v7 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (v9 == enum case for Fence.TriggerPosition.undetermined(_:))
  {
    (*(v4 + 96))(v7, v3);
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 32))(a1, v7, v13);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for FenceTriggerRecord()
{
  result = qword_1005AE7C0;
  if (!qword_1005AE7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A7078()
{
  result = type metadata accessor for Fence.ID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Fence.TriggerID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Fence.TriggerPosition();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001A7118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FriendInfoOption.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HandleType();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FriendInfoOption.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FriendInfoOption(0) + 20);
  v4 = type metadata accessor for ClientOrigin();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FriendInfoOption.expiresByGroupId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FriendInfoOption(0) + 24));
}

uint64_t FriendInfoOption.serverID.getter()
{
  v1 = (v0 + *(type metadata accessor for FriendInfoOption(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FriendInfoOption.favoriteOrder.getter()
{
  v1 = (v0 + *(type metadata accessor for FriendInfoOption(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FriendInfoOption.hash(into:)()
{
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType);

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1001A750C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001ADBD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A7534(uint64_t a1)
{
  v2 = sub_10001D604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A7570(uint64_t a1)
{
  v2 = sub_10001D604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FriendInfoOption.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AE820, &qword_1004CF2E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10001D604();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v29) = 0;
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE830, &type metadata accessor for HandleType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for FriendInfoOption(0);
    v12 = v11[5];
    LOBYTE(v29) = 1;
    type metadata accessor for ClientOrigin();
    sub_10001C918(&qword_1005AE838, &type metadata accessor for ClientOrigin);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = *(v3 + v11[6]);
    v28[15] = 2;
    sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
    sub_1001A7A6C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[7];
    LOBYTE(v29) = 3;
    type metadata accessor for Date();
    sub_10001C918(&qword_1005A9848, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v11[8];
    LOBYTE(v29) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + v11[9]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v29) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[10]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v29) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v11[11]);
    LOBYTE(v29) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v11[12];
    LOBYTE(v29) = 8;
    type metadata accessor for Handle();
    sub_10001C918(&qword_1005AE858, &type metadata accessor for Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v3 + v11[13]);
    LOBYTE(v29) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + v11[14]);
    LOBYTE(v29) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + v11[15]);
    LOBYTE(v29) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v3 + v11[16]);
    LOBYTE(v29) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1001A7A6C()
{
  result = qword_1005AE848;
  if (!qword_1005AE848)
  {
    sub_10004B610(&qword_1005AE840, &qword_1004CF2E8);
    sub_10001C918(&qword_1005AE850, &type metadata accessor for GroupID);
    sub_10001C918(&qword_1005A9848, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE848);
  }

  return result;
}

Swift::Int FriendInfoOption.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001A7BF8()
{
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001A7CC4()
{
  type metadata accessor for HandleType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientOrigin();
    if (v1 <= 0x3F)
    {
      sub_1001A7E28();
      if (v2 <= 0x3F)
      {
        sub_1001AE238(319, &qword_1005AE6B0, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          sub_10008B2BC(319, &qword_1005A9790);
          if (v4 <= 0x3F)
          {
            sub_10008B2BC(319, &qword_1005AC700);
            if (v5 <= 0x3F)
            {
              sub_1001AE238(319, &qword_1005AE910, &type metadata accessor for Handle);
              if (v6 <= 0x3F)
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

void sub_1001A7E28()
{
  if (!qword_1005AE900)
  {
    type metadata accessor for GroupID();
    type metadata accessor for Date();
    sub_10001C918(&qword_1005AE908, &type metadata accessor for GroupID);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AE900);
    }
  }
}

unint64_t sub_1001A7EE8()
{
  result = qword_1005AE970;
  if (!qword_1005AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE970);
  }

  return result;
}

unint64_t sub_1001A7F40()
{
  result = qword_1005AE978;
  if (!qword_1005AE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE978);
  }

  return result;
}

unint64_t sub_1001A7F98()
{
  result = qword_1005AE980;
  if (!qword_1005AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE980);
  }

  return result;
}

uint64_t sub_1001A809C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1001ADBA0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1001A80DC@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = type metadata accessor for HandleType();
  v227 = *(v4 - 8);
  v228 = v4;
  v5 = *(v227 + 64);
  v6 = __chkstk_darwin(v4);
  v225 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v226 = &v204 - v8;
  v9 = type metadata accessor for FriendInfoOption(0);
  v10 = *(v9 - 8);
  v223 = v9;
  v224 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v230 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v210 = &v204 - v15;
  v16 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v222 = &v204 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v220 = &v204 - v21;
  v22 = __chkstk_darwin(v20);
  v218 = &v204 - v23;
  v24 = __chkstk_darwin(v22);
  v217 = &v204 - v25;
  v26 = __chkstk_darwin(v24);
  v216 = &v204 - v27;
  v28 = __chkstk_darwin(v26);
  v215 = &v204 - v29;
  v30 = __chkstk_darwin(v28);
  v214 = &v204 - v31;
  v32 = __chkstk_darwin(v30);
  v213 = &v204 - v33;
  v34 = __chkstk_darwin(v32);
  v212 = &v204 - v35;
  v36 = __chkstk_darwin(v34);
  v211 = &v204 - v37;
  v38 = __chkstk_darwin(v36);
  v209 = &v204 - v39;
  v40 = __chkstk_darwin(v38);
  v208 = &v204 - v41;
  v42 = __chkstk_darwin(v40);
  v207 = &v204 - v43;
  __chkstk_darwin(v42);
  v206 = &v204 - v44;
  v45 = type metadata accessor for Handle();
  v205 = *(v45 - 8);
  v46 = v205;
  v47 = *(v205 + 64);
  v48 = __chkstk_darwin(v45);
  v221 = &v204 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v219 = &v204 - v51;
  __chkstk_darwin(v50);
  v53 = &v204 - v52;
  v54 = type metadata accessor for FriendRecord(0);
  v233 = (a2 + v54[16]);
  v55 = *(v46 + 56);
  v229 = v54[36];
  v55(a2 + v229, 1, 1, v45);
  Friend.handle.getter();
  Handle.identifier.getter();
  v56 = *(v46 + 8);
  v56(v53, v45);
  v57 = String.lowercased()();

  *a2 = v57;
  Friend.handle.getter();
  v58 = Handle.qualifiedIdentifier.getter();
  v60 = v59;
  v56(v53, v45);
  a2[1]._countAndFlagsBits = v58;
  a2[1]._object = v60;
  Friend.handle.getter();
  v61 = a2 + v54[6];
  Handle.idsStatus.getter();
  v56(v53, v45);
  Friend.handle.getter();
  v62 = Handle.dsid.getter();
  v64 = v63;
  v56(v53, v45);
  v65 = (&a2->_countAndFlagsBits + v54[7]);
  *v65 = v62;
  v65[1] = v64;
  Friend.handle.getter();
  Handle.trackingTimestamp.getter();
  v67 = v66;
  v56(v53, v45);
  *(&a2->_countAndFlagsBits + v54[8]) = v67;
  Friend.handle.getter();
  v68 = Handle.hashedDSID.getter();
  v70 = v69;
  v56(v53, v45);
  v71 = (&a2->_countAndFlagsBits + v54[9]);
  *v71 = v68;
  v71[1] = v70;
  Friend.handle.getter();
  v72 = Handle.favoriteOrder.getter();
  v74 = v73;
  v56(v53, v45);
  v75 = (&a2->_countAndFlagsBits + v54[10]);
  *v75 = v72;
  v75[1] = v74;
  Friend.handle.getter();
  LOBYTE(v72) = Handle.reachable.getter();
  v56(v53, v45);
  *(&a2->_countAndFlagsBits + v54[11]) = v72;
  Friend.handle.getter();
  v76 = Handle.pushIdentifiers.getter();
  v56(v53, v45);
  *(&a2->_countAndFlagsBits + v54[12]) = v76;
  Friend.handle.getter();
  v77 = Handle.prettyName.getter();
  v79 = v78;
  v56(v53, v45);
  v80 = (&a2->_countAndFlagsBits + v54[13]);
  *v80 = v77;
  v80[1] = v79;
  Friend.handle.getter();
  v81 = Handle.contactIdentifier.getter();
  v83 = v82;
  v56(v53, v45);
  v84 = (&a2->_countAndFlagsBits + v54[14]);
  *v84 = v81;
  v84[1] = v83;
  Friend.handle.getter();
  v85 = Handle.serverID.getter();
  v87 = v86;
  v56(v53, v45);
  v88 = v233;
  *v233 = v85;
  *(v88 + 1) = v87;
  Friend.handle.getter();
  v89 = Handle.siblingIdentifiers.getter();
  v56(v53, v45);
  v234 = v89;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10001DF0C(&qword_1005ABF48, &qword_1005A9630, &qword_1004C5680);
  v90 = BidirectionalCollection<>.joined(separator:)();
  v92 = v91;

  v233 = v54;
  v93 = v54[15];
  v231 = a2;
  v94 = (&a2->_countAndFlagsBits + v93);
  v95 = v206;
  *v94 = v90;
  v94[1] = v92;
  Friend.ownerHandle.getter();
  v96 = *(v205 + 48);
  v97 = v96(v95, 1, v45);
  v232 = v46 + 8;
  if (v97 == 1)
  {
    sub_100002CE0(v95, &qword_1005B3360, &unk_1004C6AA0);
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v98 = Handle.identifier.getter();
    v99 = v100;
    v56(v95, v45);
  }

  v101 = (&v231->_countAndFlagsBits + v233[17]);
  *v101 = v98;
  v101[1] = v99;
  v102 = v207;
  Friend.ownerHandle.getter();
  if (v96(v102, 1, v45) == 1)
  {
    sub_100002CE0(v102, &qword_1005B3360, &unk_1004C6AA0);
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v103 = Handle.qualifiedIdentifier.getter();
    v104 = v105;
    v56(v102, v45);
  }

  v106 = v210;
  v107 = (&v231->_countAndFlagsBits + v233[18]);
  *v107 = v103;
  v107[1] = v104;
  v108 = v208;
  Friend.ownerHandle.getter();
  if (v96(v108, 1, v45) == 1)
  {
    sub_100002CE0(v108, &qword_1005B3360, &unk_1004C6AA0);
    v109 = type metadata accessor for IDSStatus();
    (*(*(v109 - 8) + 56))(v106, 1, 1, v109);
    v110 = v56;
  }

  else
  {
    Handle.idsStatus.getter();
    v111 = v108;
    v110 = v56;
    v56(v111, v45);
  }

  v112 = v213;
  v113 = v231;
  sub_1000176A8(v106, v231 + v233[19], &qword_1005AE998, &unk_1004D6030);
  v114 = v209;
  Friend.ownerHandle.getter();
  if (v96(v114, 1, v45) == 1)
  {
    sub_100002CE0(v114, &qword_1005B3360, &unk_1004C6AA0);
    v115 = 0;
    v116 = 0;
  }

  else
  {
    v115 = Handle.dsid.getter();
    v117 = v114;
    v116 = v118;
    v110(v117, v45);
  }

  v119 = (&v113->_countAndFlagsBits + v233[20]);
  *v119 = v115;
  v119[1] = v116;
  v120 = v211;
  Friend.ownerHandle.getter();
  v121 = v120;
  v122 = v96(v120, 1, v45);
  if (v122 == 1)
  {
    sub_100002CE0(v121, &qword_1005B3360, &unk_1004C6AA0);
    v123 = 0;
  }

  else
  {
    Handle.trackingTimestamp.getter();
    v123 = v124;
    v110(v121, v45);
  }

  v125 = v113 + v233[22];
  *v125 = v123;
  *(v125 + 8) = v122 == 1;
  v126 = v212;
  Friend.ownerHandle.getter();
  if (v96(v126, 1, v45) == 1)
  {
    sub_100002CE0(v126, &qword_1005B3360, &unk_1004C6AA0);
    v127 = 0;
    v128 = 0;
  }

  else
  {
    v127 = Handle.hashedDSID.getter();
    v129 = v126;
    v128 = v130;
    v110(v129, v45);
  }

  v131 = (&v113->_countAndFlagsBits + v233[23]);
  *v131 = v127;
  v131[1] = v128;
  Friend.ownerHandle.getter();
  if (v96(v112, 1, v45) == 1)
  {
    sub_100002CE0(v112, &qword_1005B3360, &unk_1004C6AA0);
    v132 = 0;
    v133 = 0;
    v134 = v110;
  }

  else
  {
    v132 = Handle.favoriteOrder.getter();
    v133 = v135;
    v136 = v112;
    v134 = v110;
    v110(v136, v45);
  }

  v137 = (&v113->_countAndFlagsBits + v233[24]);
  *v137 = v132;
  v137[1] = v133;
  v138 = v214;
  Friend.ownerHandle.getter();
  if (v96(v138, 1, v45) == 1)
  {
    sub_100002CE0(v138, &qword_1005B3360, &unk_1004C6AA0);
    v139 = 2;
  }

  else
  {
    v139 = Handle.reachable.getter();
    v134(v138, v45);
  }

  v140 = v216;
  *(&v113->_countAndFlagsBits + v233[25]) = v139;
  v141 = v215;
  Friend.ownerHandle.getter();
  if (v96(v141, 1, v45) == 1)
  {
    sub_100002CE0(v141, &qword_1005B3360, &unk_1004C6AA0);
    v142 = 0;
    v143 = v110;
  }

  else
  {
    v142 = Handle.pushIdentifiers.getter();
    v144 = v141;
    v143 = v110;
    v110(v144, v45);
  }

  *(&v113->_countAndFlagsBits + v233[26]) = v142;
  Friend.ownerHandle.getter();
  v145 = v96(v140, 1, v45);
  v146 = v218;
  if (v145 == 1)
  {
    sub_100002CE0(v140, &qword_1005B3360, &unk_1004C6AA0);
    v147 = 0;
    v148 = 0;
  }

  else
  {
    v147 = Handle.prettyName.getter();
    v149 = v140;
    v148 = v150;
    v143(v149, v45);
  }

  v151 = (&v113->_countAndFlagsBits + v233[27]);
  *v151 = v147;
  v151[1] = v148;
  v152 = v217;
  Friend.ownerHandle.getter();
  if (v96(v152, 1, v45) == 1)
  {
    sub_100002CE0(v152, &qword_1005B3360, &unk_1004C6AA0);
    v153 = 0;
    v154 = 0;
  }

  else
  {
    v153 = Handle.contactIdentifier.getter();
    v155 = v152;
    v154 = v156;
    v143(v155, v45);
  }

  v157 = (&v113->_countAndFlagsBits + v233[28]);
  *v157 = v153;
  v157[1] = v154;
  Friend.ownerHandle.getter();
  if (v96(v146, 1, v45) == 1)
  {
    sub_100002CE0(v146, &qword_1005B3360, &unk_1004C6AA0);
    v158 = 0;
    v159 = 0;
  }

  else
  {
    v158 = Handle.serverID.getter();
    v159 = v160;
    v143(v146, v45);
  }

  v161 = (&v113->_countAndFlagsBits + v233[29]);
  *v161 = v158;
  v161[1] = v159;
  v162 = v220;
  Friend.ownerHandle.getter();
  v163 = v96(v162, 1, v45);
  v164 = a1;
  if (v163 == 1)
  {
    sub_100002CE0(v162, &qword_1005B3360, &unk_1004C6AA0);
    v165 = 0;
  }

  else
  {
    v165 = Handle.expiresByGroupId.getter();
    v143(v162, v45);
  }

  v166 = v233;
  *(&v113->_countAndFlagsBits + v233[21]) = v165;
  v167 = v222;
  Friend.ownerHandle.getter();
  sub_1000228E0(v167, v113 + v229);
  *(&v113->_countAndFlagsBits + v166[30]) = Friend.secureLocationsCapable.getter() & 1;
  *(&v113->_countAndFlagsBits + v166[31]) = Friend.shallowOrLiveSecureLocationsCapable.getter() & 1;
  *(&v113->_countAndFlagsBits + v166[32]) = Friend.fallbackToLegacyAllowed.getter() & 1;
  v168 = Friend.fallbackToLegacy.getter();
  v169 = v166[33];
  v170 = v164;
  *(&v113->_countAndFlagsBits + v169) = v168 & 1;
  v171 = v230;
  Friend.type.getter();
  v172 = v223;
  v173 = v171 + v223[5];
  Friend.friendshipOrigin.getter();
  Friend.handle.getter();
  v222 = Handle.expiresByGroupId.getter();
  v143(v53, v45);
  v174 = v171 + v172[7];
  Friend.createdAt.getter();
  v175 = v171 + v172[8];
  Friend.expiry.getter();
  v176 = v219;
  Friend.handle.getter();
  v220 = Handle.serverID.getter();
  v218 = v177;
  v143(v176, v45);
  v178 = v221;
  Friend.handle.getter();
  v179 = Handle.favoriteOrder.getter();
  v180 = v143;
  v182 = v181;
  v180(v178, v45);
  v183 = Friend.optedNotToShare.getter();
  sub_100005F04(v231 + v229, v171 + v172[12], &qword_1005B3360, &unk_1004C6AA0);
  LOBYTE(v167) = Friend.shallowOrLiveSecureLocationsCapable.getter() & 1;
  LOBYTE(v178) = Friend.secureLocationsCapable.getter() & 1;
  v184 = Friend.fallbackToLegacy.getter() & 1;
  v185 = Friend.fallbackToLegacyAllowed.getter();
  *(v171 + v172[6]) = v222;
  v186 = (v171 + v172[9]);
  v187 = v218;
  *v186 = v220;
  v186[1] = v187;
  v188 = (v171 + v172[10]);
  *v188 = v179;
  v188[1] = v182;
  *(v171 + v172[11]) = v183;
  *(v171 + v172[13]) = v167;
  *(v171 + v172[14]) = v178;
  *(v171 + v172[15]) = v184;
  v189 = v172[16];
  v190 = v231;
  *(v171 + v189) = v185 & 1;
  sub_10004B564(&qword_1005AE9A0, &qword_1004CF4F8);
  v191 = *(v224 + 72);
  v192 = (*(v224 + 80) + 32) & ~*(v224 + 80);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1004C1900;
  v194 = v233;
  sub_1000181EC(v171, v193 + v192, type metadata accessor for FriendInfoOption);
  v195 = sub_100017710(v193);
  swift_setDeallocating();
  sub_100006E08(v193 + v192, type metadata accessor for FriendInfoOption);
  swift_deallocClassInstance();
  *(&v190->_countAndFlagsBits + v194[34]) = v195;
  v196 = v226;
  Friend.type.getter();
  v198 = v227;
  v197 = v228;
  v199 = v225;
  (*(v227 + 16))(v225, v196, v228);
  v200 = (*(v198 + 88))(v199, v197);
  if (v200 == enum case for HandleType.follower(_:))
  {
    v201 = 2;
LABEL_50:
    v202 = type metadata accessor for Friend();
    (*(*(v202 - 8) + 8))(v170, v202);
    (*(v198 + 8))(v196, v197);
    result = sub_100006E08(v230, type metadata accessor for FriendInfoOption);
    *(&v190->_countAndFlagsBits + v194[35]) = v201;
    return result;
  }

  if (v200 == enum case for HandleType.following(_:))
  {
    v201 = 4;
    goto LABEL_50;
  }

  if (v200 == enum case for HandleType.futureFollower(_:))
  {
    v201 = 8;
    goto LABEL_50;
  }

  if (v200 == enum case for HandleType.futureFollowing(_:))
  {
    v201 = 16;
    goto LABEL_50;
  }

  if (v200 == enum case for HandleType.pendingOffer(_:))
  {
    v201 = 32;
    goto LABEL_50;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001A952C(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v3 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v100 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v114 = &v99 - v7;
  v8 = type metadata accessor for HandleType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v110 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v107 = &v99 - v14;
  __chkstk_darwin(v13);
  v106 = &v99 - v15;
  v16 = sub_10004B564(&qword_1005AE988, &qword_1004CF4E8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v99 = &v99 - v18;
  v19 = type metadata accessor for Handle();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v99 - v26;
  __chkstk_darwin(v25);
  v29 = &v99 - v28;
  v30 = type metadata accessor for FriendInfoOption(0);
  v31 = (v30 - 8);
  v32 = *(*(v30 - 8) + 64);
  v33 = __chkstk_darwin(v30);
  v109 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v108 = &v99 - v36;
  __chkstk_darwin(v35);
  v38 = &v99 - v37;
  v118 = v9;
  v119 = v8;
  v39 = *(v9 + 16);
  v105 = v9 + 16;
  v104 = v39;
  v39(&v99 - v37, v120, v8);
  v40 = &v38[v31[7]];
  Friend.friendshipOrigin.getter();
  Friend.handle.getter();
  v121 = Handle.expiresByGroupId.getter();
  v112 = v29;
  v113 = v20;
  v42 = v20 + 8;
  v41 = *(v20 + 8);
  v41(v29, v19);
  v43 = &v38[v31[9]];
  Friend.createdAt.getter();
  v44 = &v38[v31[10]];
  Friend.expiry.getter();
  Friend.handle.getter();
  v103 = Handle.serverID.getter();
  v102 = v45;
  v41(v27, v19);
  Friend.handle.getter();
  v46 = Handle.favoriteOrder.getter();
  v101 = v47;
  v115 = v41;
  v116 = v19;
  v111 = v42;
  v41(v24, v19);
  LOBYTE(v24) = Friend.optedNotToShare.getter();
  v48 = &v38[v31[14]];
  Friend.ownerHandle.getter();
  LOBYTE(v42) = Friend.shallowOrLiveSecureLocationsCapable.getter() & 1;
  LOBYTE(v19) = Friend.secureLocationsCapable.getter() & 1;
  LOBYTE(v29) = Friend.fallbackToLegacy.getter() & 1;
  v49 = Friend.fallbackToLegacyAllowed.getter();
  *&v38[v31[8]] = v121;
  v50 = &v38[v31[11]];
  v51 = v102;
  *v50 = v103;
  v50[1] = v51;
  v52 = &v38[v31[12]];
  v53 = v101;
  *v52 = v46;
  v52[1] = v53;
  v38[v31[13]] = v24;
  v38[v31[15]] = v42;
  v54 = v117;
  v38[v31[16]] = v19;
  v38[v31[17]] = v29;
  v38[v31[18]] = v49 & 1;
  v121 = type metadata accessor for FriendRecord(0);
  v55 = v121[34];
  if (sub_10021B3FC(v38, *(v54 + v55)))
  {
    v56 = v99;
    sub_1001AC5BC(v99);
    sub_100002CE0(v56, &qword_1005AE988, &qword_1004CF4E8);
  }

  v103 = v55;
  v57 = v106;
  Friend.type.getter();
  v58 = v118;
  v59 = *(v118 + 104);
  v60 = v107;
  LODWORD(v102) = enum case for HandleType.following(_:);
  v61 = v119;
  v59(v107);
  v62 = static HandleType.== infix(_:_:)();
  v63 = *(v58 + 8);
  v63(v60, v61);
  v63(v57, v61);
  if (v62)
  {
    v64 = enum case for HandleType.follower(_:);
    v65 = v112;
    v66 = v121;
    v67 = v117;
  }

  else
  {
    Friend.type.getter();
    v68 = enum case for HandleType.follower(_:);
    (v59)(v60, enum case for HandleType.follower(_:), v61);
    v69 = static HandleType.== infix(_:_:)();
    v63(v60, v61);
    v70 = v57;
    v64 = v68;
    v63(v70, v61);
    v65 = v112;
    v66 = v121;
    v67 = v117;
    if ((v69 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  Friend.handle.getter();
  v71 = Handle.serverID.getter();
  v73 = v72;
  v115(v65, v116);
  v74 = (v67 + v66[16]);
  v75 = v74[1];

  *v74 = v71;
  v74[1] = v73;
LABEL_7:
  v76 = v66[35];
  v77 = *(v67 + v76);
  v78 = v110;
  v79 = v119;
  v104(v110, v120, v119);
  v80 = (*(v118 + 88))(v78, v79);
  if (v80 == v64)
  {
    v81 = 2;
  }

  else if (v80 == v102)
  {
    v81 = 4;
  }

  else if (v80 == enum case for HandleType.futureFollower(_:))
  {
    v81 = 8;
  }

  else if (v80 == enum case for HandleType.futureFollowing(_:))
  {
    v81 = 16;
  }

  else
  {
    if (v80 != enum case for HandleType.pendingOffer(_:))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v81 = 32;
  }

  *(v67 + v76) = v81 | v77;
  v82 = v109;
  sub_1000181EC(v38, v109, type metadata accessor for FriendInfoOption);
  v83 = v108;
  sub_100017F98(v108, v82);
  sub_100006E08(v83, type metadata accessor for FriendInfoOption);
  v84 = v67;
  v85 = (v67 + v121[15]);
  v86 = v85[1];
  v124 = *v85;
  v125 = v86;
  v122 = 44;
  v123 = 0xE100000000000000;
  sub_1000246F4();
  v87 = StringProtocol.components<A>(separatedBy:)();
  v88 = sub_10023F00C(v87);

  Friend.handle.getter();
  v89 = Handle.siblingIdentifiers.getter();
  v120 = a1;
  v90 = v116;
  v115(v65, v116);
  v91 = sub_10023FAC8(v89, v88);

  v124 = v91;
  sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
  sub_10001DF0C(&qword_1005AE990, &qword_1005ADCB0, &qword_1004CF4F0);
  v92 = Sequence<>.joined(separator:)();
  v94 = v93;

  *v85 = v92;
  v85[1] = v94;
  v95 = v121[36];
  v96 = v114;
  sub_100005F04(v84 + v95, v114, &qword_1005B3360, &unk_1004C6AA0);
  if ((*(v113 + 48))(v96, 1, v90) == 1)
  {
    sub_100002CE0(v96, &qword_1005B3360, &unk_1004C6AA0);
    v97 = v100;
    Friend.ownerHandle.getter();
    sub_100006E08(v38, type metadata accessor for FriendInfoOption);
    return sub_1000228E0(v97, v84 + v95);
  }

  else
  {
    sub_100006E08(v38, type metadata accessor for FriendInfoOption);
    return sub_100002CE0(v96, &qword_1005B3360, &unk_1004C6AA0);
  }
}

BOOL sub_1001A9F30()
{
  v0 = type metadata accessor for HandleType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.type.getter();
  sub_10001C918(&qword_1005AE9A8, &type metadata accessor for HandleType);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

unint64_t sub_1001AA060(char a1)
{
  result = 0x6449656C646E6168;
  switch(a1)
  {
    case 1:
      v3 = 9;
      goto LABEL_20;
    case 2:
      return result;
    case 3:
      return 0x7344656C646E6168;
    case 4:
    case 10:
    case 28:
      return 0xD000000000000017;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0xD000000000000013;
    case 7:
      return 0x6552656C646E6168;
    case 8:
    case 13:
    case 19:
    case 23:
      v3 = 5;
      goto LABEL_20;
    case 9:
      return 0xD000000000000010;
    case 11:
    case 20:
      return 0xD000000000000018;
    case 12:
    case 26:
      return 0xD000000000000016;
    case 14:
      return 0xD00000000000001ELL;
    case 15:
    case 21:
      return 0xD000000000000014;
    case 16:
    case 32:
      return 0x6E614872656E776FLL;
    case 17:
    case 25:
      v3 = 11;
      goto LABEL_20;
    case 18:
    case 24:
      return 0xD00000000000001CLL;
    case 22:
      v3 = 10;
LABEL_20:
      result = v3 | 0xD000000000000010;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x6E49646E65697266;
      break;
    case 31:
      result = 0x7365707974;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1001AA38C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AEB60, &qword_1004CF778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v76 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001AE4E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v78) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v78) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = type metadata accessor for FriendRecord(0);
    v16 = v15[6];
    LOBYTE(v78) = 2;
    type metadata accessor for IDSStatus();
    sub_10001C918(&qword_1005ACB90, &type metadata accessor for IDSStatus);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v3 + v15[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v78) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + v15[8]);
    LOBYTE(v78) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v15[9]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v78) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + v15[10]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v78) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + v15[11]);
    LOBYTE(v78) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78 = *(v3 + v15[12]);
    v77 = 8;
    v28 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v76[1] = sub_10001CCC4(&qword_1005A9EA8);
    v76[2] = v28;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = (v3 + v15[13]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v78) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = (v3 + v15[14]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v78) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = (v3 + v15[15]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v78) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = (v3 + v15[16]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v78) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = (v3 + v15[17]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v78) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = (v3 + v15[18]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v78) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = v15[19];
    LOBYTE(v78) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v48 = (v3 + v15[20]);
    v49 = *v48;
    v50 = v48[1];
    LOBYTE(v78) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78 = *(v3 + v15[21]);
    v77 = 17;
    sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
    sub_1001A7A6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v51 = v3 + v15[22];
    v52 = *v51;
    v53 = v51[8];
    LOBYTE(v78) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = (v3 + v15[23]);
    v55 = *v54;
    v56 = v54[1];
    LOBYTE(v78) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v57 = (v3 + v15[24]);
    v58 = *v57;
    v59 = v57[1];
    LOBYTE(v78) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = *(v3 + v15[25]);
    LOBYTE(v78) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78 = *(v3 + v15[26]);
    v77 = 22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v61 = (v3 + v15[27]);
    v62 = *v61;
    v63 = v61[1];
    LOBYTE(v78) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = (v3 + v15[28]);
    v65 = *v64;
    v66 = v64[1];
    LOBYTE(v78) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v67 = (v3 + v15[29]);
    v68 = *v67;
    v69 = v67[1];
    LOBYTE(v78) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v70 = *(v3 + v15[30]);
    LOBYTE(v78) = 26;
    KeyedEncodingContainer.encode(_:forKey:)();
    v71 = *(v3 + v15[31]);
    LOBYTE(v78) = 27;
    KeyedEncodingContainer.encode(_:forKey:)();
    v72 = *(v3 + v15[32]);
    LOBYTE(v78) = 28;
    KeyedEncodingContainer.encode(_:forKey:)();
    v73 = *(v3 + v15[33]);
    LOBYTE(v78) = 29;
    KeyedEncodingContainer.encode(_:forKey:)();
    v78 = *(v3 + v15[34]);
    v77 = 30;
    sub_10004B564(&qword_1005AEB40, &qword_1004CF770);
    sub_1001AE58C(&qword_1005AEB68, &qword_1005AEB70);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v78 = *(v3 + v15[35]);
    v77 = 31;
    sub_1001AE628();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v74 = v15[36];
    LOBYTE(v78) = 32;
    type metadata accessor for Handle();
    sub_10001C918(&qword_1005AE858, &type metadata accessor for Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001AAC30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v153 = &v145 - v5;
  v6 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v145 - v11;
  v13 = sub_10004B564(&qword_1005AEB30, &qword_1004CF768);
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = *(v155 + 64);
  __chkstk_darwin(v13);
  v16 = &v145 - v15;
  v17 = type metadata accessor for FriendRecord(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = (&v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v19 + 144);
  v23 = type metadata accessor for Handle();
  v24 = *(*(v23 - 8) + 56);
  v160 = v21;
  v158 = v22;
  v24(v21 + v22, 1, 1, v23);
  v25 = a1[3];
  v26 = a1[4];
  v157 = a1;
  sub_100011AEC(a1, v25);
  sub_1001AE4E4();
  v27 = v16;
  v28 = v159;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v159 = v28;
    sub_100004984(v157);
    v31 = v160;
    v32 = v158;
LABEL_4:

    return sub_100002CE0(v31 + v32, &qword_1005B3360, &unk_1004C6AA0);
  }

  v151 = v23;
  v152 = v17;
  LOBYTE(v162) = 0;
  v29 = v156;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v160;
  *v160 = v30;
  v34[1] = v35;
  LOBYTE(v162) = 1;
  v34[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34[3] = v36;
  type metadata accessor for IDSStatus();
  LOBYTE(v162) = 2;
  v37 = sub_10001C918(&qword_1005ACB78, &type metadata accessor for IDSStatus);
  v145 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v159 = 0;
  v149 = v37;
  v38 = v152;
  sub_1000176A8(v12, v34 + v152[6], &qword_1005AE998, &unk_1004D6030);
  LOBYTE(v162) = 3;
  v39 = v159;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v39)
  {
    v159 = v39;
    (*(v155 + 8))(v27, v29);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v146 = 0;
    v147 = 0;
    *v148 = 0;
    LODWORD(v149) = 0;
    LODWORD(v151) = 0;
    LODWORD(v153) = 0;
    LODWORD(v154) = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    v150 = 0;
    goto LABEL_9;
  }

  v47 = (v34 + v38[7]);
  *v47 = v40;
  v47[1] = v41;
  LOBYTE(v162) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v155;
  *(v34 + v38[8]) = v49;
  LOBYTE(v162) = 5;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v80 = (v34 + v38[9]);
  *v80 = v50;
  v80[1] = v81;
  LOBYTE(v162) = 6;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = (v34 + v38[10]);
  *v83 = v82;
  v83[1] = v84;
  LOBYTE(v162) = 7;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  *(v160 + v152[11]) = v85;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v161 = 8;
  sub_10001CCC4(&qword_1005A9E80);
  v86 = v159;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v159 = v86;
  if (v86)
  {
    (*(v48 + 8))(v27, v29);
    v45 = 0;
    v46 = 0;
    v146 = 0;
    v147 = 0;
    *v148 = 0;
    LODWORD(v149) = 0;
    LODWORD(v151) = 0;
    LODWORD(v153) = 0;
    LODWORD(v154) = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    v150 = 0;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    goto LABEL_9;
  }

  *(v160 + v152[12]) = v162;
  LOBYTE(v162) = 9;
  *&v148[4] = v27;
  v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v88 = (v160 + v152[13]);
  *v88 = v87;
  v88[1] = v89;
  LOBYTE(v162) = 10;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v91 = (v160 + v152[14]);
  *v91 = v90;
  v91[1] = v92;
  LOBYTE(v162) = 11;
  v93 = KeyedDecodingContainer.decode(_:forKey:)();
  v159 = 0;
  v94 = (v160 + v152[15]);
  *v94 = v93;
  v94[1] = v95;
  LOBYTE(v162) = 12;
  v96 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v150 = v97;
  v159 = 0;
  v98 = (v160 + v152[16]);
  *v98 = v96;
  v98[1] = v97;
  LOBYTE(v162) = 13;
  v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v100 = (v160 + v152[17]);
  *v100 = v99;
  v100[1] = v101;
  LOBYTE(v162) = 14;
  v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v103 = (v160 + v152[18]);
  *v103 = v102;
  v103[1] = v104;
  LOBYTE(v162) = 15;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v159 = 0;
  sub_1000176A8(v10, v160 + v152[19], &qword_1005AE998, &unk_1004D6030);
  LOBYTE(v162) = 16;
  v105 = v159;
  v106 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = v105;
  if (v105)
  {
    (*(v155 + 8))(*&v148[4], v156);
    LODWORD(v149) = 0;
    LODWORD(v151) = 0;
    LODWORD(v153) = 0;
    LODWORD(v154) = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v146 = 0x100000001;
    v147 = 0x100000001;
    *v148 = 1;
    goto LABEL_9;
  }

  v108 = (v160 + v152[20]);
  *v108 = v106;
  v108[1] = v107;
  sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
  v161 = 17;
  sub_10001C960();
  v109 = v159;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v159 = v109;
  if (v109)
  {
    (*(v155 + 8))(*&v148[4], v156);
    LODWORD(v149) = 0;
    LODWORD(v151) = 0;
    LODWORD(v153) = 0;
    LODWORD(v154) = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    v146 = 0x100000001;
    v147 = 0x100000001;
    *v148 = 0x100000001;
LABEL_9:
    v51 = v145;
    sub_100004984(v157);
    v52 = v160;
    v53 = v160[1];

    if (!v51)
    {
      v69 = v52[3];
    }

    v31 = v160;
    sub_100002CE0(v160 + v152[6], &qword_1005AE998, &unk_1004D6030);
    if (v42)
    {
      v70 = *(v31 + v152[7] + 8);

      if (v43)
      {
LABEL_13:
        v54 = v152;
        v55 = *(v31 + v152[9] + 8);

        if ((v44 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }
    }

    else if (v43)
    {
      goto LABEL_13;
    }

    v54 = v152;
    if (!v44)
    {
LABEL_14:
      if (v45)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    v71 = *(v31 + v54[10] + 8);

    if (v45)
    {
LABEL_15:
      v56 = *(v31 + v54[12]);

      v57 = 0;
      if ((v46 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    v57 = 0;
    if (!v46)
    {
LABEL_16:
      v58 = v153;
      if (v146)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    v72 = *(v31 + v54[13] + 8);

    v58 = v153;
    if (v146)
    {
LABEL_17:
      v59 = *(v31 + v54[14] + 8);

      v60 = v154;
      if ((v146 & 0x100000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_37:
      v61 = 0;
      v32 = v158;
      v62 = v156;
      v63 = v155;
      goto LABEL_38;
    }

LABEL_36:
    v60 = v154;
    if (!HIDWORD(v146))
    {
LABEL_18:

      v61 = 0;
      v32 = v158;
      v62 = v156;
      v63 = v155;
      if (!v147)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  *(v160 + v152[21]) = v162;
  LOBYTE(v162) = 18;
  v110 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v111 = v160 + v152[22];
  *v111 = v110;
  v111[8] = v112 & 1;
  LOBYTE(v162) = 19;
  v113 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v114 = (v160 + v152[23]);
  *v114 = v113;
  v114[1] = v115;
  LOBYTE(v162) = 20;
  v116 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v117 = (v160 + v152[24]);
  *v117 = v116;
  v117[1] = v118;
  LOBYTE(v162) = 21;
  v119 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  *(v160 + v152[25]) = v119;
  v161 = 22;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v159 = 0;
  *(v160 + v152[26]) = v162;
  LOBYTE(v162) = 23;
  v120 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v121 = (v160 + v152[27]);
  *v121 = v120;
  v121[1] = v122;
  LOBYTE(v162) = 24;
  v123 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v124 = (v160 + v152[28]);
  *v124 = v123;
  v124[1] = v125;
  LOBYTE(v162) = 25;
  v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = 0;
  v127 = (v160 + v152[29]);
  *v127 = v126;
  v127[1] = v128;
  LOBYTE(v162) = 26;
  v129 = KeyedDecodingContainer.decode(_:forKey:)();
  v159 = 0;
  *(v160 + v152[30]) = v129 & 1;
  LOBYTE(v162) = 27;
  v130 = KeyedDecodingContainer.decode(_:forKey:)();
  v159 = 0;
  *(v160 + v152[31]) = v130 & 1;
  LOBYTE(v162) = 28;
  v131 = KeyedDecodingContainer.decode(_:forKey:)();
  v159 = 0;
  *(v160 + v152[32]) = v131 & 1;
  LOBYTE(v162) = 29;
  v132 = KeyedDecodingContainer.decode(_:forKey:)();
  v159 = 0;
  *(v160 + v152[33]) = v132 & 1;
  sub_10004B564(&qword_1005AEB40, &qword_1004CF770);
  v161 = 30;
  sub_1001AE58C(&qword_1005AEB48, &qword_1005AEB50);
  v133 = v159;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v159 = v133;
  if (v133)
  {
    (*(v155 + 8))(*&v148[4], v156);
    v61 = 0;
LABEL_59:
    sub_100004984(v157);
    v31 = v160;
    v134 = v160[1];

    v135 = v31[3];

    v54 = v152;
    sub_100002CE0(v31 + v152[6], &qword_1005AE998, &unk_1004D6030);
    v136 = *(v31 + v54[7] + 8);

    v137 = *(v31 + v54[9] + 8);

    v138 = *(v31 + v54[10] + 8);

    v139 = *(v31 + v54[12]);

    v140 = *(v31 + v54[13] + 8);

    v141 = *(v31 + v54[14] + 8);

    v62 = 1;
    v63 = 1;
    v60 = 1;
    v58 = 1;
    v57 = 1;
    LODWORD(v151) = 1;
    LODWORD(v149) = 1;
    *v148 = 0x100000001;
    v147 = 0x100000001;
    v32 = v158;
LABEL_38:
    v73 = *(v31 + v54[15] + 8);

    if ((v147 & 1) == 0)
    {
LABEL_19:
      if (HIDWORD(v147))
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

LABEL_39:
    v74 = *(v31 + v54[17] + 8);

    if ((v147 & 0x100000000) != 0)
    {
LABEL_20:
      v64 = *(v31 + v54[18] + 8);

      if ((v148[0] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!*v148)
    {
LABEL_21:
      if (*&v148[4])
      {
        goto LABEL_22;
      }

      goto LABEL_42;
    }

LABEL_41:
    sub_100002CE0(v31 + v54[19], &qword_1005AE998, &unk_1004D6030);
    if (v148[4])
    {
LABEL_22:
      v65 = *(v31 + v54[20] + 8);

      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (!v149)
    {
LABEL_23:
      if (v151)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }

LABEL_43:
    v75 = *(v31 + v54[21]);

    if (v151)
    {
LABEL_24:
      v66 = *(v31 + v54[23] + 8);

      if ((v57 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!v57)
    {
LABEL_25:
      if (v58)
      {
        goto LABEL_26;
      }

      goto LABEL_46;
    }

LABEL_45:
    v76 = *(v31 + v54[24] + 8);

    if (v58)
    {
LABEL_26:
      v67 = *(v31 + v54[26]);

      if ((v60 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_47;
    }

LABEL_46:
    if (!v60)
    {
LABEL_27:
      if (v63)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    }

LABEL_47:
    v77 = *(v31 + v54[27] + 8);

    if (v63)
    {
LABEL_28:
      v68 = *(v31 + v54[28] + 8);

      if ((v62 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (!v62)
    {
LABEL_29:
      if (!v61)
      {
        return sub_100002CE0(v31 + v32, &qword_1005B3360, &unk_1004C6AA0);
      }

      goto LABEL_50;
    }

LABEL_49:
    v78 = *(v31 + v54[29] + 8);

    if ((v61 & 1) == 0)
    {
      return sub_100002CE0(v31 + v32, &qword_1005B3360, &unk_1004C6AA0);
    }

LABEL_50:
    v79 = *(v31 + v54[34]);
    goto LABEL_4;
  }

  *(v160 + v152[34]) = v162;
  v161 = 31;
  sub_1001AE538();
  v142 = v159;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v159 = v142;
  if (v142 || (*(v160 + v152[35]) = v162, LOBYTE(v162) = 32, sub_10001C918(&qword_1005AE888, &type metadata accessor for Handle), v143 = v159, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v159 = v143) != 0))
  {
    (*(v155 + 8))(*&v148[4], v156);
    v61 = 1;
    goto LABEL_59;
  }

  (*(v155 + 8))(*&v148[4], v156);
  v144 = v160;
  sub_1000228E0(v153, v160 + v158);
  sub_1000181EC(v144, v154, type metadata accessor for FriendRecord);
  sub_100004984(v157);
  return sub_100006E08(v144, type metadata accessor for FriendRecord);
}

uint64_t sub_1001AC3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AE8D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AC3D8(uint64_t a1)
{
  v2 = sub_1001AE4E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AC414(uint64_t a1)
{
  v2 = sub_1001AE4E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001AC480(uint64_t a1, uint64_t a2)
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
    sub_100237784();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1001AD3C8(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1001AC5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FriendInfoOption(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(*v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v23 = v1;
    v24 = v4;
    v25 = v3;
    v26 = a1;
    v13 = ~v11;
    v14 = *(v4 + 72);
    while (1)
    {
      sub_1000181EC(*(v8 + 48) + v14 * v12, v7, type metadata accessor for FriendInfoOption);
      v15 = static HandleType.== infix(_:_:)();
      sub_100006E08(v7, type metadata accessor for FriendInfoOption);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a1 = v26;
        goto LABEL_10;
      }
    }

    v17 = v23;
    v18 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v17;
    v27 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237A68();
      v20 = v27;
    }

    a1 = v26;
    sub_100023DCC(*(v20 + 48) + v14 * v12, v26);
    sub_1001AD58C(v12);
    v16 = 0;
    *v17 = v27;
LABEL_10:
    v4 = v24;
    v3 = v25;
  }

  else
  {
    v16 = 1;
  }

  return (*(v4 + 56))(a1, v16, 1, v3);
}

uint64_t sub_1001AC818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10001C918(&qword_1005AE9B0, &type metadata accessor for Friend);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10001C918(&qword_1005AE9B8, &type metadata accessor for Friend);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237CA8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1001AD8A0(v16, &type metadata accessor for Friend, &qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1001ACB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10001C918(&qword_1005AECC0, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10001C918(&qword_1005A9FC8, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237C80();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1001AD8A0(v16, &type metadata accessor for UUID, &qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1001ACDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10001C918(&qword_1005AE9C0, &type metadata accessor for Device);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10001C918(&qword_1005AE9C8, &type metadata accessor for Device);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237CD0();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1001AD8A0(v16, &type metadata accessor for Device, &qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1001AD0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10001C918(&qword_1005AE9D0, &type metadata accessor for ClientID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10001C918(&qword_1005AE9D8, &type metadata accessor for ClientID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237CF8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1001AD8A0(v16, &type metadata accessor for ClientID, &qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

unint64_t sub_1001AD3C8(unint64_t result)
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

uint64_t sub_1001AD58C(int64_t a1)
{
  v28 = type metadata accessor for FriendInfoOption(0);
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v28);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v14 = (v13 + 1) & v11;
      v15 = *(v3 + 72);
      v29 = v15;
      v30 = v8;
      do
      {
        v16 = v15 * v10;
        v17 = v31;
        sub_1000181EC(*(v7 + 48) + v15 * v10, v31, type metadata accessor for FriendInfoOption);
        v18 = v7;
        v19 = *(v7 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for HandleType();
        sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType);
        v20 = v14;
        dispatch thunk of Hashable.hash(into:)();
        v21 = Hasher._finalize()();
        sub_100006E08(v17, type metadata accessor for FriendInfoOption);
        v22 = v21 & v11;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v22 < v20)
          {
            v7 = v18;
          }

          else
          {
            v7 = v18;
            if (a1 >= v22)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v7 = v18;
          if (v22 >= v14 || a1 >= v22)
          {
LABEL_13:
            v15 = v29;
            v23 = v29 * a1;
            if (v29 * a1 < v16 || *(v7 + 48) + v29 * a1 >= (*(v7 + 48) + v16 + v29))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v23 != v16)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_6;
          }
        }

        v15 = v29;
LABEL_6:
        v10 = (v10 + 1) & v11;
        v8 = v30;
      }

      while (((*(v30 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v7 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v26;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1001AD8A0(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = _HashTable.previousHole(before:)();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_10001C918(v44, v45);
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_1001ADBA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1001ADBD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7441657461657263 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449726576726573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xED0000726564724FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746F4E646574706FLL && a2 == 0xEF65726168536F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004E2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E2C50 == a2)
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

void sub_1001ADFF8()
{
  sub_10008B2BC(319, &qword_1005A9790);
  if (v0 <= 0x3F)
  {
    sub_1001AE238(319, &qword_1005AEA48, &type metadata accessor for IDSStatus);
    if (v1 <= 0x3F)
    {
      sub_10008B2BC(319, &qword_1005AC700);
      if (v2 <= 0x3F)
      {
        sub_1001AE28C(319, &qword_1005AC6F8, &qword_1005A9630, &qword_1004C5680);
        if (v3 <= 0x3F)
        {
          sub_1001AE28C(319, &qword_1005AEA50, &qword_1005AE840, &qword_1004CF2E8);
          if (v4 <= 0x3F)
          {
            sub_10008B2BC(319, &qword_1005AC708);
            if (v5 <= 0x3F)
            {
              sub_1001AE2E0();
              if (v6 <= 0x3F)
              {
                sub_1001AE238(319, &qword_1005AE910, &type metadata accessor for Handle);
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

void sub_1001AE238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1001AE28C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10004B610(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1001AE2E0()
{
  if (!qword_1005AEA58)
  {
    type metadata accessor for FriendInfoOption(255);
    sub_10001C918(&unk_1005AEA60, type metadata accessor for FriendInfoOption);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AEA58);
    }
  }
}

unint64_t sub_1001AE388()
{
  result = qword_1005AEB10;
  if (!qword_1005AEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB10);
  }

  return result;
}

unint64_t sub_1001AE3E0()
{
  result = qword_1005AEB18;
  if (!qword_1005AEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB18);
  }

  return result;
}

unint64_t sub_1001AE438()
{
  result = qword_1005AEB20;
  if (!qword_1005AEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB20);
  }

  return result;
}

unint64_t sub_1001AE490()
{
  result = qword_1005AEB28;
  if (!qword_1005AEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB28);
  }

  return result;
}

unint64_t sub_1001AE4E4()
{
  result = qword_1005AEB38;
  if (!qword_1005AEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB38);
  }

  return result;
}

unint64_t sub_1001AE538()
{
  result = qword_1005AEB58;
  if (!qword_1005AEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB58);
  }

  return result;
}

uint64_t sub_1001AE58C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AEB40, &qword_1004CF770);
    sub_10001C918(a2, type metadata accessor for FriendInfoOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001AE628()
{
  result = qword_1005AEB78;
  if (!qword_1005AEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FriendRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001AE7D0()
{
  result = qword_1005AEB80;
  if (!qword_1005AEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB80);
  }

  return result;
}

unint64_t sub_1001AE828()
{
  result = qword_1005AEB88;
  if (!qword_1005AEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB88);
  }

  return result;
}

unint64_t sub_1001AE880()
{
  result = qword_1005AEB90;
  if (!qword_1005AEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB90);
  }

  return result;
}

uint64_t sub_1001AE8D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E4720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E4740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C646E6168 && a2 == 0xEF73757461745373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7344656C646E6168 && a2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E4760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E4780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004E47A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6552656C646E6168 && a2 == 0xEF656C6261686361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E47C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E47E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E4800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E4820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E4840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E4860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004E4880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E48A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEF64697344656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004E48C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004E48E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E4900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E4920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E4940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004E4960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E4980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004E49A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004E49C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004E2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E2C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6E49646E65697266 && a2 == 0xEA00000000006F66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x7365707974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64)
  {

    return 32;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 32;
    }

    else
    {
      return 33;
    }
  }
}

uint64_t sub_1001AF2F0(id *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v52 - v15;
  v16 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v58 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v52 - v20;
  v22 = type metadata accessor for SharedSecretKey();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v55 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v52 - v27;
  v29 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v31 = type metadata accessor for FriendSharedSecretsRecord();
  v32 = *(v2 + v31[5]);
  v67 = &type metadata for UInt8;
  v68 = &protocol witness table for UInt8;
  LOBYTE(v65) = v32;
  CKRecordKeyValueSetting.subscript.setter();
  v33 = v31[6];
  v64 = v2;
  sub_100005F04(v2 + v33, v21, &qword_1005AEB98, &unk_1004D07C0);
  v57 = *(v23 + 48);
  v34 = v57(v21, 1, v22);
  v60 = v29;
  v61 = ObjectType;
  v53 = v23;
  if (v34 == 1)
  {
    sub_100002CE0(v21, &qword_1005AEB98, &unk_1004D07C0);
  }

  else
  {
    (*(v23 + 32))(v28, v21, v22);
    v35 = SharedSecretKey.data.getter();
    v67 = &type metadata for Data;
    v68 = &protocol witness table for Data;
    v65 = v35;
    v66 = v36;
    CKRecordKeyValueSetting.subscript.setter();
    (*(v23 + 8))(v28, v22);
  }

  sub_100005F04(v64 + v31[7], v9, &unk_1005AE5B0, &qword_1004C32F0);
  v37 = v62;
  v38 = v63;
  v39 = *(v63 + 48);
  if (v39(v9, 1, v62) == 1)
  {
    sub_100002CE0(v9, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v40 = v54;
    (*(v38 + 32))(v54, v9, v37);
    v67 = v37;
    v68 = &protocol witness table for Date;
    v41 = sub_10000331C(&v65);
    (*(v63 + 16))(v41, v40, v37);
    CKRecordKeyValueSetting.subscript.setter();
    v38 = v63;
    (*(v63 + 8))(v40, v37);
  }

  v42 = v58;
  sub_100005F04(v64 + v31[8], v58, &qword_1005AEB98, &unk_1004D07C0);
  if (v57(v42, 1, v22) == 1)
  {
    sub_100002CE0(v42, &qword_1005AEB98, &unk_1004D07C0);
  }

  else
  {
    v44 = v53;
    v45 = v55;
    (*(v53 + 32))(v55, v42, v22);
    v46 = SharedSecretKey.data.getter();
    v67 = &type metadata for Data;
    v68 = &protocol witness table for Data;
    v65 = v46;
    v66 = v47;
    CKRecordKeyValueSetting.subscript.setter();
    v38 = v63;
    (*(v44 + 8))(v45, v22);
  }

  v43 = v59;
  sub_100005F04(v64 + v31[9], v59, &unk_1005AE5B0, &qword_1004C32F0);
  v48 = v62;
  if (v39(v43, 1, v62) == 1)
  {
    swift_unknownObjectRelease();
    return sub_100002CE0(v43, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v50 = v56;
    (*(v38 + 32))(v56, v43, v48);
    v67 = v48;
    v68 = &protocol witness table for Date;
    v51 = sub_10000331C(&v65);
    (*(v38 + 16))(v51, v50, v48);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return (*(v38 + 8))(v50, v48);
  }
}

uint64_t sub_1001AF9DC(id *a1, _BYTE *a2, uint64_t a3)
{
  v139 = a2;
  v140 = a1;
  v127 = type metadata accessor for Date();
  v135 = *(v127 - 8);
  v4 = *(v135 + 64);
  __chkstk_darwin(v127);
  v123 = &v116[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v126 = &v116[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v122 = &v116[-v11];
  v12 = __chkstk_darwin(v10);
  v124 = &v116[-v13];
  __chkstk_darwin(v12);
  v119 = &v116[-v14];
  v132 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v15 = *(*(v132 - 8) + 64);
  v16 = __chkstk_darwin(v132);
  v138 = &v116[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v116[-v18];
  v141 = type metadata accessor for SharedSecretKey();
  v134 = *(v141 - 8);
  v20 = *(v134 + 64);
  __chkstk_darwin(v141);
  v121 = &v116[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v125 = &v116[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v120 = &v116[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v116[-v29];
  __chkstk_darwin(v28);
  v130 = &v116[-v31];
  v131 = sub_10004B564(&qword_1005AECE0, qword_1004CF9D0);
  v32 = *(*(v131 - 8) + 64);
  v33 = __chkstk_darwin(v131);
  v129 = &v116[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v36 = &v116[-v35];
  v37 = sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v41 = &v116[-v40];
  v42 = *(a3 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  v45 = &v116[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = type metadata accessor for FriendSharedSecretsRecord();
  v47 = *(v46 - 1);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = &v116[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v42 + 16))(v45, v139, a3);
  v51 = swift_dynamicCast();
  v52 = *(v47 + 56);
  if (v51)
  {
    v133 = v30;
    v52(v41, 0, 1, v46);
    sub_1001B1ABC(v41, v50);
    v140 = [*v140 encryptedValues];
    ObjectType = swift_getObjectType();
    v53 = v46[5];
    v54 = *(v137 + v53);
    v139 = v50;
    v55 = v50[v53];
    v56 = v137;
    if (v54 != v55)
    {
      *(&v143 + 1) = &type metadata for UInt8;
      v144 = &protocol witness table for UInt8;
      LOBYTE(v142) = v55;
      CKRecordKeyValueSetting.subscript.setter();
    }

    v57 = v46[6];
    v58 = *(v131 + 48);
    sub_100005F04(v56 + v57, v36, &qword_1005AEB98, &unk_1004D07C0);
    sub_100005F04(&v139[v57], &v36[v58], &qword_1005AEB98, &unk_1004D07C0);
    v59 = *(v134 + 48);
    v60 = v59(v36, 1, v141);
    v128 = v57;
    if (v60 == 1)
    {
      if (v59(&v36[v58], 1, v141) == 1)
      {
        sub_100002CE0(v36, &qword_1005AEB98, &unk_1004D07C0);
        goto LABEL_14;
      }
    }

    else
    {
      v61 = v130;
      sub_100005F04(v36, v130, &qword_1005AEB98, &unk_1004D07C0);
      if (v59(&v36[v58], 1, v141) != 1)
      {
        v118 = v59;
        v92 = v46;
        v93 = v134;
        v94 = &v36[v58];
        v95 = v121;
        v96 = v141;
        (*(v134 + 32))(v121, v94, v141);
        sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey);
        v117 = dispatch thunk of static Equatable.== infix(_:_:)();
        v97 = *(v93 + 8);
        v97(v95, v96);
        v98 = v96;
        v57 = v128;
        v97(v61, v98);
        v46 = v92;
        v59 = v118;
        sub_100002CE0(v36, &qword_1005AEB98, &unk_1004D07C0);
        if (v117)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      (*(v134 + 8))(v61, v141);
    }

    sub_100002CE0(v36, &qword_1005AECE0, qword_1004CF9D0);
LABEL_10:
    v62 = v133;
    sub_100005F04(&v139[v57], v133, &qword_1005AEB98, &unk_1004D07C0);
    if (v59(v62, 1, v141) == 1)
    {
      sub_100002CE0(v62, &qword_1005AEB98, &unk_1004D07C0);
      v142 = 0u;
      v143 = 0u;
      v144 = 0;
    }

    else
    {
      v63 = SharedSecretKey.data.getter();
      *(&v143 + 1) = &type metadata for Data;
      v144 = &protocol witness table for Data;
      *&v142 = v63;
      *(&v142 + 1) = v64;
      (*(v134 + 8))(v62, v141);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_14:
    v133 = v46;
    v65 = v46[7];
    v66 = *(v132 + 48);
    sub_100005F04(v56 + v65, v19, &unk_1005AE5B0, &qword_1004C32F0);
    v67 = v139;
    sub_100005F04(&v139[v65], &v19[v66], &unk_1005AE5B0, &qword_1004C32F0);
    v68 = *(v135 + 48);
    v69 = v127;
    v70 = (v68)(v19, 1, v127);
    v130 = v68;
    if (v70 == 1)
    {
      v71 = (v68)(&v19[v66], 1, v69);
      v72 = v69;
      v73 = v128;
      if (v71 == 1)
      {
        sub_100002CE0(v19, &unk_1005AE5B0, &qword_1004C32F0);
        v74 = v129;
        goto LABEL_24;
      }
    }

    else
    {
      v75 = v119;
      sub_100005F04(v19, v119, &unk_1005AE5B0, &qword_1004C32F0);
      if ((v68)(&v19[v66], 1, v69) != 1)
      {
        v118 = v59;
        v99 = v75;
        v100 = v135;
        v101 = v123;
        (*(v135 + 32))(v123, &v19[v66], v69);
        sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date);
        v117 = dispatch thunk of static Equatable.== infix(_:_:)();
        v102 = *(v100 + 8);
        v103 = v101;
        v67 = v139;
        v102(v103, v69);
        v104 = v99;
        v59 = v118;
        v102(v104, v69);
        sub_100002CE0(v19, &unk_1005AE5B0, &qword_1004C32F0);
        v72 = v69;
        v73 = v128;
        v74 = v129;
        if (v117)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      (*(v135 + 8))(v75, v69);
      v72 = v69;
      v73 = v128;
    }

    sub_100002CE0(v19, &qword_1005AAE00, &qword_1004C4A18);
    v74 = v129;
LABEL_20:
    v76 = v124;
    sub_100005F04(v67 + v65, v124, &unk_1005AE5B0, &qword_1004C32F0);
    if ((v130)(v76, 1, v72) == 1)
    {
      sub_100002CE0(v76, &unk_1005AE5B0, &qword_1004C32F0);
      v142 = 0u;
      v143 = 0u;
      v144 = 0;
    }

    else
    {
      *(&v143 + 1) = v72;
      v144 = &protocol witness table for Date;
      v77 = sub_10000331C(&v142);
      (*(v135 + 32))(v77, v76, v72);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_24:
    v78 = *(v131 + 48);
    sub_100005F04(v137 + v133[8], v74, &qword_1005AEB98, &unk_1004D07C0);
    sub_100005F04(v67 + v73, &v74[v78], &qword_1005AEB98, &unk_1004D07C0);
    if (v59(v74, 1, v141) == 1)
    {
      if (v59(&v74[v78], 1, v141) == 1)
      {
        sub_100002CE0(v74, &qword_1005AEB98, &unk_1004D07C0);
        goto LABEL_34;
      }
    }

    else
    {
      v79 = v120;
      sub_100005F04(v74, v120, &qword_1005AEB98, &unk_1004D07C0);
      if (v59(&v74[v78], 1, v141) != 1)
      {
        v105 = v74;
        v106 = v134;
        v107 = v121;
        v108 = v141;
        (*(v134 + 32))(v121, &v105[v78], v141);
        sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey);
        v118 = v59;
        LODWORD(v131) = dispatch thunk of static Equatable.== infix(_:_:)();
        v109 = *(v106 + 8);
        v109(v107, v108);
        v59 = v118;
        v109(v79, v108);
        sub_100002CE0(v129, &qword_1005AEB98, &unk_1004D07C0);
        if (v131)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

      (*(v134 + 8))(v79, v141);
    }

    sub_100002CE0(v74, &qword_1005AECE0, qword_1004CF9D0);
LABEL_30:
    v80 = v125;
    sub_100005F04(v67 + v133[8], v125, &qword_1005AEB98, &unk_1004D07C0);
    if (v59(v80, 1, v141) == 1)
    {
      sub_100002CE0(v80, &qword_1005AEB98, &unk_1004D07C0);
      v142 = 0u;
      v143 = 0u;
      v144 = 0;
    }

    else
    {
      v81 = SharedSecretKey.data.getter();
      *(&v143 + 1) = &type metadata for Data;
      v144 = &protocol witness table for Data;
      *&v142 = v81;
      *(&v142 + 1) = v82;
      (*(v134 + 8))(v80, v141);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_34:
    v83 = v133[9];
    v84 = *(v132 + 48);
    v85 = v138;
    sub_100005F04(v137 + v83, v138, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(v67 + v83, &v85[v84], &unk_1005AE5B0, &qword_1004C32F0);
    v86 = v130;
    if ((v130)(v85, 1, v72) == 1)
    {
      if ((v86)(&v138[v84], 1, v72) == 1)
      {
        swift_unknownObjectRelease();
        sub_100002CE0(v138, &unk_1005AE5B0, &qword_1004C32F0);
        return sub_1001B1B20(v67);
      }
    }

    else
    {
      v87 = v138;
      v88 = v122;
      sub_100005F04(v138, v122, &unk_1005AE5B0, &qword_1004C32F0);
      if ((v86)(&v87[v84], 1, v72) != 1)
      {
        v110 = v135;
        v111 = v138;
        v112 = v123;
        (*(v135 + 32))(v123, &v138[v84], v72);
        sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date);
        v113 = dispatch thunk of static Equatable.== infix(_:_:)();
        v114 = *(v110 + 8);
        v114(v112, v72);
        v114(v88, v72);
        v86 = v130;
        v115 = v111;
        v67 = v139;
        sub_100002CE0(v115, &unk_1005AE5B0, &qword_1004C32F0);
        if (v113)
        {
LABEL_44:
          swift_unknownObjectRelease();
          return sub_1001B1B20(v67);
        }

LABEL_40:
        v89 = v126;
        sub_100005F04(v67 + v83, v126, &unk_1005AE5B0, &qword_1004C32F0);
        if ((v86)(v89, 1, v72) == 1)
        {
          sub_100002CE0(v89, &unk_1005AE5B0, &qword_1004C32F0);
          v142 = 0u;
          v143 = 0u;
          v144 = 0;
        }

        else
        {
          *(&v143 + 1) = v72;
          v144 = &protocol witness table for Date;
          v90 = sub_10000331C(&v142);
          (*(v135 + 32))(v90, v89, v72);
        }

        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_44;
      }

      (*(v135 + 8))(v88, v72);
    }

    sub_100002CE0(v138, &qword_1005AAE00, &qword_1004C4A18);
    goto LABEL_40;
  }

  v52(v41, 1, 1, v46);
  sub_100002CE0(v41, &unk_1005AECE8, &qword_1004D07A0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B0C60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v3 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v93 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v92 = &v83[-v7];
  v8 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v88 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v87 = &v83[-v12];
  v13 = type metadata accessor for SharedSecretKey();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v86 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v85 = &v83[-v18];
  v19 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v98 = &v83[-v21];
  v100 = type metadata accessor for UUID();
  v105 = *(v100 - 8);
  v22 = *(v105 + 64);
  __chkstk_darwin(v100);
  v99 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for FriendSharedSecretsRecord();
  v25 = v24[6];
  v89 = v14;
  v26 = *(v14 + 56);
  v101 = v25;
  v26(a2 + v25, 1, 1, v13);
  v27 = v24[7];
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v104 = v27;
  v30(a2 + v27, 1, 1, v28);
  v102 = v24[8];
  v90 = v13;
  v32 = v13;
  v33 = a2;
  v94 = v26;
  v95 = v14 + 56;
  v26(a2 + v102, 1, 1, v32);
  v103 = v24[9];
  v91 = v28;
  v96 = v31;
  v97 = v30;
  v30(a2 + v103, 1, 1, v28);
  if (CKRecord.recordType.getter() == 0xD000000000000019 && 0x80000001004CF870 == v34)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      sub_1001A54BC();
      swift_allocError();
      *v69 = 0;
      swift_willThrow();

      goto LABEL_23;
    }
  }

  v36 = v106;
  v37 = [v106 recordID];
  v38 = [v37 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v98;
  UUID.init(uuidString:)();

  v40 = v105;
  v41 = v100;
  if ((*(v105 + 48))(v39, 1, v100) == 1)
  {
    sub_100002CE0(v39, &qword_1005A96E0, &qword_1004C2A80);
    sub_1001A54BC();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();

LABEL_23:
    sub_100002CE0(v33 + v101, &qword_1005AEB98, &unk_1004D07C0);
    sub_100002CE0(v33 + v104, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v33 + v102, &qword_1005AEB98, &unk_1004D07C0);
    return sub_100002CE0(v33 + v103, &unk_1005AE5B0, &qword_1004C32F0);
  }

  (*(v40 + 32))(v99, v39, v41);
  v43 = [v36 encryptedValues];
  v44 = String._bridgeToObjectiveC()();
  v45 = v43;
  v46 = [v43 objectForKeyedSubscript:v44];

  if (!v46 || (v107 = v46, v98 = sub_10004B564(&qword_1005AEC00, &qword_1004CEF48), (swift_dynamicCast() & 1) == 0))
  {
    sub_1001A54BC();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v105 + 8))(v99, v41);
    goto LABEL_23;
  }

  v84 = v108;
  v47 = String._bridgeToObjectiveC()();
  v48 = [v45 objectForKeyedSubscript:v47];

  v49 = v93;
  v51 = v89;
  v50 = v90;
  if (v48)
  {
    v108 = v48;
    if (swift_dynamicCast())
    {
      sub_1001B1B7C(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
      v52 = v87;
      KeyRepresenting.init(rawValue:)();
      if ((*(v51 + 48))(v52, 1, v50) != 1)
      {
        v76 = *(v51 + 32);
        v77 = v85;
        v76(v85, v52, v50);
        v53 = v101;
        sub_100002CE0(v33 + v101, &qword_1005AEB98, &unk_1004D07C0);
        v78 = v77;
        v49 = v93;
        v76((v33 + v53), v78, v50);
        v54 = 0;
        goto LABEL_14;
      }

      sub_100002CE0(v52, &qword_1005AEB98, &unk_1004D07C0);
    }
  }

  v53 = v101;
  sub_100002CE0(v33 + v101, &qword_1005AEB98, &unk_1004D07C0);
  v54 = 1;
LABEL_14:
  v94(v33 + v53, v54, 1, v50);
  v55 = String._bridgeToObjectiveC()();
  v56 = [v45 objectForKeyedSubscript:v55];

  v57 = v105;
  v58 = v33;
  if (v56)
  {
    v108 = v56;
    if (swift_dynamicCast())
    {
      sub_1001B1B7C(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
      v59 = v88;
      KeyRepresenting.init(rawValue:)();
      if ((*(v51 + 48))(v59, 1, v50) != 1)
      {
        v79 = *(v51 + 32);
        v80 = v86;
        v79(v86, v59, v50);
        v81 = v102;
        sub_100002CE0(v58 + v102, &qword_1005AEB98, &unk_1004D07C0);
        v82 = v80;
        v33 = v58;
        v79((v58 + v81), v82, v50);
        v60 = v81;
        v61 = 0;
        v57 = v105;
        goto LABEL_19;
      }

      sub_100002CE0(v59, &qword_1005AEB98, &unk_1004D07C0);
      v57 = v105;
    }
  }

  v60 = v102;
  sub_100002CE0(v33 + v102, &qword_1005AEB98, &unk_1004D07C0);
  v61 = 1;
LABEL_19:
  v94(v33 + v60, v61, 1, v50);
  (*(v57 + 16))(v33, v99, v100);
  *(v33 + v24[5]) = v84 == 1;
  v62 = String._bridgeToObjectiveC()();
  v63 = [v45 objectForKeyedSubscript:v62];

  if (v63)
  {
    v107 = v63;
    v65 = v91;
    v64 = v92;
    v66 = swift_dynamicCast() ^ 1;
    v67 = v64;
  }

  else
  {
    v65 = v91;
    v64 = v92;
    v67 = v92;
    v66 = 1;
  }

  v97(v67, v66, 1, v65);
  v71 = v106;
  sub_1000CF904(v64, v58 + v103);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v45 objectForKeyedSubscript:v72];
  swift_unknownObjectRelease();

  (*(v105 + 8))(v99, v100);
  if (v73)
  {
    v107 = v73;
    v74 = swift_dynamicCast() ^ 1;
    v75 = v49;
  }

  else
  {
    v75 = v49;
    v74 = 1;
  }

  v97(v75, v74, 1, v65);
  return sub_1000CF904(v49, v58 + v104);
}

uint64_t type metadata accessor for FriendSharedSecretsRecord()
{
  result = qword_1005AEC68;
  if (!qword_1005AEC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B18A0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1001B1988(319, qword_1005AEC78, &type metadata accessor for SharedSecretKey);
    if (v1 <= 0x3F)
    {
      sub_1001B1988(319, &qword_1005AE6B0, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B1988(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1001B1ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendSharedSecretsRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B1B20(uint64_t a1)
{
  v2 = type metadata accessor for FriendSharedSecretsRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B1B7C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1001B1BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v91 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v81 - v13;
  v96 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v14 = *(*(v96 - 8) + 64);
  v15 = __chkstk_darwin(v96);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v81 - v18;
  v20 = type metadata accessor for SharedSecretKey();
  v21 = *(v20 - 8);
  v97 = v20;
  v98 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v95 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v92 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v81 - v28;
  v30 = sub_10004B564(&qword_1005AECE0, qword_1004CF9D0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30);
  v93 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v81 - v34;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for FriendSharedSecretsRecord();
  if (*(a1 + *(v36 + 20)) != *(a2 + *(v36 + 20)))
  {
    return 0;
  }

  v84 = v8;
  v85 = v17;
  v90 = v5;
  v86 = v4;
  v87 = v36;
  v37 = *(v36 + 24);
  v38 = *(v30 + 48);
  v88 = a1;
  sub_100005F04(a1 + v37, v35, &qword_1005AEB98, &unk_1004D07C0);
  v89 = a2;
  sub_100005F04(a2 + v37, &v35[v38], &qword_1005AEB98, &unk_1004D07C0);
  v39 = v97;
  v40 = *(v98 + 48);
  if (v40(v35, 1, v97) == 1)
  {
    if (v40(&v35[v38], 1, v39) == 1)
    {
      v83 = v40;
      sub_100002CE0(v35, &qword_1005AEB98, &unk_1004D07C0);
      goto LABEL_10;
    }

LABEL_8:
    v41 = &qword_1005AECE0;
    v42 = qword_1004CF9D0;
    v43 = v35;
LABEL_30:
    sub_100002CE0(v43, v41, v42);
    return 0;
  }

  sub_100005F04(v35, v29, &qword_1005AEB98, &unk_1004D07C0);
  if (v40(&v35[v38], 1, v39) == 1)
  {
    (*(v98 + 8))(v29, v39);
    goto LABEL_8;
  }

  v83 = v40;
  v44 = v98;
  v45 = v95;
  (*(v98 + 32))(v95, &v35[v38], v39);
  sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v44 + 8);
  v47(v45, v39);
  v47(v29, v39);
  sub_100002CE0(v35, &qword_1005AEB98, &unk_1004D07C0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v48 = v87[7];
  v49 = *(v96 + 48);
  sub_100005F04(v88 + v48, v19, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v89 + v48, &v19[v49], &unk_1005AE5B0, &qword_1004C32F0);
  v50 = *(v90 + 48);
  v51 = v86;
  if (v50(v19, 1, v86) == 1)
  {
    if (v50(&v19[v49], 1, v51) == 1)
    {
      v82 = v50;
      sub_100002CE0(v19, &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v52 = v94;
  sub_100005F04(v19, v94, &unk_1005AE5B0, &qword_1004C32F0);
  if (v50(&v19[v49], 1, v51) == 1)
  {
    (*(v90 + 8))(v52, v51);
LABEL_15:
    v41 = &qword_1005AAE00;
    v42 = &qword_1004C4A18;
    v43 = v19;
    goto LABEL_30;
  }

  v82 = v50;
  v53 = v84;
  (*(v90 + 32))(v84, &v19[v49], v51);
  sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v90 + 8);
  v55(v53, v51);
  v55(v52, v51);
  sub_100002CE0(v19, &unk_1005AE5B0, &qword_1004C32F0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v56 = v87[8];
  v57 = *(v30 + 48);
  v58 = v93;
  sub_100005F04(v88 + v56, v93, &qword_1005AEB98, &unk_1004D07C0);
  v59 = v97;
  sub_100005F04(v89 + v56, v58 + v57, &qword_1005AEB98, &unk_1004D07C0);
  v60 = v83;
  if (v83(v58, 1, v59) != 1)
  {
    v63 = v92;
    sub_100005F04(v58, v92, &qword_1005AEB98, &unk_1004D07C0);
    v64 = v60(v58 + v57, 1, v59);
    v62 = v85;
    if (v64 != 1)
    {
      v65 = v98;
      v66 = v58 + v57;
      v67 = v95;
      (*(v98 + 32))(v95, v66, v59);
      sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey);
      v68 = dispatch thunk of static Equatable.== infix(_:_:)();
      v69 = *(v65 + 8);
      v69(v67, v59);
      v69(v63, v59);
      sub_100002CE0(v58, &qword_1005AEB98, &unk_1004D07C0);
      if ((v68 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v98 + 8))(v63, v59);
    goto LABEL_22;
  }

  v61 = v60(v58 + v57, 1, v59);
  v62 = v85;
  if (v61 != 1)
  {
LABEL_22:
    v41 = &qword_1005AECE0;
    v42 = qword_1004CF9D0;
    v43 = v58;
    goto LABEL_30;
  }

  sub_100002CE0(v58, &qword_1005AEB98, &unk_1004D07C0);
LABEL_24:
  v70 = v87[9];
  v71 = *(v96 + 48);
  sub_100005F04(v88 + v70, v62, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v89 + v70, v62 + v71, &unk_1005AE5B0, &qword_1004C32F0);
  v72 = v86;
  v73 = v82;
  if (v82(v62, 1, v86) == 1)
  {
    if (v73(v62 + v71, 1, v72) == 1)
    {
      sub_100002CE0(v62, &unk_1005AE5B0, &qword_1004C32F0);
      return 1;
    }

    goto LABEL_29;
  }

  v74 = v91;
  sub_100005F04(v62, v91, &unk_1005AE5B0, &qword_1004C32F0);
  if (v73(v62 + v71, 1, v72) == 1)
  {
    (*(v90 + 8))(v74, v72);
LABEL_29:
    v41 = &qword_1005AAE00;
    v42 = &qword_1004C4A18;
    v43 = v62;
    goto LABEL_30;
  }

  v76 = v90;
  v77 = v62 + v71;
  v78 = v84;
  (*(v90 + 32))(v84, v77, v72);
  sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date);
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();
  v80 = *(v76 + 8);
  v80(v78, v72);
  v80(v74, v72);
  sub_100002CE0(v62, &unk_1005AE5B0, &qword_1004C32F0);
  return (v79 & 1) != 0;
}

uint64_t sub_1001B26D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(16);

  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x203A617461640ALL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v7);

  return 0x203A79656BLL;
}

uint64_t type metadata accessor for OwnerSharedSecretsRecord()
{
  result = qword_1005AED58;
  if (!qword_1005AED58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B2818()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SharedSecretKey();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

Swift::Int sub_1001B28CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B2940()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_BYTE *sub_1001B2984@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1001B2A64()
{
  result = qword_1005AED98;
  if (!qword_1005AED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AED98);
  }

  return result;
}

uint64_t sub_1001B2AB8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AEDC8, &qword_1004CFC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001B3968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for UUID();
  sub_1001B3B24(&qword_1005AAB60, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for OwnerSharedSecretsRecord();
    v15[14] = *(v3 + v11[5]);
    v15[13] = 1;
    sub_1001B3AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[6];
    v15[12] = 2;
    type metadata accessor for SharedSecretKey();
    sub_1001B3B24(&qword_1005AEDD8, &type metadata accessor for SharedSecretKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[7];
    v15[11] = 3;
    type metadata accessor for Date();
    sub_1001B3B24(&qword_1005A9848, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001B2D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for Date();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedSecretKey();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v37 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10004B564(&qword_1005AEDA8, &qword_1004CFC50);
  v38 = *(v40 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v40);
  v14 = &v30 - v13;
  v15 = type metadata accessor for OwnerSharedSecretsRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001B3968();
  v39 = v14;
  v20 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100004984(a1);
  }

  v21 = v8;
  v41 = v15;
  v22 = v18;
  v24 = v35;
  v23 = v36;
  v46 = 0;
  sub_1001B3B24(&qword_1005AAB30, &type metadata accessor for UUID);
  v25 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = *(v34 + 32);
  v37 = v9;
  v26(v22, v25, v9);
  v44 = 1;
  sub_1001B39BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v41;
  *(v22 + *(v41 + 20)) = v45;
  v43 = 2;
  sub_1001B3B24(&qword_1005AEDC0, &type metadata accessor for SharedSecretKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v22 + *(v27 + 24), v21, v23);
  v42 = 3;
  sub_1001B3B24(&qword_1005A9820, &type metadata accessor for Date);
  v28 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 8))(v39, v40);
  (*(v30 + 32))(v22 + *(v27 + 28), v33, v28);
  sub_1001B3A10(v22, v31);
  sub_100004984(a1);
  return sub_1001B3A74(v22);
}

uint64_t sub_1001B3358()
{
  v1 = 25705;
  v2 = 0x6553646572616873;
  if (*v0 != 2)
  {
    v2 = 0x6574614465736162;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1001B33C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B3CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B33F0(uint64_t a1)
{
  v2 = sub_1001B3968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B342C(uint64_t a1)
{
  v2 = sub_1001B3968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B349C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001B362C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000049D0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001FC6D0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000049D0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001B362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001FC6D0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1001B36E4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_100005F6C(a3, a4);
          return sub_1001B349C(v13, a2, a3, a4) & 1;
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

uint64_t sub_1001B384C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for OwnerSharedSecretsRecord();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  type metadata accessor for SharedSecretKey();
  sub_1001B3B24(&qword_1005AEDA0, &type metadata accessor for SharedSecretKey);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = sub_1001B36E4(v13, v14, v11, v12);
  sub_1000049D0(v11, v12);
  sub_1000049D0(v13, v14);
  if (v7)
  {
    v8 = *(v5 + 28);
    v9 = static Date.== infix(_:_:)();
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1001B3968()
{
  result = qword_1005AEDB0;
  if (!qword_1005AEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDB0);
  }

  return result;
}

unint64_t sub_1001B39BC()
{
  result = qword_1005AEDB8;
  if (!qword_1005AEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDB8);
  }

  return result;
}

uint64_t sub_1001B3A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharedSecretsRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3A74(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharedSecretsRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B3AD0()
{
  result = qword_1005AEDD0;
  if (!qword_1005AEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDD0);
  }

  return result;
}

uint64_t sub_1001B3B24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001B3B6C()
{
  result = qword_1005AEDE0;
  if (!qword_1005AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDE0);
  }

  return result;
}

unint64_t sub_1001B3BD4()
{
  result = qword_1005AEDE8;
  if (!qword_1005AEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDE8);
  }

  return result;
}

unint64_t sub_1001B3C2C()
{
  result = qword_1005AEDF0;
  if (!qword_1005AEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDF0);
  }

  return result;
}

unint64_t sub_1001B3C84()
{
  result = qword_1005AEDF8;
  if (!qword_1005AEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEDF8);
  }

  return result;
}

uint64_t sub_1001B3CD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574614465736162 && a2 == 0xE800000000000000)
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

uint64_t sub_1001B3E50()
{
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v43 = v44[0];
  v1._countAndFlagsBits = 0x203A6F666E49796DLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2 = v0[3];
  v55 = v0[2];
  v56 = v2;
  v3 = v0[5];
  v57 = v0[4];
  v58 = v3;
  v4 = v0[1];
  v53 = *v0;
  v54 = v4;
  v5._countAndFlagsBits = sub_100032B70();
  String.append(_:)(v5);

  v6._object = 0x80000001004E4AD0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7 = v0[13];
  v8 = v0[11];
  v49 = v0[12];
  v50 = v7;
  v9 = v0[13];
  v10 = v0[15];
  v51 = v0[14];
  v52 = v10;
  v11 = v0[9];
  v12 = v0[7];
  v45 = v0[8];
  v46 = v11;
  v13 = v0[9];
  v14 = v0[11];
  v47 = v0[10];
  v48 = v14;
  v15 = v0[7];
  v44[0] = v0[6];
  v44[1] = v15;
  v39 = v49;
  v40 = v9;
  v16 = v0[15];
  v41 = v51;
  v42 = v16;
  v35 = v45;
  v36 = v13;
  v37 = v47;
  v38 = v8;
  v33 = v44[0];
  v34 = v12;
  sub_100005F04(v44, v32, &qword_1005A9328, &unk_1004C7F20);
  sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x437265767265730ALL;
  v18._object = 0xEF203A6769666E6FLL;
  String.append(_:)(v18);
  v19 = v0[23];
  v39 = v0[22];
  v40 = v19;
  v41 = v0[24];
  v20 = v0[19];
  v35 = v0[18];
  v36 = v20;
  v21 = v0[21];
  v37 = v0[20];
  v38 = v21;
  v22 = v0[17];
  v33 = v0[16];
  v34 = v22;
  sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x507265767265730ALL;
  v24._object = 0xEE00203A73666572;
  String.append(_:)(v24);
  v25 = v0[26];
  v26 = v0[28];
  v35 = v0[27];
  v36 = v26;
  v27 = v0[28];
  v37 = v0[29];
  v28 = v0[26];
  v33 = v0[25];
  v34 = v28;
  v32[2] = v35;
  v32[3] = v27;
  v32[4] = v0[29];
  v32[0] = v33;
  v32[1] = v25;
  sub_100005F04(&v33, &v31, &qword_1005AD7A8, &qword_1004CA280);
  sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  return v43;
}

uint64_t sub_1001B40E0(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AEE10, &qword_1004CFF18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v36 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001B53EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[3];
  v12 = v3[1];
  v78 = v3[2];
  v79 = v11;
  v13 = v3[3];
  v14 = v3[5];
  v80 = v3[4];
  v81 = v14;
  v15 = v3[1];
  v77[0] = *v3;
  v77[1] = v15;
  v60 = v78;
  v61 = v13;
  v16 = v3[5];
  v62 = v80;
  v63 = v16;
  v58 = v77[0];
  v59 = v12;
  v84 = 0;
  sub_100032B38(v77, &v47);
  sub_1001B54A8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    v47 = v58;
    v48 = v59;
    sub_100032B08(&v47);
  }

  else
  {
    v57[2] = v60;
    v57[3] = v61;
    v57[4] = v62;
    v57[5] = v63;
    v57[0] = v58;
    v57[1] = v59;
    sub_100032B08(v57);
    v17 = v3[13];
    v18 = v3[11];
    v73 = v3[12];
    v74 = v17;
    v19 = v3[13];
    v20 = v3[15];
    v75 = v3[14];
    v76 = v20;
    v21 = v3[9];
    v22 = v3[7];
    v69 = v3[8];
    v70 = v21;
    v23 = v3[9];
    v24 = v3[11];
    v71 = v3[10];
    v72 = v24;
    v25 = v3[7];
    v68[0] = v3[6];
    v68[1] = v25;
    v53 = v73;
    v54 = v19;
    v26 = v3[15];
    v55 = v75;
    v56 = v26;
    v49 = v69;
    v50 = v23;
    v51 = v71;
    v52 = v18;
    v47 = v68[0];
    v48 = v22;
    v83 = 1;
    sub_100005F04(v68, v46, &qword_1005A9328, &unk_1004C7F20);
    sub_100145258();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v46[6] = v53;
    v46[7] = v54;
    v46[8] = v55;
    v46[9] = v56;
    v46[2] = v49;
    v46[3] = v50;
    v46[4] = v51;
    v46[5] = v52;
    v46[0] = v47;
    v46[1] = v48;
    sub_100002CE0(v46, &qword_1005A9328, &unk_1004C7F20);
    v27 = v3[23];
    v43 = v3[22];
    v44 = v27;
    v45 = v3[24];
    v28 = v3[19];
    v39 = v3[18];
    v40 = v28;
    v29 = v3[21];
    v41 = v3[20];
    v42 = v29;
    v30 = v3[17];
    v37 = v3[16];
    v38 = v30;
    LOBYTE(v36[0]) = 2;
    sub_1001B54FC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32 = v3[26];
    v33 = v3[28];
    v65 = v3[27];
    v66 = v33;
    v34 = v3[28];
    v67 = v3[29];
    v35 = v3[26];
    v64[0] = v3[25];
    v64[1] = v35;
    v39 = v65;
    v40 = v34;
    v41 = v3[29];
    v37 = v64[0];
    v38 = v32;
    v82 = 3;
    sub_100005F04(v64, v36, &qword_1005AD7A8, &qword_1004CA280);
    sub_1001B5550();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36[2] = v39;
    v36[3] = v40;
    v36[4] = v41;
    v36[0] = v37;
    v36[1] = v38;
    sub_100002CE0(v36, &qword_1005AD7A8, &qword_1004CA280);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001B451C()
{
  v1 = 0x6F666E49796DLL;
  v2 = 0x6769666E6F63;
  if (*v0 != 2)
  {
    v2 = 0x7366657270;
  }

  if (*v0)
  {
    v1 = 0x747865746E6F63;
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

uint64_t sub_1001B458C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B4E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B45B4(uint64_t a1)
{
  v2 = sub_1001B53EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B45F0(uint64_t a1)
{
  v2 = sub_1001B53EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001B462C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001B4FAC(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x1E0uLL);
  }

  return result;
}
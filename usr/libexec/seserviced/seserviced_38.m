unint64_t sub_100324404()
{
  result = qword_10050AFB0;
  if (!qword_10050AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFB0);
  }

  return result;
}

uint64_t sub_100324458(uint64_t a1, int a2)
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

uint64_t sub_1003244A0(uint64_t result, int a2, int a3)
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

uint64_t sub_100324518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100324560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003245BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100324604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100324664()
{
  result = qword_10050AFC0;
  if (!qword_10050AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFC0);
  }

  return result;
}

uint64_t sub_1003246B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50676E69796C6572 && a2 == 0xEC00000079747261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010046EDA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4879654B6F646966 && a2 == 0xEB00000000687361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614479654B7470 && a2 == 0xE900000000000061)
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

uint64_t sub_100324834@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_10050AFC8, &qword_100415BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100324664();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  LOBYTE(v32) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v12;
  LOBYTE(v32) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v14;
  v24 = v13;
  LOBYTE(v28) = 2;
  v25 = sub_1000B87D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v32;
  v39 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v22 = *(&v38 + 1);
  v25 = v38;
  v16 = v26;
  v15 = v27;
  *&v28 = v11;
  *(&v28 + 1) = v27;
  v17 = v24;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  v18 = v23;
  v30 = v23;
  v31 = v38;
  sub_100324B98(&v28, &v32);
  sub_1000752F4(a1);
  *&v32 = v11;
  *(&v32 + 1) = v15;
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v36 = v25;
  v37 = v22;
  result = sub_100322510(&v32);
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  return result;
}

uint64_t sub_100324BD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
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

uint64_t sub_100324CEC(uint64_t *a1)
{
  v3 = sub_100068FC4(&qword_10050B020, &qword_100415C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1003253E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000752F4(a1);
  return v8;
}

uint64_t sub_100324ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144746E65696C63 && a2 == 0xEE004E4F534A6174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010046EDC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
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

uint64_t sub_100325000@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_10050AFD0, &qword_100415BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100325294();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  LOBYTE(v25) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = a2;
  v24 = v11;
  LOBYTE(v25) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v27 = 2;
  sub_1000B87D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v25;
  v18 = v26;

  sub_100069E2C(v17, v18);
  sub_1000752F4(a1);

  result = sub_10006A178(v17, v18);
  v20 = v23;
  *v23 = v24;
  v20[1] = v13;
  v20[2] = v22;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  return result;
}

unint64_t sub_100325294()
{
  result = qword_10050AFD8;
  if (!qword_10050AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFD8);
  }

  return result;
}

unint64_t sub_1003252E8()
{
  result = qword_10050AFE8;
  if (!qword_10050AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFE8);
  }

  return result;
}

unint64_t sub_10032533C()
{
  result = qword_10050AFF8;
  if (!qword_10050AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFF8);
  }

  return result;
}

unint64_t sub_100325390()
{
  result = qword_10050B000;
  if (!qword_10050B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B000);
  }

  return result;
}

unint64_t sub_1003253E4()
{
  result = qword_10050B010;
  if (!qword_10050B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B010);
  }

  return result;
}

uint64_t sub_100325438(uint64_t *a1)
{
  v3 = sub_100068FC4(&qword_10050B0C0, &qword_100416218);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000752B0(a1, v8);
  sub_100326070();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    v10[15] = 1;
    sub_1003260C4(&qword_100506868, sub_1000B87D4);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000752F4(a1);
  return v8;
}

uint64_t sub_10032563C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630182 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746D7453747461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614468747561 && a2 == 0xE800000000000000)
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

uint64_t sub_100325754@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_10050B028, &qword_100415C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10032533C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000752F4(a1);
  }

  else
  {
    LOBYTE(v21) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v20 = v11;
    v23 = 1;
    sub_100325A00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v22;
    v19 = v21;
    v23 = 2;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v15 = v21;
    v16 = v22;

    sub_100069E2C(v15, v16);
    sub_1000752F4(a1);

    result = sub_10006A178(v15, v16);
    v18 = v19;
    *a2 = v20;
    a2[1] = v13;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v15;
    a2[5] = v16;
  }

  return result;
}

unint64_t sub_100325A00()
{
  result = qword_10050B030;
  if (!qword_10050B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B030);
  }

  return result;
}

uint64_t sub_100325AB4(uint64_t a1, int a2)
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

uint64_t sub_100325AFC(uint64_t result, int a2, int a3)
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

unint64_t sub_100325B4C()
{
  result = qword_10050B038;
  if (!qword_10050B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B038);
  }

  return result;
}

unint64_t sub_100325BA4()
{
  result = qword_10050B040;
  if (!qword_10050B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B040);
  }

  return result;
}

unint64_t sub_100325BFC()
{
  result = qword_10050B048;
  if (!qword_10050B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B048);
  }

  return result;
}

unint64_t sub_100325C54()
{
  result = qword_10050B050;
  if (!qword_10050B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B050);
  }

  return result;
}

unint64_t sub_100325CAC()
{
  result = qword_10050B058;
  if (!qword_10050B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B058);
  }

  return result;
}

unint64_t sub_100325D04()
{
  result = qword_10050B060;
  if (!qword_10050B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B060);
  }

  return result;
}

unint64_t sub_100325D5C()
{
  result = qword_10050B068;
  if (!qword_10050B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B068);
  }

  return result;
}

unint64_t sub_100325DB4()
{
  result = qword_10050B070;
  if (!qword_10050B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B070);
  }

  return result;
}

unint64_t sub_100325E0C()
{
  result = qword_10050B078;
  if (!qword_10050B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B078);
  }

  return result;
}

unint64_t sub_100325E64()
{
  result = qword_10050B080;
  if (!qword_10050B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B080);
  }

  return result;
}

unint64_t sub_100325EBC()
{
  result = qword_10050B088;
  if (!qword_10050B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B088);
  }

  return result;
}

unint64_t sub_100325F14()
{
  result = qword_10050B090;
  if (!qword_10050B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B090);
  }

  return result;
}

unint64_t sub_100325F6C()
{
  result = qword_10050B098;
  if (!qword_10050B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B098);
  }

  return result;
}

unint64_t sub_100325FC4()
{
  result = qword_10050B0A0;
  if (!qword_10050B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0A0);
  }

  return result;
}

unint64_t sub_10032601C()
{
  result = qword_10050B0A8;
  if (!qword_10050B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0A8);
  }

  return result;
}

unint64_t sub_100326070()
{
  result = qword_10050B0B8;
  if (!qword_10050B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0B8);
  }

  return result;
}

uint64_t sub_1003260C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100502458, &qword_10040C1F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100326150()
{
  result = qword_10050B0C8;
  if (!qword_10050B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0C8);
  }

  return result;
}

unint64_t sub_1003261A8()
{
  result = qword_10050B0D0;
  if (!qword_10050B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0D0);
  }

  return result;
}

unint64_t sub_100326200()
{
  result = qword_10050B0D8;
  if (!qword_10050B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0D8);
  }

  return result;
}

uint64_t sub_100326260()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10050B0E0);
  sub_1000958E4(v0, qword_10050B0E0);
  return Logger.init(subsystem:category:)();
}

void sub_1003262E0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v30 = [v0 initWithSuiteName:v1];

  if (!v30)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10050B0E0);
    v30 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x800000010046EE80, &v31);
      _os_log_impl(&_mh_execute_header, v30, v5, "%s -- unable to initialize Settings Suite!?", v6, 0xCu);
      sub_1000752F4(v7);
    }

    goto LABEL_21;
  }

  v2 = objc_allocWithZone(LSApplicationRecord);
  v8 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v9 = [v8 localizedName];
  v10 = v9;
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v30 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == 0xD000000000000012 && 0x8000000100465B40 == v15)
    {

LABEL_16:
      if (qword_100501D68 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_10050B0E0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Passbook is already default -- no op", v20, 2u);
      }

LABEL_21:
      v3 = v30;
      goto LABEL_22;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {

      goto LABEL_16;
    }
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  [v30 setValue:v21 forKey:v22];

  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v24 = String._bridgeToObjectiveC()();
  [v30 setValue:isa forKey:v24];

  v25 = String._bridgeToObjectiveC()();
  [v30 setValue:v10 forKey:v25];

  if (qword_100501D68 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_10050B0E0);
  oslog = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v27, "Configured passbook as default", v28, 2u);
  }

  v3 = oslog;
LABEL_22:
}

void sub_10032690C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v24 = [v0 initWithSuiteName:v1];

  if (!v24)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10050B0E0);
    v24 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v24, v13, "Unable to initialize Settings Suite!?", v14, 2u);
    }

    goto LABEL_20;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v24 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10050B0E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Migrating from v1 schema to v3", v10, 2u);
    }

    v11 = objc_allocWithZone(LSApplicationRecord);
    v19 = sub_10013FCB4(v4, v6, 1);
    v20 = [v19 localizedName];
    v21 = v20;
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    v22 = String._bridgeToObjectiveC()();
    [v24 setValue:v21 forKey:v22];

LABEL_20:
    v18 = v24;
    goto LABEL_21;
  }

  if (qword_100501D68 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000958E4(v15, qword_10050B0E0);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, "No default app, nothing to migrate", v17, 2u);
  }

  v18 = oslog;
LABEL_21:
}

void sub_100326DF8(uint64_t *a1@<X8>)
{
  if (qword_100501D68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10050B0E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current Default app?", v5, 2u);
  }

  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (!v8)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "We are super doomed -- unable to initialize Settings Suite!?", v18, 2u);
    }

    goto LABEL_35;
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 stringForKey:v9];

  if (!v10)
  {

    v11 = 0;
    v13 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_36;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

    sub_1001B5024(&v39);
LABEL_35:
    v11 = 0;
    v13 = 0;
    v19 = 0;
    v20 = 0;
    v10 = 0;
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_34:

    goto LABEL_35;
  }

  v19 = v36;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v8 stringForKey:v21];

  if (!v22)
  {

    sub_10032690C();
    v27 = String._bridgeToObjectiveC()();
    v28 = [v8 stringForKey:v27];

    if (v28)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v29;

      v30 = String._bridgeToObjectiveC()();
      v31 = [v8 objectForKey:v30];

      if (v31)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39 = v37;
      v40 = v38;
      if (*(&v38 + 1))
      {
        if (swift_dynamicCast())
        {
          v19 = v36;
          v32 = String._bridgeToObjectiveC()();
          v22 = [v8 stringForKey:v32];

          if (v22)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {

        sub_1001B5024(&v39);
      }
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Default app localized name missing even after migration", v35, 2u);
    }

    goto LABEL_34;
  }

LABEL_17:
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v23;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *&v39 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_1002FFA0C(v11, v13, &v39);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1002FFA0C(v20, v10, &v39);
    _os_log_impl(&_mh_execute_header, v24, v25, "Default App %s with display name %s", v26, 0x16u);
    swift_arrayDestroy();
  }

LABEL_36:
  *a1 = v11;
  a1[1] = v13;
  a1[2] = v19;
  a1[3] = v20;
  a1[4] = v10;
}

void sub_10032743C(uint64_t *a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    [v4 setValue:v7 forKey:v8];

    v22 = a1[2];
    type metadata accessor for NFWalletDomain(0);
    v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v10 = String._bridgeToObjectiveC()();
    [v4 setValue:v9 forKey:v10];
    swift_unknownObjectRelease();

    v11 = a1[3];
    v12 = a1[4];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    [v4 setValue:v13 forKey:v14];

    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v4 setValue:isa forKey:v16];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000958E4(v17, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1002FFA0C(0xD000000000000011, 0x800000010046F0E0, &v22);
      _os_log_impl(&_mh_execute_header, oslog, v18, "%s -- unable to initialize Settings Suite!?", v19, 0xCu);
      sub_1000752F4(v20);
    }

    else
    {
    }
  }
}

void sub_100327738()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    [v2 setValue:0 forKey:v3];

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v2 setValue:isa forKey:v5];

    oslog = String._bridgeToObjectiveC()();
    [v2 setValue:0 forKey:oslog];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1002FFA0C(0xD000000000000016, 0x800000010046F120, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%s -- unable to initialize Settings Suite!?", v8, 0xCu);
      sub_1000752F4(v9);
    }
  }
}

id sub_10032798C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10050B0E0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1002FFA0C(0xD000000000000013, 0x800000010046F100, &v11);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s -- unable to initialize Settings Suite!?", v8, 0xCu);
      sub_1000752F4(v9);
    }

    return 0;
  }

  return v4;
}

void sub_100327B64()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10050B0E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Performing migration from v2 to v4", v6, 2u);
    }

    v7 = String._bridgeToObjectiveC()();
    v8 = [v2 BOOLForKey:v7];

    v9 = String._bridgeToObjectiveC()();
    [v2 setBool:v8 forKey:v9];

    v10 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v10];

    v11 = String._bridgeToObjectiveC()();
    v12 = [v2 BOOLForKey:v11];

    v13 = String._bridgeToObjectiveC()();
    [v2 setBool:v12 forKey:v13];

    v14 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v14];

    v15 = String._bridgeToObjectiveC()();
    v16 = [v2 BOOLForKey:v15];

    v17 = String._bridgeToObjectiveC()();
    [v2 setBool:v16 forKey:v17];

    v18 = String._bridgeToObjectiveC()();
    [v2 setBool:v16 forKey:v18];

    v19 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v19];

    v20 = String._bridgeToObjectiveC()();
    v21 = [v2 objectForKey:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      sub_100068FC4(&unk_100503EC0, &unk_100417130);
      swift_dynamicCast();
    }

    else
    {
      sub_1001B5024(&v40);
    }

    sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = String._bridgeToObjectiveC()();
    [v2 setObject:isa forKey:v26];

    v27 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v27];

    v28 = String._bridgeToObjectiveC()();
    v29 = [v2 stringForKey:v28];

    v30 = String._bridgeToObjectiveC()();
    [v2 setObject:v29 forKey:v30];

    v31 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v31];

    v32 = PKDoubleClickAllowed();
    v33 = String._bridgeToObjectiveC()();
    [v2 setBool:v32 forKey:v33];

    v40 = 0u;
    v41 = 0u;
    v42 = 1;
    LOBYTE(v32) = sub_100306124(6, &v40, 0, 0);
    v34 = String._bridgeToObjectiveC()();
    [v2 setBool:v32 & 1 forKey:v34];

    LOBYTE(v32) = sub_100306124(4, &v40, 0, 0);
    v35 = String._bridgeToObjectiveC()();
    [v2 setBool:v32 & 1 forKey:v35];

    v36 = String._bridgeToObjectiveC()();
    [v2 setInteger:4 forKey:v36];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000958E4(v22, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unable to initialize Settings Suite!?", v24, 2u);
    }
  }
}

void sub_10032828C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10050B0E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Performing migration from v3 to v4", v6, 2u);
    }

    memset(v13, 0, sizeof(v13));
    v14 = 1;
    v7 = sub_100306124(4, v13, 0, 0);
    v8 = String._bridgeToObjectiveC()();
    [v2 setBool:v7 & 1 forKey:v8];

    oslog = String._bridgeToObjectiveC()();
    [v2 setInteger:4 forKey:?];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Unable to initialize Settings Suite!?", v11, 2u);
    }
  }
}

uint64_t sub_100328518()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001B5024(&v57);
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    sub_1001B5024(&v57);
    sub_100327B64();
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 integerForKey:v5];

  if (v6 == 3)
  {
    sub_10032828C();
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 BOOLForKey:v7];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v2 BOOLForKey:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = [v2 BOOLForKey:v11];

  v13 = String._bridgeToObjectiveC()();
  v14 = [v2 BOOLForKey:v13];

  v15 = String._bridgeToObjectiveC()();
  v16 = [v2 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57 = v55;
  v58 = v56;
  v51 = v12;
  v52 = v8;
  if (*(&v56 + 1))
  {
    sub_100068FC4(&unk_100503EC0, &unk_100417130);
    if (swift_dynamicCast())
    {
      v17 = v54;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1001B5024(&v57);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:
  v18 = String._bridgeToObjectiveC()();
  v19 = [v2 BOOLForKey:v18];

  v20 = String._bridgeToObjectiveC()();
  v21 = v2;
  v22 = v20;
  v53 = v21;
  v23 = [v21 BOOLForKey:v20];

  v24 = 0;
  v25 = v17[2];
  v26 = _swiftEmptyArrayStorage;
LABEL_16:
  v27 = v24;
  while (v25 != v27)
  {
    if (v27 >= v17[2])
    {
      __break(1u);
      goto LABEL_30;
    }

    v24 = v27 + 1;
    v28 = v17[v27 + 4];

    sub_1000B67A0(v29, &v57);
    v30 = *(&v57 + 1);
    v27 = v24;
    if (*(&v57 + 1))
    {
      v48 = v23;
      v49 = v19;
      v50 = v14;
      v31 = v57;
      v46 = *(&v58 + 1);
      v47 = v58;
      v32 = v59;
      v33 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10012F2E4(0, *(v26 + 2) + 1, 1, v26);
      }

      v35 = *(v26 + 2);
      v34 = *(v26 + 3);
      if (v35 >= v34 >> 1)
      {
        v26 = sub_10012F2E4((v34 > 1), v35 + 1, 1, v26);
      }

      *(v26 + 2) = v35 + 1;
      v36 = &v26[40 * v35];
      *(v36 + 4) = v31;
      *(v36 + 5) = v30;
      *(v36 + 6) = v47;
      *(v36 + 7) = v46;
      *(v36 + 8) = v32;
      v10 = v33;
      v19 = v49;
      v14 = v50;
      v23 = v48;
      goto LABEL_16;
    }
  }

  type metadata accessor for SECSettingsPaneReconciler.PaneConfig();
  v17 = swift_allocObject();
  *(v17 + 16) = v52;
  *(v17 + 17) = v10;
  *(v17 + 18) = v51;
  *(v17 + 19) = v14;
  *(v17 + 20) = v19;
  *(v17 + 21) = v23;
  v17[3] = v26;
  if (qword_100501D68 == -1)
  {
    goto LABEL_26;
  }

LABEL_30:
  swift_once();
LABEL_26:
  v37 = type metadata accessor for Logger();
  sub_1000958E4(v37, qword_10050B0E0);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v55 = v41;
    *v40 = 136315138;
    v42 = sub_1001B25BC();
    v44 = sub_1002FFA0C(v42, v43, &v55);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "Read current Pane Config %s", v40, 0xCu);
    sub_1000752F4(v41);
  }

  return v17;
}

void sub_100328B10(void *a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    if (qword_100501D68 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      sub_1000958E4(v5, qword_10050B0E0);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v73 = v9;
        *v8 = 136315138;
        v10 = sub_1001B25BC();
        v12 = sub_1002FFA0C(v10, v11, &v73);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Writing Pane Config %s", v8, 0xCu);
        sub_1000752F4(v9);
      }

      v13 = *(a1 + 16);
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v15 = String._bridgeToObjectiveC()();
      [v4 setValue:isa forKey:v15];

      v16 = *(a1 + 17);
      v17 = Bool._bridgeToObjectiveC()().super.super.isa;
      v18 = String._bridgeToObjectiveC()();
      [v4 setValue:v17 forKey:v18];

      v19 = *(a1 + 18);
      v20 = Bool._bridgeToObjectiveC()().super.super.isa;
      v21 = String._bridgeToObjectiveC()();
      [v4 setValue:v20 forKey:v21];

      v22 = *(a1 + 19);
      v23 = Bool._bridgeToObjectiveC()().super.super.isa;
      v24 = String._bridgeToObjectiveC()();
      [v4 setValue:v23 forKey:v24];

      v25 = a1[3];
      v26 = *(v25 + 16);
      if (!v26)
      {
        break;
      }

      v70 = a1;
      v71 = v4;
      v80 = _swiftEmptyArrayStorage;

      sub_10019F4C4(0, v26, 0);
      v27 = v80;
      sub_100068FC4(&unk_100504000, &unk_10040B350);
      v4 = &v76;
      v28 = (v25 + 64);
      while (1)
      {
        v29 = *(v28 - 4);
        v30 = *(v28 - 3);
        v31 = *(v28 - 2);
        v32 = *(v28 - 1);
        v33 = *v28;
        v77[0] = 0x6449656C646E7562;
        v77[1] = 0xE800000000000000;
        v77[2] = v29;
        v77[3] = v30;
        v77[5] = &type metadata for String;
        v78[0] = 0x6E69616D6F64;
        v78[1] = 0xE600000000000000;
        v78[2] = v31;
        v78[5] = &type metadata for UInt;
        v79[0] = 0x4E79616C70736964;
        v79[1] = 0xEB00000000656D61;
        v79[2] = v32;
        v79[5] = &type metadata for String;
        v79[3] = v33;
        v34 = static _DictionaryStorage.allocate(capacity:)();

        sub_10011EF24(v77, &v73);
        v36 = v73;
        v35 = v74;
        v37 = sub_10008C908(v73, v74);
        if (v38)
        {
          break;
        }

        a1 = v34 + 8;
        *(v34 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v37;
        v39 = (v34[6] + 16 * v37);
        *v39 = v36;
        v39[1] = v35;
        sub_100075D50(v75, (v34[7] + 32 * v37));
        v40 = v34[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_26;
        }

        v34[2] = v42;
        sub_10011EF24(v78, &v73);
        v43 = v73;
        v44 = v74;
        v45 = sub_10008C908(v73, v74);
        if (v46)
        {
          break;
        }

        *(a1 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        v47 = (v34[6] + 16 * v45);
        *v47 = v43;
        v47[1] = v44;
        sub_100075D50(v75, (v34[7] + 32 * v45));
        v48 = v34[2];
        v41 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v41)
        {
          goto LABEL_26;
        }

        v34[2] = v49;
        sub_10011EF24(v79, &v73);
        v50 = v73;
        v51 = v74;
        v52 = sub_10008C908(v73, v74);
        if (v53)
        {
          break;
        }

        *(a1 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        v54 = (v34[6] + 16 * v52);
        *v54 = v50;
        v54[1] = v51;
        sub_100075D50(v75, (v34[7] + 32 * v52));
        v55 = v34[2];
        v41 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v41)
        {
          goto LABEL_26;
        }

        v34[2] = v56;

        sub_100068FC4(&qword_100507D30, &unk_100409C90);
        swift_arrayDestroy();
        v80 = v27;
        v58 = v27[2];
        v57 = v27[3];
        if (v58 >= v57 >> 1)
        {
          sub_10019F4C4((v57 > 1), v58 + 1, 1);
          v27 = v80;
        }

        v27[2] = v58 + 1;
        v27[v58 + 4] = v34;
        v28 += 5;
        if (!--v26)
        {

          a1 = v70;
          v4 = v71;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
    }

LABEL_24:
    sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    v62 = Array._bridgeToObjectiveC()().super.isa;

    v63 = String._bridgeToObjectiveC()();
    [v4 setValue:v62 forKey:v63];

    v64 = *(a1 + 20);
    v65 = Bool._bridgeToObjectiveC()().super.super.isa;
    v66 = String._bridgeToObjectiveC()();
    [v4 setValue:v65 forKey:v66];

    v67 = *(a1 + 21);
    v68 = Bool._bridgeToObjectiveC()().super.super.isa;
    v69 = String._bridgeToObjectiveC()();
    [v4 setValue:v68 forKey:v69];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000958E4(v59, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v60, "Unable to initialize Settings Suite!?", v61, 2u);
    }
  }
}

uint64_t sub_10032929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  return _swift_task_switch(sub_1003292C0, 0, 0);
}

uint64_t sub_1003292C0()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100329410;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004D0E30;
  v0[14] = v3;
  sub_1003AF710(v1, v2, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100329410()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1003297AC;
  }

  else
  {
    v3 = sub_100329520;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100329520()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = sub_1003299DC(v2, v1);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v4];
  v6(v7, 0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003297AC()
{
  v18 = v0;
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  if (qword_100501D70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10050B0F8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1002FFA0C(0xD000000000000021, 0x800000010046F140, &v17);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Error %@ encountered while getting secure element", v7, 0x16u);
    sub_1000C2998(v8);

    sub_1000752F4(v9);
  }

  v12 = v0[21];
  v11 = v0[22];
  sub_10009591C();
  v13 = swift_allocError();
  *v14 = 31;
  v12(0, v13);

  v15 = v0[1];

  return v15();
}

id sub_1003299DC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = sub_1003AF1FC(v2, isa);

  if (v8)
  {
    v9 = qword_100501D70;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_10050B0F8);
    v12 = v10;
    sub_100069E2C(a1, a2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v61 = v17;
      *v15 = 136315394;
      sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v18 = BidirectionalCollection<>.joined(separator:)();
      a1 = v19;

      v20 = sub_1002FFA0C(v18, a1, &v61);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = v12;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to select %s with error %@", v15, 0x16u);
      sub_1000C2998(v16);

      sub_1000752F4(v17);
    }

    sub_10009591C();
    swift_allocError();
    *v23 = 31;
    swift_willThrow();

    return a1;
  }

  result = sub_10013044C(0x3143303041433038, 0xE800000000000000);
  if (v25 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_37;
  }

  v26 = result;
  v27 = v25;
  v28 = Data._bridgeToObjectiveC()().super.isa;
  v61 = 0;
  v29 = sub_1003AE9C8(v4, v28, &v61);

  if (!v29)
  {
    v41 = v61;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_31;
  }

  v30 = v61;
  if (sub_1003B0984(v29) != 36864)
  {
    goto LABEL_30;
  }

  v31 = sub_1003B0934(v29);
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v33;

  v34 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v32, a1);
  v35 = [objc_opt_self() TLVWithData:v34];

  if (!v35)
  {
LABEL_30:
    sub_10009591C();
    swift_allocError();
    *v60 = 31;
    swift_willThrow();

    goto LABEL_31;
  }

  if ([v35 tag] != 193)
  {
LABEL_29:

    goto LABEL_30;
  }

  result = [v35 value];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v36 = result;
  a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v38 >> 62;
  if ((v38 >> 62) <= 1)
  {
    if (!v39)
    {
      sub_10006A178(a1, v38);
      v40 = BYTE6(v38);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v39 != 2)
  {

    sub_10006A178(a1, v38);
    goto LABEL_30;
  }

  v43 = *(a1 + 16);
  v42 = *(a1 + 24);
  sub_10006A178(a1, v38);
  v40 = v42 - v43;
  if (__OFSUB__(v42, v43))
  {
    __break(1u);
LABEL_21:
    sub_10006A178(a1, v38);
    LODWORD(v40) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v40 = v40;
  }

LABEL_23:
  if (v40 != 3)
  {
    goto LABEL_29;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1004099F0;
  *(v44 + 32) = 0;
  result = [v35 value];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v45 = result;
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  LOBYTE(v45) = Data._Representation.subscript.getter();
  sub_10006A178(v46, v48);
  *(v44 + 33) = v45;
  result = [v35 value];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = result;
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  LOBYTE(v49) = Data._Representation.subscript.getter();
  sub_10006A178(v50, v52);
  *(v44 + 34) = v49;
  result = [v35 value];
  if (result)
  {
    v53 = result;
    v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    LOBYTE(v53) = Data._Representation.subscript.getter();
    sub_10006A178(v54, v56);
    *(v44 + 35) = v53;
    v57 = sub_1002B3B94(v44);
    v59 = v58;

    a1 = sub_1000939F8(v57, v59, 0, 0, 0);
    sub_10006A178(v57, v59);
    if (!v3)
    {
      sub_10006A2D0(v26, v27);

      return a1;
    }

LABEL_31:
    sub_10006A2D0(v26, v27);
    return a1;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10032A1C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032A1FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10006A178(v0[4], v0[5]);
  v2 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10032A244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000C288C;

  return sub_10032929C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10032A330()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10050B0F8);
  v1 = sub_1000958E4(v0, qword_10050B0F8);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000958E4(v0, qword_10051B2C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032A3F8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050B1B8, &qword_100416350);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = &_swiftEmptySetSingleton;
  *(v9 + 24) = &_swiftEmptySetSingleton;
  *(v2 + 24) = v9;
  *(v2 + 16) = a1 & 1;
  if ((a1 & 1) == 0)
  {
    type metadata accessor for Peer();
    v14[1] = &OBJC_PROTOCOL___NSCopying;
    if (!swift_dynamicCastTypeToObjCProtocolConditional())
    {
      if (qword_100501D88 != -1)
      {
        swift_once();
      }

      (*(v5 + 16))(v8, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v4);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Requested a store of values but the type is not NSCopying", v12, 2u);
      }

      (*(v5 + 8))(v8, v4);
      return 0;
    }
  }

  return v2;
}

void *sub_10032A610()
{
  sub_100068FC4(&qword_10050B1B0, &qword_100416348);
  swift_allocObject();
  result = sub_10032A3F8(1);
  if (result)
  {
    off_10050B110 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10032A6BC(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v22;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

uint64_t sub_10032A878(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PresentmentInfo();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1003330E8(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_10033314C(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1003331A8(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_10019F8F4(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_1003331A8(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_10033314C(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

void *sub_10032AAA0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

id sub_10032AC4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10032AD34()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10032AE00, v0, 0);
}

uint64_t sub_10032AE00()
{
  v70 = v0;
  v1 = [objc_opt_self() enumeratorWithOptions:0];
  v2 = [v1 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v3 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        sub_1000D78B8(&v69, v6, v8);
      }

      else
      {
      }

      v3 = [v1 nextObject];
    }

    while (v3);
  }

  v9 = v0[2];
  v10 = sub_100331A8C();
  v63 = v10;
  if (v10 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v62 = (v0[4] + 8);
    v64 = i;
    v65 = v1;
    v66 = v0;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v17 = *(v63 + 32 + 8 * v12);
      }

      v18 = v17;
      v19 = __OFADD__(v12, 1);
      v20 = v12 + 1;
      if (v19)
      {
        break;
      }

      v21 = CredentialInternal.ownerApplications.getter();
      v1 = v21;
      if (v21 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        v67 = v18;
        v68 = v20;
        if (!v22)
        {
LABEL_49:

          v24 = _swiftEmptyArrayStorage;
          v0 = _swiftEmptyArrayStorage[2];
          if (v0)
          {
            goto LABEL_29;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v67 = v18;
        v68 = v20;
        if (!v22)
        {
          goto LABEL_49;
        }
      }

      v69 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v22 & ~(v22 >> 63), 0);
      if (v22 < 0)
      {
        goto LABEL_58;
      }

      v23 = 0;
      v24 = v69;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v1 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = ApplicationInfoInternal.bundleId.getter();
        v29 = v28;

        v69 = v24;
        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          sub_10019F3C0((v30 > 1), v31 + 1, 1);
          v24 = v69;
        }

        ++v23;
        v24[2] = v31 + 1;
        v32 = &v24[2 * v31];
        v32[4] = v27;
        v32[5] = v29;
      }

      while (v22 != v23);

      v0 = v24[2];
      if (v0)
      {
LABEL_29:
        v1 = &_swiftEmptySetSingleton + 56;
        v33 = 1;
        v34 = 0;
        while (1)
        {
          if (v34 >= v24[2])
          {
            __break(1u);
            goto LABEL_57;
          }

          v35 = (v34 + 1);
          if (!*(&_swiftEmptySetSingleton + 2))
          {
            goto LABEL_31;
          }

          v36 = &v24[2 * v34 + 4];
          v38 = *v36;
          v37 = v36[1];
          v39 = *(&_swiftEmptySetSingleton + 5);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v40 = Hasher._finalize()();
          v41 = -1 << *(&_swiftEmptySetSingleton + 32);
          v42 = v40 & ~v41;
          if ((*(v1 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v43 = ~v41;
            while (1)
            {
              v44 = (*(&_swiftEmptySetSingleton + 6) + 16 * v42);
              v45 = *v44 == v38 && v44[1] == v37;
              if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v42 = (v42 + 1) & v43;
              if (((*(v1 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            v33 = 0;
            if (v35 == v0)
            {

              v1 = v65;
              v0 = v66;
              goto LABEL_12;
            }

            v34 = v35;
          }

          else
          {
LABEL_30:

LABEL_31:
            v34 = v35;
            if (v35 == v0)
            {

              v1 = v65;
              if (v33)
              {
                goto LABEL_51;
              }

              v0 = v66;
              goto LABEL_12;
            }
          }
        }
      }

LABEL_50:

      v1 = v65;
LABEL_51:
      v0 = v66;
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000958E4(v46, qword_10051B2C8);
      v47 = v67;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = v66[6];
        v51 = v66[3];
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v69 = v53;
        *v52 = 136315138;
        CredentialInternal.identifier.getter();
        v54 = UUID.uuidString.getter();
        v56 = v55;
        v13 = v62;
        (*v62)(v50, v51);
        v57 = sub_1002FFA0C(v54, v56, &v69);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v48, v49, "Credential %s last owner app has been deleted", v52, 0xCu);
        sub_1000752F4(v53);

        v1 = v65;
        v0 = v66;
      }

      else
      {

        v13 = v62;
      }

      v14 = v0[5];
      v15 = v0[6];
      v16 = v0[3];
      CredentialInternal.identifier.getter();
      sub_1000D6D84(v15, v14);

      (*v13)(v15, v16);
LABEL_12:
      v12 = v68;
      if (v68 == v64)
      {
        goto LABEL_61;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:

  v58 = v0[5];
  v59 = v0[6];

  v60 = v0[1];

  return v60(&_swiftEmptySetSingleton);
}

uint64_t sub_10032B4E4()
{
  v1[2] = v0;
  v2 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10032B5F4, v0, 0);
}

char *sub_10032B5F4()
{
  v117 = v0;
  v1 = v0[2];
  v2 = [objc_allocWithZone(type metadata accessor for TCCContext()) init];
  v3 = sub_100137BA4(0);
  v4 = v3;
  v95 = v2;
  v116 = _swiftEmptyArrayStorage;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = _swiftEmptyArrayStorage;
    if (i)
    {
      v8 = 0;
      do
      {
        v9 = v7;
        v10 = v8;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *(v5 + 16))
            {
              goto LABEL_72;
            }

            v11 = *(v4 + 8 * v10 + 32);
          }

          v12 = v11;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v13 = [v11 identifier];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v8 == i)
          {
            v7 = v9;
            goto LABEL_19;
          }
        }

        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = [v12 bundleIdentifier];
        if (v15)
        {
          v16 = v15;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        type metadata accessor for ApplicationInfoInternal();
        [v12 gdprVersionShown];
        dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v116;
      }

      while (v8 != i);
    }

LABEL_19:

    v116 = _swiftEmptyArrayStorage;
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = v95;
    v113 = v7;
    if (v19)
    {
      v20 = 0;
      v4 = v7 & 0xC000000000000001;
      v21 = _swiftEmptyArrayStorage;
LABEL_23:
      v110 = v21;
      v22 = v20;
      while (1)
      {
        if (v4)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v18 + 16))
          {
            goto LABEL_74;
          }

          v23 = *(v7 + 8 * v22 + 32);
        }

        v24 = v23;
        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        ApplicationInfoInternal.bundleId.getter();
        TCCContext.checkTCCAccess(to:for:)();

        v25 = TCCContext.TCCAccess.rawValue.getter();
        if (v25 == TCCContext.TCCAccess.rawValue.getter())
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v26 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21 = v116;
          v7 = v113;
          if (v20 != v19)
          {
            goto LABEL_23;
          }

          goto LABEL_37;
        }

        ++v22;
        v7 = v113;
        if (v20 == v19)
        {
          v21 = v110;
          goto LABEL_37;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v21 = _swiftEmptyArrayStorage;
LABEL_37:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B2C8);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    log = v28;
    v111 = v21;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_1002FFA0C(0xD00000000000001FLL, 0x800000010046F2D0, &v115);
      *(v30 + 12) = 2080;
      if (v21 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v31)
      {
        v100 = v29;
        v103 = v30;
        v116 = _swiftEmptyArrayStorage;
        result = sub_10019F3C0(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
          return result;
        }

        v33 = 0;
        v34 = v116;
        v35 = v21 & 0xC000000000000001;
        do
        {
          if (v35)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v36 = *(v21 + 8 * v33 + 32);
          }

          v37 = v36;
          v38 = ApplicationInfoInternal.bundleId.getter();
          v40 = v39;

          v116 = v34;
          v42 = *(v34 + 16);
          v41 = *(v34 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_10019F3C0((v41 > 1), v42 + 1, 1);
            v34 = v116;
          }

          ++v33;
          *(v34 + 16) = v42 + 1;
          v43 = v34 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v21 = v111;
        }

        while (v31 != v33);
        v30 = v103;
        v29 = v100;
      }

      v44 = Array.description.getter();
      v46 = v45;

      v47 = sub_1002FFA0C(v44, v46, &v115);

      *(v30 + 14) = v47;
      _os_log_impl(&_mh_execute_header, log, v29, "%s: TCC Revoked apps %s", v30, 0x16u);
      swift_arrayDestroy();

      v5 = v95;
    }

    else
    {
    }

    v48 = v0[2];
    v49 = sub_100331A8C();
    v4 = v49;
    if (!(v49 >> 62))
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v109 = v0;
      if (!v50)
      {
        break;
      }

      goto LABEL_56;
    }

    v50 = _CocoaArrayWrapper.endIndex.getter();
    v109 = v0;
    if (!v50)
    {
      break;
    }

LABEL_56:
    v5 = 0;
    v51 = v0[5];
    v104 = v4 & 0xFFFFFFFFFFFFFF8;
    loga = (v4 & 0xC000000000000001);
    v96 = v51;
    v97 = (v51 + 32);
    v98 = (v51 + 48);
    v52 = _swiftEmptyArrayStorage;
    v101 = v50;
    while (1)
    {
      if (loga)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v104 + 16))
        {
          goto LABEL_76;
        }

        v53 = *(v4 + 8 * v5 + 32);
      }

      v54 = v53;
      v55 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v56 = v4;
      v57 = v52;
      v0 = v109;
      v58 = v109[3];
      v59 = v109[4];
      v116 = v53;
      sub_100332260(&v116, v21, v58);

      if ((*v98)(v58, 1, v59) == 1)
      {
        sub_100156C78(v109[3]);
        v52 = v57;
        v4 = v56;
      }

      else
      {
        v61 = v109[7];
        v60 = v109[8];
        v62 = v109[4];
        v0 = v97;
        v63 = *v97;
        (*v97)(v60, v109[3], v62);
        v63(v61, v60, v62);
        v52 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_10012FA30(0, v57[2].isa + 1, 1, v57);
        }

        v4 = v56;
        isa = v52[2].isa;
        v64 = v52[3].isa;
        if (isa >= v64 >> 1)
        {
          v52 = sub_10012FA30(v64 > 1, isa + 1, 1, v52);
        }

        v66 = v109[7];
        v67 = v109[4];
        v52[2].isa = (isa + 1);
        v63(v52 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * isa, v66, v67);
        v21 = v111;
      }

      ++v5;
      if (v55 == v101)
      {
        v5 = v95;
        v0 = v109;
        goto LABEL_82;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_82:

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v70 = 136315394;
    *(v70 + 4) = sub_1002FFA0C(0xD00000000000001FLL, 0x800000010046F2D0, &v115);
    *(v70 + 12) = 2080;
    v71 = v52[2].isa;
    if (v71)
    {
      v99 = v69;
      v102 = v70;
      v105 = v68;
      v72 = v0[5];
      v116 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v71, 0);
      v73 = v116;
      v74 = *(v72 + 16);
      v72 += 16;
      logb = v52;
      v75 = v52 + ((*(v72 + 64) + 32) & ~*(v72 + 64));
      v112 = *(v72 + 56);
      v114 = v74;
      v76 = (v72 - 8);
      do
      {
        v77 = v109[6];
        v78 = v109[4];
        v114(v77, v75, v78);
        v79 = UUID.uuidString.getter();
        v81 = v80;
        (*v76)(v77, v78);
        v116 = v73;
        v83 = *(v73 + 16);
        v82 = *(v73 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_10019F3C0((v82 > 1), v83 + 1, 1);
          v73 = v116;
        }

        *(v73 + 16) = v83 + 1;
        v84 = v73 + 16 * v83;
        *(v84 + 32) = v79;
        *(v84 + 40) = v81;
        v75 += v112;
        --v71;
      }

      while (v71);
      v68 = v105;
      v52 = logb;
      v70 = v102;
      v69 = v99;
      v0 = v109;
    }

    v85 = Array.description.getter();
    v87 = v86;

    v88 = sub_1002FFA0C(v85, v87, &v115);

    *(v70 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v68, v69, "%s: %s should be MFD since all owner apps have been revoked TCC access", v70, 0x16u);
    swift_arrayDestroy();

    v5 = v95;
  }

  else
  {
  }

  v89 = v0[7];
  v90 = v0[8];
  v91 = v0[6];
  v92 = v0[3];
  v93 = sub_1000E0348(v52);

  v94 = v0[1];

  return v94(v93);
}

uint64_t sub_10032C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10032C288, v5, 0);
}

uint64_t sub_10032C288()
{
  v28 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  sub_1000756F8(v2, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136315394;
    sub_1000756F8(v8, v9);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    v14 = v0[9];
    if (v13 == 1)
    {
      sub_100156C78(v0[9]);
      v15 = 0xE500000000000000;
      v16 = 0x6E696D6441;
    }

    else
    {
      v17 = v0[9];
      v16 = UUID.uuidString.getter();
      v15 = v18;
      (*(v12 + 8))(v14, v11);
    }

    v20 = v0[3];
    v19 = v0[4];
    sub_100156C78(v0[10]);
    v21 = sub_1002FFA0C(v16, v15, &v27);

    *(v10 + 4) = v21;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1002FFA0C(v20, v19, &v27);
    _os_log_impl(&_mh_execute_header, v5, v6, "Session %s: Reconciling Database and SE Content: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100156C78(v8);
  }

  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = sub_10032C574;
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];

  return sub_10032D588(v25);
}

uint64_t sub_10032C574(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *v2;
  v4[12] = a1;

  if (v1)
  {
    v6 = v4[9];
    v5 = v4[10];
    v7 = v4[8];

    v8 = v4[1];

    return v8();
  }

  else
  {
    v10 = v4[7];

    return _swift_task_switch(sub_10032C6D0, v10, 0);
  }
}

uint64_t sub_10032C6D0()
{
  v1 = v0[8];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10032C7B4;
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return sub_10032DD20(v8, v4, v7);
}

uint64_t sub_10032C7B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = v1;

  v7 = v4[12];
  if (v1)
  {
    v8 = v4[7];
    sub_100156C78(v4[8]);

    return _swift_task_switch(sub_10032C964, v8, 0);
  }

  else
  {
    v10 = v4[9];
    v9 = v4[10];
    sub_100156C78(v4[8]);

    v11 = *(v6 + 8);

    return v11(a1);
  }
}

uint64_t sub_10032C964()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

void sub_10032C9E4()
{
  v1 = type metadata accessor for SECCredentialConfig();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v95 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v101 = &v91 - v7;
  __chkstk_darwin(v6);
  v110 = &v91 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v91 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v91 - v19;
  __chkstk_darwin(v18);
  v22 = (&v91 - v21);
  v23 = 0;
  v24 = sub_100331A8C();
  v102 = v14;
  v103 = v22;
  v108 = v9;
  v93 = v0;
  v107 = v24;
  if (v24 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v110;
  v105 = v1;
  v109 = v17;
  if (v25)
  {
    v112[0] = _swiftEmptyArrayStorage;
    sub_10019F420(0, v25 & ~(v25 >> 63), 0);
    v27 = v108;
    if (v25 < 0)
    {
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_35;
    }

    v104 = v2;
    v92 = 0;
    v28 = v112[0];
    v29 = v107;
    v30 = v103;
    if ((v107 & 0xC000000000000001) != 0)
    {
      v31 = 0;
      v106 = (v10 + 32);
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        CredentialInternal.configUUID.getter();
        swift_unknownObjectRelease();
        v112[0] = v28;
        v33 = v28[2];
        v32 = v28[3];
        if (v33 >= v32 >> 1)
        {
          sub_10019F420(v32 > 1, v33 + 1, 1);
          v28 = v112[0];
        }

        ++v31;
        v28[2] = v33 + 1;
        (*(v10 + 32))(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v33, v30, v27);
      }

      while (v25 != v31);
    }

    else
    {
      v106 = (v10 + 32);
      v34 = 32;
      v35 = v102;
      do
      {
        v36 = *(v29 + v34);
        CredentialInternal.configUUID.getter();

        v112[0] = v28;
        v38 = v28[2];
        v37 = v28[3];
        if (v38 >= v37 >> 1)
        {
          sub_10019F420(v37 > 1, v38 + 1, 1);
          v28 = v112[0];
        }

        v28[2] = v38 + 1;
        (*(v10 + 32))(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v38, v35, v27);
        v34 += 8;
        --v25;
        v29 = v107;
      }

      while (v25);
    }

    v23 = v92;
    v2 = v104;
    v1 = v105;
    v26 = v110;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
    v27 = v108;
  }

  v39 = sub_100094934();
  if (v23)
  {

    goto LABEL_46;
  }

  v92 = 0;
  v100 = v39[2];
  if (v100)
  {
    v40 = 0;
    v98 = v2 + 16;
    v41 = (v10 + 16);
    v94 = (v2 + 8);
    v99 = (v2 + 32);
    v42 = _swiftEmptyArrayStorage;
    v104 = v2;
    v97 = v39;
    while (v40 < v39[2])
    {
      v107 = v42;
      v46 = v40;
      v103 = ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v102 = *(v2 + 72);
      (*(v2 + 16))(v26, v103 + v39 + v102 * v40, v1);
      v47 = 0;
      v106 = (v46 + 1);
      v48 = v28[2];
      while (v48 != v47)
      {
        if (v47 >= v28[2])
        {
          __break(1u);
          goto LABEL_51;
        }

        (*(v10 + 16))(v20, v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v47++, v27);
        v49 = v109;
        SECCredentialConfig.configUUID.getter();
        v50 = static UUID.== infix(_:_:)();
        v51 = *(v10 + 8);
        v52 = v49;
        v27 = v108;
        v51(v52, v108);
        v51(v20, v27);
        if (v50)
        {
          v26 = v110;
          v1 = v105;
          (*v94)(v110, v105);
          v42 = v107;
          goto LABEL_24;
        }
      }

      isa = v99->isa;
      v26 = v110;
      v1 = v105;
      (v99->isa)(v101, v110, v105);
      v42 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112[0] = v42;
      v96 = isa;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10019F890(0, *(v42 + 16) + 1, 1);
        v42 = v112[0];
      }

      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v107 = v44 + 1;
        sub_10019F890(v43 > 1, v44 + 1, 1);
        v45 = v107;
        v42 = v112[0];
      }

      *(v42 + 16) = v45;
      v96(v103 + v42 + v44 * v102, v101, v1);
LABEL_24:
      v40 = v106;
      v2 = v104;
      v39 = v97;
      if (v106 == v100)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_47:
    v84 = type metadata accessor for Logger();
    sub_1000958E4(v84, qword_10051B2C8);
    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v87 = 136315394;
      *(v87 + 4) = sub_1002FFA0C(0xD000000000000023, 0x800000010046F2A0, v112);
      *(v87 + 12) = 2080;
      swift_getErrorValue();
      v88 = Error.localizedDescription.getter();
      v90 = sub_1002FFA0C(v88, v89, v112);

      *(v87 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v85, v86, "%s -- error %s encountered", v87, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_34:
  v107 = v42;

  if (qword_1005019D8 != -1)
  {
    goto LABEL_56;
  }

LABEL_35:
  v55 = type metadata accessor for Logger();
  sub_1000958E4(v55, qword_10051B2C8);
  v56 = v107;

  v57 = v56;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  v60 = os_log_type_enabled(v58, v59);
  v61 = v92;
  if (v60)
  {
    LODWORD(v102) = v59;
    v62 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v112[0] = v100;
    v101 = v62;
    *v62 = 136315138;
    v63 = *(v57 + 16);
    v64 = _swiftEmptyArrayStorage;
    if (v63)
    {
      v99 = v58;
      v111 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v63, 0);
      v64 = v111;
      v66 = *(v2 + 16);
      v65 = v2 + 16;
      v110 = v66;
      v67 = v57 + ((*(v65 + 64) + 32) & ~*(v65 + 64));
      v108 = *(v65 + 56);
      v106 = (v10 + 8);
      v103 = (v65 - 8);
      v104 = v65;
      do
      {
        v68 = v95;
        (v110)(v95, v67, v1);
        v69 = v109;
        SECCredentialConfig.configUUID.getter();
        v70 = UUID.uuidString.getter();
        v72 = v71;
        (*v106)(v69, v27);
        (*v103)(v68, v1);
        v111 = v64;
        v74 = v64[2];
        v73 = v64[3];
        if (v74 >= v73 >> 1)
        {
          sub_10019F3C0((v73 > 1), v74 + 1, 1);
          v64 = v111;
        }

        v64[2] = v74 + 1;
        v75 = &v64[2 * v74];
        v75[4] = v70;
        v75[5] = v72;
        v67 += v108;
        --v63;
        v1 = v105;
      }

      while (v63);
      v61 = v92;
      v58 = v99;
    }

    v111 = v64;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v76 = BidirectionalCollection<>.joined(separator:)();
    v78 = v77;

    v79 = sub_1002FFA0C(v76, v78, v112);

    v80 = v101;
    *(v101 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v58, v102, "Deleting credential configs due to absence of instance %s", v80, 0xCu);
    sub_1000752F4(v100);
  }

  v81 = v93;
  v82 = sub_10035E904();
  if (v61)
  {

LABEL_46:
    if (qword_1005019D8 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

  v41 = v82;
  v83 = __chkstk_darwin(v82);
  *(&v91 - 4) = v81;
  *(&v91 - 3) = v83;
  *(&v91 - 2) = v107;
  NSManagedObjectContext.performAndWait<A>(_:)();
LABEL_51:
}

uint64_t sub_10032D588(uint64_t a1)
{
  *(v2 + 88) = a1;

  return _swift_task_switch(sub_10032D618, v1, 0);
}

uint64_t sub_10032D618()
{
  v50 = v0;
  v0[8] = 0;
  v1 = v0 + 8;
  v2 = [v0[11] listAppletsAndRefreshCache:1 outError:v0 + 8];
  v3 = v0[8];
  if (!v2)
  {
    v14 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_34;
    }

    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1002FFA0C(0xD00000000000002ALL, 0x800000010046F270, &v49);
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v20 = v0[2];
    v19 = v0[3];
    v21 = v0[4];
    v22 = Error.localizedDescription.getter();
    v24 = sub_1002FFA0C(v22, v23, &v49);

    *(v18 + 14) = v24;
    v25 = "%s: Nearfield error %s encountered when listing applets";
    goto LABEL_33;
  }

  v4 = v2;
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v3;

  v49 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v47 = v1;
    v48 = v0;
    v8 = 0;
    v0 = &selRef_retrievePeripheralsWithIdentifiers_;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v1 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (![v9 managedBySP] || (v11 = objc_msgSend(v10, "rawGPState"), type metadata accessor for InstanceInfoInternal(), v11 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter()))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = v49[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v8;
      if (v1 == i)
      {
        v13 = v49;
        v1 = v47;
        v0 = v48;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    if (*(v13 + 16))
    {
      goto LABEL_27;
    }

LABEL_38:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000958E4(v43, qword_10051B2C8);
    v28 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v28, v44, "There are no SP instances on the SE", v45, 2u);
    }

    v30 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_38;
  }

LABEL_27:
  v26 = v0[11];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v0[8] = 0;
  v28 = [v26 queryExtraInfoForApplets:isa outError:v1];

  v29 = v0[8];
  if (v28)
  {
    sub_10009393C(0, &qword_10050B1C0, NFAppletExtraInfo_ptr);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v29;
LABEL_43:

    v46 = v0[1];

    return (v46)(v30);
  }

  v32 = v29;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000958E4(v33, qword_10051B2C8);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1002FFA0C(0xD00000000000002ALL, 0x800000010046F270, &v49);
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v35 = v0[5];
    v34 = v0[6];
    v36 = v0[7];
    v37 = Error.localizedDescription.getter();
    v39 = sub_1002FFA0C(v37, v38, &v49);

    *(v18 + 14) = v39;
    v25 = "%s: Nearfield error %s encountered when querying for extra information";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v16, v17, v25, v18, 0x16u);
    swift_arrayDestroy();
  }

LABEL_34:

  sub_10009591C();
  swift_allocError();
  *v40 = 8;
  swift_willThrow();

  v41 = v0[1];

  return v41();
}

uint64_t sub_10032DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(type metadata accessor for SESNotifyEventPublisher.State() - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for SESNotifyEventPublisher.Notification();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = type metadata accessor for SESNotifyEventPublisher.Event();
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = type metadata accessor for StateInternal();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v15 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v4[30] = v16;
  v17 = *(v16 - 8);
  v4[31] = v17;
  v18 = *(v17 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_10032DFF0, v3, 0);
}

uint64_t sub_10032DFF0()
{
  v286 = v0;
  v2 = v0;
  v3 = v0[13];
  if (v3 >> 62)
  {
    goto LABEL_145;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v7 = v2[31];
    v272 = (v3 & 0xFFFFFFFFFFFFFF8);
    v278 = v3 & 0xC000000000000001;
    v258 = v2[13] + 32;
    v8 = (v7 + 48);
    v254 = v7;
    v264 = (v7 + 32);
    while (1)
    {
      if (v278)
      {
        v18 = v2[13];
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= v272[2])
        {
          goto LABEL_136;
        }

        v9 = *(v258 + 8 * v6);
      }

      v1 = v9;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v2[29];
      v12 = v2[30];
      v13 = [v9 applet];
      sub_10013070C(v11);

      if ((*v8)(v11, 1, v12) == 1)
      {
        sub_100156C78(v2[29]);
      }

      else
      {
        v1 = *v264;
        (*v264)(v2[37], v2[29], v2[30]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10012FA30(0, v5[2] + 1, 1, v5);
        }

        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          v5 = sub_10012FA30(v14 > 1, v15 + 1, 1, v5);
        }

        v16 = v2[37];
        v17 = v2[30];
        v5[2] = v15 + 1;
        (v1)(v5 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v15, v16, v17);
      }

      ++v6;
      if (v10 == v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v2 = v246;
    v204 = v246[41];
    v203 = v246[42];
    v206 = v246[39];
    v205 = v246[40];
    v207 = v246[38];

LABEL_37:
    v45 = v2[36];
    v44 = v2[37];
    v47 = v2[34];
    v46 = v2[35];
    v49 = v2[32];
    v48 = v2[33];
    v50 = v2;
    v53 = v2 + 28;
    v52 = v2[28];
    v51 = v53[1];
    v55 = v50[26];
    v54 = v50[27];
    v260 = v50[25];
    v266 = v50[22];
    v273 = v50[19];
    v280 = v50[16];

    v56 = v50[1];

    return v56();
  }

LABEL_18:
  v2[38] = v5;
  v19 = *v2[12];
  v284 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
    v215 = v19;
    v216 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v215;
    v20 = v216;
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v1 = 0;
    v22 = v2[31];
    v23 = v2;
    v24 = v2[24];
    v272 = (v19 & 0xFFFFFFFFFFFFFF8);
    v279 = v19 & 0xC000000000000001;
    v252 = v19 + 32;
    v25 = (v24 + 88);
    v259 = enum case for StateInternal.installed(_:);
    v255 = (v24 + 8);
    v247 = (v22 + 8);
    v265 = v20;
    v249 = (v24 + 88);
    do
    {
      if (v279)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= v272[2])
        {
          goto LABEL_138;
        }

        v28 = *(v252 + 8 * v1);
      }

      v29 = v28;
      if (__OFADD__(v1++, 1))
      {
        goto LABEL_137;
      }

      v31 = v23[28];
      v32 = v23[23];
      CredentialInternal.state.getter();
      if ((*v25)(v31, v32) == v259)
      {
        v33 = v23[36];
        (*v255)(v23[28], v23[23]);
        CredentialInternal.identifier.getter();
        v34 = 0;
        v35 = v5[2];
        while (1)
        {
          v36 = v23[36];
          v37 = v23[30];
          if (v35 == v34)
          {
            break;
          }

          v38 = v34 + 1;
          v39 = v5 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v34;
          sub_100278ACC(&qword_100502C18);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = v38;
          if (v40)
          {
            (*v247)(v23[36], v23[30]);

            v25 = v249;
            goto LABEL_23;
          }
        }

        (*v247)(v23[36], v23[30]);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v41 = v284[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 = v249;
      }

      else
      {
        v26 = v23[28];
        v27 = v23[23];

        (*v255)(v26, v27);
      }

LABEL_23:
      ;
    }

    while (v1 != v265);
    v21 = v284;
    v2 = v23;
  }

  v2[39] = v21;
  v42 = v2[15];
  v2[40] = sub_1003313A8(v2[13]);
  v2[41] = v43;
  v59 = v2[21];
  v58 = v2[22];
  v274 = v2[19];
  v281 = v2[20];
  v60 = v2;
  v63 = v2 + 17;
  v62 = v2[17];
  v61 = v63[1];
  v64 = v60[16];
  v65 = v60[12];
  *(swift_task_alloc() + 16) = v65;

  v67 = sub_100332F48(v66, sub_10033269C);
  v60[42] = v67;
  v60[43] = 0;

  (*(v61 + 104))(v274, enum case for SESNotifyEventPublisher.Notification.secureElementCredentialPresence(_:), v62);
  v68 = *(v67 + 16);
  type metadata accessor for SESNotifyEventPublisher();
  SESNotifyEventPublisher.State.init(rawValue:)();
  SESNotifyEventPublisher.Event.init(notification:state:)();
  dispatch thunk of static SESNotifyEventPublisher.publish(event:)();
  v69 = *(v59 + 8);
  v1 = v59 + 8;
  v69(v58, v281);
  v70 = *(v67 + 16);
  if (qword_1005019D0 != -1)
  {
    swift_once();
  }

  v71 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000958E4(v71, qword_100504810);
  *(v60 + 368) = v70 != 0;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  v2 = v60;
  if (!*(v67 + 16))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v171 = type metadata accessor for Logger();
    sub_1000958E4(v171, qword_10051B2C8);
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&_mh_execute_header, v172, v173, "Credentials found, scheduling background tasks.", v174, 2u);
    }

    v175 = swift_task_alloc();
    v60[44] = v175;
    *v175 = v60;
    v175[1] = sub_10032FC48;

    return sub_100274458();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v248 = type metadata accessor for Logger();
  sub_1000958E4(v248, qword_10051B2C8);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "No credentials found, not scheduling background tasks.", v74, 2u);
  }

  sub_100273E60();
  sub_10027415C();
  v75 = v60[43];
  v76 = v60[42];
  v78 = *(v76 + 64);
  v3 = v76 + 64;
  v77 = v78;
  v79 = -1;
  v80 = -1 << *(v60[42] + 32);
  if (-v80 < 64)
  {
    v79 = ~(-1 << -v80);
  }

  v81 = v79 & v77;
  v82 = (63 - v80) >> 6;
  v282 = (v60[31] + 8);
  v240 = (v60[24] + 8);
  v238 = v60[42];

  v83 = 0;
  v234 = v82;
  v236 = v3;
  v246 = v60;
LABEL_50:
  v84 = v83;
  v250 = v75;
  if (!v81)
  {
    goto LABEL_52;
  }

  do
  {
    v85 = v84;
LABEL_55:
    v241 = v85;
    v86 = (v85 << 9) | (8 * __clz(__rbit64(v81)));
    v3 = *(*(v238 + 48) + v86);
    v87 = *(*(v238 + 56) + v86);
    v88 = *v2[12];
    if (v88 >> 62)
    {
      v89 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v243 = (v81 - 1) & v81;
    v272 = v3;
    v244 = v87;

    if (v89)
    {
      v1 = 0;
      v261 = v88 & 0xFFFFFFFFFFFFFF8;
      v267 = v88 & 0xC000000000000001;
      v256 = v88;
      while (1)
      {
        if (v267)
        {
          v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v91 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v1 >= *(v261 + 16))
          {
            goto LABEL_141;
          }

          v90 = *(v88 + 8 * v1 + 32);
          v91 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            v4 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }
        }

        v92 = v246[34];
        v2 = v246[35];
        v93 = v246[30];
        v94 = v90;
        CredentialInternal.identifier.getter();
        CredentialInternal.identifier.getter();
        v3 = static UUID.== infix(_:_:)();
        v95 = *v282;
        (*v282)(v92, v93);
        v95(v2, v93);
        if (v3)
        {
          break;
        }

        ++v1;
        v88 = v256;
        if (v91 == v89)
        {
          goto LABEL_68;
        }
      }

      v1 = v94;
      v106 = sub_1000BCE28(v244);
      if (v250)
      {
        goto LABEL_139;
      }

      v107 = v106;

      v2 = v246;
      if (v107)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        sub_1000958E4(v248, qword_10051B2C8);
        v116 = v94;
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = v246[35];
          v269 = v246[30];
          v120 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          *v120 = 136315394;
          *(v120 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v284);
          *(v120 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v121 = UUID.uuidString.getter();
          v123 = v122;
          v124 = v119;
          v2 = v246;
          v95(v124, v269);
          v125 = sub_1002FFA0C(v121, v123, &v284);

          *(v120 + 14) = v125;
          _os_log_impl(&_mh_execute_header, v117, v118, "%s: Credential %s state updated", v120, 0x16u);
          swift_arrayDestroy();
        }

        v126 = v2[33];
        v127 = v2[27];
        v128 = v2[15];
        CredentialInternal.identifier.getter();
        CredentialInternal.state.getter();
        v129 = sub_10035E904();
        v270 = v116;
        v130 = v2;
        v131 = v2[33];
        v132 = v2[27];
        v133 = v2[15];
        v134 = swift_task_alloc();
        v134[2] = v129;
        v134[3] = v133;
        v134[4] = v131;
        v134[5] = v132;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v1 = v2[33];
        v135 = v2[30];
        v136 = v2[27];
        v137 = v130[23];

        (*v240)(v136, v137);
        v95(v1, v135);
        v138 = v270;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = v130;
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v139 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v75 = 0;
      }

      else
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        sub_1000958E4(v248, qword_10051B2C8);
        v108 = v94;
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = v246[35];
          v268 = v246[30];
          v1 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          *v1 = 136315394;
          *(v1 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v284);
          *(v1 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v112 = UUID.uuidString.getter();
          v114 = v113;
          v95(v111, v268);
          v115 = sub_1002FFA0C(v112, v114, &v284);

          *(v1 + 14) = v115;
          _os_log_impl(&_mh_execute_header, v109, v110, "%s: No state update to credential %s", v1, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v75 = 0;
      }

      v82 = v234;
      v3 = v236;
      v83 = v241;
      v81 = v243;
      goto LABEL_50;
    }

LABEL_68:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v248, qword_10051B2C8);
    v96 = v272;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.fault.getter();

    v2 = v246;
    if (os_log_type_enabled(v97, v98))
    {
      v99 = v246[35];
      v100 = v246[30];
      v1 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v284 = v101;
      *v1 = 136315138;
      CredentialInternal.identifier.getter();
      sub_100278ACC(&qword_100504C70);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      (*v282)(v99, v100);
      v105 = sub_1002FFA0C(v102, v104, &v284);

      *(v1 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v97, v98, "Credential %s does not exist during reconciliation", v1, 0xCu);
      sub_1000752F4(v101);
      v2 = v246;
    }

    else
    {
    }

    v84 = v241;
    v81 = v243;
    v82 = v234;
    v3 = v236;
    v75 = v250;
  }

  while (v243);
  while (1)
  {
LABEL_52:
    v85 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_142;
    }

    if (v85 >= v82)
    {
      break;
    }

    v81 = *(v3 + 8 * v85);
    ++v84;
    if (v81)
    {
      goto LABEL_55;
    }
  }

  v140 = v2[42];
  v3 = v2[39];

  v275 = v2[39];
  if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    v141 = _CocoaArrayWrapper.endIndex.getter();
    v275 = v2[39];
    if (!v141)
    {
      goto LABEL_125;
    }

LABEL_95:
    v142 = 0;
    v262 = v3 & 0xC000000000000001;
    v257 = (v2[24] + 88);
    v245 = enum case for StateInternal.installed(_:);
    v242 = enum case for StateInternal.locked(_:);
    v237 = enum case for StateInternal.installationPending(_:);
    v235 = enum case for StateInternal.installationFailed(_:);
    v233 = enum case for StateInternal.terminated(_:);
    v239 = v141;
    while (1)
    {
      v145 = v2;
      if (v262)
      {
        v170 = v2[39];
        v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v142 >= *(v275 + 16))
        {
          goto LABEL_144;
        }

        v146 = *(v275 + 32 + 8 * v142);
      }

      v147 = v146;
      v2 = (v142 + 1);
      if (__OFADD__(v142, 1))
      {
        goto LABEL_143;
      }

      v1 = v145[26];
      v148 = v145[23];
      v3 = v146;
      CredentialInternal.state.getter();
      v149 = (*v257)(v1, v148);
      if (v149 == v245)
      {
        (*v240)(v145[26], v145[23]);
      }

      else
      {
        if (v149 == v242)
        {
          v3 = v145[26];
          v143 = v145[23];

          (*v240)(v3, v143);
          goto LABEL_97;
        }

        if (v149 == v237)
        {

          goto LABEL_97;
        }

        if (v149 != v235 && v149 != v233)
        {
          v208 = v145[25];
          v209 = v145[23];
          v284 = 0;
          v285 = 0xE000000000000000;
          _StringGuts.grow(_:)(33);
          v210 = v285;
          v145[8] = v284;
          v145[9] = v210;
          v211 = v145 + 8;
          v212._countAndFlagsBits = 0xD00000000000001FLL;
          v212._object = 0x800000010046F210;
          String.append(_:)(v212);
          CredentialInternal.state.getter();
          _print_unlocked<A, B>(_:_:)();
          (*v240)(v208, v209);
          v213 = *v211;
          v214 = v211[1];
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      sub_1000958E4(v248, qword_10051B2C8);
      v150 = v147;
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = v145[35];
        v251 = v75;
        v154 = v145[30];
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v284 = v156;
        *v155 = 136315138;
        v253 = v152;
        CredentialInternal.identifier.getter();
        sub_100278ACC(&qword_100504C70);
        v157 = dispatch thunk of CustomStringConvertible.description.getter();
        v159 = v158;
        v160 = v154;
        v75 = v251;
        (*v282)(v153, v160);
        v161 = sub_1002FFA0C(v157, v159, &v284);

        *(v155 + 4) = v161;
        _os_log_impl(&_mh_execute_header, v151, v253, "Bad Credential %s will be deleted", v155, 0xCu);
        sub_1000752F4(v156);

        v141 = v239;
      }

      v162 = v145[32];
      v163 = v145[15];
      CredentialInternal.identifier.getter();
      v164 = sub_10035E904();
      v1 = v150;
      v2 = v145;
      if (v75)
      {
        v198 = v145[41];
        v199 = v145[42];
        v200 = v145[39];
        v201 = v145[40];
        v202 = v145[38];

        (*v282)(v145[32], v145[30]);

        goto LABEL_37;
      }

      v3 = v164;
      v165 = v145[32];
      v166 = v2[15];
      v167 = swift_task_alloc();
      v167[2] = v3;
      v167[3] = v166;
      v167[4] = v165;
      NSManagedObjectContext.performAndWait<A>(_:)();
      v168 = v2[32];
      v169 = v2[30];

      (*v282)(v168, v169);

      v75 = 0;
      v145 = v2;
      v2 = (v142 + 1);
LABEL_97:
      ++v142;
      v144 = v2 == v141;
      v2 = v145;
      if (v144)
      {
        v276 = v145[39];
        goto LABEL_125;
      }
    }
  }

  v141 = *(v275 + 16);
  if (v141)
  {
    goto LABEL_95;
  }

LABEL_125:
  v177 = v2[41];
  v176 = v2[42];
  v178 = v2[40];
  v179 = v2[38];

  if (v177 >> 62)
  {
    if (v2[41] < 0)
    {
      v217 = v2[41];
    }

    v218 = _CocoaArrayWrapper.endIndex.getter();
    v219 = v2[41];
    if (!v218)
    {
      goto LABEL_152;
    }

LABEL_127:
    v181 = v2[14];
    sub_10009393C(0, &qword_100504280, NFApplet_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v2[10] = 0;
    LODWORD(v181) = [v181 deleteApplets:isa queueServerConnection:1 outError:v2 + 10];

    v183 = v2[10];
    if (v181)
    {
      v184 = v183;
      goto LABEL_153;
    }

    v185 = v183;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v248, qword_10051B2C8);
    swift_errorRetain();
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v284 = v189;
      *v188 = 136315138;
      swift_getErrorValue();
      v191 = v2[5];
      v190 = v2[6];
      v192 = v2[7];
      v193 = Error.localizedDescription.getter();
      v195 = v2;
      v196 = sub_1002FFA0C(v193, v194, &v284);

      *(v188 + 4) = v196;
      v2 = v195;
      _os_log_impl(&_mh_execute_header, v186, v187, "reconcileCredentialsWithSEInfo: Nearfield error %s encountered when deleting bad SP applets", v188, 0xCu);
      sub_1000752F4(v189);
    }

    sub_10009591C();
    swift_allocError();
    *v197 = 8;
    swift_willThrow();

    goto LABEL_37;
  }

  v180 = v2[41];
  if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_127;
  }

LABEL_152:

LABEL_153:
  v221 = v2[36];
  v220 = v2[37];
  v223 = v2[34];
  v222 = v2[35];
  v225 = v2[32];
  v224 = v2[33];
  v226 = v2;
  v229 = v2 + 28;
  v228 = v2[28];
  v227 = v229[1];
  v231 = v226[26];
  v230 = v226[27];
  v263 = v226[25];
  v271 = v226[22];
  v277 = v226[19];
  v283 = v226[16];

  v232 = v226[1];

  return v232(_swiftEmptyArrayStorage);
}

uint64_t sub_10032FC48()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v5 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 360) = v3;
  *v3 = v5;
  v3[1] = sub_10032FDB0;

  return sub_100274968();
}

uint64_t sub_10032FDB0()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_10032FEEC, v2, 0);
}

uint64_t sub_10032FEEC()
{
  v213 = v0;
  v2 = v0[43];
  v3 = v0[42];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[42] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = ((63 - v8) >> 6);
  v207 = (v0[31] + 8);
  v184 = v0[42];
  v186 = (v0[24] + 8);

  v11 = 0;
  v210 = v0;
  v180 = v10;
  v182 = v5;
LABEL_4:
  v12 = v11;
  v192 = v2;
  if (!v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v12;
LABEL_9:
    v14 = v0[12];
    v187 = v13;
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(v184 + 48) + v15);
    v0 = *(*(v184 + 56) + v15);
    v17 = *v14;
    v1 = *v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v188 = (v9 - 1) & v9;
    v203 = v16;
    v190 = v0;

    if (v1)
    {
      break;
    }

LABEL_22:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_10051B2C8);
    v26 = v203;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    v0 = v210;
    if (os_log_type_enabled(v27, v28))
    {
      v1 = v210[35];
      v29 = v210[30];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v211 = v31;
      *v30 = 136315138;
      CredentialInternal.identifier.getter();
      sub_100278ACC(&qword_100504C70);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*v207)(v1, v29);
      v35 = sub_1002FFA0C(v32, v34, &v211);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Credential %s does not exist during reconciliation", v30, 0xCu);
      sub_1000752F4(v31);

      v0 = v210;
    }

    else
    {
    }

    v12 = v187;
    v9 = v188;
    v10 = v180;
    v5 = v182;
    v2 = v192;
    if (!v188)
    {
      while (1)
      {
LABEL_6:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_88;
        }

        if (v13 >= v10)
        {
          break;
        }

        v9 = *(v5 + 8 * v13);
        ++v12;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      v74 = v0[42];
      v75 = v0[39];

      v203 = v0[39];
      if ((v75 & 0x8000000000000000) == 0 && (v75 & 0x4000000000000000) == 0)
      {
        v197 = v203[2];
        if (v197)
        {
          goto LABEL_49;
        }

LABEL_72:
        v106 = v0[41];
        v105 = v0[42];
        v107 = v0[40];
        v108 = v0[38];

        if (v106 >> 62)
        {
          if (v0[41] < 0)
          {
            v165 = v0[41];
          }

          v166 = _CocoaArrayWrapper.endIndex.getter();
          v167 = v0[41];
          if (!v166)
          {
            goto LABEL_96;
          }

LABEL_74:
          v110 = v0[14];
          sub_10009393C(0, &qword_100504280, NFApplet_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v0[10] = 0;
          LODWORD(v110) = [v110 deleteApplets:isa queueServerConnection:1 outError:v0 + 10];

          v112 = v0[10];
          if (!v110)
          {
            v114 = v112;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_1005019D8 != -1)
            {
              swift_once();
            }

            v115 = type metadata accessor for Logger();
            sub_1000958E4(v115, qword_10051B2C8);
            swift_errorRetain();
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v211 = v119;
              *v118 = 136315138;
              swift_getErrorValue();
              v120 = v210[5];
              v121 = v210[6];
              v122 = v210[7];
              v123 = Error.localizedDescription.getter();
              v125 = sub_1002FFA0C(v123, v124, &v211);

              *(v118 + 4) = v125;
              _os_log_impl(&_mh_execute_header, v116, v117, "reconcileCredentialsWithSEInfo: Nearfield error %s encountered when deleting bad SP applets", v118, 0xCu);
              sub_1000752F4(v119);

              v0 = v210;
            }

            sub_10009591C();
            swift_allocError();
            *v126 = 8;
            swift_willThrow();

            goto LABEL_82;
          }

          v113 = v112;
        }

        else
        {
          v109 = v0[41];
          if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

LABEL_96:
        }

        v169 = v0[36];
        v168 = v0[37];
        v171 = v0[34];
        v170 = v0[35];
        v172 = v0[33];
        v173 = v210[32];
        v174 = v210[29];
        v175 = v210[28];
        v176 = v210[27];
        v177 = v210[26];
        v199 = v210[25];
        v202 = v210[22];
        v206 = v210[19];
        v209 = v210[16];

        v178 = v210[1];

        return v178(_swiftEmptyArrayStorage);
      }

      v197 = _CocoaArrayWrapper.endIndex.getter();
      v203 = v0[39];
      if (!v197)
      {
        goto LABEL_72;
      }

LABEL_49:
      v76 = 0;
      v195 = v75 & 0xC000000000000001;
      v191 = (v0[24] + 88);
      v189 = enum case for StateInternal.installed(_:);
      v185 = enum case for StateInternal.locked(_:);
      v183 = enum case for StateInternal.installationPending(_:);
      v181 = enum case for StateInternal.installationFailed(_:);
      v179 = enum case for StateInternal.terminated(_:);
      while (2)
      {
        if (v195)
        {
          v104 = v0[39];
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v76 >= v203[2])
          {
            goto LABEL_90;
          }

          v79 = v203[v76 + 4];
        }

        v10 = v79;
        v1 = (v76 + 1);
        if (__OFADD__(v76, 1))
        {
          goto LABEL_89;
        }

        v80 = v0[26];
        v81 = v0[23];
        CredentialInternal.state.getter();
        v82 = (*v191)(v80, v81);
        if (v82 == v189)
        {
          (*v186)(v0[26], v0[23]);
          goto LABEL_58;
        }

        if (v82 == v185)
        {
          v77 = v0[26];
          v78 = v0[23];

          (*v186)(v77, v78);
        }

        else if (v82 == v183)
        {
        }

        else
        {
          if (v82 != v181 && v82 != v179)
          {
            v148 = v0[25];
            v149 = v0[23];
            v211 = 0;
            v212 = 0xE000000000000000;
            _StringGuts.grow(_:)(33);
            v150 = v212;
            v0[8] = v211;
            v0[9] = v150;
            v151 = v0 + 8;
            v152._countAndFlagsBits = 0xD00000000000001FLL;
            v152._object = 0x800000010046F210;
            String.append(_:)(v152);
            CredentialInternal.state.getter();
            _print_unlocked<A, B>(_:_:)();
            (*v186)(v148, v149);
            v153 = *v151;
            v154 = v151[1];
            return _assertionFailure(_:_:file:line:flags:)();
          }

LABEL_58:
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          sub_1000958E4(v83, qword_10051B2C8);
          v84 = v10;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = v210[35];
            v193 = v2;
            v88 = v210[30];
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v211 = v90;
            *v89 = 136315138;
            CredentialInternal.identifier.getter();
            sub_100278ACC(&qword_100504C70);
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v92;
            v94 = v88;
            v2 = v193;
            (*v207)(v87, v94);
            v95 = sub_1002FFA0C(v91, v93, &v211);

            *(v89 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v85, v86, "Bad Credential %s will be deleted", v89, 0xCu);
            sub_1000752F4(v90);
            v0 = v210;
          }

          v1 = (v76 + 1);
          v96 = v0[32];
          v97 = v0[15];
          CredentialInternal.identifier.getter();
          v98 = sub_10035E904();
          if (v2)
          {
            v127 = v0[41];
            v128 = v0[42];
            v129 = v0[39];
            v130 = v0[40];
            v131 = v0[38];

            (*v207)(v0[32], v0[30]);

            goto LABEL_82;
          }

          v99 = v98;
          v100 = v0[32];
          v101 = v0[15];
          v102 = swift_task_alloc();
          v102[2] = v99;
          v102[3] = v101;
          v102[4] = v100;
          NSManagedObjectContext.performAndWait<A>(_:)();
          v10 = v0[32];
          v103 = v0[30];

          (*v207)(v10, v103);

          v2 = 0;
        }

        ++v76;
        if (v1 == v197)
        {
          v204 = v0[39];
          goto LABEL_72;
        }

        continue;
      }
    }
  }

  v18 = 0;
  v196 = v17 & 0xFFFFFFFFFFFFFF8;
  v200 = v17 & 0xC000000000000001;
  v194 = v17;
  while (v200)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v0 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      goto LABEL_86;
    }

LABEL_16:
    v20 = v210[34];
    v21 = v210[35];
    v10 = v210[30];
    v22 = v19;
    CredentialInternal.identifier.getter();
    CredentialInternal.identifier.getter();
    v23 = static UUID.== infix(_:_:)();
    v24 = *v207;
    (*v207)(v20, v10);
    v24(v21, v10);
    if (v23)
    {
      v36 = sub_1000BCE28(v190);
      if (v192)
      {
        v0 = v210;
        v144 = v210[41];
        v143 = v210[42];
        v146 = v210[39];
        v145 = v210[40];
        v147 = v210[38];

        goto LABEL_82;
      }

      v37 = v36;

      v0 = v210;
      if (v37)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_1000958E4(v49, qword_10051B2C8);
        v50 = v22;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = v210[35];
          v54 = v210[30];
          v55 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          *v55 = 136315394;
          *(v55 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v211);
          *(v55 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v56 = UUID.uuidString.getter();
          v58 = v57;
          v24(v53, v54);
          v59 = sub_1002FFA0C(v56, v58, &v211);

          *(v55 + 14) = v59;
          _os_log_impl(&_mh_execute_header, v51, v52, "%s: Credential %s state updated", v55, 0x16u);
          swift_arrayDestroy();

          v0 = v210;
        }

        v60 = v0[33];
        v61 = v0[27];
        v62 = v0[15];
        CredentialInternal.identifier.getter();
        CredentialInternal.state.getter();
        v63 = sub_10035E904();
        v64 = v0[33];
        v65 = v0;
        v66 = v0[27];
        v67 = v65[15];
        v68 = swift_task_alloc();
        v68[2] = v63;
        v68[3] = v67;
        v68[4] = v64;
        v68[5] = v66;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v69 = v65[33];
        v70 = v65[30];
        v71 = v65[27];
        v1 = v65[23];

        (*v186)(v71, v1);
        v24(v69, v70);
        v72 = v50;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v73 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v2 = 0;
        v0 = v210;
      }

      else
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_1000958E4(v38, qword_10051B2C8);
        v39 = v22;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v210[35];
          v43 = v210[30];
          v44 = swift_slowAlloc();
          v1 = swift_slowAlloc();
          v211 = v1;
          *v44 = 136315394;
          *(v44 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v211);
          *(v44 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v45 = UUID.uuidString.getter();
          v47 = v46;
          v24(v42, v43);
          v48 = sub_1002FFA0C(v45, v47, &v211);

          *(v44 + 14) = v48;
          _os_log_impl(&_mh_execute_header, v40, v41, "%s: No state update to credential %s", v44, 0x16u);
          swift_arrayDestroy();

          v0 = v210;
        }

        else
        {
        }

        v2 = 0;
      }

      v10 = v180;
      v5 = v182;
      v11 = v187;
      v9 = v188;
      goto LABEL_4;
    }

    ++v18;
    v17 = v194;
    if (v0 == v1)
    {
      goto LABEL_22;
    }
  }

  if (v18 >= *(v196 + 16))
  {
    goto LABEL_87;
  }

  v19 = *(v17 + 8 * v18 + 32);
  v0 = (v18 + 1);
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_16;
  }

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
  v157 = v0[41];
  v156 = v0[42];
  v158 = v0;
  v159 = v0[40];
  v160 = v158[38];
  v161 = v158[39];

  v162 = v158[42];
  v163 = v158[33];
  v164 = v158[30];
  (*v186)(v158[27], v158[23]);
  (v1)(v163, v164);

  v0 = v158;
LABEL_82:
  v133 = v0[36];
  v132 = v0[37];
  v135 = v0[34];
  v134 = v0[35];
  v136 = v0[33];
  v137 = v210[32];
  v138 = v210[29];
  v139 = v210[28];
  v140 = v210[27];
  v141 = v210[26];
  v198 = v210[25];
  v201 = v210[22];
  v205 = v210[19];
  v208 = v210[16];

  v142 = v210[1];

  return v142();
}

void *sub_1003313A8(unint64_t a1)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v58 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100331A8C();
  v14 = v1;
  if (!v1)
  {
    v64 = result;
    v77 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = 0;
      v66 = 0;
      v71 = (v8 + 6);
      v72 = a1 & 0xC000000000000001;
      v63 = (v8 + 4);
      v61 = a1 & 0xFFFFFFFFFFFFFF8;
      v62 = (v8 + 1);
      v69 = _swiftEmptyDictionarySingleton;
      v59 = "Unknown default state internal ";
      *&v13 = 136315394;
      v58 = v13;
      v67 = v11;
      v68 = _swiftEmptyArrayStorage;
      v60 = v7;
      v70 = i;
      while (v72)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_35;
        }

LABEL_15:
        v75 = v16;
        v73 = v18;
        v20 = [v18 applet];
        sub_10013070C(v6);
        v21 = (*v71)(v6, 1, v7);
        v74 = v19;
        if (v21 == 1)
        {
          sub_100156C78(v6);
LABEL_23:
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_1000958E4(v34, qword_10051B2C8);
          v35 = v20;
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v65 = v37;
            v39 = v38;
            v68 = swift_slowAlloc();
            v76[0] = v68;
            *v39 = v58;
            *(v39 + 4) = sub_1002FFA0C(0xD00000000000001ELL, v59 | 0x8000000000000000, v76);
            *(v39 + 12) = 2080;
            v40 = [v35 identifier];
            v41 = v35;
            v42 = v6;
            v43 = a1;
            v44 = v40;
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v14;
            v48 = v47;

            a1 = v43;
            v6 = v42;
            v35 = v41;
            v49 = sub_1002FFA0C(v45, v48, v76);
            v14 = v46;
            v11 = v67;

            *(v39 + 14) = v49;
            v7 = v60;
            _os_log_impl(&_mh_execute_header, v36, v65, "%s: Found orphaned applet with instanceAID %s", v39, 0x16u);
            swift_arrayDestroy();
          }

          v17 = v70;
          v8 = v35;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v55 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v68 = v77;
          goto LABEL_8;
        }

        v22 = (*v63)(v11, v6, v7);
        __chkstk_darwin(v22);
        *(&v58 - 2) = v11;
        v23 = sub_10011F6D0(sub_1003330C8, (&v58 - 2), v64);
        if (!v23)
        {
          (*v62)(v11, v7);
          goto LABEL_23;
        }

        v8 = v23;
        sub_1000B2A4C(v66);
        v24 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v24;
        v26 = sub_10008CDE0(v8);
        v28 = v24[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_37;
        }

        v32 = v27;
        if (v24[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v57 = v26;
            sub_100313318();
            v26 = v57;
            v7 = v60;
          }
        }

        else
        {
          sub_10030E318(v31, isUniquelyReferenced_nonNull_native);
          type metadata accessor for CredentialInternal();
          v26 = sub_10008CDE0(v8);
          if ((v32 & 1) != (v33 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        v50 = v76[0];
        v17 = v70;
        v69 = v76[0];
        if ((v32 & 1) == 0)
        {
          v51 = v26;
          sub_100317A88(v26, v8, _swiftEmptyArrayStorage, v76[0]);
          v52 = v8;
          v50 = v69;
          v26 = v51;
        }

        v53 = (v50[7] + 8 * v26);
        v54 = v73;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v56 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v7 = v60;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v11 = v67;
        (*v62)(v67, v7);
        v66 = sub_10033205C;
LABEL_8:
        v16 = v75 + 1;
        if (v74 == v17)
        {

          sub_1000B2A4C(v66);
          return v69;
        }
      }

      if (v16 >= *(v61 + 16))
      {
        goto LABEL_36;
      }

      v18 = *(a1 + 8 * v16 + 32);
      v19 = v16 + 1;
      if (!__OFADD__(v16, 1))
      {
        goto LABEL_15;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100331A8C()
{
  v2 = sub_10035E904();
  if (!v1)
  {
    v3 = v2;
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = objc_allocWithZone(NSFetchRequest);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithEntityName:v7];

    v19 = NSManagedObjectContext.fetch(_:)();
    v10 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage;
    v20 = *(v19 + 16);
    if (!v20)
    {
      goto LABEL_26;
    }

    v21 = 0;
    v22 = v19 + 32;
    v23 = &type metadata for Any;
    while (1)
    {
      v34 = v10;
      v24 = v22 + 32 * v21;
      v25 = v21;
      while (1)
      {
        if (v25 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        sub_1000754F0(v24, v37);
        sub_1000754F0(v37, v36);
        type metadata accessor for SecureElementCredentialEntity();
        if (!swift_dynamicCast())
        {
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_1000958E4(v27, qword_10051B2C8);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = v23;
            v32 = swift_slowAlloc();
            v36[0] = v32;
            *v30 = 136315138;
            *(v30 + 4) = sub_1002FFA0C(0xD000000000000013, 0x800000010046F250, v36);
            _os_log_impl(&_mh_execute_header, v28, v29, "%s: Unable to cast entity from database as credential entity", v30, 0xCu);
            sub_1000752F4(v32);
            v23 = v31;
          }

          sub_1000752F4(v37);
          goto LABEL_12;
        }

        type metadata accessor for CredentialInternal();
        v26 = sub_1000BF55C(v35);
        sub_1000752F4(v37);
        if (v26)
        {
          break;
        }

LABEL_12:
        ++v25;
        v24 += 32;
        if (v20 == v25)
        {
          v10 = v34;
          goto LABEL_26;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v21 = v25 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v38;
      v22 = v19 + 32;
      if (v20 - 1 == v25)
      {
LABEL_26:

        return v10;
      }
    }
  }

  if (qword_1005019D8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_1000958E4(v9, qword_10051B2C8);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1002FFA0C(0xD000000000000013, 0x800000010046F250, v37);
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v10 = v15;
    v16 = sub_1002FFA0C(v14, v15, v37);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: CoreData error %s encountered while fetching entity", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();

  return v10;
}

uint64_t sub_100331F6C(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  CredentialInternal.identifier.getter();
  LOBYTE(v7) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

BOOL sub_10033206C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v21 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *a3;
  if (v12 >> 62)
  {
LABEL_15:
    v22 = v12 & 0xFFFFFFFFFFFFFF8;
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = v12 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = (v5 + 8);

  v15 = 0;
  do
  {
    v16 = v15;
    if (v13 == v15)
    {
      break;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v22 + 16))
      {
        goto LABEL_14;
      }

      v17 = *(v12 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    CredentialInternal.identifier.getter();
    CredentialInternal.identifier.getter();
    v5 = static UUID.== infix(_:_:)();

    v19 = *v14;
    (*v14)(v9, v4);
    v19(v11, v4);
    v15 = v16 + 1;
  }

  while ((v5 & 1) == 0);

  return v13 != v16;
}

uint64_t sub_100332260@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v32 = *a1;
  v4 = CredentialInternal.ownerApplications.getter();
  v40 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = a3;
  if (!v5)
  {
LABEL_33:
    v16 = _swiftEmptyArrayStorage;

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_34;
  }

  while (1)
  {
    a3 = 0;
    v36 = v4 & 0xFFFFFFFFFFFFFF8;
    v37 = v4 & 0xC000000000000001;
    v35 = v4 + 32;
    v34 = v5;
LABEL_6:
    if (v37)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a3 >= *(v36 + 16))
      {
        goto LABEL_31;
      }

      v4 = *(v35 + 8 * a3);
    }

    v7 = v4;
    if (!__OFADD__(a3++, 1))
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v17 = v4;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v17;
    v33 = a3;
    if (!v5)
    {
      goto LABEL_33;
    }
  }

  v38 = a3;
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v4;
  }

  else
  {
    a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    if (a3 == v9)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v40 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = specialized ContiguousArray._endMutation()();
      goto LABEL_5;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v4 = *(a2 + 8 * v9 + 32);
    }

    v11 = v4;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = ApplicationInfoInternal.bundleId.getter();
    v14 = v13;
    if (v12 == ApplicationInfoInternal.bundleId.getter() && v14 == v15)
    {

      goto LABEL_5;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v9;
  }

  while ((v10 & 1) == 0);

LABEL_5:
  a3 = v38;
  if (v38 != v34)
  {
    goto LABEL_6;
  }

  v16 = v40;

  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_49:
    while (1)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        goto LABEL_44;
      }

LABEL_36:
      v19 = objc_opt_self();
      v20 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v16 + 16))
          {
            goto LABEL_48;
          }

          v21 = *(v16 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        ApplicationInfoInternal.bundleId.getter();
        v24 = String._bridgeToObjectiveC()();

        v40 = 0;
        v25 = [v19 bundleRecordWithBundleIdentifier:v24 allowPlaceholder:0 error:&v40];

        if (v25)
        {
          v29 = v40;

          v28 = 1;
          v27 = v33;
          goto LABEL_46;
        }

        v26 = v40;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        ++v20;
        if (v23 == v18)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
    }
  }

LABEL_34:
  if ((v16 & 0x4000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v18 = *(v16 + 16);
  if (v18)
  {
    goto LABEL_36;
  }

LABEL_44:

  v27 = v33;
  CredentialInternal.identifier.getter();
  v28 = 0;
LABEL_46:
  v30 = type metadata accessor for UUID();
  return (*(*(v30 - 8) + 56))(v27, v28, 1, v30);
}

void *sub_1003326A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100332DE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100332734(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1000754F0(v17 + 32 * v16, v34);
    sub_100075D50(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_100075D50(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100332984(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100068FC4(&qword_10050AAC0, &qword_100415220);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    v20 = v17;

    result = NSObject._rawHashValue(seed:)(v19);
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100332BA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100068FC4(&qword_10050B1C8, &qword_100416370);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100332DE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_100332984(v19, a2, v20, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100332984(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100332F48(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100332DE0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1003326A4(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1003330E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033314C(uint64_t a1)
{
  v2 = type metadata accessor for PresentmentInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003331A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10033325C()
{
  v1 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v1 + 20);

    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping timer for pid %d", v5, 8u);

    v6 = *(v1 + 24);
    if (v6)
    {
LABEL_5:
      [v6 invalidate];
      v7 = *(v1 + 24);
      goto LABEL_8;
    }
  }

  else
  {

    v6 = *(v1 + 24);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_8:
  *(v1 + 24) = 0;

  v8 = *(v1 + 32);
  if (v8)
  {
    sub_1003AE754(v8);
    v8 = *(v1 + 32);
  }

  *(v1 + 32) = 0;
}

void sub_1003333B8(void *a1)
{
  if (!*(v1 + 16))
  {
    v2 = v1;
    if (*(v1 + 32) || *(v1 + 24))
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000958E4(v3, qword_10051B2C8);

      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 67109120;
        *(v5 + 4) = *(v2 + 20);

        _os_log_impl(&_mh_execute_header, oslog, v4, "Existing background timer / assertion for pid %d found, do not start a new one", v5, 8u);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000958E4(v6, qword_10051B2C8);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = *(v2 + 20);

        _os_log_impl(&_mh_execute_header, v7, v8, "Client pid %d WM transceive, starting timer for 15s and acquiring RBSAssertion", v9, 8u);
      }

      else
      {
      }

      v10 = [objc_opt_self() targetWithPid:*(v2 + 20)];
      _StringGuts.grow(_:)(30);

      aBlock = 0x20746E65696C43;
      v38 = 0xE700000000000000;
      v43 = *(v2 + 20);
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 0xD000000000000015;
      v12._object = 0x800000010046F350;
      String.append(_:)(v12);
      sub_100068FC4(&qword_100504060, &qword_10040B370);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100409E40;
      v14 = v10;
      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() attributeWithDomain:v15 name:v16];

      *(v13 + 32) = v17;
      v18 = objc_allocWithZone(RBSAssertion);
      v19 = String._bridgeToObjectiveC()();

      sub_10009393C(0, &qword_100504750, RBSAttribute_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = [v18 initWithExplanation:v19 target:v14 attributes:isa];

      v41 = sub_1003348D4;
      v42 = v2;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10033432C;
      v40 = &unk_1004D0EE8;
      v22 = _Block_copy(&aBlock);

      [v21 acquireWithInvalidationHandler:v22];
      _Block_release(v22);
      v23 = *(v2 + 24);
      *(v2 + 24) = v21;
      v24 = v21;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = *(v2 + 20);

        _os_log_impl(&_mh_execute_header, v25, v26, "Setting new background timer for client pid %d", v27, 8u);
      }

      else
      {
      }

      v28 = swift_allocObject();
      swift_weakInit();
      v29 = objc_allocWithZone(SESTimer);
      v41 = sub_10033492C;
      v42 = v28;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_100080830;
      v40 = &unk_1004D0F38;
      v30 = _Block_copy(&aBlock);

      v31 = sub_1003AE50C(v29, a1, v30);
      _Block_release(v30);

      v32 = *(v2 + 32);
      *(v2 + 32) = v31;

      v33 = *(v2 + 32);
      if (v33)
      {
        v34 = v33;
        sub_1003AE64C(v34, 14.5, 0.5);
      }

      else
      {
      }
    }
  }
}

void sub_100333A98()
{
  v1 = v0;
  if (*(v0 + 32))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = *(v1 + 20);

      _os_log_impl(&_mh_execute_header, v3, v4, "Client pid %d entering foreground outside, idempotently invalidate RBS assertion, stopping timer", v5, 8u);
    }

    else
    {
    }

    sub_10033325C();
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = *(v1 + 20);

      _os_log_impl(&_mh_execute_header, oslog, v7, "Client pid %d entering foreground outside of Wired Mode transceive, no op", v8, 8u);
    }

    else
    {
    }
  }
}

void sub_100333CE0()
{
  if (!*(v0 + 32))
  {
    v1 = v0;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = *(v1 + 20);

      _os_log_impl(&_mh_execute_header, v3, v4, "Client pid %d backgrounded outside of WM transceive, invalidating session", v5, 8u);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100142EA4(*(v1 + 20), 0);
      swift_unknownObjectRelease();
    }

    v6 = *(v1 + 24);
    if (v6)
    {
      [v6 invalidate];
      v6 = *(v1 + 24);
    }

    *(v1 + 24) = 0;
  }
}

uint64_t sub_100333E54()
{
  v1 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v1 + 20);

    _os_log_impl(&_mh_execute_header, v3, v4, "Client pid %d entering suspended state, stopping all timers and assertions to end session", v5, 8u);
  }

  else
  {
  }

  sub_10033325C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100142EA4(*(v1 + 20), 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100333FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10033325C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100142EA4(*(a3 + 20), 1);
    swift_unknownObjectRelease();
  }

  if (!a2 || (v28 = a2, swift_errorRetain(), sub_100068FC4(&unk_100503F80, &qword_100409CF0), sub_10009393C(0, &qword_10050AA20, NSError_ptr), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, v14, "Skipping invalidation handler due to missing error", v15, 2u);
    }

    goto LABEL_22;
  }

  v5 = v27;
  v6 = [v27 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_16:
    if ([v27 code]== 1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_10051B2C8);
  v17 = v27;
  v5 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = v17;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_1002FFA0C(v23, v25, &v28);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v5, v18, "Assertion invalidated, %s", v19, 0xCu);
    sub_1000752F4(v20);

    return;
  }

LABEL_22:
}

void sub_10033432C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1003343B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100334410();
  }

  return result;
}

void sub_100334410()
{
  v1 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v0 + 20);

    _os_log_impl(&_mh_execute_header, v3, v4, "Background timer for pid %d expired", v5, 8u);

    v6 = *(v0 + 24);
    if (v6)
    {
LABEL_5:
      [v6 invalidate];
      v7 = *(v0 + 24);
      goto LABEL_8;
    }
  }

  else
  {

    v6 = *(v0 + 24);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_8:
  *(v0 + 24) = 0;

  v8 = *(v0 + 16) - 1;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8 > 1)
  {
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = *(v1 + 20);

      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating expired background timer for pid %d", v13, 8u);
    }

    else
    {
    }

    v14 = *(v1 + 32);
    *(v1 + 32) = 0;
  }

  else
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = *(v1 + 20);

      _os_log_impl(&_mh_execute_header, v9, v10, "Ending session for suspended client %d after background timer expiration", v12, 8u);
    }

    else
    {
    }

    sub_10033325C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100142EA4(*(v1 + 20), 1);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003346EC()
{
  _StringGuts.grow(_:)(22);
  v1._countAndFlagsBits = 0x3D6574617473;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  v6 = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x747265737361202CLL;
  v2._object = 0xEC0000003D6E6F69;
  String.append(_:)(v2);
  v3 = *(v0 + 24);
  sub_100068FC4(&qword_10050B298, &qword_100416498);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  return 0;
}

uint64_t sub_1003347DC()
{
  sub_10006A49C(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_10033485C()
{
  result = qword_10050B290;
  if (!qword_10050B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B290);
  }

  return result;
}

uint64_t sub_1003348DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003348F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1003349C4(void (*a1)(uint64_t))
{
  sub_10006928C();
  if (qword_100501D80 != -1)
  {
    swift_once();
  }

  v3 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((v6 & 1) != 0 || v5 != 0x534F534543555245)
  {
    v4 = sub_1003AF3D8(v1);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    a1(v3);
  }
}

uint64_t sub_100334B34()
{
  v0 = sub_100068FC4(&qword_10050B2A8, &qword_1004164A0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = DispatchSpecificKey.init()();
  qword_10050B2A0 = result;
  return result;
}

uint64_t sub_100334B80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_100334BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = *(a1 + 16);
  sub_10019F3C0(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = v28;
  v7 = 0;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    v10 = 1 << v5;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_26;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v5);
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_30;
      }

      v13 = 0xE400000000000000;
      v14 = 1852799308;
    }

    else
    {
      v13 = 0xE600000000000000;
      v14 = 0x616873696C41;
    }

    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = v5;
      sub_10019F3C0((v15 > 1), v16 + 1, 1);
      v6 = v28;
      v11 = v26;
      v5 = v27;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v14;
    v17[5] = v13;
    v8 = 1 << *(a1 + 32);
    if (v5 >= v8)
    {
      goto LABEL_27;
    }

    v3 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v19 = v18 & (-2 << (v5 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1000937D4(v5, v11, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_23;
        }
      }

      sub_1000937D4(v5, v11, 0);
LABEL_23:
      v6 = v28;
    }

    ++v7;
    v5 = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100334E18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100334E78()
{
  result = [objc_allocWithZone(type metadata accessor for DSK()) init];
  qword_10051B7E8 = result;
  return result;
}

uint64_t sub_100334ED0()
{
  v0 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v13[0] = sub_10006928C();
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v6);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v13[1] = &_swiftEmptyArrayStorage;
  sub_1001CB0E0();
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_100075C60(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10051B7F0 = result;
  return result;
}

id sub_1003351CC(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t sub_100335230()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15[0] = sub_10006928C();
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.userInitiated(_:), v7);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v15[1] = &_swiftEmptyArrayStorage;
  sub_1001CB0E0();
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_100075C60(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10051B7F8 = result;
  return result;
}

id sub_100335508()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC10seserviced3DSK_isRunning] = 0;
  v0[OBJC_IVAR____TtC10seserviced3DSK_isLowPowerModeEnabled] = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v2 = &v0[OBJC_IVAR____TtC10seserviced3DSK_lowPowerHandlerName];
  *v2 = 0xD000000000000016;
  v2[1] = 0x800000010046F480;
  *&v0[OBJC_IVAR____TtC10seserviced3DSK_runningModules] = &_swiftEmptySetSingleton;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, "init");
  v4 = qword_100501D90;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v9[4] = sub_100337A10;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100193978;
  v9[3] = &unk_1004D0FD0;
  v7 = _Block_copy(v9);

  os_state_add_handler();
  _Block_release(v7);

  return v5;
}

_DWORD *sub_1003356B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced3DSK_isRunning);
  v15 = &type metadata for Bool;
  LOBYTE(v14) = v1;
  sub_100075D50(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced3DSK_isLowPowerModeEnabled);
  v15 = &type metadata for Bool;
  LOBYTE(v14) = v3;
  sub_100075D50(&v14, v13);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0xD000000000000015, 0x8000000100468590, v4);
  v5 = OBJC_IVAR____TtC10seserviced3DSK_runningModules;
  swift_beginAccess();
  v6 = *(v0 + v5);

  v8 = sub_100334BA8(v7);

  v15 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v14 = v8;
  sub_100075D50(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x4D676E696E6E7572, 0xEE0073656C75646FLL, v9);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = sub_100015DA0("dsk.state", isa);

  return v11;
}

void sub_1003358D4(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (!a1)
  {
    if (sub_10023ECBC())
    {
      goto LABEL_6;
    }

LABEL_32:
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      if (a1)
      {
        v27 = 1852799308;
      }

      else
      {
        v27 = 0x616873696C41;
      }

      if (a1)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE600000000000000;
      }

      v29 = sub_1002FFA0C(v27, v28, v34);

      *(v25 + 4) = v29;
      v30 = "Rejecting DSK %s start";
      goto LABEL_48;
    }

LABEL_49:

    return;
  }

  if (a1 != 1)
  {
    v34[0] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if ((sub_100092F7C() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  swift_beginAccess();
  v11 = sub_1000D558C(&v35, a1);
  swift_endAccess();
  if ((v11 & 1) == 0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      if (a1)
      {
        v31 = 1852799308;
      }

      else
      {
        v31 = 0x616873696C41;
      }

      if (a1)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE600000000000000;
      }

      v33 = sub_1002FFA0C(v31, v32, v34);

      *(v25 + 4) = v33;
      v30 = "DSK %s is already running";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v23, v24, v30, v25, 0xCu);
      sub_1000752F4(v26);

      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v12 = OBJC_IVAR____TtC10seserviced3DSK_isRunning;
  if ((*(v2 + OBJC_IVAR____TtC10seserviced3DSK_isRunning) & 1) == 0)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting DSK", v15, 2u);
    }

    *(v2 + v12) = 1;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000ED9C0();
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_1001941C0();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100244648();
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    sub_1001BFEC0();
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34[0] = v19;
    *v18 = 136315138;
    if (a1)
    {
      v20 = 1852799308;
    }

    else
    {
      v20 = 0x616873696C41;
    }

    if (a1)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = sub_1002FFA0C(v20, v21, v34);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting DSK %s", v18, 0xCu);
    sub_1000752F4(v19);
  }

  if (a1)
  {
    if (qword_1005018F8 == -1)
    {
LABEL_29:
      sub_100082B94();
      return;
    }

LABEL_54:
    swift_once();
    goto LABEL_29;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  sub_10022F334();
}

void sub_100335F8C(Swift::UInt a1)
{
  v4 = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v2 = OBJC_IVAR____TtC10seserviced3DSK_isRunning;
  if (*(v4 + OBJC_IVAR____TtC10seserviced3DSK_isRunning) != 1 || (v3 = OBJC_IVAR____TtC10seserviced3DSK_runningModules, swift_beginAccess(), sub_10010D998(a1), v14 = v13, swift_endAccess(), (v14 & 1) != 0))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v16))
    {
LABEL_15:

      return;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36[0] = v18;
    *v17 = 136315138;
    if (!a1)
    {
      v19 = 0x616873696C41;
      v20 = 0xE600000000000000;
LABEL_14:
      v28 = sub_1002FFA0C(v19, v20, v36);

      *(v17 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v15, v16, "DSK %s is not running", v17, 0xCu);
      sub_1000752F4(v18);

      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v20 = 0xE400000000000000;
      v19 = 1852799308;
      goto LABEL_14;
    }

    goto LABEL_43;
  }

  v21 = OBJC_IVAR____TtC10seserviced3DSK_logger;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315138;
    v35[1] = v21;
    v36[0] = v25;
    if (a1)
    {
      if (a1 != 1)
      {
LABEL_43:
        v36[3] = a1;
LABEL_45:
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v27 = 0xE400000000000000;
      v26 = 1852799308;
    }

    else
    {
      v26 = 0x616873696C41;
      v27 = 0xE600000000000000;
    }

    v29 = sub_1002FFA0C(v26, v27, v36);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Stopping DSK %s", v24, 0xCu);
    sub_1000752F4(v25);

    if (a1 != 1)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (qword_1005018F8 == -1)
    {
LABEL_19:
      sub_100082F6C();
      goto LABEL_27;
    }

LABEL_42:
    swift_once();
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (a1)
  {
    v36[0] = a1;
    goto LABEL_45;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  sub_1002307D0();
LABEL_27:
  if (!*(*(v4 + v3) + 16))
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Stopping DSK", v32, 2u);
    }

    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000EDD78();
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_1001973A8();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100244A18();
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    sub_1001C0DD4();
    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v33 = *(off_10050B110 + 3);
    os_unfair_lock_lock((v33 + 32));
    v34 = *(v33 + 24);

    *(v33 + 24) = &_swiftEmptySetSingleton;
    os_unfair_lock_unlock((v33 + 32));
    *(v4 + v2) = 0;
  }
}

void sub_100336618()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_41:
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
LABEL_33:
    sub_1000EDD78();
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_1001973A8();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100244A18();
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    sub_1001C0DD4();
    *(v1 + v36) = 0;
    return;
  }

  v2 = &unk_10051B000;
  if (*(v1 + OBJC_IVAR____TtC10seserviced3DSK_isRunning) == 1)
  {
    v36 = OBJC_IVAR____TtC10seserviced3DSK_isRunning;
    v9 = OBJC_IVAR____TtC10seserviced3DSK_runningModules;
    swift_beginAccess();
    v35 = v9;
    v10 = *(v1 + v9);
    v6 = (v10 + 56);
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 56);
    v14 = OBJC_IVAR____TtC10seserviced3DSK_logger;
    v15 = (v11 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v3 = 0;
    *&v16 = 136315138;
    v37 = v16;
    v39 = v10;
    v40 = v1;
    v38 = v14;
    while (v13)
    {
LABEL_12:
      v18 = *(*(v10 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v13)))));
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = v18;
        v24 = v22;
        v43 = v22;
        *v21 = v37;
        v41 = v23;
        if (v23)
        {
          if (v23 != 1)
          {
            v42 = v41;
            goto LABEL_46;
          }

          v25 = 0xE400000000000000;
          v26 = 1852799308;
        }

        else
        {
          v25 = 0xE600000000000000;
          v26 = 0x616873696C41;
        }

        v27 = sub_1002FFA0C(v26, v25, &v43);

        *(v21 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Stopping DSK %s", v21, 0xCu);
        sub_1000752F4(v24);

        v10 = v39;
        v1 = v40;
        v18 = v41;
      }

      else
      {
      }

      v13 &= v13 - 1;
      if (v18 == 1)
      {
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        v2 = qword_10051B188;
        sub_100082F6C();
      }

      else
      {
        if (v18)
        {
          v43 = v18;
LABEL_46:
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return;
        }

        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v2 = qword_10051B5A0;
        sub_1002307D0();
      }
    }

    while (1)
    {
      v17 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v17 >= v15)
      {
        break;
      }

      v13 = v6[v17];
      ++v3;
      if (v13)
      {
        v3 = v17;
        goto LABEL_12;
      }
    }

    v31 = *(v1 + v35);
    *(v1 + v35) = &_swiftEmptySetSingleton;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Stopping DSK", v34, 2u);
    }

    if (qword_100501960 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_43;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "DSK is not running", v30, 2u);
  }
}

Swift::Int sub_100336C78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100336CEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_100336D30@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100336D4C()
{
  if (!*v0)
  {
    return 0x616873696C41;
  }

  if (*v0 == 1)
  {
    return 1852799308;
  }

  v2 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DSK()
{
  result = qword_10050B2F8;
  if (!qword_10050B2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100336E98()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_100336F70()
{
  result = qword_10050B308;
  if (!qword_10050B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B308);
  }

  return result;
}

unint64_t sub_100336FC8()
{
  result = qword_10050B310;
  if (!qword_10050B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B310);
  }

  return result;
}

unint64_t sub_100337020()
{
  result = qword_10050B318;
  if (!qword_10050B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B318);
  }

  return result;
}

unint64_t sub_100337078()
{
  result = qword_10050B320;
  if (!qword_10050B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B320);
  }

  return result;
}

unint64_t sub_1003370D0()
{
  result = qword_10050B328;
  if (!qword_10050B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B328);
  }

  return result;
}

uint64_t sub_100337124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000754F0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_100337170@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000754F0(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_100075D50(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_100075768(v22, &qword_100505FD8, &unk_10040DE10);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1003372D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_100337170(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_100075D50(v46, v44);
  v14 = *a5;
  result = sub_10008C908(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10030A928(v20, a4 & 1);
    v22 = *a5;
    result = sub_10008C908(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10031130C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_1000752F4(v26);
    sub_100075D50(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_100075D50(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_100337170(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_100075D50(v46, v44);
        v33 = *a5;
        result = sub_10008C908(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_10030A928(v37, 1);
          v38 = *a5;
          result = sub_10008C908(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_1000752F4(v32);
          sub_100075D50(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_100075D50(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_100337170(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_100093854();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1003375E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  strcpy((inited + 32), "xpcEventName");
  *(inited + 72) = &type metadata for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v13 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100507D30, &unk_100409C90);
  if (a4 >> 60 != 15)
  {
    v26 = "110ExpressKey";
    sub_100069E2C(a3, a4);
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    v31 = &type metadata for String;
    *&v30 = v14;
    *(&v30 + 1) = v16;
    sub_100075D50(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v29, 0xD000000000000010, 0x8000000100465F50, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(a3, a4);
  }

  if (a6 >> 60 != 15)
  {
    sub_100069E2C(a5, a6);
    *&v30 = sub_100288788(a5, a6);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v31 = &type metadata for String;
    *&v30 = v18;
    *(&v30 + 1) = v20;
    sub_100075D50(&v30, v29);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v29, 0x746E65644979656BLL, 0xED00007265696669, v21);
    sub_10006A2D0(a5, a6);
  }

  if (a7)
  {

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v13;
    sub_1003372D0(a7, sub_100337124, 0, v22, &v30);

    v13 = v30;
  }

  v23 = [objc_opt_self() sharedInstance];
  sub_1001950D4(v13);

  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v23 sendEvent:v24.super.isa keyIdentifier:{isa, v26}];
}

uint64_t sub_1003379D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100337A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100337D50()
{
  result = qword_10050B330;
  if (!qword_10050B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B330);
  }

  return result;
}

uint64_t sub_100337DAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    (*(v5 + 16))(v8, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = a1;
      v21 = v20;
      v33[0] = v20;
      *v19 = 136315138;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      v25 = sub_1002FFA0C(v22, v24, v33);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Removing connection %s", v19, 0xCu);
      sub_1000752F4(v21);
      a1 = v32;
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v26 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
    v27 = swift_beginAccess();
    v28 = *(v2 + v26);
    __chkstk_darwin(v27);
    *(&v31 - 2) = a1;

    v29 = sub_100333244(sub_10033BD9C, &v31 - 4, v28);
    v30 = *(v2 + v26);
    *(v2 + v26) = v29;

    return sub_10033A8B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100338184(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v49 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v46 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

LABEL_12:

    sub_1001A2144(0, 0, v16);

    swift_endAccess();

    sub_10033A8B4();
    return;
  }

  v19 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
  v20 = *(v5 + 16);
  v50 = a1;
  v47 = v20;
  v20(v10, a1, v4);
  v46[1] = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v48 = v5;
    v25 = v24;
    v52[0] = v24;
    *v23 = 136315138;
    sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v48 + 8))(v10, v4);
    v29 = sub_1002FFA0C(v26, v28, v52);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Adding connection %s", v23, 0xCu);
    sub_1000752F4(v25);
    v5 = v48;
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v30 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
  v31 = swift_beginAccess();
  v32 = *(v2 + v30);
  __chkstk_darwin(v31);
  v33 = v50;
  v46[-2] = v50;

  v34 = sub_1002F7E70(sub_10033C4D4, &v46[-4], v32);

  if ((v34 & 1) == 0)
  {
    v38 = v49;
    v47(v49, v33, v4);
    v39 = type metadata accessor for DSKBLEConnectionPriority.Connection(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v16 = swift_allocObject();
    *(v16 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) = 1;
    *(v16 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 1;
    (*(v5 + 32))(v16 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier, v38, v4);
    v42 = swift_beginAccess();
    v51 = v16;
    v43 = *(v2 + v30);
    __chkstk_darwin(v42);
    v46[-2] = &v51;

    v44 = sub_100333244(sub_10033C4FC, &v46[-4], v43);
    v45 = *(v2 + v30);

    *(v2 + v30) = v44;
    if (!(v44 >> 62))
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Connection already exists", v37, 2u);
  }
}

void sub_100338760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  __chkstk_darwin(v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v57 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_13;
  }

  v60 = v9;
  v21 = a2;
  v22 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
  v24 = v62;
  v23 = v63;
  v25 = v62 + 16;
  v59 = *(v62 + 16);
  v59(v12, a1, v63);

  v61 = v22;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v58 = a1;
    v29 = v28;
    v30 = swift_slowAlloc();
    v57[1] = v25;
    v65[0] = v30;
    *v29 = 136315394;
    sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v23;
    v34 = v33;
    (*(v24 + 8))(v12, v32);
    v35 = sub_1002FFA0C(v31, v34, v65);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1002FFA0C(v21, a3, v65);
    _os_log_impl(&_mh_execute_header, v26, v27, "Adding high priority request for connection %s client %s", v29, 0x16u);
    swift_arrayDestroy();

    a1 = v58;
  }

  else
  {

    (*(v24 + 8))(v12, v23);
  }

  v36 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
  a2 = v64;
  v37 = swift_beginAccess();
  v38 = *(a2 + v36);
  __chkstk_darwin(v37);
  v57[-4] = a1;
  v57[-3] = v21;
  v57[-2] = a3;

  v39 = sub_10011F6E8(sub_10033C43C, &v57[-6], v38);

  if (v39)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Request already exists", v42, 2u);
    }

    swift_beginAccess();
    sub_10033B3A8(v39);
    swift_endAccess();
    goto LABEL_11;
  }

  v43 = v60;
  v44 = v63;
  v59(v60, a1, v63);
  v45 = type metadata accessor for DSKBLEConnectionPriority.HighPriorityRequest(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  (*(v62 + 32))(v48 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_connectionIdentifier, v43, v44);
  v49 = (v48 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client);
  *v49 = v21;
  v49[1] = a3;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v36) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

LABEL_13:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v50 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
  v51 = swift_beginAccess();
  v52 = *(a2 + v50);
  __chkstk_darwin(v51);
  v57[-2] = a1;

  v53 = sub_10011F6E8(sub_10033C4D4, &v57[-4], v52);

  if (v53)
  {
    if ((*(v53 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) & 1) == 0)
    {
      sub_10033A8B4();
LABEL_11:

      return;
    }
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Connection does not exist or priority is already HIGH", v56, 2u);
  }
}
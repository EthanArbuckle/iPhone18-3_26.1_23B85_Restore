char *sub_10001CB28()
{
  if (qword_100133B00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000144F0(v1, qword_10014EA40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v44 = v5;
    *v4 = 136315138;
    v6 = URL.path.getter();
    v8 = sub_1000E3AF8(v6, v7, &v44);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading application cache from %s", v4, 0xCu);
    sub_100003C90(v5);
  }

  v9 = *sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF9D4(&v44);
  v10 = v46;
  sub_100003C4C(&v44, *(&v45 + 1));
  v11 = URL.path.getter();
  (*(v10 + 16))(v11);
  v13 = v12;

  sub_100003C90(&v44);
  if (v13 >> 60 == 15)
  {
    v14 = errno.getter();
    result = strerror(v14);
    if (result)
    {
      v16 = String.init(cString:)();
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v44 = v22;
        *v21 = 136315138;
        v23 = sub_1000E3AF8(v16, v18, &v44);

        *(v21 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "contentsOfFile failed to read application cache: %s", v21, 0xCu);
        sub_100003C90(v22);
      }

      else
      {
      }

      return sub_10003E650(_swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Loading application cache, decoding data", v26, 2u);
    }

    v27 = type metadata accessor for PropertyListDecoder();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10001DD58();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v38 = v45;
    if (__PAIR128__(0x80000001001038C0, 0xD000000000000024) == v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100014988();

      return v38;
    }

    else
    {

      sub_10001449C();
      v39 = swift_allocError();
      *v40 = 0xD000000000000023;
      *(v40 + 8) = 0x8000000100104840;
      v41 = v47;
      v42 = v46;
      v43 = v45;
      *(v40 + 16) = v44;
      *(v40 + 32) = v43;
      *(v40 + 48) = v42;
      *(v40 + 64) = v41;
      *(v40 + 72) = 9;
      swift_willThrow();
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v44 = v33;
        *v32 = 136315138;
        v48 = v39;
        swift_errorRetain();
        sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
        v34 = String.init<A>(describing:)();
        v36 = sub_1000E3AF8(v34, v35, &v44);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "invalid application cache, failed to read plist: %s", v32, 0xCu);
        sub_100003C90(v33);
      }

      v37 = sub_10003E650(_swiftEmptyArrayStorage);

      sub_100014988();
      return v37;
    }
  }

  return result;
}

uint64_t sub_10001D0E8()
{
  sub_100003C90(v0 + 2);
  v1 = OBJC_IVAR____TtC10driverkitd16ApplicationCache_applicationCachePath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd16ApplicationCache__cached);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10001D1C4()
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

uint64_t sub_10001D27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001D33C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001D400()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10001D4A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001D4A4()
{
  if (!qword_100134928)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100134928);
    }
  }
}

unint64_t sub_10001D4F4()
{
  result = qword_100134970;
  if (!qword_100134970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134970);
  }

  return result;
}

uint64_t sub_10001D548(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001D590()
{
  result = qword_100134980;
  if (!qword_100134980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134980);
  }

  return result;
}

uint64_t sub_10001D5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D648(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001D6A4()
{
  result = qword_100134998;
  if (!qword_100134998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134998);
  }

  return result;
}

uint64_t sub_10001D6F8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ApplicationRecord(0);
  v6 = v5[5];
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_10001A6CC(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0 || (sub_10006475C(*(a1 + v5[7]), *(a1 + v5[7] + 8), *(a2 + v5[7]), *(a2 + v5[7] + 8)) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[8];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_10006475C(v8, v9, v11, v12);
}

uint64_t sub_10001D7D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100104A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100104A20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100104A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100104A60 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10001D988(uint64_t *a1)
{
  v3 = sub_100003CDC(&qword_1001349A0, &qword_1000F4188);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_10001DB8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100003CDC(&qword_1001349B0, &qword_1000F4190);
    v10[15] = 1;
    sub_10001DBE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100003C90(a1);
  return v8;
}

unint64_t sub_10001DB8C()
{
  result = qword_1001349A8;
  if (!qword_1001349A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349A8);
  }

  return result;
}

unint64_t sub_10001DBE0()
{
  result = qword_1001349B8;
  if (!qword_1001349B8)
  {
    sub_100009FA4(&qword_1001349B0, &qword_1000F4190);
    sub_10001D590();
    sub_10001D548(&qword_1001349C0, type metadata accessor for ApplicationRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349B8);
  }

  return result;
}

unint64_t sub_10001DC9C()
{
  result = qword_1001349D0;
  if (!qword_1001349D0)
  {
    sub_100009FA4(&qword_1001349B0, &qword_1000F4190);
    sub_10001D6A4();
    sub_10001D548(&qword_1001349D8, type metadata accessor for ApplicationRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349D0);
  }

  return result;
}

unint64_t sub_10001DD58()
{
  result = qword_1001349E0;
  if (!qword_1001349E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349E0);
  }

  return result;
}

unint64_t sub_10001DDAC()
{
  result = qword_1001349E8;
  if (!qword_1001349E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001349E8);
  }

  return result;
}

uint64_t sub_10001DE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001349F0, &unk_1000F56C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DEF0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for ApplicationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10001E090(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001E0A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001E0EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001E140()
{
  result = qword_100134A00;
  if (!qword_100134A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A00);
  }

  return result;
}

unint64_t sub_10001E198()
{
  result = qword_100134A08;
  if (!qword_100134A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A08);
  }

  return result;
}

unint64_t sub_10001E1F0()
{
  result = qword_100134A10;
  if (!qword_100134A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A10);
  }

  return result;
}

unint64_t sub_10001E248()
{
  result = qword_100134A18;
  if (!qword_100134A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A18);
  }

  return result;
}

unint64_t sub_10001E2A0()
{
  result = qword_100134A20;
  if (!qword_100134A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A20);
  }

  return result;
}

unint64_t sub_10001E2F8()
{
  result = qword_100134A28;
  if (!qword_100134A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134A28);
  }

  return result;
}

uint64_t sub_10001E34C()
{
  _StringGuts.grow(_:)(22);

  strcpy(v5, "Active Driver ");
  HIBYTE(v5[1]) = -18;
  v1 = *(v0 + *(type metadata accessor for ActiveDriverInfo() + 20));
  String.append(_:)(v1);
  v2._countAndFlagsBits = 544497952;
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = URL.path.getter();
  String.append(_:)(v3);

  return v5[0];
}

uint64_t sub_10001E408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001E490()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_10001E664();
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_10001E664()
{
  v2 = v1;
  v3 = sub_100003CDC(&qword_100134BE0, &qword_1000F44E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v34 - v5);
  v42 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v37 = *(v42 - 8);
  v7 = *(v37 + 64);
  v8 = __chkstk_darwin(v42);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v36 = &v34 - v10;
  v11 = *sub_100003C4C((v0 + 24), *(v0 + 48));
  sub_1000DF65C(v41);
  v12 = sub_100003C4C(v41, v41[3]);
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000100104B00;
  v40[0] = &off_100125FC0;
  sub_100030728(&off_100125FF0);
  v14 = v40[0];
  *(inited + 72) = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(inited + 48) = v14;
  v15 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(inited + 32, &unk_1001372D0, &unk_1000F4500);
  v16 = *v12;
  v17 = sub_100020580(v15, 0x7478654420746547, 0xE900000000000073);
  v40[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  v40[0] = v17;
  v18 = sub_10009C698(v40);
  v20 = v19;
  sub_100003C90(v40);
  if (v20 >> 60 == 15)
  {
    sub_10001449C();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0;
    *(v21 + 72) = 75;
    swift_willThrow();

    return sub_100003C90(v41);
  }

  v22 = sub_10009CBAC(v18, v20);
  if (v1)
  {

    sub_100014988();
    return sub_100003C90(v41);
  }

  v24 = v22;
  sub_100014988();

  sub_100003C90(v41);
  v25 = v24[2];
  if (v25)
  {
    v26 = 0;
    v27 = v24 + 4;
    v28 = (v37 + 48);
    v29 = _swiftEmptyArrayStorage;
    v35 = v24 + 4;
    while (v26 < v24[2])
    {
      v41[0] = v27[v26];
      sub_10001EBC4(v41, v6);
      if ((*v28)(v6, 1, v42) == 1)
      {
        sub_10000A184(v6, &qword_100134BE0, &qword_1000F44E8);
      }

      else
      {
        v38 = v2;
        v30 = v36;
        sub_100020D24(v6, v36, &qword_100134BE8, &unk_1000F44F0);
        sub_100020D24(v30, v39, &qword_100134BE8, &unk_1000F44F0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100031640(0, v29[2] + 1, 1, v29);
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_100031640(v31 > 1, v32 + 1, 1, v29);
        }

        v29[2] = v32 + 1;
        sub_100020D24(v39, v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32, &qword_100134BE8, &unk_1000F44F0);
        v27 = v35;
        v2 = v38;
      }

      if (v25 == ++v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_18:

    if (v29[2])
    {
      sub_100003CDC(&qword_100134BF0, &unk_1000F4510);
      v33 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v33 = &_swiftEmptyDictionarySingleton;
    }

    v41[0] = v33;
    sub_100020864(v29, 1, v41);
    if (!v2)
    {
      return v41[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001EBC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (!*(*a1 + 16) || (v10 = *a1, v11 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60), (v12 & 1) == 0) || (sub_10000B430(*(v9 + 56) + 32 * v11, v56), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100133AF0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000144F0(v25, qword_10014EA10);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = Dictionary.description.getter();
      v31 = sub_1000E3AF8(v29, v30, v56);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1000E3AF8(0xD00000000000001DLL, 0x8000000100104B60, v56);
      _os_log_impl(&_mh_execute_header, v26, v27, "Codeless info %s did not contain data for key %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_17;
  }

  v13 = v55;
  v57 = v54;
  if (!*(v9 + 16) || (v14 = sub_100061588(0xD000000000000016, 0x8000000100103270), (v15 & 1) == 0) || (sub_10000B430(*(v9 + 56) + 32 * v14, v56), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100133AF0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000144F0(v35, qword_10014EA10);

    v26 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v13;
      v56[0] = v38;
      *v37 = 136315394;
      v39 = Dictionary.description.getter();
      v41 = sub_1000E3AF8(v39, v40, v56);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_1000E3AF8(0xD000000000000016, 0x8000000100103270, v56);
      _os_log_impl(&_mh_execute_header, v26, v36, "Codeless info %s did not contain path for key %s", v37, 0x16u);
      swift_arrayDestroy();

      sub_1000128D8(v57, v53);
    }

    else
    {
      sub_1000128D8(v57, v13);
    }

LABEL_17:

    v32 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
    v33 = *(*(v32 - 8) + 56);
    v34 = a2;
    return v33(v34, 1, 1, v32);
  }

  v53 = a2;
  if (qword_100133A50 != -1)
  {
    swift_once();
  }

  v16 = *(v9 + 16);
  v51 = qword_10014E8C0;
  v52 = *algn_10014E8C8;
  if (v16)
  {
    v17 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v18)
    {
      sub_10000B430(*(v9 + 56) + 32 * v17, v56);
      if (swift_dynamicCast())
      {
        v51 = v55;
        v52 = v54;
        URL.init(fileURLWithPath:isDirectory:)();

        v19 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
        v20 = v53;
        v21 = v53 + *(v19 + 48);
        *v53 = v57;
        v20[1] = v13;
        (*(v5 + 32))(v21, v8, v4);
        v22 = &v21[*(type metadata accessor for ActiveDriverInfo() + 20)];
        v23 = v51;
        *v22 = v52;
        *(v22 + 1) = v23;
        return (*(*(v19 - 8) + 56))(v20, 0, 1, v19);
      }
    }
  }

  if (qword_100133AF0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000144F0(v42, qword_10014EA10);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v45 = 136315394;
    v46 = Dictionary.description.getter();
    v48 = sub_1000E3AF8(v46, v47, v56);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_1000E3AF8(v51, v52, v56);
    _os_log_impl(&_mh_execute_header, v43, v44, "Codeless info %s did not contain identifier for key %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000128D8(v57, v13);

  v49 = v53;
  v32 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v33 = *(*(v32 - 8) + 56);
  v34 = v49;
  return v33(v34, 1, 1, v32);
}

uint64_t sub_10001F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v6 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v57 = &v53[-v8];
  active = type metadata accessor for ActiveDriverInfo();
  v10 = *(*(active - 8) + 64);
  v11 = __chkstk_darwin(active);
  v13 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v53[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v53[-v18];
  __chkstk_darwin(v17);
  v21 = &v53[-v20];
  if (qword_100133AF0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000144F0(v22, qword_10014EA10);
  sub_100020494(a1, v21);
  v58 = a1;
  sub_100020494(a1, v19);
  sub_100020494(a2, v16);
  v59 = a2;
  sub_100020494(a2, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v56 = v3;
    v26 = v25;
    v55 = swift_slowAlloc();
    v62[0] = v55;
    *v26 = 136315906;
    v27 = active;
    v28 = &v21[*(active + 20)];
    v54 = v24;
    v29 = *v28;
    v30 = v28[1];

    sub_100020808(v21);
    v31 = sub_1000E3AF8(v29, v30, v62);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = URL.path.getter();
    v34 = v33;
    sub_100020808(v19);
    v35 = sub_1000E3AF8(v32, v34, v62);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2080;
    v36 = &v16[*(v27 + 20)];
    v37 = *v36;
    v38 = v36[1];

    sub_100020808(v16);
    v39 = sub_1000E3AF8(v37, v38, v62);

    *(v26 + 24) = v39;
    *(v26 + 32) = 2080;
    v40 = URL.path.getter();
    v42 = v41;
    sub_100020808(v13);
    v43 = sub_1000E3AF8(v40, v42, v62);

    *(v26 + 34) = v43;
    _os_log_impl(&_mh_execute_header, v23, v54, "Drivers with identifiers %s (%s), %s (%s) have the same unique identifier", v26, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100020808(v13);
    sub_100020808(v16);
    sub_100020808(v19);
    sub_100020808(v21);
  }

  v44 = v58;
  v62[0] = URL.path.getter();
  v62[1] = v45;
  v46 = v59;
  v60 = URL.path.getter();
  v61 = v47;
  v48 = type metadata accessor for Locale();
  v49 = v57;
  (*(*(v48 - 8) + 56))(v57, 1, 1, v48);
  sub_100012814();
  v50 = StringProtocol.compare<A>(_:options:range:locale:)();
  sub_10000A184(v49, &qword_100134BF8, &qword_1000F4520);

  if (v50 == -1)
  {
    v51 = v44;
  }

  else
  {
    v51 = v46;
  }

  return sub_100020494(v51, v63);
}

_UNKNOWN **sub_10001F840()
{
  v1 = sub_10001E664();

  v2 = *(v0 + 72);
  if (!v2)
  {

    goto LABEL_5;
  }

  v3 = *(v0 + 72);

  v4 = sub_100045A08(v1, v2);

  if ((v4 & 1) == 0)
  {
LABEL_5:
    v6 = *(v0 + 72);
    *(v0 + 72) = v1;
    v5 = &off_100126110;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

unint64_t sub_10001F904()
{
  active = type metadata accessor for ActiveDriverInfo();
  v72 = *(active - 8);
  v1 = *(v72 + 64);
  v2 = __chkstk_darwin(active);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v71 = &v68 - v5;
  v6 = sub_100003CDC(&qword_100134BD0, &qword_1000F44D8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v68 - v11);
  v91 = 0xD000000000000010;
  v92 = 0x8000000100104AE0;
  v13 = sub_10001E490();
  v14 = 0;
  v16 = v13 + 64;
  v15 = *(v13 + 64);
  v73 = v13;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v84 = xmmword_1000F3160;
  v70 = v10;
  v75 = v13 + 64;
  v74 = v20;
  v69 = active;
  v68 = v4;
  v76 = v12;
  while (1)
  {
    if (v19)
    {
      v78 = v14;
      v29 = v14;
LABEL_16:
      v77 = (v19 - 1) & v19;
      v32 = __clz(__rbit64(v19)) | (v29 << 6);
      v33 = (*(v73 + 48) + 16 * v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = v71;
      sub_100020494(*(v73 + 56) + *(v72 + 72) * v32, v71);
      v37 = sub_100003CDC(&qword_100134BD8, &qword_1000F44E0);
      v38 = *(v37 + 48);
      *v10 = v34;
      v10[1] = v35;
      sub_1000204F8(v36, v10 + v38);
      (*(*(v37 - 8) + 56))(v10, 0, 1, v37);
      sub_1000146C4(v34, v35);
    }

    else
    {
      v30 = v20 <= v14 + 1 ? v14 + 1 : v20;
      v31 = v30 - 1;
      while (1)
      {
        v29 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_61;
        }

        if (v29 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v29);
        ++v14;
        if (v19)
        {
          v78 = v29;
          goto LABEL_16;
        }
      }

      v50 = sub_100003CDC(&qword_100134BD8, &qword_1000F44E0);
      (*(*(v50 - 8) + 56))(v10, 1, 1, v50);
      v77 = 0;
      v78 = v31;
    }

    sub_100020D24(v10, v12, &qword_100134BD0, &qword_1000F44D8);
    v39 = sub_100003CDC(&qword_100134BD8, &qword_1000F44E0);
    if ((*(*(v39 - 8) + 48))(v12, 1, v39) == 1)
    {
      break;
    }

    v40 = v12;
    v42 = *v12;
    v41 = v12[1];
    sub_1000204F8(v40 + *(v39 + 48), v4);
    v90._countAndFlagsBits = 538976288;
    v90._object = 0xE400000000000000;
    v43 = v41 >> 62;
    v83 = HIDWORD(v42);
    if ((v41 >> 62) > 1)
    {
      if (v43 != 2)
      {
        v49 = _swiftEmptyArrayStorage;
        goto LABEL_5;
      }

      v46 = *(v42 + 16);
      v45 = *(v42 + 24);
      v44 = v45 - v46;
      if (__OFSUB__(v45, v46))
      {
        goto LABEL_69;
      }

      if (!v44)
      {
        goto LABEL_30;
      }
    }

    else if (v43)
    {
      v48 = v83 - v42;
      if (__OFSUB__(v83, v42))
      {
        goto LABEL_70;
      }

      v44 = v48;
      if (!v48)
      {
LABEL_30:
        v49 = _swiftEmptyArrayStorage;
        goto LABEL_4;
      }
    }

    else
    {
      v44 = BYTE6(v41);
      if (!BYTE6(v41))
      {
        goto LABEL_30;
      }
    }

    v89 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v44 & ~(v44 >> 63), 0);
    v82 = v42;
    if (v43)
    {
      if (v43 == 2)
      {
        v47 = *(v42 + 16);
      }

      else
      {
        v47 = v82;
      }
    }

    else
    {
      v47 = 0;
    }

    v87 = v47;
    if (v44 < 0)
    {
      goto LABEL_68;
    }

    v51 = 0;
    v49 = v89;
    v80 = v42 >> 32;
    v81 = BYTE6(v41);
    v79 = &v88 + v87;
    v85 = v41 >> 62;
    v86 = v42;
    do
    {
      if (v51 >= v44)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }

      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_60;
      }

      v53 = v87 + v51;
      if (v43 == 2)
      {
        if (v53 < *(v42 + 16))
        {
          goto LABEL_63;
        }

        if (v53 >= *(v42 + 24))
        {
          goto LABEL_65;
        }

        v58 = __DataStorage._bytes.getter();
        if (!v58)
        {
          goto LABEL_72;
        }

        v55 = v58;
        v59 = __DataStorage._offset.getter();
        v57 = v53 - v59;
        if (__OFSUB__(v53, v59))
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      if (v43 == 1)
      {
        if (v53 < v82 || v53 >= v80)
        {
          goto LABEL_64;
        }

        v54 = __DataStorage._bytes.getter();
        if (!v54)
        {
          goto LABEL_71;
        }

        v55 = v54;
        v56 = __DataStorage._offset.getter();
        v57 = v53 - v56;
        if (__OFSUB__(v53, v56))
        {
          goto LABEL_66;
        }

LABEL_51:
        v60 = *(v55 + v57);
        goto LABEL_54;
      }

      if (v53 >= v81)
      {
        goto LABEL_62;
      }

      LOWORD(v88._countAndFlagsBits) = v42;
      BYTE2(v88._countAndFlagsBits) = BYTE2(v42);
      BYTE3(v88._countAndFlagsBits) = BYTE3(v42);
      BYTE4(v88._countAndFlagsBits) = v83;
      BYTE5(v88._countAndFlagsBits) = BYTE5(v42);
      BYTE6(v88._countAndFlagsBits) = BYTE6(v42);
      HIBYTE(v88._countAndFlagsBits) = HIBYTE(v42);
      LOWORD(v88._object) = v41;
      BYTE2(v88._object) = BYTE2(v41);
      BYTE3(v88._object) = BYTE3(v41);
      BYTE4(v88._object) = BYTE4(v41);
      BYTE5(v88._object) = BYTE5(v41);
      v60 = v79[v51];
LABEL_54:
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v61 = swift_allocObject();
      *(v61 + 16) = v84;
      *(v61 + 56) = &type metadata for UInt8;
      *(v61 + 64) = &protocol witness table for UInt8;
      *(v61 + 32) = v60;
      v62 = String.init(format:_:)();
      v43 = v63;
      v89 = v49;
      v65 = v49[2];
      v64 = v49[3];
      if (v65 >= v64 >> 1)
      {
        sub_1000635A4((v64 > 1), v65 + 1, 1);
        v49 = v89;
      }

      v49[2] = v65 + 1;
      v66 = &v49[2 * v65];
      v66[4] = v62;
      v66[5] = v43;
      ++v51;
      LODWORD(v43) = v85;
      v42 = v86;
    }

    while (v52 != v44);
    active = v69;
    v4 = v68;
LABEL_4:
    v10 = v70;
LABEL_5:
    v88._countAndFlagsBits = v49;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 8250;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    strcpy(&v88, "Active Driver ");
    HIBYTE(v88._object) = -18;
    String.append(_:)(*&v4[*(active + 20)]);
    v26._countAndFlagsBits = 544497952;
    v26._object = 0xE400000000000000;
    String.append(_:)(v26);
    v27._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v27);

    String.append(_:)(v88);

    v28._countAndFlagsBits = 10;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    String.append(_:)(v90);

    sub_1000128D8(v42, v41);
    sub_100020808(v4);
    v12 = v76;
    v19 = v77;
    v16 = v75;
    v20 = v74;
    v14 = v78;
  }

  return v91;
}

uint64_t sub_100020180()
{
  v1 = *(v0 + 16);

  sub_100003C90((v0 + 24));

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_100020208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000202DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ActiveDriverInfo()
{
  result = qword_100134B98;
  if (!qword_100134B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000203E4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100020458()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_100020494(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1000204F8(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo();
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

unint64_t sub_100020580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v7 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v8 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(v7, &unk_1001372D0, &unk_1000F4500);
  if (a1)
  {
    v13 = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    *&v12 = a1;
    sub_10000B48C(&v12, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v11, 0xD000000000000016, 0x8000000100104BA0, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

unint64_t sub_1000206CC(uint64_t a1)
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x8000000100104BC0;
  v4 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(v3, &unk_1001372D0, &unk_1000F4500);
  if (a1)
  {
    v9 = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    *&v8 = a1;
    sub_10000B48C(&v8, v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v7, 0xD000000000000016, 0x8000000100104BA0, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

uint64_t sub_100020808(uint64_t a1)
{
  active = type metadata accessor for ActiveDriverInfo();
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_100020864(uint64_t a1, char a2, uint64_t *a3)
{
  v62 = a3;
  active = type metadata accessor for ActiveDriverInfo();
  v59 = *(active - 8);
  v7 = *(v59 + 64);
  v8 = __chkstk_darwin(active - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v51 - v12;
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v60 = (&v51 - v20);
  v58 = *(a1 + 16);
  if (!v58)
  {
  }

  v53 = v13;
  v54 = v10;
  v61 = v3;
  v21 = 0;
  v22 = *(v19 + 48);
  v56 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v57 = v22;
  v55 = a1;
  v52 = v17;
  while (1)
  {
    if (v21 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v60;
    sub_100020D8C(v56 + *(v17 + 72) * v21, v60);
    v24 = v23[1];
    v65 = *v23;
    v25 = v65;
    v66 = v24;
    v26 = v15;
    sub_1000204F8(v23 + v57, v15);
    v27 = *v62;
    v29 = sub_1000618A8(v25, v24);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_21;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((a2 & 1) == 0)
      {
        sub_10003A0C4();
      }
    }

    else
    {
      v34 = v62;
      sub_1000332D4(v32, a2 & 1);
      v35 = *v34;
      v36 = sub_1000618A8(v25, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_23;
      }

      v29 = v36;
    }

    v38 = *v62;
    if (v33)
    {
      break;
    }

    v38[(v29 >> 6) + 8] |= 1 << v29;
    v43 = (v38[6] + 16 * v29);
    *v43 = v25;
    v43[1] = v24;
    v44 = v38[7] + *(v59 + 72) * v29;
    v15 = v26;
    sub_1000204F8(v26, v44);
    v45 = v38[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_22;
    }

    v38[2] = v47;
LABEL_3:
    ++v21;
    a2 = 1;
    a1 = v55;
    if (v58 == v21)
    {
    }
  }

  v39 = *(v59 + 72) * v29;
  v40 = v54;
  sub_100020494(v38[7] + v39, v54);
  v41 = v53;
  v15 = v26;
  v42 = v61;
  sub_10001F3A4(v40, v26, v53);
  v61 = v42;
  if (!v42)
  {
    sub_100020808(v40);
    sub_100020808(v26);
    sub_1000128D8(v25, v24);
    sub_100020DFC(v41, v38[7] + v39);
    v17 = v52;
    goto LABEL_3;
  }

  sub_100020808(v40);
  v67 = v61;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100020808(v26);
    sub_1000128D8(v25, v24);
  }

LABEL_24:
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v49._object = 0x8000000100104B40;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v49);
  _print_unlocked<A, B>(_:_:)();
  v50._countAndFlagsBits = 39;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100020D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003CDC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100020D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134BE8, &unk_1000F44F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020DFC(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveDriverInfo();
  (*(*(active - 8) + 40))(a2, a1, active);
  return a2;
}

uint64_t getEnumTagSinglePayload for CollectionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectionKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100020FB4()
{
  result = qword_100138990;
  if (!qword_100138990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100138990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExceptionList.ExceptionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExceptionList.ExceptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100021164()
{
  result = qword_100134C00;
  if (!qword_100134C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134C00);
  }

  return result;
}

unint64_t sub_100021218()
{
  result = qword_100134CA0;
  if (!qword_100134CA0)
  {
    sub_100009FA4(&qword_100134CA8, qword_1000F46A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CA0);
  }

  return result;
}

Swift::Int sub_10002127C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10002133C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000213F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "OSKextExcludeList";
  v4 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v2 == 1)
  {
    v6 = "OSKextExcludeList";
  }

  else
  {
    v6 = "OSKextSigExceptionHashList";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.message.bundlePath";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = "OSKextSigExceptionHashList";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "com.apple.message.bundlePath";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000214D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002156C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000215F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002168C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100023728(*a1);
  *a2 = result;
  return result;
}

void sub_1000216BC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "OSKextExcludeList";
  v4 = 0xD00000000000001ALL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = "OSKextSigExceptionHashList";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "com.apple.message.bundlePath";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_10002172C()
{
  result = qword_100134CB0;
  if (!qword_100134CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CB0);
  }

  return result;
}

void sub_100021780()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  *(v0 + 16);
  *(v0 + 16);
  String.hash(into:)();

  if (v0[4] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = v0[3];
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int sub_10002188C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  *(v0 + 16);
  *(v0 + 16);
  String.hash(into:)();

  if (v0[4] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = v0[3];
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1000219B0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100021A60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100022BC0(*a1);
  *a2 = result;
  return result;
}

void sub_100021A90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958081;
  v5 = 20805;
  v6 = 21575;
  if (v2 != 4)
  {
    v6 = 17735;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 21580;
  if (v2 != 1)
  {
    v7 = 17740;
  }

  if (*v1)
  {
    v4 = v7;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v8;
  a1[1] = v3;
}

Swift::Int sub_100021B10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (v5 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL sub_100021C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100022A04(v5, v7);
}

uint64_t sub_100021C70(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = sub_1000D7374();
  if (!*(a3 + 16))
  {
    goto LABEL_53;
  }

  v9 = sub_100061588(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v46 = *(*(a3 + 56) + 8 * v9);

  result = sub_1000D7614();
  if (!v13)
  {
LABEL_53:

    return 0;
  }

  v14 = v13;
  if (a2)
  {
    v15 = result;
    sub_100014894(a1 + 32, v47, &unk_100137390, &unk_1000F4E70);
    if (v49)
    {
      v16 = sub_100003C4C(v47, v49);
      v17 = *(*v16 + 40);
      v18 = *(*v16 + 48);
      sub_1000146C4(v17, v18);
      sub_100003C90(v47);
      v47[0] = v15;
      v47[1] = v14;
      v48 = 3;
      v49 = v17;
      v50 = v18;
      v19 = sub_1000815E0(v47, v46);

      sub_100014528(v17, v18);
      if (v19)
      {
        return 1;
      }
    }

    else
    {

      sub_10000A184(v47, &unk_100137390, &unk_1000F4E70);
    }

    return 0;
  }

  v20 = 0;
  v21 = 1 << *(v46 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v46 + 56);
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
LABEL_19:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = *(v46 + 48) + 40 * (v26 | (v20 << 6));
    v29 = *v27;
    v28 = *(v27 + 8);
    v30 = *(v27 + 16);
    v32 = *(v27 + 24);
    v31 = *(v27 + 32);
    if (v30 <= 2)
    {
      if (v30 == 1)
      {
        String.utf8CString.getter();

        sub_1000146B0(v32, v31);
        v39 = OSKextParseVersionString();

        if (v39 > 0)
        {
          String.utf8CString.getter();
          v40 = OSKextParseVersionString();

          result = sub_100014528(v32, v31);
          v35 = v40 < 1 || v39 >= v40;
          goto LABEL_36;
        }
      }

      else
      {
        if (v30 != 2)
        {
          goto LABEL_51;
        }

        String.utf8CString.getter();

        sub_1000146B0(v32, v31);
        v36 = OSKextParseVersionString();

        if (v36 > 0)
        {
          String.utf8CString.getter();
          v37 = OSKextParseVersionString();

          result = sub_100014528(v32, v31);
          v38 = v37 >= 1 && v37 >= v36;
          goto LABEL_49;
        }
      }

LABEL_13:

      result = sub_100014528(v32, v31);
    }

    else if (v30 == 3)
    {
      String.utf8CString.getter();

      sub_1000146B0(v32, v31);
      v41 = OSKextParseVersionString();

      if (v41 <= 0)
      {
        goto LABEL_13;
      }

      String.utf8CString.getter();
      v42 = OSKextParseVersionString();

      result = sub_100014528(v32, v31);
      if (v42 >= 1 && v41 == v42)
      {
LABEL_51:

        return 1;
      }
    }

    else if (v30 == 4)
    {
      String.utf8CString.getter();

      sub_1000146B0(v32, v31);
      v33 = OSKextParseVersionString();

      if (v33 <= 0)
      {
        goto LABEL_13;
      }

      String.utf8CString.getter();
      v34 = OSKextParseVersionString();

      result = sub_100014528(v32, v31);
      v35 = v34 < 1 || v34 >= v33;
LABEL_36:
      if (!v35)
      {
        goto LABEL_51;
      }
    }

    else
    {
      String.utf8CString.getter();

      sub_1000146B0(v32, v31);
      v44 = OSKextParseVersionString();

      if (v44 <= 0)
      {
        goto LABEL_13;
      }

      String.utf8CString.getter();
      v45 = OSKextParseVersionString();

      result = sub_100014528(v32, v31);
      v38 = v45 >= 1 && v44 >= v45;
LABEL_49:
      if (v38)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      goto LABEL_53;
    }

    v23 = *(v46 + 56 + 8 * v25);
    ++v20;
    if (v23)
    {
      v20 = v25;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000221B8(uint64_t *a1, uint64_t *a2)
{
  v49 = *a2;
  v62 = a2[1];
  v2 = a2[2];
  v3 = a2[3];
  *&v54 = 9;
  *(&v54 + 1) = 0xE100000000000000;
  v52 = &v54;

  v5 = sub_1000225EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100023AE0, v51, v2, v3, v4);
  v6 = v5[2];
  if (!v6)
  {

    v9 = _swiftEmptyArrayStorage;
LABEL_9:
    v21 = v62;
    if (v9[2] == 2)
    {
      v23 = v9[4];
      v22 = v9[5];
      v24 = v9[6];
      v25 = v9[7];

      v26 = sub_100015088(v49, v21);
      if (v27 >> 60 != 15)
      {
        v37 = v26;
        v38 = v27;
        v39 = a1;
        if (!*(*a1 + 16) || (sub_100061588(v23, v22), v39 = a1, (v40 & 1) == 0))
        {

          v41 = *v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v54 = *a1;
          sub_100039468(&_swiftEmptySetSingleton, v23, v22, isUniquelyReferenced_nonNull_native);

          *a1 = v54;
        }

        v43 = sub_100025464(v53, v23, v22);
        if (*v44)
        {
          v58[0] = v24;
          v58[1] = v25;
          v59 = 3;
          v60 = v37;
          v61 = v38;
          sub_1000146C4(v37, v38);
          sub_1000E5304(&v54, v58);
          v45 = *(&v55 + 1);
          v46 = v56;

          sub_100014528(v45, v46);
        }

        else
        {
        }

        (v43)(v53, 0);
        sub_100014528(v37, v38);
      }

      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      *&v54 = 0xD000000000000016;
      *(&v54 + 1) = 0x8000000100104CA0;
      v28._countAndFlagsBits = v49;
      v28._object = v21;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 0x20726F662027;
      v29._object = 0xE600000000000000;
      String.append(_:)(v29);
      v30._countAndFlagsBits = v23;
      v30._object = v22;
      String.append(_:)(v30);
    }

    else
    {

      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      *&v54 = 0xD00000000000001FLL;
      *(&v54 + 1) = 0x8000000100104C80;
      v31._countAndFlagsBits = v2;
      v31._object = v3;
      String.append(_:)(v31);
    }

    v32 = v54;
    sub_10001449C();
    swift_allocError();
    *v33 = v32;
    v34 = v57;
    v35 = v56;
    v36 = v55;
    *(v33 + 16) = v54;
    *(v33 + 32) = v36;
    *(v33 + 48) = v35;
    *(v33 + 64) = v34;
    *(v33 + 72) = 44;
    return swift_willThrow();
  }

  v47 = v3;
  v48 = v2;
  *&v54 = _swiftEmptyArrayStorage;
  result = sub_1000635A4(0, v6, 0);
  v8 = 0;
  v9 = v54;
  v10 = v5 + 7;
  while (v8 < v5[2])
  {
    v11 = *(v10 - 3);
    v12 = *(v10 - 2);
    v14 = *(v10 - 1);
    v13 = *v10;

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    *&v54 = v9;
    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1000635A4((v18 > 1), v19 + 1, 1);
      v9 = v54;
    }

    ++v8;
    v9[2] = v19 + 1;
    v20 = &v9[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v10 += 4;
    if (v6 == v8)
    {

      v3 = v47;
      v2 = v48;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000225EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100031B10(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100031B10((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100031B10(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100031B10(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100031B10((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000229AC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL sub_100022A04(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10008239C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v11 = *(a2 + 24);
  v12 = v5;
  v6 = v5;
  v7 = v11;
  if (*(&v5 + 1) >> 60 == 15)
  {
    if (*(&v11 + 1) >> 60 == 15)
    {
      sub_100014894(&v12, v10, &qword_100134CB8, &qword_1000F4788);
      sub_100014894(&v11, v10, &qword_100134CB8, &qword_1000F4788);
      sub_100014528(v6, *(&v6 + 1));
      return 1;
    }

    goto LABEL_11;
  }

  if (*(&v11 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_100014894(&v12, v10, &qword_100134CB8, &qword_1000F4788);
    sub_100014894(&v11, v10, &qword_100134CB8, &qword_1000F4788);
    sub_100014528(v6, *(&v6 + 1));
    sub_100014528(v7, *(&v7 + 1));
    return 0;
  }

  sub_100014894(&v12, v10, &qword_100134CB8, &qword_1000F4788);
  sub_100014894(&v11, v10, &qword_100134CB8, &qword_1000F4788);
  v9 = sub_10006475C(v6, *(&v6 + 1), v7, *(&v7 + 1));
  sub_100014528(v7, *(&v7 + 1));
  sub_100014528(v6, *(&v6 + 1));
  return (v9 & 1) != 0;
}

unint64_t sub_100022BC0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100126540, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100022C0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v28[0] = 32;
  v28[1] = 0xE100000000000000;
  v27[2] = v28;
  v4 = sub_1000225EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100023774, v27, a1, a2, v28);
  v5 = v4[2];
  if (!v5)
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_9:
    v20 = v8[2];
    if (v20 == 1)
    {
      v24 = v8[4];
      v23 = v8[5];

      result = 3;
    }

    else
    {
      if (v20 != 2)
      {
        goto LABEL_15;
      }

      v22 = v8[4];
      v21 = v8[5];
      v24 = v8[6];
      v23 = v8[7];

      v29._countAndFlagsBits = v22;
      v29._object = v21;
      result = sub_100022BC0(v29);
      if (result == 6)
      {
LABEL_15:

        v24 = 0;
        v23 = 0;
        v25 = 0;
        v26 = 0;
        goto LABEL_16;
      }
    }

    v25 = result;
    v26 = 0xF000000000000000;
LABEL_16:
    *a3 = v24;
    a3[1] = v23;
    a3[2] = v25;
    a3[3] = 0;
    a3[4] = v26;
    return result;
  }

  v28[0] = _swiftEmptyArrayStorage;
  result = sub_1000635A4(0, v5, 0);
  v7 = 0;
  v8 = v28[0];
  v9 = v4 + 7;
  while (v7 < v4[2])
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;

    v14 = static String._fromSubstring(_:)();
    v16 = v15;

    v28[0] = v8;
    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_1000635A4((v17 > 1), v18 + 1, 1);
      v8 = v28[0];
    }

    ++v7;
    v8[2] = v18 + 1;
    v19 = &v8[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v9 += 4;
    if (v5 == v7)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100023728(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001267B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100023790(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000237E8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100023804(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10002382C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100023840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100023888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000238E4()
{
  result = qword_100134CC8;
  if (!qword_100134CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodeSignatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CodeSignatureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100023A8C()
{
  result = qword_100134CD0;
  if (!qword_100134CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134CD0);
  }

  return result;
}

uint64_t sub_100023AFC(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v102 = a3;
  v101 = a2;
  v100 = a1;
  v93 = type metadata accessor for URL();
  v92 = *(v93 - 8);
  v5 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v95 = &v90 - v9;
  v97 = type metadata accessor for UUID();
  v96 = *(v97 - 8);
  v10 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v3 + 24);
  v12 = *(v98 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v99 = "ith devid+ certificate";
  v103 = v12;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v16)
    {
      goto LABEL_12;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v20 >= v17)
      {

        if (v19[2] && (v48 = sub_100061588(0xD000000000000010, 0x8000000100105020), (v49 & 1) != 0))
        {
          sub_10000B430(v19[7] + 32 * v48, &v111);
          sub_10000A184(&v111, &qword_1001343C8, &unk_1000F3CA0);
          v50 = v98;
        }

        else
        {
          v111 = 0u;
          v112 = 0u;
          sub_10000A184(&v111, &qword_1001343C8, &unk_1000F3CA0);
          v50 = v98;
          v51 = *(v98 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest);
          v52 = *(v98 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest + 8);
          *(&v112 + 1) = &type metadata for Data;
          if (v52 >> 60 == 15)
          {
            v53 = 0;
          }

          else
          {
            v53 = v51;
          }

          v54 = 0xC000000000000000;
          if (v52 >> 60 != 15)
          {
            v54 = v52;
          }

          *&v111 = v53;
          *(&v111 + 1) = v54;
          sub_10000B48C(&v111, &v109);
          sub_1000146B0(v51, v52);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v107 = v19;
          sub_100038954(&v109, 0xD000000000000010, 0x8000000100105020, isUniquelyReferenced_nonNull_native);
          v19 = v107;
        }

        v56 = v95;
        sub_100014894(v4 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, v95, &qword_100134FB0, &qword_1000F4E60);
        v57 = v96;
        v58 = v97;
        if ((*(v96 + 48))(v56, 1, v97) == 1)
        {
          sub_10000A184(v56, &qword_100134FB0, &qword_1000F4E60);
          if ((*(v4 + 18) & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_48:
          *(&v112 + 1) = &type metadata for Bool;
          LOBYTE(v111) = 1;
          sub_10000B48C(&v111, &v109);
          v70 = swift_isUniquelyReferenced_nonNull_native();
          *&v107 = v19;
          sub_100038954(&v109, 0xD00000000000001BLL, 0x8000000100105080, v70);
          v19 = v107;
        }

        else
        {
          v59 = v94;
          (*(v57 + 32))(v94, v56, v58);
          *&v111 = UUID.uuid.getter();
          WORD4(v111) = v60;
          BYTE10(v111) = v61;
          BYTE11(v111) = v62;
          BYTE12(v111) = v63;
          BYTE13(v111) = v64;
          BYTE14(v111) = v65;
          HIBYTE(v111) = v66;
          v67 = sub_10003F210(&v111, 16);
          *(&v112 + 1) = &type metadata for Data;
          *&v111 = v67;
          *(&v111 + 1) = v68;
          sub_10000B48C(&v111, &v109);
          v69 = swift_isUniquelyReferenced_nonNull_native();
          *&v107 = v19;
          sub_100038954(&v109, 0x656C646E7542534FLL, 0xEC00000044495555, v69);
          (*(v57 + 8))(v59, v58);
          v19 = v107;
          if (*(v4 + 18))
          {
            goto LABEL_48;
          }
        }

LABEL_49:
        if ((sub_1000D790C() & 1) != 0 || *v50 == _TtC10driverkitd15DriverExtension)
        {
          sub_1000138F8((v50 + 3), &v111);
          if (v114)
          {
            sub_100013954(&v111);
          }

          else
          {
            sub_100009F34(&v111, &v109);
            sub_100009F34(&v109, &v111);
            v71 = *(&v112 + 1);
            v72 = v113;
            sub_100003C4C(&v111, *(&v112 + 1));
            v73 = v91;
            (*(v72 + 64))(v71, v72);
            v74 = URL.path.getter();
            v76 = v75;
            (*(v92 + 8))(v73, v93);
            v110[1] = &type metadata for String;
            *&v109 = v74;
            *(&v109 + 1) = v76;
            sub_10000B48C(&v109, &v107);
            v77 = swift_isUniquelyReferenced_nonNull_native();
            *&v106[0] = v19;
            sub_100038954(&v107, 0xD000000000000017, 0x8000000100105060, v77);
            v19 = *&v106[0];
            sub_100003C90(&v111);
          }

          v78 = sub_100024C38();
          *(&v112 + 1) = &type metadata for Data;
          *&v111 = v78;
          *(&v111 + 1) = v79;
          sub_10000B48C(&v111, &v109);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *&v107 = v19;
          sub_100038954(&v109, 0xD00000000000001DLL, 0x8000000100104B60, v80);
          v81 = v107;
          sub_100014894(v4 + 32, &v111, &unk_100137390, &unk_1000F4E70);
          if (!*(&v112 + 1))
          {
            sub_10000A184(&v111, &unk_100137390, &unk_1000F4E70);
            goto LABEL_59;
          }

          v82 = sub_100003C4C(&v111, *(&v112 + 1));
          v83 = *(*v82 + 24);
          v84 = *(*v82 + 32);
          sub_10003E104(v83, v84);
          sub_100003C90(&v111);
          if (v84)
          {
            if (v84 != 1)
            {
              *(&v112 + 1) = &type metadata for String;
              *&v111 = v83;
              *(&v111 + 1) = v84;
              sub_10000B48C(&v111, &v109);

              v85 = swift_isUniquelyReferenced_nonNull_native();
              *&v107 = v81;
              sub_100038954(&v109, 0xD000000000000016, 0x8000000100105040, v85);
              sub_10003E118(v83, v84);
              return v107;
            }

LABEL_59:
            *(&v112 + 1) = &type metadata for String;
            v86 = 1701736270;
            v87 = 0xE400000000000000;
          }

          else
          {
            *(&v112 + 1) = &type metadata for String;
            v86 = 0x656C707041;
            v87 = 0xE500000000000000;
          }

          *&v111 = v86;
          *(&v111 + 1) = v87;
          sub_10000B48C(&v111, &v109);
          v88 = swift_isUniquelyReferenced_nonNull_native();
          *&v107 = v81;
          sub_100038954(&v109, 0xD000000000000016, 0x8000000100105040, v88);
          return v107;
        }

        return v19;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_12:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = (*(v103 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_10000B430(*(v103 + 56) + 32 * v21, &v112);
    *&v111 = v24;
    *(&v111 + 1) = v23;
    sub_100014894(&v111, &v109, &qword_1001350B8, &qword_1000F4F90);
    v25 = *(&v109 + 1);
    v104 = v109;

    v26._countAndFlagsBits = 0xD000000000000012;
    v26._object = (v99 | 0x8000000000000000);
    if (!String.hasPrefix(_:)(v26))
    {
      break;
    }

    sub_100027B1C(v100, v101, v24, v23, v4, v102 & 1, &v107);
    if (!*(&v108 + 1))
    {
      sub_10000A184(&v107, &qword_1001343C8, &unk_1000F3CA0);
LABEL_27:
      v107 = 0u;
      v108 = 0u;
      goto LABEL_28;
    }

    v27 = sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    *&v106[0] = v105;
    sub_1000265DC(v106, v102 & 1);
    *(&v108 + 1) = v27;
    *&v107 = *&v106[0];
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_28:
    sub_10000A184(&v107, &qword_1001343C8, &unk_1000F3CA0);
    v39 = sub_100061588(v104, v25);
    v41 = v40;

    if (v41)
    {
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v105 = v19;
      if (!v42)
      {
        sub_100039F20();
        v19 = v105;
      }

      v43 = *(v19[6] + 16 * v39 + 8);

      sub_10000B48C((v19[7] + 32 * v39), v106);
      sub_10003706C(v39, v19);
    }

    else
    {
      memset(v106, 0, sizeof(v106));
    }

    sub_10000A184(v106, &qword_1001343C8, &unk_1000F3CA0);
LABEL_6:
    v16 &= v16 - 1;
    sub_100003C90(v110);
    sub_10000A184(&v111, &qword_1001350B8, &qword_1000F4F90);
  }

  sub_100027B1C(v100, v101, v24, v23, v4, v102 & 1, &v107);
  if (!*(&v108 + 1))
  {
    goto LABEL_28;
  }

LABEL_18:
  sub_10000B48C(&v107, v106);
  v28 = v19;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v28;
  v31 = sub_100061588(v104, v25);
  v32 = v28[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    goto LABEL_65;
  }

  v35 = v30;
  if (v28[3] >= v34)
  {
    if (v29)
    {
      if (v30)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_100039F20();
      if (v35)
      {
        goto LABEL_25;
      }
    }

LABEL_33:
    v19 = v105;
    v105[(v31 >> 6) + 8] |= 1 << v31;
    v44 = (v19[6] + 16 * v31);
    *v44 = v104;
    v44[1] = v25;
    sub_10000B48C(v106, (v19[7] + 32 * v31));
    v45 = v19[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      v19[2] = v47;
      goto LABEL_6;
    }

LABEL_66:
    __break(1u);
  }

  sub_10003301C(v34, v29);
  v36 = sub_100061588(v104, v25);
  if ((v35 & 1) == (v37 & 1))
  {
    v31 = v36;
    if ((v35 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_25:

    v19 = v105;
    v38 = (v105[7] + 32 * v31);
    sub_100003C90(v38);
    sub_10000B48C(v106, v38);
    goto LABEL_6;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100024C38()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000138F8(*(v0 + 24) + 24, v32);
  if (v33)
  {
    sub_100013954(v32);
    *&v32[0] = sub_1000D7374();
    *(&v32[0] + 1) = v11;
    v12._countAndFlagsBits = 0x6E7562206F6E2820;
    v12._object = 0xEC00000029656C64;
    String.append(_:)(v12);
    static String.Encoding.utf8.getter();
    v13 = String.data(using:allowLossyConversion:)();
    v15 = v14;
    result = (*(v2 + 8))(v5, v1);
    if (v15 >> 60 != 15)
    {

      v17 = type metadata accessor for __DataStorage();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v20 = __DataStorage.init(length:)();
      *&v32[0] = 0x2000000000;
      *(&v32[0] + 1) = v20;
      sub_10003CEB8(v32, 0);
      *(&v32[0] + 1) |= 0x4000000000000000uLL;
      sub_1000146C4(v13, v15);
      sub_10003ED1C(v32, v13, v15);
      sub_100014528(v13, v15);
      sub_100014528(v13, v15);
      return *&v32[0];
    }

    __break(1u);
  }

  else
  {
    sub_100009F34(v32, v34);
    sub_100009F34(v34, v35);
    v22 = v36;
    v23 = v37;
    sub_100003C4C(v35, v36);
    (*(v23 + 64))(v22, v23);
    URL.path.getter();
    (*(v7 + 8))(v10, v6);
    static String.Encoding.utf8.getter();
    v24 = String.data(using:allowLossyConversion:)();
    v26 = v25;
    result = (*(v2 + 8))(v5, v1);
    if (v26 >> 60 != 15)
    {

      v27 = type metadata accessor for __DataStorage();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = __DataStorage.init(length:)();
      *&v32[0] = 0x2000000000;
      *(&v32[0] + 1) = v30;
      sub_10003CEB8(v32, 0);
      *(&v32[0] + 1) |= 0x4000000000000000uLL;
      sub_1000146C4(v24, v26);
      sub_10003ED1C(v32, v24, v26);
      sub_100014528(v24, v26);
      sub_100014528(v24, v26);
      v21 = *&v32[0];
      sub_100003C90(v35);
      return v21;
    }
  }

  __break(1u);
  return result;
}

double sub_100024FF4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11._object = 0x8000000100104610;
  v11._countAndFlagsBits = 0xD000000000000012;
  if (String.hasPrefix(_:)(v11))
  {
    sub_100027B1C(a1, a2, a3, a4, v5, 0, v16);
    if (v17)
    {
      v12 = sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
      if (swift_dynamicCast())
      {
        v18 = v15;
        sub_1000265DC(&v18, 0);
        v14 = v18;
        *(a5 + 24) = v12;
        *a5 = v14;
        return result;
      }
    }

    else
    {
      sub_10000A184(v16, &qword_1001343C8, &unk_1000F3CA0);
    }

    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {

    return sub_100027B1C(a1, a2, a3, a4, v5, 0, a5);
  }

  return result;
}

uint64_t (*sub_100025148(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003BF70(v6, a2, a3);
  return sub_100041D4C;
}

void (*sub_1000251D0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for URL();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10003BD9C(v3, v8);
  return sub_1000252E8;
}

void sub_1000252E8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_100025360(uint64_t **a1, unsigned __int8 a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10003BCF4(v4, a2);
  return sub_1000253D8;
}

uint64_t (*sub_1000253DC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003C01C(v6, a2, a3);
  return sub_100041D4C;
}

uint64_t (*sub_100025464(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003C0C8(v6, a2, a3);
  return sub_100041D4C;
}

uint64_t (*sub_1000254EC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10003C174(v6, a2, a3);
  return sub_100041D4C;
}

void sub_100025574(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000255C0(int a1)
{
  if (a1)
  {
    v2 = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100030EA0((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x64696C6176;
    *(v5 + 5) = 0xE500000000000000;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100030EA0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x65746164696C6176;
    *(v8 + 5) = 0xE900000000000064;
  }

  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100030EA0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000011;
    *(v11 + 5) = 0x8000000100105000;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_100030EA0((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000015;
    *(v14 + 5) = 0x8000000100104FE0;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100030EA0((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x69746E6568747561;
    *(v17 + 5) = 0xE900000000000063;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100030EA0((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  strcpy(v20 + 32, "authenticated");
  *(v20 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100030EA0((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000015;
  *(v23 + 5) = 0x8000000100104FC0;
  if ((a1 & 0x80) == 0)
  {
LABEL_28:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100030EA0((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000019;
  *(v26 + 5) = 0x8000000100104FA0;
  if ((a1 & 0x100) == 0)
  {
LABEL_29:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100030EA0((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x6465766F72707061;
  *(v29 + 5) = 0xE800000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_30:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100030EA0((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x6C61766F72707061;
  *(v32 + 5) = 0xEF64656B63656843;
  if ((a1 & 0x400) == 0)
  {
LABEL_31:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100030EA0((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  strcpy(v35 + 32, "inExcludeList");
  *(v35 + 23) = -4864;
  if ((a1 & 0x800) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100030EA0((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000018;
  *(v38 + 5) = 0x8000000100104F80;
  if ((a1 & 0x1000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100030EA0((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD00000000000001ELL;
  *(v41 + 5) = 0x8000000100104F60;
  if ((a1 & 0x2000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100030EA0((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x656C707061;
  *(v44 + 5) = 0xE500000000000000;
  if ((a1 & 0x4000) == 0)
  {
LABEL_35:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_100030EA0((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  strcpy(v47 + 32, "sipProtected");
  v47[45] = 0;
  *(v47 + 23) = -5120;
  if ((a1 & 0x8000) == 0)
  {
LABEL_36:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_103;
  }

LABEL_98:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_100030EA0((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0x64616F4C72657375;
  *(v50 + 5) = 0xEF6465776F6C6C41;
  if ((a1 & 0x10000) == 0)
  {
LABEL_37:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_108;
  }

LABEL_103:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_100030EA0((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000014;
  *(v53 + 5) = 0x8000000100104F40;
  if ((a1 & 0x20000) == 0)
  {
LABEL_38:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_113;
  }

LABEL_108:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_100030EA0((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000014;
  *(v56 + 5) = 0x8000000100104F20;
  if ((a1 & 0x40000) == 0)
  {
LABEL_39:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

LABEL_113:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_100030EA0((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000013;
  *(v59 + 5) = 0x8000000100104F00;
  if ((a1 & 0x80000) == 0)
  {
LABEL_40:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_123;
  }

LABEL_118:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_100030EA0((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "appleAuxiliary");
  v62[47] = -18;
  if ((a1 & 0x100000) == 0)
  {
LABEL_41:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_123:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_100030EA0((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000011;
  *(v65 + 5) = 0x8000000100104EE0;
  if ((a1 & 0x200000) != 0)
  {
LABEL_128:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100030EA0(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_100030EA0((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    strcpy(v68 + 32, "appleExcluded");
    *(v68 + 23) = -4864;
  }

LABEL_133:
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v69 = BidirectionalCollection<>.joined(separator:)();

  return v69;
}

BOOL sub_100026228(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100026258@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100026284@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100026370@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000263A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10006FA34();

  *a1 = v2;
  return result;
}

uint64_t sub_1000263E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 && *(v2 + 16))
  {
    v3 = a1;
    v4 = sub_100061588(0x656C646E7542534FLL, 0xEC00000044495555);
    v6 = v5;
    v7 = 0xF000000000000000;
    if (v6)
    {
      sub_10000B430(*(v2 + 56) + 32 * v4, v14);
      v8 = swift_dynamicCast();
      v7 = 0xF000000000000000;
      v9 = v8 == 0;
      if (v8)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v7 = v13;
      }
    }

    else
    {
      v10 = 0;
    }

    a1 = v3;
  }

  else
  {
    v10 = 0;
    v7 = 0xF000000000000000;
  }

  return sub_1000C68A4(v10, v7, a1);
}

uint64_t sub_1000264A8()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0;
  }

  if (qword_100133A70 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = sub_100061588(qword_10014E900, *algn_10014E908);
  if (v3)
  {
    sub_10000B430(*(v1 + 56) + 32 * v2, v6);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v4 = OSKextParseVersionString();

      if (v4 >= 1)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_1000265A4()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1000265DC(uint64_t *a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v215 = (v6 + 63) >> 6;
  v214 = v4;

  v9 = 0;
  for (i = v5; ; v5 = i)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    do
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      if (v12 >= v215)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v9;
    }

    while (!v8);
    v9 = v12;
LABEL_12:
    v217 = v8;
    v13 = __clz(__rbit64(v8)) | (v9 << 6);
    v14 = (*(v214 + 48) + 16 * v13);
    v15 = *v14;
    v16 = *(*(v214 + 56) + 8 * v13);
    v216 = *(v3 + 24);
    v17 = *v216;
    v223 = v14[1];

    v222 = v16;
    if (v17 == _TtC10driverkitd15DriverExtension)
    {
      break;
    }

LABEL_126:
    if (*(v16 + 16))
    {
      goto LABEL_141;
    }

LABEL_148:

    v232 = 0u;
    v233 = 0u;
    sub_10000A184(&v232, &qword_1001343C8, &unk_1000F3CA0);
    v163 = sub_1000253DC(&v232, v15, v223);
    if (*v170)
    {
      v164 = v170;
      v171 = *(v216 + 16);
      if (qword_100133A50 == -1)
      {
        if (*(v171 + 16))
        {
LABEL_151:
          v172 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
          if (v173)
          {
            sub_10000B430(*(v171 + 56) + 32 * v172, &v236);
            if (swift_dynamicCast())
            {
              v175 = *(&v234 + 1);
              v174 = v234;
              goto LABEL_156;
            }
          }
        }
      }

      else
      {
        swift_once();
        if (*(v171 + 16))
        {
          goto LABEL_151;
        }
      }

      v174 = 0xD000000000000014;
      v175 = 0x8000000100104280;
LABEL_156:
      v237 = &type metadata for String;
      *&v236 = v174;
      *(&v236 + 1) = v175;
      sub_10000B48C(&v236, &v234);
      v176 = *v164;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = *v164;
      v230 = *v164;
      *v164 = 0x8000000000000000;
      v179 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
      v181 = v178[2];
      v182 = (v180 & 1) == 0;
      v54 = __OFADD__(v181, v182);
      v183 = v181 + v182;
      if (v54)
      {
        goto LABEL_189;
      }

      v184 = v180;
      if (v178[3] < v183)
      {
        sub_10003301C(v183, isUniquelyReferenced_nonNull_native);
        v179 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
        if ((v184 & 1) != (v185 & 1))
        {
          goto LABEL_208;
        }

LABEL_161:
        v186 = v230;
        if ((v184 & 1) == 0)
        {
          goto LABEL_162;
        }

LABEL_4:
        v10 = (v186[7] + 32 * v179);
        sub_100003C90(v10);
        sub_10000B48C(&v234, v10);
LABEL_5:
        v11 = *v164;
        *v164 = v186;

        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_161;
      }

      v190 = v179;
      sub_100039F20();
      v179 = v190;
      v186 = v230;
      if (v184)
      {
        goto LABEL_4;
      }

LABEL_162:
      v186[(v179 >> 6) + 8] |= 1 << v179;
      v187 = (v186[6] + 16 * v179);
      *v187 = 0xD000000000000012;
      v187[1] = 0x8000000100104E40;
      sub_10000B48C(&v234, (v186[7] + 32 * v179));
      v188 = v186[2];
      v54 = __OFADD__(v188, 1);
      v189 = v188 + 1;
      if (v54)
      {
        goto LABEL_192;
      }

LABEL_176:
      v186[2] = v189;
      goto LABEL_5;
    }

LABEL_6:
    (v163)(&v232, 0);
    v8 = (v217 - 1) & v217;
  }

  v18 = sub_1000253DC(&v236, v15, v223);
  v208 = v19;
  v218 = v15;
  if (*v19)
  {
    v206 = v18;
    sub_100014894(v3 + 32, &v232, &unk_100137390, &unk_1000F4E70);
    if (!*(&v233 + 1))
    {
      sub_10000A184(&v232, &unk_100137390, &unk_1000F4E70);
      v234 = 0u;
      v235 = 0u;
      goto LABEL_63;
    }

    v20 = sub_100003C4C(&v232, *(&v233 + 1));
    v22 = *(*v20 + 40);
    v21 = *(*v20 + 48);
    v23 = v21 >> 62;
    v212 = HIDWORD(v22);
    if ((v21 >> 62) > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_58;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v24 = v25 - v26;
      if (__OFSUB__(v25, v26))
      {
        goto LABEL_205;
      }
    }

    else
    {
      if (!v23)
      {
        v24 = BYTE6(v21);
        if (!BYTE6(v21))
        {
          goto LABEL_58;
        }

LABEL_29:
        sub_1000635A4(0, v24 & ~(v24 >> 63), 0);
        v211 = v22;
        if (v23)
        {
          if (v23 == 2)
          {
            v27 = *(v22 + 16);
          }

          else
          {
            v27 = v22;
          }
        }

        else
        {
          v27 = 0;
        }

        v221 = v27;
        if ((v24 & 0x8000000000000000) == 0)
        {
          v205 = v3;
          v28 = 0;
          v210 = v22 >> 32;
          v209 = &v234 + v27;
          v220 = v22;
          v219 = v24;
          while (1)
          {
            if (v28 >= v24)
            {
              goto LABEL_181;
            }

            v29 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_182;
            }

            v30 = v221 + v28;
            if (v23 == 2)
            {
              if (v30 < *(v22 + 16))
              {
                goto LABEL_184;
              }

              if (v30 >= *(v22 + 24))
              {
                goto LABEL_186;
              }

              v35 = __DataStorage._bytes.getter();
              if (!v35)
              {
                goto LABEL_207;
              }

              v32 = v35;
              v36 = __DataStorage._offset.getter();
              v34 = v30 - v36;
              if (__OFSUB__(v30, v36))
              {
                goto LABEL_188;
              }
            }

            else
            {
              if (v23 != 1)
              {
                if (v30 >= BYTE6(v21))
                {
                  goto LABEL_183;
                }

                LOWORD(v234) = v22;
                BYTE2(v234) = BYTE2(v22);
                BYTE3(v234) = BYTE3(v22);
                BYTE4(v234) = v212;
                BYTE5(v234) = BYTE5(v22);
                BYTE6(v234) = BYTE6(v22);
                BYTE7(v234) = HIBYTE(v22);
                WORD4(v234) = v21;
                BYTE10(v234) = BYTE2(v21);
                BYTE11(v234) = BYTE3(v21);
                BYTE12(v234) = BYTE4(v21);
                BYTE13(v234) = BYTE5(v21);
                v37 = v209[v28];
                goto LABEL_54;
              }

              if (v30 < v211 || v30 >= v210)
              {
                goto LABEL_185;
              }

              v31 = __DataStorage._bytes.getter();
              if (!v31)
              {
                goto LABEL_206;
              }

              v32 = v31;
              v33 = __DataStorage._offset.getter();
              v34 = v30 - v33;
              if (__OFSUB__(v30, v33))
              {
                goto LABEL_187;
              }
            }

            v37 = *(v32 + v34);
LABEL_54:
            sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_1000F3160;
            *(v38 + 56) = &type metadata for UInt8;
            *(v38 + 64) = &protocol witness table for UInt8;
            *(v38 + 32) = v37;
            v23 = String.init(format:_:)();
            v40 = v39;
            v42 = _swiftEmptyArrayStorage[2];
            v41 = _swiftEmptyArrayStorage[3];
            if (v42 >= v41 >> 1)
            {
              sub_1000635A4((v41 > 1), v42 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v42 + 1;
            v43 = &_swiftEmptyArrayStorage[2 * v42];
            *(v43 + 4) = v23;
            *(v43 + 5) = v40;
            ++v28;
            v24 = v219;
            LODWORD(v23) = v21 >> 62;
            v22 = v220;
            if (v29 == v219)
            {
              v3 = v205;
              goto LABEL_58;
            }
          }
        }

LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
      }

      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_204;
      }

      v24 = HIDWORD(v22) - v22;
    }

    sub_1000146C4(v22, v21);
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_58:
    *&v234 = _swiftEmptyArrayStorage;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v44 = BidirectionalCollection<>.joined(separator:)();
    v46 = v45;
    sub_1000128D8(v22, v21);

    *(&v235 + 1) = &type metadata for String;
    *&v234 = v44;
    *(&v234 + 1) = v46;
    sub_100003C90(&v232);
    if (*(&v235 + 1))
    {
      sub_10000B48C(&v234, &v232);
      v47 = *v208;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = *v208;
      v224 = v49;
      *v208 = 0x8000000000000000;
      v50 = sub_100061588(0xD000000000000012, 0x8000000100104E80);
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_198;
      }

      v56 = v51;
      if (v49[3] >= v55)
      {
        if ((v48 & 1) == 0)
        {
          v203 = v50;
          sub_100039F20();
          v50 = v203;
        }
      }

      else
      {
        sub_10003301C(v55, v48);
        v50 = sub_100061588(0xD000000000000012, 0x8000000100104E80);
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_208;
        }
      }

      if (v56)
      {
        v66 = (v49[7] + 32 * v50);
        sub_100003C90((v224[7] + 32 * v50));
        sub_10000B48C(&v232, v66);
      }

      else
      {
        v49[(v50 >> 6) + 8] |= 1 << v50;
        v67 = (v49[6] + 16 * v50);
        *v67 = 0xD000000000000012;
        v67[1] = 0x8000000100104E80;
        sub_10000B48C(&v232, (v49[7] + 32 * v50));
        v68 = v49[2];
        v54 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v54)
        {
          goto LABEL_203;
        }

        v49[2] = v69;
      }

      v15 = v218;
      v70 = *v208;
      *v208 = v224;

      (v206)(&v236, 0);
LABEL_76:
      if ((a2 & 1) == 0)
      {
        goto LABEL_91;
      }

LABEL_77:
      v72 = sub_1000253DC(&v232, v15, v223);
      if (!*v71)
      {
        (v72)(&v232, 0);
LABEL_90:
        v15 = v218;
        goto LABEL_91;
      }

      v73 = v71;
      v237 = &type metadata for Bool;
      LOBYTE(v236) = 1;
      sub_10000B48C(&v236, &v234);
      v74 = *v73;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v76 = *v73;
      v226 = *v73;
      *v73 = 0x8000000000000000;
      v77 = sub_100061588(0x44686374614D4F49, 0xEC00000072656665);
      v79 = v76[2];
      v80 = (v78 & 1) == 0;
      v54 = __OFADD__(v79, v80);
      v81 = v79 + v80;
      if (v54)
      {
        goto LABEL_195;
      }

      v82 = v78;
      if (v76[3] >= v81)
      {
        if ((v75 & 1) == 0)
        {
          v86 = v77;
          sub_100039F20();
          v77 = v86;
          v84 = v226;
          if (v82)
          {
            goto LABEL_85;
          }

          goto LABEL_87;
        }
      }

      else
      {
        sub_10003301C(v81, v75);
        v77 = sub_100061588(0x44686374614D4F49, 0xEC00000072656665);
        if ((v82 & 1) != (v83 & 1))
        {
          goto LABEL_208;
        }
      }

      v84 = v226;
      if (v82)
      {
LABEL_85:
        v85 = (v84[7] + 32 * v77);
        sub_100003C90(v85);
        sub_10000B48C(&v234, v85);
LABEL_89:
        v90 = *v73;
        *v73 = v84;

        (v72)(&v232, 0);
        goto LABEL_90;
      }

LABEL_87:
      v84[(v77 >> 6) + 8] |= 1 << v77;
      v87 = v84[6] + 16 * v77;
      strcpy(v87, "IOMatchDefer");
      *(v87 + 13) = 0;
      *(v87 + 14) = -5120;
      sub_10000B48C(&v234, (v84[7] + 32 * v77));
      v88 = v84[2];
      v54 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v54)
      {
        goto LABEL_202;
      }

      v84[2] = v89;
      goto LABEL_89;
    }

LABEL_63:
    sub_10000A184(&v234, &qword_1001343C8, &unk_1000F3CA0);
    v58 = *v208;
    v59 = sub_100061588(0xD000000000000012, 0x8000000100104E80);
    if (v60)
    {
      v61 = v59;
      v62 = *v208;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v225 = *v208;
      *v208 = 0x8000000000000000;
      if (!v63)
      {
        sub_100039F20();
      }

      v64 = *(*(v225 + 48) + 16 * v61 + 8);

      sub_10000B48C((*(v225 + 56) + 32 * v61), &v232);
      sub_10003706C(v61, v225);
      v65 = *v208;
      *v208 = v225;
    }

    else
    {
      v232 = 0u;
      v233 = 0u;
    }

    sub_10000A184(&v232, &qword_1001343C8, &unk_1000F3CA0);
    v15 = v218;
    (v206)(&v236, 0);
    goto LABEL_76;
  }

  (v18)(&v236, 0);
  if (a2)
  {
    goto LABEL_77;
  }

LABEL_91:
  v92 = sub_1000253DC(&v232, v15, v223);
  if (!*v91)
  {
    goto LABEL_103;
  }

  v93 = v91;
  v94 = sub_100024C38();
  v237 = &type metadata for Data;
  *&v236 = v94;
  *(&v236 + 1) = v95;
  sub_10000B48C(&v236, &v234);
  v96 = *v93;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v93;
  v227 = *v93;
  *v93 = 0x8000000000000000;
  v99 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60);
  v101 = v98[2];
  v102 = (v100 & 1) == 0;
  v54 = __OFADD__(v101, v102);
  v103 = v101 + v102;
  if (v54)
  {
    goto LABEL_190;
  }

  v104 = v100;
  if (v98[3] >= v103)
  {
    if ((v97 & 1) == 0)
    {
      v108 = v99;
      sub_100039F20();
      v99 = v108;
      v106 = v227;
      if (v104)
      {
        goto LABEL_98;
      }

LABEL_100:
      v106[(v99 >> 6) + 8] |= 1 << v99;
      v109 = (v106[6] + 16 * v99);
      *v109 = 0xD00000000000001DLL;
      v109[1] = 0x8000000100104B60;
      sub_10000B48C(&v234, (v106[7] + 32 * v99));
      v110 = v106[2];
      v54 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v54)
      {
        goto LABEL_196;
      }

      v106[2] = v111;
      goto LABEL_102;
    }
  }

  else
  {
    sub_10003301C(v103, v97);
    v99 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60);
    if ((v104 & 1) != (v105 & 1))
    {
      goto LABEL_208;
    }
  }

  v106 = v227;
  if ((v104 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_98:
  v107 = (v106[7] + 32 * v99);
  sub_100003C90(v107);
  sub_10000B48C(&v234, v107);
LABEL_102:
  v112 = *v93;
  *v93 = v106;

LABEL_103:
  (v92)(&v232, 0);
  v114 = sub_1000253DC(&v232, v218, v223);
  if (*v113)
  {
    v115 = v113;
    v116 = *(v216 + 16);
    if (qword_100133A50 == -1)
    {
      if (!*(v116 + 16))
      {
        goto LABEL_111;
      }
    }

    else
    {
      swift_once();
      if (!*(v116 + 16))
      {
        goto LABEL_111;
      }
    }

    v117 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v118)
    {
      sub_10000B430(*(v116 + 56) + 32 * v117, &v236);
      if (swift_dynamicCast())
      {
        v120 = *(&v234 + 1);
        v119 = v234;
        goto LABEL_112;
      }
    }

LABEL_111:
    v119 = 0xD000000000000014;
    v120 = 0x8000000100104280;
LABEL_112:
    v237 = &type metadata for String;
    *&v236 = v119;
    *(&v236 + 1) = v120;
    sub_10000B48C(&v236, &v234);
    v121 = *v115;
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v123 = *v115;
    v228 = *v115;
    *v115 = 0x8000000000000000;
    v124 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
    v126 = v123[2];
    v127 = (v125 & 1) == 0;
    v54 = __OFADD__(v126, v127);
    v128 = v126 + v127;
    if (v54)
    {
      goto LABEL_191;
    }

    v129 = v125;
    if (v123[3] >= v128)
    {
      if ((v122 & 1) == 0)
      {
        v133 = v124;
        sub_100039F20();
        v124 = v133;
        v131 = v228;
        if (v129)
        {
          goto LABEL_118;
        }

        goto LABEL_120;
      }
    }

    else
    {
      sub_10003301C(v128, v122);
      v124 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
      if ((v129 & 1) != (v130 & 1))
      {
        goto LABEL_208;
      }
    }

    v131 = v228;
    if (v129)
    {
LABEL_118:
      v132 = (v131[7] + 32 * v124);
      sub_100003C90(v132);
      sub_10000B48C(&v234, v132);
LABEL_122:
      v137 = *v115;
      *v115 = v131;

      (v114)(&v232, 0);
      goto LABEL_123;
    }

LABEL_120:
    v131[(v124 >> 6) + 8] |= 1 << v124;
    v134 = (v131[6] + 16 * v124);
    *v134 = 0xD000000000000012;
    v134[1] = 0x8000000100104E40;
    sub_10000B48C(&v234, (v131[7] + 32 * v124));
    v135 = v131[2];
    v54 = __OFADD__(v135, 1);
    v136 = v135 + 1;
    if (v54)
    {
      goto LABEL_197;
    }

    v131[2] = v136;
    goto LABEL_122;
  }

  (v114)(&v232, 0);
LABEL_123:
  v15 = v218;
  if (*(v222 + 16))
  {
    v138 = sub_100061588(0xD000000000000018, 0x8000000100104EA0);
    v16 = v222;
    if (v139)
    {
      sub_10000B430(*(v222 + 56) + 32 * v138, &v232);
      sub_10000A184(&v232, &qword_1001343C8, &unk_1000F3CA0);
      goto LABEL_126;
    }
  }

  v232 = 0u;
  v233 = 0u;
  sub_10000A184(&v232, &qword_1001343C8, &unk_1000F3CA0);
  v141 = sub_1000253DC(&v232, v218, v223);
  if (*v140)
  {
    v142 = v140;
    v237 = &type metadata for String;
    *&v236 = 0xD000000000000013;
    *(&v236 + 1) = 0x8000000100104EC0;
    sub_10000B48C(&v236, &v234);
    v143 = *v142;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v145 = *v142;
    v229 = *v142;
    *v142 = 0x8000000000000000;
    v146 = sub_100061588(0xD000000000000018, 0x8000000100104EA0);
    v148 = v145[2];
    v149 = (v147 & 1) == 0;
    v54 = __OFADD__(v148, v149);
    v150 = v148 + v149;
    if (v54)
    {
      goto LABEL_193;
    }

    v151 = v147;
    if (v145[3] >= v150)
    {
      if (v144)
      {
        goto LABEL_134;
      }

      v155 = v146;
      sub_100039F20();
      v146 = v155;
      v153 = v229;
      if ((v151 & 1) == 0)
      {
        goto LABEL_137;
      }

LABEL_135:
      v154 = (v153[7] + 32 * v146);
      sub_100003C90(v154);
      sub_10000B48C(&v234, v154);
    }

    else
    {
      sub_10003301C(v150, v144);
      v146 = sub_100061588(0xD000000000000018, 0x8000000100104EA0);
      if ((v151 & 1) != (v152 & 1))
      {
        goto LABEL_208;
      }

LABEL_134:
      v153 = v229;
      if (v151)
      {
        goto LABEL_135;
      }

LABEL_137:
      v153[(v146 >> 6) + 8] |= 1 << v146;
      v156 = (v153[6] + 16 * v146);
      *v156 = 0xD000000000000018;
      v156[1] = 0x8000000100104EA0;
      sub_10000B48C(&v234, (v153[7] + 32 * v146));
      v157 = v153[2];
      v54 = __OFADD__(v157, 1);
      v158 = v157 + 1;
      if (v54)
      {
        goto LABEL_199;
      }

      v153[2] = v158;
    }

    v159 = *v142;
    *v142 = v153;
  }

  (v141)(&v232, 0);
  v15 = v218;
  if (!*(v222 + 16))
  {
    goto LABEL_148;
  }

LABEL_141:
  v160 = sub_100061588(0xD000000000000012, 0x8000000100104E40);
  if ((v161 & 1) == 0)
  {
    goto LABEL_148;
  }

  sub_10000B430(*(v222 + 56) + 32 * v160, &v232);

  sub_10000A184(&v232, &qword_1001343C8, &unk_1000F3CA0);
  v163 = sub_1000253DC(&v232, v15, v223);
  if (!*v162)
  {
    goto LABEL_6;
  }

  v164 = v162;
  v165 = *(v216 + 16);
  if (qword_100133A50 == -1)
  {
    if (*(v165 + 16))
    {
LABEL_145:
      v166 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v167)
      {
        sub_10000B430(*(v165 + 56) + 32 * v166, &v236);
        if (swift_dynamicCast())
        {
          v169 = *(&v234 + 1);
          v168 = v234;
          goto LABEL_169;
        }
      }
    }
  }

  else
  {
    swift_once();
    if (*(v165 + 16))
    {
      goto LABEL_145;
    }
  }

  v168 = 0xD000000000000014;
  v169 = 0x8000000100104280;
LABEL_169:
  v237 = &type metadata for String;
  *&v236 = v168;
  *(&v236 + 1) = v169;
  sub_10000B48C(&v236, &v234);
  v191 = *v164;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v164;
  v231 = *v164;
  *v164 = 0x8000000000000000;
  v179 = sub_100061588(0xD000000000000016, 0x8000000100104E60);
  v195 = v193[2];
  v196 = (v194 & 1) == 0;
  v54 = __OFADD__(v195, v196);
  v197 = v195 + v196;
  if (v54)
  {
    goto LABEL_194;
  }

  v198 = v194;
  if (v193[3] >= v197)
  {
    if ((v192 & 1) == 0)
    {
      v202 = v179;
      sub_100039F20();
      v179 = v202;
      v186 = v231;
      if (v198)
      {
        goto LABEL_4;
      }

      goto LABEL_175;
    }

LABEL_174:
    v186 = v231;
    if (v198)
    {
      goto LABEL_4;
    }

LABEL_175:
    v186[(v179 >> 6) + 8] |= 1 << v179;
    v200 = (v186[6] + 16 * v179);
    *v200 = 0xD000000000000016;
    v200[1] = 0x8000000100104E60;
    sub_10000B48C(&v234, (v186[7] + 32 * v179));
    v201 = v186[2];
    v54 = __OFADD__(v201, 1);
    v189 = v201 + 1;
    if (v54)
    {
      goto LABEL_200;
    }

    goto LABEL_176;
  }

  sub_10003301C(v197, v192);
  v179 = sub_100061588(0xD000000000000016, 0x8000000100104E60);
  if ((v198 & 1) == (v199 & 1))
  {
    goto LABEL_174;
  }

LABEL_208:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_100027B1C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_10003EB54(&off_100126080);
  sub_100003CDC(&qword_100134FE8, &qword_1000F4E98);
  swift_arrayDestroy();
  if (!a2)
  {
    goto LABEL_17;
  }

  v15._countAndFlagsBits = 20297;
  v15._object = 0xE200000000000000;
  if (!String.hasPrefix(_:)(v15))
  {
    v16._countAndFlagsBits = 21327;
    v16._object = 0xE200000000000000;
    if (!String.hasPrefix(_:)(v16))
    {
      goto LABEL_17;
    }
  }

  v38 = a6;
  *&v41 = 95;
  *(&v41 + 1) = 0xE100000000000000;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 95;
  v18._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v18))
  {

    if (!*(v14 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v37 = a7;
    v19 = *(*(a5 + 24) + 16);
    *&v41 = a3;
    *(&v41 + 1) = a4;

    v20._countAndFlagsBits = 95;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);

    if (*(v19 + 16))
    {
      v21 = sub_100061588(v41, *(&v41 + 1));
      v23 = v22;

      if (v23)
      {

        sub_10000B430(*(v19 + 56) + 32 * v21, &v41);

        sub_10000B48C(&v41, v37);
        return result;
      }
    }

    else
    {
    }

    a7 = v37;
    if (!*(v14 + 16))
    {
      goto LABEL_17;
    }
  }

  v25 = sub_100061588(a1, a2);
  if (v26)
  {
    v27 = (*(v14 + 56) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];

    v30._object = 0x8000000100104610;
    v30._countAndFlagsBits = 0xD000000000000012;
    if (!String.hasPrefix(_:)(v30))
    {
      sub_100027B1C(v29, v28, a3, a4, a5, v38 & 1);
      goto LABEL_20;
    }

    sub_100027B1C(v29, v28, a3, a4, a5, v38 & 1);

    if (v42)
    {
      v31 = sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
      if (swift_dynamicCast())
      {
        v40 = v39;
        sub_1000265DC(&v40, v38 & 1);
        v32 = v40;
        *(a7 + 24) = v31;
        *a7 = v32;
        return result;
      }
    }

    else
    {
      sub_10000A184(&v41, &qword_1001343C8, &unk_1000F3CA0);
    }

LABEL_24:
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

LABEL_17:

  v33 = *(*(a5 + 24) + 16);
  if (!*(v33 + 16))
  {
    goto LABEL_24;
  }

  v34 = *(*(a5 + 24) + 16);

  v35 = sub_100061588(a3, a4);
  if ((v36 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_10000B430(*(v33 + 56) + 32 * v35, a7);
LABEL_20:

  return result;
}

uint64_t sub_100027EB0()
{
  v1 = v0[3];

  sub_10000A184((v0 + 4), &unk_100137390, &unk_1000F4E70);
  sub_10000A184((v0 + 10), &qword_100135090, &qword_1000F4F58);
  v2 = v0[15];

  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL, &unk_1001389D0, &qword_1000F4F60);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches);

  v4 = *(v0 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100027FCC()
{
  sub_100028120(319, &qword_100134D10, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100028120(319, &qword_100134D18, &type metadata accessor for URL);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100028120(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100028198()
{
  v1 = OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);

  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  v4 = *(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000282C4()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100028120(319, &qword_100134D10, &type metadata accessor for UUID);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1000283E8()
{
  result = qword_100134F68;
  if (!qword_100134F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F68);
  }

  return result;
}

unint64_t sub_100028440()
{
  result = qword_100134F70;
  if (!qword_100134F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F70);
  }

  return result;
}

unint64_t sub_100028498()
{
  result = qword_100134F78;
  if (!qword_100134F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F78);
  }

  return result;
}

unint64_t sub_1000284F0()
{
  result = qword_100134F80;
  if (!qword_100134F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F80);
  }

  return result;
}

unint64_t sub_100028548()
{
  result = qword_100134F88;
  if (!qword_100134F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134F88);
  }

  return result;
}

uint64_t sub_10002859C(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  v7 = sub_100054590(a1);
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7;
}

uint64_t sub_10002AF70(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 648) & 1) == 0)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_100003C4C(a1, v10);
    v12 = (*(v11 + 16))(v10, v11);
    if (v13 != 1)
    {
      sub_100041A00(v12, v13);
      return 0;
    }

    v14 = a1[3];
    v15 = a1[4];
    sub_100003C4C(a1, v14);
    (*(v15 + 64))(v14, v15);
    v16 = URL.path.getter();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    v19 = *sub_100003C4C((v1 + 16), *(v1 + 40));
    sub_1000E07B4(v30);
    v20 = *sub_100003C4C(v30, v31);
    LOBYTE(v20) = sub_10007A718();
    sub_100003C90(v30);
    if (v20)
    {
LABEL_4:

      return 0;
    }

    v22 = *sub_100003C4C((v3 + 16), *(v3 + 40));
    sub_1000DF9D4(v30);
    v23 = v31;
    v24 = v32;
    sub_100003C4C(v30, v31);
    v25 = (*(v24 + 232))(v16, v18, v23, v24);
    if (v2)
    {

      return sub_100003C90(v30);
    }

    v26 = v25;
    sub_100003C90(v30);
    if ((v26 & 1) == 0)
    {
      goto LABEL_4;
    }

    static os_log_type_t.default.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000F3160;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100003D24();
    *(v27 + 32) = v16;
    *(v27 + 40) = v18;
    sub_10001491C();
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return 2;
}

uint64_t sub_10002B24C(uint64_t a1, __objc2_class **a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 3)
  {
    sub_10001449C();
    swift_allocError();
    *v7 = 0xD000000000000041;
    *(v7 + 8) = 0x80000001001055C0;
    v8 = *&v42[0];
    v9 = v41;
    v10 = v40;
    *(v7 + 16) = v39;
    *(v7 + 32) = v10;
    *(v7 + 48) = v9;
    *(v7 + 64) = v8;
    *(v7 + 72) = 9;
    swift_willThrow();
    return v6;
  }

  v46 = a2;
  sub_1000CD72C(a2, a3, 0, 0, 0, &v39);
  v6 = v5 == 0;
  if (!v5)
  {
    v23 = v40;
    *a1 = v39;
    *(a1 + 16) = v23;
    *(a1 + 32) = v41;
    return v6;
  }

  v43 = v5;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v6;
  }

  *&v45[9] = *(v42 + 9);
  v44[2] = v41;
  *v45 = v42[0];
  v44[0] = v39;
  v44[1] = v40;
  if (BYTE8(v42[1]) != 45)
  {
    sub_10001465C(v44);
    goto LABEL_9;
  }

  static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F3C80;
  v13 = sub_1000D77B8(v12);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100003D24();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;

  v18 = sub_1000AA704(v17);
  v20 = v19;
  sub_10001465C(v44);
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v18;
  *(v12 + 80) = v20;
  v21 = sub_10001491C();
  v22 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_1000CD72C(v46, 3, a4, a5, 0, &v36);
  v46 = v21;
  v24 = v37;
  *a1 = v36;
  *(a1 + 16) = v24;
  *(a1 + 32) = v38;
  static os_log_type_t.info.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000F3160;
  result = sub_100014894(a1, &v36, &unk_100137390, &unk_1000F4E70);
  if (*(&v37 + 1))
  {

    sub_10001465C(v44);
    v27 = sub_100003C4C(&v36, *(&v37 + 1));
    v28 = *(*v27 + 40);
    v29 = *(*v27 + 48);
    sub_1000146C4(v28, v29);
    sub_10005BD44(v28, v29);
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;
    sub_1000128D8(v28, v29);

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v16;
    *(v25 + 32) = v30;
    *(v25 + 40) = v32;
    sub_100003C90(&v36);
    v33 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B72C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100003C4C(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  sub_100014894(a2, v16, &unk_100137390, &unk_1000F4E70);
  if (v17)
  {
    v8 = sub_100003C4C(v16, v17);
    v9 = *(*v8 + 40);
    v10 = *(*v8 + 48);
    sub_1000146C4(v9, v10);
    sub_10005BD44(v9, v10);
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v11 = BidirectionalCollection<>.joined(separator:)();
    v13 = v12;
    sub_1000128D8(v9, v10);

    sub_100003C90(v16);
    if (v7)
    {
      if (v13)
      {
        if (v5 == v11 && v7 == v13)
        {

          v14 = 1;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (v13)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000A184(v16, &unk_100137390, &unk_1000F4E70);
    if (v7)
    {
LABEL_8:
      v14 = 0;
LABEL_13:

      return v14 & 1;
    }
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t sub_10002B8F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_10000A990(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100003C90(v9);
      }

      if (v8)
      {
        return sub_100009F34(v9, a3);
      }

      result = sub_100003C90(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10002B9A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34[-1] - v7;
  sub_100014894(a2, &v34[-1] - v7, &unk_1001389D0, &qword_1000F4F60);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000A184(v8, &unk_1001389D0, &qword_1000F4F60);
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000F3160;
    v12 = sub_1000D77B8(v11);
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100003D24();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_10001491C();
    v15 = static OS_os_log.default.getter();
LABEL_3:
    os_log(_:dso:log:_:_:)();

    goto LABEL_5;
  }

  v16 = URL.path.getter();
  v18 = v17;
  (*(v10 + 8))(v8, v9);
  v19 = *sub_100003C4C((v3 + 16), *(v3 + 40));
  sub_1000DF9D4(v34);
  v20 = v35;
  v21 = v36;
  sub_100003C4C(v34, v35);
  (*(v21 + 152))(v16, v18, v20, v21);
  v25 = v24;

  if (!v25)
  {
    sub_100003C90(v34);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000F3160;
    v30 = sub_1000D77B8(v29);
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100003D24();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_10001491C();
    v15 = static OS_os_log.default.getter();
    goto LABEL_3;
  }

  sub_100003C90(v34);
  v26 = *(v3 + 652);
  if (v26 != 2 && (v26 & 1) == 0 && (*(v3 + 648) & 0x80000) == 0)
  {
    sub_1000D7374();
    v27._countAndFlagsBits = 0x6C7070612E6D6F63;
    v27._object = 0xE900000000000065;
    v28 = String.hasPrefix(_:)(v27);

    if (v28)
    {
      v22 = sub_100069024();

      return v22 & 1;
    }
  }

LABEL_5:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_10002BE38@<X0>(unint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_100003CDC(&qword_100135100, &qword_1000F4FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v12 = *"x86_64";
  v11 = 0xE600000000000000;

  v40 = a2;
  v35 = a5;
  v36 = a1;
  if (!a2 || (*"x86_64" == a1 ? (v13 = a2 == 0xE600000000000000) : (v13 = 0), !v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v14 = _swiftEmptyArrayStorage;

    *type = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000635A4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v14 = *type;
    }

    a1 = v14[2];
    v15 = v14[3];
    a2 = a1 + 1;
    if (a1 >= v15 >> 1)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = sub_100030D88(v14);

    *type = inited;
    sub_100030A9C(v11);
    v17 = *type;
    v41 = *(*type + 16);
    if (!v41)
    {
      break;
    }

    v18 = 0;
    v19 = (*type + 40);
    v37 = *type;
    while (1)
    {
      v15 = *(v17 + 16);
      if (v18 >= v15)
      {
        break;
      }

      inited = *v19;
      if (*v19)
      {
        v42 = v6;
        v20 = *(v19 - 1);
        type[0] = 0;
        subtype[0] = 0;
        v21 = String.utf8CString.getter();

        macho_cpu_type_for_arch_name((v21 + 32), type, subtype);

        a1 = type[0];
        v12 = subtype[0];
        if (a2 && (v20 == v36 && inited == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
        }

        else
        {

          static os_log_type_t.info.getter();
          sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1000F3160;
          *(v22 + 56) = &type metadata for String;
          *(v22 + 64) = sub_100003D24();
          *(v22 + 32) = v20;
          *(v22 + 40) = inited;
          sub_10001491C();

          v23 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();
        }

        sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
        v24 = swift_allocBox();
        v26 = v25;
        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 56))(v26, 1, 1, v27);

        sub_1000D212C(v20, inited, a1 | (v12 << 32), sub_100041D10, v24, a3, a4);
        if (!v42)
        {

          swift_bridgeObjectRelease_n();
          swift_beginAccess();
          sub_100014894(v26, v35, &qword_100134FB0, &qword_1000F4E60);
        }

        swift_errorRetain();
        sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
        if (!swift_dynamicCast() || (*&v46[9] = *&v50[9], v45 = v49, *v46 = *v50, *subtype = *type, v44 = v48, v28 = v50[24], sub_10001465C(subtype), v28 != 16))
        {
        }

        v11 = static os_log_type_t.info.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1000F3160;
        *(v29 + 56) = &type metadata for String;
        *(v29 + 64) = sub_100003D24();
        *(v29 + 32) = v20;
        *(v29 + 40) = inited;
        sub_10001491C();
        inited = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v6 = 0;
        a2 = v40;
        v17 = v37;
      }

      ++v18;
      v19 += 2;
      if (v41 == v18)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    sub_1000635A4((v15 > 1), a2, 1);
    v14 = *type;
LABEL_11:
    v14[2] = a2;
    v16 = &v14[2 * a1];
    v16[4] = v12;
    v16[5] = v11;
    a2 = v40;
  }

LABEL_27:

  sub_10001449C();
  swift_allocError();
  *v30 = 0xD000000000000015;
  *(v30 + 8) = 0x80000001001052E0;
  v31 = *v50;
  v33 = v48;
  v32 = v49;
  *(v30 + 16) = *type;
  *(v30 + 32) = v33;
  *(v30 + 48) = v32;
  *(v30 + 64) = v31;
  *(v30 + 72) = 16;
  return swift_willThrow();
}

uint64_t sub_10002C410(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v124 = a7;
  v136 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v120 = v11;
  v121 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v118 = &v111[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100003CDC(&qword_100134FB8, &qword_1000F4E68);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v122 = &v111[-v17];
  v18 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v123 = &v111[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v119 = &v111[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v111[-v25];
  v27 = __chkstk_darwin(v24);
  v29 = &v111[-v28];
  v30 = __chkstk_darwin(v27);
  v125 = &v111[-v31];
  __chkstk_darwin(v30);
  v126 = &v111[-v32];
  v33 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  __chkstk_darwin(v35);
  if (a3)
  {
    sub_10001449C();
    swift_allocError();
    *v38 = 0xD000000000000036;
    *(v38 + 8) = 0x8000000100105770;
    v39 = v128;
    v40 = v127[2];
    v41 = v127[1];
    *(v38 + 16) = v127[0];
    *(v38 + 32) = v41;
    *(v38 + 48) = v40;
    *(v38 + 64) = v39;
    *(v38 + 72) = 24;
    swift_willThrow();
    return 2;
  }

  if (*a1 != -2147483595)
  {
    return 2;
  }

  v115 = v37;
  v116 = &v111[-v36];
  v117 = v7;
  v42 = *(a1 + 24);
  v43 = String.init(cString:)();
  v45 = v43;
  v46 = v44;
  if (!*(a5 + 16) || (v47 = sub_100061588(v43, v44), (v48 & 1) == 0))
  {
    if (v45 == 0xD000000000000010 && 0x80000001001033F0 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      static os_log_type_t.info.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1000F3160;
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = sub_100003D24();
      *(v62 + 32) = v45;
      *(v62 + 40) = v46;
      sub_10001491C();
      v63 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    return 2;
  }

  v49 = v47;

  v50 = *(*(a5 + 56) + 8 * v49);
  memset(v134, 0, sizeof(v134));
  v133 = 0;
  memset(v132, 0, sizeof(v132));
  v51 = v136;
  v52 = *(v136 + 648);

  v53 = 0;
  if ((v52 & 0x40) != 0)
  {
    v114 = v50;
    v54 = v51;
    v55 = sub_1000D7374();
    v57 = v56;
    swift_beginAccess();
    v58 = *(v54 + 712);
    if (*(v58 + 16) && (, v59 = sub_100061588(v55, v57), v61 = v60, , (v61 & 1) != 0))
    {
      v53 = *(*(v58 + 56) + 8 * v59);
    }

    else
    {

      v53 = 0;
    }

    v51 = v136;
    v50 = v114;
  }

  v64 = *(a1 + 8);
  v65 = type metadata accessor for URL();
  (*(*(v65 - 8) + 56))(v116, 1, 1, v65);
  v66 = v126;
  sub_1000D79B4(v126);
  memcpy(v135, (v51 + 56), 0x255uLL);
  sub_100014894(v134, v130, &unk_100137390, &unk_1000F4E70);
  sub_100014894(v132, v129, &qword_100135090, &qword_1000F4F58);
  v67 = v66;
  v68 = v125;
  sub_100014894(v67, v125, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo.LoadInfo();
  v69 = swift_allocObject();
  *(v69 + 32) = v53;
  *(v69 + 16) = v64;
  v70 = v69;
  *(v69 + 24) = 1024;
  v71 = v135[592];

  v72 = v50;
  if (v71 < 0)
  {
    sub_100041A84(v135, v127);

    sub_100041A84(v135, v127);
    v73 = sub_1000264A8();
    if (v74)
    {
      goto LABEL_20;
    }

    v96 = v73;
    v97 = v70;
    v98 = sub_1000D76D4();
    sub_100014894(v68, v29, &qword_100134FB0, &qword_1000F4E60);
    v113 = v97;
    sub_1000263E0(v26);
    if (v96 != v98)
    {

      sub_100041AE0(v135);
      sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v29, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v68, &qword_100134FB0, &qword_1000F4E60);
      v75 = 3;
      v76 = v72;
      v77 = v116;
      v70 = v113;
      goto LABEL_22;
    }

    v114 = v72;
    v99 = *(v15 + 48);
    v100 = v122;
    sub_100014894(v26, v122, &qword_100134FB0, &qword_1000F4E60);
    sub_100014894(v29, &v100[v99], &qword_100134FB0, &qword_1000F4E60);
    v101 = v120;
    v102 = *(v121 + 48);
    if (v102(v100, 1, v120) == 1)
    {

      sub_100041AE0(v135);
      sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v29, &qword_100134FB0, &qword_1000F4E60);
      v103 = v122;
      sub_10000A184(v125, &qword_100134FB0, &qword_1000F4E60);
      v104 = v102(&v103[v99], 1, v101);
      v70 = v113;
      if (v104 == 1)
      {
        sub_10000A184(v103, &qword_100134FB0, &qword_1000F4E60);
LABEL_40:
        v75 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v105 = v119;
      sub_100014894(v100, v119, &qword_100134FB0, &qword_1000F4E60);
      if (v102(&v100[v99], 1, v101) != 1)
      {
        v106 = v121;
        v107 = &v100[v99];
        v108 = v118;
        (*(v121 + 32))(v118, v107, v101);
        sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID);
        v112 = dispatch thunk of static Equatable.== infix(_:_:)();

        sub_100041AE0(v135);
        v109 = *(v106 + 8);
        v109(v108, v101);
        sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
        sub_10000A184(v29, &qword_100134FB0, &qword_1000F4E60);
        sub_10000A184(v125, &qword_100134FB0, &qword_1000F4E60);
        v109(v105, v101);
        sub_10000A184(v122, &qword_100134FB0, &qword_1000F4E60);
        v70 = v113;
        if (v112)
        {
          goto LABEL_40;
        }

LABEL_38:
        v75 = 2;
LABEL_41:
        v76 = v114;
        goto LABEL_21;
      }

      sub_100041AE0(v135);
      sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v29, &qword_100134FB0, &qword_1000F4E60);
      v103 = v122;
      sub_10000A184(v125, &qword_100134FB0, &qword_1000F4E60);
      (*(v121 + 8))(v105, v101);
      v70 = v113;
    }

    sub_10000A184(v103, &qword_100134FB8, &qword_1000F4E68);
    goto LABEL_38;
  }

  sub_100041A84(v135, v127);

  sub_100041A84(v135, v127);
LABEL_20:
  sub_10000A184(v68, &qword_100134FB0, &qword_1000F4E60);

  sub_100041AE0(v135);
  v75 = 4;
  v76 = v50;
LABEL_21:
  v77 = v116;
LABEL_22:
  *(v70 + 25) = v75;
  v78 = v115;
  sub_100014894(v77, v115, &unk_1001389D0, &qword_1000F4F60);
  v79 = v126;
  v80 = v123;
  sub_100014894(v126, v123, &qword_100134FB0, &qword_1000F4E60);
  v81 = type metadata accessor for RealizedInfo(0);
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *(v84 + 96) = 0u;
  *(v84 + 112) = 0u;
  *(v84 + 80) = 0u;
  *(v84 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors) = _swiftEmptyArrayStorage;
  *(v84 + 24) = v76;
  *(v84 + 64) = v131;
  v85 = v130[1];
  *(v84 + 32) = v130[0];
  *(v84 + 48) = v85;
  *(v84 + 72) = 0;
  swift_beginAccess();

  sub_100041B54(v129, v84 + 80, &qword_100135090, &qword_1000F4F58);
  swift_endAccess();
  v86 = *(v84 + 120);
  *(v84 + 120) = v70;

  sub_100020D24(v78, v84 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL, &unk_1001389D0, &qword_1000F4F60);
  v87 = v84 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex;
  *v87 = 0;
  *(v87 + 8) = 1;
  sub_100020D24(v80, v84 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, &qword_100134FB0, &qword_1000F4E60);
  *(v84 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches) = 0;
  *(v84 + 16) = 0;
  v88 = 104;
  if (*v76 == _TtC10driverkitd15DriverExtension)
  {
    v88 = 120;
  }

  v89 = *&v135[v88];
  v90 = 112;
  if (*v76 == _TtC10driverkitd15DriverExtension)
  {
    v90 = 128;
  }

  v91 = *&v135[v90];

  v92 = sub_100023AFC(v89, v91, 0);

  sub_100014894(v77, v78, &unk_1001389D0, &qword_1000F4F60);
  v93 = sub_10003FE2C(v76, v92, v78, 0, v135);
  sub_10000A184(v79, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v77, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v132, &qword_100135090, &qword_1000F4F58);
  sub_10000A184(v134, &unk_100137390, &unk_1000F4E70);
  *(v84 + 16) = v93;

  v134[0] = v84;

  sub_10007BCC0(v134);
  sub_10007C5D8(v134);
  v94 = v124;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v94 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v94 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v110 = *((*(v94 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return 2;
}

uint64_t sub_10002D180(uint64_t a1)
{
  v160 = type metadata accessor for UUID();
  v2 = *(v160 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v160);
  v155 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v158 = &v146 - v6;
  v7 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v154 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v153 = &v146 - v12;
  v13 = __chkstk_darwin(v11);
  v159 = (&v146 - v14);
  v15 = __chkstk_darwin(v13);
  v166 = &v146 - v16;
  v17 = __chkstk_darwin(v15);
  v165 = &v146 - v18;
  v19 = __chkstk_darwin(v17);
  v164 = (&v146 - v20);
  v21 = __chkstk_darwin(v19);
  v162 = &v146 - v22;
  v23 = __chkstk_darwin(v21);
  v163 = &v146 - v24;
  __chkstk_darwin(v23);
  v161 = &v146 - v25;
  v26 = type metadata accessor for OSSignpostID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v146 - v32;
  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for OSSignposter();
  sub_1000144F0(v34, qword_10014EA70);
  static OSSignpostID.exclusive.getter();
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v37 = swift_slowAlloc();
    v157 = v2;
    v38 = a1;
    v39 = v37;
    *v37 = 0;
    v40 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v40, "CollectionRealizing", "", v39, 2u);
    a1 = v38;
    v2 = v157;
  }

  (*(v27 + 16))(v31, v33, v26);
  v41 = type metadata accessor for OSSignpostIntervalState();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = OSSignpostIntervalState.init(id:isOpen:)();
  v46 = *(v27 + 8);
  v45 = (v27 + 8);
  v46(v33, v26);
  v47 = v167;
  v48 = sub_1000539C0();
  if (v47)
  {
LABEL_79:
    sub_10002E2D8();

    return v45;
  }

  v49 = v48;
  type metadata accessor for KernelCollection();
  v50 = *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
  v52 = v164;
  v51 = v165;
  v53 = v166;
  sub_100052E70(v164, v165, v166, v49, *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch), *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8), *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  v167 = 0;
  v152 = v44;
  v151 = a1;
  v54 = v51;
  v55 = v161;
  sub_100020D24(v52, v161, &qword_100134FB0, &qword_1000F4E60);
  sub_100020D24(v54, v163, &qword_100134FB0, &qword_1000F4E60);
  sub_100020D24(v53, v162, &qword_100134FB0, &qword_1000F4E60);
  v56 = v159;
  sub_100014894(v55, v159, &qword_100134FB0, &qword_1000F4E60);
  v57 = v160;
  if ((*(v2 + 48))(v56, 1, v160) == 1)
  {

    sub_10000A184(v56, &qword_100134FB0, &qword_1000F4E60);
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v112 = "o prelink UUID key?";
        v113 = 0xD000000000000019;
      }

      else
      {
        v112 = "f dext in the ARV at %{public}s";
        v113 = 0xD000000000000012;
      }
    }

    else
    {
      if (v50)
      {
        v58 = "system kext collection";
      }

      else
      {
        v58 = "boot kernel collection";
      }

      v112 = (v58 - 32);
      v113 = 0xD000000000000016;
    }

    v118 = v112 | 0x8000000000000000;
    sub_10001449C();
    swift_allocError();
    *v119 = v113;
    *(v119 + 8) = v118;
    *(v119 + 16) = 0xD000000000000023;
    *(v119 + 24) = 0x8000000100105670;
    v120 = v170;
    v121 = v169;
    *(v119 + 32) = *type;
    *(v119 + 48) = v121;
    *(v119 + 64) = v120;
    *(v119 + 72) = 6;
    swift_willThrow();
    v45 = &qword_100134FB0;
    sub_10000A184(v162, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v163, &qword_100134FB0, &qword_1000F4E60);
    v122 = v161;
LABEL_78:
    sub_10000A184(v122, &qword_100134FB0, &qword_1000F4E60);
    goto LABEL_79;
  }

  v157 = v2;
  v61 = *(v2 + 32);
  v60 = v2 + 32;
  v59 = v61;
  (v61)(v158, v56, v57);
  if (!*(v49 + 16) || (v166 = v60, v62 = sub_100061588(0xD000000000000016, 0x8000000100105700), (v63 & 1) == 0))
  {

    goto LABEL_65;
  }

  sub_10000B430(*(v49 + 56) + 32 * v62, type);

  sub_100003CDC(&qword_100135158, &qword_1000F5040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:
    v114 = v157;
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v116 = "o prelink UUID key?";
        v117 = 0xD000000000000019;
      }

      else
      {
        v116 = "f dext in the ARV at %{public}s";
        v117 = 0xD000000000000012;
      }
    }

    else
    {
      if (v50)
      {
        v115 = "system kext collection";
      }

      else
      {
        v115 = "boot kernel collection";
      }

      v116 = (v115 - 32);
      v117 = 0xD000000000000016;
    }

    v123 = v116 | 0x8000000000000000;
    sub_10001449C();
    swift_allocError();
    *v124 = v117;
    *(v124 + 8) = v123;
    *(v124 + 16) = 0xD00000000000002ALL;
    *(v124 + 24) = 0x8000000100105720;
    v125 = v170;
    v126 = v169;
    *(v124 + 32) = *type;
    *(v124 + 48) = v126;
    *(v124 + 64) = v125;
    *(v124 + 72) = 6;
    swift_willThrow();
    (*(v114 + 8))(v158, v160);
    v45 = &qword_100134FB0;
    sub_10000A184(v162, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v163, &qword_100134FB0, &qword_1000F4E60);
    v122 = v161;
    goto LABEL_78;
  }

  v164 = v59;
  v64 = *subtype;
  v165 = sub_1000412F4(_swiftEmptyArrayStorage);
  v65 = v64[2];
  if (!v65)
  {
    goto LABEL_60;
  }

  v66 = 0;
  v148 = "dependenciesValid";
  v149 = 0x8000000100104280;
  v150 = v65 - 1;
  do
  {
    v67 = v66;
    while (1)
    {
      if (v67 >= v64[2])
      {
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v68 = v64[v67 + 4];
      v69 = qword_100133A60;

      if (v69 == -1)
      {
        if (!*(v68 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (!*(v68 + 16))
        {
          goto LABEL_16;
        }
      }

      v70 = sub_100061588(qword_10014E8E0, *algn_10014E8E8);
      if ((v71 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_10000B430(*(v68 + 56) + 32 * v70, type);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v73 = *subtype;
      v72 = v173;
      if (*subtype == 1415071051 && v173 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v75 = type metadata accessor for KernelExtension(0);
        goto LABEL_34;
      }

      if (v73 == 1415071044 && v72 == 0xE400000000000000)
      {
        break;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v74)
      {
        goto LABEL_33;
      }

LABEL_16:

      if (v65 == ++v67)
      {
        goto LABEL_60;
      }
    }

LABEL_33:
    v75 = type metadata accessor for DriverExtension(0);
LABEL_34:
    if (*(v68 + 16) && (v76 = sub_100061588(0xD000000000000010, v148 | 0x8000000000000000), (v77 & 1) != 0))
    {
      sub_10000B430(*(v68 + 56) + 32 * v76, type);
      v78 = swift_dynamicCast();
      v79 = *subtype;
      if (!v78)
      {
        v79 = 0;
      }

      v159 = v79;
      v80 = 0xF000000000000000;
      if (v78)
      {
        v80 = v173;
      }
    }

    else
    {
      v159 = 0;
      v80 = 0xF000000000000000;
    }

    v147 = v80;
    *type = v151;
    v171 = 1;
    v81 = *(v75 + 312);

    v159 = v81(type, v68, v159, v147);
    v82 = v159[2];
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    if (*(v82 + 16) && (v83 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v84 & 1) != 0) && (sub_10000B430(*(v82 + 56) + 32 * v83, type), (swift_dynamicCast() & 1) != 0))
    {
      v86 = *subtype;
      v85 = v173;
    }

    else
    {
      v86 = 0xD000000000000014;
      v85 = v149;
    }

    v147 = v85;

    v87 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *type = v87;
    v89 = v86;
    v90 = v86;
    v91 = v147;
    v92 = sub_100061588(v90, v147);
    v94 = *(v87 + 16);
    v95 = (v93 & 1) == 0;
    v96 = __OFADD__(v94, v95);
    v97 = v94 + v95;
    if (v96)
    {
      goto LABEL_86;
    }

    if (*(v87 + 24) < v97)
    {
      LODWORD(v165) = v93;
      sub_1000353D8(v97, isUniquelyReferenced_nonNull_native);
      v92 = sub_100061588(v89, v91);
      v98 = v93 & 1;
      LOBYTE(v93) = v165;
      if ((v165 & 1) != v98)
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_54:
      if (v93)
      {
        goto LABEL_55;
      }

LABEL_57:
      v103 = *type;
      *(*type + 8 * (v92 >> 6) + 64) |= 1 << v92;
      v104 = (v103[6] + 16 * v92);
      *v104 = v89;
      v104[1] = v91;
      *(v103[7] + 8 * v92) = v159;

      v105 = v103[2];
      v96 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (!v96)
      {
        v165 = v103;
        v103[2] = v106;
        goto LABEL_59;
      }

LABEL_87:
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_54;
    }

    v165 = v92;
    v102 = v93;
    sub_10003B2B8();
    v92 = v165;
    if ((v102 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_55:
    v99 = v92;

    v165 = *type;
    v100 = *(*type + 56);
    v101 = *(v100 + 8 * v99);
    *(v100 + 8 * v99) = v159;

LABEL_59:
    v66 = v67 + 1;
  }

  while (v150 != v67);
LABEL_60:

  v107 = v156;
  v108 = *(v156 + 160);
  v109 = *(v156 + 168);
  type[0] = 0;
  subtype[0] = 0;
  v110 = String.utf8CString.getter();
  macho_cpu_type_for_arch_name((v110 + 32), type, subtype);

  if ((*(v107 + 648) & 0x80) == 0)
  {
    v111 = v167;
    v159 = sub_10003FAC4(v165, sub_100041C60);
    v167 = v111;

    sub_10000A184(v161, &qword_100134FB0, &qword_1000F4E60);
    goto LABEL_84;
  }

  v127 = type[0];
  v128 = subtype[0];
  v45 = swift_allocObject();
  v45[2] = _swiftEmptyArrayStorage;
  v129 = sub_100003C4C((v151 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data), *(v151 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data + 24));
  v130 = swift_allocObject();
  v131 = v107;
  v132 = v130;
  v130[2] = v165;
  v130[3] = v131;
  v130[4] = v45;
  v133 = *v129;
  v134 = v129[1];

  v135 = v133;
  v136 = v167;
  sub_1000D212C(v108, v109, v127 | (v128 << 32), sub_100041CE8, v132, v135, v134);
  if (v136)
  {

    (*(v157 + 8))(v158, v160);
    sub_10000A184(v162, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v163, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v161, &qword_100134FB0, &qword_1000F4E60);

    goto LABEL_79;
  }

  v167 = 0;

  sub_10000A184(v161, &qword_100134FB0, &qword_1000F4E60);
  swift_beginAccess();
  v159 = v45[2];

LABEL_84:
  v137 = v155;
  v138 = v160;
  v139 = v164;
  (v164)(v155, v158, v160);
  v140 = v153;
  sub_100020D24(v163, v153, &qword_100134FB0, &qword_1000F4E60);
  v141 = v154;
  sub_100020D24(v162, v154, &qword_100134FB0, &qword_1000F4E60);
  v142 = type metadata accessor for RealizedKernelCollection(0);
  v143 = *(v142 + 48);
  v144 = *(v142 + 52);
  v45 = swift_allocObject();
  *(v45 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection) = v151;
  v139(v45 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_uuid, v137, v138);
  sub_100020D24(v140, v45 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  sub_100020D24(v141, v45 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  *(v45 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions) = v159;

  sub_10002E2D8();

  return v45;
}

uint64_t sub_10002E2D8()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_1000144F0(v10, qword_10014EA70);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "CollectionRealizing", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10002E564(uint64_t a1, uint64_t a2, __objc2_class **a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  __chkstk_darwin(v8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100003CDC(&qword_100134FB8, &qword_1000F4E68);
  v11 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v13 = &v84 - v12;
  v14 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v92 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v86 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v90 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v91 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v84 - v25;
  __chkstk_darwin(v24);
  v97 = &v84 - v27;
  v28 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v93 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v84 - v33;
  __chkstk_darwin(v32);
  v96 = &v84 - v35;
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  swift_beginAccess();
  v36 = *(a4 + 712);
  if (*(v36 + 16))
  {
    v37 = *(a4 + 712);

    v38 = sub_100061588(a1, a2);
    if (v39)
    {
      v40 = *(*(v36 + 56) + 8 * v38);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v89 = v8;
  v95 = a3;
  sub_1000D7B9C(v34);
  v41 = type metadata accessor for URL();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v34, 1, v41) == 1)
  {
    sub_10000A184(v34, &unk_1001389D0, &qword_1000F4F60);
    v43 = 1;
    v44 = v96;
  }

  else
  {
    v44 = v96;
    sub_10007A7AC(v96);
    (*(v42 + 8))(v34, v41);
    v43 = 0;
  }

  (*(v42 + 56))(v44, v43, 1, v41);
  v45 = v97;
  sub_1000D79B4(v97);
  v94 = a4;
  memcpy(v106, (a4 + 56), 0x255uLL);
  sub_100014894(v104, v100, &unk_100137390, &unk_1000F4E70);
  sub_100014894(v102, v99, &qword_100135090, &qword_1000F4F58);
  sub_100014894(v45, v26, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo.LoadInfo();
  v46 = swift_allocObject();
  *(v46 + 32) = v40;
  *(v46 + 16) = 0;
  *(v46 + 24) = 1025;
  if ((v106[592] & 0x80) == 0)
  {
    sub_100041A84(v106, v98);
    sub_100041A84(v106, v98);
LABEL_13:
    sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
    sub_100041AE0(v106);
    v49 = 4;
    goto LABEL_14;
  }

  sub_100041A84(v106, v98);
  sub_100041A84(v106, v98);
  v47 = sub_1000264A8();
  if (v48)
  {
    goto LABEL_13;
  }

  v70 = v47;
  v71 = sub_1000D76D4();
  v72 = v91;
  sub_100014894(v26, v91, &qword_100134FB0, &qword_1000F4E60);
  v73 = v90;
  sub_1000263E0(v90);
  if (v70 != v71)
  {
    sub_100041AE0(v106);
    sub_10000A184(v73, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v72, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
    v49 = 3;
    goto LABEL_14;
  }

  v74 = *(v87 + 48);
  sub_100014894(v73, v13, &qword_100134FB0, &qword_1000F4E60);
  sub_100014894(v72, &v13[v74], &qword_100134FB0, &qword_1000F4E60);
  v75 = v89;
  v76 = v73;
  v77 = *(v88 + 48);
  if (v77(v13, 1, v89) == 1)
  {
    sub_100041AE0(v106);
    sub_10000A184(v76, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v72, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
    if (v77(&v13[v74], 1, v89) == 1)
    {
      sub_10000A184(v13, &qword_100134FB0, &qword_1000F4E60);
      v49 = 0;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v78 = v86;
  sub_100014894(v13, v86, &qword_100134FB0, &qword_1000F4E60);
  v79 = v75;
  if (v77(&v13[v74], 1, v75) == 1)
  {
    sub_100041AE0(v106);
    sub_10000A184(v90, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v91, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
    (*(v88 + 8))(v78, v75);
LABEL_26:
    sub_10000A184(v13, &qword_100134FB8, &qword_1000F4E68);
LABEL_27:
    v49 = 2;
    goto LABEL_14;
  }

  v80 = v88;
  v81 = v85;
  (*(v88 + 32))(v85, &v13[v74], v79);
  sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID);
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100041AE0(v106);
  v83 = *(v80 + 8);
  v83(v81, v79);
  sub_10000A184(v90, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v91, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v26, &qword_100134FB0, &qword_1000F4E60);
  v83(v86, v79);
  sub_10000A184(v13, &qword_100134FB0, &qword_1000F4E60);
  if ((v82 & 1) == 0)
  {
    goto LABEL_27;
  }

  v49 = 0;
LABEL_14:
  v50 = v96;
  *(v46 + 25) = v49;
  v51 = v93;
  sub_100014894(v50, v93, &unk_1001389D0, &qword_1000F4F60);
  v52 = v97;
  v53 = v92;
  sub_100014894(v97, v92, &qword_100134FB0, &qword_1000F4E60);
  v54 = type metadata accessor for RealizedInfo(0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 96) = 0u;
  *(v57 + 112) = 0u;
  *(v57 + 80) = 0u;
  *(v57 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors) = _swiftEmptyArrayStorage;
  v58 = v95;
  *(v57 + 24) = v95;
  *(v57 + 64) = v101;
  v59 = v100[1];
  *(v57 + 32) = v100[0];
  *(v57 + 48) = v59;
  *(v57 + 72) = 0;
  swift_beginAccess();

  sub_100041B54(v99, v57 + 80, &qword_100135090, &qword_1000F4F58);
  swift_endAccess();
  v60 = *(v57 + 120);
  *(v57 + 120) = v46;

  sub_100020D24(v51, v57 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL, &unk_1001389D0, &qword_1000F4F60);
  v61 = v57 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex;
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_100020D24(v53, v57 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, &qword_100134FB0, &qword_1000F4E60);
  *(v57 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches) = 0;
  *(v57 + 16) = 0;
  v62 = 104;
  if (*v58 == _TtC10driverkitd15DriverExtension)
  {
    v62 = 120;
  }

  v63 = *&v106[v62];
  v64 = 112;
  if (*v58 == _TtC10driverkitd15DriverExtension)
  {
    v64 = 128;
  }

  v65 = *&v106[v64];

  v66 = sub_100023AFC(v63, v65, 0);

  sub_100014894(v50, v51, &unk_1001389D0, &qword_1000F4F60);

  v68 = sub_10003FE2C(v67, v66, v51, 0, v106);
  sub_10000A184(v52, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v50, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v102, &qword_100135090, &qword_1000F4F58);
  sub_10000A184(v104, &unk_100137390, &unk_1000F4E70);
  *(v57 + 16) = v68;

  v98[0] = v57;
  sub_10007BCC0(v98);
  sub_10007C5D8(v98);
  return v57;
}

void sub_10002F12C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();

    v10 = OSKextParseVersionCFString();
  }

  else
  {
    v10 = 0;
  }

  Hasher._combine(_:)(v10);
  sub_1000138F8(v7 + 24, &v25);
  if (v27)
  {
    if (v27 == 1)
    {
      v11 = v25;
      sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v11 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(&v25, v22);
    v12 = v23;
    v13 = v24;
    sub_100003C4C(v22, v23);
    (*(v13 + 64))(v12, v13);
    sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
    sub_100003C90(v22);
  }

  sub_100014894(v1 + 32, &v25, &unk_100137390, &unk_1000F4E70);
  if (v26)
  {
    v14 = sub_100003C4C(&v25, v26);
    v15 = *(*v14 + 40);
    v16 = *(*v14 + 48);
    sub_1000146C4(v15, v16);
    sub_100003C90(&v25);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    sub_1000128D8(v15, v16);
  }

  else
  {
    sub_10000A184(&v25, &unk_100137390, &unk_1000F4E70);
    Hasher._combine(_:)(0);
  }

  sub_100014894(v1 + 32, &v25, &unk_100137390, &unk_1000F4E70);
  if (!v26)
  {
    sub_10000A184(&v25, &unk_100137390, &unk_1000F4E70);
    Hasher._combine(_:)(0);
    return;
  }

  v17 = sub_100003C4C(&v25, v26);
  v18 = *(*v17 + 24);
  v19 = *(*v17 + 32);
  sub_10003E104(v18, v19);
  sub_100003C90(&v25);
  Hasher._combine(_:)(1u);
  if (!v19)
  {
    v20 = 1;
    goto LABEL_17;
  }

  if (v19 == 1)
  {
    v20 = 2;
LABEL_17:
    Hasher._combine(_:)(v20);
    return;
  }

  Hasher._combine(_:)(0);
  String.hash(into:)();
  sub_10003E118(v18, v19);
}

Swift::Int sub_10002F504()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002F12C();
  return Hasher._finalize()();
}

Swift::Int sub_10002F56C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002F12C();
  return Hasher._finalize()();
}

void sub_10002F5AC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v21 = v1;
  sub_100014894(v1 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, v14, &qword_100134FB0, &qword_1000F4E60);
  v16 = *(v4 + 48);
  v17 = v16(v14, 1, v3);
  v20 = v15;
  if (v17 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v14, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }

  v18 = v21;
  sub_100014894(v21 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v12, &qword_100134FB0, &qword_1000F4E60);
  if (v16(v12, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }

  v19 = *(v18 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  type metadata accessor for URL();
  sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v19 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  sub_10003CF60(a1, *(v18 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
}

Swift::Int sub_10002F93C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v12 = &v17[-v11 - 8];
  Hasher.init(_seed:)();
  sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_100014894(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, v12, &qword_100134FB0, &qword_1000F4E60);
  v13 = *(v2 + 48);
  if (v13(v12, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v12, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  sub_100014894(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v10, &qword_100134FB0, &qword_1000F4E60);
  if (v13(v10, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  v14 = *(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  type metadata accessor for URL();
  sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v14 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  sub_10003CF60(v17, *(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
  return Hasher._finalize()();
}

Swift::Int sub_10002FD14()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v12 = &v18[-v11 - 8];
  v13 = *v0;
  Hasher.init(_seed:)();
  sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_100014894(v13 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, v12, &qword_100134FB0, &qword_1000F4E60);
  v14 = *(v2 + 48);
  if (v14(v12, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v12, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  sub_100014894(v13 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v10, &qword_100134FB0, &qword_1000F4E60);
  if (v14(v10, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  v15 = *(v13 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  type metadata accessor for URL();
  sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v15 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  sub_10003CF60(v18, *(v13 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
  return Hasher._finalize()();
}

uint64_t sub_1000300A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v8 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v18[0];
    v10 = v18[1];
    if (a2)
    {
      if (a2[2])
      {
        v12 = sub_100061588(1751347809, 0xE400000000000000);
        if (v13)
        {
          sub_10000B430(a2[7] + 32 * v12, v18);
          v14 = swift_dynamicCast();
          v15 = v14 == 0;
          if (v14)
          {
            v16 = v17[0];
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            a2 = 0;
          }

          else
          {
            a2 = v17[1];
          }
        }

        else
        {
          v16 = 0;
          a2 = 0;
        }
      }

      else
      {
        v16 = 0;
        a2 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    sub_100024FF4(v16, a2, v11, v10, a4);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100030250()
{
  v1 = *(*(v0 + 24) + 16);

  v2 = sub_1000DEDC4();

  return v2;
}

uint64_t sub_100030328(unsigned int a1)
{
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    if ((a1 >> v2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100031C54(0, *(v3 + 2) + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100031C54((v4 > 1), v5 + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5 + 32] = v2;
    }

    ++v2;
  }

  while (v2 != 32);
  v6 = Array.description.getter();

  return v6;
}

uint64_t sub_100030434(unint64_t a1)
{
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    if ((a1 >> v2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100031C54(0, *(v3 + 2) + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100031C54((v4 > 1), v5 + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5 + 32] = v2;
    }

    ++v2;
  }

  while (v2 != 64);
  v6 = Array.description.getter();

  return v6;
}

uint64_t sub_1000305F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003063C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100030FAC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100030728(uint64_t result)
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

  result = sub_100030EA0(result, v11, 1, v3);
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

void *sub_10003081C(void *result)
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

  result = sub_100031E94(result, v11, 1, v3, &unk_1001389E0, &unk_1000F5090, &qword_1001351A8, &qword_1000F9BC0);
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

  sub_100003CDC(&qword_1001351A8, &qword_1000F9BC0);
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

uint64_t sub_100030944(uint64_t result)
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

  v3 = sub_100032000(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_1001351A0, &unk_1000F7C20, &qword_100135198, &unk_1000F5080);
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
  result = sub_100003CDC(&qword_100135198, &unk_1000F5080);
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

void *sub_100030A9C(void *result)
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

  result = sub_1000318C0(result, v11, 1, v3);
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

  sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
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

uint64_t sub_100030BA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100057B1C();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10008E4F0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100030C90(uint64_t result)
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

  result = sub_1000319F4(result, v11, 1, v3);
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

void *sub_100030D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000636EC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v9 = *v3;

      sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
      swift_dynamicCast();
      v4 = v10;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000636EC((v5 > 1), v6 + 1, 1);
        v4 = v10;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100030EA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100030FAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100134FA8, &qword_1000F4E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000310B0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_100135148, &unk_1000F5030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135150, &qword_1000F7BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031208(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100135040, &qword_1000F4F00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031324(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_100135030, &qword_1000F4EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135038, &qword_1000F4EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100031468(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003CDC(&qword_100135088, &unk_1000F7B90);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

void *sub_100031664(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_1001350B0, &unk_1000F4F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}
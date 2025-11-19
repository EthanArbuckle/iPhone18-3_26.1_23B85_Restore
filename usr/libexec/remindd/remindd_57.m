uint64_t sub_100541188()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BEC8);
  v1 = sub_100006654(v0, qword_10094BEC8);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100541250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7865646E69;
  }

  else
  {
    v4 = 0x7265646E696D6572;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7865646E69;
  }

  else
  {
    v6 = 0x7265646E696D6572;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1005412F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100541374()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1005413E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054145C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3BA8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1005414BC(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E696D6572;
  if (*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1005414F8()
{
  if (*v0)
  {
    result = 0x7865646E69;
  }

  else
  {
    result = 0x7265646E696D6572;
  }

  *v0;
  return result;
}

uint64_t sub_100541530@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E3BA8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100541594(uint64_t a1)
{
  v2 = sub_1005434CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005415D0(uint64_t a1)
{
  v2 = sub_1005434CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054160C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005427B0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10054163C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E6F73616572;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x7265646E696D6572;
  if (v3 == 1)
  {
    v5 = 0x6E6F73616572;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x80000001007EAC40;
  }

  v8 = 0xE600000000000000;
  if (*a2 != 1)
  {
    v2 = 0x7265646E696D6572;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x80000001007EAC40;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10054173C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005417E4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100541878()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10054191C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100542964(*a1);
  *a2 = result;
  return result;
}

void sub_10054194C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F73616572;
  if (v2 != 1)
  {
    v4 = 0x7265646E696D6572;
    v3 = 0xE900000000000073;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x80000001007EAC40;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1005419B0()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x7265646E696D6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_100541A10@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100542964(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100541A38(uint64_t a1)
{
  v2 = sub_1005431D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100541A74(uint64_t a1)
{
  v2 = sub_1005431D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100541AB0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005429B0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_100541AF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100541B6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100541BC0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3C60, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100541C50@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E3C98, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100541CA8(uint64_t a1)
{
  v2 = sub_100542DF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100541CE4(uint64_t a1)
{
  v2 = sub_100542DF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100541D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100542C44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100541D4C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10042D174(123, 0xE100000000000000, a1, a2);
  if (v5)
  {
    if (qword_100936408 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094BEC8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "RDAutoCategorizerPromptOutputJSONProcessor: unable to find first brace of JSON {error: failedToFindValidJSON}";
    goto LABEL_16;
  }

  v11 = v4;
  v19[0] = 125;
  v19[1] = 0xE100000000000000;
  __chkstk_darwin(v4);
  v18[2] = v19;
  v12 = sub_100541084(sub_100040B40, v18, a1, a2);
  if (v13)
  {
    if (qword_100936408 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094BEC8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "RDAutoCategorizerPromptOutputJSONProcessor: unable to find last brace of JSON {error: failedToFindValidJSON}";
    goto LABEL_16;
  }

  if (v12 >> 14 >= v11 >> 14)
  {
    String.index(after:)();
    String.subscript.getter();
    v8 = static String._fromSubstring(_:)();

    return v8;
  }

  if (qword_100936408 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094BEC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "RDAutoCategorizerPromptOutputJSONProcessor: {error: failedToFindValidJSON}";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);
  }

LABEL_17:

  sub_100542690();
  swift_allocError();
  *v16 = 1;
  swift_willThrow();
  return v8;
}

uint64_t sub_100542068(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100541D4C(a1, a2);
  if (!v2)
  {
    static String.Encoding.utf8.getter();
    v11 = String.data(using:allowLossyConversion:)();
    v13 = v12;

    (*(v6 + 8))(v9, v5);
    if (v13 >> 60 == 15)
    {
      if (qword_100936408 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10094BEC8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "RDAutoCategorizerPromptOutputJSONProcessor: {error: failedToDecodeSections}", v17, 2u);
      }

      sub_100542690();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    else
    {
      v19 = type metadata accessor for JSONDecoder();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1005426E4();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_100031A14(v11, v13);
      return v22[1];
    }
  }

  return result;
}

uint64_t sub_1005422EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100542068(a1, a2);
  if (v3)
  {
    return v4;
  }

  v7 = v6;
  v4 = sub_10038E004(_swiftEmptyArrayStorage);
  v8 = v7;
  v43 = *(v7 + 16);
  if (!v43)
  {
LABEL_30:

    return v4;
  }

  v9 = 0;
  v42 = v7 + 32;
  v47 = a3 + 32;
  v10 = &qword_100936000;
  v46 = a3;
  v41 = v7;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_35;
    }

    v11 = (v42 + 40 * v9);
    v12 = v11[4];
    v51 = *(v12 + 16);
    if (v51)
    {
      break;
    }

LABEL_5:
    if (++v9 == v43)
    {
      goto LABEL_30;
    }
  }

  v45 = v9;
  v13 = v11[1];
  v48 = *v11;
  v44 = v11[3];

  swift_bridgeObjectRetain_n();
  v50 = v13;

  v14 = 0;
  v15 = 32;
  v49 = v12;
  while (v14 < *(v12 + 16))
  {
    v16 = *(v12 + v15);
    if ((v16 & 0x8000000000000000) != 0 || v16 >= *(a3 + 16))
    {
      if (v10[129] != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100006654(v29, qword_10094BEC8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v30, v31, "RDAutoCategorizerPromptOutputJSONProcessor: skipping output reminder with index %ld", v32, 0xCu);
        v12 = v49;
      }

      goto LABEL_10;
    }

    v17 = (v47 + 16 * v16);
    v19 = *v17;
    v18 = v17[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_100005F4C(v19, v18);
    v23 = v4[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_33;
    }

    v26 = v21;
    if (v4[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_100373664();
        if ((v26 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_10036A8F0(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_100005F4C(v19, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_36;
      }

      v22 = v27;
      if ((v26 & 1) == 0)
      {
LABEL_27:
        v4[(v22 >> 6) + 8] |= 1 << v22;
        v35 = (v4[6] + 16 * v22);
        *v35 = v19;
        v35[1] = v18;
        v36 = (v4[7] + 16 * v22);
        *v36 = v48;
        v36[1] = v50;
        v37 = v4[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_34;
        }

        v4[2] = v39;
        goto LABEL_29;
      }
    }

    v33 = (v4[7] + 16 * v22);
    v34 = v33[1];
    *v33 = v48;
    v33[1] = v50;

LABEL_29:
    a3 = v46;
    v10 = &qword_100936000;
    v12 = v49;
LABEL_10:
    ++v14;
    v15 += 24;
    if (v51 == v14)
    {
      swift_bridgeObjectRelease_n();

      v8 = v41;
      v9 = v45;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100542690()
{
  result = qword_10094BEE0;
  if (!qword_10094BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BEE0);
  }

  return result;
}

unint64_t sub_1005426E4()
{
  result = qword_10094BEE8;
  if (!qword_10094BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BEE8);
  }

  return result;
}

unint64_t sub_10054275C()
{
  result = qword_10094BEF0;
  if (!qword_10094BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BEF0);
  }

  return result;
}

uint64_t sub_1005427B0(uint64_t *a1)
{
  v3 = sub_1000F5104(&qword_10094BF78, &qword_1007B0A20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_10000F61C(a1, a1[3]);
  sub_1005434CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[15] = 0;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11[14] = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v9;
}

unint64_t sub_100542964(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3BF8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005429B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10094BF38, &qword_1007B0898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1005431D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v21 = v14;
  sub_1000F5104(&qword_10094BF48, &qword_1007B08A0);
  v24 = 2;
  sub_100543224(&qword_10094BF50, &qword_10094BF48, &qword_1007B08A0, sub_1005432A0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  result = sub_10000607C(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  return result;
}

void *sub_100542C44(uint64_t *a1)
{
  v3 = sub_1000F5104(&qword_10094BEF8, &qword_1007B0708);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000F61C(a1, a1[3]);
  sub_100542DF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000607C(a1);
  }

  else
  {
    sub_1000F5104(&qword_10094BF08, &qword_1007B0710);
    sub_100543224(&qword_10094BF10, &qword_10094BF08, &qword_1007B0710, sub_100542E48);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000607C(a1);
  }

  return v9;
}

unint64_t sub_100542DF4()
{
  result = qword_10094BF00;
  if (!qword_10094BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF00);
  }

  return result;
}

unint64_t sub_100542E48()
{
  result = qword_10094BF18;
  if (!qword_10094BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF18);
  }

  return result;
}

uint64_t destroy for RDAutoCategorizeOutputRoot.Section(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[4];
}

void *initializeWithCopy for RDAutoCategorizeOutputRoot.Section(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for RDAutoCategorizeOutputRoot.Section(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  v6 = a2[4];
  v7 = a1[4];
  a1[4] = v6;

  return a1;
}

void *assignWithTake for RDAutoCategorizeOutputRoot.Section(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);
  v6 = a1[3];

  v7 = a1[4];
  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section(uint64_t result, int a2, int a3)
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

unint64_t sub_1005430CC()
{
  result = qword_10094BF20;
  if (!qword_10094BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF20);
  }

  return result;
}

unint64_t sub_100543124()
{
  result = qword_10094BF28;
  if (!qword_10094BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF28);
  }

  return result;
}

unint64_t sub_10054317C()
{
  result = qword_10094BF30;
  if (!qword_10094BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF30);
  }

  return result;
}

unint64_t sub_1005431D0()
{
  result = qword_10094BF40;
  if (!qword_10094BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF40);
  }

  return result;
}

uint64_t sub_100543224(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005432A0()
{
  result = qword_10094BF58;
  if (!qword_10094BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section.Reminder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section.Reminder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1005433C8()
{
  result = qword_10094BF60;
  if (!qword_10094BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF60);
  }

  return result;
}

unint64_t sub_100543420()
{
  result = qword_10094BF68;
  if (!qword_10094BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF68);
  }

  return result;
}

unint64_t sub_100543478()
{
  result = qword_10094BF70;
  if (!qword_10094BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF70);
  }

  return result;
}

unint64_t sub_1005434CC()
{
  result = qword_10094BF80;
  if (!qword_10094BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF80);
  }

  return result;
}

unint64_t sub_100543534()
{
  result = qword_10094BF88;
  if (!qword_10094BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF88);
  }

  return result;
}

unint64_t sub_10054358C()
{
  result = qword_10094BF90;
  if (!qword_10094BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF90);
  }

  return result;
}

unint64_t sub_1005435E4()
{
  result = qword_10094BF98;
  if (!qword_10094BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF98);
  }

  return result;
}

uint64_t sub_100543638@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v146 = a2;
  v149 = a3;
  v135 = a5;
  v7 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = *(v136 + 64);
  __chkstk_darwin(v7);
  v138 = v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v141 = v124 - v11;
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v132 = v124 - v14;
  v153 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v133 = *(v153 - 8);
  v15 = *(v133 + 64);
  __chkstk_darwin(v153);
  v144 = v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v151 = v124 - v18;
  v140 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v143 = *(v140 - 8);
  v19 = *(v143 + 64);
  __chkstk_darwin(v140);
  v139 = v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = v124 - v22;
  v150 = type metadata accessor for REMRemindersListDataView.Diff();
  v154 = *(v150 - 8);
  v23 = *(v154 + 64);
  __chkstk_darwin(v150);
  v134 = v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v147 = v124 - v26;
  v27 = _s10PredicatesOMa(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v32 = *(Configuration - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(Configuration);
  v35 = v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v124 - v37;
  __chkstk_darwin(v39);
  v41 = v124 - v40;
  v148 = a4;
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v42 = v152;
  v43 = sub_100545318(a1, v41);
  if (v42)
  {
    return (*(v32 + 8))(v41, Configuration);
  }

  v127 = v27;
  v152 = v35;
  v129 = v43;
  v131 = 0;
  v130 = a1;
  v45 = *(v32 + 8);
  v45(v41, Configuration);
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v46 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v128 = Configuration;
  v126 = v32 + 8;
  v125 = v45;
  v45(v38, Configuration);
  v124[3] = v46;
  if (v46)
  {
    swift_storeEnumTagMultiPayload();
    v47 = sub_100043AA8();
    sub_1000513B4(v30);
    sub_100345DB0();
    v48 = [objc_allocWithZone(NSFetchRequest) init];
    v49 = [swift_getObjCClassFromMetadata() entity];
    [v48 setEntity:v49];

    [v48 setAffectedStores:0];
    [v48 setPredicate:v47];
    v50 = v130;
    v51 = v131;
    v52 = NSManagedObjectContext.count<A>(for:)();
    v53 = v51;

    v54 = v149;
    v55 = v152;
    if (v51)
    {
    }
  }

  else
  {
    v52 = 0;
    v54 = v149;
    v50 = v130;
    v53 = v131;
    v55 = v152;
  }

  v56 = [v145 fetchResultTokenToDiffAgainst];
  v57 = v147;
  sub_100534D44(v56, v147);

  v58 = v128;
  if (v53)
  {
  }

  v146 = v52;
  v131 = 0;
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v59 = v142;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v125(v55, v58);
  v60 = v143;
  v61 = v139;
  v62 = v59;
  v63 = v140;
  (*(v143 + 16))(v139, v62, v140);
  v64 = (*(v60 + 88))(v61, v63);
  if (v64 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v60 + 96))(v61, v63);
    v145 = *v61;
    v65 = *(v129 + 2);
    v66 = v154;
    if (v65)
    {
      v67 = v133 + 16;
      v152 = *(v133 + 16);
      v68 = &v129[(*(v133 + 80) + 32) & ~*(v133 + 80)];
      v148 = *(v133 + 72);
      v69 = (v133 + 8);
      v70 = _swiftEmptyArrayStorage;
      v71 = v151;
      while (1)
      {
        v72 = v71;
        v73 = v153;
        v74 = v67;
        v152(v71, v68, v153);
        v75 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v69)(v72, v73);
        v76 = *(v75 + 16);
        v77 = v70[2];
        v78 = v77 + v76;
        if (__OFADD__(v77, v76))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v78 > v70[3] >> 1)
        {
          if (v77 <= v78)
          {
            v80 = v77 + v76;
          }

          else
          {
            v80 = v77;
          }

          v70 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v80, 1, v70);
        }

        v66 = v154;
        if (*(v75 + 16))
        {
          v81 = (v70[3] >> 1) - v70[2];
          v82 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
          if (v81 < v76)
          {
            goto LABEL_53;
          }

          v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v84 = *(v82 + 72);
          swift_arrayInitWithCopy();

          v66 = v154;
          v71 = v151;
          if (v76)
          {
            v85 = v70[2];
            v86 = __OFADD__(v85, v76);
            v87 = v85 + v76;
            if (v86)
            {
              goto LABEL_54;
            }

            v70[2] = v87;
          }
        }

        else
        {

          v71 = v151;
          if (v76)
          {
            goto LABEL_52;
          }
        }

        v68 += v148;
        --v65;
        v67 = v74;
        if (!v65)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_45:
    v117 = Array<A>.reminders.getter();

    sub_10053DB98(v145, v117, v130, v149, 0);

    (*(v143 + 8))(v142, v140);
    v90 = v136;
    v91 = v137;
    v92 = v141;
    v88 = v138;
    v118 = v134;
    v93 = v150;
LABEL_50:
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    (*(v90 + 16))(v88, v92, v91);
    v123 = v147;
    (*(v66 + 16))(v118, v147, v93);
    sub_1005456F4(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
    sub_1005456F4(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v90 + 8))(v141, v91);
    return (*(v66 + 8))(v123, v93);
  }

  v88 = v138;
  v66 = v154;
  if (v64 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v89 = v143;
    (*(v143 + 96))(v61, v63);
    sub_10053E698(*v61, v57, v50, v54, 0);
    (*(v89 + 8))(v142, v63);
    v90 = v136;
    v91 = v137;
    v92 = v141;
    v93 = v150;
LABEL_49:
    v118 = v134;
    goto LABEL_50;
  }

  v93 = v150;
  if (v64 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v94 = v139;
    (*(v143 + 96))(v139, v63);
    v148 = *v94;
    v95 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v94 + *(v95 + 48), v132, &qword_10094B8E0, &unk_1007AABD0);
    v96 = *(v129 + 2);
    if (v96)
    {
      v97 = v133 + 16;
      v152 = *(v133 + 16);
      v98 = &v129[(*(v133 + 80) + 32) & ~*(v133 + 80)];
      v151 = *(v133 + 72);
      v99 = (v133 + 8);
      v100 = _swiftEmptyArrayStorage;
      v101 = v153;
      v102 = v144;
      do
      {
        v103 = v102;
        v104 = v97;
        v152(v102, v98, v101);
        v105 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v99)(v103, v101);
        v106 = *(v105 + 16);
        v107 = v100[2];
        v108 = v107 + v106;
        if (__OFADD__(v107, v106))
        {
          goto LABEL_55;
        }

        v109 = swift_isUniquelyReferenced_nonNull_native();
        if (!v109 || v108 > v100[3] >> 1)
        {
          if (v107 <= v108)
          {
            v110 = v107 + v106;
          }

          else
          {
            v110 = v107;
          }

          v100 = sub_100365A4C(v109, v110, 1, v100);
        }

        v93 = v150;
        v101 = v153;
        if (*(v105 + 16))
        {
          v111 = (v100[3] >> 1) - v100[2];
          v112 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
          if (v111 < v106)
          {
            goto LABEL_57;
          }

          v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
          v114 = *(v112 + 72);
          swift_arrayInitWithCopy();

          v93 = v150;
          v101 = v153;
          v102 = v144;
          if (v106)
          {
            v115 = v100[2];
            v86 = __OFADD__(v115, v106);
            v116 = v115 + v106;
            if (v86)
            {
              goto LABEL_58;
            }

            v100[2] = v116;
          }
        }

        else
        {

          v102 = v144;
          if (v106)
          {
            goto LABEL_56;
          }
        }

        v98 = &v151[v98];
        --v96;
        v97 = v104;
      }

      while (v96);
    }

    v119 = Array<A>.reminders.getter();

    v120 = v149;
    v121 = v130;
    sub_10053DB98(v148, v119, v130, v149, 0);
    v122 = v132;
    sub_10053EBE4(v132, v119, v121, v120, 0);

    sub_1000050A4(v122, &qword_10094B8E0, &unk_1007AABD0);
    (*(v143 + 8))(v142, v140);
    v90 = v136;
    v91 = v137;
    v92 = v141;
    v88 = v138;
    v66 = v154;
    goto LABEL_49;
  }

  v90 = v136;
  v91 = v137;
  v92 = v141;
  if (v64 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v143 + 8))(v142, v63);
    goto LABEL_49;
  }

LABEL_59:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100544468(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v116 = a4;
  v119 = a3;
  v10 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  __chkstk_darwin(v10);
  v112 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v104 - v14;
  __chkstk_darwin(v15);
  v113 = &v104 - v16;
  v110 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v109 = *(v110 - 8);
  v17 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v120 = &v104 - v24;
  __chkstk_darwin(v25);
  v27 = &v104 - v26;
  v28 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v104 - v30;
  v134 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v121 = *(v134 - 8);
  v32 = *(v121 + 64);
  __chkstk_darwin(v134);
  v133 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for UUID();
  v117 = *(v135 - 8);
  v34 = *(v117 + 64);
  *&v35 = __chkstk_darwin(v135).n128_u64[0];
  v37 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  v39 = [v38 identifier];
  if (!v39)
  {
    v71 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
    (*(*(v71 - 8) + 56))(a5, 1, 1, v71);
    return;
  }

  v107 = v38;
  v40 = v39;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v37;
  if (*(a2 + 16))
  {
    v42 = sub_100363F20(v37);
    if (v43)
    {
      v44 = *(*(a2 + 56) + 8 * v42);
      if (v44 >> 62)
      {
LABEL_51:
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v105 = v41;
      v106 = v6;

      if (v45)
      {
        v41 = 0;
        v131 = v44 & 0xFFFFFFFFFFFFFF8;
        v132 = v44 & 0xC000000000000001;
        v129 = (v117 + 48);
        v130 = (v117 + 56);
        v118 = (v117 + 8);
        v6 = v120;
        v122 = (v121 + 32);
        v123 = (v121 + 48);
        v46 = _swiftEmptyArrayStorage;
        v127 = a5;
        v128 = v22;
        v124 = v31;
        v125 = v45;
        v126 = v44;
        while (1)
        {
          if (v132)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v41 >= *(v131 + 16))
            {
              goto LABEL_50;
            }

            v47 = *(v44 + 8 * v41 + 32);
          }

          a5 = v47;
          v48 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v49 = [v47 identifier];
          if (v49)
          {
            v50 = v49;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v51 = 0;
          }

          else
          {
            v51 = 1;
          }

          v22 = v135;
          (*v130)(v6, v51, 1, v135);
          sub_100031B58(v6, v27, &unk_100939D90, "8\n\r");
          v52 = *v129;
          if ((*v129)(v27, 1, v22) != 1)
          {
            break;
          }

          v53 = 0;
          v54 = 0;
          v55 = v134;
          v31 = v124;
LABEL_28:
          sub_1005384A4(a5, v53, v54, v31);
          sub_1000050A4(v27, &unk_100939D90, "8\n\r");
          if ((*v123)(v31, 1, v55) == 1)
          {
            sub_1000050A4(v31, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v64 = *v122;
            (*v122)(v133, v31, v55);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_100365A24(0, *(v46 + 2) + 1, 1, v46);
            }

            v22 = *(v46 + 2);
            v65 = *(v46 + 3);
            if (v22 >= v65 >> 1)
            {
              v46 = sub_100365A24(v65 > 1, v22 + 1, 1, v46);
            }

            *(v46 + 2) = v22 + 1;
            v64(&v46[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v22], v133, v134);
          }

          v44 = v126;
          a5 = v127;
          ++v41;
          if (v48 == v125)
          {
            goto LABEL_43;
          }
        }

        v56 = v46;
        v57 = v128;
        sub_10018E470(v27, v128);
        if (v52(v57, 1, v22) == 1)
        {
          __break(1u);
          return;
        }

        v58 = v119;
        v31 = v124;
        if (*(v119 + 16))
        {
          v59 = v128;
          v22 = v119;
          v60 = sub_100363F20(v128);
          if (v61)
          {
            v62 = *(*(v58 + 56) + 8 * v60);
            v22 = v118;
            v63 = *v118;

            v63(v59, v135);
            v54 = v62;
            if (v62 >> 62)
            {
              v66 = _CocoaArrayWrapper.endIndex.getter();
              v54 = v62;
              v53 = v66;
            }

            else
            {
              v53 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            goto LABEL_27;
          }

          (*v118)(v59, v135);
        }

        else
        {
          (*v118)(v128, v135);
        }

        v53 = 0;
        v54 = 0;
LABEL_27:
        v46 = v56;
        v6 = v120;
        v55 = v134;
        goto LABEL_28;
      }

      v46 = _swiftEmptyArrayStorage;
LABEL_43:

      v75 = objc_opt_self();
      v41 = v105;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v77 = [v75 objectIDWithUUID:isa];

      v78 = v106;
      v79 = sub_1001BE2C0(v116, v77);
      if (v78)
      {
        (*(v117 + 8))(v41, v135);

        return;
      }

      v80 = v79;

      v81 = v80;
      if (v80 >> 62)
      {
        v81 = v80;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_47;
        }
      }

      else if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_47:
        v82 = sub_100270978(v81);

        v134 = sub_1001BD57C(v82, v46);

        goto LABEL_48;
      }

LABEL_55:

      sub_1000F5104(&qword_10093B448, &qword_10079D400);
      v83 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
      v84 = *(v83 + 72);
      v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_100791300;
      (*(v109 + 104))(v108, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v110);
      v134 = v86;
      REMRemindersListDataView.SectionLite.init(type:reminders:)();
      goto LABEL_56;
    }
  }

  v67 = objc_opt_self();
  v68 = UUID._bridgeToObjectiveC()().super.isa;
  v69 = [v67 objectIDWithUUID:v68];

  v70 = sub_1001BE2C0(v116, v69);
  if (v5)
  {
    (*(v117 + 8))(v37, v135);

    return;
  }

  v72 = v70;

  v73 = v72;
  if (v72 >> 62)
  {
    v73 = v72;
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_55;
    }
  }

  else if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  v74 = sub_100270978(v73);

  v134 = sub_1001BD57C(v74, _swiftEmptyArrayStorage);
LABEL_48:

LABEL_56:
  v106 = 0;
  v87 = v107;
  v88 = [v107 shouldCategorizeGroceryItems];
  v90 = v114;
  v89 = v115;
  v91 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:);
  if (!v88)
  {
    v91 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
  }

  v92 = v111;
  (*(v114 + 104))(v111, *v91, v115);
  (*(v90 + 32))(v113, v92, v89);
  v93 = objc_opt_self();
  v105 = v41;
  v94 = UUID._bridgeToObjectiveC()().super.isa;
  v95 = [v93 objectIDWithUUID:v94];

  REMObjectID.codable.getter();
  v96 = [v87 displayName];
  if (v96)
  {
    v97 = v96;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v98 = [v107 color];
  if (v98)
  {
    v99 = v98;
    REMColor.codable.getter();
  }

  v101 = v114;
  v100 = v115;
  v102 = v113;
  (*(v114 + 16))(v112, v113, v115);
  REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
  (*(v101 + 8))(v102, v100);
  (*(v117 + 8))(v105, v135);
  v103 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  (*(*(v103 - 8) + 56))(a5, 0, 1, v103);
}

uint64_t sub_1005452C0(uint64_t a1)
{
  result = sub_1005456F4(&qword_10094BFC0, &type metadata accessor for REMRemindersListDataView.AllSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

char *sub_100545318(void *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100942E08, &qword_1007A3868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  v17 = sub_1001A41EC(a1, a2);
  if (!v2)
  {
    v19 = v17;
    v33 = v16;
    v20 = v18;
    v21 = sub_1001A3FA8(a1);
    if (v21 >> 62)
    {
      goto LABEL_22;
    }

    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v20; v23; i = v20)
    {
      v37 = v13;
      v20 = 0;
      v39 = v21 & 0xFFFFFFFFFFFFFF8;
      v40 = v21 & 0xC000000000000001;
      v30 = v10;
      v34 = (v10 + 4);
      v35 = (v10 + 6);
      v13 = _swiftEmptyArrayStorage;
      v31 = v19;
      v32 = a1;
      v36 = v23;
      v38 = v21;
      while (1)
      {
        if (v40)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v39 + 16))
          {
            goto LABEL_21;
          }

          v21 = *(v21 + 8 * v20 + 32);
        }

        v10 = v21;
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v42 = v21;
        sub_100544468(&v42, v19, i, a1, v8);

        if ((*v35)(v8, 1, v9) == 1)
        {
          sub_1000050A4(v8, &qword_100942E08, &qword_1007A3868);
        }

        else
        {
          v25 = v33;
          v26 = *v34;
          (*v34)(v33, v8, v9);
          v26(v37, v25, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_100365B88(0, *(v13 + 2) + 1, 1, v13);
          }

          v28 = *(v13 + 2);
          v27 = *(v13 + 3);
          v10 = (v28 + 1);
          if (v28 >= v27 >> 1)
          {
            v13 = sub_100365B88(v27 > 1, v28 + 1, 1, v13);
          }

          *(v13 + 2) = v10;
          v26(&v13[((*(v30 + 80) + 32) & ~*(v30 + 80)) + v30[9] * v28], v37, v9);
          v19 = v31;
          a1 = v32;
        }

        ++v20;
        v21 = v38;
        if (v24 == v36)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v29 = v21;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v29;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_24:
  }

  return v13;
}

uint64_t sub_1005456F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10054573C(uint64_t a1, uint64_t a2, char a3)
{

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = StaticString.description.getter();
    v10 = sub_10000668C(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = Dictionary.description.getter();
    v13 = a3;
    v14 = sub_10000668C(v11, v12, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2082;
    v15 = Dictionary.description.getter();
    v17 = sub_10000668C(v15, v16, &v18);
    a3 = v13;

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100545C44(uint64_t a1, uint64_t *a2, uint64_t *a3, SEL *a4)
{
  v7 = type metadata accessor for Logger();
  sub_1000EECAC(v7, a2);
  sub_100006654(v7, a2);
  v8 = *a3;
  v9 = [objc_opt_self() *a4];
  return Logger.init(_:)();
}

uint64_t sub_100545CB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BFC8);
  v1 = sub_100006654(v0, qword_10094BFC8);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100545D80(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v82 = a1;
  v78 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2;
  v13 = sub_100008E70();
  v14 = v12;
  if (a2)
  {
    v81 = v3;
    if (v12)
    {
      KeyPath = swift_getKeyPath();
      v16 = [v11 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      v83 = v17;
      v84 = v19;
      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v13;
      v21._object = v14;
      String.append(_:)(v21);

      v22 = sub_1003928A0(KeyPath, v83, v84);
    }

    else
    {
      v25 = swift_getKeyPath();
      v26 = [v11 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v7 + 8))(v10, v6);
      v83 = v27;
      v84 = v29;

      v30._countAndFlagsBits = 47;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);

      v22 = sub_100546800(v25, v83, v84, 6, &qword_100943A28, &unk_1007B0C00);
    }

    v4 = v81;
    goto LABEL_8;
  }

  if (v12)
  {
    v23 = swift_getKeyPath();
    v83 = 47;
    v84 = 0xE100000000000000;
    v24._countAndFlagsBits = v13;
    v24._object = v14;
    String.append(_:)(v24);

    v22 = sub_1005465B8(v23, v83, v84, 6, &qword_100943A28, &unk_1007B0C00);

LABEL_8:
    v31 = v22;
    goto LABEL_9;
  }

  v22 = 0;
LABEL_9:
  sub_100547564();
  v32 = [objc_allocWithZone(NSFetchRequest) init];
  v33 = [swift_getObjCClassFromMetadata() entity];
  [v32 setEntity:v33];

  [v32 setAffectedStores:0];
  [v32 setPredicate:v22];

  [v32 setReturnsObjectsAsFaults:0];
  v34 = NSManagedObjectContext.fetch<A>(_:)();
  v35 = v4;
  if (v4)
  {

    return;
  }

  v36 = v34;
  v85 = sub_1000F5104(&qword_10094C080, &unk_1007B0BF0);
  v83 = v36;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(&v83);
  v37 = v86;
  v76 = v32;
  v77 = v22;
  if (v86 >> 62)
  {
    goto LABEL_48;
  }

  v38 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = 0;
  if (v38)
  {
LABEL_15:
    if (v38 >= 1)
    {
      v39 = 0;
      v80 = v37 & 0xC000000000000001;
      v35 = _swiftEmptyDictionarySingleton;
      v79 = v37;
      while (1)
      {
        if (v80)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v42 = *(v37 + 8 * v39 + 32);
        }

        v43 = v42;
        v44 = [v42 identifier];
        if (v44)
        {
          v45 = v44;
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v46;

          v47 = [v43 managerData];
          if (v47)
          {
            v48 = v47;
            v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0xC000000000000000;
          }

          v52 = [v43 version];
          if ((v52 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            v38 = _CocoaArrayWrapper.endIndex.getter();
            v75 = v35;
            if (!v38)
            {
              goto LABEL_49;
            }

            goto LABEL_15;
          }

          v53 = v52;
          v54 = objc_allocWithZone(REMReplicaManagerSerializedData);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v37 = [v54 initWithManagerData:isa version:v53];

          sub_10001BBA0(v49, v51);
          if (v37)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v83 = v35;
            v58 = sub_100005F4C(v81, v82);
            v59 = v35[2];
            v60 = (v57 & 1) == 0;
            v61 = v59 + v60;
            if (__OFADD__(v59, v60))
            {
              goto LABEL_46;
            }

            v62 = v57;
            if (v35[3] >= v61)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v35 = v83;
                if ((v57 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                sub_1003776DC();
                v35 = v83;
                if ((v62 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }
            }

            else
            {
              sub_100371E94(v61, isUniquelyReferenced_nonNull_native);
              v63 = sub_100005F4C(v81, v82);
              if ((v62 & 1) != (v64 & 1))
              {
                goto LABEL_52;
              }

              v58 = v63;
              v35 = v83;
              if ((v62 & 1) == 0)
              {
LABEL_42:
                v35[(v58 >> 6) + 8] |= 1 << v58;
                v70 = (v35[6] + 16 * v58);
                v71 = v82;
                *v70 = v81;
                v70[1] = v71;
                *(v35[7] + 8 * v58) = v37;
                v72 = v35[2];
                v73 = __OFADD__(v72, 1);
                v74 = v72 + 1;
                if (v73)
                {
                  goto LABEL_47;
                }

                v35[2] = v74;
                goto LABEL_44;
              }
            }

            v68 = v35[7];
            v69 = *(v68 + 8 * v58);
            *(v68 + 8 * v58) = v37;

            v43 = v69;
LABEL_44:

            v37 = v79;
            goto LABEL_21;
          }

          v65 = sub_100005F4C(v81, v82);
          v67 = v66;

          if ((v67 & 1) == 0)
          {
            goto LABEL_44;
          }

          v40 = swift_isUniquelyReferenced_nonNull_native();
          v83 = v35;
          v37 = v79;
          if ((v40 & 1) == 0)
          {
            sub_1003776DC();
            v35 = v83;
          }

          v41 = *(v35[6] + 16 * v65 + 8);

          sub_100337828(v65, v35);
        }

LABEL_21:
        if (v38 == ++v39)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
LABEL_52:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_49:
    v35 = _swiftEmptyDictionarySingleton;
LABEL_50:

    *v78 = v35;
  }
}

void sub_100546494(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005464FC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setIdentifier:?];
}

uint64_t sub_1005465B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  _StringGuts.grow(_:)(16);

  v10._countAndFlagsBits = sub_1003AB9F4(a4);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 4203808;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791340;

  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    *(v12 + 88) = &type metadata for String;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = a2;
    *(v12 + 72) = a3;
    v17 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() predicateWithFormat:v17 argumentArray:isa];

    return v19;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v21._object = 0x80000001007EC120;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v21);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100546800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  _StringGuts.grow(_:)(18);

  v10._countAndFlagsBits = sub_1003AB9F4(a4);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 4203808;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791340;

  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    *(v12 + 88) = &type metadata for String;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = a2;
    *(v12 + 72) = a3;
    v17 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() predicateWithFormat:v17 argumentArray:isa];

    return v19;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v21._object = 0x80000001007EC120;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v21);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100546A4C(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_100270804(a1);
  v7 = sub_1003EF77C(KeyPath, v6);

  sub_100547564();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  v10 = v8;
  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];

  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return a2;
  }

  v12 = v11;
  v44[3] = sub_1000F5104(&qword_10094C080, &unk_1007B0BF0);
  v44[0] = v12;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(v44);
  isUniquelyReferenced_nonNull_native = v45;
  if (v45 >> 62)
  {
LABEL_31:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_32:

    return _swiftEmptyDictionarySingleton;
  }

  v14 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_5:
  v39 = v10;
  v10 = 0;
  v43 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v40 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  a2 = _swiftEmptyDictionarySingleton;
  v41 = v14;
  v42 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v43)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v40 + 16))
      {
        goto LABEL_29;
      }

      v15 = *(isUniquelyReferenced_nonNull_native + 8 * v10 + 32);
    }

    v16 = v15;
    v17 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = [v15 identifier];
    if (v18)
    {
      break;
    }

LABEL_7:
    ++v10;
    if (v17 == v14)
    {

      return a2;
    }
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = a2;
  v25 = sub_100005F4C(v20, v22);
  v26 = a2[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    goto LABEL_28;
  }

  v29 = v24;
  if (a2[3] >= v28)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v24)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1003776F0();
      if (v29)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    a2 = v44[0];
    *(v44[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v34 = (a2[6] + 16 * v25);
    *v34 = v20;
    v34[1] = v22;
    *(a2[7] + 8 * v25) = v23;

    v35 = a2[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_30;
    }

    a2[2] = v37;
    goto LABEL_25;
  }

  sub_100371EA8(v28, isUniquelyReferenced_nonNull_native);
  v30 = sub_100005F4C(v20, v22);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    if ((v29 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:

    a2 = v44[0];
    v32 = *(v44[0] + 56);
    v33 = *(v32 + 8 * v25);
    *(v32 + 8 * v25) = v23;

LABEL_25:
    v14 = v41;
    isUniquelyReferenced_nonNull_native = v42;
    goto LABEL_7;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100546E18(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v99 = type metadata accessor for UUID();
  v7 = *(v99 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v99);
  v98 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  v91 = v7;
  v92 = v9;
  v94 = a1;
  if (v11)
  {
    v96 = v3;
    v90 = a3;
    v103 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v11, 0);
    v12 = v103;
    v97 = (v7 + 8);
    v13 = (a1 + 56);
    v95 = v11;
    do
    {
      v14 = *(v13 - 3);
      v100 = *(v13 - 2);
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = v14;

      v18 = v15;
      v19 = [v17 uuid];
      v20 = v98;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*v97)(v20, v99);
      v101 = v21;
      v102 = v23;
      v24._countAndFlagsBits = 47;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v100;
      v25._object = v16;
      String.append(_:)(v25);

      v26 = v101;
      v27 = v102;
      v103 = v12;
      v29 = v12[2];
      v28 = v12[3];
      if (v29 >= v28 >> 1)
      {
        sub_100026EF4((v28 > 1), v29 + 1, 1);
        v12 = v103;
      }

      v12[2] = v29 + 1;
      v30 = &v12[2 * v29];
      v30[4] = v26;
      v30[5] = v27;
      v13 += 4;
      --v11;
    }

    while (v11);
    a3 = v90;
    v9 = v92;
    v11 = v95;
    v4 = v96;
  }

  v31 = sub_100546A4C(v12, v9);
  if (v4)
  {
  }

  v33 = v31;

  if (!v11)
  {
  }

  v88[1] = 0;
  v90 = a3;
  v35 = v91 + 1;
  v97 = (v11 - 1);
  v36 = v94 + 7;
  *&v34 = 134218240;
  v89 = v34;
  v93 = v33;
  ++v91;
  while (1)
  {
    v38 = *(v36 - 3);
    v39 = *(v36 - 2);
    v41 = *(v36 - 1);
    v40 = *v36;
    v96 = v36;
    v42 = v38;

    v100 = v40;
    v43 = [v42 uuid];
    v44 = v98;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = UUID.uuidString.getter();
    v47 = v46;
    v48 = *v35;
    (*v35)(v44, v99);
    v101 = v45;
    v102 = v47;
    v49._countAndFlagsBits = 47;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v95 = v39;
    v50._countAndFlagsBits = v39;
    v50._object = v41;
    String.append(_:)(v50);
    if (!v33[2])
    {
      break;
    }

    v51 = sub_100005F4C(v101, v102);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_23;
    }

    v54 = *(v33[7] + 8 * v51);
    v55 = [v100 version];
    result = [v54 version];
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v56 = result;
    if (result)
    {
      if (result < v55)
      {
        goto LABEL_30;
      }
    }

    else if (v55)
    {
LABEL_30:
      v94 = v41;
      v61 = v42;
      goto LABEL_26;
    }

    if (qword_1009364F8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_10094BFC8);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = v89;
      *(v60 + 4) = v55;
      *(v60 + 12) = 2048;
      *(v60 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v58, v59, "Skipping replica manager update. Version in database is newer {inputVersion: %llu, currentVersion: %llu}", v60, 0x16u);
    }

    v33 = v93;
    v37 = v97;
    if (!v97)
    {
    }

LABEL_12:
    v97 = (v37 - 1);
    v36 = v96 + 4;
  }

LABEL_23:
  v94 = v41;
  v61 = v42;
  v62 = [v42 uuid];
  v63 = v98;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v48(v63, v99);
  v64 = String._bridgeToObjectiveC()();

  v65 = [v90 storeForAccountIdentifier:v64];

  sub_100547564();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = [ObjCClassFromMetadata entity];
  v68 = objc_allocWithZone(ObjCClassFromMetadata);
  v69 = v92;
  v70 = [v68 initWithEntity:v67 insertIntoManagedObjectContext:v92];
  v54 = v70;
  if (v65)
  {
    v71 = v70;
    [v69 assignObject:v71 toPersistentStore:v65];
  }

LABEL_26:
  v72 = v54;
  v73 = [v61 uuid];
  v74 = v98;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = UUID.uuidString.getter();
  v77 = v76;
  v78 = v74;
  v35 = v91;
  v48(v78, v99);
  v101 = v75;
  v102 = v77;
  v79._countAndFlagsBits = 47;
  v79._object = 0xE100000000000000;
  String.append(_:)(v79);
  v80._countAndFlagsBits = v95;
  v80._object = v94;
  String.append(_:)(v80);
  v81 = String._bridgeToObjectiveC()();

  [v72 setIdentifier:v81];

  v82 = v100;
  v83 = [v100 managerData];
  v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BBA0(v84, v86);
  [v72 setManagerData:isa];

  result = [v82 version];
  if ((result & 0x8000000000000000) == 0)
  {
    [v72 setVersion:result];

    v37 = v97;
    v33 = v93;
    if (!v97)
    {
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_100547564()
{
  result = qword_10094C078;
  if (!qword_10094C078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094C078);
  }

  return result;
}

void destroy for RDReplicaManagerPayload(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 24);
}

void *initializeWithCopy for RDReplicaManagerPayload(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for RDReplicaManagerPayload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v8 = *(a2 + 24);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  v10 = v8;

  return a1;
}

uint64_t assignWithTake for RDReplicaManagerPayload(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a1 + 16);

  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_100547720(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = sub_1000F5104(&qword_10093DB08, &qword_1007A1720);
  v3[2] = v7;
  v8 = *(v7 - 8);
  v3[3] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[4] = v10;
  v11 = swift_task_alloc();
  v3[5] = v11;
  *v11 = v3;
  v11[1] = sub_100547870;

  return sub_100547A30(v10, a1, a2, v2, v6);
}

uint64_t sub_100547870()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002F3B98, 0, 0);
  }

  else
  {
    v4 = async function pointer to GenerativeConfigurationRunnable<>.run(returning:)[1];
    v5 = swift_task_alloc();
    v3[7] = v5;
    v6 = sub_100549E1C(&qword_10093DB28, 255, &type metadata accessor for TokenGenerator);
    *v5 = v3;
    v5[1] = sub_1002F39E0;
    v7 = v3[4];
    v8 = v3[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v8, v6);
  }
}

uint64_t sub_100547A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[43] = a4;
  v5[44] = a5;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  v6 = *(*(sub_1000F5104(&qword_10093DB38, &qword_10079B890) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v7 = sub_1000F5104(&qword_10093DB40, &qword_10079B898);
  v5[46] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v9 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[48] = v9;
  v10 = *(v9 - 8);
  v5[49] = v10;
  v11 = *(v10 + 64) + 15;
  v5[50] = swift_task_alloc();
  v12 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[51] = v12;
  v13 = *(v12 - 8);
  v5[52] = v13;
  v14 = *(v13 + 64) + 15;
  v5[53] = swift_task_alloc();
  v15 = *(*(sub_1000F5104(&qword_10093DB48, &unk_10079B8A0) - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = type metadata accessor for FunctionIdentifier();
  v5[55] = v16;
  v17 = *(v16 - 8);
  v5[56] = v17;
  v18 = *(v17 + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v5[59] = v19;
  v20 = *(v19 - 8);
  v5[60] = v20;
  v21 = *(v20 + 64) + 15;
  v5[61] = swift_task_alloc();
  v22 = *(*(type metadata accessor for StringResponseSanitizer.Guardrails() - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v23 = type metadata accessor for StringResponseSanitizer();
  v5[63] = v23;
  v24 = *(v23 - 8);
  v5[64] = v24;
  v25 = *(v24 + 64) + 15;
  v5[65] = swift_task_alloc();
  v26 = *(*(type metadata accessor for SensitiveContentSettings() - 8) + 64) + 15;
  v5[66] = swift_task_alloc();
  v27 = *(*(type metadata accessor for StringRenderedPromptSanitizer.Guardrails() - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v28 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[68] = v28;
  v29 = *(v28 - 8);
  v5[69] = v29;
  v30 = *(v29 + 64) + 15;
  v5[70] = swift_task_alloc();
  v31 = type metadata accessor for ChatMessagesPrompt();
  v5[71] = v31;
  v32 = *(v31 - 8);
  v5[72] = v32;
  v33 = *(v32 + 64) + 15;
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();

  return _swift_task_switch(sub_100547E8C, 0, 0);
}

uint64_t sub_100547E8C()
{
  v33 = *(v0 + 616);
  v29 = *(v0 + 608);
  v26 = *(v0 + 600);
  v1 = *(v0 + 584);
  v20 = *(v0 + 592);
  v36 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v21 = *(v0 + 552);
  v22 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v27 = *(v0 + 504);
  v23 = *(v0 + 496);
  v32 = *(v0 + 488);
  v30 = *(v0 + 480);
  v31 = *(v0 + 472);
  v35 = *(v0 + 464);
  v34 = *(v0 + 432);
  v19 = *(v0 + 328);
  v6 = *(v0 + 352);
  v28 = *(v0 + 344);
  v7 = swift_task_alloc();
  *(v7 + 16) = v19;
  *(v7 + 32) = v6;
  ChatMessagesPrompt.init(_:)();

  *(v0 + 624) = sub_1000F5104(&qword_10093DB60, &qword_10079B8B8);
  v8 = *(type metadata accessor for SensitiveContentSettings.Sanitizer() - 8);
  *(v0 + 632) = *(v8 + 72);
  *(v0 + 720) = *(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringRenderedPromptSanitizer.init(guardrails:)();
  *(v0 + 640) = sub_100549E1C(&qword_10093DB58, 255, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v9 = *(v21 + 8);
  *(v0 + 648) = v9;
  *(v0 + 656) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v22);
  v10 = *(v36 + 8);
  *(v0 + 664) = v10;
  *(v0 + 672) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringResponseSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v11 = *(v25 + 8);
  *(v0 + 680) = v11;
  *(v0 + 688) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v24, v27);
  v10(v20, v2);
  sub_10038E004(_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v10(v26, v2);
  v12 = *(v28 + 16);
  *(v0 + 696) = v12;
  v13 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v30 + 16))(v32, v12 + v13, v31);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v30 + 8))(v32, v31);
  v10(v29, v2);
  v14 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v14 - 8) + 56))(v34, 1, 1, v14);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v15 = async function pointer to static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 704) = v16;
  *v16 = v0;
  v16[1] = sub_1005483CC;
  v17 = *(v0 + 360);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v17, 0xD00000000000001CLL, 0x80000001007FC1F0);
}

uint64_t sub_1005483CC()
{
  v2 = *(*v1 + 704);
  v5 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = sub_1002F4EA4;
  }

  else
  {
    v3 = sub_1005484E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005484E0()
{
  v1 = *(v0 + 360);
  v2 = sub_1000F5104(&qword_10093DB68, &qword_10079B8C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1002F6CB8(v1);
  }

  else
  {
    v45 = *(v0 + 680);
    v47 = *(v0 + 688);
    v59 = *(v0 + 664);
    v61 = *(v0 + 672);
    v36 = *(v0 + 648);
    v37 = *(v0 + 656);
    v29 = *(v0 + 632);
    v31 = *(v0 + 624);
    v51 = *(v0 + 608);
    v53 = *(v0 + 616);
    v55 = *(v0 + 568);
    v57 = *(v0 + 576);
    v34 = *(v0 + 560);
    v35 = *(v0 + 544);
    v32 = *(v0 + 528);
    v33 = *(v0 + 536);
    v39 = *(v0 + 520);
    v41 = *(v0 + 504);
    v38 = *(v0 + 496);
    v70 = *(v0 + 464);
    v24 = *(v0 + 456);
    v25 = *(v0 + 448);
    v26 = *(v0 + 440);
    v64 = *(v0 + 424);
    v49 = *(v0 + 416);
    v3 = *(v0 + 408);
    v66 = *(v0 + 400);
    v28 = (*(v0 + 720) + 32) & ~*(v0 + 720);
    v23 = *(v2 + 48);
    v4 = *(v0 + 392);
    v68 = *(v0 + 384);
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v30 = *(v0 + 336);
    v27 = *(v0 + 328);
    v7 = *(v6 + 48);
    v8 = *(v49 + 32);
    v8(v5, v1, v3);
    v9 = *(v4 + 32);
    v9(v5 + v7, v1 + v23, v68);
    v10 = *(v6 + 48);
    v8(v64, v5, v3);
    v9(v66, v5 + v10, v68);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v25 + 8))(v70, v26);
    (*(v25 + 32))(v70, v24, v26);
    sub_1000F5104(&qword_100941650, &qword_1007A1738);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0x80000001007F46C0;
    *(inited + 48) = 0xD000000000000436;
    *(inited + 56) = 0x80000001007F3CC0;
    *(inited + 88) = 1954047348;
    *(inited + 96) = 0xE400000000000000;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v27;
    *(inited + 112) = v30;

    sub_10038F2FC(inited);
    swift_setDeallocating();
    sub_1000F5104(&qword_100942F00, &unk_1007A1740);
    swift_arrayDestroy();
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_100791340;
    *(v12 + 32) = 0xD0000000000000BFLL;
    *(v12 + 40) = 0x80000001007F1340;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringRenderedPromptSanitizer.init(guardrails:)();
    *(v12 + 72) = v35;
    sub_1000103CC((v12 + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v36(v34, v35);
    *(v12 + 80) = 0xD0000000000000B3;
    *(v12 + 88) = 0x80000001007F1400;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringResponseSanitizer.init(guardrails:)();
    *(v12 + 120) = v41;
    sub_1000103CC((v12 + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v45(v39, v41);
    sub_1001F67C8(v12);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    sub_10038F430(_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v4 + 8))(v66, v68);
    (*(v49 + 8))(v64, v3);
    v59(v53, v55);
    (*(v57 + 32))(v53, v51, v55);
  }

  v13 = *(v0 + 696);
  v42 = *(v0 + 664);
  v43 = *(v0 + 672);
  v14 = *(v0 + 640);
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v44 = *(v0 + 600);
  v46 = *(v0 + 592);
  v17 = *(v0 + 568);
  v48 = *(v0 + 584);
  v50 = *(v0 + 560);
  v52 = *(v0 + 536);
  v54 = *(v0 + 528);
  v56 = *(v0 + 520);
  v58 = *(v0 + 496);
  v18 = *(v0 + 464);
  v60 = *(v0 + 488);
  v62 = *(v0 + 456);
  v19 = *(v0 + 448);
  v40 = *(v0 + 440);
  v63 = *(v0 + 432);
  v65 = *(v0 + 424);
  v67 = *(v0 + 400);
  v69 = *(v0 + 376);
  v71 = *(v0 + 360);
  v20 = *(v0 + 320);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  *(v0 + 312) = *(v13 + OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v42(v16, v17);
  (*(v19 + 8))(v18, v40);
  v42(v15, v17);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100548C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a2;
  v43 = a4;
  v5 = type metadata accessor for User();
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for System();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChatMessagesPrompt();
  v34 = *(v15 - 8);
  v16 = v34;
  v17 = *(v34 + 64);
  __chkstk_darwin(v15);
  v33 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v42 = a3;
  v22 = v35;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v11 + 8))(v14, v10);
  v40 = v36;
  v41 = v37;
  User.init(_:)();
  v37 = v22;
  v23 = v33;
  v24 = v38;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v39 + 8))(v9, v24);
  sub_1000F5104(&qword_10093DB80, &qword_10079B8D8);
  v25 = *(v34 + 72);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100791340;
  v28 = v27 + v26;
  v29 = *(v16 + 16);
  v29(v28, v21, v15);
  v29(v28 + v25, v23, v15);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v30 = *(v16 + 8);
  v30(v23, v15);
  return (v30)(v21, v15);
}

uint64_t sub_100548FEC()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  v10[0] = 0xD000000000000436;
  v10[1] = 0x80000001007F3CC0;
  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000607C(v10);
  sub_1000F5104(&qword_100941658, &qword_1007A1750);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;
  (*(v1 + 16))(v7 + v6, v4, v0);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1005491A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  __chkstk_darwin(v4);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000607C(v15);
  sub_1000F5104(&qword_100941658, &qword_1007A1750);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;
  (*(v6 + 16))(v12 + v11, v9, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v6 + 8))(v9, v4);
}

unsigned __int8 *sub_10054935C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for CachePolicy();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for GenerativeModelSessionConfiguration();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100941668, &qword_1007A1758);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v61 = &v61 - v18;
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10038E004(_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  v24 = *(v20 + 32);
  v62 = v6;
  v24(v6 + OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig, v23, v19);
  v25 = *(a5 + 16);
  v65 = a4;
  v64 = a1;
  if (!v25)
  {
    goto LABEL_66;
  }

  v26 = sub_100005F4C(0xD000000000000015, 0x80000001007F1520);
  if ((v27 & 1) == 0)
  {
    goto LABEL_66;
  }

  v28 = (*(a5 + 56) + 16 * v26);
  v30 = *v28;
  v29 = v28[1];

  v32 = HIBYTE(v29) & 0xF;
  v33 = v30 & 0xFFFFFFFFFFFFLL;
  if (!((v29 & 0x2000000000000000) != 0 ? HIBYTE(v29) & 0xF : v30 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    sub_1002F62B8(v30, v29, 10);
    goto LABEL_66;
  }

  if ((v29 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v35 = *result;
    if (v35 == 43)
    {
      if (v33 >= 1)
      {
        v32 = v33 - 1;
        if (v33 != 1)
        {
          v44 = 0;
          if (result)
          {
            v45 = result + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                goto LABEL_64;
              }

              v47 = 10 * v44;
              if ((v44 * 10) >> 64 != (10 * v44) >> 63)
              {
                goto LABEL_64;
              }

              v44 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_64;
              }

              ++v45;
              if (!--v32)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_72;
    }

    if (v35 != 45)
    {
      if (v33)
      {
        v52 = 0;
        if (result)
        {
          while (1)
          {
            v53 = *result - 48;
            if (v53 > 9)
            {
              goto LABEL_64;
            }

            v54 = 10 * v52;
            if ((v52 * 10) >> 64 != (10 * v52) >> 63)
            {
              goto LABEL_64;
            }

            v52 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v33)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v32) = 1;
      goto LABEL_65;
    }

    if (v33 >= 1)
    {
      v32 = v33 - 1;
      if (v33 != 1)
      {
        v36 = 0;
        if (result)
        {
          v37 = result + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_64;
            }

            v39 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              goto LABEL_64;
            }

            v36 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              goto LABEL_64;
            }

            ++v37;
            if (!--v32)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v32) = 0;
LABEL_65:
        v67 = v32;
LABEL_66:

        type metadata accessor for TokenGenerator();
        static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItemsV2ID.getter();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        static CachePolicy.inMemory.getter();
        GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
        v59 = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
        v60 = v62;
        *(v62 + OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo__model) = v59;
        return v60;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v66[0] = v30;
  v66[1] = v29 & 0xFFFFFFFFFFFFFFLL;
  if (v30 != 43)
  {
    if (v30 != 45)
    {
      if (v32)
      {
        v55 = 0;
        v56 = v66;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          ++v56;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v32)
    {
      if (--v32)
      {
        v40 = 0;
        v41 = v66 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (v32)
  {
    if (--v32)
    {
      v48 = 0;
      v49 = v66 + 1;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v48;
        if ((v48 * 10) >> 64 != (10 * v48) >> 63)
        {
          break;
        }

        v48 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        ++v49;
        if (!--v32)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_10054992C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  v3 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo__model];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1005499E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_100549A6C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*sub_100549B00())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t type metadata accessor for RDExtractActionItemsSession._ClientInfo()
{
  result = qword_10094C160;
  if (!qword_10094C160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100549BF0()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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

void sub_100549C98(uint64_t a1, uint64_t a2)
{
  sub_100549E1C(&qword_10094C200, a2, type metadata accessor for RDExtractActionItemsSession);

  GenerativeModelSessionTokenGenerator.prewarm()();
}

uint64_t sub_100549D04(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1002F6170;

  return sub_100547720(a1, a2);
}

uint64_t sub_100549E1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100549E64(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  v18 = swift_weakInit();
  if (a1)
  {
    __chkstk_darwin(v18);
    *(&v22 - 4) = v17;
    *(&v22 - 3) = a2;
    *(&v22 - 2) = a3;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = a2;
    v20[4] = a3;
    aBlock[4] = sub_10054B6C0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F6A60;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v8 + 8))(v11, v23);
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_10054A160()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C208);
  v1 = sub_100006654(v0, qword_10094C208);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10054A228@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  if (qword_100936510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = sub_100353894(a1, qword_10094C228);
  if (v6)
  {
    v7 = v6;
LABEL_13:
    result = swift_endAccess();
    *a3 = v7;
    return result;
  }

  swift_endAccess();
  type metadata accessor for RDManualSortIDCache();
  v7 = swift_allocObject();
  v7[4] = 0;
  v7[2] = a2;
  type metadata accessor for RDManualSortIDCacheContext();
  swift_allocObject();
  v8 = a2;
  v9 = sub_1004777E8(0);
  v7[3] = v9;
  *(v9 + 40) = &off_1008F6A00;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  if ((qword_10094C228 & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (qword_10094C228 < 0)
  {
    v10 = qword_10094C228;
  }

  else
  {
    v10 = qword_10094C228 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    qword_10094C228 = sub_10021E294(v10, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = qword_10094C228;
    sub_1002CA7F0(v7, a1, isUniquelyReferenced_nonNull_native);
    qword_10094C228 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10054A3FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 24);
    v8[3] = type metadata accessor for RDManualSortIDCacheContext();
    v8[4] = a4;
    v8[0] = v7;

    a2(v8);

    return sub_10000607C(v8);
  }

  return result;
}

uint64_t sub_10054A49C(uint64_t a1, void (*a2)(uint64_t *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);
    v5[3] = type metadata accessor for RDManualSortIDCacheContext();
    v5[4] = &off_1008F2FD0;
    v5[0] = v4;

    a2(v5);

    return sub_10000607C(v5);
  }

  return result;
}

uint64_t sub_10054A548(char a1)
{
  v2 = v1;
  sub_100549E64(a1 & 1, sub_10054A680, 0);
  if (qword_100936500 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094C208);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDManualSortIDCache cancels observing account changes", v6, 2u);
  }

  if (*(v2 + 32))
  {
    v7 = *(v2 + 32);

    AnyCancellable.cancel()();

    v8 = *(v2 + 32);
  }

  *(v2 + 32) = 0;
}

uint64_t sub_10054A6AC()
{
  v0 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = &v35 - v2;
  v35 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = &v35 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v18 = *(v17 - 8);
  v40 = v17;
  v41 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  v22 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = sub_100440048(v23, v24, 0xD000000000000013, 0x80000001007B0D30, 0);

  (*(v8 + 8))(v11, v7);
  v42 = v25;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
  v26 = v35;
  Publisher.filter(_:)();

  (*(v3 + 8))(v6, v26);
  v42 = *(v39 + 16);
  v27 = v42;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  sub_100007F54();
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
  sub_10054B6E8(&qword_10093CD40, sub_100007F54);
  v30 = v27;
  v31 = v36;
  Publisher.receive<A>(on:options:)();
  sub_100295564(v29);

  (*(v37 + 8))(v16, v31);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
  v32 = v40;
  v33 = Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v21, v32);
  return v33;
}

uint64_t sub_10054ACB0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  v1 = *(v17 + 64);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F54();
  v19 = type metadata accessor for RDManualSortIDCache();
  sub_1000F5104(&qword_10094C2E0, &qword_1007B0D78);
  v13 = String.init<A>(reflecting:)();
  v16[1] = v14;
  v16[2] = v13;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10054B6E8(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10094C220 = result;
  return result;
}

unint64_t sub_10054AFF4()
{
  result = sub_100390874(_swiftEmptyArrayStorage);
  qword_10094C228 = result;
  return result;
}

uint64_t sub_10054B01C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10054A548(0);
  }

  return result;
}

uint64_t sub_10054B078()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t *sub_10054B0E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10054B3AC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10054B15C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = v4;
    v21 = v1;
    v19[1] = v19;
    __chkstk_darwin(a1);
    v6 = v19 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v22 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v4 = v9 & *(v2 + 56);
    v10 = (v8 + 63) >> 6;
    while (v4)
    {
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v14 = v11 | (v7 << 6);
      if ([*(*(v2 + 48) + 24 * v14 + 8) isCloudKit])
      {
        *&v6[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1001A0644(v6, v20, v22, v2);
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_1001A0644(v6, v20, v22, v2);
      }

      v13 = *(v2 + 56 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v4 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v17 = swift_slowAlloc();
  v18 = sub_10054B0E4(v17, v4, v2);

  return v18;
}

unint64_t *sub_10054B3AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    result = [*(*(a3 + 48) + 24 * v14 + 8) isCloudKit];
    if (result)
    {
      *(v17 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1001A0644(v17, v16, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10054B4EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  result = sub_10054B15C(v4);
  *a2 = result;
  return result;
}

uint64_t sub_10054B530(uint64_t result)
{
  if (*(v1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = result == 0;
  }

  if (!v2)
  {
    v3 = v1;
    v4 = *(result + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_accountTypeHost);

    if ([v4 isCloudKit])
    {
      if (qword_100936500 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006654(v5, qword_10094C208);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "RDManualSortIDCache starts observing account changes", v8, 2u);
      }

      v9 = sub_10054A6AC();

      v10 = *(v3 + 32);
      *(v3 + 32) = v9;
    }
  }

  return result;
}

uint64_t sub_10054B6E8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10054B730(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_10054B82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_10054B8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10054B980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10054BA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10054BAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t type metadata accessor for RDPermanentlyHiddenReminder()
{
  result = qword_10094C340;
  if (!qword_10094C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10054BC04()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_10054BCCC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10054C024(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(a1 + 20);
  type metadata accessor for Date();
  sub_10054C024(&unk_1009431A0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10054BDB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10054C024(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 20);
  type metadata accessor for Date();
  sub_10054C024(&unk_1009431A0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10054BE8C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10054C024(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 20);
  type metadata accessor for Date();
  sub_10054C024(&unk_1009431A0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10054BF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static Date.== infix(_:_:)();
}

uint64_t sub_10054C024(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10054C06C(uint64_t a1@<X1>, void (**a2)(uint64_t, uint64_t)@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v128 = a2;
  v117 = a3;
  v119 = a4;
  v120 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v122 = *(v120 - 8);
  v5 = *(v122 + 64);
  __chkstk_darwin(v120);
  v118 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = &v104 - v8;
  v9 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v115 = &v104 - v11;
  v131 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v116 = *(v131 - 8);
  v12 = *(v116 + 64);
  __chkstk_darwin(v131);
  v126 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v129 = (&v104 - v15);
  v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v124 = *(v16 - 8);
  v125 = v16;
  v17 = *(v124 + 64);
  __chkstk_darwin(v16);
  v19 = (&v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  v23 = type metadata accessor for REMRemindersListDataView.Diff();
  v121 = *(v23 - 8);
  v24 = *(v121 + 64);
  __chkstk_darwin(v23);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v104 - v28;
  v30 = _s10PredicatesOMa(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v130;
  v35 = sub_10054D590(a1);
  if (v34)
  {
    return;
  }

  v109 = v19;
  v111 = v22;
  v112 = v35;
  v130 = a1;
  v113 = v26;
  v114 = v29;
  v108 = v23;
  v36 = REMRemindersListDataView.AllInvocation.Parameters.countCompleted.getter();
  if (v36)
  {
    swift_storeEnumTagMultiPayload();
    v37 = sub_100043AA8();
    sub_1000513B4(v33);
    sub_100345DB0();
    v38 = [objc_allocWithZone(NSFetchRequest) init];
    v39 = [swift_getObjCClassFromMetadata() entity];
    [v38 setEntity:v39];

    [v38 setAffectedStores:0];
    v40 = v37;
    [v38 setPredicate:v37];
    v41 = v130;
    v42 = NSManagedObjectContext.count<A>(for:)();
    v43 = v113;
    v44 = v114;
    v107 = v42;
  }

  else
  {
    v107 = 0;
    v43 = v113;
    v44 = v114;
    v41 = v130;
  }

  v45 = [v127 fetchResultTokenToDiffAgainst];
  sub_100534D44(v45, v44);

  v110 = 0;
  v46 = v43;
  v47 = v111;
  REMRemindersListDataView.AllInvocation.Parameters.remindersPrefetch.getter();
  v49 = v124;
  v48 = v125;
  v50 = v109;
  (*(v124 + 16))(v109, v47, v125);
  v51 = (*(v49 + 88))(v50, v48);
  v106 = v36;
  if (v51 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v73 = v121;
    v72 = v122;
    if (v51 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v75 = v124;
      v74 = v125;
      (*(v124 + 96))(v50, v125);
      sub_10053E698(*v50, v44, v41, v117, 0);
      (*(v75 + 8))(v111, v74);
      v76 = v123;
      v77 = v118;
      v78 = v108;
LABEL_45:
      REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      v100 = v120;
      (*(v72 + 16))(v77, v76, v120);
      v101 = v114;
      (*(v73 + 16))(v46, v114, v78);
      sub_10054DB98(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel);
      sub_10054DB98(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
      (*(v72 + 8))(v123, v100);
      (*(v73 + 8))(v101, v78);
      return;
    }

    v79 = v116;
    if (v51 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      v76 = v123;
      v77 = v118;
      v78 = v108;
      if (v51 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_59;
      }

      (*(v124 + 8))(v111, v125);
      goto LABEL_45;
    }

    (*(v124 + 96))(v50, v125);
    v105 = *v50;
    v80 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v50 + *(v80 + 48), v115, &qword_10094B8E0, &unk_1007AABD0);
    v81 = v112[2];
    if (v81)
    {
      v83 = *(v79 + 16);
      v82 = v79 + 16;
      v84 = v112 + ((*(v82 + 64) + 32) & ~*(v82 + 64));
      v127 = *(v82 + 56);
      v128 = (v82 - 8);
      v129 = v83;
      v85 = _swiftEmptyArrayStorage;
      v86 = v131;
      do
      {
        v87 = v126;
        v129(v126, v84, v86);
        v88 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v128)(v87, v86);
        v89 = *(v88 + 16);
        v90 = v85[2];
        v91 = v90 + v89;
        if (__OFADD__(v90, v89))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v91 > v85[3] >> 1)
        {
          if (v90 <= v91)
          {
            v93 = v90 + v89;
          }

          else
          {
            v93 = v90;
          }

          v85 = sub_100365A24(isUniquelyReferenced_nonNull_native, v93, 1, v85);
        }

        v86 = v131;
        if (*(v88 + 16))
        {
          v94 = (v85[3] >> 1) - v85[2];
          v95 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v94 < v89)
          {
            goto LABEL_57;
          }

          v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v97 = *(v95 + 72);
          swift_arrayInitWithCopy();

          v41 = v130;
          if (v89)
          {
            v98 = v85[2];
            v70 = __OFADD__(v98, v89);
            v99 = v98 + v89;
            if (v70)
            {
              goto LABEL_58;
            }

            v85[2] = v99;
          }
        }

        else
        {

          v41 = v130;
          if (v89)
          {
            goto LABEL_56;
          }
        }

        v84 = &v127[v84];
        --v81;
      }

      while (v81);
    }

    else
    {
      v85 = _swiftEmptyArrayStorage;
    }

    v102 = v117;
    sub_10053DB98(v105, v85, v41, v117, 0);
    v103 = v115;
    sub_10053EBE4(v115, v85, v41, v102, 0);

    sub_1000050A4(v103, &qword_10094B8E0, &unk_1007AABD0);
    (*(v124 + 8))(v111, v125);
LABEL_44:
    v72 = v122;
    v76 = v123;
    v77 = v118;
    v78 = v108;
    v73 = v121;
    v46 = v113;
    goto LABEL_45;
  }

  (*(v49 + 96))(v50, v48);
  v126 = *v50;
  v52 = v112[2];
  if (!v52)
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_43:
    sub_10053DB98(v126, v55, v130, v117, 0);

    (*(v124 + 8))(v111, v125);
    goto LABEL_44;
  }

  v128 = *(v116 + 16);
  v53 = v112 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
  v127 = *(v116 + 72);
  v54 = (v116 + 8);
  v55 = _swiftEmptyArrayStorage;
  v56 = v129;
  while (1)
  {
    v57 = v56;
    v58 = v131;
    (v128)(v56, v53, v131);
    v59 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
    (*v54)(v57, v58);
    v60 = *(v59 + 16);
    v61 = v55[2];
    v62 = v61 + v60;
    if (__OFADD__(v61, v60))
    {
      break;
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    if (v63 && v62 <= v55[3] >> 1)
    {
      if (*(v59 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v61 <= v62)
      {
        v64 = v61 + v60;
      }

      else
      {
        v64 = v61;
      }

      v55 = sub_100365A24(v63, v64, 1, v55);
      if (*(v59 + 16))
      {
LABEL_19:
        v65 = (v55[3] >> 1) - v55[2];
        v66 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v65 < v60)
        {
          goto LABEL_53;
        }

        v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v68 = *(v66 + 72);
        swift_arrayInitWithCopy();

        v56 = v129;
        if (v60)
        {
          v69 = v55[2];
          v70 = __OFADD__(v69, v60);
          v71 = v69 + v60;
          if (v70)
          {
            goto LABEL_54;
          }

          v55[2] = v71;
        }

        goto LABEL_9;
      }
    }

    v56 = v129;
    if (v60)
    {
      goto LABEL_52;
    }

LABEL_9:
    v53 = &v127[v53];
    if (!--v52)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10054CCAC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v88 = a3;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v98 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v79 - v13;
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v104 = &v79 - v19;
  v100 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v89 = *(v100 - 8);
  v20 = *(v89 + 64);
  __chkstk_darwin(v100);
  v99 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for UUID();
  v85 = *(v90 - 8);
  v22 = *(v85 + 64);
  *&v23 = __chkstk_darwin(v90).n128_u64[0];
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *a1;
  v26 = [v84 identifier];
  if (!v26)
  {
    v68 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
    return (*(*(v68 - 8) + 56))(a4, 1, 1, v68);
  }

  v27 = v26;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(a2 + 16) && (v28 = sub_100363F20(v25), (v29 & 1) != 0))
  {
    v30 = *(*(a2 + 56) + 8 * v28);
    if (v30 >> 62)
    {
LABEL_48:
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v80 = v25;
    v81 = a4;
    v82 = v5;

    if (v31)
    {
      v5 = 0;
      v96 = v30 & 0xFFFFFFFFFFFFFF8;
      v97 = v30 & 0xC000000000000001;
      v94 = (v85 + 48);
      v95 = (v85 + 56);
      v86 = (v85 + 8);
      v32 = v90;
      v33 = (v89 + 48);
      v91 = (v89 + 32);
      v101 = _swiftEmptyArrayStorage;
      a4 = &unk_100939D90;
      v34 = "8\n\r";
      v25 = v87;
      v92 = v31;
      v93 = v30;
      v83 = v16;
      while (1)
      {
        if (v97)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v36 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v5 >= *(v96 + 16))
          {
            goto LABEL_47;
          }

          v35 = *(v30 + 8 * v5 + 32);
          v36 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v102 = v35;
        v103 = v36;
        v37 = [v35 identifier];
        if (v37)
        {
          v38 = v37;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        (*v95)(v25, v39, 1, v32);
        v40 = v25;
        v41 = v25;
        v42 = v34;
        sub_100031B58(v41, v16, &unk_100939D90, v34);
        v43 = *v94;
        if ((*v94)(v16, 1, v32) == 1)
        {
          v44 = 0;
          v45 = 0;
        }

        else
        {
          v46 = v33;
          v47 = v16;
          v48 = v16;
          v49 = v32;
          v50 = v98;
          sub_10018E470(v48, v98);
          v51 = v50;
          v32 = v49;
          result = v43(v51, 1, v49);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v53 = v88;
          if (*(v88 + 16))
          {
            v54 = v98;
            v55 = sub_100363F20(v98);
            if (v56)
            {
              v57 = *(*(v53 + 56) + 8 * v55);
              v58 = *v86;

              v58(v54, v32);
              v45 = v57;
              v33 = v46;
              if (v57 >> 62)
              {
                v67 = _CocoaArrayWrapper.endIndex.getter();
                v45 = v57;
                v44 = v67;
              }

              else
              {
                v44 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v40 = v87;
            }

            else
            {
              (*v86)(v54, v32);
              v44 = 0;
              v45 = 0;
              v40 = v87;
              v33 = v46;
            }

            a4 = &unk_100939D90;
            v34 = v42;
            v16 = v83;
          }

          else
          {
            (*v86)(v98, v32);
            v44 = 0;
            v45 = 0;
            v16 = v47;
            v33 = v46;
            a4 = &unk_100939D90;
          }
        }

        v59 = v104;
        sub_1005384A4(v102, v44, v45, v104);
        sub_1000050A4(v16, &unk_100939D90, v34);
        v60 = v59;
        v61 = v100;
        if ((*v33)(v60, 1, v100) == 1)
        {
          sub_1000050A4(v104, &qword_100940628, &unk_1007A6A20);
          v25 = v40;
        }

        else
        {
          v62 = *v91;
          (*v91)(v99, v104, v61);
          v25 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100365A24(0, *(v101 + 2) + 1, 1, v101);
          }

          v64 = *(v101 + 2);
          v63 = *(v101 + 3);
          if (v64 >= v63 >> 1)
          {
            v101 = sub_100365A24(v63 > 1, v64 + 1, 1, v101);
          }

          v65 = v100;
          v66 = v101;
          *(v101 + 2) = v64 + 1;
          v62(&v66[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v64], v99, v65);
          v32 = v90;
          a4 = &unk_100939D90;
        }

        ++v5;
        v30 = v93;
        if (v103 == v92)
        {
          goto LABEL_40;
        }
      }
    }

    v101 = _swiftEmptyArrayStorage;
LABEL_40:

    a4 = v81;
    v25 = v80;
  }

  else
  {
    v101 = _swiftEmptyArrayStorage;
  }

  v69 = a4;
  v70 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v72 = [v70 objectIDWithUUID:isa];

  REMObjectID.codable.getter();
  v73 = v84;
  v74 = [v84 displayName];
  if (v74)
  {
    v75 = v74;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v76 = [v73 color];
  if (v76)
  {
    v77 = v76;
    REMColor.codable.getter();
  }

  REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  (*(v85 + 8))(v25, v90);
  v78 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  return (*(*(v78 - 8) + 56))(v69, 0, 1, v78);
}

uint64_t sub_10054D538(uint64_t a1)
{
  result = sub_10054DB98(&qword_10094C3A0, &type metadata accessor for REMRemindersListDataView.AllInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_10054D590(uint64_t a1)
{
  v54 = a1;
  v1 = sub_1000F5104(&qword_10094C3A8, &qword_1007B0E38);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v49 = &v45 - v3;
  v4 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v45 - v8;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v9 = *(Subtasks - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(Subtasks);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v19 = *(Configuration - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(Configuration);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.AllInvocation.Parameters.sortingStyle.getter();
  REMRemindersListDataView.AllInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.AllInvocation.Parameters.countCompleted.getter();
  REMRemindersListDataView.AllInvocation.Parameters.remindersPrefetch.getter();
  (*(v9 + 104))(v12, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  v23 = v54;
  REMRemindersListDataView.FetchConfiguration.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:)();
  v24 = v55;
  v25 = sub_1001A41EC(v23, v22);
  if (v24)
  {
    (*(v19 + 8))(v22, Configuration);
  }

  else
  {
    v27 = v26;
    v28 = v25;
    (*(v19 + 8))(v22, Configuration);
    v29 = sub_1001A3FA8(v23);
    if (v29 >> 62)
    {
      goto LABEL_26;
    }

    v31 = v28;
    v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v33 = v48;
      v34 = v49;
      v54 = v27;
      v55 = v31;
      if (!v32)
      {
        break;
      }

      v35 = 0;
      Configuration = v29 & 0xFFFFFFFFFFFFFF8;
      Subtasks = v29 & 0xC000000000000001;
      v50 = (v47 + 48);
      v36 = (v47 + 32);
      v23 = _swiftEmptyArrayStorage;
      v51 = v32;
      while (1)
      {
        if (Subtasks)
        {
          v27 = v29;
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v35 >= *(Configuration + 16))
          {
            goto LABEL_25;
          }

          v27 = v29;
          v29 = *(v29 + 8 * v35 + 32);
        }

        v37 = v29;
        v28 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v57 = v29;
        sub_10054CCAC(&v57, v55, v54, v34);

        if ((*v50)(v34, 1, v33) == 1)
        {
          sub_1000050A4(v34, &qword_10094C3A8, &qword_1007B0E38);
        }

        else
        {
          v38 = v33;
          v39 = *v36;
          v40 = v46;
          (*v36)();
          (v39)(v56, v40, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_100365B14(0, v23[2] + 1, 1, v23);
          }

          v42 = v23[2];
          v41 = v23[3];
          if (v42 >= v41 >> 1)
          {
            v23 = sub_100365B14(v41 > 1, v42 + 1, 1, v23);
          }

          v23[2] = v42 + 1;
          v43 = v48;
          (v39)(v23 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, v56, v48);
          v33 = v43;
          v34 = v49;
        }

        ++v35;
        v29 = v27;
        if (v28 == v51)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v44 = v29;
      v32 = _CocoaArrayWrapper.endIndex.getter();
      v29 = v44;
      v31 = v28;
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_23:
  }

  return v23;
}

uint64_t sub_10054DB98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10054DBE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_10014F5CC(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000F61C(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10000607C(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = String._bridgeToObjectiveC()();
  [v2 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

uint64_t sub_10054DD44(uint64_t a1)
{
  v3 = type metadata accessor for RDPermanentlyHiddenReminder();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = _swiftEmptyArrayStorage;
  sub_100253258(0, v11, 0);
  v12 = v45;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 64;
  v35 = v11;
  v36 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_100550228(*(a1 + 48) + *(v42 + 72) * v17, v41, type metadata accessor for RDPermanentlyHiddenReminder);
    (*v39)(v10, v22, v6);
    sub_100550290(v22, type metadata accessor for RDPermanentlyHiddenReminder);
    v45 = v12;
    v23 = v6;
    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      sub_100253258(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    v12[2] = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100010E34(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_100010E34(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10054E10C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v44 = a2;
  v48 = a3;
  v40 = a4;
  v5 = type metadata accessor for REMRemindersListDataView.Diff();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v37 - v10;
  v11 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v46 = &v37 - v21;
  v42 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v22 = *(v42 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v42);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v26 = v49;
  result = sub_10054E5F4(a1);
  if (!v26)
  {
    v37 = v8;
    v38 = v19;
    v48 = v16;
    v49 = v15;
    v39 = v5;

    v28 = v25;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v29 = v25;
    v30 = v42;
    (*(v22 + 16))(v14, v29, v42);
    (*(v22 + 56))(v14, 0, 1, v30);
    v31 = v46;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v32 = [v43 fetchResultTokenToDiffAgainst];
    sub_100534D44(v32, v47);

    v33 = v48;
    v34 = v31;
    v35 = v49;
    (*(v48 + 16))(v38, v34, v49);
    v36 = v41;
    (*(v41 + 16))(v37, v47, v39);
    v45 = sub_1005502F0(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_1005502F0(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v36 + 8))(v47, v39);
    (*(v33 + 8))(v46, v35);
    return (*(v22 + 8))(v28, v30);
  }

  return result;
}

uint64_t sub_10054E59C(uint64_t a1)
{
  result = sub_1005502F0(&qword_10094C3E0, &type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10054E5F4(uint64_t a1)
{
  v192 = a1;
  v198 = type metadata accessor for UUID();
  v174 = *(v198 - 8);
  v1 = *(v174 + 64);
  __chkstk_darwin(v198);
  v199 = &v163[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v178 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v173 = *(v178 - 8);
  v3 = *(v173 + 64);
  __chkstk_darwin(v178);
  v172 = &v163[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v177 = &v163[-v6];
  v196 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v167 = *(v196 - 8);
  v7 = *(v167 + 64);
  __chkstk_darwin(v196);
  v195 = &v163[-v8];
  v169 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v168 = *(v169 - 8);
  v9 = *(v168 + 64);
  __chkstk_darwin(v169);
  v166 = &v163[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v165 = &v163[-v12];
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v189 = *(Subtasks - 8);
  v13 = *(v189 + 64);
  __chkstk_darwin(Subtasks);
  v194 = &v163[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v191 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v190 = *(v191 - 8);
  v15 = *(v190 + 64);
  __chkstk_darwin(v191);
  v175 = &v163[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v197 = &v163[-v18];
  v200 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v19 = *(v200 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v200);
  v22 = &v163[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = _s9UtilitiesO12SortingStyleOMa();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v171 = &v163[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v170 = &v163[-v27];
  __chkstk_darwin(v28);
  v176 = &v163[-v29];
  __chkstk_darwin(v30);
  v201 = &v163[-v31];
  __chkstk_darwin(v32);
  v34 = &v163[-v33];
  __chkstk_darwin(v35);
  v37 = &v163[-v36];
  v38 = _s10PredicatesOMa(0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = &v163[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
  *v41 = REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.accountID.getter();
  REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.deletedAfterDate.getter();
  v41[8] = 1;
  swift_storeEnumTagMultiPayload();
  v187 = sub_100043AA8();
  sub_100550290(v41, _s10PredicatesOMa);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1007953F0;
  if (qword_100936058 != -1)
  {
LABEL_90:
    v157 = v43;
    swift_once();
    v43 = v157;
  }

  v44 = qword_100974E08;
  v186 = v43;
  *(v43 + 32) = qword_100974E08;
  v45 = *(v19 + 104);
  v19 += 104;
  v45(v22, enum case for REMRemindersListDataView.SortingStyle.default(_:), v200);
  swift_storeEnumTagMultiPayload();
  v46 = v44;
  sub_1005368D8(v22, v34, v37);
  v47 = *(v190 + 104);
  v164 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v47(v197);
  v48 = v189;
  v49 = Subtasks;
  (*(v189 + 104))(v194, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  v185 = sub_1005393B4(v192);
  v50 = v37;
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v203 = qword_100974F68;

  v37 = _swiftEmptyArrayStorage;
  sub_100271A80(_swiftEmptyArrayStorage);
  v210 = v203;
  v209 = _swiftEmptyArrayStorage;
  v51 = sub_10053CBE4(v50);
  sub_100271A80(v51);
  v52 = v201;
  sub_100550228(v50, v201, _s9UtilitiesO12SortingStyleOMa);
  v179 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v23 = v202;
LABEL_10:
    sub_100550290(v52, _s9UtilitiesO12SortingStyleOMa);
    v55 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v23 = v202;
  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_10;
  }

  v54 = EnumCaseMultiPayload;
  v55 = _swiftEmptyArrayStorage;
  if (v54 == 4)
  {
    sub_100550290(v52, _s9UtilitiesO12SortingStyleOMa);
    if (qword_1009367F0 != -1)
    {
      goto LABEL_94;
    }

    goto LABEL_9;
  }

  while (1)
  {
LABEL_11:
    v193 = v50;
    sub_100271A80(v55);
    v207 = v209;
    v208 = v210;
    v203 = v37;

    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v57 = sub_100235F88(Predicate);
    sub_100271A98(v57);
    v180 = Predicate;
    v58 = sub_100235FA0(Predicate);
    sub_100271A98(v58);
    sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v59 = v210;
    v60 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v61 = [objc_allocWithZone(NSFetchRequest) init];
    v182 = v60;
    v62 = [swift_getObjCClassFromMetadata() entity];
    [v61 setEntity:v62];

    [v61 setAffectedStores:0];
    [v61 setPredicate:v187];
    v203 = _swiftEmptySetSingleton;

    sub_100050AD0(v63);
    v184 = v59;

    sub_1003FE014(v203);
    v181 = v23;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v183 = v61;
    [v61 setPropertiesToFetch:isa];

    v65 = v209;
    v23 = v209;
    if (v209 >> 62)
    {
      v158 = _CocoaArrayWrapper.endIndex.getter();
      v65 = v23;
      v37 = v158;
    }

    else
    {
      v37 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v193;
    v202 = v65;
    if (v37)
    {
      v206 = _swiftEmptyArrayStorage;
      v43 = sub_100026EF4(0, v37 & ~(v37 >> 63), 0);
      if ((v37 & 0x8000000000000000) == 0)
      {
        v66 = 0;
        v67 = v206;
        v68 = v23;
        v200 = v23 & 0xFFFFFFFFFFFFFF8;
        v201 = (v23 & 0xC000000000000001);
        v22 = v37;
        while (1)
        {
          v48 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            __break(1u);
            goto LABEL_87;
          }

          if (v201)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v66 >= *(v200 + 16))
            {
              __break(1u);
              goto LABEL_90;
            }

            v69 = *(v68 + 8 * v66 + 32);
          }

          v70 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v71)
          {
            goto LABEL_100;
          }

          v19 = v70;
          v23 = v71;

          v206 = v67;
          v34 = v67[2];
          v72 = v67[3];
          v37 = v34 + 1;
          if (v34 >= v72 >> 1)
          {
            v43 = sub_100026EF4((v72 > 1), v34 + 1, 1);
            v67 = v206;
          }

          v67[2] = v37;
          v73 = &v67[2 * v34];
          v73[4] = v19;
          v73[5] = v23;
          ++v66;
          v68 = v202;
          if (v48 == v22)
          {
            v49 = Subtasks;
            v48 = v189;
            v50 = v193;
            goto LABEL_26;
          }
        }
      }

      __break(1u);
      goto LABEL_93;
    }

LABEL_26:
    v34 = swift_allocObject();
    v74 = Array._bridgeToObjectiveC()().super.isa;

    v75 = v183;
    [v183 setRelationshipKeyPathsForPrefetching:v74];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v76 = Array._bridgeToObjectiveC()().super.isa;
    [v75 setSortDescriptors:v76];

    v77 = v75;
    v78 = v181;
    v79 = NSManagedObjectContext.fetch<A>(_:)();
    v80 = v78;
    if (v78)
    {

      swift_deallocUninitializedObject();
      v109 = v194;
LABEL_43:
      (*(v48 + 8))(v109, v49);
      (*(v190 + 8))(v197, v191);
      sub_100550290(v50, _s9UtilitiesO12SortingStyleOMa);
      return v34;
    }

    *(v34 + 16) = v79;

    v81 = v190;
    v82 = v175;
    v83 = v191;
    (*(v190 + 16))(v175, v197, v191);
    v84 = (*(v81 + 88))(v82, v83);
    if (v84 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
    {

      (*(v81 + 8))(v82, v83);
    }

    else
    {
      if (v84 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
      {

        (*(v81 + 96))(v82, v83);
        v203 = *v82;
        sub_1000F5104(&qword_100944F78, qword_1007AABF0);
        sub_10000CB48(&qword_100947CB0, &qword_100944F78, qword_1007AABF0);
        sub_1005502F0(&qword_10093B410, &type metadata accessor for UUID);
        v85 = Sequence.mapToSet<A>(_:)();

        goto LABEL_36;
      }

      if (v84 != enum case for REMRemindersListDataView.ShowCompleted.off(_:) && v84 != v164)
      {
        goto LABEL_101;
      }
    }

    v85 = _swiftEmptySetSingleton;
LABEL_36:
    v86 = *(v34 + 16);

    v87 = _swiftEmptyArrayStorage;
    v88 = sub_100155C54(_swiftEmptyArrayStorage, v85, v86);

    v89 = *(v34 + 16);
    *(v34 + 16) = v88;

    v90 = v176;
    sub_100550228(v193, v176, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v91 = v90;
      v92 = *v90;
      v94 = v91[1];
      v93 = v91[2];
      v96 = v91[3];
      v95 = v91[4];

      if (v92)
      {

        v97 = v185;
        if (v185)
        {
          v98 = *(v34 + 16);

          v99 = sub_100155828(v92, v197, v97, v98);

          v100 = *(v34 + 16);
          *(v34 + 16) = v99;
        }
      }
    }

    else
    {
      sub_100550290(v90, _s9UtilitiesO12SortingStyleOMa);
    }

    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = swift_allocObject();
    v102[2] = 0;
    v205 = _swiftEmptyDictionarySingleton;
    v206 = _swiftEmptyDictionarySingleton;
    v103 = *(v34 + 16);
    __chkstk_darwin(v102);
    v105 = v193;
    v104 = v194;
    *&v163[-112] = v193;
    *&v163[-104] = v104;
    v106 = v192;
    *&v163[-96] = v107;
    *&v163[-88] = v106;
    v108 = v197;
    *&v163[-80] = v34;
    *&v163[-72] = v108;
    *&v163[-64] = &v208;
    *&v163[-56] = &v207;
    *&v163[-48] = 0;
    v163[-40] = 1;
    v69 = v185;
    *&v163[-32] = v185;
    *&v163[-24] = v101;
    v161 = &v206;
    v162 = &v205;

    v201 = sub_1003DE68C(sub_10046D484, &v163[-128], v103);
    v183 = v102;
    v192 = v101;

    v111 = v170;
    sub_100550228(v105, v170, _s9UtilitiesO12SortingStyleOMa);
    v112 = swift_getEnumCaseMultiPayload();
    v49 = Subtasks;
    if (v112 > 2)
    {
      if (v112 != 3 && v112 != 4)
      {
        goto LABEL_51;
      }
    }

    else if (v112 < 2)
    {
      v69 = v168;
      v113 = v165;
      v114 = v169;
      (*(v168 + 32))(v165, v111, v169);
      v200 = sub_100156950(v113, v197, v201);

      (v69[1])(v113, v114);
      v115 = v200;
      goto LABEL_52;
    }

    sub_100550290(v111, _s9UtilitiesO12SortingStyleOMa);
LABEL_51:
    v115 = v201;
LABEL_52:
    v203 = _swiftEmptyArrayStorage;
    v116 = *(v115 + 2);
    v201 = v115;
    if (v116)
    {
      v200 = 0;
      v69 = *(v167 + 16);
      v117 = &v115[(*(v167 + 80) + 32) & ~*(v167 + 80)];
      v118 = *(v167 + 72);
      v119 = (v167 + 8);
      do
      {
        v120 = v195;
        v121 = v196;
        (v69)(v195, v117, v196);
        REMSortableElement.element.getter();
        (*v119)(v120, v121);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v182 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 += v118;
        --v116;
      }

      while (v116);
      v87 = v203;
      v49 = Subtasks;
      v105 = v193;
      v80 = v200;
    }

    swift_beginAccess();
    v122 = *(v34 + 16);
    *(v34 + 16) = v87;

    v123 = v171;
    sub_100550228(v105, v171, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v124 = v168;
      v125 = v166;
      v126 = v169;
      (*(v168 + 32))(v166, v123, v169);
      v127 = *(v34 + 16);

      v128 = sub_1001561A0(v125, v197, v127);

      v129 = *(v124 + 8);
      v69 = (v124 + 8);
      v129(v125, v126);
      v130 = *(v34 + 16);
      *(v34 + 16) = v128;
    }

    else
    {
      sub_100550290(v123, _s9UtilitiesO12SortingStyleOMa);
    }

    v67 = v194;
    v131 = *(v34 + 16);

    v202 = sub_1005364C4(v132, &v206, &v205);
    v200 = v80;

    v133 = *(v34 + 16);

    if (v133 >> 62)
    {
      v159 = _CocoaArrayWrapper.endIndex.getter();
      v48 = v189;
      v19 = v174;
      if (!v159)
      {
LABEL_96:

        v34 = v202;
        goto LABEL_97;
      }
    }

    else
    {
      v48 = v189;
      v19 = v174;
      if (!*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }
    }

    v34 = v202;
    if ((v133 & 0xC000000000000001) != 0)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_66;
    }

    if (!*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v134 = *(v133 + 32);
LABEL_66:
    v135 = v134;

    v136 = [v135 account];

    if (!v136)
    {
      goto LABEL_71;
    }

    v137 = [v136 recentlyDeletedInfoAsData];
    if (!v137)
    {

LABEL_71:
LABEL_72:
      v105 = v193;
LABEL_97:
      (*(v48 + 8))(v67, v49);
      (*(v190 + 8))(v197, v191);
      sub_100550290(v105, _s9UtilitiesO12SortingStyleOMa);
      return v34;
    }

    v184 = v136;
    v138 = v137;
    v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v140;

    type metadata accessor for RDRecentlyDeletedInfo();
    sub_1005502F0(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo);
    v142 = v200;
    static REMJSONRepresentable.fromJSONData(_:)();
    if (v142)
    {
      sub_10001BBA0(v139, v141);

      v109 = v67;
      v50 = v193;
      goto LABEL_43;
    }

    sub_10001BBA0(v139, v141);
    v183 = v210;
    v143 = v210[2];

    v37 = sub_10054DD44(v144);
    v200 = 0;

    v196 = *(v34 + 16);
    if (!v196)
    {
LABEL_87:
      v23 = _swiftEmptyArrayStorage;
LABEL_88:

      v34 = v23;
      v49 = Subtasks;
      goto LABEL_72;
    }

    v50 = 0;
    v192 = v173 + 16;
    v186 = (v19 + 8);
    v185 = (v173 + 8);
    v195 = (v173 + 32);
    v23 = _swiftEmptyArrayStorage;
    v49 = &qword_10093A3E0;
    while (v50 < *(v34 + 16))
    {
      v201 = ((*(v173 + 80) + 32) & ~*(v173 + 80));
      v147 = *(v173 + 72);
      (*(v173 + 16))(v177, &v201[v34 + v147 * v50++], v178);
      v148 = REMRemindersListDataView.ReminderLite.objectID.getter();
      v149 = [v148 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = 0;
      v151 = *(v37 + 16);
      while (v151 != v150)
      {
        v152 = v150 + 1;
        v153 = v37 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v150;
        sub_1005502F0(&qword_10093A3E0, &type metadata accessor for UUID);
        v154 = dispatch thunk of static Equatable.== infix(_:_:)();
        v150 = v152;
        if (v154)
        {
          (*v186)(v199, v198);
          (*v185)(v177, v178);
          goto LABEL_78;
        }
      }

      (*v186)(v199, v198);
      v155 = *v195;
      (*v195)(v172, v177, v178);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v210 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100253530(0, *(v23 + 16) + 1, 1);
        v23 = v210;
      }

      v146 = *(v23 + 16);
      v145 = *(v23 + 24);
      if (v146 >= v145 >> 1)
      {
        sub_100253530(v145 > 1, v146 + 1, 1);
        v23 = v210;
      }

      *(v23 + 16) = v146 + 1;
      v155(&v201[v23 + v146 * v147], v172, v178);
      v19 = v174;
LABEL_78:
      v48 = v189;
      v67 = v194;
      v34 = v202;
      if (v50 == v196)
      {
        goto LABEL_88;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
LABEL_9:
  }

  __break(1u);
LABEL_100:
  v203 = 0;
  v204 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v160._object = 0x80000001007EC120;
  v160._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v160);
  v205 = v69;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  LODWORD(v162) = 0;
  v161 = 19;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_101:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100550228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100550290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005502F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100550338@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentAccount];
  *a2 = result;
  return result;
}

void sub_1005503BC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMostRecentTargetTemplateIdentifierByCurrentUser:isa];
}

uint64_t sub_1005504F8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C3E8);
  v1 = sub_100006654(v0, qword_10094C3E8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005505C0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sharees];
  if (v3)
  {
    v4 = v3;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10055066C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setSharees:?];
}

void sub_100550728(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPinnedDate:isa];
}

id sub_100550864@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPinnedByCurrentUser];
  *a2 = result;
  return result;
}

uint64_t sub_1005508AC()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100975230 = v0;
  return result;
}

uint64_t sub_100550934()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100975238 = v0;
  return result;
}

uint64_t sub_1005509B8(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_BYTE *sub_100550BCC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 6u:
      case 8u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
        v19 = *a2;
        *a1 = *a2;
        v20 = v19;
        goto LABEL_13;
      case 3u:
        v14 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v15 = v14;
        goto LABEL_13;
      case 4u:
      case 5u:
      case 0xAu:
      case 0xBu:
      case 0x10u:
        *a1 = *a2;

        goto LABEL_13;
      case 7u:
        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        goto LABEL_13;
      case 9u:
        v11 = *a2;
        v12 = *(a2 + 1);
        *a1 = v11;
        *(a1 + 1) = v12;
        v13 = v11;

        goto LABEL_13;
      case 0xCu:
        v8 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v8;
        v9 = *(a2 + 2);
        *(a1 + 2) = v9;

        v10 = v9;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v17 = *(v6 + 64);

        return memcpy(a1, a2, v17);
    }
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = (v7 + ((v5 + 16) & ~v5));

  return a1;
}

_BYTE *sub_100550EDC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1001555B4(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
      case 6u:
      case 8u:
      case 0xDu:
      case 0xEu:
      case 0xFu:
        v15 = *a2;
        *a1 = *a2;
        v16 = v15;
        goto LABEL_12;
      case 3u:
        v10 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v11 = v10;
        goto LABEL_12;
      case 4u:
      case 5u:
      case 0xAu:
      case 0xBu:
      case 0x10u:
        *a1 = *a2;

        goto LABEL_12;
      case 7u:
        v12 = type metadata accessor for UUID();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        goto LABEL_12;
      case 9u:
        v8 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v9 = v8;

        goto LABEL_12;
      case 0xCu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v6 = *(a2 + 2);
        *(a1 + 2) = v6;

        v7 = v6;
LABEL_12:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v13 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v13);
    }
  }

  return a1;
}

void *sub_1005511CC(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_10055129C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001555B4(a1);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_10055137C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10055145C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 unsafeUntilSystemReady_displayedHostnameOfICloudACAccountWithAccountIdentifier:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1005514DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C4A8);
  v1 = sub_100006654(v0, qword_10094C4A8);
  if (qword_100936440 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975008);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005515A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v55 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v53 = v10;
    v54 = v9;
    v18 = qword_100936530;
    v19 = a2;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10094C4A8);
    v21 = v19;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v51 = a2;
      v52 = a4;
      v50 = a5;
      v24 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v24 = 136315394;
      v25 = [v21 transactionId];
      if (!v25)
      {

        __break(1u);
        return;
      }

      v26 = v25;

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, aBlock);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v31 = Error.localizedDescription.getter();
        v33 = v32;
      }

      else
      {
        v31 = 7104878;
        v33 = 0xE300000000000000;
      }

      a5 = v50;
      v41 = sub_10000668C(v31, v33, aBlock);

      *(v24 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v22, v23, "DADREMShareResponseDelegate has completed with DATransaction {transactionId: %s, error: %s}", v24, 0x16u);
      swift_arrayDestroy();

      goto LABEL_19;
    }

    v10 = v53;
    v9 = v54;
  }

  else
  {
    v52 = a4;
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_10094C4A8);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v35))
    {
      v53 = v10;
      v54 = v9;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      v51 = 0;
      if (a1)
      {
        swift_getErrorValue();
        v38 = Error.localizedDescription.getter();
        v40 = v39;
      }

      else
      {
        v38 = 7104878;
        v40 = 0xE300000000000000;
      }

      v42 = sub_10000668C(v38, v40, aBlock);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v21, v35, "DADREMShareResponseDelegate has completed, but DATransaction was nil?! {error: %s}", v36, 0xCu);
      sub_10000607C(v37);

LABEL_19:

      v10 = v53;
      v9 = v54;
      a4 = v52;
      a2 = v51;
      goto LABEL_20;
    }

    a4 = v52;
  }

LABEL_20:
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v43 = swift_allocObject();
  v43[2] = v55;
  v43[3] = a4;
  v43[4] = a1;
  v43[5] = a2;
  aBlock[4] = sub_1005528EC;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F6BF8;
  v44 = _Block_copy(aBlock);
  v45 = a2;
  v46 = v44;
  v47 = v45;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);
  (*(v10 + 8))(v13, v9);
  (*(v56 + 8))(v17, v57);

  [a5 setRemXPCCompletion:0];
}

void sub_100551C1C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  a1(a3);
  if (a4)
  {
    v6 = qword_100936530;
    v7 = a4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C4A8);
    v9 = v7;
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = [v9 transactionId];
      if (v13)
      {
        v14 = v13;

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_10000668C(v15, v17, &v32);

        *(v12 + 4) = v18;
        *(v12 + 12) = 2080;
        if (a3)
        {
          swift_getErrorValue();
          v19 = Error.localizedDescription.getter();
          v21 = v20;
        }

        else
        {
          v19 = 7104878;
          v21 = 0xE300000000000000;
        }

        v29 = sub_10000668C(v19, v21, &v32);

        *(v12 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v10, v11, "DADREMShareResponseDelegate has done calling XPC completion with DATransaction {transactionId: %s, error: %s}", v12, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10094C4A8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      if (a3)
      {
        swift_getErrorValue();
        v26 = Error.localizedDescription.getter();
        v28 = v27;
      }

      else
      {
        v26 = 7104878;
        v28 = 0xE300000000000000;
      }

      v30 = sub_10000668C(v26, v28, &v32);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, oslog, v23, "DADREMShareResponseDelegate has done calling XPC completion, but DATransaction was nil?! {error: %s}", v24, 0xCu);
      sub_10000607C(v25);
    }

    else
    {
    }
  }
}

uint64_t sub_100552044(void (*a1)(void))
{
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if ((byte_1009753A9 & 1) == 0)
  {
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C4A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_18;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "RDDACalDAVShareRequestHandler: Attempted to call DADREMShareResponseDelegate when DataAccess is disabled, aborting...";
    goto LABEL_17;
  }

  if (byte_1009753A8 == 1 && gDADOperationQueue != 0)
  {
    v9 = [objc_opt_self() sharedManager];
    if ([v9 rem_storeProvider])
    {
      swift_unknownObjectRelease();
      v11 = [v9 activeAgents];
      if (v11)
      {
        v12 = v11;
        sub_1005528F8();
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v14)
        {

          return 1;
        }
      }

      if (qword_100936530 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094C4A8);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_34;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "RDDACalDAVShareRequestHandler: Trying to call DADREMShareResponseDelegate when DADAgentManager has no active accounts, aborting...";
    }

    else
    {
      if (qword_100936530 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_10094C4A8);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_34;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "RDDACalDAVShareRequestHandler: Trying to call DADREMShareResponseDelegate when DADAgentManager is not yet set up properly, aborting...";
    }

    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

LABEL_34:

    a1(0);
    return 0;
  }

  if (qword_100936530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094C4A8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "RDDACalDAVShareRequestHandler: Trying to call DADREMShareResponseDelegate when DataAccess is not yet up and running, aborting...";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
  }

LABEL_18:

  a1(0);
  return 0;
}

void sub_100552444(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  if (sub_100552044(a6))
  {
    v44 = a1;
    v45 = a4;
    v14 = [objc_allocWithZone(DATransaction) init];
    if (qword_100936530 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094C4A8);
    v16 = v14;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v42 = v14;
      v19 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v19 = 136315650;
      v43 = v16;
      v41 = a2;
      if (v16 && (v20 = [v16 transactionId]) != 0)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v24 = 0xE400000000000000;
        v22 = 1819047278;
      }

      v25 = sub_10000668C(v22, v24, &aBlock);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_10000668C(v45, a5, &aBlock);
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_10000668C(v41, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v17, v18, "RDDACalDAVShareRequestHandler: Creating a DADREMShareResponseDelegate to call onto respondToShareRequest() {DATransaction.id: %s, accountID: %s, calendarURL: %s}", v19, 0x20u);
      swift_arrayDestroy();

      v14 = v42;
      v16 = v43;
    }

    else
    {
    }

    v26 = objc_allocWithZone(DADREMShareResponseDelegate);
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 initWithAccountID:v27 calendarID:v28];

    v30 = swift_allocObject();
    v30[2] = v14;
    v30[3] = a6;
    v30[4] = a7;
    v30[5] = v29;
    v50 = sub_1005528D0;
    v51 = v30;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100042968;
    v49 = &unk_1008F6B58;
    v31 = _Block_copy(&aBlock);
    v32 = v29;
    v33 = v16;
    v34 = v32;

    [v34 setRemXPCCompletion:v31];
    _Block_release(v31);

    v35 = [objc_opt_self() sharedMain];
    if (v35)
    {
      v36 = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = v44;
      v50 = sub_1005528DC;
      v51 = v37;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100019200;
      v49 = &unk_1008F6BA8;
      v38 = _Block_copy(&aBlock);
      v39 = v34;
      v40 = v36;

      [v40 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v38];

      _Block_release(v38);
      v33 = v40;
    }

    else
    {
    }
  }
}

unint64_t sub_1005528F8()
{
  result = qword_10094C558;
  if (!qword_10094C558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094C558);
  }

  return result;
}

uint64_t sub_100552948()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C560);
  v1 = sub_100006654(v0, qword_10094C560);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100552A10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(void, void, void)@<X4>, uint64_t a6@<X8>)
{
  v172 = a4;
  v168 = a3;
  v167 = a1;
  v158 = a6;
  v159 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v157 = *(v159 - 8);
  v8 = *(v157 + 64);
  __chkstk_darwin(v159);
  v155 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v156 = &v143 - v11;
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v151 = &v143 - v14;
  v166 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v152 = *(v166 - 8);
  v15 = *(v152 + 64);
  __chkstk_darwin(v166);
  v164 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v165 = &v143 - v18;
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v162 = *(v19 - 8);
  v163 = v19;
  v20 = *(v162 + 64);
  __chkstk_darwin(v19);
  v160 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v161 = &v143 - v23;
  v24 = type metadata accessor for REMRemindersListDataView.Diff();
  v25 = *(v24 - 8);
  v153 = v24;
  v154 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v143 - v30;
  v32 = _s10PredicatesOMa_3();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s10PredicatesOMa_1();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a5;
  v40 = REMRemindersListDataView.GroupInvocation.Parameters.group.getter();
  v41 = v171;
  v42 = sub_10055535C(a2, v172, v40);
  v171 = v41;
  if (v41)
  {

    return;
  }

  v147 = v32;
  v148 = v35;
  v144 = v28;
  v150 = a2;
  v145 = v31;
  v149 = v42;

  v43 = REMRemindersListDataView.GroupInvocation.Parameters.group.getter();
  v44 = [v43 objectID];

  v45 = REMRemindersListDataView.GroupInvocation.Parameters.includePinnedSublists.getter();
  *v39 = v44;
  v146 = v45 & 1;
  v39[8] = v45 & 1;
  swift_storeEnumTagMultiPayload();
  v46 = qword_100936528;
  v47 = v44;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = qword_100975238;
  v49 = sub_10001F6F4();
  v50 = sub_100405438(0, v48, 0, v49);

  v51 = v150;
  v52 = v171;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v50 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v54 = NSManagedObjectContext.fetch<A>(_:)();
  if (v52)
  {
    sub_100025494(v39, _s10PredicatesOMa_1);

    return;
  }

  v174 = v54;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v55 = Sequence.elements<A>(ofType:)();

  sub_100025494(v39, _s10PredicatesOMa_1);

  v56 = v172;
  v57 = sub_1000271D0(v55, v172);

  v174 = 0;
  __chkstk_darwin(v58);
  v59 = v170;
  *(&v143 - 4) = v169;
  *(&v143 - 3) = v51;
  *(&v143 - 2) = v59;
  *(&v143 - 1) = &v174;
  v60 = sub_10025D2C0(sub_1005556E0, (&v143 - 6), v57);
  v61 = v148;
  *v148 = v47;
  *(v61 + 8) = v146;
  swift_storeEnumTagMultiPayload();
  v62 = v47;
  v63 = sub_100717C9C(v61, v51, 0);
  sub_100025494(v61, _s10PredicatesOMa_3);
  v64 = sub_1000303FC(v63, v56);

  type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation();
  v65 = v51;
  v66 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __chkstk_darwin(v66);
  v68 = v167;
  v67 = v168;
  *(&v143 - 8) = v69;
  *(&v143 - 7) = v68;
  *(&v143 - 6) = v65;
  *(&v143 - 5) = v67;
  *(&v143 - 4) = v56;
  *(&v143 - 3) = v170;
  *(&v143 - 2) = &v174;
  v70 = sub_10025D2C0(sub_100555704, (&v143 - 10), v64);
  v173 = v60;
  sub_100272054(v70);
  v71 = v173;
  v72 = REMRemindersListDataView.GroupInvocation.Parameters.group.getter();
  v73 = [v72 accountID];

  v74 = sub_10055573C(v71, v57, v64, v73, v65);

  v75 = v174;
  v76 = [v169 fetchResultTokenToDiffAgainst];
  sub_100534D44(v76, v145);

  v167 = v75;
  v168 = v74;
  v171 = 0;
  v77 = v161;
  REMRemindersListDataView.GroupInvocation.Parameters.remindersPrefetch.getter();
  v78 = v162;
  v79 = v160;
  v80 = v77;
  v81 = v163;
  (*(v162 + 16))(v160, v80, v163);
  v82 = (*(v78 + 88))(v79, v81);
  if (v82 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v78 + 96))(v79, v81);
    v164 = *v79;
    v83 = *(v168 + 16);
    if (v83)
    {
      v84 = v152 + 16;
      v85 = *(v152 + 16);
      v86 = v168 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
      v169 = *(v152 + 72);
      v170 = v85;
      v87 = (v152 + 8);
      v88 = _swiftEmptyArrayStorage;
      v89 = v165;
      while (1)
      {
        v90 = v89;
        v91 = v166;
        v92 = v84;
        v170(v89, v86, v166);
        v93 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v87)(v90, v91);
        v94 = *(v93 + 16);
        v95 = v88[2];
        v96 = v95 + v94;
        if (__OFADD__(v95, v94))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v96 > v88[3] >> 1)
        {
          if (v95 <= v96)
          {
            v98 = v95 + v94;
          }

          else
          {
            v98 = v95;
          }

          v88 = sub_100365A24(isUniquelyReferenced_nonNull_native, v98, 1, v88);
        }

        if (*(v93 + 16))
        {
          v99 = (v88[3] >> 1) - v88[2];
          v100 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v99 < v94)
          {
            goto LABEL_55;
          }

          v101 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v102 = *(v100 + 72);
          swift_arrayInitWithCopy();

          v84 = v92;
          v89 = v165;
          if (v94)
          {
            v103 = v88[2];
            v104 = __OFADD__(v103, v94);
            v105 = v103 + v94;
            if (v104)
            {
              goto LABEL_56;
            }

            v88[2] = v105;
          }
        }

        else
        {

          v84 = v92;
          v89 = v165;
          if (v94)
          {
            goto LABEL_54;
          }
        }

        v86 += v169;
        if (!--v83)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
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
      goto LABEL_61;
    }

    v88 = _swiftEmptyArrayStorage;
LABEL_46:
    sub_10053DB98(v164, v88, v150, v172, 0);

    (*(v162 + 8))(v161, v163);
    goto LABEL_51;
  }

  if (v82 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v107 = v162;
    v106 = v163;
    v108 = v160;
    (*(v162 + 96))(v160, v163);
    v109 = v145;
    sub_10053E698(*v108, v145, v150, v172, 0);
    (*(v107 + 8))(v161, v106);
    v110 = v159;
    v112 = v156;
    v111 = v157;
    v113 = v154;
    v114 = v155;
    v115 = v153;
LABEL_52:
    REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    (*(v111 + 16))(v114, v112, v110);
    (*(v113 + 16))(v144, v109, v115);
    REMRemindersListDataView.GroupInvocation.Result.init(model:diff:group:)();
    (*(v111 + 8))(v112, v110);
    (*(v113 + 8))(v109, v115);
    return;
  }

  if (v82 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v116 = v160;
    (*(v162 + 96))(v160, v163);
    v165 = *v116;
    v117 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v116 + *(v117 + 48), v151, &qword_10094B8E0, &unk_1007AABD0);
    v118 = *(v168 + 16);
    if (v118)
    {
      v119 = v152 + 16;
      v120 = *(v152 + 16);
      v121 = v168 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
      v169 = *(v152 + 72);
      v170 = v120;
      v122 = (v152 + 8);
      v123 = _swiftEmptyArrayStorage;
      v124 = v166;
      v125 = v164;
      while (1)
      {
        v126 = v125;
        v127 = v119;
        v170(v125, v121, v124);
        v128 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v122)(v126, v124);
        v129 = *(v128 + 16);
        v130 = v123[2];
        v131 = v130 + v129;
        if (__OFADD__(v130, v129))
        {
          goto LABEL_57;
        }

        v132 = swift_isUniquelyReferenced_nonNull_native();
        if (!v132 || v131 > v123[3] >> 1)
        {
          if (v130 <= v131)
          {
            v133 = v130 + v129;
          }

          else
          {
            v133 = v130;
          }

          v123 = sub_100365A24(v132, v133, 1, v123);
        }

        if (*(v128 + 16))
        {
          v134 = (v123[3] >> 1) - v123[2];
          v135 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v134 < v129)
          {
            goto LABEL_59;
          }

          v136 = (*(v135 + 80) + 32) & ~*(v135 + 80);
          v137 = *(v135 + 72);
          swift_arrayInitWithCopy();

          v124 = v166;
          v119 = v127;
          v125 = v164;
          if (v129)
          {
            v138 = v123[2];
            v104 = __OFADD__(v138, v129);
            v139 = v138 + v129;
            if (v104)
            {
              goto LABEL_60;
            }

            v123[2] = v139;
          }
        }

        else
        {

          v124 = v166;
          v119 = v127;
          v125 = v164;
          if (v129)
          {
            goto LABEL_58;
          }
        }

        v121 += v169;
        if (!--v118)
        {
          goto LABEL_50;
        }
      }
    }

    v123 = _swiftEmptyArrayStorage;
LABEL_50:
    v140 = v150;
    v141 = v172;
    sub_10053DB98(v165, v123, v150, v172, 0);
    v142 = v151;
    sub_10053EBE4(v151, v123, v140, v141, 0);

    sub_1000050A4(v142, &qword_10094B8E0, &unk_1007AABD0);
    (*(v162 + 8))(v161, v163);
    goto LABEL_51;
  }

  if (v82 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v162 + 8))(v161, v163);
LABEL_51:
    v110 = v159;
    v112 = v156;
    v111 = v157;
    v113 = v154;
    v114 = v155;
    v115 = v153;
    v109 = v145;
    goto LABEL_52;
  }

LABEL_61:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100553A78(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v67 = a6;
  v68 = a5;
  v64 = a4;
  v82 = a2;
  v8 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v66 = v63 - v10;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v75 = *(Subtasks - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(Subtasks);
  v74 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  __chkstk_darwin(v13);
  v73 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = _s9UtilitiesO12SortingStyleOMa();
  v16 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v70 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = v63 - v19;
  v20 = _s10PredicatesOMa(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = v63 - v31;
  v65 = *a1;
  v33 = [v65 objectID];
  REMRemindersListDataView.GroupInvocation.Parameters.sortingStyle.getter();
  LODWORD(a1) = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
  *v23 = v33;
  v69 = v33;
  REMRemindersListDataView.GroupInvocation.Parameters.showCompleted.getter();
  v63[1] = v20;
  swift_storeEnumTagMultiPayload();
  v34 = sub_100043AA8();
  sub_100025494(v23, _s10PredicatesOMa);
  v76 = v25;
  v35 = *(v25 + 16);
  v78 = v24;
  v35(v28, v32, v24);
  v36 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v37 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v38 = v70;
  (*(*(v37 - 8) + 104))(v70, v36, v37);
  swift_storeEnumTagMultiPayload();
  v39 = v71;
  sub_1005368D8(v28, v38, v71);
  v40 = v73;
  v72 = a3;
  REMRemindersListDataView.GroupInvocation.Parameters.showCompleted.getter();
  v41 = v82;
  v42 = v74;
  v43 = v75;
  v44 = Subtasks;
  (*(v75 + 104))(v74, enum case for REMRemindersListDataView.FetchSubtasks.on(_:));
  v45 = v81;
  v46 = sub_100536D54(v41, v34, v39, v40, v42, _swiftEmptyArrayStorage, 0);
  v81 = v45;
  if (v45)
  {

    (*(v43 + 8))(v42, v44);
    (*(v79 + 8))(v40, v80);
    sub_100025494(v39, _s9UtilitiesO12SortingStyleOMa);
    (*(v76 + 8))(v32, v78);
    v47 = v81;
LABEL_3:
    *v68 = v47;
    return;
  }

  v70 = v46;

  (*(v43 + 8))(v42, v44);
  (*(v79 + 8))(v40, v80);
  sub_100025494(v39, _s9UtilitiesO12SortingStyleOMa);
  (*(v76 + 8))(v32, v78);
  v48 = v65;
  v49 = [v65 objectID];
  if (REMRemindersListDataView.GroupInvocation.Parameters.countCompleted.getter())
  {
    *v23 = v49;
    swift_storeEnumTagMultiPayload();
    v50 = v49;
    v51 = sub_100043AA8();
    sub_100025494(v23, _s10PredicatesOMa);
    v52 = v66;
    v53 = v81;
    sub_10053464C(v82, v51);
    v47 = v53;

    if (v53)
    {

      goto LABEL_3;
    }

    v57 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v58 = *(v57 - 8);
    (*(v58 + 56))(v52, 0, 1, v57);
    v56 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v58 + 8))(v52, v57);
  }

  else
  {

    v54 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v55 = v66;
    (*(*(v54 - 8) + 56))(v66, 1, 1, v54);
    sub_1000050A4(v55, &qword_100938A70, &qword_1007ACC60);
    v56 = 0;
  }

  if (__OFADD__(*v64, v56))
  {
    __break(1u);
  }

  else
  {
    *v64 += v56;
    v59 = [v48 objectID];
    REMObjectID.codable.getter();

    v60 = [v48 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = [v48 color];
    if (v61)
    {
      v62 = v61;
      REMColor.codable.getter();
    }

    REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  }
}

uint64_t sub_100554290@<X0>(id *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X7>, uint64_t a8@<X8>, void *a9)
{
  v54 = a7;
  v65 = a2;
  v66 = a6;
  v63 = a4;
  v64 = a5;
  v62 = a3;
  v50[1] = a8;
  v10 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10);
  v52 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = v50 - v14;
  v15 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v55 = v50 - v17;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v60 = *(Subtasks - 8);
  v61 = Subtasks;
  v19 = *(v60 + 64);
  __chkstk_darwin(Subtasks);
  v59 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v58 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters();
  v27 = *(v58 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v58);
  v30 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Result();
  v51 = *(v31 - 1);
  v32 = *(v51 + 64);
  __chkstk_darwin(v31);
  v34 = v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  REMRemindersListDataView.GroupInvocation.Parameters.sortingStyle.getter();
  REMRemindersListDataView.GroupInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.GroupInvocation.Parameters.remindersPrefetch.getter();
  (*(v60 + 104))(v59, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v61);
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.init(smartList:sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:shouldFetchManualOrderingID:)();
  v36 = v67;
  sub_1005B86C8(v63, v64, v66, v30, v34);
  if (v36)
  {
    result = (*(v27 + 8))(v30, v58);
    *a9 = v36;
  }

  else
  {
    v67 = v35;
    v66 = v31;
    v38 = v54;
    (*(v27 + 8))(v30, v58);
    v39 = v53;
    REMRemindersListDataView.CustomSmartListInvocation.Result.model.getter();
    v40 = v55;
    REMRemindersListDataView.FlatModel.remindersCount.getter();
    v65 = *(v56 + 8);
    v65(v39, v57);
    v41 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      result = sub_1000050A4(v40, &qword_100938A70, &qword_1007ACC60);
      v43 = 0;
    }

    else
    {
      v43 = REMRemindersListDataView.CountByCompleted.completed.getter();
      result = (*(v42 + 8))(v40, v41);
    }

    v44 = v67;
    if (__OFADD__(*v38, v43))
    {
      __break(1u);
    }

    else
    {
      *v38 += v43;
      v45 = [v44 objectID];
      REMObjectID.codable.getter();

      v46 = [v44 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = [v44 color];
      if (v47)
      {
        v48 = v47;
        REMColor.codable.getter();
      }

      v49 = v52;
      REMRemindersListDataView.CustomSmartListInvocation.Result.model.getter();
      REMRemindersListDataView.FlatModel.reminders.getter();
      v65(v49, v57);
      REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
      return (*(v51 + 8))(v34, v66);
    }
  }

  return result;
}

uint64_t sub_100554944(uint64_t a1)
{
  result = sub_1005560F4(&qword_10094C598, &type metadata accessor for REMRemindersListDataView.GroupInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005549D0(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_10093EDA8, &qword_10079D530);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v17 = (&v57 - v16);
  v64 = *(a1 + 16);
  if (!v64)
  {
  }

  LODWORD(v61) = a2;
  v59 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  v58 = v19;
  sub_100556084(a1 + v19, &v57 - v16);
  v60 = v8;
  v20 = *(v8 + 32);
  v71 = *v17;
  v21 = v71;
  v62 = v18;
  v66 = v11;
  v67 = v7;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_100364044(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v61)
    {
      v32 = v60;
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1003739C4();
      v32 = v60;
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_10036AEF8(v27, v61 & 1);
  v29 = *a3;
  v30 = sub_100364044(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    v32 = v60;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v35[6] + 8 * v24) = v21;
      v36 = v35[7];
      v61 = *(v32 + 72);
      v20((v36 + v61 * v24), v66, v67);
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v35[2] = v39;
        v40 = v65;
        if (v64 != 1)
        {
          v41 = v65 + v63 + v58;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_100556084(v41, v17);
            v71 = *v17;
            v21 = v71;
            v20(v66, v17 + v62, v67);
            v43 = *a3;
            v44 = sub_100364044(v21);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v38 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v38)
            {
              goto LABEL_25;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              sub_10036AEF8(v48, 1);
              v50 = *a3;
              v44 = sub_100364044(v21);
              if ((v49 & 1) != (v51 & 1))
              {
                goto LABEL_28;
              }
            }

            if (v49)
            {
              v32 = v60;
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            *(v52[6] + 8 * v44) = v21;
            v20((v52[7] + v61 * v44), v66, v67);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_26;
            }

            ++v42;
            v52[2] = v54;
            v41 += v63;
            v40 = v65;
            if (v64 == v42)
            {
            }
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();

    v70 = v33;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v32 + 8))(v66, v67);
    }

    goto LABEL_29;
  }

LABEL_28:
  type metadata accessor for REMObjectID_Codable();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v55._object = 0x80000001007F8340;
  v55._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v55);
  type metadata accessor for REMObjectID_Codable();
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 39;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100554F0C(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMSmartList_Codable();
  v12[4] = sub_1005560F4(&qword_100948C30, &type metadata accessor for REMSmartList_Codable);
  v12[5] = sub_1005560F4(&qword_100948C38, &type metadata accessor for REMSmartList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  type metadata accessor for REMList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936538 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094C560);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_0();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100555134(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMList_Codable();
  v12[4] = sub_1005560F4(&qword_100948C18, &type metadata accessor for REMList_Codable);
  v12[5] = sub_1005560F4(&qword_100948C20, &type metadata accessor for REMList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  type metadata accessor for REMSmartList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936538 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094C560);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_0();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10055535C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = _s10PredicatesOMa_1();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = [a3 objectID];
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v11 = qword_100975238;
  v12 = sub_10001F6F4();
  v13 = sub_100405438(0, v11, 0, v12);

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100025494(v9, _s10PredicatesOMa_1);

    return a3;
  }

  v20[1] = v15;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v16 = Sequence.elements<A>(ofType:)();

  v17 = sub_1000271D0(v16, a2);

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_14:

    sub_100025494(v9, _s10PredicatesOMa_1);
    return a3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);
LABEL_12:
    a3 = v19;

    sub_100025494(v9, _s10PredicatesOMa_1);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10055573C(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v75 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v72 = *(v75 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v75);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v63 - v13;
  v14 = sub_1000F5104(&qword_10093EDA8, &qword_10079D530);
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  if (a2 >> 62)
  {
    goto LABEL_81;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_84:

    return a1;
  }

LABEL_3:
  if (a3 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_84;
    }
  }

  v65 = a4;
  v66 = a5;
  v76 = v17;
  v67 = a1;
  v17 = 0;
  v77 = _swiftEmptyArrayStorage;
  a1 = (a2 & 0xC000000000000001);
  v68 = _swiftEmptyArrayStorage;
  while (v18 != v17)
  {
    if (a1)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v20 = *(a2 + 8 * v17 + 32);
    }

    a5 = v20;
    a4 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        goto LABEL_84;
      }

      goto LABEL_3;
    }

    _s19PolymorphicListItemCMa_0();
    v21 = swift_allocObject();
    v22 = sub_100555134(a5, v21);
    ++v17;
    if (v22)
    {
      v68 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a5 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 = v77;
      v17 = a4;
    }
  }

  v17 = 0;
  a2 = _swiftEmptyArrayStorage;
  v77 = _swiftEmptyArrayStorage;
  a1 = (a3 & 0xC000000000000001);
  while (v19 != v17)
  {
    if (a1)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v23 = *(a3 + 8 * v17 + 32);
    }

    a5 = v23;
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_77;
    }

    _s19PolymorphicListItemCMa_0();
    v25 = swift_allocObject();
    v26 = sub_100554F0C(a5, v25);
    ++v17;
    if (v26)
    {
      a5 = v26;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a4 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a2 = v77;
      v17 = v24;
    }
  }

  v77 = v68;
  v17 = &v77;
  sub_10027203C(a2);
  a4 = v77;
  if (v77 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v67;
  v29 = v70;
  if (v27 < 2)
  {
LABEL_36:
    v31 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  a5 = v65;
  v30 = sub_100012370(a5, v66);
  if (v29)
  {

    v31 = 0;
    v29 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (!v30)
  {

    goto LABEL_36;
  }

  v32 = v30;
  _s19PolymorphicListItemCMa_0();
  v31 = v32;
  v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
  v29 = 0;

  a4 = v17;
  if (v17 >> 62)
  {
LABEL_46:
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v64 = v31;
    if (!v33)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_37:
  v33 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v64 = v31;
  if (!v33)
  {
LABEL_47:

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

LABEL_38:
  v77 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v33 < 0)
  {
    __break(1u);
LABEL_91:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v34 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(a4 + 8 * v34 + 32);
    }

    v36 = (*(v35 + 16) & 0x7FFFFFFFFFFFFFFFLL);
    v37 = [v36 remObjectID];

    ++v34;
    v17 = &v77;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    a5 = *(v77 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v33 != v34);

  v38 = v77;
  v28 = v67;
LABEL_48:
  v70 = v29;
  v39 = v28[2];
  v40 = _swiftEmptyArrayStorage;
  v68 = v38;
  if (v39)
  {
    v77 = _swiftEmptyArrayStorage;
    sub_1002533E8(0, v39, 0);
    v40 = v77;
    a4 = v72 + 16;
    v41 = *(v72 + 16);
    v42 = v28 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    a5 = *(v72 + 72);
    v17 = v76;
    do
    {
      v41(v17 + *(v74 + 48), v42, v75);
      v43 = REMRemindersListDataView.ListsModel.Sublist.listID.getter();
      v17 = v76;
      *v76 = v43;
      v77 = v40;
      v45 = v40[2];
      v44 = v40[3];
      if (v45 >= v44 >> 1)
      {
        sub_1002533E8(v44 > 1, v45 + 1, 1);
        v17 = v76;
        v40 = v77;
      }

      v40[2] = v45 + 1;
      sub_100031B58(v17, v40 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v45, &qword_10093EDA8, &qword_10079D530);
      v42 += a5;
      --v39;
    }

    while (v39);
    v38 = v68;
  }

  if (v40[2])
  {
    v17 = sub_1000F5104(&qword_100943EB0, &qword_1007A4640);
    v46 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v46 = _swiftEmptyDictionarySingleton;
  }

  v77 = v46;
  v47 = v70;
  sub_1005549D0(v40, 1, &v77);
  v70 = v47;
  if (v47)
  {
    goto LABEL_91;
  }

  a3 = v77;
  if (v38 >> 62)
  {
    a2 = _CocoaArrayWrapper.endIndex.getter();
    if (a2)
    {
LABEL_60:
      v48 = 0;
      v76 = (v38 & 0xC000000000000001);
      v65 = (v72 + 16);
      v73 = v72 + 32;
      v74 = v38 & 0xFFFFFFFFFFFFFF8;
      a1 = _swiftEmptyArrayStorage;
      v66 = a2;
      v67 = a3;
      while (1)
      {
        if (v76)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *(v74 + 16))
          {
            goto LABEL_80;
          }

          v49 = *(v38 + 8 * v48 + 32);
        }

        a5 = v49;
        a4 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_79;
        }

        v17 = v49;
        v50 = REMObjectID.codable.getter();
        v51 = v50;
        if (*(a3 + 16) && (v17 = a3, v52 = sub_100364044(v50), (v53 & 1) != 0))
        {
          v54 = *(a3 + 56);
          v55 = a1;
          v56 = v72;
          v57 = *(v72 + 72);
          v58 = v69;
          v59 = v75;
          (*(v72 + 16))(v69, v54 + v57 * v52, v75);

          a5 = *(v56 + 32);
          a1 = v55;
          (a5)(v71, v58, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_100365B14(0, v55[2] + 1, 1, v55);
          }

          v61 = a1[2];
          v60 = a1[3];
          v17 = v61 + 1;
          a2 = v66;
          a3 = v67;
          if (v61 >= v60 >> 1)
          {
            a1 = sub_100365B14(v60 > 1, v61 + 1, 1, a1);
          }

          a1[2] = v17;
          (a5)(a1 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + v61 * v57, v71, v75);
          v38 = v68;
        }

        else
        {
        }

        ++v48;
        if (a4 == a2)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else
  {
    a2 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_60;
    }
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_88:

  return a1;
}

uint64_t sub_100556084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093EDA8, &qword_10079D530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005560F4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100556330(void *a1, int a2, int a3, void *aBlock, uint64_t (*a5)(void))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a1;
  v9 = a5();
  _Block_release(v7);
  _Block_release(v7);

  return v9;
}

void sub_1005563C4(void *a1, int a2, int a3, void *aBlock, const void *a5, uint64_t (*a6)(void))
{
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a5);
  _Block_copy(v10);
  v11 = a1;
  v12 = a6();
  _Block_release(v10);
  if (v12)
  {
    v9[2](v9, v12);

    _Block_release(v10);
    _Block_release(v9);

    swift_unknownObjectRelease();
  }

  else
  {

    _Block_release(v10);

    _Block_release(v9);
  }
}

id sub_1005564D4(uint64_t a1, _OWORD *a2, uint64_t a3, Class a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(a4);
  v12 = &v11[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v12 = a1;
  *(v12 + 1) = a6;
  v13 = &v11[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *(v13 + 30) = *(a2 + 30);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 1) = v14;
  *&v11[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = a3;
  v16.receiver = v11;
  v16.super_class = a4;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_100556570(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) >> 14;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = *(v4 + 10);
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(16, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon);
  v9 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v11 = v4[1];
  v15 = *v4;
  v16[0] = v11;
  *(v16 + 14) = *(v4 + 30);
  result = (*(v9 + 8))(&v15, *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v9);
  if (!result)
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 xpcPerformerUnavailableErrorWithDescription:v14];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_1005566EC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) >> 14;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = *(v4 + 10);
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(32, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon);
  v9 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v11 = v4[1];
  v15 = *v4;
  v16[0] = v11;
  *(v16 + 14) = *(v4 + 30);
  result = (*(v9 + 16))(&v15, *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v9);
  if (!result)
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 xpcPerformerUnavailableErrorWithDescription:v14];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_100556868(void (*a1)(void), uint64_t a2, void (*a3)(id))
{
  v6 = (v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v7 = *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) >> 14;
  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = *(v6 + 10);
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }
  }

  else
  {
    v8 = 2147483519;
  }

  sub_100009A40(32, v8);
  v10 = *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon);
  v11 = *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v13 = v6[1];
  v17 = *v6;
  v18[0] = v13;
  *(v18 + 14) = *(v6 + 30);
  if ((*(v11 + 16))(&v17, *(v3 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v11))
  {
    a1();

    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 xpcPerformerUnavailableErrorWithDescription:v15];

    swift_willThrow();
    a3(v16);
  }
}

uint64_t sub_100556A24(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) >> 14;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = *(v4 + 10);
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(1, v6);
  v8 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon);
  v9 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v11 = v4[1];
  v15 = *v4;
  v16[0] = v11;
  *(v16 + 14) = *(v4 + 30);
  result = (*(v9 + 24))(&v15, *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken), ObjectType, v9);
  if (!result)
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 xpcPerformerUnavailableErrorWithDescription:v14];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_100556BA0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) >> 14;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = *(v4 + 10);
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(8, v6);
  v8 = a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon;
  v9 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v12 = v4[1];
  v16 = *v4;
  v17[0] = v12;
  *(v17 + 14) = *(v4 + 30);
  result = (*(v10 + 32))(&v16, 0, ObjectType, v10);
  if (!result)
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    [v14 xpcPerformerUnavailableErrorWithDescription:v15];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

uint64_t sub_100556D10(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity);
  v5 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity + 44) >> 14;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = *(v4 + 10);
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  sub_100009A40(64, v6);
  v8 = a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon;
  v9 = *(a1 + OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v12 = v4[1];
  v16 = *v4;
  v17[0] = v12;
  *(v17 + 14) = *(v4 + 30);
  result = (*(v10 + 40))(&v16, ObjectType, v10);
  if (!result)
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    [v14 xpcPerformerUnavailableErrorWithDescription:v15];

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v7);

    return 0;
  }

  return result;
}

void sub_100556E7C(void **a1)
{
  v2 = *(type metadata accessor for RDPermanentlyHiddenReminder() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100436504(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1005576DC(v5);
  *a1 = v3;
}

uint64_t sub_100556F24()
{
  v2 = v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - v5;
  v6 = type metadata accessor for Date();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RDPermanentlyHiddenReminder();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v0;
  v13 = *(v0 + 16);
  v14 = *(v13 + 2);
  if (v14)
  {
    v40 = v1;
    v15 = sub_100368CEC(v14, 0);
    sub_10027A30C(&v47, v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v14, v13);
    v17 = v16;

    sub_10001B860();
    if (v17 != v14)
    {
      __break(1u);
      goto LABEL_26;
    }

    v2 = v40;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  *&v47 = v15;

  sub_100556E7C(&v47);
  if (v2)
  {

    __break(1u);
    return result;
  }

  v18 = *(v47 + 16);
  if (v18)
  {
    v19 = *(v46 + 80);
    v40 = v47;
    v20 = v47 + ((v19 + 32) & ~v19);
    v21 = *(v46 + 72);
    v13 = _swiftEmptyArrayStorage;
    do
    {
      v22 = sub_1001A3A2C(v20, v12);
      __chkstk_darwin(v22);
      *(&v39 - 2) = v12;
      *&v47 = sub_1003E041C(sub_100558B28, (&v39 - 4), &off_1008E3CD0);
      sub_1000F5104(&unk_10093B300, &unk_100797780);
      sub_10025D9A0();
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      v48 = &type metadata for String;
      *&v47 = v23;
      *(&v47 + 1) = v25;
      sub_1001A3AF4(v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1003658F0(0, *(v13 + 2) + 1, 1, v13);
      }

      v27 = *(v13 + 2);
      v26 = *(v13 + 3);
      if (v27 >= v26 >> 1)
      {
        v13 = sub_1003658F0((v26 > 1), v27 + 1, 1, v13);
      }

      *(v13 + 2) = v27 + 1;
      sub_100005EE0(&v47, &v13[32 * v27 + 32]);
      v20 += v21;
      --v18;
    }

    while (v18);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v28 = v42;
  sub_10012F78C(v41 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v42);
  v17 = v44;
  v14 = v45;
  if ((*(v44 + 48))(v28, 1, v45) != 1)
  {
    (*(v17 + 32))(v43, v28, v14);
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v29._object = 0x80000001007FC4A0;
    v29._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v29);
    Date.timeIntervalSinceReferenceDate.getter();
    Double.write<A>(to:)();
    v48 = &type metadata for String;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      v31 = *(v13 + 2);
      v30 = *(v13 + 3);
      if (v31 >= v30 >> 1)
      {
        v13 = sub_1003658F0((v30 > 1), v31 + 1, 1, v13);
      }

      (*(v17 + 8))(v43, v14);
      *(v13 + 2) = v31 + 1;
      sub_100005EE0(&v47, &v13[32 * v31 + 32]);
      goto LABEL_21;
    }

LABEL_26:
    v13 = sub_1003658F0(0, *(v13 + 2) + 1, 1, v13);
    goto LABEL_18;
  }

  sub_1001AAD5C(v28);
LABEL_21:
  v32 = objc_autoreleasePoolPush();
  v33 = objc_opt_self();

  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v47 = 0;
  v35 = [v33 dataWithJSONObject:isa options:0 error:&v47];

  v36 = v47;
  if (v35)
  {
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v37 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  objc_autoreleasePoolPop(v32);

  return v37;
}

void sub_1005576DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RDPermanentlyHiddenReminder();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for RDPermanentlyHiddenReminder() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100557A74(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100557808(0, v2, 1, a1);
  }
}
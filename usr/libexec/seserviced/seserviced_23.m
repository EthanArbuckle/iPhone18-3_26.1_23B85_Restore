unint64_t sub_1001D9FD4()
{
  result = qword_100506880;
  if (!qword_100506880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506880);
  }

  return result;
}

unint64_t sub_1001DA028()
{
  result = qword_100506888;
  if (!qword_100506888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506888);
  }

  return result;
}

unint64_t sub_1001DA07C()
{
  result = qword_100506890;
  if (!qword_100506890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506890);
  }

  return result;
}

unint64_t sub_1001DA0D0()
{
  result = qword_1005068A0;
  if (!qword_1005068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068A0);
  }

  return result;
}

unint64_t sub_1001DA124()
{
  result = qword_1005068B8;
  if (!qword_1005068B8)
  {
    sub_1000692D8(&qword_1005068B0, &qword_10040E8C8);
    sub_1000B87D4();
    sub_1001DA4D4(&qword_1005068C0, v1, type metadata accessor for SECleanup.Module);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068B8);
  }

  return result;
}

unint64_t sub_1001DA1E0()
{
  result = qword_1005068D0;
  if (!qword_1005068D0)
  {
    sub_1000692D8(&qword_1005068C8, &qword_10040E8D0);
    sub_1000B87D4();
    sub_1001DA4D4(&qword_1005068D8, v1, type metadata accessor for SECleanup.Instance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068D0);
  }

  return result;
}

uint64_t sub_1001DA29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECleanup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DA300(uint64_t a1)
{
  v2 = type metadata accessor for SECleanup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001DA35C()
{
  result = qword_1005068F0;
  if (!qword_1005068F0)
  {
    sub_1000692D8(&qword_1005068B0, &qword_10040E8C8);
    sub_1000B8890();
    sub_1001DA4D4(&qword_1005068F8, v1, type metadata accessor for SECleanup.Module);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068F0);
  }

  return result;
}

unint64_t sub_1001DA418()
{
  result = qword_100506900;
  if (!qword_100506900)
  {
    sub_1000692D8(&qword_1005068C8, &qword_10040E8D0);
    sub_1000B8890();
    sub_1001DA4D4(&qword_100506908, v1, type metadata accessor for SECleanup.Instance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506900);
  }

  return result;
}

uint64_t sub_1001DA4D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1001DA51C(void *a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v4 = sub_1002EA4AC(0);
  if (*(v4 + 2))
  {
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
    sub_100069E2C(v5, v6);
  }

  else
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = sub_1002EA4AC(2);
  if (!*(v7 + 2))
  {

    sub_1002EA4AC(1);
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_10;
  }

  v8 = *(v7 + 4);
  v9 = *(v7 + 5);
  v10 = v7;
  sub_100069E2C(v8, v9);

  v11 = sub_1002EA4AC(1);
  v12 = v11;
  if (v6 >> 60 == 15)
  {
    v10 = v9;
LABEL_10:

    goto LABEL_11;
  }

  v40 = v9;
  if (v9 >> 60 == 15)
  {
    v10 = v9;
    goto LABEL_10;
  }

  v27 = *(v11 + 2);
  if (!v27)
  {

    v10 = v9;
LABEL_11:
    if (qword_100501A80 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v35 = v8;
  v37 = v6;
  v39 = v5;
  v28 = (v11 + 40);
  v6 = -v27;
  v8 = -1;
  while (1)
  {
    v5 = v6 + v8;
    if (v6 + v8 == -1)
    {
      v32 = 2;
      goto LABEL_24;
    }

    if (++v8 >= *(v12 + 2))
    {
      break;
    }

    v29 = v28 + 2;
    v30 = *(v28 - 1);
    v10 = *v28;
    sub_100069E2C(v30, *v28);
    v31 = a2(v30, v10);
    sub_10006A178(v30, v10);
    v28 = v29;
    if (v31)
    {
      v32 = 0;
LABEL_24:

      type metadata accessor for SECleanup.Module();
      v33 = swift_allocObject();
      *(v33 + 64) = _swiftEmptyArrayStorage;
      *(v33 + 72) = 0;
      *(v33 + 16) = v39;
      *(v33 + 24) = v37;
      *(v33 + 32) = v35;
      *(v33 + 40) = v40;
      *(v33 + 48) = v12;
      *(v33 + 56) = v5 != -1;
      *(v33 + 57) = v32;
      return;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_12:
  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_100506560);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v38 = v5;
    v41 = v10;
    v34 = v8;
    v36 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136315138;
    v19 = [v14 value];

    if (v19)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      sub_100288788(v20, v22);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;
      sub_10006A178(v20, v22);

      v26 = sub_1002FFA0C(v23, v25, &v42);

      *(v17 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Skipping Module: %s", v17, 0xCu);
      sub_1000752F4(v18);

      sub_10006A2D0(v38, v36);
      sub_10006A2D0(v34, v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10006A2D0(v5, v6);
    sub_10006A2D0(v8, v10);
  }
}

uint64_t sub_1001DA928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x416567616B636170 && a2 == 0xEA00000000004449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004453536465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4941656C75646F6DLL && a2 == 0xEA00000000007344 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696D6F527369 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E49656C75646F6DLL && a2 == 0xEF7365636E617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100466700 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1001DAB9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580577 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004453536465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100464D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100466750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6379636566696CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1001DADF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576696C61 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684104548 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
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

uint64_t sub_1001DAF08(uint64_t *a1)
{
  v36 = sub_100068FC4(&qword_100506910, &qword_10040E8E0);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v36);
  v40 = &v33 - v3;
  v4 = sub_100068FC4(&qword_100506918, &qword_10040E8E8);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_100068FC4(&qword_100506920, &qword_10040E8F0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_100068FC4(&qword_100506928, &qword_10040E8F8);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001DB498();
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(sub_100068FC4(&qword_100506938, &qword_10040E900) + 48);
    *v26 = &type metadata for SECleanup.Status;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    sub_1000752F4(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_1001DB594();
    v29 = v15;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_1001DB540();
    v29 = v15;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_1001DB4EC();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1000752F4(v42);
  return v43;
}

unint64_t sub_1001DB498()
{
  result = qword_100506930;
  if (!qword_100506930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506930);
  }

  return result;
}

unint64_t sub_1001DB4EC()
{
  result = qword_100506940;
  if (!qword_100506940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506940);
  }

  return result;
}

unint64_t sub_1001DB540()
{
  result = qword_100506948;
  if (!qword_100506948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506948);
  }

  return result;
}

unint64_t sub_1001DB594()
{
  result = qword_100506950;
  if (!qword_100506950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506950);
  }

  return result;
}

unint64_t sub_1001DB5E8()
{
  result = qword_100506980;
  if (!qword_100506980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506980);
  }

  return result;
}

uint64_t sub_1001DB63C(unint64_t *a1, void (*a2)(void))
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

unint64_t sub_1001DB6B4()
{
  result = qword_100506990;
  if (!qword_100506990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506990);
  }

  return result;
}

unint64_t sub_1001DB708()
{
  result = qword_100506998;
  if (!qword_100506998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506998);
  }

  return result;
}

uint64_t sub_1001DB7D4(uint64_t a1)
{
  v5 = xmmword_1004098D0;
  v6 = xmmword_1004098D0;
  sub_10007ED68(0, 0xF000000000000000, &off_1004C48A8, a1, &v6);
  sub_10007A4D4(0, 0xF000000000000000, &off_1004C48D0, a1, &v5);
  v2 = v6;
  v3 = v5;
  sub_100069E2C(v6, *(&v6 + 1));
  sub_100069E2C(v3, *(&v3 + 1));
  sub_10006A178(v3, *(&v3 + 1));
  sub_10006A178(v2, *(&v2 + 1));
  return v2;
}

uint64_t sub_1001DBA7C()
{
  v1 = (type metadata accessor for SECleanup() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for SEType();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[8]);

  v7 = *(v0 + v3 + v1[9]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001DBB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECleanup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DBBD4(uint64_t a1, unint64_t a2)
{
  v4 = *(*(type metadata accessor for SECleanup() - 8) + 80);

  return sub_1001D52EC(a1, a2);
}

uint64_t _s19SECSessionAnalyticsC10CountEventOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19SECSessionAnalyticsC10CountEventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001DBE18()
{
  result = qword_1005069A8;
  if (!qword_1005069A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069A8);
  }

  return result;
}

unint64_t sub_1001DBE70()
{
  result = qword_1005069B0;
  if (!qword_1005069B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069B0);
  }

  return result;
}

unint64_t sub_1001DBEC8()
{
  result = qword_1005069B8;
  if (!qword_1005069B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069B8);
  }

  return result;
}

unint64_t sub_1001DBF20()
{
  result = qword_1005069C0;
  if (!qword_1005069C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069C0);
  }

  return result;
}

unint64_t sub_1001DBF78()
{
  result = qword_1005069C8;
  if (!qword_1005069C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069C8);
  }

  return result;
}

unint64_t sub_1001DBFD0()
{
  result = qword_1005069D0;
  if (!qword_1005069D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069D0);
  }

  return result;
}

unint64_t sub_1001DC028()
{
  result = qword_1005069D8;
  if (!qword_1005069D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069D8);
  }

  return result;
}

unint64_t sub_1001DC080()
{
  result = qword_1005069E0;
  if (!qword_1005069E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069E0);
  }

  return result;
}

unint64_t sub_1001DC0D8()
{
  result = qword_1005069E8;
  if (!qword_1005069E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069E8);
  }

  return result;
}

unint64_t sub_1001DC130()
{
  result = qword_1005069F0;
  if (!qword_1005069F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069F0);
  }

  return result;
}

unint64_t sub_1001DC188()
{
  result = qword_1005069F8;
  if (!qword_1005069F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069F8);
  }

  return result;
}

unint64_t sub_1001DC1E0()
{
  result = qword_100506A00;
  if (!qword_100506A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A00);
  }

  return result;
}

unint64_t sub_1001DC238()
{
  result = qword_100506A08;
  if (!qword_100506A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A08);
  }

  return result;
}

unint64_t sub_1001DC290()
{
  result = qword_100506A10;
  if (!qword_100506A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A10);
  }

  return result;
}

unint64_t sub_1001DC2E8()
{
  result = qword_100506A18;
  if (!qword_100506A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A18);
  }

  return result;
}

unint64_t sub_1001DC340()
{
  result = qword_100506A20;
  if (!qword_100506A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A20);
  }

  return result;
}

unint64_t sub_1001DC398()
{
  result = qword_100506A28;
  if (!qword_100506A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A28);
  }

  return result;
}

unint64_t sub_1001DC3F0()
{
  result = qword_100506A30;
  if (!qword_100506A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A30);
  }

  return result;
}

uint64_t sub_1001DC444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100466AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C75646F6DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xE900000000000073)
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

char *sub_1001DC638()
{
  v0 = objc_allocWithZone(type metadata accessor for PassSelectionObserver());
  result = sub_1001DC66C();
  qword_10051B4C8 = result;
  return result;
}

char *sub_1001DC66C()
{
  *(v0 + OBJC_IVAR____TtC10seserviced21PassSelectionObserver_passSelectionExceptionDurationInSeconds) = 0x404E000000000000;
  v1 = sub_1002A37B4(0, 1.0, 60.0);
  v2 = qword_100501AF8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100506A38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Started", v7, 2u);
  }

  return v3;
}

void sub_1001DC774(char a1)
{
  if (qword_100501AF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100506A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received %{BOOL}d status", v5, 8u);
  }

  if (a1)
  {

    sub_1002A3A30();
  }

  else
  {

    sub_1002A3E00();
  }
}

id sub_1001DC8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassSelectionObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001DC900()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100506A38);
  sub_1000958E4(v0, qword_100506A38);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

char *sub_1001DC978()
{
  v0 = objc_allocWithZone(type metadata accessor for LyonGeofenceException());
  result = sub_1001DC9AC();
  qword_10051B4D0 = result;
  return result;
}

char *sub_1001DC9AC()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-v5];
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_geofenceExceptionDurationInSeconds) = 0x4082C00000000000;
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates) = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_forceNotOutOfHome;
  v22[15] = 0;
  v22[14] = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v8 = (*(v3 + 8))(v6, v2);
  *(v1 + v7) = v22[13];
  sub_1003F6FF4(v8);
  v10 = [objc_allocWithZone(*(v9 + 1384)) initWithOptions:8 cachePolicy:0];
  [v10 setInactiveUpdatingLevel:1];
  sub_1003F6FD0(v11);
  v13 = [objc_allocWithZone(*(v12 + 1376)) initWithConfiguration:v10];
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager) = v13;
  v14 = sub_1002A37B4(0, 1.0, 600.0);
  v15 = qword_100501B08;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_100506A80);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Started geofence exception", v20, 2u);
  }

  return v16;
}

void sub_1001DCC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager);
  v2 = [v1 homes];
  sub_1001E06F8(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:

    [v1 setDelegate:0];
    *(v0 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes) = 0;
    return;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setDelegate:0];
    }

    goto LABEL_10;
  }

  __break(1u);
}

char *sub_1001DCD88(uint64_t a1)
{
  v58 = type metadata accessor for UUID();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v58);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v46 - v6;
  *(a1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes) = 1;
  v54 = a1;
  v7 = [*(a1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager) homes];
  sub_1001E06F8(v8);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v52 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
    v53 = v9 & 0xC000000000000001;
    swift_beginAccess();
    v11 = 0;
    v48 = v9 + 32;
    v49 = v9 & 0xFFFFFFFFFFFFFF8;
    v57 = (v2 + 8);
    *&v12 = 136315138;
    v46 = v12;
    v50 = v9;
    v51 = i;
    while (1)
    {
      if (v53)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v49 + 16))
        {
          goto LABEL_49;
        }

        v13 = *(v48 + 8 * v11);
      }

      v61 = v13;
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_47;
      }

      v15 = *(v54 + v52);
      v62 = _swiftEmptyArrayStorage;
      v16 = v15 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v16)
      {
        break;
      }

      v2 = _swiftEmptyArrayStorage;
LABEL_30:

      if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_33;
        }

LABEL_40:
        v32 = v11;

        if (qword_100501B08 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        v2 = sub_1000958E4(v33, qword_100506A80);
        v34 = v61;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v62 = v38;
          *v37 = v46;
          v39 = [v34 uniqueIdentifier];
          v40 = v47;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = UUID.uuidString.getter();
          v2 = v42;
          v43 = v40;
          v9 = v50;
          (*v57)(v43, v58);
          v44 = sub_1002FFA0C(v41, v2, &v62);

          *(v37 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v35, v36, "No homeDelegate registered for UUID %s", v37, 0xCu);
          sub_1000752F4(v38);
        }

        i = v51;
        v11 = v32;
        if (v32 == v51)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (!*(v2 + 16))
        {
          goto LABEL_40;
        }

LABEL_33:
        if ((v2 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v2 + 16))
          {
            goto LABEL_48;
          }

          v30 = *(v2 + 32);
        }

        v31 = v30;

        v2 = v61;
        sub_1001E0150(v31, v61);

        if (v11 == i)
        {
          goto LABEL_51;
        }
      }
    }

    v55 = v11;
    v17 = 0;
    v59 = v15 & 0xFFFFFFFFFFFFFF8;
    v60 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v60)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v59 + 16))
        {
          goto LABEL_46;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v9 = v16;
      v22 = *&v19[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID];
      v23 = *&v19[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8];
      v24 = [v61 uniqueIdentifier];
      v2 = v56;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*v57)(v2, v58);
      if (v22 == v25 && v23 == v27)
      {

        v16 = v9;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v16 = v9;
        if ((v29 & 1) == 0)
        {

          goto LABEL_16;
        }
      }

      v2 = &v62;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = v62[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_16:
      ++v17;
      if (v21 == v16)
      {
        v2 = v62;
        v9 = v50;
        i = v51;
        v11 = v55;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return sub_1001DD3DC();
}

char *sub_1001DD3DC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if (v7)
    {
      v2 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
      swift_beginAccess();
      v1 = *(v0 + v2);
      v45 = v0;
      if (!(v1 >> 62))
      {
        v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:

    v9 = &off_100506000;
    v0 = &off_100506000;
    if (v6)
    {
      v10 = 0;
      v3 = v1 & 0xC000000000000001;
      do
      {
        if (v3)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v11 = *(v1 + 8 * v10 + 32);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_17:
            __break(1u);
            break;
          }
        }

        if (v11[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] == 1)
        {
          v13 = v11[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];

          if (!v13)
          {

            v19 = v45;
            sub_1002A3A30();
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v12 != v6);
    }

    if (qword_100501B08 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_100506A80);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v45;
    if (v17)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No endpoint in home currently", v18, 2u);
    }

    sub_1002A3E00();
LABEL_23:
    v6 = *(v19 + v2);
    v48 = _swiftEmptyArrayStorage;
    v20 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = &off_100506000;
    v46 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_forceNotOutOfHome;

    if (!v20)
    {
      break;
    }

    v2 = 0;
    v3 = v6 & 0xC000000000000001;
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    v22 = &off_100506000;
    while (v3)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        v31 = v48;
        goto LABEL_42;
      }

LABEL_32:
      if (*(v9[362] + v23) != 1 || *(v0[364] + v23) == 2 && (*(v19 + v46) & 1) == 0 || *(v22[365] + v23) == 1)
      {
      }

      else
      {
        v47 = v23;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = v21;
        v25 = v3;
        v26 = v6;
        v27 = v20;
        v28 = v9;
        v29 = v22;
        v30 = v48[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v22 = v29;
        v9 = v28;
        v20 = v27;
        v6 = v26;
        v3 = v25;
        v21 = v24;
        v19 = v45;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v0 = &off_100506000;
      }

      ++v2;
      if (v1 == v20)
      {
        goto LABEL_40;
      }
    }

    if (v2 < *(v21 + 16))
    {
      v23 = *(v6 + 8 * v2 + 32);
      v1 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_42:

  if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_45:
    v48 = _swiftEmptyArrayStorage;
    result = sub_10019F4A4(0, v32 & ~(v32 >> 63), 0);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v35 = v48;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v36 = *(v31 + 8 * v34 + 32);
        }

        v37 = v36;
        v38 = *&v36[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_keyIdentifier];
        v39 = *&v36[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_keyIdentifier + 8];
        sub_100069E2C(v38, v39);

        v48 = v35;
        v41 = v35[2];
        v40 = v35[3];
        if (v41 >= v40 >> 1)
        {
          sub_10019F4A4((v40 > 1), v41 + 1, 1);
          v35 = v48;
        }

        ++v34;
        v35[2] = v41 + 1;
        v42 = &v35[2 * v41];
        v42[4] = v38;
        v42[5] = v39;
      }

      while (v32 != v34);

      goto LABEL_62;
    }

    __break(1u);
  }

  else
  {
    v32 = *(v31 + 16);
    if (v32)
    {
      goto LABEL_45;
    }

LABEL_61:

    v35 = _swiftEmptyArrayStorage;
LABEL_62:
    v43 = sub_1000E0074(v35);

    if (qword_100501BF0 != -1)
    {
      swift_once();
    }

    sub_1002A24A4(2, 2, 2, 2, v43, 2);
  }

  return result;
}

void sub_1001DD9DC(void *a1)
{
  v3 = v1;
  v80 = type metadata accessor for UUID();
  v5 = *(v80 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v80);
  v79 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_34:
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v15 = *(v9 + 8);
  v9 += 8;
  v15(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_5;
  }

  v16 = [a1 homeUUIDString];
  if (!v16)
  {
    if (qword_100501B08 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000958E4(v48, qword_100506A80);
    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82[0] = v53;
      *v52 = 136315138;
      v54 = [v49 publicKeyIdentifier];
      v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v84 = sub_100288788(v55, v57);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v58 = BidirectionalCollection<>.joined(separator:)();
      v60 = v59;
      sub_10006A178(v55, v57);

      v61 = sub_1002FFA0C(v58, v60, v82);

      *(v52 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v50, v51, "No home uuid found for %s, invalid endpoint", v52, 0xCu);
      sub_1000752F4(v53);
    }

    return;
  }

  v17 = v16;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v18;

  v19 = [a1 publicKeyIdentifier];
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = type metadata accessor for LyonHomeDelegate();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID];
  v81 = v9;
  *v25 = v9;
  v25[1] = v8;
  v24[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location] = 3;
  v24[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] = 0;
  v24[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] = 0;
  v26 = &v24[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_keyIdentifier];
  *v26 = v20;
  v26[1] = v22;
  v83.receiver = v24;
  v83.super_class = v23;
  v2 = objc_msgSendSuper2(&v83, "init");
  if (qword_100501B08 != -1)
  {
    goto LABEL_36;
  }

LABEL_5:
  v27 = type metadata accessor for Logger();
  v12 = sub_1000958E4(v27, qword_100506A80);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v82[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1002FFA0C(v81, v8, v82);
    _os_log_impl(&_mh_execute_header, v28, v29, "Home with %s added to list", v30, 0xCu);
    sub_1000752F4(v31);
  }

  v32 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
  swift_beginAccess();
  v33 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v3[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = v8;
    v63 = *((*&v3[v32] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = v9;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v34 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes;
  if (v3[OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes] != 1)
  {
    goto LABEL_47;
  }

  v76 = v3;
  v35 = [*&v3[OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager] homes];
  sub_1001E06F8(v36);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v37;
  v82[0] = _swiftEmptyArrayStorage;
  if (v37 >> 62)
  {
    v64 = v37;
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v38 = v64;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    a1 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
LABEL_12:
      v74[0] = v34;
      v74[1] = v12;
      v75 = v33;
      v3 = v8;
      v39 = 0;
      v77 = v38 & 0xFFFFFFFFFFFFFF8;
      v78 = v38 & 0xC000000000000001;
      v8 = (v5 + 8);
      while (1)
      {
        if (v78)
        {
          v9 = v38;
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v77 + 16))
          {
            goto LABEL_33;
          }

          v9 = v38;
          v41 = *(v38 + 8 * v39 + 32);
        }

        v2 = v41;
        v5 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v12 = a1;
        v42 = [v41 uniqueIdentifier];
        v43 = v79;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = UUID.uuidString.getter();
        v46 = v45;
        (*v8)(v43, v80);
        if (v44 == v81 && v46 == v3)
        {
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v47 & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = *(v82[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_15:
        ++v39;
        a1 = v12;
        v38 = v9;
        if (v5 == v12)
        {
          v62 = v82[0];
          v8 = v3;
          v33 = v75;
          v34 = v74[0];

          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_45;
        }
      }
    }
  }

  v62 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_39:
  if ((v62 & 0x4000000000000000) != 0)
  {
LABEL_45:
    v67 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v76;
    if (v67)
    {
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  v3 = v76;
  if (!*(v62 + 16))
  {
LABEL_46:

LABEL_47:

    v68 = v3;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v82[0] = v72;
      *v71 = 67109378;
      *(v71 + 4) = v3[v34];

      *(v71 + 8) = 2080;
      v73 = sub_1002FFA0C(v81, v8, v82);

      *(v71 + 10) = v73;
      _os_log_impl(&_mh_execute_header, v69, v70, "hasLoadedHomes: %{BOOL}d Could not find home for UUID %s, treating endpoing as having unknown location", v71, 0x12u);
      sub_1000752F4(v72);
    }

    else
    {
    }

    sub_1001DD3DC();

    return;
  }

LABEL_41:

  if ((v62 & 0xC000000000000001) != 0)
  {
    v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_44;
  }

  if (*(v62 + 16))
  {
    v65 = *(v62 + 32);
LABEL_44:
    v66 = v65;

    sub_1001E0150(v33, v66);
    sub_1001DD3DC();

    return;
  }

  __break(1u);
}

void sub_1001DE3A4(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v42[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v10 = [a1 homeUUIDString];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
    swift_beginAccess();
    v16 = *(v1 + v15);

    v17 = sub_1001E0298(v16, v12, v14);
    v19 = v18;

    if (v19)
    {
      swift_endAccess();
      if (qword_100501B08 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000958E4(v20, qword_100506A80);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42[0] = v24;
        *v23 = 136315138;
        v25 = sub_1002FFA0C(v12, v14, v42);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s did not exist, nothing to remove", v23, 0xCu);
        sub_1000752F4(v24);
      }

      else
      {
      }
    }

    else
    {
      v40 = sub_100196704(v17);
      swift_endAccess();

      sub_1001DD3DC();
    }

    return;
  }

  if (qword_100501B08 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_100506A80);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136315138;
    v32 = [v27 publicKeyIdentifier];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v42[3] = sub_100288788(v33, v35);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;
    sub_10006A178(v33, v35);

    v39 = sub_1002FFA0C(v36, v38, v42);

    *(v30 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "No home uuid found for %s, invalid endpoint", v30, 0xCu);
    sub_1000752F4(v31);
  }
}

uint64_t sub_1001DE8B0(uint64_t a1, unint64_t a2)
{
  v37 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
    v10 = v9;
    v11 = _dispatchPreconditionTest(_:)();
    v12 = *(v5 + 8);
    v5 += 8;
    v12(v8, v4);
    if (v11)
    {
      if (*(v2 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_forceNotOutOfHome))
      {
        return 3;
      }

      v5 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
      swift_beginAccess();
      v4 = *(v2 + v5);
      v39 = _swiftEmptyArrayStorage;
      if (!(v4 >> 62))
      {
        v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:

    if (!v8)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(v4 + 8 * v13 + 32);
      }

      v17 = v16;
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = *&v16[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID] == v37 && *&v16[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v2 = &v39;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = a2;
        v15 = v39[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v14;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v13;
      if (v5 == v8)
      {
        v19 = v39;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    if (*(v19 + 16))
    {
      goto LABEL_26;
    }

LABEL_40:

    if (qword_100501B08 == -1)
    {
LABEL_41:
      v32 = type metadata accessor for Logger();
      sub_1000958E4(v32, qword_100506A80);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1002FFA0C(v37, a2, &v39);
        _os_log_impl(&_mh_execute_header, v33, v34, "Could not find homeDelegate for UUID %s, defaulting to unknown location", v35, 0xCu);
        sub_1000752F4(v36);
      }

      return 3;
    }

LABEL_47:
    swift_once();
    goto LABEL_41;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_40;
  }

LABEL_26:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v19 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_100506A80);
  v23 = v21;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v26 = 136315394;
    v38 = v23[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];
    v27 = String.init<A>(describing:)();
    v29 = sub_1002FFA0C(v27, v28, &v39);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1002FFA0C(v37, a2, &v39);
    _os_log_impl(&_mh_execute_header, v24, v25, "Found location %s for home %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v23[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];
  return v30;
}

uint64_t sub_1001DEE48()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates);
}

void sub_1001DEF50()
{
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100506A80);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v9 = v2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];
    v5 = String.init<A>(describing:)();
    v7 = sub_1002FFA0C(v5, v6, &v10);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1002FFA0C(*&v2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID], *&v2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8], &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "Set location to %s for %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1001DF11C()
{
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100506A80);
  v6 = v0;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 67109378;
    *(v3 + 4) = *(&v6->isa + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted);

    *(v3 + 8) = 2080;
    *(v3 + 10) = sub_1002FFA0C(*(&v6->isa + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID), *(&v6[1].isa + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID), &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "Set isUserRestricted state to %{BOOL}d for %s", v3, 0x12u);
    sub_1000752F4(v4);

    v5 = oslog;
  }

  else
  {

    v5 = v6;
  }
}

uint64_t sub_1001DF2A0(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10051B7F0;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1001E0148;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CB320;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_1001DF574(uint64_t a1, id a2)
{
  v3 = [a2 homeLocationStatus];
  v4 = 0x1020003u >> (8 * v3);
  if (v3 >= 4)
  {
    LOBYTE(v4) = 3;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location) = v4;
  sub_1001DEF50();
  if (*(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress) == 1)
  {
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    sub_1001DD3DC();
  }
}

uint64_t sub_1001DF68C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10051B7F0;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1001E0128;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CB2D0;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_1001DF960(void *a1, _BYTE *a2)
{
  v4 = [a1 currentUser];
  v14 = [a1 homeAccessControlForUser:v4];

  if ([v14 isRestrictedGuest])
  {
    v5 = [v14 isRestrictedGuestInAllowedPeriod] ^ 1;
    v6 = &a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted];
    v7 = v14;
    if (a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] == v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = &a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted];
    v7 = v14;
    if ((a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] & 1) == 0)
    {
      goto LABEL_15;
    }

    LOBYTE(v5) = 0;
  }

  *v6 = v5;
  sub_1001DF11C();
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_100506A80);
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1002FFA0C(*&v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID], *&v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8], &v15);
    *(v12 + 12) = 1024;
    *(v12 + 14) = *v6;

    _os_log_impl(&_mh_execute_header, v10, v11, "homeDidUpdateAccessControl for %s, isUserRestricted updated to %{BOOL}d", v12, 0x12u);
    sub_1000752F4(v13);
  }

  else
  {
  }

  v7 = v14;
  if (v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] == 1)
  {
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    sub_1001DD3DC();
    v7 = v14;
  }

LABEL_15:
}

void sub_1001DFCCC(void *a1, const char *a2, char a3)
{
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100506A80);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1002FFA0C(*&v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID], *&v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8], &v12);
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0xCu);
    sub_1000752F4(v11);
  }

  v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] = a3;
  sub_1001DF11C();
  if (v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] == 1)
  {
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    sub_1001DD3DC();
  }
}

id sub_1001DFF58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001E001C()
{
  result = qword_100506C58;
  if (!qword_100506C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506C58);
  }

  return result;
}

uint64_t sub_1001E0070()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100506A80);
  sub_1000958E4(v0, qword_100506A80);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001E00E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E0130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001E0150(uint64_t a1, id a2)
{
  v4 = [a2 homeLocationStatus];
  v5 = 0x1020003u >> (8 * v4);
  if (v4 >= 4)
  {
    LOBYTE(v5) = 3;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location) = v5;
  sub_1001DEF50();
  v6 = [a2 currentUser];
  v7 = [a2 homeAccessControlForUser:v6];

  if ([v7 isRestrictedGuest])
  {
    v8 = [v7 isRestrictedGuestInAllowedPeriod] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted) = v8;
  sub_1001DF11C();
  [a2 setDelegate:a1];
  v9 = [a2 currentUser];
  [v9 setDelegate:a1];
}

unint64_t sub_1001E0298(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    if (*&v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID] == a2 && *&v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8] == a3)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t sub_1001E03B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19[1] = qword_10051B7F0;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1001E0670()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001E06F8(double a1)
{
  result = qword_100506C60;
  if (!qword_100506C60)
  {
    sub_1003F6FAC(a1);
    v3 = *(v2 + 1368);
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100506C60);
  }

  return result;
}

uint64_t sub_1001E0778@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        v11 = a1;
        goto LABEL_23;
      }

      v10 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_29;
      }

      v11 = a1;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = v12;
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v14))
      {
        goto LABEL_31;
      }

      v15 = (v10 - v14 + v13);
      a1 = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v11 = a1;
    v17 = *(a1 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_33;
      }

LABEL_21:
      v21 = *v15;
      v22 = v15[1];
      v23 = v15[2];
      v24 = v15[3];
      v25 = v15[4];
      v26 = v15[5];
      v27 = v15[6];
      v28 = v15[7];
      v29 = v15[8];
      v30 = v15[9];
      v31 = v15[10];
      v32 = v15[11];
      v33 = v15[12];
      v34 = v15[13];
      v35 = v15[14];
      v36 = v15[15];
LABEL_23:
      UUID.init(uuid:)();
      v16 = 0;
      a1 = v11;
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __DataStorage._length.getter();
LABEL_33:
    __break(1u);
LABEL_34:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 1;
LABEL_24:
  sub_10006A178(a1, a2);
  v37 = type metadata accessor for UUID();
  v38 = *(*(v37 - 8) + 56);

  return v38(a3, v16, 1, v37);
}

uint64_t UUID.data()()
{
  v9 = UUID.uuid.getter();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  UUID.uuid.getter();
  return sub_1001E0BBC(&v9, 16);
}

uint64_t UUID.utf8Data(stringCase:)(char a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.uuidString.getter();
  if (a1)
  {
    String.uppercased()();
  }

  else
  {
    String.lowercased()();
  }

  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();

  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1001E0BBC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10008FCD4(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1001E0C70()
{
  result = qword_100506CD0;
  if (!qword_100506CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506CD0);
  }

  return result;
}

uint64_t sub_1001E0CD4()
{
  v1 = v0;
  v14 = *(v0 + 32);
  v2 = v14;
  sub_100068FC4(&unk_100507060, &unk_10040F340);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B240);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1002FFA0C(v3, v5, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "SharedUIClient: Client %s disconnected", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v11 = *(v1 + 32);
  if (v11)
  {

    v12 = v11;
    sub_1001F0EA0(v12, v3, v5);
  }
}

void *sub_1001E0E8C(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v15 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v1[2] = [objc_allocWithZone(SESUIServiceConnection) init];
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v1[3] = 0;
  v1[4] = 0;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1001F33F0(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v1[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC10seserviced27SEStorageManagementUIClient_clientIdentifier;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 32))(v2 + v11, v16, v12);
  return v2;
}

void sub_1001E1140(void *a1)
{
  if ([*(v1 + 16) isConnected])
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B240);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Connection already established";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_20:

    return;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() endpointForMachName:v8 service:v9 instance:0];

  if (!v10)
  {
LABEL_15:
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_10051B240);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Unable to create connection";
    goto LABEL_19;
  }

  v11 = [objc_opt_self() connectionWithEndpoint:v10];
  if (!v11)
  {

    goto LABEL_15;
  }

  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001F1D34;
  *(v14 + 24) = v13;
  v32[4] = sub_1001F1D4C;
  v33 = v14;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_1001E20FC;
  v32[3] = &unk_1004CB620;
  v15 = _Block_copy(v32);
  v16 = v33;

  v17 = a1;

  [v12 configureConnection:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  [v12 activate];
  v34 = &OBJC_PROTOCOL___BSServiceConnectionClient;
  v19 = swift_dynamicCastObjCProtocolConditional();
  v20 = qword_100501938;
  if (!v19)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B240);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to cast connection to client", v29, 2u);
    }

    v30 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v31 = 0xD00000000000001CLL;
    v31[1] = 0x8000000100467180;
    (*(*(v30 - 8) + 104))(v31, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v30);
    swift_willThrow();

    goto LABEL_26;
  }

  isEscapingClosureAtFileLocation = v19;
  v16 = v1;
  v12 = v12;
  if (v20 != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B240);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Activating SEStorageServer connection", v24, 2u);
  }

  [*(v16 + 16) setConnection:isEscapingClosureAtFileLocation];

LABEL_26:
}

uint64_t sub_1001E1744(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 32);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
    *(v6 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
  }

  return a4(a1 & 1);
}

void sub_1001E17A4(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:*(a2 + 40)];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  v7 = sub_1001F152C();
  [a1 setInterface:v7];

  [a1 setInterfaceTarget:a3];
  v15 = sub_1001E19F4;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000A409C;
  v14 = &unk_1004CB648;
  v8 = _Block_copy(&v11);
  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v15 = sub_1001F1D8C;
  v16 = a2;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000A409C;
  v14 = &unk_1004CB670;
  v9 = _Block_copy(&v11);

  [a1 setInvalidationHandler:v9];
  _Block_release(v9);
  v15 = sub_1001F1DB0;
  v16 = a2;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000A409C;
  v14 = &unk_1004CB698;
  v10 = _Block_copy(&v11);

  [a1 setInterruptionHandler:v10];
  _Block_release(v10);
}

void sub_1001E19F4()
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000958E4(v0, qword_10051B240);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SEStorageManagementUIClient Activated", v2, 2u);
  }
}

void sub_1001E1ADC(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state;
  v7 = *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];

  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));

  if (v8 == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B240);
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      osloga = a1;
      v13 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v13 = 136315138;
      v14 = v10;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v10;
      v17 = a2;
      v19 = v18;

      v20 = sub_1002FFA0C(v16, v19, &v45);
      a2 = v17;
      v10 = v42;

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Remote presentation has ended", v13, 0xCu);
      sub_1000752F4(v41);

      a1 = osloga;
    }

    v21 = *&v3[v6];

    os_unfair_lock_lock((v21 + 20));
    *(v21 + 16) = 2;
    os_unfair_lock_unlock((v21 + 20));

    v22 = &v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion];
    v23 = *&v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion];
    if (v23)
    {
      v24 = v22[1];

      v23(a1 & 1, a2);
      sub_1000B2A4C(v23);
      v25 = *v22;
    }

    else
    {
      v25 = 0;
    }

    v37 = v22[1];
    *v22 = 0;
    v22[1] = 0;
    sub_1000B2A4C(v25);
    v38 = &v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
    v39 = *&v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
    v40 = *&v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback + 8];
    *v38 = 0;
    *(v38 + 1) = 0;

    sub_1000B2A4C(v39);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B240);
    v27 = v3;
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      v31 = v27;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_1002FFA0C(v33, v35, &v45);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, oslog, v28, "%s previously invalidated, do not invalidate", v29, 0xCu);
      sub_1000752F4(v30);
    }
  }
}

uint64_t sub_1001E1EDC(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_10051B240);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 2u);
  }

  [*(a2 + 16) invalidate];
  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
    v15 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v8, v14, v15);
    (*(v16 + 56))(v8, 0, 1, v15);
    v17 = v13;
    sub_1001E1ADC(0, v8);

    sub_100075768(v8, &unk_100506F00, &qword_10040BE90);
  }

  v18 = *(a2 + 24);
  *(a2 + 24) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1001E20FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001E2170()
{
  v1 = *(v0 + 56);
  if (![*(v1 + 16) isConnected])
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B240);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = "Shared Client not initialized";
    v17 = 0xD000000000000024;
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_30;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "BSXPCConnection is unexpectedly not setup";
    goto LABEL_29;
  }

  v2 = *(v0 + 56);
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = qword_100501938;
    v5 = *(v2 + 24);
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B240);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_8;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Returning established proxy";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_8:

    v11 = *(v0 + 8);

    return v11(v3);
  }

  if ([*(v1 + 16) launchRemote])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  *(v0 + 16) = v26;
  *(v0 + 32) = v27;
  if (*(v0 + 40))
  {
    sub_100068FC4(&qword_100506F90, &qword_10040F318);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 48);
      v20 = *(v2 + 24);
      *(v2 + 24) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_10051B240);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_8;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Returning new proxy";
      goto LABEL_7;
    }
  }

  else
  {
    sub_100075768(v0 + 16, &qword_100502420, &qword_10040F310);
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v17 = 0xD000000000000016;
  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_10051B240);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = "Connection not setup";
  if (os_log_type_enabled(v14, v15))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Unable to launch remote proxy as Server Protocol";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v14, v15, v19, v18, 2u);
  }

LABEL_30:

  v23 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v24 = v17;
  v24[1] = v16 | 0x8000000000000000;
  (*(*(v23 - 8) + 104))(v24, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v23);
  swift_willThrow();
  v25 = *(v0 + 8);

  return v25();
}

uint64_t SEStorageManagementUIClient.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC10seserviced27SEStorageManagementUIClient_clientIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SEStorageManagementUIClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC10seserviced27SEStorageManagementUIClient_clientIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001E27BC()
{
  result = type metadata accessor for UUID();
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

id sub_1001E2868(uint64_t a1, void *a2)
{
  v3 = v2;
  v53 = a2;
  v51 = a1;
  v52 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state;
  sub_100068FC4(&qword_100507058, &unk_10040F330);
  v13 = swift_allocObject();
  *(v13 + 20) = 0;
  *(v13 + 16) = 0;
  *&v2[v12] = v13;
  v14 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion];
  *v15 = 0;
  *(v15 + 1) = 0;
  v50 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_timeoutCallbackQueue;
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_1001F33F0(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v52);
  *&v2[v50] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_angelBundleId];
  *v16 = 0xD000000000000019;
  *(v16 + 1) = 0x8000000100467200;
  v17 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sceneConfiguration];
  *v17 = 0xD000000000000012;
  *(v17 + 1) = 0x8000000100467220;
  v18 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries] = _swiftEmptyArrayStorage;
  v52 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession;
  *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession] = 0;
  LOBYTE(v55) = 0;
  LOBYTE(v57) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v55 = _swiftEmptyArrayStorage;
  v57 = 0;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v19 = v51;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v55) = 0;
  LOBYTE(v57) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v57 = 0;
  v55 = 0;
  LOBYTE(v56) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v20 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v3[v20], v19, v21);
  v23 = *v16;
  v24 = *(v16 + 1);

  v25 = String._bridgeToObjectiveC()();

  v26 = [objc_opt_self() identityForAngelJobLabel:v25];

  v27 = *v17;
  v28 = *(v17 + 1);
  v29 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v30 = v26;

  v31 = String._bridgeToObjectiveC()();

  v32 = [v29 initWithSceneProvidingProcess:v30 configurationIdentifier:v31];

  v33 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v35;
  AnyHashable.init<A>(_:)();
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v36;
  *(inited + 80) = v37;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 setUserInfo:isa];

  *&v3[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle] = [objc_opt_self() newHandleWithDefinition:v32 configurationContext:v33];
  v39 = *&v3[v52];
  v40 = v53;
  *&v3[v52] = v53;
  v41 = v40;

  v42 = objc_opt_self();
  v55 = 0;
  v43 = [v42 getSPRInspectorAndReturnError:&v55];
  v44 = v55;
  if (!v43)
  {
    v45 = v44;
    _convertNSErrorToError(_:)();
    v53 = v33;

    swift_willThrow();
    v33 = v53;

    v43 = 0;
  }

  *&v3[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_softPOSManager] = v43;
  v46 = type metadata accessor for SEStorageManagementPresenter(0);
  v54.receiver = v3;
  v54.super_class = v46;
  v47 = objc_msgSendSuper2(&v54, "init");

  (*(v22 + 8))(v19, v21);
  return v47;
}

id sub_1001E30C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEStorageManagementPresenter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E3378()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_100078874(319, &qword_100506E70);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1001E3530();
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_100078874(319, &qword_100506E88);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001E3530()
{
  if (!qword_100506E78)
  {
    sub_1000692D8(&unk_100503E60, &qword_10040A3B0);
    v0 = type metadata accessor for UserDefaultBacked();
    if (!v1)
    {
      atomic_store(v0, &qword_100506E78);
    }
  }
}

uint64_t sub_1001E3594@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001E3610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(sub_100068FC4(&unk_100506F00, &qword_10040BE90) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001E3710, 0, 0);
}

uint64_t sub_1001E3710()
{
  v1 = v0[10];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1001E37D0;
  v3 = v0[10];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1003633BC(v5, v4, 0, 0, 1);
}

uint64_t sub_1001E37D0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1001E3BD0;
  }

  else
  {
    v6 = sub_1001E3940;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E3940()
{
  v25 = v0;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B240);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1002FFA0C(v11, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Presentation task timed out", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = v0[10];
  v16 = v0[6];
  v17 = v0[7];
  v18 = v0[5];
  v19 = enum case for SEStorageManagementInternal.Types.ErrorCode.presentationTimedOut(_:);
  v20 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  v18(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001E3BD0()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1001E3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 368) = v30;
  *(v8 + 376) = v31;
  *(v8 + 336) = v28;
  *(v8 + 352) = v29;
  *(v8 + 320) = v27;
  *(v8 + 737) = a8;
  *(v8 + 304) = a6;
  *(v8 + 312) = a7;
  *(v8 + 288) = a4;
  *(v8 + 296) = a5;
  v9 = *(*(sub_100068FC4(&unk_100506F00, &qword_10040BE90) - 8) + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v10 = type metadata accessor for StateInternal.Discriminant();
  *(v8 + 392) = v10;
  v11 = *(v10 - 8);
  *(v8 + 400) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v13 = type metadata accessor for StateInternal();
  *(v8 + 416) = v13;
  v14 = *(v13 - 8);
  *(v8 + 424) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v16 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  *(v8 + 440) = v16;
  v17 = *(v16 - 8);
  *(v8 + 448) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  v19 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  *(v8 + 464) = v19;
  v20 = *(v19 - 8);
  *(v8 + 472) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  v22 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  *(v8 + 488) = v22;
  v23 = *(v22 - 8);
  *(v8 + 496) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_1001E3ECC, 0, 0);
}

uint64_t sub_1001E3ECC()
{
  v1 = v0[36];
  v2 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
  swift_beginAccess();
  sub_1000938D4(v1 + v2, (v0 + 18), &qword_100504A50, &unk_10040F9F0);
  v3 = v0[21];
  v0[64] = v3;
  if (v3)
  {
    v4 = v0[22];
    sub_1000752B0(v0 + 18, v3);
    v5 = *(v3 - 8);
    v6 = v5;
    v0[65] = v5;
    v7 = *(v5 + 64) + 15;
    v0[66] = swift_task_alloc();
    (*(v6 + 16))();
    sub_100075768((v0 + 18), &qword_100504A50, &unk_10040F9F0);
    v8 = async function pointer to dispatch thunk of SEStorageManagementPassProviding.passes.getter[1];
    v9 = swift_task_alloc();
    v0[67] = v9;
    *v9 = v0;
    v9[1] = sub_1001E4108;

    return dispatch thunk of SEStorageManagementPassProviding.passes.getter(v3, v4);
  }

  else
  {
    sub_100075768((v0 + 18), &qword_100504A50, &unk_10040F9F0);
    v10 = v0[36];
    v11 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
    v0[70] = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
    v12 = *(v10 + v11);
    *(v10 + v11) = _swiftEmptyArrayStorage;

    v13 = swift_task_alloc();
    v0[71] = v13;
    *v13 = v0;
    v13[1] = sub_1001E4348;

    return sub_1001F1638();
  }
}

uint64_t sub_1001E4108(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *(*v2 + 520);
  v7 = *v2;
  v4[68] = v1;

  v8 = (v6 + 8);
  v9 = v4[66];
  v10 = v4[64];
  if (v1)
  {
    (*v8)(v9, v10);
    v11 = sub_1001E61C0;
  }

  else
  {
    v4[69] = a1;
    (*v8)(v9, v10);
    v11 = sub_1001E4294;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001E4294()
{
  v1 = v0[66];

  v2 = v0[69];
  v3 = v0[36];
  v4 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
  v0[70] = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v6 = swift_task_alloc();
  v0[71] = v6;
  *v6 = v0;
  v6[1] = sub_1001E4348;

  return sub_1001F1638();
}

uint64_t sub_1001E4348(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v7 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v5 = sub_1001E4724;
  }

  else
  {
    v5 = sub_1001E4460;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E4460()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 737);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 296), *(v0 + 464));
  (*(v4 + 16))(v2, v6, v3);
  *(v0 + 592) = *(v7 + v1);
  if (v5 == 1)
  {

    v8 = swift_task_alloc();
    *(v0 + 600) = v8;
    *v8 = v0;
    v8[1] = sub_1001E4AF8;
    v9 = *(v0 + 320);
    v10 = *(v0 + 288);

    return sub_1001E7CB8(v9);
  }

  else
  {
    v20 = *(v0 + 576);
    v12 = *(v0 + 496);
    v13 = *(v0 + 504);
    v15 = *(v0 + 480);
    v14 = *(v0 + 488);
    v16 = *(v0 + 456);
    v17 = *(v0 + 312);

    SEStorageManagementUIServerXPCParameters.Present.init(deviceConfiguration:displayConfiguration:provisioning:passes:muirfieldApplications:eSimProfiles:secureElementCredentials:credentialConfigs:)();
    sub_1001F33F0(&unk_100506F10, &type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
    v18 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    *(v0 + 696) = v18;
    (*(v12 + 8))(v13, v14);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1001E55E8;
    v19 = swift_continuation_init();
    *(v0 + 136) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001E95B0;
    *(v0 + 104) = &unk_1004CB558;
    *(v0 + 112) = v19;
    [v20 present:v18 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1001E4724()
{
  v38 = v0;
  v1 = v0[73];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v36);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v35);
  }

  v18 = v0[47];
  v17 = v0[48];
  v19 = v0[45];
  v20 = v0[46];
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v37;
  v0[33] = v36;
  v0[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v0[34];
  *v17 = v0[33];
  v17[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v20(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[48];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1001E4AF8(uint64_t a1)
{
  v3 = *(*v2 + 600);
  v4 = *v2;
  v4[76] = a1;
  v4[77] = v1;

  if (v1)
  {
    v5 = v4[74];
    v6 = v4[72];
    v8 = v4[59];
    v7 = v4[60];
    v10 = v4[57];
    v9 = v4[58];
    v11 = v4[55];
    v12 = v4[56];
    swift_unknownObjectRelease();

    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_1001E659C, 0, 0);
  }

  else
  {
    v13 = swift_task_alloc();
    v4[78] = v13;
    *v13 = v4;
    v13[1] = sub_1001E4CDC;
    v14 = v4[36];

    return sub_1001E870C();
  }
}

uint64_t sub_1001E4CDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 624);
  v17 = *v2;
  v3[79] = a1;
  v3[80] = v1;

  if (v1)
  {
    v5 = v3[76];
    v6 = v3[74];
    v7 = v3[72];
    v9 = v3[59];
    v8 = v3[60];
    v11 = v3[57];
    v10 = v3[58];
    v14 = v3 + 55;
    v12 = v3[55];
    v13 = v14[1];
    swift_unknownObjectRelease();

    (*(v13 + 8))(v11, v12);
    (*(v9 + 8))(v8, v10);
    v15 = sub_1001E6970;
  }

  else
  {
    v15 = sub_1001E4E68;
  }

  return _swift_task_switch(v15, 0, 0);
}

uint64_t sub_1001E4E68()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 648) = qword_10051B858;

  return _swift_task_switch(sub_1001E4F00, v1, 0);
}

uint64_t sub_1001E4F00()
{
  v1 = v0[81];
  v2 = v0[80];
  v0[82] = sub_100362B68(0, 0);
  v0[83] = v2;
  if (v2)
  {
    v3 = v0[79];
    v4 = v0[76];
    v5 = v0[74];
    v6 = v0[72];
    v8 = v0[59];
    v7 = v0[60];
    v10 = v0[57];
    v9 = v0[58];
    v11 = v0[55];
    v12 = v0[56];
    swift_unknownObjectRelease();

    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    v13 = sub_1001E6D44;
  }

  else
  {
    v13 = sub_1001E5018;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001E5018()
{
  v32 = v0;
  v1 = v0[82];
  v31 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_22:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[82];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v0[50];
      v29 = v1 & 0xFFFFFFFFFFFFFF8;
      v30 = v1 & 0xC000000000000001;
      v25 = v3 + 32;
      v27 = (v5 + 88);
      v28 = (v0[53] + 8);
      v26 = enum case for StateInternal.Discriminant.installationPending(_:);
      v24 = enum case for StateInternal.Discriminant.installed(_:);
      v22 = enum case for StateInternal.Discriminant.locked(_:);
      v23 = enum case for StateInternal.Discriminant.installationFailed(_:);
      v21 = enum case for StateInternal.Discriminant.terminated(_:);
      v20 = (v5 + 8);
      while (1)
      {
        if (v30)
        {
          v15 = v0[82];
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v16 = v31;
            v17 = v0[82];
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v6 = *(v25 + 8 * v4);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_19;
          }
        }

        v8 = v0[54];
        v10 = v0[51];
        v9 = v0[52];
        v11 = v0[49];
        v12 = v6;
        CredentialInternal.state.getter();
        v1 = v8;
        StateInternal.discriminant.getter();
        (*v28)(v8, v9);
        v13 = (*v27)(v10, v11);
        if (v13 != v26)
        {
          if (v13 == v24)
          {
            goto LABEL_12;
          }

          if (v13 != v23)
          {
            if (v13 == v22 || v13 == v21)
            {
LABEL_12:

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v14 = v31[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v1 = &v31;
              specialized ContiguousArray._endMutation()();
              goto LABEL_6;
            }

            (*v20)(v0[51], v0[49]);
          }
        }

LABEL_6:
        ++v4;
        if (v7 == v2)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_24:
  v0[84] = v16;
  v18 = v0[81];

  return _swift_task_switch(sub_1001E52D8, v18, 0);
}

uint64_t sub_1001E52D8()
{
  v1 = v0[83];
  v2 = v0[81];
  v0[85] = sub_100094934();
  v0[86] = v1;
  if (v1)
  {
    v3 = v0[84];
    v4 = v0[79];
    v5 = v0[76];
    v6 = v0[74];
    v7 = v0[72];
    v8 = v0[59];
    v15 = v0[60];
    v10 = v0[57];
    v9 = v0[58];
    v12 = v0[55];
    v11 = v0[56];
    swift_unknownObjectRelease();

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v15, v9);
    v13 = sub_1001E7118;
  }

  else
  {
    v13 = sub_1001E53F8;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001E53F8()
{
  v1 = v0;
  v15 = v0[85];
  v16 = v0 + 2;
  v14 = v0[84];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[74];
  v17 = v0[72];
  v5 = v0[62];
  v6 = v0[63];
  v7 = v0[60];
  v8 = v0[61];
  v9 = v0[57];
  v10 = v1[39];

  SEStorageManagementUIServerXPCParameters.Present.init(deviceConfiguration:displayConfiguration:provisioning:passes:muirfieldApplications:eSimProfiles:secureElementCredentials:credentialConfigs:)();
  sub_1001F33F0(&unk_100506F10, &type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  v11 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
  v1[87] = v11;
  (*(v5 + 8))(v6, v8);
  v1[2] = v1;
  v1[3] = sub_1001E55E8;
  v12 = swift_continuation_init();
  v1[17] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001E95B0;
  v1[13] = &unk_1004CB558;
  v1[14] = v12;
  [v17 present:v11 completionHandler:?];

  return _swift_continuation_await(v16);
}

uint64_t sub_1001E55E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 704) = v2;
  if (v2)
  {
    v3 = sub_1001E74EC;
  }

  else
  {
    v3 = sub_1001E56F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E56F8()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 576);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v9 = *(v0 + 328);
  v10 = *(v0 + 344);
  swift_unknownObjectRelease();

  v5 = swift_task_alloc();
  *(v0 + 712) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v9;
  *(v5 + 48) = v10;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 720) = v7;
  *v7 = v0;
  v7[1] = sub_1001E5820;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 736, 0, 0, 0xD00000000000006FLL, 0x8000000100466F60, sub_1001F1C7C, v5, &type metadata for Bool);
}

uint64_t sub_1001E5820()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v7 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = sub_1001E78DC;
  }

  else
  {
    v5 = *(v2 + 712);

    v4 = sub_1001E593C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E593C()
{
  v83 = v0;
  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  if (*(v0 + 736) == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 288);
    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B240);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 288);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v81 = v9;
      *v8 = 136315138;
      v10 = v7;
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_1002FFA0C(v12, v14, &v81);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Remote presentation has started", v8, 0xCu);
      sub_1000752F4(v9);
    }

    v17 = *(v0 + 368);
    v16 = *(v0 + 376);
    v18 = *(v0 + 360);
    p_class_meths = *(v0 + 288);
    v19 = *(p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state);

    os_unfair_lock_lock((v19 + 20));
    *(v19 + 16) = 1;
    os_unfair_lock_unlock((v19 + 20));

    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    Task.cancel()();
    v20 = (p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion);
    v21 = *(p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion);
    v22 = *(p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion + 8);
    *v20 = v17;
    v20[1] = v16;

    sub_1000B2A4C(v21);
    if (qword_100501D00 != -1)
    {
      swift_once();
    }

    v23 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
    sub_1000958E4(v23, qword_10050A570);
    swift_beginAccess();
    v24 = UserDefaultBacked.wrappedValue.modify();
    if (*v25 != -1)
    {
      ++*v25;
      v24(v0 + 184, 0);
      swift_endAccess();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_100501938 != -1)
  {
LABEL_22:
    swift_once();
  }

  v26 = *(v0 + 288);
  v27 = type metadata accessor for Logger();
  sub_1000958E4(v27, qword_10051B240);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 288);
    v32 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v81 = v79;
    *v32 = 136315138;
    v33 = v31;
    v34 = [v33 description];
    v35 = v27;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
    v39 = v36;
    v27 = v35;
    v40 = sub_1002FFA0C(v39, v38, &v81);

    *(v32 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unable to present remote for presenter  %s", v32, 0xCu);
    sub_1000752F4(v79);
  }

  v41 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  v42 = swift_allocError();
  *v43 = 0xD000000000000010;
  v43[1] = 0x8000000100466FD0;
  v44 = *(v41 - 8);
  v80 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v78 = *(v44 + 104);
  v78(v43);
  swift_willThrow();
  if (p_class_meths[295] != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 288);
  sub_1000958E4(v27, qword_10051B240);
  v46 = v45;
  swift_errorRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 288);
    v50 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v81 = v77;
    *v50 = 136315394;
    v75 = v48;
    v51 = v41;
    v52 = v44;
    v53 = v49;
    v54 = [v53 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v44 = v52;
    v41 = v51;
    v58 = sub_1002FFA0C(v55, v57, &v81);

    *(v50 + 4) = v58;
    *(v50 + 12) = 2112;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 14) = v59;
    *v76 = v59;
    _os_log_impl(&_mh_execute_header, v47, v75, "%s UIService error %@ while starting session", v50, 0x16u);
    sub_100075768(v76, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v77);
  }

  v61 = *(v0 + 376);
  v60 = *(v0 + 384);
  v62 = *(v0 + 360);
  v63 = *(v0 + 368);
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v64 = v82;
  *(v0 + 264) = v81;
  *(v0 + 272) = v64;
  v65._countAndFlagsBits = 0xD00000000000001ALL;
  v65._object = 0x8000000100466F40;
  String.append(_:)(v65);
  *(v0 + 280) = v42;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v66 = *(v0 + 272);
  *v60 = *(v0 + 264);
  v60[1] = v66;
  (v78)(v60, v80, v41);
  (*(v44 + 56))(v60, 0, 1, v41);
  v63(0, v60);
  sub_100075768(v60, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

LABEL_18:
  v67 = *(v0 + 504);
  v68 = *(v0 + 480);
  v69 = *(v0 + 456);
  v70 = *(v0 + 432);
  v71 = *(v0 + 408);
  v72 = *(v0 + 384);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_1001E61C0()
{
  v39 = v0;
  v1 = v0[66];

  v2 = v0[68];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[36];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v37);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s UIService error %@ while starting session", v9, 0x16u);
    sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v36);
  }

  v19 = v0[47];
  v18 = v0[48];
  v20 = v0[45];
  v21 = v0[46];
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v22 = v38;
  v0[33] = v37;
  v0[34] = v22;
  v23._object = 0x8000000100466F40;
  v23._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v23);
  v0[35] = v2;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v24 = v0[34];
  *v18 = v0[33];
  v18[1] = v24;
  v25 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v26 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v18, v25, v26);
  (*(v27 + 56))(v18, 0, 1, v26);
  v21(0, v18);
  sub_100075768(v18, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v28 = v0[63];
  v29 = v0[60];
  v30 = v0[57];
  v31 = v0[54];
  v32 = v0[51];
  v33 = v0[48];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1001E659C()
{
  v38 = v0;
  v1 = v0[77];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v36);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v35);
  }

  v18 = v0[47];
  v17 = v0[48];
  v19 = v0[45];
  v20 = v0[46];
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v37;
  v0[33] = v36;
  v0[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v0[34];
  *v17 = v0[33];
  v17[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v20(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[48];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1001E6970()
{
  v38 = v0;
  v1 = v0[80];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v36);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v35);
  }

  v18 = v0[47];
  v17 = v0[48];
  v19 = v0[45];
  v20 = v0[46];
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v37;
  v0[33] = v36;
  v0[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v0[34];
  *v17 = v0[33];
  v17[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v20(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[48];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1001E6D44()
{
  v38 = v0;
  v1 = v0[83];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v36);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v35);
  }

  v18 = v0[47];
  v17 = v0[48];
  v19 = v0[45];
  v20 = v0[46];
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v37;
  v0[33] = v36;
  v0[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v0[34];
  *v17 = v0[33];
  v17[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v20(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[48];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1001E7118()
{
  v38 = v0;
  v1 = v0[86];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v36);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v35);
  }

  v18 = v0[47];
  v17 = v0[48];
  v19 = v0[45];
  v20 = v0[46];
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v37;
  v0[33] = v36;
  v0[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v0[34];
  *v17 = v0[33];
  v17[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  v20(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[57];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[48];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1001E74EC()
{
  v41 = v0;
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[72];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[88];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v5 = v0[36];
  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B240);
  v7 = v5;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[36];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v11 = 136315394;
    v13 = v10;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_1002FFA0C(v15, v17, &v39);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s UIService error %@ while starting session", v11, 0x16u);
    sub_100075768(v12, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v38);
  }

  v21 = v0[47];
  v20 = v0[48];
  v22 = v0[45];
  v23 = v0[46];
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v24 = v40;
  v0[33] = v39;
  v0[34] = v24;
  v25._object = 0x8000000100466F40;
  v25._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v25);
  v0[35] = v4;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v26 = v0[34];
  *v20 = v0[33];
  v20[1] = v26;
  v27 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v28 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v20, v27, v28);
  (*(v29 + 56))(v20, 0, 1, v28);
  v23(0, v20);
  sub_100075768(v20, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v30 = v0[63];
  v31 = v0[60];
  v32 = v0[57];
  v33 = v0[54];
  v34 = v0[51];
  v35 = v0[48];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1001E78DC()
{
  v39 = v0;
  v1 = v0[89];

  v2 = v0[91];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[36];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v37);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s UIService error %@ while starting session", v9, 0x16u);
    sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v36);
  }

  v19 = v0[47];
  v18 = v0[48];
  v20 = v0[45];
  v21 = v0[46];
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v22 = v38;
  v0[33] = v37;
  v0[34] = v22;
  v23._object = 0x8000000100466F40;
  v23._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v23);
  v0[35] = v2;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v24 = v0[34];
  *v18 = v0[33];
  v18[1] = v24;
  v25 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v26 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v18, v25, v26);
  (*(v27 + 56))(v18, 0, 1, v26);
  v21(0, v18);
  sub_100075768(v18, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v28 = v0[63];
  v29 = v0[60];
  v30 = v0[57];
  v31 = v0[54];
  v32 = v0[51];
  v33 = v0[48];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1001E7CB8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(sub_100068FC4(&qword_1005031F0, &unk_10040C4C0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = *(*(sub_100068FC4(&qword_100506F60, &qword_10040F2F0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for CredentialType();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001E7E5C, 0, 0);
}

uint64_t sub_1001E7E5C()
{
  v78 = v0;
  v1 = v0[10];
  (*(v0[20] + 104))(v0[21], enum case for CredentialType.muirfield(_:), v0[19]);
  v17 = SESnapshot.usage(ofInstance:)();
  v18 = v0[11];
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_beginAccess();
  sub_100068FC4(&qword_100506F68, &qword_10040F2F8);
  UserDefaultBacked.wrappedValue.getter();
  v19 = v0[8];
  swift_endAccess();
  v20 = *(v19 + 16);

  if (!v20)
  {
    v36 = *(v0[11] + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_softPOSManager);
    if (!v36 || v17 < 1)
    {
      v76 = _swiftEmptyArrayStorage;
LABEL_50:
      v58 = v0[21];
      v60 = v0[17];
      v59 = v0[18];
      v62 = v0[13];
      v61 = v0[14];
      v63 = v0[12];

      v64 = v0[1];

      return v64(v76);
    }

    v65 = v36;
    v37 = [v65 applicationRecords];
    sub_10009393C(0, &qword_100506F70, SPRApplicationRecord_ptr);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v38 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (v39)
      {
LABEL_24:
        v40 = 0;
        v41 = v0[16];
        v71 = v38 & 0xFFFFFFFFFFFFFF8;
        v73 = v38 & 0xC000000000000001;
        v66 = v41;
        v67 = (v41 + 32);
        v68 = (v41 + 48);
        v76 = _swiftEmptyArrayStorage;
        v69 = v39;
        v70 = v38;
        while (1)
        {
          if (v73)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v40 >= *(v71 + 16))
            {
              goto LABEL_45;
            }

            v42 = *(v38 + 8 * v40 + 32);
          }

          v43 = v42;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_44;
          }

          v75 = v40 + 1;
          v44 = [v42 bundleID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v45 = [v43 lastUsedDate];
          if (v45)
          {
            v46 = v0[12];
            v47 = v45;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v48 = 0;
          }

          else
          {
            v48 = 1;
          }

          v49 = v0[15];
          v50 = v0[12];
          v51 = v0[13];
          v52 = type metadata accessor for Date();
          (*(*(v52 - 8) + 56))(v50, v48, 1, v52);
          SEStorageManagementViewModel.ApplicationInfo.init(bundleId:lastUsedDate:)();

          if ((*v68)(v51, 1, v49) == 1)
          {
            sub_100075768(v0[13], &qword_100506F60, &qword_10040F2F0);
          }

          else
          {
            v53 = *v67;
            (*v67)(v0[17], v0[13], v0[15]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = sub_10012FC20(0, *(v76 + 2) + 1, 1, v76);
            }

            v55 = *(v76 + 2);
            v54 = *(v76 + 3);
            if (v55 >= v54 >> 1)
            {
              v76 = sub_10012FC20(v54 > 1, v55 + 1, 1, v76);
            }

            v56 = v0[17];
            v57 = v0[15];
            *(v76 + 2) = v55 + 1;
            v53(&v76[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v55], v56, v57);
          }

          v38 = v70;
          ++v40;
          if (v75 == v69)
          {
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_24;
      }
    }

    v76 = _swiftEmptyArrayStorage;
LABEL_48:

    goto LABEL_49;
  }

  swift_beginAccess();
  UserDefaultBacked.wrappedValue.getter();
  v21 = v0[9];
  swift_endAccess();
  v74 = *(v21 + 16);
  if (!v74)
  {
    v76 = _swiftEmptyArrayStorage;
LABEL_49:

    goto LABEL_50;
  }

  v22 = 0;
  v23 = v0[16];
  v24 = (v23 + 48);
  v72 = v23;
  v25 = (v23 + 32);
  v26 = (v21 + 40);
  v76 = _swiftEmptyArrayStorage;
  while (v22 < *(v21 + 16))
  {
    v28 = v0[14];
    v27 = v0[15];
    v30 = *(v26 - 1);
    v29 = *v26;

    SEStorageManagementViewModel.ApplicationInfo.init(bundleId:)();
    if ((*v24)(v28, 1, v27) == 1)
    {
      sub_100075768(v0[14], &qword_100506F60, &qword_10040F2F0);
    }

    else
    {
      v31 = *v25;
      (*v25)(v0[18], v0[14], v0[15]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_10012FC20(0, *(v76 + 2) + 1, 1, v76);
      }

      v33 = *(v76 + 2);
      v32 = *(v76 + 3);
      if (v33 >= v32 >> 1)
      {
        v76 = sub_10012FC20(v32 > 1, v33 + 1, 1, v76);
      }

      v34 = v0[18];
      v35 = v0[15];
      *(v76 + 2) = v33 + 1;
      v31(&v76[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v33], v34, v35);
    }

    ++v22;
    v26 += 2;
    if (v74 == v22)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  swift_once();
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B240);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v77 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x8000000100467050, &v77);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Unable to get muirfield size", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v7 = v0[21];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  v13 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v14 = 0xD00000000000001CLL;
  v14[1] = 0x8000000100467030;
  (*(*(v13 - 8) + 104))(v14, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v13);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001E870C()
{
  v1[19] = v0;
  v2 = *(*(sub_100068FC4(&unk_100506F30, &unk_10040F2C8) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for SEStorageManagementViewModel.ESimProfile();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64) + 15;
  v1[25] = swift_task_alloc();
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001E8884, 0, 0);
}

uint64_t sub_1001E8884()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v2 + 16))(v1, *(v0 + 152) + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter__useMockESimProfiles, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if ((*(v0 + 248) & 1) == 0)
  {
    v17 = objc_opt_self();
    if ([v17 isConvergedEUICCProduct])
    {
      if (qword_100501938 == -1)
      {
LABEL_7:
        v18 = type metadata accessor for Logger();
        *(v0 + 232) = sub_1000958E4(v18, qword_10051B240);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Converged eUICC enabled platform, fetching telephony plans.", v21, 2u);
        }

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = sub_1001E8FAC;
        v22 = swift_continuation_init();
        *(v0 + 136) = sub_100068FC4(&unk_100506F40, &qword_10040F2D8);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1001EAA44;
        *(v0 + 104) = &unk_1004CB580;
        *(v0 + 112) = v22;
        [v17 telephonyPlansWithCompletion:v0 + 80];
        v11 = v0 + 16;

        return _swift_continuation_await(v11);
      }
    }

    else
    {
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000958E4(v23, qword_10051B240);
      v24 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v17))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v24, v17, "Non-Converged eUICC enabled platform, DO NOT FETCH telephony plans.", v25, 2u);
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v26)
      {
        v16 = _swiftEmptyArrayStorage;
LABEL_34:

        goto LABEL_35;
      }

      v27 = 0;
      v28 = *(v0 + 192);
      v47 = v28;
      v48 = (v28 + 32);
      v49 = (v28 + 48);
      v16 = _swiftEmptyArrayStorage;
      v50 = v26;
      while (1)
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v30 = _swiftEmptyArrayStorage[v27 + 4];
        }

        v31 = v30;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v51 = v16;
        v33 = *(v0 + 176);
        v32 = *(v0 + 184);
        v34 = [v30 iccid];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v31 label];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
        if ((*v49)(v33, 1, v32) == 1)
        {
          sub_100075768(*(v0 + 176), &unk_100506F30, &unk_10040F2C8);
          v29 = v27 + 1;
          v16 = v51;
        }

        else
        {
          v36 = *v48;
          (*v48)(*(v0 + 200), *(v0 + 176), *(v0 + 184));
          v16 = v51;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_10012FC48(0, v51[2] + 1, 1, v51);
          }

          v29 = v27 + 1;
          v17 = v16[2];
          v37 = v16[3];
          if (v17 >= v37 >> 1)
          {
            v16 = sub_10012FC48(v37 > 1, v17 + 1, 1, v16);
          }

          v38 = *(v0 + 200);
          v39 = *(v0 + 184);
          v16[2] = v17 + 1;
          v36(v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v17, v38, v39);
        }

        ++v27;
        if (v29 == v50)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  sub_100068FC4(&qword_1005043B8, &unk_10040F2E0);
  v7 = *(v5 + 72);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100409900;
  SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
  v10 = *(v5 + 48);
  v11 = v10(v6, 1, v4);
  if (v11 == 1)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = v9 + v8;
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(*(v0 + 192) + 32);
  v15(v12, *(v0 + 168), v13);
  SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
  v11 = v10(v14, 1, v13);
  if (v11 == 1)
  {
LABEL_43:
    __break(1u);
    return _swift_continuation_await(v11);
  }

  v15(v12 + v7, *(v0 + 160), *(v0 + 184));
  v16 = v9;
LABEL_35:
  v40 = *(v0 + 224);
  v41 = *(v0 + 200);
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v44 = *(v0 + 160);

  v45 = *(v0 + 8);

  return v45(v16);
}

uint64_t sub_1001E8FAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1001E93C4;
  }

  else
  {
    v3 = sub_1001E90BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E90BC()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v0[24];
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = v1 & 0xC000000000000001;
    v25 = v4;
    v26 = (v4 + 32);
    v27 = (v4 + 48);
    v32 = _swiftEmptyArrayStorage;
    v28 = i;
    v29 = v1;
    while (1)
    {
      if (v31)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v30 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v0[22];
      v9 = v0[23];
      v11 = [v7 iccid];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = [v8 label];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
      if ((*v27)(v10, 1, v9) == 1)
      {
        sub_100075768(v0[22], &unk_100506F30, &unk_10040F2C8);
        v5 = v28;
        v1 = v29;
        v6 = v3 + 1;
      }

      else
      {
        v13 = *v26;
        (*v26)(v0[25], v0[22], v0[23]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_10012FC48(0, *(v32 + 2) + 1, 1, v32);
        }

        v6 = v3 + 1;
        v15 = *(v32 + 2);
        v14 = *(v32 + 3);
        if (v15 >= v14 >> 1)
        {
          v32 = sub_10012FC48(v14 > 1, v15 + 1, 1, v32);
        }

        v16 = v0[25];
        v17 = v0[23];
        *(v32 + 2) = v15 + 1;
        v13(&v32[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v15], v16, v17);
        v5 = v28;
        v1 = v29;
      }

      ++v3;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_21:

  v18 = v0[28];
  v19 = v0[25];
  v21 = v0[21];
  v20 = v0[22];
  v22 = v0[20];

  v23 = v0[1];

  return v23(v32);
}

uint64_t sub_1001E93C4()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to fetch telephony plans", v5, 2u);
  }

  v6 = v0[30];
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[21];
  v10 = v0[22];
  v11 = v0[20];

  v12 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v13 = 0xD00000000000001FLL;
  v13[1] = 0x8000000100467010;
  (*(*(v12 - 8) + 104))(v13, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v12);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001E95B0(uint64_t a1, void *a2)
{
  v3 = sub_1000752B0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1001E965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, NSObject *), uint64_t a6, unint64_t a7)
{
  v20 = a2;
  v21 = a7;
  v12 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_1001E9A38(a3, a4, a5, a6, v21, sub_1001F1C90, v18);
}

uint64_t sub_1001E97D4(char a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000938D4(a2, v7, &unk_100506F00, &qword_10040BE90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
    v17 = a1 & 1;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    v14 = swift_allocError();
    (*(v9 + 16))(v15, v12, v8);
    v16 = v14;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    CheckedContinuation.resume(throwing:)();
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_1001E9A38(uint64_t a1, uint64_t a2, void (*a3)(void, NSObject *), uint64_t a4, unint64_t a5, void (*a6)(void, NSObject *), uint64_t a7)
{
  v8 = v7;
  v143 = a1;
  v144 = a3;
  v136 = a2;
  v13 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v124 - v15);
  v141 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType.Discriminant();
  v17 = *(v141 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v141);
  v140 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v139 = &v124 - v21;
  v138 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType();
  v142 = *(v138 - 8);
  isa = v142[8].isa;
  __chkstk_darwin(v138);
  v137 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v7[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  v25 = *&v7[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  v26 = v24[1];
  *v24 = a6;
  v24[1] = a7;

  sub_1000B2A4C(v25);
  v130 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle;
  [*&v8[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle] registerObserver:v8];
  if (a5)
  {
    v133 = v17;
    v134 = v24;
    v135 = v16;
    sub_10009393C(0, &qword_100506F80, RBSProcessHandle_ptr);
    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() predicateMatchingBundleIdentifier:v27];

    v52 = sub_1001F0324(v28);
    v53 = [objc_opt_self() legacyHandle:v52];
    if (v53)
    {
      v54 = v53;
      v55 = [objc_opt_self() predicateForProcess:v53];
      v56 = v133;
      v57 = v144;
      if (v144)
      {
        if (qword_100501938 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000958E4(v58, qword_10051B240);
        v59 = v8;

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();

        v135 = v60;
        v62 = os_log_type_enabled(v60, v61);
        v63 = v136;
        if (v62)
        {
          v64 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v145[0] = v134;
          *v64 = 136315394;
          *(v64 + 4) = sub_1002FFA0C(v63, v57, v145);
          *(v64 + 12) = 2080;
          v65 = v59;
          v66 = [v65 description];
          v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          v69 = sub_1002FFA0C(v132, v68, v145);

          *(v64 + 14) = v69;
          v70 = v135;
          _os_log_impl(&_mh_execute_header, v135, v61, "Setting scene identifier %s to presenter %s", v64, 0x16u);
          swift_arrayDestroy();

          v56 = v133;
        }

        else
        {
        }

        v85 = String._bridgeToObjectiveC()();
        [v55 setScenePersistentIdentifier:v85];
      }

      v127 = v54;
      v128 = v8;
      v129 = v52;
      v86 = objc_allocWithZone(SBSRemoteAlertPresentationTarget);
      v126 = v55;
      v125 = [v86 initWithTargetPredicate:v55];
      [v125 setShouldDismissInSwitcher:0];
      v87 = 0;
      v88 = *(v143 + 16);
      v135 = v142 + 2;
      v136 = v88;
      LODWORD(v134) = enum case for SEStorageManagementSheet.ProposedCredentialType.Discriminant.vienna(_:);
      v132 = v56 + 1;
      v133 = v56 + 13;
      v131 = v142 + 1;
      v89 = v138;
      v90 = v141;
      v91 = (v56 + 1);
      do
      {
        v92 = v87;
        if (v136 == v87)
        {
          break;
        }

        v93 = v142;
        v94 = v137;
        (v142[2].isa)(v137, v143 + ((LOBYTE(v93[10].isa) + 32) & ~LOBYTE(v93[10].isa)) + v93[9].isa * v87++, v89);
        v95 = v139;
        SEStorageManagementSheet.ProposedCredentialType.discriminant.getter();
        v96 = v140;
        (*v133)(v140, v134, v90);
        LODWORD(v144) = static SEStorageManagementSheet.ProposedCredentialType.Discriminant.== infix(_:_:)();
        v97 = *v91;
        (*v91)(v96, v90);
        v97(v95, v90);
        (v93[1].isa)(v94, v89);
      }

      while ((v144 & 1) == 0);
      v98 = v125;
      [v125 setShouldDismissOnUILock:v136 != v92];
      v99 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
      [v99 setPresentationTarget:v98];
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_1000958E4(v100, qword_10051B240);
      v101 = v128;
      v102 = v128;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v145[0] = v106;
        *v105 = 136315138;
        v107 = v102;
        v108 = [v107 description];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;

        v112 = sub_1002FFA0C(v109, v111, v145);
        v101 = v128;

        *(v105 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v103, v104, "%s activating remote presentation", v105, 0xCu);
        sub_1000752F4(v106);
      }

      v113 = v129;
      v114 = v126;
      v115 = *&v101[v130];
      v116 = v99;
      [v115 activateWithContext:v116];
    }

    else
    {
      v144 = a6;
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000958E4(v71, qword_10051B240);
      v72 = v8;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v129 = v52;
        v143 = v76;
        v145[0] = v76;
        *v75 = 136315394;
        *(v75 + 4) = sub_1002FFA0C(a4, a5, v145);
        *(v75 + 12) = 2080;
        v77 = v72;
        v78 = [v77 description];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = v130;
        v83 = sub_1002FFA0C(v79, v81, v145);

        *(v75 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v73, v74, "Unable to get legacy handle for %s in presenter %s", v75, 0x16u);
        swift_arrayDestroy();
        v52 = v129;

        v84 = v135;
      }

      else
      {

        v84 = v135;
        v82 = v130;
      }

      v84->isa = 0xD000000000000011;
      v84[1].isa = 0x8000000100467070;
      v117 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
      v118 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      v119 = *(v118 - 8);
      (*(v119 + 104))(v84, v117, v118);
      (*(v119 + 56))(v84, 0, 1, v118);
      v144(0, v84);
      sub_100075768(v84, &unk_100506F00, &qword_10040BE90);
      v120 = v134;
      v121 = *v134;
      v122 = v134[1];
      *v134 = 0;
      v120[1] = 0;
      sub_1000B2A4C(v121);
      v123 = *&v8[v82];
      [v123 invalidate];
    }
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B240);
    v30 = v8;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v130;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v145[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = v30;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1002FFA0C(v38, v40, v145);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      v42 = v36;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_1002FFA0C(v44, v46, v145);

      *(v35 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s activating remote presentation without host identifier in presenter %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    v48 = *&v8[v34];
    v49 = objc_allocWithZone(SBSRemoteAlertActivationContext);
    v50 = v48;
    v144 = [v49 init];
    [v50 activateWithContext:v144];

    v51 = v144;
  }
}

uint64_t sub_1001EAA44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10009393C(0, &unk_100506F50, off_1004BE538);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_1001EAB34()
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B240);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1002FFA0C(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s deactivating remote presentation", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v13 = *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle];

  return [v13 invalidate];
}

uint64_t sub_1001EACE8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001EAE08, 0, 0);
}

uint64_t sub_1001EAE08()
{
  v62 = v0;
  v1 = v0;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = v1[16];
  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B240);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[23];
  if (v9)
  {
    v57 = v8;
    v11 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60 = v55;
    buf = v11;
    *v11 = 136315138;
    v12 = SEStorageManagementUIClientXPCParameters.DeletePass.passesToDelete.getter();
    v13 = *(v12 + 16);
    if (v13)
    {
      v54 = v7;
      v14 = v1[19];
      v61 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v13, 0);
      v15 = _swiftEmptyArrayStorage;
      v16 = *(v14 + 16);
      v14 += 16;
      v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v58 = *(v14 + 56);
      v59 = v16;
      v18 = (v14 - 8);
      do
      {
        v19 = v1[20];
        v20 = v1;
        v21 = v1[18];
        v59(v19, v17, v21);
        v22 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
        v24 = v23;
        (*v18)(v19, v21);
        v61 = v15;
        v26 = v15[2];
        v25 = v15[3];
        if (v26 >= v25 >> 1)
        {
          sub_10019F3C0((v25 > 1), v26 + 1, 1);
          v15 = v61;
        }

        v15[2] = v26 + 1;
        v27 = &v15[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v17 += v58;
        --v13;
        v1 = v20;
      }

      while (v13);

      v7 = v54;
    }

    else
    {
    }

    v31 = v1[22];
    v30 = v1[23];
    v32 = v1[21];
    v33 = Array.description.getter();
    v35 = v34;

    (*(v31 + 8))(v30, v32);
    v36 = sub_1002FFA0C(v33, v35, &v60);

    *(buf + 4) = v36;
    _os_log_impl(&_mh_execute_header, v7, v57, "Deleting passes %s", buf, 0xCu);
    sub_1000752F4(v55);
  }

  else
  {
    v28 = v1[21];
    v29 = v1[22];

    (*(v29 + 8))(v10, v28);
  }

  v37 = v1[17];
  v38 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
  swift_beginAccess();
  sub_1000938D4(v37 + v38, (v1 + 2), &qword_100504A50, &unk_10040F9F0);
  if (v1[5])
  {
    v39 = v1[16];
    sub_1000BC094((v1 + 2), (v1 + 7));
    sub_100075768((v1 + 2), &qword_100504A50, &unk_10040F9F0);
    v40 = v1[10];
    v41 = v1[11];
    sub_1000752B0(v1 + 7, v40);
    v42 = SEStorageManagementUIClientXPCParameters.DeletePass.passesToDelete.getter();
    v1[24] = v42;
    v43 = async function pointer to dispatch thunk of SEStorageManagementPassProviding.delete(_:)[1];
    v44 = swift_task_alloc();
    v1[25] = v44;
    *v44 = v1;
    v44[1] = sub_1001EB3CC;

    return dispatch thunk of SEStorageManagementPassProviding.delete(_:)(v42, v40, v41);
  }

  else
  {
    sub_100075768((v1 + 2), &qword_100504A50, &unk_10040F9F0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Missing pass provider", v47, 2u);
    }

    v48 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v49 = 0xD000000000000015;
    v49[1] = 0x8000000100467430;
    (*(*(v48 - 8) + 104))(v49, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v48);
    swift_willThrow();
    v50 = v1[23];
    v51 = v1[20];

    v52 = v1[1];

    return v52();
  }
}

uint64_t sub_1001EB3CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_1001EB594;
  }

  else
  {
    v8 = *(v4 + 192);

    *(v4 + 216) = a1;
    v7 = sub_1001EB4FC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EB4FC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[15];
  sub_1000752F4(v0 + 7);
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001EB594()
{
  v1 = v0[24];

  sub_1000752F4(v0 + 7);
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001EB79C(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  v3[9] = _Block_copy(a2);
  sub_1001F33F0(&unk_100507090, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v14 = swift_task_alloc();
  v3[10] = v14;
  *v14 = v3;
  v14[1] = sub_1001EB984;

  return sub_1001EACE8(v13, v9);
}

uint64_t sub_1001EB984()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v14 = v2[7];
    v13 = v2[8];
    v15 = v2[6];
    sub_1001F33F0(&qword_100507078, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult);
    v12 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    (*(v14 + 8))(v13, v15);
    v11 = v12;
    v10 = 0;
  }

  v17 = v2[8];
  v16 = v2[9];
  v18 = v2[5];
  (v16)[2](v16, v11, v10);

  _Block_release(v16);

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1001EBBC8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for SESnapshot.TargetDevice();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for SERXPCInternalErrors();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001EBDD0, 0, 0);
}

uint64_t sub_1001EBDD0()
{
  v81 = v0;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[5];
  v5 = v0[6];
  v6 = type metadata accessor for Logger();
  v0[23] = sub_1000958E4(v6, qword_10051B240);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  if (!v10)
  {
    v43 = v0[20];
    v42 = v0[21];

    (*(v42 + 8))(v11, v43);
    goto LABEL_19;
  }

  v12 = v0[6];
  v13 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  *v13 = 136315394;
  v14 = v12;
  v15 = [v14 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = sub_1002FFA0C(v16, v18, &v79);

  *(v13 + 4) = v19;
  *(v13 + 12) = 2080;
  v20 = SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.credentialsToDelete.getter();
  if (v20 >> 62)
  {
    v44 = v20;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v44;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_6:
      v22 = v20;
      v80 = _swiftEmptyArrayStorage;
      v23 = sub_10019F420(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        goto LABEL_36;
      }

      v76 = v9;
      v77 = v8;
      v31 = 0;
      v32 = v0[17];
      v33 = v80;
      v34 = v22;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v35 = *(v34 + 8 * v31 + 32);
        }

        v36 = v35;
        v37 = v0[19];
        CredentialInternal.identifier.getter();

        v80 = v33;
        v39 = v33[2];
        v38 = v33[3];
        if (v39 >= v38 >> 1)
        {
          sub_10019F420(v38 > 1, v39 + 1, 1);
          v33 = v80;
        }

        v40 = v0[19];
        v41 = v0[16];
        ++v31;
        v33[2] = v39 + 1;
        (*(v32 + 32))(v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v39, v40, v41);
        v34 = v22;
      }

      while (v21 != v31);

      v8 = v77;
      v9 = v76;
      goto LABEL_18;
    }
  }

LABEL_18:
  v45 = v0[21];
  v46 = v0[22];
  v47 = v0[20];
  v48 = v0[16];
  v49 = Array.description.getter();
  v51 = v50;

  (*(v45 + 8))(v46, v47);
  v52 = sub_1002FFA0C(v49, v51, &v79);

  *(v13 + 14) = v52;
  _os_log_impl(&_mh_execute_header, v8, v9, "%s deleting vienna credentials %s", v13, 0x16u);
  swift_arrayDestroy();

LABEL_19:
  v53 = v0[5];
  v54 = SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.credentialsToDelete.getter();
  if (v54 >> 62)
  {
    v69 = v54;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v69;
    if (v55)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
LABEL_21:
      v56 = v54;
      v80 = _swiftEmptyArrayStorage;
      v23 = sub_10019F420(0, v55 & ~(v55 >> 63), 0);
      if ((v55 & 0x8000000000000000) == 0)
      {
        v57 = 0;
        v58 = v0[17];
        v59 = v80;
        v60 = v56;
        v78 = v56 & 0xC000000000000001;
        v61 = v56;
        do
        {
          if (v78)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v62 = *(v60 + 8 * v57 + 32);
          }

          v63 = v62;
          v64 = v0[18];
          CredentialInternal.identifier.getter();

          v80 = v59;
          v66 = v59[2];
          v65 = v59[3];
          if (v66 >= v65 >> 1)
          {
            sub_10019F420(v65 > 1, v66 + 1, 1);
            v59 = v80;
          }

          v67 = v0[18];
          v68 = v0[16];
          ++v57;
          v59[2] = v66 + 1;
          (*(v58 + 32))(v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v66, v67, v68);
          v60 = v61;
        }

        while (v55 != v57);

        goto LABEL_32;
      }

      __break(1u);
LABEL_36:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_32:
  v70 = v0[6];
  v71 = sub_1000E0348(v59);
  v0[24] = v71;

  v72 = swift_task_alloc();
  v0[25] = v72;
  *(v72 + 16) = v71;
  *(v72 + 24) = v70;
  v73 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v74 = swift_task_alloc();
  v0[26] = v74;
  *v74 = v0;
  v74[1] = sub_1001EC3C4;
  v30 = &type metadata for Bool;
  v28 = sub_1001F318C;
  v23 = (v0 + 30);
  v27 = 0x8000000100467400;
  v24 = 0;
  v25 = 0;
  v26 = 0xD000000000000022;
  v29 = v72;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_1001EC3C4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1001EC824;
  }

  else
  {
    v5 = *(v2 + 192);
    v6 = *(v2 + 200);

    v4 = sub_1001EC4E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EC4E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  type metadata accessor for SERXPCServer();
  (*(v2 + 104))(v1, enum case for SESnapshot.TargetDevice.currentDevice(_:), v3);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1001EC5C8;
  v5 = v0[14];
  v6 = v0[9];

  return sub_1002BC9B0(0, 0xF000000000000000, v6, v5);
}

uint64_t sub_1001EC5C8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 224);
  v7 = *(*v2 + 64);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 72);
  v11 = *(v4 + 56);
  if (v1)
  {
    (*v9)(v10, v11);
    v12 = sub_1001EC8F8;
  }

  else
  {
    *(v5 + 232) = a1;
    (*v9)(v10, v11);
    v12 = sub_1001EC750;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001EC750()
{
  v1 = v0[29];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  v10 = v0[4];
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001EC824()
{
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[27];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001EC8F8()
{
  v1 = v0[23];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = *(v6 + 32);
  v7(v2, v0[14], v5);
  v7(v3, v2, v5);
  v8 = *(v6 + 16);
  v8(v4, v3, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v15 = 138412290;
    sub_1001F33F0(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_allocError();
    v8(v16, v12, v14);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v18 = *(v13 + 8);
    v18(v12, v14);
    *(v15 + 4) = v17;
    *v38 = v17;
    v19 = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error %@ while getting snapshot", v15, 0xCu);
    sub_100075768(v38, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v20 = v0[13];
  v21 = v0[10];
  v22 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  v24 = v23;
  _StringGuts.grow(_:)(31);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v25._countAndFlagsBits = 0x20726F727245;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._object = 0x80000001004673B0;
  v26._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v26);
  v27 = v0[3];
  *v24 = v0[2];
  v24[1] = v27;
  (*(*(v22 - 8) + 104))(v24, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v22);
  swift_willThrow();
  v19(v20, v21);
  v28 = v0[22];
  v30 = v0[18];
  v29 = v0[19];
  v32 = v0[14];
  v31 = v0[15];
  v34 = v0[12];
  v33 = v0[13];
  v35 = v0[9];

  v36 = v0[1];

  return v36();
}

void sub_1001ECCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  type metadata accessor for SECServer();
  v11 = *(a3 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  v14 = v11;
  sub_100143E08(a2, v11, sub_1001F3228, v13);
}

uint64_t sub_1001ECE58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001ED064(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  v3[9] = _Block_copy(a2);
  sub_1001F33F0(&qword_100507088, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v14 = swift_task_alloc();
  v3[10] = v14;
  *v14 = v3;
  v14[1] = sub_1001F3484;

  return sub_1001EBBC8(v13, v9);
}

uint64_t sub_1001ED24C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for SESnapshot.TargetDevice();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for SERXPCInternalErrors();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001ED3F4, 0, 0);
}

uint64_t sub_1001ED3F4()
{
  v59 = v0;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  v0[31] = sub_1000958E4(v2, qword_10051B240);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1002FFA0C(v11, v13, &v58);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s offloading Muirfield", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = v0[16];
  swift_beginAccess();
  sub_100068FC4(&qword_100506F68, &qword_10040F2F8);
  UserDefaultBacked.wrappedValue.getter();
  v16 = v0[12];
  swift_endAccess();
  v17 = *(v16 + 16);

  if (v17)
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[17];
    v0[13] = &off_1004C48F8;
    swift_beginAccess();
    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    type metadata accessor for SERXPCServer();
    (*(v19 + 104))(v18, enum case for SESnapshot.TargetDevice.currentDevice(_:), v20);
    v21 = swift_task_alloc();
    v0[35] = v21;
    *v21 = v0;
    v21[1] = sub_1001EDE50;
    v22 = v0[27];
    v23 = v0[19];
LABEL_7:

    return sub_1002BC9B0(0, 0xF000000000000000, v23, v22);
  }

  v25 = *(v0[16] + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_softPOSManager);
  v0[32] = v25;
  if (v25)
  {
    v0[14] = 0;
    v26 = v25;
    v27 = [v26 removeMuirfieldWithForce:1 error:v0 + 14];
    v28 = v0[14];
    if (v27)
    {
      v29 = v0[20];
      v30 = v0[17];
      v31 = v0[18];
      type metadata accessor for SERXPCServer();
      (*(v31 + 104))(v29, enum case for SESnapshot.TargetDevice.currentDevice(_:), v30);
      v32 = v28;
      v33 = swift_task_alloc();
      v0[33] = v33;
      *v33 = v0;
      v33[1] = sub_1001EDB78;
      v22 = v0[29];
      v23 = v0[20];
      goto LABEL_7;
    }

    v39 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Error %@ encountered when removing Muirfield", v42, 0xCu);
      sub_100075768(v43, &unk_100503F70, &unk_10040B2E0);
    }

    v45 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v46 = 0x6F72724520525053;
    v46[1] = 0xE900000000000072;
    (*(*(v45 - 8) + 104))(v46, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v45);
    swift_willThrow();
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unexpected SoftPOSManager not initialized", v36, 2u);
    }

    v37 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v38 = 0xD000000000000029;
    v38[1] = 0x80000001004673D0;
    (*(*(v37 - 8) + 104))(v38, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v37);
    swift_willThrow();
  }

  v48 = v0[29];
  v47 = v0[30];
  v50 = v0[27];
  v49 = v0[28];
  v52 = v0[25];
  v51 = v0[26];
  v54 = v0[23];
  v53 = v0[24];
  v55 = v0[19];
  v56 = v0[20];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1001EDB78(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 264);
  v7 = *(*v2 + 144);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 160);
  v11 = *(v4 + 136);
  if (v1)
  {
    (*v9)(v10, v11);
    v12 = sub_1001EE53C;
  }

  else
  {
    *(v5 + 272) = a1;
    (*v9)(v10, v11);
    v12 = sub_1001EDD34;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001EDD34()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[15];
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[19];
  v12 = v0[20];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001EDE50(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 280);
  v7 = *(*v2 + 144);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 152);
  v11 = *(v4 + 136);
  if (v1)
  {
    (*v9)(v10, v11);
    v12 = sub_1001EE120;
  }

  else
  {
    *(v5 + 288) = a1;
    (*v9)(v10, v11);
    v12 = sub_1001EE00C;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001EE00C()
{
  v1 = v0[36];
  v2 = v0[15];
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[19];
  v11 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001EE120()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v6 = v0[22];
  v7 = *(v6 + 32);
  v7(v2, v0[27], v5);
  v7(v3, v2, v5);
  v8 = *(v6 + 16);
  v8(v4, v3, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[25];
  v13 = v0[21];
  v14 = v0[22];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v15 = 138412290;
    sub_1001F33F0(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_allocError();
    v8(v16, v12, v13);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v18 = *(v14 + 8);
    v18(v12, v13);
    *(v15 + 4) = v17;
    *v41 = v17;
    v19 = v10;
    v20 = v18;
    _os_log_impl(&_mh_execute_header, v9, v19, "Error %@ while getting snapshot", v15, 0xCu);
    sub_100075768(v41, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v12, v13);
  }

  v21 = v0[26];
  v22 = v0[21];
  v23 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  v25 = v24;
  _StringGuts.grow(_:)(31);
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v26._countAndFlagsBits = 0x20726F727245;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._object = 0x80000001004673B0;
  v27._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v27);
  v28 = v0[9];
  *v25 = v0[8];
  v25[1] = v28;
  (*(*(v23 - 8) + 104))(v25, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v23);
  swift_willThrow();
  v20(v21, v22);
  v30 = v0[29];
  v29 = v0[30];
  v32 = v0[27];
  v31 = v0[28];
  v34 = v0[25];
  v33 = v0[26];
  v36 = v0[23];
  v35 = v0[24];
  v37 = v0[19];
  v38 = v0[20];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1001EE53C()
{
  v1 = v0[30];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = *(v5 + 32);
  v6(v1, v0[29], v4);
  v6(v2, v1, v4);
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v14 = 138412290;
    sub_1001F33F0(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_allocError();
    v7(v15, v11, v13);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    v17 = *(v12 + 8);
    v17(v11, v13);
    *(v14 + 4) = v16;
    *v40 = v16;
    v18 = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error %@ while getting snapshot", v14, 0xCu);
    sub_100075768(v40, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v19 = v0[32];
  v20 = v0[24];
  v21 = v0[21];
  v22 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  v24 = v23;
  _StringGuts.grow(_:)(31);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v25._countAndFlagsBits = 0x20726F727245;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._object = 0x80000001004673B0;
  v26._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v26);
  v27 = v0[11];
  *v24 = v0[10];
  v24[1] = v27;
  (*(*(v22 - 8) + 104))(v24, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v22);
  swift_willThrow();

  v18(v20, v21);
  v29 = v0[29];
  v28 = v0[30];
  v31 = v0[27];
  v30 = v0[28];
  v33 = v0[25];
  v32 = v0[26];
  v35 = v0[23];
  v34 = v0[24];
  v36 = v0[19];
  v37 = v0[20];

  v38 = v0[1];

  return v38();
}

uint64_t sub_1001EEAD4(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[5] = v8;
  v2[6] = _Block_copy(a1);
  a2;
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_1001EEBF4;

  return sub_1001ED24C(v8);
}

uint64_t sub_1001EEBF4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[3];
    sub_1001F33F0(&qword_100507078, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult);
    v12 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    (*(v10 + 8))(v9, v11);
    v8 = v12;
    v7 = 0;
    v6 = v12;
  }

  v13 = v2[6];
  (v13)[2](v13, v8, v7);

  _Block_release(v13);

  v14 = *(v5 + 8);

  return v14();
}

uint64_t sub_1001EEDCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100068FC4(&unk_100506F00, &qword_10040BE90) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001EEF2C, 0, 0);
}

uint64_t sub_1001EEF2C()
{
  v84 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 != 2)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    v26 = v0[2];
    v27 = v0[3];
    v28 = type metadata accessor for Logger();
    sub_1000958E4(v28, qword_10051B240);
    (*(v24 + 16))(v23, v26, v25);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[10];
    v34 = v0[11];
    v35 = v0[9];
    if (v32)
    {
      v36 = v0[8];
      v82 = v31;
      v37 = v0[6];
      v80 = v0[5];
      log = v30;
      v38 = v0[3];
      v79 = v0[9];
      v39 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v39 = 136315394;
      v40 = v38;
      v41 = [v40 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_1002FFA0C(v42, v44, v83);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      SEStorageManagementUIClientXPCParameters.Dismiss.context.getter();
      v46 = SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.description.getter();
      v48 = v47;
      (*(v37 + 8))(v36, v80);
      (*(v33 + 8))(v34, v79);
      v49 = sub_1002FFA0C(v46, v48, v83);

      *(v39 + 14) = v49;
      _os_log_impl(&_mh_execute_header, log, v82, "%s Storage sheet dismissed with parameter %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    v51 = v0[6];
    v50 = v0[7];
    v52 = v0[5];
    v53 = v0[2];
    SEStorageManagementUIClientXPCParameters.Dismiss.context.getter();
    v54 = (*(v51 + 88))(v50, v52);
    if (v54 == enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.cancelled(_:))
    {
      v56 = v0[3];
      v55 = v0[4];
      v57 = enum case for SEStorageManagementInternal.Types.ErrorCode.cancelled(_:);
      v58 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      v59 = *(v58 - 8);
      (*(v59 + 104))(v55, v57, v58);
      (*(v59 + 56))(v55, 0, 1, v58);
    }

    else
    {
      if (v54 == enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.sufficientSpace(_:))
      {
        v61 = v0[3];
        v55 = v0[4];
        v62 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
        (*(*(v62 - 8) + 56))(v55, 1, 1, v62);
        v60 = 1;
        goto LABEL_17;
      }

      if (v54 != enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.insufficientSpace(_:))
      {
        v72 = v0[6];
        v71 = v0[7];
        v74 = v0[4];
        v73 = v0[5];
        v75 = v0[3];
        *v74 = 0x206E776F6E6B6E75;
        v74[1] = 0xEF747865746E6F63;
        v76 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
        v77 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
        v78 = *(v77 - 8);
        (*(v78 + 104))(v74, v76, v77);
        (*(v78 + 56))(v74, 0, 1, v77);
        sub_1001E1ADC(0, v74);
        sub_100075768(v74, &unk_100506F00, &qword_10040BE90);
        (*(v72 + 8))(v71, v73);
        goto LABEL_18;
      }

      v69 = v0[3];
      v55 = v0[4];
      v70 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      (*(*(v70 - 8) + 56))(v55, 1, 1, v70);
    }

    v60 = 0;
LABEL_17:
    sub_1001E1ADC(v60, v55);
    sub_100075768(v55, &unk_100506F00, &qword_10040BE90);
LABEL_18:
    v63 = v0[11];
    v65 = v0[7];
    v64 = v0[8];
    v66 = v0[3];
    v67 = v0[4];
    sub_1001EAB34();
    sub_1001F03E8();

    v22 = v0[1];
    goto LABEL_19;
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1002FFA0C(0x287373696D736964, 0xEB00000000293A5FLL, v83);
    *(v9 + 12) = 2080;
    v10 = v8;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, v83);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %s Unable to dismiss presentation out of active state", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[11];
  v17 = v0[7];
  v18 = v0[8];
  v19 = v0[4];
  v20 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v21 = 0xD000000000000010;
  v21[1] = 0x8000000100466FD0;
  (*(*(v20 - 8) + 104))(v21, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v20);
  swift_willThrow();

  v22 = v0[1];
LABEL_19:

  return v22();
}

uint64_t sub_1001EF910(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_1001F33F0(&qword_100507070, &type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1001EFA90;

  return sub_1001EEDCC(v9);
}

uint64_t sub_1001EFA90()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

unint64_t sub_1001EFDBC()
{
  result = qword_100506EF0;
  if (!qword_100506EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506EF0);
  }

  return result;
}

uint64_t sub_1001EFE58(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10012E598;

  return v7();
}

uint64_t sub_1001EFF40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000C288C;

  return v8();
}

uint64_t sub_1001F0028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000938D4(a3, v25 - v11, &qword_100504250, &qword_10040D610);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100075768(v12, &qword_100504250, &qword_10040D610);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100075768(a3, &qword_100504250, &qword_10040D610);

    return v23;
  }

LABEL_8:
  sub_100075768(a3, &qword_100504250, &qword_10040D610);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1001F0324(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1001F03E8()
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000958E4(v0, qword_10051B240);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    if (qword_10051B4D8)
    {
      v5 = *(qword_10051B4D8 + 32);
    }

    sub_100068FC4(&unk_100507060, &unk_10040F340);
    v6 = String.init<A>(describing:)();
    v8 = sub_1002FFA0C(v6, v7, &v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "SharedUIClient: Invalidating presenter %s", v3, 0xCu);
    sub_1000752F4(v4);
  }

  if (qword_10051B4D8)
  {
    [*(qword_10051B4D8 + 16) invalidate];
    if (qword_10051B4D8)
    {
      v9 = *(qword_10051B4D8 + 24);
      *(qword_10051B4D8 + 24) = 0;
      swift_unknownObjectRelease();
      if (qword_10051B4D8)
      {
        v10 = *(qword_10051B4D8 + 32);
        *(qword_10051B4D8 + 32) = 0;
      }
    }
  }

  qword_10051B4D8 = 0;
}

uint64_t sub_1001F05BC(char *a1, void (*a2)(char *))
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v42 - v6);
  v8 = *&a1[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];

  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  os_unfair_lock_unlock((v8 + 20));

  if (v9 == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B240);
    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v14 = 136315394;
      *(v14 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v45);
      *(v14 + 12) = 2080;
      v15 = v11;
      v16 = a2;
      v17 = [v15 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v13;
      v19 = v18;
      v21 = v20;

      a2 = v16;
      v22 = sub_1002FFA0C(v19, v21, &v45);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v43, "%s %s voluntary dismissal from client", v14, 0x16u);
      swift_arrayDestroy();
    }

    v23 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
    v24 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v7, v23, v24);
    v26 = *(v25 + 56);
    v26(v7, 0, 1, v24);
    sub_1001E1ADC(0, v7);
    sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
    sub_1001EAB34();
    sub_1001F03E8();
    v26(v7, 1, 1, v24);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B240);
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v31 = 136315394;
      *(v31 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v45);
      *(v31 + 12) = 2080;
      v32 = v28;
      v33 = [v32 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_1002FFA0C(v34, v36, &v45);

      *(v31 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s %s Unable to dismiss presentation out of active state", v31, 0x16u);
      swift_arrayDestroy();
    }

    *v7 = 0xD000000000000010;
    v7[1] = 0x80000001004674A0;
    v38 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v39 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v7, v38, v39);
    (*(v40 + 56))(v7, 0, 1, v39);
  }

  sub_10014A878(v7, a2);
  return sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
}

uint64_t sub_1001F0B78(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = qword_10051B4D8;
  if (qword_10051B4D8)
  {

    if (static UUID.== infix(_:_:)())
    {
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
        *(v8 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;

        v10 = *(v7 + 32);
        if (v10)
        {

          v11 = v10;
          sub_1001F05BC(v11, a2);

          if (qword_10051B4D8)
          {
            [*(qword_10051B4D8 + 16) invalidate];
          }

          qword_10051B4D8 = 0;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B240);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Cannot dismiss presentation that's not in progress", v15, 2u);
  }

  v16 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
  v17 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_10014A878(v6, a2);
  sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
}

uint64_t sub_1001F0EA0(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  v10 = *&a1[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];

  os_unfair_lock_lock((v10 + 20));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 20));

  if (v11 == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = sub_1000958E4(v12, qword_10051B240);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v54 = v13;
      v18 = v17;
      v53 = swift_slowAlloc();
      v55 = v53;
      *v18 = 136315394;
      *(v18 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v55);
      *(v18 + 12) = 2080;
      v19 = a3;
      v20 = v14;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      HIDWORD(v52) = v16;
      v23 = v22;
      v24 = a2;
      v26 = v25;

      a3 = v19;
      v27 = sub_1002FFA0C(v23, v26, &v55);
      a2 = v24;

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, BYTE4(v52), "%s %s voluntary dismissal from client", v18, 0x16u);
      swift_arrayDestroy();
    }

    v28 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
    v29 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v9, v28, v29);
    (*(v30 + 56))(v9, 0, 1, v29);
    sub_1001E1ADC(0, v9);
    sub_100075768(v9, &unk_100506F00, &qword_10040BE90);
    sub_1001EAB34();
    sub_1001F03E8();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1002FFA0C(a2, a3, &v55);
      _os_log_impl(&_mh_execute_header, v31, v32, "Client %s disconnect invalidation complete", v33, 0xCu);
      sub_1000752F4(v34);
    }

    return sub_1001F03E8();
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000958E4(v36, qword_10051B240);
    v37 = a1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v54 = a2;
      v41 = v40;
      v55 = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v55);
      *(v41 + 12) = 2080;
      v42 = v37;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_1002FFA0C(v44, v46, &v55);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s %s Unable to dismiss presentation out of active state", v41, 0x16u);
      swift_arrayDestroy();

      a2 = v54;
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1002FFA0C(a2, a3, &v55);
      _os_log_impl(&_mh_execute_header, v48, v49, "Client %s disconnect invalidation complete", v50, 0xCu);
      sub_1000752F4(v51);
    }

    return sub_1001F03E8();
  }
}

id sub_1001F152C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP16SESUIServiceCore35SEStorageManagementUIServerProtocol_];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP16SESUIServiceCore35SEStorageManagementUIClientProtocol_];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  return v1;
}

uint64_t sub_1001F1654()
{
  v1 = qword_10051B4D8;
  v0[2] = qword_10051B4D8;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1001F1924;

    return sub_1001E2150();
  }

  else
  {
    v4 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    v5[1] = 0x8000000100467090;
    (*(*(v4 - 8) + 104))(v5, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v4);
    swift_willThrow();
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B240);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Proxy error %@", v9, 0xCu);
      sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);
    }

    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1001F1924(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_1001F1AB4;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_1001F1A4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F1A4C()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_1001F1AB4()
{
  v1 = v0[2];

  v2 = v0[4];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Proxy error %@", v6, 0xCu);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);
  }

  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F1C90(char a1, uint64_t a2)
{
  v4 = *(*(sub_100068FC4(&qword_100506F78, &qword_10040F300) - 8) + 80);

  return sub_1001E97D4(a1, a2);
}

uint64_t sub_1001F1D4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001F1D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F1DD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v41[-v8];
  v10 = &v0[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  v11 = *&v0[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  if (v11)
  {
    v12 = v10[1];
    v13 = qword_100501938;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B240);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v18 = 136315394;
      *(v18 + 4) = sub_1002FFA0C(0xD000000000000020, 0x8000000100467380, &v44);
      *(v18 + 12) = 2080;
      v19 = v15;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v17;
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, &v44);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v42, "%s Remote scene activated for session %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v11(1, v9);
    sub_1000B2A4C(v11);
    sub_100075768(v9, &unk_100506F00, &qword_10040BE90);
    v26 = *v10;
    v27 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    return sub_1000B2A4C(v26);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B240);
    v30 = v0;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v33 = 136315394;
      *(v33 + 4) = sub_1002FFA0C(0xD000000000000020, 0x8000000100467380, &v44);
      *(v33 + 12) = 2080;
      (*(v2 + 16))(v5, &v30[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id], v1);
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v2 + 8))(v5, v1);
      v37 = sub_1002FFA0C(v34, v36, &v44);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s Session %s missing start UI session callback, ending session", v33, 0x16u);
      swift_arrayDestroy();
    }

    *v9 = 0xD000000000000019;
    v9[1] = 0x8000000100467360;
    v38 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v39 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v9, v38, v39);
    (*(v40 + 56))(v9, 0, 1, v39);
    sub_1001E1ADC(0, v9);
    return sub_100075768(v9, &unk_100506F00, &qword_10040BE90);
  }
}

uint64_t sub_1001F2390()
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B240);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1002FFA0C(0xD000000000000022, 0x8000000100467330, &v13);
    *(v5 + 12) = 2080;
    v6 = v2;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_1002FFA0C(v8, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Session %s, remote UI deactivated", v5, 0x16u);
    swift_arrayDestroy();
  }

  return sub_1001F03E8();
}

uint64_t sub_1001F2564(uint64_t a1)
{
  v3 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v52[-v5];
  v59 = type metadata accessor for UUID();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59);
  v58 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B240);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v60 = v57;
    *v14 = 136315394;
    *(v14 + 4) = sub_1002FFA0C(0xD00000000000002CLL, 0x8000000100467300, &v60);
    *(v14 + 12) = 2080;
    v15 = *(v7 + 16);
    v56 = v12;
    v16 = v58;
    LODWORD(v55) = v13;
    v17 = v6;
    v18 = v7;
    v19 = v59;
    v15(v58, &v11[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id], v59);
    v20 = UUID.uuidString.getter();
    v21 = v11;
    v22 = a1;
    v24 = v23;
    v25 = *(v18 + 8);
    v26 = v19;
    v7 = v18;
    v6 = v17;
    v25(v16, v26);
    v27 = sub_1002FFA0C(v20, v24, &v60);
    v28 = v22;
    v11 = v21;

    *(v14 + 14) = v27;
    v29 = v56;
    _os_log_impl(&_mh_execute_header, v56, v55, "%s Remote UI invalidated for session %s", v14, 0x16u);
    swift_arrayDestroy();

    if (!v28)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v30 = *&v11[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  if (v30)
  {
    v31 = *&v11[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback + 8];
    v57 = v11;
    v32 = v11;
    swift_errorRetain();
    sub_100113B54(v30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v60 = v56;
      *v35 = 136315394;
      v36 = *(v7 + 16);
      v54 = v33;
      v37 = v58;
      v53 = v34;
      v38 = v59;
      v36(v58, &v32[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id], v59);
      v39 = UUID.uuidString.getter();
      v41 = v40;
      (*(v7 + 8))(v37, v38);
      v42 = sub_1002FFA0C(v39, v41, &v60);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v43;
      v33 = v54;
      v44 = v55;
      *v55 = v43;
      _os_log_impl(&_mh_execute_header, v33, v53, "Remote UI invalidated before session %s is started with error %@", v35, 0x16u);
      sub_100075768(v44, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v56);
    }

    *v6 = 0xD00000000000002ALL;
    v6[1] = 0x80000001004672D0;
    v45 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v46 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v6, v45, v46);
    (*(v47 + 56))(v6, 0, 1, v46);
    v30(0, v6);
    sub_1000B2A4C(v30);

    sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
  }

LABEL_11:
  v48 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
  v49 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v6, v48, v49);
  (*(v50 + 56))(v6, 0, 1, v49);
  sub_1001E1ADC(0, v6);
  return sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
}

uint64_t sub_1001F2BDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_1001EF910(v2, v3, v4);
}

uint64_t sub_1001F2C90()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10012E598;

  return sub_1001EFE58(v2, v3, v5);
}

uint64_t sub_1001F2D50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001EFF40(a1, v4, v5, v7);
}

uint64_t sub_1001F2E1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001F2E54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10012E598;

  return sub_1001892F0(a1, v5);
}

uint64_t sub_1001F2F0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C288C;

  return sub_1001892F0(a1, v5);
}

uint64_t sub_1001F2FDC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1001F3024()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10012E598;

  return sub_1001EEAD4(v2, v3);
}

uint64_t sub_1001F30D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_1001ED064(v2, v3, v4);
}

uint64_t sub_1001F3194()
{
  v1 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001F3228(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100068FC4(&qword_100506F78, &qword_10040F300) - 8) + 80);

  return sub_1001ECE58(a1, a2);
}

uint64_t sub_1001F32B4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F32FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C288C;

  return sub_1001EB79C(v2, v3, v4);
}

uint64_t sub_1001F33B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001F33F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F3488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v123 = a7;
  v118 = a5;
  v119 = a6;
  v124 = a3;
  v125 = a4;
  v120 = a8;
  v10 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v117 = &v110 - v12;
  v122 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord();
  v13 = *(*(v122 - 8) + 64);
  v14 = __chkstk_darwin(v122);
  v116 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v121 = &v110 - v16;
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v18;
  *(inited + 72) = kSecAttrAccount;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrService;
  v19 = kSecClass;
  v20 = kSecClassGenericPassword;
  v21 = kSecAttrAccount;

  v22 = kSecAttrService;
  v23 = v124;
  v24 = v125;
  *(inited + 120) = Data.base64EncodedString(options:)(0);
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD000000000000033;
  *(inited + 168) = 0x8000000100467500;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v25 = kSecAttrAccessGroup;
  v26 = kSecAttrSynchronizable;
  v27 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  if (qword_100501B20 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v28 = v147;
  v29 = sub_10031CB74(v27, 1);
  if (v28)
  {

    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000958E4(v31, qword_10051B4E0);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v126[0] = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_1002FFA0C(v36, v37, v126);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error querying regular keychain item : %s", v34, 0xCu);
      sub_1000752F4(v35);
    }

    v39 = 26;
    LOBYTE(v126[0]) = 26;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

LABEL_16:
    *v123 = v39;
    return result;
  }

  v41 = v29;
  v42 = v30;

  if (v42 >> 60 == 15)
  {
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000958E4(v43, qword_10051B4E0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Recovery item not found (yet)", v46, 2u);
    }

    v39 = 17;
    LOBYTE(v126[0]) = 17;
    sub_10018C6D8();
    swift_willThrowTypedImpl();
    result = sub_10006A2D0(v41, v42);
    goto LABEL_16;
  }

  v47 = type metadata accessor for PropertyListDecoder();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_100069E2C(v41, v42);
  PropertyListDecoder.init()();
  sub_1001F97FC(&qword_100507160, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v50 = v121;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v115 = v41;
  v147 = v42;

  v51 = v120;
  sub_1001F9794(v50, v120, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v52 = *(v51 + 48);
  v53 = *(v51 + 56);
  sub_10026E498(v128);
  *&v126[0] = v52;
  *(&v126[0] + 1) = v53;
  sub_100069E2C(v52, v53);
  v54 = sub_1001A93E0(v126, v128);
  v145 = v129;
  v146 = v130;
  v55 = v54;
  sub_10018C454(&v145);
  v144 = v131;
  sub_100075768(&v144, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(*&v126[0], *(&v126[0] + 1));
  sub_10026F064(v55, v132);
  v143 = v132[4];
  sub_10026E324(v133);
  v126[0] = v143;
  sub_1001F6C50(&v143, v127);
  sub_1001F6C50(&v143, v127);
  v56 = sub_1001A93E0(v126, v133);
  v141 = v134;
  v142 = v135;
  v57 = v56;
  sub_10018C454(&v141);
  v140 = v136;
  sub_100075768(&v140, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(*&v126[0], *(&v126[0] + 1));
  sub_10026F834(v57, v137);
  sub_10011116C(&v143);
  sub_1001F6CAC(v132);
  v58 = v138;
  v59 = v139;
  v61 = v118;
  v60 = v119;
  if ((sub_10008FB4C(v138, v139, v118, v119) & 1) == 0)
  {
    v112 = v59;
    v113 = v58;
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    v65 = sub_1000958E4(v64, qword_10051B4E0);
    v66 = v24;
    v67 = v23;
    sub_100069E2C(v23, v66);
    sub_1001F6D00(v137, v126);
    sub_100069E2C(v61, v60);
    v121 = v65;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    sub_10006A178(v67, v66);
    sub_1001F6D5C(v137);
    sub_10006A178(v61, v60);
    v114 = v69;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v126[0] = v111;
      *v70 = 136315650;
      v71 = sub_100288788(v67, v66);
      v124 = 0;
      v127[0] = v71;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v125 = v68;
      v72 = BidirectionalCollection<>.joined(separator:)();
      v74 = v73;

      v75 = sub_1002FFA0C(v72, v74, v126);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v127[0] = sub_100288788(v113, v112);
      v76 = BidirectionalCollection<>.joined(separator:)();
      v78 = v77;

      v79 = sub_1002FFA0C(v76, v78, v126);

      *(v70 + 14) = v79;
      *(v70 + 22) = 2080;
      v127[0] = sub_100288788(v118, v119);
      v80 = BidirectionalCollection<>.joined(separator:)();
      v82 = v81;

      v83 = sub_1002FFA0C(v80, v82, v126);

      *(v70 + 24) = v83;
      v84 = v125;
      _os_log_impl(&_mh_execute_header, v125, v114, "Recovery blob for %s has DSID %s accounts has %s", v70, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v85 = v115;
    v86 = v147;
    sub_100069E2C(v115, v147);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    sub_10006A2D0(v85, v86);
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v126[0] = v90;
      *v89 = 136315138;
      v91 = Data.base64EncodedString(options:)(0);
      v92 = sub_1002FFA0C(v91._countAndFlagsBits, v91._object, v126);

      *(v89 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v87, v88, "Recovery blob: %s", v89, 0xCu);
      sub_1000752F4(v90);
    }

    v93 = v116;
    sub_1001F6DB0(v51, v116, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v126[0] = v97;
      *v96 = 136315138;
      v98 = *(v93 + 48);
      v99 = *(v93 + 56);
      v100 = Data.base64EncodedString(options:)(0);
      sub_1001F9734(v93, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
      v101 = sub_1002FFA0C(v100._countAndFlagsBits, v100._object, v126);

      *(v96 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v94, v95, "Encrypted blob: %s", v96, 0xCu);
      sub_1000752F4(v97);
    }

    else
    {

      sub_1001F9734(v93, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
    }

    v102 = v147;
    v103 = v117;
    sub_1001F6E18(v51 + *(v122 + 36), v117);
    v104 = type metadata accessor for CreationMetadata(0);
    v105 = (*(*(v104 - 8) + 48))(v103, 1, v104);
    sub_100075768(v103, &qword_100504F08, &unk_10040DE20);
    if (v105 == 1)
    {
      v39 = 29;
    }

    else
    {
      v106 = objc_opt_self();
      v107 = String._bridgeToObjectiveC()();
      v108 = String._bridgeToObjectiveC()();
      [v106 requestTapToRadar:v107 client:v108];

      v39 = 33;
    }

    LOBYTE(v126[0]) = v39;
    sub_10018C6D8();
    swift_willThrowTypedImpl();
    v109 = v115;
    sub_10006A2D0(v115, v102);
    sub_10006A2D0(v109, v102);
    sub_1001F9734(v51, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
    result = sub_1001F6D5C(v137);
    goto LABEL_16;
  }

  v62 = v115;
  v63 = v147;
  sub_10006A2D0(v115, v147);
  sub_10006A2D0(v62, v63);
  return sub_1001F6D5C(v137);
}
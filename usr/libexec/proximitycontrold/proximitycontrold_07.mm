uint64_t sub_10009FCD4(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return 0x6964656D20746F4ELL;
  }

  v5 = a1;
  if ([v5 direction] != 1)
  {

    return 0x6873757020746F4ELL;
  }

  [v5 playbackState];
  if (!MRMediaRemotePlaybackStateIsAdvancing())
  {

    return 0x6176646120746F4ELL;
  }

  v6 = *(*(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity) + 40);
  v7 = *(v6 + 24);

  CurrentValueSubject.value.getter();
  v8 = v15;
  if (v15 == 1)
  {
    v9 = *(v6 + 16);
    CurrentValueSubject.value.getter();

    v8 = v16;
    if (v16)
    {
LABEL_7:

      return 0xD000000000000013;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_7;
    }
  }

  v10 = *(*(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = [v10 proxDeviceState];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  [v11 playbackState];
  if (MRMediaRemotePlaybackStateIsAdvancing())
  {

    return 0xD000000000000011;
  }

  if ([v12 playbackState])
  {

LABEL_17:
    return 0;
  }

  v13 = [v12 destination];
  v14 = [v13 origin];

  if (!v14)
  {

    return 0xD000000000000056;
  }

  return 0;
}

BOOL sub_10009FF24(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10009FCD4(a1, a2 & 1, a4);
  v9 = v8;
  if (v8)
  {
    v33 = v7;
    if (qword_100338EB8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10033E8F8);

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v12, v13))
    {

      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = sub_100017494(v33, v9, &v34);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    v16 = sub_1000092A0();
    v18 = sub_100017494(v16, v17, &v34);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    v19 = sub_100078EF8(a1, a2 & 1, a3);
    v21 = sub_100017494(v19, v20, &v34);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Determined policy: Not Automatic: (%s). %s, %s", v14, 0x20u);
    swift_arrayDestroy();

    goto LABEL_10;
  }

  if (qword_100338EB8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003078(v22, qword_10033E8F8);

  v23 = a1;
  v12 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v24))
  {
    v25 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_1000092A0();
    v28 = sub_100017494(v26, v27, &v34);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = sub_100078EF8(a1, a2 & 1, a3);
    v31 = sub_100017494(v29, v30, &v34);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v12, v24, "Determined policy: Automatic! %s, %s", v25, 0x16u);
    swift_arrayDestroy();

LABEL_10:
  }

LABEL_12:

  return v9 == 0;
}

uint64_t sub_1000A02D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

uint64_t sub_1000A030C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 64);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v29 = v1;
    v5 = *(v2 - 1);
    v4 = *v2;
    v6 = *(v2 - 8);
    v7 = *(v2 - 3);
    v8 = *(v2 - 2);
    v9 = *(v2 - 4);
    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100271B90;
    v11 = objc_allocWithZone(NIRegionPredicate);

    v12 = String._bridgeToObjectiveC()();
    LODWORD(v13) = v5;
    v14 = [v11 initWithName:v12 regionSizeCategory:0 radius:v8 preferredUpdateRate:v6 requiresUserIntent:v13];

    *(inited + 32) = v14;
    v15 = objc_allocWithZone(NIRegionPredicate);
    v16 = String._bridgeToObjectiveC()();
    LODWORD(v17) = v4;
    v18 = [v15 initWithName:v16 regionSizeCategory:10 radius:v8 preferredUpdateRate:v6 requiresUserIntent:v17];

    *(inited + 40) = v18;

    v19 = v3 >> 62;
    if (v3 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v28 + 2;
      if (__OFADD__(v28, 2))
      {
LABEL_20:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 + 2;
      if (__OFADD__(v20, 2))
      {
        goto LABEL_20;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v19)
      {
        goto LABEL_12;
      }

      v23 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v21 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v19)
      {
LABEL_12:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_13;
      }

      v23 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v24 = *(v23 + 16);
LABEL_13:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
LABEL_14:
    if (((*(v23 + 24) >> 1) - *(v23 + 16)) < 2)
    {
      break;
    }

    sub_1000A0CE0();
    swift_arrayInitWithCopy();

    v25 = *(v23 + 16);
    v26 = __OFADD__(v25, 2);
    v27 = v25 + 2;
    if (v26)
    {
      goto LABEL_24;
    }

    *(v23 + 16) = v27;
    v2 += 14;
    v1 = v29 - 1;
    if (v29 == 1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000A057C()
{
  sub_100035D04(&qword_10033E978, &unk_100274B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100274B70;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 1592);
  sub_10005FA50();
  v3 = v2;

  v4 = *(qword_10038B0B8 + 1600);
  sub_10005FA50();
  v6 = v5;

  v7 = *(qword_10038B0B8 + 1608);
  sub_10005FA50();
  v9 = v8;

  v51 = 0;
  *(inited + 32) = 0x746F6F7465756C62;
  *(inited + 40) = 0xE900000000000068;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 60) = v3;
  *(inited + 64) = v6;
  *(inited + 68) = v9;
  *(inited + 72) = 256;
  *(inited + 80) = 5;
  v10 = *(qword_10038B0B8 + 1616);
  sub_10005FA50();
  v12 = v11;

  v13 = *(qword_10038B0B8 + 1616);
  sub_10005FA50();
  v15 = v14;

  v16 = *(qword_10038B0B8 + 1616);
  sub_10005FA50();
  v18 = v17;

  v52 = 0;
  *(inited + 88) = 0x6F69746163756465;
  *(inited + 96) = 0xE90000000000006ELL;
  *(inited + 104) = 2;
  *(inited + 112) = 0;
  *(inited + 116) = v12;
  *(inited + 120) = v15;
  *(inited + 124) = v18;
  *(inited + 128) = 0;
  *(inited + 136) = 2;
  v19 = *(qword_10038B0B8 + 1624);
  sub_10005FA50();
  v21 = v20;

  v22 = *(qword_10038B0B8 + 1632);
  sub_10005FA50();
  v24 = v23;

  v25 = *(qword_10038B0B8 + 1640);
  sub_10005FA50();
  v27 = v26;

  v53 = 0;
  *(inited + 144) = 0x65747563657865;
  *(inited + 152) = 0xE700000000000000;
  *(inited + 160) = 2;
  *(inited + 168) = 0;
  *(inited + 172) = v21;
  *(inited + 176) = v24;
  *(inited + 180) = v27;
  *(inited + 184) = 256;
  *(inited + 192) = 6;
  v28 = *(qword_10038B0B8 + 1648);
  sub_10005FA50();
  v30 = v29;

  v31 = *(qword_10038B0B8 + 1656);
  sub_10005FA50();
  v33 = v32;

  v34 = *(qword_10038B0B8 + 1664);
  sub_10005FA50();
  v36 = v35;

  v56 = 0;
  *(inited + 200) = 0x6D726177657270;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = 1;
  *(inited + 224) = 0;
  *(inited + 225) = v57;
  *(inited + 227) = v58;
  *(inited + 228) = v30;
  *(inited + 232) = v33;
  *(inited + 236) = v36;
  *(inited + 240) = 0;
  *(inited + 242) = v54;
  *(inited + 246) = v55;
  *(inited + 248) = 4;
  v37 = *(qword_10038B0B8 + 1672);
  sub_10005FA50();
  v39 = v38;

  v40 = *(qword_10038B0B8 + 1680);
  sub_10005FA50();
  v42 = v41;

  v43 = *(qword_10038B0B8 + 1688);
  sub_10005FA50();
  v45 = v44;

  v61 = 0;
  strcpy((inited + 256), "prewarmInner");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  *(inited + 272) = 2;
  *(inited + 280) = 0;
  *(inited + 281) = v62;
  *(inited + 283) = v63;
  *(inited + 284) = v39;
  *(inited + 288) = v42;
  *(inited + 292) = v45;
  *(inited + 296) = 256;
  *(inited + 298) = v59;
  *(inited + 302) = v60;
  *(inited + 304) = 3;
  sub_1000A0BCC(v49);
  v46 = v49[1];
  *(inited + 312) = v49[0];
  *(inited + 328) = v46;
  *(inited + 344) = v49[2];
  *(inited + 360) = v50;
  v47 = sub_1000A030C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_10038B030 = v47;
  return result;
}

uint64_t sub_1000A09A8()
{
  v1 = [v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2 == 0x746F6F7465756C62 && v4 == 0xE900000000000068;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v2 == 0x6D726177657270 && v4 == 0xE700000000000000;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v2 == 0x496D726177657270 ? (v8 = v4 == 0xEC00000072656E6ELL) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      return 1;
    }

    else if (v2 == 0x6F69746163756465 && v4 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    else if (v2 == 0x72656767697274 && v4 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 3;
    }

    else if (v2 == 0x65747563657865 && v4 == 0xE700000000000000)
    {

      return 4;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

void sub_1000A0BCC(uint64_t a1@<X8>)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B0B8;
  v3 = *(qword_10038B0B8 + 904);
  v4 = sub_1000031CC();

  v5 = v2[212];
  sub_10005FA50();
  v7 = v6;

  v8 = v2[213];
  sub_10005FA50();
  v10 = v9;

  v11 = v2[214];
  sub_10005FA50();
  v13 = v12;

  *a1 = 0x72656767697274;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 2;
  *(a1 + 24) = v4 & 1;
  *(a1 + 28) = v7;
  *(a1 + 32) = v10;
  *(a1 + 36) = v13;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

unint64_t sub_1000A0CE0()
{
  result = qword_10033E980;
  if (!qword_10033E980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033E980);
  }

  return result;
}

__n128 sub_1000A0D2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A0D48(uint64_t a1, int a2)
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

uint64_t sub_1000A0D90(uint64_t result, int a2, int a3)
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

__n128 sub_1000A0DEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A0E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A0E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1000A0EC0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A0F78()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E988);
  sub_100003078(v0, qword_10033E988);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A0FF0()
{
  v1 = 0x657463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574736575716572;
  }
}

uint64_t sub_1000A1054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A3110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A107C(uint64_t a1)
{
  v2 = sub_1000A37AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A10B8(uint64_t a1)
{
  v2 = sub_1000A37AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A10F4(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_100035D04(&qword_10033EA98, &qword_100274E40);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_100035D04(&qword_10033EAA0, &qword_100274E48);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100035D04(&qword_10033EAA8, &qword_100274E50);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_100035D04(&qword_10033EAB0, &unk_100274E58);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000A37AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1000A3854();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1000A3800();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1000A38A8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1000A1480(uint64_t a1)
{
  v2 = sub_1000A3854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A14BC(uint64_t a1)
{
  v2 = sub_1000A3854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A14F8(uint64_t a1)
{
  v2 = sub_1000A3800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A1534(uint64_t a1)
{
  v2 = sub_1000A3800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A1570(uint64_t a1)
{
  v2 = sub_1000A38A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A15AC(uint64_t a1)
{
  v2 = sub_1000A38A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A15E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A323C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1000A1630()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E988);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD000000000000013, 0x800000010029A860, &v22);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = *(v1 + qword_10033E9A8);
  if (v8)
  {
    v9 = *(v1 + qword_10033E9A8);
  }

  else
  {
    v10 = *(v1 + qword_10038B040);
    v11 = *(v1 + qword_10038B040 + 8);
    v12 = objc_allocWithZone(NSXPCConnection);

    v13 = String._bridgeToObjectiveC()();

    v9 = [v12 initWithMachServiceName:v13 options:0];
  }

  v26 = sub_1000A1A40;
  v27 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100018AB8;
  v25 = &unk_1003049B8;
  v14 = _Block_copy(&v22);
  v15 = v8;
  [v9 setInterruptionHandler:v14];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v2 + 80);
  *(v17 + 32) = *(v2 + 96);
  *(v17 + 40) = *(v2 + 104);
  *(v17 + 56) = *(v2 + 120);
  *(v17 + 64) = v16;
  v26 = sub_1000A30FC;
  v27 = v17;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100018AB8;
  v25 = &unk_100304A30;
  v18 = _Block_copy(&v22);

  [v9 setInvalidationHandler:v18];
  _Block_release(v18);
  v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP17proximitycontrold15XPCLinkProtocol_];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  [v9 _setQueue:qword_10038B5B8];
  v20 = v19;
  [v9 setExportedInterface:v20];
  [v9 setExportedObject:v1];
  [v9 setRemoteObjectInterface:v20];

  return v9;
}

void sub_1000A1A40()
{
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033E988);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### XPC interrupted", v2, 2u);
  }
}

uint64_t sub_1000A1B28()
{
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033E988);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "XPC invalidated", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + qword_10033E9B8);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000A1C64(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1000A1CBC(a1, a2, a3);
  return v9;
}

void *sub_1000A1CBC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  UUID.init()();
  v9 = qword_10033E9A0;
  v10 = *(v8 + 88);
  type metadata accessor for PassthroughSubject();
  *(v4 + v9) = PassthroughSubject.__allocating_init()();
  *(v4 + qword_10033E9B0) = 0;
  v11 = qword_10033E9B8;
  v12 = sub_100035D04(&qword_10033EAC0, &unk_100274E70);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v4 + v11) = PassthroughSubject.init()();
  *(v4 + qword_10033E9C0) = 0;
  *(v4 + qword_10033E9A8) = a1;
  v15 = (v4 + qword_10038B040);
  *v15 = a2;
  v15[1] = a3;
  v16 = qword_100338EC8;
  v17 = a1;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_10033E988);
  v19 = v17;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = v19;
    v24 = String.init<A>(describing:)();
    v26 = sub_100017494(v24, v25, &v29);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = sub_100017494(a2, a3, &v29);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Init: role=%s, machService=%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1000A1F6C()
{
  v1 = v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = qword_10038B038;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = *(v1 + qword_10038B040 + 8);

  v9 = *(v1 + qword_10033E9A0);

  v10 = *(v1 + qword_10033E9B0);

  v11 = *(v1 + qword_10033E9B8);

  v12 = *(v1 + qword_10033E9C0);

  return v1;
}

uint64_t sub_1000A20F0()
{
  sub_1000A1F6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000A2148(uint64_t a1, unint64_t a2)
{
  v29 = a1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033E988);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = v5;
    v19 = v9;
    v20 = a2;
    v21 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100017494(0xD000000000000019, 0x800000010029A8B0, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_10000903C(v21);
    a2 = v20;
    v9 = v19;
    v5 = v18;
    v8 = v28;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = *(v4 + 80);
  *(v23 + 32) = *(v4 + 96);
  *(v23 + 40) = *(v4 + 104);
  *(v23 + 56) = *(v4 + 120);
  *(v23 + 64) = v22;
  v24 = v29;
  *(v23 + 72) = v29;
  *(v23 + 80) = a2;
  aBlock[4] = sub_1000A38FC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100304A80;
  v25 = _Block_copy(aBlock);

  sub_10006DA04(v24, a2);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000A3934(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v31 + 8))(v8, v5);
  (*(v9 + 8))(v12, v30);
}

uint64_t sub_1000A25DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = result;
    sub_100058D2C();
    (*(v13 + 56))(v12, 0, 1, a5);
    (*(v13 + 32))(v18, v12, a5);
    if (qword_100338EC8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003078(v20, qword_10033E988);
    v21 = v34;
    (*(v13 + 16))(v34, v18, a5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = v24;
      v36 = swift_slowAlloc();
      v37 = v36;
      *v24 = 136315138;
      v25 = sub_10013FD74(v21, a5);
      v27 = v26;
      v28 = *(v13 + 8);
      v28(v21, a5);
      v29 = sub_100017494(v25, v27, &v37);

      v30 = v33;
      *(v33 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Received output: %s", v30, 0xCu);
      sub_10000903C(v36);
    }

    else
    {

      v28 = *(v13 + 8);
      v28(v21, a5);
    }

    v31 = *(v35 + qword_10033E9A0);
    PassthroughSubject.send(_:)();
    v28(v18, a5);
  }

  return result;
}

uint64_t sub_1000A2C98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_10038B038;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1000A2D18()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100035D04(&qword_10033EAB8, &qword_100274E68);
    if (swift_dynamicCast())
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v13 handleWithSerializedObject:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100338EC8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003078(v8, qword_10033E988);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "### Could not cast rmeoteObjectProxy to XPCLinkProtocol", v11, 2u);
      }
    }
  }

  else
  {
    if (qword_100338EC8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_10033E988);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "### No connection", v7, 2u);
    }
  }
}

uint64_t sub_1000A2FAC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v5 = a3;

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  a4(v6, v8);
  sub_100010708(v6, v8);
}

unint64_t sub_1000A3060()
{
  result = qword_10033EA48;
  if (!qword_10033EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA48);
  }

  return result;
}

uint64_t sub_1000A30FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_1000A1B28();
}

uint64_t sub_1000A3110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
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

uint64_t sub_1000A323C(uint64_t *a1)
{
  v36 = sub_100035D04(&qword_10033EA50, &qword_100274E18);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v36);
  v38 = &v31 - v3;
  v37 = sub_100035D04(&qword_10033EA58, &qword_100274E20);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v37);
  v6 = &v31 - v5;
  v7 = sub_100035D04(&qword_10033EA60, &qword_100274E28);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_100035D04(&qword_10033EA68, &unk_100274E30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_10000EBC0(a1, v16);
  sub_1000A37AC();
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_100218008();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1000A3854();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000903C(v40);
          return v12;
        }

        v45 = 2;
        sub_1000A3800();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1000A38A8();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v12 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v27 = &type metadata for XPCConnectionEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_10000903C(v40);
  return v12;
}

unint64_t sub_1000A37AC()
{
  result = qword_10033EA70;
  if (!qword_10033EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA70);
  }

  return result;
}

unint64_t sub_1000A3800()
{
  result = qword_10033EA80;
  if (!qword_10033EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA80);
  }

  return result;
}

unint64_t sub_1000A3854()
{
  result = qword_10033EA88;
  if (!qword_10033EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA88);
  }

  return result;
}

unint64_t sub_1000A38A8()
{
  result = qword_10033EA90;
  if (!qword_10033EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA90);
  }

  return result;
}

uint64_t sub_1000A38FC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  return sub_1000A25DC(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 16), *(v0 + 24));
}

uint64_t sub_1000A3934(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A39C0()
{
  result = qword_10033EAC8;
  if (!qword_10033EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAC8);
  }

  return result;
}

unint64_t sub_1000A3A18()
{
  result = qword_10033EAD0;
  if (!qword_10033EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAD0);
  }

  return result;
}

unint64_t sub_1000A3A70()
{
  result = qword_10033EAD8;
  if (!qword_10033EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAD8);
  }

  return result;
}

unint64_t sub_1000A3AC8()
{
  result = qword_10033EAE0;
  if (!qword_10033EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAE0);
  }

  return result;
}

unint64_t sub_1000A3B20()
{
  result = qword_10033EAE8;
  if (!qword_10033EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAE8);
  }

  return result;
}

unint64_t sub_1000A3B78()
{
  result = qword_10033EAF0;
  if (!qword_10033EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAF0);
  }

  return result;
}

unint64_t sub_1000A3BD0()
{
  result = qword_10033EAF8;
  if (!qword_10033EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAF8);
  }

  return result;
}

unint64_t sub_1000A3C28()
{
  result = qword_10033EB00;
  if (!qword_10033EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EB00);
  }

  return result;
}

unint64_t sub_1000A3C80()
{
  result = qword_10033EB08;
  if (!qword_10033EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EB08);
  }

  return result;
}

uint64_t sub_1000A3D08()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033EB10);
  sub_100003078(v0, qword_10033EB10);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A3D8C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000A3E64()
{
  v1 = v0;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033EB10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 24);
  swift_unknownObjectRelease();
  v7 = *(v1 + 40);

  v8 = *(v1 + 48);

  return v1;
}

uint64_t sub_1000A3F64()
{
  sub_1000A3E64();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000A4020()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v10[0] = *(*(v0 + 40) + 32);
    sub_100035D04(&qword_100339828, &unk_100270300);
    sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
    v2 = v0;
    v3 = Publisher.eraseToAnyPublisher()();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v2 + 16);
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
    v10[0] = v3;
    v10[1] = sub_1000AD1A8;
    v10[2] = v4;
    v10[3] = v6;
    v10[4] = v7;
    type metadata accessor for PeerActivityObserver();
    swift_allocObject();

    v1 = sub_1000B4144(v10);
    v8 = *(v2 + 48);
    *(v2 + 48) = v1;
  }

  return v1;
}

uint64_t sub_1000A415C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1000A7578(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *sub_1000A41CC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DeviceActivity();
  swift_allocObject();
  v1[3] = sub_1001F16D0();
  type metadata accessor for ActivityProxyClientContext();
  sub_1000AD420(&qword_10033EE40, v4, type metadata accessor for ActivityProxyClientContext);
  KeyPath = swift_getKeyPath();
  v6 = sub_100035D04(&qword_10033EE48, &qword_100275438);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_10006B8D4(KeyPath, 0);

  v2[4] = v9;
  v10 = swift_getKeyPath();
  v11 = sub_100035D04(&qword_10033EE50, &qword_100275468);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_10006BB04(v10, 0);

  v2[5] = v14;
  v2[6] = 0;
  v2[7] = &_swiftEmptySetSingleton;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10033EB10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
  }

  v2[2] = a1;
  return v2;
}

void *sub_1000A43DC()
{
  v1 = v0;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033EB10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  v10 = v1[6];

  v11 = v1[7];

  return v1;
}

uint64_t sub_1000A44EC()
{
  sub_1000A43DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A4544()
{
  v103 = sub_100035D04(&qword_10033EEF0, &qword_100275518);
  v102 = *(v103 - 8);
  v0 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v100 - v1;
  v2 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v126 = *(v2 - 8);
  v3 = *(v126 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v127 = v5;
  v128 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v129 = &v100 - v6;
  v117 = sub_100035D04(&qword_10033EEF8, &unk_100275528);
  v116 = *(v117 - 8);
  v7 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v100 - v8;
  v9 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v111 = &v100 - v11;
  v112 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v110 = *(v112 - 8);
  v12 = *(v110 + 64);
  __chkstk_darwin(v112);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100035D04(&qword_10033EF00, &qword_100275538);
  v113 = *(v114 - 8);
  v15 = *(v113 + 64);
  v16 = __chkstk_darwin(v114);
  v104 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = &v100 - v18;
  v19 = type metadata accessor for Logger();
  v132 = *(v19 - 8);
  v20 = *(v132 + 64);
  __chkstk_darwin(v19);
  v131 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100035D04(&qword_10033EF08, &qword_100275540);
  v107 = *(v108 - 8);
  v21 = *(v107 + 64);
  __chkstk_darwin(v108);
  v23 = &v100 - v22;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v130 = sub_100003078(v19, qword_10033EB10);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v109 = v14;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v136 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v136);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s", v27, 0xCu);
    sub_10000903C(v28);
  }

  v134 = *(v133 + 16);
  v136 = *(*(v134 + 24) + 32);
  v106 = sub_100035D04(&qword_100339828, &unk_100270300);
  v105 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
  v29 = Publisher.eraseToAnyPublisher()();
  v30 = static os_log_type_t.info.getter();
  v136 = v29;
  v32 = v131;
  v31 = v132;
  v121 = *(v132 + 16);
  v122 = v132 + 16;
  v121(v131, v130, v19);
  v33 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v120 = *(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1000A5CB0;
  *(v34 + 24) = xmmword_1002751F0;
  *(v34 + 40) = 0xEC00000065636976;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0xE000000000000000;
  v35 = *(v31 + 32);
  v123 = v33;
  v125 = v19;
  v118 = v35;
  v119 = v31 + 32;
  v35((v34 + v33), v32, v19);
  v124 = v33 + v20;
  *(v34 + v124) = v30;
  sub_100035D04(&qword_100339838, &qword_100271F10);
  type metadata accessor for HandoffDevice();
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033EF10, &qword_10033EF08, &qword_100275540);
  v36 = v108;
  v37 = Publisher.eraseToAnyPublisher()();

  (*(v107 + 8))(v23, v36);
  v136 = v37;
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v136 = *(sub_1000A4020() + 56);
  v136 = Publisher.share()();
  sub_100035D04(&qword_10033EF18, &qword_100275548);
  sub_10000E244(&qword_10033EF20, &qword_10033EF18, &qword_100275548);
  v38 = Publisher.eraseToAnyPublisher()();

  v136 = v38;
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v39 = *(v134 + 16);

  v40 = sub_100242B74(0, 1);

  if (v40)
  {
    v136 = v40;
    v41 = v109;
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v42 = qword_10038B5B8;
    v135 = qword_10038B5B8;
    v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v44 = v111;
    (*(*(v43 - 8) + 56))(v111, 1, 1, v43);
    v45 = v42;
    v108 = sub_100035D04(&qword_10033EF28, &qword_100275550);
    sub_100035CB8();
    sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550);
    sub_1000AD420(&qword_10034B420, 255, sub_100035CB8);
    v46 = v100;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000097E8(v44, &qword_10034C680, &qword_100270390);

    (*(v110 + 8))(v41, v112);

    LOBYTE(v42) = static os_log_type_t.info.getter();
    v47 = v131;
    v48 = v125;
    v121(v131, v130, v125);
    v49 = v124;
    v50 = swift_allocObject();
    *(v50 + 2) = 0;
    *(v50 + 3) = 0;
    *(v50 + 4) = 0xD000000000000015;
    *(v50 + 5) = 0x800000010029AB60;
    *(v50 + 6) = 0;
    *(v50 + 7) = 0xE000000000000000;
    v118(&v50[v123], v47, v48);
    v50[v49] = v42;
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&qword_10033EF38, &qword_10033EF00, &qword_100275538);
    v51 = v115;
    v52 = v114;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EF40, &qword_10033EEF8, &unk_100275528);
    v53 = v117;
    v54 = Publisher.eraseToAnyPublisher()();
    (*(v116 + 8))(v51, v53);
    (*(v113 + 8))(v46, v52);
    v55 = v129;
    (*(v132 + 56))(v129, 1, 1, v48);
    v56 = swift_allocObject();
    swift_weakInit();
    v136 = v54;
    v57 = v128;
    sub_100009848(v55, v128, &unk_10033D8B0, &qword_100275520);
    v58 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    sub_10007E4B8(v57, v59 + v58);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1000AB8A0;
    *(v60 + 24) = v56;

    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v55, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v61 = *(v134 + 16);

  v62 = sub_100242B74(3, 1);

  if (v62)
  {
    v63 = static os_log_type_t.info.getter();
    v136 = v62;
    v64 = v131;
    v65 = v125;
    v121(v131, v130, v125);
    v66 = v124;
    v67 = swift_allocObject();
    *(v67 + 2) = 0;
    *(v67 + 3) = 0;
    *(v67 + 4) = 0xD000000000000014;
    *(v67 + 5) = 0x800000010029AB40;
    *(v67 + 6) = 0;
    *(v67 + 7) = 0xE000000000000000;
    v118(&v67[v123], v64, v65);
    v67[v66] = v63;
    sub_100035D04(&qword_10033EF28, &qword_100275550);
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550);
    v68 = v101;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EF48, &qword_10033EEF0, &qword_100275518);
    v69 = v103;
    v70 = Publisher.eraseToAnyPublisher()();

    (*(v102 + 8))(v68, v69);
    v71 = v129;
    (*(v132 + 56))(v129, 1, 1, v65);
    v72 = swift_allocObject();
    swift_weakInit();
    v136 = v70;
    v73 = v128;
    sub_100009848(v71, v128, &unk_10033D8B0, &qword_100275520);
    v74 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    sub_10007E4B8(v73, v75 + v74);
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1000AB7D4;
    *(v76 + 24) = v72;

    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v71, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v77 = *(v134 + 16);

  v78 = sub_100242B74(4, 1);

  if (v78)
  {
    v136 = v78;
    v80 = v109;
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v81 = qword_10038B5B8;
    v135 = qword_10038B5B8;
    v82 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v83 = v111;
    (*(*(v82 - 8) + 56))(v111, 1, 1, v82);
    v84 = v81;
    v134 = sub_100035D04(&qword_10033EF28, &qword_100275550);
    sub_100035CB8();
    sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550);
    sub_1000AD420(&qword_10034B420, 255, sub_100035CB8);
    v85 = v104;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000097E8(v83, &qword_10034C680, &qword_100270390);

    (*(v110 + 8))(v80, v112);

    LOBYTE(v81) = static os_log_type_t.info.getter();
    v86 = v131;
    v87 = v125;
    v121(v131, v130, v125);
    v88 = v124;
    v89 = swift_allocObject();
    *(v89 + 2) = 0;
    *(v89 + 3) = 0;
    *(v89 + 4) = 0xD000000000000015;
    *(v89 + 5) = 0x800000010029AB20;
    *(v89 + 6) = 0;
    *(v89 + 7) = 0xE000000000000000;
    v118(&v89[v123], v86, v87);
    v89[v88] = v81;
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&qword_10033EF38, &qword_10033EF00, &qword_100275538);
    v90 = v115;
    v91 = v114;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EF40, &qword_10033EEF8, &unk_100275528);
    v92 = v117;
    v93 = Publisher.eraseToAnyPublisher()();
    (*(v116 + 8))(v90, v92);
    (*(v113 + 8))(v85, v91);
    v94 = v129;
    (*(v132 + 56))(v129, 1, 1, v87);
    v95 = swift_allocObject();
    swift_weakInit();
    v136 = v93;
    v96 = v128;
    sub_100009848(v94, v128, &unk_10033D8B0, &qword_100275520);
    v97 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    *(v98 + 24) = 0;
    sub_10007E4B8(v96, v98 + v97);
    v99 = swift_allocObject();
    *(v99 + 16) = sub_1000AB7B0;
    *(v99 + 24) = v95;

    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v94, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000A5CD4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A6374(v1);
  }

  return result;
}

uint64_t sub_1000A5D34(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);

    sub_1002096D8(v1);
  }

  return result;
}

void sub_1000A5DBC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);

    if (v1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v3 + 16);
    *(v3 + 16) = v4;
    v6 = v4;

    sub_1001F0504(v4);
  }
}

uint64_t sub_1000A5E84(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);

    if (v1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v3 + 40);
    v6 = v4;

    sub_1001C12B4(v4);
  }

  return result;
}

uint64_t sub_1000A5F54(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);

    if (v1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v3 + 56);
    v6 = v4;

    sub_1001C12C8(v4);
  }

  return result;
}

uint64_t sub_1000A6024()
{
  v1 = v0;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033EB10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 32);
  __chkstk_darwin(v8);
  type metadata accessor for ActivityProxyClientContext();
  swift_getKeyPath();
  v9 = v7 + qword_100346AF8;

  os_unfair_lock_lock(v9);
  v20 = *(v9 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v9);

  v10 = *(v19 + 16);
  if (v10)
  {
    v11 = sub_100009194(*(v19 + 16), 0);
    v12 = sub_100009A04(&v20, v11 + 32, v10);
    result = sub_100004F98();
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v11 < 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }
  }

  if ((v11 & 0x4000000000000000) == 0)
  {
    v14 = *(v11 + 16);
    if (!v14)
    {
    }

    goto LABEL_12;
  }

LABEL_18:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (!result)
  {
  }

LABEL_12:
  if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      ++v15;
      [*(v16 + 16) invalidate];
      swift_beginAccess();
      v17 = *(v16 + 40);
      *(v16 + 40) = _swiftEmptyDictionarySingleton;

      swift_beginAccess();
      v18 = *(v16 + 48);
      *(v16 + 48) = _swiftEmptyDictionarySingleton;
    }

    while (v14 != v15);
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1000A6374(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10033EE58, &qword_100275470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v109 = &v81 - v7;
  v8 = sub_100035D04(&qword_10033EE60, &qword_100275478);
  v103 = *(v8 - 8);
  v104 = v8;
  v9 = *(v103 + 64);
  __chkstk_darwin(v8);
  v102 = &v81 - v10;
  v11 = sub_100035D04(&qword_10033EE68, &qword_100275480);
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  __chkstk_darwin(v11);
  v106 = &v81 - v13;
  v14 = type metadata accessor for Logger();
  isa = v14[-1].isa;
  v112 = v14;
  v15 = *(isa + 8);
  __chkstk_darwin(v14);
  v110 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100035D04(&qword_10033EE70, &qword_100275488);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  __chkstk_darwin(v16);
  v99 = &v81 - v18;
  v19 = sub_100035D04(&qword_10033EE78, &qword_100275490);
  v94 = *(v19 - 8);
  v20 = *(v94 + 64);
  __chkstk_darwin(v19);
  v22 = &v81 - v21;
  v23 = sub_100035D04(&qword_10033EE80, &qword_100275498);
  v95 = *(v23 - 8);
  v24 = *(v95 + 8);
  __chkstk_darwin(v23);
  v26 = &v81 - v25;
  v27 = sub_100035D04(&qword_10033EE88, &unk_1002754A0);
  v97 = *(v27 - 8);
  v98 = v27;
  v28 = *(v97 + 64);
  __chkstk_darwin(v27);
  v96 = &v81 - v29;
  if (sub_10006FE7C())
  {
    v89 = v15;
    v92 = v5;
    v93 = v4;
    v113 = sub_10006E404();
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = a1;

    v105 = v2;
    v32 = sub_100035D04(&qword_1003398B0, &qword_100273280);
    v33 = sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280);
    v91 = v32;
    v90 = v33;
    Publisher.filter(_:)();

    sub_10000E244(&qword_10033EE90, &qword_10033EE78, &qword_100275490);
    Publisher.map<A>(_:)();
    (*(v94 + 8))(v22, v19);
    *(swift_allocObject() + 16) = 1;
    sub_10000E244(&qword_10033EE98, &qword_10033EE80, &qword_100275498);
    v34 = v96;
    Publisher.filter(_:)();

    (*(v95 + 1))(v26, v23);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v113 = 0xD000000000000027;
    v114 = 0x800000010029AAC0;
    v35._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v35);

    v36 = v114;
    v81 = v113;
    v37 = v34;
    v87 = a1;
    if (qword_100338ED0 != -1)
    {
      swift_once();
    }

    v38 = v112;
    v39 = sub_100003078(v112, qword_10033EB10);
    v94 = v39;
    v40 = static os_log_type_t.info.getter();
    v41 = isa;
    v42 = *(isa + 2);
    v88 = isa + 16;
    v95 = v42;
    v43 = v110;
    v42(v110, v39, v38);
    v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v86 = *(v41 + 80);
    v45 = v44 + v89;
    v82 = v44;
    v89 = (v44 + v89) & 0xFFFFFFFFFFFFFFF8;
    v83 = v45;
    v84 = (v45 & 0xFFFFFFFFFFFFFFF8) + 8;
    v46 = swift_allocObject();
    v47 = *(v41 + 4);
    isa = (v41 + 32);
    v85 = v47;
    v47(v46 + v44, v43, v38);
    *(v46 + v45) = v40;
    v48 = (v46 + (v45 & 0xFFFFFFFFFFFFFFF8) + 8);
    *v48 = v81;
    v48[1] = v36;
    sub_10000E244(&qword_10033EEA0, &qword_10033EE88, &unk_1002754A0);
    v50 = v98;
    v49 = v99;
    Publisher.map<A>(_:)();

    v81 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000E244(&qword_10033EEA8, &qword_10033EE70, &qword_100275488);
    v51 = v101;
    v52 = Publisher.eraseToAnyPublisher()();
    (*(v100 + 8))(v49, v51);
    (*(v97 + 8))(v37, v50);
    v113 = v52;
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = swift_allocObject();
    v55 = v87;
    *(v54 + 16) = v53;
    *(v54 + 24) = v55;

    v100 = sub_100035D04(&qword_10033EEB0, &unk_1002754B0);
    v101 = &protocol conformance descriptor for AnyPublisher<A, B>;
    v99 = sub_10000E244(&qword_10033EEB8, &qword_10033EEB0, &unk_1002754B0);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v113 = *(v55 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher);

    v56 = v102;
    Publisher.map<A>(_:)();

    *(swift_allocObject() + 16) = 1;
    sub_10000E244(&qword_10033EEC0, &qword_10033EE60, &qword_100275478);
    v57 = v106;
    v58 = v104;
    Publisher.filter(_:)();

    (*(v103 + 8))(v56, v58);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v113 = 0xD00000000000002BLL;
    v114 = 0x800000010029AAF0;
    v59._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v59);

    v60 = v113;
    v61 = v114;
    LOBYTE(v53) = static os_log_type_t.info.getter();
    v62 = v110;
    v63 = v112;
    v95(v110, v94, v112);
    v64 = swift_allocObject();
    v85(v64 + v82, v62, v63);
    *(v64 + v83) = v53;
    v65 = (v64 + v84);
    *v65 = v60;
    v65[1] = v61;
    sub_10000E244(&qword_10033EEC8, &qword_10033EE68, &qword_100275480);
    v67 = v108;
    v66 = v109;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EED0, &qword_10033EE58, &qword_100275470);
    v68 = v93;
    v69 = Publisher.eraseToAnyPublisher()();
    (*(v92 + 8))(v66, v68);
    (*(v107 + 8))(v57, v67);
    v113 = v69;
    v70 = swift_allocObject();
    swift_weakInit();
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v55;

    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v113 = *(v55 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_activityStreamErrorSubject);
    sub_100035D04(&qword_10033D430, &qword_100273098);
    sub_10000E244(&qword_10033EED8, &qword_10033D430, &qword_100273098);
    v113 = Publisher.eraseToAnyPublisher()();
    v72 = swift_allocObject();
    swift_weakInit();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v55;

    sub_100035D04(&qword_10033EEE0, &qword_1002754C0);
    sub_10000E244(&qword_10033EEE8, &qword_10033EEE0, &qword_1002754C0);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    if (qword_100338ED0 != -1)
    {
      swift_once();
    }

    sub_100003078(v112, qword_10033EB10);

    v112 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v112, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v113 = v76;
      *v75 = 136315138;
      v77 = sub_1000092A0();
      v79 = sub_100017494(v77, v78, &v113);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v112, v74, "Device does not require activity syncing: %s", v75, 0xCu);
      sub_10000903C(v76);
    }

    else
    {
      v80 = v112;
    }
  }
}

BOOL sub_1000A73E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 40);

    v2 = sub_1000FB6A0();

    return !v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 40);

    sub_10004982C(a3);
  }

  return result;
}

uint64_t sub_1000A74F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 40);

    sub_1002096D8(a3);
  }

  return result;
}

void sub_1000A7860(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033EB10);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_1000092A0();
    v12 = sub_100017494(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a2 & 1;
    *(v9 + 18) = 2080;
    *(v9 + 20) = sub_100017494(a3, a4, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v8, "%s shouldRestartObservation=%{BOOL}d: %s", v9, 0x1Cu);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000A7A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000A7A78(uint64_t a1, uint64_t a2)
{
  result = sub_1000AD420(&qword_10033EE28, a2, type metadata accessor for ActivityProxy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A7AD0(uint64_t a1, uint64_t a2)
{
  result = sub_1000AD420(&qword_10033EE30, a2, type metadata accessor for ActivityProxyClientContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A7B28(uint64_t a1, uint64_t a2)
{
  result = sub_1000AD420(&qword_10033EE38, a2, type metadata accessor for ActivityProxyModel);
  *(a1 + 8) = result;
  return result;
}

void sub_1000A7B80(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10033EB10);
  v12 = a1;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v48 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v50 = v20;
    *v17 = 136315650;
    *(v17 + 4) = sub_100017494(0xD000000000000019, 0x800000010029ABC0, &v50);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *(v17 + 22) = 2112;
    *(v17 + 24) = v13;
    *v19 = v12;
    v19[1] = v13;
    v21 = v12;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: client=%@, identifier=%@", v17, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();
    v4 = v46;

    sub_10000903C(v20);
  }

  v23 = sub_1000A9120(v13, sub_1000AB8E4, "### Could not find HandoffDevice for PCHomeKitIdentifier %@");
  if (v23)
  {
    v24 = v23;
    v25 = [v13 accessoryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = [v13 homeID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = objc_allocWithZone(PCHomeKitIdentifier);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = UUID._bridgeToObjectiveC()().super.isa;
    v30 = [v27 initWithAccessoryID:isa homeID:v29];

    v31 = *(v47 + 8);
    v31(v8, v4);
    v31(v10, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v30;
    static Published.subscript.getter();

    v33 = sub_10000C868();
    v35 = v34;

    sub_100058DC8(v33, v35);

    v36 = String._bridgeToObjectiveC()();

    [v32 setDeviceName:v36];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v37 = *(v50 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset);
    LODWORD(v31) = *(v50 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset + 8);

    if (v31)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    [v32 setAssetType:v38];

    sub_1000A8148(v48, v24, v32);
  }

  else
  {
    v39 = v13;
    v49 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v39;
      *v42 = v39;
      v43 = v39;
      _os_log_impl(&_mh_execute_header, v49, v40, "### Client requested observation of HomeKit %@, which is unknown", v41, 0xCu);
      sub_1000097E8(v42, &qword_100339940, &unk_100272C50);
    }

    v44 = v49;
  }
}

void sub_1000A8148(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v87 = a3;
  v7 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v84 = &v73 - v9;
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  __chkstk_darwin(v10);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100035D04(&qword_10033EF50, &qword_1002755A0);
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  __chkstk_darwin(v13);
  v74 = &v73 - v15;
  v16 = sub_100035D04(&qword_10033EF58, &qword_1002755A8);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  __chkstk_darwin(v16);
  v75 = &v73 - v18;
  v81 = sub_100035D04(&qword_10033EF60, &unk_1002755B0);
  v86 = *(v81 - 8);
  v19 = *(v86 + 64);
  __chkstk_darwin(v81);
  v85 = &v73 - v20;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003078(v21, qword_10033EB10);

  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v88 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v89[0] = v73;
    *v26 = 138412802;
    *(v26 + 4) = v22;
    *v27 = v22;
    *(v26 + 12) = 2080;
    v28 = v22;
    v29 = sub_1000092A0();
    v31 = sub_100017494(v29, v30, v89);

    *(v26 + 14) = v31;
    *(v26 + 22) = 2080;
    type metadata accessor for UUID();
    sub_1000AD420(&qword_10033E718, 255, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_100017494(v32, v33, v89);

    *(v26 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Client %@ start observing %s with id %s", v26, 0x20u);
    sub_1000097E8(v27, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();
  }

  v35 = *(v4 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v35);
  v36 = *(v35 + 8);
  if (*(v36 + 16))
  {
    v37 = v88;
    v38 = sub_100026910(v88);
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
    v37 = v88;
  }

  os_unfair_lock_unlock(v35);

  if (v40)
  {
    v73 = v4;
    v41 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);

    v89[0] = sub_10005E50C();
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
    v42 = Publisher.eraseToAnyPublisher()();

    v89[0] = v42;
    sub_10009E464(a2, &v90);
    v89[3] = v90;
    sub_100035D04(&qword_10033EF68, &unk_1002755C0);
    sub_10000E244(&qword_10033EF70, &qword_10033EF68, &unk_1002755C0);
    v43 = Publisher.eraseToAnyPublisher()();

    v90 = v43;
    sub_100035D04(&unk_1003436E0, &unk_100276210);
    sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
    v44 = v74;
    Publishers.CombineLatest.init(_:_:)();
    v45 = v78;
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    sub_100035CB8();
    v46 = static OS_dispatch_queue.main.getter();
    v89[0] = v46;
    sub_10000E244(&qword_10033EF78, &qword_10033EF50, &qword_1002755A0);
    sub_1000AD420(&qword_10034B420, 255, sub_100035CB8);
    v47 = v75;
    v48 = v77;
    Publisher.throttle<A>(for:scheduler:latest:)();

    (*(v79 + 8))(v45, v80);
    (*(v76 + 8))(v44, v48);
    v49 = static OS_dispatch_queue.main.getter();
    v89[0] = v49;
    v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v51 = v84;
    (*(*(v50 - 8) + 56))(v84, 1, 1, v50);
    sub_10000E244(&qword_10033EF80, &qword_10033EF58, &qword_1002755A8);
    v52 = v85;
    v53 = v83;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v51, &qword_10034C680, &qword_100270390);

    (*(v82 + 8))(v47, v53);
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    v56[2] = v54;
    v56[3] = v55;
    v57 = v87;
    v58 = v88;
    v56[4] = a2;
    v56[5] = v58;
    v56[6] = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1000AD1B0;
    *(v59 + 24) = v56;
    sub_10000E244(&qword_10033EF88, &qword_10033EF60, &unk_1002755B0);

    v60 = v58;
    v61 = v57;
    v62 = v81;
    v63 = Publisher<>.sink(receiveValue:)();

    (*(v86 + 8))(v52, v62);
    v64 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();

    v65 = *(v40 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v40 + 40);
    *(v40 + 40) = 0x8000000000000000;
    sub_10004CE14(v63, a2 + v64, isUniquelyReferenced_nonNull_native);
    *(v40 + 40) = v90;
    swift_endAccess();
  }

  else
  {
    v67 = v37;
    v88 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v67;
      *v70 = v67;
      v71 = v67;
      _os_log_impl(&_mh_execute_header, v88, v68, "### Inactive client: %@", v69, 0xCu);
      sub_1000097E8(v70, &qword_100339940, &unk_100272C50);
    }

    v72 = v88;
  }
}

void sub_1000A8C70(void *a1, void *a2)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EB10);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD000000000000019, 0x800000010029ABC0, &v32);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v5;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v5;
    v10[1] = v6;
    v12 = v5;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: client=%@, identifier=%@", v9, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v11);
  }

  v14 = sub_1000A9120(v6, sub_1000AC308, "### Could not find HandoffDevice for PCMediaRemoteIdentifier %@");
  if (v14)
  {
    v15 = v14;
    v16 = [v6 mediaRemoteID];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = [objc_allocWithZone(PCMediaRemoteIdentifier) initWithIdentifier:v16];

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    static Published.subscript.getter();

    v19 = sub_10000C868();
    v21 = v20;

    sub_100058DC8(v19, v21);

    v22 = String._bridgeToObjectiveC()();

    [v18 setDeviceName:v22];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = *(v32 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset);
    v24 = *(v32 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset + 8);

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    [v18 setAssetType:v25];

    sub_1000A8148(v5, v15, v18);
  }

  else
  {
    v26 = v6;
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, oslog, v27, "### Client request observation of MediaRemote %@, which is unknown", v28, 0xCu);
      sub_1000097E8(v29, &qword_100339940, &unk_100272C50);
    }
  }
}

uint64_t sub_1000A9120(void *a1, uint64_t (*a2)(uint64_t, id), const char *a3)
{
  v6 = *(*(v3 + 16) + 24) + qword_100346AF8;
  v7 = a1;

  os_unfair_lock_lock(v6);
  v8 = *(v6 + 8);

  v10 = a2(v9, v7);

  os_unfair_lock_unlock(v6);

  if (!v10)
  {
    if (qword_100338ED0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10033EB10);
    v12 = v7;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 0xCu);
      sub_1000097E8(v16, &qword_100339940, &unk_100272C50);
    }
  }

  return v10;
}

void sub_1000A9300(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033EB10);
  v7 = a1;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000018, 0x800000010029ABA0, &v28);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2080;
    v12 = v7;
    v13 = sub_1000092A0();
    v15 = v3;
    v16 = sub_100017494(v13, v14, &v28);

    *(v10 + 24) = v16;
    v3 = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: client=%@, device=%s", v10, 0x20u);
    sub_1000097E8(v11, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();
  }

  v17 = *(v3 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v17);
  v18 = *(v17 + 8);
  if (*(v18 + 16) && (v19 = sub_100026910(v7), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v21 = 0;
  }

  os_unfair_lock_unlock(v17);

  if (v21)
  {
    sub_1000AA088(v7, a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
  }

  else
  {
    v22 = v7;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, oslog, v23, "### Inactive client: %@", v24, 0xCu);
      sub_1000097E8(v25, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000A96C0(void *a1, void *a2, uint64_t (*a3)(uint64_t, id), const char *a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033EB10);
  v9 = a1;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    osloga = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_100017494(0xD000000000000018, 0x800000010029ABA0, &v26);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    *v14 = v9;
    v14[1] = v10;
    v16 = v9;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: client=%@, identifier=%@", v13, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v15);

    a4 = osloga;
  }

  v18 = sub_1000A9120(v10, a3, a4);
  if (v18)
  {
    sub_1000A9300(v9, v18);
  }

  else
  {
    v19 = v10;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v20, "### Could not stop observing %@. Device not found.", v21, 0xCu);
      sub_1000097E8(v22, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000A99E4(void *a1)
{
  v2 = v1;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EB10);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD00000000000001ALL, 0x800000010029AB80, &v25);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: client=%@", v8, 0x16u);
    sub_1000097E8(v9, &qword_100339940, &unk_100272C50);

    sub_10000903C(v10);
  }

  v12 = *(v2 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v12);
  v13 = *(v12 + 8);
  if (*(v13 + 16) && (v14 = sub_100026910(v5), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(v12);

  if (v16)
  {
    swift_beginAccess();
    v17 = *(v16 + 40);
    *(v16 + 40) = _swiftEmptyDictionarySingleton;

    swift_beginAccess();
    v18 = *(v16 + 48);
    *(v16 + 48) = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v19 = v5;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v20, "### Inactive client: %@", v21, 0xCu);
      sub_1000097E8(v22, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000A9D3C(void *a1)
{
  v2 = v1;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EB10);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000017, 0x800000010029AC90, &v24);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: client=%@", v8, 0x16u);
    sub_1000097E8(v9, &qword_100339940, &unk_100272C50);

    sub_10000903C(v10);
  }

  v12 = *(v2 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v12);
  v13 = *(v12 + 8);
  if (*(v13 + 16) && (v14 = sub_100026910(v5), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(v12);

  if (v16)
  {
    sub_1000A99E4(v5);
    v17 = *(v2 + 32);

    sub_100209518(v16);
  }

  else
  {
    v18 = v5;
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, oslog, v19, "### Inactive client: %@", v20, 0xCu);
      sub_1000097E8(v21, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000AA088(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100003078(v13, qword_10033EB10);
  v15 = *(v7 + 16);
  v48 = v7 + 16;
  v49 = v15;
  v15(v12, a2, v6);
  v16 = a1;
  v47 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v51 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v52 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = v22;
    v46 = swift_slowAlloc();
    v53[0] = v46;
    *v21 = 136315650;
    *(v21 + 4) = sub_100017494(0xD000000000000018, 0x800000010029ABA0, v53);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    *v22 = v16;
    *(v21 + 22) = 2080;
    sub_1000AD420(&qword_10033E718, 255, &type metadata accessor for UUID);
    v23 = v3;
    v24 = a2;
    v25 = v16;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v7 + 8))(v12, v52);
    v29 = sub_100017494(v26, v28, v53);
    a2 = v24;
    v3 = v23;

    *(v21 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: client=%@, deviceID=%s", v21, 0x20u);
    sub_1000097E8(v45, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();

    v6 = v52;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v30 = *(v3 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v30);
  v31 = *(v30 + 8);
  if (*(v31 + 16))
  {
    v32 = v51;
    v33 = sub_100026910(v51);
    if (v34)
    {
      v35 = *(*(v31 + 56) + 8 * v33);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
    v32 = v51;
  }

  os_unfair_lock_unlock(v30);

  if (v35)
  {
    v37 = v49;
    v36 = v50;
    v49(v50, a2, v6);
    swift_beginAccess();
    sub_1001CF58C(0, v36);
    swift_endAccess();
    v37(v36, a2, v6);
    swift_beginAccess();
    sub_1001CF58C(0, v36);
    swift_endAccess();
  }

  else
  {
    v38 = v32;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "### Inactive client: %@", v41, 0xCu);
      sub_1000097E8(v42, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000AA5C4(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v110 = a3;
  v111 = a2;
  LODWORD(v109) = a1;
  v12 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v107 = *(v12 - 8);
  v13 = *(v107 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v108 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v97 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (!v24)
  {
LABEL_34:

    return;
  }

  v103 = v13;
  v99 = v16;
  v104 = a8;
  v105 = v24;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  v25 = sub_100003078(v98, qword_10033EB10);

  v26 = a7;
  v28 = v110;
  v27 = v111;
  sub_10007732C(v111, v110, a4);
  v102 = v25;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  sub_100077374(v27, v28, a4);
  v31 = os_log_type_enabled(v29, v30);
  v106 = a4;
  if (v31)
  {
    v32 = v30;
    v101 = v23;
    v33 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v33 = 136315650;
    v100 = v26;
    v34 = sub_1000092A0();
    v36 = sub_100017494(v34, v35, &v112);

    *(v33 + 4) = v36;
    v37 = v106;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v109 & 1;
    *(v33 + 18) = 2080;
    if (v37 == 1)
    {
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      v41 = v111;
      v113 = v111;
      v114 = v110 & 1;
      v115 = v37;

      v42 = v41;
      v39 = String.init<A>(describing:)();
      v38 = v43;
    }

    v44 = sub_100017494(v39, v38, &v112);

    *(v33 + 20) = v44;
    _os_log_impl(&_mh_execute_header, v29, v32, "Device updated: %s, executedThisSession=%{BOOL}d, transferrableActivity=%s", v33, 0x1Cu);
    swift_arrayDestroy();

    v40 = v100;
    v23 = v101;
  }

  else
  {

    v40 = v26;
  }

  v45 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  (*(v18 + 16))(v21, v40 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v17);
  swift_beginAccess();
  sub_1001CF58C(0, v21);
  swift_endAccess();
  if (v109)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Sending empty context - executedThisSession=true";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v106 == 1)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Sending empty context - No transferrableActivity";
      goto LABEL_18;
    }

LABEL_19:

    v50 = [objc_allocWithZone(PCDisambiguationContext) initWithIdentifier:a9 direction:0 activityData:0];
    sub_1000ACB20(v104, v40, a9, v50);

    return;
  }

  if ((v110 & 1) == 0)
  {
    v51 = v111;
    sub_10007732C(v111, v110, v106);
LABEL_27:
    v101 = v23;
    swift_getObjectType();
    v57 = v51;
    v58 = sub_1001F64AC();

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v111 = a9;
      v100 = v40;
      v59 = v57;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      v62 = os_log_type_enabled(v60, v61);
      v110 = v59;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v112 = v59;
        v113 = v64;
        *v63 = 136315394;
        v65 = v59;
        sub_100035D04(&qword_10033D6D0, &unk_10027C120);
        v66 = String.init<A>(describing:)();
        v68 = sub_100017494(v66, v67, &v113);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = PCInteractionDirection.description.getter(v58);
        v71 = sub_100017494(v69, v70, &v113);

        *(v63 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v60, v61, "Activity serialization starting: activity=%s, direction=%s", v63, 0x16u);
        swift_arrayDestroy();
      }

      v72 = v99;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = sub_100035D04(&qword_10033EF90, &qword_1002755D0);
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      v76 = Future.init(_:)();
      v109 = v76;
      (*(*(v98 - 8) + 56))(v72, 1, 1);
      v77 = swift_allocObject();
      swift_weakInit();
      v78 = swift_allocObject();
      v79 = v111;
      v78[2] = v111;
      v78[3] = v58;
      v80 = v104;
      v78[4] = v77;
      v78[5] = v80;
      v81 = v100;
      v78[6] = v100;
      v113 = v76;
      v82 = v108;
      sub_100009848(v72, v108, &unk_10033D8B0, &qword_100275520);
      v83 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = 0;
      *(v84 + 24) = 0;
      sub_10007E4B8(v82, v84 + v83);
      v85 = swift_allocObject();
      *(v85 + 16) = sub_1000AD220;
      *(v85 + 24) = v78;
      sub_10000E244(&qword_10033EF98, &qword_10033EF90, &qword_1002755D0);

      v86 = v79;
      v87 = v80;

      v88 = Publisher.sink(receiveCompletion:receiveValue:)();

      sub_1000097E8(v99, &unk_10033D8B0, &qword_100275520);

      v89 = v105;
      swift_beginAccess();

      v90 = *(v89 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = *(v89 + 48);
      *(v89 + 48) = 0x8000000000000000;
      sub_10004CE14(v88, v81 + v45, isUniquelyReferenced_nonNull_native);
      *(v89 + 48) = v112;
      swift_endAccess();

      v92 = v110;
    }

    else
    {
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "### Sending empty context - Could not cast activity to NSUserActivity", v95, 2u);
      }

      v96 = [objc_allocWithZone(PCDisambiguationContext) initWithIdentifier:a9 direction:0 activityData:0];
      sub_1000ACB20(v104, v40, a9, v96);
    }

    goto LABEL_34;
  }

  v51 = v111;
  v52 = v111;
  if (sub_10006FE7C())
  {
    goto LABEL_27;
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Sending empty context - Activity is non-media", v55, 2u);
  }

  v56 = [objc_allocWithZone(PCDisambiguationContext) initWithIdentifier:a9 direction:0 activityData:0];
  sub_1000ACB20(v104, v40, a9, v56);
}

void sub_1000AB190(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10033EB10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Activity serialization finished", v15, 2u);
  }

  v16 = objc_allocWithZone(PCDisambiguationContext);
  sub_10006DA04(v10, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100010708(v10, v11);
  v18 = [v16 initWithIdentifier:a2 direction:a3 activityData:isa];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000ACB20(a5, a6, a2, v18);
  }
}

uint64_t sub_1000AB340(uint64_t a1, uint64_t a2, os_log_type_t a3, uint64_t a4, unint64_t a5)
{
  v9 = Logger.logObject.getter();
  if (os_log_type_enabled(v9, a3))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(a4, a5, &v13);
    _os_log_impl(&_mh_execute_header, v9, a3, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  return a1;
}

void *sub_1000AB43C(uint64_t a1, uint64_t a2, void *a3)
{
  a3[5] = _swiftEmptyDictionarySingleton;
  a3[6] = _swiftEmptyDictionarySingleton;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033EB10);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  a3[2] = a1;
  a3[3] = a2;
  a3[4] = &off_100303BB8;
  return a3;
}

BOOL sub_1000AB548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A73E4();
}

uint64_t sub_1000AB580()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_1000AB620@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  result = sub_1000AB340(*a1, v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1000AB6CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CD374(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1000AB7DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for Logger() - 8);
  v9 = *(v3 + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + *(v7 + 64));
  *a3 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);

  return swift_unknownObjectRetain();
}

uint64_t sub_1000AB8A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_1000AB8E4(uint64_t a1, void *a2)
{
  v105 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v84 - v9;
  v11 = __chkstk_darwin(v8);
  v84 = &v84 - v12;
  __chkstk_darwin(v11);
  v88 = &v84 - v13;
  v14 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v87 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v92 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v104 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v103 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v86 = &v84 - v25;
  v26 = __chkstk_darwin(v24);
  v102 = &v84 - v27;
  v28 = __chkstk_darwin(v26);
  v94 = &v84 - v29;
  __chkstk_darwin(v28);
  v31 = &v84 - v30;
  v32 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a1 + 64);
  v36 = (v33 + 63) >> 6;
  v100 = (v4 + 48);
  v101 = (v4 + 56);
  v95 = a1;
  v96 = (v4 + 32);
  v91 = (v4 + 8);

  v38 = 0;
  v89 = v36;
  v90 = a1 + 64;
  v107 = v3;
  v93 = v10;
  for (i = v31; v35; v32 = v90)
  {
    v39 = v38;
LABEL_8:
    v40 = *(*(v95 + 56) + ((v39 << 9) | (8 * __clz(__rbit64(v35)))));
    swift_getKeyPath();
    swift_getKeyPath();

    v106 = v40;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v41 = v108;
    if (v108)
    {
      v42 = [v108 uniqueIdentifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = v94;
    v45 = *v101;
    v46 = v107;
    (*v101)(v31, v43, 1, v107);
    v47 = [v105 accessoryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v98 = v45;
    v45(v44, 0, 1, v46);
    v48 = v102;
    sub_100009848(v31, v102, &unk_100348F30, &unk_100272540);
    v49 = *v100;
    v50 = (*v100)(v48, 1, v46);
    v97 = v49;
    if (v50 == 1)
    {
      v51 = v102;
    }

    else
    {
      v52 = *v96;
      v53 = v88;
      v54 = v107;
      (*v96)(v88, v102, v107);
      v55 = v86;
      sub_100009848(v44, v86, &unk_100348F30, &unk_100272540);
      if (v49(v55, 1, v54) != 1)
      {
        v57 = v84;
        v52(v84, v55, v107);
        sub_1000AD420(&qword_10034B5A0, 255, &type metadata accessor for UUID);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = v107;
        v60 = v58;
        v61 = *v91;
        v62 = v57;
        v44 = v94;
        (*v91)(v62, v107);
        v61(v53, v59);
        v56 = v60 ^ 1;
        goto LABEL_17;
      }

      (*v91)(v53, v107);
      v51 = v55;
    }

    sub_1000097E8(v51, &unk_100348F30, &unk_100272540);
    v56 = 1;
LABEL_17:
    sub_1000097E8(v44, &unk_100348F30, &unk_100272540);
    sub_1000097E8(i, &unk_100348F30, &unk_100272540);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v63 = v108;
    if (v108 && (v64 = [v108 home], v63, v64))
    {
      v65 = [v64 uniqueIdentifier];

      v66 = v103;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
      v66 = v103;
    }

    v68 = v98;
    v98(v66, v67, 1, v107);
    v69 = [v105 homeID];
    v70 = v104;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68(v70, 0, 1, v107);
    v71 = v92;
    sub_100009848(v66, v92, &unk_100348F30, &unk_100272540);
    v72 = v97;
    if (v97(v71, 1, v107) == 1)
    {
      sub_1000097E8(v71, &unk_100348F30, &unk_100272540);
      v73 = 1;
    }

    else
    {
      LODWORD(v98) = v56;
      v74 = v72;
      v75 = *v96;
      v76 = v107;
      (*v96)(v93, v71, v107);
      v77 = v87;
      sub_100009848(v70, v87, &unk_100348F30, &unk_100272540);
      if (v74(v77, 1, v76) == 1)
      {
        (*v91)(v93, v107);
        sub_1000097E8(v77, &unk_100348F30, &unk_100272540);
        v73 = 1;
      }

      else
      {
        v78 = v85;
        v75(v85, v77, v107);
        sub_1000AD420(&qword_10034B5A0, 255, &type metadata accessor for UUID);
        v79 = v93;
        v80 = dispatch thunk of static Equatable.== infix(_:_:)();
        v81 = v107;
        v82 = v80;
        v83 = *v91;
        (*v91)(v78, v107);
        v83(v79, v81);
        v73 = v82 ^ 1;
      }

      v56 = v98;
    }

    sub_1000097E8(v104, &unk_100348F30, &unk_100272540);
    sub_1000097E8(v103, &unk_100348F30, &unk_100272540);
    if (((v56 | v73) & 1) == 0)
    {

      return v106;
    }

    v35 &= v35 - 1;

    v38 = v39;
    v31 = i;
    v36 = v89;
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      return 0;
    }

    v35 = *(v32 + 8 * v39);
    ++v38;
    if (v35)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AC308(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v20 = v2;
  while (v5)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v12 = sub_10000DF0C();
    v14 = v13;

    v15 = [a2 mediaRemoteID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v14)
    {
      if (v12 == v16 && v14 == v18)
      {

        return v11;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {

        return v11;
      }
    }

    else
    {
    }

    v8 = v9;
    v2 = v20;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 0;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AC51C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033EB10);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v47 = a3;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD00000000000002DLL, 0x800000010029AC60, v48);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: client=%@", v12, 0x16u);
    sub_1000097E8(v13, &qword_100339940, &unk_100272C50);

    sub_10000903C(v14);
    a3 = v47;
  }

  v16 = *(a3 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v16);
  v17 = *(v16 + 8);
  if (*(v17 + 16) && (v18 = sub_100026910(v9), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  os_unfair_lock_unlock(v16);

  if (!v20)
  {
    v25 = *(a3 + 32);
    __chkstk_darwin(v21);
    type metadata accessor for ActivityProxyClientContext();
    swift_getKeyPath();
    v26 = v25 + qword_100346AF8;

    os_unfair_lock_lock(v26);
    v48[0] = *(v26 + 8);

    swift_getAtKeyPath();

    v27 = v48[5];
    os_unfair_lock_unlock(v26);

    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = sub_100009194(*(v27 + 16), 0);
      v30 = sub_100009A04(v48, v29 + 32, v28, v27);
      result = sub_100004F98();
      if (v30 != v28)
      {
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    v31 = v47;
    v45 = v9;
    v46 = a2;
    if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v32 = result;
      if (result)
      {
LABEL_20:
        if (v32 >= 1)
        {
          v33 = 0;
          do
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v35 = *(v29 + 8 * v33 + 32);
            }

            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              *v38 = 138412290;
              v40 = *(v35 + 16);
              *(v38 + 4) = v40;
              *v39 = v40;
              v41 = v40;
              _os_log_impl(&_mh_execute_header, v36, v37, "### Invalidating existing client: %@", v38, 0xCu);
              sub_1000097E8(v39, &qword_100339940, &unk_100272C50);
              v31 = v47;
            }

            ++v33;

            [*(v35 + 16) invalidate];
            v34 = *(v31 + 32);

            sub_100209518(v35);
          }

          while (v32 != v33);
          goto LABEL_29;
        }

LABEL_31:
        __break(1u);
        return result;
      }
    }

    else
    {
      v32 = *(v29 + 16);
      if (v32)
      {
        goto LABEL_20;
      }
    }

LABEL_29:

    v42 = swift_allocObject();
    v43 = sub_1000AB43C(v45, v46, v42);
    v44 = *(v31 + 32);

    sub_1000497D8(v43);

    (*(a4 + 16))(a4, 0);
  }

  sub_10001618C();
  swift_allocError();
  *v22 = 0xD000000000000032;
  *(v22 + 8) = 0x800000010029AC20;
  *(v22 + 16) = 2;
  v23 = _convertErrorToNSError(_:)();
  (*(a4 + 16))(a4, v23);
}

void sub_1000ACB20(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033EB10);
  v8 = a1;

  v9 = a3;
  v10 = a4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v13 = 136316162;
    *(v13 + 4) = sub_100017494(0xD000000000000032, 0x800000010029ABE0, &v51);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v8;
    *v14 = v8;
    *(v13 + 22) = 2080;
    v15 = v8;
    v16 = sub_1000092A0();
    v18 = sub_100017494(v16, v17, &v51);

    *(v13 + 24) = v18;
    *(v13 + 32) = 2112;
    *(v13 + 34) = v9;
    *(v13 + 42) = 2112;
    *(v13 + 44) = v10;
    v14[1] = v9;
    v14[2] = v10;
    v19 = v9;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: client=%@, device=%s, identifier=%@, disambigContext=%@", v13, 0x34u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v50 = [objc_allocWithZone(NSOrderedSet) init];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = v9;
    if (![v22 assetType])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = sub_1000BDC5C();
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        [v22 setAssetType:v24];
      }
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Calling handler for PCMediaRemoteIdentifier", v29, 2u);
    }

    v30 = [v8 activityDataUpdateHandler];
    if (v30)
    {
      v31 = *(v30 + 2);
      v32 = v30;
LABEL_21:
      v31();
      _Block_release(v32);

      return;
    }

LABEL_22:

    return;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    v23 = v9;
    if (![v34 assetType])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v35 = sub_1000BDC5C();
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        [v34 setAssetType:v35];
      }
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Calling handler for PCHomeKitIdentifier", v40, 2u);
    }

    v41 = [v8 activityDataUpdateHandler];
    if (v41)
    {
      v31 = *(v41 + 2);
      v32 = v41;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v42 = v8;
  v43 = v9;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412546;
    *(v46 + 4) = v42;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v43;
    *v47 = v42;
    v47[1] = v43;
    v48 = v42;
    v49 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "### Failed to send update to %@ because %@ is of unknown type", v46, 0x16u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000AD1E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

uint64_t sub_1000AD230()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AD350(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *a1;
  v8 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(v7, v5, v6, v8);
}

uint64_t sub_1000AD3E4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_1000AD420(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t PCProximityEventType.description.getter(unint64_t a1)
{
  v1 = sub_10001A8C4(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000AD4C8()
{
  v1 = sub_10001A8C4(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000AD518()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033EFA0);
  sub_100003078(v0, qword_10033EFA0);
  return Logger.init(subsystem:category:)();
}

void sub_1000AD598()
{
  v1 = v0;
  if (*(v0 + 88))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v4 = sub_10001CA2C(*(v0 + 80));
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v5;
  }

  if (qword_100338ED8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033EFA0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    v11 = sub_100017494(v3, v2, &v12);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Clearing cached handoffDirection, oldValue = %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  else
  {
  }

  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
}

void sub_1000AD744(void *a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  v31 = a5;
  v33 = a4;
  v32 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v30[-v14];
  v16 = [objc_allocWithZone(SFNotificationInfo) init];
  if ([a1 interactionDirection])
  {
    v17 = [a1 legacyAttachmentURL];
    if (v17)
    {
      v18 = v17;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 32))(v15, v13, v8);
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      [v16 setAttachmentURL:v20];

      (*(v9 + 8))(v15, v8);
    }

    v22 = [a1 legacyBodyText];
    if (v22)
    {
      v23 = v22;
      [v16 setBody:v22];
    }

    v24 = [a1 localizedPrimaryAltText];
    if (v24)
    {
      v25 = v24;
      [v16 setTitle:v24];
    }

    if (*(v5 + 88))
    {
      v26 = [a1 interactionDirection];
    }

    else
    {
      v26 = *(v5 + 80);
    }

    if (v26 == 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * (v26 == 1);
    }

    [v16 setInteractionDirection:v29];
    *(v5 + 96) = [a1 interactionDirection];
    *(v5 + 104) = 0;
  }

  else
  {
    v27 = [objc_allocWithZone(SFNotificationError) init];
    v28 = String._bridgeToObjectiveC()();
    [v27 setErrorDescription:v28];

    [v16 setError:v27];
  }

  sub_1000ADA44(v16, a2, v32, v33, v31 & 1);
}

void sub_1000ADA44(void *a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v6 = *(v5 + 112);
  if (v6)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = *(v5 + 16) + qword_100346AF8;

    v13 = v6;
    os_unfair_lock_lock(v12);
    v14 = *(v12 + 8);

    v16 = sub_1000AEE7C(v15, a2, a3);

    os_unfair_lock_unlock(v12);
    if (v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v17 = sub_10000C868();
      v19 = v18;

      sub_100058DC8(v17, v19);

      v20 = String._bridgeToObjectiveC()();

      [a1 setHeader:v20];
    }

    if (a5)
    {
      if (qword_100338ED8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_10033EFA0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_100017494(0xD000000000000025, 0x800000010029ACB0, &aBlock);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_100017494(a2, a3, &aBlock);
        _os_log_impl(&_mh_execute_header, v22, v23, "%s for %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      v25 = [objc_allocWithZone(SFNotificationError) init];
      v26 = String._bridgeToObjectiveC()();
      [v25 setErrorDescription:v26];

      [a1 setError:v25];
    }

    if (a4)
    {
      if (a4 == 1)
      {
        if (qword_100338ED8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100003078(v27, qword_10033EFA0);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "PROVIDING content to SFProximityClient", v30, 2u);
        }

        v31 = String._bridgeToObjectiveC()();
        v47 = sub_1000AEE50;
        v48 = v11;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100124498;
        v46 = &unk_100305238;
        v32 = _Block_copy(&aBlock);

        [v13 provideContent:a1 forDevice:v31 force:0 completion:v32];
      }

      else
      {
        if (qword_100338ED8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100003078(v38, qword_10033EFA0);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "UPDATING content to SFProximityClient", v41, 2u);
        }

        v31 = String._bridgeToObjectiveC()();
        v47 = sub_1000AEE50;
        v48 = v11;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100124498;
        v46 = &unk_100305210;
        v32 = _Block_copy(&aBlock);

        [v13 updateContent:a1 forDevice:v31 completion:v32];
      }

      _Block_release(v32);
    }

    else
    {
      v33 = v13;
      if (qword_100338ED8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100003078(v34, qword_10033EFA0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Not delivering content to SFProximityClient, delivery mode = .none", v37, 2u);
      }
    }
  }
}

void sub_1000AE12C(void *a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v6 = a1[2];
  if (v6)
  {
    if (v6 == 1)
    {
      if (*(v5 + 88) == 1)
      {
        v14 = v5;
        if (qword_100338ED8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100003078(v15, qword_10033EFA0);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_100017494(7104878, 0xE300000000000000, aBlock);
          _os_log_impl(&_mh_execute_header, v16, v17, "Updating handoffDirection to %s", v18, 0xCu);
          sub_10000903C(v19);
        }

        v20 = *(v14 + 104);
        *(v14 + 80) = *(v14 + 96);
        *(v14 + 88) = v20;
      }
    }

    else if (v6 == 2)
    {
      v7 = *(v5 + 112);
      if (v7)
      {
        v10 = v7;
        sub_1000AD598();
        v11 = String._bridgeToObjectiveC()();
        v12 = swift_allocObject();
        *(v12 + 16) = a2;
        *(v12 + 24) = a3;
        aBlock[4] = sub_1000AEE24;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100124498;
        aBlock[3] = &unk_1003051C0;
        v13 = _Block_copy(aBlock);

        [v10 dismissContentForDevice:v11 completion:v13];
        _Block_release(v13);
      }
    }

    else
    {
      v22 = a1[3];
      v21 = a1[4];
      v27 = [objc_allocWithZone(SFNotificationError) init];
      v28 = String._bridgeToObjectiveC()();
      [v27 setErrorDescription:v28];

      v29 = [objc_allocWithZone(SFNotificationInfo) init];
      [v29 setError:v27];
      sub_1000AD598();
      sub_1000ADA44(v29, a2, a3, a4, a5 & 1);
    }
  }
}

void sub_1000AE464(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10033EFA0);
    swift_errorRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_100017494(a2, a3, &v21);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0x16u);
      sub_1000030B0(v12);

      sub_10000903C(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10033EFA0);

    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100017494(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, oslog, v17, a5, v18, 0xCu);
      sub_10000903C(v19);
    }

    else
    {
    }
  }
}

void sub_1000AE7A8(uint64_t a1)
{
  v2 = v1;
  if (qword_100338ED8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EFA0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315138;
    v9 = sub_1000092A0();
    v11 = sub_100017494(v9, v10, v33);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tracking %s", v7, 0xCu);
    sub_10000903C(v8);

    v2 = v1;
  }

  *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate + 8) = &off_100305178;
  swift_unknownObjectWeakAssign();
  sub_100016F18(a1);
  v12 = v2 + 3;
  v13 = v2[3];
  v14 = v2[6];
  if (v14)
  {
    v15 = v2[5];
    v16 = v2[9];
    v32 = v2[8];
    v17 = v2[7];
    v30 = v2;
    v18 = v2[4];
    swift_getKeyPath();
    swift_getKeyPath();

    v31 = v15;
    sub_1000AED9C(v13, v18, v15, v14);
    static Published.subscript.getter();

    v19 = sub_10000DF0C();
    v21 = v20;

    if (v21)
    {
      if (v32 == v19 && v16 == v21)
      {
        swift_bridgeObjectRelease_n();

LABEL_12:
        swift_getKeyPath();
        swift_getKeyPath();
        v33[0] = v13;
        v33[1] = v18 & 1;
        v33[2] = v31;
        v33[3] = v14;
        v34 = v17;

        static Published.subscript.setter();
        v23 = v30[3];
        v24 = v30[4];
        v25 = v30[5];
        v26 = v30[6];
        v27 = v30[7];
        v28 = v30[8];
        v29 = v30[9];
        *v12 = 0u;
        *(v12 + 1) = 0u;
        *(v12 + 2) = 0u;
        v12[6] = 0;
        sub_1000AEDE0(v23, v24, v25, v26);
        return;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      swift_bridgeObjectRelease_n();
      if (v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_1000AEB00(uint64_t a1)
{
  v3 = a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, swift_unknownObjectRelease(), v5 == v1))
  {
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10033EFA0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_1000092A0();
      v16 = sub_100017494(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Untracking %s", v12, 0xCu);
      sub_10000903C(v13);
    }

    *(v3 + 8) = 0;
    swift_unknownObjectWeakAssign();

    sub_1000F9264(a1);
  }

  else
  {
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10033EFA0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "### UntrackIfNeeded: device.legacyDelegate != self", v8, 2u);
    }
  }
}

uint64_t sub_1000AED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1000AEDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1000AEE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_11:
    v13 = *(*(a1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = sub_10000DF0C();
    v16 = v15;

    if (v16)
    {
      if (v14 == a2 && v16 == a3)
      {

        return v13;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {

        return v13;
      }
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF038(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (!(a2 >> 62))
    {
      v4 = sub_1000B045C(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a1, 0);
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = v4;
      }

      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < v6)
      {
        goto LABEL_18;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        return result;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  v9 = sub_1000B045C(v8, v2, 0);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v11)
  {
    goto LABEL_21;
  }

  v12 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_19;
  }

  if (result < v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  result = v12;
  if (v11 < 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1000AF120()
{
  v1 = [v0 interactionDirection];
  if (v1 == 1)
  {
    v2 = &selRef_selectedDeviceState;
  }

  else
  {
    if (v1 != 2)
    {
      return 7;
    }

    v2 = &selRef_proxDeviceState;
  }

  v3 = [v0 *v2];
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  v5 = [v3 playerPath];

  if (!v5)
  {
    return 7;
  }

  v6 = [v5 client];

  if (!v6)
  {
    return 7;
  }

  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    return 7;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = v8 == 0x6C7070612E6D6F63 && v10 == 0xEF636973754D2E65;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v8 == 0xD000000000000012 && 0x8000000100299600 == v10)
  {

    return 3;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_1000AF2E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033EFB8, &qword_100275728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFC0, &qword_100275730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AF418(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033DE68, &qword_100274150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AF59C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F000, &qword_1002783F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000AF698(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F008, &qword_100275748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000AF794(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033EFD0, &qword_1002783C0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AF8A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033EFC8, &qword_100275738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AF9AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&unk_100345F20, &qword_100275750);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000AFAC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F030, &qword_100275778);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000AFBB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F050, &qword_100275790);
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

char *sub_1000AFCBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F010, &qword_100275758);
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

void *sub_1000AFE20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100035D04(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFE8, &unk_100275EA0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_1000AFF4C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100035D04(&qword_10033F018, &qword_100275760);
  v10 = *(sub_100035D04(&qword_10033E570, &unk_100274720) - 8);
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
  v15 = *(sub_100035D04(&qword_10033E570, &unk_100274720) - 8);
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

char *sub_1000B013C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F048, &qword_100275780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1000B0280(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100035D04(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000B045C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -a2;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 1)
  {
    if (v4 < 0 || v4 >= v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 <= 0 && v3 < v4)
  {
    return 0;
  }

LABEL_10:
  v5 = __OFADD__(result, v3);
  result -= a2;
  if (v5)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1000B04BC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000B0594()
{
  v1 = 0x736F6C4365766F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_1000B05F0(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_100035D04(&qword_10033F0D0, &qword_100275A68);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_100035D04(&qword_10033F0D8, &qword_100275A70);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100035D04(&qword_10033F0E0, &qword_100275A78);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_100035D04(&qword_10033F0E8, &qword_100275A80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000B1398();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1000B1440();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1000B13EC();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1000B1494();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1000B0970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B0CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B0998(uint64_t a1)
{
  v2 = sub_1000B1398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B09D4(uint64_t a1)
{
  v2 = sub_1000B1398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0A10(uint64_t a1)
{
  v2 = sub_1000B1494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0A4C(uint64_t a1)
{
  v2 = sub_1000B1494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0A88(uint64_t a1)
{
  v2 = sub_1000B1440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0AC4(uint64_t a1)
{
  v2 = sub_1000B1440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0B00(uint64_t a1)
{
  v2 = sub_1000B13EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0B3C(uint64_t a1)
{
  v2 = sub_1000B13EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0B78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B0E28(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000B0BE4()
{
  result = qword_10033F070;
  if (!qword_10033F070)
  {
    sub_100035D4C(&qword_10033F078, qword_100275858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F070);
  }

  return result;
}

unint64_t sub_1000B0C4C()
{
  result = qword_10033F080;
  if (!qword_10033F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F080);
  }

  return result;
}

unint64_t sub_1000B0CA4()
{
  result = qword_10033F088;
  if (!qword_10033F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F088);
  }

  return result;
}

uint64_t sub_1000B0CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65756E69746E6F63 && a2 == 0xEE00646570706154;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF74756F656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010029ADA0 == a2)
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

uint64_t sub_1000B0E28(uint64_t *a1)
{
  v36 = sub_100035D04(&qword_10033F090, &qword_100275A40);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v36);
  v38 = &v31 - v3;
  v37 = sub_100035D04(&qword_10033F098, &qword_100275A48);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v37);
  v6 = &v31 - v5;
  v7 = sub_100035D04(&qword_10033F0A0, &qword_100275A50);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_100035D04(&qword_10033F0A8, &qword_100275A58);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_10000EBC0(a1, v16);
  sub_1000B1398();
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_100218008();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1000B1440();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000903C(v40);
          return v12;
        }

        v45 = 2;
        sub_1000B13EC();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1000B1494();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v12 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v27 = &type metadata for EducationViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_10000903C(v40);
  return v12;
}

unint64_t sub_1000B1398()
{
  result = qword_10033F0B0;
  if (!qword_10033F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0B0);
  }

  return result;
}

unint64_t sub_1000B13EC()
{
  result = qword_10033F0B8;
  if (!qword_10033F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0B8);
  }

  return result;
}

unint64_t sub_1000B1440()
{
  result = qword_10033F0C0;
  if (!qword_10033F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0C0);
  }

  return result;
}

unint64_t sub_1000B1494()
{
  result = qword_10033F0C8;
  if (!qword_10033F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0C8);
  }

  return result;
}

unint64_t sub_1000B14E8()
{
  result = qword_10033F0F0;
  if (!qword_10033F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0F0);
  }

  return result;
}

unint64_t sub_1000B1580()
{
  result = qword_10033F0F8;
  if (!qword_10033F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0F8);
  }

  return result;
}

unint64_t sub_1000B15D8()
{
  result = qword_10033F100;
  if (!qword_10033F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F100);
  }

  return result;
}

unint64_t sub_1000B1630()
{
  result = qword_10033F108;
  if (!qword_10033F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F108);
  }

  return result;
}

unint64_t sub_1000B1688()
{
  result = qword_10033F110;
  if (!qword_10033F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F110);
  }

  return result;
}

unint64_t sub_1000B16E0()
{
  result = qword_10033F118;
  if (!qword_10033F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F118);
  }

  return result;
}

unint64_t sub_1000B1738()
{
  result = qword_10033F120;
  if (!qword_10033F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F120);
  }

  return result;
}

unint64_t sub_1000B1790()
{
  result = qword_10033F128;
  if (!qword_10033F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F128);
  }

  return result;
}

unint64_t sub_1000B17E8()
{
  result = qword_10033F130;
  if (!qword_10033F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F130);
  }

  return result;
}

unint64_t sub_1000B1840()
{
  result = qword_10033F138;
  if (!qword_10033F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F138);
  }

  return result;
}

uint64_t sub_1000B1898(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v8 = *(v4 + 2);
  v154 = *(v4 + 4);
  v155 = v8;
  v152[4] = v8;
  v152[5] = v154;
  sub_100009848(&v155, &v147, &qword_10033F140, &qword_100275E20);
  sub_100009848(&v154, &v147, &qword_10033F140, &qword_100275E20);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v9 != 2)
  {
    v11 = &v152[v9];
    v12 = v11[4];
    ++v9;
    if (v12)
    {
      v13 = v11[4];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000AF794(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_1000AF794((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      *&v10[8 * v15 + 32] = v12;
    }
  }

  sub_100035D04(&qword_10033F140, &qword_100275E20);
  swift_arrayDestroy();
  v16 = *(v6 + 3);
  v152[10] = v10;
  v153 = v16;
  v17 = *(v10 + 2);
  v18 = _swiftEmptyArrayStorage[2];
  v19 = (*&v18 + v17);
  v20 = __OFADD__(*&v18, v17);

  if (v20)
  {
    goto LABEL_172;
  }

  v21 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    v20 = _swiftEmptyArrayStorage;
    if (v19 <= _swiftEmptyArrayStorage[3] >> 1)
    {
      if (*(v10 + 2))
      {
        goto LABEL_16;
      }

LABEL_24:

      if (v17)
      {
        goto LABEL_173;
      }

      v18 = *(v20 + 16);
      goto LABEL_26;
    }
  }

  if (*&v18 <= v19)
  {
    v24 = *&v18 + v17;
  }

  else
  {
    v24 = v18;
  }

  v20 = sub_1000AF794(isUniquelyReferenced_nonNull_native, v24, 1, _swiftEmptyArrayStorage);
  if (!*(v10 + 2))
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((*(v20 + 24) >> 1) - *(v20 + 16) < v17)
  {
    goto LABEL_174;
  }

  swift_arrayInitWithCopy();

  v18 = *(v20 + 16);
  if (v17)
  {
    v23 = __OFADD__(*&v18, v17);
    *&v18 += v17;
    if (v23)
    {
      goto LABEL_176;
    }

    *(v20 + 16) = v18;
  }

LABEL_26:
  v25 = v153;
  v10 = *(v153 + 2);
  v19 = &v10[*&v18];
  if (__OFADD__(*&v18, v10))
  {
    goto LABEL_172;
  }

  v26 = swift_isUniquelyReferenced_nonNull_native();
  if (v26 && v19 <= *(v20 + 24) >> 1)
  {
    if (*(v25 + 2))
    {
      goto LABEL_30;
    }

LABEL_38:

    if (v10)
    {
      goto LABEL_173;
    }

    goto LABEL_39;
  }

  if (*&v18 <= v19)
  {
    v29 = &v10[*&v18];
  }

  else
  {
    v29 = v18;
  }

  v20 = sub_1000AF794(v26, v29, 1, v20);
  if (!*(v25 + 2))
  {
    goto LABEL_38;
  }

LABEL_30:
  if ((*(v20 + 24) >> 1) - *(v20 + 16) < v10)
  {
    goto LABEL_174;
  }

  swift_arrayInitWithCopy();

  if (v10)
  {
    v27 = *(v20 + 16);
    v23 = __OFADD__(*&v27, v10);
    v28 = &v10[*&v27];
    if (v23)
    {
      goto LABEL_176;
    }

    *(v20 + 16) = v28;
  }

LABEL_39:
  sub_100035D04(&qword_10033F148, &qword_100275E28);
  swift_arrayDestroy();
  v19 = *(v20 + 16);
  v130 = v19;
  if (v19)
  {
    *&v147 = _swiftEmptyArrayStorage;
    v10 = &v147;
    sub_1000CDFC0(0, v19, 0);
    v30 = v147;
    v5 = v20;
    v31 = (v20 + 32);
    v32 = *(v147 + 16);
    do
    {
      v33 = *(*v31 + 16);
      *&v147 = v30;
      v34 = v30[3];
      v35 = v32 + 1;
      if (v32 >= v34 >> 1)
      {
        v10 = &v147;
        sub_1000CDFC0((v34 > 1), v32 + 1, 1);
        v30 = v147;
      }

      v30[2] = v35;
      v30[v32 + 4] = v33;
      v31 += 8;
      ++v32;
      --v19;
    }

    while (v19);
    v21 = _swiftEmptyArrayStorage;
    v20 = v5;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage[2];
    if (!v35)
    {

LABEL_116:

      v5 = _swiftEmptyArrayStorage;
      goto LABEL_117;
    }

    v30 = _swiftEmptyArrayStorage;
  }

  v18 = v30[4];
  v36 = v35 - 1;
  if (v35 != 1)
  {
    if (v35 >= 5)
    {
      v37 = v36 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v38 = vdupq_n_s64(*&v18);
      v39 = (v30 + 7);
      v40 = v36 & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v38;
      do
      {
        v38 = vbslq_s8(vcgtq_s64(v38, v39[-1]), v38, v39[-1]);
        v41 = vbslq_s8(vcgtq_s64(v41, *v39), v41, *v39);
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      v42 = vbslq_s8(vcgtq_s64(v38, v41), v38, v41);
      v43 = vextq_s8(v42, v42, 8uLL).u64[0];
      v18 = vbsl_s8(vcgtd_s64(v42.i64[0], v43), *v42.i8, v43);
      if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v37 = 1;
    }

    v44 = v35 - v37;
    v45 = &v30[v37 + 4];
    do
    {
      v47 = *v45++;
      v46 = v47;
      if (*&v18 <= *&v47)
      {
        v18 = v46;
      }

      --v44;
    }

    while (v44);
  }

LABEL_57:

  if ((*&v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_175;
  }

  if (!*&v18)
  {
    goto LABEL_116;
  }

  v125 = v6;
  v126 = v16;
  v139[0] = _swiftEmptyArrayStorage;
  v10 = v139;
  sub_1000CDFC0(0, *&v18, 0);
  v48 = 0;
  v5 = v139[0];
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a4 & 1) == 0)
  {
    v49 = a3;
  }

  v127 = (v20 + 32);
  v128 = v49;
  v129 = v18;
  do
  {
    v132 = v5;
    v18 = v130;
    if (v130)
    {
      *&v147 = _swiftEmptyArrayStorage;
      v10 = &v147;
      sub_1000CDF40(0, v130, 0);
      v16 = v147;
      v50 = v127;
      v51 = v130;
      do
      {
        if (v48 >= *(*v50 + 16))
        {
          v5 = 0;
          v18 = 0xE000000000000000;
        }

        else
        {
          v52 = *v50 + 16 * v48;
          v5 = *(v52 + 32);
          v18 = *(v52 + 40);
        }

        *&v147 = v16;
        v54 = *(v16 + 2);
        v53 = *(v16 + 3);
        v55 = (v54 + 1);
        if (v54 >= v53 >> 1)
        {
          v10 = &v147;
          sub_1000CDF40((v53 > 1), v54 + 1, 1);
          v16 = v147;
        }

        *(v16 + 2) = v55;
        v56 = &v16[16 * v54];
        v56[4] = v5;
        v56[5] = v18;
        v50 += 8;
        --v51;
      }

      while (v51);
LABEL_72:
      v20 = 0;
      v57 = (v16 + 40);
      v21 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v20 >= *(v16 + 2))
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          v18 = sub_100009088(0, *(*&v18 + 16) + 1, 1, *&v18);
LABEL_119:
          v88 = *(*&v18 + 16);
          v87 = *(*&v18 + 24);
          if (v88 >= v87 >> 1)
          {
            v18 = sub_100009088((v87 > 1), v88 + 1, 1, *&v18);
          }

          *(*&v18 + 16) = v88 + 1;
          v89 = *&v18 + 16 * v88;
          *(v89 + 32) = v20;
          *(v89 + 40) = v10;
          goto LABEL_123;
        }

        v58 = *v57;
        *&v147 = *(v57 - 1);
        *(&v147 + 1) = v58;
        sub_10001369C();

        v18 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

        v10 = *(*&v18 + 16);
        v5 = *(v21 + 2);
        v19 = &v10[v5];
        if (__OFADD__(v5, v10))
        {
          goto LABEL_164;
        }

        v59 = swift_isUniquelyReferenced_nonNull_native();
        if ((v59 & 1) != 0 && v19 <= *(v21 + 3) >> 1)
        {
          if (*(*&v18 + 16))
          {
            goto LABEL_85;
          }
        }

        else
        {
          if (v5 <= v19)
          {
            v60 = &v10[v5];
          }

          else
          {
            v60 = v5;
          }

          v21 = sub_1000AF8A0(v59, v60, 1, v21);
          if (*(*&v18 + 16))
          {
LABEL_85:
            if ((*(v21 + 3) >> 1) - *(v21 + 2) < v10)
            {
              goto LABEL_166;
            }

            swift_arrayInitWithCopy();

            if (v10)
            {
              v61 = *(v21 + 2);
              v23 = __OFADD__(v61, v10);
              v62 = &v10[v61];
              if (v23)
              {
                goto LABEL_167;
              }

              *(v21 + 2) = v62;
            }

            goto LABEL_74;
          }
        }

        if (v10)
        {
          goto LABEL_165;
        }

LABEL_74:
        ++v20;
        v57 += 2;
        if (v55 == v20)
        {
          goto LABEL_89;
        }
      }
    }

    v55 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage;
    if (v55)
    {
      goto LABEL_72;
    }

LABEL_89:

    swift_getKeyPath();
    v63 = *(v21 + 2);
    if (v63)
    {
      v151 = _swiftEmptyArrayStorage;
      sub_1000CDFC0(0, v63, 0);
      v10 = v151;
      v64 = (v21 + 56);
      do
      {
        v65 = *(v64 - 1);
        v66 = *v64;
        v147 = *(v64 - 3);
        v148 = v65;
        v149 = v66;

        swift_getAtKeyPath();

        v67 = v150;
        v151 = v10;
        v69 = *(v10 + 2);
        v68 = *(v10 + 3);
        if (v69 >= v68 >> 1)
        {
          sub_1000CDFC0((v68 > 1), v69 + 1, 1);
          v10 = v151;
        }

        *(v10 + 2) = v69 + 1;
        *&v10[8 * v69 + 32] = v67;
        v64 += 4;
        --v63;
      }

      while (v63);

      v21 = _swiftEmptyArrayStorage;
    }

    else
    {

      v21 = _swiftEmptyArrayStorage;
      v10 = _swiftEmptyArrayStorage;
    }

    v70 = *(v10 + 2);
    v5 = v132;
    if (v70)
    {
      v71 = *(v10 + 4);
      v72 = v70 - 1;
      if (v70 != 1)
      {
        if (v70 >= 5)
        {
          v73 = v72 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v74 = vdupq_n_s64(v71);
          v75 = (v10 + 56);
          v76 = v72 & 0xFFFFFFFFFFFFFFFCLL;
          v77 = v74;
          do
          {
            v74 = vbslq_s8(vcgtq_s64(v74, v75[-1]), v74, v75[-1]);
            v77 = vbslq_s8(vcgtq_s64(v77, *v75), v77, *v75);
            v75 += 2;
            v76 -= 4;
          }

          while (v76);
          v78 = vbslq_s8(vcgtq_s64(v74, v77), v74, v77);
          v79 = vextq_s8(v78, v78, 8uLL).u64[0];
          v71 = vbsl_s8(vcgtd_s64(v78.i64[0], v79), *v78.i8, v79);
          if (v72 == (v72 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_108;
          }
        }

        else
        {
          v73 = 1;
        }

        v80 = v70 - v73;
        v81 = &v10[8 * v73 + 32];
        do
        {
          v83 = *v81++;
          v82 = v83;
          if (v71 <= v83)
          {
            v71 = v82;
          }

          --v80;
        }

        while (v80);
      }
    }

    else
    {
      v71 = 0;
    }

LABEL_108:

    if (v128 >= v71)
    {
      v84 = v71;
    }

    else
    {
      v84 = v128;
    }

    v139[0] = v132;
    v86 = v132[2];
    v85 = v132[3];
    if (v86 >= v85 >> 1)
    {
      v10 = v139;
      sub_1000CDFC0((v85 > 1), v86 + 1, 1);
      v5 = v139[0];
    }

    ++v48;
    *(v5 + 16) = v86 + 1;
    *(v5 + 8 * v86 + 32) = v84;
  }

  while (v48 != *&v129);

  v6 = v125;
  v16 = v126;
LABEL_117:
  v19 = &v140;
  v147 = *v6;
  v141 = v147;
  sub_100009848(&v147, v139, &qword_10033A238, &qword_10027D3E0);
  v10 = *(&v141 + 1);
  if (*(&v141 + 1))
  {
    v20 = v141;

    v18 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_119;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_123:
  sub_1000097E8((v19 + 32), &qword_10033A238, &qword_10027D3E0);
  v143 = v18;
  if (!v155)
  {
    v137 = 0;
    v138 = 0;
    goto LABEL_131;
  }

  v90 = sub_1000B260C(v5, a1, a2, v155);
  v137 = v90;
  v138 = v91;
  if (!v91)
  {
LABEL_131:
    v94 = _swiftEmptyArrayStorage;
    goto LABEL_132;
  }

  v92 = v90;
  v93 = v91;

  v94 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = sub_100009088(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v96 = *(v94 + 2);
  v95 = *(v94 + 3);
  if (v96 >= v95 >> 1)
  {
    v94 = sub_100009088((v95 > 1), v96 + 1, 1, v94);
  }

  *(v94 + 2) = v96 + 1;
  v97 = &v94[16 * v96];
  *(v97 + 4) = v92;
  *(v97 + 5) = v93;
LABEL_132:
  sub_1000097E8(&v137, &qword_10033A238, &qword_10027D3E0);
  v144 = v94;
  v98 = *(v16 + 2);
  v99 = _swiftEmptyArrayStorage;
  if (v98)
  {
    v139[0] = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v98, 0);
    v99 = v139[0];
    v100 = (v16 + 32);
    do
    {
      v101 = *v100;

      v102 = sub_1000B260C(v5, a1, a2, v101);
      v104 = v103;

      v139[0] = v99;
      v106 = v99[2];
      v105 = v99[3];
      if (v106 >= v105 >> 1)
      {
        sub_1000CDF40((v105 > 1), v106 + 1, 1);
        v99 = v139[0];
      }

      v99[2] = v106 + 1;
      v107 = &v99[2 * v106];
      v107[4] = v102;
      v107[5] = v104;
      ++v100;
      --v98;
    }

    while (v98);
  }

  v145 = v99;
  if (!v154)
  {

    v135 = 0;
    v136 = 0;
    goto LABEL_145;
  }

  v108 = sub_1000B260C(v5, a1, a2, v154);
  v110 = v109;

  v135 = v108;
  v136 = v110;
  if (!v110)
  {
LABEL_145:
    v111 = _swiftEmptyArrayStorage;
    goto LABEL_146;
  }

  v111 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v111 = sub_100009088(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v113 = *(v111 + 2);
  v112 = *(v111 + 3);
  if (v113 >= v112 >> 1)
  {
    v111 = sub_100009088((v112 > 1), v113 + 1, 1, v111);
  }

  *(v111 + 2) = v113 + 1;
  v114 = &v111[16 * v113];
  *(v114 + 4) = v108;
  *(v114 + 5) = v110;
LABEL_146:
  v20 = v142;
  sub_1000097E8(&v135, &qword_10033A238, &qword_10027D3E0);
  v146 = v111;
  v18 = _swiftEmptyArrayStorage;
  v115 = 32;
  v16 = v142;
  v10 = &type metadata for String;
  while (2)
  {
    v19 = *&v142[v115];
    v116 = *(v19 + 2);
    v117 = *(*&v18 + 16);
    v5 = v117 + v116;
    if (__OFADD__(v117, v116))
    {
      goto LABEL_168;
    }

    v118 = *&v142[v115];

    v119 = swift_isUniquelyReferenced_nonNull_native();
    if (v119 && v5 <= *(*&v18 + 24) >> 1)
    {
      if (!*(v19 + 2))
      {
LABEL_147:

        if (v116)
        {
          goto LABEL_169;
        }

        goto LABEL_148;
      }
    }

    else
    {
      if (v117 <= v5)
      {
        v120 = v117 + v116;
      }

      else
      {
        v120 = v117;
      }

      v18 = sub_100009088(v119, v120, 1, *&v18);
      if (!*(v19 + 2))
      {
        goto LABEL_147;
      }
    }

    if ((*(*&v18 + 24) >> 1) - *(*&v18 + 16) < v116)
    {
      goto LABEL_170;
    }

    swift_arrayInitWithCopy();

    if (v116)
    {
      v121 = *(*&v18 + 16);
      v23 = __OFADD__(v121, v116);
      v122 = v121 + v116;
      if (v23)
      {
        goto LABEL_171;
      }

      *(*&v18 + 16) = v122;
    }

LABEL_148:
    v115 += 8;
    if (v115 != 64)
    {
      continue;
    }

    break;
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  swift_arrayDestroy();
  v139[0] = v18;
  sub_10001CAF4();
  v123 = BidirectionalCollection<>.joined(separator:)();

  return v123;
}

uint64_t sub_1000B260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000B2B2C(a4, a1);
  swift_getKeyPath();
  v5 = v4[2];
  if (!v5)
  {

    v9 = _swiftEmptyArrayStorage[2];
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_11:

LABEL_20:
    __chkstk_darwin(result);
    sub_100035D04(&qword_10033F158, &qword_100275E98);
    sub_1000B3B28();
    Sequence.flatMap<A>(_:)();

    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v24 = BidirectionalCollection<>.joined(separator:)();

    return v24;
  }

  sub_1000CDFC0(0, v5, 0);
  v6 = v4 + 4;
  do
  {
    v25 = *v6;

    swift_getAtKeyPath();

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_1000CDFC0((v7 > 1), v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    _swiftEmptyArrayStorage[v8 + 4] = v26;
    ++v6;
    --v5;
  }

  while (v5);

  v9 = _swiftEmptyArrayStorage[2];
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = _swiftEmptyArrayStorage[4];
  v11 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_19;
  }

  if (v9 >= 5)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v10);
    v15 = &_swiftEmptyArrayStorage[7];
    v16 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v10 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 1;
  }

  v20 = v9 - v12;
  v21 = &_swiftEmptyArrayStorage[v12 + 4];
  do
  {
    v23 = *v21++;
    v22 = v23;
    if (v10 <= v23)
    {
      v10 = v22;
    }

    --v20;
  }

  while (v20);
LABEL_19:

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B28F8(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  sub_10001369C();
  result = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v5 = result;
  v6 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (result + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);
      v29 = *(v9 - 3);
      v30 = v12;
      v31 = v11;
      v32 = v10;

      result = Substring.distance(from:to:)();
      if (!a3)
      {
        goto LABEL_15;
      }

      ++v8;
      __chkstk_darwin(result);
      v28[2] = &v29;
      v28[3] = a3;
      v14 = sub_1000B2D3C(sub_1000B3D6C, v28, 0, v13, a3);

      result = sub_1000B330C(v14);
      v9 += 4;
      if (v7 == v8)
      {
        v15 = v33;
        v6 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_8:

    v16 = v15[2];
    if (v16)
    {
      v29 = _swiftEmptyArrayStorage;
      sub_1000CDF40(0, v16, 0);
      v6 = v29;
      v17 = v15 + 7;
      do
      {
        v18 = *(v17 - 3);
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v21 = *v17;

        v22 = static String._fromSubstring(_:)();
        v24 = v23;

        v29 = v6;
        v26 = v6[2];
        v25 = v6[3];
        if (v26 >= v25 >> 1)
        {
          sub_1000CDF40((v25 > 1), v26 + 1, 1);
          v6 = v29;
        }

        v6[2] = v26 + 1;
        v27 = &v6[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v17 += 4;
        --v16;
      }

      while (v16);
    }

    return v6;
  }

  return result;
}

void *sub_1000B2B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_1000CDFE0(0, v6, 0);
  v27 = v5;
  v28 = v4;
  v25 = a1;
  v26 = v6;
  v29 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *v8;

      v13 = sub_1000B28F8(v10, v11, v12);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1000CDFE0((v14 > 1), v15 + 1, 1);
      }

      --v5;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      _swiftEmptyArrayStorage[v15 + 4] = v13;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v28 <= v27)
    {
      return _swiftEmptyArrayStorage;
    }

    v30 = v29 + 32;
    v16 = v26;
    v17 = (v25 + 16 * v26 + 40);
    while (v16 < v28)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v27 != v16)
      {
        if (v16 >= v27)
        {
          goto LABEL_25;
        }

        v19 = *(v17 - 1);
        v20 = *v17;
        v21 = *(v30 + 8 * v16);

        v22 = sub_1000B28F8(v19, v20, v21);

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          result = sub_1000CDFE0((v23 > 1), v24 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v24 + 1;
        _swiftEmptyArrayStorage[v24 + 4] = v22;
        ++v16;
        v17 += 2;
        if (v18 != v28)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000B2D3C(void (*a1)(__int128 *__return_ptr, int64_t *), uint64_t a2, int64_t a3, int64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = 0;
  v9 = a3;
  while (1)
  {
    v10 = v9 <= a4;
    if (a5 > 0)
    {
      v10 = v9 >= a4;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a5);
    v9 += a5;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  v40 = _swiftEmptyArrayStorage;
  sub_1000CE020(0, v8, 0);
  v12 = _swiftEmptyArrayStorage;
  if (v8)
  {
    while (1)
    {
      v13 = v7 <= a4;
      if (a5 > 0)
      {
        v13 = v7 >= a4;
      }

      if (v13)
      {
        break;
      }

      if (__OFADD__(v7, a5))
      {
        v14 = ((v7 + a5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v7 + a5;
      }

      v35 = v7;
      v36 = 0;
      a1(&v37, &v35);
      if (v5)
      {
        goto LABEL_38;
      }

      v15 = v37;
      v16 = v38;
      v17 = v39;
      v40 = v12;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        v31 = v37;
        sub_1000CE020((v18 > 1), v19 + 1, 1);
        v15 = v31;
        v12 = v40;
      }

      v12[2] = v19 + 1;
      v20 = &v12[4 * v19];
      *(v20 + 2) = v15;
      v20[6] = v16;
      v20[7] = v17;
      v7 = v14;
      if (!--v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:

    __break(1u);
  }

  else
  {
    v14 = v7;
LABEL_23:
    v21 = v14 <= a4;
    if (a5 > 0)
    {
      v21 = v14 >= a4;
    }

    if (v21)
    {
      return v12;
    }

    while (1)
    {
      v23 = __OFADD__(v14, a5) ? ((v14 + a5) >> 63) ^ 0x8000000000000000 : v14 + a5;
      v35 = v14;
      a1(&v37, &v35);
      if (v5)
      {
        break;
      }

      v24 = v37;
      v25 = v38;
      v26 = v39;
      v40 = v12;
      v28 = v12[2];
      v27 = v12[3];
      if (v28 >= v27 >> 1)
      {
        v32 = v37;
        sub_1000CE020((v27 > 1), v28 + 1, 1);
        v24 = v32;
        v12 = v40;
      }

      v12[2] = v28 + 1;
      v29 = &v12[4 * v28];
      *(v29 + 2) = v24;
      v29[6] = v25;
      v29[7] = v26;
      v30 = v23 <= a4;
      if (a5 > 0)
      {
        v30 = v23 >= a4;
      }

      v14 = v23;
      if (v30)
      {
        return v12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B2FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a4;
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = *a1;
    v28 = v6;
    result = sub_1000CDF40(0, v6, 0);
    v10 = v28;
    v11 = 0;
    v30 = a2 + 32;
    v29 = a3 + 32;
    v12 = *(a3 + 16);
    while (v12 != v11)
    {
      v13 = 0;
      v14 = *(v30 + 8 * v11);
      v15 = *(v29 + 8 * v11);
      v16 = 0xE000000000000000;
      if ((v8 & 0x8000000000000000) == 0 && v8 < *(v14 + 16))
      {
        v17 = v14 + 16 * v8;
        v13 = *(v17 + 32);
        v16 = *(v17 + 40);
      }

      if (v11 < v28 - 1)
      {

        result = String.count.getter();
        v18 = v15 - result;
        if (__OFSUB__(v15, result))
        {
          goto LABEL_18;
        }

        if (v18 >= 1)
        {
          v19._countAndFlagsBits = 32;
          v19._object = 0xE100000000000000;
          v20 = String.init(repeating:count:)(v19, v18);

          String.append(_:)(v20);
        }

        v10 = v28;
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1000CDF40((v21 > 1), v22 + 1, 1);
        v10 = v28;
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v22 + 1;
      v23 = &_swiftEmptyArrayStorage[2 * v22];
      v23[4] = v13;
      v23[5] = v16;
      if (v10 == v11)
      {
        v5 = a4;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v24 = BidirectionalCollection<>.joined(separator:)();
    v26 = v25;

    *v5 = v24;
    v5[1] = v26;
  }

  return result;
}

void *sub_1000B31EC(void *result)
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

  result = sub_1000AF418(result, v11, 1, v3);
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

  sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
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

uint64_t sub_1000B330C(uint64_t result)
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

  result = sub_1000AF8A0(result, v11, 1, v3);
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

uint64_t sub_1000B3400(uint64_t result)
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

  result = sub_1000AFAC4(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

uint64_t sub_1000B3504(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_100035D04(&qword_10033EFE8, &unk_100275EA0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000B3618(unint64_t a1)
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
  sub_1000B3C08(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001287EC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_1000B3708(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100009088(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_100129000(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_100009088((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_100004F98();
  *v1 = v4;
  return result;
}

uint64_t sub_1000B39C4(unint64_t a1)
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
  sub_1000B3C08(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10012899C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

unint64_t sub_1000B3AB4()
{
  result = qword_10033F150;
  if (!qword_10033F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F150);
  }

  return result;
}

uint64_t sub_1000B3B08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_1000B2FB0(a1, v2[2], v2[3], a2);
}

unint64_t sub_1000B3B28()
{
  result = qword_10033F160;
  if (!qword_10033F160)
  {
    sub_100035D4C(&qword_10033F158, &qword_100275E98);
    sub_1000B3BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F160);
  }

  return result;
}

unint64_t sub_1000B3BB4()
{
  result = qword_10033F168;
  if (!qword_10033F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F168);
  }

  return result;
}

uint64_t sub_1000B3C08(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000B3CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = Substring.index(_:offsetBy:)();
  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v11)
  {
    v12 = v6;
  }

  else
  {
    v12 = result;
  }

  if (v12 >> 14 < v9 >> 14)
  {
    __break(1u);
  }

  else
  {
    result = Substring.subscript.getter();
    *a3 = result;
    a3[1] = v13;
    a3[2] = v14;
    a3[3] = v15;
  }

  return result;
}

uint64_t sub_1000B3D8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(result + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = result;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    v35 = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v7 = v6 + 64;
    v8 = -1 << *(v6 + 32);
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v28 = *(v6 + 36);
    v27 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v28 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      sub_100051658(*(v6 + 48) + 40 * v9, v32);
      sub_10001766C(*(v6 + 56) + 32 * v9, v34);
      v29[0] = v32[0];
      v29[1] = v32[1];
      v30 = v33;
      sub_1000516B4(v34, &v31);
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1002725A0;
      *(v13 + 32) = AnyHashable.description.getter();
      *(v13 + 40) = v14;
      _print_unlocked<A, B>(_:_:)();
      *(v13 + 48) = 0;
      *(v13 + 56) = 0xE000000000000000;
      result = sub_1000097E8(v29, &qword_10033F170, &qword_100275EB8);
      v35 = v5;
      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1000CDF20((v15 > 1), v16 + 1, 1);
        v5 = v35;
      }

      v5[2] = v16 + 1;
      v5[v16 + 4] = v13;
      v11 = 1 << *(v6 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v7 = v6 + 64;
      v17 = *(v6 + 64 + 8 * v12);
      if ((v17 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v28 != *(v6 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        v11 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v12 << 6;
        v20 = v12 + 1;
        v21 = (v6 + 72 + 8 * v12);
        while (v20 < (v11 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_100059628(v9, v28, 0);
            v11 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_100059628(v9, v28, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v27)
      {
        a3 = v25;
        a4 = v26;
        a2 = v24;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    *a4 = a2;
    a4[1] = a3;
    a4[2] = 0;
    a4[3] = v5;
    a4[4] = 0;
  }

  return result;
}
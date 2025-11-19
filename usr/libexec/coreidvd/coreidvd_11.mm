void *sub_10010C430(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013KnownNamespaces();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &_swiftEmptyDictionarySingleton;
  v18 = sub_10010B21C(a1);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10010A39C();
  Collection.nilIfEmpty.getter();
  v7 = v17;

  if (v7)
  {
    (*(v3 + 104))(v6, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v2);
    v8 = ISO18013KnownNamespaces.rawValue.getter();
    v10 = v9;
    (*(v3 + 8))(v6, v2);
    sub_10014C310(v7, v8, v10);
  }

  v18 = sub_10010BDE8(a1);
  Collection.nilIfEmpty.getter();
  v11 = v17;

  if (v11)
  {
    (*(v3 + 104))(v6, enum case for ISO18013KnownNamespaces.iso23220_photoid_1(_:), v2);
    v12 = ISO18013KnownNamespaces.rawValue.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    sub_10014C310(v11, v12, v14);
  }

  return v19;
}

uint64_t sub_10010C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10010C734(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CredentialRevocationInfo()
{
  result = qword_10083AA30;
  if (!qword_10083AA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010C82C()
{
  sub_10010C8C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010C8C0()
{
  if (!qword_10083AA40)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083AA40);
    }
  }
}

uint64_t sub_10010C920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010C964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

Swift::Int sub_10010C9B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10010CA08()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10010CA40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10010CA8C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10010CAAC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_10010CB74()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083AA80, &qword_1006D8CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D8C80;
  strcpy((inited + 32), "numberOfKeys");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x74654D6863746566;
  *(inited + 64) = 0xEB00000000646F68;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "fetchDuration");
  *(inited + 94) = -4864;
  *(inited + 96) = Double._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001006FF880;
  *(inited + 120) = Double._bridgeToObjectiveC()();
  *(inited + 128) = 0xD000000000000021;
  *(inited + 136) = 0x80000001006FF8C0;
  *(inited + 144) = Double._bridgeToObjectiveC()();
  *(inited + 152) = 0xD000000000000018;
  *(inited + 160) = 0x80000001006FF8F0;
  *(inited + 168) = Double._bridgeToObjectiveC()();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001006FF8A0;
  *(inited + 192) = String._bridgeToObjectiveC()();
  v6 = sub_10003E9B4(inited);
  swift_setDeallocating();
  sub_100007224(&qword_10083AA88, &qword_1006D8CC0);
  swift_arrayDestroy();
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_10010D898();
    v11 = Dictionary.description.getter();
    v13 = sub_100141FE4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "KRL.Analytics sendDigitalPresentmentPerformanceEvent: fields = %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v1 + 8))(v4, v0);
  return v6;
}

Class sub_10010CF08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10010D898();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

unint64_t sub_10010CF94()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083AA80, &qword_1006D8CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D8C30;
  strcpy((inited + 32), "numberOfKeys");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x74654D6863746566;
  *(inited + 64) = 0xEB00000000646F68;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "fetchDuration");
  *(inited + 94) = -4864;
  *(inited + 96) = Double._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001006FF880;
  *(inited + 120) = Double._bridgeToObjectiveC()();
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000001006FF8A0;
  *(inited + 144) = String._bridgeToObjectiveC()();
  v6 = sub_10003E9B4(inited);
  swift_setDeallocating();
  sub_100007224(&qword_10083AA88, &qword_1006D8CC0);
  swift_arrayDestroy();
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_10010D898();
    v11 = Dictionary.description.getter();
    v13 = sub_100141FE4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "KRL.Analytics sendMobileDocumentReaderPerformanceEvent: fields = %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v1 + 8))(v4, v0);
  return v6;
}

unint64_t sub_10010D2D4()
{
  v16 = type metadata accessor for Logger();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083AA80, &qword_1006D8CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;

  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001006FF8A0;
  v5 = String._bridgeToObjectiveC()();

  *(inited + 72) = v5;
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = String._bridgeToObjectiveC()();
  v6 = sub_10003E9B4(inited);
  swift_setDeallocating();
  sub_100007224(&qword_10083AA88, &qword_1006D8CC0);
  swift_arrayDestroy();
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_10010D898();
    v11 = Dictionary.description.getter();
    v13 = sub_100141FE4(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "KRL.Analytics sendOutcomeEvent: fields = %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v0 + 8))(v3, v16);
  return v6;
}

void sub_10010D5D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "KRL.Analytics performance data nil; not sending analytics", v19, 2u);
    }

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    if (a6)
    {
      v20 = a5;
    }

    else
    {
      v20 = 0x58582D5355;
    }

    if (a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = String._bridgeToObjectiveC()();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2 & 1;
    *(v23 + 32) = a3;
    *(v23 + 40) = a4;
    *(v23 + 48) = v20;
    *(v23 + 56) = v21;
    aBlock[4] = sub_10010D86C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10010CF08;
    aBlock[3] = &unk_1008093F0;
    v24 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v24);
  }
}

uint64_t sub_10010D834()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10010D86C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_10010CF94();
}

uint64_t sub_10010D880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10010D898()
{
  result = qword_10083AA78;
  if (!qword_10083AA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083AA78);
  }

  return result;
}

unint64_t sub_10010D8F8()
{
  result = qword_10083AA90;
  if (!qword_10083AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083AA90);
  }

  return result;
}

unint64_t sub_10010D94C()
{
  result = qword_10083AA98;
  if (!qword_10083AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083AA98);
  }

  return result;
}

uint64_t sub_10010D9A0()
{
  v45 = type metadata accessor for CharacterSet();
  v0 = *(v45 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v45);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.includeInKRLList.getter();
  v6 = NSUserDefaults.internalString(forKey:)(v5);

  v7 = _swiftEmptyArrayStorage;
  if (v6.value._object)
  {
    v48 = v6;
    v46 = 10;
    v47 = 0xE100000000000000;
    v44[2] = sub_10001F298();
    v8 = StringProtocol.components<A>(separatedBy:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v46 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v9, 0);
      v7 = v46;
      v10 = (v0 + 8);
      v44[1] = v8;
      v11 = (v8 + 40);
      do
      {
        v12 = *v11;
        v48.value._countAndFlagsBits = *(v11 - 1);
        v48.value._object = v12;

        static CharacterSet.whitespacesAndNewlines.getter();
        v13 = StringProtocol.trimmingCharacters(in:)();
        v15 = v14;
        (*v10)(v3, v45);

        v46 = v7;
        v17 = *(v7 + 2);
        v16 = *(v7 + 3);
        if (v17 >= v16 >> 1)
        {
          sub_100172D4C((v16 > 1), v17 + 1, 1);
          v7 = v46;
        }

        *(v7 + 2) = v17 + 1;
        v18 = &v7[16 * v17];
        *(v18 + 4) = v13;
        *(v18 + 5) = v15;
        v11 += 2;
        --v9;
      }

      while (v9);
    }

    v20 = 0;
    v21 = *(v7 + 2);
    countAndFlagsBits = _swiftEmptyArrayStorage;
LABEL_8:
    v23 = &v7[16 * v20 + 40];
    while (v21 != v20)
    {
      if (v20 >= *(v7 + 2))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      ++v20;
      v25 = *(v23 - 1);
      v24 = *v23;
      v23 += 16;
      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v48.value._countAndFlagsBits = countAndFlagsBits;
        if ((result & 1) == 0)
        {
          result = sub_100172D4C(0, countAndFlagsBits[2] + 1, 1);
          countAndFlagsBits = v48.value._countAndFlagsBits;
        }

        v28 = countAndFlagsBits[2];
        v27 = countAndFlagsBits[3];
        if (v28 >= v27 >> 1)
        {
          result = sub_100172D4C((v27 > 1), v28 + 1, 1);
          countAndFlagsBits = v48.value._countAndFlagsBits;
        }

        countAndFlagsBits[2] = v28 + 1;
        v29 = &countAndFlagsBits[2 * v28];
        v29[4] = v25;
        v29[5] = v24;
        goto LABEL_8;
      }
    }

    v30 = 0;
    v31 = countAndFlagsBits[2];
    v7 = _swiftEmptyArrayStorage;
LABEL_20:
    v32 = &countAndFlagsBits[2 * v30 + 5];
    while (v31 != v30)
    {
      if (v30 >= countAndFlagsBits[2])
      {
        goto LABEL_33;
      }

      ++v30;
      v33 = v32 + 2;
      v35 = *(v32 - 1);
      v34 = *v32;

      result = Data.init(base16Encoded:)();
      v32 = v33;
      if (v36 >> 60 != 15)
      {
        v37 = v36;
        v38 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003C55E4(0, *(v7 + 2) + 1, 1, v7);
          v7 = result;
        }

        v40 = *(v7 + 2);
        v39 = *(v7 + 3);
        if (v40 >= v39 >> 1)
        {
          result = sub_1003C55E4((v39 > 1), v40 + 1, 1, v7);
          v42 = v37;
          v7 = result;
          v41 = v38;
        }

        else
        {
          v41 = v38;
          v42 = v37;
        }

        *(v7 + 2) = v40 + 1;
        v43 = &v7[16 * v40];
        *(v43 + 4) = v41;
        *(v43 + 5) = v42;
        goto LABEL_20;
      }
    }
  }

  return v7;
}

uint64_t sub_10010DD98()
{
  v0 = type metadata accessor for Logger();
  v27 = *(v0 - 8);
  v1 = *(v27 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideResponseData.getter();
  v14 = NSUserDefaults.internalString(forKey:)(v13);

  if (!v14.value._object)
  {
    return 0;
  }

  v15 = (v14.value._object >> 56) & 0xF;
  if ((v14.value._object & 0x2000000000000000) == 0)
  {
    v15 = v14.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    return 0;
  }

  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;

  (*(v8 + 8))(v11, v7);
  if (v18 >> 60 == 15)
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "KRL CDN response override value is set, but failed to parse value into data object", v21, 2u);
    }

    (*(v27 + 8))(v4, v0);
    return 0;
  }

  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Got override for KRL CDN response with internal settings value.", v25, 2u);
  }

  (*(v27 + 8))(v6, v0);
  return v16;
}

uint64_t sub_10010E0E4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882068);
  sub_10003170C(v0, qword_100882068);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E160()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882080);
  sub_10003170C(v0, qword_100882080);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E1DC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882098);
  sub_10003170C(v0, qword_100882098);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E258()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820B0);
  sub_10003170C(v0, qword_1008820B0);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E2D4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820C8);
  sub_10003170C(v0, qword_1008820C8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E350()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820E0);
  sub_10003170C(v0, qword_1008820E0);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E3CC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008820F8);
  sub_10003170C(v0, qword_1008820F8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E448()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882110);
  sub_10003170C(v0, qword_100882110);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E4FC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882140);
  sub_10003170C(v0, qword_100882140);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E578()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882158);
  sub_10003170C(v0, qword_100882158);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E5F4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882170);
  sub_10003170C(v0, qword_100882170);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E6E4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Milestone();
  sub_100031898(v3, a2);
  sub_10003170C(v3, a2);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E758()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008821B8);
  sub_10003170C(v0, qword_1008821B8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E7D4()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008821D0);
  sub_10003170C(v0, qword_1008821D0);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E850()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_1008821E8);
  sub_10003170C(v0, qword_1008821E8);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E8CC()
{
  v0 = type metadata accessor for Milestone();
  sub_100031898(v0, qword_100882200);
  sub_10003170C(v0, qword_100882200);
  return Milestone.init(tag:description:)();
}

uint64_t sub_10010E968()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 275));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 275), (v0 + 300));
  sub_100031918((v0 + 275));
  v0[306] = *sub_10000BA08(v0 + 300, v0[303]);
  v2 = swift_task_alloc();
  v0[307] = v2;
  *v2 = v0;
  v2[1] = sub_10010EAB0;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_10010EAB0()
{
  v2 = *v1;
  v3 = *(*v1 + 2456);
  v7 = *v1;
  *(*v1 + 2464) = v0;

  if (v0)
  {
    v4 = *(v2 + 2448);
    v5 = sub_10010EC8C;
  }

  else
  {
    v5 = sub_10010EBCC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10010EBCC()
{
  memcpy(v0 + 169, v0 + 6, 0x1A1uLL);
  sub_1000AA624((v0 + 169), (v0 + 222));
  sub_1000F2758((v0 + 2));
  memcpy(v0 + 116, v0 + 169, 0x1A1uLL);
  nullsub_7(v0 + 116);
  memcpy(v0 + 63, v0 + 116, 0x1A1uLL);
  v1 = v0[305];
  sub_10000BB78(v0 + 300);
  memcpy(v1, v0 + 63, 0x1A1uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10010EC8C()
{
  v1 = *(v0 + 2464);

  return _swift_task_switch(sub_10010ECF4, 0, 0);
}

uint64_t sub_10010ECF4()
{
  sub_10010ED70((v0 + 63));
  v1 = v0[305];
  sub_10000BB78(v0 + 300);
  memcpy(v1, v0 + 63, 0x1A1uLL);
  v2 = v0[1];

  return v2();
}

double sub_10010ED70(uint64_t a1)
{
  *(a1 + 416) = 0;
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10010EDB0()
{
  v1 = type metadata accessor for Logger();
  v0[108] = v1;
  v2 = *(v1 - 8);
  v0[109] = v2;
  v3 = *(v2 + 64) + 15;
  v0[110] = swift_task_alloc();
  v0[111] = swift_task_alloc();

  return _swift_task_switch(sub_10010EE78, 0, 0);
}

uint64_t sub_10010EE78()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableKRL.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[111];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[111];
    v9 = v0[109];
    v10 = v0[108];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Internal settings forced disabled KRL; KRL is disabled", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    v12 = v0[111];
    v13 = v0[110];

    v14 = v0[1];

    return v14(0);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[112] = v16;
    *v16 = v0;
    v16[1] = sub_10010F04C;

    return sub_10010E948((v0 + 55));
  }
}

uint64_t sub_10010F04C()
{
  v1 = *(*v0 + 896);
  v3 = *v0;

  return _swift_task_switch(sub_10010F148, 0, 0);
}

uint64_t sub_10010F148()
{
  memcpy((v0 + 16), (v0 + 440), 0x1A1uLL);
  if (sub_10010F2A8(v0 + 16) == 1 || (v1 = *(v0 + 361), sub_10010F2C0(v0 + 440), v1 == 2) || (v1 & 1) == 0)
  {
    v10 = 1;
  }

  else
  {
    v2 = *(v0 + 880);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 880);
    v7 = *(v0 + 872);
    v8 = *(v0 + 864);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Active config disabled KRL; KRL is disabled", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    v10 = 0;
  }

  v11 = *(v0 + 888);
  v12 = *(v0 + 880);

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t sub_10010F2A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10010F2C0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083AAA0, &unk_1006D8E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010F338()
{
  v1 = type metadata accessor for DIPOIDVerifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22[-1] - v7;
  v9 = type metadata accessor for DIPCertUsage();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22[-1] - v16;
  swift_defaultActor_initialize();
  v18 = type metadata accessor for COSESignatureValidator();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 104))(v13, enum case for DIPCertUsage.krlSigning(_:), v9);
  v22[3] = type metadata accessor for DateProvider();
  v22[4] = &protocol witness table for DateProvider;
  sub_100032DBC(v22);
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  (*(v2 + 16))(v6, v8, v1);
  v19 = sub_1001113C8(v17, v6, v13);
  (*(v2 + 8))(v8, v1);
  *(v0 + 112) = v19;
  return v0;
}

uint64_t sub_10010F5C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for DIPError.Code();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_10010F6BC;

  return sub_10010FEE4(a1);
}

uint64_t sub_10010F6BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v6 = sub_10010FC3C;
  }

  else
  {
    v6 = sub_10010F7E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010F7E8()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[8];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];

    v12 = enum case for DIPError.Code.coseInvalidResponse(_:);
    (*(v10 + 104))(v9, enum case for DIPError.Code.coseInvalidResponse(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[5] + 104))(v0[6], v12, v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v14 = v0[8];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = v0[8];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10010FB10;
  v5 = v0[2];
  v6 = v0[3];

  return sub_100110B90(v5, v3);
}

uint64_t sub_10010FB10()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10010FD8C;
  }

  else
  {
    v6 = sub_100042590;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010FC3C()
{
  v1 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.coseInvalidResponse(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10010FD8C()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.coseInvalidResponse(_:), *(v0 + 32));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010FEE4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100110044, v1, 0);
}

uint64_t sub_100110044()
{
  v1 = objc_opt_self();
  v0[16] = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.forceTrustValidationFailure.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = enum case for DIPError.Code.revokedCertificate(_:);
    (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.revokedCertificate(_:), v0[13]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[12];
    static DIPOIDVerifier.getSpecificCertificateError(_:)();
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    Error.dipErrorCode.getter();
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      v16 = v0[13];
      v17 = v0[14];
      v18 = v0[11];
      sub_10000BBC4(v0[12], v18, &qword_10083B020, &unk_1006D8ED0);
      v19 = (*(v17 + 88))(v18, v16);
      if (v19 == v5)
      {
        if (qword_100832B90 != -1)
        {
          swift_once();
        }

        v12 = qword_1008820B0;
        goto LABEL_17;
      }

      if (v19 == enum case for DIPError.Code.expiredCertificate(_:))
      {
        if (qword_100832B98 != -1)
        {
          swift_once();
        }

        v12 = qword_1008820C8;
        goto LABEL_17;
      }

      (*(v0[14] + 8))(v0[11], v0[13]);
    }

    if (qword_100832BA0 != -1)
    {
      swift_once();
    }

    v12 = qword_1008820E0;
LABEL_17:
    v20 = v0[16];
    v21 = v0[12];
    v22 = type metadata accessor for Milestone();
    sub_10003170C(v22, v12);
    Milestone.log()();
    sub_10000BE18(v21, &qword_10083B020, &unk_1006D8ED0);
    v23 = [v20 standardUserDefaults];
    v24._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableTrustValidation.getter();
    LOBYTE(v21) = NSUserDefaults.internalBool(forKey:)(v24);

    if (v21)
    {
      v25 = v0[10];
      defaultLogger()();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "KRLTrustValidator trust validation failed. This check is disabled in settings, bypassing.", v28, 2u);
      }

      v30 = v0[9];
      v29 = v0[10];
      v31 = v0[8];
      v32 = v0[6];

      (*(v30 + 8))(v29, v31);
      v33 = sub_10011184C();

      v34 = v0[15];
      v36 = v0[11];
      v35 = v0[12];
      v37 = v0[10];

      v38 = v0[1];

      return v38(v33);
    }

    else
    {
      v39 = v0[15];
      v41 = v0[11];
      v40 = v0[12];
      v42 = v0[10];
      swift_willThrow();

      v43 = v0[1];

      return v43();
    }
  }

  v0[17] = *(v0[7] + 112);

  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1001105B4;
  v14 = v0[6];

  return sub_100041294(v14);
}

uint64_t sub_1001105B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v10 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_1001107BC;
  }

  else
  {
    v7 = v3[17];
    v8 = v3[7];

    v6 = sub_1001106DC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001106DC()
{
  if (qword_100832B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Milestone();
  sub_10003170C(v1, qword_100882098);
  Milestone.log()();
  v2 = v0[19];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_1001107BC()
{
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  static DIPOIDVerifier.getSpecificCertificateError(_:)();
  swift_getErrorValue();
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  Error.dipErrorCode.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    goto LABEL_2;
  }

  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[11];
  sub_10000BBC4(v0[12], v12, &qword_10083B020, &unk_1006D8ED0);
  v13 = (*(v11 + 88))(v12, v10);
  if (v13 == enum case for DIPError.Code.revokedCertificate(_:))
  {
    if (qword_100832B90 != -1)
    {
      swift_once();
    }

    v9 = qword_1008820B0;
  }

  else
  {
    if (v13 != enum case for DIPError.Code.expiredCertificate(_:))
    {
      (*(v0[14] + 8))(v0[11], v0[13]);
LABEL_2:
      if (qword_100832BA0 != -1)
      {
        swift_once();
      }

      v9 = qword_1008820E0;
      goto LABEL_13;
    }

    if (qword_100832B98 != -1)
    {
      swift_once();
    }

    v9 = qword_1008820C8;
  }

LABEL_13:
  v14 = v0[16];
  v15 = v0[12];
  v16 = type metadata accessor for Milestone();
  sub_10003170C(v16, v9);
  Milestone.log()();
  sub_10000BE18(v15, &qword_10083B020, &unk_1006D8ED0);
  v17 = [v14 standardUserDefaults];
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableTrustValidation.getter();
  LOBYTE(v15) = NSUserDefaults.internalBool(forKey:)(v18);

  if (v15)
  {
    v19 = v0[10];
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "KRLTrustValidator trust validation failed. This check is disabled in settings, bypassing.", v22, 2u);
    }

    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];
    v26 = v0[6];

    (*(v24 + 8))(v23, v25);
    v27 = sub_10011184C();

    v28 = v0[15];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[10];

    v32 = v0[1];

    return v32(v27);
  }

  else
  {
    v34 = v0[15];
    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[10];
    swift_willThrow();

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_100110B90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100110CB0, v2, 0);
}

uint64_t sub_100110CB0()
{
  v1 = *(*(v0 + 32) + 112);
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_100110D28, v1, 0);
}

uint64_t sub_100110D28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[11] + OBJC_IVAR____TtC8coreidvd14TrustValidator_signatureValidator;
  COSESignatureValidator.validateSignature(of:with:)();
  v4 = v0[11];
  v5 = v0[4];

  return _swift_task_switch(sub_100110ECC, v5, 0);
}

uint64_t sub_100110ECC()
{
  if (qword_100832B78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Milestone();
  sub_10003170C(v1, qword_100882068);
  Milestone.log()();
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100110F88()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableSignatureValidation.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[7];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "KRLTrustValidator signature validation failed. This check is disabled in settings, bypassing.", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);
    v13 = v0[10];
    v14 = v0[7];

    v15 = v0[1];
  }

  else
  {
    if (qword_100832B80 != -1)
    {
      swift_once();
    }

    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[7];
    v19 = type metadata accessor for Milestone();
    sub_10003170C(v19, qword_100882080);
    Milestone.log()();
    swift_willThrow();

    v15 = v0[1];
    v20 = v0[12];
  }

  return v15();
}

uint64_t sub_100111174()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001111D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10010F5C8(a1);
}

uint64_t sub_100111268(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return _swift_task_switch(sub_100111288, v3, 0);
}

uint64_t sub_100111288()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_100111300, v1, 0);
}

uint64_t sub_100111300()
{
  v1 = v0[5];
  v2 = v0[7] + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier;
  swift_beginAccess();
  v3 = *(v2 + 32);
  sub_10001F370(v2, *(v2 + 24));
  dispatch thunk of OIDVerifying.setTrustedRoots(_:)();
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001113C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = type metadata accessor for DIPError.Code();
  v42 = *(v45 - 8);
  v6 = *(v42 + 64);
  v7 = __chkstk_darwin(v45);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = __chkstk_darwin(v10);
  v44 = &v40 - v14;
  __chkstk_darwin(v13);
  v43 = &v40 - v15;
  v16 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for COSESignatureValidator();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v46 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DIPOIDVerifier();
  v50 = v24;
  v51 = &protocol witness table for DIPOIDVerifier;
  v25 = sub_100032DBC(&v49);
  (*(*(v24 - 8) + 32))(v25, a2, v24);
  v26 = type metadata accessor for TrustValidator();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  v48 = a1;
  sub_10000BBC4(a1, v19, &qword_10083AB90, &unk_1006DE370);
  v30 = *(v21 + 48);
  v47 = v19;
  if (v30(v19, 1, v20) == 1)
  {
    v40 = v30;
    v41 = a3;
    v31 = *(v42 + 104);
    v42 = v20;
    v32 = v45;
    v31(v43, enum case for DIPError.Code.coseUnknownAlgorithm(_:), v45);
    v31(v44, enum case for DIPError.Code.coseInvalidPublicKey(_:), v32);
    v31(v12, enum case for DIPError.Code.coseMisformattedSignature(_:), v32);
    v33 = v32;
    v20 = v42;
    v31(v9, enum case for DIPError.Code.coseInvalidSignature(_:), v33);
    a3 = v41;
    v34 = v46;
    COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
    sub_10000BE18(v48, &qword_10083AB90, &unk_1006DE370);
    v35 = v47;
    v36 = v34;
    if (v40(v47, 1, v20) != 1)
    {
      sub_10000BE18(v35, &qword_10083AB90, &unk_1006DE370);
    }
  }

  else
  {
    sub_10000BE18(v48, &qword_10083AB90, &unk_1006DE370);
    v36 = v46;
    (*(v21 + 32))(v46, v47, v20);
  }

  (*(v21 + 32))(v29 + OBJC_IVAR____TtC8coreidvd14TrustValidator_signatureValidator, v36, v20);
  sub_10001F358(&v49, v29 + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier);
  v37 = OBJC_IVAR____TtC8coreidvd14TrustValidator_certUsage;
  v38 = type metadata accessor for DIPCertUsage();
  (*(*(v38 - 8) + 32))(v29 + v37, a3, v38);
  return v29;
}

void *sub_10011184C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  if (COSE_Sign1.x509Chain.getter())
  {
    v9 = decodeCertificateChain(fromDER:)();

    return v9;
  }

  else
  {
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "KRLTrustValidator signedKRL does not include a x509 chain", v8, 2u);
    }

    (*(v1 + 8))(v5, v0);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100111AF4()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.appleExternalRoots.getter();
  qword_10083AB98 = result;
  return result;
}

uint64_t sub_100111B28()
{
  v0 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v0, qword_10083ABA0);
  v1 = sub_10003170C(v0, qword_10083ABA0);
  v2 = v0[6];
  *&v1[v2] = 0x3FF0000000000000;
  v3 = enum case for DIPBackoffStrategy.exponential(_:);
  v4 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0x4024000000000000;
  *(v1 + 1) = 0;
  v1[v0[7]] = 0;
  v1[v0[8]] = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t sub_100111BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = type metadata accessor for DIPError();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v7[21] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  v7[30] = v14;
  v15 = *(v14 - 8);
  v7[31] = v15;
  v16 = *(v15 + 64) + 15;
  v7[32] = swift_task_alloc();
  v17 = type metadata accessor for ISO18013RevocationStatus.IdentifierList();
  v7[33] = v17;
  v18 = *(v17 - 8);
  v7[34] = v18;
  v19 = *(v18 + 64) + 15;
  v7[35] = swift_task_alloc();
  v20 = type metadata accessor for ISO18013RevocationStatus();
  v7[36] = v20;
  v21 = *(v20 - 8);
  v7[37] = v21;
  v22 = *(v21 + 64) + 15;
  v7[38] = swift_task_alloc();
  v23 = type metadata accessor for DIPWebResponse();
  v7[39] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v7[40] = swift_task_alloc();
  v25 = type metadata accessor for Date();
  v7[41] = v25;
  v26 = *(v25 - 8);
  v7[42] = v26;
  v27 = *(v26 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v28 = type metadata accessor for URL();
  v7[45] = v28;
  v29 = *(v28 - 8);
  v7[46] = v29;
  v30 = *(v29 + 64) + 15;
  v7[47] = swift_task_alloc();
  v31 = type metadata accessor for Logger();
  v7[48] = v31;
  v32 = *(v31 - 8);
  v7[49] = v32;
  v33 = *(v32 + 64) + 15;
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v34 = swift_task_alloc();
  v7[57] = v34;
  *v34 = v7;
  v34[1] = sub_10011207C;

  return sub_10010EDB0();
}

uint64_t sub_10011207C(char a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 616) = a1;

  return _swift_task_switch(sub_100112194, v3, 0);
}

uint64_t sub_100112194()
{
  v98 = v0;
  if (*(v0 + 616) == 1)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.forceKRLCheckFailure.getter();
    v3 = NSUserDefaults.internalBool(forKey:)(v2);

    if (v3)
    {
      v4 = *(v0 + 432);
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Forcing failure on KRL check from debug settings.", v7, 2u);
      }

      v8 = *(v0 + 432);
      v9 = *(v0 + 384);
      v10 = *(v0 + 392);
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = *(v0 + 240);
      v14 = *(v0 + 136);

      (*(v10 + 8))(v8, v9);
      (*(v12 + 104))(v11, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v13);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v16 = *(v0 + 440);
      v15 = *(v0 + 448);
      v18 = *(v0 + 424);
      v17 = *(v0 + 432);
      v20 = *(v0 + 408);
      v19 = *(v0 + 416);
      v21 = *(v0 + 400);
      v22 = *(v0 + 376);
      v24 = *(v0 + 344);
      v23 = *(v0 + 352);
      v68 = *(v0 + 320);
      v69 = *(v0 + 304);
      v71 = *(v0 + 280);
      v73 = *(v0 + 256);
      v75 = *(v0 + 232);
      v77 = *(v0 + 224);
      v79 = *(v0 + 216);
      v81 = *(v0 + 208);
      v83 = *(v0 + 200);
      v85 = *(v0 + 192);
      v87 = *(v0 + 184);
      v89 = *(v0 + 176);
      v91 = *(v0 + 160);
      v93 = *(v0 + 152);

      v25 = *(v0 + 8);

      return v25();
    }

    else
    {
      v46 = *(v0 + 448);
      v48 = *(v0 + 80);
      v47 = *(v0 + 88);
      defaultLogger()();
      sub_10000B8B8(v48, v47);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      sub_10000B90C(v48, v47);
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 448);
      v54 = *(v0 + 384);
      v53 = *(v0 + 392);
      if (v51)
      {
        v56 = *(v0 + 80);
        v55 = *(v0 + 88);
        v96 = *(v0 + 448);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v97 = v58;
        *v57 = 136315138;
        Data.base16EncodedString()();
        v59 = String.lowercased()();

        v60 = sub_100141FE4(v59._countAndFlagsBits, v59._object, &v97);

        *(v57 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v49, v50, "PresentmentKeyRevocationValidator Validating %s against KRL", v57, 0xCu);
        sub_10000BB78(v58);

        v61 = *(v53 + 8);
        v61(v96, v54);
      }

      else
      {

        v61 = *(v53 + 8);
        v61(v52, v54);
      }

      *(v0 + 464) = v61;
      v62 = swift_task_alloc();
      *(v0 + 472) = v62;
      *v62 = v0;
      v62[1] = sub_1001128DC;
      v63 = *(v0 + 376);
      v64 = *(v0 + 128);
      v66 = *(v0 + 88);
      v65 = *(v0 + 96);
      v67 = *(v0 + 80);

      return sub_100118EE8(v63, v65, v67, v66);
    }
  }

  else
  {
    v27 = *(v0 + 424);
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 424);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "PresentmentKeyRevocationValidator KRL Feature is not enabled, aborting validation", v34, 2u);
    }

    (*(v33 + 8))(v31, v32);
    v36 = *(v0 + 440);
    v35 = *(v0 + 448);
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    v41 = *(v0 + 400);
    v42 = *(v0 + 376);
    v44 = *(v0 + 344);
    v43 = *(v0 + 352);
    v70 = *(v0 + 320);
    v72 = *(v0 + 304);
    v74 = *(v0 + 280);
    v76 = *(v0 + 256);
    v78 = *(v0 + 232);
    v80 = *(v0 + 224);
    v82 = *(v0 + 216);
    v84 = *(v0 + 208);
    v86 = *(v0 + 200);
    v88 = *(v0 + 192);
    v90 = *(v0 + 184);
    v92 = *(v0 + 176);
    v94 = *(v0 + 160);
    v95 = *(v0 + 152);

    v45 = *(v0 + 8);

    return v45(0, 2, 0, 0);
  }
}

uint64_t sub_1001128DC()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1001141FC;
  }

  else
  {
    v6 = sub_100112A08;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100112A08()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v0[61] = v4;
  v5 = *(v3 + 8);
  v0[62] = v5;
  v0[63] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_100112AE8;
  v7 = v0[47];
  v8 = v0[40];
  v9 = v0[15];
  v10 = v0[16];

  return sub_100116A7C(v8, v7, v9);
}

uint64_t sub_100112AE8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_100114B20;
  }

  else
  {
    v6 = sub_100112C14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100112C14()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[39];
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v0[66] = v7;
  v2(v3, v4);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v0[67] = v8;
  v2(v3, v4);
  v9 = (v5 + *(v6 + 20));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_task_alloc();
  v0[68] = v12;
  *v12 = v0;
  v12[1] = sub_100112D1C;
  v13 = v0[38];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];

  return sub_100117820(v13, v11, v10, v15, v16);
}

uint64_t sub_100112D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_10011545C;
  }

  else
  {
    v6 = sub_100112E48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100112E48()
{
  v244 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  v4 = *(v0 + 128);
  ISO18013RevocationStatus.expirationDate.getter();
  sub_1001186BC(v2);
  *(v0 + 560) = v1;
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  if (v1)
  {
    v7 = *(v0 + 504);
    v8 = *(v0 + 240);
    v9 = *(v0 + 248);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = *(v0 + 176);
    v232 = *(v0 + 168);
    (*(v0 + 496))(v5, v6);
    swift_getErrorValue();
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    swift_errorRetain();
    Error.dipErrorCode.getter();
    (*(v9 + 104))(v10, enum case for DIPError.Code.krlExpired(_:), v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v16 = *(v232 + 48);
    sub_10000BBC4(v11, v12, &qword_10083B020, &unk_1006D8ED0);
    sub_10000BBC4(v10, v12 + v16, &qword_10083B020, &unk_1006D8ED0);
    v17 = *(v9 + 48);
    v18 = v17(v12, 1, v8);
    v19 = *(v0 + 240);
    if (v18 == 1)
    {
      v20 = *(v0 + 208);
      sub_10000BE18(*(v0 + 200), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v20, &qword_10083B020, &unk_1006D8ED0);
      if (v17(v12 + v16, 1, v19) == 1)
      {
        sub_10000BE18(*(v0 + 176), &qword_10083B020, &unk_1006D8ED0);

        goto LABEL_10;
      }
    }

    else
    {
      sub_10000BBC4(*(v0 + 176), *(v0 + 192), &qword_10083B020, &unk_1006D8ED0);
      if (v17(v12 + v16, 1, v19) != 1)
      {
        v33 = *(v0 + 248);
        v34 = *(v0 + 256);
        v35 = *(v0 + 240);
        v37 = *(v0 + 200);
        v36 = *(v0 + 208);
        v38 = *(v0 + 192);
        v233 = *(v0 + 176);
        (*(v33 + 32))(v34, v12 + v16, v35);
        sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v33 + 8);
        v40(v34, v35);
        sub_10000BE18(v37, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v36, &qword_10083B020, &unk_1006D8ED0);
        v40(v38, v35);
        sub_10000BE18(v233, &qword_10083B020, &unk_1006D8ED0);

        if (v39)
        {
LABEL_10:
          v41 = *(v0 + 320);
          if (*(v41 + *(*(v0 + 312) + 28)) == 1 && *(v0 + 120) <= 0)
          {
            v42 = *(v0 + 400);
            defaultLogger()();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = *(v0 + 120);
              v46 = swift_slowAlloc();
              *v46 = 134217984;
              *(v46 + 4) = v45 + 1;
              _os_log_impl(&_mh_execute_header, v43, v44, "PresentmentKeyRevocationValidator Cached response expired, invalidating cache, and attempting refetch %ld", v46, 0xCu);
            }

            v47 = *(v0 + 464);
            v49 = *(v0 + 392);
            v48 = *(v0 + 400);
            v50 = *(v0 + 384);

            v47(v48, v50);
            if (qword_100832D20 != -1)
            {
              swift_once();
            }

            v51 = *(v0 + 320);
            v52 = *(v0 + 120);
            v53 = qword_100882498;
            isa = URLRequest._bridgeToObjectiveC()().super.isa;
            [v53 removeCachedResponseForRequest:isa];

            v55 = swift_task_alloc();
            *(v0 + 568) = v55;
            *v55 = v0;
            v55[1] = sub_100115DA4;
            v56 = *(v0 + 128);
            v57 = *(v0 + 104);
            v58 = *(v0 + 112);
            v59 = *(v0 + 88);
            v60 = *(v0 + 96);
            v61 = *(v0 + 80);

            return sub_100111BFC(v61, v59, v60, v57, v58, v52 + 1);
          }

          v149 = *(v0 + 368);
          v148 = *(v0 + 376);
          v150 = *(v0 + 360);
          v152 = *(v0 + 296);
          v151 = *(v0 + 304);
          v153 = *(v0 + 288);
          swift_willThrow();
          (*(v152 + 8))(v151, v153);
          (*(v149 + 8))(v148, v150);
LABEL_20:
          sub_10011A8CC(v41);
          v72 = *(v0 + 240);
          v73 = *(v0 + 248);
          v75 = *(v0 + 224);
          v74 = *(v0 + 232);
          v76 = *(v0 + 184);
          v77 = *(v0 + 168);
          swift_getErrorValue();
          v78 = *(v0 + 16);
          v79 = *(v0 + 24);
          v80 = *(v0 + 32);
          swift_errorRetain();
          Error.dipErrorCode.getter();
          v227 = *(v73 + 104);
          v227(v75, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v72);
          (*(v73 + 56))(v75, 0, 1, v72);
          v81 = *(v77 + 48);
          sub_10000BBC4(v74, v76, &qword_10083B020, &unk_1006D8ED0);
          sub_10000BBC4(v75, v76 + v81, &qword_10083B020, &unk_1006D8ED0);
          v82 = *(v73 + 48);
          v83 = v82(v76, 1, v72);
          v84 = *(v0 + 240);
          if (v83 == 1)
          {
            v85 = *(v0 + 232);
            sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
            sub_10000BE18(v85, &qword_10083B020, &unk_1006D8ED0);
            if (v82(v76 + v81, 1, v84) == 1)
            {
              sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_31:
              v121 = *(v0 + 416);
              v123 = *(v0 + 80);
              v122 = *(v0 + 88);

              defaultLogger()();
              sub_10000B8B8(v123, v122);
              v124 = Logger.logObject.getter();
              v125 = static os_log_type_t.debug.getter();
              sub_10000B90C(v123, v122);
              v126 = os_log_type_enabled(v124, v125);
              v127 = *(v0 + 464);
              v128 = *(v0 + 416);
              v130 = *(v0 + 384);
              v129 = *(v0 + 392);
              if (v126)
              {
                v229 = *(v0 + 416);
                v235 = *(v0 + 464);
                v132 = *(v0 + 80);
                v131 = *(v0 + 88);
                v133 = swift_slowAlloc();
                v134 = swift_slowAlloc();
                v243[0] = v134;
                *v133 = 136315138;
                Data.base16EncodedString()();
                v135 = String.lowercased()();

                v136 = sub_100141FE4(v135._countAndFlagsBits, v135._object, v243);

                *(v133 + 4) = v136;
                _os_log_impl(&_mh_execute_header, v124, v125, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v133, 0xCu);
                sub_10000BB78(v134);

                v235(v229, v130);
              }

              else
              {

                v127(v128, v130);
              }

              swift_willThrow();
LABEL_35:
              v138 = *(v0 + 440);
              v137 = *(v0 + 448);
              v140 = *(v0 + 424);
              v139 = *(v0 + 432);
              v142 = *(v0 + 408);
              v141 = *(v0 + 416);
              v143 = *(v0 + 400);
              v144 = *(v0 + 376);
              v146 = *(v0 + 344);
              v145 = *(v0 + 352);
              v203 = *(v0 + 320);
              v205 = *(v0 + 304);
              v207 = *(v0 + 280);
              v209 = *(v0 + 256);
              v211 = *(v0 + 232);
              v213 = *(v0 + 224);
              v215 = *(v0 + 216);
              v217 = *(v0 + 208);
              v219 = *(v0 + 200);
              v221 = *(v0 + 192);
              v223 = *(v0 + 184);
              v226 = *(v0 + 176);
              v230 = *(v0 + 160);
              v236 = *(v0 + 152);

              v147 = *(v0 + 8);

              return v147();
            }
          }

          else
          {
            sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
            if (v82(v76 + v81, 1, v84) != 1)
            {
              v114 = *(v0 + 248);
              v113 = *(v0 + 256);
              v115 = *(v0 + 240);
              v225 = *(v0 + 232);
              v116 = *(v0 + 216);
              v117 = *(v0 + 224);
              v118 = *(v0 + 184);
              (*(v114 + 32))(v113, v76 + v81, v115);
              sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code);
              v119 = dispatch thunk of static Equatable.== infix(_:_:)();
              v120 = *(v114 + 8);
              v120(v113, v115);
              sub_10000BE18(v117, &qword_10083B020, &unk_1006D8ED0);
              sub_10000BE18(v225, &qword_10083B020, &unk_1006D8ED0);
              v120(v116, v115);
              sub_10000BE18(v118, &qword_10083B020, &unk_1006D8ED0);
              if (v119)
              {
                goto LABEL_31;
              }

LABEL_26:
              v90 = *(v0 + 408);
              v92 = *(v0 + 152);
              v91 = *(v0 + 160);
              v93 = *(v0 + 136);
              v94 = *(v0 + 144);
              v227(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
              swift_errorRetain();
              sub_1000402AC(_swiftEmptyArrayStorage);
              DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
              defaultLogger()();
              v95 = *(v94 + 16);
              v95(v92, v91, v93);
              v96 = Logger.logObject.getter();
              v97 = static os_log_type_t.error.getter();
              v98 = os_log_type_enabled(v96, v97);
              v100 = *(v0 + 144);
              v99 = *(v0 + 152);
              v101 = *(v0 + 136);
              if (v98)
              {
                v102 = swift_slowAlloc();
                v234 = swift_slowAlloc();
                *v102 = 138412290;
                sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
                swift_allocError();
                v228 = v97;
                v95(v103, v99, v101);
                v104 = _swift_stdlib_bridgeErrorToNSError();
                v105 = v95;
                v106 = v99;
                v107 = *(v100 + 8);
                v107(v106, v101);
                *(v102 + 4) = v104;
                *v234 = v104;
                _os_log_impl(&_mh_execute_header, v96, v228, "PresentmentKeyRevocationValidator Failed validate credential: %@", v102, 0xCu);
                sub_10000BE18(v234, &unk_100833B50, &unk_1006D8FB0);
              }

              else
              {

                v105 = v95;
                v108 = v99;
                v107 = *(v100 + 8);
                v107(v108, v101);
              }

              v109 = *(v0 + 160);
              v110 = *(v0 + 136);
              v111 = *(v0 + 392) + 8;
              (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
              sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
              swift_allocError();
              v105(v112, v109, v110);
              swift_willThrow();

              v107(v109, v110);
              goto LABEL_35;
            }

            v86 = *(v0 + 240);
            v87 = *(v0 + 248);
            v88 = *(v0 + 232);
            v89 = *(v0 + 216);
            sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
            sub_10000BE18(v88, &qword_10083B020, &unk_1006D8ED0);
            (*(v87 + 8))(v89, v86);
          }

          sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
          goto LABEL_26;
        }

LABEL_19:
        v70 = *(v0 + 368);
        v69 = *(v0 + 376);
        v71 = *(v0 + 360);
        v41 = *(v0 + 320);
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
        (*(v70 + 8))(v69, v71);
        goto LABEL_20;
      }

      v29 = *(v0 + 240);
      v30 = *(v0 + 248);
      v31 = *(v0 + 208);
      v32 = *(v0 + 192);
      sub_10000BE18(*(v0 + 200), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v31, &qword_10083B020, &unk_1006D8ED0);
      (*(v30 + 8))(v32, v29);
    }

    sub_10000BE18(*(v0 + 176), &qword_100834B60, &qword_1006C0310);

    goto LABEL_19;
  }

  v21 = *(v0 + 504);
  v22 = *(v0 + 376);
  v23 = *(v0 + 304);
  (*(v0 + 496))(v5, v6);
  v24 = ISO18013RevocationStatus.uri.getter();
  v26 = v25;
  v27 = URL.absoluteString.getter();
  sub_10011A9D4(v24, v26, v27, v28);
  v63 = *(v0 + 320);
  v64 = *(v0 + 304);
  v66 = *(v0 + 80);
  v65 = *(v0 + 88);

  v67 = ISO18013RevocationStatus.ttl.getter();
  sub_10011AFE4(v63, v67, v68 & 1);
  sub_10011B180(v66, v65, v64);
  v154 = *(v0 + 536);
  v156 = *(v0 + 496);
  v155 = *(v0 + 504);
  v157 = *(v0 + 352);
  v158 = *(v0 + 328);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v160 = v159;
  v156(v157, v158);
  if (qword_100832BB0 != -1)
  {
    swift_once();
  }

  v161 = *(v0 + 440);
  v163 = *(v0 + 80);
  v162 = *(v0 + 88);
  v164 = type metadata accessor for Milestone();
  sub_10003170C(v164, qword_100882110);
  Milestone.log()();
  defaultLogger()();
  sub_10000B8B8(v163, v162);
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.debug.getter();
  sub_10000B90C(v163, v162);
  v167 = os_log_type_enabled(v165, v166);
  v168 = *(v0 + 464);
  v169 = *(v0 + 440);
  v171 = *(v0 + 384);
  v170 = *(v0 + 392);
  if (v167)
  {
    v240 = *(v0 + 440);
    v173 = *(v0 + 80);
    v172 = *(v0 + 88);
    v237 = *(v0 + 464);
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v243[0] = v175;
    *v174 = 136315138;
    Data.base16EncodedString()();
    v176 = String.lowercased()();

    v177 = sub_100141FE4(v176._countAndFlagsBits, v176._object, v243);

    *(v174 + 4) = v177;
    _os_log_impl(&_mh_execute_header, v165, v166, "PresentmentKeyRevocationValidator Successfually validated %s against KRL.", v174, 0xCu);
    sub_10000BB78(v175);

    v237(v240, v171);
  }

  else
  {

    v168(v169, v171);
  }

  v178 = v160 - v154;
  v179 = *(v0 + 368);
  v231 = *(v0 + 360);
  v180 = *(v0 + 320);
  v238 = *(v0 + 312);
  v241 = *(v0 + 376);
  v181 = *(v0 + 296);
  v182 = *(v0 + 304);
  v184 = *(v0 + 280);
  v183 = *(v0 + 288);
  v185 = *(v0 + 528) - *(v0 + 488);
  v187 = *(v0 + 264);
  v186 = *(v0 + 272);
  ISO18013RevocationStatus.identifierList.getter();
  v188 = ISO18013RevocationStatus.IdentifierList.identifiers.getter();
  (*(v186 + 8))(v184, v187);
  (*(v181 + 8))(v182, v183);
  (*(v179 + 8))(v241, v231);
  v242 = *(v188 + 16);

  v239 = *(v180 + *(v238 + 28));
  sub_10011A8CC(v180);
  v190 = *(v0 + 440);
  v189 = *(v0 + 448);
  v191 = *(v0 + 424);
  v192 = *(v0 + 432);
  v194 = *(v0 + 408);
  v193 = *(v0 + 416);
  v195 = *(v0 + 400);
  v196 = *(v0 + 376);
  v198 = *(v0 + 344);
  v197 = *(v0 + 352);
  v200 = *(v0 + 320);
  v201 = *(v0 + 304);
  v202 = *(v0 + 280);
  v204 = *(v0 + 256);
  v206 = *(v0 + 232);
  v208 = *(v0 + 224);
  v210 = *(v0 + 216);
  v212 = *(v0 + 208);
  v214 = *(v0 + 200);
  v216 = *(v0 + 192);
  v218 = *(v0 + 184);
  v220 = *(v0 + 176);
  v222 = *(v0 + 160);
  v224 = *(v0 + 152);

  v199 = *(v0 + 8);

  return v199(v242, v239, *&v185, *&v178);
}

uint64_t sub_1001141FC()
{
  v100 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 184);
  v94 = *(v0 + 168);
  swift_getErrorValue();
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v90 = *(v3 + 104);
  v90(v5, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  v10 = *(v94 + 48);
  sub_10000BBC4(v4, v6, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v5, v6 + v10, &qword_10083B020, &unk_1006D8ED0);
  v11 = *(v3 + 48);
  v12 = v11(v6, 1, v2);
  v13 = *(v0 + 240);
  if (v12 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v11(v6 + v10, 1, v13) != 1)
    {
      v43 = *(v0 + 248);
      v42 = *(v0 + 256);
      v44 = *(v0 + 240);
      v88 = *(v0 + 232);
      v45 = *(v0 + 216);
      v46 = *(v0 + 224);
      v96 = *(v0 + 184);
      (*(v43 + 32))(v42, v6 + v10, v44);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v43 + 8);
      v48(v42, v44);
      sub_10000BE18(v46, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v88, &qword_10083B020, &unk_1006D8ED0);
      v48(v45, v44);
      sub_10000BE18(v96, &qword_10083B020, &unk_1006D8ED0);
      if (v47)
      {
        goto LABEL_12;
      }

LABEL_7:
      v19 = *(v0 + 408);
      v21 = *(v0 + 152);
      v20 = *(v0 + 160);
      v22 = *(v0 + 136);
      v23 = *(v0 + 144);
      v90(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v24 = *(v23 + 16);
      v24(v21, v20, v22);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      v30 = *(v0 + 136);
      if (v27)
      {
        v31 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v31 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v91 = v26;
        v24(v32, v28, v30);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v24;
        v35 = v28;
        v36 = *(v29 + 8);
        v36(v35, v30);
        *(v31 + 4) = v33;
        *v95 = v33;
        _os_log_impl(&_mh_execute_header, v25, v91, "PresentmentKeyRevocationValidator Failed validate credential: %@", v31, 0xCu);
        sub_10000BE18(v95, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v34 = v24;
        v37 = v28;
        v36 = *(v29 + 8);
        v36(v37, v30);
      }

      v38 = *(v0 + 160);
      v39 = *(v0 + 136);
      v40 = *(v0 + 392) + 8;
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v34(v41, v38, v39);
      swift_willThrow();

      v36(v38, v39);
      goto LABEL_16;
    }

    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v17 = *(v0 + 232);
    v18 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v17, &qword_10083B020, &unk_1006D8ED0);
    (*(v16 + 8))(v18, v15);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v14 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  if (v11(v6 + v10, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v49 = *(v0 + 416);
  v51 = *(v0 + 80);
  v50 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v51, v50);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  sub_10000B90C(v51, v50);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 464);
  v56 = *(v0 + 416);
  v58 = *(v0 + 384);
  v57 = *(v0 + 392);
  if (v54)
  {
    v92 = *(v0 + 416);
    v97 = *(v0 + 464);
    v60 = *(v0 + 80);
    v59 = *(v0 + 88);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v99 = v62;
    *v61 = 136315138;
    Data.base16EncodedString()();
    v63 = String.lowercased()();

    v64 = sub_100141FE4(v63._countAndFlagsBits, v63._object, &v99);

    *(v61 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v52, v53, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v61, 0xCu);
    sub_10000BB78(v62);

    v97(v92, v58);
  }

  else
  {

    v55(v56, v58);
  }

  swift_willThrow();
LABEL_16:
  v66 = *(v0 + 440);
  v65 = *(v0 + 448);
  v68 = *(v0 + 424);
  v67 = *(v0 + 432);
  v70 = *(v0 + 408);
  v69 = *(v0 + 416);
  v71 = *(v0 + 400);
  v72 = *(v0 + 376);
  v74 = *(v0 + 344);
  v73 = *(v0 + 352);
  v77 = *(v0 + 320);
  v78 = *(v0 + 304);
  v79 = *(v0 + 280);
  v80 = *(v0 + 256);
  v81 = *(v0 + 232);
  v82 = *(v0 + 224);
  v83 = *(v0 + 216);
  v84 = *(v0 + 208);
  v85 = *(v0 + 200);
  v86 = *(v0 + 192);
  v87 = *(v0 + 184);
  v89 = *(v0 + 176);
  v93 = *(v0 + 160);
  v98 = *(v0 + 152);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_100114B20()
{
  v100 = v0;
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  v1 = *(v0 + 520);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 184);
  v94 = *(v0 + 168);
  swift_getErrorValue();
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v90 = *(v3 + 104);
  v90(v5, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  v10 = *(v94 + 48);
  sub_10000BBC4(v4, v6, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v5, v6 + v10, &qword_10083B020, &unk_1006D8ED0);
  v11 = *(v3 + 48);
  v12 = v11(v6, 1, v2);
  v13 = *(v0 + 240);
  if (v12 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v11(v6 + v10, 1, v13) != 1)
    {
      v43 = *(v0 + 248);
      v42 = *(v0 + 256);
      v44 = *(v0 + 240);
      v88 = *(v0 + 232);
      v45 = *(v0 + 216);
      v46 = *(v0 + 224);
      v96 = *(v0 + 184);
      (*(v43 + 32))(v42, v6 + v10, v44);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v43 + 8);
      v48(v42, v44);
      sub_10000BE18(v46, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v88, &qword_10083B020, &unk_1006D8ED0);
      v48(v45, v44);
      sub_10000BE18(v96, &qword_10083B020, &unk_1006D8ED0);
      if (v47)
      {
        goto LABEL_12;
      }

LABEL_7:
      v19 = *(v0 + 408);
      v21 = *(v0 + 152);
      v20 = *(v0 + 160);
      v22 = *(v0 + 136);
      v23 = *(v0 + 144);
      v90(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v24 = *(v23 + 16);
      v24(v21, v20, v22);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      v30 = *(v0 + 136);
      if (v27)
      {
        v31 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v31 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v91 = v26;
        v24(v32, v28, v30);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v24;
        v35 = v28;
        v36 = *(v29 + 8);
        v36(v35, v30);
        *(v31 + 4) = v33;
        *v95 = v33;
        _os_log_impl(&_mh_execute_header, v25, v91, "PresentmentKeyRevocationValidator Failed validate credential: %@", v31, 0xCu);
        sub_10000BE18(v95, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v34 = v24;
        v37 = v28;
        v36 = *(v29 + 8);
        v36(v37, v30);
      }

      v38 = *(v0 + 160);
      v39 = *(v0 + 136);
      v40 = *(v0 + 392) + 8;
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v34(v41, v38, v39);
      swift_willThrow();

      v36(v38, v39);
      goto LABEL_16;
    }

    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v17 = *(v0 + 232);
    v18 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v17, &qword_10083B020, &unk_1006D8ED0);
    (*(v16 + 8))(v18, v15);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v14 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  if (v11(v6 + v10, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v49 = *(v0 + 416);
  v51 = *(v0 + 80);
  v50 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v51, v50);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  sub_10000B90C(v51, v50);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 464);
  v56 = *(v0 + 416);
  v58 = *(v0 + 384);
  v57 = *(v0 + 392);
  if (v54)
  {
    v92 = *(v0 + 416);
    v97 = *(v0 + 464);
    v60 = *(v0 + 80);
    v59 = *(v0 + 88);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v99 = v62;
    *v61 = 136315138;
    Data.base16EncodedString()();
    v63 = String.lowercased()();

    v64 = sub_100141FE4(v63._countAndFlagsBits, v63._object, &v99);

    *(v61 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v52, v53, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v61, 0xCu);
    sub_10000BB78(v62);

    v97(v92, v58);
  }

  else
  {

    v55(v56, v58);
  }

  swift_willThrow();
LABEL_16:
  v66 = *(v0 + 440);
  v65 = *(v0 + 448);
  v68 = *(v0 + 424);
  v67 = *(v0 + 432);
  v70 = *(v0 + 408);
  v69 = *(v0 + 416);
  v71 = *(v0 + 400);
  v72 = *(v0 + 376);
  v74 = *(v0 + 344);
  v73 = *(v0 + 352);
  v77 = *(v0 + 320);
  v78 = *(v0 + 304);
  v79 = *(v0 + 280);
  v80 = *(v0 + 256);
  v81 = *(v0 + 232);
  v82 = *(v0 + 224);
  v83 = *(v0 + 216);
  v84 = *(v0 + 208);
  v85 = *(v0 + 200);
  v86 = *(v0 + 192);
  v87 = *(v0 + 184);
  v89 = *(v0 + 176);
  v93 = *(v0 + 160);
  v98 = *(v0 + 152);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_10011545C()
{
  v101 = v0;
  v1 = *(v0 + 320);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  sub_10011A8CC(v1);
  v2 = *(v0 + 552);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 184);
  v95 = *(v0 + 168);
  swift_getErrorValue();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v91 = *(v4 + 104);
  v91(v6, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v3);
  (*(v4 + 56))(v6, 0, 1, v3);
  v11 = *(v95 + 48);
  sub_10000BBC4(v5, v7, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v6, v7 + v11, &qword_10083B020, &unk_1006D8ED0);
  v12 = *(v4 + 48);
  v13 = v12(v7, 1, v3);
  v14 = *(v0 + 240);
  if (v13 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v12(v7 + v11, 1, v14) != 1)
    {
      v44 = *(v0 + 248);
      v43 = *(v0 + 256);
      v45 = *(v0 + 240);
      v89 = *(v0 + 232);
      v46 = *(v0 + 216);
      v47 = *(v0 + 224);
      v97 = *(v0 + 184);
      (*(v44 + 32))(v43, v7 + v11, v45);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v44 + 8);
      v49(v43, v45);
      sub_10000BE18(v47, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v89, &qword_10083B020, &unk_1006D8ED0);
      v49(v46, v45);
      sub_10000BE18(v97, &qword_10083B020, &unk_1006D8ED0);
      if (v48)
      {
        goto LABEL_12;
      }

LABEL_7:
      v20 = *(v0 + 408);
      v22 = *(v0 + 152);
      v21 = *(v0 + 160);
      v23 = *(v0 + 136);
      v24 = *(v0 + 144);
      v91(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v25 = *(v24 + 16);
      v25(v22, v21, v23);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      v28 = os_log_type_enabled(v26, v27);
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 136);
      if (v28)
      {
        v32 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v32 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v92 = v27;
        v25(v33, v29, v31);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = v25;
        v36 = v29;
        v37 = *(v30 + 8);
        v37(v36, v31);
        *(v32 + 4) = v34;
        *v96 = v34;
        _os_log_impl(&_mh_execute_header, v26, v92, "PresentmentKeyRevocationValidator Failed validate credential: %@", v32, 0xCu);
        sub_10000BE18(v96, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v35 = v25;
        v38 = v29;
        v37 = *(v30 + 8);
        v37(v38, v31);
      }

      v39 = *(v0 + 160);
      v40 = *(v0 + 136);
      v41 = *(v0 + 392) + 8;
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v35(v42, v39, v40);
      swift_willThrow();

      v37(v39, v40);
      goto LABEL_16;
    }

    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    v18 = *(v0 + 232);
    v19 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
    (*(v17 + 8))(v19, v16);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v15 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v15, &qword_10083B020, &unk_1006D8ED0);
  if (v12(v7 + v11, 1, v14) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v50 = *(v0 + 416);
  v52 = *(v0 + 80);
  v51 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v52, v51);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  sub_10000B90C(v52, v51);
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 464);
  v57 = *(v0 + 416);
  v59 = *(v0 + 384);
  v58 = *(v0 + 392);
  if (v55)
  {
    v93 = *(v0 + 416);
    v98 = *(v0 + 464);
    v61 = *(v0 + 80);
    v60 = *(v0 + 88);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v100 = v63;
    *v62 = 136315138;
    Data.base16EncodedString()();
    v64 = String.lowercased()();

    v65 = sub_100141FE4(v64._countAndFlagsBits, v64._object, &v100);

    *(v62 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v53, v54, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v62, 0xCu);
    sub_10000BB78(v63);

    v98(v93, v59);
  }

  else
  {

    v56(v57, v59);
  }

  swift_willThrow();
LABEL_16:
  v67 = *(v0 + 440);
  v66 = *(v0 + 448);
  v69 = *(v0 + 424);
  v68 = *(v0 + 432);
  v71 = *(v0 + 408);
  v70 = *(v0 + 416);
  v72 = *(v0 + 400);
  v73 = *(v0 + 376);
  v75 = *(v0 + 344);
  v74 = *(v0 + 352);
  v78 = *(v0 + 320);
  v79 = *(v0 + 304);
  v80 = *(v0 + 280);
  v81 = *(v0 + 256);
  v82 = *(v0 + 232);
  v83 = *(v0 + 224);
  v84 = *(v0 + 216);
  v85 = *(v0 + 208);
  v86 = *(v0 + 200);
  v87 = *(v0 + 192);
  v88 = *(v0 + 184);
  v90 = *(v0 + 176);
  v94 = *(v0 + 160);
  v99 = *(v0 + 152);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_100115DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 568);
  v12 = *v5;
  v10[72] = v4;

  v13 = v10[16];
  if (v4)
  {
    v14 = sub_100116104;
  }

  else
  {
    v10[73] = a4;
    v10[74] = a3;
    v10[75] = a2;
    v10[76] = a1;
    v14 = sub_100115F00;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_100115F00()
{
  v1 = v0[70];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  sub_10011A8CC(v5);
  v37 = v0[75];
  v38 = v0[76];
  v35 = v0[73];
  v36 = v0[74];
  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[53];
  v12 = v0[54];
  v14 = v0[51];
  v13 = v0[52];
  v15 = v0[50];
  v16 = v0[47];
  v18 = v0[43];
  v17 = v0[44];
  v21 = v0[40];
  v22 = v0[38];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[29];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[25];
  v30 = v0[24];
  v31 = v0[23];
  v32 = v0[22];
  v33 = v0[20];
  v34 = v0[19];

  v19 = v0[1];

  return v19(v38, v37, v36, v35);
}

uint64_t sub_100116104()
{
  v108 = v0;
  v1 = *(v0 + 560);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  sub_10011A8CC(v5);
  v9 = *(v0 + 576);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 184);
  v102 = *(v0 + 168);
  swift_getErrorValue();
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v98 = *(v11 + 104);
  v98(v13, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v10);
  (*(v11 + 56))(v13, 0, 1, v10);
  v18 = *(v102 + 48);
  sub_10000BBC4(v12, v14, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v13, v14 + v18, &qword_10083B020, &unk_1006D8ED0);
  v19 = *(v11 + 48);
  v20 = v19(v14, 1, v10);
  v21 = *(v0 + 240);
  if (v20 != 1)
  {
    sub_10000BBC4(*(v0 + 184), *(v0 + 216), &qword_10083B020, &unk_1006D8ED0);
    if (v19(v14 + v18, 1, v21) != 1)
    {
      v51 = *(v0 + 248);
      v50 = *(v0 + 256);
      v52 = *(v0 + 240);
      v96 = *(v0 + 232);
      v53 = *(v0 + 216);
      v54 = *(v0 + 224);
      v104 = *(v0 + 184);
      (*(v51 + 32))(v50, v14 + v18, v52);
      sub_10011A98C(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *(v51 + 8);
      v56(v50, v52);
      sub_10000BE18(v54, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v96, &qword_10083B020, &unk_1006D8ED0);
      v56(v53, v52);
      sub_10000BE18(v104, &qword_10083B020, &unk_1006D8ED0);
      if (v55)
      {
        goto LABEL_12;
      }

LABEL_7:
      v27 = *(v0 + 408);
      v29 = *(v0 + 152);
      v28 = *(v0 + 160);
      v30 = *(v0 + 136);
      v31 = *(v0 + 144);
      v98(*(v0 + 256), enum case for DIPError.Code.krlCouldNotFetch(_:), *(v0 + 240));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      v32 = *(v31 + 16);
      v32(v29, v28, v30);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);
      v38 = *(v0 + 136);
      if (v35)
      {
        v39 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v39 = 138412290;
        sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v99 = v34;
        v32(v40, v36, v38);
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = v32;
        v43 = v36;
        v44 = *(v37 + 8);
        v44(v43, v38);
        *(v39 + 4) = v41;
        *v103 = v41;
        _os_log_impl(&_mh_execute_header, v33, v99, "PresentmentKeyRevocationValidator Failed validate credential: %@", v39, 0xCu);
        sub_10000BE18(v103, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v42 = v32;
        v45 = v36;
        v44 = *(v37 + 8);
        v44(v45, v38);
      }

      v46 = *(v0 + 160);
      v47 = *(v0 + 136);
      v48 = *(v0 + 392) + 8;
      (*(v0 + 464))(*(v0 + 408), *(v0 + 384));
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v42(v49, v46, v47);
      swift_willThrow();

      v44(v46, v47);
      goto LABEL_16;
    }

    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);
    sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
    (*(v24 + 8))(v26, v23);
LABEL_6:
    sub_10000BE18(*(v0 + 184), &qword_100834B60, &qword_1006C0310);
    goto LABEL_7;
  }

  v22 = *(v0 + 232);
  sub_10000BE18(*(v0 + 224), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v22, &qword_10083B020, &unk_1006D8ED0);
  if (v19(v14 + v18, 1, v21) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 184), &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v57 = *(v0 + 416);
  v59 = *(v0 + 80);
  v58 = *(v0 + 88);

  defaultLogger()();
  sub_10000B8B8(v59, v58);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  sub_10000B90C(v59, v58);
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 464);
  v64 = *(v0 + 416);
  v66 = *(v0 + 384);
  v65 = *(v0 + 392);
  if (v62)
  {
    v100 = *(v0 + 416);
    v105 = *(v0 + 464);
    v68 = *(v0 + 80);
    v67 = *(v0 + 88);
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v107 = v70;
    *v69 = 136315138;
    Data.base16EncodedString()();
    v71 = String.lowercased()();

    v72 = sub_100141FE4(v71._countAndFlagsBits, v71._object, &v107);

    *(v69 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v60, v61, "PresentmentKeyRevocationValidator Matched %s with revoked key in KRL.", v69, 0xCu);
    sub_10000BB78(v70);

    v105(v100, v66);
  }

  else
  {

    v63(v64, v66);
  }

  swift_willThrow();
LABEL_16:
  v74 = *(v0 + 440);
  v73 = *(v0 + 448);
  v76 = *(v0 + 424);
  v75 = *(v0 + 432);
  v78 = *(v0 + 408);
  v77 = *(v0 + 416);
  v79 = *(v0 + 400);
  v80 = *(v0 + 376);
  v82 = *(v0 + 344);
  v81 = *(v0 + 352);
  v85 = *(v0 + 320);
  v86 = *(v0 + 304);
  v87 = *(v0 + 280);
  v88 = *(v0 + 256);
  v89 = *(v0 + 232);
  v90 = *(v0 + 224);
  v91 = *(v0 + 216);
  v92 = *(v0 + 208);
  v93 = *(v0 + 200);
  v94 = *(v0 + 192);
  v95 = *(v0 + 184);
  v97 = *(v0 + 176);
  v101 = *(v0 + 160);
  v106 = *(v0 + 152);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_100116A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPWebResponse();
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v4[19] = v18;
  v19 = *(v18 - 8);
  v4[20] = v19;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100116CF4, v3, 0);
}

uint64_t sub_100116CF4()
{
  v50 = v0;
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[3];
  defaultLogger()();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  if (v8)
  {
    v47 = v0[19];
    v15 = swift_slowAlloc();
    v45 = v7;
    v16 = swift_slowAlloc();
    v49 = v16;
    *v15 = 136315138;
    v17 = URL.absoluteString.getter();
    v46 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100141FE4(v17, v19, &v49);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v45, "PresentmentKeyRevocationValidator fetch KRL at URL %s", v15, 0xCu);
    sub_10000BB78(v16);

    v21 = *(v10 + 8);
    v21(v46, v47);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[24] = v21;
  v22 = v0[4] > 0;
  v23 = objc_opt_self();
  v0[25] = v23;
  v24 = [v23 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (v26)
  {
    v27 = v0[22];
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "PresentmentKeyRevocationValidator forcing reset cache due to internal setting", v30, 2u);
    }

    v31 = v0[22];
    v32 = v0[19];
    v33 = v0[20];

    v21(v31, v32);
    v22 = 1;
  }

  v34 = v0[15];
  v35 = v0[12];
  v36 = v0[5];
  static DaemonSignposts.KRL.fetchRevocationList.getter();
  DIPSignpost.init(_:)();
  v37 = v36[17];
  v38 = v36[18];
  sub_10000BA08(v36 + 14, v37);
  v39 = *(v38 + 8);
  v48 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  v0[26] = v41;
  *v41 = v0;
  v41[1] = sub_1001170C8;
  v42 = v0[2];
  v43 = v0[3];

  return v48(v42, v43, v22, v37, v38);
}

uint64_t sub_1001170C8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100117728;
  }

  else
  {
    v6 = sub_1001171F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001171F4()
{
  v75 = v0;
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[2];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v4 = *(v2 + 28);
  v5 = *(v3 + v4);
  if (v5 == 1)
  {
    if (qword_100832BC8 != -1)
    {
      swift_once();
    }

    v6 = qword_100882158;
  }

  else
  {
    if (qword_100832BC0 != -1)
    {
      swift_once();
    }

    v6 = qword_100882140;
  }

  v7 = v0[25];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = sub_10003170C(v10, v6);
  (*(v9 + 16))(v8, v11, v10);
  Milestone.log()();
  (*(v9 + 8))(v8, v10);
  v12 = [v7 standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideCacheControl.getter();
  v14 = NSUserDefaults.internalString(forKey:)(v13);

  if (v14.value._object)
  {
    v15 = v0[7];
    v16 = *(v0[2] + *(v15 + 24));
    v17 = sub_10059B698(0xD000000000000019, 0x80000001006F8AF0, v14.value._countAndFlagsBits, v14.value._object);

    if (v17)
    {
      v19 = v0[7];
      v18 = v0[8];
      v20 = v0[2];
      v21 = type metadata accessor for URLRequest();
      (*(*(v21 - 8) + 16))(v18, v20, v21);
      v22 = *(v19 + 20);
      v23 = *(v20 + v22);
      v24 = *(v20 + v22 + 8);
      v25 = (v18 + v22);
      *v25 = v23;
      v25[1] = v24;
      *(v18 + *(v15 + 24)) = v17;
      *(v18 + *(v2 + 28)) = v5;
      sub_10000B8B8(v23, v24);
      sub_10011A8CC(v20);
      sub_10011A928(v18, v20);
    }
  }

  v26 = sub_10010DD98();
  if (v27 >> 60 == 15)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  else
  {
    v28 = v26;
    v29 = v27;
    v72 = v4;
    v73 = v3;
    v30 = v0[21];
    defaultLogger()();
    sub_10000B8B8(v28, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    sub_10000BD94(v28, v29);
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[24];
    v69 = v0[20];
    v35 = v0[19];
    v70 = v35;
    v71 = v0[21];
    v37 = v0[14];
    v36 = v0[15];
    v38 = v0[13];
    if (v33)
    {
      v67 = v0[15];
      v39 = v0[6];
      v68 = v2;
      v40 = swift_slowAlloc();
      v66 = v38;
      v41 = swift_slowAlloc();
      v74 = v41;
      *v40 = 136315138;
      static String.Encoding.utf8.getter();
      v42 = String.init(data:encoding:)();
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v42 = 0x3E6C696E3CLL;
        v44 = 0xE500000000000000;
      }

      v65 = v34;
      v45 = sub_100141FE4(v42, v44, &v74);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v31, v32, "PresentmentKeyRevocationValidator internal settings overriding response data: %s", v40, 0xCu);
      sub_10000BB78(v41);

      v2 = v68;

      v65(v71, v70);
      (*(v37 + 8))(v67, v66);
    }

    else
    {

      v34(v71, v70);
      (*(v37 + 8))(v36, v38);
    }

    v47 = v0[7];
    v46 = v0[8];
    v48 = v0[2];
    v49 = type metadata accessor for URLRequest();
    (*(*(v49 - 8) + 16))(v46, v48, v49);
    v50 = *(v48 + *(v47 + 24));
    v51 = *(v73 + v72);
    v52 = (v46 + *(v47 + 20));
    *v52 = v28;
    v52[1] = v29;
    *(v46 + *(v47 + 24)) = v50;
    *(v46 + *(v2 + 28)) = v51;
    v53 = v50;
    sub_10011A8CC(v48);
    sub_10011A928(v46, v48);
  }

  v55 = v0[22];
  v54 = v0[23];
  v56 = v0[21];
  v57 = v0[18];
  v58 = v0[15];
  v60 = v0[11];
  v59 = v0[12];
  v61 = v0[8];
  v62 = v0[6];

  v63 = v0[1];

  return v63();
}

uint64_t sub_100117728()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v9 = v0[1];
  v10 = v0[27];

  return v9();
}

uint64_t sub_100117820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = type metadata accessor for COSE_Sign1();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v16 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v17 = type metadata accessor for DIPSignpost();
  v6[19] = v17;
  v18 = *(v17 - 8);
  v6[20] = v18;
  v19 = *(v18 + 64) + 15;
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_100117A28, v5, 0);
}

uint64_t sub_100117A28()
{
  if (qword_100832C08 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = qword_10083AB98;
  v0[2] = qword_10083AB98;
  if (v1 >> 60 == 15)
  {
  }

  else
  {
    v3 = v0[6];
    type metadata accessor for SecCertificate(0);

    sub_1000363B4(v3, v1);
    v4 = static SecCertificateRef.make(with:)();
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 = v0[6];
      v6 = v0[7];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10000BD94(v7, v6);

      v2 = v0[2];
    }

    else
    {
      sub_10000BD94(v0[6], v0[7]);
    }
  }

  v0[22] = v2;
  v8 = v0[8];
  v9 = v8[27];
  v10 = v8[28];
  sub_10000BA08(v8 + 24, v9);
  v11 = *(v10 + 16);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_100117C6C;

  return v16(v2, v9, v10);
}

uint64_t sub_100117C6C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_100117D98, v3, 0);
}

uint64_t sub_100117D98()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[4];
  v4 = v0[5];
  static DaemonSignposts.KRL.processResponse.getter();
  DIPSignpost.init(_:)();
  sub_10000B8B8(v5, v4);
  COSE_Sign1.init(fromHexData:)();
  v6 = v0[17];
  v7 = COSE_Sign1.typ.getter();
  sub_10011A418(v7, v8);
  v9 = v0[8];

  v10 = v9[27];
  v11 = v9[28];
  sub_10000BA08(v9 + 24, v10);
  v12 = *(v11 + 24);
  v21 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[24] = v14;
  v15 = type metadata accessor for ISO18013RevocationStatus();
  v16 = sub_10011A98C(&qword_10083ACE8, &type metadata accessor for ISO18013RevocationStatus);
  v17 = sub_10011A98C(&qword_10083ACF0, &type metadata accessor for ISO18013RevocationStatus);
  *v14 = v0;
  v14[1] = sub_10011821C;
  v18 = v0[17];
  v19 = v0[3];

  return v21(v19, v18, v15, v16, v17, v10, v11);
}

uint64_t sub_10011821C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_100118440;
  }

  else
  {
    v6 = sub_100118348;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100118348()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[11];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100118440()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[25];
  v2 = v0[14];
  (*(v0[20] + 8))(v0[21], v0[19]);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PresentmentKeyRevocationValidator an error occurred while parsing and verifying KRL response", v5, 2u);
  }

  v6 = v0[21];
  v15 = v0[18];
  v16 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];

  (*(v8 + 8))(v7, v10);
  (*(v11 + 104))(v9, enum case for DIPError.Code.krlFailedToValidate(_:), v12);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001186BC(char *a1)
{
  v67 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v63 = &v58 - v11;
  __chkstk_darwin(v10);
  v68 = &v58 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v58 - v20;
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v24 = v1[33];
  sub_10000BA08(v1 + 29, v1[32]);
  v25 = v67;
  dispatch thunk of DateProviding.now.getter();
  if (static Date.< infix(_:_:)())
  {
    defaultLogger()();
    v26 = v14[2];
    v26(v21, v23, v13);
    v26(v18, v25, v13);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v62 = v13;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v58 = v30;
      v61 = swift_slowAlloc();
      v71 = v61;
      *v30 = 136315394;
      sub_10011A98C(&qword_10083ACE0, &type metadata accessor for Date);
      v60 = v27;
      v59 = v28;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v67 = v23;
      v34 = v14[1];
      v34(v21, v13);
      v35 = sub_100141FE4(v31, v33, &v71);

      v36 = v58;
      *(v58 + 1) = v35;
      *(v36 + 6) = 2080;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v34(v18, v13);
      v23 = v67;
      v40 = sub_100141FE4(v37, v39, &v71);

      *(v36 + 14) = v40;
      v41 = v60;
      _os_log_impl(&_mh_execute_header, v60, v59, "PresentmentKeyRevocationValidator Fetched KRL expired; Current time (%s) has passed expiration time (%s)", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v34 = v14[1];
      v34(v18, v13);
      v34(v21, v13);
    }

    v47 = *(v69 + 8);
    v48 = v70;
    v47(v68, v70);
    v49 = [objc_opt_self() standardUserDefaults];
    v50._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableExpiryValidation.getter();
    v51 = NSUserDefaults.internalBool(forKey:)(v50);

    if (v51)
    {
      v52 = v63;
      defaultLogger()();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v70 = v34;
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "PresentmentKeyRevocationValidator Bypassing fetched KRL expiry check from internal settings", v55, 2u);

        v56 = v52;
        v34 = v70;
      }

      else
      {

        v56 = v52;
      }

      v47(v56, v48);
      return (v34)(v23, v62);
    }

    else
    {
      if (qword_100832BE0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Milestone();
      sub_10003170C(v57, qword_1008821A0);
      Milestone.log()();
      (*(v64 + 104))(v66, enum case for DIPError.Code.krlExpired(_:), v65);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (v34)(v23, v62);
    }
  }

  else
  {
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "PresentmentKeyRevocationValidator Validated Fetched KRL has not expired.", v44, 2u);
    }

    (*(v69 + 8))(v9, v70);
    if (qword_100832BD8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Milestone();
    sub_10003170C(v45, qword_100882188);
    Milestone.log()();
    return (v14[1])(v23, v13);
  }
}

uint64_t sub_100118EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[220] = v4;
  v5[219] = a4;
  v5[218] = a3;
  v5[217] = a2;
  v5[216] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[221] = v6;
  v7 = *(v6 - 8);
  v5[222] = v7;
  v8 = *(v7 + 64) + 15;
  v5[223] = swift_task_alloc();
  v9 = type metadata accessor for URL.DirectoryHint();
  v5[224] = v9;
  v10 = *(v9 - 8);
  v5[225] = v10;
  v11 = *(v10 + 64) + 15;
  v5[226] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[227] = v12;
  v13 = *(v12 - 8);
  v5[228] = v13;
  v14 = *(v13 + 64) + 15;
  v5[229] = swift_task_alloc();
  v5[230] = swift_task_alloc();
  v15 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v5[231] = swift_task_alloc();
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();
  v5[234] = swift_task_alloc();
  v5[235] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v5[236] = v16;
  v17 = *(v16 - 8);
  v5[237] = v17;
  v18 = *(v17 + 64) + 15;
  v5[238] = swift_task_alloc();
  v5[239] = swift_task_alloc();
  v5[240] = swift_task_alloc();
  v5[241] = swift_task_alloc();
  v5[242] = swift_task_alloc();

  return _swift_task_switch(sub_100119170, v4, 0);
}

uint64_t sub_100119170()
{
  v57 = v0;
  v1 = objc_opt_self();
  v0[243] = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideFullURL.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = [v1 standardUserDefaults];
    v6._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideURL.getter();
    object = NSUserDefaults.internalString(forKey:)(v6).value._object;

    v8 = v0[237];
    v9 = v0[236];
    v10 = v0[235];
    if (object)
    {

      URL.init(string:)();
      swift_bridgeObjectRelease_n();
      if ((*(v8 + 48))(v10, 1, v9) != 1)
      {
        v11 = v0[242];
        v12 = v0[241];
        v13 = v0[237];
        v14 = v0[236];
        v15 = v0[230];
        v16 = *(v13 + 32);
        v16(v11, v0[235], v14);
        defaultLogger()();
        (*(v13 + 16))(v12, v11, v14);
        v17 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        v18 = os_log_type_enabled(v17, v54);
        v19 = v0[241];
        v20 = v0[237];
        v21 = v0[236];
        v22 = v0[230];
        v23 = v0[228];
        v24 = v0[227];
        if (v18)
        {
          v25 = swift_slowAlloc();
          v51 = v16;
          v26 = swift_slowAlloc();
          v56 = v26;
          *v25 = 136315138;
          v48 = v22;
          v49 = v24;
          v27 = URL.absoluteString.getter();
          v29 = v28;
          (*(v20 + 8))(v19, v21);
          v30 = sub_100141FE4(v27, v29, &v56);

          *(v25 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v17, v54, "PresentmentKeyRevocationValidator overriding full KRL URL with %s", v25, 0xCu);
          sub_10000BB78(v26);
          v16 = v51;

          (*(v23 + 8))(v48, v49);
        }

        else
        {

          (*(v20 + 8))(v19, v21);
          (*(v23 + 8))(v22, v24);
        }

        v16(v0[216], v0[242], v0[236]);
        goto LABEL_15;
      }
    }

    else
    {
      (*(v8 + 56))(v0[235], 1, 1, v0[236]);
    }

    sub_10000BE18(v0[235], &unk_100844540, &unk_1006BFBC0);
  }

  v31 = v0[237];
  v32 = v0[236];
  v33 = v0[234];
  sub_10000BBC4(v0[217], v33, &unk_100844540, &unk_1006BFBC0);
  v34 = *(v31 + 48);
  v0[244] = v34;
  v0[245] = (v31 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v34(v33, 1, v32) != 1)
  {
    (*(v0[237] + 32))(v0[216], v0[234], v0[236]);
LABEL_15:
    v37 = v0[242];
    v38 = v0[241];
    v39 = v0[240];
    v40 = v0[239];
    v41 = v0[238];
    v42 = v0[235];
    v43 = v0[234];
    v44 = v0[233];
    v45 = v0[232];
    v46 = v0[231];
    v50 = v0[230];
    v52 = v0[229];
    v53 = v0[226];
    v55 = v0[223];

    v47 = v0[1];

    return v47();
  }

  sub_10000BE18(v0[234], &unk_100844540, &unk_1006BFBC0);
  v35 = swift_task_alloc();
  v0[246] = v35;
  *v35 = v0;
  v35[1] = sub_100119688;

  return sub_10010E948((v0 + 161));
}

uint64_t sub_100119688()
{
  v1 = *(*v0 + 1968);
  v3 = *v0;

  return _swift_task_switch(sub_100119784, 0, 0);
}

uint64_t sub_100119784()
{
  memcpy(v0 + 2, v0 + 161, 0x1A1uLL);
  if (sub_10010F2A8((v0 + 2)) == 1 || (v1 = v0[40], v2 = v0[41], , sub_10000BE18((v0 + 161), &qword_10083AAA0, &unk_1006D8E00), !v2))
  {
    (*(v0[237] + 56))(v0[233], 1, 1, v0[236]);
  }

  else
  {
    v3 = v0[233];

    URL.init(string:)();
    swift_bridgeObjectRelease_n();
  }

  v4 = v0[220];

  return _swift_task_switch(sub_100119884, v4, 0);
}

uint64_t sub_100119884()
{
  v63 = v0;
  v1 = [*(v0 + 1944) standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.overrideURL.getter();
  object = NSUserDefaults.internalString(forKey:)(v2).value._object;

  if (!object)
  {
    (*(*(v0 + 1896) + 56))(*(v0 + 1856), 1, 1, *(v0 + 1888));
    goto LABEL_6;
  }

  v4 = *(v0 + 1960);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 1888);
  v7 = *(v0 + 1856);

  URL.init(string:)();
  swift_bridgeObjectRelease_n();
  if (v5(v7, 1, v6) == 1)
  {
LABEL_6:
    sub_10000BE18(*(v0 + 1856), &unk_100844540, &unk_1006BFBC0);
    goto LABEL_9;
  }

  v8 = *(v0 + 1920);
  v9 = *(v0 + 1912);
  v10 = *(v0 + 1896);
  v11 = *(v0 + 1888);
  v12 = *(v0 + 1832);
  v13 = *(v10 + 32);
  v13(v8, *(v0 + 1856), v11);
  defaultLogger()();
  (*(v10 + 16))(v9, v8, v11);
  v14 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v14, v58);
  v16 = *(v0 + 1912);
  v17 = *(v0 + 1896);
  v18 = *(v0 + 1888);
  v19 = *(v0 + 1864);
  v20 = *(v0 + 1832);
  v21 = *(v0 + 1824);
  v60 = *(v0 + 1816);
  if (v15)
  {
    v22 = swift_slowAlloc();
    v55 = v13;
    v23 = swift_slowAlloc();
    v62 = v23;
    *v22 = 136315138;
    v51 = v20;
    v53 = v19;
    v24 = URL.absoluteString.getter();
    v26 = v25;
    (*(v17 + 8))(v16, v18);
    v27 = sub_100141FE4(v24, v26, &v62);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v14, v58, "PresentmentKeyRevocationValidator overriding base KRL URL with %s", v22, 0xCu);
    sub_10000BB78(v23);
    v13 = v55;

    (*(v21 + 8))(v51, v60);
    v28 = v53;
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v21 + 8))(v20, v60);
    v28 = v19;
  }

  sub_10000BE18(v28, &unk_100844540, &unk_1006BFBC0);
  v29 = *(v0 + 1896);
  v30 = *(v0 + 1888);
  v31 = *(v0 + 1864);
  v13(v31, *(v0 + 1920), v30);
  (*(v29 + 56))(v31, 0, 1, v30);
LABEL_9:
  v32 = *(v0 + 1960);
  v33 = *(v0 + 1952);
  v34 = *(v0 + 1888);
  v35 = *(v0 + 1848);
  sub_10000BBC4(*(v0 + 1864), v35, &unk_100844540, &unk_1006BFBC0);
  if (v33(v35, 1, v34) == 1)
  {
    v36 = *(v0 + 1936);
    v47 = *(v0 + 1928);
    v48 = *(v0 + 1920);
    v49 = *(v0 + 1912);
    v50 = *(v0 + 1904);
    v52 = *(v0 + 1880);
    v54 = *(v0 + 1872);
    v37 = *(v0 + 1864);
    v56 = *(v0 + 1856);
    v57 = *(v0 + 1840);
    v59 = *(v0 + 1832);
    v61 = *(v0 + 1808);
    v38 = *(v0 + 1784);
    v39 = *(v0 + 1776);
    v40 = *(v0 + 1768);
    sub_10000BE18(*(v0 + 1848), &unk_100844540, &unk_1006BFBC0);
    (*(v39 + 104))(v38, enum case for DIPError.Code.krlInvalidConfiguration(_:), v40);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v37, &unk_100844540, &unk_1006BFBC0);

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v43 = *(v0 + 1752);
    v44 = *(v0 + 1744);
    (*(*(v0 + 1896) + 32))(*(v0 + 1904), *(v0 + 1848), *(v0 + 1888));
    Data.base16EncodedString()();
    v45 = String.lowercased()();

    *(v0 + 1976) = v45;
    v46 = swift_task_alloc();
    *(v0 + 1992) = v46;
    *v46 = v0;
    v46[1] = sub_100119F04;

    return sub_10010E948(v0 + 864);
  }
}

uint64_t sub_100119F04()
{
  v1 = *(*v0 + 1992);
  v3 = *v0;

  return _swift_task_switch(sub_10011A000, 0, 0);
}

uint64_t sub_10011A000()
{
  memcpy((v0 + 440), (v0 + 864), 0x1A1uLL);
  if (sub_10010F2A8(v0 + 440) == 1 || (v1 = *(v0 + 792), v2 = *(v0 + 800), sub_10000BE18(v0 + 864, &qword_10083AAA0, &unk_1006D8E00), (v2 & 1) != 0))
  {
    v1 = 4;
  }

  *(v0 + 2000) = v1;
  v3 = *(v0 + 1760);

  return _swift_task_switch(sub_10011A0AC, v3, 0);
}

uint64_t sub_10011A0AC()
{
  v1 = v0[250];
  v2 = v0[248];
  v3 = v0[247];
  v4 = v0[238];
  v5 = v0[237];
  v28 = v0[236];
  v30 = v0[233];
  v6 = v0[226];
  v7 = v0[225];
  v24 = v0[224];
  v26 = v0[216];
  v8 = String.count.getter();
  if (v1 < v8)
  {
    v8 = v1;
  }

  sub_10011A37C(v8);

  v9 = static String._fromSubstring(_:)();
  v11 = v10;

  v0[214] = v9;
  v0[215] = v11;
  (*(v7 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
  sub_10001F298();
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v6, v24);
  (*(v5 + 8))(v4, v28);
  sub_10000BE18(v30, &unk_100844540, &unk_1006BFBC0);

  v12 = v0[242];
  v13 = v0[241];
  v14 = v0[240];
  v15 = v0[239];
  v16 = v0[238];
  v17 = v0[235];
  v18 = v0[234];
  v19 = v0[233];
  v20 = v0[232];
  v21 = v0[231];
  v25 = v0[230];
  v27 = v0[229];
  v29 = v0[226];
  v31 = v0[223];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10011A308()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10011A37C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_10011A418(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = String.lowercased()();
    if (v11._countAndFlagsBits == 0xD000000000000012 && 0x80000001006FFDD0 == v11._object)
    {

LABEL_6:
      if (qword_100832BF8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Milestone();
      sub_10003170C(v13, qword_1008821E8);
      Milestone.log()();
      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_6;
    }
  }

  defaultLogger()();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v24 = v3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    if (a2)
    {
      v19 = String.lowercased()();
      countAndFlagsBits = v19._countAndFlagsBits;
      object = v19._object;
    }

    else
    {
      object = 0xE300000000000000;
      countAndFlagsBits = 7104878;
    }

    v21 = sub_100141FE4(countAndFlagsBits, object, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Invalid KRL document type: %s", v16, 0xCu);
    sub_10000BB78(v17);

    (*(v7 + 8))(v10, v6);
    v3 = v24;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  if (qword_100832C00 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Milestone();
  sub_10003170C(v22, qword_100882200);
  Milestone.log()();
  (*(v25 + 104))(v26, enum case for DIPError.Code.krlTypeMismatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10011A8CC(uint64_t a1)
{
  v2 = type metadata accessor for DIPWebResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011A928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPWebResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011A98C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10011A9D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - v18;
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  if (a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "PresentmentKeyRevocationValidator Validated Fetched KRL has matching sub.", v24, 2u);
    }

    (*(v12 + 8))(v16, v11);
    if (qword_100832BE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Milestone();
    sub_10003170C(v25, qword_1008821B8);
    Milestone.log()();
  }

  else
  {
    v43 = v19;
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v42 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = v26;
      v29 = v28;
      v47 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_100141FE4(a1, a2, &v47);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_100141FE4(a3, a4, &v47);
      v30 = v41;
      _os_log_impl(&_mh_execute_header, v41, v42, "PresentmentKeyRevocationValidator Fetched KRL sub (%s) mismatches fetched uri (%s)", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = *(v12 + 8);
    v31(v21, v11);
    v32 = [objc_opt_self() standardUserDefaults];
    v33._countAndFlagsBits = static DaemonInternalDefaultsKeys.KRL.disableSubValidation.getter();
    v34 = NSUserDefaults.internalBool(forKey:)(v33);

    v35 = v43;
    if (v34)
    {
      defaultLogger()();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "PresentmentKeyRevocationValidator Bypassing fetched KRL sub mismatch check from internal settings!", v38, 2u);
      }

      v31(v35, v11);
    }

    else
    {
      if (qword_100832BF0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Milestone();
      sub_10003170C(v39, qword_1008821D0);
      Milestone.log()();
      (*(v44 + 104))(v46, enum case for DIPError.Code.krlSubMismatch(_:), v45);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_10011AFE4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DIPWebResponse();
  if ((*(a1 + v6[7]) & 1) == 0)
  {
    if (a3)
    {
      a2 = 0;
    }

    if (qword_100832D20 != -1)
    {
      v19 = v6;
      swift_once();
      v6 = v19;
    }

    v7 = *(a1 + v6[6]);
    v8 = qword_100882498;
    v9 = (a1 + v6[5]);
    v10 = *v9;
    v11 = v9[1];
    v12 = objc_allocWithZone(NSCachedURLResponse);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = [v12 initWithResponse:v7 data:isa];

    v15 = sub_100600EC4(v14, a2, a3 & 1);
    if (v15)
    {
      v16 = v15;
      v17 = URLRequest._bridgeToObjectiveC()().super.isa;
      v20.receiver = v8;
      v20.super_class = type metadata accessor for DIPURLCache();
      objc_msgSendSuper2(&v20, "storeCachedResponse:forRequest:", v16, v17);
    }

    else
    {
    }

    if (qword_100832BD0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Milestone();
    sub_10003170C(v18, qword_100882170);
    Milestone.log()();
  }
}

uint64_t sub_10011B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[1] = a3;
  v5 = type metadata accessor for ISO18013RevocationStatus.IdentifierList();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError.Code();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v42 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  v15 = __chkstk_darwin(v13);
  v34[0] = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v34 - v17;
  v19 = sub_10010D9A0();
  v20 = a1;
  v41[0] = a1;
  v41[1] = a2;
  v21 = a2;
  v40 = v41;
  LOBYTE(a2) = sub_10035C990(sub_10011B68C, v39, v19);

  if (a2)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "PresentmentKeyRevocationValidator Credential identifier found in the debug revocation list!", v24, 2u);
    }

    (*(v35 + 8))(v18, v36);
LABEL_12:
    (*(v37 + 104))(v42, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10011A98C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  ISO18013RevocationStatus.identifierList.getter();
  v25 = ISO18013RevocationStatus.IdentifierList.identifiers.getter();
  (*(v6 + 8))(v9, v5);
  if (*(v25 + 16))
  {
    sub_10003B554(v20, v21);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return result;
    }

    v29 = v34[0];
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "PresentmentKeyRevocationValidator Credential identifier found in revocation list!", v32, 2u);
    }

    (*(v35 + 8))(v29, v36);
    if (qword_100832BA8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Milestone();
    sub_10003170C(v33, qword_1008820F8);
    Milestone.log()();
    goto LABEL_12;
  }
}

uint64_t sub_10011B6AC@<X0>(void (*a1)(__int128 *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 5))
  {
    v6 = v2[1];
    v16 = *v2;
    v17 = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v18 = v2[2];
    v19 = v7;
    v20[0] = v9;
    v20[1] = v8;
    v10 = v2[3];
    v20[2] = v2[2];
    v20[3] = v10;
    sub_100120558(v20, v14);
    a1(&v16, &v15);
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    if (v3)
    {
      return sub_1001205B4(v14);
    }

    else
    {
      sub_1001205B4(v14);
      v13 = type metadata accessor for BundleRecord();
      return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    }
  }

  else
  {
    v12 = type metadata accessor for BundleRecord();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_10011B80C()
{
  v282 = type metadata accessor for DIPError.Code();
  v281 = *(v282 - 8);
  v1 = *(v281 + 64);
  __chkstk_darwin(v282);
  v283 = &v258[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v298 = type metadata accessor for Logger();
  v404 = *(v298 - 8);
  v3 = *(v404 + 64);
  __chkstk_darwin(v298);
  v299 = &v258[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v326 = &v258[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v329 = &v258[-v9];
  v376 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventElement();
  v352 = *(v376 - 8);
  v10 = *(v352 + 64);
  v11 = __chkstk_darwin(v376);
  v289 = &v258[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v305 = &v258[-v14];
  v15 = __chkstk_darwin(v13);
  v284 = &v258[-v16];
  v17 = __chkstk_darwin(v15);
  v285 = &v258[-v18];
  v19 = __chkstk_darwin(v17);
  v286 = &v258[-v20];
  v21 = __chkstk_darwin(v19);
  v287 = &v258[-v22];
  v23 = __chkstk_darwin(v21);
  v288 = &v258[-v24];
  v25 = __chkstk_darwin(v23);
  v290 = &v258[-v26];
  v27 = __chkstk_darwin(v25);
  v291 = &v258[-v28];
  v29 = __chkstk_darwin(v27);
  v301 = &v258[-v30];
  v31 = __chkstk_darwin(v29);
  v292 = &v258[-v32];
  v33 = __chkstk_darwin(v31);
  v293 = &v258[-v34];
  v35 = __chkstk_darwin(v33);
  v294 = &v258[-v36];
  v37 = __chkstk_darwin(v35);
  v295 = &v258[-v38];
  v39 = __chkstk_darwin(v37);
  v296 = &v258[-v40];
  v41 = __chkstk_darwin(v39);
  v297 = &v258[-v42];
  v43 = __chkstk_darwin(v41);
  v300 = &v258[-v44];
  v45 = __chkstk_darwin(v43);
  v302 = &v258[-v46];
  v47 = __chkstk_darwin(v45);
  v303 = &v258[-v48];
  __chkstk_darwin(v47);
  v304 = &v258[-v49];
  v50 = sub_100007224(&qword_10083AD00, &qword_1006D8FC8);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v393 = &v258[-v52];
  v398 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventRetention();
  v53 = *(v398 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v398);
  v395 = &v258[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for IdentityIntentToStore();
  v385 = *(v56 - 8);
  v57 = *(v385 + 64);
  v58 = __chkstk_darwin(v56);
  v399 = &v258[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __chkstk_darwin(v58);
  v405 = &v258[-v61];
  __chkstk_darwin(v60);
  v381 = &v258[-v62];
  v403 = type metadata accessor for IdentityElement();
  v384 = *(v403 - 8);
  v63 = *(v384 + 64);
  v64 = __chkstk_darwin(v403);
  v378 = &v258[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __chkstk_darwin(v64);
  v408 = &v258[-v67];
  __chkstk_darwin(v66);
  v380 = &v258[-v68];
  v69 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v70 = *(*(v69 - 8) + 64);
  v71 = __chkstk_darwin(v69 - 8);
  v386 = &v258[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v71);
  v397 = &v258[-v73];
  v74 = sub_100007224(&qword_10083AD10, &qword_1006D8FD8);
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74 - 8);
  v322 = &v258[-v76];
  v321 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
  v325 = *(v321 - 8);
  v77 = *(v325 + 64);
  __chkstk_darwin(v321);
  v333 = &v258[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_100007224(&qword_10083AD18, &unk_1006D8FE0);
  v80 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79 - 8);
  v328 = &v258[-v81];
  v332 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
  v402 = *(v332 - 8);
  v82 = *(v402 + 64);
  __chkstk_darwin(v332);
  v334 = &v258[-((v83 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v335 = type metadata accessor for ISO18013KnownDocTypes();
  v84 = *(v335 - 8);
  v85 = *(v84 + 64);
  v86 = __chkstk_darwin(v335);
  v347 = &v258[-((v87 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v86);
  v327 = &v258[-v88];
  v89 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  v90 = *(*(v89 - 8) + 64);
  v91 = __chkstk_darwin(v89 - 8);
  v317 = &v258[-((v92 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = __chkstk_darwin(v91);
  v318 = &v258[-v94];
  v95 = __chkstk_darwin(v93);
  v320 = &v258[-v96];
  __chkstk_darwin(v95);
  v98 = &v258[-v97];
  v331 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v346 = v331[6];
  sub_10000BBC4(v0 + v346, v98, &qword_10083AD20, &qword_1006D9EF0);
  v99 = type metadata accessor for ValidatedDigitalPresentmentRequest();
  v100 = *(v99 - 8);
  v101 = *(v100 + 48);
  v345 = v99;
  v344 = v101;
  v343 = v100 + 48;
  if (v101(v98, 1) == 1)
  {
    v102 = &qword_10083AD20;
    v103 = &qword_1006D9EF0;
    v104 = v98;
    return sub_10000BE18(v104, v102, v103);
  }

  v340 = v0;
  v106 = *v98;

  sub_100120488(v98, type metadata accessor for ValidatedDigitalPresentmentRequest);
  v108 = v106 + 64;
  v107 = *(v106 + 64);
  v109 = 1 << *(v106 + 32);
  v391 = enum case for IdentityIntentToStore.mayStoreForDays(_:);
  if (v109 < 64)
  {
    v110 = ~(-1 << v109);
  }

  else
  {
    v110 = -1;
  }

  v111 = v110 & v107;
  v375 = enum case for IdentityIntentToStore.willNotStore(_:);
  v112 = (v109 + 63) >> 6;
  v342 = enum case for IdentityIntentToStore.mayStore(_:);
  v330 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventRetention.mayStoreIndefinitely(_:);
  v341 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventRetention.willNotStore(_:);
  v374 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventRetention.mayStore(_:);
  v373 = enum case for IdentityElement.ageIsOver(_:);
  v368 = enum case for IdentityElement.givenName(_:);
  v367 = enum case for IdentityElement.familyName(_:);
  v366 = enum case for IdentityElement.sex(_:);
  v365 = enum case for IdentityElement.portrait(_:);
  v364 = enum case for IdentityElement.address(_:);
  v363 = enum case for IdentityElement.height(_:);
  v362 = enum case for IdentityElement.weight(_:);
  v360 = enum case for IdentityElement.eyeColor(_:);
  v359 = enum case for IdentityElement.hairColor(_:);
  v358 = enum case for IdentityElement.organDonorStatus(_:);
  v357 = enum case for IdentityElement.veteranStatus(_:);
  v356 = enum case for IdentityElement.issuingAuthority(_:);
  v355 = enum case for IdentityElement.documentDHSComplianceStatus(_:);
  v354 = enum case for IdentityElement.documentIssueDate(_:);
  v353 = enum case for IdentityElement.documentExpirationDate(_:);
  v351 = enum case for IdentityElement.documentNumber(_:);
  v350 = enum case for IdentityElement.drivingPrivileges(_:);
  v349 = enum case for IdentityElement.age(_:);
  v348 = enum case for IdentityElement.dateOfBirth(_:);
  v390 = (v53 + 56);
  v382 = (v53 + 104);
  v389 = (v53 + 48);
  v372 = (v53 + 32);
  v371 = (v53 + 8);
  v338 = (v53 + 16);
  v259 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.dateOfBirth(_:);
  v260 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.age(_:);
  v261 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.drivingPrivileges(_:);
  v262 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentNumber(_:);
  v263 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentExpirationDate(_:);
  v264 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentIssueDate(_:);
  v265 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.documentDHSComplianceStatus(_:);
  v266 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.issuingAuthority(_:);
  v267 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.veteranStatus(_:);
  v268 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.organDonorStatus(_:);
  v269 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.hairColor(_:);
  v270 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.eyeColor(_:);
  v271 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.weight(_:);
  v280 = (v404 + 8);
  v272 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.height(_:);
  v316 = (v402 + 48);
  v313 = (v402 + 32);
  v310 = (v402 + 8);
  v273 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.address(_:);
  v274 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.portrait(_:);
  v275 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.sex(_:);
  v276 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.familyName(_:);
  v277 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.givenName(_:);
  v279 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventElement.ageAtLeast(_:);
  v315 = v84 + 16;
  v314 = v84 + 32;
  v312 = (v325 + 56);
  v309 = (v325 + 48);
  v396 = (v384 + 16);
  v401 = (v384 + 32);
  v402 = v385 + 16;
  v400 = (v385 + 32);
  v388 = (v385 + 88);
  v394 = (v385 + 8);
  v370 = (v385 + 96);
  v369 = (v384 + 88);
  v387 = (v384 + 8);
  v337 = (v352 + 104);
  v339 = v352 + 32;
  v278 = (v384 + 96);
  v311 = (v84 + 8);
  v319 = v106;

  v113 = 0;
  v114 = v332;
  v383 = v56;
  v115 = v84;
  v307 = v108;
  v306 = v112;
  v308 = v84;
  if (!v111)
  {
    goto LABEL_9;
  }

  do
  {
    v116 = v340;
    v117 = v403;
LABEL_14:
    v324 = v111;
    v323 = v113;
    v119 = v327;
    v120 = v335;
    (*(v115 + 16))(v327, *(v319 + 48) + *(v115 + 72) * (__clz(__rbit64(v111)) | (v113 << 6)), v335);
    (*(v115 + 32))(v347, v119, v120);
    v121 = v328;
    sub_10011EDD8(v328);
    if ((*v316)(v121, 1, v114) == 1)
    {
      goto LABEL_193;
    }

    (*v313)(v334, v121, v114);
    v122 = v320;
    sub_10000BBC4(v116 + v346, v320, &qword_10083AD20, &qword_1006D9EF0);
    if (v344(v122, 1, v345) == 1)
    {
      sub_10000BE18(v122, &qword_10083AD20, &qword_1006D9EF0);
      goto LABEL_195;
    }

    v123 = *v122;

    sub_100120488(v122, type metadata accessor for ValidatedDigitalPresentmentRequest);
    if (!*(v123 + 16) || (v124 = sub_10003B480(v347), (v125 & 1) == 0))
    {

LABEL_195:
      v127 = v322;
      (*v312)(v322, 1, 1, v321);
LABEL_196:
      sub_10000BE18(v127, &qword_10083AD10, &qword_1006D8FD8);
      v406 = 0;
      v407 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v254._object = 0x80000001006FFEF0;
      v254._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v254);
      v255 = v347;
      v256 = v335;
      _print_unlocked<A, B>(_:_:)();
      (*(v281 + 104))(v283, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v282);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*v310)(v334, v332);
      return (*v311)(v255, v256);
    }

    v126 = *(*(v123 + 56) + 8 * v124);

    if (*(v126 + 16))
    {
      v127 = v322;
      sub_1001203C0(v126 + ((*(v325 + 80) + 32) & ~*(v325 + 80)), v322);
      v128 = 0;
    }

    else
    {
      v128 = 1;
      v127 = v322;
    }

    v129 = v128;
    v130 = v321;
    (*v312)(v127, v129, 1, v321);
    if ((*v309)(v127, 1, v130) == 1)
    {
      goto LABEL_196;
    }

    v131 = v127;
    v132 = v333;
    sub_100120424(v131, v333);
    v133 = v318;
    sub_10000BBC4(v116 + v346, v318, &qword_10083AD20, &qword_1006D9EF0);
    v134 = v344(v133, 1, v345);
    sub_10000BE18(v133, &qword_10083AD20, &qword_1006D9EF0);
    if (v134 == 1)
    {
      v377 = _swiftEmptyArrayStorage;
      goto LABEL_175;
    }

    v135 = *v132;
    v136 = *(*v132 + 64);
    v361 = *v132 + 64;
    v137 = 1 << *(v135 + 32);
    if (v137 < 64)
    {
      v138 = ~(-1 << v137);
    }

    else
    {
      v138 = -1;
    }

    v121 = v138 & v136;
    v139 = (v137 + 63) >> 6;
    v379 = v135;

    v140 = 0;
    v377 = _swiftEmptyArrayStorage;
    v141 = v386;
    v142 = v397;
    v392 = v139;
LABEL_30:
    v146 = v140;
    if (!v121)
    {
LABEL_32:
      if (v139 <= v146 + 1)
      {
        v148 = v146 + 1;
      }

      else
      {
        v148 = v139;
      }

      v140 = v148 - 1;
      while (1)
      {
        v147 = v146 + 1;
        if (__OFADD__(v146, 1))
        {
          break;
        }

        if (v147 >= v139)
        {
          v168 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
          (*(*(v168 - 8) + 56))(v141, 1, 1, v168);
          v404 = 0;
          v156 = v393;
          goto LABEL_40;
        }

        v121 = *(v361 + 8 * v147);
        ++v146;
        if (v121)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_193:
      (*v311)(v347, v335);

      v102 = &qword_10083AD18;
      v103 = &unk_1006D8FE0;
      v104 = v121;
      return sub_10000BE18(v104, v102, v103);
    }

    while (1)
    {
      v147 = v146;
LABEL_39:
      v404 = (v121 - 1) & v121;
      v149 = __clz(__rbit64(v121)) | (v147 << 6);
      v150 = v379;
      v151 = v384;
      (*(v384 + 16))(v380, *(v379 + 48) + *(v384 + 72) * v149, v117);
      v152 = v385;
      v153 = v381;
      v56 = v383;
      (*(v385 + 16))(v381, *(v150 + 56) + *(v385 + 72) * v149, v383);
      v154 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      v155 = *(v154 + 48);
      v141 = v386;
      (*(v151 + 32))();
      (*(v152 + 32))(v141 + v155, v153, v56);
      (*(*(v154 - 8) + 56))(v141, 0, 1, v154);
      v140 = v147;
      v156 = v393;
      v142 = v397;
LABEL_40:
      sub_1001204E8(v141, v142);
      v157 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      if ((*(*(v157 - 8) + 48))(v142, 1, v157) == 1)
      {
        break;
      }

      v158 = *(v157 + 48);
      v117 = v403;
      (*v401)(v408, v142, v403);
      v159 = v142 + v158;
      v160 = v405;
      (*v400)(v405, v159, v56);
      v161 = v399;
      (*v402)(v399, v160, v56);
      v162 = (*v388)(v161, v56);
      if (v162 == v391)
      {
        v163 = v399;
        (*v370)(v399, v56);
        *v156 = *v163;
        v164 = v398;
        (*v382)(v156, v374, v398);
LABEL_47:
        (*v390)(v156, 0, 1, v164);
        goto LABEL_48;
      }

      v164 = v398;
      if (v162 == v375)
      {
        (*v382)(v156, v341, v398);
        goto LABEL_47;
      }

      if (v162 == v342)
      {
        (*v382)(v156, v330, v398);
        goto LABEL_47;
      }

      (*v390)(v156, 1, 1, v398);
      (*v394)(v399, v56);
LABEL_48:
      if ((*v389)(v156, 1, v164) == 1)
      {
        (*v394)(v405, v56);
        (*v387)(v408, v117);
        sub_10000BE18(v156, &qword_10083AD00, &qword_1006D8FC8);
      }

      else
      {
        (*v372)(v395, v156, v164);
        v165 = v378;
        (*v396)(v378, v408, v117);
        v166 = (*v369)(v165, v117);
        if (v166 == v373)
        {
          v169 = v378;
          (*v278)(v378, v117);
          v170 = *v169;
          v171 = *(sub_100007224(&qword_10083AD28, &unk_1006D8FF8) + 48);
          v172 = v305;
          *v305 = v170;
          (*v338)(&v172[v171], v395, v398);
          (*v337)(v172, v279, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v142 = v397;
          v174 = v377[2];
          v173 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v173 >> 1)
          {
            v377 = sub_1003C56F0(v173 > 1, v174 + 1, 1, v377);
          }

          v143 = &v337;
          goto LABEL_29;
        }

        if (v166 == v368)
        {
          v176 = v164;
          v177 = v304;
          (*v338)(v304, v395, v176);
          (*v337)(v177, v277, v376);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142 = v397;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v179 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v179 >> 1)
          {
            v377 = sub_1003C56F0(v179 > 1, v174 + 1, 1, v377);
          }

          v143 = &v336;
          goto LABEL_29;
        }

        v142 = v397;
        if (v166 == v367)
        {
          v180 = v164;
          v181 = v303;
          (*v338)(v303, v395, v180);
          (*v337)(v181, v276, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v182 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v182 >> 1)
          {
            v377 = sub_1003C56F0(v182 > 1, v174 + 1, 1, v377);
          }

          v143 = &v335;
          goto LABEL_29;
        }

        if (v166 == v366)
        {
          v183 = v164;
          v184 = v302;
          (*v338)(v302, v395, v183);
          (*v337)(v184, v275, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v185 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v185 >> 1)
          {
            v377 = sub_1003C56F0(v185 > 1, v174 + 1, 1, v377);
          }

          v143 = &v334;
          goto LABEL_29;
        }

        if (v166 == v365)
        {
          v186 = v164;
          v187 = v301;
          (*v338)(v301, v395, v186);
          (*v337)(v187, v274, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v188 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v188 >> 1)
          {
            v377 = sub_1003C56F0(v188 > 1, v174 + 1, 1, v377);
          }

          v143 = &v333;
          goto LABEL_29;
        }

        if (v166 == v364)
        {
          v189 = v164;
          v190 = v300;
          (*v338)(v300, v395, v189);
          (*v337)(v190, v273, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v191 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v191 >> 1)
          {
            v377 = sub_1003C56F0(v191 > 1, v174 + 1, 1, v377);
          }

          v143 = &v332;
          goto LABEL_29;
        }

        if (v166 == v363)
        {
          v192 = v164;
          v193 = v297;
          (*v338)(v297, v395, v192);
          (*v337)(v193, v272, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v194 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v194 >> 1)
          {
            v377 = sub_1003C56F0(v194 > 1, v174 + 1, 1, v377);
          }

          v143 = &v329;
          goto LABEL_29;
        }

        if (v166 == v362)
        {
          v195 = v164;
          v196 = v296;
          (*v338)(v296, v395, v195);
          (*v337)(v196, v271, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v197 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v197 >> 1)
          {
            v377 = sub_1003C56F0(v197 > 1, v174 + 1, 1, v377);
          }

          v143 = &v328;
          goto LABEL_29;
        }

        if (v166 == v360)
        {
          v198 = v164;
          v199 = v295;
          (*v338)(v295, v395, v198);
          (*v337)(v199, v270, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v200 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v200 >> 1)
          {
            v377 = sub_1003C56F0(v200 > 1, v174 + 1, 1, v377);
          }

          v143 = &v327;
          goto LABEL_29;
        }

        if (v166 == v359)
        {
          v201 = v164;
          v202 = v294;
          (*v338)(v294, v395, v201);
          (*v337)(v202, v269, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v203 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v203 >> 1)
          {
            v377 = sub_1003C56F0(v203 > 1, v174 + 1, 1, v377);
          }

          v143 = &v326;
          goto LABEL_29;
        }

        if (v166 == v358)
        {
          v204 = v164;
          v205 = v293;
          (*v338)(v293, v395, v204);
          (*v337)(v205, v268, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v206 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v206 >> 1)
          {
            v377 = sub_1003C56F0(v206 > 1, v174 + 1, 1, v377);
          }

          v143 = &v325;
          goto LABEL_29;
        }

        if (v166 == v357)
        {
          v207 = v164;
          v208 = v292;
          (*v338)(v292, v395, v207);
          (*v337)(v208, v267, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v209 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v209 >> 1)
          {
            v377 = sub_1003C56F0(v209 > 1, v174 + 1, 1, v377);
          }

          v143 = &v324;
          goto LABEL_29;
        }

        if (v166 == v356)
        {
          v210 = v164;
          v211 = v291;
          (*v338)(v291, v395, v210);
          (*v337)(v211, v266, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v212 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v212 >> 1)
          {
            v377 = sub_1003C56F0(v212 > 1, v174 + 1, 1, v377);
          }

          v143 = &v323;
          goto LABEL_29;
        }

        if (v166 == v355)
        {
          v213 = v164;
          v214 = v290;
          (*v338)(v290, v395, v213);
          (*v337)(v214, v265, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v215 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v215 >> 1)
          {
            v377 = sub_1003C56F0(v215 > 1, v174 + 1, 1, v377);
          }

          v143 = &v322;
          goto LABEL_29;
        }

        if (v166 == v354)
        {
          v216 = v164;
          v217 = v289;
          (*v338)(v289, v395, v216);
          (*v337)(v217, v264, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v218 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v218 >> 1)
          {
            v377 = sub_1003C56F0(v218 > 1, v174 + 1, 1, v377);
          }

          v143 = &v321;
          goto LABEL_29;
        }

        if (v166 == v353)
        {
          v219 = v164;
          v220 = v288;
          (*v338)(v288, v395, v219);
          (*v337)(v220, v263, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v221 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v221 >> 1)
          {
            v377 = sub_1003C56F0(v221 > 1, v174 + 1, 1, v377);
          }

          v143 = &v320;
          goto LABEL_29;
        }

        if (v166 == v351)
        {
          v222 = v164;
          v223 = v287;
          (*v338)(v287, v395, v222);
          (*v337)(v223, v262, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v224 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v224 >> 1)
          {
            v377 = sub_1003C56F0(v224 > 1, v174 + 1, 1, v377);
          }

          v143 = &v319;
          goto LABEL_29;
        }

        if (v166 == v350)
        {
          v225 = v164;
          v226 = v286;
          (*v338)(v286, v395, v225);
          (*v337)(v226, v261, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v227 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v227 >> 1)
          {
            v377 = sub_1003C56F0(v227 > 1, v174 + 1, 1, v377);
          }

          v143 = &v318;
          goto LABEL_29;
        }

        if (v166 == v349)
        {
          v228 = v285;
          (*v338)(v285, v395, v398);
          (*v337)(v228, v260, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v229 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v229 >> 1)
          {
            v377 = sub_1003C56F0(v229 > 1, v174 + 1, 1, v377);
          }

          v143 = &v317;
          goto LABEL_29;
        }

        if (v166 == v348)
        {
          v230 = v284;
          (*v338)(v284, v395, v398);
          (*v337)(v230, v259, v376);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v377 = sub_1003C56F0(0, v377[2] + 1, 1, v377);
          }

          v174 = v377[2];
          v231 = v377[3];
          v175 = v174 + 1;
          if (v174 >= v231 >> 1)
          {
            v377 = sub_1003C56F0(v231 > 1, v174 + 1, 1, v377);
          }

          v143 = &v316;
LABEL_29:
          v144 = *(v143 - 32);
          (*v371)(v395, v398);
          (*v394)(v405, v56);
          (*v387)(v408, v117);
          v145 = v377;
          v377[2] = v175;
          (*(v352 + 32))(v145 + ((*(v352 + 80) + 32) & ~*(v352 + 80)) + *(v352 + 72) * v174, v144, v376);
          v139 = v392;
          v121 = v404;
          goto LABEL_30;
        }

        (*v371)(v395, v398);
        (*v394)(v405, v56);
        v167 = *v387;
        (*v387)(v408, v117);
        v167(v378, v117);
      }

      v146 = v140;
      v139 = v392;
      v121 = v404;
      if (!v404)
      {
        goto LABEL_32;
      }
    }

    v116 = v340;
LABEL_175:
    if (!v116[5])
    {
      v244 = 1;
      goto LABEL_182;
    }

    v232 = (v116 + v331[10]);
    v233 = v232[4];
    v234 = *v116;
    v235 = v116[1];
    v236 = v116;
    v237 = v116[2];
    v238 = v236[3];
    sub_10000BA08(v232, v232[3]);
    v239 = v336;
    dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
    v336 = v239;
    if (!v239)
    {
      v244 = 0;
      v116 = v340;
LABEL_182:
      v245 = type metadata accessor for BundleRecord();
      v246 = *(v245 - 8);
      v247 = v329;
      (*(v246 + 56))(v329, v244, 1, v245);
      v248 = v326;
      sub_10000BBC4(v247, v326, &qword_10083ACF8, &qword_1006D8FC0);
      if ((*(v246 + 48))(v248, 1, v245) == 1)
      {
        sub_10000BE18(v247, &qword_10083ACF8, &qword_1006D8FC0);
        sub_10000BE18(v248, &qword_10083ACF8, &qword_1006D8FC0);
        v404 = 0;
      }

      else
      {
        v404 = BundleRecord.bundleIdentifier.getter();
        sub_10000BE18(v247, &qword_10083ACF8, &qword_1006D8FC0);
        (*(v246 + 8))(v326, v245);
      }

      goto LABEL_185;
    }

    v240 = v299;
    defaultLogger()();
    v241 = Logger.logObject.getter();
    v242 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      *v243 = 0;
      _os_log_impl(&_mh_execute_header, v241, v242, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder unable to initialize bundle record", v243, 2u);
    }

    (*v280)(v240, v298);
    v404 = 0;
    v336 = 0;
    v116 = v340;
LABEL_185:
    v249 = v317;
    sub_10000BBC4(v116 + v346, v317, &qword_10083AD20, &qword_1006D9EF0);
    if (v344(v249, 1, v345) == 1)
    {
      sub_10000BE18(v249, &qword_10083AD20, &qword_1006D9EF0);
    }

    else
    {
      v251 = *(v249 + 3);
      v250 = *(v249 + 4);

      sub_100120488(v249, type metadata accessor for ValidatedDigitalPresentmentRequest);
    }

    v111 = (v324 - 1) & v324;
    type metadata accessor for DaemonAnalytics();
    v252 = v347;
    ISO18013KnownDocTypes.rawValue.getter();
    v257 = *(v340 + v331[8]);
    v253 = v334;
    static DaemonAnalytics.sendDigitalPresentmentRequestDocumentEvent(merchantID:bundleID:documentType:outcome:elements:isTestMDL:)();

    sub_100120488(v333, type metadata accessor for DigitalPresentmentIdentityElementsWithRegion);
    v114 = v332;
    (*v310)(v253, v332);
    result = (*v311)(v252, v335);
    v115 = v308;
    v108 = v307;
    v112 = v306;
    v113 = v323;
    v56 = v383;
  }

  while (v111);
LABEL_9:
  v116 = v340;
  v117 = v403;
  while (1)
  {
    v118 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      break;
    }

    if (v118 >= v112)
    {
    }

    v111 = *(v108 + 8 * v118);
    ++v113;
    if (v111)
    {
      v113 = v118;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011EDD8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v41 - v17;
  if (*(v1 + 64) == 1)
  {
    v19 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.success(_:);
    v20 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
    v42 = *(v20 - 8);
    (*(v42 + 104))(a1, v19, v20);
    v21 = *(v42 + 56);

    return v21(a1, 0, 1, v20);
  }

  v23 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v24 = *(v1 + *(v23 + 28));
  if (v24)
  {
    sub_10000BBC4(v1 + *(v23 + 24), v18, &qword_10083AD20, &qword_1006D9EF0);
    v25 = type metadata accessor for ValidatedDigitalPresentmentRequest();
    v26 = (*(*(v25 - 8) + 48))(v18, 1, v25);
    swift_errorRetain();
    sub_10000BE18(v18, &qword_10083AD20, &qword_1006D9EF0);
    if (v26 == 1)
    {
      *a1 = v24;
      v27 = enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.validationFailed(_:);
      v28 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
      v29 = *(v28 - 8);
      (*(v29 + 104))(a1, v27, v28);
      return (*(v29 + 56))(a1, 0, 1, v28);
    }

    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v34 = type metadata accessor for DIPError.Code();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v14, 1, v34) != 1)
    {
      sub_10000BBC4(v14, v12, &qword_10083B020, &unk_1006D8ED0);
      v37 = (*(v35 + 88))(v12, v34);
      if (v37 == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
      {

        v36 = &enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.userCancelled(_:);
        goto LABEL_17;
      }

      if (v37 == enum case for DIPError.Code.digitalPresentmentAppCancelled(_:))
      {

        v36 = &enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.appCancelled(_:);
        goto LABEL_17;
      }

      (*(v35 + 8))(v12, v34);
    }

    *a1 = v24;
    v36 = &enum case for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome.presentmentFailed(_:);
LABEL_17:
    v38 = *v36;
    v39 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
    v40 = *(v39 - 8);
    (*(v40 + 104))(a1, v38, v39);
    (*(v40 + 56))(a1, 0, 1, v39);
    return sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  }

  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "DigitalPresentmentRequestDocumentAnalyticsRecorder didPresentSuccessfully is false but no error is set", v32, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v33 = type metadata accessor for DaemonAnalytics.DigitalPresentmentRequestedEventOutcome();
  return (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
}

uint64_t sub_10011F40C()
{
  v1 = v0;
  v74 = type metadata accessor for Logger();
  v73 = *(v74 - 8);
  v2 = *(v73 + 64);
  v3 = __chkstk_darwin(v74);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v84 = &v69 - v6;
  __chkstk_darwin(v5);
  v94 = &v69 - v7;
  v87 = type metadata accessor for DigitalPresentmentDocumentType();
  v83 = *(v87 - 8);
  v8 = *(v83 + 64);
  __chkstk_darwin(v87);
  v86 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ISO18013KnownDocTypes();
  v79 = *(v90 - 8);
  v10 = *(v79 + 64);
  __chkstk_darwin(v90);
  v92 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083AD30, &qword_1006D9008);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v89 = &v69 - v14;
  CanRequestDocumentOutcome = type metadata accessor for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome();
  v75 = *(CanRequestDocumentOutcome - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(CanRequestDocumentOutcome);
  v85 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IdentityDocumentDescriptor();
  v93 = *(v17 - 8);
  v18 = *(v93 + 64);
  __chkstk_darwin(v17);
  v95 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v82 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v69 - v24;
  v26 = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v69 - v28;
  v30 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanRequestDocumentAnalyticsRecorder = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  sub_10000BBC4(&v1[*(CanRequestDocumentAnalyticsRecorder + 20)], v29, &qword_10083AD38, &unk_1006D9010);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_10000BE18(v29, &qword_10083AD38, &unk_1006D9010);
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder descriptor not set", v38, 2u);
    }

    return (*(v73 + 8))(v94, v74);
  }

  else
  {
    v91 = v17;
    v69 = v31;
    v40 = *(v31 + 32);
    v72 = v34;
    v41 = v40(v34, v29, v30);
    v42 = &v1[*(CanRequestDocumentAnalyticsRecorder + 24)];
    v43 = *(v42 + 3);
    v98 = *(v42 + 2);
    v99 = v43;
    v44 = *(v42 + 1);
    v96 = *v42;
    v97 = v44;
    __chkstk_darwin(v41);
    *(&v69 - 2) = v1;
    v45 = 0;
    sub_10011B6AC(sub_100120628, v25);
    v70 = v30;
    v46 = v82;
    sub_10000BBC4(v25, v82, &qword_10083ACF8, &qword_1006D8FC0);
    v47 = type metadata accessor for BundleRecord();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v46, 1, v47);
    v50 = v92;
    if (v49 == 1)
    {
      sub_10000BE18(v25, &qword_10083ACF8, &qword_1006D8FC0);
      sub_10000BE18(v46, &qword_10083ACF8, &qword_1006D8FC0);
      v81 = 0;
      v84 = 0;
    }

    else
    {
      v81 = BundleRecord.bundleIdentifier.getter();
      v84 = v51;
      sub_10000BE18(v25, &qword_10083ACF8, &qword_1006D8FC0);
      (*(v48 + 8))(v46, v47);
    }

    v52 = v91;
    result = IdentityDocumentCompoundDescriptor.descriptors.getter();
    v53 = result;
    v80 = *(result + 16);
    if (v80)
    {
      v54 = 0;
      v82 = v93 + 16;
      v79 += 8;
      v78 = (v75 + 48);
      v77 = (v75 + 32);
      v76 = (v83 + 8);
      v75 += 8;
      v83 = v93 + 8;
      while (1)
      {
        if (v54 >= *(v53 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v93 + 16))(v95, v53 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v54, v52);
        sub_100142F4C(v50);
        if (v45)
        {
          break;
        }

        v55 = v89;
        v56 = v1;
        sub_100120108(v89);
        (*v79)(v50, v90);
        v57 = CanRequestDocumentOutcome;
        if ((*v78)(v55, 1, CanRequestDocumentOutcome) == 1)
        {

          (*v83)(v95, v52);
          (*(v69 + 8))(v72, v70);
          return sub_10000BE18(v55, &qword_10083AD30, &qword_1006D9008);
        }

        ++v54;
        v58 = *v77;
        v94 = 0;
        v59 = v53;
        v60 = v85;
        v58(v85, v55, v57);
        type metadata accessor for DaemonAnalytics();
        v61 = v86;
        v62 = v95;
        IdentityDocumentDescriptor.documentType.getter();
        DigitalPresentmentDocumentType.description.getter();
        (*v76)(v61, v87);
        v1 = v56;
        v63 = *v56;
        v50 = v92;
        static DaemonAnalytics.sendDigitalPresentmentCanRequestDocumentEvent(outcome:bundleID:documentType:isTestMDL:)();
        v52 = v91;

        v64 = v60;
        v53 = v59;
        v45 = v94;
        (*v75)(v64, v57);
        result = (*v83)(v62, v52);
        if (v80 == v54)
        {
          goto LABEL_15;
        }
      }

      v65 = v71;
      defaultLogger()();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder unknown document type", v68, 2u);
      }

      (*(v73 + 8))(v65, v74);
      (*v83)(v95, v91);
      return (*(v69 + 8))(v72, v70);
    }

    else
    {
LABEL_15:
      (*(v69 + 8))(v72, v70);
    }
  }
}

uint64_t sub_100120060(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = (a2 + *(type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0) + 44));
  v9 = v8[4];
  sub_10000BA08(v8, v8[3]);
  result = dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_100120108@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanRequestDocumentAnalyticsRecorder = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  if (*(v1 + CanRequestDocumentAnalyticsRecorder[10]) == 1)
  {
    v9 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.success(_:);
LABEL_9:
    v10 = *v9;
    CanRequestDocumentOutcome = type metadata accessor for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome();
    v19 = *(CanRequestDocumentOutcome - 8);
    (*(v19 + 104))(a1, v10, CanRequestDocumentOutcome);
    v12 = *(v19 + 56);

    return v12(a1, 0, 1, CanRequestDocumentOutcome);
  }

  if (*(v1 + CanRequestDocumentAnalyticsRecorder[7]) == 1)
  {
    v9 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.missingDocument(_:);
    goto LABEL_9;
  }

  if (*(v1 + CanRequestDocumentAnalyticsRecorder[8]) == 1)
  {
    v9 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.missingEntitlement(_:);
    goto LABEL_9;
  }

  if (*(v1 + CanRequestDocumentAnalyticsRecorder[9]) == 1)
  {
    v9 = &enum case for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome.notLoggedInWithPasscode(_:);
    goto LABEL_9;
  }

  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "DigitalPresentmentCanRequestDocumentAnalyticsRecorder inconsistent outcome", v16, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v17 = type metadata accessor for DaemonAnalytics.DigitalPresentmentCanRequestDocumentOutcome();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t sub_1001203C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001204E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100120740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10012080C()
{
  sub_100120D70(319, &qword_10083ADA8, &type metadata accessor for IdentityDocumentCompoundDescriptor);
  if (v0 <= 0x3F)
  {
    sub_1001208E0();
    if (v1 <= 0x3F)
    {
      sub_100120930();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001208E0()
{
  if (!qword_10083ADB0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083ADB0);
    }
  }
}

unint64_t sub_100120930()
{
  result = qword_10083ADB8;
  if (!qword_10083ADB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10083ADB8);
  }

  return result;
}

uint64_t sub_1001209A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100120AE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007224(&qword_10083AD20, &qword_1006D9EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_100120C00()
{
  sub_1001208E0();
  if (v0 <= 0x3F)
  {
    sub_100120D70(319, &qword_10083AE70, type metadata accessor for ValidatedDigitalPresentmentRequest);
    if (v1 <= 0x3F)
    {
      sub_100120D0C();
      if (v2 <= 0x3F)
      {
        sub_100120D70(319, &unk_10083AE80, &type metadata accessor for ISO18013KnownDocTypes);
        if (v3 <= 0x3F)
        {
          sub_100120930();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100120D0C()
{
  if (!qword_10083AE78)
  {
    sub_10000B870(&qword_100833B90, &qword_1006D95C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083AE78);
    }
  }
}

void sub_100120D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100120F54(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  a4;
  v8 = a1;
  v9 = a2;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100121034;

  return sub_100126D58();
}

uint64_t sub_100121034(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  if (v5)
  {
    v10 = *(v3 + 40);
    (v10)[2](v10, a1);

    _Block_release(v10);
  }

  else
  {
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_100121368(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = a1;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100121034;

  return (sub_1001271AC)(v8);
}

uint64_t sub_100121450(void *a1, uint64_t a2)
{
  v93 = a2;
  v3 = type metadata accessor for DIPSignpost();
  v96 = *(v3 - 8);
  v4 = *(v96 + 64);
  __chkstk_darwin(v3);
  v89 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v95 = &v85 - v8;
  v91 = type metadata accessor for DIPError.Code();
  v90 = *(v91 - 8);
  v9 = *(v90 + 64);
  __chkstk_darwin(v91);
  v92 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DigitalPresentmentUIResult();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007224(&qword_10083B028, &qword_1006D9150);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v94 = &v85 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v87 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v85 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v85 - v27;
  v29 = __chkstk_darwin(v26);
  v88 = &v85 - v30;
  __chkstk_darwin(v29);
  v32 = &v85 - v31;
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v86 = a1;
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate: paymentAuthorizationCoordinator willFinishWithError invoked.", v35, 2u);
    a1 = v86;
  }

  v38 = *(v19 + 8);
  v36 = v19 + 8;
  v37 = v38;
  v38(v32, v18);
  if (a1)
  {
    [a1 dismissWithCompletion:0];
  }

  v39 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  v40 = v97;
  swift_beginAccess();
  v41 = v94;
  sub_10000BBC4(v40 + v39, v94, &qword_10083B028, &qword_1006D9150);
  v42 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {
    v43 = v18;
    if (v93)
    {
      swift_errorRetain();
      defaultLogger()();
      swift_errorRetain();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v94 = v25;
        v47 = v46;
        v48 = swift_slowAlloc();
        v98[0] = v48;
        *v47 = 136315138;
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = sub_100141FE4(v49, v50, v98);

        *(v47 + 4) = v51;
        v40 = v97;
        _os_log_impl(&_mh_execute_header, v44, v45, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate failing promise with error: %s", v47, 0xCu);
        sub_10000BB78(v48);

        v52 = v94;
      }

      else
      {

        v52 = v25;
      }

      v37(v52, v43);
      v76._countAndFlagsBits = 0xD00000000000001CLL;
      v77._countAndFlagsBits = 0x3433633732386334;
      v76._object = 0x8000000100700280;
      v77._object = 0xE800000000000000;
      logMilestone(tag:description:)(v77, v76);
      v78 = *(v40 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_promise);
      (*(v90 + 104))(v92, enum case for DIPError.Code.digitalPresentmentAppCancelled(_:), v91);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      v40 = v97;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      AsyncPromise.fail(error:)();

      goto LABEL_23;
    }

    v69 = v87;
    defaultLogger()();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate user cancelled", v72, 2u);
    }

    v37(v69, v43);
    v73._countAndFlagsBits = 0xD00000000000001DLL;
    v74._countAndFlagsBits = 0x3665663035323264;
    v73._object = 0x80000001007001B0;
    v74._object = 0xE800000000000000;
    logMilestone(tag:description:)(v74, v73);
    v75 = *(v40 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_promise);
    (*(v90 + 104))(v92, enum case for DIPError.Code.digitalPresentmentUserCancelled(_:), v91);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    v40 = v97;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_22:
    AsyncPromise.fail(error:)();
LABEL_23:

    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v93 = v36;
    v53 = *v41;
    defaultLogger()();
    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v94 = v28;
      v57 = v56;
      v58 = swift_slowAlloc();
      v98[0] = v58;
      *v57 = 136315138;
      swift_getErrorValue();
      v59 = Error.localizedDescription.getter();
      v61 = sub_100141FE4(v59, v60, v98);

      *(v57 + 4) = v61;
      v40 = v97;
      _os_log_impl(&_mh_execute_header, v54, v55, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate failing promise with error: %s", v57, 0xCu);
      sub_10000BB78(v58);

      v62 = v94;
    }

    else
    {

      v62 = v28;
    }

    v37(v62, v18);
    v79 = *(v40 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_promise);
    goto LABEL_22;
  }

  v63 = v18;
  sub_1001237D8(v41, v14, type metadata accessor for DigitalPresentmentUIResult);
  v64 = v88;
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate fulfilling promise with result", v67, 2u);
  }

  v37(v64, v63);
  v68 = *(v40 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_promise);
  AsyncPromise.fulfill(value:)();
  sub_100123840(v14, type metadata accessor for DigitalPresentmentUIResult);
LABEL_24:
  v80 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_postAuthorizationSignpost;
  swift_beginAccess();
  v81 = v95;
  sub_10000BBC4(v40 + v80, v95, &qword_10083B038, &unk_1006D9160);
  v82 = v96;
  if ((*(v96 + 48))(v81, 1, v3))
  {
    return sub_10000BE18(v81, &qword_10083B038, &unk_1006D9160);
  }

  v84 = v89;
  (*(v82 + 16))(v89, v81, v3);
  sub_10000BE18(v81, &qword_10083B038, &unk_1006D9160);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (*(v82 + 8))(v84, v3);
}

uint64_t sub_100122240(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100122310;

  return sub_100123A60();
}

uint64_t sub_100122310(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v5)
  {
    v9 = *(v3 + 32);
    (v9)[2](v9, a1);

    _Block_release(v9);
  }

  else
  {
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_10012248C()
{
  v1 = v0;
  v2 = type metadata accessor for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v47 - v10;
  v11 = sub_100007224(&qword_10083B028, &qword_1006D9150);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v47 - v13);
  v15 = sub_100007224(&qword_10083B030, &qword_1006D9158);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v49 = (&v47 - v21);
  __chkstk_darwin(v20);
  v23 = &v47 - v22;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v29 = v1;
  Date.timeIntervalSince(_:)();
  v31 = v30;
  (*(v25 + 8))(v28, v24);
  v32 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  sub_10000BBC4(v1 + v32, v14, &qword_10083B028, &qword_1006D9150);
  v33 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
  {
    (*(v3 + 56))(v23, 1, 1, v2);
    v34 = v2;
    goto LABEL_26;
  }

  v35 = v23;
  v34 = v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v14;
    swift_getErrorValue();
    v37 = v50;
    Error.dipErrorCode.getter();
    v38 = type metadata accessor for DIPError.Code();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) != 1)
    {
      v40 = v48;
      sub_10000BBC4(v37, v48, &qword_10083B020, &unk_1006D8ED0);
      v41 = (*(v39 + 88))(v40, v38);
      v42 = &enum case for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.terminalError(_:);
      if (v41 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v41 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v41 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v41 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v41 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v41 == enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:) || v41 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v41 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v41 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v41 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v41 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v41 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v41 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v41 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v41 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v41 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v41 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
      {
        goto LABEL_24;
      }

      (*(v39 + 8))(v48, v38);
    }

    v42 = &enum case for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.retryableError(_:);
LABEL_24:
    sub_10000BE18(v37, &qword_10083B020, &unk_1006D8ED0);
    v43 = v49;
    *v49 = v36;
    (*(v3 + 104))(v43, *v42, v34);
    (*(v3 + 56))(v43, 0, 1, v34);
    v23 = v35;
    sub_100123768(v43, v35);
    goto LABEL_26;
  }

  (*(v3 + 104))(v23, enum case for DaemonAnalytics.DigitalPresentmentSpinnerShownOutcome.success(_:), v2);
  (*(v3 + 56))(v23, 0, 1, v2);
  sub_10000BE18(v14, &unk_10083B010, &qword_1006D9128);
LABEL_26:
  sub_10000BBC4(v23, v19, &qword_10083B030, &qword_1006D9158);
  if ((*(v3 + 48))(v19, 1, v34) == 1)
  {
    sub_10000BE18(v23, &qword_10083B030, &qword_1006D9158);
  }

  else
  {
    v44 = v51;
    (*(v3 + 32))(v51, v19, v34);
    v45 = *(v29 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_analyticsSender);
    (*(*(v29 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_analyticsSender + 8) + 8))(v44, v31);
    (*(v3 + 8))(v44, v34);
    v19 = v23;
  }

  return sub_10000BE18(v19, &qword_10083B030, &qword_1006D9158);
}

id sub_100122C64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate()
{
  result = qword_10083AFF8;
  if (!qword_10083AFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122DB4()
{
  sub_100122EC0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100122F24();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100122EC0()
{
  if (!qword_10083B008)
  {
    sub_10000B870(&unk_10083B010, &qword_1006D9128);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083B008);
    }
  }
}

void sub_100122F24()
{
  if (!qword_100849A50)
  {
    type metadata accessor for DIPSignpost();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100849A50);
    }
  }
}

uint64_t sub_100122F7C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = type metadata accessor for Logger();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  __chkstk_darwin(v15);
  v83 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v81 = (&v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21 - 8);
  v90 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v80 = &v78 - v27;
  __chkstk_darwin(v26);
  v89 = (&v78 - v28);
  v29 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  v30 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  (*(*(v30 - 8) + 56))(&v7[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_postAuthorizationSignpost;
  v32 = type metadata accessor for DIPSignpost();
  (*(*(v32 - 8) + 56))(&v7[v31], 1, 1, v32);
  v33 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass];
  *v33 = 0;
  v33[1] = 0;
  v82 = v33;
  v86 = a1;
  sub_100020260(a1, &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder]);
  v34 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_externalizedContext];
  *v34 = a2;
  v34[1] = a3;
  *&v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_promise] = a4;
  v35 = &v7[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_analyticsSender];
  *v35 = a5;
  *(v35 + 1) = a6;
  v36 = v7;
  sub_10000B8B8(a2, a3);

  v37 = sub_10003E9C8(_swiftEmptyArrayStorage);
  v38 = v37;
  v87 = *(a7 + 16);
  if (!v87)
  {
    *&v36[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary] = v37;

    v63 = 0;
    v62 = 0;
LABEL_20:
    v64 = v82;
    v65 = v82[1];
    *v82 = v63;
    v64[1] = v62;

    v66 = v83;
    defaultLogger()();
    v67 = v36;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v92 = v71;
      *v70 = 136315138;
      v72 = v64[1];
      if (v72)
      {
        v73 = *v64;
      }

      else
      {
        v72 = 0xE500000000000000;
        v73 = 0x3E6C696E3CLL;
      }

      v74 = sub_100141FE4(v73, v72, &v92);

      *(v70 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate default credentialIdentifierForSelectedPass: %s ", v70, 0xCu);
      sub_10000BB78(v71);
    }

    else
    {
    }

    (*(v84 + 8))(v66, v85);
    v75 = type metadata accessor for DigitalPresentmentAuthorizationCoordinatorPrivateDelegate();
    v91.receiver = v67;
    v91.super_class = v75;
    v76 = objc_msgSendSuper2(&v91, "init");
    sub_10000BB78(v86);
    return v76;
  }

  v79 = v36;
  v39 = 0;
  v88 = a7 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v40 = v22;
  do
  {
    if (v39 >= *(a7 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v41 = a7;
    v42 = v40;
    v43 = *(v40 + 72);
    v44 = v89;
    sub_10012369C(v88 + v43 * v39, v89, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v46 = *v44;
    v45 = v44[1];
    sub_10012369C(v44, v90, type metadata accessor for DigitalPresentmentEligibleProposalData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v38;
    v49 = sub_10003ADCC(v46, v45);
    v50 = v38[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_28;
    }

    v53 = v48;
    if (v38[3] >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v92;
        if (v48)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1001708B8();
        v38 = v92;
        if (v53)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1001680EC(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_10003ADCC(v46, v45);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_31;
      }

      v49 = v54;
      v38 = v92;
      if (v53)
      {
LABEL_3:
        sub_100123704(v90, v38[7] + v49 * v43);
        goto LABEL_4;
      }
    }

    v38[(v49 >> 6) + 8] |= 1 << v49;
    v56 = (v38[6] + 16 * v49);
    *v56 = v46;
    v56[1] = v45;
    sub_1001237D8(v90, v38[7] + v49 * v43, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v57 = v38[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_29;
    }

    v38[2] = v59;

LABEL_4:
    ++v39;
    sub_100123840(v89, type metadata accessor for DigitalPresentmentEligibleProposalData);
    a7 = v41;
    v40 = v42;
  }

  while (v87 != v39);
  v36 = v79;
  *&v79[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary] = v38;
  if (*(v41 + 16))
  {
    v60 = v80;
    sub_10012369C(v88, v80, type metadata accessor for DigitalPresentmentEligibleProposalData);

    v61 = v81;
    sub_10012369C(v60, v81, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100123840(v60, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v63 = *v61;
    v62 = v61[1];

    sub_100123840(v61, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    goto LABEL_20;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10012369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100123768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B030, &qword_1006D9158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001237D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001238A0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001238E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100122240(v2, v3, v4);
}

uint64_t sub_1001239A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100500B84(v2, v3, v5);
}

uint64_t sub_100123A60()
{
  v1[23] = v0;
  v2 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v5 = *(v4 + 64) + 15;
  v1[29] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v1[30] = v6;
  v7 = *(v6 - 8);
  v1[31] = v7;
  v8 = *(v7 + 64) + 15;
  v1[32] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_10083B028, &qword_1006D9150) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v10 = *(type metadata accessor for DigitalPresentmentEligibleProposalData() - 8);
  v1[34] = v10;
  v11 = *(v10 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v1[41] = v12;
  v13 = *(v12 - 8);
  v1[42] = v13;
  v14 = *(v13 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v1[48] = v15;
  v16 = *(v15 - 8);
  v1[49] = v16;
  v17 = *(v16 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v18 = type metadata accessor for DIPSignpost();
  v1[52] = v18;
  v19 = *(v18 - 8);
  v1[53] = v19;
  v20 = *(v19 + 64) + 15;
  v1[54] = swift_task_alloc();
  v21 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v22 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  v1[56] = swift_task_alloc();

  return _swift_task_switch(sub_100123E4C, 0, 0);
}

uint64_t sub_100123E4C()
{
  v188 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 376);
  v8 = *(v0 + 184);
  static DaemonSignposts.requestDocumentPostAuthorization.getter();
  DIPSignpost.init(_:)();
  (*(v4 + 56))(v1, 0, 1, v5);
  v9 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_postAuthorizationSignpost;
  swift_beginAccess();
  sub_1000B2764(v1, v8 + v9, &qword_10083B038, &unk_1006D9160);
  swift_endAccess();
  static DaemonSignposts.requestDocumentBuildResponse.getter();
  DIPSignpost.init(_:)();
  Date.init()();
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate paymentAuthorizationCoordinator invoked, building response.", v12, 2u);
  }

  v13 = *(v0 + 376);
  v14 = *(v0 + 328);
  v15 = *(v0 + 336);
  v16 = *(v0 + 184);

  v17 = *(v15 + 8);
  *(v0 + 456) = v17;
  v17(v13, v14);
  v18 = [objc_allocWithZone(PKPaymentAuthorizationResult) init];
  v19 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass;
  *(v0 + 464) = v18;
  *(v0 + 472) = v19;
  v20 = (v16 + v19);
  v21 = v20[1];
  if (v21)
  {
    v22 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v22 + 16))
    {
      v23 = *v20;
      v24 = v20[1];

      v25 = sub_10003ADCC(v23, v21);
      if (v26)
      {
        v27 = *(v0 + 368);
        v29 = *(v0 + 312);
        v28 = *(v0 + 320);
        v30 = *(v0 + 304);
        sub_10012369C(*(v22 + 56) + *(*(v0 + 272) + 72) * v25, v29, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v29, v28, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        sub_10012369C(v28, v30, type metadata accessor for DigitalPresentmentEligibleProposalData);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 368);
        v36 = *(v0 + 328);
        v35 = *(v0 + 336);
        v37 = *(v0 + 304);
        if (v33)
        {
          v182 = *(v0 + 328);
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v187[0] = v39;
          *v38 = 136315138;
          v179 = v34;
          v40 = *(v37 + 64);
          v41 = *(v37 + 72);

          sub_100123840(v37, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v42 = sub_100141FE4(v40, v41, v187);

          *(v38 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v31, v32, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate selectedProposalDocType %s", v38, 0xCu);
          sub_10000BB78(v39);

          v43 = v179;
          v44 = v182;
        }

        else
        {

          sub_100123840(v37, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v43 = v34;
          v44 = v36;
        }

        v17(v43, v44);
        v133 = *(v0 + 184);
        v134 = *(v133 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v135 = *(v133 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v133 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v134);
        v136 = v133 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_externalizedContext;
        v137 = *(v133 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_externalizedContext);
        v138 = *(v136 + 8);
        v139 = *(v135 + 16);
        v185 = (v139 + *v139);
        v140 = v139[1];
        v141 = swift_task_alloc();
        *(v0 + 480) = v141;
        *v141 = v0;
        v141[1] = sub_100124E64;
        v81 = *(v0 + 320);
        v79 = v137;
        v80 = v138;
        v82 = v134;
        v83 = v135;
        v84 = v185;

        return (v84)(v79, v80, v81, v82, v83);
      }
    }
  }

  v45 = *(v0 + 240);
  v183 = enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:);
  (*(*(v0 + 248) + 104))(*(v0 + 256));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  v46 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  *(v0 + 504) = v46;
  v47 = *(v0 + 352);
  defaultLogger()();
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 456);
  v52 = *(v0 + 352);
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);
  if (v50)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v187[0] = v56;
    *v55 = 136315138;
    swift_getErrorValue();
    v180 = v51;
    v58 = *(v0 + 112);
    v57 = *(v0 + 120);
    v59 = *(v0 + 128);
    v60 = Error.localizedDescription.getter();
    v177 = v52;
    v62 = sub_100141FE4(v60, v61, v187);

    *(v55 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v48, v49, "DigitalPresentmentUIPresenter: paymentAuthorizationCoordinator didAuthorizeContextWithHandler buildResponse failed with error: %s.", v55, 0xCu);
    sub_10000BB78(v56);

    v180(v177, v54);
  }

  else
  {

    v51(v52, v54);
  }

  v63 = *(v0 + 400);
  v64 = *(v0 + 408);
  v65 = *(v0 + 384);
  v66 = *(v0 + 392);
  v67 = *(v0 + 264);
  v68 = *(v0 + 184);
  *v67 = v46;
  v69 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  swift_storeEnumTagMultiPayload();
  (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
  v70 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  swift_errorRetain();
  sub_1000B2764(v67, v68 + v70, &qword_10083B028, &qword_1006D9150);
  swift_endAccess();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v72 = v71;
  (*(v66 + 8))(v63, v65);
  if (v72 < 1.0)
  {
    v73 = *(v0 + 232);
    v74 = static Duration.seconds(_:)();
    v76 = v75;
    static Clock<>.continuous.getter();
    v77 = swift_task_alloc();
    *(v0 + 512) = v77;
    *v77 = v0;
    v77[1] = sub_100125490;
    v78 = *(v0 + 232);
    v79 = v74;
    v80 = v76;
    v81 = 0;
    v82 = 0;
    v83 = 1;
    v84 = sub_1003DA1A4;

    return (v84)(v79, v80, v81, v82, v83);
  }

  v86 = *(v0 + 504);
  v87 = *(v0 + 240);
  v88 = *(v0 + 248);
  v89 = *(v0 + 208);
  swift_getErrorValue();
  v91 = *(v0 + 64);
  v90 = *(v0 + 72);
  v92 = *(v0 + 80);
  Error.dipErrorCode.getter();
  v93 = *(v88 + 48);
  if (v93(v89, 1, v87) != 1)
  {
    v94 = *(v0 + 240);
    v95 = *(v0 + 248);
    v96 = *(v0 + 200);
    sub_10000BBC4(*(v0 + 208), v96, &qword_10083B020, &unk_1006D8ED0);
    v97 = *(v95 + 88);
    v98 = v97(v96, v94);
    v99 = enum case for DIPError.Code.topekaMerchantNotFound(_:);
    if (v98 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v98 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v98 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v98 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v98 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v98 == v183 || v98 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v98 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v98 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v98 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v98 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v98 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v98 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v98 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v98 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v98 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v98 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
    {
      v123 = *(v0 + 504);
      v124 = *(v0 + 464);
      v125 = *(v0 + 240);
      v126 = *(v0 + 192);
      sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
      [v124 setStatus:{1, 0xD000000000000023, 0x8000000100700350, 132}];
      swift_getErrorValue();
      v128 = *(v0 + 88);
      v127 = *(v0 + 96);
      v129 = *(v0 + 104);
      Error.dipErrorCode.getter();
      v130 = v93(v126, 1, v125);
      v131 = *(v0 + 192);
      if (v130 == 1)
      {
        v132 = *(v0 + 504);

        sub_10000BE18(v131, &qword_10083B020, &unk_1006D8ED0);
      }

      else
      {
        v153 = v97(*(v0 + 192), *(v0 + 240));
        v154 = *(v0 + 504);
        if (v153 == v99)
        {
          v155 = *(v0 + 464);
          (*(*(v0 + 248) + 8))(*(v0 + 192), *(v0 + 240));
          static DigitalPresentmentLocalizedString.appNotSupportedTitle.getter();
          v156 = String._bridgeToObjectiveC()();

          [v155 setLocalizedErrorMessageOverride:v156];
        }

        else
        {
          v157 = *(v0 + 240);
          v158 = *(v0 + 248);
          v159 = *(v0 + 192);
          v160 = *(v0 + 504);

          (*(v158 + 8))(v159, v157);
        }
      }

      goto LABEL_51;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 200), *(v0 + 240));
  }

  v100 = (*(v0 + 184) + *(v0 + 472));
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  v101 = v100[1];
  if (v101)
  {
    v102 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v102 + 16))
    {
      v103 = *v100;

      v104 = sub_10003ADCC(v103, v101);
      if (v105)
      {
        v106 = *(v0 + 344);
        v108 = *(v0 + 280);
        v107 = *(v0 + 288);
        sub_10012369C(*(v102 + 56) + *(*(v0 + 272) + 72) * v104, v108, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v108, v107, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&_mh_execute_header, v109, v110, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate shouldRetry invoked.", v111, 2u);
        }

        v112 = *(v0 + 456);
        v114 = *(v0 + 336);
        v113 = *(v0 + 344);
        v115 = *(v0 + 328);
        v116 = *(v0 + 184);

        v112(v113, v115);
        v117 = *(v116 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v118 = *(v116 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v116 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v117);
        v119 = *(v118 + 8);
        v184 = (v119 + *v119);
        v120 = v119[1];
        v121 = swift_task_alloc();
        *(v0 + 520) = v121;
        *v121 = v0;
        v121[1] = sub_100125DD8;
        v122 = *(v0 + 288);

        return v184(v122, v117, v118);
      }
    }
  }

  v142 = *(v0 + 504);
  [*(v0 + 464) setStatus:{1000, 0xD000000000000023, 0x8000000100700350, 132}];

LABEL_51:
  v186 = *(v0 + 464);
  v144 = *(v0 + 440);
  v143 = *(v0 + 448);
  v145 = *(v0 + 424);
  v146 = *(v0 + 432);
  v147 = *(v0 + 408);
  v148 = *(v0 + 416);
  v149 = *(v0 + 392);
  v150 = *(v0 + 384);
  v161 = *(v0 + 400);
  v162 = *(v0 + 376);
  v163 = *(v0 + 368);
  v164 = *(v0 + 360);
  v165 = *(v0 + 352);
  v166 = *(v0 + 344);
  v167 = *(v0 + 320);
  v168 = *(v0 + 312);
  v169 = *(v0 + 304);
  v170 = *(v0 + 296);
  v171 = *(v0 + 288);
  v172 = *(v0 + 280);
  v173 = *(v0 + 264);
  v174 = *(v0 + 256);
  v175 = *(v0 + 232);
  v176 = *(v0 + 208);
  v178 = *(v0 + 200);
  v151 = *(v0 + 184);
  v181 = *(v0 + 192);
  sub_10012248C();
  (*(v149 + 8))(v147, v150);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v145 + 8))(v146, v148);

  v152 = *(v0 + 8);

  return v152(v186);
}

uint64_t sub_100124E64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v7 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v5 = sub_1001260F0;
  }

  else
  {
    v5 = sub_100124F78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100124F78()
{
  v66 = v0;
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[23];
  defaultLogger()();
  sub_10012369C(v2, v3, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23] + v0[59];
    v9 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v9 = 136315394;
    if (*(v8 + 8))
    {
      v10 = *(v0[23] + v0[59]);
      v11 = *(v8 + 8);
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    v61 = v0[45];
    v63 = v0[57];
    v18 = v0[41];
    v17 = v0[42];
    v19 = v0[37];

    v20 = sub_100141FE4(v10, v11, &v65);

    *(v9 + 4) = v20;
    *(v9 + 12) = 2080;
    v21 = *v19;
    v22 = v19[1];

    sub_100123840(v19, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v23 = sub_100141FE4(v21, v22, &v65);

    *(v9 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate credentialIdentifierForSelectedPass %s selectedProposalData.proposal.credentialIdentifier %s", v9, 0x16u);
    swift_arrayDestroy();

    v63(v61, v18);
  }

  else
  {
    v12 = v0[57];
    v13 = v0[45];
    v14 = v0[41];
    v15 = v0[42];
    v16 = v0[37];

    sub_100123840(v16, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v12(v13, v14);
  }

  v24 = v0[61];
  v25 = v0[58];
  v26 = v0[40];
  v27 = v0[33];
  v28 = v0[23];
  v29 = type metadata accessor for DigitalPresentmentUIResult();
  sub_10012369C(v26, v27 + *(v29 + 20), type metadata accessor for DigitalPresentmentEligibleProposalData);
  *v27 = v24;
  v30 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  swift_storeEnumTagMultiPayload();
  (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
  v31 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  v32 = v24;
  sub_1000B2764(v27, v28 + v31, &qword_10083B028, &qword_1006D9150);
  swift_endAccess();
  [v25 setStatus:0];

  sub_100123840(v26, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v64 = v0[58];
  v34 = v0[55];
  v33 = v0[56];
  v35 = v0[53];
  v36 = v0[54];
  v37 = v0[51];
  v38 = v0[52];
  v39 = v0[49];
  v40 = v0[48];
  v44 = v0[50];
  v45 = v0[47];
  v46 = v0[46];
  v47 = v0[45];
  v48 = v0[44];
  v49 = v0[43];
  v50 = v0[40];
  v51 = v0[39];
  v52 = v0[38];
  v53 = v0[37];
  v54 = v0[36];
  v55 = v0[35];
  v56 = v0[33];
  v57 = v0[32];
  v58 = v0[29];
  v59 = v0[26];
  v60 = v0[25];
  v41 = v0[23];
  v62 = v0[24];
  sub_10012248C();
  (*(v39 + 8))(v37, v40);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v35 + 8))(v36, v38);

  v42 = v0[1];

  return v42(v64);
}

uint64_t sub_100125490()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1001276A4;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100125628;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100125628()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  swift_getErrorValue();
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  Error.dipErrorCode.getter();
  v8 = *(v3 + 48);
  if (v8(v4, 1, v2) != 1)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = *(v0 + 200);
    sub_10000BBC4(*(v0 + 208), v11, &qword_10083B020, &unk_1006D8ED0);
    v12 = *(v10 + 88);
    v13 = v12(v11, v9);
    v14 = enum case for DIPError.Code.topekaMerchantNotFound(_:);
    if (v13 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v13 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v13 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v13 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v13 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v13 == enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:) || v13 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v13 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v13 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v13 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v13 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v13 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v13 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v13 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v13 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v13 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v13 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
    {
      v39 = *(v0 + 504);
      v40 = *(v0 + 464);
      v41 = *(v0 + 240);
      v42 = *(v0 + 192);
      sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
      [v40 setStatus:1];
      swift_getErrorValue();
      v44 = *(v0 + 88);
      v43 = *(v0 + 96);
      v45 = *(v0 + 104);
      Error.dipErrorCode.getter();
      v46 = v8(v42, 1, v41);
      v47 = *(v0 + 192);
      if (v46 == 1)
      {
        v48 = *(v0 + 504);

        sub_10000BE18(v47, &qword_10083B020, &unk_1006D8ED0);
      }

      else
      {
        v60 = v12(*(v0 + 192), *(v0 + 240));
        v61 = *(v0 + 504);
        if (v60 == v14)
        {
          v62 = *(v0 + 464);
          (*(*(v0 + 248) + 8))(*(v0 + 192), *(v0 + 240));
          static DigitalPresentmentLocalizedString.appNotSupportedTitle.getter();
          v63 = String._bridgeToObjectiveC()();

          [v62 setLocalizedErrorMessageOverride:v63];
        }

        else
        {
          v64 = *(v0 + 240);
          v65 = *(v0 + 248);
          v66 = *(v0 + 192);
          v67 = *(v0 + 504);

          (*(v65 + 8))(v66, v64);
        }
      }

      goto LABEL_32;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 200), *(v0 + 240));
  }

  v15 = (*(v0 + 184) + *(v0 + 472));
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  v16 = v15[1];
  if (v16)
  {
    v17 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v17 + 16))
    {
      v18 = *v15;

      v19 = sub_10003ADCC(v18, v16);
      if (v20)
      {
        v21 = *(v0 + 344);
        v23 = *(v0 + 280);
        v22 = *(v0 + 288);
        sub_10012369C(*(v17 + 56) + *(*(v0 + 272) + 72) * v19, v23, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v23, v22, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate shouldRetry invoked.", v26, 2u);
        }

        v27 = *(v0 + 456);
        v29 = *(v0 + 336);
        v28 = *(v0 + 344);
        v30 = *(v0 + 328);
        v31 = *(v0 + 184);

        v27(v28, v30);
        v32 = *(v31 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v33 = *(v31 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v31 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v32);
        v34 = *(v33 + 8);
        v86 = (v34 + *v34);
        v35 = v34[1];
        v36 = swift_task_alloc();
        *(v0 + 520) = v36;
        *v36 = v0;
        v36[1] = sub_100125DD8;
        v37 = *(v0 + 288);

        return v86(v37, v32, v33);
      }
    }
  }

  v49 = *(v0 + 504);
  [*(v0 + 464) setStatus:1000];

LABEL_32:
  v87 = *(v0 + 464);
  v51 = *(v0 + 440);
  v50 = *(v0 + 448);
  v52 = *(v0 + 424);
  v53 = *(v0 + 432);
  v54 = *(v0 + 408);
  v55 = *(v0 + 416);
  v56 = *(v0 + 392);
  v57 = *(v0 + 384);
  v68 = *(v0 + 400);
  v69 = *(v0 + 376);
  v70 = *(v0 + 368);
  v71 = *(v0 + 360);
  v72 = *(v0 + 352);
  v73 = *(v0 + 344);
  v74 = *(v0 + 320);
  v75 = *(v0 + 312);
  v76 = *(v0 + 304);
  v77 = *(v0 + 296);
  v78 = *(v0 + 288);
  v79 = *(v0 + 280);
  v80 = *(v0 + 264);
  v81 = *(v0 + 256);
  v82 = *(v0 + 232);
  v83 = *(v0 + 208);
  v84 = *(v0 + 200);
  v58 = *(v0 + 184);
  v85 = *(v0 + 192);
  sub_10012248C();
  (*(v56 + 8))(v54, v57);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v52 + 8))(v53, v55);

  v59 = *(v0 + 8);

  return v59(v87);
}

uint64_t sub_100125DD8()
{
  v1 = *(*v0 + 520);
  v3 = *v0;

  return _swift_task_switch(sub_100125ED4, 0, 0);
}

uint64_t sub_100125ED4()
{
  sub_100123840(*(v0 + 288), type metadata accessor for DigitalPresentmentEligibleProposalData);
  v1 = *(v0 + 504);
  [*(v0 + 464) setStatus:1000];

  v31 = *(v0 + 464);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);
  v7 = *(v0 + 416);
  v8 = *(v0 + 392);
  v9 = *(v0 + 384);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 368);
  v16 = *(v0 + 360);
  v17 = *(v0 + 352);
  v18 = *(v0 + 344);
  v19 = *(v0 + 320);
  v20 = *(v0 + 312);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 264);
  v26 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v10 = *(v0 + 184);
  v30 = *(v0 + 192);
  sub_10012248C();
  (*(v8 + 8))(v6, v9);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11(v31);
}

uint64_t sub_1001260F0()
{
  v125 = v0;
  sub_100123840(*(v0 + 320), type metadata accessor for DigitalPresentmentEligibleProposalData);
  v1 = *(v0 + 496);
  *(v0 + 504) = v1;
  v2 = *(v0 + 352);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v119 = *(v0 + 352);
    v121 = *(v0 + 456);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v124 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v124);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "DigitalPresentmentUIPresenter: paymentAuthorizationCoordinator didAuthorizeContextWithHandler buildResponse failed with error: %s.", v7, 0xCu);
    sub_10000BB78(v8);

    v121(v119, v6);
  }

  else
  {
    v15 = *(v0 + 456);
    v16 = *(v0 + 352);
    v17 = *(v0 + 328);
    v18 = *(v0 + 336);

    v15(v16, v17);
  }

  v19 = *(v0 + 400);
  v20 = *(v0 + 408);
  v21 = *(v0 + 384);
  v22 = *(v0 + 392);
  v23 = *(v0 + 264);
  v24 = *(v0 + 184);
  *v23 = v1;
  v25 = sub_100007224(&unk_10083B010, &qword_1006D9128);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
  v26 = OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_result;
  swift_beginAccess();
  swift_errorRetain();
  sub_1000B2764(v23, v24 + v26, &qword_10083B028, &qword_1006D9150);
  swift_endAccess();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v28 = v27;
  (*(v22 + 8))(v19, v21);
  if (v28 < 1.0)
  {
    v29 = *(v0 + 232);
    v30 = static Duration.seconds(_:)();
    v32 = v31;
    static Clock<>.continuous.getter();
    v33 = swift_task_alloc();
    *(v0 + 512) = v33;
    *v33 = v0;
    v33[1] = sub_100125490;
    v34 = *(v0 + 232);

    return (sub_1003DA1A4)(v30, v32, 0, 0, 1);
  }

  v36 = *(v0 + 504);
  v37 = *(v0 + 240);
  v38 = *(v0 + 248);
  v39 = *(v0 + 208);
  swift_getErrorValue();
  v41 = *(v0 + 64);
  v40 = *(v0 + 72);
  v42 = *(v0 + 80);
  Error.dipErrorCode.getter();
  v43 = *(v38 + 48);
  if (v43(v39, 1, v37) != 1)
  {
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    v46 = *(v0 + 200);
    sub_10000BBC4(*(v0 + 208), v46, &qword_10083B020, &unk_1006D8ED0);
    v47 = *(v45 + 88);
    v48 = v47(v46, v44);
    v49 = enum case for DIPError.Code.topekaMerchantNotFound(_:);
    if (v48 == enum case for DIPError.Code.topekaMerchantNotFound(_:) || v48 == enum case for DIPError.Code.unexpectedDaemonState(_:) || v48 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v48 == enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:) || v48 == enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:) || v48 == enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:) || v48 == enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:) || v48 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v48 == enum case for DIPError.Code.webPresentmentPassMissing(_:) || v48 == enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:) || v48 == enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:) || v48 == enum case for DIPError.Code.webPresentmentInvalidCertificate(_:) || v48 == enum case for DIPError.Code.webPresentmentMissingHost(_:) || v48 == enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:) || v48 == enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:) || v48 == enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:) || v48 == enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:))
    {
      v73 = *(v0 + 504);
      v74 = *(v0 + 464);
      v75 = *(v0 + 240);
      v76 = *(v0 + 192);
      sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
      [v74 setStatus:1];
      swift_getErrorValue();
      v78 = *(v0 + 88);
      v77 = *(v0 + 96);
      v79 = *(v0 + 104);
      Error.dipErrorCode.getter();
      v80 = v43(v76, 1, v75);
      v81 = *(v0 + 192);
      if (v80 == 1)
      {
        v82 = *(v0 + 504);

        sub_10000BE18(v81, &qword_10083B020, &unk_1006D8ED0);
      }

      else
      {
        v94 = v47(*(v0 + 192), *(v0 + 240));
        v95 = *(v0 + 504);
        if (v94 == v49)
        {
          v96 = *(v0 + 464);
          (*(*(v0 + 248) + 8))(*(v0 + 192), *(v0 + 240));
          static DigitalPresentmentLocalizedString.appNotSupportedTitle.getter();
          v97 = String._bridgeToObjectiveC()();

          [v96 setLocalizedErrorMessageOverride:v97];
        }

        else
        {
          v98 = *(v0 + 240);
          v99 = *(v0 + 248);
          v100 = *(v0 + 192);
          v101 = *(v0 + 504);

          (*(v99 + 8))(v100, v98);
        }
      }

      goto LABEL_39;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 200), *(v0 + 240));
  }

  v50 = (*(v0 + 184) + *(v0 + 472));
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  v51 = v50[1];
  if (v51)
  {
    v52 = *(*(v0 + 184) + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_eligibleProposalDataDictionary);
    if (*(v52 + 16))
    {
      v53 = *v50;

      v54 = sub_10003ADCC(v53, v51);
      if (v55)
      {
        v56 = *(v0 + 344);
        v58 = *(v0 + 280);
        v57 = *(v0 + 288);
        sub_10012369C(*(v52 + 56) + *(*(v0 + 272) + 72) * v54, v58, type metadata accessor for DigitalPresentmentEligibleProposalData);

        sub_1001237D8(v58, v57, type metadata accessor for DigitalPresentmentEligibleProposalData);
        defaultLogger()();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate shouldRetry invoked.", v61, 2u);
        }

        v62 = *(v0 + 456);
        v64 = *(v0 + 336);
        v63 = *(v0 + 344);
        v65 = *(v0 + 328);
        v66 = *(v0 + 184);

        v62(v63, v65);
        v67 = *(v66 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 24);
        v68 = *(v66 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder + 32);
        sub_10000BA08((v66 + OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_responseBuilder), v67);
        v69 = *(v68 + 8);
        v122 = (v69 + *v69);
        v70 = v69[1];
        v71 = swift_task_alloc();
        *(v0 + 520) = v71;
        *v71 = v0;
        v71[1] = sub_100125DD8;
        v72 = *(v0 + 288);

        return v122(v72, v67, v68);
      }
    }
  }

  v83 = *(v0 + 504);
  [*(v0 + 464) setStatus:1000];

LABEL_39:
  v123 = *(v0 + 464);
  v85 = *(v0 + 440);
  v84 = *(v0 + 448);
  v86 = *(v0 + 424);
  v87 = *(v0 + 432);
  v88 = *(v0 + 408);
  v89 = *(v0 + 416);
  v90 = *(v0 + 392);
  v91 = *(v0 + 384);
  v102 = *(v0 + 400);
  v103 = *(v0 + 376);
  v104 = *(v0 + 368);
  v105 = *(v0 + 360);
  v106 = *(v0 + 352);
  v107 = *(v0 + 344);
  v108 = *(v0 + 320);
  v109 = *(v0 + 312);
  v110 = *(v0 + 304);
  v111 = *(v0 + 296);
  v112 = *(v0 + 288);
  v113 = *(v0 + 280);
  v114 = *(v0 + 264);
  v115 = *(v0 + 256);
  v116 = *(v0 + 232);
  v117 = *(v0 + 208);
  v92 = *(v0 + 184);
  v118 = *(v0 + 200);
  v120 = *(v0 + 192);
  sub_10012248C();
  (*(v90 + 8))(v88, v91);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v86 + 8))(v87, v89);

  v93 = *(v0 + 8);

  return v93(v123);
}

uint64_t sub_100126BCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_100121368(v2, v3, v5, v4);
}

uint64_t sub_100126C8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_100500C6C(a1, v4, v5, v7);
}

uint64_t sub_100126D58()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100126E18, 0, 0);
}

uint64_t sub_100126E18()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate paymentAuthorizationCoordinator didAuthorizePayment invoked.", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_100126F60;
  v9 = v0[2];

  return sub_100123A60();
}

uint64_t sub_100126F60(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1001271AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10012726C, 0, 0);
}

uint64_t sub_10012726C()
{
  v32 = v0;
  v1 = [*(v0 + 16) subCredential];
  if (v1 && (v2 = v1, v3 = [v1 identifier], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = &v8[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass];
  v10 = *&v8[OBJC_IVAR____TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate_credentialIdentifierForSelectedPass + 8];
  *v9 = v4;
  v9[1] = v6;

  defaultLogger()();
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    if (v9[1])
    {
      v16 = *v9;
      v17 = v9[1];
    }

    else
    {
      v17 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = *(v0 + 32);

    v24 = sub_100141FE4(v16, v17, &v31);

    *(v14 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate: paymentAuthorizationCoordinator didSelectPaymentMethod credential was selected: %s", v14, 0xCu);
    sub_10000BB78(v15);

    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);

    (*(v19 + 8))(v18, v20);
  }

  v25 = *(v0 + 48);
  v26 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
  sub_100127508();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v28 = [v26 initWithErrors:0 paymentSummaryItems:isa];

  v29 = *(v0 + 8);

  return v29(v28);
}

unint64_t sub_100127508()
{
  result = qword_10083B040;
  if (!qword_10083B040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083B040);
  }

  return result;
}

uint64_t sub_100127554()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001275A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_100120F54(v2, v3, v5, v4);
}

uint64_t sub_100127664()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001276C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for PreferencesURLOpener();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for AlertPresenter();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = type metadata accessor for AlertPresentationOutcome();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v14 = type metadata accessor for AlertConfiguration();
  v1[16] = v14;
  v15 = *(v14 - 8);
  v1[17] = v15;
  v16 = *(v15 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001278FC, 0, 0);
}

uint64_t sub_1001278FC()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[2];
  v4 = v3[4];
  sub_10000BA08(v3, v3[3]);
  dispatch thunk of DeviceInformationProviding.isFaceIDDevice.getter();
  static AlertConfiguration.digitalPresentmentAlertDisplayConfiguration(isFaceIDDevice:)();
  AlertPresenter.init()();
  v5 = async function pointer to AlertPresenter.present(with:)[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1001279E8;
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[11];

  return AlertPresenter.present(with:)(v8, v7);
}

uint64_t sub_1001279E8()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100127E88;
  }

  else
  {
    v6 = sub_100127B58;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100127B58()
{
  v1 = v0[14];
  v2 = v0 + 14;
  v3 = v0[13];
  v5 = v0 + 12;
  v4 = v0[12];
  (*(v3 + 16))(v1, v0[15], v4);
  v6 = (*(v3 + 88))(v1, v4);
  if (v6 == enum case for AlertPresentationOutcome.defaultButtonTapped(_:))
  {
    v7 = v0[17];
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    PreferencesURLOpener.init()();
    PreferencesURLOpener.openFaceIDAndPasscodeSettings()();
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v8, v9);
    v14 = *(v7 + 8);
    v2 = v0 + 18;
    v5 = v0 + 16;
  }

  else
  {
    if (v6 == enum case for AlertPresentationOutcome.alternateButtonTapped(_:))
    {
      v15 = v0[15];
      v16 = v0[12];
      v17 = v0[13];
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.digitalPresentmentUserCancelled(_:), v0[3]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v17 + 8))(v15, v16);
      v18 = v0[15];
      v19 = v0[14];
      v20 = v0[11];
      v21 = v0[8];
      v22 = v0[5];
      (*(v0[17] + 8))(v0[18], v0[16]);

      v23 = v0[1];
      goto LABEL_7;
    }

    v25 = v0[17];
    v24 = v0[18];
    v26 = v0[16];
    v14 = *(v0[13] + 8);
    v14(v0[15], v0[12]);
    (*(v25 + 8))(v24, v26);
  }

  v27 = *v2;
  v28 = *v5;
  v29 = v0[18];
  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[11];
  v33 = v0[8];
  v34 = v0[5];
  v14(v27, v28);

  v23 = v0[1];
LABEL_7:

  return v23();
}

uint64_t sub_100127E88()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v7 = v0[1];

  return v7();
}

__n128 sub_100127F8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100127FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100127FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100128044()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = BundleRecord.appStoreItemIdentifier.getter();
  if (v9)
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v7 = v5;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "adamIdentifier of the app is 0.", v12, 2u);
    v7 = v5;
    goto LABEL_6;
  }

  defaultLogger()();
  v10 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v10, v13, "adamIdentifier of the calling app is %llu.", v14, 0xCu);
LABEL_6:
  }

LABEL_8:

  (*(v1 + 8))(v7, v0);
  return v8;
}

uint64_t sub_100128240@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for Logger();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  v4 = __chkstk_darwin(v2);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - v7;
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v11 = type metadata accessor for BundleRecordFetcher();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BundleRecord();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleRecordFetcher.init()();
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v24 = v1[5];
  BundleRecordFetcher.record(withAuditToken:)();
  v25 = v10;
  v56 = v17;
  v57 = v16;
  (*(v12 + 8))(v15, v11);
  v26 = BundleRecord.applicationIdentifier.getter();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v30 = sub_100128044();
    LODWORD(v32) = v31;
    v33 = BundleRecord.localizedName.getter();
    v35 = v34;
    defaultLogger()();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v55 = v37;
    v38 = os_log_type_enabled(v36, v37);
    v39 = v56;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v52 = v36;
      v41 = v40;
      v42 = swift_slowAlloc();
      v54 = v32;
      v53 = v20;
      v43 = v42;
      v61 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_100141FE4(v33, v35, &v61);
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v52, v55, "App name of the calling app is %s", v41, 0xCu);
      sub_10000BB78(v43);

      (*(v59 + 8))(v25, v60);
      LOBYTE(v32) = v54;
      result = (*(v39 + 8))(v53, v57);
    }

    else
    {

      (*(v59 + 8))(v25, v60);
      result = (*(v39 + 8))(v20, v57);
    }

    v50 = v32 & 1;
  }

  else
  {
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v56;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "The calling process' application identifier is nil, this is not supported.", v49, 2u);
    }

    (*(v59 + 8))(v8, v60);
    result = (*(v48 + 8))(v20, v57);
    v28 = 0;
    v29 = 0;
    v33 = 0;
    v35 = 0;
    v30 = 0;
    v50 = 0;
  }

  v51 = v58;
  *v58 = v28;
  v51[1] = v29;
  v51[2] = v33;
  v51[3] = v35;
  v51[4] = v30;
  *(v51 + 40) = v50;
  return result;
}

uint64_t sub_100128840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100128888(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

Swift::Int sub_1001288F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001289B4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100128A60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100128B1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100129224(*a1);
  *a2 = result;
  return result;
}

void sub_100128B4C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64692D6F746F6870;
  if (*v1 != 2)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
  }

  v4 = 0xD000000000000012;
  v5 = 0x80000001006F9C80;
  if (*v1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x80000001006F9CA0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100128BC8()
{
  v1 = 0x64692D6F746F6870;
  if (*v0 != 2)
  {
    v1 = 1701736302;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100128C40(char a1)
{
  result = 0x616E2D6E65766967;
  switch(a1)
  {
    case 1:
      result = 0x6E2D796C696D6166;
      break;
    case 2:
      result = 7890291;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 0x73736572646461;
      break;
    case 5:
      result = 0x746867696568;
      break;
    case 6:
      result = 0x746867696577;
      break;
    case 7:
      result = 0x6F6C6F632D657965;
      break;
    case 8:
      result = 0x6C6F632D72696168;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x2D6E617265746576;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x746E656D75636F64;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 6645601;
      break;
    case 18:
      result = 0x2D666F2D65746164;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100128EDC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100128C40(*a1);
  v5 = v4;
  if (v3 == sub_100128C40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100128F64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100128C40(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}
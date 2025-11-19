uint64_t sub_100260364(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1000BC4D4(&qword_10169BA98, &qword_1013956A0);
  if (swift_dynamicCast())
  {
    sub_10000A748(__src, &v41);
    sub_1000035D0(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100007BAC(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000B3A8(__src, &qword_10169BAA0, &qword_1013956A8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_100267864(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100268D94(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_100267BDC(sub_10026954C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1010DF3C0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1010DF3C0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100006654(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100006654(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100017D5C(*&__src[0], *(&__src[0] + 1));

  sub_100016590(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100260884(uint64_t a1, uint64_t a2)
{
  v10[3] = &type metadata for UnsafeMutableRawBufferPointer;
  v10[4] = &protocol witness table for UnsafeMutableRawBufferPointer;
  v10[0] = a1;
  v10[1] = a2;
  v2 = sub_1000035D0(v10, &type metadata for UnsafeMutableRawBufferPointer);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_100268BDC(*v2, v4);
    }

    else
    {
      v7 = type metadata accessor for __DataStorage();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  sub_100007BAC(v10);
  return v3;
}

uint64_t sub_100260984(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000035D0(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_100268BDC(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100268C94(v3, v4);
    }

    else
    {
      v6 = sub_100268D10(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100007BAC(v8);
  return v6;
}

uint64_t sub_100260A40()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A7D8);
  sub_1000076D4(v0, qword_10177A7D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100260AC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000035;
  v3 = *a1;
  v4 = "vertisementcache.access";
  if (v3 == 1)
  {
    v5 = 0xD000000000000036;
  }

  else
  {
    v5 = 0xD000000000000035;
  }

  if (v3 == 1)
  {
    v6 = "vertisementcache.access";
  }

  else
  {
    v6 = "vertisementcache.write";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000037;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ss";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000036;
  }

  else
  {
    v4 = "vertisementcache.write";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000037;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ss";
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

Swift::Int sub_100260B98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100260C30()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100260CB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100260D48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100268F10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100260D78()
{
  v44 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error inserting observedAdvertisement: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    v3 = *(v0 + 96);
  }

  else
  {
  }

  v10 = *(v0 + 80);

  sub_100018CA0(v10, type metadata accessor for ObservedAdvertisement);
  v11 = *(v0 + 104);
  if (v11 == *(v0 + 88))
  {
LABEL_5:
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 48);
    v15 = *(v0 + 32);
    (*(v0 + 24))(0);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    while (1)
    {
      v18 = *(v0 + 16);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v19 = *(v18 + 8 * v11 + 32);
      }

      *(v0 + 96) = v19;
      *(v0 + 104) = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v0 + 56);
      v21 = *(v0 + 64);
      v22 = *(v0 + 48);
      v10 = v19;
      sub_1000166F0(v10, 1, v22);
      if ((*(v21 + 48))(v22, 1, v20) != 1)
      {
        break;
      }

      sub_10000B3A8(*(v0 + 48), &unk_10169BB50, &unk_101395760);
      if (qword_1016944F0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177A7D8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Error inserting observedAdvertisement: could not convert to ObservedAdvertisement.", v26, 2u);
      }

      v11 = *(v0 + 104);
      if (v11 == *(v0 + 88))
      {
        goto LABEL_5;
      }
    }

    sub_10001854C(*(v0 + 48), *(v0 + 80), type metadata accessor for ObservedAdvertisement);
    if (qword_1016944F0 == -1)
    {
      goto LABEL_21;
    }

LABEL_29:
    swift_once();
LABEL_21:
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = type metadata accessor for Logger();
    *(v0 + 112) = sub_1000076D4(v29, qword_10177A7D8);
    sub_10001861C(v27, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 72);
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      v36 = sub_100018680(v35);
      v38 = v37;
      sub_100018CA0(v33, type metadata accessor for ObservedAdvertisement);
      v39 = sub_1000136BC(v36, v38, &v43);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "observedAdvertisement: %s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    else
    {

      sub_100018CA0(v33, type metadata accessor for ObservedAdvertisement);
    }

    [v10 refreshGeotag];
    [v10 observationValue];
    v40 = swift_task_alloc();
    *(v0 + 120) = v40;
    *v40 = v0;
    v40[1] = sub_10001DDBC;
    v41 = *(v0 + 80);
    v42 = *(v0 + 40);

    return sub_100019FF0(v41);
  }
}

void sub_100261434(uint64_t a1, char a2, void (*a3)(void))
{
  static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_101385D80;
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v7[7] = &type metadata for String;
    v7[8] = sub_100008C00();
    v7[4] = v8;
    v7[5] = v10;
    os_log(_:dso:log:_:_:)();

    v11 = [objc_allocWithZone(SPSearchResultMarker) init];
    v12 = objc_allocWithZone(SPBeaconPayloadCacheSearchResult);
    swift_errorRetain();
    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = _convertErrorToNSError(_:)();
    sub_1001DB7B8(a1, 1);
    v15 = [v12 initWithFileURLs:isa searchResultMarker:v11 error:v14];
  }

  else
  {
    v16 = *(a1 + 16);
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = v16;
    os_log(_:dso:log:_:_:)();

    v17 = [objc_allocWithZone(SPSearchResultMarker) init];
    v18 = objc_allocWithZone(SPBeaconPayloadCacheSearchResult);
    type metadata accessor for URL();
    v19 = Array._bridgeToObjectiveC()().super.isa;
    v15 = [v18 initWithFileURLs:v19 searchResultMarker:v17 error:0];
  }

  v20 = v15;
  a3();
}

uint64_t sub_100261DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100261E40;

  return daemon.getter();
}

uint64_t sub_100261E40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100267678(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100267678(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10026201C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10026201C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 56) = a1;

  v6 = *(v3 + 40);
  if (v1)
  {

    v7 = sub_100262620;
  }

  else
  {

    v7 = sub_10026216C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10026216C()
{
  v1 = *(v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100262208;
  v3 = *(v0 + 56);

  return sub_1010CCD2C();
}

uint64_t sub_100262208()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10026245C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100262324;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100262324()
{
  v1 = v0[7];
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A7D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleared anonymous observations due command.", v5, 2u);
  }

  v7 = v0[2];
  v6 = v0[3];

  v7(0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10026245C()
{
  v1 = v0[7];

  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A7D8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to clear observations due to command, error: %@.", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[9];
  v12 = v0[2];
  v11 = v0[3];

  swift_errorRetain();
  v12(v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100262620()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared anonymous observations due command.", v4, 2u);
  }

  v5 = v0[2];
  v6 = v0[3];

  v5(0);
  v7 = v0[1];

  return v7();
}

id sub_1002628AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisementCacheTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100262918()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = type metadata accessor for AdvertisementCacheTrampoline();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation];
    *v5 = v0;
    *(v5 + 1) = &off_101614CB0;
    *(v5 + 2) = &off_101614C78;
    *(v5 + 3) = &off_101614C38;
    *(v5 + 4) = &off_10163ACE8;
    *(v5 + 5) = &off_101614CC0;
    v10.receiver = v4;
    v10.super_class = v3;

    v6 = objc_msgSendSuper2(&v10, "init");
    v7 = *(v0 + 144);
    *(v0 + 144) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1002629E4()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for MachServiceName() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for XPCServiceDescription();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100262AD0, v0, 0);
}

uint64_t sub_100262AD0()
{
  v2 = v0[2];
  v1 = v0[3];
  MachServiceName.init(_:)();
  sub_100262918();
  if (qword_1016944F8 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  v6 = qword_10169B870;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v7 = *(v5 + 136);
  XPCSessionManager.register(service:)();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_100262C30;
  v9 = v0[2];

  return sub_100263258();
}

uint64_t sub_100262C30()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100262D40, v2, 0);
}

uint64_t sub_100262D40()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100262E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 128);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100269A0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101614F78;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100267678(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

void sub_10026311C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  sub_1008DC37C();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1008CE048(0, 0, v5, &unk_101395720, v7);

  sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);
  Transaction.capture()();
}

uint64_t sub_100263258()
{
  *(v1 + 88) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v1;
  v3[1] = sub_1002632EC;

  return daemon.getter();
}

uint64_t sub_1002632EC(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = a1;

  type metadata accessor for Daemon();
  sub_100267678(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100263444, v5, v4);
}

uint64_t sub_100263444()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[14] = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_1002634BC, v2, 0);
}

uint64_t sub_1002634BC()
{
  v1 = v0[11];
  v2 = swift_allocObject();
  v0[15] = v2;
  swift_weakInit();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v0[16] = v4;
  v6 = swift_allocObject();
  v0[17] = v6;
  *(v6 + 16) = sub_100269894;
  *(v6 + 24) = v2;
  v7 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v11 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_100263618;
  v9 = v0[14];

  return v11(v3, v5, &unk_101395708, v6);
}

uint64_t sub_100263618(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_100263770, v5, 0);
}

uint64_t sub_100263770()
{
  v1 = v0[15];
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = sub_100269894;
  *(v2 + 24) = v1;
  v3 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v7 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_100263890;
  v5 = v0[14];

  return v7(0xD000000000000019, 0x800000010134EE90, &unk_101395718, v2);
}

uint64_t sub_100263890(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002639C4, v4, 0);
}

uint64_t sub_1002639C4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013953A0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  swift_beginAccess();

  sub_100398418(inited);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100263AD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    type metadata accessor for Transaction();
    return static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_100263B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100263B7C, 0, 0);
}

uint64_t sub_100263B7C()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100263BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10026AE2C, 0, 0);
}

uint64_t sub_100263C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100263CB4, a3, 0);
}

uint64_t sub_100263CB4()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_darwinListeners;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v26 = *(v1 + v2);
    }

    v27 = *(v1 + v2);
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = v27;
    v5 = result;
    if (!result)
    {
LABEL_18:
      v24 = *(v0 + 112);
      v23 = *(v0 + 120);

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 >= 1)
  {
    v29 = **(v0 + 96);
    v28 = v4 & 0xC000000000000001;
    v6 = v4;

    v7 = v6;
    v8 = 0;
    v30 = v5;
    v31 = v6;
    while (1)
    {
      if (v28)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v8 + 32);
      }

      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v13, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v11;
      sub_1000D2A70(v13, v12, &qword_101698C00, &qword_10138B570);
      LODWORD(v12) = (*(v15 + 48))(v12, 1, v14);

      v18 = *(v0 + 112);
      if (v12 == 1)
      {
        sub_10000B3A8(*(v0 + 112), &qword_101698C00, &qword_10138B570);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_14:
          v20 = 0;
          v22 = 0;
          goto LABEL_15;
        }
      }

      v19 = v16[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_15:

      if (v22 | v20)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      v10 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v9;
      *(v0 + 88) = v29;
      swift_task_create();

      sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
      v7 = v31;
      if (v30 == v8)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100264040()
{
  v1 = async function pointer to DarwinNotification.Listener.run()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100014744;

  return DarwinNotification.Listener.run()();
}

id sub_1002640D4()
{
  result = sub_1002640F4();
  qword_10169B870 = result;
  return result;
}

id sub_1002640F4()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPAdvertisementCacheXPCProtocol];
  v1 = sub_100A47234();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  v5 = sub_100008BB8(0, &qword_10169BAF0, NSArray_ptr);
  *(v4 + 32) = v5;
  *(v4 + 40) = sub_100008BB8(0, &qword_10169BAF8, SPAdvertisement_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v6 = sub_100A47234();
  v7 = *(v6 + 52);
  v8 = (*(v6 + 48) + 7) & 0x1FFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 32) = sub_100008BB8(0, &unk_10169BB00, SPAdvertisementCacheSearchCriteria_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v10 = sub_100A47234();
  v11 = *(v10 + 52);
  v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  *(v13 + 32) = v5;
  *(v13 + 40) = sub_100008BB8(0, &qword_101698D10, NSUUID_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v14 = sub_100A47234();
  v15 = *(v14 + 52);
  v16 = (*(v14 + 48) + 7) & 0x1FFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  *(v17 + 32) = v5;
  *(v17 + 40) = sub_100008BB8(0, &qword_10169BB10, SPBeaconPayload_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v18 = sub_100A47234();
  v19 = *(v18 + 52);
  v20 = (*(v18 + 48) + 7) & 0x1FFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  *(v21 + 32) = sub_100008BB8(0, &qword_10169BB18, SPBeaconPayloadCacheSearchCriteria_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v22 = sub_100A47234();
  v23 = *(v22 + 52);
  v24 = (*(v22 + 48) + 7) & 0x1FFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10138BBE0;
  *(v25 + 32) = v5;
  *(v25 + 40) = sub_100008BB8(0, &unk_10169BB20, NSURL_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t sub_100264400(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  *(v3 + 96) = sub_100008BB8(0, &qword_10169BAD0, NSXPCConnection_ptr);
  *(v3 + 104) = sub_10026982C();
  *(v3 + 72) = a1;

  v6 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100017B24();
  return NSXPCConnection.hasEntitlement<A>(_:)() & 1;
}

uint64_t sub_10026454C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_transactionManager;
  v4 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_lastAdvertisementCache);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_darwinListeners);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002645F4()
{
  sub_10026454C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AdvertisementCacheService()
{
  result = qword_10169B8D8;
  if (!qword_10169B8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100264674()
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

void *sub_100264750()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000019;
  v0[15] = 0x80000001013953F0;
  v10 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v15[1] = "SaveObservedAdvertisment";
  v15[2] = v10;
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v15[3] = _swiftEmptyArrayStorage;
  sub_100267678(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for XPCSessionManager();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[17] = XPCSessionManager.init(name:)();
  v0[18] = 0;
  PressuredExitTransactionManager.init()();
  *(v0 + OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_lastAdvertisementCache) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC12searchpartyd25AdvertisementCacheService_darwinListeners) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_100264A58(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AdvertisementCacheService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100264B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AdvertisementCacheService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100264BCC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AdvertisementCacheService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100264C78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002629E4();
}

uint64_t sub_100264D24()
{
  v1 = *(v0 + 16);
  sub_100267678(&unk_10169BA10, type metadata accessor for AdvertisementCacheService);
  v2 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100264E2C;
  v4 = *(v0 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100264E2C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(Database.await(state:), v6, 0);
  }
}

uint64_t sub_100264F60()
{
  v1 = *v0;
  type metadata accessor for AdvertisementCacheService();
  sub_100267678(&qword_10169BA20, type metadata accessor for AdvertisementCacheService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100264FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for UUID();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[20] = v12;
  v13 = *(v12 - 8);
  v8[21] = v13;
  v14 = *(v13 + 64) + 15;
  v8[22] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v16 = type metadata accessor for CachedHistoricalLocation(0);
  v8[24] = v16;
  v17 = *(v16 - 8);
  v8[25] = v17;
  v18 = *(v17 + 64) + 15;
  v8[26] = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_10169BA30, &unk_101395620) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v20 = type metadata accessor for TimeBasedKey();
  v8[28] = v20;
  v21 = *(v20 - 8);
  v8[29] = v21;
  v22 = *(v21 + 64) + 15;
  v8[30] = swift_task_alloc();
  v23 = type metadata accessor for URL();
  v8[31] = v23;
  v24 = *(v23 - 8);
  v8[32] = v24;
  v25 = *(v24 + 64) + 15;
  v8[33] = swift_task_alloc();
  v26 = async function pointer to daemon.getter[1];
  v27 = swift_task_alloc();
  v8[34] = v27;
  *v27 = v8;
  v27[1] = sub_1002652A4;

  return daemon.getter();
}

uint64_t sub_1002652A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v12 = *v1;
  v3[35] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[36] = v6;
  v7 = type metadata accessor for Daemon();
  v3[37] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100267678(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100267678(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100265484;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100265484(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v10 = *v2;
  v4[38] = a1;
  v4[39] = v1;

  if (v1)
  {
    v6 = v4[35];

    v7 = sub_100266154;
    v8 = 0;
  }

  else
  {
    v7 = sub_1002655C0;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1002655C0()
{
  v1 = v0[38];
  v2 = v0[39];
  sub_10001B108();
  v0[40] = v3;
  v0[41] = v2;
  v4 = v0[37];
  v5 = v0[35];
  if (v2)
  {

    sub_100267678(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_1002660E0;
  }

  else
  {
    sub_100267678(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1002656E8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1002656E8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);

  return _swift_task_switch(sub_10026575C, 0, 0);
}

uint64_t sub_10026575C()
{
  v1 = v0[33];
  (*(v0[32] + 16))(v1, v0[14], v0[31]);
  v2 = type metadata accessor for BeaconPayloadFile(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  if (!sub_10047815C(v1))
  {
    goto LABEL_6;
  }

  v5 = v0[40];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[27];
  v10 = v0[15];
  v9 = v0[16];
  v11 = sub_100A2C460();
  (v11)(v10, v9);

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v12 = v0[27];

    sub_10000B3A8(v12, &qword_10169BA30, &unk_101395620);
LABEL_6:
    v18 = v0[40];
    v20 = v0[12];
    v19 = v0[13];
    sub_1002685E8();
    v21 = swift_allocError();
    *v22 = 3;
    v20(0, v21);

    goto LABEL_7;
  }

  v13 = v0[30];
  v14 = v0[28];
  sub_10001854C(v0[27], v13, type metadata accessor for TimeBasedKey);
  v15 = (v13 + *(v14 + 24));
  v16 = v15[5];
  if (v16 >> 60 == 15)
  {
    v17 = v0[30];

    sub_100018CA0(v17, type metadata accessor for TimeBasedKey);
    goto LABEL_6;
  }

  v32 = v15[4];
  v33 = v0[41];
  sub_100017D5C(v32, v15[5]);
  v34 = sub_100496ABC();
  if (v33)
  {
    v39 = v0[40];
    v40 = v0[30];
    v42 = v0[12];
    v41 = v0[13];
    swift_errorRetain();
    v42(0, v33);

    sub_100006654(v32, v16);

    sub_100018CA0(v40, type metadata accessor for TimeBasedKey);
  }

  else
  {
    v35 = v34;
    v36 = PublicKey.advertisement.getter(v15[2], v15[3]);
    v38 = v37;
    sub_10058F754(v35, v36, v37, v0 + 2);
    v43 = v0[25];
    v119 = v0[24];
    v121 = v35;
    v44 = v0[23];
    sub_100016590(v36, v38);
    v45 = v0[5];
    v46 = v0[6];
    sub_1000035D0(v0 + 2, v45);
    (*(v46 + 24))(v45, v46);
    v47 = (*(v43 + 48))(v44, 1, v119);
    v48 = v0[40];
    v49 = v0[30];
    if (v47 == 1)
    {
      v51 = v0[12];
      v50 = v0[13];
      sub_10000B3A8(v0[23], &qword_10169BA28, &unk_1013EAA60);
      v51(0, 0);

      sub_100006654(v32, v16);

      v52 = v49;
    }

    else
    {
      v105 = v0[26];
      v108 = v0[24];
      v118 = v0[22];
      v106 = v0[21];
      v107 = v0[20];
      v120 = v0[19];
      v103 = v0[18];
      v104 = v0[17];
      v109 = v0[12];
      v110 = v0[13];
      sub_10001854C(v0[23], v105, type metadata accessor for CachedHistoricalLocation);
      v111 = v49;
      v54 = v0[5];
      v53 = v0[6];
      sub_1000035D0(v0 + 2, v54);
      v55 = (*(*(v53 + 8) + 8))(v54);
      v57 = v56;
      v59 = v0[5];
      v58 = v0[6];
      sub_1000035D0(v0 + 2, v59);
      v60 = (*(*(v58 + 8) + 16))(v59);
      v62 = v61;
      v0[10] = &type metadata for Data;
      v0[11] = &protocol witness table for Data;
      v0[7] = v60;
      v0[8] = v61;
      v63 = sub_1000035D0(v0 + 7, &type metadata for Data);
      v116 = *v63;
      v64 = v63[1];
      sub_100017D5C(v55, v57);
      sub_100017D5C(v60, v62);
      sub_100017DB0(v116, v64);
      sub_100016590(v60, v62);
      sub_100016590(v55, v57);
      sub_100007BAC(v0 + 7);
      v114 = v55;
      v66 = v0[5];
      v65 = v0[6];
      sub_1000035D0(v0 + 2, v66);
      v100 = (*(*(v65 + 8) + 8))(v66);
      v117 = v67;
      sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_101385D80;
      v70 = v0[5];
      v69 = v0[6];
      sub_1000035D0(v0 + 2, v70);
      *(v68 + 32) = ((*(*(v69 + 8) + 24))(v70) >> 4) & 3;
      v98 = sub_100268E34(v68);
      v115 = v71;

      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_101385D80;
      v74 = v0[5];
      v73 = v0[6];
      sub_1000035D0(v0 + 2, v74);
      *(v72 + 32) = (*(*(v73 + 8) + 24))(v74) >> 6;
      v75 = sub_100268E34(v72);
      v112 = v76;
      v113 = v75;

      v78 = v0[5];
      v77 = v0[6];
      sub_1000035D0(v0 + 2, v78);
      v101 = (*(*(v77 + 8) + 24))(v78);
      v80 = v0[5];
      v79 = v0[6];
      sub_1000035D0(v0 + 2, v80);
      v99 = (*(*(v79 + 8) + 40))(v80);
      v82 = v0[5];
      v81 = v0[6];
      sub_1000035D0(v0 + 2, v82);
      (*(*(v81 + 8) + 48))(v82);
      UUID.init()();
      v97 = objc_allocWithZone(SPBeaconAdvertisement);
      sub_100017D5C(v55, v57);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v83 = Data._bridgeToObjectiveC()().super.isa;
      v84 = Data._bridgeToObjectiveC()().super.isa;
      v85 = Data._bridgeToObjectiveC()().super.isa;
      v86 = Date._bridgeToObjectiveC()().super.isa;
      v87 = UUID._bridgeToObjectiveC()().super.isa;
      v102 = [v97 initWithAddress:isa publicKey:v83 deviceType:v84 batteryState:v85 rawStatus:v101 rssi:v99 scanDate:v86 recordIdentifier:v87];

      sub_100016590(v113, v112);
      sub_100016590(v98, v115);
      sub_100016590(v114, v57);
      sub_100016590(v100, v117);
      (*(v103 + 8))(v120, v104);
      (*(v106 + 8))(v118, v107);
      v88 = *(v108 + 28);
      v89 = *v105;
      v90 = v105[1];
      v91 = v105[2];
      v92 = objc_allocWithZone(SPEstimatedLocation);
      v93 = Date._bridgeToObjectiveC()().super.isa;
      v94 = [v92 initWithTimestamp:v93 latitude:0 longitude:v89 horizontalAccuracy:v90 altitude:v91 verticalAccuracy:-1.0 speed:-1.0 speedAccuracy:-1.0 course:-1.0 courseAccuracy:-1.0 floorLevel:0xBFF0000000000000];

      [v102 setLocation:v94];
      v95 = v102;
      v109(v102, 0);

      sub_100006654(v32, v16);

      sub_100016590(v114, v57);
      sub_100018CA0(v105, type metadata accessor for CachedHistoricalLocation);
      v52 = v111;
    }

    sub_100018CA0(v52, type metadata accessor for TimeBasedKey);
    sub_100007BAC(v0 + 2);
  }

LABEL_7:
  v23 = v0[33];
  v24 = v0[30];
  v26 = v0[26];
  v25 = v0[27];
  v28 = v0[22];
  v27 = v0[23];
  v29 = v0[19];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1002660E0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);

  return _swift_task_switch(sub_100266154, 0, 0);
}

uint64_t sub_100266154()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_1002685E8();
  v3 = swift_allocError();
  *v4 = 2;
  v2(0, v3);

  v5 = v0[33];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100266248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v37 = type metadata accessor for Date();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v36 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v29 = &v26 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, v32, v9);
  v18 = v30;
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v30);
  v19 = v5;
  (*(v5 + 16))(v36, v31, v37);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = (v11 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = (v8 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v35;
  *(v23 + 4) = v34;
  *(v23 + 5) = v24;
  (*(v10 + 32))(&v23[v20], v12, v27);
  (*(v7 + 32))(&v23[v21], v28, v18);
  (*(v19 + 32))(&v23[v22], v36, v37);

  sub_10025EDD4(0, 0, v29, &unk_1013955F8, v23);
}

uint64_t sub_1002665DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for HashAlgorithm();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v5[16] = v15;
  v16 = *(v15 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v18 = type metadata accessor for ObservedAdvertisement(0);
  v5[21] = v18;
  v19 = *(v18 - 8);
  v5[22] = v19;
  v20 = *(v19 + 64) + 15;
  v5[23] = swift_task_alloc();
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  v5[24] = v22;
  *v22 = v5;
  v22[1] = sub_100266860;

  return daemon.getter();
}

uint64_t sub_100266860(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  *(v3 + 200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 208) = v6;
  v7 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v9 = sub_100267678(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100267678(&unk_10169BA60, type metadata accessor for FindMyNetworkPublisherService);
  *v6 = v12;
  v6[1] = sub_100266A3C;

  return ActorServiceDaemon.getService<A>()(v7, MyNetworkPublisherService, v9, v10);
}

uint64_t sub_100266A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;

  v7 = v4[25];
  if (v1)
  {

    v8 = v4[23];
    v10 = v4[19];
    v9 = v4[20];
    v11 = v4[18];
    v12 = v4[15];
    v13 = v4[12];
    v14 = v4[9];

    v15 = *(v6 + 8);

    return v15();
  }

  else
  {

    v17 = swift_task_alloc();
    v4[28] = v17;
    *v17 = v6;
    v17[1] = sub_100266C34;

    return sub_1008F2DA0();
  }
}

uint64_t sub_100266C34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = sub_1002674E0;
  }

  else
  {
    v5 = sub_100266D48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100266D48()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_16:
    v43 = *(v0 + 216);
    v44 = *(v0 + 48);
    (*(v0 + 40))(v8, 0);

    v45 = *(v0 + 184);
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);
    v48 = *(v0 + 144);
    v49 = *(v0 + 120);
    v50 = *(v0 + 96);
    v51 = *(v0 + 72);

    v52 = *(v0 + 8);

    return v52();
  }

  v3 = *(v0 + 176);
  v62 = *(v0 + 168);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v0 + 112);
  v60 = (v5 + 8);
  v61 = (v5 + 104);
  v6 = *(v0 + 88);
  v59 = (v6 + 16);
  v7 = *(v0 + 136);
  v80 = (v7 + 8);
  v58 = (*(v0 + 64) + 56);
  v79 = (v7 + 16);
  v55 = (v6 + 8);
  v56 = v7;
  v8 = _swiftEmptyArrayStorage;
  v9 = *(v3 + 72);
  v57 = enum case for HashAlgorithm.sha256(_:);
  v10 = *(v0 + 184);
  v53 = v10;
  v54 = v9;
  while (1)
  {
    sub_10001861C(v4, *(v0 + 184));
    v11 = *(v10 + 24);
    v12 = *(v0 + 184);
    if ((v11 & 0x2000000000000000) != 0)
    {
      sub_100018CA0(*(v0 + 184), type metadata accessor for ObservedAdvertisement);
      goto LABEL_4;
    }

    v66 = v8;
    v67 = v4;
    v68 = v2;
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v71 = *(v0 + 152);
    v73 = *(v0 + 128);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v69 = *(v0 + 80);
    v75 = *(v0 + 72);
    v77 = *(v0 + 56);
    v17 = *(v10 + 16);
    (*v61)(v14, v57, v15);
    sub_100017D5C(v17, v11);
    v18 = Data.hash(algorithm:)();
    v20 = v19;
    sub_10001E524(v17, v11);
    (*v60)(v14, v15);
    (*v59)(v16, v12 + *(v62 + 44), v69);
    sub_100F4CE88();
    URL.appendingPathComponent(_:isDirectory:)();
    v21 = *v80;
    (*v80)(v13, v73);
    v22 = type metadata accessor for BeaconPayloadFile.MetaData(0);
    (*(*(v22 - 8) + 56))(v75, 1, 1, v22);
    v23 = type metadata accessor for BeaconPayloadFile(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    (*v58)(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, 1, 1, v77);
    v27 = OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate;
    v28 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
    v29 = *v79;
    (*v79)(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL, v71, v73);
    v30 = (v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement);
    *v30 = v18;
    v30[1] = v20;
    sub_100017D5C(v18, v20);
    v31 = objc_autoreleasePoolPush();
    result = Date.timeIntervalSinceReferenceDate.getter();
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v33 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    if (v33 >= 9.22337204e18)
    {
      goto LABEL_21;
    }

    v72 = *(v0 + 184);
    v78 = *(v0 + 160);
    v63 = *(v0 + 152);
    v64 = v31;
    v34 = *(v0 + 144);
    v76 = v29;
    v35 = *(v0 + 128);
    v70 = *(v0 + 96);
    v65 = *(v0 + 80);
    v74 = *(v0 + 72);
    *(v0 + 32) = v33;
    dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 16) = v18;
    *(v0 + 24) = v20;
    sub_10025DB08();
    RawRepresentable<>.hexString.getter();
    sub_100016590(v18, v20);
    URL.appendingPathComponent(_:isDirectory:)();

    URL.appendingPathComponent(_:isDirectory:)();

    v21(v34, v35);
    objc_autoreleasePoolPop(v64);
    v21(v63, v35);
    (*v55)(v70, v65);
    sub_100018CA0(v72, type metadata accessor for ObservedAdvertisement);
    sub_1000D2AD8(v74, v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, &qword_10169BA58, &unk_101395640);
    v76(v78, v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, v35);
    swift_setDeallocating();
    v21(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_rootURL, v35);
    sub_100016590(*(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement), *(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_hashedAdvertisement + 8));
    v21(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_fileURL, v35);
    sub_10000B3A8(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile_initializedWithMetaData, &qword_10169BA58, &unk_101395640);
    sub_10000B3A8(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___metaData, &unk_10169BA78, &unk_101395650);
    sub_10000B3A8(v26 + OBJC_IVAR____TtC12searchpartyd17BeaconPayloadFile____lazy_storage___scanDate, &unk_1016980C0, &unk_10138F3A0);
    v36 = *(*v26 + 48);
    v37 = *(*v26 + 52);
    swift_deallocClassInstance();
    v8 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100A5C4D0(0, v66[2] + 1, 1, v66);
    }

    v4 = v67;
    v2 = v68;
    v10 = v53;
    v9 = v54;
    v39 = v8[2];
    v38 = v8[3];
    if (v39 >= v38 >> 1)
    {
      v8 = sub_100A5C4D0(v38 > 1, v39 + 1, 1, v8);
    }

    v40 = *(v0 + 160);
    v41 = *(v0 + 128);
    v8[2] = v39 + 1;
    (*(v56 + 32))(v8 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v39, v40, v41);
LABEL_4:
    v4 += v9;
    if (!--v2)
    {
      v42 = *(v0 + 232);

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1002674E0()
{
  v1 = v0[30];
  v2 = v0[27];
  v4 = v0[5];
  v3 = v0[6];
  swift_errorRetain();
  v4(v1, 1);

  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100267678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002676C0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_100263C08(a1, a2, v2);
}

uint64_t sub_10026776C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003633C;

  return v7(a1);
}

uint64_t sub_100267864@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100268BDC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_10026792C(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_100016590(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_10138C660;
      sub_100016590(0, 0xC000000000000000);
      sub_1002680D4(a1);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100016590(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      a1(&v21, &v21 + BYTE6(v4));
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v7;
    v2[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    a1(&v21, &v21);
    return;
  }

  sub_100016590(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = *(&v21 + 1);
  v10 = *(v21 + 16);
  v11 = *(v21 + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = __DataStorage._length.getter();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  a1(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v9 | 0x8000000000000000;
}

char *sub_100267BDC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100016590(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100016590(v6, v5);
    *v3 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1002681B0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100016590(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1002681B0(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_100267F80@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100268BDC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100268C94(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100268D10(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_100268014(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_100268068(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1002680D4(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = a1;
  v5 = *(v1 + 1);

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v3 - v8;
  if (__OFSUB__(v3, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13(v7 + v9, v7 + v9 + v12);
}

char *sub_1002681B0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t (*sub_100268264(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10026AE28;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002682E4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_100268364;
  }

  __break(1u);
  return result;
}

uint64_t sub_10026836C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100268420(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100014744;

  return sub_100264FCC(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_1002685E8()
{
  result = qword_10169BA38;
  if (!qword_10169BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BA38);
  }

  return result;
}

void (*sub_10026863C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002686BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002686C4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(sub_1000BC4D4(&qword_10169BAB0, &qword_1013956D0) + 48);

  result = sub_1003A8FC4(a4, a1, a2, v7);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_100268740(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100268834;

  return v6(v2 + 32);
}

uint64_t sub_100268834()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100268948@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100268998(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_100268A8C;

  return v6(v2 + 16);
}

uint64_t sub_100268A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100268BBC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100268BDC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100268C94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100268D10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100268D94(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100268E34(uint64_t a1)
{
  v9 = sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  v10 = sub_1000041A4(&qword_101699370, &unk_10169BA40, &unk_1013918E0);
  v8[0] = a1;
  v2 = sub_1000035D0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100267F80(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100007BAC(v8);
  return v5;
}

unint64_t sub_100268F10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608538, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100268F5C(void (*a1)(void))
{
  if (sub_100017068())
  {
    return (a1)(0);
  }

  static os_log_type_t.error.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = 0xD000000000000036;
  *(v3 + 40) = 0x80000001013478E0;
  os_log(_:dso:log:_:_:)();

  sub_1002685E8();
  swift_allocError();
  *v4 = 0;
  a1();
}

uint64_t sub_1002690CC(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if (sub_100017068())
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a1;
    v9[5] = a2;

    sub_10025EDD4(0, 0, v7, &unk_101395638, v9);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = 0xD000000000000035;
    *(v11 + 40) = 0x8000000101347920;
    os_log(_:dso:log:_:_:)();

    sub_1002685E8();
    v12 = swift_allocError();
    *v13 = 0;
    a1(v12, 1);
  }
}

uint64_t sub_10026931C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1002665DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002693DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10026776C(a1, v5);
}

uint64_t sub_100269494(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100268740(a1, v5);
}

void *sub_10026954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100268068(sub_1002695B4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1002695D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100268998(a1, v5);
}

uint64_t sub_10026968C(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_100268014(sub_100269754, v4, a1, a2);
}

uint64_t sub_1002696E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BAA8, &unk_10139FDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100269774(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100268740(a1, v5);
}

unint64_t sub_10026982C()
{
  result = qword_10169BAD8;
  if (!qword_10169BAD8)
  {
    sub_100008BB8(255, &qword_10169BAD0, NSXPCConnection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BAD8);
  }

  return result;
}

uint64_t sub_10026989C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100263B58(a1, v5, v4);
}

uint64_t sub_100269944(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100263BE4(a1, v5, v4);
}

uint64_t sub_100269A14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1008DE9CC();
}

uint64_t sub_100269AC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100269B08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100261DAC(a1, v4, v5, v7, v6);
}

uint64_t sub_100269BC8(uint64_t a1, uint64_t a2)
{
  if (sub_100017068())
  {
    static os_log_type_t.default.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    v5 = *(a1 + 16);
    *(v4 + 56) = &type metadata for Int;
    *(v4 + 64) = &protocol witness table for Int;
    *(v4 + 32) = v5;
    v6 = 2;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = 0xD000000000000036;
    *(v7 + 40) = 0x80000001013478E0;
    os_log(_:dso:log:_:_:)();
    v6 = 0;
  }

  sub_1002685E8();
  swift_allocError();
  *v8 = v6;
  v9 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, v9);
}

void sub_100269DF0(unint64_t a1, char *a2, const void *a3)
{
  v6 = type metadata accessor for SPCachedAdvertisement();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    if (a1 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = v11;
    os_log(_:dso:log:_:_:)();

    v12 = _swiftEmptyArrayStorage;
    if (!v11)
    {
LABEL_16:
      v31 = OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
      swift_beginAccess();
      v32 = *&a2[v31];
      swift_unknownObjectRetain();
      v33 = sub_10039C43C(v12);

      _Block_copy(a3);
      sub_100269BC8(v33, a3);
      _Block_release(a3);
      swift_unknownObjectRelease();

      _Block_release(a3);
      return;
    }

    v45 = _swiftEmptyArrayStorage;
    sub_10112471C(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      break;
    }

    v34 = a2;
    v35 = a3;
    v13 = 0;
    v12 = v45;
    v14 = a1;
    v38 = a1;
    v39 = a1 & 0xC000000000000001;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v37 = v11;
    while (1)
    {
      if (v39)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_12;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v13 >= *(v36 + 16))
      {
        goto LABEL_18;
      }

      v15 = *(v14 + 8 * v13 + 32);
LABEL_12:
      v16 = v15;
      v44 = [v15 status];
      v17 = [v16 address];
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v19;
      v43 = v18;

      v20 = [v16 advertisementData];
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = [v16 reserved];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      a1 = [v16 rssi];
      a2 = [v16 scanDate];
      v27 = &v9[*(v41 + 36)];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v42;
      *v9 = v43;
      *(v9 + 1) = v28;
      *(v9 + 2) = a3;
      *(v9 + 3) = v22;
      v9[32] = v44;
      *(v9 + 5) = v24;
      *(v9 + 6) = v26;
      *(v9 + 7) = a1;
      v45 = v12;
      v30 = v12[2];
      v29 = v12[3];
      if (v30 >= v29 >> 1)
      {
        sub_10112471C(v29 > 1, v30 + 1, 1);
        v12 = v45;
      }

      ++v13;
      v12[2] = v30 + 1;
      sub_10001854C(v9, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, type metadata accessor for SPCachedAdvertisement);
      v14 = v38;
      if (v37 == v13)
      {
        a2 = v34;
        a3 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_10026A218(uint64_t a1)
{
  if (sub_100017068())
  {
    v2 = 2;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = 0xD000000000000036;
    *(v3 + 40) = 0x80000001013478E0;
    os_log(_:dso:log:_:_:)();

    v2 = 0;
  }

  sub_1002685E8();
  swift_allocError();
  *v4 = v2;
  v5 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, v5);
}

uint64_t sub_10026A388(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = *(a1 + 16);
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  v8 = OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
  swift_beginAccess();
  v9 = *(a2 + v8);
  swift_unknownObjectRetain();
  sub_10026A218(aBlock);
  _Block_release(aBlock);
  return swift_unknownObjectRelease();
}

void sub_10026A4CC(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_1000BC4D4(&unk_10169BB38, &unk_101395740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v29 - v7);
  static os_log_type_t.default.getter();
  if (qword_101695018 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for LegacyResult.success<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = *v8;
    static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v12 = *(v10 + 16);
    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = v12;
    os_log(_:dso:log:_:_:)();

    if (v12)
    {
      v32 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v13 = v10 + 32;
      do
      {
        sub_10001F280(v13, v29);
        v14 = v30;
        v15 = v31;
        sub_1000035D0(v29, v30);
        sub_1003CCB60(v14, v15);
        sub_100007BAC(v29);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = v32[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 += 40;
        --v12;
      }

      while (v12);
    }

    v26 = [objc_allocWithZone(SPSearchResultMarker) init];
    v27 = objc_allocWithZone(SPAdvertisementCacheSearchResult);
    sub_100008BB8(0, &qword_10169BB48, SPBeaconAdvertisement_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = [v27 initWithBeaconAdvertisements:isa searchResultMarker:v26 error:0];

    goto LABEL_11;
  }

  if (v9 == enum case for LegacyResult.failure<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v17 = *v8;
    static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v29[0] = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = objc_allocWithZone(SPAdvertisementCacheSearchResult);
    swift_errorRetain();
    sub_100008BB8(0, &qword_10169BB48, SPBeaconAdvertisement_ptr);
    v23 = Array._bridgeToObjectiveC()().super.isa;
    v24 = _convertErrorToNSError(_:)();

    v25 = [v22 initWithBeaconAdvertisements:v23 searchResultMarker:0 error:v24];

LABEL_11:
    (a2)[2](a2, v25);

    return;
  }

  _Block_release(a2);
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10026A9C0(void *a1)
{
  v2 = sub_1000BC4D4(&unk_10169BB38, &unk_101395740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - v5);
  _Block_copy(a1);
  _Block_copy(a1);
  v7 = 2;
  if ((sub_100017068() & 1) == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_101695018 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    *(v8 + 32) = 0xD000000000000035;
    *(v8 + 40) = 0x8000000101347920;
    os_log(_:dso:log:_:_:)();

    v7 = 0;
  }

  sub_1002685E8();
  v9 = swift_allocError();
  *v10 = v7;
  *v6 = v9;
  (*(v3 + 104))(v6, enum case for LegacyResult.failure<A>(_:), v2);
  _Block_copy(a1);
  sub_10026A4CC(v6, a1);
  _Block_release(a1);
  (*(v3 + 8))(v6, v2);
  _Block_release(a1);
  _Block_release(a1);
}

uint64_t sub_10026AC00(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
  swift_beginAccess();
  v5 = *(a1 + v4);
  _Block_copy(a2);
  v6 = qword_101694940;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C2C(v9);

  sub_10026A9C0(a2);
  _Block_release(a2);
  return swift_unknownObjectRelease();
}

unint64_t sub_10026AD24()
{
  result = qword_10169BB78;
  if (!qword_10169BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB78);
  }

  return result;
}

unint64_t sub_10026AD7C()
{
  result = qword_10169BB80;
  if (!qword_10169BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB80);
  }

  return result;
}

unint64_t sub_10026ADD4()
{
  result = qword_10169BB88;
  if (!qword_10169BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB88);
  }

  return result;
}

uint64_t sub_10026AE34()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A800);
  sub_1000076D4(v0, qword_10177A800);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10026AEB4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169BB90);
  v1 = sub_1000076D4(v0, qword_10169BB90);
  if (qword_101694500 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A800);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10026AF7C()
{
  v1[3] = v0;
  v2 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10026B07C, 0, 0);
}

uint64_t sub_10026B07C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  swift_defaultActor_initialize();
  v4[14] = 0xD000000000000020;
  v4[15] = 0x8000000101395920;
  type metadata accessor for WorkItemQueue();
  v5 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  UUID.init()();
  v4[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v4[18] = 0;
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v6 = type metadata accessor for CentralManager.Options();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v0[2] = v10;
  sub_10027EB7C(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 56))(v3, 0, 1, v6);
  v11 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_10026B354;
  v13 = v0[4];

  return CentralManager.__allocating_init(options:)(v13);
}

uint64_t sub_10026B354(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10026B454, 0, 0);
}

uint64_t sub_10026B454()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *(v0[3] + 128) = v0[8];

  v4 = v0[1];
  v5 = v0[3];

  return v4(v5);
}

uint64_t sub_10026B4D4()
{
  v1[93] = v0;
  v1[94] = *v0;
  v2 = sub_1000BC4D4(&qword_10169BD08, &unk_101395B50);
  v1[95] = v2;
  v3 = *(v2 - 8);
  v1[96] = v3;
  v4 = *(v3 + 64) + 15;
  v1[97] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[98] = v6;
  *v6 = v1;
  v6[1] = sub_10026B5F8;

  return daemon.getter();
}

uint64_t sub_10026B5F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 784);
  v12 = *v1;
  v3[99] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[100] = v6;
  v7 = type metadata accessor for Daemon();
  v3[101] = v7;
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[102] = v9;
  v10 = sub_10027EB7C(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_10026B7EC;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_10026B7EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v5 = *v2;
  *(*v2 + 824) = a1;

  v6 = *(v3 + 792);
  v7 = *(v3 + 744);
  if (v1)
  {

    v8 = sub_10026C308;
  }

  else
  {

    v8 = sub_10026B950;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10026B950()
{
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[104] = sub_1000076D4(v1, qword_10169BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v5 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v9 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v6 = swift_task_alloc();
  v0[105] = v6;
  *v6 = v0;
  v6[1] = sub_10026BAB4;
  v7 = v0[103];

  return v9();
}

uint64_t sub_10026BAB4()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_10026BBC4, v2, 0);
}

uint64_t sub_10026BBC4()
{
  v1 = *(v0 + 832);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 848) = v6;
  *v6 = v0;
  v6[1] = sub_10026BCCC;

  return daemon.getter();
}

uint64_t sub_10026BCCC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 848);
  v5 = *v1;
  v3[107] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[108] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10027EB7C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10026BE84;
  v10 = v3[102];
  v11 = v3[101];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10026BE84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 864);
  v6 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {
    v7 = v4[93];
    v8 = sub_10026C428;
  }

  else
  {
    v9 = v4[107];

    v4[110] = a1;
    v8 = sub_10026BFC0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10026BFC0()
{
  v1 = v0[93];
  v0[111] = *(*(v0[110] + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  return _swift_task_switch(sub_10026C048, v1, 0);
}

uint64_t sub_10026C048()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v9 = v0[94];
  v4 = v0[93];
  v0[87] = v0[111];
  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  type metadata accessor for OwnedBeaconGroup(0);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30);
  Publisher.compactMap<A>(_:)();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v9;
  sub_1000041A4(&qword_10169BD18, &qword_10169BD08, &unk_101395B50);

  v6 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  v7 = *(v4 + 144);
  *(v4 + 144) = v6;

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_10026C290()
{
  v1 = v0[110];
  v2 = v0[103];

  v3 = v0[97];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10026C308()
{
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10169BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available. Bailing", v4, 2u);
  }

  v5 = *(v0 + 776);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10026C428()
{
  v1 = v0[107];
  v2 = v0[103];
  v3 = v0[97];

  v4 = v0[1];
  v5 = v0[109];

  return v4();
}

uint64_t sub_10026C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001F280(a1, v6);
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v4 = swift_dynamicCast();
  return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
}

uint64_t sub_10026C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10169BB90);
  sub_10027E7C8(a1, v12, type metadata accessor for OwnedBeaconGroup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v33 = v18;
    *v17 = 136315138;
    v20 = sub_10051F7B0();
    v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = a1;
    v22 = a3;
    v24 = v23;
    sub_10027E768(v12, type metadata accessor for OwnedBeaconGroup);
    v25 = sub_1000136BC(v20, v24, &v33);
    a3 = v22;
    a1 = v21;
    v10 = v32;

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removed beacon group: %s", v17, 0xCu);
    sub_100007BAC(v19);
    a2 = v31;

    v7 = v30;
  }

  else
  {

    sub_10027E768(v12, type metadata accessor for OwnedBeaconGroup);
  }

  v26 = *(a2 + 136);
  sub_10027E7C8(a1, v10, type metadata accessor for OwnedBeaconGroup);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = swift_allocObject();
  sub_10027E700(v10, v28 + v27, type metadata accessor for OwnedBeaconGroup);
  *(v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10026C86C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v1[7] = *(v5 + 64);
  v1[8] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[9] = v7;
  *v7 = v1;
  v7[1] = sub_10026C994;

  return daemon.getter();
}

uint64_t sub_10026C994(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10027EB7C(&unk_1016B1030, 255, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10026CB78;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10026CB78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  if (v1)
  {
    v7 = sub_10026D3C0;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 80);
    v10 = *(v4 + 24);

    *(v4 + 136) = *(v10 + 24);
    v7 = sub_10026CCBC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10026CCBC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v1 + 136);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 136), v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 112) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v3);
  v8 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v11 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_10026CE18;

  return v11(&unk_101395B80, v7);
}

uint64_t sub_10026CE18()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = *(v2 + 96);
    v6 = sub_10026D1E4;
  }

  else
  {
    v6 = sub_10026CF58;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026CF58()
{
  v25 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169BB90);
  sub_10027E7C8(v2, v1, type metadata accessor for OwnedBeaconGroup);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = *(v10 + 24);
    sub_10027EB7C(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10027E768(v8, type metadata accessor for OwnedBeaconGroup);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removed analytics record for beacon group %{private,mask.hash}s", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {
    v18 = v0[4];
    v19 = v0[12];

    sub_10027E768(v18, type metadata accessor for OwnedBeaconGroup);
  }

  v20 = v0[8];
  v21 = v0[4];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10026D200()
{
  v1 = v0[12];

  v2 = v0[16];
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169BB90);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error removing analytics record %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[8];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10026D3C0()
{
  v1 = v0[10];

  v2 = v0[13];
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169BB90);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error removing analytics record %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[8];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10026D580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_10026D610();
}

uint64_t sub_10026D610()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *(*(type metadata accessor for CentralManager.ConnectedState() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10026D7D0, v0, 0);
}

uint64_t sub_10026D7D0()
{
  v19 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v1, qword_10169BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[14] = *(v0[3] + 128);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v6 = type metadata accessor for CentralManager.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for CentralManager.State.poweredOn(_:), v6);
  v12(v11 + v8, enum case for CentralManager.State.restricted(_:), v6);
  v13 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v14 = swift_task_alloc();
  v0[16] = v14;
  v15 = type metadata accessor for CentralManager();
  v0[17] = v15;
  v16 = sub_10027EB7C(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v14 = v0;
  v14[1] = sub_10026DACC;

  return CentralManagerProtocol.await(states:)(v10, v15, v16);
}

uint64_t sub_10026DACC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_10026E4B8;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 24);

    v5 = sub_10026DBF4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10026DBF4()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  v3 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  sub_10027EB7C(&unk_1016C21D0, 255, &type metadata accessor for CentralManager);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026DD70, v8, v7);
}

uint64_t sub_10026DD70()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[12];
  dispatch thunk of CentralManager.connectionEvents(serviceIdentifiers:)();
  v0[20] = v2;
  if (v2)
  {
    v5 = v0[3];
    v6 = sub_10026E644;
  }

  else
  {
    v7 = v0[19];
    v8 = v0[3];

    v6 = sub_10026DE14;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026DE14()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  AsyncStream.makeAsyncIterator()();
  v5 = sub_10027EB7C(&qword_10169BCA8, v4, type metadata accessor for AccessoryPairingAnalyticsService);
  v6 = v0[20];
  v0[21] = v5;
  v0[22] = v6;
  v7 = v0[3];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_10026DF10;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v11, v7, v5, v12);
}

uint64_t sub_10026DF10()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10026E020, v2, 0);
}

uint64_t sub_10026E020()
{
  v1 = v0[6];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "centralManager.connectionEvents() terminated", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_10;
  }

  v11 = v0[22];
  v12 = *v1;
  sub_10027E700(v1 + *(v2 + 48), v0[5], &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v11)
  {
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[5];

    sub_10027E768(v19, &type metadata accessor for CentralManager.ConnectedState);
    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    v20 = v0[13];
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v23, 0xCu);
      sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_10:
    v29 = v0[12];
    v30 = v0[9];
    v32 = v0[5];
    v31 = v0[6];

    v33 = v0[1];

    return v33();
  }

  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  type metadata accessor for Transaction();
  static Transaction.$current.getter();
  v0[2] = v12;
  swift_retain_n();
  sub_1000BC4D4(&qword_10169BD00, &qword_1013FD5B0);
  swift_task_localValuePush();
  sub_10026E7D0(v26, v28);
  v35 = v0[5];
  swift_task_localValuePop();

  sub_10027E768(v35, &type metadata accessor for CentralManager.ConnectedState);
  v0[22] = 0;
  v36 = v0[21];
  v37 = v0[3];
  v38 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v39 = swift_task_alloc();
  v0[23] = v39;
  *v39 = v0;
  v39[1] = sub_10026DF10;
  v40 = v0[9];
  v41 = v0[6];
  v42 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v41, v37, v36, v42);
}

uint64_t sub_10026E4B8()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[13];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[12];
  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10026E644()
{
  v1 = v0[19];

  v2 = v0[20];
  v3 = v0[13];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[12];
  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10026E7D0(uint64_t a1, char *a2)
{
  v55 = a2;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v54 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v53 - v13;
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = type metadata accessor for CentralManager.ConnectedState();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10027E7C8(a1, v20, &type metadata accessor for CentralManager.ConnectedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *(v5 + 32);
  v56 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    v22(v11, v20, v4);
    v23 = v4;
    if (qword_101694508 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10169BB90);
    v25 = v54;
    (*(v5 + 16))(v54, v11, v4);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57 = v29;
      *v28 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v23;
      v33 = v32;
      v55 = v11;
      v34 = *(v5 + 8);
      v35 = v25;
      v36 = v31;
      v34(v35, v31);
      v37 = sub_1000136BC(v30, v33, &v57);

      *(v28 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Connected to %{public}s", v28, 0xCu);
      sub_100007BAC(v29);

      return (v34)(v55, v36);
    }

    else
    {

      v52 = *(v5 + 8);
      v52(v25, v23);
      return (v52)(v11, v23);
    }
  }

  else
  {
    v22(v16, v20, v4);
    if (qword_101694508 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10169BB90);
    (*(v5 + 16))(v14, v16, v4);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v53 = v42;
      v54 = swift_slowAlloc();
      v57 = v54;
      *v42 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v4;
      v46 = v45;
      v47 = *(v5 + 8);
      v48 = v14;
      v49 = v44;
      v47(v48, v44);
      v50 = sub_1000136BC(v43, v46, &v57);

      v51 = v53;
      *(v53 + 1) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Disconnected from %{public}s", v51, 0xCu);
      sub_100007BAC(v54);

      v4 = v49;
    }

    else
    {

      v47 = *(v5 + 8);
      v47(v14, v4);
    }

    sub_10026EDA4(v16);
    return (v47)(v16, v4);
  }
}

uint64_t sub_10026EDA4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = v1[17];
  (*(v6 + 16))(&v14 - v8, a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, v9, v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10026EF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10026F02C, 0, 0);
}

uint64_t sub_10026F02C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *(v3 + 16);
  v0[10] = v8;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = v7;
  (*(v3 + 32))(v11 + v9, v1, v4);
  *(v11 + v10) = v5;
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_10026F1A4;

  return withTimeout<A>(_:block:)(v13, 0x8AC7230489E80000, 0, &unk_101395AC8, v11, &type metadata for () + 8);
}

uint64_t sub_10026F1A4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10026F32C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_10026F2C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026F2C0()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10026F32C()
{
  v30 = v0;
  v1 = v0[12];

  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10169BB90);
  v4(v5, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136446466;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000136BC(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v27 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error handling disconnect event for %{public}s: %{public}@", v16, 0x16u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v28);
  }

  else
  {
    v22 = v0[14];

    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[8];
  v23 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_10026F5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v3[14] = v6;
  v7 = *(v6 - 8);
  v3[15] = v7;
  v8 = *(v7 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v3[22] = *(v11 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v14 = type metadata accessor for TransportType();
  v3[34] = v14;
  v15 = *(v14 - 8);
  v3[35] = v15;
  v16 = *(v15 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[38] = v17;
  v18 = *(v17 - 8);
  v3[39] = v18;
  v19 = *(v18 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v20 = async function pointer to daemon.getter[1];
  v21 = swift_task_alloc();
  v3[42] = v21;
  *v21 = v3;
  v21[1] = sub_10026F974;

  return daemon.getter();
}

uint64_t sub_10026F974(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 336);
  v12 = *v1;
  v3[43] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[44] = v6;
  v7 = type metadata accessor for Daemon();
  v3[45] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[46] = v9;
  v10 = sub_10027EB7C(&unk_1016B1030, 255, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10026FB68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10026FB68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  if (v1)
  {
    v7 = sub_100274104;
    v8 = 0;
  }

  else
  {
    v9 = v4[43];

    v7 = sub_10026FCA0;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10026FCA0()
{
  v1 = *(v0[47] + 136);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v7 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v3 = swift_task_alloc();
  v0[49] = v3;
  v4 = sub_1000BC4D4(&qword_10169BCD0, &qword_101395AE0);
  v0[50] = v4;
  *v3 = v0;
  v3[1] = sub_10026FD90;
  v5 = v0[47];

  return (v7)(v0 + 2, &unk_101395AD8, v5, v4);
}

uint64_t sub_10026FD90()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 376);
  if (v0)
  {
    v6 = sub_100270120;
  }

  else
  {
    v7 = *(v2 + 376);

    v6 = sub_10026FED4;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026FEF8()
{
  v16 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = type metadata accessor for Logger();
  v0[53] = sub_1000076D4(v2, qword_10169BB90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics();
    v8 = Array.description.getter();
    v10 = sub_1000136BC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "All analytics: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0[8] + 128);
  v0[54] = v11;
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  v0[55] = v13;
  *v13 = v0;
  v13[1] = sub_1002702E4;

  return withTimeout<A>(_:block:)(v13, 2000000000000000000, 0, &unk_101395AF0, v11, &type metadata for () + 8);
}

uint64_t sub_100270120()
{
  v1 = *(v0 + 376);

  return _swift_task_switch(sub_100270188, 0, 0);
}

uint64_t sub_100270188()
{
  v1 = v0[47];

  v23 = v0[51];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v5 = v0[37];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002702E4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  v2[56] = v0;

  v5 = v2[54];
  if (v0)
  {
    v6 = v2[52];

    v7 = sub_100274260;
  }

  else
  {

    v7 = sub_100270428;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100270428()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v4 = *(v2 + 72);
  *(v0 + 816) = *(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 456) = v5;
  *(v5 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v6 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v10 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v7 = swift_task_alloc();
  *(v0 + 464) = v7;
  *v7 = v0;
  v7[1] = sub_100270540;
  v8 = *(v0 + 432);

  return v10(v5);
}

uint64_t sub_100270540(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v8 = *v2;
  v3[59] = a1;
  v3[60] = v1;

  if (v1)
  {
    v5 = sub_1002743BC;
  }

  else
  {
    v6 = v3[57];

    v5 = sub_10027065C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = v3;
  v4 = v3[59];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v9 = v3[59];
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v43 = v3[59];
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v44 = v3[59];
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v5, a2, a3);
        }

        v6 = *(v3[59] + 32);
      }

      v3[61] = v6;

      type metadata accessor for Peripheral();
      sub_10027EB7C(&unk_1016C11B0, 255, &type metadata accessor for Peripheral);
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      a3 = v8;
      v3[62] = v7;
      v3[63] = v8;
      v5 = sub_100270A58;
      a2 = v7;

      return _swift_task_switch(v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v10 = v3[59];
  v11 = v3[52];
  v12 = v3[53];
  v13 = v3[41];
  v14 = v3[38];
  v15 = v3[39];
  v16 = v3[9];

  (*(v15 + 16))(v13, v16, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v3[47];
  v21 = v3[41];
  v23 = v3[38];
  v22 = v3[39];
  if (v19)
  {
    v53 = v3[47];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v55 = v25;
    *v24 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v22 + 8))(v21, v23);
    v29 = sub_1000136BC(v26, v28, &v55);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unable to retrieve a Peripheral for %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {
    v30 = v3[47];

    (*(v22 + 8))(v21, v23);
  }

  v32 = v3[40];
  v31 = v3[41];
  v34 = v3[36];
  v33 = v3[37];
  v35 = v3[32];
  v36 = v3[33];
  v38 = v3[30];
  v37 = v3[31];
  v40 = v3[28];
  v39 = v3[29];
  v45 = v3[26];
  v46 = v3[25];
  v47 = v3[24];
  v48 = v3[23];
  v49 = v3[19];
  v50 = v3[18];
  v51 = v3[17];
  v52 = v3[16];
  v54 = v3[13];

  v41 = v3[1];

  return v41();
}

uint64_t sub_100270A58()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 296);
  dispatch thunk of Peripheral.transportType.getter();

  return _swift_task_switch(sub_100270AC4, 0, 0);
}

uint64_t sub_100270AC4()
{
  v52 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  (*(v4 + 104))(v2, enum case for TransportType.classic(_:), v3);
  sub_10027EB7C(&qword_10169BCD8, 255, &type metadata accessor for TransportType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 832) == *(v0 + 833))
  {
    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    *(v0 + 512) = v7;
    *v7 = v0;
    v7[1] = sub_100270EFC;

    return daemon.getter();
  }

  else
  {
    v8 = *(v0 + 416);
    v9 = *(v0 + 424);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v12 = *(v0 + 304);
    v13 = *(v0 + 72);

    (*(v11 + 16))(v10, v13, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 488);
    v18 = *(v0 + 376);
    v20 = *(v0 + 312);
    v19 = *(v0 + 320);
    v21 = *(v0 + 304);
    if (v16)
    {
      v49 = *(v0 + 488);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = sub_1000136BC(v24, v26, &v51);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "Ignore non-classic peripheral: %{public}s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
      v28 = *(v0 + 488);

      (*(v20 + 8))(v19, v21);
    }

    v30 = *(v0 + 320);
    v29 = *(v0 + 328);
    v32 = *(v0 + 288);
    v31 = *(v0 + 296);
    v33 = *(v0 + 256);
    v34 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v38 = *(v0 + 224);
    v37 = *(v0 + 232);
    v41 = *(v0 + 208);
    v42 = *(v0 + 200);
    v43 = *(v0 + 192);
    v44 = *(v0 + 184);
    v45 = *(v0 + 152);
    v46 = *(v0 + 144);
    v47 = *(v0 + 136);
    v48 = *(v0 + 128);
    v50 = *(v0 + 104);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_100270EFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v5 = *v1;
  v3[65] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[66] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10027EB7C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1002710B4;
  v10 = v3[46];
  v11 = v3[45];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002710B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v8 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v5 = sub_100274530;
  }

  else
  {
    v6 = v3[65];

    v5 = sub_1002711D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002711D4()
{
  v1 = v0[33];
  v2 = v0[14];
  v3 = v0[15];
  v4 = *(v3 + 56);
  v0[69] = v4;
  v0[70] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = v0[62];
  v6 = v0[63];

  return _swift_task_switch(sub_100271260, v5, v6);
}

uint64_t sub_100271260()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 152);
  dispatch thunk of Peripheral.macAddress.getter();

  return _swift_task_switch(sub_1002712CC, 0, 0);
}

uint64_t sub_1002712CC()
{
  v32 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[53];
  if (v4 == 1)
  {
    sub_10000B3A8(v3, &qword_1016A40D0, &unk_10138BE70);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Looking through all beacon groups", v8, 2u);
    }

    v9 = v0[67];

    v10 = sub_100272B5C;
    v11 = v9;
  }

  else
  {
    v12 = v0[52];
    v14 = v0[25];
    v13 = v0[26];

    v15 = *(v2 + 32);
    v0[71] = v15;
    v0[72] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v13, v3, v1);
    v16 = *(v2 + 16);
    v0[73] = v16;
    v0[74] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v14, v13, v1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[25];
    v21 = v0[20];
    v22 = v0[21];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v23 = 136446210;
      sub_10027EB7C(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = *(v22 + 8);
      v27(v20, v21);
      v28 = sub_1000136BC(v24, v26, &v31);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Looking for analytics matching %{public}s", v23, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      v27 = *(v22 + 8);
      v27(v20, v21);
    }

    v0[75] = v27;
    v11 = v0[67];
    v10 = sub_1002715D8;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1002715D8()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 536);
  v5 = *(v0 + 192);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  (*(v0 + 584))(v5, *(v0 + 208), v8);
  v9 = *(v7 + 80);
  *(v0 + 820) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 608) = v11;
  *(v11 + 16) = v4;
  v3(v11 + v10, v5, v8);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 616) = v13;
  *v13 = v0;
  v13[1] = sub_10027173C;
  v14 = *(v0 + 256);
  v15 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_10027E47C, v11, v15);
}

uint64_t sub_10027173C()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return _swift_task_switch(sub_100271854, 0, 0);
}

uint64_t sub_100271854()
{
  v27 = v0;
  v1 = *(v0 + 256);
  if ((*(*(v0 + 120) + 48))(v1, 1, *(v0 + 112)) == 1)
  {
    v2 = *(v0 + 376);
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v3 = sub_100271ADC;
    v4 = v2;
  }

  else
  {
    v5 = *(v0 + 592);
    v6 = *(v0 + 584);
    v7 = *(v0 + 424);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);
    sub_10027E700(v1, *(v0 + 144), type metadata accessor for OwnedBeaconGroup);
    v6(v9, v8, v10);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 600);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    if (v13)
    {
      v25 = *(v0 + 600);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      sub_10027EB7C(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v25(v15, v16);
      v23 = sub_1000136BC(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Found beacon group matching %{public}s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {

      v14(v15, v16);
    }

    v4 = *(v0 + 376);
    *(v0 + 824) = *(*(v0 + 112) + 24);
    v3 = sub_100272168;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100271ADC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 376);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = (*(v0 + 820) + 24) & ~*(v0 + 820);
  v9 = *(v4 + 136);
  (*(v0 + 584))(v5, *(v0 + 208), v7);
  v10 = swift_allocObject();
  *(v0 + 624) = v10;
  *(v10 + 16) = v4;
  v3(v10 + v8, v5, v7);
  v11 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v15 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v12 = swift_task_alloc();
  *(v0 + 632) = v12;
  *v12 = v0;
  v12[1] = sub_100271C3C;
  v13 = *(v0 + 400);

  return v15(v0 + 48, &unk_101395B10, v10, v13);
}

uint64_t sub_100271C3C()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v9 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = sub_100271F4C;
  }

  else
  {
    v6 = *(v2 + 624);
    v7 = *(v2 + 376);

    v5 = sub_100271D64;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100271D88()
{
  v16 = v0;
  v1 = v0[81];
  v0[86] = v1;
  v2 = v0[53];
  swift_bridgeObjectRetain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics();
    v7 = Array.description.getter();
    v9 = v8;

    v10 = sub_1000136BC(v7, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Analytics for group: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[87] = v11;
  *v11 = v0;
  v11[1] = sub_100272880;
  v12 = v0[33];
  v13 = v0[8];

  return sub_1002753C8(v1, v12);
}

uint64_t sub_100271F4C()
{
  v1 = *(v0 + 624);

  return _swift_task_switch(sub_100271FB4, 0, 0);
}

uint64_t sub_100271FB4()
{
  v1 = v0[75];
  v2 = v0[67];
  v3 = v0[61];
  v4 = v0[47];
  v5 = v0[33];
  v6 = v0[26];
  v7 = v0[20];
  v8 = v0[21];

  v1(v6, v7);
  sub_10000B3A8(v5, &unk_1016AF8B0, &unk_1013A0700);
  v30 = v0[80];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[36];
  v12 = v0[37];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100272168()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 376);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v2 + 136);
  (*(v5 + 16))(v3, *(v0 + 144) + *(v0 + 824), v4);
  v7 = (v1 + 24) & ~v1;
  v8 = swift_allocObject();
  *(v0 + 656) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v4);
  v9 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v10 = swift_task_alloc();
  *(v0 + 664) = v10;
  *v10 = v0;
  v10[1] = sub_1002722D4;
  v11 = *(v0 + 400);

  return v13(v0 + 56, &unk_101395B18, v8, v11);
}

uint64_t sub_1002722D4()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v9 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = sub_100272644;
  }

  else
  {
    v6 = *(v2 + 656);
    v7 = *(v2 + 376);

    v5 = sub_1002723FC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100272420()
{
  v21 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[33];
  v4 = v0[18];
  v5 = v0[14];
  sub_10000B3A8(v3, &unk_1016AF8B0, &unk_1013A0700);
  sub_10027E700(v4, v3, type metadata accessor for OwnedBeaconGroup);
  v2(v3, 0, 1, v5);
  v6 = v0[85];
  v0[86] = v6;
  v7 = v0[53];
  swift_bridgeObjectRetain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics();
    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_1000136BC(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Analytics for group: %s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {
  }

  v16 = swift_task_alloc();
  v0[87] = v16;
  *v16 = v0;
  v16[1] = sub_100272880;
  v17 = v0[33];
  v18 = v0[8];

  return sub_1002753C8(v6, v17);
}

uint64_t sub_100272644()
{
  v1 = *(v0 + 656);

  return _swift_task_switch(sub_1002726AC, 0, 0);
}

uint64_t sub_1002726AC()
{
  v1 = v0[75];
  v2 = v0[67];
  v3 = v0[61];
  v4 = v0[47];
  v5 = v0[33];
  v6 = v0[26];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[18];

  sub_10027E768(v9, type metadata accessor for OwnedBeaconGroup);
  v1(v6, v7);
  sub_10000B3A8(v5, &unk_1016AF8B0, &unk_1013A0700);
  v31 = v0[84];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[36];
  v13 = v0[37];
  v15 = v0[32];
  v14 = v0[33];
  v17 = v0[30];
  v16 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[24];
  v25 = v0[23];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100272880()
{
  v2 = *(*v1 + 696);
  v3 = *(*v1 + 688);
  v6 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v4 = sub_1002746B0;
  }

  else
  {
    v4 = sub_1002729B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002729B0()
{
  v1 = v0[75];
  v2 = v0[67];
  v3 = v0[61];
  v4 = v0[47];
  v5 = v0[33];
  v6 = v0[26];
  v7 = v0[20];
  v8 = v0[21];

  v1(v6, v7);
  sub_10000B3A8(v5, &unk_1016AF8B0, &unk_1013A0700);
  v10 = v0[40];
  v9 = v0[41];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[32];
  v14 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100272B5C()
{
  v1 = v0[67];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[89] = v3;
  v4 = sub_1000BC4D4(&qword_10169B778, &qword_101395240);
  v0[90] = v4;
  *v3 = v0;
  v3[1] = sub_100272C4C;
  v5 = v0[67];

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_10025B32C, v5, v4);
}

uint64_t sub_100272C4C()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return _swift_task_switch(sub_100272D64, v2, 0);
}

uint64_t sub_100272D88()
{
  v1 = v0[54];
  v2 = v0[9];
  v0[4] = v0[91];
  v3 = swift_task_alloc();
  v0[92] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to Sequence.asyncFirst(where:)[1];
  v5 = swift_task_alloc();
  v0[93] = v5;
  v6 = sub_1000041A4(&qword_10169BCE0, &qword_10169B778, &qword_101395240);
  *v5 = v0;
  v5[1] = sub_100272EA0;
  v7 = v0[90];
  v8 = v0[31];

  return Sequence.asyncFirst(where:)(v8, &unk_101395B00, v3, v7, v6);
}

uint64_t sub_100272EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 736);
    v7 = *(v2 + 728);

    return _swift_task_switch(sub_100272FE8, 0, 0);
  }
}

uint64_t sub_100272FE8()
{
  v55 = v0;
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
  sub_1000D2AD8(v2, v1, &unk_1016AF8B0, &unk_1013A0700);
  sub_10027DD80(v1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = *(v0 + 416);
    sub_10000B3A8(*(v0 + 240), &unk_1016AF8B0, &unk_1013A0700);
    if (*(v6 + 16))
    {
      v7 = *(v0 + 560);
      (*(v0 + 552))(*(v0 + 224), 1, 1, *(v0 + 112));
      v8 = swift_task_alloc();
      *(v0 + 800) = v8;
      *v8 = v0;
      v8[1] = sub_100273E18;
      v9 = *(v0 + 416);
      v10 = *(v0 + 224);
      v11 = *(v0 + 64);

      return sub_1002753C8(v9, v10);
    }

    else
    {
      v29 = *(v0 + 536);
      v30 = *(v0 + 488);
      v31 = *(v0 + 416);
      v32 = *(v0 + 376);
      v33 = *(v0 + 264);

      sub_10000B3A8(v33, &unk_1016AF8B0, &unk_1013A0700);
      v35 = *(v0 + 320);
      v34 = *(v0 + 328);
      v37 = *(v0 + 288);
      v36 = *(v0 + 296);
      v38 = *(v0 + 256);
      v39 = *(v0 + 264);
      v41 = *(v0 + 240);
      v40 = *(v0 + 248);
      v43 = *(v0 + 224);
      v42 = *(v0 + 232);
      v45 = *(v0 + 208);
      v46 = *(v0 + 200);
      v47 = *(v0 + 192);
      v48 = *(v0 + 184);
      v49 = *(v0 + 152);
      v50 = *(v0 + 144);
      v51 = *(v0 + 136);
      v52 = *(v0 + 128);
      v53 = *(v0 + 104);

      v44 = *(v0 + 8);

      return v44();
    }
  }

  else
  {
    v13 = *(v0 + 416);
    v14 = *(v0 + 424);
    v15 = *(v0 + 240);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);

    sub_10027E700(v15, v16, type metadata accessor for OwnedBeaconGroup);
    sub_10027E7C8(v16, v17, type metadata accessor for OwnedBeaconGroup);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 128);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136315138;
      v24 = sub_10051F7B0();
      v26 = v25;
      sub_10027E768(v21, type metadata accessor for OwnedBeaconGroup);
      v27 = sub_1000136BC(v24, v26, &v54);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Found beacon group %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {

      sub_10027E768(v21, type metadata accessor for OwnedBeaconGroup);
    }

    v28 = *(v0 + 376);
    *(v0 + 828) = *(*(v0 + 112) + 28);

    return _swift_task_switch(sub_100273458, v28, 0);
  }
}

uint64_t sub_100273458()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(v1 + 136);
  (*(v3 + 16))(v2, *(v0 + 136) + *(v0 + 828), v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 752) = v7;
  *(v7 + 16) = v1;
  (*(v3 + 32))(v7 + v6, v2, v4);
  v8 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v12 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v9 = swift_task_alloc();
  *(v0 + 760) = v9;
  *v9 = v0;
  v9[1] = sub_1002735C4;
  v10 = *(v0 + 400);

  return v12(v0 + 40, &unk_101395B08, v7, v10);
}

uint64_t sub_1002735C4()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v9 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = sub_1002738F4;
  }

  else
  {
    v6 = *(v2 + 752);
    v7 = *(v2 + 376);

    v5 = sub_1002736EC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100273710()
{
  v21 = v0;
  v1 = v0[97];
  v2 = v0[53];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[97];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics();
    v8 = Array.description.getter();
    v10 = sub_1000136BC(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Analytics for group: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[29];
  v14 = v0[14];
  sub_10027E7C8(v0[17], v13, type metadata accessor for OwnedBeaconGroup);
  v12(v13, 0, 1, v14);
  v15 = swift_task_alloc();
  v0[98] = v15;
  *v15 = v0;
  v15[1] = sub_100273B0C;
  v16 = v0[97];
  v17 = v0[29];
  v18 = v0[8];

  return sub_1002753C8(v16, v17);
}

uint64_t sub_1002738F4()
{
  v1 = *(v0 + 752);

  return _swift_task_switch(sub_10027395C, 0, 0);
}

uint64_t sub_10027395C()
{
  v1 = v0[67];
  v2 = v0[61];
  v3 = v0[47];
  v4 = v0[33];
  v5 = v0[17];

  sub_10027E768(v5, type metadata accessor for OwnedBeaconGroup);
  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);
  v27 = v0[96];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[36];
  v9 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  v15 = v0[28];
  v14 = v0[29];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100273B0C()
{
  v2 = *(*v1 + 784);
  v3 = *(*v1 + 776);
  v4 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 792) = v0;

  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);

  if (v0)
  {
    v5 = sub_100274864;
  }

  else
  {
    v5 = sub_100273C70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100273C70()
{
  v1 = v0[67];
  v2 = v0[61];
  v3 = v0[47];
  v4 = v0[33];
  v5 = v0[17];

  sub_10027E768(v5, type metadata accessor for OwnedBeaconGroup);
  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  v15 = v0[28];
  v14 = v0[29];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100273E18()
{
  v2 = *(*v1 + 800);
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 808) = v0;

  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);

  if (v0)
  {
    v5 = sub_100274A14;
  }

  else
  {
    v5 = sub_100273F7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100273F7C()
{
  v1 = v0[67];
  v2 = v0[61];
  v3 = v0[47];
  v4 = v0[33];

  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[32];
  v10 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v14 = v0[28];
  v13 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[16];
  v25 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100274104()
{
  v1 = v0[43];

  v23 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v5 = v0[37];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100274260()
{
  v1 = v0[47];

  v23 = v0[56];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v5 = v0[37];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002743BC()
{
  v1 = v0[57];
  v2 = v0[52];
  v3 = v0[47];

  v25 = v0[60];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[36];
  v7 = v0[37];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100274530()
{
  v1 = v0[65];
  v2 = v0[61];
  v3 = v0[52];
  v4 = v0[47];

  v26 = v0[68];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[36];
  v8 = v0[37];
  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v14 = v0[28];
  v13 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[16];
  v25 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002746B0()
{
  v1 = v0[75];
  v2 = v0[67];
  v3 = v0[61];
  v4 = v0[47];
  v5 = v0[33];
  v6 = v0[26];
  v7 = v0[20];
  v8 = v0[21];

  v1(v6, v7);
  sub_10000B3A8(v5, &unk_1016AF8B0, &unk_1013A0700);
  v30 = v0[88];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[36];
  v12 = v0[37];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100274864()
{
  v1 = v0[67];
  v2 = v0[61];
  v3 = v0[47];
  v4 = v0[33];
  v5 = v0[17];

  sub_10027E768(v5, type metadata accessor for OwnedBeaconGroup);
  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);
  v27 = v0[99];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[36];
  v9 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  v15 = v0[28];
  v14 = v0[29];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100274A14()
{
  v1 = v0[67];
  v2 = v0[61];
  v3 = v0[47];
  v4 = v0[33];

  sub_10000B3A8(v4, &unk_1016AF8B0, &unk_1013A0700);
  v26 = v0[101];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[36];
  v8 = v0[37];
  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v14 = v0[28];
  v13 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[16];
  v25 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100274BA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100274C64, 0, 0);
}

uint64_t sub_100274C64()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = type metadata accessor for CentralManager();
  v4 = sub_10027EB7C(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100274D78;
  v5 = v0[5];
  v6 = v0[2];

  return CentralManagerProtocol.await(state:)(v5, v3, v4);
}

uint64_t sub_100274D78()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100274F20, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_100274F20()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_100274F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for UUID();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[7] = v8;
  v9 = *(v8 - 8);
  v3[8] = v9;
  v10 = *(v9 + 64) + 15;
  v3[9] = swift_task_alloc();
  v11 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
  v12 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
  v15 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v13 = swift_task_alloc();
  v3[10] = v13;
  *v13 = v3;
  v13[1] = sub_10027511C;

  return v15(a1 + v11);
}

uint64_t sub_10027511C(uint64_t a1)
{
  v3 = *(*v2 + 80);
  v4 = *v2;
  v4[11] = a1;

  if (v1)
  {

    v5 = v4[9];
    v6 = v4[5];
    v7 = v4[6];

    v8 = v4[1];

    return v8(0);
  }

  else
  {

    return _swift_task_switch(sub_10027527C, 0, 0);
  }
}

uint64_t sub_10027527C()
{
  if (v0[11])
  {
    v2 = v0[8];
    v1 = v0[9];
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[2];
    v15 = v0[3];
    Peripheral.id.getter();
    Identifier.id.getter();
    (*(v2 + 8))(v1, v3);
    Identifier.id.getter();
    v8 = static UUID.== infix(_:_:)();

    v9 = *(v6 + 8);
    v9(v5, v15);
    v9(v4, v15);
  }

  else
  {
    v8 = 0;
  }

  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];

  v13 = v0[1];

  return v13(v8 & 1);
}

uint64_t sub_1002753C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002754F8, v2, 0);
}

uint64_t sub_1002754F8()
{
  v1 = v0[8];
  v22 = v0[7];
  v2 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for AnalyticsEvent(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v0[11] = v7;
  swift_defaultActor_initialize();
  *(v7 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v8 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(*(v9 - 8) + 56);
  v10(&v7[v8], 1, 1, v9);
  v10(&v7[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v9);
  *(v7 + 15) = 0xD00000000000002CLL;
  *(v7 + 16) = 0x800000010134D0D0;
  sub_10027DD80(v3, v2);
  if ((*(v1 + 48))(v2, 1, v22) == 1)
  {
    v11 = v0[2];
    sub_10000B3A8(v0[6], &unk_1016AF8B0, &unk_1013A0700);
    if (*(v11 + 16))
    {
      v12 = v0[2];

      v13 = swift_task_alloc();
      v0[29] = v13;
      *v13 = v0;
      v13[1] = sub_10027648C;
      v14 = v0[2];

      return sub_10116E9EC(v7, v14);
    }

    else
    {

      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[6];

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    sub_10027E700(v0[6], v0[10], type metadata accessor for OwnedBeaconGroup);
    v16 = async function pointer to daemon.getter[1];
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_100275808;

    return daemon.getter();
  }
}

uint64_t sub_100275808(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10027EB7C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_10027EB7C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1002759FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002759FC(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v5 = v4[4];

    return _swift_task_switch(sub_1002769C4, v5, 0);
  }

  else
  {
    v6 = v4[13];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[19] = v8;
    *v8 = v4;
    v8[1] = sub_100275B70;

    return daemon.getter();
  }
}

uint64_t sub_100275B70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_10027EB7C(&unk_1016B1030, 255, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_100275D28;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100275D28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v10 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100276A74;
  }

  else
  {
    v7 = v3[20];
    v8 = v3[4];

    v6 = sub_100275E50;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100275E50()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[10];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v0[24] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v4;
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_100275F30;
  v7 = v0[11];

  return sub_101162604(&unk_101395A68, v5);
}

uint64_t sub_100275F30()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v6 = v2[4];

    return _swift_task_switch(sub_100276B30, v6, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[27] = swift_allocObject();
    swift_defaultActor_initialize();
    v7 = swift_task_alloc();
    v2[28] = v7;
    *v7 = v4;
    v7[1] = sub_1002760EC;
    v8 = v2[11];

    return sub_101163F78(v8);
  }
}

uint64_t sub_1002760EC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100276218, v3, 0);
}

uint64_t sub_100276218()
{
  v24 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169BB90);
  sub_10027E7C8(v2, v1, type metadata accessor for OwnedBeaconGroup);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  v8 = v0[17];
  v9 = v0[11];
  v10 = v0[9];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = sub_10051F7B0();
    v15 = v14;
    sub_10027E768(v10, type metadata accessor for OwnedBeaconGroup);
    v16 = sub_1000136BC(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Published analytics for group: %s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {
    v17 = v0[17];

    sub_10027E768(v10, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10027E768(v0[10], type metadata accessor for OwnedBeaconGroup);
  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10027648C()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 16);
  v4 = *v1;
  v4[30] = v0;

  if (v0)
  {
    v5 = v4[4];

    return _swift_task_switch(sub_10027693C, v5, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v4[31] = swift_allocObject();
    swift_defaultActor_initialize();
    v6 = swift_task_alloc();
    v4[32] = v6;
    *v6 = v4;
    v6[1] = sub_100276644;
    v7 = v4[11];

    return sub_101163F78(v7);
  }
}

uint64_t sub_100276644()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100276770, v3, 0);
}

uint64_t sub_100276770()
{
  v19 = v0;
  if (qword_101694508 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10169BB90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    type metadata accessor for AccessoryPairingAnalytics();
    v10 = Array.description.getter();
    v12 = sub_1000136BC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Published analytics: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10027693C()
{
  v1 = v0[11];

  v2 = v0[30];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002769C4()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];

  sub_10027E768(v3, type metadata accessor for OwnedBeaconGroup);
  v4 = v0[18];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100276A74()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];

  sub_10027E768(v4, type metadata accessor for OwnedBeaconGroup);
  v5 = v0[23];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100276B30()
{
  v1 = v0[22];
  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];

  sub_10027E768(v4, type metadata accessor for OwnedBeaconGroup);
  v5 = v0[26];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100276BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  v4 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169BCB8, &unk_101395A70);
  v3[63] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryPairingAnalytics();
  v3[66] = v7;
  v8 = *(v7 - 8);
  v3[67] = v8;
  v9 = *(v8 + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[72] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[73] = swift_task_alloc();
  v12 = type metadata accessor for OwnedBeaconRecord();
  v3[74] = v12;
  v13 = *(v12 - 8);
  v3[75] = v13;
  v14 = *(v13 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v3[78] = v15;
  v16 = *(v15 - 8);
  v3[79] = v16;
  v3[80] = *(v16 + 64);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v17 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v18 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v3[84] = v18;
  v19 = *(v18 - 8);
  v3[85] = v19;
  v20 = *(v19 + 64) + 15;
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80) - 8) + 64) + 15;
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();

  return _swift_task_switch(sub_100276F4C, 0, 0);
}

uint64_t sub_100276F4C()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 680);
  v3 = *(v0 + 472);
  v4 = *(v3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  *(v0 + 736) = v4;
  v5 = *(v4 + 32);
  *(v0 + 77) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 744) = _swiftEmptyDictionarySingleton;

  if (v8)
  {
    v10 = 0;
LABEL_8:
    v13 = *(v0 + 712);
    v14 = (v8 - 1) & v8;
    v15 = __clz(__rbit64(v8)) | (v10 << 6);
    v16 = (*(v9 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_10027E7C8(*(v9 + 56) + *(v2 + 72) * v15, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
    v19 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v20 = *(v19 + 48);
    *v1 = v17;
    v1[1] = v18;
    sub_10027E700(v13, v1 + v20, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v19 - 8) + 56))(v1, 0, 1, v19);
    sub_100017D5C(v17, v18);
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 72 + 8 * v11++);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v70 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    (*(*(v70 - 8) + 56))(v1, 1, 1, v70);
    v14 = 0;
  }

  *(v0 + 760) = v12;
  *(v0 + 752) = v14;
  v21 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v21, &unk_1016BBEA0, &unk_101395A80);
  v22 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 720);
    v26 = *(v0 + 712);
    v27 = *(v0 + 704);
    v28 = *(v0 + 696);
    v29 = *(v0 + 688);
    v30 = *(v0 + 664);
    v31 = *(v0 + 656);
    v32 = *(v0 + 648);
    v74 = *(v0 + 616);
    v75 = *(v0 + 608);
    v76 = *(v0 + 584);
    v77 = *(v0 + 568);
    v78 = *(v0 + 560);
    v79 = *(v0 + 552);
    v80 = *(v0 + 544);
    v81 = *(v0 + 520);
    v82 = *(v0 + 512);
    v83 = *(v0 + 496);

    v33 = *(v0 + 8);

    return v33(_swiftEmptyDictionarySingleton);
  }

  else
  {
    v35 = *(v0 + 728);
    v36 = *(v0 + 704);
    v37 = *v35;
    *(v0 + 768) = *v35;
    v38 = v35[1];
    *(v0 + 776) = v38;
    sub_10027E700(v35 + *(v22 + 48), v36, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (qword_101694508 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 704);
    v40 = *(v0 + 696);
    v41 = type metadata accessor for Logger();
    *(v0 + 784) = sub_1000076D4(v41, qword_10169BB90);
    sub_10027E7C8(v39, v40, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100017D5C(v37, v38);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    sub_100016590(v37, v38);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 664);
      v45 = swift_slowAlloc();
      *(v0 + 464) = swift_slowAlloc();
      *v45 = 136315394;
      sub_100017D5C(v37, v38);
      static String.Encoding.utf8.getter();
      v46 = String.init(data:encoding:)();
      if (!v47)
      {
        v46 = Data.hexString.getter();
      }

      v48 = v46;
      v49 = v47;
      sub_100016590(v37, v38);
      v50 = *(v0 + 696);
      v51 = sub_1000136BC(v48, v49, (v0 + 464));

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      v53 = sub_10051C934(v52);
      v55 = v54;
      sub_10027E768(v50, type metadata accessor for OwnedBeaconGroup.PairingState);
      v56 = sub_1000136BC(v53, v55, (v0 + 464));

      *(v45 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v42, v43, "serialNumber:%s pairingState:%s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v57 = *(v0 + 696);

      sub_10027E768(v57, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    v58 = *(v0 + 672);
    sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v60 = *(v0 + 688);
        v61 = *(v0 + 656);
        v62 = *(v0 + 632);
        v63 = *(v0 + 624);
        v64 = *(v0 + 480);
        v65 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        *(v0 + 792) = v65;
        sub_100006654(*(v60 + *(v65 + 64)), *(v60 + *(v65 + 64) + 8));
        v66 = (v60 + *(v65 + 96));
        *(v0 + 78) = *v66;
        *(v0 + 79) = v66[1];
        v67 = *(v62 + 32);
        *(v0 + 800) = v67;
        *(v0 + 808) = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v67(v61, v60, v63);
        v68 = sub_1002776C8;
        v69 = v64;
      }

      else
      {
        v69 = *(v0 + 488);
        v68 = sub_10027A390;
      }
    }

    else
    {
      v71 = *(v0 + 688);
      v72 = *(v0 + 488);
      v73 = (v71 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      *(v0 + 122) = *v73;
      *(v0 + 123) = v73[1];
      v68 = sub_100278770;
      v69 = v72;
    }

    return _swift_task_switch(v68, v69, 0);
  }
}

uint64_t sub_1002776C8()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[60];
  (*(v5 + 16))(v3, v0[82], v6);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v0[102] = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v3, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[103] = v11;
  *v11 = v0;
  v11[1] = sub_10027782C;
  v12 = v0[73];
  v13 = v0[72];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10027DF50, v9, v13);
}

uint64_t sub_10027782C()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 816);
  v4 = *v0;

  return _swift_task_switch(sub_100277944, 0, 0);
}

uint64_t sub_100277944()
{
  v164 = v0;
  v1 = *(v0 + 584);
  v2 = "v32@0:8@NISession16q24" + 15;
  if ((*(*(v0 + 600) + 48))(v1, 1, *(v0 + 592)) == 1)
  {
    (*(*(v0 + 632) + 8))(*(v0 + 656), *(v0 + 624));
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = *(v0 + 744);
  }

  else
  {
    v4 = *(v0 + 784);
    v5 = *(v0 + 616);
    v6 = *(v0 + 608);
    sub_10027E700(v1, v5, type metadata accessor for OwnedBeaconRecord);
    sub_10027E7C8(v5, v6, type metadata accessor for OwnedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 624);
      v10 = *(v0 + 608);
      v11 = *(v0 + 592);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v163 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v14 = *(v11 + 20);
      sub_10027EB7C(&qword_101696930, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_10027E768(v10, type metadata accessor for OwnedBeaconRecord);
      v18 = sub_1000136BC(v15, v17, &v163);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found paired beacon %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {
      v19 = *(v0 + 608);

      sub_10027E768(v19, type metadata accessor for OwnedBeaconRecord);
    }

    v20 = *(v0 + 744);
    v160 = *(v0 + 656);
    v21 = *(v0 + 632);
    v154 = v21;
    v157 = *(v0 + 624);
    v22 = *(v0 + 616);
    v23 = *(v0 + 592);
    if (*(v0 + 79))
    {
      v24 = -1;
    }

    else
    {
      v24 = *(v0 + 78);
    }

    v149 = v24;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    *(v0 + 75) = v24;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_100008C00();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = String.init(format:arguments:)();
    v32 = v31;

    v33 = *(v22 + *(v23 + 68));
    v34 = sub_1000DFAD8();
    *(v0 + 368) = v33;
    *(v0 + 392) = &type metadata for Int;
    *(v0 + 400) = v34;
    *(v0 + 408) = 2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v20;
    sub_100FFC070((v0 + 368), v30, v32, isUniquelyReferenced_nonNull_native);

    v36 = v163;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    *(v0 + 76) = v149;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v29;
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    v40 = String.init(format:arguments:)();
    v42 = v41;

    v43 = (v22 + *(v23 + 60));
    v45 = *v43;
    v44 = v43[1];
    v46 = sub_1000DF96C();
    *(v0 + 416) = v45;
    *(v0 + 424) = v44;
    *(v0 + 440) = &type metadata for String;
    *(v0 + 448) = v46;
    *(v0 + 456) = 1;

    v47 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v36;
    sub_100FFC070((v0 + 416), v40, v42, v47);
    v2 = "ion16q24";

    sub_10027E768(v22, type metadata accessor for OwnedBeaconRecord);
    (*(v154 + 8))(v160, v157);
    v3 = v163;
  }

  sub_10000B3A8(*(v0 + 688) + *(*(v0 + 792) + 48), &qword_1016A40D0, &unk_10138BE70);
  if (*(v0 + 79))
  {
    v48 = -1;
  }

  else
  {
    v48 = *(v0 + 78);
  }

  v152 = v48;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v49 = swift_allocObject();
  v150 = *(v2 + 216);
  *(v49 + 16) = v150;
  *(v0 + 58) = v48;
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v52 = v51;
  *(v49 + 56) = &type metadata for String;
  v53 = sub_100008C00();
  *(v49 + 64) = v53;
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  v54 = String.init(format:arguments:)();
  v56 = v55;

  v155 = *(v0 + 768);
  v158 = *(v0 + 776);
  v57 = *(v0 + 664);
  v58 = sub_1000DF96C();
  *(v0 + 16) = 0x646572696170;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v58;
  v161 = v58;
  *(v0 + 56) = 1;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v3;
  sub_100FFC070((v0 + 16), v54, v56, v59);

  v60 = v163;
  v61 = swift_allocObject();
  *(v61 + 16) = v150;
  *(v0 + 59) = v152;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v61 + 56) = &type metadata for String;
  *(v61 + 64) = v53;
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  v64 = String.init(format:arguments:)();
  v66 = v65;

  static String.Encoding.utf8.getter();
  v67 = String.init(data:encoding:)();
  if (!v68)
  {
    v69 = *(v0 + 776);
    v70 = *(v0 + 768);
    v67 = Data.hexString.getter();
  }

  *(v0 + 80) = v67;
  *(v0 + 88) = v68;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v161;
  *(v0 + 120) = 1;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v60;
  sub_100FFC070((v0 + 80), v64, v66, v71);

  v72 = v163;
  v73 = *(v0 + 776);
  v74 = *(v0 + 768);
  sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100016590(v74, v73);
  v75 = *(v0 + 760);
  v76 = *(v0 + 752);
  *(v0 + 744) = v72;
  if (!v76)
  {
    v78 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v78 <= v75 + 1)
    {
      v79 = v75 + 1;
    }

    else
    {
      v79 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v80 = v79 - 1;
    while (1)
    {
      v81 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v81 >= v78)
      {
        v138 = *(v0 + 720);
        v139 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v139 - 8) + 56))(v138, 1, 1, v139);
        v84 = 0;
        goto LABEL_26;
      }

      v77 = *(v0 + 736);
      v76 = *(v77 + 8 * v81 + 64);
      ++v75;
      if (v76)
      {
        v75 = v81;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_31;
  }

  v77 = *(v0 + 736);
LABEL_25:
  v82 = *(v0 + 720);
  v83 = *(v0 + 712);
  v84 = (v76 - 1) & v76;
  v85 = __clz(__rbit64(v76)) | (v75 << 6);
  v86 = (*(v77 + 48) + 16 * v85);
  v87 = *v86;
  v88 = v86[1];
  sub_10027E7C8(*(v77 + 56) + *(*(v0 + 680) + 72) * v85, v83, type metadata accessor for OwnedBeaconGroup.PairingState);
  v89 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v90 = *(v89 + 48);
  *v82 = v87;
  v82[1] = v88;
  sub_10027E700(v83, v82 + v90, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v89 - 8) + 56))(v82, 0, 1, v89);
  sub_100017D5C(v87, v88);
  v80 = v75;
LABEL_26:
  *(v0 + 760) = v80;
  *(v0 + 752) = v84;
  v91 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v91, &unk_1016BBEA0, &unk_101395A80);
  v92 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
  {
    v93 = *(v0 + 736);
    v162 = v72;
    v94 = *(v0 + 728);
    v95 = *(v0 + 720);
    v96 = *(v0 + 712);
    v97 = *(v0 + 704);
    v98 = *(v0 + 696);
    v99 = *(v0 + 688);
    v100 = *(v0 + 664);
    v101 = *(v0 + 656);
    v102 = *(v0 + 648);
    v143 = *(v0 + 616);
    v144 = *(v0 + 608);
    v145 = *(v0 + 584);
    v146 = *(v0 + 568);
    v147 = *(v0 + 560);
    v148 = *(v0 + 552);
    v151 = *(v0 + 544);
    v153 = *(v0 + 520);
    v156 = *(v0 + 512);
    v159 = *(v0 + 496);

    v103 = *(v0 + 8);

    return v103(v162);
  }

  v105 = *(v0 + 728);
  v106 = *(v0 + 704);
  v80 = *v105;
  *(v0 + 768) = *v105;
  v66 = v105[1];
  *(v0 + 776) = v66;
  sub_10027E700(v105 + *(v92 + 48), v106, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_46;
  }

LABEL_31:
  v107 = *(v0 + 704);
  v108 = *(v0 + 696);
  v109 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v109, qword_10169BB90);
  sub_10027E7C8(v107, v108, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v80, v66);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  sub_100016590(v80, v66);
  if (os_log_type_enabled(v110, v111))
  {
    v112 = *(v0 + 664);
    v113 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v113 = 136315394;
    sub_100017D5C(v80, v66);
    static String.Encoding.utf8.getter();
    v114 = String.init(data:encoding:)();
    if (!v115)
    {
      v114 = Data.hexString.getter();
    }

    v116 = v114;
    v117 = v115;
    sub_100016590(v80, v66);
    v118 = *(v0 + 696);
    v119 = sub_1000136BC(v116, v117, (v0 + 464));

    *(v113 + 4) = v119;
    *(v113 + 12) = 2080;
    v121 = sub_10051C934(v120);
    v123 = v122;
    sub_10027E768(v118, type metadata accessor for OwnedBeaconGroup.PairingState);
    v124 = sub_1000136BC(v121, v123, (v0 + 464));

    *(v113 + 14) = v124;
    _os_log_impl(&_mh_execute_header, v110, v111, "serialNumber:%s pairingState:%s", v113, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v125 = *(v0 + 696);

    sub_10027E768(v125, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v126 = *(v0 + 672);
  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v128 = *(v0 + 688);
      v129 = *(v0 + 656);
      v130 = *(v0 + 632);
      v131 = *(v0 + 624);
      v132 = *(v0 + 480);
      v133 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v0 + 792) = v133;
      sub_100006654(*(v128 + *(v133 + 64)), *(v128 + *(v133 + 64) + 8));
      v134 = (v128 + *(v133 + 96));
      *(v0 + 78) = *v134;
      *(v0 + 79) = v134[1];
      v135 = *(v130 + 32);
      *(v0 + 800) = v135;
      *(v0 + 808) = (v130 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v135(v129, v128, v131);
      v136 = sub_1002776C8;
      v137 = v132;
    }

    else
    {
      v137 = *(v0 + 488);
      v136 = sub_10027A390;
    }
  }

  else
  {
    v140 = *(v0 + 688);
    v141 = *(v0 + 488);
    v142 = (v140 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v0 + 122) = *v142;
    *(v0 + 123) = v142[1];
    v136 = sub_100278770;
    v137 = v141;
  }

  return _swift_task_switch(v136, v137, 0);
}

uint64_t sub_100278770()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[61];
  v4 = *(v3 + 136);
  v5 = swift_allocObject();
  v0[104] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  sub_100017D5C(v2, v1);
  v6 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v11 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v7 = swift_task_alloc();
  v0[105] = v7;
  *v7 = v0;
  v7[1] = sub_100278890;
  v8 = v0[65];
  v9 = v0[63];

  return (v11)(v8, &unk_101395A98, v5, v9);
}

uint64_t sub_100278890()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;

  v5 = *(v2 + 832);
  if (v0)
  {

    v6 = sub_100279978;
  }

  else
  {

    v6 = sub_1002789D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002789D8()
{
  v181 = v0;
  v1 = *(v0 + 520);
  v2 = "v32@0:8@NISession16q24" + 15;
  if ((*(*(v0 + 536) + 48))(v1, 1, *(v0 + 528)) == 1)
  {
    v3 = *(v0 + 123);
    v4 = *(v0 + 122);
    v5 = *(v0 + 688);
    sub_10000B3A8(v1, &qword_10169BCB8, &unk_101395A70);
    if (v3)
    {
      v6 = -1;
    }

    else
    {
      v6 = v4;
    }

    sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
    v168 = 0;
    v162 = 0;
    v164 = *(v0 + 744);
    v7 = 2;
    goto LABEL_15;
  }

  v8 = *(v0 + 784);
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  sub_10027E700(v1, v9, type metadata accessor for AccessoryPairingAnalytics);
  sub_10027E7C8(v9, v10, type metadata accessor for AccessoryPairingAnalytics);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 560);
  if (!v13)
  {

    sub_10027E768(v14, type metadata accessor for AccessoryPairingAnalytics);
    if (*(v0 + 123))
    {
      goto LABEL_8;
    }

LABEL_10:
    v23 = (v0 + 122);
    v21 = *(v0 + 568);
    v22 = *(v0 + 528);
    goto LABEL_11;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v180 = v16;
  *v15 = 136315138;
  v17 = sub_10111CE44();
  v19 = v18;
  sub_10027E768(v14, type metadata accessor for AccessoryPairingAnalytics);
  v20 = sub_1000136BC(v17, v19, &v180);

  *(v15 + 4) = v20;
  _os_log_impl(&_mh_execute_header, v11, v12, "Found unpaired analytics %s", v15, 0xCu);
  sub_100007BAC(v16);

  if ((*(v0 + 123) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = *(v0 + 568);
  v22 = *(v0 + 528);
  v23 = (v21 + v22[6]);
LABEL_11:
  v24 = *v23;
  v177 = *v23;
  v175 = *(v0 + 688);
  v25 = *(v0 + 496);
  v170 = *(v0 + 744);
  v26 = (v21 + v22[13]);
  v27 = v26[1];
  v160 = v22;
  v162 = *v26;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  *(v0 + 73) = v24;
  v168 = v27;

  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v32 = sub_100008C00();
  *(v28 + 64) = v32;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v33 = String.init(format:arguments:)();
  v35 = v34;

  sub_100313B54(*(v21 + v22[9]), *(v21 + v22[9] + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  v36 = *(v0 + 68);
  if (*(v0 + 72))
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v0 + 68);
  }

  v38 = sub_1000DFAD8();
  *(v0 + 272) = v37;
  *(v0 + 296) = &type metadata for Int;
  *(v0 + 304) = v38;
  *(v0 + 312) = 2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v180 = v170;
  v40 = v33;
  v6 = v177;
  sub_100FFC070((v0 + 272), v40, v35, isUniquelyReferenced_nonNull_native);

  v41 = v180;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_101385D80;
  *(v0 + 74) = v177;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v32;
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  v45 = String.init(format:arguments:)();
  v47 = v46;

  v48 = (v21 + v160[8]);
  v50 = *v48;
  v49 = v48[1];
  v51 = sub_1000DF96C();
  *(v0 + 320) = v50;
  *(v0 + 328) = v49;
  *(v0 + 344) = &type metadata for String;
  *(v0 + 352) = v51;
  *(v0 + 360) = 1;

  v52 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v41;
  sub_100FFC070((v0 + 320), v45, v47, v52);
  v2 = "ion16q24";

  v164 = v180;
  v7 = *(v21 + v160[10]);
  sub_10027E768(v21, type metadata accessor for AccessoryPairingAnalytics);
  sub_10000B3A8(v175, &qword_1016A40D0, &unk_10138BE70);
LABEL_15:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v53 = swift_allocObject();
  v173 = *(v2 + 216);
  *(v53 + 16) = v173;
  *(v0 + 58) = v6;
  v54 = dispatch thunk of CustomStringConvertible.description.getter();
  v56 = v55;
  *(v53 + 56) = &type metadata for String;
  v171 = sub_100008C00();
  *(v53 + 64) = v171;
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  v57 = String.init(format:arguments:)();
  v59 = v58;

  v178 = v6;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v60 = 0xE800000000000000;
      v61 = 0x6465726961706E75;
      goto LABEL_23;
    }

    v60 = 0xE600000000000000;
    v62 = 1801678700;
  }

  else
  {
    if (!v7)
    {
      v60 = 0xE700000000000000;
      v61 = 0x6E776F6E6B6E75;
      goto LABEL_23;
    }

    v60 = 0xE600000000000000;
    v62 = 1919508848;
  }

  v61 = v62 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
LABEL_23:
  v63 = *(v0 + 776);
  v64 = *(v0 + 768);
  v65 = *(v0 + 664);
  v66 = sub_1000DF96C();
  *(v0 + 16) = v61;
  *(v0 + 24) = v60;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v66;
  v166 = v66;
  *(v0 + 56) = 1;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v164;
  sub_100FFC070((v0 + 16), v57, v59, v67);

  v68 = v180;
  v69 = swift_allocObject();
  *(v69 + 16) = v173;
  *(v0 + 59) = v6;
  v70 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v69 + 56) = &type metadata for String;
  *(v69 + 64) = v171;
  *(v69 + 32) = v70;
  *(v69 + 40) = v71;
  v72 = String.init(format:arguments:)();
  v74 = v73;

  static String.Encoding.utf8.getter();
  v75 = String.init(data:encoding:)();
  if (!v76)
  {
    v77 = *(v0 + 776);
    v78 = *(v0 + 768);
    v75 = Data.hexString.getter();
  }

  *(v0 + 80) = v75;
  *(v0 + 88) = v76;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v166;
  *(v0 + 120) = 1;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v68;
  sub_100FFC070((v0 + 80), v72, v74, v79);

  v80 = v180;
  v81 = *(v0 + 776);
  v82 = *(v0 + 768);
  v83 = *(v0 + 704);
  if (v168)
  {
    v84 = swift_allocObject();
    *(v84 + 16) = v173;
    *(v0 + 65) = v178;
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = v171;
    *(v84 + 32) = v85;
    *(v84 + 40) = v86;
    v87 = String.init(format:arguments:)();
    v74 = v88;

    *(v0 + 128) = v162;
    *(v0 + 136) = v168;
    *(v0 + 152) = &type metadata for String;
    *(v0 + 160) = v166;
    *(v0 + 168) = 1;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v80;
    sub_100FFC070((v0 + 128), v87, v74, v89);

    sub_100016590(v82, v81);
    sub_10027E768(v83, type metadata accessor for OwnedBeaconGroup.PairingState);
    v80 = v180;
  }

  else
  {
    sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100016590(v82, v81);
  }

  v90 = *(v0 + 760);
  v91 = *(v0 + 752);
  *(v0 + 744) = v80;
  v179 = v80;
  if (!v91)
  {
    v93 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v93 <= v90 + 1)
    {
      v94 = v90 + 1;
    }

    else
    {
      v94 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v95 = v94 - 1;
    while (1)
    {
      v96 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v96 >= v93)
      {
        v153 = *(v0 + 720);
        v154 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v154 - 8) + 56))(v153, 1, 1, v154);
        v99 = 0;
        goto LABEL_39;
      }

      v92 = *(v0 + 736);
      v91 = *(v92 + 8 * v96 + 64);
      ++v90;
      if (v91)
      {
        v90 = v96;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
    goto LABEL_44;
  }

  v92 = *(v0 + 736);
LABEL_38:
  v97 = *(v0 + 720);
  v98 = *(v0 + 712);
  v99 = (v91 - 1) & v91;
  v100 = __clz(__rbit64(v91)) | (v90 << 6);
  v101 = (*(v92 + 48) + 16 * v100);
  v102 = *v101;
  v103 = v101[1];
  sub_10027E7C8(*(v92 + 56) + *(*(v0 + 680) + 72) * v100, v98, type metadata accessor for OwnedBeaconGroup.PairingState);
  v104 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v105 = *(v104 + 48);
  *v97 = v102;
  v97[1] = v103;
  sub_10027E700(v98, v97 + v105, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v104 - 8) + 56))(v97, 0, 1, v104);
  sub_100017D5C(v102, v103);
  v95 = v90;
LABEL_39:
  *(v0 + 760) = v95;
  *(v0 + 752) = v99;
  v106 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v106, &unk_1016BBEA0, &unk_101395A80);
  v107 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
  {
    v108 = *(v0 + 736);
    v109 = *(v0 + 728);
    v110 = *(v0 + 720);
    v111 = *(v0 + 712);
    v112 = *(v0 + 704);
    v113 = *(v0 + 696);
    v114 = *(v0 + 688);
    v115 = *(v0 + 664);
    v116 = *(v0 + 656);
    v117 = *(v0 + 648);
    v158 = *(v0 + 616);
    v159 = *(v0 + 608);
    v161 = *(v0 + 584);
    v163 = *(v0 + 568);
    v165 = *(v0 + 560);
    v167 = *(v0 + 552);
    v169 = *(v0 + 544);
    v172 = *(v0 + 520);
    v174 = *(v0 + 512);
    v176 = *(v0 + 496);

    v118 = *(v0 + 8);

    return v118(v179);
  }

  v120 = *(v0 + 728);
  v121 = *(v0 + 704);
  v90 = *v120;
  *(v0 + 768) = *v120;
  v74 = v120[1];
  *(v0 + 776) = v74;
  sub_10027E700(v120 + *(v107 + 48), v121, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_59;
  }

LABEL_44:
  v122 = *(v0 + 704);
  v123 = *(v0 + 696);
  v124 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v124, qword_10169BB90);
  sub_10027E7C8(v122, v123, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v90, v74);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();
  sub_100016590(v90, v74);
  if (os_log_type_enabled(v125, v126))
  {
    v127 = *(v0 + 664);
    v128 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v128 = 136315394;
    sub_100017D5C(v90, v74);
    static String.Encoding.utf8.getter();
    v129 = String.init(data:encoding:)();
    if (!v130)
    {
      v129 = Data.hexString.getter();
    }

    v131 = v129;
    v132 = v130;
    sub_100016590(v90, v74);
    v133 = *(v0 + 696);
    v134 = sub_1000136BC(v131, v132, (v0 + 464));

    *(v128 + 4) = v134;
    *(v128 + 12) = 2080;
    v136 = sub_10051C934(v135);
    v138 = v137;
    sub_10027E768(v133, type metadata accessor for OwnedBeaconGroup.PairingState);
    v139 = sub_1000136BC(v136, v138, (v0 + 464));

    *(v128 + 14) = v139;
    _os_log_impl(&_mh_execute_header, v125, v126, "serialNumber:%s pairingState:%s", v128, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v140 = *(v0 + 696);

    sub_10027E768(v140, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v141 = *(v0 + 672);
  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v143 = *(v0 + 688);
      v144 = *(v0 + 656);
      v145 = *(v0 + 632);
      v146 = *(v0 + 624);
      v147 = *(v0 + 480);
      v148 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v0 + 792) = v148;
      sub_100006654(*(v143 + *(v148 + 64)), *(v143 + *(v148 + 64) + 8));
      v149 = (v143 + *(v148 + 96));
      *(v0 + 78) = *v149;
      *(v0 + 79) = v149[1];
      v150 = *(v145 + 32);
      *(v0 + 800) = v150;
      *(v0 + 808) = (v145 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v150(v144, v143, v146);
      v151 = sub_1002776C8;
      v152 = v147;
    }

    else
    {
      v152 = *(v0 + 488);
      v151 = sub_10027A390;
    }
  }

  else
  {
    v155 = *(v0 + 688);
    v156 = *(v0 + 488);
    v157 = (v155 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v0 + 122) = *v157;
    *(v0 + 123) = v157[1];
    v151 = sub_100278770;
    v152 = v156;
  }

  return _swift_task_switch(v151, v152, 0);
}

uint64_t sub_100279978()
{
  v1 = v0;
  (*(*(v0 + 536) + 56))(*(v0 + 520), 1, 1, *(v0 + 528));
  v2 = *(v0 + 123);
  v3 = *(v1 + 122);
  v4 = *(v1 + 688);
  sub_10000B3A8(*(v1 + 520), &qword_10169BCB8, &unk_101395A70);
  if (v2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v3;
  }

  v107 = v5;
  sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
  v6 = *(v1 + 744);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v1 + 58) = v5;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = String.init(format:arguments:)();
  v14 = v13;

  v109 = *(v1 + 768);
  v111 = *(v1 + 776);
  v15 = *(v1 + 664);
  v16 = sub_1000DF96C();
  *(v1 + 16) = 0x6465726961706E75;
  *(v1 + 24) = 0xE800000000000000;
  *(v1 + 40) = &type metadata for String;
  *(v1 + 48) = v16;
  *(v1 + 56) = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v1 + 16), v12, v14, isUniquelyReferenced_nonNull_native);

  v18 = swift_allocObject();
  *(v1 + 59) = v107;
  *(v18 + 16) = xmmword_101385D80;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v11;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = String.init(format:arguments:)();
  v23 = v22;

  static String.Encoding.utf8.getter();
  v24 = String.init(data:encoding:)();
  if (!v25)
  {
    v26 = *(v1 + 776);
    v27 = *(v1 + 768);
    v24 = Data.hexString.getter();
  }

  *(v1 + 80) = v24;
  *(v1 + 88) = v25;
  *(v1 + 104) = &type metadata for String;
  *(v1 + 112) = v16;
  *(v1 + 120) = 1;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v1 + 80), v21, v23, v28);

  v29 = v6;
  v30 = *(v1 + 776);
  v31 = *(v1 + 768);
  sub_10027E768(*(v1 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100016590(v31, v30);
  v32 = *(v1 + 760);
  v33 = *(v1 + 752);
  *(v1 + 744) = v6;
  v113 = v6;
  if (!v33)
  {
    v35 = ((1 << *(v1 + 77)) + 63) >> 6;
    if (v35 <= v32 + 1)
    {
      v36 = v32 + 1;
    }

    else
    {
      v36 = ((1 << *(v1 + 77)) + 63) >> 6;
    }

    v37 = v36 - 1;
    while (1)
    {
      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        v95 = *(v1 + 720);
        v96 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v96 - 8) + 56))(v95, 1, 1, v96);
        v41 = 0;
        goto LABEL_17;
      }

      v34 = *(v1 + 736);
      v33 = *(v34 + 8 * v38 + 64);
      ++v32;
      if (v33)
      {
        v32 = v38;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_22;
  }

  v34 = *(v1 + 736);
LABEL_16:
  v39 = *(v1 + 720);
  v40 = *(v1 + 712);
  v41 = (v33 - 1) & v33;
  v42 = __clz(__rbit64(v33)) | (v32 << 6);
  v43 = (*(v34 + 48) + 16 * v42);
  v44 = *v43;
  v45 = v43[1];
  sub_10027E7C8(*(v34 + 56) + *(*(v1 + 680) + 72) * v42, v40, type metadata accessor for OwnedBeaconGroup.PairingState);
  v46 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v47 = *(v46 + 48);
  *v39 = v44;
  v39[1] = v45;
  sub_10027E700(v40, v39 + v47, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
  sub_100017D5C(v44, v45);
  v37 = v32;
LABEL_17:
  *(v1 + 760) = v37;
  *(v1 + 752) = v41;
  v48 = *(v1 + 728);
  sub_1000D2AD8(*(v1 + 720), v48, &unk_1016BBEA0, &unk_101395A80);
  v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    v50 = *(v1 + 736);
    v51 = *(v1 + 728);
    v52 = *(v1 + 720);
    v53 = *(v1 + 712);
    v54 = *(v1 + 704);
    v55 = *(v1 + 696);
    v56 = *(v1 + 688);
    v57 = *(v1 + 664);
    v58 = *(v1 + 656);
    v59 = *(v1 + 648);
    v100 = *(v1 + 616);
    v101 = *(v1 + 608);
    v102 = *(v1 + 584);
    v103 = *(v1 + 568);
    v104 = *(v1 + 560);
    v105 = *(v1 + 552);
    v106 = *(v1 + 544);
    v108 = *(v1 + 520);
    v110 = *(v1 + 512);
    v112 = *(v1 + 496);

    v60 = *(v1 + 8);

    return v60(v113);
  }

  v62 = *(v1 + 728);
  v63 = *(v1 + 704);
  v37 = *v62;
  *(v1 + 768) = *v62;
  v29 = v62[1];
  *(v1 + 776) = v29;
  sub_10027E700(v62 + *(v49 + 48), v63, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_37;
  }

LABEL_22:
  v64 = *(v1 + 704);
  v65 = *(v1 + 696);
  v66 = type metadata accessor for Logger();
  *(v1 + 784) = sub_1000076D4(v66, qword_10169BB90);
  sub_10027E7C8(v64, v65, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v37, v29);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  sub_100016590(v37, v29);
  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v1 + 664);
    v70 = swift_slowAlloc();
    *(v1 + 464) = swift_slowAlloc();
    *v70 = 136315394;
    sub_100017D5C(v37, v29);
    static String.Encoding.utf8.getter();
    v71 = String.init(data:encoding:)();
    if (!v72)
    {
      v71 = Data.hexString.getter();
    }

    v73 = v71;
    v74 = v72;
    sub_100016590(v37, v29);
    v75 = *(v1 + 696);
    v76 = sub_1000136BC(v73, v74, (v1 + 464));

    *(v70 + 4) = v76;
    *(v70 + 12) = 2080;
    v78 = sub_10051C934(v77);
    v80 = v79;
    sub_10027E768(v75, type metadata accessor for OwnedBeaconGroup.PairingState);
    v81 = sub_1000136BC(v78, v80, (v1 + 464));

    *(v70 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v67, v68, "serialNumber:%s pairingState:%s", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v82 = *(v1 + 696);

    sub_10027E768(v82, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v83 = *(v1 + 672);
  sub_10027E7C8(*(v1 + 704), *(v1 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v85 = *(v1 + 688);
      v86 = *(v1 + 656);
      v87 = *(v1 + 632);
      v88 = *(v1 + 624);
      v89 = *(v1 + 480);
      v90 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v1 + 792) = v90;
      sub_100006654(*(v85 + *(v90 + 64)), *(v85 + *(v90 + 64) + 8));
      v91 = (v85 + *(v90 + 96));
      *(v1 + 78) = *v91;
      *(v1 + 79) = v91[1];
      v92 = *(v87 + 32);
      *(v1 + 800) = v92;
      *(v1 + 808) = (v87 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v92(v86, v85, v88);
      v93 = sub_1002776C8;
      v94 = v89;
    }

    else
    {
      v94 = *(v1 + 488);
      v93 = sub_10027A390;
    }
  }

  else
  {
    v97 = *(v1 + 688);
    v98 = *(v1 + 488);
    v99 = (v97 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v1 + 122) = *v99;
    *(v1 + 123) = v99[1];
    v93 = sub_100278770;
    v94 = v98;
  }

  return _swift_task_switch(v93, v94, 0);
}

uint64_t sub_10027A390()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[61];
  v4 = *(v3 + 136);
  v5 = swift_allocObject();
  v0[106] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  sub_100017D5C(v2, v1);
  v6 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v11 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v7 = swift_task_alloc();
  v0[107] = v7;
  *v7 = v0;
  v7[1] = sub_10027A4AC;
  v9 = v0[63];
  v8 = v0[64];

  return (v11)(v8, &unk_101395A90, v5, v9);
}

uint64_t sub_10027A4AC()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;

  v5 = *(v2 + 848);
  if (v0)
  {

    v6 = sub_10027B4C0;
  }

  else
  {

    v6 = sub_10027A5F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10027A5F4()
{
  v168 = v0;
  v1 = *(v0 + 512);
  v2 = "v32@0:8@NISession16q24" + 15;
  if ((*(*(v0 + 536) + 48))(v1, 1, *(v0 + 528)) == 1)
  {
    sub_10000B3A8(v1, &qword_10169BCB8, &unk_101395A70);
    v149 = 0;
    v163 = 0;
    v157 = *(v0 + 744);
    v3 = -1;
  }

  else
  {
    v4 = *(v0 + 784);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    sub_10027E700(v1, v5, type metadata accessor for AccessoryPairingAnalytics);
    sub_10027E7C8(v5, v6, type metadata accessor for AccessoryPairingAnalytics);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 544);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v167 = v12;
      *v11 = 136315138;
      v13 = sub_10111CE44();
      v15 = v14;
      sub_10027E768(v10, type metadata accessor for AccessoryPairingAnalytics);
      v16 = sub_1000136BC(v13, v15, &v167);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found locked analytics %s", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {

      sub_10027E768(v10, type metadata accessor for AccessoryPairingAnalytics);
    }

    v160 = *(v0 + 744);
    v17 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 496);
    v3 = *(v17 + v18[6]);
    v20 = (v17 + v18[13]);
    v21 = v20[1];
    v149 = *v20;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    *(v0 + 66) = v3;
    v163 = v21;

    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v27 = String.init(format:arguments:)();
    v29 = v28;

    sub_100313B54(*(v17 + v18[9]), *(v17 + v18[9] + 8));
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    v30 = *(v0 + 60);
    if (*(v0 + 64))
    {
      v31 = 0;
    }

    else
    {
      v31 = *(v0 + 60);
    }

    v32 = sub_1000DFAD8();
    *(v0 + 176) = v31;
    *(v0 + 200) = &type metadata for Int;
    *(v0 + 208) = v32;
    *(v0 + 216) = 2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v160;
    sub_100FFC070((v0 + 176), v27, v29, isUniquelyReferenced_nonNull_native);

    v34 = v167;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *(v0 + 67) = v3;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = v26;
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    v38 = String.init(format:arguments:)();
    v40 = v39;

    v41 = (v17 + v18[8]);
    v43 = *v41;
    v42 = v41[1];
    v44 = sub_1000DF96C();
    *(v0 + 224) = v43;
    *(v0 + 232) = v42;
    *(v0 + 248) = &type metadata for String;
    *(v0 + 256) = v44;
    *(v0 + 264) = 1;

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v34;
    sub_100FFC070((v0 + 224), v38, v40, v45);
    v2 = "ion16q24";

    v157 = v167;
    sub_10027E768(v17, type metadata accessor for AccessoryPairingAnalytics);
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v46 = swift_allocObject();
  v165 = *(v2 + 216);
  *(v46 + 16) = v165;
  *(v0 + 58) = v3;
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v49 = v48;
  *(v46 + 56) = &type metadata for String;
  v50 = sub_100008C00();
  *(v46 + 64) = v50;
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  v51 = String.init(format:arguments:)();
  v53 = v52;

  v152 = *(v0 + 768);
  v154 = *(v0 + 776);
  v54 = *(v0 + 664);
  v55 = sub_1000DF96C();
  *(v0 + 16) = 0x64656B636F6CLL;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v55;
  v161 = v55;
  *(v0 + 56) = 1;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v167 = v157;
  sub_100FFC070((v0 + 16), v51, v53, v56);

  v57 = v167;
  v58 = swift_allocObject();
  *(v58 + 16) = v165;
  v158 = v3;
  *(v0 + 59) = v3;
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v58 + 56) = &type metadata for String;
  *(v58 + 64) = v50;
  *(v58 + 32) = v59;
  *(v58 + 40) = v60;
  v61 = String.init(format:arguments:)();
  v63 = v62;

  static String.Encoding.utf8.getter();
  v64 = String.init(data:encoding:)();
  if (!v65)
  {
    v66 = *(v0 + 776);
    v67 = *(v0 + 768);
    v64 = Data.hexString.getter();
  }

  *(v0 + 80) = v64;
  *(v0 + 88) = v65;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v161;
  *(v0 + 120) = 1;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v167 = v57;
  sub_100FFC070((v0 + 80), v61, v63, v68);

  v69 = v167;
  v70 = *(v0 + 776);
  v71 = *(v0 + 768);
  if (v163)
  {
    v155 = *(v0 + 704);
    v72 = swift_allocObject();
    *(v72 + 16) = v165;
    *(v0 + 65) = v158;
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = v50;
    *(v72 + 32) = v73;
    *(v72 + 40) = v74;
    v75 = String.init(format:arguments:)();
    v61 = v76;

    *(v0 + 128) = v149;
    *(v0 + 136) = v163;
    *(v0 + 152) = &type metadata for String;
    *(v0 + 160) = v161;
    *(v0 + 168) = 1;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v69;
    sub_100FFC070((v0 + 128), v75, v61, v77);

    sub_100016590(v71, v70);
    sub_10027E768(v155, type metadata accessor for OwnedBeaconGroup.PairingState);
    v69 = v167;
  }

  else
  {
    sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100016590(v71, v70);
  }

  v78 = *(v0 + 760);
  v79 = *(v0 + 752);
  *(v0 + 744) = v69;
  v166 = v69;
  if (!v79)
  {
    v81 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v81 <= v78 + 1)
    {
      v82 = v78 + 1;
    }

    else
    {
      v82 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v83 = v82 - 1;
    while (1)
    {
      v84 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v84 >= v81)
      {
        v141 = *(v0 + 720);
        v142 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
        v87 = 0;
        goto LABEL_26;
      }

      v80 = *(v0 + 736);
      v79 = *(v80 + 8 * v84 + 64);
      ++v78;
      if (v79)
      {
        v78 = v84;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_31;
  }

  v80 = *(v0 + 736);
LABEL_25:
  v85 = *(v0 + 720);
  v86 = *(v0 + 712);
  v87 = (v79 - 1) & v79;
  v88 = __clz(__rbit64(v79)) | (v78 << 6);
  v89 = (*(v80 + 48) + 16 * v88);
  v90 = *v89;
  v91 = v89[1];
  sub_10027E7C8(*(v80 + 56) + *(*(v0 + 680) + 72) * v88, v86, type metadata accessor for OwnedBeaconGroup.PairingState);
  v92 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v93 = *(v92 + 48);
  *v85 = v90;
  v85[1] = v91;
  sub_10027E700(v86, v85 + v93, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v92 - 8) + 56))(v85, 0, 1, v92);
  sub_100017D5C(v90, v91);
  v83 = v78;
LABEL_26:
  *(v0 + 760) = v83;
  *(v0 + 752) = v87;
  v94 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v94, &unk_1016BBEA0, &unk_101395A80);
  v95 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v95 - 8) + 48))(v94, 1, v95) == 1)
  {
    v96 = *(v0 + 736);
    v97 = *(v0 + 728);
    v98 = *(v0 + 720);
    v99 = *(v0 + 712);
    v100 = *(v0 + 704);
    v101 = *(v0 + 696);
    v102 = *(v0 + 688);
    v103 = *(v0 + 664);
    v104 = *(v0 + 656);
    v105 = *(v0 + 648);
    v146 = *(v0 + 616);
    v147 = *(v0 + 608);
    v148 = *(v0 + 584);
    v150 = *(v0 + 568);
    v151 = *(v0 + 560);
    v153 = *(v0 + 552);
    v156 = *(v0 + 544);
    v159 = *(v0 + 520);
    v162 = *(v0 + 512);
    v164 = *(v0 + 496);

    v106 = *(v0 + 8);

    return v106(v166);
  }

  v108 = *(v0 + 728);
  v109 = *(v0 + 704);
  v78 = *v108;
  *(v0 + 768) = *v108;
  v61 = v108[1];
  *(v0 + 776) = v61;
  sub_10027E700(v108 + *(v95 + 48), v109, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_46;
  }

LABEL_31:
  v110 = *(v0 + 704);
  v111 = *(v0 + 696);
  v112 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v112, qword_10169BB90);
  sub_10027E7C8(v110, v111, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v78, v61);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();
  sub_100016590(v78, v61);
  if (os_log_type_enabled(v113, v114))
  {
    v115 = *(v0 + 664);
    v116 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v116 = 136315394;
    sub_100017D5C(v78, v61);
    static String.Encoding.utf8.getter();
    v117 = String.init(data:encoding:)();
    if (!v118)
    {
      v117 = Data.hexString.getter();
    }

    v119 = v117;
    v120 = v118;
    sub_100016590(v78, v61);
    v121 = *(v0 + 696);
    v122 = sub_1000136BC(v119, v120, (v0 + 464));

    *(v116 + 4) = v122;
    *(v116 + 12) = 2080;
    v124 = sub_10051C934(v123);
    v126 = v125;
    sub_10027E768(v121, type metadata accessor for OwnedBeaconGroup.PairingState);
    v127 = sub_1000136BC(v124, v126, (v0 + 464));

    *(v116 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v113, v114, "serialNumber:%s pairingState:%s", v116, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v128 = *(v0 + 696);

    sub_10027E768(v128, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v129 = *(v0 + 672);
  sub_10027E7C8(*(v0 + 704), *(v0 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v131 = *(v0 + 688);
      v132 = *(v0 + 656);
      v133 = *(v0 + 632);
      v134 = *(v0 + 624);
      v135 = *(v0 + 480);
      v136 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v0 + 792) = v136;
      sub_100006654(*(v131 + *(v136 + 64)), *(v131 + *(v136 + 64) + 8));
      v137 = (v131 + *(v136 + 96));
      *(v0 + 78) = *v137;
      *(v0 + 79) = v137[1];
      v138 = *(v133 + 32);
      *(v0 + 800) = v138;
      *(v0 + 808) = (v133 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v138(v132, v131, v134);
      v139 = sub_1002776C8;
      v140 = v135;
    }

    else
    {
      v140 = *(v0 + 488);
      v139 = sub_10027A390;
    }
  }

  else
  {
    v143 = *(v0 + 688);
    v144 = *(v0 + 488);
    v145 = (v143 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v0 + 122) = *v145;
    *(v0 + 123) = v145[1];
    v139 = sub_100278770;
    v140 = v144;
  }

  return _swift_task_switch(v139, v140, 0);
}

uint64_t sub_10027B4C0()
{
  v1 = v0;
  (*(*(v0 + 536) + 56))(*(v0 + 512), 1, 1, *(v0 + 528));
  sub_10000B3A8(*(v0 + 512), &qword_10169BCB8, &unk_101395A70);
  v2 = *(v0 + 744);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v0 + 58) = -1;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v8 = String.init(format:arguments:)();
  v10 = v9;

  v104 = *(v0 + 768);
  v106 = *(v0 + 776);
  v11 = *(v0 + 664);
  v12 = sub_1000DF96C();
  *(v0 + 16) = 0x64656B636F6CLL;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 48) = v12;
  *(v0 + 56) = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v0 + 16), v8, v10, isUniquelyReferenced_nonNull_native);

  v14 = swift_allocObject();
  *(v0 + 59) = -1;
  *(v14 + 16) = xmmword_101385D80;
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v7;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = String.init(format:arguments:)();
  v19 = v18;

  static String.Encoding.utf8.getter();
  v20 = String.init(data:encoding:)();
  if (!v21)
  {
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);
    v20 = Data.hexString.getter();
  }

  *(v0 + 80) = v20;
  *(v0 + 88) = v21;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 112) = v12;
  *(v0 + 120) = 1;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC070((v0 + 80), v17, v19, v24);

  v25 = v2;
  v26 = *(v0 + 776);
  v27 = *(v0 + 768);
  sub_10027E768(*(v0 + 704), type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100016590(v27, v26);
  v28 = *(v0 + 760);
  v29 = *(v0 + 752);
  *(v0 + 744) = v2;
  v108 = v2;
  if (!v29)
  {
    v31 = ((1 << *(v0 + 77)) + 63) >> 6;
    if (v31 <= v28 + 1)
    {
      v32 = v28 + 1;
    }

    else
    {
      v32 = ((1 << *(v0 + 77)) + 63) >> 6;
    }

    v33 = v32 - 1;
    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v34 >= v31)
      {
        v91 = *(v0 + 720);
        v92 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
        v37 = 0;
        goto LABEL_14;
      }

      v30 = *(v0 + 736);
      v29 = *(v30 + 8 * v34 + 64);
      ++v28;
      if (v29)
      {
        v28 = v34;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_19;
  }

  v30 = *(v0 + 736);
LABEL_13:
  v35 = *(v0 + 720);
  v36 = *(v0 + 712);
  v37 = (v29 - 1) & v29;
  v38 = __clz(__rbit64(v29)) | (v28 << 6);
  v39 = (*(v30 + 48) + 16 * v38);
  v40 = *v39;
  v41 = v39[1];
  sub_10027E7C8(*(v30 + 56) + *(*(v0 + 680) + 72) * v38, v36, type metadata accessor for OwnedBeaconGroup.PairingState);
  v42 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v43 = *(v42 + 48);
  *v35 = v40;
  v35[1] = v41;
  sub_10027E700(v36, v35 + v43, type metadata accessor for OwnedBeaconGroup.PairingState);
  (*(*(v42 - 8) + 56))(v35, 0, 1, v42);
  sub_100017D5C(v40, v41);
  v33 = v28;
LABEL_14:
  *(v0 + 760) = v33;
  *(v0 + 752) = v37;
  v44 = *(v0 + 728);
  sub_1000D2AD8(*(v0 + 720), v44, &unk_1016BBEA0, &unk_101395A80);
  v45 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
  {
    v46 = *(v0 + 736);
    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 712);
    v50 = *(v1 + 704);
    v51 = *(v1 + 696);
    v52 = *(v1 + 688);
    v53 = *(v1 + 664);
    v54 = *(v1 + 656);
    v55 = *(v1 + 648);
    v96 = *(v1 + 616);
    v97 = *(v1 + 608);
    v98 = *(v1 + 584);
    v99 = *(v1 + 568);
    v100 = *(v1 + 560);
    v101 = *(v1 + 552);
    v102 = *(v1 + 544);
    v103 = *(v1 + 520);
    v105 = *(v1 + 512);
    v107 = *(v1 + 496);

    v56 = *(v1 + 8);

    return v56(v108);
  }

  v58 = *(v0 + 728);
  v59 = *(v0 + 704);
  v33 = *v58;
  *(v0 + 768) = *v58;
  v25 = v58[1];
  *(v0 + 776) = v25;
  sub_10027E700(v58 + *(v45 + 48), v59, type metadata accessor for OwnedBeaconGroup.PairingState);
  if (qword_101694508 != -1)
  {
    goto LABEL_34;
  }

LABEL_19:
  v60 = *(v0 + 704);
  v61 = *(v0 + 696);
  v62 = type metadata accessor for Logger();
  *(v0 + 784) = sub_1000076D4(v62, qword_10169BB90);
  sub_10027E7C8(v60, v61, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100017D5C(v33, v25);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  sub_100016590(v33, v25);
  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 664);
    v66 = swift_slowAlloc();
    *(v0 + 464) = swift_slowAlloc();
    *v66 = 136315394;
    sub_100017D5C(v33, v25);
    static String.Encoding.utf8.getter();
    v67 = String.init(data:encoding:)();
    if (!v68)
    {
      v67 = Data.hexString.getter();
    }

    v69 = v67;
    v70 = v68;
    sub_100016590(v33, v25);
    v71 = *(v0 + 696);
    v72 = sub_1000136BC(v69, v70, (v0 + 464));

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    v74 = sub_10051C934(v73);
    v76 = v75;
    sub_10027E768(v71, type metadata accessor for OwnedBeaconGroup.PairingState);
    v77 = sub_1000136BC(v74, v76, (v0 + 464));

    *(v66 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v63, v64, "serialNumber:%s pairingState:%s", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v78 = *(v0 + 696);

    sub_10027E768(v78, type metadata accessor for OwnedBeaconGroup.PairingState);
  }

  v79 = *(v0 + 672);
  sub_10027E7C8(*(v1 + 704), *(v1 + 688), type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v81 = *(v1 + 688);
      v82 = *(v1 + 656);
      v83 = *(v1 + 632);
      v84 = *(v1 + 624);
      v85 = *(v1 + 480);
      v86 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      *(v1 + 792) = v86;
      sub_100006654(*(v81 + *(v86 + 64)), *(v81 + *(v86 + 64) + 8));
      v87 = (v81 + *(v86 + 96));
      *(v1 + 78) = *v87;
      *(v1 + 79) = v87[1];
      v88 = *(v83 + 32);
      *(v1 + 800) = v88;
      *(v1 + 808) = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v88(v82, v81, v84);
      v89 = sub_1002776C8;
      v90 = v85;
    }

    else
    {
      v90 = *(v1 + 488);
      v89 = sub_10027A390;
    }
  }

  else
  {
    v93 = *(v1 + 688);
    v94 = *(v1 + 488);
    v95 = (v93 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
    *(v1 + 122) = *v95;
    *(v1 + 123) = v95[1];
    v89 = sub_100278770;
    v90 = v94;
  }

  return _swift_task_switch(v89, v90, 0);
}